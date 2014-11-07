Aws.add_service(:EC2, {
  api: File.join(Aws::API_DIR, 'EC2.api.json'),
  docs: File.join(Aws::API_DIR, 'EC2.docs.json'),
  paginators: File.join(Aws::API_DIR, 'EC2.paginators.json'),
  resources: File.join(Aws::API_DIR, 'EC2.resources.json'),
  waiters: File.join(Aws::API_DIR, 'EC2.waiters.json'),
})

module Aws
  module EC2
    autoload :Instance, 'aws-sdk-core/ec2/instance'
  end
end
