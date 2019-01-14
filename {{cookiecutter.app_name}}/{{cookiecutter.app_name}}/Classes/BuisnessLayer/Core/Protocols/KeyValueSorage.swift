//
//  KeyValueSorage.swift
//  {{cookiecutter.app_name}}
//
//  Created by Fedorenko Nikita on 27.12.2017.
//  Copyright © 2017 PixelPlex. All rights reserved.
//

import Foundation

protocol KeyValueStoring {
    
    func getData(key: String) -> Data?
    func set(key: String, value: Data)
    func get(key: String) -> String?
    func set(key: String, value: String)
    func remove(key: String)
}
