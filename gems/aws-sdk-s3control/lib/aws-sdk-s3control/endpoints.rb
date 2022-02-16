module Aws::S3Control
  module Endpoints
    class CreateAccessPoint
      def self.endpoint(config, params)
        # should turn off client endpoint generation to remove this
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3Control::EndpointProvider.build(
          {
            'SDK::Region' => config.region,
            'SDK::FIPS' => config.use_fips_endpoint,
            'SDK::DualStack' => config.use_dualstack_endpoint,
            'S3Control::UseArnRegion' => config.s3_use_arn_region,
            'AccessPointName' => params[:name],
            'AccountId' => params[:account_id],
            # 'BucketName' => params[:bucket]
            'RequiresAccountId' => true,
            # 'OutpostIdSpecialCase' => true
          }
        )
      end
    end

    class CreateBucket
      def self.endpoint(config, params)
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3Control::EndpointProvider.build(
          {
            'SDK::Region' => config.region,
            'SDK::FIPS' => config.use_fips_endpoint,
            'SDK::DualStack' => config.use_dualstack_endpoint,
            'SDK::Endpoint' => endpoint,
            'S3Control::UseArnRegion' => config.s3_use_arn_region,
            'OutpostId' => params[:outpost_id],
            'OutpostIdSpecialCase' => true
          }
        )
      end
    end

    class GetAccessPoint
      def self.endpoint(config, params)
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3Control::EndpointProvider.build(
          {
            'SDK::Region' => config.region,
            'SDK::FIPS' => config.use_fips_endpoint,
            'SDK::DualStack' => config.use_dualstack_endpoint,
            'SDK::Endpoint' => endpoint,
            'S3Control::UseArnRegion' => config.s3_use_arn_region,
            'AccountId' => params[:account_id],
            'AccessPointName' => params[:name],
            'RequiresAccountId' => true
          }
        )
      end
    end

    class GetBucket
      def self.endpoint(config, params)
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3Control::EndpointProvider.build(
          {
            'SDK::Region' => config.region,
            'SDK::FIPS' => config.use_fips_endpoint,
            'SDK::DualStack' => config.use_dualstack_endpoint,
            'SDK::Endpoint' => endpoint,
            'S3Control::UseArnRegion' => config.s3_use_arn_region,
            'AccountId' => params[:account_id],
            'BucketName' => params[:bucket],
            'RequiresAccountId' => true
          }
        )
      end
    end

    class ListRegionalBuckets
      def self.endpoint(config, params)
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3Control::EndpointProvider.build(
          {
            'SDK::Region' => config.region,
            'SDK::FIPS' => config.use_fips_endpoint,
            'SDK::DualStack' => config.use_dualstack_endpoint,
            'SDK::Endpoint' => endpoint,
            'S3Control::UseArnRegion' => config.s3_use_arn_region,
            'AccountId' => params[:account_id],
            'OutpostId' => params[:ooutpost_id],
            'RequiresAccountId' => true,
            'OutpostIdSpecialCase' => true
          }
        )
      end
    end
  end
end
