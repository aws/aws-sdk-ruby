Aws.add_service(:SWF, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'SWF.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'SWF.docs.json'),
  paginators: File.join(Aws::GEM_ROOT, 'apis', 'SWF.paginators.json'),
})
