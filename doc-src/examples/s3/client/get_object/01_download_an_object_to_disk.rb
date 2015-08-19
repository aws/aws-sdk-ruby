# stream object directly to disk
resp = s3.get_object(
  target: '/path/to/file',
  bucket: 'bucket-name',
  key: 'object-key')

# you can still access other response data
resp.metadata #=> { ... }
resp.etag #=> "..."
