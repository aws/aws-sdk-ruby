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
  module Model
    describe Property do
      def property(type = property_class, opts = {})
        @property ||= Property.new('prop', type, opts)
      end

      let(:property_class) do
        Class.new(String) do
          attr_accessor :member_name
          def self.from_hash(value) new(value.to_s + '!') end
        end
      end

      describe 'scalar properties' do
        describe '#load_from' do
          it 'loads a String value from a Hash' do
            expect(property(String).load_from('prop' => 'VALUE')).to eq('VALUE')
          end

          it 'loads an Integer value from a Hash' do
            expect(property(Integer).load_from('prop' => 42)).to eq(42)
          end

          it 'loads a Symbol value from a Hash (type casting)' do
            expect(property(Symbol).load_from('prop' => 'value')).to eq(:value)
          end

          it 'loads a Boolean value from a Hash (custom type)' do
            expect(property(Types::Boolean).load_from('prop' => nil)).to eq(false)
          end

          it 'deserialized classes with .from_hash method' do
            expect(property.load_from('prop' => 'VALUE')).to eq('VALUE!')
          end

          it 'raises an exception if the key is not in the hash' do
            expect { property.load_from({}) }.to raise_error(PropertyError)
          end
        end

        describe '#write_to' do
          it 'writes String value to a hash' do
            expect(property(String).write_to({}, 'VALUE')).to eq('prop' => 'VALUE')
          end

          it 'writes an Integer value to a hash' do
            expect(property(Integer).write_to({}, 42)).to eq('prop' => 42)
          end

          it 'writes a Symbol value to a Hash (type casting)' do
            expect(property(Symbol).write_to({}, :value)).to eq('prop' => 'value')
          end

          it 'writes a Boolean value to a Hash (custom type)' do
            value = property(Types::Boolean).write_to({}, false)
            expect(value).to eq('prop' => false)
          end

          it 'does not write nil values' do
            expect(property(String).write_to({}, nil)).to eq({})
          end
        end
      end

      describe 'with opts[:name]' do
        let(:property) { Property.new('prop', String, name: 'other') }

        it 'loads a value from the right location' do
          expect(property.load_from('other' => 'right')).to eq('right')
        end

        it 'saves a value to the right location' do
          expect(property.write_to({}, 'value')).to eq('other' => 'value')
        end
      end

      describe 'with opts[:in]' do
        let(:property) { Property.new('prop', Integer, in: 'subnode') }

        it 'loads a value from the right location' do
          expect(property.load_from('subnode' => {'prop' => 1})).to eq(1)
        end

        it 'saves a value to the right location' do
          expect(property.write_to({}, 1)).to eq('subnode' => {'prop' => 1})
        end
      end

      describe 'with opts[:always_serialize]' do
        let(:property) { Property.new('prop', Hash, always_serialize: true) }

        it 'always writes a value to a hash, even nil' do
          expect(property.write_to({}, nil)).to eq('prop' => nil)
        end
      end

      describe 'Array property' do
        describe '#load_from' do
          it 'de-serializes Array of properties' do
            value = property([property_class]).load_from({'prop' => %w(A B C)})
            expect(value).to eq(%w(A! B! C!))
          end
        end

        describe '#write_to' do
          it 'writes an Array of properties' do
            prop = property([Types::Boolean])
            value = prop.write_to({}, %w(1 1 1))
            expect(value).to eq('prop' => [true, true, true])
          end
        end
      end

      describe 'Hash property' do
        describe '#load_from' do
          it 'de-serializes Hash of properties' do
            prop = property(Symbol => property_class)
            value = prop.load_from('prop' => {'a' => 'b'})
            expect(value).to eq(a: 'b!')
          end
        end

        describe '#write_to' do
          it 'writes a Hash of properties' do
            prop = property(Symbol => Types::Boolean)
            value = prop.write_to({}, 'a' => 'b')
            expect(value).to eq('prop' => {'a' => true})
          end
        end
      end
    end
  end
end
