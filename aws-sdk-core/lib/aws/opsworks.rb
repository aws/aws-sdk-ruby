Aws.add_service(:OpsWorks, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'OpsWorks.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'OpsWorks.docs.json'),
  paginators: File.join(Aws::GEM_ROOT, 'apis', 'OpsWorks.paginators.json'),
  resources: File.join(Aws::GEM_ROOT, 'apis', 'OpsWorks.resources.json'),
})
