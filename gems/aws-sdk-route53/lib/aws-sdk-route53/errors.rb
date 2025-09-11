# frozen_string_literal: true

# This is generated code!

module Aws::Route53
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Route53::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Route53::Errors::ServiceError
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
    extend Smithy::Client::DynamicErrors

    # <p>This CIDR block is already in use.</p>
    class CidrBlockInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::CidrBlockInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A CIDR collection with this name and a different caller reference already exists in this account.</p>
    class CidrCollectionAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::CidrCollectionAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This CIDR collection is in use, and isn't empty.</p>
    class CidrCollectionInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::CidrCollectionInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The CIDR collection version you provided, doesn't match the one in the
    # 				<code>ListCidrCollections</code> operation.</p>
    class CidrCollectionVersionMismatchException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::CidrCollectionVersionMismatchException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Another user submitted a request to create, update, or delete the object at the same
    # 			time that you did. Retry the request. </p>
    class ConcurrentModification < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::ConcurrentModification] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>The cause of this error depends on the operation that you're performing:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Create a public hosted zone:</b> Two hosted zones
    # 					that have the same name or that have a parent/child relationship (example.com
    # 					and test.example.com) can't have any common name servers. You tried to create a
    # 					hosted zone that has the same name as an existing hosted zone or that's the
    # 					parent or child of an existing hosted zone, and you specified a delegation set
    # 					that shares one or more name servers with the existing hosted zone. For more
    # 					information, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateReusableDelegationSet.html">CreateReusableDelegationSet</a>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Create a private hosted zone:</b> A hosted zone
    # 					with the specified name already exists and is already associated with the Amazon
    # 					VPC that you specified.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Associate VPCs with a private hosted zone:</b>
    # 					The VPC that you specified is already associated with another hosted zone that
    # 					has the same name.</p>
    #             </li>
    #          </ul>
    class ConflictingDomainExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::ConflictingDomainExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>You tried to update a traffic policy instance by using a traffic policy version that
    # 			has a different DNS type than the current type for the instance. You specified the type
    # 			in the JSON document in the <code>CreateTrafficPolicy</code> or
    # 				<code>CreateTrafficPolicyVersion</code>request. </p>
    class ConflictingTypes < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::ConflictingTypes] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>The hosted zone doesn't have any DNSSEC resources.</p>
    class DNSSECNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::DNSSECNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A delegation set with the same owner and caller reference combination has already been
    # 			created.</p>
    class DelegationSetAlreadyCreated < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::DelegationSetAlreadyCreated] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>The specified delegation set has already been marked as reusable.</p>
    class DelegationSetAlreadyReusable < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::DelegationSetAlreadyReusable] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>The specified delegation contains associated hosted zones which must be deleted before
    # 			the reusable delegation set can be deleted.</p>
    class DelegationSetInUse < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::DelegationSetInUse] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>You can create a hosted zone that has the same name as an existing hosted zone
    # 			(example.com is common), but there is a limit to the number of hosted zones that have
    # 			the same name. If you get this error, Amazon Route 53 has reached that limit. If you own
    # 			the domain name and Route 53 generates this error, contact Customer Support.</p>
    class DelegationSetNotAvailable < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::DelegationSetNotAvailable] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>A reusable delegation set with the specified ID does not exist.</p>
    class DelegationSetNotReusable < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::DelegationSetNotReusable] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p> The health check you're attempting to create already exists. Amazon Route 53 returns
    # 			this error when you submit a request that has the following values:</p>
    #          <ul>
    #             <li>
    #                <p>The same value for <code>CallerReference</code> as an existing health check,
    # 					and one or more values that differ from the existing health check that has the
    # 					same caller reference.</p>
    #             </li>
    #             <li>
    #                <p>The same value for <code>CallerReference</code> as a health check that you
    # 					created and later deleted, regardless of the other settings in the
    # 					request.</p>
    #             </li>
    #          </ul>
    class HealthCheckAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::HealthCheckAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>This error code is not in use.</p>
    class HealthCheckInUse < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::HealthCheckInUse] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>The value of <code>HealthCheckVersion</code> in the request doesn't match the value of
    # 				<code>HealthCheckVersion</code> in the health check.</p>
    class HealthCheckVersionMismatch < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::HealthCheckVersionMismatch] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The hosted zone you're trying to create already exists. Amazon Route 53 returns this
    # 			error when a hosted zone has already been created with the specified
    # 				<code>CallerReference</code>.</p>
    class HostedZoneAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::HostedZoneAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>The hosted zone contains resource records that are not SOA or NS records.</p>
    class HostedZoneNotEmpty < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::HostedZoneNotEmpty] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>The specified HostedZone can't be found.</p>
    class HostedZoneNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::HostedZoneNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>The specified hosted zone is a public hosted zone, not a private hosted zone.</p>
    class HostedZoneNotPrivate < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::HostedZoneNotPrivate] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>The hosted zone nameservers don't match the parent nameservers. The hosted zone and
    # 			parent must have the same nameservers.</p>
    class HostedZonePartiallyDelegated < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::HostedZonePartiallyDelegated] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource you're trying to access is unsupported on this Amazon Route 53
    # 			endpoint.</p>
    class IncompatibleVersion < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::IncompatibleVersion] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Amazon Route 53 doesn't have the permissions required to create log streams and send
    # 			query logs to log streams. Possible causes include the following:</p>
    #          <ul>
    #             <li>
    #                <p>There is no resource policy that specifies the log group ARN in the value for
    # 						<code>Resource</code>.</p>
    #             </li>
    #             <li>
    #                <p>The resource policy that includes the log group ARN in the value for
    # 						<code>Resource</code> doesn't have the necessary permissions.</p>
    #             </li>
    #             <li>
    #                <p>The resource policy hasn't finished propagating yet.</p>
    #             </li>
    #             <li>
    #                <p>The Key management service (KMS) key you specified doesn’t exist or it can’t
    # 					be used with the log group associated with query log. Update or provide a
    # 					resource policy to grant permissions for the KMS key.</p>
    #             </li>
    #             <li>
    #                <p>The Key management service (KMS) key you specified is marked as 
    # 				disabled for the log group associated with query log. Update or provide 
    # 				a resource policy to grant permissions for the KMS key.</p>
    #             </li>
    #          </ul>
    class InsufficientCloudWatchLogsResourcePolicy < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::InsufficientCloudWatchLogsResourcePolicy] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Parameter name is not valid.</p>
    class InvalidArgument < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::InvalidArgument] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>This exception contains a list of messages that might contain one or more error
    # 			messages. Each error message indicates one error in the change batch.</p>
    class InvalidChangeBatch < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::InvalidChangeBatch] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def messages
        @data[:messages]
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified domain name is not valid.</p>
    class InvalidDomainName < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::InvalidDomainName] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>The input is not valid.</p>
    class InvalidInput < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::InvalidInput] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>The KeyManagementServiceArn that you specified isn't valid to use with DNSSEC
    # 			signing.</p>
    class InvalidKMSArn < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::InvalidKMSArn] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The key-signing key (KSK) name that you specified isn't a valid name.</p>
    class InvalidKeySigningKeyName < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::InvalidKeySigningKeyName] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The key-signing key (KSK) status isn't valid or another KSK has the status
    # 				<code>INTERNAL_FAILURE</code>.</p>
    class InvalidKeySigningKeyStatus < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::InvalidKeySigningKeyStatus] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The value that you specified to get the second or subsequent page of results is
    # 			invalid.</p>
    class InvalidPaginationToken < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::InvalidPaginationToken] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Your hosted zone status isn't valid for this operation. In the hosted zone, change the
    # 			status to enable <code>DNSSEC</code> or disable <code>DNSSEC</code>.</p>
    class InvalidSigningStatus < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::InvalidSigningStatus] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The format of the traffic policy document that you specified in the
    # 				<code>Document</code> element is not valid.</p>
    class InvalidTrafficPolicyDocument < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::InvalidTrafficPolicyDocument] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>The VPC ID that you specified either isn't a valid ID or the current account is not
    # 			authorized to access this VPC.</p>
    class InvalidVPCId < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::InvalidVPCId] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>You've already created a key-signing key (KSK) with this name or with the same customer managed key ARN.</p>
    class KeySigningKeyAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::KeySigningKeyAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The key-signing key (KSK) is specified in a parent DS record.</p>
    class KeySigningKeyInParentDSRecord < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::KeySigningKeyInParentDSRecord] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The key-signing key (KSK) that you specified can't be deactivated because it's the
    # 			only KSK for a currently-enabled DNSSEC. Disable DNSSEC signing, or add or enable
    # 			another KSK.</p>
    class KeySigningKeyInUse < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::KeySigningKeyInUse] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A key-signing key (KSK) with <code>ACTIVE</code> status wasn't found.</p>
    class KeySigningKeyWithActiveStatusNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::KeySigningKeyWithActiveStatusNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The VPC that you're trying to disassociate from the private hosted zone is the last
    # 			VPC that is associated with the hosted zone. Amazon Route 53 doesn't support
    # 			disassociating the last VPC from a hosted zone.</p>
    class LastVPCAssociation < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::LastVPCAssociation] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>This operation can't be completed because the current account has reached the
    # 			limit on the resource you are trying to create. To request a higher limit, <a href="http://aws.amazon.com/route53-request">create a case</a> with the Amazon Web Services Support
    # 			Center.</p>
    class LimitsExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::LimitsExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>A change with the specified change ID does not exist.</p>
    class NoSuchChange < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::NoSuchChange] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The CIDR collection you specified, doesn't exist.</p>
    class NoSuchCidrCollectionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::NoSuchCidrCollectionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The CIDR collection location doesn't match any locations in your account.</p>
    class NoSuchCidrLocationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::NoSuchCidrLocationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>There is no CloudWatch Logs log group with the specified ARN.</p>
    class NoSuchCloudWatchLogsLogGroup < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::NoSuchCloudWatchLogsLogGroup] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A reusable delegation set with the specified ID does not exist.</p>
    class NoSuchDelegationSet < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::NoSuchDelegationSet] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>Amazon Route 53 doesn't support the specified geographic location. For a list of
    # 			supported geolocation codes, see the <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_GeoLocation.html">GeoLocation</a> data
    # 			type.</p>
    class NoSuchGeoLocation < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::NoSuchGeoLocation] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>No health check exists with the specified ID.</p>
    class NoSuchHealthCheck < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::NoSuchHealthCheck] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>No hosted zone exists with the ID that you specified.</p>
    class NoSuchHostedZone < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::NoSuchHostedZone] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>The specified key-signing key (KSK) doesn't exist.</p>
    class NoSuchKeySigningKey < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::NoSuchKeySigningKey] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>There is no DNS query logging configuration with the specified ID.</p>
    class NoSuchQueryLoggingConfig < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::NoSuchQueryLoggingConfig] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>No traffic policy exists with the specified ID.</p>
    class NoSuchTrafficPolicy < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::NoSuchTrafficPolicy] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>No traffic policy instance exists with the specified ID.</p>
    class NoSuchTrafficPolicyInstance < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::NoSuchTrafficPolicyInstance] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>Associating the specified VPC with the specified hosted zone has not been
    # 			authorized.</p>
    class NotAuthorizedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::NotAuthorizedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>If Amazon Route 53 can't process a request before the next request arrives, it will
    # 			reject subsequent requests for the same hosted zone and return an <code>HTTP 400
    # 				error</code> (<code>Bad request</code>). If Route 53 returns this error repeatedly
    # 			for the same request, we recommend that you wait, in intervals of increasing duration,
    # 			before you try the request again.</p>
    class PriorRequestNotComplete < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::PriorRequestNotComplete] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>You're trying to associate a VPC with a public hosted zone. Amazon Route 53 doesn't
    # 			support associating a VPC with a public hosted zone.</p>
    class PublicZoneVPCAssociation < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::PublicZoneVPCAssociation] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>You can create only one query logging configuration for a hosted zone, and a query
    # 			logging configuration already exists for this hosted zone.</p>
    class QueryLoggingConfigAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::QueryLoggingConfigAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The limit on the number of requests per second was exceeded.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This health check can't be created because the current account has reached the limit
    # 			on the number of active health checks.</p>
    #          <p>For information about default limits, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html">Limits</a> in the
    # 				<i>Amazon Route 53 Developer Guide</i>.</p>
    #          <p>For information about how to get the current limit for an account, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetAccountLimit.html">GetAccountLimit</a>. To request a higher limit, <a href="http://aws.amazon.com/route53-request">create a case</a> with the Amazon Web Services Support
    # 			Center.</p>
    #          <p>You have reached the maximum number of active health checks for an Amazon Web Services account. To request a higher limit, <a href="http://aws.amazon.com/route53-request">create a case</a> with the Amazon Web Services Support
    # 			Center.</p>
    class TooManyHealthChecks < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::TooManyHealthChecks] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This operation can't be completed either because the current account has reached the
    # 			limit on the number of hosted zones or because you've reached the limit on the number of
    # 			hosted zones that can be associated with a reusable delegation set.</p>
    #          <p>For information about default limits, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html">Limits</a> in the
    # 				<i>Amazon Route 53 Developer Guide</i>.</p>
    #          <p>To get the current limit on hosted zones that can be created by an account, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetAccountLimit.html">GetAccountLimit</a>.</p>
    #          <p>To get the current limit on hosted zones that can be associated with a reusable
    # 			delegation set, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetReusableDelegationSetLimit.html">GetReusableDelegationSetLimit</a>.</p>
    #          <p>To request a higher limit, <a href="http://aws.amazon.com/route53-request">create a
    # 				case</a> with the Amazon Web Services Support Center.</p>
    class TooManyHostedZones < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::TooManyHostedZones] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>You've reached the limit for the number of key-signing keys (KSKs). Remove at least
    # 			one KSK, and then try again.</p>
    class TooManyKeySigningKeys < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::TooManyKeySigningKeys] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This traffic policy can't be created because the current account has reached the limit
    # 			on the number of traffic policies.</p>
    #          <p>For information about default limits, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html">Limits</a> in the
    # 				<i>Amazon Route 53 Developer Guide</i>.</p>
    #          <p>To get the current limit for an account, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetAccountLimit.html">GetAccountLimit</a>. </p>
    #          <p>To request a higher limit, <a href="http://aws.amazon.com/route53-request">create a
    # 				case</a> with the Amazon Web Services Support Center.</p>
    class TooManyTrafficPolicies < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::TooManyTrafficPolicies] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>This traffic policy instance can't be created because the current account has reached
    # 			the limit on the number of traffic policy instances.</p>
    #          <p>For information about default limits, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html">Limits</a> in the
    # 				<i>Amazon Route 53 Developer Guide</i>.</p>
    #          <p>For information about how to get the current limit for an account, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetAccountLimit.html">GetAccountLimit</a>.</p>
    #          <p>To request a higher limit, <a href="http://aws.amazon.com/route53-request">create a
    # 				case</a> with the Amazon Web Services Support Center.</p>
    class TooManyTrafficPolicyInstances < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::TooManyTrafficPolicyInstances] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>This traffic policy version can't be created because you've reached the limit of 1000
    # 			on the number of versions that you can create for the current traffic policy.</p>
    #          <p>To create more traffic policy versions, you can use <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetTrafficPolicy.html">GetTrafficPolicy</a>
    # 			to get the traffic policy document for a specified traffic policy version, and then use
    # 				<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateTrafficPolicy.html">CreateTrafficPolicy</a> to create a new traffic policy using the traffic policy
    # 			document.</p>
    class TooManyTrafficPolicyVersionsForCurrentPolicy < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::TooManyTrafficPolicyVersionsForCurrentPolicy] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>You've created the maximum number of authorizations that can be created for the
    # 			specified hosted zone. To authorize another VPC to be associated with the hosted zone,
    # 			submit a <code>DeleteVPCAssociationAuthorization</code> request to remove an existing
    # 			authorization. To get a list of existing authorizations, submit a
    # 				<code>ListVPCAssociationAuthorizations</code> request.</p>
    class TooManyVPCAssociationAuthorizations < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::TooManyVPCAssociationAuthorizations] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>A traffic policy that has the same value for <code>Name</code> already exists.</p>
    class TrafficPolicyAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::TrafficPolicyAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>One or more traffic policy instances were created by using the specified traffic
    # 			policy.</p>
    class TrafficPolicyInUse < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::TrafficPolicyInUse] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>There is already a traffic policy instance with the specified ID.</p>
    class TrafficPolicyInstanceAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::TrafficPolicyInstanceAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>The VPC that you specified is not authorized to be associated with the hosted
    # 			zone.</p>
    class VPCAssociationAuthorizationNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::VPCAssociationAuthorizationNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>The specified VPC and hosted zone are not currently associated.</p>
    class VPCAssociationNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53::Types::VPCAssociationNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The specified VPC or hosted zone weren't found.</p>
      def message
        @data[:message]
      end
    end
  end
end
