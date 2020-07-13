# WARNING: yielding data to a block disables retries of networking errors
# However truncation of the body will be retried automatically using a range request
File.open('/path/to/file', 'wb') do |file|
  s3.get_object(bucket: 'bucket-name', key: 'object-key') do |chunk, headers|
    # headers['content-length']
    file.write(chunk)
  end
end
