
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
@s3 @100continue @objects
Feature: Expect and 100-continue

  Scenario: Put an Object using 100-continue
    Given I monkey-patch Net::HTTP to work with 100-continue
    And I configure S3 with a 1MB http_continue_threshold and 5 second continue timeout
    When I put an object that is 2MB large
    Then the request headers should have "Expect" set to "100-continue"
