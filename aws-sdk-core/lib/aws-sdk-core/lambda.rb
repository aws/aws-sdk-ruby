Aws.add_service(:Lambda, {
  api: File.join(Aws::API_DIR, 'Lambda.api.json'),
  docs: File.join(Aws::API_DIR, 'Lambda.docs.json'),
})
