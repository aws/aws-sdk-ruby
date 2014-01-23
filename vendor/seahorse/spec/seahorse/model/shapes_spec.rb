require 'spec_helper'

module Seahorse
  module Model
    module Shapes

      shared_examples 'subclass of Shape' do |definition|

        it 'can be initialized without any arguments' do
          described_class.new(definition)
        end

        it 'can be constructed directly from Shape.new with "type"' do
          shape = Shape.new(definition.merge('type' => described_class.type))
          expect(shape).to be_kind_of(described_class)
        end

        it 'responds to #type with the shape class type' do
          shape = described_class.new(definition)
          expect(shape.type).to eq(described_class.type)
        end

        it 'responds to #location_name with a default of  nil' do
          shape = described_class.new(definition)
          expect(shape.location_name).to be(nil)
        end

        it 'responds to #location_name with the given value' do
          definition['locationName'] = 'Name'
          shape = described_class.new(definition)
          expect(shape.location_name).to eq('Name')
        end

        it 'responds to #documentation with a default of  nil' do
          shape = described_class.new(definition)
          expect(shape.documentation).to be(nil)
        end

        it 'responds to #documentation with the given docs' do
          definition['documentation'] = 'docs'
          shape = described_class.new(definition)
          expect(shape.documentation).to eq('docs')
        end

        it 'responds to #metadata, returning the definition at that key' do
          shape = described_class.new(definition.merge('foo' => 'bar'))
          expect(shape.metadata('foo')).to eq('bar')
        end

        it 'responds to #shape_map with a default empty shape map' do
          shape = described_class.new(definition)
          expect(shape.shape_map).to be_kind_of(ShapeMap)
        end

        it 'responds to #shape_map with the constructed object' do
          shape_map = double('shape-map')
          shape = described_class.new(definition, shape_map: shape_map)
          expect(shape.shape_map).to be(shape_map)
        end

      end

      describe Shapes::Shape do

        describe 'new' do

          it 'constructs and returns a shape of the indicited type' do
            shape = Shape.new('type' => 'structure')
            expect(shape).to be_kind_of(Shapes::Structure)
          end

        end

        describe 'types' do

          it 'returns an enumerator of shape types to shape classes' do
            expect(Shapes.types.to_a.sort).to eq([
              ['blob', Shapes::Blob],
              ['boolean', Shapes::Boolean],
              ['byte', Shapes::Byte],
              ['char', Shapes::Char],
              ['double', Shapes::Double],
              ['float', Shapes::Float],
              ['integer', Shapes::Integer],
              ['list', Shapes::List],
              ['long', Shapes::Long],
              ['map', Shapes::Map],
              ['string', Shapes::String],
              ['structure', Shapes::Structure],
              ['timestamp', Shapes::Timestamp],
            ])
          end

        end

      end

      describe Shapes::Structure do

        let(:definition) {{
          'type' => 'structure',
          'required' => ['name'],
          'members' => {
            'name' => { 'type' => 'string' },
            'age' => { 'type' => 'integer' },
          }
        }}

        let(:shape) { Shapes::Structure.new(definition) }

        it_should_behave_like 'subclass of Shape', {}

        describe '#member' do

          it 'returns the shape for the named member' do
            name_shape = shape.member(:name)
            expect(name_shape).to be_a(Shapes::String)
          end

          it 'accepts string member names' do
            name_shape = shape.member('name')
            expect(name_shape).to be_a(Shapes::String)
          end

          it 'raises an ArgumentError if an undefined member is requested' do
            expect {
              shape.member(:gender)
            }.to raise_error(ArgumentError, "no such member :gender")
          end

        end

        describe '#member?' do

          it 'returns true if the member is defined' do
            expect(shape.member?(:name)).to be(true)
            expect(shape.member?('name')).to be(true)
          end

          it 'returns false if the member is not defined' do
            expect(shape.member?(:gender)).to be(false)
          end

        end

        describe '#members' do

          it 'returns an enumerable object' do
            expect(shape.members).to be_kind_of(Enumerable)
          end

          it 'enumerates member names and member shapes' do
            yielded = []
            shape.members.each do |member_name, member_shape|
              yielded << [member_name, member_shape]
            end
            expect(yielded).to eq([
              [:name, shape.member(:name)],
              [:age, shape.member(:age)],
            ])
          end

        end

        describe '#member_names' do

          it 'returns an array of symbolized member names' do
            expect(shape.member_names).to eq([:name, :age])
          end

        end

        describe '#required' do

          it 'returns an array of symbolized required member names' do
            expect(shape.required).to eq([:name])
          end

          it 'defaults to an empty list' do
            shape = Shapes::Structure.new
            expect(shape.required).to eq([])
          end

        end

        describe 'with a shape map (recursive shapes)' do

          let(:shape_map) {
            ShapeMap.new({
              'Person' => {
                'type' => 'structure',
                'members' => {
                  'Father' => { 'shape' => 'Person' },
                  'Mother' => { 'shape' => 'Person', 'hasMaidenName' => true },
                }
              }
            })
          }

          let(:shape) { shape_map.shape('shape' => 'Person') }

          it 'constructs and returns recursive shapes' do
            shape.member(:father).member(:father)
          end

          it 'reuses shapes that share references' do
            father = shape.member(:father)
            grand_father = father.member(:father)
            expect(father).to be(grand_father)
          end

          it 'constructs new shape for references with additional traits' do
            mother = shape.member(:mother)
            expect(mother).not_to be(shape.member(:father))
            expect(mother).to be(shape.member(:mother).member(:mother))
          end

          it 'merges shape refs with shape definitions' do
            mother = shape.member(:mother)
            expect(mother.metadata('hasMaidenName')).to be(true)
          end

        end

      end

      describe Shapes::List do

        it_should_behave_like 'subclass of Shape', { 'member' => { 'type' => 'string' }}

        let(:definition) {{ 'member' => { 'type' => 'string' }}}

        let(:options) { {} }

        let(:shape) { Shapes::List.new(definition, options) }

        describe '#min' do

          it 'defaults to nil' do
            expect(shape.min).to be(nil)
          end

          it 'returns the value given in the definition' do
            definition['min'] = 1
            expect(shape.min).to be(1)
          end

        end

        describe '#max' do

          it 'defaults to nil' do
            expect(shape.max).to be(nil)
          end

          it 'returns the value given in the definition' do
            definition['max'] = 100
            expect(shape.max).to be(100)
          end

        end

        describe '#member' do

          it 'returns the shape given in the definition' do
            definition['member'] = { 'type' => 'integer' }
            expect(shape.member).to be_kind_of(Shapes::Integer)
          end

          it 'resolves shape refs in the given shape map' do
            shape_map = ShapeMap.new({'Number' => { 'type' => 'integer' }})
            definition['member'] = { 'shape' => 'Number' }
            options[:shape_map] = shape_map
            shape = Shapes::List.new(definition, options)
            expect(shape.member).to be_kind_of(Shapes::Integer)
            expect(shape.member).to be(shape_map.shape('shape' => 'Number'))
          end

        end

      end

      describe Shapes::Map do

        it_should_behave_like 'subclass of Shape', {
          'key' => { 'type' => 'string' },
          'value' => { 'type' => 'string' },
        }

        let(:definition) {{
          'key' => { 'type' => 'string' },
          'value' => { 'type' => 'string' },
        }}

        let(:options) { {} }

        let(:shape) { Shapes::Map.new(definition, options) }

        describe '#min' do

          it 'defaults to nil' do
            expect(shape.min).to be(nil)
          end

          it 'returns the value given in the definition' do
            definition['min'] = 1
            expect(shape.min).to be(1)
          end

        end

        describe '#max' do

          it 'defaults to nil' do
            expect(shape.max).to be(nil)
          end

          it 'returns the value given in the definition' do
            definition['max'] = 100
            expect(shape.max).to be(100)
          end

        end

        describe '#key' do

          it 'defaults to a string shape' do
            expect(shape.key).to be_kind_of(Shapes::String)
          end

          it 'returns the shape given in the definition' do
            definition['key'] = { 'type' => 'integer' }
            expect(shape.key).to be_kind_of(Shapes::Integer)
          end

          it 'resolves shape refs in the given shape map' do
            shape_map = ShapeMap.new({'String' => { 'type' => 'integer' }})
            definition['key'] = { 'shape' => 'String' }
            options[:shape_map] = shape_map
            shape = Shapes::Map.new(definition, options)
            expect(shape.key).to be_kind_of(Shapes::Integer)
            expect(shape.key).to be(shape_map.shape('shape' => 'String'))
          end

        end

        describe '#value' do

          it 'defaults to a string shape' do
            expect(shape.value).to be_kind_of(Shapes::String)
          end

          it 'returns the shape given in the definition' do
            definition['value'] = { 'type' => 'integer' }
            expect(shape.value).to be_kind_of(Shapes::Integer)
          end

          it 'resolves shape refs in the given shape map' do
            shape_map = ShapeMap.new({'String' => { 'type' => 'integer' }})
            definition['value'] = { 'shape' => 'String' }
            options[:shape_map] = shape_map
            shape = Shapes::Map.new(definition, options)
            expect(shape.value).to be_kind_of(Shapes::Integer)
            expect(shape.value).to be(shape_map.shape('shape' => 'String'))
          end

        end

      end

      describe Shapes::String do

        it_should_behave_like 'subclass of Shape', {}

        let(:definition) { {} }

        let(:shape) { Shapes::String.new(definition) }

        describe '#min' do

          it 'defaults to nil' do
            expect(shape.min).to be(nil)
          end

          it 'returns the value given in the definition' do
            definition['min'] = 1
            expect(shape.min).to be(1)
          end

        end

        describe '#max' do

          it 'defaults to nil' do
            expect(shape.max).to be(nil)
          end

          it 'returns the value given in the definition' do
            definition['max'] = 100
            expect(shape.max).to be(100)
          end

        end

        describe '#enum' do

          it 'defaults to nil' do
            expect(shape.enum).to be(nil)
          end

          it 'returns the value given in the definition in a Set' do
            definition['enum'] = %w(a b c)
            expect(shape.enum).to eq(Set.new(%w(a b c)))
          end

        end

        describe '#pattern' do

          it 'defaults to nil' do
            expect(shape.pattern).to be(nil)
          end

          it 'returns the value given' do
            definition['pattern'] = 'abc'
            expect(shape.pattern).to eq('abc')
          end

        end

      end

      describe Shapes::Timestamp do

        it_should_behave_like 'subclass of Shape', {}

        let(:definition) { {} }

        let(:shape) { Shapes::Timestamp.new(definition) }

        describe '#format' do

          it 'returns the value given in definition' do
            definition['timestampFormat'] = 'rfc822'
            expect(shape.format).to eq('rfc822')
          end

        end

        describe '#format_time' do

          it 'defaults to the given timestamp format' do
            now = Time.now
            expect(shape.format_time(now, 'unixTimestamp')).to eq(now.to_i)
          end

          it 'uses the given timestampFormat over the given default' do
            now = Time.now
            definition['timestampFormat'] = 'rfc822'
            expect(shape.format_time(now, 'unixTimestamp')).to eq(now.utc.rfc822)
          end

        end

      end

      describe Shapes::Integer do

        it_should_behave_like 'subclass of Shape', {}

        let(:definition) { {} }

        let(:shape) { Shapes::Integer.new(definition) }

        describe '#min' do

          it 'defaults to nil' do
            expect(shape.min).to be(nil)
          end

          it 'returns the value given in the definition' do
            definition['min'] = 1
            expect(shape.min).to be(1)
          end

        end

        describe '#max' do

          it 'defaults to nil' do
            expect(shape.max).to be(nil)
          end

          it 'returns the value given in the definition' do
            definition['max'] = 100
            expect(shape.max).to be(100)
          end

        end

      end

      describe Shapes::Float do

        it_should_behave_like 'subclass of Shape', {}

      end

      describe Shapes::Boolean do

        it_should_behave_like 'subclass of Shape', {}

      end

      describe Shapes::Blob do

        it_should_behave_like 'subclass of Shape', {}

      end
    end
  end
end
