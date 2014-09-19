Aws.add_service(:CognitoIdentity, {
  api: File.join(Aws::APIS_DIR, 'CognitoIdentity.api.json'),
  docs: File.join(Aws::APIS_DIR, 'CognitoIdentity.docs.json'),
})
