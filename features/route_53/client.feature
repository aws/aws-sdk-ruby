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
@route_53 @client
Feature: Route 53 Client

  Scenario: CreateHostedZone
    When I call #create_hosted_zone on the client
    Then a request should have been made like:
    | TYPE | NAME | VALUE                  |
    | http | verb | POST                   |
    | http | uri  | /2012-02-29/hostedzone |

  Scenario: DeleteHostedZone
    Given I call #create_hosted_zone on the client
    When I call #delete_hosted_zone on the client with the zone id
    Then #get_hosted_zone should raise "AWS::Route53::Errors::NoSuchHostedZone"

  Scenario: GetHostedZone
    Given I call #create_hosted_zone on the client
    When I call #get_hosted_zone on the client with the zone id
    Then a request should have been made like:
    | TYPE   | NAME      | VALUE                         |
    | http   | verb      | GET                           |
    | http   | uri_match | ^\/2012-02-29\/hostedzone\/.+ |

  Scenario: ListHostedZones
    Given I call #create_hosted_zone on the client 3 times
    When I call #list_hosted_zone on the client
    Then the response should contain the created hosted zone ids

