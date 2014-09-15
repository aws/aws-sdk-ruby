Aws.add_service(:IAM, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'IAM.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'IAM.docs.json'),
  paginators: File.join(Aws::GEM_ROOT, 'apis', 'IAM.paginators.json'),
  resources: File.join(Aws::GEM_ROOT, 'apis', 'IAM.resources.json'),
})
