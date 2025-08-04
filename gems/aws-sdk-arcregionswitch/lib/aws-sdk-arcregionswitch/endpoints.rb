# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ARCRegionswitch
  # @api private
  module Endpoints

    class CreatePlan
      def self.build(context)
        Aws::ARCRegionswitch::EndpointParameters.create(
          context.config,
          use_control_plane_endpoint: true,
        )
      end
    end

    class DeletePlan
      def self.build(context)
        Aws::ARCRegionswitch::EndpointParameters.create(
          context.config,
          use_control_plane_endpoint: true,
        )
      end
    end

    class GetPlan
      def self.build(context)
        Aws::ARCRegionswitch::EndpointParameters.create(
          context.config,
          use_control_plane_endpoint: true,
        )
      end
    end

    class ListPlans
      def self.build(context)
        Aws::ARCRegionswitch::EndpointParameters.create(
          context.config,
          use_control_plane_endpoint: true,
        )
      end
    end

    class ListRoute53HealthChecks
      def self.build(context)
        Aws::ARCRegionswitch::EndpointParameters.create(
          context.config,
          use_control_plane_endpoint: true,
        )
      end
    end

    class ListTagsForResource
      def self.build(context)
        Aws::ARCRegionswitch::EndpointParameters.create(
          context.config,
          use_control_plane_endpoint: true,
        )
      end
    end

    class TagResource
      def self.build(context)
        Aws::ARCRegionswitch::EndpointParameters.create(
          context.config,
          use_control_plane_endpoint: true,
        )
      end
    end

    class UntagResource
      def self.build(context)
        Aws::ARCRegionswitch::EndpointParameters.create(
          context.config,
          use_control_plane_endpoint: true,
        )
      end
    end

    class UpdatePlan
      def self.build(context)
        Aws::ARCRegionswitch::EndpointParameters.create(
          context.config,
          use_control_plane_endpoint: true,
        )
      end
    end


    def self.parameters_for_operation(context)
      case context.operation_name
      when :create_plan
        CreatePlan.build(context)
      when :delete_plan
        DeletePlan.build(context)
      when :get_plan
        GetPlan.build(context)
      when :list_plans
        ListPlans.build(context)
      when :list_route_53_health_checks
        ListRoute53HealthChecks.build(context)
      when :list_tags_for_resource
        ListTagsForResource.build(context)
      when :tag_resource
        TagResource.build(context)
      when :untag_resource
        UntagResource.build(context)
      when :update_plan
        UpdatePlan.build(context)
      else
        Aws::ARCRegionswitch::EndpointParameters.create(context.config)
      end
    end
  end
end
