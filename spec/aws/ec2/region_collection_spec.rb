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

require 'spec_helper'

module AWS
  class EC2

    describe RegionCollection do

      it_should_behave_like "an ec2 model object", {}

      it_should_behave_like "ec2 collection object" do

        # ec2 regions returns a region with an alternate configuration
        # because of the new ec2 endpoint, the configuration specs
        # don't apply here
        let(:skip_config) { true }

        let(:member_class) { Region }

        let(:client_method) { :describe_regions }

        it_should_behave_like "ec2 collection array access" do
          # ec2 regions returns a region with an alternate configuration
          # because of the new ec2 endpoint, the configuration specs
          # don't apply here
          let(:skip_config) { true }
        end

        def stub_two_members(resp)
          resp.data[:region_info] = [
            { :region_name => 'region-1', :region_endpoint => 'ec2.region-1.amazonaws.com' },
            { :region_name => 'region-2', :region_endpoint => 'ec2.region-2.amazonaws.com' },
          ]
        end

        context '#[]' do

          it 'should pass the name' do
            collection["foo"].name.should == "foo"
          end

        end

      end

    end

  end
end
