# frozen_string_literal: true

# This is generated code!

module Aws::WorkMail
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::WorkMail::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::WorkMail::Errors::ServiceError
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
  # * {DirectoryInUseException}
  # * {DirectoryServiceAuthenticationFailedException}
  # * {DirectoryUnavailableException}
  # * {EmailAddressInUseException}
  # * {EntityAlreadyRegisteredException}
  # * {EntityNotFoundException}
  # * {EntityStateException}
  # * {InvalidConfigurationException}
  # * {InvalidCustomSesConfigurationException}
  # * {InvalidParameterException}
  # * {InvalidPasswordException}
  # * {LimitExceededException}
  # * {MailDomainInUseException}
  # * {MailDomainNotFoundException}
  # * {MailDomainStateException}
  # * {NameAvailabilityException}
  # * {OrganizationNotFoundException}
  # * {OrganizationStateException}
  # * {ReservedNameException}
  # * {ResourceNotFoundException}
  # * {TooManyTagsException}
  # * {UnsupportedOperationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The directory is already in use by another WorkMail organization in the same account and Region.</p>
    class DirectoryInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkMail::Types::DirectoryInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The directory service doesn't recognize the credentials supplied by WorkMail.</p>
    class DirectoryServiceAuthenticationFailedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkMail::Types::DirectoryServiceAuthenticationFailedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The directory is unavailable. It might be located in another Region or deleted.</p>
    class DirectoryUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkMail::Types::DirectoryUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The email address that you're trying to assign is already created for a different
    #          user, group, or resource.</p>
    class EmailAddressInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkMail::Types::EmailAddressInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The user, group, or resource that you're trying to register is already
    #          registered.</p>
    class EntityAlreadyRegisteredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkMail::Types::EntityAlreadyRegisteredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The identifier supplied for the user, group, or resource does not exist in your
    #          organization.</p>
    class EntityNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkMail::Types::EntityNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>You are performing an operation on a user, group, or resource that isn't in the
    #          expected state, such as trying to delete an active user.</p>
    class EntityStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkMail::Types::EntityStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The configuration for a resource isn't valid. A resource must either be able to
    #          auto-respond to requests or have at least one delegate associated that can do so on its
    #          behalf.</p>
    class InvalidConfigurationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkMail::Types::InvalidConfigurationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>You SES configuration has customizations that WorkMail cannot save. The error message lists the invalid setting. For examples of invalid settings, refer to 
    #          <a href="https://docs.aws.amazon.com/ses/latest/APIReference/API_CreateReceiptRule.html">CreateReceiptRule</a>.</p>
    class InvalidCustomSesConfigurationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkMail::Types::InvalidCustomSesConfigurationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>One or more of the input parameters don't match the service's restrictions.</p>
    class InvalidParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkMail::Types::InvalidParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The supplied password doesn't match the minimum security constraints, such as length
    #          or use of special characters.</p>
    class InvalidPasswordException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkMail::Types::InvalidPasswordException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request exceeds the limit of the resource.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkMail::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The domain you're trying to change is in use by another user or organization in your account. See the error message for details.</p>
    class MailDomainInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkMail::Types::MailDomainInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The domain specified is not found in your organization.</p>
    class MailDomainNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkMail::Types::MailDomainNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>After a domain has been added to the organization, it must be verified. The domain is
    #          not yet verified.</p>
    class MailDomainStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkMail::Types::MailDomainStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The user, group, or resource name isn't unique in WorkMail.</p>
    class NameAvailabilityException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkMail::Types::NameAvailabilityException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>An operation received a valid organization identifier that either doesn't belong or
    #          exist in the system.</p>
    class OrganizationNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkMail::Types::OrganizationNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The organization must have a valid state to perform certain
    #          operations on the organization or its members.</p>
    class OrganizationStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkMail::Types::OrganizationStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This user, group, or resource name is not allowed in WorkMail.</p>
    class ReservedNameException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkMail::Types::ReservedNameException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource cannot be found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkMail::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource can have up to 50 user-applied tags.</p>
    class TooManyTagsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkMail::Types::TooManyTagsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>You can't perform a write operation against a read-only directory.</p>
    class UnsupportedOperationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkMail::Types::UnsupportedOperationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
