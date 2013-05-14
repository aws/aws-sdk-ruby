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
@s3 @high_level @objects @multipart_copy
Feature: Multipart Copy Object

  @slow
  Scenario: Set bucket policy
    Given I upload a 7MB file to the key "foo"
    When I copy the object from "foo" to "bar" with multipart
    # initiate multipart upload
    Then a request should have been made like:
    | TYPE   | NAME                | VALUE        |
    | http   | verb                | POST         |
    | http   | uri                 | /bar?uploads |
    # copy first part
    And a request should have been made like:
    | TYPE   | NAME                    | VALUE           |
    | http   | verb                    | PUT             |
    | http   | path                    | /bar            |
    | param  | partNumber              | 1               |
    | header | x-amz-copy-source-range | bytes=0-5242879 |
    # copy second part
    And a request should have been made like:
    | TYPE   | NAME                    | VALUE                 |
    | http   | verb                    | PUT                   |
    | http   | path                    | /bar                  |
    | param  | partNumber              | 2                     |
    | header | x-amz-copy-source-range | bytes=5242880-7340031 |
    # complete multipart upload
    And a request should have been made like:
    | TYPE   | NAME           | VALUE |
    | http   | verb           | POST  |
    | http   | path           | /bar  |
