Aws.add_service(:DataPipeline, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'DataPipeline.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'DataPipeline.docs.json'),
  paginators: File.join(Aws::GEM_ROOT, 'apis', 'DataPipeline.paginators.json'),
})
