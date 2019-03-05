//
//  ApplicationAssembler.swift
//  {{cookiecutter.app_name}}
//
//  Created by {{cookiecutter.lead_dev}} on {% now 'local', '%d.%m.%Y' %}.
//  Copyright © {% now 'local', '%Y' %} {{cookiecutter.company_name}}. All rights reserved.
//

import Foundation
import Swinject

class ApplicationAssembler {
    private (set) var assembler: Assembler!
    
    static func rootAssembler() -> ApplicationAssembler {
        let assembler = Assembler([RootAssembly()])
        _ = BusinessLayerAssembly(parent: assembler)
        // swiftlint:disable force_unwrapping
        let rootAssembler = assembler.resolver.resolve(ApplicationAssembler.self)!
        // swiftlint:enable force_unwrapping
        rootAssembler.assembler = assembler
        return rootAssembler
    }
}

class RootAssembly: Assembly {
    func assemble(container: Container) {
        container.register(UIWindow.self) { _ in UIWindow(frame: UIScreen.main.bounds) }.inObjectScope(.container)
        
        container.register(ApplicationAssembler.self) { _ in
            // swiftlint:disable force_cast
            (UIApplication.shared.delegate as! AppDelegate).applicationAssembler
            // swiftlint:enable force_cast
        }
        
        container.register(ModuleAssembly.self) {resolver in
            // swiftlint:disable force_unwrapping
            let assembler = resolver.resolve(ApplicationAssembler.self)!
            return ModuleAssembly(parent: assembler.assembler)
            // swiftlint:enable force_unwrapping
        }
        .inObjectScope(.container)
        
        container.register([ConfiguratorProtocol].self) {resolver in
            // swiftlint:disable force_unwrapping
            [
                resolver.resolve(ConfiguratorProtocol.self, name: "Appearance")!,
                resolver.resolve(ConfiguratorProtocol.self, name: "Application")!
            ]
            // swiftlint:enable force_unwrapping
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
