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
    describe Node do
      describe 'property' do
        it 'defines a property on the class' do
          node = Class.new(Node) do
            property :prop1, String
            property :prop2, Integer, in: :subnode
          end

          node.properties[:prop1].serialized_class.must_equal(String)
        end

        it 'inherits properties from superclass' do
          node1 = Class.new(Node) do
            property :prop1, String
          end

          node2 = Class.new(node1) do
            property :prop2, String
          end

          node3 = Class.new(node2)

          node1.properties.keys.must_equal ['prop1']
          node2.properties.keys.must_equal ['prop1', 'prop2']
          node3.properties.keys.must_equal ['prop1', 'prop2']
        end
      end

      describe 'from_hash' do
        it 'loads node from hash' do
          node_class = Class.new(Node) do
            property :prop1, String
            property :prop2, Symbol
          end

          node = node_class.from_hash('prop1' => 'a', 'prop2' => 'b')
          node.prop1.must_equal 'a'
          node.prop2.must_equal :b
        end

        it 'supports named properties' do
          node_class = Class.new(Node) do
            property :prop1, String, name: :a
          end

          node = node_class.from_hash('a' => 'a')
          node.prop1.must_equal 'a'
        end

        it 'supports properties in sub-nodes' do
          node_class = Class.new(Node) do
            property :prop1, String, in: :subnode
          end

          node = node_class.from_hash('subnode' => {'prop1' => 'a'})
          node.prop1.must_equal 'a'
        end

        it 'supports inherited properties in sub-nodes' do
          node_class_super = Class.new(Node) do
            property :prop1, String, in: :subnode
          end
          node_class = Class.new(node_class_super)

          node = node_class.from_hash('subnode' => {'prop1' => 'a'})
          node.prop1.must_equal 'a'
        end

        it 'supports shapes' do
          node_class = Class.new(Node) do
            property :shape, Shapes::StructureShape
          end

          node = node_class.from_hash 'shape' => {
            'type' => 'structure',
            'members' => {
              'foo' => { 'type' => 'string' }
            }
          }

          node.shape.must_be_instance_of Shapes::StructureShape
          node.shape.members[:foo].must_be_instance_of Shapes::StringShape
        end

        it 'fails if unrecognized keys are found' do
          node_class = Class.new(Node)
          hash = { 'node1' => 'a', 'node2' => 'b' }
          err = lambda { node_class.from_hash(hash) }.must_raise RuntimeError
          err.message.must_include 'Unrecognized properties: node1, node2'
        end
      end

      describe '#to_hash' do
        it 'serializes all properties' do
          node_class_super = Class.new(Node) do
            property :prop1, String, in: :subnode
          end
          node_class = Class.new(node_class_super) do
            property :prop2, Symbol
          end

          node = node_class.new
          node.prop1 = 'a'
          node.prop2 = :b
          node.to_hash.must_equal('subnode' => {'prop1' => 'a'}, 'prop2' => 'b')
        end
      end
    end
  end
end
