Aws.add_service(:S3, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'S3.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'S3.docs.json'),
  paginators: File.join(Aws::GEM_ROOT, 'apis', 'S3.paginators.json'),
  resources: File.join(Aws::GEM_ROOT, 'apis', 'S3.resources.json'),
  waiters: File.join(Aws::GEM_ROOT, 'apis', 'S3.waiters.json'),
})

module Aws
  module S3
    autoload :Presigner, "#{SRC}/s3/presigner"
  end
end
