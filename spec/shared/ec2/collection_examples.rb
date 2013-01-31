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

    shared_examples_for "ec2 collection object" do

      let(:skip_config) { false }

      let(:config) { stub_config }

      let(:client) { config.ec2_client }

      let(:collection) { described_class.new(:config => config) }

      let(:response) { client.new_stub_for(client_method) }

      before(:each) do
        stub_two_members(response)
        client.stub(client_method).
          and_return(response)
      end

      it_should_behave_like "enumerable"

      context '#filter' do

        it 'returns a new collection' do
          new_collection = collection.filter('foo', 'bar')
          new_collection.should be_a(described_class)
          new_collection.config.should == collection.config
          new_collection.should_not == collection
        end

      end

      context '#each' do

        it 'calls the describe method' do
          client.should_receive(client_method).
            and_return(client.stub_for(client_method))
          collection.each {|obj|}
        end

        it 'yields an instance of the member class' do
          collection.each { |obj| obj.should be_a(member_class) }
        end

        it 'passes the config' do
          unless skip_config
            collection.each { |obj| obj.config.should eq(config) }
          end
        end

        it 'should yield the right number of objects' do
          collection.to_a.size.should == 2
        end

        context 'filtered' do

          it_should_behave_like "a filtered ec2 collection"

        end

      end

    end
  end
end
