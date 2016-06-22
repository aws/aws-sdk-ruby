require 'spec_helper'

module AwsSdkCodeGenerator
  module Generators
    module Resource
      describe IdentifiersMethod do

        it 'supports resources without identifiers' do
          m = IdentifiersMethod.new(identifiers:nil)
          expect(m.to_s).to eq(<<-CODE)
# @deprecated
# @api private
def identifiers
  {}
end
          CODE
        end

        it 'supports resources with identifiers' do
          m = IdentifiersMethod.new(identifiers: [
              { 'name' => 'BucketName' },
              { 'name' => 'Key', 'type' => 'string' },
              { 'name' => 'VersionId', 'type' => 'integer' },
            ]
          )
          expect(m.to_s).to eq(<<-CODE)
# @deprecated
# @api private
def identifiers
  {
    bucket_name: @bucket_name,
    key: @key,
    version_id: @version_id,
  }
end
          CODE
        end

      end
    end
  end
end
