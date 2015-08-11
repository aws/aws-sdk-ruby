# WARNING: yielding data to a block disables retries of networking errors
File.open('/path/to/file', 'wb') do |file|
  s3.get_object(bucket: 'bucket-name', key: 'object-key') do |chunk|
    file.write(chunk)
  end
end
