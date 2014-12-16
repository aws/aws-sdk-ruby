require 'spec_helper'

module Aws
  module Query
    describe ParamBuilder do

      let(:members) { {} }

      def query_params(params = {})
        shape = Seahorse::Model::Shapes::Structure.new('members' => members)
        param_list = ParamList.new
        ParamBuilder.new(param_list).apply(shape, params)
        param_list.map { |param| [param.name, param.value ] }.sort
      end

      describe '#apply' do
        describe 'structures' do

          it 'returns an empty list when there are no members' do
            expect(query_params({})).to be_empty
          end

          it 'returns an empty list when there are no params' do
            members['Name'] = { 'type' => 'string' }
            expect(query_params({})).to be_empty
          end

          it 'serializes params by name' do
            members['Name'] = { 'type' => 'string' }
            members['Age'] = { 'type' => 'integer' }
            expect(query_params(name: 'John', age: 40)).to eq([
              ['Age', '40'],
              ['Name', 'John'],
            ])
          end

          it 'observes location name properties' do
            members['Name'] = { 'type' => 'string', 'locationName' => 'NAME' }
            members['Age'] = { 'type' => 'integer', 'locationName' => 'AGE' }
            expect(query_params(name: 'John', age: 40)).to eq([
              ['AGE', '40'],
              ['NAME', 'John'],
            ])
          end

          it 'serializes nested params' do
            members['Name'] = { 'type' => 'string' }
            members['Config'] = {
              'type' => 'structure',
              'members' => {
                'Enabled' => { 'type' => 'boolean' }
              }
            }
            params = { name: 'John', config: { enabled: true } }
            expect(query_params(params)).to eq([
              ['Config.Enabled', 'true'],
              ['Name', 'John'],
            ])
          end

          it 'does not serialize nil values' do
            members['Name'] = { 'type' => 'string' }
            members['Nickname'] = { 'type' => 'string' }
            params = { name: 'John', nickname: nil }
            expect(query_params(params)).to eq([
              ['Name', 'John'],
            ])
          end

        end

        describe 'flattened lists' do

          it 'numbers list members starting at 1' do
            members['Values'] = {
              'type' => 'list',
              'member' => { 'type' => 'string' },
              'flattened' => true
            }
            expect(query_params(values: %w(abc mno xyz))).to eq([
              ['Values.1', 'abc'],
              ['Values.2', 'mno'],
              ['Values.3', 'xyz'],
            ])
          end

          it 'uses the list member serialized name as the param name' do
            members['Config'] = {
              'type' => 'structure',
              'members' => {
                'Values' => {
                  'type' => 'list',
                  'member' => {
                    'type' => 'string',
                    'locationName' => 'Item'
                  },
                  'flattened' => true
                }
              }
            }
            params = { config: { values: %w(abc mno xyz) } }
            expect(query_params(params)).to eq([
              ['Config.Item.1', 'abc'],
              ['Config.Item.2', 'mno'],
              ['Config.Item.3', 'xyz'],
            ])
          end

          it 'supports lists of complex types' do
            members['People'] = {
              'type' => 'list',
              'member' => {
                'type' => 'structure',
                'members' => {
                  'Name' => { 'type' => 'string' }
                }
              },
              'flattened' => true
            }
            params = { people: [ { name: 'John' }, { name: 'Jane' } ] }
            expect(query_params(params)).to eq([
              ['People.1.Name', 'John'],
              ['People.2.Name', 'Jane'],
            ])
          end

          it 'serializes empty lists' do
            members['Config'] = {
              'type' => 'structure',
              'members' => {
                'Items' => {
                  'type' => 'list',
                  'member' => {
                    'type' => 'string'
                  },
                  'flattened' => true,
                  'locationName' => 'items'
                }
              },
              'locationName' => 'config'
            }
            params = { config: { items: [] }}
            expect(query_params(params)).to eq([
              ['config.items', ''],
            ])
          end

        end

        describe 'non-flattened lists' do

          it 'numbers list members starting at 1' do
            members['Values'] = {
              'type' => 'list',
              'member' => { 'type' => 'string' }
            }
            expect(query_params(values: %w(abc mno xyz))).to eq([
              ['Values.member.1', 'abc'],
              ['Values.member.2', 'mno'],
              ['Values.member.3', 'xyz'],
            ])
          end

          it 'ignores the list member name' do
            members['Config'] = {
              'type' => 'structure',
              'members' => {
                'Values' => {
                  'type' => 'list',
                  'member' => {
                    'type' => 'string',
                    'locationName' => 'Item' # has no effect
                  }
                }
              }
            }
            params = { config: { values: %w(abc mno xyz) } }
            expect(query_params(params)).to eq([
              ['Config.Values.member.1', 'abc'],
              ['Config.Values.member.2', 'mno'],
              ['Config.Values.member.3', 'xyz'],
            ])
          end

          it 'supports lists of complex types' do
            members['People'] = {
              'type' => 'list',
              'member' => {
                'type' => 'structure',
                'members' => {
                  'Name' => { 'type' => 'string' }
                }
              }
            }
            params = { people: [ { name: 'John' }, { name: 'Jane' } ] }
            expect(query_params(params)).to eq([
              ['People.member.1.Name', 'John'],
              ['People.member.2.Name', 'Jane'],
            ])
          end

          it 'serializes empty lists' do
            members['Config'] = {
              'type' => 'structure',
              'members' => {
                'Items' => {
                  'type' => 'list',
                  'member' => {
                    'type' => 'string'
                  }
                }
              }
            }
            params = { config: { items: [] }}
            expect(query_params(params)).to eq([
              ['Config.Items', ''],
            ])
          end

        end

        describe 'flattened maps' do

          it 'serializes hashes with keys and values' do
            members['Attributes'] = {
              'type' => 'map',
              'key' => { 'type' => 'string' },
              'value' => { 'type' => 'string' },
              'flattened' => true
            }
            params = { attributes: { 'Size' => 'large', 'Color' => 'red' } }
            expect(query_params(params)).to eq([
              ['Attributes.1.key', 'Size'],
              ['Attributes.1.value', 'large'],
              ['Attributes.2.key', 'Color'],
              ['Attributes.2.value', 'red'],
            ])
          end

          it 'observes location name traits' do
            members['Attributes'] = {
              'type' => 'map',
              'key' => { 'type' => 'string', 'locationName' => 'K' },
              'value' => { 'type' => 'string', 'locationName' => 'V' },
              'flattened' => true
            }
            params = { attributes: { 'Size' => 'large', 'Color' => 'red' } }
            expect(query_params(params)).to eq([
              ['Attributes.1.K', 'Size'],
              ['Attributes.1.V', 'large'],
              ['Attributes.2.K', 'Color'],
              ['Attributes.2.V', 'red'],
            ])
          end

        end

        describe 'non-flattened maps' do

          it 'serializes hashes with keys and values' do
            members['Attributes'] = {
              'type' => 'map',
              'key' => { 'type' => 'string' },
              'value' => { 'type' => 'string' }
            }
            params = { attributes: { 'Size' => 'large', 'Color' => 'red' } }
            expect(query_params(params)).to eq([
              ['Attributes.entry.1.key', 'Size'],
              ['Attributes.entry.1.value', 'large'],
              ['Attributes.entry.2.key', 'Color'],
              ['Attributes.entry.2.value', 'red'],
            ])
          end

          it 'observes location name traits' do
            members['Attributes'] = {
              'type' => 'map',
              'key' => { 'type' => 'string', 'locationName' => 'K' },
              'value' => { 'type' => 'string', 'locationName' => 'V' }
            }
            params = { attributes: { 'Size' => 'large', 'Color' => 'red' } }
            expect(query_params(params)).to eq([
              ['Attributes.entry.1.K', 'Size'],
              ['Attributes.entry.1.V', 'large'],
              ['Attributes.entry.2.K', 'Color'],
              ['Attributes.entry.2.V', 'red'],
            ])
          end

        end

        describe 'scalars' do

          it 'serializes integers' do
            members['count'] = { 'type' => 'integer' }
            expect(query_params(count: 123)).to eq([
              ['count', '123'],
            ])
          end

          it 'serializes floats' do
            members['price'] = { 'type' => 'float' }
            expect(query_params(price: 12.34)).to eq([
              ['price', '12.34'],
            ])
          end

          it 'serializes booleans' do
            members['hot'] = { 'type' => 'boolean' }
            members['cold'] = { 'type' => 'boolean' }
            expect(query_params(hot:true, cold:false)).to eq([
              ['cold', 'false'],
              ['hot', 'true'],
            ])
          end

          it 'serializes is8601 timestamps' do
            now = Time.now
            members['when'] = {
              'type' => 'timestamp',
              'timestampFormat' => 'iso8601'
            }
            expect(query_params(when:now)).to eq([
              ['when', now.utc.iso8601]
            ])
          end

          it 'can serializes timestamps as rfc8622 strings' do
            now = Time.now
            members['when'] = {
              'type' => 'timestamp',
              'timestampFormat' => 'rfc822'
            }
            expect(query_params(when:now)).to eq([
              ['when', now.utc.rfc822]
            ])
          end

          it 'can serializes timestamps as unix timestamps' do
            now = Time.now
            members['when'] = {
              'type' => 'timestamp',
              'timestampFormat' => 'unixTimestamp',
            }
            expect(query_params(when:now)).to eq([
              ['when', now.to_i.to_s]
            ])
          end

          it 'serializes blobs as base64 strings' do
            members['data'] = { 'type' => 'blob' }
            expect(query_params(data:StringIO.new('hello'))).to eq([
              ['data', 'aGVsbG8=']
            ])
          end

        end
      end

      describe '#params' do

        it 'returns the param list given the constructor' do
          param_list = double('param-list')
          builder = ParamBuilder.new(param_list)
          expect(builder.params).to be(param_list)
        end

      end
    end
  end
end
