# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ApplicationSignals
  # @api private
  module Endpoints

    class BatchGetServiceLevelObjectiveBudgetReport
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::ApplicationSignals::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          region: context.config.region,
        )
      end
    end

    class CreateServiceLevelObjective
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::ApplicationSignals::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          region: context.config.region,
        )
      end
    end

    class DeleteServiceLevelObjective
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::ApplicationSignals::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          region: context.config.region,
        )
      end
    end

    class GetService
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::ApplicationSignals::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          region: context.config.region,
        )
      end
    end

    class GetServiceLevelObjective
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::ApplicationSignals::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          region: context.config.region,
        )
      end
    end

    class ListServiceDependencies
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::ApplicationSignals::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          region: context.config.region,
        )
      end
    end

    class ListServiceDependents
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::ApplicationSignals::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          region: context.config.region,
        )
      end
    end

    class ListServiceLevelObjectives
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::ApplicationSignals::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          region: context.config.region,
        )
      end
    end

    class ListServiceOperations
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::ApplicationSignals::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          region: context.config.region,
        )
      end
    end

    class ListServices
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::ApplicationSignals::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          region: context.config.region,
        )
      end
    end

    class ListTagsForResource
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::ApplicationSignals::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          region: context.config.region,
        )
      end
    end

    class StartDiscovery
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::ApplicationSignals::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          region: context.config.region,
        )
      end
    end

    class TagResource
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::ApplicationSignals::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          region: context.config.region,
        )
      end
    end

    class UntagResource
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::ApplicationSignals::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          region: context.config.region,
        )
      end
    end

    class UpdateServiceLevelObjective
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::ApplicationSignals::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          region: context.config.region,
        )
      end
    end

  end
end
