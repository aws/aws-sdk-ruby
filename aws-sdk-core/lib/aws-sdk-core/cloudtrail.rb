Aws.add_service(:CloudTrail, {
  api: File.join(Aws::APIS_DIR, 'CloudTrail.api.json'),
  docs: File.join(Aws::APIS_DIR, 'CloudTrail.docs.json'),
  paginators: File.join(Aws::APIS_DIR, 'CloudTrail.paginators.json'),
})
