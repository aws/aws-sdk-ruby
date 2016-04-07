require 'spec_helper'

module AwsSdkCodeGenerator
  module Generators
    module Resource
      describe IdentifierGetter do

        it 'returns true when @data is present' do
          m = IdentifierGetter.new(identifier: { 'name' => 'IdentifierName' })
          expect(m.to_s).to eq(<<-CODE)
# @return [String]
def identifier_name
  @identifier_name
end
          CODE
        end

        it 'supports typed identifiers' do
          m = IdentifierGetter.new(identifier: {
            'name' => 'IdentifierName',
            'type' => 'integer',
          })
          expect(m.to_s).to eq(<<-CODE)
# @return [Integer]
def identifier_name
  @identifier_name
end
          CODE
        end

        it 'defines an alias when a memberName is present' do
          m = IdentifierGetter.new(identifier: {
            'name' => 'Id',
            'memberName' => 'ThingId',
          })
          expect(m.to_s).to eq(<<-CODE)
# @return [String]
def id
  @id
end
alias :thing_id :id
          CODE
        end

        it 'omits the alias if the member name matches the identifier' do
          m = IdentifierGetter.new(identifier: {
            'name' => 'Name',
            'memberName' => 'Name',
          })
          expect(m.to_s).to eq(<<-CODE)
# @return [String]
def name
  @name
end
          CODE
        end

      end
    end
  end
end
