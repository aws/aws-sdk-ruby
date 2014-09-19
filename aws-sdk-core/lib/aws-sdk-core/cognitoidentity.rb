Aws.add_service(:CognitoIdentity, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'CognitoIdentity.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'CognitoIdentity.docs.json'),
})
