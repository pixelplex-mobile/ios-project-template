//
//  KeyValueSorage.swift
//  {{cookiecutter.app_name}}
//
//  Created by {{cookiecutter.lead_dev}} on 17.05.2018.
//  Copyright © 2018 {{cookiecutter.company_name}}. All rights reserved.
//

import Foundation

protocol KeyValueStoring {
    func getData(key: String) -> Data?
    func set(key: String, value: Data)
    func get(key: String) -> String?
    func set(key: String, value: String)
    func remove(key: String)
}
