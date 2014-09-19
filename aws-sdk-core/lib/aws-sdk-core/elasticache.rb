Aws.add_service(:ElastiCache, {
  api: File.join(Aws::APIS_DIR, 'ElastiCache.api.json'),
  docs: File.join(Aws::APIS_DIR, 'ElastiCache.docs.json'),
  paginators: File.join(Aws::APIS_DIR, 'ElastiCache.paginators.json'),
})
