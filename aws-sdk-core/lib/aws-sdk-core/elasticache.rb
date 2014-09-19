Aws.add_service(:ElastiCache, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'ElastiCache.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'ElastiCache.docs.json'),
  paginators: File.join(Aws::GEM_ROOT, 'apis', 'ElastiCache.paginators.json'),
})
