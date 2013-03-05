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
@s3 @high_level @objects @uploads
Feature: Uploads

  As a user of the S3 high-level interface
  I want to be able to upload data
  so that S3 will store it for me

  @put_object
  Scenario: Large file
    Given the multipart upload threshold is 5mb
    And I have a 7mb file
    When I write the file to the object "foo"
    Then the contents of object "foo" should eventually match the file
    And a request should have been made like:
    | TYPE | NAME | VALUE        |
    | http | verb | POST         |
    | http | uri  | /foo?uploads |
    And a request should have been made like:
    | TYPE        | NAME           | VALUE   |
    | http        | verb           | PUT     |
    | http        | path           | /foo    |
    | header      | content-length | 5242880 |
    | param       | partNumber     | 1       |
    | param_match | uploadId       | .+      |
    And a request should have been made like:
    | TYPE        | NAME           | VALUE   |
    | http        | verb           | PUT     |
    | http        | path           | /foo    |
    | header      | content-length | 2097152 |
    | param       | partNumber     | 2       |
    | param_match | uploadId       | .+      |
    And a request should have been made like:
    | TYPE        | NAME     | VALUE |
    | http        | verb     | POST  |
    | http        | path     | /foo  |
    | param_match | uploadId | .+    |

  @put_object
  Scenario: Large file with metadata
    Given the multipart upload threshold is 5mb
    And I have a 7mb file
    When I write the file to the object "foo" with the following metadata:
    | color | red    |
    | shape | circle |
    Then the metadata of object "foo" should eventually be:
    | color | red    |
    | shape | circle |
    And a request should have been made like:
    | TYPE   | NAME             | VALUE        |
    | http   | verb             | POST         |
    | http   | uri              | /foo?uploads |
    | header | x-amz-meta-color | red          |
    | header | x-amz-meta-shape | circle       |

  Scenario: Start a multipart upload
    When I start an upload to object "foo"
    Then the result should be an upload object
    And the list of uploads for the bucket should include the upload
    And a request should have been made like:
    | TYPE | NAME | VALUE        |
    | http | verb | POST         |
    | http | uri  | /foo?uploads |

  Scenario: Upload a part
    Given I start an upload to object "foo"
    When I add a part to the upload with data "HELLO"
    Then the result should be an uploaded part
    And the parts list should include the part I uploaded
    And a request should have been made like:
    | TYPE        | NAME           | VALUE |
    | http        | verb           | PUT   |
    | http        | path           | /foo  |
    | header      | content-length | 5     |
    | param       | partNumber     | 1     |
    | param_match | uploadId       | .+    |

  Scenario: Complete an upload with parts uploaded using the object
    Given I start an upload to object "foo"
    And I add a part to the upload with data "HELLO"
    When I complete the upload with the parts uploaded using the object
    Then the contents of object "foo" should eventually be "HELLO"
    And a request should have been made like:
    | TYPE        | NAME     | VALUE |
    | http        | verb     | POST  |
    | http        | path     | /foo  |
    | param_match | uploadId | .+    |

  Scenario: Complete an upload with all parts in S3
    Given I start an upload to object "foo"
    And I add a part to the upload with data "HELLO"
    And I get the upload again by ID
    When I complete the upload with all parts in S3
    Then the contents of object "foo" should eventually be "HELLO"
    And a request should have been made like:
    | TYPE        | NAME     | VALUE |
    | http        | verb     | POST  |
    | http        | path     | /foo  |
    | param_match | uploadId | .+    |

  Scenario: Abort a multipart upload
    Given I start an upload to object "foo"
    When I abort the upload
    Then the list of uploads for the bucket should eventually not include the upload I started
    And a request should have been made like:
    | TYPE        | NAME     | VALUE  |
    | http        | verb     | DELETE |
    | http        | path     | /foo   |
    | param_match | uploadId | .+     |

  Scenario: List multipart uploads
    Given I start an upload to object "foo"
    When I ask for the list of uploads for the bucket
    Then the result should eventually include the upload I started
    And a request should have been made like:
    | TYPE | NAME      | VALUE         |
    | http | verb      | GET           |
    | http | uri_match | /?.*&?uploads |

  Scenario: List uploads for an object
    Given I start an upload to object "foo"
    When I ask for the list of uploads to the object "foo"
    Then the result should eventually include the upload I started
    And a request should have been made like:
    | TYPE  | NAME    | VALUE |
    | http  | verb    | GET   |
    | http  | path    | /     |
    | param | uploads |       |
    | param | prefix  | foo   |

  Scenario: Get a multipart upload by ID
    When I ask for the upload to "foo" with ID "abc123"
    Then the result should be an upload object

  Scenario: Ask if an upload exists (does not exist)
    Given I ask for the upload to "foo" with ID "abc123"
    When I ask if the upload exists
    Then the result should be false

  Scenario: Ask if an upload exists (exists)
    Given I start an upload to object "foo"
    When I ask if the upload exists
    Then the result should be true

  Scenario: List parts for an upload
    Given I start an upload to object "foo"
    And I upload the following parts:
    | HELLO   |
    | GOODBYE |
    When I ask for the parts list for the upload
    Then the parts list should include:
    | part number | size |
    |           1 |    5 |
    |           2 |    7 |
    And the last modified date for each part should be within a minute of now
    And a request should have been made like:
    | TYPE        | NAME           | VALUE |
    | http        | verb           | GET   |
    | http        | path           | /foo  |
    | param_match | uploadId       | .+    |
