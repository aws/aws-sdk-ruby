# module Aws::S3Control
#   module Endpoints
#     class CreateAccessPoint
#       def self.endpoint(context)
#         config = context.config
#         params = context.params
#         # should turn off client endpoint generation to remove this
#         unless config.regional_endpoint
#           endpoint = config.endpoint.host
#         end
#         Aws::S3Control::EndpointProvider.build(
#           {
#             'SDK::Region' => config.region,
#             'SDK::FIPS' => config.use_fips_endpoint,
#             'SDK::DualStack' => context[:use_dualstack_endpoint],
#             'SDK::Host' => endpoint,
#             'S3Control::UseArnRegion' => config.s3_use_arn_region,
#             'AccessPointName' => params[:name],
#             'AccountId' => params[:account_id],
#             'BucketName' => params[:bucket], # should not exist but does in model
#             'RequiresAccountId' => true
#           }
#         )
#       end
#     end
#
#     class CreateBucket
#       def self.endpoint(context)
#         config = context.config
#         params = context.params
#         unless config.regional_endpoint
#           endpoint = config.endpoint.host
#         end
#         Aws::S3Control::EndpointProvider.build(
#           {
#             'SDK::Region' => config.region,
#             'SDK::FIPS' => config.use_fips_endpoint,
#             'SDK::DualStack' => context[:use_dualstack_endpoint],
#             'SDK::Host' => endpoint,
#             'S3Control::UseArnRegion' => config.s3_use_arn_region,
#             'OutpostId' => params[:outpost_id]
#           }
#         )
#       end
#     end
#
#     class GetAccessPoint
#       def self.endpoint(context)
#         config = context.config
#         params = context.params
#         unless config.regional_endpoint
#           endpoint = config.endpoint.host
#         end
#         Aws::S3Control::EndpointProvider.build(
#           {
#             'SDK::Region' => config.region,
#             'SDK::FIPS' => config.use_fips_endpoint,
#             'SDK::DualStack' => context[:use_dualstack_endpoint],
#             'SDK::Host' => endpoint,
#             'S3Control::UseArnRegion' => config.s3_use_arn_region,
#             'AccountId' => params[:account_id],
#             'AccessPointName' => params[:name],
#             'RequiresAccountId' => true
#           }
#         )
#       end
#     end
#
#     class GetBucket
#       def self.endpoint(context)
#         config = context.config
#         params = context.params
#         unless config.regional_endpoint
#           endpoint = config.endpoint.host
#         end
#         Aws::S3Control::EndpointProvider.build(
#           {
#             'SDK::Region' => config.region,
#             'SDK::FIPS' => config.use_fips_endpoint,
#             'SDK::DualStack' => context[:use_dualstack_endpoint],
#             'SDK::Host' => endpoint,
#             'S3Control::UseArnRegion' => config.s3_use_arn_region,
#             'AccountId' => params[:account_id],
#             'BucketName' => params[:bucket],
#             'RequiresAccountId' => true
#           }
#         )
#       end
#     end
#
#     class ListRegionalBuckets
#       def self.endpoint(context)
#         config = context.config
#         params = context.params
#         unless config.regional_endpoint
#           endpoint = config.endpoint.host
#         end
#         Aws::S3Control::EndpointProvider.build(
#           {
#             'SDK::Region' => config.region,
#             'SDK::FIPS' => config.use_fips_endpoint,
#             'SDK::DualStack' => context[:use_dualstack_endpoint],
#             'SDK::Host' => endpoint,
#             'S3Control::UseArnRegion' => config.s3_use_arn_region,
#             'AccountId' => params[:account_id],
#             'OutpostId' => params[:outpost_id],
#             'RequiresAccountId' => true
#           }
#         )
#       end
#     end
#   end
# end
