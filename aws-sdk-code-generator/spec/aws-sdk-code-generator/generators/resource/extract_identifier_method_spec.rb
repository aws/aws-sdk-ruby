require 'spec_helper'

module AwsSdkCodeGenerator
  module Generators
    module Resource
      describe ExtractIdentifierMethod do

        it 'extracts an identifier, raising an error for missing values' do
          m = ExtractIdentifierMethod.new(index: 0, identifier: {
            'name' => 'BucketName',
          })
          expect(m.access).to be(:private)
          expect(m.to_s).to eq(<<-CODE)
def extract_bucket_name(args, options)
  value = args[0] || options.delete(:bucket_name)
  case value
  when String then value
  when nil then raise ArgumentError, "missing required option :bucket_name"
  else
    msg = "expected :bucket_name to be a String, got \#{value.class}"
    raise ArgumentError, msg
  end
end
          CODE
        end

        it 'supports identifiers of different types' do
          m = ExtractIdentifierMethod.new(index: 1, identifier: {
            'name' => 'Id',
            'type' => 'integer'
          })
          expect(m.access).to be(:private)
          expect(m.to_s).to eq(<<-CODE)
def extract_id(args, options)
  value = args[1] || options.delete(:id)
  case value
  when Integer then value
  when nil then raise ArgumentError, "missing required option :id"
  else
    msg = "expected :id to be a Integer, got \#{value.class}"
    raise ArgumentError, msg
  end
end
          CODE
        end

      end
    end
  end
end
