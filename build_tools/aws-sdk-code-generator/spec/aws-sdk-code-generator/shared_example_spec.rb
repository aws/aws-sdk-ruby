require_relative '../spec_helper'

module AwsSdkCodeGenerator
  describe SharedExample do

    let(:dir) { File.dirname(__FILE__) }
    let(:example_path) { File.join(dir, '..', 'fixtures', 'shared_examples', 'examples.json') }
    let(:example_file) { File.open(example_path, 'rb') {|file| JSON.load(file.read)} }
    let(:examples) {example_file['examples']}

    let(:api_path) { File.join(dir, '..', 'fixtures', 'shared_examples', 'api.json') }
    let(:s3_api) { File.open(api_path, 'rb') {|file| JSON.load(file.read)} }

    def load_example_input(operation_name)
      example = examples[operation_name][0]
      operation = s3_api['operations'][operation_name]
      method_name = Underscore.underscore(operation_name)
      input_str = SharedExample.new(
        example["input"], method_name, operation, s3_api, example["comments"]["input"]).to_str_input
    end

    def load_example_output(operation_name)
      example = examples[operation_name][0]
      operation = s3_api['operations'][operation_name]
      method_name = Underscore.underscore(operation_name)
      output_str = SharedExample.new(
        example["output"], method_name, operation, s3_api, example["comments"]["output"]).to_str_output
    end

    it 'supports nested structures' do
      input_str = load_example_input("PutBucketLifecycle")
      expect(input_str).to include("lifecycle_configuration: {\n    rules: [\n      {\n        status: \"Enabled\", \n        prefix: \"logs/2015/\", \n        transition: {\n          days: 60, \n          storage_class: \"GLACIER\", \n        }, \n        id: \"Move to Glacier after sixty days\", \n      }, \n      {\n        status: \"Enabled\", \n        prefix: \"logs/2014/\", \n        expiration: {\n          date: Time.parse(\"2016-01-01T00:00:00.000Z\"), \n        }, \n        id: \"Delete 2014 logs in 2016.\", \n      }, \n    ], \n  }, \n}")
    end

    it 'supports lists of structures' do
      input_str = load_example_input("ListParts")
      expect(input_str).to include("{\n  upload_id: \"upload-id\", \n  bucket: \"my-bucket\", \n  key: \"multipart/01\"")
    end

    it 'supports lists of scalars with enums' do
      input_str = load_example_input("PutBucketCors")
      expect(input_str).to include("allowed_methods: [\n          \"PUT\", \n          \"POST\", \n          \"DELETE\", \n        ],")
    end

    it 'supports comments on structure members (output)' do
      output_str = load_example_output("ListParts")
      expect(output_str).to include("size: 5242881, # Here is a comment for Parts[1].Size")
    end

    it 'supports comments on list members' do
      input_str = load_example_input("ListParts")
      expect(input_str).to include("key: \"multipart/01\", # inline comment here")
    end

    it 'supports comments on map members' do
      input_str = load_example_input("CreateMultipartUpload")
      expect(input_str).to include("\"Metakey2\" => \"Metavalue2\", # Here is a comment for Metadata.Metakey2")
    end

    it 'differentiates between maps and structures' do
      input_str = load_example_input("CreateMultipartUpload")
      expect(input_str).to include("metadata: {\n    \"Metakey1\" => \"Metavalue1\", \n    \"Metakey2\" => \"Metavalue2\",")
    end

    it 'supports timestamps (output)' do
      output_str = load_example_output("ListMultipartUploads")
      expect(output_str).to include("\n      initiated: Time.parse(\"2015-06-02T18:01:30.000Z\"), \n")
    end

    it 'supports escaped quotes' do
      input_str = load_example_input("PutBucketAcl")
      expect(input_str).to include(" \"emailaddress=\\\"user1@example.com\\\",")
    end

  end
end
