require 'base64'
require 'rest-client'

Before("@s3") do
  @s3 = Aws::S3::Resource.new
  @created_buckets = []
end

After("@s3") do
  @created_buckets.each do |bucket|
    # TODO : provide a Bucket#delete! method
    loop do
      objects = bucket.client.list_object_versions(bucket: bucket.name)
      objects = objects.data.versions.map do |v|
        { key: v.key, version_id: v.version_id }
      end
      break if objects.empty?
      bucket.client.delete_objects(bucket: bucket.name, delete: { objects: objects })
    end
    bucket.delete
  end
end

Given(/^I create a bucket$/) do
  @bucket_name = "aws-sdk-resources-#{Time.now.to_i}-#{rand(1000)}"
  @bucket = @s3.create_bucket(bucket: @bucket_name)
  @created_buckets << @bucket
end

Given(/^I have a (\d+)MB file$/) do |size|
  @file = Tempfile.new('tempfile')
  @file.write('.' * size.to_i * 1024 * 1024)
  @file.rewind
end

When(/^I upload the file to the "(.*?)" object$/) do |key|
  @bucket.object(key).upload_file(@file)
end

Then(/^the file should have been uploaded as a multipart upload$/) do
  expect(ApiCallTracker.called_operations).to include(:create_multipart_upload)
end

Given(/^I have an encryption client$/) do
  @cse = Aws::S3::Encryption::Client.new({
    client: @s3.client,
    encryption_key: Base64.decode64("w1WLio3agRWRTSJK/Ouh8NHoqRQ6fn5WbSXDTHjXMSo="),
  })
end

Given(/^I have an encryption client configured to use KMS$/) do
  @cse = Aws::S3::Encryption::Client.new({
    client: @s3.client,
    kms_key_id: @kms_key_id,
  })
end

Given(/^I have an encryption client configured for :instruction_file$/) do
  @cse = Aws::S3::Encryption::Client.new({
    client: @s3.client,
    encryption_key: Base64.decode64("w1WLio3agRWRTSJK/Ouh8NHoqRQ6fn5WbSXDTHjXMSo="),
    envelope_location: :instruction_file,
  })
end

When(/^I perform an encrypted PUT of the value "(.*?)"$/) do |value|
  @key = 'encrypted'
  @plain_text = value
  @cse.put_object(bucket: @bucket_name, key: @key, body: @plain_text)
end

When(/^I GET the object with a non\-encyrption client$/) do
  @cipher_text = @s3.client.get_object(bucket: @bucket_name, key: @key).body.read
end

Then(/^the object data should be encrypted$/) do
  expect(@cipher_text).not_to eq(@plain_text)
end

When(/^I GET the object with an encryption client$/) do
  @plain_text = @cse.get_object(bucket: @bucket_name, key: @key).body.read
end

Then(/^the object data should be "(.*?)"$/) do |value|
  expect(@plain_text).to eq(value)
end

Then(/^the instruction file should exist$/) do
  expect {
    @s3.client.head_object(bucket: @bucket_name, key: @key + '.instruction')
  }.not_to raise_error
end

When(/^I create a presigned post$/) do
  @post = @bucket.object('key').presigned_post({
    success_action_status: '201',
  })
end

Then(/^I should be able to POST an object to the form url$/) do
  r = RestClient.post(@post.url, @post.fields.merge(file: File.open(__FILE__, 'r')))
  expect(r.code).to eq(201)
end

Given(/^I have an encryption client configured to read a Java encrypted object$/) do
  step('a "kms_key_id" is set in cfg["java_cse_kms"]["kms_key_id"]')
  step('a "profile" is set in cfg["java_cse_kms"]["profile"]')
  step('a "bucket_name" is set in cfg["java_cse_kms"]["bucket_name"]')
  step('a "key" is set in cfg["java_cse_kms"]["key"]')
  @cse = Aws::S3::Encryption::Client.new(
    profile: @profile,
    kms_key_id: @kms_key_id,
  )
end
