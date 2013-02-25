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

module AWS::Core
  describe Data do

    let(:raw_data) {{
      :abc => 'xyz',
      :count => 123,
      :nested => {
        :string => 'abc',
        :integer => 123,
        :simple_array => ['abc', 'mno', 'xyz'],
        :complex_array => [
          { :key => 'value1' },
          { :key => 'value2' },
          { :key => 'value3' },
        ],
        :arrays => [
          [{ :key => 'k1' }, { :key => 'k2' }],
          [{ :key => 'k3' }, { :key => 'k4' }],
        ],
      }
    }}

    let(:data) { Data.new(raw_data) }

    context '#dup' do

      it 'dup returns a new core data object with duped internals' do
        hash = data.nested
        copy = hash.dup
        copy.delete(:string)
        hash.count.should eq(5)
        copy.count.should eq(4)
      end

      it 'dup returns a new core data list with duped internals' do
        array = data.nested.simple_array
        copy = array.dup
        copy.shift
        array.count.should eq(3)
        copy.count.should eq(2)
      end

    end

    context '#kind_of?' do

      it 'returns true for Hash' do
        data.kind_of?(Hash).should == true
        data.kind_of?(Array).should == false
      end

      it 'returns true for Array on list elements' do
        data.nested.simple_array.kind_of?(Hash).should == false
        data.nested.simple_array.kind_of?(Array).should == true
      end

    end

    context '#[]' do

      it 'provides hash-style access to the raw data' do
        data[:abc].should == 'xyz'
        data[:count].should == 123
      end

      it 'returns nested hases as a response data object' do
        data[:nested].should be_a(Data)
        data[:nested][:string].should == 'abc'
      end

      it 'returns nested arrays as arrays' do
        array = data[:nested][:simple_array]
        array.should == %w(abc mno xyz)
      end

      it 'returns hashes inside arrays as response data objects' do
        array = data[:nested][:complex_array]
        array[0].should be_a(Data)
        array[0][:key].should == 'value1'
        array[1][:key].should == 'value2'
        array[2][:key].should == 'value3'
      end

      it 'provides access via nested arrays' do
        data.nested.arrays[0][0].key.should == 'k1'
        data.nested.arrays[0][1].key.should == 'k2'
        data.nested.arrays[1][0].key.should == 'k3'
        data.nested.arrays[1][1].key.should == 'k4'
      end

      context 'invalid keys' do

        it 'raises meaningful errors about missing data' do
          lambda {
            # key is typo'd at the end of the chain
            data.nested.complex_array[1].kye
          }.should raise_error(NoMethodError, /undefined method `kye'/)
        end

        it 'prevents access past array boundries' do
          lambda {
            # last index is 1 in 2nd array, 2 is out of bounds
            data.nested.arrays[1][2].key
          }.should raise_error(NoMethodError, /undefined method `key'/)
        end

        it 'lets you know when you treat an array like a hash' do
          lambda {
            # last index is 1 in 2nd array, 2 is out of bounds
            data.nested.arrays[1]['key']
          }.should raise_error(TypeError, /String into Integer/)
        end

        it 'lets you know when you treat an array like a hash via method missing' do
          lambda {
            # last index is 1 in 2nd array, 2 is out of bounds
            data.nested.arrays[1].key
          }.should raise_error(NoMethodError, /undefined method `key'/)
        end

        it 'does not accept args via method-missing' do
          lambda {
            data.nested(1)
          }.should raise_error(NoMethodError, /undefined method `nested'/)
        end

      end

    end

    context '#to_hash' do

      it 'returns the raw data' do
        data.to_hash.should be_a(Hash)
        data.to_hash.should === raw_data
      end

      it 'is aliased as #to_h' do
        data.to_h.should be_a(Hash)
        data.to_h.should === raw_data
      end

    end

    context '#inspect' do

      it 'returns an inspect string based on the raw data' do
        data.inspect.should == raw_data.inspect
      end

    end

    context '#id' do

      it 'checks the data for an id first' do
        data = Data.new(:id => 'data-id')
        data.id.should == 'data-id'
      end

    end

    context '#method_missing' do

      it 'provides method-style access to the data' do
        data.nested.complex_array[0].key.should == 'value1'
      end

      it 'provides access first to hash values with the given key' do
        data = Data.new(:keys => 'abc')
        data.keys.should == 'abc'
      end

      it 'provides access to the real method if a block is passed' do
        data = Data.new(:keys => 'abc')
        data.keys {}.should == [:keys]
      end

      it 'provides access to the real method args are passed' do
        data = Data.new(:merge => 'abc')
        data.merge.should == 'abc'
        data.merge(:b => 'b').should == { :merge => 'abc', :b => 'b' }
      end

      it 'wraps yielded elements' do
        data = Data.new(:list => [
          { :key => 'a' },
          { :key => 'b' },
          { :key => 'c' },
        ])
        data.list.first.key.should == 'a'
        data.list.each do |item|
          %(a b c).should include(item.key)
        end
      end

      it 'works with multi-value yields (e.g. Hash#each)' do
        data = Data.new('a' => 1, 'b' => 2)
        keys = []
        values = []
        data.each do |k,v|
          keys << k
          values << v
        end
        keys.sort.should == %w(a b)
        values.sort.should == [1,2]
      end

    end

    context '#inject' do

      # this was broken in 1.9.2
      it 'works with inject on lists of hashes' do
        data = Data.new(:tags => [
          { :name => 'tag1', :value => 'value1' },
          { :name => 'tag2', :value => 'value2' },
        ])

        hash = data.tags.inject({}) do |hash,tag|
          hash.merge(tag.name => tag.value)
        end

        hash.should == {
          'tag1' => 'value1',
          'tag2' => 'value2',
        }

      end

    end

  end
end
