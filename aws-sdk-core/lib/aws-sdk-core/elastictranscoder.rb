Aws.add_service(:ElasticTranscoder, {
  api: File.join(Aws::APIS_DIR, 'ElasticTranscoder.api.json'),
  docs: File.join(Aws::APIS_DIR, 'ElasticTranscoder.docs.json'),
  paginators: File.join(Aws::APIS_DIR, 'ElasticTranscoder.paginators.json'),
})
