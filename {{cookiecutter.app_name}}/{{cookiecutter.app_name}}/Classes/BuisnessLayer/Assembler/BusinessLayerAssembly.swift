//
//  BusinessLayerAssembly.swift
//  {{cookiecutter.app_name}}
//
//  Created by Fedorenko Nikita on 15.12.2017.
//  Copyright © 2017 PixelPlex. All rights reserved.
//

import Swinject
import Moya

class BusinessLayerAssembly {
    
    init(parent: Assembler) {
        let assemblies: [Assembly] = [ServicesAssembly(), CoreComponentAssembly(), ProxyAssembly()]
        parent.apply(assemblies: assemblies)
    }
}
