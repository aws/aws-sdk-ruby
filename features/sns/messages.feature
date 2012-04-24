# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

# language: en
@sns @topics
Feature: Listening to SNS topics
  I want to be able to know when messages arrive, that they are authentic

  Scenario Outline: Amazon must have sent the SNS message
    When I receive a valid SNS message
    And the SNS message's "SigningCertURL" is from "<signing_cert_url>"
    Then the SNS message authenticity is "<result>"
    Examples:
    | signing_cert_url | result |
    | https://sns.eu-west-1.amazonaws.com/SimpleNotificationService-f3ecfb7224c7233fe7bb5f59f96de52f.pem | true |
    | https://sns.foo.amazonaws.com/SimpleNotificationService-f3ecfb7224c7233fe7bb5f59f96de52f.pem | true |
    | https://sns.eu-west-1.amazonaws.all-your-sns-are-belong-to-us.com/SimpleNotificationService-f3ecfb7224c7233fe7bb5f59f96de52f.pem | false |

  Scenario: Failure to download signing-cert is treated as "not authentic"
    When I receive a valid SNS message
    And the SNS message's "SigningCertURL" is from "https://sns.eu-west-1.amazonaws.com/SimpleNotificationService-f3ecfb7224c7233fe7bb5f59f96de52f.pem"
    And the cert download fails "4" times
    Then the SNS message authenticity is "false"

  Scenario: Failure to parse the SNS message is treated as "not authentic"
    When I receive an SNS message that is not valid JSON
    Then the SNS message authenticity is "false"

  Scenario: SNS message is treated as "authentic" when it is validly signed
    When I receive a valid SNS message
    And the SNS message is correctly signed
    Then the SNS message authenticity is "true"
