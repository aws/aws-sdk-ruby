Aws.add_service(:ElasticLoadBalancing, {
  api: File.join(Aws::API_DIR, 'ElasticLoadBalancing.api.json'),
  docs: File.join(Aws::API_DIR, 'ElasticLoadBalancing.docs.json'),
  paginators: File.join(Aws::API_DIR, 'ElasticLoadBalancing.paginators.json'),
})
