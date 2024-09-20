# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::TimestreamWrite
  # @api private
  module Endpoints

    class CreateBatchLoadTask
      def self.build(context)
        Aws::TimestreamWrite::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class CreateDatabase
      def self.build(context)
        Aws::TimestreamWrite::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class CreateTable
      def self.build(context)
        Aws::TimestreamWrite::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class DeleteDatabase
      def self.build(context)
        Aws::TimestreamWrite::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class DeleteTable
      def self.build(context)
        Aws::TimestreamWrite::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class DescribeBatchLoadTask
      def self.build(context)
        Aws::TimestreamWrite::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class DescribeDatabase
      def self.build(context)
        Aws::TimestreamWrite::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class DescribeEndpoints
      def self.build(context)
        Aws::TimestreamWrite::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class DescribeTable
      def self.build(context)
        Aws::TimestreamWrite::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class ListBatchLoadTasks
      def self.build(context)
        Aws::TimestreamWrite::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class ListDatabases
      def self.build(context)
        Aws::TimestreamWrite::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class ListTables
      def self.build(context)
        Aws::TimestreamWrite::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class ListTagsForResource
      def self.build(context)
        Aws::TimestreamWrite::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class ResumeBatchLoadTask
      def self.build(context)
        Aws::TimestreamWrite::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class TagResource
      def self.build(context)
        Aws::TimestreamWrite::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class UntagResource
      def self.build(context)
        Aws::TimestreamWrite::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class UpdateDatabase
      def self.build(context)
        Aws::TimestreamWrite::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class UpdateTable
      def self.build(context)
        Aws::TimestreamWrite::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class WriteRecords
      def self.build(context)
        Aws::TimestreamWrite::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

  end
end
