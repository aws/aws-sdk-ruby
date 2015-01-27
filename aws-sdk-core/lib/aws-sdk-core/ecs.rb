Aws.add_service(:ECS, {
  api: File.join(Aws::API_DIR, 'ECS.api.json'),
  docs: File.join(Aws::API_DIR, 'ECS.docs.json'),
})
