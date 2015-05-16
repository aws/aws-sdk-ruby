Aws.add_service(:EC2, {
  api: "#{Aws::API_DIR}/ec2/2015-04-15/api-2.json",
  docs: "#{Aws::API_DIR}/ec2/2015-04-15/docs-2.json",
  paginators: "#{Aws::API_DIR}/ec2/2015-04-15/paginators-1.json",
  resources: "#{Aws::API_DIR}/ec2/2015-04-15/resources-1.json",
  waiters: "#{Aws::API_DIR}/ec2/2015-04-15/waiters-2.json",
})
