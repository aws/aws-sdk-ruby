# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::BCMDataExports
  # @api private
  module Endpoints

    class CreateExport
      def self.build(context)
        Aws::BCMDataExports::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class DeleteExport
      def self.build(context)
        Aws::BCMDataExports::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class GetExecution
      def self.build(context)
        Aws::BCMDataExports::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class GetExport
      def self.build(context)
        Aws::BCMDataExports::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class GetTable
      def self.build(context)
        Aws::BCMDataExports::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class ListExecutions
      def self.build(context)
        Aws::BCMDataExports::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class ListExports
      def self.build(context)
        Aws::BCMDataExports::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class ListTables
      def self.build(context)
        Aws::BCMDataExports::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class ListTagsForResource
      def self.build(context)
        Aws::BCMDataExports::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class TagResource
      def self.build(context)
        Aws::BCMDataExports::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class UntagResource
      def self.build(context)
        Aws::BCMDataExports::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class UpdateExport
      def self.build(context)
        Aws::BCMDataExports::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

  end
end
