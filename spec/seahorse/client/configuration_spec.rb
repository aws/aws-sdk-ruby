# Copyright 2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

module Seahorse
  module Client
    describe Configuration do

      let(:config) { Configuration.new }

      describe '#add_option' do

        it 'defines a getter' do
          config.add_option(:name)
          expect(config.build!).to respond_to(:name)
        end

        it 'defaults the value to nil' do
          config.add_option(:name)
          expect(config.build!.name).to be(nil)
        end

        it 'accepts a default value' do
          config.add_option(:name, 'John Doe')
          expect(config.build!.name).to eq('John Doe')
        end

        it 'replaces previous default values when called twice' do
          config.add_option(:name, 'abc')
          config.add_option(:name, 'xyz')
          expect(config.build!.name).to eq('xyz')
        end

        it 'returns self so it can be chained' do
          c = config.add_option(:name).add_option(:color)
          expect(c).to be(config)
          expect(c.build!.members).to eq([:name, :color])
        end

      end

      describe '#build!' do

        it 'returns a Struct' do
          expect(config.add_option(:opt).build!).to be_kind_of(Struct)
        end

        it 'returns a frozen structure' do
          config.add_option(:foo)
          c = config.build!
          expect(c).to be_frozen
          expect {
            c.foo = 'bar'
          }.to raise_error(/can't modify frozen/)
        end

        it 'accepts a hash of options' do
          config.add_option(:size, 'default')
          config.add_option(:color, 'default')
          cfg = config.build!(size: 'large', color: 'red')
          expect(cfg.size).to eq('large')
          expect(cfg.color).to eq('red')
        end

        it 'raises an argument error for uknown options' do
          config.add_option(:known)
          expect {
            config.build!(unknown: 'option')
          }.to raise_error(ArgumentError, /invalid configuration option/)
        end

      end
    end
  end
end
