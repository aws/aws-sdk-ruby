require 'spec_helper'

module AwsSdkCodeGenerator
  module Generators
    module Resource
      describe InitializeMethod do

        let(:method) {
          InitializeMethod.new(resource: {
            "identifiers" => [
              { 'name' => 'BucketName' },
              { 'name' => 'Key', 'type' => 'string' },
              { 'name' => 'VersionId', 'type' => 'integer' },
            ],
            "shape" => "ShapeName"
          })
        }

        it 'extracts identifiers, data, and a client' do
          expect(SpecHelper.code(method)).to eq(<<-CODE)
def initialize(*args)
  options = Hash === args.last ? args.pop.dup : {}
  @bucket_name = extract_bucket_name(args, options)
  @key = extract_key(args, options)
  @version_id = extract_version_id(args, options)
  @data = options.delete(:data)
  @client = options.delete(:client) || Client.new(options)
end
          CODE
        end

        it 'documents positional and keyword arguments' do
          expect(SpecHelper.documentation(method)).to eq(<<-CODE)
# @overload def initialize(bucket_name, key, version_id, options = {})
#   @param [String] bucket_name
#   @param [String] key
#   @param [Integer] version_id
#   @option options [Client] :client
# @overload def initialize(options = {})
#   @option options [required, String] :bucket_name
#   @option options [required, String] :key
#   @option options [required, Integer] :version_id
#   @option options [Client] :client
          CODE
        end

      end
    end
  end
end
