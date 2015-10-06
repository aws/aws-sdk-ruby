Aws.add_service(:CloudFront, {
  api: "#{Aws::API_DIR}/cloudfront/2015-07-27/api-2.json",
  docs: "#{Aws::API_DIR}/cloudfront/2015-07-27/docs-2.json",
  paginators: "#{Aws::API_DIR}/cloudfront/2015-07-27/paginators-1.json",
  waiters: "#{Aws::API_DIR}/cloudfront/2015-07-27/waiters-2.json",
})
