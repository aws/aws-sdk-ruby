require 'spec_helper'

module Aws
  module ClientStubs
    describe Stub do
      describe '#format' do

        describe 'without an ouptut shape' do

          it 'returns an empty struct when there is no output shape' do
            data = Stub.new(nil).format
            expect(data).to be_kind_of(EmptyStructure)
          end

          it 'raises an error if data is not empty' do
            expect {
              Stub.new(nil).format(name:'foo')
            }.to raise_error(ArgumentError, /this operation does not return data/)
          end

        end

        describe 'with an ouptut shape' do

          let(:shape_map) { Seahorse::Model::ShapeMap.new({
            'Person' => {
              'type' => 'structure',
              'required' => ['FullName'],
              'members' => {
                'FullName' => { 'shape' => 'Name' },
                'Gender' => { 'shape' => 'String' },
                'Age' => { 'shape' => 'Integer' },
                'Weight' => { 'shape' => 'Float' },
                'Married' => { 'shape' => 'Boolean' },
                'Born' => { 'shape' => 'Timestamp' },
                'Spouse' => { 'shape' => 'Person' },
                'Nicknames' => { 'shape' => 'StringList' },
                'Friends' => { 'shape' => 'PersonMap' },
                'Parents' => { 'shape' => 'PersonList' },
              },
            },
            'PersonMap' => {
              'type' => 'map',
              'key' => { 'shape' => 'String' },
              'value' => { 'shape' => 'Person' },
            },
            'PersonList' => {
              'type' => 'list',
              'member' => { 'shape' => 'Person' },
            },
            'StringList' => {
              'type' => 'list',
              'member' => { 'shape' => 'String' },
            },
            'Name' => {
              'type' => 'structure',
                'members' => {
                'First' => { 'shape' => 'String' },
                'Middle' => { 'shape' => 'String' },
                'Last' => { 'shape' => 'String' },
              },
            },
            'String' => { 'type' => 'string' },
            'Integer' => { 'type' => 'integer' },
            'Float' => { 'type' => 'float' },
            'Boolean' => { 'type' => 'boolean' },
            'Timestamp' => { 'type' => 'timestamp' },
          })}

          let(:shape) { shape_map.shape('shape' => 'Person') }

          let(:stub) { Stub.new(shape) }

          it 'returns an empty stub when no data is given' do
            data = stub.format
            expect(data).to be_kind_of(Structure)
            expect(data.members).to eq(shape.member_names)
          end

          it 'validates the given data matches the response shape' do
            msg = 'expected params[:full_name] to be a hash'
            expect {
              stub.format(:full_name => 'John L. Doe')
            }.to raise_error(ArgumentError, msg)
          end

          it 'provides default empty structures only if required' do
            data = stub.format
            # full name is required structure, spouse is an optional structure
            expect(data.full_name).to be_kind_of(Structure)
            expect(data.full_name.members).to eq([:first, :middle, :last])
            expect(data.spouse).to be(nil)
          end

          it 'provides default empty lists' do
            data = stub.format
            expect(data.parents).to eq([])
          end

          it 'provides default empty maps' do
            data = stub.format
            expect(data.friends).to eq({})
          end

          it 'defaults integers to 0' do
            data = stub.format
            expect(data.age).to be(0)
          end

          it 'defaults floats to 0.0' do
            data = stub.format
            expect(data.weight).to eq(0.0)
          end

          it 'defaults timestamps to now' do
            now = Time.now
            allow(Time).to receive(:now).and_return(now)
            data = stub.format
            expect(data.born).to eq(now)
          end

          it 'defaults booleans to false' do
            data = stub.format
            expect(data.married).to be(false)
          end

          it 'defaults strings to their shape name' do
            data = stub.format
            expect(data.full_name.first).to eq('String')
          end

          it 'populates the structure from given data' do
            data = {
              full_name: {
                first: 'John',
                last: 'Doe',
              }
            }
            stubbed_data = stub.format(data)
            expect(stubbed_data.full_name.first).to eq('John')
            expect(stubbed_data.full_name.last).to eq('Doe')
          end

          it 'deeply converts input to structured data recursively' do
            data = {
              full_name: {
                first: 'John',
                last: 'Doe',
              },
              nicknames: ['johndoe'],
              friends: {
                'Best Friend' => {
                  full_name: { first: 'Bill' },
                  gender: 'male',
                  age: 40,
                  weight: 185.5,
                  married: true,
                  spouse: {
                    full_name: { first: 'Janet' },
                    gender: 'female',
                    age: 40,
                    married: true,
                  }
                }
              },
              parents: [
                { full_name: { first: 'John' }},
                { full_name: { first: 'Jane' }},
              ]
            }
            r = stub.format(data)
            expect(r.full_name.first).to eq('John')
            expect(r.friends['Best Friend'].full_name.first).to eq('Bill')
            expect(r.friends['Best Friend'].spouse.full_name.first).to eq('Janet')
            expect(r.friends['Best Friend'].spouse.gender).to eq('female')
            expect(r.parents.map(&:full_name).map(&:first)).to eq(['John', 'Jane'])
          end

        end
      end
    end
  end
end
