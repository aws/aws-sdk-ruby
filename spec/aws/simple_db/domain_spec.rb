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
  class SimpleDB
    describe Domain do

      let(:config) { stub_config }

      let(:client) { config.simple_db_client }

      let(:domain) { Domain.new('domain-name', :config => config) }

      it_behaves_like 'a sdb model object', 'domain-name'

      context '#initialize' do

        it 'accepts a name' do
          domain.name.should == 'domain-name'
        end

        it 'accepts a config' do
          domain.config.should == config
        end

      end

      context '#inspect' do

        it 'should have a short inspect string with the name' do
          domain.inspect.should match(/domain-name/)
        end

      end

      context '#empty' do

        it 'returns true if there are no items in the domain' do
          domain.stub_chain(:metadata, :item_count).and_return(0)
          domain.empty?.should == true
        end

        it 'returns false if there are more than 1 items in the domain' do
          domain.stub_chain(:metadata, :item_count).and_return(1)
          domain.empty?.should == false
        end

      end

      context '#delete' do

        before(:each) do
          client.stub(:delete_domain)
          domain.stub(:empty?).and_return(true)
        end

        it 'returns nil' do
          domain.delete.should == nil
        end

        it 'should call delete_domain with the proper name' do
          client.should_receive(:delete_domain).
            with(:domain_name => domain.name)
          domain.delete
        end

        it 'should check to see if the domain is empty first' do
          domain.should_receive(:empty?)
          domain.delete
        end

        it 'should raise an error if the domain is not empty' do
          domain.stub(:empty?).and_return(false)
          lambda {
            domain.delete
          }.should raise_error(Domain::NonEmptyDeleteError, /non-empty/)
        end

      end

      context '#delete!' do

        it 'should call delete_domain with the proper name' do
          client.should_receive(:delete_domain).
            with(:domain_name => domain.name)
          domain.delete!
        end

        it 'should not check to see if the domain is empty' do
          client.stub(:delete_domain)
          domain.should_not_receive(:empty?)
          domain.delete!
        end

        it 'should not raise an error' do
          client.stub(:delete_domain)
          domain.stub(:empty?).and_return(false)
          lambda { domain.delete!  }.should_not raise_error
        end

      end

      context '#exists?' do

        it 'should call domain_metadata to check' do
          client.should_receive(:domain_metadata)
          domain.exists?
        end

        it 'should return true if no response is raised by domain_metadata' do
          client.stub(:domain_metadata)
          domain.exists?.should == true
        end

        it 'should return false if domain_metadata raises a client error' do
          resp = double('http-resposne',
                        :body => 'error',
                        :status => 400)
          client.stub(:domain_metadata).and_raise(Errors::NoSuchDomain.new('a', resp))
          domain.exists?.should == false
        end

        it 'should not trap standard errors' do
          client.stub(:domain_metadata).and_raise(StandardError.new('foo'))
          lambda { domain.exists?  }.should raise_error(StandardError, /foo/)
        end

      end

      context '#metadata' do

        it 'should return a metadata object' do
          domain.metadata.should be_a(DomainMetadata)
        end

        it 'should return a metadata object with the correct domain' do
          domain.metadata.domain == domain
        end

        it 'should return a metadata object with the correct config' do
          domain.metadata.config.should == config
        end

      end

      context '#items' do

        it 'should return an item collection' do
          domain.items.should be_an(ItemCollection)
        end

        it 'should have the correct domain' do
          domain.items.domain.should == domain
        end

        it 'should have the correct config' do
          domain.items.config.should == config
        end

      end

    end
  end
end
