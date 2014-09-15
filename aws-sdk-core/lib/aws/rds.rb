Aws.add_service(:RDS, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'RDS.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'RDS.docs.json'),
  paginators: File.join(Aws::GEM_ROOT, 'apis', 'RDS.paginators.json'),
  waiters: File.join(Aws::GEM_ROOT, 'apis', 'RDS.waiters.json'),
})
