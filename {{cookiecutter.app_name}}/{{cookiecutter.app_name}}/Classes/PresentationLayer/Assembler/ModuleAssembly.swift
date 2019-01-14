//
//  ModuleAssembly.swift
//  {{cookiecutter.app_name}}
//
//  Created by Fedorenko Nikita on 17.12.2017.
//  Copyright © 2017 PixelPlex. All rights reserved.
//

import Swinject

class ModuleAssembly {
    
    fileprivate let assembler: Assembler!
    public var resolver: Resolver {
        return assembler.resolver
    }
    
    init(parent: Assembler) {
        assembler = Assembler([RootModuleAssembler()], parent: parent)
    }
}
