

# bucket: 'test-bucket-alexwoo-2', key: 'test_block'
s3_client = Aws::S3::Client.new
s3_key = "test_block"
s3obj = Aws::S3::Object.new("test-bucket-alexwoo-2", s3_key, client: s3_client)
s3obj.public_url(virtual_host: true) # Returns the http version