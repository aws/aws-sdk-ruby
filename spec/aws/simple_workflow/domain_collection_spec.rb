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
  class SimpleWorkflow
    describe DomainCollection do

      let(:config) { stub_config }

      let(:client) { config.simple_workflow_client }

      let(:domains) { DomainCollection.new(:config => config) }

      context '#create' do

        it 'is an alias of register' do
          domains.method(:register).should == domains.method(:create)
        end

        it 'calls register_domain on the client' do
          client.should_receive(:register_domain).with(
            :name => 'name', :workflow_execution_retention_period_in_days => 'NONE')
          domains.create('name', :none)
        end

        it 'stringifies durations' do
          client.should_receive(:register_domain).with(
            :name => 'name', :workflow_execution_retention_period_in_days => '1234')
          domains.create('name', 1234)
        end

        it 'returns a domain' do
          domains.create('name', :none).should be_a(Domain)
        end

        it 'returns a domain with the proper name' do
          domains.create('name', :none).name.should == 'name'
        end

        it 'returns a domain with the proper description' do
          domain = domains.create('name', :none, :description => 'abc')
          domain.description.should == 'abc'
        end

        it 'returns a domain with the proper config' do
          domains.create('name', :none).config.should == config
        end

        it 'returns a domain with the proper retention_period' do
          domains.create('name', :none).retention_period.should == :none
          domains.create('name', 12345).retention_period.should == 12345
          domains.create('name', '12345').retention_period.should == 12345
        end

      end

      context '#[]' do

        it 'returns a domain' do
          domains['foo'].should be_a(Domain)
        end

        it 'returns a domain with the proper name' do
          domains['name'].name.should == 'name'
        end

        it 'accepts a symbol name' do
          domains[:foo].name.should == 'foo'
        end

        it 'returns a domain with the proper config' do
          domains['name'].config.should == config
        end

      end

      it_behaves_like "a pageable collection with limits" do

        let(:collection)      { domains }
        let(:client_method)   { :list_domains }
        let(:next_token_key)  { :next_page_token }
        let(:limit_key)       { :maximum_page_size }
        let(:request_options) {{ :registration_status => 'REGISTERED', :reverse_order => false }}

        def stub_next_token(response, token)
          response.data['nextPageToken'] = token
        end

        def stub_n_members response, n
          response.data['domainInfos'] = (1..n).collect do |i|
            {
              'name' => "domain-#{i}",
              'description' => "desc-#{i}",
              'status' => "REGISTERED",
            }
          end
        end

        it 'defaults to registered domains in alphabetical order' do
          client.should_receive(:list_domains).with(
            :registration_status => 'REGISTERED',
            :reverse_order => false)
          domains.to_a
        end

        it 'can request only deprecated domains' do
          client.should_receive(:list_domains).with(
            :registration_status => 'DEPRECATED',
            :reverse_order => false)
          domains.deprecated.to_a
        end

        it 'accepts registration status order as an option to #each' do
          client.should_receive(:list_domains).with(
            :registration_status => 'DEPRECATED',
            :reverse_order => false)
          domains.each(:registration_status => 'DEPRECATED') {|d|}
        end

        it 'can request domains in reserse alphabetical order' do
          client.should_receive(:list_domains).with(
            :registration_status => 'REGISTERED',
            :reverse_order => true)
          domains.reverse_order.to_a
        end

        it 'accepts reverse order as an option to #each' do
          client.should_receive(:list_domains).with(
            :registration_status => 'REGISTERED',
            :reverse_order => true)
          domains.each(:reverse_order => true) {|d|}
        end

        it 'can request deprecated domains in reserse alphabetical order' do
          client.should_receive(:list_domains).with(
            :registration_status => 'DEPRECATED',
            :reverse_order => true)
          domains.deprecated.reverse_order.to_a
        end

        it_behaves_like "a collection that yields models" do

          let(:member_class) { Domain }

          it 'yields users with populated names' do
            domains.collect(&:name).should == %w(domain-1 domain-2)
          end

          it 'yields users with populated descriptions' do
            domains.collect(&:description).should == %w(desc-1 desc-2)
          end

        end

      end

    end
  end
end
