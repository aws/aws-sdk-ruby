$version: "2.0"

namespace smithy.ruby.aws

use smithy.ruby#skipTests

apply aws.protocoltests.json10#OperationWithRequiredMembers @skipTests([
    {id: "AwsJson10ClientErrorCorrectsWhenServerFailsToSerializeRequiredValues", reason: "not implemented"}
])

apply aws.protocoltests.restjson#IgnoreQueryParamsInResponse @skipTests([
    {
        id: "RestJsonIgnoreQueryParamsInResponse",
        type: "stub",
        reason: "Stubbing will attempt to build an http response with query parameters and fail parsing"
    }
])

apply aws.protocoltests.restxml#IgnoreQueryParamsInResponse @skipTests([
    {
        id: "IgnoreQueryParamsInResponse",
        type: "stub",
        reason: "Stubbing will attempt to build an http response with query parameters and fail parsing"
    }
])

apply aws.protocoltests.restxml#XmlNamespaces @skipTests([
    {
        id: "XmlNamespaces",
        type: "request",
        reason: "This test seems incorrect and differs from the c2j equivalent.
                In particular, <nested> should likely have the xml namespace."
    }
])
