Aws.add_service(:DataPipeline, {
  api: File.join(Aws::APIS_DIR, 'DataPipeline.api.json'),
  docs: File.join(Aws::APIS_DIR, 'DataPipeline.docs.json'),
  paginators: File.join(Aws::APIS_DIR, 'DataPipeline.paginators.json'),
})
