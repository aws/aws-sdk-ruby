module Seahorse
  module Model
    describe ShapeMap do

      describe '#definitions' do

        it 'returns an empty hash by default' do
          expect(ShapeMap.new.definitions).to eq({})
        end

        it 'returns the definitions given to the constructor' do
          definitions = { 'String' => { 'type' => 'string' } }
          shapes = ShapeMap.new(definitions)
          expect(shapes.definitions).to be(definitions)
        end

      end

      describe '#shape' do

        let(:definitions) {{ 'Name' => { 'type' => 'string' }}}

        let(:shapes) { ShapeMap.new(definitions) }

        it 'returns an instance of the referenced shape' do
          expect(shapes.shape('shape' => 'Name')).to be_kind_of(Shapes::String)
        end

        it 'returns the same shape given the same reference' do
          shape1 = shapes.shape('shape' => 'Name')
          shape2 = shapes.shape('shape' => 'Name')
          expect(shape1).to be(shape2)
        end

        it 'initializes a new shape if the reference contains extra info' do
          shape1 = shapes.shape('shape' => 'Name')
          shape2 = shapes.shape('shape' => 'Name', 'documentation' => 'with-docs')
          expect(shape1).not_to be(shape2)
        end

        it 'merges additional traits from the shape reference onto the shape' do
          shape1 = shapes.shape('shape' => 'Name')
          shape2 = shapes.shape('shape' => 'Name', 'documentation' => 'docs')
          expect(shape1.documentation).to be(nil)
          expect(shape2.documentation).to eq('docs')
        end

        it 'overrides traits on the shape definition with reference traits' do
          definitions['Name']['documentation'] = 'default-docs'
          shape1 = shapes.shape('shape' => 'Name')
          shape2 = shapes.shape('shape' => 'Name', 'documentation' => 'new-docs')
          expect(shape1.documentation).to eq('default-docs')
          expect(shape2.documentation).to eq('new-docs')
        end

        it 'merges shape reference metadata on top of definition metadata' do
          definitions['Name']['foo'] = 'bar'
          shape1 = shapes.shape('shape' => 'Name')
          shape2 = shapes.shape('shape' => 'Name', 'foo' => 'BAR')
          expect(shape1.metadata('foo')).to eq('bar')
          expect(shape2.metadata('foo')).to eq('BAR')
        end

      end

      describe '#shape_names' do

        it 'returns all of the registered shape names' do
          definitions = {
            'Name' => { 'type' => 'string' },
            'Age' => { 'type' => 'integer' },
          }
          expect(ShapeMap.new(definitions).shape_names).to eq(%w(Name Age))
        end

      end

      it 'can be constructed without any definitions' do
        expect(ShapeMap.new.definitions).to eq({})
      end

    end
  end
end
