Aws.add_service(:SSM, {
  api: File.join(Aws::API_DIR, 'SSM.api.json'),
  docs: File.join(Aws::API_DIR, 'SSM.docs.json'),
})
