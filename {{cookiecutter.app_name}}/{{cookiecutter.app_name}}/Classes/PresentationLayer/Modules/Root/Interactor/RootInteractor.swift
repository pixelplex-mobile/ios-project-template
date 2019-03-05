//
//  RootRootInteractor.swift
//  {{cookiecutter.app_name}}
//
//  Created by {{cookiecutter.lead_dev}} on {% now 'local', '%d.%m.%Y' %}.
//  Copyright © {% now 'local', '%Y' %} {{cookiecutter.company_name}}. All rights reserved.
//

class RootInteractor {
    weak var output: RootInteractorOutput!
}

// MARK: - RootInteractorInput

extension RootInteractor: RootInteractorInput {
}
