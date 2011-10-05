# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

  shared_examples_for "a simple collection" do

    let(:collection)      { raise NotImplementedError }
    let(:client_method)   { raise NotImplementedError }
    let(:response)        { client.new_stub_for(client_method) }
    let(:request_options) { {} }

    before(:each) do
      client.stub(client_method).and_return(response)
      stub_n_members(response, 2)
    end

    it_behaves_like "a collection with #enum"

    context '#each' do

      it 'calls the clients method to list objects' do
        if request_options.empty?
          client.should_receive(client_method).and_return(response)
        else
          client.should_receive(client_method).
            with(request_options).
            and_return(response)
        end
        collection.each {|obj|}
      end

      it 'should yield the right number of objects' do
        collection.to_a.size.should == 2
      end

    end

  end

  shared_examples_for "a batchable collection" do

    let(:collection)      { raise NotImplementedError }
    let(:client_method)   { raise NotImplementedError }
    let(:next_token_key)  { raise NotImplementedError }
    let(:response)        { client.new_stub_for(client_method) }
    let(:request_options) { {} }

    before(:each) do
      client.stub(client_method).and_return(response)
    end

    it_behaves_like "a collection with #enum"

  end

  shared_examples_for "a pageable collection with limits" do

    let(:collection)      { raise NotImplementedError }
    let(:client_method)   { raise NotImplementedError }
    let(:next_token_key)  { raise NotImplementedError }
    let(:limit_key)       { :limit }
    let(:response)        { client.new_stub_for(client_method) }
    let(:request_options) { {} }

    before(:each) do
      client.stub(client_method).and_return(response)
    end

    it_behaves_like "a collection with #enum"

    context '#each' do

      context 'with :limit' do

        it 'passes :limit as limit_key' do
  
          client.should_receive(client_method).
            with(request_options.merge(limit_key => 10)).
            and_return(response)
  
          collection.each(:limit => 10) {|obj|}
  
        end
  
        it 'makes requests until the total number of items received == limit' do
  
          resp1 = client.new_stub_for(client_method)
          resp1.stub(next_token_key).and_return('abc')
          stub_n_members(resp1, 2)
  
          resp2 = client.new_stub_for(client_method)
          resp2.stub(next_token_key).and_return('mno')
          stub_n_members(resp2, 2)
  
          resp3 = client.new_stub_for(client_method)
          resp3.stub(next_token_key).and_return('xyz')
          stub_n_members(resp3, 1)
  
          client.should_receive(client_method).
            with(request_options.merge(limit_key => 5)).
            ordered.and_return(resp1)
  
          client.should_receive(client_method).
            with(request_options.merge(limit_key => 3, next_token_key => 'abc')).
            ordered.and_return(resp2)
  
          client.should_receive(client_method).
            with(request_options.merge(limit_key => 1, next_token_key => 'mno')).
            ordered.and_return(resp3)
  
          collection.each(:limit => 5) {|obj|}
  
        end
  
        it 'stops short of the limit if a truncated response is returned' do
  
          resp1 = client.new_stub_for(client_method)
          resp1.stub(next_token_key).and_return('abc')
          stub_n_members(resp1, 2)
  
          resp2 = client.new_stub_for(client_method)
          # no next token provided in the response
          stub_n_members(resp2, 2)
  
          client.should_receive(client_method).
            with(request_options.merge(limit_key => 5)).
            ordered.and_return(resp1)
  
          client.should_receive(client_method).
            with(request_options.merge(limit_key => 3, next_token_key => 'abc')).
            ordered.and_return(resp2)
  
          num_yielded = 0
          collection.each(:limit => 5) {|obj| num_yielded += 1 }
          num_yielded.should == 4
  
        end
  
      end
  
      context 'with :batch_size param' do
  
        it 'convert batch size into a limit' do
  
          client.should_receive(client_method).
            with(request_options.merge(limit_key => 10)).
            and_return(response)
  
          collection.each(:batch_size => 10) {|obj|}
  
        end
  
        it 'requests :batch_size num elements until response is truncated' do
  
          resp1 = client.new_stub_for(client_method)
          resp1.stub(next_token_key).and_return('abc')
  
          resp2 = client.new_stub_for(client_method)
          resp2.stub(next_token_key).and_return('xyz')
  
          resp3 = client.new_stub_for(client_method)
          # no next token
  
          client.should_receive(client_method).
            with(request_options.merge(limit_key => 5)).
            ordered.and_return(resp1)
  
          client.should_receive(client_method).
            with(request_options.merge(limit_key => 5, next_token_key => 'abc')).
            ordered.and_return(resp2)
  
          client.should_receive(client_method).
            with(request_options.merge(limit_key => 5, next_token_key => 'xyz')).
            ordered.and_return(resp3)
  
          collection.each(:batch_size => 5) {|obj|}
  
        end
  
      end
  
      context 'with :limit and :batch_size' do
  
        it 'makes requests while response is truncated' do
  
          resp1 = client.new_stub_for(client_method)
          resp1.stub(next_token_key).and_return('abc')
          stub_n_members(resp1, 2)
  
          resp2 = client.new_stub_for(client_method)
          resp2.stub(next_token_key).and_return('mno')
          stub_n_members(resp2, 2)
  
          resp3 = client.new_stub_for(client_method)
          stub_n_members(resp3, 1)
  
          client.should_receive(client_method).
            with(request_options.merge(limit_key => 2)).
            ordered.and_return(resp1)
  
          client.should_receive(client_method).
            with(request_options.merge(limit_key => 2, next_token_key => 'abc')).
            ordered.and_return(resp2)
  
          client.should_receive(client_method).
            with(request_options.merge(limit_key => 1, next_token_key => 'mno')).
            ordered.and_return(resp3)
  
          collection.each(:limit => 5, :batch_size => 2) {|obj|}
  
        end

      end

    end

  end

  shared_examples_for "a collection with #enum" do

    it 'should be enumerable' do
      collection.should be_an(Enumerable)
    end

    it 'responds to enumerator' do
      collection.should respond_to(:enum)
    end

    it 'returns an enumerator' do
      # this is annoying:
      # 1.8.6 only has Enumerable::Enumerator,
      # 1.8.7 has both Enumerable::Enumerator and Enumerator
      # 1.9.2 only has Enumerator (not Enumerable::Enumerator)
      collection.enum.class.name.should =~ /Enumerator$/
    end

    it 'returns an enumerator for the each method' do
      collection.should_receive(:each)
      collection.enum.collect {|obj|}
    end

    it 'passes arguments to the each method' do
      collection.should_receive(:each).with(:limit => 4, :batch_size => 2)
      collection.enum(:limit => 4, :batch_size => 2).collect {|obj|}
    end

  end

  shared_examples_for "a collection that yields models" do

    let(:member_class) { raise NotImplementedError }
    let(:member_count) { 2 }

    before(:each) do
      stub_n_members(response, member_count)
    end

    context '#each' do
      
      it 'yields the correct number of members' do
        collection.to_a.length.should == member_count
      end

      it 'yields instances of the member class' do
        collection.each{|obj| obj.should be_a(member_class) }
      end

      it 'yields objects with the correct config' do
        collection.each{|obj| obj.config.should == collection.config }
      end

    end

  end

end
