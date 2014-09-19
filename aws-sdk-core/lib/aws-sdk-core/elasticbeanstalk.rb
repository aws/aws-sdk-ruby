Aws.add_service(:ElasticBeanstalk, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'ElasticBeanstalk.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'ElasticBeanstalk.docs.json'),
  paginators: File.join(Aws::GEM_ROOT, 'apis', 'ElasticBeanstalk.paginators.json'),
})
