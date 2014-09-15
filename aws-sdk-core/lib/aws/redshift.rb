Aws.add_service(:Redshift, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'Redshift.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'Redshift.docs.json'),
  paginators: File.join(Aws::GEM_ROOT, 'apis', 'Redshift.paginators.json'),
  waiters: File.join(Aws::GEM_ROOT, 'apis', 'Redshift.waiters.json'),
})
