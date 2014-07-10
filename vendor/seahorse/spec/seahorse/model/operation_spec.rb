require 'spec_helper'

module Seahorse
  module Model
    describe Operation do

      describe '#name' do

        it 'defaults to nil' do
          expect(Operation.new.name).to be(nil)
        end

        it 'returns the name set in the definition' do
          operation = Operation.new('name' => 'abc')
          expect(operation.name).to eq('abc')
        end

      end

      describe '#http_method' do

        it 'defaults to POST' do
          expect(Operation.new.http_method).to eq('POST')
        end

        it 'returns the verb set in the definition' do
          operation = Operation.new('http' => { 'method' => 'GET'})
          expect(operation.http_method).to eq('GET')
        end

      end

      describe '#http_request_uri' do

        it 'defaults to /' do
          expect(Operation.new.http_request_uri).to eq('/')
        end

        it 'returns the request uri template set in the definition' do
          operation = Operation.new('http' => { 'requestUri' => '/{id}{?cache}'})
          expect(operation.http_request_uri).to eq('/{id}{?cache}')
        end

      end

      describe '#documentation' do

        it 'defaults to nil' do
          expect(Operation.new.documentation).to be(nil)
        end

        it 'returns the value set in the definition' do
          operation = Operation.new('documentation' => 'docs')
          expect(operation.documentation).to eq('docs')
        end

      end

      describe '#input' do

        it 'defaults to nil' do
          expect(Operation.new.input).to be(nil)
        end

        it 'returns the shape set in the definition' do
          definition = { 'input' => { 'type' => 'structure' }}
          operation = Operation.new(definition)
          expect(operation.input).to be_kind_of(Shapes::Structure)
        end

        it 'loads a shape from the shape map when given as a reference' do
          definition = {
            'input' => { 'shape' => 'InputShape', 'documentation' => 'input' }
          }
          shapes = ShapeMap.new(
            'InputShape' => { 'type' => 'structure' }
          )
          operation = Operation.new(definition, shape_map: shapes)
          expect(operation.input.documentation).to eq('input')
        end

      end

      describe '#output' do

        it 'defaults to nil' do
          expect(Operation.new.output).to be(nil)
        end

        it 'returns the shape set in the definition' do
          definition = {
            'output' => { 'shape' => 'OutputShape', 'documentation' => 'output' }
          }
          shapes = ShapeMap.new(
            'OutputShape' => { 'type' => 'structure' }
          )
          operation = Operation.new(definition, shape_map: shapes)
          expect(operation.output.documentation).to eq('output')
        end

        it 'loads a shape from the shape map when given as a reference' do
          shapes = ShapeMap.new('OutputShape' => { 'type' => 'structure' })
          definition = { 'output' => { 'shape' => 'OutputShape' }}
          operation = Operation.new(definition, shape_map: shapes)
          expect(operation.output).to be(shapes.shape('shape' => 'OutputShape'))
        end

      end

      describe '#errors' do

        it 'returns an enumerator' do
          expect(Operation.new.errors).to be_kind_of(Enumerator)
        end

        it 'defaults to an empty list' do
          expect(Operation.new.errors.to_a).to eq([])
        end

        it 'returns the shapes set in the definition' do
          definition = {
            'errors' => [
              { 'type' => 'structure', 'documentation' => 'error1' },
              { 'type' => 'structure', 'documentation' => 'error2' },
            ]
          }
          operation = Operation.new(definition)
          expect(operation.errors.map(&:documentation)).to eq(%w(error1 error2))
        end

        it 'loads shapes from the shape map when given as a references' do
          definition = {
            'errors' => [
              { 'shape' => 'Error1' },
              { 'shape' => 'Error2' },
            ]
          }
          shapes = ShapeMap.new(
            'Error1' => { 'type' => 'structure', 'documentation' => 'error1' },
            'Error2' => { 'type' => 'structure', 'documentation' => 'error2' },
          )
          operation = Operation.new(definition, shape_map: shapes)
          expect(operation.errors.map(&:documentation)).to eq(%w(error1 error2))
        end

      end

      describe '#deprecated?' do

        it 'defaults to false' do
          expect(Operation.new.deprecated?).to be(false)
        end

        it 'returns true if specified in the definition' do
          operation = Operation.new('deprecated' => true)
          expect(operation.deprecated?).to be(true)
        end

      end
    end
  end
end
