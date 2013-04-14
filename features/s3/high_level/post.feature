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
@s3 @high_level @objects @post
Feature: Pre-signed HTML Form Fields

  As a user of the S3 high-level interface
  I want to be able to get pre-signed form fields
  so that I can construct an HTML form to do browser-based upload to S3

  Scenario: Basic Pre-signed POST
    When I generate pre-signed form fields for the object "foo"
    And I use a regular HTTP client to POST the data "HELLO"
    Then the contents of object "foo" should eventually be "HELLO"

  Scenario: Pre-signed POST using the file name
    When I generate pre-signed form fields for an upload to "docs/${filename}"
    And I use the form to upload "foo.txt" containing "HELLO"
    Then the contents of object "docs/foo.txt" should eventually be "HELLO"

  Scenario: Pre-signed POST with various options
    When I generate pre-signed form fields for the object "foo" with the following parameters:
    | acl                    | public_read |
    | cache_control          | something   |
    | content_type           | text/plain  |
    | content_disposition    | attachment  |
    | content_encoding       | gzip        |
    | expires_header         | tomorrow    |
    And I use a regular HTTP client to POST the data "HELLO"
    And I ask for the public URL of object "foo"
    And I use a regular HTTP client to GET the URL
    Then the response headers should include:
    | content-type                 | text/plain |
    | expires                      | tomorrow   |
    | cache-control                | something  |
    | content-disposition          | attachment |
    | content-encoding             | gzip       |

  Scenario: Pre-signed POST with success redirect
    When I generate pre-signed form fields for the object "foo" with the following parameters:
    | success_action_redirect | http://aws.amazon.com |
    And I use a regular HTTP client to POST the data "HELLO"
    Then the response should be a redirect to "http://aws.amazon.com"

  Scenario: Pre-signed POST with custom success status
    When I generate pre-signed form fields for the object "foo" with the following parameters:
    | success_action_status | 201 |
    And I use a regular HTTP client to POST the data "HELLO"
    Then the response status code should be 201

  Scenario: Pre-signed POST with metadata
    When I generate pre-signed form fields for the object "foo" with metadata "color" set to "blue"
    And I use a regular HTTP client to POST the data "HELLO"
    Then the object should eventually have metadata "color" set to "blue"

  Scenario: Pre-signed POST with long policy string
    When I generate pre-signed form fields for the object "foo" with a large policy
    And I use a regular HTTP client to POST the data "HELLO"
    Then the response status code should be 204

  Scenario: Pre-signed POST with additional fields
    When I generate pre-signed form fields for the object "foo" ignoring the "somethingelse" field
    And I use a regular HTTP client to POST the form with the additional field "somethingelse" set to "values"
    Then the contents of object "foo" should eventually be "HELLO"

  Scenario Outline: Pre-signed POST with length constraint
    When I generate pre-signed form fields for the object "foo" for content lengths between <min> and <max> bytes
    And I use a regular HTTP client to POST the data "<data>", ignoring errors
    Then the response status code should be <status>

  Examples:
    | min | max | data   | status |
    |  10 |  15 | HI!    |    400 |
    |   5 |  20 | HELLO  |    204 |
    |   2 |   5 | HELLO  |    204 |
    |   2 |   5 | HELLO! |    400 |

  Scenario Outline: Pre-signed POST with key prefix constraint
    When I generate pre-signed form fields for keys starting with "<prefix>"
    And I use a regular HTTP client to POST data to "<key>"
    Then the response status code should be <status>

  Examples:
    | prefix         | key            | status |
    | foo            | foobar         |    204 |
    | foo            | foo            |    204 |
    | foo            | fo             |    403 |
    | foo${filename} | foo${filename} |    403 |

  Scenario Outline: Pre-signed POST with metadata starts-with constraint
    When I generate pre-signed form fields where metadata "<constrained meta>" starts with "<prefix>"
    And I use a regular HTTP client to POST data with metadata "<input meta>" set to "<value>"
    Then the response status code should be <status>

  Examples:
    | constrained meta | prefix | input meta | value | status |
    | zipcode          |     98 | zip        |    98 |    403 |
    | zipcode          |     98 | zipcode    | 98000 |    204 |
    | zipcode          |     98 | zipcode    | 97000 |    403 |

  Scenario Outline: Pre-signed POST with header starts-with constraint
    When I generate pre-signed form fields where header "<header option>" starts with "<prefix>"
    And I use a regular HTTP client to POST data with header "<header>" set to "<value>"
    Then the response status code should be <status>

  Examples:
    | header option  | header       | prefix | value       | status |
    | content_type   | Content-Type | image  | image/jpeg  |    204 |
    | content_type   | Content-Type | image  | text/plain  |    403 |
    | expires_header | Expires      | Thu    | Thu, 26 May |    204 |
    | expires_header | Expires      | Fri    | Thu, 26 May |    403 |

  @wip @broken
  Scenario Outline: Pre-signed POST with expiration
    When I generate pre-signed form fields that expire in <expiration> seconds
    And I wait <sleep> seconds
    And I use a regular HTTP client to POST the data "HELLO", ignoring errors
    Then the response status code should be <status>

  Examples:
    | expiration | sleep | status |
    |          1 |     2 |    403 |
    |          2 |     1 |    204 |
