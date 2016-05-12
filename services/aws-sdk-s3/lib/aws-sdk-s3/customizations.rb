require 'aws-sdk-s3/bucket_region_cache'
require 'aws-sdk-s3/legacy_signer'
require 'aws-sdk-s3/presigner'

# plugins
require 'aws-sdk-s3/plugins/accelerate'
require 'aws-sdk-s3/plugins/bucket_dns'
require 'aws-sdk-s3/plugins/expect_100_continue'
require 'aws-sdk-s3/plugins/get_bucket_location_fix'
require 'aws-sdk-s3/plugins/http_200_errors'
require 'aws-sdk-s3/plugins/location_constraint'
require 'aws-sdk-s3/plugins/md5s'
require 'aws-sdk-s3/plugins/redirects'
require 'aws-sdk-s3/plugins/request_signer'
require 'aws-sdk-s3/plugins/sse_cpk'
require 'aws-sdk-s3/plugins/url_encoded_keys'

module Aws
  module S3

    # @api private
    BUCKET_REGIONS = BucketRegionCache.new

    class Client
      add_plugin(Aws::Plugins::Accelerate)
      add_plugin(Aws::Plugins::BucketDns)
      add_plugin(Aws::Plugins::Expect100Continue)
      add_plugin(Aws::Plugins::Http200Errors)
      add_plugin(Aws::Plugins::GetBucketLocationFix)
      add_plugin(Aws::Plugins::LocationConstraint)
      add_plugin(Aws::Plugins::Md5s)
      add_plugin(Aws::Plugins::Redirects)
      add_plugin(Aws::Plugins::SseCpk)
      add_plugin(Aws::Plugins::UrlEncodedKeys)
      add_plugin(Aws::Plugins::RequestSigner)
    end

  end
end
