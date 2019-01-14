//
//  NetworkProviderImp.swift
//  {{cookiecutter.app_name}}
//
//  Created by {{cookiecutter.lead_dev}} on 17.05.2018.
//  Copyright © 2018 {{cookiecutter.lead_dev}}. All rights reserved.
//

import Moya
import Alamofire

class DefaultAlamofireManager: Alamofire.SessionManager {
    static let sharedManager: DefaultAlamofireManager = {
        let configuration = URLSessionConfiguration.default
        configuration.httpAdditionalHeaders = Alamofire.SessionManager.defaultHTTPHeaders

        configuration.requestCachePolicy = .useProtocolCachePolicy
        return DefaultAlamofireManager(configuration: configuration)
    }()
}

enum Network {
    case outputs(addresses: [String])
    case history(addresses: [String], from: Int, limit: Int)
    case transactionInfo(transactionHash: String)
    case transactionReceipt(transactionHash: String)
    case feePerKb()
    case sendRawTransaction(transaction: String, hightFee: Bool)
    case callContract(contractAddress: String, fromAddress: String?, hashes: [String])
}

extension Network: TargetType {

    var baseURL: URL { return URL(string: "")! }
    var path: String {
        switch self {

        case let .outputs(addresses):
            if addresses.count == 1 {
                return "/outputs/unspent/\(addresses[0])"
            } else {
                return "/outputs/unspent"
            }
        case let .history(addresses, from, limit):
            
            if addresses.count == 1 {
                return "/history/\(addresses[0])/\(limit)/\(from)"
            } else {
                return "/history/\(limit)/\(from)"
            }
        case let .transactionInfo(transactionHash):
            return "/transactions/\(transactionHash)/"
        case let .transactionReceipt(transactionHash):
            return "/transactions/\(transactionHash)/receipt"
        case .feePerKb():
            return "/estimate-fee-per-kb"
        case .sendRawTransaction(_, _):
            return "/send-raw-transaction"
        case let .callContract(contractAddress, _, _):
            return "/contracts/\(contractAddress)/call"
        }
    }

    var method: Moya.Method {
        switch self {
        case .outputs, .history, .transactionInfo, .transactionReceipt, .feePerKb:
            return .get
        case .sendRawTransaction, .callContract:
            return .post
        }
    }

    var task: Task {
        switch self {

        case let .outputs(addresses):
            
            if addresses.count == 1 {
                return .requestPlain
            } else {
                return .requestParameters(parameters: ["addresses[]": addresses], encoding: URLEncoding.queryString)
            }

        case let .history(addresses, _, _):

            if addresses.count == 1 {
                return .requestPlain
            } else {
                return .requestParameters(parameters: ["addresses[]": addresses], encoding: URLEncoding.queryString)
            }

        case .transactionInfo(_), .transactionReceipt(_):
            return .requestPlain
            
        case .feePerKb(_):
            return .requestParameters(parameters: ["nBlocks": 2], encoding: URLEncoding.queryString)
            
        case let .sendRawTransaction(transaction, hightFee):
            return .requestParameters(parameters: ["data": transaction, "allowHighFee": hightFee], encoding: JSONEncoding.default)
            
        case let .callContract(_, fromAddress, hashes):
            return .requestParameters(parameters: ["hashes": hashes, "from": fromAddress ?? ""], encoding: JSONEncoding.default)
        }
    }

    var sampleData: Data {
        return Data()
    }

    var headers: [String: String]? {
        return ["Content-type": "application/json"]
    }
}

// MARK: - Helpers
private extension String {
    var urlEscaped: String {
        return addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
    }

    var utf8Encoded: Data {
        return data(using: .utf8)!
    }
}
