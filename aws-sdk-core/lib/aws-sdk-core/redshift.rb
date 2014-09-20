Aws.add_service(:Redshift, {
  api: File.join(Aws::APIS_DIR, 'Redshift.api.json'),
  docs: File.join(Aws::APIS_DIR, 'Redshift.docs.json'),
  paginators: File.join(Aws::APIS_DIR, 'Redshift.paginators.json'),
  waiters: File.join(Aws::APIS_DIR, 'Redshift.waiters.json'),
})
