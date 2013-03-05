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
@s3 @low_level @objects @uploads
Feature: Multi-part Uploads
  As a user of the S3 low-level client
  I want to be able to perform multi-part uploads
  So that I can reliably and efficiently upload large objects

  @high_bandwidth
  Scenario: Upload with one part
    When I ask the client to initiate a multipart upload to "foo"
    And I ask the client to upload a 5mb part for "foo" containing "FIRST" as part number 1
    And I ask the client to upload a 1kb part for "foo" containing "SECOND" as part number 2
    And I ask the client to complete the upload for "foo"
    Then the result should be a successful response
    And the object "foo" should eventually have a body including the following strings:
    | FIRST  |
    | SECOND |
    And a request should have been made like:
    | TYPE | NAME | VALUE        |
    | http | verb | POST         |
    | http | uri  | /foo?uploads |
    And a request should have been made like:
    | TYPE        | NAME       | VALUE |
    | http        | verb       | PUT   |
    | http        | path       | /foo  |
    | param       | partNumber | 1     |
    | param_match | uploadId   | .+    |
    And a request should have been made like:
    | TYPE        | NAME       | VALUE |
    | http        | verb       | PUT   |
    | http        | path       | /foo  |
    | param       | partNumber | 2     |
    | param_match | uploadId   | .+    |
    And a request should have been made like:
    | TYPE        | NAME     | VALUE |
    | http        | verb     | POST  |
    | http        | path     | /foo  |
    | param_match | uploadId | .+    |

  Scenario: List all multipart uploads
    Given I ask the client to initiate a multipart upload to "foo"
    When I ask the client to list the multipart uploads in the bucket
    Then the result should be a successful response
    And the result should include the upload ID I initiated
    And a request should have been made like:
    | TYPE | NAME | VALUE     |
    | http | verb | GET       |
    | http | uri  | /?uploads |

  Scenario: Abort an upload
    Given I ask the client to initiate a multipart upload to "foo"
    When I ask the client to abort the upload to "foo"
    Then the result should be a successful response
    And the upload should eventually not exist
    And a request should have been made like:
    | TYPE        | NAME       | VALUE  |
    | http        | verb       | DELETE |
    | http        | path       | /foo   |
    | param_match | uploadId   | .+     |

  Scenario: List parts
    Given I ask the client to initiate a multipart upload to "foo"
    And I ask the client to upload a 1kb part for "foo" containing "HELLO" as part number 1
    When I ask the client to list parts for the upload to "foo"
    Then the result should be a successful response
    And the result should include a part number 1 that is 1kb in size
    And a request should have been made like:
    | TYPE        | NAME     | VALUE |
    | http        | verb     | GET   |
    | http        | path     | /foo  |
    | param_match | uploadId | .+    |
