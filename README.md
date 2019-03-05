# iOS template

A template for new iOS projects at PixelPlex.

Inspired by [Raizlabs/ios-template]

[Raizlabs/ios-template]: https://github.com/Raizlabs/ios-template

## What's in the template?

 - Configures the project name, company name, lead name, an initial local repo, gitignore, and synx.
 - Default [swiftlint][swiftlint] rules to help enforce code style standards across projects.
 - [Default set of Cocoapods][pods] including:
   - [Swinject][swinject] - "Dependency injection framework for Swift with iOS."
   - [Rswift][rswift] - "R.swift is a tool to get strong typed, autocompleted resources like images, fonts and segues in Swift projects."
   - [Moya][moya] - "Network abstraction layer written in Swift."
   - [SwiftyJSON][swiftyJSON] - "Way to deal with JSON data in Swift"


[swinject]: https://github.com/Swinject/Swinject
[swiftlint]: https://github.com/realm/SwiftLint
[pods]: https://cocoapods.org
[rswift]: https://github.com/mac-cain13/R.swift
[moya]: https://github.com/Moya/Moya
[swiftyJSON]: https://github.com/SwiftyJSON/SwiftyJSON

## Usage

1. [Install cookiecutter][cookiecutter] (`brew install cookiecutter` on
   macOS).
2. Run `cookiecutter gh:pixelplex-mobile/ios-project-template`

[cookiecutter]: http://cookiecutter.readthedocs.org/en/latest/installation.html

For future runs you can shorten the command to `cookiecutter ios-template`.
However, if you want to use the most recent template you should still run the
full command above.
