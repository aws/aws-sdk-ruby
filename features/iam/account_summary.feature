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
@iam @account_summary
Feature: AWS IAM Account Summary

  As an AWS account holder
  I want to know whan AWS IAM resources I am using

  Scenario: Get IAM account summary information
    When I ask for summary information about my IAM usage
    Then the result should be a hash with at least the following symbol keys:
    | users                               |
    | users_quota                         |
    | groups                              |
    | groups_quota                        |
    | server_certificates                 |
    | server_certificates_quota           |
    | user_policy_size_quota              |
    | group_policy_size_quota             |
    | groups_per_user_quota               |
    | signing_certificates_per_user_quota |
    | access_keys_per_user_quota          |
