# frozen_string_literal: true

# This is generated code!

module Aws::SupportApp
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::SupportApp::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::SupportApp::Errors::ServiceError
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
  # * {AccessDeniedException}
  # * {ConflictException}
  # * {InternalServerException}
  # * {ResourceNotFoundException}
  # * {ServiceQuotaExceededException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>You don't have sufficient permission to perform this action.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SupportApp::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Your request has a conflict. For example, you might receive this error if you try the
    #       following:</p>
    #          <ul>
    #             <li>
    #                <p>Add, update, or delete a Slack channel configuration before you add a Slack workspace
    #           to your Amazon Web Services account.</p>
    #             </li>
    #             <li>
    #                <p>Add a Slack channel configuration that already exists in your Amazon Web Services account.</p>
    #             </li>
    #             <li>
    #                <p>Delete a Slack channel configuration for a live chat channel.</p>
    #             </li>
    #             <li>
    #                <p>Delete a Slack workspace from your Amazon Web Services account that has an active live chat
    #           channel.</p>
    #             </li>
    #             <li>
    #                <p>Call the <code>RegisterSlackWorkspaceForOrganization</code> API from an Amazon Web Services account
    #           that doesn't belong to an organization.</p>
    #             </li>
    #             <li>
    #                <p>Call the <code>RegisterSlackWorkspaceForOrganization</code> API from a member account,
    #           but the management account hasn't registered that workspace yet for the
    #           organization.</p>
    #             </li>
    #          </ul>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SupportApp::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SupportApp::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified resource is missing or doesn't exist, such as an account alias, Slack
    #       channel configuration, or Slack workspace configuration.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SupportApp::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Your Service Quotas request exceeds the quota for the service. For example, your Service Quotas request to
    #       Amazon Web Services Support App might exceed the maximum number of workspaces or channels per account, or the maximum
    #       number of accounts per Slack channel.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SupportApp::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Your request input doesn't meet the constraints that the Amazon Web Services Support App specifies.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SupportApp::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end
  end
end
