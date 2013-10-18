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
    describe NetworkACLCollection do

      it_should_behave_like "an ec2 model object", {}

      it_should_behave_like "ec2 collection object" do

        let(:member_class) { NetworkACL }

        let(:client_method) { :describe_network_acls }

        def stub_two_members(resp)
          resp.data[:network_acl_set] = [
            {
              :network_acl_id => 'acl-1-id',
              :vpc_id => 'vpc-1-id',
              :default => true,
              :entry_set => [],
              :association_set => [],
            }, {
              :network_acl_id => 'acl-2-id',
              :vpc_id => 'vpc-2-id',
              :default => false,
              :entry_set => [],
              :association_set => [],
            },
          ]
        end

        it_should_behave_like "a tagged ec2 collection"

        it_should_behave_like "ec2 collection array access"

        let(:network_acls) { collection }

        context '#each' do

          it 'yields populated vpcs' do
            acls = collection.to_a
            acls[0].vpc_id.should == 'vpc-1-id'
            acls[0].default?.should == true
            acls[0].entries.should == []
            acls[0].associations.should == []
            acls[1].vpc_id.should == 'vpc-2-id'
            acls[1].default?.should == false
            acls[1].entries.should == []
            acls[1].associations.should == []
          end

        end

        context '#[]' do

          it 'returns a network acl with the correct config' do
            network_acl = network_acls['acl-id']
            network_acl.should be_a(NetworkACL)
            network_acl.id.should == 'acl-id'
            network_acl.config.should == network_acls.config
          end

        end

        context '#create' do

          let(:acl_details) {{
            :network_acl_id => 'acl-id',
            :vpc_id => 'vpc-id',
            :default => false,
            :entry_set => [],
            :association_set => [],
          }}

          let(:response) { client.stub_for(:create_network_acl) }

          before(:each) do
            response.data[:network_acl] = acl_details
            client.stub(:create_network_acl).and_return(response)
          end

          it 'calls #create_network_acl on the client' do

            client.should_receive(:create_network_acl).
              with(:vpc_id => 'vpc-id').
              and_return(response)

            network_acls.create(:vpc => 'vpc-id')

          end

          it 'accepts a vpc object' do

            client.should_receive(:create_network_acl).
              with(:vpc_id => 'vpc-id').
              and_return(response)

            vpc = VPC.new('vpc-id', :config => config)

            network_acls.create(:vpc => vpc)

          end

          it 'defaults to the vpc it owns when present' do

            client.should_receive(:create_network_acl).
              with(:vpc_id => 'vpc-id').
              and_return(response)

            vpc = VPC.new('vpc-id', :config => config)
            acl = vpc.network_acls.create
            acl.vpc.should == vpc

          end

        end

      end
    end
  end
end
