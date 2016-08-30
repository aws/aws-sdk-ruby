Aws.add_service(:CloudFront, {
  api: "#{Aws::API_DIR}/cloudfront/2016-08-20/api-2.json",
  docs: "#{Aws::API_DIR}/cloudfront/2016-08-20/docs-2.json",
  paginators: "#{Aws::API_DIR}/cloudfront/2016-08-20/paginators-1.json",
  waiters: "#{Aws::API_DIR}/cloudfront/2016-08-20/waiters-2.json",
})

module Aws
  module CloudFront

    autoload :UrlSigner, 'aws-sdk-core/cloudfront/url_signer.rb'

  end
end
