require 'spec_helper'

module Aws
  module Resource
    module Errors
      describe UnknownOperationError do

        it 'extends ArgumentError' do
          error = UnknownOperationError.new(:operation_name)
          expect(error).to be_kind_of(ArgumentError)
        end

        it 'builds a messae from the error name' do
          error = UnknownOperationError.new(:operation_name)
          expect(error.message).to eq("operation `operation_name' not defined")
        end

      end
    end
  end
end
