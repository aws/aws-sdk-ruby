require 'spec_helper'

module Aws
  module Query
    describe EC2ParamBuilder do

      let(:shapes) { ApiHelper.sample_shapes }

      let(:rules) {
        shape_map = Api::ShapeMap.new(shapes)
        shape_map.shape_ref('shape' => 'StructureShape')
      }

      def query(params = {})
        param_list = ParamList.new
        EC2ParamBuilder.new(param_list).apply(rules, params)
        param_list.map { |param| [param.name, param.value ] }.sort
      end

      it 'can serialize structures' do
        params = Structure.new(*rules.shape.member_names).new
        params.boolean = true
        params.integer = 123
        params.string = 'abc'
        expect(query(params)).to eq([
          ['Boolean', 'true'],
          ['Integer', '123'],
          ['String', 'abc'],
        ])
      end

    end
  end
end
