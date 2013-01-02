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
@emr @job_flows
Feature: EMR Job Flows

  Scenario: Run a job flow
    When I create a job flow
    Then the job flow should exist

  Scenario: Terminate a job flow
    Given I create a job flow
    When I terminate the job flow
    Then the job flow state should eventually be "SHUTTING_DOWN"

  Scenario: Enumerating job flows
    When I create a job flow
    Then the job flow should be in the list of job flows

  Scenario: Enabling api termination protection
    Given I create a job flow
    When I enable api termination protection
    Then the job flow should have termination protected
    When I disable api termination protection
    Then the job flow should have termination unprotected

