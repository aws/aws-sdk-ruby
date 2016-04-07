require 'spec_helper'

module AwsSdkCodeGenerator
  module Generators
    module Resource
      describe BatchBuilder do
        describe '"source": "response"' do

          it 'supports identifiers sourced from response' do
            builder = BatchBuilder.new(resp_var_name: 'resp', resource: {
              'type' => 'ResourceName',
              'identifiers' => [
                {
                  'target' => 'First',
                  'source' => 'response',
                  'path' => 'Things[].FirstId'
                },
                {
                  'target' => 'Second',
                  'source' => 'response',
                  'path' => 'Things[].SecondId'
                },
              ],
              'path' => 'Things[]'
            })
            expect(builder.to_s).to eq(<<-CODE)
resp.data.things.each do |t|
  batch << ResourceName.new(
    first: t.first_id,
    second: t.second_id,
    data: t,
    client: @client
  )
end
            CODE
          end

          it 'supports nested response lists' do
            # similar example to Amazon EC2
            builder = BatchBuilder.new(resp_var_name: 'resp', resource: {
              "type" => "Instance",
              "identifiers" => [
                { "target" => "Id", "source" => "response", "path" => "TopFive.Reservations[].Instances[].InstanceId" }
              ],
              "path" => "TopFive.Reservations[].Instances[]"
            })
            expect(builder.to_s).to eq(<<-CODE)
resp.data.top_five.reservations.each do |r|
  r.instances.each do |i|
    batch << Instance.new(
      id: i.instance_id,
      data: i,
      client: @client
    )
  end
end
            CODE
          end

          it 'supports nested response lists with nested paths' do
            # actual example taken from Aws::EC2
            builder = BatchBuilder.new(resp_var_name: 'resp', resource: {
              "type" => "Instance",
              "identifiers" => [
                {
                  "target" => "Id",
                  "source" => "response",
                  "path" => "NestingOne.Reservations[].NestingTwo.Instances[].NestingThree.InstanceId"
                }
              ],
              "path" => "NestingOne.Reservations[].NestingTwo.Instances[].NestingThree"
            })
            expect(builder.to_s).to eq(<<-CODE)
resp.data.nesting_one.reservations.each do |r|
  r.nesting_two.instances.each do |i|
    batch << Instance.new(
      id: i.nesting_three.instance_id,
      data: i.nesting_three,
      client: @client
    )
  end
end
            CODE
          end

          it 'supports alternative response variable names' do
            builder = BatchBuilder.new(resp_var_name: 'page', resource: {
              'type' => 'ResourceName',
              'identifiers' => [
                {
                  'target' => 'First',
                  'source' => 'response',
                  'path' => 'Things[].FirstId'
                },
                {
                  'target' => 'Second',
                  'source' => 'response',
                  'path' => 'Things[].SecondId'
                },
              ]
            })
            expect(builder.to_s).to eq(<<-CODE)
page.data.things.each do |t|
  batch << ResourceName.new(
    first: t.first_id,
    second: t.second_id,
    client: @client
  )
end
            CODE
          end
        end

        describe '"source": "data"' do

          it 'supports identifiers sourced from resource data' do
            # primarily used by has associations
            builder = BatchBuilder.new(resource: {
              'type' => 'ResourceName',
              'identifiers' => [
                {
                  'target' => 'First',
                  'source' => 'data',
                  'path' => 'Things[].FirstId'
                },
                {
                  'target' => 'Second',
                  'source' => 'data',
                  'path' => 'Things[].SecondId'
                },
              ],
              'path' => 'Things[]'
            })
            expect(builder.to_s).to eq(<<-CODE)
data.things.each do |t|
  batch << ResourceName.new(
    first: t.first_id,
    second: t.second_id,
    data: t,
    client: @client
  )
end
            CODE
          end

          it 'supports nested lists with nested paths' do
            # actual example taken from Aws::EC2
            builder = BatchBuilder.new(resource: {
              "type" => "Thing",
              "identifiers" => [
                {
                  "target" => "Id",
                  "source" => "data",
                  "path" => "NestingOne.Foo[].NestingTwo.Bar[].NestingThree.ThingId"
                }
              ],
              "path" => "NestingOne.Foo[].NestingTwo.Bar[].NestingThree"
            })
            expect(builder.to_s).to eq(<<-CODE)
data.nesting_one.foo.each do |f|
  f.nesting_two.bar.each do |b|
    batch << Thing.new(
      id: b.nesting_three.thing_id,
      data: b.nesting_three,
      client: @client
    )
  end
end
            CODE
          end
        end

        describe '"source": "requestParameter"' do

          it 'supports batches that load from request parameters' do
            builder = BatchBuilder.new(resource: {
              'type' => 'ResourceName',
              'identifiers' => [
                {
                  'target' => 'First',
                  'source' => 'requestParameter',
                  'path' => 'Things[].FirstId'
                },
                {
                  'target' => 'Second',
                  'source' => 'requestParameter',
                  'path' => 'Things[].SecondId'
                },
              ]
            })
            expect(builder.to_s).to eq(<<-CODE)
options[:things].each do |t|
  batch << ResourceName.new(
    first: t[:first_id],
    second: t[:second_id],
    client: @client
  )
end
            CODE
          end

          # consider this?
          it 'supports nested lists of params' do
            builder = BatchBuilder.new(resource: {
              "type" => "ResourceName",
              "identifiers" => [
                {
                  "target" => "Id",
                  "source" => "requestParameter",
                  "path" => "NestingOne.Things[].NestingTwo.Things[].NestingThree.Id"
                }
              ],
              "path" => "NestingOne.Things[].NestingTwo.Things[].NestingThree"
            })
            expect(builder.to_s).to eq(<<-CODE)
options[:nesting_one][:things].each do |t|
  t[:nesting_two][:things].each do |t2|
    batch << ResourceName.new(
      id: t2[:nesting_three][:id],
      data: t2[:nesting_three],
      client: @client
    )
  end
end
            CODE
          end

        end

        describe 'mixed sources' do

          it 'supports batches that load from request params and response data' do
            # PLEASE NOTE: This example is using singluar values for the
            # identifiers sourced from the request parameter. This is okay
            # as there is a single loop context.
            # - actual example taken from Amazon S3
            builder = BatchBuilder.new(resp_var_name: 'page', resource: {
              "type" => "MultipartUploadPart",
              "identifiers" => [
                { "target" => "BucketName", "source" => "requestParameter", "path" => "Bucket" },
                { "target" => "ObjectKey", "source" => "requestParameter", "path" => "Key" },
                { "target" => "MultipartUploadId", "source" => "requestParameter", "path" => "UploadId" },
                { "target" => "PartNumber", "source" => "response", "path" => "Parts[].PartNumber" }
              ],
              "path" => "Parts[]"
            })
            expect(builder.to_s).to eq(<<-CODE)
page.data.parts.each do |p|
  batch << MultipartUploadPart.new(
    bucket_name: options[:bucket],
    object_key: options[:key],
    multipart_upload_id: options[:upload_id],
    part_number: p.part_number,
    data: p,
    client: @client
  )
end
            CODE
          end

          it 'supports batches that load from response and from identifiers' do
            # PLEASE NOTE: This example is using singluar values for the
            # identifiers sourced from the resource identifiers. This is okay
            # as there is a single loop context.
            # - modified example taken from Amazon S3
            builder = BatchBuilder.new(resource: {
              "type" => "MultipartUploadPart",
              "identifiers" => [
                { "target" => "BucketName", "source" => "identifier", "name" => "BucketName" },
                { "target" => "ObjectKey", "source" => "identifier", "name" => "ObjectKey" },
                { "target" => "MultipartUploadId", "source" => "identifier", "name" => "Id" },
                { "target" => "PartNumber", "source" => "response", "path" => "Parts[].PartNumber" }
              ],
              "path" => "Parts[]"
            })
            expect(builder.to_s).to eq(<<-CODE)
resp.data.parts.each do |p|
  batch << MultipartUploadPart.new(
    bucket_name: @bucket_name,
    object_key: @object_key,
    multipart_upload_id: @id,
    part_number: p.part_number,
    data: p,
    client: @client
  )
end
            CODE
          end

          it 'supports batches that load from response and from resource data' do
            # PLEASE NOTE: This example is using singluar values for the
            # identifiers sourced from the resource data. This is okay
            # as there is a single loop context.
            # - totally made up example based on previous tests
            builder = BatchBuilder.new(resp_var_name: 'page', resource: {
              "type" => "MultipartUploadPart",
              "identifiers" => [
                { "target" => "BucketName", "source" => "data", "path" => "Nested.BucketName" },
                { "target" => "ObjectKey", "source" => "data", "path" => "Nested.ObjectKey" },
                { "target" => "MultipartUploadId", "source" => "data", "path" => "Nested.UploadId" },
                { "target" => "PartNumber", "source" => "response", "path" => "Parts[].PartNumber" }
              ]
            })
            expect(builder.to_s).to eq(<<-CODE)
page.data.parts.each do |p|
  batch << MultipartUploadPart.new(
    bucket_name: data.nested.bucket_name,
    object_key: data.nested.object_key,
    multipart_upload_id: data.nested.upload_id,
    part_number: p.part_number,
    client: @client
  )
end
            CODE
          end

        end

        describe 'errors' do

          it 'raises an error if two plural paths have different prefixes' do
            expect {
              BatchBuilder.new(resource: {
                'type' => 'ResourceName',
                'identifiers' => [
                  {
                    'target' => 'First',
                    'source' => 'response',
                    'path' => 'Things[].FirstId'
                  },
                  {
                    'target' => 'Second',
                    'source' => 'response',
                    'path' => 'OtherThings[].SecondId'
                  },
                ],
                path: 'Things[]'
              })
            }.to raise_error(ArgumentError, /common prefix/)
          end

          it 'raises if plural identifiers are sourced from request and responseParameter' do
            expect {
              BatchBuilder.new(resource: {
                'type' => 'ResourceName',
                'identifiers' => [
                  {
                    'target' => 'First',
                    'source' => 'response',
                    'path' => 'Things[].FirstId'
                  },
                  {
                    'target' => 'Second',
                    'source' => 'requestParameter',
                    'path' => 'Things[].SecondId'
                  },
                ],
              })
            }.to raise_error(ArgumentError, /mixing plural source/)
          end

          it 'raises if plural identifiers are sourced from requestParameter and data' do
            expect {
              BatchBuilder.new(resource: {
                'type' => 'ResourceName',
                'identifiers' => [
                  {
                    'target' => 'First',
                    'source' => 'reqeustParameters',
                    'path' => 'Things[].FirstId'
                  },
                  {
                    'target' => 'Second',
                    'source' => 'data',
                    'path' => 'Things[].SecondId'
                  },
                ],
              })
            }.to raise_error(ArgumentError, /mixing plural source/)
          end

          it 'raises if plural identifiers are sourced from response and data' do
            expect {
              BatchBuilder.new(resource: {
                'type' => 'ResourceName',
                'identifiers' => [
                  {
                    'target' => 'First',
                    'source' => 'response',
                    'path' => 'Things[].FirstId'
                  },
                  {
                    'target' => 'Second',
                    'source' => 'data',
                    'path' => 'Things[].SecondId'
                  },
                ],
              })
            }.to raise_error(ArgumentError, /mixing plural source/)
          end

          it 'raises if no identifiers are plural' do
            expect {
              BatchBuilder.new(resource: {
                'type' => 'ResourceName',
                'identifiers' => [
                  {
                    'target' => 'First',
                    'source' => 'identifier',
                    'name' => 'First'
                  }
                ]
              })
            }.to raise_error(ArgumentError, /expected at least one plural identifier/)
          end
        end
      end
    end
  end
end
