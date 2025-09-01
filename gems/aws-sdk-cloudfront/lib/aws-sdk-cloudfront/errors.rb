# frozen_string_literal: true

# This is generated code!

module Aws::CloudFront
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::CloudFront::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CloudFront::Errors::ServiceError
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
  # * {AccessDenied}
  # * {BatchTooLarge}
  # * {CNAMEAlreadyExists}
  # * {CachePolicyAlreadyExists}
  # * {CachePolicyInUse}
  # * {CannotChangeImmutablePublicKeyFields}
  # * {CannotDeleteEntityWhileInUse}
  # * {CannotUpdateEntityWhileInUse}
  # * {CloudFrontOriginAccessIdentityAlreadyExists}
  # * {CloudFrontOriginAccessIdentityInUse}
  # * {ContinuousDeploymentPolicyAlreadyExists}
  # * {ContinuousDeploymentPolicyInUse}
  # * {DistributionAlreadyExists}
  # * {DistributionNotDisabled}
  # * {EntityAlreadyExists}
  # * {EntityLimitExceeded}
  # * {EntityNotFound}
  # * {EntitySizeLimitExceeded}
  # * {FieldLevelEncryptionConfigAlreadyExists}
  # * {FieldLevelEncryptionConfigInUse}
  # * {FieldLevelEncryptionProfileAlreadyExists}
  # * {FieldLevelEncryptionProfileInUse}
  # * {FieldLevelEncryptionProfileSizeExceeded}
  # * {FunctionAlreadyExists}
  # * {FunctionInUse}
  # * {FunctionSizeLimitExceeded}
  # * {IllegalDelete}
  # * {IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior}
  # * {IllegalOriginAccessConfiguration}
  # * {IllegalUpdate}
  # * {InconsistentQuantities}
  # * {InvalidArgument}
  # * {InvalidAssociation}
  # * {InvalidDefaultRootObject}
  # * {InvalidDomainNameForOriginAccessControl}
  # * {InvalidErrorCode}
  # * {InvalidForwardCookies}
  # * {InvalidFunctionAssociation}
  # * {InvalidGeoRestrictionParameter}
  # * {InvalidHeadersForS3Origin}
  # * {InvalidIfMatchVersion}
  # * {InvalidLambdaFunctionAssociation}
  # * {InvalidLocationCode}
  # * {InvalidMinimumProtocolVersion}
  # * {InvalidOrigin}
  # * {InvalidOriginAccessControl}
  # * {InvalidOriginAccessIdentity}
  # * {InvalidOriginKeepaliveTimeout}
  # * {InvalidOriginReadTimeout}
  # * {InvalidProtocolSettings}
  # * {InvalidQueryStringParameters}
  # * {InvalidRelativePath}
  # * {InvalidRequiredProtocol}
  # * {InvalidResponseCode}
  # * {InvalidTTLOrder}
  # * {InvalidTagging}
  # * {InvalidViewerCertificate}
  # * {InvalidWebACLId}
  # * {KeyGroupAlreadyExists}
  # * {MissingBody}
  # * {MonitoringSubscriptionAlreadyExists}
  # * {NoSuchCachePolicy}
  # * {NoSuchCloudFrontOriginAccessIdentity}
  # * {NoSuchContinuousDeploymentPolicy}
  # * {NoSuchDistribution}
  # * {NoSuchFieldLevelEncryptionConfig}
  # * {NoSuchFieldLevelEncryptionProfile}
  # * {NoSuchFunctionExists}
  # * {NoSuchInvalidation}
  # * {NoSuchMonitoringSubscription}
  # * {NoSuchOrigin}
  # * {NoSuchOriginAccessControl}
  # * {NoSuchOriginRequestPolicy}
  # * {NoSuchPublicKey}
  # * {NoSuchRealtimeLogConfig}
  # * {NoSuchResource}
  # * {NoSuchResponseHeadersPolicy}
  # * {NoSuchStreamingDistribution}
  # * {OriginAccessControlAlreadyExists}
  # * {OriginAccessControlInUse}
  # * {OriginRequestPolicyAlreadyExists}
  # * {OriginRequestPolicyInUse}
  # * {PreconditionFailed}
  # * {PublicKeyAlreadyExists}
  # * {PublicKeyInUse}
  # * {QueryArgProfileEmpty}
  # * {RealtimeLogConfigAlreadyExists}
  # * {RealtimeLogConfigInUse}
  # * {RealtimeLogConfigOwnerMismatch}
  # * {ResourceInUse}
  # * {ResourceNotDisabled}
  # * {ResponseHeadersPolicyAlreadyExists}
  # * {ResponseHeadersPolicyInUse}
  # * {StagingDistributionInUse}
  # * {StreamingDistributionAlreadyExists}
  # * {StreamingDistributionNotDisabled}
  # * {TestFunctionFailed}
  # * {TooLongCSPInResponseHeadersPolicy}
  # * {TooManyCacheBehaviors}
  # * {TooManyCachePolicies}
  # * {TooManyCertificates}
  # * {TooManyCloudFrontOriginAccessIdentities}
  # * {TooManyContinuousDeploymentPolicies}
  # * {TooManyCookieNamesInWhiteList}
  # * {TooManyCookiesInCachePolicy}
  # * {TooManyCookiesInOriginRequestPolicy}
  # * {TooManyCustomHeadersInResponseHeadersPolicy}
  # * {TooManyDistributionCNAMEs}
  # * {TooManyDistributions}
  # * {TooManyDistributionsAssociatedToCachePolicy}
  # * {TooManyDistributionsAssociatedToFieldLevelEncryptionConfig}
  # * {TooManyDistributionsAssociatedToKeyGroup}
  # * {TooManyDistributionsAssociatedToOriginAccessControl}
  # * {TooManyDistributionsAssociatedToOriginRequestPolicy}
  # * {TooManyDistributionsAssociatedToResponseHeadersPolicy}
  # * {TooManyDistributionsWithFunctionAssociations}
  # * {TooManyDistributionsWithLambdaAssociations}
  # * {TooManyDistributionsWithSingleFunctionARN}
  # * {TooManyFieldLevelEncryptionConfigs}
  # * {TooManyFieldLevelEncryptionContentTypeProfiles}
  # * {TooManyFieldLevelEncryptionEncryptionEntities}
  # * {TooManyFieldLevelEncryptionFieldPatterns}
  # * {TooManyFieldLevelEncryptionProfiles}
  # * {TooManyFieldLevelEncryptionQueryArgProfiles}
  # * {TooManyFunctionAssociations}
  # * {TooManyFunctions}
  # * {TooManyHeadersInCachePolicy}
  # * {TooManyHeadersInForwardedValues}
  # * {TooManyHeadersInOriginRequestPolicy}
  # * {TooManyInvalidationsInProgress}
  # * {TooManyKeyGroups}
  # * {TooManyKeyGroupsAssociatedToDistribution}
  # * {TooManyLambdaFunctionAssociations}
  # * {TooManyOriginAccessControls}
  # * {TooManyOriginCustomHeaders}
  # * {TooManyOriginGroupsPerDistribution}
  # * {TooManyOriginRequestPolicies}
  # * {TooManyOrigins}
  # * {TooManyPublicKeys}
  # * {TooManyPublicKeysInKeyGroup}
  # * {TooManyQueryStringParameters}
  # * {TooManyQueryStringsInCachePolicy}
  # * {TooManyQueryStringsInOriginRequestPolicy}
  # * {TooManyRealtimeLogConfigs}
  # * {TooManyRemoveHeadersInResponseHeadersPolicy}
  # * {TooManyResponseHeadersPolicies}
  # * {TooManyStreamingDistributionCNAMEs}
  # * {TooManyStreamingDistributions}
  # * {TooManyTrustedSigners}
  # * {TrustedKeyGroupDoesNotExist}
  # * {TrustedSignerDoesNotExist}
  # * {UnsupportedOperation}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Access denied.</p>
    class AccessDenied < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::AccessDenied] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Invalidation batch specified is too large.</p>
    class BatchTooLarge < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::BatchTooLarge] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The CNAME specified is already defined for CloudFront.</p>
    class CNAMEAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::CNAMEAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A cache policy with this name already exists. You must provide a unique name. To modify an existing cache policy, use <code>UpdateCachePolicy</code>.</p>
    class CachePolicyAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::CachePolicyAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Cannot delete the cache policy because it is attached to one or more cache behaviors.</p>
    class CachePolicyInUse < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::CachePolicyInUse] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You can't change the value of a public key.</p>
    class CannotChangeImmutablePublicKeyFields < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::CannotChangeImmutablePublicKeyFields] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The entity cannot be deleted while it is in use.</p>
    class CannotDeleteEntityWhileInUse < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::CannotDeleteEntityWhileInUse] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The entity cannot be updated while it is in use.</p>
    class CannotUpdateEntityWhileInUse < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::CannotUpdateEntityWhileInUse] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>If the <code>CallerReference</code> is a value you already sent in a previous request to create an identity but the content of the <code>CloudFrontOriginAccessIdentityConfig</code> is different from the original request, CloudFront returns a <code>CloudFrontOriginAccessIdentityAlreadyExists</code> error. </p>
    class CloudFrontOriginAccessIdentityAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::CloudFrontOriginAccessIdentityAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The Origin Access Identity specified is already in use.</p>
    class CloudFrontOriginAccessIdentityInUse < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::CloudFrontOriginAccessIdentityInUse] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A continuous deployment policy with this configuration already exists.</p>
    class ContinuousDeploymentPolicyAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::ContinuousDeploymentPolicyAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You cannot delete a continuous deployment policy that is associated with a primary distribution.</p>
    class ContinuousDeploymentPolicyInUse < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::ContinuousDeploymentPolicyInUse] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The caller reference you attempted to create the distribution with is associated with another distribution.</p>
    class DistributionAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::DistributionAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified CloudFront distribution is not disabled. You must disable the distribution before you can delete it.</p>
    class DistributionNotDisabled < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::DistributionNotDisabled] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The entity already exists. You must provide a unique entity.</p>
    class EntityAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::EntityAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The entity limit has been exceeded.</p>
    class EntityLimitExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::EntityLimitExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The entity was not found.</p>
    class EntityNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::EntityNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The entity size limit was exceeded.</p>
    class EntitySizeLimitExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::EntitySizeLimitExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified configuration for field-level encryption already exists.</p>
    class FieldLevelEncryptionConfigAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::FieldLevelEncryptionConfigAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified configuration for field-level encryption is in use.</p>
    class FieldLevelEncryptionConfigInUse < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::FieldLevelEncryptionConfigInUse] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified profile for field-level encryption already exists.</p>
    class FieldLevelEncryptionProfileAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::FieldLevelEncryptionProfileAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified profile for field-level encryption is in use.</p>
    class FieldLevelEncryptionProfileInUse < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::FieldLevelEncryptionProfileInUse] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The maximum size of a profile for field-level encryption was exceeded.</p>
    class FieldLevelEncryptionProfileSizeExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::FieldLevelEncryptionProfileSizeExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A function with the same name already exists in this Amazon Web Services account. To create a function, you must provide a unique name. To update an existing function, use <code>UpdateFunction</code>.</p>
    class FunctionAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::FunctionAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Cannot delete the function because it's attached to one or more cache behaviors.</p>
    class FunctionInUse < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::FunctionInUse] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The function is too large. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    class FunctionSizeLimitExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::FunctionSizeLimitExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Deletion is not allowed for this entity.</p>
    class IllegalDelete < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::IllegalDelete] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified configuration for field-level encryption can't be associated with the specified cache behavior.</p>
    class IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>An origin cannot contain both an origin access control (OAC) and an origin access identity (OAI).</p>
    class IllegalOriginAccessConfiguration < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::IllegalOriginAccessConfiguration] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The update contains modifications that are not allowed.</p>
    class IllegalUpdate < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::IllegalUpdate] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The value of <code>Quantity</code> and the size of <code>Items</code> don't match.</p>
    class InconsistentQuantities < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::InconsistentQuantities] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>An argument is invalid.</p>
    class InvalidArgument < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::InvalidArgument] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified CloudFront resource can't be associated.</p>
    class InvalidAssociation < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::InvalidAssociation] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The default root object file name is too big or contains an invalid character.</p>
    class InvalidDefaultRootObject < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::InvalidDefaultRootObject] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>An origin access control is associated with an origin whose domain name is not supported.</p>
    class InvalidDomainNameForOriginAccessControl < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::InvalidDomainNameForOriginAccessControl] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>An invalid error code was specified.</p>
    class InvalidErrorCode < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::InvalidErrorCode] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Your request contains forward cookies option which doesn't match with the expectation for the <code>whitelisted</code> list of cookie names. Either list of cookie names has been specified when not allowed or list of cookie names is missing when expected.</p>
    class InvalidForwardCookies < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::InvalidForwardCookies] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A CloudFront function association is invalid.</p>
    class InvalidFunctionAssociation < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::InvalidFunctionAssociation] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified geo restriction parameter is not valid.</p>
    class InvalidGeoRestrictionParameter < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::InvalidGeoRestrictionParameter] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The headers specified are not valid for an Amazon S3 origin.</p>
    class InvalidHeadersForS3Origin < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::InvalidHeadersForS3Origin] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The <code>If-Match</code> version is missing or not valid.</p>
    class InvalidIfMatchVersion < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::InvalidIfMatchVersion] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified Lambda@Edge function association is invalid.</p>
    class InvalidLambdaFunctionAssociation < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::InvalidLambdaFunctionAssociation] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The location code specified is not valid.</p>
    class InvalidLocationCode < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::InvalidLocationCode] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The minimum protocol version specified is not valid.</p>
    class InvalidMinimumProtocolVersion < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::InvalidMinimumProtocolVersion] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The Amazon S3 origin server specified does not refer to a valid Amazon S3 bucket.</p>
    class InvalidOrigin < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::InvalidOrigin] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The origin access control is not valid.</p>
    class InvalidOriginAccessControl < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::InvalidOriginAccessControl] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The origin access identity is not valid or doesn't exist.</p>
    class InvalidOriginAccessIdentity < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::InvalidOriginAccessIdentity] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The keep alive timeout specified for the origin is not valid.</p>
    class InvalidOriginKeepaliveTimeout < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::InvalidOriginKeepaliveTimeout] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The read timeout specified for the origin is not valid.</p>
    class InvalidOriginReadTimeout < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::InvalidOriginReadTimeout] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You cannot specify SSLv3 as the minimum protocol version if you only want to support only clients that support Server Name Indication (SNI).</p>
    class InvalidProtocolSettings < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::InvalidProtocolSettings] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The query string parameters specified are not valid.</p>
    class InvalidQueryStringParameters < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::InvalidQueryStringParameters] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The relative path is too big, is not URL-encoded, or does not begin with a slash (/).</p>
    class InvalidRelativePath < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::InvalidRelativePath] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>This operation requires the HTTPS protocol. Ensure that you specify the HTTPS protocol in your request, or omit the <code>RequiredProtocols</code> element from your distribution configuration.</p>
    class InvalidRequiredProtocol < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::InvalidRequiredProtocol] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A response code is not valid.</p>
    class InvalidResponseCode < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::InvalidResponseCode] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The TTL order specified is not valid.</p>
    class InvalidTTLOrder < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::InvalidTTLOrder] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The tagging specified is not valid.</p>
    class InvalidTagging < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::InvalidTagging] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A viewer certificate specified is not valid.</p>
    class InvalidViewerCertificate < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::InvalidViewerCertificate] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A web ACL ID specified is not valid. To specify a web ACL created using the latest version of WAF, use the ACL ARN, for example <code>arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/473e64fd-f30b-4765-81a0-62ad96dd167a</code>. To specify a web ACL created using WAF Classic, use the ACL ID, for example <code>473e64fd-f30b-4765-81a0-62ad96dd167a</code>.</p>
    class InvalidWebACLId < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::InvalidWebACLId] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A key group with this name already exists. You must provide a unique name. To modify an existing key group, use <code>UpdateKeyGroup</code>.</p>
    class KeyGroupAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::KeyGroupAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>This operation requires a body. Ensure that the body is present and the <code>Content-Type</code> header is set.</p>
    class MissingBody < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::MissingBody] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A monitoring subscription already exists for the specified distribution.</p>
    class MonitoringSubscriptionAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::MonitoringSubscriptionAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The cache policy does not exist.</p>
    class NoSuchCachePolicy < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::NoSuchCachePolicy] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified origin access identity does not exist.</p>
    class NoSuchCloudFrontOriginAccessIdentity < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::NoSuchCloudFrontOriginAccessIdentity] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The continuous deployment policy doesn't exist.</p>
    class NoSuchContinuousDeploymentPolicy < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::NoSuchContinuousDeploymentPolicy] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified distribution does not exist.</p>
    class NoSuchDistribution < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::NoSuchDistribution] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified configuration for field-level encryption doesn't exist.</p>
    class NoSuchFieldLevelEncryptionConfig < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::NoSuchFieldLevelEncryptionConfig] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified profile for field-level encryption doesn't exist.</p>
    class NoSuchFieldLevelEncryptionProfile < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::NoSuchFieldLevelEncryptionProfile] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The function does not exist.</p>
    class NoSuchFunctionExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::NoSuchFunctionExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified invalidation does not exist.</p>
    class NoSuchInvalidation < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::NoSuchInvalidation] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A monitoring subscription does not exist for the specified distribution.</p>
    class NoSuchMonitoringSubscription < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::NoSuchMonitoringSubscription] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>No origin exists with the specified <code>Origin Id</code>.</p>
    class NoSuchOrigin < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::NoSuchOrigin] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The origin access control does not exist.</p>
    class NoSuchOriginAccessControl < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::NoSuchOriginAccessControl] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The origin request policy does not exist.</p>
    class NoSuchOriginRequestPolicy < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::NoSuchOriginRequestPolicy] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified public key doesn't exist.</p>
    class NoSuchPublicKey < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::NoSuchPublicKey] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The real-time log configuration does not exist.</p>
    class NoSuchRealtimeLogConfig < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::NoSuchRealtimeLogConfig] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A resource that was specified is not valid.</p>
    class NoSuchResource < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::NoSuchResource] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The response headers policy does not exist.</p>
    class NoSuchResponseHeadersPolicy < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::NoSuchResponseHeadersPolicy] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified streaming distribution does not exist.</p>
    class NoSuchStreamingDistribution < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::NoSuchStreamingDistribution] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>An origin access control with the specified parameters already exists.</p>
    class OriginAccessControlAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::OriginAccessControlAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Cannot delete the origin access control because it's in use by one or more distributions.</p>
    class OriginAccessControlInUse < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::OriginAccessControlInUse] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>An origin request policy with this name already exists. You must provide a unique name. To modify an existing origin request policy, use <code>UpdateOriginRequestPolicy</code>.</p>
    class OriginRequestPolicyAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::OriginRequestPolicyAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Cannot delete the origin request policy because it is attached to one or more cache behaviors.</p>
    class OriginRequestPolicyInUse < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::OriginRequestPolicyInUse] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The precondition in one or more of the request fields evaluated to <code>false</code>.</p>
    class PreconditionFailed < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::PreconditionFailed] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified public key already exists.</p>
    class PublicKeyAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::PublicKeyAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified public key is in use.</p>
    class PublicKeyInUse < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::PublicKeyInUse] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>No profile specified for the field-level encryption query argument.</p>
    class QueryArgProfileEmpty < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::QueryArgProfileEmpty] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A real-time log configuration with this name already exists. You must provide a unique name. To modify an existing real-time log configuration, use <code>UpdateRealtimeLogConfig</code>.</p>
    class RealtimeLogConfigAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::RealtimeLogConfigAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Cannot delete the real-time log configuration because it is attached to one or more cache behaviors.</p>
    class RealtimeLogConfigInUse < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::RealtimeLogConfigInUse] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified real-time log configuration belongs to a different Amazon Web Services account.</p>
    class RealtimeLogConfigOwnerMismatch < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::RealtimeLogConfigOwnerMismatch] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Cannot delete this resource because it is in use.</p>
    class ResourceInUse < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::ResourceInUse] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified CloudFront resource hasn't been disabled yet.</p>
    class ResourceNotDisabled < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::ResourceNotDisabled] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A response headers policy with this name already exists. You must provide a unique name. To modify an existing response headers policy, use <code>UpdateResponseHeadersPolicy</code>.</p>
    class ResponseHeadersPolicyAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::ResponseHeadersPolicyAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Cannot delete the response headers policy because it is attached to one or more cache behaviors in a CloudFront distribution.</p>
    class ResponseHeadersPolicyInUse < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::ResponseHeadersPolicyInUse] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A continuous deployment policy for this staging distribution already exists.</p>
    class StagingDistributionInUse < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::StagingDistributionInUse] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The caller reference you attempted to create the streaming distribution with is associated with another distribution</p>
    class StreamingDistributionAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::StreamingDistributionAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified CloudFront distribution is not disabled. You must disable the distribution before you can delete it.</p>
    class StreamingDistributionNotDisabled < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::StreamingDistributionNotDisabled] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The CloudFront function failed.</p>
    class TestFunctionFailed < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TestFunctionFailed] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The length of the <code>Content-Security-Policy</code> header value in the response headers policy exceeds the maximum.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    class TooLongCSPInResponseHeadersPolicy < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooLongCSPInResponseHeadersPolicy] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You cannot create more cache behaviors for the distribution.</p>
    class TooManyCacheBehaviors < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyCacheBehaviors] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You have reached the maximum number of cache policies for this Amazon Web Services account. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    class TooManyCachePolicies < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyCachePolicies] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You cannot create anymore custom SSL/TLS certificates.</p>
    class TooManyCertificates < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyCertificates] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Processing your request would cause you to exceed the maximum number of origin access identities allowed.</p>
    class TooManyCloudFrontOriginAccessIdentities < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyCloudFrontOriginAccessIdentities] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You have reached the maximum number of continuous deployment policies for this Amazon Web Services account.</p>
    class TooManyContinuousDeploymentPolicies < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyContinuousDeploymentPolicies] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Your request contains more cookie names in the whitelist than are allowed per cache behavior.</p>
    class TooManyCookieNamesInWhiteList < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyCookieNamesInWhiteList] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The number of cookies in the cache policy exceeds the maximum. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    class TooManyCookiesInCachePolicy < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyCookiesInCachePolicy] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The number of cookies in the origin request policy exceeds the maximum. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    class TooManyCookiesInOriginRequestPolicy < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyCookiesInOriginRequestPolicy] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The number of custom headers in the response headers policy exceeds the maximum.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    class TooManyCustomHeadersInResponseHeadersPolicy < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyCustomHeadersInResponseHeadersPolicy] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Your request contains more CNAMEs than are allowed per distribution.</p>
    class TooManyDistributionCNAMEs < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyDistributionCNAMEs] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Processing your request would cause you to exceed the maximum number of distributions allowed.</p>
    class TooManyDistributions < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyDistributions] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The maximum number of distributions have been associated with the specified cache policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    class TooManyDistributionsAssociatedToCachePolicy < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyDistributionsAssociatedToCachePolicy] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The maximum number of distributions have been associated with the specified configuration for field-level encryption.</p>
    class TooManyDistributionsAssociatedToFieldLevelEncryptionConfig < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyDistributionsAssociatedToFieldLevelEncryptionConfig] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The number of distributions that reference this key group is more than the maximum allowed. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    class TooManyDistributionsAssociatedToKeyGroup < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyDistributionsAssociatedToKeyGroup] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The maximum number of distributions have been associated with the specified origin access control.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    class TooManyDistributionsAssociatedToOriginAccessControl < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyDistributionsAssociatedToOriginAccessControl] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The maximum number of distributions have been associated with the specified origin request policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    class TooManyDistributionsAssociatedToOriginRequestPolicy < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyDistributionsAssociatedToOriginRequestPolicy] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The maximum number of distributions have been associated with the specified response headers policy.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    class TooManyDistributionsAssociatedToResponseHeadersPolicy < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyDistributionsAssociatedToResponseHeadersPolicy] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You have reached the maximum number of distributions that are associated with a CloudFront function. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    class TooManyDistributionsWithFunctionAssociations < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyDistributionsWithFunctionAssociations] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Processing your request would cause the maximum number of distributions with Lambda@Edge function associations per owner to be exceeded.</p>
    class TooManyDistributionsWithLambdaAssociations < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyDistributionsWithLambdaAssociations] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The maximum number of distributions have been associated with the specified Lambda@Edge function.</p>
    class TooManyDistributionsWithSingleFunctionARN < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyDistributionsWithSingleFunctionARN] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The maximum number of configurations for field-level encryption have been created.</p>
    class TooManyFieldLevelEncryptionConfigs < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyFieldLevelEncryptionConfigs] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The maximum number of content type profiles for field-level encryption have been created.</p>
    class TooManyFieldLevelEncryptionContentTypeProfiles < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyFieldLevelEncryptionContentTypeProfiles] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The maximum number of encryption entities for field-level encryption have been created.</p>
    class TooManyFieldLevelEncryptionEncryptionEntities < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyFieldLevelEncryptionEncryptionEntities] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The maximum number of field patterns for field-level encryption have been created.</p>
    class TooManyFieldLevelEncryptionFieldPatterns < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyFieldLevelEncryptionFieldPatterns] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The maximum number of profiles for field-level encryption have been created.</p>
    class TooManyFieldLevelEncryptionProfiles < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyFieldLevelEncryptionProfiles] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The maximum number of query arg profiles for field-level encryption have been created.</p>
    class TooManyFieldLevelEncryptionQueryArgProfiles < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyFieldLevelEncryptionQueryArgProfiles] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You have reached the maximum number of CloudFront function associations for this distribution. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    class TooManyFunctionAssociations < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyFunctionAssociations] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You have reached the maximum number of CloudFront functions for this Amazon Web Services account. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    class TooManyFunctions < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyFunctions] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The number of headers in the cache policy exceeds the maximum. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    class TooManyHeadersInCachePolicy < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyHeadersInCachePolicy] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Your request contains too many headers in forwarded values.</p>
    class TooManyHeadersInForwardedValues < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyHeadersInForwardedValues] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The number of headers in the origin request policy exceeds the maximum. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    class TooManyHeadersInOriginRequestPolicy < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyHeadersInOriginRequestPolicy] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You have exceeded the maximum number of allowable InProgress invalidation batch requests, or invalidation objects.</p>
    class TooManyInvalidationsInProgress < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyInvalidationsInProgress] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You have reached the maximum number of key groups for this Amazon Web Services account. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    class TooManyKeyGroups < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyKeyGroups] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The number of key groups referenced by this distribution is more than the maximum allowed. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    class TooManyKeyGroupsAssociatedToDistribution < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyKeyGroupsAssociatedToDistribution] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Your request contains more Lambda@Edge function associations than are allowed per distribution.</p>
    class TooManyLambdaFunctionAssociations < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyLambdaFunctionAssociations] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The number of origin access controls in your Amazon Web Services account exceeds the maximum allowed.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    class TooManyOriginAccessControls < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyOriginAccessControls] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Your request contains too many origin custom headers.</p>
    class TooManyOriginCustomHeaders < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyOriginCustomHeaders] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Processing your request would cause you to exceed the maximum number of origin groups allowed.</p>
    class TooManyOriginGroupsPerDistribution < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyOriginGroupsPerDistribution] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You have reached the maximum number of origin request policies for this Amazon Web Services account. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    class TooManyOriginRequestPolicies < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyOriginRequestPolicies] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You cannot create more origins for the distribution.</p>
    class TooManyOrigins < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyOrigins] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The maximum number of public keys for field-level encryption have been created. To create a new public key, delete one of the existing keys.</p>
    class TooManyPublicKeys < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyPublicKeys] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The number of public keys in this key group is more than the maximum allowed. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    class TooManyPublicKeysInKeyGroup < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyPublicKeysInKeyGroup] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Your request contains too many query string parameters.</p>
    class TooManyQueryStringParameters < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyQueryStringParameters] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The number of query strings in the cache policy exceeds the maximum. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    class TooManyQueryStringsInCachePolicy < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyQueryStringsInCachePolicy] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The number of query strings in the origin request policy exceeds the maximum. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    class TooManyQueryStringsInOriginRequestPolicy < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyQueryStringsInOriginRequestPolicy] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You have reached the maximum number of real-time log configurations for this Amazon Web Services account. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    class TooManyRealtimeLogConfigs < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyRealtimeLogConfigs] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The number of headers in <code>RemoveHeadersConfig</code> in the response headers policy exceeds the maximum.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    class TooManyRemoveHeadersInResponseHeadersPolicy < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyRemoveHeadersInResponseHeadersPolicy] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You have reached the maximum number of response headers policies for this Amazon Web Services account.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    class TooManyResponseHeadersPolicies < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyResponseHeadersPolicies] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Your request contains more CNAMEs than are allowed per distribution.</p>
    class TooManyStreamingDistributionCNAMEs < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyStreamingDistributionCNAMEs] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Processing your request would cause you to exceed the maximum number of streaming distributions allowed.</p>
    class TooManyStreamingDistributions < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyStreamingDistributions] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Your request contains more trusted signers than are allowed per distribution.</p>
    class TooManyTrustedSigners < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TooManyTrustedSigners] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified key group does not exist.</p>
    class TrustedKeyGroupDoesNotExist < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TrustedKeyGroupDoesNotExist] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>One or more of your trusted signers don't exist.</p>
    class TrustedSignerDoesNotExist < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::TrustedSignerDoesNotExist] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>This operation is not supported in this Amazon Web Services Region.</p>
    class UnsupportedOperation < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFront::Types::UnsupportedOperation] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end
  end
end
