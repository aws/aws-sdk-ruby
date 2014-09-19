Aws.add_service(:ElasticLoadBalancing, {
  api: File.join(Aws::APIS_DIR, 'ElasticLoadBalancing.api.json'),
  docs: File.join(Aws::APIS_DIR, 'ElasticLoadBalancing.docs.json'),
  paginators: File.join(Aws::APIS_DIR, 'ElasticLoadBalancing.paginators.json'),
})
