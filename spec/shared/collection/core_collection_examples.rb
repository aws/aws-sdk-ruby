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

shared_examples_for "a core collection" do

  it 'should be enumerable' do
    collection.should be_an(Enumerable)
  end

  context 'yielded objects' do

    before(:each) do
      stub_n_members(response, 2)
    end

    it 'yields the correct number of objects' do
      collection.to_a.size.should eq(2)
    end

    it 'yields instances of the member class' do
      collection.each{|obj| obj.should be_a(member_class) }
    end

    it 'yields objects with the correct configuration' do
      if collection.first.respond_to?(:config)
        collection.each{|obj| obj.config.should eq(collection.config) }
      end
    end

  end

  context '#each' do
  end

  context '#each_batch' do
  end

  context '#first' do
  end

  context '#in_groups_of' do
  end

  context '#page' do
  end

  context '#enum' do

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

    it 'calls each when enumerated' do
      collection.should_receive(:each)
      collection.enum.collect {|obj|}
    end

    it 'passes arguments to the each method' do
      collection.should_receive(:each).with(:limit => 4, :batch_size => 2)
      collection.enum(:limit => 4, :batch_size => 2).collect {|obj|}
    end

    it 'is aliased as :enumerator' do
      collection.methods(:enumerator).should eq(collection.methods(:enum))
    end

  end

end
