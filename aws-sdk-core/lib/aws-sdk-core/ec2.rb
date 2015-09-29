Aws.add_service(:EC2, {
  api: "#{Aws::API_DIR}/ec2/2015-10-01/api-2.json",
  docs: "#{Aws::API_DIR}/ec2/2015-10-01/docs-2.json",
  paginators: "#{Aws::API_DIR}/ec2/2015-10-01/paginators-1.json",
  resources: "#{Aws::API_DIR}/ec2/2015-10-01/resources-1.json",
  waiters: "#{Aws::API_DIR}/ec2/2015-10-01/waiters-2.json",
})
