require 'spec_helper'

module AwsSdkCodeGenerator
  module Generators
    module Resource
      describe DataMethod do

        it 'supports resource that can be loaded' do
          m = DataMethod.new(resource_name:'ResourceName', resource: {
            'shape' => 'ShapeName',
            'load' => {
              'request' => {
                'operation' => 'OperationName'
              }
            }
          })
          expect(m.to_s).to eq(<<-CODE)
# @return [Types::ShapeName]
#   Returns the data for this {ResourceName}. Calls
#   {Client#operation_name} if {#data_loaded?} is `false`."
def data
  load unless @data
  @data
end
          CODE
        end

        it 'supports resource that can not be loaded' do
          m = DataMethod.new(resource_name:'ResourceName', resource: {
            'shape' => 'ShapeName',
          })
          expect(m.to_s).to eq(<<-CODE)
# @raise [Errors::ResourceNotLoadableError] Raises this error if called
#   when {#data_loaded?} if `false`.
# @return [Types::ShapeName]
#   Returns the data for this {ResourceName}.
def data
  load unless @data
  @data
end
          CODE
        end

        it 'supports resource that have no shape' do
          m = DataMethod.new(resource_name:'ResourceName', resource: {})
          expect(m.to_s).to eq(<<-CODE)
# @api private
# @return [EmptyStructure]
def data
  @data
end
          CODE
        end

      end
    end
  end
end
