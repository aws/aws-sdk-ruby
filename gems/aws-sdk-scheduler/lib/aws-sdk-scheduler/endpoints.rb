# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Scheduler
  # @api private
  module Endpoints

    class CreateSchedule
      def self.build(context)
        Aws::Scheduler::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class CreateScheduleGroup
      def self.build(context)
        Aws::Scheduler::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class DeleteSchedule
      def self.build(context)
        Aws::Scheduler::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class DeleteScheduleGroup
      def self.build(context)
        Aws::Scheduler::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class GetSchedule
      def self.build(context)
        Aws::Scheduler::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class GetScheduleGroup
      def self.build(context)
        Aws::Scheduler::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class ListScheduleGroups
      def self.build(context)
        Aws::Scheduler::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class ListSchedules
      def self.build(context)
        Aws::Scheduler::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class ListTagsForResource
      def self.build(context)
        Aws::Scheduler::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class TagResource
      def self.build(context)
        Aws::Scheduler::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class UntagResource
      def self.build(context)
        Aws::Scheduler::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class UpdateSchedule
      def self.build(context)
        Aws::Scheduler::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

  end
end
