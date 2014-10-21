Aws.add_service(:CognitoIdentity, {
  api: File.join(Aws::API_DIR, 'CognitoIdentity.api.json'),
  docs: File.join(Aws::API_DIR, 'CognitoIdentity.docs.json'),
})
