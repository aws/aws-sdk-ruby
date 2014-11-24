Aws.add_service(:S3, {
  api: File.join(Aws::API_DIR, 'S3.api.json'),
  docs: File.join(Aws::API_DIR, 'S3.docs.json'),
  paginators: File.join(Aws::API_DIR, 'S3.paginators.json'),
  resources: File.join(Aws::API_DIR, 'S3.resources.json'),
  waiters: File.join(Aws::API_DIR, 'S3.waiters.json'),
})

module Aws
  module S3

    autoload :Presigner, 'aws-sdk-core/s3/presigner'
    autoload :BucketRegionCache, 'aws-sdk-core/s3/bucket_region_cache'

    # A cache of discovered bucket regions. You can call `#bucket_added`
    # on this to be notified when you must configure the proper region
    # to access a bucket.
    #
    # This cache is considered an implementation detail.
    #
    # @api private
    BUCKET_REGIONS = BucketRegionCache.new

  end
end
