Aws.add_service(:Support, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'Support.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'Support.docs.json'),
  paginators: File.join(Aws::GEM_ROOT, 'apis', 'Support.paginators.json'),
})
