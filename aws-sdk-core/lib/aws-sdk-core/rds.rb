Aws.add_service(:RDS, {
  api: "#{Aws::API_DIR}/rds/2014-09-01/api-2.json",
  docs: "#{Aws::API_DIR}/rds/2014-09-01/docs-2.json",
  examples: "#{Aws::API_DIR}/rds/2014-09-01/examples-1.json",
  paginators: "#{Aws::API_DIR}/rds/2014-09-01/paginators-1.json",
})

module Aws
  module RDS

    autoload :AuthTokenGenerator, 'aws-sdk-core/rds/auth_token_generator'

  end
end
