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
  class RDS
    describe DBInstanceCollection do

      let(:config) { stub_config }

      let(:client) { config.rds_client }

      let(:instances) { DBInstanceCollection.new(:config => config) }

      context '#[]' do

        it 'returns a DBInstnace' do
          instances['abc'].should be_a(DBInstance)
        end

        it 'lower-cases the id' do
          instances['ABC'].id.should eq('abc')
        end

        it 'has the correct configuration' do
          instances['abc'].config.should eq(instances.config)
        end

      end

      context '#create' do

        before(:each) do
          resp = client.stub_for(:create_db_instance)
          resp.data[:db_instance_identifier] = 'abc'
          client.stub(:create_db_instance).and_return(resp)
        end

        it 'returns a DBInstance' do
          instances.create('ABC').should be_a(DBInstance)
        end

        it 'returns a DBInstance' do
          instances.create('abc').config.should eq(instances.config)
        end

      end

      it_behaves_like "a pageable collection with limits" do

        let(:collection)      { instances }
        let(:client_method)   { :describe_db_instances }
        let(:next_token_key)  { :marker }
        let(:limit_key)       { :max_records }
        let(:request_options) {{}}

        def stub_next_token(response, token)
          response.data[:marker] = token
        end

        def stub_n_members response, n
          response.data[:db_instances] = (1..n).map{|i|
            { :db_instance_identifier => "id-#{i}" }
          }
        end

        it 'yields DBInstances' do
          stub_n_members(response,2)
          instances.count.should == 2
          instances.each{|i| i.should be_an(DBInstance) }
          instances.each{|i| i.config.should == config }
          instances.map(&:id).should == %w(id-1 id-2)
        end

      end

    end
  end
end
