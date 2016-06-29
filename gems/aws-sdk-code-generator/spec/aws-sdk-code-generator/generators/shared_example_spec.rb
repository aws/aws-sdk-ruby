require_relative '../../spec_helper'
require 'json'

module AwsSdkCodeGenerator
  module Generators
    describe SharedExample do

      let(:examples) {
        path = '../../../fixtures/shared_examples/examples.json'
        path = File.expand_path(path, __FILE__)
        JSON.load(File.read(path))
      }

      let(:api) {
        path = '../../../fixtures/shared_examples/api.json'
        path = File.expand_path(path, __FILE__)
        JSON.load(File.read(path))
      }

      def load_example_input(operation_camel, operation_name)
        puts @examples.inspect
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

      it 'can generate an API example that has no output' do
        example = SharedExample.new(
          operation_name: 'PutBucketLifecycle',
          api: api,
          examples: examples,
          example: 0
        )
        expect(example.to_s.strip).to eq(<<-RUBY.strip)
@example Example: The following example applies a lifecycle configuration to the bucket my-bucket:

  resp = client.put_bucket_lifecycle({
    bucket: "my-bucket",
    lifecycle_configuration: {
      rules: [
        {
          status: "Enabled",
          prefix: "logs/2015/",
          transition: {
            days: 60,
            storage_class: "GLACIER",
          },
          id: "Move to Glacier after sixty days",
        },
        {
          status: "Enabled",
          prefix: "logs/2014/",
          expiration: {
            date: Time.parse("2016-01-01T00:00:00.000Z"),
          },
          id: "Delete 2014 logs in 2016.",
        },
      ],
    },
  })
        RUBY
      end

      it 'supports examples with inline comments' do
        example = SharedExample.new(
          operation_name: 'ListParts',
          api: api,
          examples: examples,
          example: 0
        )
        expect(example.to_s.strip).to eq(<<-RUBY.strip)
@example Example: Example description here.

  resp = client.list_parts({
    upload_id: "upload-id",
    bucket: "my-bucket",
    key: "multipart/01", # inline comment here
  })

  # resp.to_h outputs the following:
  {
    owner: {
      display_name: "aws-account-name",
      id: "owner-id",
    },
    initiator: {
      display_name: "username",
      id: "arn:aws:iam::0123456789012:user/username",
    },
    parts: [
      {
        last_modified: Time.parse("2015-06-02T18:07:35.000Z"),
        part_number: "1",
        etag: "e868e0f4719e394144ef36531ee6824c",
        size: 5242880,
      },
      {
        last_modified: Time.parse("2015-06-02T18:07:42.000Z"),
        part_number: "2",
        etag: "6bb2b12753d66fe86da4998aa33fffb0",
        size: 5242881, # Here is a comment for Parts[1].Size
      }, # Comment on list member
      {
        last_modified: Time.parse("2015-06-02T18:07:47.000Z"),
        part_number: "3",
        etag: "d0a0112e841abec9c9ec83406f0159c8",
        size: 5242880,
      },
    ],
    storage_class: "STANDARD",
  }
        RUBY
      end

      it 'supports comments on map members' do
        example = SharedExample.new(
          operation_name: 'CreateMultipartUpload',
          api: api,
          examples: examples,
          example: 0
        )
        expect(example.to_s.strip).to eq(<<-RUBY.strip)
@example Example: desc

  resp = client.create_multipart_upload({
    bucket: "my-bucket",
    key: "multipart/01",
    metadata: {
      "Metakey1" => "Metavalue1",
      "Metakey2" => "Metavalue2", # Here is a comment for Metadata.Metakey2
    },
  })

  # resp.to_h outputs the following:
  {
    bucket: "my-bucket",
    upload_id: "dfRtDYU0WWCCcH43C3WFbkRONycyCpTJJvxu2i5GYkZljF.Yxwh6XG7WfS2vC4to6HiV6Yjlx.cph0gtNBtJ8P3URCSbB7rjxI5iEwVDmgaXZOGgkk5nVTW16HOQ5l0R",
    key: "multipart/01",
  }
        RUBY
      end

      it 'supports escaped quotes' do
        example = SharedExample.new(
          operation_name: 'PutBucketAcl',
          api: api,
          examples: examples,
          example: 0
        )
        expect(example.to_s.strip).to eq(<<-RUBY.strip)
@example Example: desc

  resp = client.put_bucket_acl({
    bucket: "MyBucket",
    grant_full_control: "emailaddress=\\"user1@example.com\\",emailaddress=\\"user2@example.com\\"",
    grant_read: "uri=\\"http://acs.amazonaws.com/groups/global/AllUsers\\"",
  })
        RUBY
      end

    end
  end
end
