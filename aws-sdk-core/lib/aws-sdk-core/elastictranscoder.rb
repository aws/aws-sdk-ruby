Aws.add_service(:ElasticTranscoder, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'ElasticTranscoder.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'ElasticTranscoder.docs.json'),
  paginators: File.join(Aws::GEM_ROOT, 'apis', 'ElasticTranscoder.paginators.json'),
})
