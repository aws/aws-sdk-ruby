# omit :response_target to download to a StringIO in memory
resp = s3.get_object(bucket: 'bucket-name', key: 'object-key')

# call #read or #string on the response body
resp.body.read
#=> '...'
