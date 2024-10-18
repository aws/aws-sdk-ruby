# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for SocialMessaging

  @socialmessaging @smoke
  Scenario: ListTagsFailure
    Given I create a 'Aws::SocialMessaging' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_tags_for_resource' with params:
      """
{"resource_arn":"arn:aws:social-messaging:us-east-1:9923825:phone-number-id/45c1973a7577"}
      """
    Then I expect an error was raised
