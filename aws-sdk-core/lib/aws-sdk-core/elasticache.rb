Aws.add_service(:ElastiCache, {
  api: File.join(Aws::API_DIR, 'ElastiCache.api.json'),
  docs: File.join(Aws::API_DIR, 'ElastiCache.docs.json'),
  paginators: File.join(Aws::API_DIR, 'ElastiCache.paginators.json'),
})
