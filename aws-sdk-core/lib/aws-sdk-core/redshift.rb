Aws.add_service(:Redshift, {
  api: File.join(Aws::API_DIR, 'Redshift.api.json'),
  docs: File.join(Aws::API_DIR, 'Redshift.docs.json'),
  paginators: File.join(Aws::API_DIR, 'Redshift.paginators.json'),
  waiters: File.join(Aws::API_DIR, 'Redshift.waiters.json'),
})
