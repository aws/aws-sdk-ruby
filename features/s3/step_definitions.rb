def create_bucket(options = {})
  @bucket_name = "aws-sdk-test-#{Time.now.to_i}-#{rand(1000)}"
  options[:bucket] = @bucket_name
  if @s3.config.region != 'us-east-1' && !options[:create_bucket_configuration]
    options[:create_bucket_configuration] = {
      location_constraint: @s3.config.region
    }
  end
  @s3.create_bucket(options)
  @created_buckets << @bucket_name
end

Given(/^I am using the S3 "(.*?)" region$/) do |region|
  @s3 = Aws.s3(region: region)
end

When(/^I create a bucket$/) do
  create_bucket
end

When(/^I create a bucket with the location constraint "(.*?)"$/) do |loc|
  create_bucket(create_bucket_configuration: {
    location_constraint: loc
  })
end

Then(/^the bucket should have a location constraint of "(.*?)"$/) do |loc|
  resp = @s3.get_bucket_location(bucket: @bucket_name)
  expect(resp.data.location_constraint).to eq(loc)
end

Then(/^the bucket should exist$/) do
  expect { @s3.get_bucket_location(bucket: @bucket_name) }.not_to raise_error
end

When(/^I delete the bucket$/) do
  @s3.delete_bucket(bucket: @bucket_name)
  @created_buckets.delete(@bucket_name)
end

Then(/^the bucket should not exist$/) do
  eventually do
    resp = @s3.get_bucket_location(bucket: @bucket_name)
    expect(resp.error).to be_kind_of(Aws::S3::Errors::NoSuchBucket)
  end
end

When(/^I put nothing to the key "(.*?)"$/) do |key|
  @s3.put_object(bucket: @bucket_name, key: key)
end

When(/^I put "(.*?)" to the key "(.*?)"$/) do |data, key|
  @s3.put_object(bucket: @bucket_name, key: key, body: data)
end

When(/^I put the test png to the key "(.*?)"$/) do |key|
  file = File.open(File.join(File.dirname(__FILE__), 'test.png'), 'rb')
  @s3.put_object(bucket: @bucket_name, key: key, body: file)
  file.close
end

Then(/^the object with the key "(.*?)" should have a content length of (\d+)$/) do |key, size|
  resp = @s3.head_object(bucket: @bucket_name, key: key)
  expect(resp.data.content_length).to eq(size.to_i)
end

When(/^I page s3 objects prefixed "(.*?)" delimited "(.*?)" limit (\d+)$/) do |prefix, delimiter, max_keys|
  @responses = []
  @s3.list_objects(
    bucket: @bucket_name,
    prefix: prefix,
    delimiter: delimiter,
    max_keys: max_keys
  ).each do |resp|
    @responses << resp
  end
end

Then(/^I should have received (\d+) responses$/) do |count|
  expect(@responses.size).to eq(count.to_i)
end

Given(/^I am using the S3 "(.*?)" endpoint$/) do |endpoint|
  @s3 = Aws.s3(endpoint: endpoint)
end

When(/^I create a bucket with a DNS compatible name that contains a dot$/) do
  @bucket_name = "aws.#{Time.now.to_i}.sdk"
  @s3.create_bucket(bucket: @bucket_name)
end

Then(/^I should be able to delete the bucket$/) do
  @s3.delete_bucket(bucket: @bucket_name)
end
