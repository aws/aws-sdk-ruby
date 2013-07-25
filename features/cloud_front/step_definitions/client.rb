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


When /^I use the client to list distributions$/ do
  @response = @cloud_front_client.list_distributions
end

Then /^the result should have an array of distributions$/ do
  @response[:items].should be_an(Array)
end

Then /^an integer value for quantity$/ do
  @response[:quantity].should be_an(Integer)
end

When /^I use the client to get a non\-existent distribution$/ do
  begin
    @cloud_front_client.get_distribution(:id => 'abc')
  rescue => @error
  end
end

When /^I use the client to create a distrubtion for a non\-existent origin$/ do
  begin
    @cloud_front_client.create_distribution({
      :distribution_config => {
        :caller_reference => '123',
        :aliases => {
          :quantity => 0,
        },
        :default_root_object => '/',
        :origins => {
          :quantity => 0,
        },
        :default_cache_behavior => {
          :target_origin_id => 'abc',
          :forwarded_values => {
            :query_string => true,
            :cookies => { :forward => 'none' }
          },
          :trusted_signers => {
            :enabled => false,
            :quantity => 0,
          },
          :viewer_protocol_policy => 'allow-all',
          :min_ttl => 10,
        },
        :cache_behaviors => {
          :quantity => 0,
        },
        :comment=> 'abc',
        :logging => {
          :enabled => false,
          :bucket => 'aws-sdk',
          :prefix => 'prefix',
          :include_cookies => false,
        },
        :enabled => false,
        :price_class => 'PriceClass_All',
      },
    })
  rescue => @error
  end
end

Then(/^I should be able to list distributions with session credentials$/) do
  client = AWS::CloudFront::Client.new(@session.credentials)
  resp = client.list_distributions
  resp.data[:items].should be_an(Array)
end
