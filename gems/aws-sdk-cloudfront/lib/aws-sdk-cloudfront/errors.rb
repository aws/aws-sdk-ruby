# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudFront
  module Errors

    extend Aws::Errors::DynamicErrors

    class AccessDenied < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::AccessDenied] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class BatchTooLarge < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::BatchTooLarge] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class CNAMEAlreadyExists < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::CNAMEAlreadyExists] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class CannotChangeImmutablePublicKeyFields < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::CannotChangeImmutablePublicKeyFields] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class CloudFrontOriginAccessIdentityAlreadyExists < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::CloudFrontOriginAccessIdentityAlreadyExists] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class CloudFrontOriginAccessIdentityInUse < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::CloudFrontOriginAccessIdentityInUse] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class DistributionAlreadyExists < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::DistributionAlreadyExists] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class DistributionNotDisabled < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::DistributionNotDisabled] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class FieldLevelEncryptionConfigAlreadyExists < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::FieldLevelEncryptionConfigAlreadyExists] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class FieldLevelEncryptionConfigInUse < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::FieldLevelEncryptionConfigInUse] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class FieldLevelEncryptionProfileAlreadyExists < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::FieldLevelEncryptionProfileAlreadyExists] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class FieldLevelEncryptionProfileInUse < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::FieldLevelEncryptionProfileInUse] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class FieldLevelEncryptionProfileSizeExceeded < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::FieldLevelEncryptionProfileSizeExceeded] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class IllegalUpdate < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::IllegalUpdate] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class InconsistentQuantities < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::InconsistentQuantities] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class InvalidArgument < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::InvalidArgument] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class InvalidDefaultRootObject < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::InvalidDefaultRootObject] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class InvalidErrorCode < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::InvalidErrorCode] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class InvalidForwardCookies < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::InvalidForwardCookies] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class InvalidGeoRestrictionParameter < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::InvalidGeoRestrictionParameter] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class InvalidHeadersForS3Origin < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::InvalidHeadersForS3Origin] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class InvalidIfMatchVersion < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::InvalidIfMatchVersion] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class InvalidLambdaFunctionAssociation < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::InvalidLambdaFunctionAssociation] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class InvalidLocationCode < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::InvalidLocationCode] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class InvalidMinimumProtocolVersion < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::InvalidMinimumProtocolVersion] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class InvalidOrigin < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::InvalidOrigin] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class InvalidOriginAccessIdentity < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::InvalidOriginAccessIdentity] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class InvalidOriginKeepaliveTimeout < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::InvalidOriginKeepaliveTimeout] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class InvalidOriginReadTimeout < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::InvalidOriginReadTimeout] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class InvalidProtocolSettings < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::InvalidProtocolSettings] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class InvalidQueryStringParameters < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::InvalidQueryStringParameters] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class InvalidRelativePath < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::InvalidRelativePath] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class InvalidRequiredProtocol < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::InvalidRequiredProtocol] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class InvalidResponseCode < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::InvalidResponseCode] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class InvalidTTLOrder < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::InvalidTTLOrder] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class InvalidTagging < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::InvalidTagging] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class InvalidViewerCertificate < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::InvalidViewerCertificate] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class InvalidWebACLId < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::InvalidWebACLId] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class MissingBody < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::MissingBody] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class NoSuchCloudFrontOriginAccessIdentity < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::NoSuchCloudFrontOriginAccessIdentity] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class NoSuchDistribution < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::NoSuchDistribution] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class NoSuchFieldLevelEncryptionConfig < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::NoSuchFieldLevelEncryptionConfig] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class NoSuchFieldLevelEncryptionProfile < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::NoSuchFieldLevelEncryptionProfile] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class NoSuchInvalidation < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::NoSuchInvalidation] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class NoSuchOrigin < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::NoSuchOrigin] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class NoSuchPublicKey < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::NoSuchPublicKey] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class NoSuchResource < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::NoSuchResource] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class NoSuchStreamingDistribution < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::NoSuchStreamingDistribution] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class PreconditionFailed < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::PreconditionFailed] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class PublicKeyAlreadyExists < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::PublicKeyAlreadyExists] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class PublicKeyInUse < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::PublicKeyInUse] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class QueryArgProfileEmpty < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::QueryArgProfileEmpty] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class StreamingDistributionAlreadyExists < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::StreamingDistributionAlreadyExists] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class StreamingDistributionNotDisabled < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::StreamingDistributionNotDisabled] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class TooManyCacheBehaviors < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::TooManyCacheBehaviors] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class TooManyCertificates < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::TooManyCertificates] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class TooManyCloudFrontOriginAccessIdentities < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::TooManyCloudFrontOriginAccessIdentities] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class TooManyCookieNamesInWhiteList < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::TooManyCookieNamesInWhiteList] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class TooManyDistributionCNAMEs < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::TooManyDistributionCNAMEs] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class TooManyDistributions < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::TooManyDistributions] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class TooManyDistributionsAssociatedToFieldLevelEncryptionConfig < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::TooManyDistributionsAssociatedToFieldLevelEncryptionConfig] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class TooManyDistributionsWithLambdaAssociations < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::TooManyDistributionsWithLambdaAssociations] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class TooManyFieldLevelEncryptionConfigs < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::TooManyFieldLevelEncryptionConfigs] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class TooManyFieldLevelEncryptionContentTypeProfiles < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::TooManyFieldLevelEncryptionContentTypeProfiles] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class TooManyFieldLevelEncryptionEncryptionEntities < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::TooManyFieldLevelEncryptionEncryptionEntities] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class TooManyFieldLevelEncryptionFieldPatterns < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::TooManyFieldLevelEncryptionFieldPatterns] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class TooManyFieldLevelEncryptionProfiles < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::TooManyFieldLevelEncryptionProfiles] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class TooManyFieldLevelEncryptionQueryArgProfiles < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::TooManyFieldLevelEncryptionQueryArgProfiles] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class TooManyHeadersInForwardedValues < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::TooManyHeadersInForwardedValues] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class TooManyInvalidationsInProgress < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::TooManyInvalidationsInProgress] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class TooManyLambdaFunctionAssociations < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::TooManyLambdaFunctionAssociations] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class TooManyOriginCustomHeaders < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::TooManyOriginCustomHeaders] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class TooManyOriginGroupsPerDistribution < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::TooManyOriginGroupsPerDistribution] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class TooManyOrigins < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::TooManyOrigins] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class TooManyPublicKeys < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::TooManyPublicKeys] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class TooManyQueryStringParameters < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::TooManyQueryStringParameters] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class TooManyStreamingDistributionCNAMEs < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::TooManyStreamingDistributionCNAMEs] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class TooManyStreamingDistributions < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::TooManyStreamingDistributions] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class TooManyTrustedSigners < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::TooManyTrustedSigners] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class TrustedSignerDoesNotExist < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFront::Types::TrustedSignerDoesNotExist] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

  end
end
