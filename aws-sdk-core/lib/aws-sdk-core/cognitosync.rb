Aws.add_service(:CognitoSync, {
  api: File.join(Aws::API_DIR, 'CognitoSync.api.json'),
  docs: File.join(Aws::API_DIR, 'CognitoSync.docs.json'),
})
