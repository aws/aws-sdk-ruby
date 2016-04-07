require 'spec_helper'

module AwsSdkCodeGenerator
  module Generators
    module Resource
      describe ClientGetter do

        it 'returns true when @data is present' do
          m = ClientGetter.new
          expect(m.to_s).to eq(<<-CODE)
# @return [Client]
def client
  @client
end
          CODE
        end

      end
    end
  end
end
