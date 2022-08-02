# module Aws::S3Control
#   class EndpointProvider
#     # # eventually code gen will look like:
#     # #
#     # @endpoints = []
#     # # these come from each endpoint rule in endpoints.json
#     # @endpoints << Aws::Endpoint.new(
#     #   matchers: proc do |options|
#     #     # from each matcher set
#     #     Aws::EndpointMatchers.partition?('aws', options[:region]) &&
#     #     Aws::EndpointMatchers.boolean_equals?(true, options[:fips]) &&
#     #     Aws::EndpointMatchers.arn?(true, options[:bucket])
#     #   end,
#     #   url: 'https://s3-outposts-fips.{region}.amazonaws.com',
#     #   http_headers: {
#     #     'x-amz-account-id' => '{Bucket.arn-account-id}'
#     #   },
#     #   signing_name: 's3-outposts',
#     #   signing_scope: '{Bucket.arn-region}'
#     # )
#
#     # temporary, just runtime eval of the model
#     path = File.expand_path('../../../../../apis/s3control/2018-08-20/dynamic-endpoints.json', __FILE__)
#     @json = JSON.parse(File.read(path), freeze: true)
#     @endpoints = []
#     @json['rules'].each do |rule|
#       @endpoints << Aws::Endpoint.new(rule)
#     end
#     # idea - put this on config???
#     @provider = Aws::EndpointProvider.new(endpoints: @endpoints)
#
#     def self.build(endpoint_options = {})
#       @provider.build(endpoint_options)
#     end
#   end
# end
