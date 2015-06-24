Aws.add_service(:CloudFront, {
  api: "#{Aws::API_DIR}/cloudfront/2015-04-17/api-2.json",
  docs: "#{Aws::API_DIR}/cloudfront/2015-04-17/docs-2.json",
  paginators: "#{Aws::API_DIR}/cloudfront/2015-04-17/paginators-1.json",
  waiters: "#{Aws::API_DIR}/cloudfront/2015-04-17/waiters-2.json",
})
