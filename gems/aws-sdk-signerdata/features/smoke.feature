# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for SignerData

  @signerdata @smoke
  Scenario: GetRevocationStatusSuccess
    Given I create a 'Aws::SignerData' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_revocation_status' with params:
      """
{"signature_timestamp":1700000000,"platform_id":"Notation-OCI-SHA384-ECDSA","profile_version_arn":"arn:aws:signer:us-east-1:123456789012:/signing-profiles/test-profile/v1","job_arn":"arn:aws:signer:us-east-1:123456789012:/signing-jobs/test-job","certificate_hashes":["0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"]}
      """
    Then I expect an error was not raised
