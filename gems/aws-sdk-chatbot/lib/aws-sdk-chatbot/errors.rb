# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Chatbot

  # When Chatbot returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::Chatbot::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all Chatbot errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Chatbot::Errors::ServiceError
  #       # rescues all Chatbot API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {ConflictException}
  # * {CreateChimeWebhookConfigurationException}
  # * {CreateSlackChannelConfigurationException}
  # * {CreateTeamsChannelConfigurationException}
  # * {DeleteChimeWebhookConfigurationException}
  # * {DeleteMicrosoftTeamsUserIdentityException}
  # * {DeleteSlackChannelConfigurationException}
  # * {DeleteSlackUserIdentityException}
  # * {DeleteSlackWorkspaceAuthorizationFault}
  # * {DeleteTeamsChannelConfigurationException}
  # * {DeleteTeamsConfiguredTeamException}
  # * {DescribeChimeWebhookConfigurationsException}
  # * {DescribeSlackChannelConfigurationsException}
  # * {DescribeSlackUserIdentitiesException}
  # * {DescribeSlackWorkspacesException}
  # * {GetAccountPreferencesException}
  # * {GetTeamsChannelConfigurationException}
  # * {InvalidParameterException}
  # * {InvalidRequestException}
  # * {LimitExceededException}
  # * {ListMicrosoftTeamsConfiguredTeamsException}
  # * {ListMicrosoftTeamsUserIdentitiesException}
  # * {ListTeamsChannelConfigurationsException}
  # * {ResourceNotFoundException}
  # * {UpdateAccountPreferencesException}
  # * {UpdateChimeWebhookConfigurationException}
  # * {UpdateSlackChannelConfigurationException}
  # * {UpdateTeamsChannelConfigurationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors

    extend Aws::Errors::DynamicErrors

    class ConflictException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Chatbot::Types::ConflictException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class CreateChimeWebhookConfigurationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Chatbot::Types::CreateChimeWebhookConfigurationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class CreateSlackChannelConfigurationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Chatbot::Types::CreateSlackChannelConfigurationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class CreateTeamsChannelConfigurationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Chatbot::Types::CreateTeamsChannelConfigurationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DeleteChimeWebhookConfigurationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Chatbot::Types::DeleteChimeWebhookConfigurationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DeleteMicrosoftTeamsUserIdentityException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Chatbot::Types::DeleteMicrosoftTeamsUserIdentityException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DeleteSlackChannelConfigurationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Chatbot::Types::DeleteSlackChannelConfigurationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DeleteSlackUserIdentityException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Chatbot::Types::DeleteSlackUserIdentityException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DeleteSlackWorkspaceAuthorizationFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Chatbot::Types::DeleteSlackWorkspaceAuthorizationFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DeleteTeamsChannelConfigurationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Chatbot::Types::DeleteTeamsChannelConfigurationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DeleteTeamsConfiguredTeamException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Chatbot::Types::DeleteTeamsConfiguredTeamException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DescribeChimeWebhookConfigurationsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Chatbot::Types::DescribeChimeWebhookConfigurationsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DescribeSlackChannelConfigurationsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Chatbot::Types::DescribeSlackChannelConfigurationsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DescribeSlackUserIdentitiesException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Chatbot::Types::DescribeSlackUserIdentitiesException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DescribeSlackWorkspacesException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Chatbot::Types::DescribeSlackWorkspacesException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class GetAccountPreferencesException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Chatbot::Types::GetAccountPreferencesException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class GetTeamsChannelConfigurationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Chatbot::Types::GetTeamsChannelConfigurationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidParameterException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Chatbot::Types::InvalidParameterException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidRequestException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Chatbot::Types::InvalidRequestException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class LimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Chatbot::Types::LimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ListMicrosoftTeamsConfiguredTeamsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Chatbot::Types::ListMicrosoftTeamsConfiguredTeamsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ListMicrosoftTeamsUserIdentitiesException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Chatbot::Types::ListMicrosoftTeamsUserIdentitiesException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ListTeamsChannelConfigurationsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Chatbot::Types::ListTeamsChannelConfigurationsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ResourceNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Chatbot::Types::ResourceNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class UpdateAccountPreferencesException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Chatbot::Types::UpdateAccountPreferencesException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class UpdateChimeWebhookConfigurationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Chatbot::Types::UpdateChimeWebhookConfigurationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class UpdateSlackChannelConfigurationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Chatbot::Types::UpdateSlackChannelConfigurationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class UpdateTeamsChannelConfigurationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Chatbot::Types::UpdateTeamsChannelConfigurationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

  end
end
