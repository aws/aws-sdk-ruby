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
@proxy
Feature: HTTP Proxy Support

  As a customer of AWS
  I want to communicate with AWS products through an HTTP proxy
  So that I can access them behind a restrictive firewall

  Scenario: Access S3 using an HTTP proxy
    Given I have an HTTP proxy running on localhost
    When I configure an S3 interface using the proxy URI
    Then I should be able to make a call to S3
