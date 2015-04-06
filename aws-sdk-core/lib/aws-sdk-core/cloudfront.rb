Aws.add_service(:CloudFront, {
  api: "#{Aws::API_DIR}/cloudfront/2014-11-06/api-2.json",
  docs: "#{Aws::API_DIR}/cloudfront/2014-11-06/docs-2.json",
  paginators: "#{Aws::API_DIR}/cloudfront/2014-11-06/paginators-1.json",
  waiters: "#{Aws::API_DIR}/cloudfront/2014-11-06/waiters-2.json",
})
