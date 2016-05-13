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
    class Client
      add_plugin(Plugins::Accelerate)
      add_plugin(Plugins::BucketDns)
      add_plugin(Plugins::Expect100Continue)
      add_plugin(Plugins::Http200Errors)
      add_plugin(Plugins::GetBucketLocationFix)
      add_plugin(Plugins::LocationConstraint)
      add_plugin(Plugins::Md5s)
      add_plugin(Plugins::Redirects)
      add_plugin(Plugins::SseCpk)
      add_plugin(Plugins::UrlEncodedKeys)
      add_plugin(Plugins::RequestSigner)
    end
  end
end
