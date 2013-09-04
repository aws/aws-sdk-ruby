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

module Aws
  module Query
    describe ParamList do

      let(:list) { ParamList.new }

      describe '#add' do

        it 'returns a param' do
          expect(list.add('name', 'value')).to be_kind_of(Param)
        end

        it 'adds a param with name and value' do
          param = list.add('name', 'value')
          expect(param.name).to eq('name')
          expect(param.value).to eq('value')
        end

        it 'can add a param without a value' do
          param = list.add('name')
          expect(param.name).to eq('name')
          expect(param.value).to be(nil)
        end

      end

      describe '#remove' do

        it 'removes a returns a param' do
          param = list.add('name', 'value')
          expect(list.remove('name')).to be(param)
        end

        it 'returns nil if the param was not added' do
          expect(list.remove('name')).to be(nil)
        end

      end

      describe '#to_a' do

        it 'returns an array of sorted Param objects' do
          p1 = list.add('name2')
          p2 = list.add('name1', 'value')
          expect(list.to_a).to eq([p2, p1])
        end

      end

      describe '#to_s' do

        it 'returns the params as a string' do
          list.add('name', 'value')
          expect(list.to_s).to eq('name=value')
        end

        it 'joins multiple params with an ampersand' do
          list.add('name1', 'value')
          list.add('name2', 'value')
          expect(list.to_s).to eq('name1=value&name2=value')
        end

        it 'sorts params' do
          list.add('name2', 'value')
          list.add('name1', 'value')
          expect(list.to_s).to eq('name1=value&name2=value')
        end

        it 'escapes names and values' do
          list.add('param name', 'val=u!')
          expect(list.to_s).to eq('param%20name=val%3Du%21')
        end

      end

    end
  end
end
