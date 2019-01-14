//
//  RootRootRouter.swift
//  {{ cookiecutter.project_name | replace(' ', '') }}
//
//  Created by Fedorenko Nikita on 19/03/2018.
//  Copyright © 2018 PixelPlex. All rights reserved.
//

import UIKit

class RootRouter: RootRouterInput {
    
	weak var view: UIViewController?
    weak var splash: UIViewController?
    weak var verification: UIViewController?
    weak var blockScreen: UIViewController?

    var childs = NSPointerArray.weakObjects()
}

extension RootRouter {
    
}
