# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
    describe DomainCollection do

      let(:domains) { DomainCollection.new(:config => stub_config) }

      it_behaves_like 'enumerable'

      context '#create' do
        
        it 'calls create_domain with the proper domain name' do
          domains.client.should_receive(:create_domain).
            with(:domain_name => 'new-domain')
          domains.create('new-domain')
        end

        it 'returns a domain object' do
          domains.create('new-domain').should be_a(Domain)
        end

        it 'returns an object with the proper name' do
          domains.create('new-domain').name.should == 'new-domain'
        end

        it 'returns an object with the proper config' do
          domains.create('new-domain').config.should == domains.config
        end
        
      end

      context '#[]' do
      
        context 'with a string' do
          
          it 'returns a domain' do
            domains['foo'].should be_a(Domain)
          end
          
          it 'returns a domain with the correct name' do
            domains['foo'].name.should == 'foo'
          end

          it 'returns a domain with the correct name (from symbol)' do
            domains[:foo].name.should == 'foo'
          end

        end
      
      end

      context '#each' do

        before(:each) do
          response = domains.client.stub_for(:list_domains) 
          response.stub(:domain_names).and_return(%w(foo bar yuck))
        end

        it 'returns nil' do
          domains.each{|domain|}.should == nil
        end

        it 'yields up domain objects' do
          
          response = double('response', 
            :domain_names => %w(foo bar yuck),
            :next_token => nil)

          domains.client.stub(:list_domains).and_return(response)
          
          yielded = []
          domains.each do |domain|
            yielded << domain
          end
          yielded.length.should == 3
          yielded.all?{|d| d.is_a?(Domain).should be_true }
          yielded.collect{|d| d.name }.should == %w(foo bar yuck)

        end

        it 'limits results by limit if smaller than batch size' do
          response = double('response', :domain_names => [], :next_token => nil)
          domains.client.should_receive(:list_domains).
            with(hash_including(:limit => 10)).
            and_return(response)
          domains.each(:limit => 10) {|domain|}
        end

        it 'limits results by batch size' do
          response = double('response', :domain_names => [], :next_token => nil)
          domains.client.should_receive(:list_domains).
            with(hash_including(:limit => 10)).
            and_return(response)
          domains.each(:batch_size => 10) {|domain|}
        end

        it 'makes requests until :limit items returned in batches' do

          r1 = double('response', 
            :domain_names => %w(1 2 3 4 5 6 7 8 9 10),
            :next_token => 'abc')

          r2 = double('response', 
            :domain_names => %w(11 12 13 14 15),
            :next_token => 'xyz')

          domains.client.should_receive(:list_domains).
            with(hash_including(:limit => 10)).
            and_return(r1)

          domains.client.should_receive(:list_domains).
            with(hash_including(:limit => 5)).
            and_return(r2)

          domains.each(:limit => 15, :batch_size => 10) {|domain|}

        end

      end

    end
  end
end
