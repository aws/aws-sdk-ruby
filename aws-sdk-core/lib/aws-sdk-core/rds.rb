Aws.add_service(:RDS, {
  api: File.join(Aws::APIS_DIR, 'RDS.api.json'),
  docs: File.join(Aws::APIS_DIR, 'RDS.docs.json'),
  paginators: File.join(Aws::APIS_DIR, 'RDS.paginators.json'),
  waiters: File.join(Aws::APIS_DIR, 'RDS.waiters.json'),
})
