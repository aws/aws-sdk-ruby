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

    describe AvailabilityZoneCollection do

      it_should_behave_like "an ec2 model object", {}

      it_should_behave_like "ec2 collection object" do

        let(:member_class) { AvailabilityZone }

        let(:client_method) { :describe_availability_zones }

        it_should_behave_like "ec2 collection array access"

        def stub_two_members(resp)
          resp.stub(:availability_zone_info).
            and_return([double("az1",
                               :region_name => "foo",
                               :zone_name => "az1"),
                        double("az2",
                               :region_name => "bar",
                               :zone_name => "az2")])
        end

      end

    end
  end
end
