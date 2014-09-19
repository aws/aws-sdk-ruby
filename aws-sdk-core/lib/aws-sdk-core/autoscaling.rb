Aws.add_service(:AutoScaling, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'AutoScaling.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'AutoScaling.docs.json'),
  paginators: File.join(Aws::GEM_ROOT, 'apis', 'AutoScaling.paginators.json'),
})
