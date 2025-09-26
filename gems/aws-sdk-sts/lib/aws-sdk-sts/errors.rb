# frozen_string_literal: true

# This is generated code!

module Aws::STS
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::STS::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::STS::Errors::ServiceError
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
  # * {ExpiredTokenException}
  # * {IDPCommunicationErrorException}
  # * {IDPRejectedClaimException}
  # * {InvalidAuthorizationMessageException}
  # * {InvalidIdentityTokenException}
  # * {MalformedPolicyDocumentException}
  # * {PackedPolicyTooLargeException}
  # * {RegionDisabledException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The web identity token that was passed is expired or is not valid. Get a new identity
    #             token from the identity provider and then retry the request.</p>
    class ExpiredTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::STS::Types::ExpiredTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request could not be fulfilled because the identity provider (IDP) that was asked
    #             to verify the incoming identity token could not be reached. This is often a transient
    #             error caused by network conditions. Retry the request a limited number of times so that
    #             you don't exceed the request rate. If the error persists, the identity provider might be
    #             down or not responding.</p>
    class IDPCommunicationErrorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::STS::Types::IDPCommunicationErrorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The identity provider (IdP) reported that authentication failed. This might be because
    #             the claim is invalid.</p>
    #          <p>If this error is returned for the <code>AssumeRoleWithWebIdentity</code> operation, it
    #             can also mean that the claim has expired or has been explicitly revoked. </p>
    class IDPRejectedClaimException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::STS::Types::IDPRejectedClaimException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The error returned if the message passed to <code>DecodeAuthorizationMessage</code>
    #             was invalid. This can happen if the token contains invalid characters, such as line
    #             breaks, or if the message has expired.</p>
    class InvalidAuthorizationMessageException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::STS::Types::InvalidAuthorizationMessageException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The web identity token that was passed could not be validated by Amazon Web Services. Get a new
    #             identity token from the identity provider and then retry the request.</p>
    class InvalidIdentityTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::STS::Types::InvalidIdentityTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the policy document was malformed. The error message
    #             describes the specific error.</p>
    class MalformedPolicyDocumentException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::STS::Types::MalformedPolicyDocumentException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the total packed size of the session policies and
    #             session tags combined was too large. An Amazon Web Services conversion compresses the session policy
    #             document, session policy ARNs, and session tags into a packed binary format that has a
    #             separate limit. The error message indicates by percentage how close the policies and
    #             tags are to the upper size limit. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html">Passing Session Tags in STS</a> in
    #             the <i>IAM User Guide</i>.</p>
    #          <p>You could receive this error even though you meet other defined session policy and
    #             session tag limits. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-limits-entity-length">IAM and STS Entity Character Limits</a> in the <i>IAM User
    #                 Guide</i>.</p>
    class PackedPolicyTooLargeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::STS::Types::PackedPolicyTooLargeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>STS is not activated in the requested region for the account that is being asked to
    #             generate credentials. The account administrator must use the IAM console to activate
    #             STS in that region. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html">Activating and
    #                 Deactivating STS in an Amazon Web Services Region</a> in the <i>IAM User
    #                 Guide</i>.</p>
    class RegionDisabledException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::STS::Types::RegionDisabledException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
