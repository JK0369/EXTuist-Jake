import ProjectDescription

// MARK: Constants
let projectName = "Jake"
let organizationName = "jake"
let bundleID = "com.jake.Jake"
let targetVersion = "14.0"

// MARK: Struct
let project = Project(
  name: projectName,
  organizationName: organizationName,
  packages: [],
  settings: nil,
  targets: [
    Target(name: projectName,
           platform: .iOS,
           product: .app, // unitTests, .appExtension, .framework, dynamicLibrary, staticFramework
           bundleId: bundleID,
           deploymentTarget: .iOS(targetVersion: targetVersion, devices: [.iphone]),
           infoPlist: .default,
           sources: ["\(projectName)/**"],
           resources: [],
           dependencies: [] // tuist generate할 경우 pod install이 자동으로 실행
          )
  ],
  schemes: [
    Scheme(name: "\(projectName)-Debug"),
    Scheme(name: "\(projectName)-Release")
  ],
  fileHeaderTemplate: nil,
  additionalFiles: [],
  resourceSynthesizers: []
)
