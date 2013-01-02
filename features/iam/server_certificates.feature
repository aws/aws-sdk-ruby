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
@iam @server_certificates
Feature: IAM Server Certificates

  I want to be able to upload, modify, and list IAM server certificates.

  Scenario: Upload IAM server certificate
    When I upload an IAM server certificate named "ServerCert"
    Then the result should be an IAM server certificate
    And a request should have been made like:
    | TYPE  | NAME                  | VALUE                   |
    | param | Action                | UploadServerCertificate |
    | param | ServerCertificateName | ServerCert              |

  Scenario: Upload IAM server certificate with a path
    When I upload an IAM server certificate named "ServerCert" with path "foo/bar"
    Then the result should be an IAM server certificate
    And a request should have been made like:
    | TYPE  | NAME                  | VALUE                   |
    | param | Action                | UploadServerCertificate |
    | param | ServerCertificateName | ServerCert              |
    | param | Path                  | /foo/bar/               |

  @memoized
  Scenario: Memoized IAM server certificate attributes from upload
    Given I start a memoization block
    When I upload an IAM server certificate named "ServerCert"
    And I access the following attributes of the server certificate:
    | arn         |
    | path        |
    | id          |
    | upload_date |
    Then no requests should have been made like:
    | TYPE  | NAME   | VALUE                |
    | param | Action | GetServerCertificate |

  Scenario: Change IAM server certificate path
    Given I upload an IAM server certificate
    When I change the server certificate path to "foo/bar"
    Then the server certificate arn should contain the path
    And a request should have been made like:
    | TYPE  | NAME    | VALUE                   |
    | param | Action  | UpdateServerCertificate |
    | param | NewPath | /foo/bar/               |

  Scenario: Delete IAM server certificate
    Given I upload an IAM server certificate named "ServerCert"
    When I delete the server certificate
    Then a request should have been made like:
    | TYPE  | NAME                  | VALUE                   |
    | param | Action                | DeleteServerCertificate |
    | param | ServerCertificateName | ServerCert              |

  Scenario: Ask if an IAM group exists (exists)
    Given I upload an IAM server certificate
    When I ask if the server certificate exists
    Then the result should be true

  Scenario: Ask if an IAM group exists (doesn't exist)
    Given I ask for the server certificate named "ServerCert"
    When I ask if the server certificate exists
    Then the result should be false

  @list
  Scenario: List IAM server certificates
    Given I upload an IAM server certificate
    When I list IAM server certificates
    Then the result should include the server certificate I created
    And a request should have been made like:
    | TYPE  | NAME   | VALUE                  |
    | param | Action | ListServerCertificates |

  @list
  Scenario: Paging IAM server certificates
    Given I create 4 IAM server certificates
    When I list IAM server certificates with a limit of 3 and batch_size of 2
    Then a request should have been made like:
    | TYPE  | NAME     | VALUE                  |
    | param | Action   | ListServerCertificates |
    | param | MaxItems | 2                      |
    And a request should have been made like:
    | TYPE        | NAME     | VALUE                  |
    | param       | Action   | ListServerCertificates |
    | param_match | Marker   | .+                     |
    | param       | MaxItems | 1                      |

  @memoized
  Scenario: List IAM server certificates memoization
    Given I create 4 IAM server certificates
    And I start a memoization block
    When I compute a hash mapping ARN to server certificate upload date
    And I compute the list of unique path names among my server certificates
    Then exactly 1 request should have been made like:
    | TYPE  | NAME   | VALUE                  |
    | param | Action | ListServerCertificates |
    And no requests should have been made like:
    | TYPE  | NAME   | VALUE                |
    | param | Action | GetServerCertificate |
