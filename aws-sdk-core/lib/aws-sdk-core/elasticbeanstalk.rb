Aws.add_service(:ElasticBeanstalk, {
  api: File.join(Aws::APIS_DIR, 'ElasticBeanstalk.api.json'),
  docs: File.join(Aws::APIS_DIR, 'ElasticBeanstalk.docs.json'),
  paginators: File.join(Aws::APIS_DIR, 'ElasticBeanstalk.paginators.json'),
})
