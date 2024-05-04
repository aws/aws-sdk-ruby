# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Query
    describe EC2ParamBuilder do
      let(:shapes) { ApiHelper.sample_shapes }

      let(:rules) do
        ApiHelper
          .sample_api(shapes: shapes)
          .operation(:example_operation)
          .input
      end

      def query(params = {})
        param_list = ParamList.new
        EC2ParamBuilder.new(param_list).apply(rules, params)
        param_list.map { |param| [param.name, param.value] }.sort
      end

      it 'can serialize structures' do
        params = Structure.new(*rules.shape.member_names).new
        params.boolean = true
        params.integer = 123
        params.string = 'abc'
        expect(query(params)).to eq(
          [
            %w[Boolean true],
            %w[Integer 123],
            %w[String abc]
          ]
        )
      end

      it 'can serialize non-empty lists' do
        params = Structure.new(*rules.shape.member_names).new
        params.number_list = [1, 2, 3]
        expect(query(params)).to eq(
          [
            %w[NumberList.1 1],
            %w[NumberList.2 2],
            %w[NumberList.3 3]
          ]
        )
      end

      it 'does not serialize empty lists' do
        params = Structure.new(*rules.shape.member_names).new
        params.number_list = []
        expect(query(params)).to be_empty
      end
    end
  end
end
