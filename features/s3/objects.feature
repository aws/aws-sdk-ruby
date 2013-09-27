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
@s3 @objects
Feature: S3 Objects

 Background:
    Given I create a bucket

  Scenario: Putting nothing to an object
    When I put nothing to the key "blank"
    Then the object with the key "blank" should have a content length of 0

  Scenario: Putting a multi-byte string to an object
    When I put "åß∂ƒ©" to the key "multi"
    Then the object with the key "multi" should have a content length of 11

  Scenario: Putting a file to an object
    When I put the test png to the key "img"
    Then the object with the key "img" should have a content length of 976
