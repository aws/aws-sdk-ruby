Aws.add_service(:CloudFront, {
  api: "#{Aws::API_DIR}/cloudfront/2016-09-29/api-2.json",
  docs: "#{Aws::API_DIR}/cloudfront/2016-09-29/docs-2.json",
  examples: "#{Aws::API_DIR}/cloudfront/2016-09-29/examples-1.json",
  paginators: "#{Aws::API_DIR}/cloudfront/2016-09-29/paginators-1.json",
  waiters: "#{Aws::API_DIR}/cloudfront/2016-09-29/waiters-2.json",
})

module Aws
  module CloudFront

    autoload :UrlSigner, 'aws-sdk-core/cloudfront/url_signer.rb'

  end
end
