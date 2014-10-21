Aws.add_service(:ElasticTranscoder, {
  api: File.join(Aws::API_DIR, 'ElasticTranscoder.api.json'),
  docs: File.join(Aws::API_DIR, 'ElasticTranscoder.docs.json'),
  paginators: File.join(Aws::API_DIR, 'ElasticTranscoder.paginators.json'),
  waiters: File.join(Aws::API_DIR, 'ElasticTranscoder.waiters.json'),
})
