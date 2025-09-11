# frozen_string_literal: true

# This is generated code!

module Aws::WorkSpaces
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::WorkSpaces::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::WorkSpaces::Errors::ServiceError
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
  # * {ApplicationNotSupportedException}
  # * {ComputeNotCompatibleException}
  # * {ConflictException}
  # * {IncompatibleApplicationsException}
  # * {InternalServerException}
  # * {InvalidParameterCombinationException}
  # * {InvalidParameterValuesException}
  # * {InvalidResourceStateException}
  # * {OperatingSystemNotCompatibleException}
  # * {OperationInProgressException}
  # * {OperationNotSupportedException}
  # * {ResourceAlreadyExistsException}
  # * {ResourceAssociatedException}
  # * {ResourceCreationFailedException}
  # * {ResourceInUseException}
  # * {ResourceLimitExceededException}
  # * {ResourceNotFoundException}
  # * {ResourceUnavailableException}
  # * {UnsupportedNetworkConfigurationException}
  # * {UnsupportedWorkspaceConfigurationException}
  # * {ValidationException}
  # * {WorkspacesDefaultRoleNotFoundException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The user is not authorized to access a resource.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkSpaces::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified application is not supported.</p>
    class ApplicationNotSupportedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkSpaces::Types::ApplicationNotSupportedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end
    end

    # <p>The compute type of the WorkSpace is not compatible with the application.</p>
    class ComputeNotCompatibleException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkSpaces::Types::ComputeNotCompatibleException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end
    end

    # <p>The <code>TargetAccountId</code> is already linked or invited.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkSpaces::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified application is not compatible with the resource.</p>
    class IncompatibleApplicationsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkSpaces::Types::IncompatibleApplicationsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end
    end

    # <p>Unexpected server error occured.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkSpaces::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Two or more of the selected parameter values cannot be used together.</p>
    class InvalidParameterCombinationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkSpaces::Types::InvalidParameterCombinationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The exception error message.</p>
      def message
        @data[:message]
      end
    end

    # <p>One or more parameter values are not valid.</p>
    class InvalidParameterValuesException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkSpaces::Types::InvalidParameterValuesException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The exception error message.</p>
      def message
        @data[:message]
      end
    end

    # <p>The state of the resource is not valid for this operation.</p>
    class InvalidResourceStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkSpaces::Types::InvalidResourceStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operating system of the WorkSpace is not compatible with the application.</p>
    class OperatingSystemNotCompatibleException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkSpaces::Types::OperatingSystemNotCompatibleException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end
    end

    # <p>The properties of this WorkSpace are currently being modified. Try again in a moment.</p>
    class OperationInProgressException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkSpaces::Types::OperationInProgressException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This operation is not supported.</p>
    class OperationNotSupportedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkSpaces::Types::OperationNotSupportedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The exception error message.</p>
      def message
        @data[:message]
      end

      # <p>The exception error reason.</p>
      def reason
        @data[:reason]
      end
    end

    # <p>The specified resource already exists.</p>
    class ResourceAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkSpaces::Types::ResourceAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource is associated with a directory.</p>
    class ResourceAssociatedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkSpaces::Types::ResourceAssociatedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource could not be created.</p>
    class ResourceCreationFailedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkSpaces::Types::ResourceCreationFailedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified resource is currently in use.</p>
    class ResourceInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkSpaces::Types::ResourceInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The ID of the resource that is in use.</p>
      def resource_id
        @data[:resource_id]
      end
    end

    # <p>Your resource limits have been exceeded.</p>
    class ResourceLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkSpaces::Types::ResourceLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The exception error message.</p>
      def message
        @data[:message]
      end
    end

    # <p>The resource could not be found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkSpaces::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The resource could not be found.</p>
      def message
        @data[:message]
      end

      # <p>The ID of the resource that could not be found.</p>
      def resource_id
        @data[:resource_id]
      end
    end

    # <p>The specified resource is not available.</p>
    class ResourceUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkSpaces::Types::ResourceUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The exception error message.</p>
      def message
        @data[:message]
      end

      # <p>The identifier of the resource that is not available.</p>
      def resource_id
        @data[:resource_id]
      end
    end

    # <p>The configuration of this network is not supported for this operation, or your network configuration 
    #          conflicts with the Amazon WorkSpaces management network IP range. For more information, see 
    #          <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/amazon-workspaces-vpc.html">
    #             Configure a VPC for Amazon WorkSpaces</a>.</p>
    class UnsupportedNetworkConfigurationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkSpaces::Types::UnsupportedNetworkConfigurationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The configuration of this WorkSpace is not supported for this operation. For more information, see  
    #          <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/required-service-components.html">Required 
    #             Configuration and Service Components for WorkSpaces </a>.</p>
    class UnsupportedWorkspaceConfigurationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkSpaces::Types::UnsupportedWorkspaceConfigurationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>You either haven't provided a <code>TargetAccountId</code> or 
    #          are using the same value for <code>TargetAccountId</code> and <code>SourceAccountId</code>.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkSpaces::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The workspaces_DefaultRole role could not be found. If this is the first time you are registering a directory, you
    #          will need to create the workspaces_DefaultRole role before you can register a directory. For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/workspaces-access-control.html#create-default-role">Creating the workspaces_DefaultRole Role</a>.</p>
    class WorkspacesDefaultRoleNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkSpaces::Types::WorkspacesDefaultRoleNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
