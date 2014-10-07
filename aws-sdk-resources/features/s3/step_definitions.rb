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
  expect(ApiCallTracker.called_operations).to include('create_multipart_upload')
end
