Aws.add_service(:EC2, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'EC2.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'EC2.docs.json'),
  paginators: File.join(Aws::GEM_ROOT, 'apis', 'EC2.paginators.json'),
  resources: File.join(Aws::GEM_ROOT, 'apis', 'EC2.resources.json'),
  waiters: File.join(Aws::GEM_ROOT, 'apis', 'EC2.waiters.json'),
})
