# frozen_string_literal: true

require 'tempfile'
require 'securerandom'
require 'fileutils'
require 'net/https'
require 'net/http/post/multipart'
require 'uri'
require 'stringio'

Before("@s3", "@resources") do
  @s3 = Aws::S3::Resource.new
  @client = @s3.client
  @created_buckets = []
end

After("@s3", "@resources") do
  errors = []
  @created_buckets.each do |bucket|
    begin
      bucket.delete!
    rescue StandardError => e
      errors << "#{bucket.name}: #{e.class}: #{e.message}"
    end
  end
  raise "Bucket cleanup failed: #{errors.join('; ')}" unless errors.empty?
end

def create_bucket_resource
  options = { bucket: "aws-sdk-resources-#{SecureRandom.hex(12)}" }
  if @client.config.region != 'us-east-1'
    options[:create_bucket_configuration] = {
      location_constraint: @client.config.region
    }
  end
  bucket = @s3.create_bucket(options)
  @created_buckets << bucket
  @client.wait_until(:bucket_exists, bucket: bucket.name)
  bucket
end

Given(/^I create a bucket resource$/) do
  @bucket = create_bucket_resource
  @bucket_name = @bucket.name
end

Given(/^I create a 10MB source object in a different bucket$/) do
  @source_bucket = create_bucket_resource.name
  @source_key = 'source-object'
  @source_body = 'a' * (5 * 1024 * 1024) + 'b' * (5 * 1024 * 1024)
  @s3.bucket(@source_bucket).object(@source_key).put(body: @source_body)
end

Given("I have {int} {int}MB chunks") do |number, size|
  @chunks = number.to_i.times.map {'.' * size.to_i * 1024 * 1024}
end

Given("I have a {int}MB stream") do |size|
  @stream = StringIO.new('.' * size * 1024 * 1024)
end

When("I upload the stream with the custom part size of {int}MB to the {string} object") do |part_size_mb, key|
  @bucket.object(key).upload_stream(part_size: part_size_mb * 1024 * 1024) do |write_stream|
    IO.copy_stream(@stream, write_stream)
  end
end

Then("the {string} object should contained the stream") do |key|
  data = @s3.bucket(@bucket_name).object(key).get.body.read
  expect(data).to eq(@stream.string)
end

When(/^I upload the chunks using tempfile to the "(.*?)" object$/) do |key|
  @bucket.object(key).upload_stream(tempfile: true) do |write_stream|
    @chunks.each {|chunk| write_stream << chunk }
  end
end

When(/^I upload the chunks to the "(.*?)" object$/) do |key|
  @bucket.object(key).upload_stream do |write_stream|
    @chunks.each {|chunk| write_stream << chunk }
  end
end

Then(/^the chunks should have been uploaded as a multipart upload$/) do
  expect(ApiCallTracker.called_operations).to include(:create_multipart_upload)
  expect(ApiCallTracker.called_operations).to include(:upload_part)
  expect(ApiCallTracker.called_operations).to include(:complete_multipart_upload)
end

Then(/the "(.*?)" object should contained the chunks joined/) do |key|
  data = @s3.bucket(@bucket_name).object(key).get.body.read
  expect(data).to eq(@chunks.join)
end


Given(/^I have a (\d+)MB file$/) do |size|
  @file = Tempfile.new('tempfile')
  @file.write('.' * size.to_i * 1024 * 1024)
  @file.rewind
end

When(/^I upload the file to the "(.*?)" object$/) do |key|
  @bucket.object(key).upload_file(@file)
end

When(/^I upload the file$/) do
  @object = @bucket.object(@file.path)
  @object.upload_file(@file)
  @old_key = @file.path
end

Then(/^the file should have been uploaded as a multipart upload$/) do
  expect(ApiCallTracker.called_operations).to include(:create_multipart_upload)
end

When(/^I create a presigned post$/) do
  @post = @bucket.object('key').presigned_post({
    success_action_status: '201',
  })
end

Then(/^I should be able to POST an object to the form url$/) do
  uri = URI.parse(@post.url)
  req = Net::HTTP::Post::Multipart.new(uri.request_uri, @post.fields.merge(
    "file" => UploadIO.new(File.open(__FILE__, 'r'), 'text/plain')
  ))
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_PEER
  resp = http.request(req)
  expect(resp.code.to_i).to eq(201)
end

When(/^I create a presigned post with tags$/) do
  @tag_set = [
    { key: 'project', value: 'presigned-post' },
    { key: 'description', value: 'café / uploads' },
    { key: 'empty', value: '' }
  ]
  @post = @bucket.object('key').presigned_post(
    success_action_status: '201',
    tagging: { tag_set: @tag_set }
  )
end

Then(/^the uploaded object should have the tags$/) do
  response = @client.get_object_tagging(bucket: @bucket.name, key: 'key')
  expect(response.tag_set.map(&:to_h)).to match_array(@tag_set)
end

Then(/^I should be able to multipart copy the object to a different bucket$/) do
  target_bucket = @s3.bucket(@bucket_name)
  @copied_object = target_bucket.object("#{@source_key}-copy")
  @copied_object.copy_from(
    "#{@source_bucket}/#{@source_key}",
    multipart_copy: true, min_part_size: 5 * 1024 * 1024
  )
  operations = ApiCallTracker.called_operations
  expect(operations).to include(:create_multipart_upload, :complete_multipart_upload)
  expect(operations.count(:upload_part_copy)).to eq(2)
end

Then(/^the copied object should match the source object$/) do
  expect(@copied_object.get.body.read).to eq(@source_body)
end

Then(/^I should be able to multipart copy the object$/) do
  target_bucket = @s3.bucket(@bucket_name)
  target_object = target_bucket.object("test object-copy")
  target_object.copy_from("#{@bucket_name}/test object", multipart_copy: true)
  expect(ApiCallTracker.called_operations).to include(:create_multipart_upload)
end

Given(/^I have a (\d+)M file$/) do |mb|
  @file = Tempfile.new('randomfile')
  File.open(@file, 'wb') {
    |f| f.write(Random.new.bytes(mb.to_i * 1024 * 1024))}
end

Given(/^I upload the file using put_object$/) do
  @object = @s3.bucket(@bucket_name).object(@file.path)
  @object.put(body: @file)
end

Then(/^(\d+) (\w+) requests? should have been made$/) do |expected_count, method_name|
  expect(
    ApiCallTracker.called_operations.count { |name| method_name.to_sym == name }
  ).to eq(expected_count.to_i)
end

Then(/^the downloaded file should match the uploaded file$/) do
  expect(FileUtils.compare_file(@file.path, @download_file_dest)).to be(true)
end

When(/^I download the file with mode "([^"]*)"$/) do |mode|
  # create a temp directory for download
  tempfile = Tempfile.new("sample")
  @download_file_dest = tempfile.path
  tempfile.unlink

  @object.download_file(@download_file_dest, mode: mode)
end

When(/^I download the file with mode "([^"]*)" with (\d+)M chunk size$/) do |mode, mb|
  tempfile = Tempfile.new("sample")
  @download_file_dest = tempfile.path
  tempfile.unlink

  @object.download_file(@download_file_dest, mode: mode, chunk_size: (mb.to_i * 1024 *1024))
end

Then(/^this test file has been cleaned up$/) do
  File.unlink(@download_file_dest)
  expect(File.exist?(@download_file_dest)).to be(false)
end

When(/^I download the file (\d+) times with mode "([^"]*)" with (\d+)M chunk size$/) do |cnt, mode, mb|
  @download_dest = []
  (1..cnt.to_i).each do |e|
    tempfile = Tempfile.new("sample_#{e}")
    @download_dest << tempfile.path
    tempfile.unlink
  end

  (1..cnt.to_i)
    .map { |c| Thread.new { @object.download_file(@download_dest[c - 1], mode: mode, chunk_size: (mb.to_i * 1024 *1024)) } }
    .each(&:join)
end

Then(/^those downloaded files should match the uploaded file$/) do
  @download_dest.each do |download|
    expect(FileUtils.compare_file(@file.path, download)).to be(true)
  end
end

Then(/^these test file has been cleaned up$/) do
  @download_dest.each do |file|
    File.unlink(file)
    expect(File.exist?(file)).to be(false)
  end
end

Given(/^I put "([^"]*)" to the object with key "([^"]*)"$/) do |body, key|
  @obj = @bucket.object(key)
  @obj.put(body: body)
end

Then(/^I can streaming download object with key "([^"]*)"$/) do |key|
  resp = @obj.get do |chunk|
    expect(chunk).to eq("hello world")
  end
  expect(resp.body).to be_a(Aws::S3::Plugins::RetryableBlockIO)
end

Given(/^I enabled bucket versioning$/) do
  @s3.client.put_bucket_versioning(
    bucket: @bucket_name,
    versioning_configuration: {
      status: "Enabled"
    }
  )
end

Given(/^I upload the file with same key$/) do
  @version_id = @object.version_id
  @object = @bucket.object(@old_key)
  @object.upload_file(@file)
end

When(/^I download the file with previous version id$/) do
  tempfile = Tempfile.new("sample")
  @download_file_dest = tempfile.path
  tempfile.unlink

  @object.download_file(@download_file_dest, version_id: @version_id)
end

Then(/^the download file should match the previous version object$/) do
  expect(FileUtils.compare_file(@old_key, @download_file_dest)).to be(true)
end
