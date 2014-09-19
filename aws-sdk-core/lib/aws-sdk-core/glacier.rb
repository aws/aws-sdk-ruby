Aws.add_service(:Glacier, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'Glacier.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'Glacier.docs.json'),
  paginators: File.join(Aws::GEM_ROOT, 'apis', 'Glacier.paginators.json'),
  resources: File.join(Aws::GEM_ROOT, 'apis', 'Glacier.resources.json'),
  waiters: File.join(Aws::GEM_ROOT, 'apis', 'Glacier.waiters.json'),
})
