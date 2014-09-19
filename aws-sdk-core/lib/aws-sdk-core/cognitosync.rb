Aws.add_service(:CognitoSync, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'CognitoSync.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'CognitoSync.docs.json'),
})
