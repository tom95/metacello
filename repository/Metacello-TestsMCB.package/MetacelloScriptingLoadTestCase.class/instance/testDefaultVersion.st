tests
testDefaultVersion
  | projectSpec defaultVersion |
  Metacello new
    configuration: 'ExternalX';
    repository: 'dictionary://Metacello_Config_Test_Repository';
    load.
  projectSpec := (Metacello registry
    configuration: 'ExternalX';
    list) first.
  defaultVersion := (Smalltalk at: #'ConfigurationOfExternalX') project
    version: MetacelloScriptEngine defaultVersionString.
  self assert: projectSpec version = defaultVersion