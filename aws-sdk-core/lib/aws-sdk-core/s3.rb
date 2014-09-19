Aws.add_service(:S3, {
  api: File.join(Aws::APIS_DIR, 'S3.api.json'),
  docs: File.join(Aws::APIS_DIR, 'S3.docs.json'),
  paginators: File.join(Aws::APIS_DIR, 'S3.paginators.json'),
  resources: File.join(Aws::APIS_DIR, 'S3.resources.json'),
  waiters: File.join(Aws::APIS_DIR, 'S3.waiters.json'),
})

module Aws
  module S3
    autoload :Presigner, 'aws-sdk-core/s3/presigner'
  end
end
