Aws.add_service(:EMR, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'EMR.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'EMR.docs.json'),
  paginators: File.join(Aws::GEM_ROOT, 'apis', 'EMR.paginators.json'),
})
