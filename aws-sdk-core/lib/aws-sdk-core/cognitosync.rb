Aws.add_service(:CognitoSync, {
  api: File.join(Aws::APIS_DIR, 'CognitoSync.api.json'),
  docs: File.join(Aws::APIS_DIR, 'CognitoSync.docs.json'),
})
