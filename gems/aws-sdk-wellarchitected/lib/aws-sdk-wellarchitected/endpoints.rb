# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::WellArchitected
  # @api private
  module Endpoints

    class CreateAgentContext
      def self.build(context)
        Aws::WellArchitected::EndpointParameters.create(
          context.config,
          sub_service_type: "AGENT",
        )
      end
    end

    class CreateAgentGoal
      def self.build(context)
        Aws::WellArchitected::EndpointParameters.create(
          context.config,
          sub_service_type: "AGENT",
        )
      end
    end

    class CreateAgentProfile
      def self.build(context)
        Aws::WellArchitected::EndpointParameters.create(
          context.config,
          sub_service_type: "AGENT",
        )
      end
    end

    class DeleteAgentContext
      def self.build(context)
        Aws::WellArchitected::EndpointParameters.create(
          context.config,
          sub_service_type: "AGENT",
        )
      end
    end

    class DeleteAgentGoal
      def self.build(context)
        Aws::WellArchitected::EndpointParameters.create(
          context.config,
          sub_service_type: "AGENT",
        )
      end
    end

    class DeleteAgentProfile
      def self.build(context)
        Aws::WellArchitected::EndpointParameters.create(
          context.config,
          sub_service_type: "AGENT",
        )
      end
    end

    class GetAgentContext
      def self.build(context)
        Aws::WellArchitected::EndpointParameters.create(
          context.config,
          sub_service_type: "AGENT",
        )
      end
    end

    class GetAgentGoal
      def self.build(context)
        Aws::WellArchitected::EndpointParameters.create(
          context.config,
          sub_service_type: "AGENT",
        )
      end
    end

    class GetAgentProfile
      def self.build(context)
        Aws::WellArchitected::EndpointParameters.create(
          context.config,
          sub_service_type: "AGENT",
        )
      end
    end

    class GetAgentRecommendation
      def self.build(context)
        Aws::WellArchitected::EndpointParameters.create(
          context.config,
          sub_service_type: "AGENT",
        )
      end
    end

    class GetAgentRecommendationGeneration
      def self.build(context)
        Aws::WellArchitected::EndpointParameters.create(
          context.config,
          sub_service_type: "AGENT",
        )
      end
    end

    class ListAgentContexts
      def self.build(context)
        Aws::WellArchitected::EndpointParameters.create(
          context.config,
          sub_service_type: "AGENT",
        )
      end
    end

    class ListAgentGoals
      def self.build(context)
        Aws::WellArchitected::EndpointParameters.create(
          context.config,
          sub_service_type: "AGENT",
        )
      end
    end

    class ListAgentProfiles
      def self.build(context)
        Aws::WellArchitected::EndpointParameters.create(
          context.config,
          sub_service_type: "AGENT",
        )
      end
    end

    class ListAgentRecommendationGenerations
      def self.build(context)
        Aws::WellArchitected::EndpointParameters.create(
          context.config,
          sub_service_type: "AGENT",
        )
      end
    end

    class ListAgentRecommendationItems
      def self.build(context)
        Aws::WellArchitected::EndpointParameters.create(
          context.config,
          sub_service_type: "AGENT",
        )
      end
    end

    class ListAgentRecommendations
      def self.build(context)
        Aws::WellArchitected::EndpointParameters.create(
          context.config,
          sub_service_type: "AGENT",
        )
      end
    end

    class PutAgentRecommendationFeedback
      def self.build(context)
        Aws::WellArchitected::EndpointParameters.create(
          context.config,
          sub_service_type: "AGENT",
        )
      end
    end

    class StartAgentRecommendationGeneration
      def self.build(context)
        Aws::WellArchitected::EndpointParameters.create(
          context.config,
          sub_service_type: "AGENT",
        )
      end
    end

    class UpdateAgentContext
      def self.build(context)
        Aws::WellArchitected::EndpointParameters.create(
          context.config,
          sub_service_type: "AGENT",
        )
      end
    end

    class UpdateAgentGoal
      def self.build(context)
        Aws::WellArchitected::EndpointParameters.create(
          context.config,
          sub_service_type: "AGENT",
        )
      end
    end

    class UpdateAgentProfile
      def self.build(context)
        Aws::WellArchitected::EndpointParameters.create(
          context.config,
          sub_service_type: "AGENT",
        )
      end
    end

    class UpdateAgentRecommendationStatus
      def self.build(context)
        Aws::WellArchitected::EndpointParameters.create(
          context.config,
          sub_service_type: "AGENT",
        )
      end
    end


    def self.parameters_for_operation(context)
      case context.operation_name
      when :create_agent_context
        CreateAgentContext.build(context)
      when :create_agent_goal
        CreateAgentGoal.build(context)
      when :create_agent_profile
        CreateAgentProfile.build(context)
      when :delete_agent_context
        DeleteAgentContext.build(context)
      when :delete_agent_goal
        DeleteAgentGoal.build(context)
      when :delete_agent_profile
        DeleteAgentProfile.build(context)
      when :get_agent_context
        GetAgentContext.build(context)
      when :get_agent_goal
        GetAgentGoal.build(context)
      when :get_agent_profile
        GetAgentProfile.build(context)
      when :get_agent_recommendation
        GetAgentRecommendation.build(context)
      when :get_agent_recommendation_generation
        GetAgentRecommendationGeneration.build(context)
      when :list_agent_contexts
        ListAgentContexts.build(context)
      when :list_agent_goals
        ListAgentGoals.build(context)
      when :list_agent_profiles
        ListAgentProfiles.build(context)
      when :list_agent_recommendation_generations
        ListAgentRecommendationGenerations.build(context)
      when :list_agent_recommendation_items
        ListAgentRecommendationItems.build(context)
      when :list_agent_recommendations
        ListAgentRecommendations.build(context)
      when :put_agent_recommendation_feedback
        PutAgentRecommendationFeedback.build(context)
      when :start_agent_recommendation_generation
        StartAgentRecommendationGeneration.build(context)
      when :update_agent_context
        UpdateAgentContext.build(context)
      when :update_agent_goal
        UpdateAgentGoal.build(context)
      when :update_agent_profile
        UpdateAgentProfile.build(context)
      when :update_agent_recommendation_status
        UpdateAgentRecommendationStatus.build(context)
      else
        Aws::WellArchitected::EndpointParameters.create(context.config)
      end
    end
  end
end
