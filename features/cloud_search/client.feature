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
@cloud_search
Feature: CloudSearch Client

  Scenario: Uses non-flattened maps
    When I call #define_index_field with a source data map
    Then a request should have been made like:
    | TYPE   | NAME                                                                   | VALUE            |
    | param  | Action                                                                 | DefineIndexField |
    | param  | IndexField.SourceAttributes.member.1.SourceDataMap.Cases.entry.1.key   | abc              |
    | param  | IndexField.SourceAttributes.member.1.SourceDataMap.Cases.entry.1.value | xyz              |
