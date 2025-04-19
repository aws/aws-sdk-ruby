$version: "2"

namespace smithy.ruby

// TODO: reuse this
@trait(selector: ":test(operation, structure[trait|error])")
list skipTests {
  member: skipTest
}

structure skipTest {
  @required
  id: String,
  reason: String,
  type: TestType
}

enum TestType {
  @enumValue("request")
  REQUEST,

  @enumValue("response")
  RESPONSE
}

// This file is intentionally empty.
// The smithy-build.json uses the sources plugin to get the protocol tests from the package.

apply aws.protocoltests.restjson#OperationWithDefaults @skipTests([
  { id: "RestJsonClientPopulatesDefaultValuesInInput", reason: "Defaults not Implemented yet.", type: "request" }
  { id: "RestJsonClientPopulatesDefaultsValuesWhenMissingInResponse", reason: "Defaults not Implemented yet.", type: "response" }
])

apply aws.protocoltests.restjson#OperationWithNestedStructure @skipTests([
  { id: "RestJsonClientPopulatesNestedDefaultValuesWhenMissing", reason: "Defaults not Implemented yet.", type: "request" },
  { id: "RestJsonClientPopulatesNestedDefaultsWhenMissingInResponseBody", reason: "Defaults not Implemented yet.", type: "response" }
])