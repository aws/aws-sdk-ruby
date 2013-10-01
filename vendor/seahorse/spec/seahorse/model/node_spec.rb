require 'spec_helper'

module Seahorse
  module Model
    describe Node do
      describe 'property' do
        it 'defines a property on the class' do
          node = Class.new(Node) do
            property :prop1, String
            property :prop2, Integer, in: :subnode
          end

          expect(node.properties[:prop1].serialized_class).to eq(String)
        end

        it 'inherits properties from superclass' do
          node1 = Class.new(Node) do
            property :prop1, String
          end

          node2 = Class.new(node1) do
            property :prop2, String
          end

          node3 = Class.new(node2)

          expect(node1.properties.keys).to eq ['prop1']
          expect(node2.properties.keys).to eq ['prop1', 'prop2']
          expect(node3.properties.keys).to eq ['prop1', 'prop2']
        end
      end

      describe 'from_hash' do
        it 'loads node from hash' do
          node_class = Class.new(Node) do
            property :prop1, String
            property :prop2, Symbol
          end

          node = node_class.from_hash('prop1' => 'a', 'prop2' => 'b')
          expect(node.prop1).to eq 'a'
          expect(node.prop2).to eq :b
        end

        it 'supports named properties' do
          node_class = Class.new(Node) do
            property :prop1, String, name: :a
          end

          node = node_class.from_hash('a' => 'a')
          expect(node.prop1).to eq 'a'
        end

        it 'supports properties in sub-nodes' do
          node_class = Class.new(Node) do
            property :prop1, String, in: :subnode
          end

          node = node_class.from_hash('subnode' => {'prop1' => 'a'})
          expect(node.prop1).to eq 'a'
        end

        it 'supports inherited properties in sub-nodes' do
          node_class_super = Class.new(Node) do
            property :prop1, String, in: :subnode
          end
          node_class = Class.new(node_class_super)

          node = node_class.from_hash('subnode' => {'prop1' => 'a'})
          expect(node.prop1).to eq 'a'
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

          expect(node.shape).to be_instance_of Shapes::StructureShape
          expect(node.shape.members[:foo]).to be_instance_of Shapes::StringShape
        end

        it 'fails if unrecognized keys are found' do
          node_class = Class.new(Node)
          hash = { 'node1' => 'a', 'node2' => 'b' }
          expect { node_class.from_hash(hash) }.to raise_error(
            RuntimeError, /Unrecognized properties: node1, node2/)
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
          expect(node.to_hash).to eq('subnode' => {'prop1' => 'a'}, 'prop2' => 'b')
        end
      end
    end
  end
end
