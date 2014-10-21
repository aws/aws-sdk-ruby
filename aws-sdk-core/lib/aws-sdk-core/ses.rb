Aws.add_service(:SES, {
  api: File.join(Aws::API_DIR, 'SES.api.json'),
  docs: File.join(Aws::API_DIR, 'SES.docs.json'),
  paginators: File.join(Aws::API_DIR, 'SES.paginators.json'),
  waiters: File.join(Aws::API_DIR, 'SES.waiters.json'),
})
