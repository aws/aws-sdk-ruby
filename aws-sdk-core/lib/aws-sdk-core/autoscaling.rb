Aws.add_service(:AutoScaling, {
  api: File.join(Aws::APIS_DIR, 'AutoScaling.api.json'),
  docs: File.join(Aws::APIS_DIR, 'AutoScaling.docs.json'),
  paginators: File.join(Aws::APIS_DIR, 'AutoScaling.paginators.json'),
})
