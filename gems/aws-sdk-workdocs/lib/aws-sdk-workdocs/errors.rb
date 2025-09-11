# frozen_string_literal: true

# This is generated code!

module Aws::WorkDocs
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::WorkDocs::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::WorkDocs::Errors::ServiceError
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
  # * {ConcurrentModificationException}
  # * {ConflictingOperationException}
  # * {CustomMetadataLimitExceededException}
  # * {DeactivatingLastSystemUserException}
  # * {DocumentLockedForCommentsException}
  # * {DraftUploadOutOfSyncException}
  # * {EntityAlreadyExistsException}
  # * {EntityNotExistsException}
  # * {FailedDependencyException}
  # * {IllegalUserStateException}
  # * {InvalidArgumentException}
  # * {InvalidCommentOperationException}
  # * {InvalidOperationException}
  # * {InvalidPasswordException}
  # * {LimitExceededException}
  # * {ProhibitedStateException}
  # * {RequestedEntityTooLargeException}
  # * {ResourceAlreadyCheckedOutException}
  # * {ServiceUnavailableException}
  # * {StorageLimitExceededException}
  # * {StorageLimitWillExceedException}
  # * {TooManyLabelsException}
  # * {TooManySubscriptionsException}
  # * {UnauthorizedOperationException}
  # * {UnauthorizedResourceAccessException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The resource hierarchy is changing.</p>
    class ConcurrentModificationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkDocs::Types::ConcurrentModificationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Another operation is in progress on the resource that conflicts with the current operation.</p>
    class ConflictingOperationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkDocs::Types::ConflictingOperationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The limit has been reached on the number of custom properties for the specified
    #             resource.</p>
    class CustomMetadataLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkDocs::Types::CustomMetadataLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The last user in the organization is being deactivated.</p>
    class DeactivatingLastSystemUserException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkDocs::Types::DeactivatingLastSystemUserException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end
    end

    # <p>This exception is thrown when the document is locked for comments and user tries to
    #             create or delete a comment on that document.</p>
    class DocumentLockedForCommentsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkDocs::Types::DocumentLockedForCommentsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when a valid checkout ID is not presented on document
    #             version upload calls for a document that has been checked out from Web client.</p>
    class DraftUploadOutOfSyncException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkDocs::Types::DraftUploadOutOfSyncException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource already exists.</p>
    class EntityAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkDocs::Types::EntityAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource does not exist.</p>
    class EntityNotExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkDocs::Types::EntityNotExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The IDs of the non-existent resources.</p>
      def entity_ids
        @data[:entity_ids]
      end
    end

    # <p>The Directory Service cannot reach an on-premises instance. Or a dependency
    #             under the control of the organization is failing, such as a connected Active
    #             Directory.</p>
    class FailedDependencyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkDocs::Types::FailedDependencyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The user is undergoing transfer of ownership.</p>
    class IllegalUserStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkDocs::Types::IllegalUserStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The pagination marker or limit fields are not valid.</p>
    class InvalidArgumentException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkDocs::Types::InvalidArgumentException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested operation is not allowed on the specified comment object.</p>
    class InvalidCommentOperationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkDocs::Types::InvalidCommentOperationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation is invalid.</p>
    class InvalidOperationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkDocs::Types::InvalidOperationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The password is invalid.</p>
    class InvalidPasswordException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkDocs::Types::InvalidPasswordException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The maximum of 100,000 files and folders under the parent folder has been exceeded.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkDocs::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified document version is not in the INITIALIZED state.</p>
    class ProhibitedStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkDocs::Types::ProhibitedStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The response is too large to return. The request must include a filter to reduce the size of the response.</p>
    class RequestedEntityTooLargeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkDocs::Types::RequestedEntityTooLargeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource is already checked out.</p>
    class ResourceAlreadyCheckedOutException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkDocs::Types::ResourceAlreadyCheckedOutException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>One or more of the dependencies is unavailable.</p>
    class ServiceUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkDocs::Types::ServiceUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The storage limit has been exceeded.</p>
    class StorageLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkDocs::Types::StorageLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The storage limit will be exceeded.</p>
    class StorageLimitWillExceedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkDocs::Types::StorageLimitWillExceedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The limit has been reached on the number of labels for the specified
    #             resource.</p>
    class TooManyLabelsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkDocs::Types::TooManyLabelsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>You've reached the limit on the number of subscriptions for the WorkDocs
    #             instance.</p>
    class TooManySubscriptionsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkDocs::Types::TooManySubscriptionsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation is not permitted.</p>
    class UnauthorizedOperationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkDocs::Types::UnauthorizedOperationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end
    end

    # <p>The caller does not have access to perform the action on the resource.</p>
    class UnauthorizedResourceAccessException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkDocs::Types::UnauthorizedResourceAccessException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
