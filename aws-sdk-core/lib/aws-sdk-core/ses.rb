Aws.add_service(:SES, {
  api: File.join(Aws::APIS_DIR, 'SES.api.json'),
  docs: File.join(Aws::APIS_DIR, 'SES.docs.json'),
  paginators: File.join(Aws::APIS_DIR, 'SES.paginators.json'),
  waiters: File.join(Aws::APIS_DIR, 'SES.waiters.json'),
})
