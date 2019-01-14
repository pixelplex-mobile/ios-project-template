//
//  RootRootProtocols.swift
//  {{ cookiecutter.project_name | replace(' ', '') }}
//
//  Created by Fedorenko Nikita on 19/03/2018.
//  Copyright © 2018 PixelPlex. All rights reserved.
//

import UIKit

protocol RootViewInput: class, Presentable {

    func setupInitialState()
}

protocol RootViewOutput {

    func viewIsReady()
}

protocol RootModuleInput: class {

	var viewController: UIViewController { get }
	var output: RootModuleOutput? { get set }
}

protocol RootModuleOutput: class {

}

protocol RootInteractorInput {
    
}

protocol RootInteractorOutput: class {
}

protocol RootRouterInput {
    
}
