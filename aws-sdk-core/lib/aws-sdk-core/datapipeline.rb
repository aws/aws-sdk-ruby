Aws.add_service(:DataPipeline, {
  api: File.join(Aws::API_DIR, 'DataPipeline.api.json'),
  docs: File.join(Aws::API_DIR, 'DataPipeline.docs.json'),
  paginators: File.join(Aws::API_DIR, 'DataPipeline.paginators.json'),
})
