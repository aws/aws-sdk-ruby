Aws.add_service(:SES, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'SES.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'SES.docs.json'),
  paginators: File.join(Aws::GEM_ROOT, 'apis', 'SES.paginators.json'),
  waiters: File.join(Aws::GEM_ROOT, 'apis', 'SES.waiters.json'),
})
