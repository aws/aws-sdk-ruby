module Aws::Api::ServiceTranslators::S3
  class << self
    def translate(api)
      api.plugins << "Aws::Plugins::S3BucketDns"
      api.plugins << "Aws::Plugins::S3CompleteMultipartUploadFix"
      api.plugins << "Aws::Plugins::S3GetBucketLocationFix"
      api.plugins << "Aws::Plugins::S3Md5s"
      api.plugins << "Aws::Plugins::S3Redirects"
      api.plugins << "Aws::Plugins::S3RegionalEndpoint"
    end
  end
end
