Aws.add_service(:ElasticLoadBalancing, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'ElasticLoadBalancing.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'ElasticLoadBalancing.docs.json'),
  paginators: File.join(Aws::GEM_ROOT, 'apis', 'ElasticLoadBalancing.paginators.json'),
})
