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

When(/^I call \#define_index_field with a source data map$/) do
  begin
    AWS.cloud_search.client.define_index_field(
      :domain_name => 'non-existent-domain-name',
      :index_field => {
        :index_field_name => 'fieldname',
        :index_field_type => 'text',
        :source_attributes => [
          {
            :source_data_function => 'Map',
            :source_data_map => {
              :source_name => 'mno',
              :cases => {
                'abc' => 'xyz'
              }
            }
          }
        ]
      }
    )
  rescue => @error
    # expecting error
  end
end
