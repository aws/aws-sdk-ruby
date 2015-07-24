require 'spec_helper'

module Aws
  module Api
    module Docs

      include Seahorse::Model

      describe SharedExample do

        before(:all) do
          services = ["s3"]
          @examples = {}
          services.each do |service_name|
            dir = File.dirname(__FILE__)
            files = Dir.glob(File.join(
              dir, '..', '..', '..', 'fixtures', 'api', 'examples', "**", 'examples-1.json'))
            files.each do |path|
              File.open(path, "r") do |f|
                @examples[service_name] = JSON.load(f)['examples']
              end
            end
          end
        end

        let(:s3_client) { S3::Client.api }

        def load_example_input(operation_camel, operation_name)
          example = @examples["s3"][operation_camel][0]
          operation = s3_client.operation(operation_name)
          input_str = SharedExample.new(
            example["input"], operation_name, operation, example["comments"]["input"]).to_str_input
          cutoff = "resp = client.#{operation_name}".size
          eval(input_str[cutoff..-1])
        end

        def load_example_output(operation_camel, operation_name)
          example = @examples["s3"][operation_camel][0]
          operation = s3_client.operation(operation_name)
          output_str = SharedExample.new(
            example["output"], operation_name, operation, example["comments"]["output"]).to_str_output
          eval(output_str)
        end

        it 'supports nested structures' do
          operation_camel = "PutBucketLifecycle"
          operation_name = Seahorse::Util.underscore(operation_camel)
          input = load_example_input(operation_camel, operation_name)
          validator = ParamValidator.new(s3_client.operation(operation_name).input)
          expect(validator.validate!(input)).to be_nil
        end

        it 'supports lists of structures' do
          operation_camel = "ListParts"
          operation_name = Seahorse::Util.underscore(operation_camel)
          input = load_example_input(operation_camel, operation_name)
          validator = ParamValidator.new(s3_client.operation(operation_name).input)
          expect(validator.validate!(input)).to be_nil
        end

        it 'supports lists of scalars with enums' do
          operation_camel = "PutBucketCors"
          operation_name = Seahorse::Util.underscore(operation_camel)
          input = load_example_input(operation_camel, operation_name)
          validator = ParamValidator.new(s3_client.operation(operation_name).input)
          expect(validator.validate!(input)).to be_nil
        end

        it 'supports comments on structure members (output)' do
          operation_camel = "ListParts"
          operation_name = Seahorse::Util.underscore(operation_camel)
          example = @examples["s3"][operation_camel][0]
          operation = s3_client.operation(operation_name)
          output_str = SharedExample.new(
            example["output"], operation_name, operation, example["comments"]["output"]).to_str_output
          expect(output_str).to include("size: 5242881, # Here is a comment for Parts[1].Size")
        end

        it 'supports comments on list members' do
          operation_camel = "ListParts"
          operation_name = Seahorse::Util.underscore(operation_camel)
          example = @examples["s3"][operation_camel][0]
          operation = s3_client.operation(operation_name)
          input_str = SharedExample.new(
            example["input"], operation_name, operation, example["comments"]["input"]).to_str_input
          expect(input_str).to include("key: \"multipart/01\", # Here is a comment for Key")
        end

        it 'supports comments on map members' do
          operation_camel = "CreateMultipartUpload"
          operation_name = Seahorse::Util.underscore(operation_camel)
          example = @examples["s3"][operation_camel][0]
          operation = s3_client.operation(operation_name)
          input_str = SharedExample.new(
            example["input"], operation_name, operation, example["comments"]["input"]).to_str_input
          expect(input_str).to include("\"Metakey2\" => \"Metavalue2\", # Here is a comment for Metadata.Metakey2")
        end

        it 'differentiates between maps and structures' do
          operation_camel = "CreateMultipartUpload"
          operation_name = Seahorse::Util.underscore(operation_camel)
          input = load_example_input(operation_camel, operation_name)
          validator = ParamValidator.new(s3_client.operation(operation_name).input)
          expect(validator.validate!(input)).to be_nil
        end

        it 'supports timestamps (output)' do
          operation_camel = "ListMultipartUploads"
          operation_name = Seahorse::Util.underscore(operation_camel)
          output = load_example_output(operation_camel, operation_name)
          validator = ParamValidator.new(s3_client.operation(operation_name).output)
          expect(validator.validate!(output)).to be_nil
        end

        it 'supports escaped quotes' do 
          operation_camel = "PutBucketAcl"
          operation_name = Seahorse::Util.underscore(operation_camel)
          input = load_example_input(operation_camel, operation_name)
          validator = ParamValidator.new(s3_client.operation(operation_name).input)
          expect(validator.validate!(input)).to be_nil
        end

      end
    end
  end
end
