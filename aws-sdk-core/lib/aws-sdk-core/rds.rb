Aws.add_service(:RDS, {
  api: "#{Aws::API_DIR}/rds/2014-10-31/api-2.json",
  docs: "#{Aws::API_DIR}/rds/2014-10-31/docs-2.json",
  paginators: "#{Aws::API_DIR}/rds/2014-10-31/paginators-1.json",
  resources: "#{Aws::API_DIR}/rds/2014-10-31/resources-1.json",
  waiters: "#{Aws::API_DIR}/rds/2014-10-31/waiters-2.json",
})
