# upload file from disk in a single request, may not exceed 5GB
File.open('/source/file/path', 'rb') do |file|
  s3.put_object(bucket: 'bucket-name', key: 'object-key', body: file)
end
