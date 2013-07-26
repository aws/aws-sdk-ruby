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

require 'test_helper'

module Seahorse
  module Model
    describe Property do
      def property(type = property_class, opts = {})
        @property ||= Property.new('prop', type, opts)
      end

      def property_class
        klass = Class.new
        def klass.from_hash(value) value.to_s + '!' end
        klass
      end

      describe 'scalar properties' do
        describe '#load_from' do
          it 'loads a String value from a Hash' do
            property(String).load_from('prop' => 'VALUE').must_equal('VALUE')
          end

          it 'loads an Integer value from a Hash' do
            property(Integer).load_from('prop' => 42).must_equal(42)
          end

          it 'loads a Symbol value from a Hash (type casting)' do
            property(Symbol).load_from('prop' => 'value').must_equal(:value)
          end

          it 'loads a Boolean value from a Hash (custom type)' do
            property(Types::Boolean).load_from('prop' => nil).must_equal(false)
          end

          it 'deserialized classes with .from_hash method' do
            property.load_from('prop' => 'VALUE').must_equal('VALUE!')
          end

          it 'raises an exception if the key is not in the hash' do
            lambda { property.load_from({}) }.must_raise PropertyError
          end
        end

        describe '#write_to' do
          it 'writes String value to a hash' do
            property(String).write_to({}, 'VALUE').must_equal('prop' => 'VALUE')
          end

          it 'writes an Integer value to a hash' do
            property(Integer).write_to({}, 42).must_equal('prop' => 42)
          end

          it 'writes a Symbol value to a Hash (type casting)' do
            property(Symbol).write_to({}, :value).must_equal('prop' => 'value')
          end

          it 'writes a Boolean value to a Hash (custom type)' do
            value = property(Types::Boolean).write_to({}, false)
            value.must_equal('prop' => false)
          end

          it 'does not write nil values' do
            property(String).write_to({}, nil).must_equal({})
          end
        end
      end

      describe 'with opts[:name]' do
        def property
          @property ||= Property.new('prop', String, name: 'other')
        end

        it 'loads a value from the right location' do
          property.load_from('other' => 'right').must_equal('right')
        end

        it 'saves a value to the right location' do
          property.write_to({}, 'value').must_equal('other' => 'value')
        end
      end

      describe 'with opts[:in]' do
        def property
          @property ||= Property.new('prop', Integer, in: 'subnode')
        end

        it 'loads a value from the right location' do
          property.load_from('subnode' => {'prop' => 1}).must_equal(1)
        end

        it 'saves a value to the right location' do
          property.write_to({}, 1).must_equal('subnode' => {'prop' => 1})
        end
      end

      describe 'with opts[:always_serialize]' do
        def property
          @property ||= Property.new('prop', Hash, always_serialize: true)
        end

        it 'always writes a value to a hash, even nil' do
          property.write_to({}, nil).must_equal('prop' => nil)
        end
      end

      describe 'Array property' do
        describe '#load_from' do
          it 'de-serializes Array of properties' do
            value = property([property_class]).load_from({'prop' => %w(A B C)})
            value.must_equal(%w(A! B! C!))
          end
        end

        describe '#write_to' do
          it 'writes an Array of properties' do
            prop = property([Types::Boolean])
            value = prop.write_to({}, %w(1 1 1))
            value.must_equal('prop' => [true, true, true])
          end
        end
      end

      describe 'Hash property' do
        describe '#load_from' do
          it 'de-serializes Hash of properties' do
            prop = property(Symbol => property_class)
            value = prop.load_from('prop' => {'a' => 'b'})
            value.must_equal(a: 'b!')
          end
        end

        describe '#write_to' do
          it 'writes a Hash of properties' do
            prop = property(Symbol => Types::Boolean)
            value = prop.write_to({}, 'a' => 'b')
            value.must_equal('prop' => {'a' => true})
          end
        end
      end
    end
  end
end
