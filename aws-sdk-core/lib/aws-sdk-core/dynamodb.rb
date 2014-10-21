Aws.add_service(:DynamoDB, {
  api: File.join(Aws::API_DIR, 'DynamoDB.api.json'),
  docs: File.join(Aws::API_DIR, 'DynamoDB.docs.json'),
  paginators: File.join(Aws::API_DIR, 'DynamoDB.paginators.json'),
  waiters: File.join(Aws::API_DIR, 'DynamoDB.waiters.json'),
})

module Aws
  module DynamoDB
    autoload :AttributeValue, 'aws-sdk-core/dynamodb/attribute_value'
  end
end
