# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
@iam @signing_certificates
Feature: IAM Signing Certificates

  As an AWS account holder
  I want to manage IAM signing certificates

  @upload
  Scenario: Upload a signing certificate
    When I upload a signing certificate
    Then a request should have been made like:
    | TYPE        | NAME             | VALUE                       |
    | param       | Action           | UploadSigningCertificate    |
    | param_match | CertificateBody  | -----BEGIN CERTIFICATE----- |

  Scenario: Getting signing certificate details
    Given I upload a signing certificate
    When I get a reference to the signing certificate
    Then the signing certificate contents should match
    And the signing certificate status should be "active"
    And the signing certificate user be nil
    And 2 requests should have been made like:
    | TYPE  | NAME   | VALUE                   |
    | param | Action | ListSigningCertificates |

  @memoized
  Scenario: Getting signing certificate details
    Given I start a memoization block
    And I upload a signing certificate
    When I get a reference to the signing certificate
    Then the signing certificate contents should match
    And the signing certificate status should be "active"
    And the signing certificate user be nil
    And 0 request should have been made like:
    | TYPE  | NAME   | VALUE                   |
    | param | Action | ListSigningCertificates |

  @status
  Scenario: Deactivating a signing certificate
    Given I upload a signing certificate
    When I deactivate the signing certificate
    Then the signing certificate status should be "inactive"
    When I activate the signing certificate
    Then the signing certificate status should be "active"
    And 1 request should have been made like:
    | TYPE  | NAME   | VALUE                    |
    | param | Action | UpdateSigningCertificate |
    | param | Status | Inactive                 |
    And 1 request should have been made like:
    | TYPE  | NAME   | VALUE                    |
    | param | Action | UpdateSigningCertificate |
    | param | Status | Active                   |

  @delete
  Scenario: Delete a signing certificate
    Given I upload a signing certificate
    When I delete the signing certificate
    Then a request should have been made like:
    | TYPE  | NAME   | VALUE                    |
    | param | Action | DeleteSigningCertificate |

  @users @upload
  Scenario: Upload a user signing certificate
    Given I create an IAM user
    When I upload a signing certificate for the user
    Then a request should have been made like:
    | TYPE        | NAME             | VALUE                       |
    | param       | Action           | UploadSigningCertificate    |
    | param_match | UserName         | ruby-integreation-test-\d+  |
    | param_match | CertificateBody  | -----BEGIN CERTIFICATE----- |

  @users @delete
  Scenario: Delete a user signing certificate
    Given I create an IAM user
    And I upload a signing certificate for the user
    When I delete the signing certificate
    Then a request should have been made like:
    | TYPE        | NAME     | VALUE                       |
    | param       | Action   | DeleteSigningCertificate    |
    | param_match | UserName | ruby-integreation-test-\d+  |
