//
//  AppearanceConfigurator.swift
//  {{cookiecutter.app_name}}
//
//  Created by Fedorenko Nikita on 15.12.2017.
//  Copyright © 2017 PixelPlex. All rights reserved.
//

import Foundation
import Swinject

class ApplicationAssembler {
    
    private (set) var assembler: Assembler!
    static func rootAssembler() -> ApplicationAssembler {
        let assembler = Assembler([RootAssembly()])
        _ = BusinessLayerAssembly(parent: assembler)
        let rootAssembler = assembler.resolver.resolve(ApplicationAssembler.self)!
        rootAssembler.assembler = assembler
        return rootAssembler
    }
}

class RootAssembly: Assembly {
    func assemble(container: Container) {
        
        container.register(UIWindow.self) { _ in UIWindow(frame: UIScreen.main.bounds) }
            .inObjectScope(.container)
        
        container.register(ApplicationAssembler.self) { _ in
            // swiftlint:disable force_cast
            (UIApplication.shared.delegate as! AppDelegate).applicationAssembler
            // swiftlint:enable force_cast
        }
        
        container.register(ModuleAssembly.self) {resolver in
            let assembler = resolver.resolve(ApplicationAssembler.self)!
            return ModuleAssembly(parent: assembler.assembler)
        }.inObjectScope(.container)
        
        container.register([ConfiguratorProtocol].self) {resolver in
            [resolver.resolve(ConfiguratorProtocol.self, name: "Appearance")!,
            resolver.resolve(ConfiguratorProtocol.self, name: "Application")!]
        }
        
        container.register(ConfiguratorProtocol.self, name: "Appearance") { _ in
            let configurator = AppearanceConfigurator()
            return configurator
        }
        
        container.register(ConfiguratorProtocol.self, name: "Application") { _ in
            let configurator = ApplicationConfigurator()
            return configurator
        }
    }
}
