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
@data_pipeline @pipelines
Feature: DataPipeline pipelines

  Scenario: Creating a pipeline
    When I create a pipeline
    Then the pipeline should exist

  Scenario: Describing multiple pipelines
    When I create a pipeline
    And I create another pipeline
    Then all pipelines should exist

  @definition
  Scenario: Adding a pipeline definition
    When I create a pipeline
    And I add the following definition:
    | ID            | NAME                 |
    | *Schedule     | Schedule             |
    | type          | Schedule             |
    | period        | 1 hour               |
    | startDateTime | 2012-12-12T00:00:00  |
    | endDateTime   | 2012-12-21T18:00:00  |
    | *Default      | Default              |
    | workerGroup   | workerGroup          |
    | *SayHello     | SayHello             |
    | type          | ShellCommandActivity |
    | command       | echo hello           |
    | <parent       | Default              |
    | <schedule     | Schedule             |
    Then I should get the same objects back
    And the objects should be valid

  @errors
  Scenario: Service errors
    When I create a pipeline
    And I add the following definition:
    | ID            | NAME     |
    | *Schedule     | Schedule |
    | type          |          |
    Then I should get an InvalidRequestException error

  @errors
  Scenario: Validation errors
    When I create a pipeline
    And I validate the following definition:
    | ID            | NAME     |
    | *Schedule     | Schedule |
    | type          |          |
    Then validation errors for Schedule should contain:
    """
    INVALID_FIELD: Field values cannot be empty. Found empty values for 'type'
    """
