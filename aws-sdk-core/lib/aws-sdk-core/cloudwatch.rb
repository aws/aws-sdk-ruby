Aws.add_service(:CloudWatch, {
  api: "#{Aws::API_DIR}/monitoring/2010-08-01/api-2.json",
  docs: "#{Aws::API_DIR}/monitoring/2010-08-01/docs-2.json",
  paginators: "#{Aws::API_DIR}/monitoring/2010-08-01/paginators-1.json",
})
