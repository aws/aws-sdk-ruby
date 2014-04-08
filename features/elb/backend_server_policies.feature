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
@elb @backend_server_policies
Feature: ELB Backend Server Policies

  Scenario: Creating a backend server policy
    Given I create a load balancer
    And I create a PublicKeyPolicyType policy named "pkp" with the public key:
    """
-----BEGIN CERTIFICATE-----
MIICaTCCAdICCQDuvCF4erLGSjANBgkqhkiG9w0BAQUFADB5MQswCQYDVQQGEwJa
WjENMAsGA1UECBMERkFLRTENMAsGA1UEBxMERkFLRTENMAsGA1UEChMERkFLRTEN
MAsGA1UECxMERkFLRTENMAsGA1UEAxMERkFLRTEfMB0GCSqGSIb3DQEJARYQZmFr
ZUBleGFtcGxlLmNvbTAeFw0xMTA4MTAyMjE0NDVaFw0xMjA4MDkyMjE0NDVaMHkx
CzAJBgNVBAYTAlpaMQ0wCwYDVQQIEwRGQUtFMQ0wCwYDVQQHEwRGQUtFMQ0wCwYD
VQQKEwRGQUtFMQ0wCwYDVQQLEwRGQUtFMQ0wCwYDVQQDEwRGQUtFMR8wHQYJKoZI
hvcNAQkBFhBmYWtlQGV4YW1wbGUuY29tMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCB
iQKBgQC4vy7K2LCgYJs7AbxdanPEwL4KLC9gi1LqzkRWShEaz8COUZswcOkevLQy
SMFTXAvmH1FVqNO97wVG6ydxi+LNE7Jub62QQnsK420y+nXRTytxrboH1eAiAIEt
ZoUKaOymfAN8l/MJbcPH0rTYNdni99B+UMPWmFeRg/BeWiy2hwIDAQABMA0GCSqG
SIb3DQEBBQUAA4GBAD+VNA6ia8TXa2lJgvmoGYCLGcCaccz7Nv/u4/oqv8qMPvdZ
5DZxDLIExOSHiFGwWg5m8NgcirH2diveyRBgNhgC6S6DntkEMvAV0yvaQgHtUO53
o50MymfqtoVcebZcXbiDVAXW1cPEHKLBXecX6/LZ+GOzEsUOxgt7Xs9uabqp
-----END CERTIFICATE-----
    """
    And I create a BackendServerAuthenticationPolicyType named "bsap" with "pkp"
    Then the load balancer should have 2 policies
    And the policy named "pkp" should exist
    And the policy named "bsap" should exist
    Then the policy attributes should match:
    | OPT                 | VALUE |
    | PublicKeyPolicyName | pkp   |
    When I set the backend server policy named "bsap" to port 80
    Then a request should have been made like:
    | TYPE   | NAME                 | VALUE                                   |
    | param  | Action               | SetLoadBalancerPoliciesForBackendServer |
    | param  | InstancePort         | 80                                      |
    | param  | PolicyNames.member.1 | bsap                                    |

  @adding
  Scenario: Adding backend server policies
    Given I create a load balancer
    Given I create a backend server policy named "bespa"
    And I create a backend server policy named "bespb"
    When I set the backend server policy named "bespa" to port 80
    And I set the backend server policy named "bespb" to port 80
    Then the backend server policy for port 80 should be "bespb"

  @removing
  Scenario: Removing backend server policies
    Given I create a load balancer
    Given I create a backend server policy named "besp"
    When I set the backend server policy named "besp" to port 80
    When I remove the backend server policy from port 80
    Then the load balancer should have no backend server policy on port 80
