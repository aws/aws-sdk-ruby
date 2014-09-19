Aws.add_service(:DynamoDB, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'DynamoDB.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'DynamoDB.docs.json'),
  paginators: File.join(Aws::GEM_ROOT, 'apis', 'DynamoDB.paginators.json'),
  waiters: File.join(Aws::GEM_ROOT, 'apis', 'DynamoDB.waiters.json'),
})

module Aws::DynamoDB
  autoload :AttributeValue, "#{Aws::SRC}/dynamodb/attribute_value"
end
