# frozen_string_literal: true

# This is generated code!

module Aws::Chatbot
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Chatbot::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Chatbot::Errors::ServiceError
  #       # rescues all API errors
  #     end
  #
  # ## Request Context
  #
  # ServiceError objects have a {Smithy::Client::ServiceError#context #context} method
  # that returns information about the request that generated the error.
  # See {Smithy::Client::HandlerContext} for more information.
  #
  # ## Error Classes
  #
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
  # * {InternalServiceError}
  # * {InvalidParameterException}
  # * {InvalidRequestException}
  # * {LimitExceededException}
  # * {ListMicrosoftTeamsConfiguredTeamsException}
  # * {ListMicrosoftTeamsUserIdentitiesException}
  # * {ListTeamsChannelConfigurationsException}
  # * {ResourceNotFoundException}
  # * {ServiceUnavailableException}
  # * {TooManyTagsException}
  # * {UnauthorizedException}
  # * {UpdateAccountPreferencesException}
  # * {UpdateChimeWebhookConfigurationException}
  # * {UpdateSlackChannelConfigurationException}
  # * {UpdateTeamsChannelConfigurationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>There was an issue processing your request.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chatbot::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    class CreateChimeWebhookConfigurationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chatbot::Types::CreateChimeWebhookConfigurationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    class CreateSlackChannelConfigurationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chatbot::Types::CreateSlackChannelConfigurationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    class CreateTeamsChannelConfigurationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chatbot::Types::CreateTeamsChannelConfigurationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    class DeleteChimeWebhookConfigurationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chatbot::Types::DeleteChimeWebhookConfigurationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    class DeleteMicrosoftTeamsUserIdentityException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chatbot::Types::DeleteMicrosoftTeamsUserIdentityException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    class DeleteSlackChannelConfigurationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chatbot::Types::DeleteSlackChannelConfigurationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    class DeleteSlackUserIdentityException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chatbot::Types::DeleteSlackUserIdentityException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>There was an issue deleting your Slack workspace.</p>
    class DeleteSlackWorkspaceAuthorizationFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chatbot::Types::DeleteSlackWorkspaceAuthorizationFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    class DeleteTeamsChannelConfigurationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chatbot::Types::DeleteTeamsChannelConfigurationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    class DeleteTeamsConfiguredTeamException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chatbot::Types::DeleteTeamsConfiguredTeamException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    class DescribeChimeWebhookConfigurationsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chatbot::Types::DescribeChimeWebhookConfigurationsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    class DescribeSlackChannelConfigurationsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chatbot::Types::DescribeSlackChannelConfigurationsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    class DescribeSlackUserIdentitiesException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chatbot::Types::DescribeSlackUserIdentitiesException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    class DescribeSlackWorkspacesException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chatbot::Types::DescribeSlackWorkspacesException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    class GetAccountPreferencesException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chatbot::Types::GetAccountPreferencesException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    class GetTeamsChannelConfigurationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chatbot::Types::GetTeamsChannelConfigurationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Unexpected error during processing of request.</p>
    class InternalServiceError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chatbot::Types::InternalServiceError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Your request input doesn't meet the constraints required by AWS Chatbot.</p>
    class InvalidParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chatbot::Types::InvalidParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Your request input doesn't meet the constraints required by AWS Chatbot.</p>
    class InvalidRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chatbot::Types::InvalidRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You have exceeded a service limit for AWS Chatbot.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chatbot::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    class ListMicrosoftTeamsConfiguredTeamsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chatbot::Types::ListMicrosoftTeamsConfiguredTeamsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    class ListMicrosoftTeamsUserIdentitiesException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chatbot::Types::ListMicrosoftTeamsUserIdentitiesException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    class ListTeamsChannelConfigurationsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chatbot::Types::ListTeamsChannelConfigurationsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>We were unable to find the resource for your request</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chatbot::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    class ServiceUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chatbot::Types::ServiceUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The supplied list of tags contains too many tags.</p>
    class TooManyTagsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chatbot::Types::TooManyTagsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because it doesn't have valid credentials for the target resource.</p>
    class UnauthorizedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chatbot::Types::UnauthorizedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    class UpdateAccountPreferencesException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chatbot::Types::UpdateAccountPreferencesException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    class UpdateChimeWebhookConfigurationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chatbot::Types::UpdateChimeWebhookConfigurationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    class UpdateSlackChannelConfigurationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chatbot::Types::UpdateSlackChannelConfigurationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    class UpdateTeamsChannelConfigurationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chatbot::Types::UpdateTeamsChannelConfigurationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end
  end
end
