Aws.add_service(:ElasticBeanstalk, {
  api: File.join(Aws::API_DIR, 'ElasticBeanstalk.api.json'),
  docs: File.join(Aws::API_DIR, 'ElasticBeanstalk.docs.json'),
  paginators: File.join(Aws::API_DIR, 'ElasticBeanstalk.paginators.json'),
})
