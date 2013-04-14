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
    describe RouteTableCollection do

      it_should_behave_like "an ec2 model object", {}

      it_should_behave_like "ec2 collection object" do

        let(:member_class) { RouteTable }

        let(:client_method) { :describe_route_tables }

        def stub_two_members(resp)
          resp.data[:route_table_set] = [
            {
              :route_table_id => 'rt-123',
              :vpc_id => 'vpc-id',
              :route_set => [],
              :association_set => [],
            }, {
              :route_table_id => 'rt-321',
              :vpc_id => 'vpc-id',
              :route_set => [],
              :association_set => [],
            },
          ]
        end

        it_should_behave_like "a tagged ec2 collection"

        it_should_behave_like "ec2 collection array access"

        let(:route_tables) { collection }

        context '#each' do

          it 'yields route tables' do
            tables = collection.to_a
            tables.each{|t| t.should be_a(RouteTable) }
            tables.map(&:id).should == %w(rt-123 rt-321)
          end

        end

        context '#[]' do

          it 'returns a route table correct config' do
            table = route_tables['rt-123']
            table.should be_a(RouteTable)
            table.id.should == 'rt-123'
            table.config.should == route_tables.config
          end

        end

        context '#create' do

          let(:details) {{
            :route_table_id => 'rt-123',
            :vpc_id => 'vpc-id',
          }}

          let(:response) { client.stub_for(:create_route_table) }

          before(:each) do
            response.data[:route_table] = details
            client.stub(:create_route_table).and_return(response)
          end

          it 'calls #create_route_table on the client' do

            client.should_receive(:create_route_table).
              with(:vpc_id => 'vpc-id').
              and_return(response)

            route_tables.create(:vpc => 'vpc-id')

          end

          it 'accepts a vpc object' do

            client.should_receive(:create_route_table).
              with(:vpc_id => 'vpc-abc').
              and_return(response)

            vpc = VPC.new('vpc-abc', :config => config)

            route_tables.create(:vpc => vpc)

          end

          its 'accpets a vpc id' do

            client.should_receive(:create_route_table).
              with(:vpc_id => 'vpcid').
              and_return(response)

            route_tables.create(:vpc_id => 'vpcid')

          end

          it 'populates the vpc id when chained' do

            client.should_receive(:create_route_table).
              with(:vpc_id => 'vpc-foo').
              and_return(response)

            vpc = VPC.new('vpc-foo', :config => config)
            vpc.route_tables.create

          end

        end
      end
    end
  end
end
