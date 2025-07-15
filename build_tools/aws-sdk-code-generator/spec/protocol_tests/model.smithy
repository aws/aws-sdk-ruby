$version: "2.0"

namespace smithy.ruby.aws

use smithy.ruby#skipTests

apply aws.protocoltests.json10#OperationWithRequiredMembers @skipTests([
    {id: "AwsJson10ClientErrorCorrectsWhenServerFailsToSerializeRequiredValues", reason: "not implemented"}
])
