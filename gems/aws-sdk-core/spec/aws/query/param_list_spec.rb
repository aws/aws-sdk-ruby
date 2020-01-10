require_relative '../../spec_helper'

module Aws
  module Query
    describe ParamList do

      let(:list) { ParamList.new }

      describe '#set' do

        it 'returns a param' do
          expect(list.set('name', 'value')).to be_kind_of(Param)
        end

        it 'sets a param with name and value' do
          param = list.set('name', 'value')
          expect(param.name).to eq('name')
          expect(param.value).to eq('value')
        end

        it 'can set a param without a value' do
          param = list.set('name')
          expect(param.name).to eq('name')
          expect(param.value).to be(nil)
        end

      end

      describe '#delete' do

        it 'removes a returns a param' do
          param = list.set('name', 'value')
          expect(list.delete('name')).to be(param)
        end

        it 'returns nil if the param was not seted' do
          expect(list.delete('name')).to be(nil)
        end

      end

      describe '#to_a' do

        it 'returns an array of sorted Param objects' do
          p1 = list.set('name2')
          p2 = list.set('name1', 'value')
          expect(list.to_a).to eq([p2, p1])
        end

      end

      describe '#to_s' do

        it 'returns the params as a string' do
          list.set('name', 'value')
          expect(list.to_s).to eq('name=value')
        end

        it 'joins multiple params with an ampersand' do
          list.set('name1', 'value')
          list.set('name2', 'value')
          expect(list.to_s).to eq('name1=value&name2=value')
        end

        it 'sorts params' do
          list.set('name2', 'value')
          list.set('name1', 'value')
          expect(list.to_s).to eq('name1=value&name2=value')
        end

        it 'escapes names and values' do
          list.set('param name', 'val=u!')
          expect(list.to_s).to eq('param%20name=val%3Du%21')
        end

      end

    end
  end
end
