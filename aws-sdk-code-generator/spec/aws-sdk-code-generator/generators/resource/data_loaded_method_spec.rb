require 'spec_helper'

module AwsSdkCodeGenerator
  module Generators
    module Resource
      describe DataLoadedMethod do

        it 'returns true when @data is present' do
          m = DataLoadedMethod.new
          expect(m.to_s).to eq(<<-CODE)
# @return [Boolean]
#   Returns `true` if this resource is loaded.  Accessing attributes or
#   {#data} on an unloaded resource will trigger a call to {#load}.
def data_loaded?
  !!@data
end
          CODE
        end

      end
    end
  end
end
