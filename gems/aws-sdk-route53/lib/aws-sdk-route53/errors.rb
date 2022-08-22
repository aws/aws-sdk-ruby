# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Route53

  # When Route53 returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::Route53::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all Route53 errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Route53::Errors::ServiceError
  #       # rescues all Route53 API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {CidrBlockInUseException}
  # * {CidrCollectionAlreadyExistsException}
  # * {CidrCollectionInUseException}
  # * {CidrCollectionVersionMismatchException}
  # * {ConcurrentModification}
  # * {ConflictingDomainExists}
  # * {ConflictingTypes}
  # * {DNSSECNotFound}
  # * {DelegationSetAlreadyCreated}
  # * {DelegationSetAlreadyReusable}
  # * {DelegationSetInUse}
  # * {DelegationSetNotAvailable}
  # * {DelegationSetNotReusable}
  # * {HealthCheckAlreadyExists}
  # * {HealthCheckInUse}
  # * {HealthCheckVersionMismatch}
  # * {HostedZoneAlreadyExists}
  # * {HostedZoneNotEmpty}
  # * {HostedZoneNotFound}
  # * {HostedZoneNotPrivate}
  # * {HostedZonePartiallyDelegated}
  # * {IncompatibleVersion}
  # * {InsufficientCloudWatchLogsResourcePolicy}
  # * {InvalidArgument}
  # * {InvalidChangeBatch}
  # * {InvalidDomainName}
  # * {InvalidInput}
  # * {InvalidKMSArn}
  # * {InvalidKeySigningKeyName}
  # * {InvalidKeySigningKeyStatus}
  # * {InvalidPaginationToken}
  # * {InvalidSigningStatus}
  # * {InvalidTrafficPolicyDocument}
  # * {InvalidVPCId}
  # * {KeySigningKeyAlreadyExists}
  # * {KeySigningKeyInParentDSRecord}
  # * {KeySigningKeyInUse}
  # * {KeySigningKeyWithActiveStatusNotFound}
  # * {LastVPCAssociation}
  # * {LimitsExceeded}
  # * {NoSuchChange}
  # * {NoSuchCidrCollectionException}
  # * {NoSuchCidrLocationException}
  # * {NoSuchCloudWatchLogsLogGroup}
  # * {NoSuchDelegationSet}
  # * {NoSuchGeoLocation}
  # * {NoSuchHealthCheck}
  # * {NoSuchHostedZone}
  # * {NoSuchKeySigningKey}
  # * {NoSuchQueryLoggingConfig}
  # * {NoSuchTrafficPolicy}
  # * {NoSuchTrafficPolicyInstance}
  # * {NotAuthorizedException}
  # * {PriorRequestNotComplete}
  # * {PublicZoneVPCAssociation}
  # * {QueryLoggingConfigAlreadyExists}
  # * {ThrottlingException}
  # * {TooManyHealthChecks}
  # * {TooManyHostedZones}
  # * {TooManyKeySigningKeys}
  # * {TooManyTrafficPolicies}
  # * {TooManyTrafficPolicyInstances}
  # * {TooManyTrafficPolicyVersionsForCurrentPolicy}
  # * {TooManyVPCAssociationAuthorizations}
  # * {TrafficPolicyAlreadyExists}
  # * {TrafficPolicyInUse}
  # * {TrafficPolicyInstanceAlreadyExists}
  # * {VPCAssociationAuthorizationNotFound}
  # * {VPCAssociationNotFound}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors

    extend Aws::Errors::DynamicErrors

    class CidrBlockInUseException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::CidrBlockInUseException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class CidrCollectionAlreadyExistsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::CidrCollectionAlreadyExistsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class CidrCollectionInUseException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::CidrCollectionInUseException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class CidrCollectionVersionMismatchException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::CidrCollectionVersionMismatchException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ConcurrentModification < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::ConcurrentModification] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ConflictingDomainExists < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::ConflictingDomainExists] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ConflictingTypes < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::ConflictingTypes] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class DNSSECNotFound < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::DNSSECNotFound] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class DelegationSetAlreadyCreated < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::DelegationSetAlreadyCreated] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class DelegationSetAlreadyReusable < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::DelegationSetAlreadyReusable] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class DelegationSetInUse < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::DelegationSetInUse] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class DelegationSetNotAvailable < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::DelegationSetNotAvailable] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class DelegationSetNotReusable < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::DelegationSetNotReusable] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class HealthCheckAlreadyExists < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::HealthCheckAlreadyExists] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class HealthCheckInUse < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::HealthCheckInUse] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class HealthCheckVersionMismatch < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::HealthCheckVersionMismatch] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class HostedZoneAlreadyExists < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::HostedZoneAlreadyExists] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class HostedZoneNotEmpty < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::HostedZoneNotEmpty] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class HostedZoneNotFound < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::HostedZoneNotFound] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class HostedZoneNotPrivate < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::HostedZoneNotPrivate] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class HostedZonePartiallyDelegated < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::HostedZonePartiallyDelegated] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class IncompatibleVersion < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::IncompatibleVersion] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class InsufficientCloudWatchLogsResourcePolicy < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::InsufficientCloudWatchLogsResourcePolicy] data
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
      # @param [Aws::Route53::Types::InvalidArgument] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class InvalidChangeBatch < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::InvalidChangeBatch] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def messages
        @data[:messages]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class InvalidDomainName < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::InvalidDomainName] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class InvalidInput < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::InvalidInput] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class InvalidKMSArn < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::InvalidKMSArn] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class InvalidKeySigningKeyName < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::InvalidKeySigningKeyName] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class InvalidKeySigningKeyStatus < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::InvalidKeySigningKeyStatus] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class InvalidPaginationToken < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::InvalidPaginationToken] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class InvalidSigningStatus < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::InvalidSigningStatus] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class InvalidTrafficPolicyDocument < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::InvalidTrafficPolicyDocument] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class InvalidVPCId < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::InvalidVPCId] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class KeySigningKeyAlreadyExists < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::KeySigningKeyAlreadyExists] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class KeySigningKeyInParentDSRecord < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::KeySigningKeyInParentDSRecord] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class KeySigningKeyInUse < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::KeySigningKeyInUse] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class KeySigningKeyWithActiveStatusNotFound < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::KeySigningKeyWithActiveStatusNotFound] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class LastVPCAssociation < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::LastVPCAssociation] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class LimitsExceeded < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::LimitsExceeded] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class NoSuchChange < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::NoSuchChange] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class NoSuchCidrCollectionException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::NoSuchCidrCollectionException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class NoSuchCidrLocationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::NoSuchCidrLocationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class NoSuchCloudWatchLogsLogGroup < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::NoSuchCloudWatchLogsLogGroup] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class NoSuchDelegationSet < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::NoSuchDelegationSet] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class NoSuchGeoLocation < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::NoSuchGeoLocation] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class NoSuchHealthCheck < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::NoSuchHealthCheck] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class NoSuchHostedZone < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::NoSuchHostedZone] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class NoSuchKeySigningKey < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::NoSuchKeySigningKey] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class NoSuchQueryLoggingConfig < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::NoSuchQueryLoggingConfig] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class NoSuchTrafficPolicy < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::NoSuchTrafficPolicy] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class NoSuchTrafficPolicyInstance < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::NoSuchTrafficPolicyInstance] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class NotAuthorizedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::NotAuthorizedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class PriorRequestNotComplete < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::PriorRequestNotComplete] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class PublicZoneVPCAssociation < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::PublicZoneVPCAssociation] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class QueryLoggingConfigAlreadyExists < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::QueryLoggingConfigAlreadyExists] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ThrottlingException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::ThrottlingException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class TooManyHealthChecks < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::TooManyHealthChecks] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class TooManyHostedZones < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::TooManyHostedZones] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class TooManyKeySigningKeys < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::TooManyKeySigningKeys] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class TooManyTrafficPolicies < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::TooManyTrafficPolicies] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class TooManyTrafficPolicyInstances < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::TooManyTrafficPolicyInstances] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class TooManyTrafficPolicyVersionsForCurrentPolicy < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::TooManyTrafficPolicyVersionsForCurrentPolicy] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class TooManyVPCAssociationAuthorizations < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::TooManyVPCAssociationAuthorizations] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class TrafficPolicyAlreadyExists < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::TrafficPolicyAlreadyExists] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class TrafficPolicyInUse < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::TrafficPolicyInUse] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class TrafficPolicyInstanceAlreadyExists < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::TrafficPolicyInstanceAlreadyExists] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class VPCAssociationAuthorizationNotFound < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::VPCAssociationAuthorizationNotFound] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class VPCAssociationNotFound < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Route53::Types::VPCAssociationNotFound] data
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
