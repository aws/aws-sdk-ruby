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
    describe Param do

      describe '#name' do

        it 'returns the name' do
          expect(Param.new('name').name).to eq('name')
        end

      end

      describe '#value' do

        it 'returns the value' do
          expect(Param.new('name', 'value').value).to eq('value')
        end

        it 'defaults to nil' do
          expect(Param.new('name').value).to be(nil)
        end

      end

      describe '#to_s' do

        it 'url encodes the name and value' do
          param = Param.new('param name', 'val=u!')
          expect(param.to_s).to eq('param%20name=val%3Du%21')
        end

      end

      describe '#==' do

        it 'returns true if two params are the same' do
          expect(Param.new('name')).to eq(Param.new('name'))
        end

        it 'returns false if two params are different' do
          expect(Param.new('name1')).not_to eq(Param.new('name2'))
        end

      end

      describe '#<=>' do

        it 'sorts params' do
          p1 = Param.new('name1')
          p2 = Param.new('name2')
          expect([p2, p1].sort).to eq([p1, p2])
        end

      end
    end
  end
end
