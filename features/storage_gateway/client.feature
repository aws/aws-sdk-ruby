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
@storage_gateway @client
Feature: AWS Storage Gateway client

  Scenario: List gateways
    When I use the client to list gateways with a limit of 10
    Then the result should have an array of gateways
    And a request should have been made like:
    | TYPE   | NAME         | VALUE                                |
    | header | x-amz-target | StorageGateway_20120630.ListGateways |
    | json   | ["Limit"]    | 10                                   |

  Scenario: Errors
    When I use the client to describe a non-existent gateway
    Then I should receive an error with:
    | code                           | message                                                                            |
    | InvalidGatewayRequestException | Resource not found arn:aws:storagegateway:us-east-1:111122223333:gateway/mygateway |
