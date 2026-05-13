# frozen_string_literal: true

require_relative '../spec_helper'

module AwsSdkCodeGenerator
  module RBS
    describe InputTypeAliasCollector do
      def api_with(shapes:, operations:)
        { 'shapes' => shapes, 'operations' => operations }
      end

      def large_structure
        {
          'type' => 'structure',
          'members' => {
            'A' => { 'shape' => 'StringShape' },
            'B' => { 'shape' => 'StringShape' },
            'C' => { 'shape' => 'StringShape' },
            'D' => { 'shape' => 'StringShape' },
            'E' => { 'shape' => 'StringShape' },
            'F' => { 'shape' => 'StringShape' }
          }
        }
      end

      def string_shape
        { 'type' => 'string' }
      end

      describe '#shapes_to_alias' do
        it 'returns empty when no shapes are reused' do
          api = api_with(
            shapes: {
              'InputShape' => {
                'type' => 'structure',
                'members' => { 'Name' => { 'shape' => 'StringShape' } }
              },
              'StringShape' => string_shape
            },
            operations: {
              'Op1' => { 'input' => { 'shape' => 'InputShape' } }
            }
          )
          collector = InputTypeAliasCollector.new(api: api)
          expect(collector.shapes_to_alias).to eq([])
        end

        it 'returns empty when a structure is reused but too small' do
          api = api_with(
            shapes: {
              'Input1' => {
                'type' => 'structure',
                'members' => { 'Cfg' => { 'shape' => 'SmallStruct' } }
              },
              'Input2' => {
                'type' => 'structure',
                'members' => { 'Cfg' => { 'shape' => 'SmallStruct' } }
              },
              'SmallStruct' => {
                'type' => 'structure',
                'members' => { 'X' => { 'shape' => 'StringShape' } }
              },
              'StringShape' => string_shape
            },
            operations: {
              'Op1' => { 'input' => { 'shape' => 'Input1' } },
              'Op2' => { 'input' => { 'shape' => 'Input2' } }
            }
          )
          collector = InputTypeAliasCollector.new(api: api)
          expect(collector.shapes_to_alias).to eq([])
        end

        it 'detects a structure used more than once with sufficient size' do
          api = api_with(
            shapes: {
              'Input1' => {
                'type' => 'structure',
                'members' => { 'Config' => { 'shape' => 'LargeStruct' } }
              },
              'Input2' => {
                'type' => 'structure',
                'members' => { 'Config' => { 'shape' => 'LargeStruct' } }
              },
              'LargeStruct' => large_structure,
              'StringShape' => string_shape
            },
            operations: {
              'Op1' => { 'input' => { 'shape' => 'Input1' } },
              'Op2' => { 'input' => { 'shape' => 'Input2' } }
            }
          )
          collector = InputTypeAliasCollector.new(api: api)
          expect(collector.shapes_to_alias).to eq(['LargeStruct'])
        end

        it 'detects structures nested inside lists' do
          api = api_with(
            shapes: {
              'Input1' => {
                'type' => 'structure',
                'members' => { 'Items' => { 'shape' => 'ItemList' } }
              },
              'Input2' => {
                'type' => 'structure',
                'members' => { 'Items' => { 'shape' => 'ItemList' } }
              },
              'ItemList' => { 'type' => 'list', 'member' => { 'shape' => 'LargeStruct' } },
              'LargeStruct' => large_structure,
              'StringShape' => string_shape
            },
            operations: {
              'Op1' => { 'input' => { 'shape' => 'Input1' } },
              'Op2' => { 'input' => { 'shape' => 'Input2' } }
            }
          )
          collector = InputTypeAliasCollector.new(api: api)
          expect(collector.shapes_to_alias).to eq(['LargeStruct'])
        end

        it 'detects structures nested inside maps' do
          api = api_with(
            shapes: {
              'Input1' => {
                'type' => 'structure',
                'members' => { 'Data' => { 'shape' => 'DataMap' } }
              },
              'Input2' => {
                'type' => 'structure',
                'members' => { 'Data' => { 'shape' => 'DataMap' } }
              },
              'DataMap' => {
                'type' => 'map',
                'key' => { 'shape' => 'StringShape' },
                'value' => { 'shape' => 'LargeStruct' }
              },
              'LargeStruct' => large_structure,
              'StringShape' => string_shape
            },
            operations: {
              'Op1' => { 'input' => { 'shape' => 'Input1' } },
              'Op2' => { 'input' => { 'shape' => 'Input2' } }
            }
          )
          collector = InputTypeAliasCollector.new(api: api)
          expect(collector.shapes_to_alias).to eq(['LargeStruct'])
        end

        it 'counts diamond references correctly' do
          api = api_with(
            shapes: {
              'InputShape' => {
                'type' => 'structure',
                'members' => {
                  'B' => { 'shape' => 'StructB' },
                  'C' => { 'shape' => 'StructC' }
                }
              },
              'StructB' => {
                'type' => 'structure',
                'members' => { 'D' => { 'shape' => 'LargeStruct' } }
              },
              'StructC' => {
                'type' => 'structure',
                'members' => { 'D' => { 'shape' => 'LargeStruct' } }
              },
              'LargeStruct' => large_structure,
              'StringShape' => string_shape
            },
            operations: {
              'Op1' => { 'input' => { 'shape' => 'InputShape' } }
            }
          )
          collector = InputTypeAliasCollector.new(api: api)
          expect(collector.shapes_to_alias).to include('LargeStruct')
        end

        it 'does not infinite loop on recursive shapes' do
          api = api_with(
            shapes: {
              'Input1' => {
                'type' => 'structure',
                'members' => { 'Node' => { 'shape' => 'RecursiveStruct' } }
              },
              'Input2' => {
                'type' => 'structure',
                'members' => { 'Node' => { 'shape' => 'RecursiveStruct' } }
              },
              'RecursiveStruct' => {
                'type' => 'structure',
                'members' => {
                  'A' => { 'shape' => 'StringShape' },
                  'B' => { 'shape' => 'StringShape' },
                  'C' => { 'shape' => 'StringShape' },
                  'D' => { 'shape' => 'StringShape' },
                  'E' => { 'shape' => 'StringShape' },
                  'F' => { 'shape' => 'StringShape' },
                  'Children' => { 'shape' => 'RecursiveList' }
                }
              },
              'RecursiveList' => { 'type' => 'list', 'member' => { 'shape' => 'RecursiveStruct' } },
              'StringShape' => string_shape
            },
            operations: {
              'Op1' => { 'input' => { 'shape' => 'Input1' } },
              'Op2' => { 'input' => { 'shape' => 'Input2' } }
            }
          )
          collector = InputTypeAliasCollector.new(api: api)
          expect(collector.shapes_to_alias).to include('RecursiveStruct')
        end
      end

      describe 'topological ordering' do
        it 'places leaf dependencies before their parents' do
          api = api_with(
            shapes: {
              'Input1' => {
                'type' => 'structure',
                'members' => {
                  'Parent' => { 'shape' => 'ParentStruct' },
                  'Leaf' => { 'shape' => 'LeafStruct' }
                }
              },
              'Input2' => {
                'type' => 'structure',
                'members' => {
                  'Parent' => { 'shape' => 'ParentStruct' },
                  'Leaf' => { 'shape' => 'LeafStruct' }
                }
              },
              'ParentStruct' => {
                'type' => 'structure',
                'members' => {
                  'Child' => { 'shape' => 'LeafStruct' },
                  'A' => { 'shape' => 'StringShape' },
                  'B' => { 'shape' => 'StringShape' },
                  'C' => { 'shape' => 'StringShape' },
                  'D' => { 'shape' => 'StringShape' },
                  'E' => { 'shape' => 'StringShape' }
                }
              },
              'LeafStruct' => large_structure,
              'StringShape' => string_shape
            },
            operations: {
              'Op1' => { 'input' => { 'shape' => 'Input1' } },
              'Op2' => { 'input' => { 'shape' => 'Input2' } }
            }
          )
          collector = InputTypeAliasCollector.new(api: api)
          result = collector.shapes_to_alias
          expect(result.index('LeafStruct')).to be < result.index('ParentStruct')
        end

        it 'handles multi-level dependency chains' do
          api = api_with(
            shapes: {
              'Input1' => {
                'type' => 'structure',
                'members' => {
                  'Top' => { 'shape' => 'TopStruct' },
                  'Mid' => { 'shape' => 'MidStruct' },
                  'Bot' => { 'shape' => 'BotStruct' }
                }
              },
              'Input2' => {
                'type' => 'structure',
                'members' => {
                  'Top' => { 'shape' => 'TopStruct' },
                  'Mid' => { 'shape' => 'MidStruct' },
                  'Bot' => { 'shape' => 'BotStruct' }
                }
              },
              'TopStruct' => {
                'type' => 'structure',
                'members' => {
                  'Mid' => { 'shape' => 'MidStruct' },
                  'A' => { 'shape' => 'StringShape' },
                  'B' => { 'shape' => 'StringShape' },
                  'C' => { 'shape' => 'StringShape' },
                  'D' => { 'shape' => 'StringShape' },
                  'E' => { 'shape' => 'StringShape' }
                }
              },
              'MidStruct' => {
                'type' => 'structure',
                'members' => {
                  'Bot' => { 'shape' => 'BotStruct' },
                  'A' => { 'shape' => 'StringShape' },
                  'B' => { 'shape' => 'StringShape' },
                  'C' => { 'shape' => 'StringShape' },
                  'D' => { 'shape' => 'StringShape' },
                  'E' => { 'shape' => 'StringShape' }
                }
              },
              'BotStruct' => large_structure,
              'StringShape' => string_shape
            },
            operations: {
              'Op1' => { 'input' => { 'shape' => 'Input1' } },
              'Op2' => { 'input' => { 'shape' => 'Input2' } }
            }
          )
          collector = InputTypeAliasCollector.new(api: api)
          result = collector.shapes_to_alias
          expect(result.index('BotStruct')).to be < result.index('MidStruct')
          expect(result.index('MidStruct')).to be < result.index('TopStruct')
        end
      end
    end
  end
end
