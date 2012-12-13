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
@cloud_front @client
Feature: CloudFront Client

  Scenario: List distributions
    When I use the client to list distributions
    Then the result should have an array of distributions
    And an integer value for quantity

  Scenario: Errors
    When I use the client to get a non-existent distribution
    Then I should receive an error with:
    | code               | message                                    |
    | NoSuchDistribution | The specified distribution does not exist. |
