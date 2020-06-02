# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::GuardDuty
  module Types

    # @note When making an API call, you may pass AcceptInvitationRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         master_id: "String", # required
    #         invitation_id: "String", # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   The unique ID of the detector of the GuardDuty member account.
    #   @return [String]
    #
    # @!attribute [rw] master_id
    #   The account ID of the master GuardDuty account whose invitation
    #   you're accepting.
    #   @return [String]
    #
    # @!attribute [rw] invitation_id
    #   The value that is used to validate the master account to the member
    #   account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/AcceptInvitationRequest AWS API Documentation
    #
    class AcceptInvitationRequest < Struct.new(
      :detector_id,
      :master_id,
      :invitation_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/AcceptInvitationResponse AWS API Documentation
    #
    class AcceptInvitationResponse < Aws::EmptyStructure; end

    # Contains information on the current access control policies for the
    # bucket.
    #
    # @!attribute [rw] allows_public_read_access
    #   A value that indicates whether public read access for the bucket is
    #   enabled through an Access Control List (ACL).
    #   @return [Boolean]
    #
    # @!attribute [rw] allows_public_write_access
    #   A value that indicates whether public write access for the bucket is
    #   enabled through an Access Control List (ACL).
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/AccessControlList AWS API Documentation
    #
    class AccessControlList < Struct.new(
      :allows_public_read_access,
      :allows_public_write_access)
      include Aws::Structure
    end

    # Contains information about the access keys.
    #
    # @!attribute [rw] access_key_id
    #   The access key ID of the user.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The principal ID of the user.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The name of the user.
    #   @return [String]
    #
    # @!attribute [rw] user_type
    #   The type of the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/AccessKeyDetails AWS API Documentation
    #
    class AccessKeyDetails < Struct.new(
      :access_key_id,
      :principal_id,
      :user_name,
      :user_type)
      include Aws::Structure
    end

    # Contains information about the account.
    #
    # @note When making an API call, you may pass AccountDetail
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         email: "Email", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The member account ID.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address of the member account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/AccountDetail AWS API Documentation
    #
    class AccountDetail < Struct.new(
      :account_id,
      :email)
      include Aws::Structure
    end

    # Contains information about the account level permissions on the S3
    # bucket.
    #
    # @!attribute [rw] block_public_access
    #   Describes the S3 Block Public Access settings of the bucket's
    #   parent account.
    #   @return [Types::BlockPublicAccess]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/AccountLevelPermissions AWS API Documentation
    #
    class AccountLevelPermissions < Struct.new(
      :block_public_access)
      include Aws::Structure
    end

    # Contains information about actions.
    #
    # @!attribute [rw] action_type
    #   The GuardDuty finding activity type.
    #   @return [String]
    #
    # @!attribute [rw] aws_api_call_action
    #   Information about the AWS\_API\_CALL action described in this
    #   finding.
    #   @return [Types::AwsApiCallAction]
    #
    # @!attribute [rw] dns_request_action
    #   Information about the DNS\_REQUEST action described in this finding.
    #   @return [Types::DnsRequestAction]
    #
    # @!attribute [rw] network_connection_action
    #   Information about the NETWORK\_CONNECTION action described in this
    #   finding.
    #   @return [Types::NetworkConnectionAction]
    #
    # @!attribute [rw] port_probe_action
    #   Information about the PORT\_PROBE action described in this finding.
    #   @return [Types::PortProbeAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Action AWS API Documentation
    #
    class Action < Struct.new(
      :action_type,
      :aws_api_call_action,
      :dns_request_action,
      :network_connection_action,
      :port_probe_action)
      include Aws::Structure
    end

    # The account within the organization specified as the GuardDuty
    # delegated administrator.
    #
    # @!attribute [rw] admin_account_id
    #   The AWS account ID for the account.
    #   @return [String]
    #
    # @!attribute [rw] admin_status
    #   Indicates whether the account is enabled as the delegated
    #   administrator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/AdminAccount AWS API Documentation
    #
    class AdminAccount < Struct.new(
      :admin_account_id,
      :admin_status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ArchiveFindingsRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         finding_ids: ["FindingId"], # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   The ID of the detector that specifies the GuardDuty service whose
    #   findings you want to archive.
    #   @return [String]
    #
    # @!attribute [rw] finding_ids
    #   The IDs of the findings that you want to archive.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ArchiveFindingsRequest AWS API Documentation
    #
    class ArchiveFindingsRequest < Struct.new(
      :detector_id,
      :finding_ids)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ArchiveFindingsResponse AWS API Documentation
    #
    class ArchiveFindingsResponse < Aws::EmptyStructure; end

    # Contains information about the API operation.
    #
    # @!attribute [rw] api
    #   The AWS API name.
    #   @return [String]
    #
    # @!attribute [rw] caller_type
    #   The AWS API caller type.
    #   @return [String]
    #
    # @!attribute [rw] domain_details
    #   The domain information for the AWS API call.
    #   @return [Types::DomainDetails]
    #
    # @!attribute [rw] remote_ip_details
    #   The remote IP information of the connection.
    #   @return [Types::RemoteIpDetails]
    #
    # @!attribute [rw] service_name
    #   The AWS service name whose API was invoked.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/AwsApiCallAction AWS API Documentation
    #
    class AwsApiCallAction < Struct.new(
      :api,
      :caller_type,
      :domain_details,
      :remote_ip_details,
      :service_name)
      include Aws::Structure
    end

    # A bad request exception object.
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The error type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message,
      :type)
      include Aws::Structure
    end

    # Contains information on how the bucker owner's S3 Block Public Access
    # settings are being applied to the S3 bucket. See [S3 Block Public
    # Access][1] for more information.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html
    #
    # @!attribute [rw] ignore_public_acls
    #   Indicates if S3 Block Public Access is set to `IgnorePublicAcls`.
    #   @return [Boolean]
    #
    # @!attribute [rw] restrict_public_buckets
    #   Indicates if S3 Block Public Access is set to
    #   `RestrictPublicBuckets`.
    #   @return [Boolean]
    #
    # @!attribute [rw] block_public_acls
    #   Indicates if S3 Block Public Access is set to `BlockPublicAcls`.
    #   @return [Boolean]
    #
    # @!attribute [rw] block_public_policy
    #   Indicates if S3 Block Public Access is set to `BlockPublicPolicy`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/BlockPublicAccess AWS API Documentation
    #
    class BlockPublicAccess < Struct.new(
      :ignore_public_acls,
      :restrict_public_buckets,
      :block_public_acls,
      :block_public_policy)
      include Aws::Structure
    end

    # Contains information about the bucket level permissions for the S3
    # bucket.
    #
    # @!attribute [rw] access_control_list
    #   Contains information on how Access Control Policies are applied to
    #   the bucket.
    #   @return [Types::AccessControlList]
    #
    # @!attribute [rw] bucket_policy
    #   Contains information on the bucket policies for the S3 bucket.
    #   @return [Types::BucketPolicy]
    #
    # @!attribute [rw] block_public_access
    #   Contains information on which account level S3 Block Public Access
    #   settings are applied to the S3 bucket.
    #   @return [Types::BlockPublicAccess]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/BucketLevelPermissions AWS API Documentation
    #
    class BucketLevelPermissions < Struct.new(
      :access_control_list,
      :bucket_policy,
      :block_public_access)
      include Aws::Structure
    end

    # Contains information on the current bucket policies for the S3 bucket.
    #
    # @!attribute [rw] allows_public_read_access
    #   A value that indicates whether public read access for the bucket is
    #   enabled through a bucket policy.
    #   @return [Boolean]
    #
    # @!attribute [rw] allows_public_write_access
    #   A value that indicates whether public write access for the bucket is
    #   enabled through a bucket policy.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/BucketPolicy AWS API Documentation
    #
    class BucketPolicy < Struct.new(
      :allows_public_read_access,
      :allows_public_write_access)
      include Aws::Structure
    end

    # Contains information about the city associated with the IP address.
    #
    # @!attribute [rw] city_name
    #   The city name of the remote IP address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/City AWS API Documentation
    #
    class City < Struct.new(
      :city_name)
      include Aws::Structure
    end

    # Contains information about the condition.
    #
    # @note When making an API call, you may pass Condition
    #   data as a hash:
    #
    #       {
    #         eq: ["String"],
    #         neq: ["String"],
    #         gt: 1,
    #         gte: 1,
    #         lt: 1,
    #         lte: 1,
    #         equals: ["String"],
    #         not_equals: ["String"],
    #         greater_than: 1,
    #         greater_than_or_equal: 1,
    #         less_than: 1,
    #         less_than_or_equal: 1,
    #       }
    #
    # @!attribute [rw] eq
    #   Represents the *equal* condition to be applied to a single field
    #   when querying for findings.
    #   @return [Array<String>]
    #
    # @!attribute [rw] neq
    #   Represents the *not equal* condition to be applied to a single field
    #   when querying for findings.
    #   @return [Array<String>]
    #
    # @!attribute [rw] gt
    #   Represents a *greater than* condition to be applied to a single
    #   field when querying for findings.
    #   @return [Integer]
    #
    # @!attribute [rw] gte
    #   Represents a *greater than or equal* condition to be applied to a
    #   single field when querying for findings.
    #   @return [Integer]
    #
    # @!attribute [rw] lt
    #   Represents a *less than* condition to be applied to a single field
    #   when querying for findings.
    #   @return [Integer]
    #
    # @!attribute [rw] lte
    #   Represents a *less than or equal* condition to be applied to a
    #   single field when querying for findings.
    #   @return [Integer]
    #
    # @!attribute [rw] equals
    #   Represents an *equal* **** condition to be applied to a single field
    #   when querying for findings.
    #   @return [Array<String>]
    #
    # @!attribute [rw] not_equals
    #   Represents a *not equal* **** condition to be applied to a single
    #   field when querying for findings.
    #   @return [Array<String>]
    #
    # @!attribute [rw] greater_than
    #   Represents a *greater than* condition to be applied to a single
    #   field when querying for findings.
    #   @return [Integer]
    #
    # @!attribute [rw] greater_than_or_equal
    #   Represents a *greater than or equal* condition to be applied to a
    #   single field when querying for findings.
    #   @return [Integer]
    #
    # @!attribute [rw] less_than
    #   Represents a *less than* condition to be applied to a single field
    #   when querying for findings.
    #   @return [Integer]
    #
    # @!attribute [rw] less_than_or_equal
    #   Represents a *less than or equal* condition to be applied to a
    #   single field when querying for findings.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Condition AWS API Documentation
    #
    class Condition < Struct.new(
      :eq,
      :neq,
      :gt,
      :gte,
      :lt,
      :lte,
      :equals,
      :not_equals,
      :greater_than,
      :greater_than_or_equal,
      :less_than,
      :less_than_or_equal)
      include Aws::Structure
    end

    # Contains information about the country where the remote IP address is
    # located.
    #
    # @!attribute [rw] country_code
    #   The country code of the remote IP address.
    #   @return [String]
    #
    # @!attribute [rw] country_name
    #   The country name of the remote IP address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Country AWS API Documentation
    #
    class Country < Struct.new(
      :country_code,
      :country_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDetectorRequest
    #   data as a hash:
    #
    #       {
    #         enable: false, # required
    #         client_token: "ClientToken",
    #         finding_publishing_frequency: "FIFTEEN_MINUTES", # accepts FIFTEEN_MINUTES, ONE_HOUR, SIX_HOURS
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] enable
    #   A Boolean value that specifies whether the detector is to be
    #   enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_token
    #   The idempotency token for the create request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] finding_publishing_frequency
    #   An enum value that specifies how frequently updated findings are
    #   exported.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be added to a new detector resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateDetectorRequest AWS API Documentation
    #
    class CreateDetectorRequest < Struct.new(
      :enable,
      :client_token,
      :finding_publishing_frequency,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The unique ID of the created detector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateDetectorResponse AWS API Documentation
    #
    class CreateDetectorResponse < Struct.new(
      :detector_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateFilterRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         name: "FilterName", # required
    #         description: "FilterDescription",
    #         action: "NOOP", # accepts NOOP, ARCHIVE
    #         rank: 1,
    #         finding_criteria: { # required
    #           criterion: {
    #             "String" => {
    #               eq: ["String"],
    #               neq: ["String"],
    #               gt: 1,
    #               gte: 1,
    #               lt: 1,
    #               lte: 1,
    #               equals: ["String"],
    #               not_equals: ["String"],
    #               greater_than: 1,
    #               greater_than_or_equal: 1,
    #               less_than: 1,
    #               less_than_or_equal: 1,
    #             },
    #           },
    #         },
    #         client_token: "ClientToken",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] detector_id
    #   The unique ID of the detector of the GuardDuty account that you want
    #   to create a filter for.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the filter.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   Specifies the action that is to be applied to the findings that
    #   match the filter.
    #   @return [String]
    #
    # @!attribute [rw] rank
    #   Specifies the position of the filter in the list of current filters.
    #   Also specifies the order in which this filter is applied to the
    #   findings.
    #   @return [Integer]
    #
    # @!attribute [rw] finding_criteria
    #   Represents the criteria to be used in the filter for querying
    #   findings.
    #
    #   You can only use the following attributes to query findings:
    #
    #   * accountId
    #
    #   * region
    #
    #   * confidence
    #
    #   * id
    #
    #   * resource.accessKeyDetails.accessKeyId
    #
    #   * resource.accessKeyDetails.principalId
    #
    #   * resource.accessKeyDetails.userName
    #
    #   * resource.accessKeyDetails.userType
    #
    #   * resource.instanceDetails.iamInstanceProfile.id
    #
    #   * resource.instanceDetails.imageId
    #
    #   * resource.instanceDetails.instanceId
    #
    #   * resource.instanceDetails.outpostArn
    #
    #   * resource.instanceDetails.networkInterfaces.ipv6Addresses
    #
    #   * resource.instanceDetails.networkInterfaces.privateIpAddresses.privateIpAddress
    #
    #   * resource.instanceDetails.networkInterfaces.publicDnsName
    #
    #   * resource.instanceDetails.networkInterfaces.publicIp
    #
    #   * resource.instanceDetails.networkInterfaces.securityGroups.groupId
    #
    #   * resource.instanceDetails.networkInterfaces.securityGroups.groupName
    #
    #   * resource.instanceDetails.networkInterfaces.subnetId
    #
    #   * resource.instanceDetails.networkInterfaces.vpcId
    #
    #   * resource.instanceDetails.tags.key
    #
    #   * resource.instanceDetails.tags.value
    #
    #   * resource.resourceType
    #
    #   * service.action.actionType
    #
    #   * service.action.awsApiCallAction.api
    #
    #   * service.action.awsApiCallAction.callerType
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.city.cityName
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.country.countryName
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.ipAddressV4
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.organization.asn
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.organization.asnOrg
    #
    #   * service.action.awsApiCallAction.serviceName
    #
    #   * service.action.dnsRequestAction.domain
    #
    #   * service.action.networkConnectionAction.blocked
    #
    #   * service.action.networkConnectionAction.connectionDirection
    #
    #   * service.action.networkConnectionAction.localPortDetails.port
    #
    #   * service.action.networkConnectionAction.protocol
    #
    #   * service.action.networkConnectionAction.localIpDetails.ipAddressV4
    #
    #   * service.action.networkConnectionAction.remoteIpDetails.city.cityName
    #
    #   * service.action.networkConnectionAction.remoteIpDetails.country.countryName
    #
    #   * service.action.networkConnectionAction.remoteIpDetails.ipAddressV4
    #
    #   * service.action.networkConnectionAction.remoteIpDetails.organization.asn
    #
    #   * service.action.networkConnectionAction.remoteIpDetails.organization.asnOrg
    #
    #   * service.action.networkConnectionAction.remotePortDetails.port
    #
    #   * service.additionalInfo.threatListName
    #
    #   * service.archived
    #
    #     When this attribute is set to TRUE, only archived findings are
    #     listed. When it's set to FALSE, only unarchived findings are
    #     listed. When this attribute is not set, all existing findings are
    #     listed.
    #
    #   * service.resourceRole
    #
    #   * severity
    #
    #   * type
    #
    #   * updatedAt
    #
    #     Type: ISO 8601 string format: YYYY-MM-DDTHH:MM:SS.SSSZ or
    #     YYYY-MM-DDTHH:MM:SSZ depending on whether the value contains
    #     milliseconds.
    #   @return [Types::FindingCriteria]
    #
    # @!attribute [rw] client_token
    #   The idempotency token for the create request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be added to a new filter resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateFilterRequest AWS API Documentation
    #
    class CreateFilterRequest < Struct.new(
      :detector_id,
      :name,
      :description,
      :action,
      :rank,
      :finding_criteria,
      :client_token,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the successfully created filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateFilterResponse AWS API Documentation
    #
    class CreateFilterResponse < Struct.new(
      :name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateIPSetRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         name: "Name", # required
    #         format: "TXT", # required, accepts TXT, STIX, OTX_CSV, ALIEN_VAULT, PROOF_POINT, FIRE_EYE
    #         location: "Location", # required
    #         activate: false, # required
    #         client_token: "ClientToken",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] detector_id
    #   The unique ID of the detector of the GuardDuty account that you want
    #   to create an IPSet for.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The user-friendly name to identify the IPSet.
    #
    #   Allowed characters are alphanumerics, spaces, hyphens (-), and
    #   underscores (\_).
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the file that contains the IPSet.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The URI of the file that contains the IPSet. For example:
    #   https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.
    #   @return [String]
    #
    # @!attribute [rw] activate
    #   A Boolean value that indicates whether GuardDuty is to start using
    #   the uploaded IPSet.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_token
    #   The idempotency token for the create request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be added to a new IP set resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateIPSetRequest AWS API Documentation
    #
    class CreateIPSetRequest < Struct.new(
      :detector_id,
      :name,
      :format,
      :location,
      :activate,
      :client_token,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] ip_set_id
    #   The ID of the IPSet resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateIPSetResponse AWS API Documentation
    #
    class CreateIPSetResponse < Struct.new(
      :ip_set_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateMembersRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         account_details: [ # required
    #           {
    #             account_id: "AccountId", # required
    #             email: "Email", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] detector_id
    #   The unique ID of the detector of the GuardDuty account that you want
    #   to associate member accounts with.
    #   @return [String]
    #
    # @!attribute [rw] account_details
    #   A list of account ID and email address pairs of the accounts that
    #   you want to associate with the master GuardDuty account.
    #   @return [Array<Types::AccountDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateMembersRequest AWS API Documentation
    #
    class CreateMembersRequest < Struct.new(
      :detector_id,
      :account_details)
      include Aws::Structure
    end

    # @!attribute [rw] unprocessed_accounts
    #   A list of objects that include the `accountIds` of the unprocessed
    #   accounts and a result string that explains why each was unprocessed.
    #   @return [Array<Types::UnprocessedAccount>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateMembersResponse AWS API Documentation
    #
    class CreateMembersResponse < Struct.new(
      :unprocessed_accounts)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreatePublishingDestinationRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         destination_type: "S3", # required, accepts S3
    #         destination_properties: { # required
    #           destination_arn: "String",
    #           kms_key_arn: "String",
    #         },
    #         client_token: "ClientToken",
    #       }
    #
    # @!attribute [rw] detector_id
    #   The ID of the GuardDuty detector associated with the publishing
    #   destination.
    #   @return [String]
    #
    # @!attribute [rw] destination_type
    #   The type of resource for the publishing destination. Currently only
    #   Amazon S3 buckets are supported.
    #   @return [String]
    #
    # @!attribute [rw] destination_properties
    #   The properties of the publishing destination, including the ARNs for
    #   the destination and the KMS key used for encryption.
    #   @return [Types::DestinationProperties]
    #
    # @!attribute [rw] client_token
    #   The idempotency token for the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreatePublishingDestinationRequest AWS API Documentation
    #
    class CreatePublishingDestinationRequest < Struct.new(
      :detector_id,
      :destination_type,
      :destination_properties,
      :client_token)
      include Aws::Structure
    end

    # @!attribute [rw] destination_id
    #   The ID of the publishing destination that is created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreatePublishingDestinationResponse AWS API Documentation
    #
    class CreatePublishingDestinationResponse < Struct.new(
      :destination_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSampleFindingsRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         finding_types: ["FindingType"],
    #       }
    #
    # @!attribute [rw] detector_id
    #   The ID of the detector to create sample findings for.
    #   @return [String]
    #
    # @!attribute [rw] finding_types
    #   The types of sample findings to generate.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateSampleFindingsRequest AWS API Documentation
    #
    class CreateSampleFindingsRequest < Struct.new(
      :detector_id,
      :finding_types)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateSampleFindingsResponse AWS API Documentation
    #
    class CreateSampleFindingsResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CreateThreatIntelSetRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         name: "Name", # required
    #         format: "TXT", # required, accepts TXT, STIX, OTX_CSV, ALIEN_VAULT, PROOF_POINT, FIRE_EYE
    #         location: "Location", # required
    #         activate: false, # required
    #         client_token: "ClientToken",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] detector_id
    #   The unique ID of the detector of the GuardDuty account that you want
    #   to create a threatIntelSet for.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A user-friendly ThreatIntelSet name displayed in all findings that
    #   are generated by activity that involves IP addresses included in
    #   this ThreatIntelSet.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the file that contains the ThreatIntelSet.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The URI of the file that contains the ThreatIntelSet. For example:
    #   https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.
    #   @return [String]
    #
    # @!attribute [rw] activate
    #   A Boolean value that indicates whether GuardDuty is to start using
    #   the uploaded ThreatIntelSet.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_token
    #   The idempotency token for the create request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be added to a new threat list resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateThreatIntelSetRequest AWS API Documentation
    #
    class CreateThreatIntelSetRequest < Struct.new(
      :detector_id,
      :name,
      :format,
      :location,
      :activate,
      :client_token,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] threat_intel_set_id
    #   The ID of the ThreatIntelSet resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateThreatIntelSetResponse AWS API Documentation
    #
    class CreateThreatIntelSetResponse < Struct.new(
      :threat_intel_set_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeclineInvitationsRequest
    #   data as a hash:
    #
    #       {
    #         account_ids: ["AccountId"], # required
    #       }
    #
    # @!attribute [rw] account_ids
    #   A list of account IDs of the AWS accounts that sent invitations to
    #   the current member account that you want to decline invitations
    #   from.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeclineInvitationsRequest AWS API Documentation
    #
    class DeclineInvitationsRequest < Struct.new(
      :account_ids)
      include Aws::Structure
    end

    # @!attribute [rw] unprocessed_accounts
    #   A list of objects that contain the unprocessed account and a result
    #   string that explains why it was unprocessed.
    #   @return [Array<Types::UnprocessedAccount>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeclineInvitationsResponse AWS API Documentation
    #
    class DeclineInvitationsResponse < Struct.new(
      :unprocessed_accounts)
      include Aws::Structure
    end

    # Contains information on the server side encryption method used in the
    # S3 bucket. See [S3 Server-Side Encryption][1] for more information.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/atest/dev/serv-side-encryption.html
    #
    # @!attribute [rw] encryption_type
    #   The type of encryption used for objects within the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] kms_master_key_arn
    #   The Amazon Resource Name (ARN) of the KMS encryption key. Only
    #   available if the bucket `EncryptionType` is `aws:kms`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DefaultServerSideEncryption AWS API Documentation
    #
    class DefaultServerSideEncryption < Struct.new(
      :encryption_type,
      :kms_master_key_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDetectorRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   The unique ID of the detector that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteDetectorRequest AWS API Documentation
    #
    class DeleteDetectorRequest < Struct.new(
      :detector_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteDetectorResponse AWS API Documentation
    #
    class DeleteDetectorResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteFilterRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         filter_name: "String", # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   The unique ID of the detector that the filter is associated with.
    #   @return [String]
    #
    # @!attribute [rw] filter_name
    #   The name of the filter that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteFilterRequest AWS API Documentation
    #
    class DeleteFilterRequest < Struct.new(
      :detector_id,
      :filter_name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteFilterResponse AWS API Documentation
    #
    class DeleteFilterResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteIPSetRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         ip_set_id: "String", # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   The unique ID of the detector associated with the IPSet.
    #   @return [String]
    #
    # @!attribute [rw] ip_set_id
    #   The unique ID of the IPSet to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteIPSetRequest AWS API Documentation
    #
    class DeleteIPSetRequest < Struct.new(
      :detector_id,
      :ip_set_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteIPSetResponse AWS API Documentation
    #
    class DeleteIPSetResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteInvitationsRequest
    #   data as a hash:
    #
    #       {
    #         account_ids: ["AccountId"], # required
    #       }
    #
    # @!attribute [rw] account_ids
    #   A list of account IDs of the AWS accounts that sent invitations to
    #   the current member account that you want to delete invitations from.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteInvitationsRequest AWS API Documentation
    #
    class DeleteInvitationsRequest < Struct.new(
      :account_ids)
      include Aws::Structure
    end

    # @!attribute [rw] unprocessed_accounts
    #   A list of objects that contain the unprocessed account and a result
    #   string that explains why it was unprocessed.
    #   @return [Array<Types::UnprocessedAccount>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteInvitationsResponse AWS API Documentation
    #
    class DeleteInvitationsResponse < Struct.new(
      :unprocessed_accounts)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteMembersRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         account_ids: ["AccountId"], # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   The unique ID of the detector of the GuardDuty account whose members
    #   you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] account_ids
    #   A list of account IDs of the GuardDuty member accounts that you want
    #   to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteMembersRequest AWS API Documentation
    #
    class DeleteMembersRequest < Struct.new(
      :detector_id,
      :account_ids)
      include Aws::Structure
    end

    # @!attribute [rw] unprocessed_accounts
    #   The accounts that could not be processed.
    #   @return [Array<Types::UnprocessedAccount>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteMembersResponse AWS API Documentation
    #
    class DeleteMembersResponse < Struct.new(
      :unprocessed_accounts)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeletePublishingDestinationRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         destination_id: "String", # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   The unique ID of the detector associated with the publishing
    #   destination to delete.
    #   @return [String]
    #
    # @!attribute [rw] destination_id
    #   The ID of the publishing destination to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeletePublishingDestinationRequest AWS API Documentation
    #
    class DeletePublishingDestinationRequest < Struct.new(
      :detector_id,
      :destination_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeletePublishingDestinationResponse AWS API Documentation
    #
    class DeletePublishingDestinationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteThreatIntelSetRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         threat_intel_set_id: "String", # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   The unique ID of the detector that the threatIntelSet is associated
    #   with.
    #   @return [String]
    #
    # @!attribute [rw] threat_intel_set_id
    #   The unique ID of the threatIntelSet that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteThreatIntelSetRequest AWS API Documentation
    #
    class DeleteThreatIntelSetRequest < Struct.new(
      :detector_id,
      :threat_intel_set_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteThreatIntelSetResponse AWS API Documentation
    #
    class DeleteThreatIntelSetResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeOrganizationConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   The ID of the detector to retrieve information about the delegated
    #   administrator from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DescribeOrganizationConfigurationRequest AWS API Documentation
    #
    class DescribeOrganizationConfigurationRequest < Struct.new(
      :detector_id)
      include Aws::Structure
    end

    # @!attribute [rw] auto_enable
    #   Indicates whether GuardDuty is automatically enabled for accounts
    #   added to the organization.
    #   @return [Boolean]
    #
    # @!attribute [rw] member_account_limit_reached
    #   Indicates whether the maximum number of allowed member accounts are
    #   already associated with the delegated administrator master account.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DescribeOrganizationConfigurationResponse AWS API Documentation
    #
    class DescribeOrganizationConfigurationResponse < Struct.new(
      :auto_enable,
      :member_account_limit_reached)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribePublishingDestinationRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         destination_id: "String", # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   The unique ID of the detector associated with the publishing
    #   destination to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] destination_id
    #   The ID of the publishing destination to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DescribePublishingDestinationRequest AWS API Documentation
    #
    class DescribePublishingDestinationRequest < Struct.new(
      :detector_id,
      :destination_id)
      include Aws::Structure
    end

    # @!attribute [rw] destination_id
    #   The ID of the publishing destination.
    #   @return [String]
    #
    # @!attribute [rw] destination_type
    #   The type of publishing destination. Currently, only Amazon S3
    #   buckets are supported.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the publishing destination.
    #   @return [String]
    #
    # @!attribute [rw] publishing_failure_start_timestamp
    #   The time, in epoch millisecond format, at which GuardDuty was first
    #   unable to publish findings to the destination.
    #   @return [Integer]
    #
    # @!attribute [rw] destination_properties
    #   A `DestinationProperties` object that includes the `DestinationArn`
    #   and `KmsKeyArn` of the publishing destination.
    #   @return [Types::DestinationProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DescribePublishingDestinationResponse AWS API Documentation
    #
    class DescribePublishingDestinationResponse < Struct.new(
      :destination_id,
      :destination_type,
      :status,
      :publishing_failure_start_timestamp,
      :destination_properties)
      include Aws::Structure
    end

    # Contains information about the publishing destination, including the
    # ID, type, and status.
    #
    # @!attribute [rw] destination_id
    #   The unique ID of the publishing destination.
    #   @return [String]
    #
    # @!attribute [rw] destination_type
    #   The type of resource used for the publishing destination. Currently,
    #   only Amazon S3 buckets are supported.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the publishing destination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Destination AWS API Documentation
    #
    class Destination < Struct.new(
      :destination_id,
      :destination_type,
      :status)
      include Aws::Structure
    end

    # Contains the Amazon Resource Name (ARN) of the resource to publish to,
    # such as an S3 bucket, and the ARN of the KMS key to use to encrypt
    # published findings.
    #
    # @note When making an API call, you may pass DestinationProperties
    #   data as a hash:
    #
    #       {
    #         destination_arn: "String",
    #         kms_key_arn: "String",
    #       }
    #
    # @!attribute [rw] destination_arn
    #   The ARN of the resource to publish to.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN of the KMS key to use for encryption.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DestinationProperties AWS API Documentation
    #
    class DestinationProperties < Struct.new(
      :destination_arn,
      :kms_key_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisableOrganizationAdminAccountRequest
    #   data as a hash:
    #
    #       {
    #         admin_account_id: "String", # required
    #       }
    #
    # @!attribute [rw] admin_account_id
    #   The AWS Account ID for the organizations account to be disabled as a
    #   GuardDuty delegated administrator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DisableOrganizationAdminAccountRequest AWS API Documentation
    #
    class DisableOrganizationAdminAccountRequest < Struct.new(
      :admin_account_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DisableOrganizationAdminAccountResponse AWS API Documentation
    #
    class DisableOrganizationAdminAccountResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DisassociateFromMasterAccountRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   The unique ID of the detector of the GuardDuty member account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DisassociateFromMasterAccountRequest AWS API Documentation
    #
    class DisassociateFromMasterAccountRequest < Struct.new(
      :detector_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DisassociateFromMasterAccountResponse AWS API Documentation
    #
    class DisassociateFromMasterAccountResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DisassociateMembersRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         account_ids: ["AccountId"], # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   The unique ID of the detector of the GuardDuty account whose members
    #   you want to disassociate from the master account.
    #   @return [String]
    #
    # @!attribute [rw] account_ids
    #   A list of account IDs of the GuardDuty member accounts that you want
    #   to disassociate from the master account.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DisassociateMembersRequest AWS API Documentation
    #
    class DisassociateMembersRequest < Struct.new(
      :detector_id,
      :account_ids)
      include Aws::Structure
    end

    # @!attribute [rw] unprocessed_accounts
    #   A list of objects that contain the unprocessed account and a result
    #   string that explains why it was unprocessed.
    #   @return [Array<Types::UnprocessedAccount>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DisassociateMembersResponse AWS API Documentation
    #
    class DisassociateMembersResponse < Struct.new(
      :unprocessed_accounts)
      include Aws::Structure
    end

    # Contains information about the DNS\_REQUEST action described in this
    # finding.
    #
    # @!attribute [rw] domain
    #   The domain information for the API request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DnsRequestAction AWS API Documentation
    #
    class DnsRequestAction < Struct.new(
      :domain)
      include Aws::Structure
    end

    # Contains information about the domain.
    #
    # @!attribute [rw] domain
    #   The domain information for the AWS API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DomainDetails AWS API Documentation
    #
    class DomainDetails < Struct.new(
      :domain)
      include Aws::Structure
    end

    # @note When making an API call, you may pass EnableOrganizationAdminAccountRequest
    #   data as a hash:
    #
    #       {
    #         admin_account_id: "String", # required
    #       }
    #
    # @!attribute [rw] admin_account_id
    #   The AWS Account ID for the organization account to be enabled as a
    #   GuardDuty delegated administrator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/EnableOrganizationAdminAccountRequest AWS API Documentation
    #
    class EnableOrganizationAdminAccountRequest < Struct.new(
      :admin_account_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/EnableOrganizationAdminAccountResponse AWS API Documentation
    #
    class EnableOrganizationAdminAccountResponse < Aws::EmptyStructure; end

    # Contains information about the reason that the finding was generated.
    #
    # @!attribute [rw] threat_intelligence_details
    #   A list of threat intelligence details related to the evidence.
    #   @return [Array<Types::ThreatIntelligenceDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Evidence AWS API Documentation
    #
    class Evidence < Struct.new(
      :threat_intelligence_details)
      include Aws::Structure
    end

    # Contains information about the finding, which is generated when
    # abnormal or suspicious activity is detected.
    #
    # @!attribute [rw] account_id
    #   The ID of the account in which the finding was generated.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the finding.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   The confidence score for the finding.
    #   @return [Float]
    #
    # @!attribute [rw] created_at
    #   The time and date when the finding was created.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the finding.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the finding.
    #   @return [String]
    #
    # @!attribute [rw] partition
    #   The partition associated with the finding.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Region where the finding was generated.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   Contains information about the AWS resource associated with the
    #   activity that prompted GuardDuty to generate a finding.
    #   @return [Types::Resource]
    #
    # @!attribute [rw] schema_version
    #   The version of the schema used for the finding.
    #   @return [String]
    #
    # @!attribute [rw] service
    #   Contains additional information about the generated finding.
    #   @return [Types::Service]
    #
    # @!attribute [rw] severity
    #   The severity of the finding.
    #   @return [Float]
    #
    # @!attribute [rw] title
    #   The title of the finding.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of finding.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time and date when the finding was last updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Finding AWS API Documentation
    #
    class Finding < Struct.new(
      :account_id,
      :arn,
      :confidence,
      :created_at,
      :description,
      :id,
      :partition,
      :region,
      :resource,
      :schema_version,
      :service,
      :severity,
      :title,
      :type,
      :updated_at)
      include Aws::Structure
    end

    # Contains information about the criteria used for querying findings.
    #
    # @note When making an API call, you may pass FindingCriteria
    #   data as a hash:
    #
    #       {
    #         criterion: {
    #           "String" => {
    #             eq: ["String"],
    #             neq: ["String"],
    #             gt: 1,
    #             gte: 1,
    #             lt: 1,
    #             lte: 1,
    #             equals: ["String"],
    #             not_equals: ["String"],
    #             greater_than: 1,
    #             greater_than_or_equal: 1,
    #             less_than: 1,
    #             less_than_or_equal: 1,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] criterion
    #   Represents a map of finding properties that match specified
    #   conditions and values when querying findings.
    #   @return [Hash<String,Types::Condition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/FindingCriteria AWS API Documentation
    #
    class FindingCriteria < Struct.new(
      :criterion)
      include Aws::Structure
    end

    # Contains information about finding statistics.
    #
    # @!attribute [rw] count_by_severity
    #   Represents a map of severity to count statistics for a set of
    #   findings.
    #   @return [Hash<String,Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/FindingStatistics AWS API Documentation
    #
    class FindingStatistics < Struct.new(
      :count_by_severity)
      include Aws::Structure
    end

    # Contains information about the location of the remote IP address.
    #
    # @!attribute [rw] lat
    #   The latitude information of the remote IP address.
    #   @return [Float]
    #
    # @!attribute [rw] lon
    #   The longitude information of the remote IP address.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GeoLocation AWS API Documentation
    #
    class GeoLocation < Struct.new(
      :lat,
      :lon)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDetectorRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   The unique ID of the detector that you want to get.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetDetectorRequest AWS API Documentation
    #
    class GetDetectorRequest < Struct.new(
      :detector_id)
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp of when the detector was created.
    #   @return [String]
    #
    # @!attribute [rw] finding_publishing_frequency
    #   The publishing frequency of the finding.
    #   @return [String]
    #
    # @!attribute [rw] service_role
    #   The GuardDuty service role.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The detector status.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The last-updated timestamp for the detector.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of the detector resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetDetectorResponse AWS API Documentation
    #
    class GetDetectorResponse < Struct.new(
      :created_at,
      :finding_publishing_frequency,
      :service_role,
      :status,
      :updated_at,
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetFilterRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         filter_name: "String", # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   The unique ID of the detector that the filter is associated with.
    #   @return [String]
    #
    # @!attribute [rw] filter_name
    #   The name of the filter you want to get.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetFilterRequest AWS API Documentation
    #
    class GetFilterRequest < Struct.new(
      :detector_id,
      :filter_name)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the filter.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   Specifies the action that is to be applied to the findings that
    #   match the filter.
    #   @return [String]
    #
    # @!attribute [rw] rank
    #   Specifies the position of the filter in the list of current filters.
    #   Also specifies the order in which this filter is applied to the
    #   findings.
    #   @return [Integer]
    #
    # @!attribute [rw] finding_criteria
    #   Represents the criteria to be used in the filter for querying
    #   findings.
    #   @return [Types::FindingCriteria]
    #
    # @!attribute [rw] tags
    #   The tags of the filter resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetFilterResponse AWS API Documentation
    #
    class GetFilterResponse < Struct.new(
      :name,
      :description,
      :action,
      :rank,
      :finding_criteria,
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetFindingsRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         finding_ids: ["FindingId"], # required
    #         sort_criteria: {
    #           attribute_name: "String",
    #           order_by: "ASC", # accepts ASC, DESC
    #         },
    #       }
    #
    # @!attribute [rw] detector_id
    #   The ID of the detector that specifies the GuardDuty service whose
    #   findings you want to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] finding_ids
    #   The IDs of the findings that you want to retrieve.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sort_criteria
    #   Represents the criteria used for sorting findings.
    #   @return [Types::SortCriteria]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetFindingsRequest AWS API Documentation
    #
    class GetFindingsRequest < Struct.new(
      :detector_id,
      :finding_ids,
      :sort_criteria)
      include Aws::Structure
    end

    # @!attribute [rw] findings
    #   A list of findings.
    #   @return [Array<Types::Finding>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetFindingsResponse AWS API Documentation
    #
    class GetFindingsResponse < Struct.new(
      :findings)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetFindingsStatisticsRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         finding_statistic_types: ["COUNT_BY_SEVERITY"], # required, accepts COUNT_BY_SEVERITY
    #         finding_criteria: {
    #           criterion: {
    #             "String" => {
    #               eq: ["String"],
    #               neq: ["String"],
    #               gt: 1,
    #               gte: 1,
    #               lt: 1,
    #               lte: 1,
    #               equals: ["String"],
    #               not_equals: ["String"],
    #               greater_than: 1,
    #               greater_than_or_equal: 1,
    #               less_than: 1,
    #               less_than_or_equal: 1,
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] detector_id
    #   The ID of the detector that specifies the GuardDuty service whose
    #   findings' statistics you want to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] finding_statistic_types
    #   The types of finding statistics to retrieve.
    #   @return [Array<String>]
    #
    # @!attribute [rw] finding_criteria
    #   Represents the criteria that is used for querying findings.
    #   @return [Types::FindingCriteria]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetFindingsStatisticsRequest AWS API Documentation
    #
    class GetFindingsStatisticsRequest < Struct.new(
      :detector_id,
      :finding_statistic_types,
      :finding_criteria)
      include Aws::Structure
    end

    # @!attribute [rw] finding_statistics
    #   The finding statistics object.
    #   @return [Types::FindingStatistics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetFindingsStatisticsResponse AWS API Documentation
    #
    class GetFindingsStatisticsResponse < Struct.new(
      :finding_statistics)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetIPSetRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         ip_set_id: "String", # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   The unique ID of the detector that the IPSet is associated with.
    #   @return [String]
    #
    # @!attribute [rw] ip_set_id
    #   The unique ID of the IPSet to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetIPSetRequest AWS API Documentation
    #
    class GetIPSetRequest < Struct.new(
      :detector_id,
      :ip_set_id)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The user-friendly name for the IPSet.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the file that contains the IPSet.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The URI of the file that contains the IPSet. For example:
    #   https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of IPSet file that was uploaded.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of the IPSet resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetIPSetResponse AWS API Documentation
    #
    class GetIPSetResponse < Struct.new(
      :name,
      :format,
      :location,
      :status,
      :tags)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetInvitationsCountRequest AWS API Documentation
    #
    class GetInvitationsCountRequest < Aws::EmptyStructure; end

    # @!attribute [rw] invitations_count
    #   The number of received invitations.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetInvitationsCountResponse AWS API Documentation
    #
    class GetInvitationsCountResponse < Struct.new(
      :invitations_count)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMasterAccountRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   The unique ID of the detector of the GuardDuty member account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetMasterAccountRequest AWS API Documentation
    #
    class GetMasterAccountRequest < Struct.new(
      :detector_id)
      include Aws::Structure
    end

    # @!attribute [rw] master
    #   The master account details.
    #   @return [Types::Master]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetMasterAccountResponse AWS API Documentation
    #
    class GetMasterAccountResponse < Struct.new(
      :master)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMembersRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         account_ids: ["AccountId"], # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   The unique ID of the detector of the GuardDuty account whose members
    #   you want to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] account_ids
    #   A list of account IDs of the GuardDuty member accounts that you want
    #   to describe.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetMembersRequest AWS API Documentation
    #
    class GetMembersRequest < Struct.new(
      :detector_id,
      :account_ids)
      include Aws::Structure
    end

    # @!attribute [rw] members
    #   A list of members.
    #   @return [Array<Types::Member>]
    #
    # @!attribute [rw] unprocessed_accounts
    #   A list of objects that contain the unprocessed account and a result
    #   string that explains why it was unprocessed.
    #   @return [Array<Types::UnprocessedAccount>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetMembersResponse AWS API Documentation
    #
    class GetMembersResponse < Struct.new(
      :members,
      :unprocessed_accounts)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetThreatIntelSetRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         threat_intel_set_id: "String", # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   The unique ID of the detector that the threatIntelSet is associated
    #   with.
    #   @return [String]
    #
    # @!attribute [rw] threat_intel_set_id
    #   The unique ID of the threatIntelSet that you want to get.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetThreatIntelSetRequest AWS API Documentation
    #
    class GetThreatIntelSetRequest < Struct.new(
      :detector_id,
      :threat_intel_set_id)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A user-friendly ThreatIntelSet name displayed in all findings that
    #   are generated by activity that involves IP addresses included in
    #   this ThreatIntelSet.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the threatIntelSet.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The URI of the file that contains the ThreatIntelSet. For example:
    #   https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of threatIntelSet file uploaded.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of the threat list resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetThreatIntelSetResponse AWS API Documentation
    #
    class GetThreatIntelSetResponse < Struct.new(
      :name,
      :format,
      :location,
      :status,
      :tags)
      include Aws::Structure
    end

    # Contains information about the EC2 instance profile.
    #
    # @!attribute [rw] arn
    #   The profile ARN of the EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The profile ID of the EC2 instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/IamInstanceProfile AWS API Documentation
    #
    class IamInstanceProfile < Struct.new(
      :arn,
      :id)
      include Aws::Structure
    end

    # Contains information about the details of an instance.
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone of the EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] iam_instance_profile
    #   The profile information of the EC2 instance.
    #   @return [Types::IamInstanceProfile]
    #
    # @!attribute [rw] image_description
    #   The image description of the EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] image_id
    #   The image ID of the EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The ID of the EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_state
    #   The state of the EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The type of the EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] outpost_arn
    #   The Amazon Resource Name (ARN) of the AWS Outpost. Only applicable
    #   to AWS Outposts instances.
    #   @return [String]
    #
    # @!attribute [rw] launch_time
    #   The launch time of the EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] network_interfaces
    #   The elastic network interface information of the EC2 instance.
    #   @return [Array<Types::NetworkInterface>]
    #
    # @!attribute [rw] platform
    #   The platform of the EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] product_codes
    #   The product code of the EC2 instance.
    #   @return [Array<Types::ProductCode>]
    #
    # @!attribute [rw] tags
    #   The tags of the EC2 instance.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/InstanceDetails AWS API Documentation
    #
    class InstanceDetails < Struct.new(
      :availability_zone,
      :iam_instance_profile,
      :image_description,
      :image_id,
      :instance_id,
      :instance_state,
      :instance_type,
      :outpost_arn,
      :launch_time,
      :network_interfaces,
      :platform,
      :product_codes,
      :tags)
      include Aws::Structure
    end

    # An internal server error exception object.
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The error type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/InternalServerErrorException AWS API Documentation
    #
    class InternalServerErrorException < Struct.new(
      :message,
      :type)
      include Aws::Structure
    end

    # Contains information about the invitation to become a member account.
    #
    # @!attribute [rw] account_id
    #   The ID of the account that the invitation was sent from.
    #   @return [String]
    #
    # @!attribute [rw] invitation_id
    #   The ID of the invitation. This value is used to validate the inviter
    #   account to the member account.
    #   @return [String]
    #
    # @!attribute [rw] relationship_status
    #   The status of the relationship between the inviter and invitee
    #   accounts.
    #   @return [String]
    #
    # @!attribute [rw] invited_at
    #   The timestamp when the invitation was sent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Invitation AWS API Documentation
    #
    class Invitation < Struct.new(
      :account_id,
      :invitation_id,
      :relationship_status,
      :invited_at)
      include Aws::Structure
    end

    # @note When making an API call, you may pass InviteMembersRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         account_ids: ["AccountId"], # required
    #         disable_email_notification: false,
    #         message: "String",
    #       }
    #
    # @!attribute [rw] detector_id
    #   The unique ID of the detector of the GuardDuty account that you want
    #   to invite members with.
    #   @return [String]
    #
    # @!attribute [rw] account_ids
    #   A list of account IDs of the accounts that you want to invite to
    #   GuardDuty as members.
    #   @return [Array<String>]
    #
    # @!attribute [rw] disable_email_notification
    #   A Boolean value that specifies whether you want to disable email
    #   notification to the accounts that you’re inviting to GuardDuty as
    #   members.
    #   @return [Boolean]
    #
    # @!attribute [rw] message
    #   The invitation message that you want to send to the accounts that
    #   you’re inviting to GuardDuty as members.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/InviteMembersRequest AWS API Documentation
    #
    class InviteMembersRequest < Struct.new(
      :detector_id,
      :account_ids,
      :disable_email_notification,
      :message)
      include Aws::Structure
    end

    # @!attribute [rw] unprocessed_accounts
    #   A list of objects that contain the unprocessed account and a result
    #   string that explains why it was unprocessed.
    #   @return [Array<Types::UnprocessedAccount>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/InviteMembersResponse AWS API Documentation
    #
    class InviteMembersResponse < Struct.new(
      :unprocessed_accounts)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDetectorsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] max_results
    #   You can use this parameter to indicate the maximum number of items
    #   that you want in the response. The default value is 50. The maximum
    #   value is 50.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action, fill nextToken in the request with
    #   the value of NextToken from the previous response to continue
    #   listing data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListDetectorsRequest AWS API Documentation
    #
    class ListDetectorsRequest < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] detector_ids
    #   A list of detector IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination parameter to be used on the next list operation to
    #   retrieve more items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListDetectorsResponse AWS API Documentation
    #
    class ListDetectorsResponse < Struct.new(
      :detector_ids,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListFiltersRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] detector_id
    #   The unique ID of the detector that the filter is associated with.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   You can use this parameter to indicate the maximum number of items
    #   that you want in the response. The default value is 50. The maximum
    #   value is 50.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action, fill nextToken in the request with
    #   the value of NextToken from the previous response to continue
    #   listing data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListFiltersRequest AWS API Documentation
    #
    class ListFiltersRequest < Struct.new(
      :detector_id,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] filter_names
    #   A list of filter names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination parameter to be used on the next list operation to
    #   retrieve more items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListFiltersResponse AWS API Documentation
    #
    class ListFiltersResponse < Struct.new(
      :filter_names,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListFindingsRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         finding_criteria: {
    #           criterion: {
    #             "String" => {
    #               eq: ["String"],
    #               neq: ["String"],
    #               gt: 1,
    #               gte: 1,
    #               lt: 1,
    #               lte: 1,
    #               equals: ["String"],
    #               not_equals: ["String"],
    #               greater_than: 1,
    #               greater_than_or_equal: 1,
    #               less_than: 1,
    #               less_than_or_equal: 1,
    #             },
    #           },
    #         },
    #         sort_criteria: {
    #           attribute_name: "String",
    #           order_by: "ASC", # accepts ASC, DESC
    #         },
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] detector_id
    #   The ID of the detector that specifies the GuardDuty service whose
    #   findings you want to list.
    #   @return [String]
    #
    # @!attribute [rw] finding_criteria
    #   Represents the criteria used for querying findings. Valid values
    #   include:
    #
    #   * JSON field name
    #
    #   * accountId
    #
    #   * region
    #
    #   * confidence
    #
    #   * id
    #
    #   * resource.accessKeyDetails.accessKeyId
    #
    #   * resource.accessKeyDetails.principalId
    #
    #   * resource.accessKeyDetails.userName
    #
    #   * resource.accessKeyDetails.userType
    #
    #   * resource.instanceDetails.iamInstanceProfile.id
    #
    #   * resource.instanceDetails.imageId
    #
    #   * resource.instanceDetails.instanceId
    #
    #   * resource.instanceDetails.networkInterfaces.ipv6Addresses
    #
    #   * resource.instanceDetails.networkInterfaces.privateIpAddresses.privateIpAddress
    #
    #   * resource.instanceDetails.networkInterfaces.publicDnsName
    #
    #   * resource.instanceDetails.networkInterfaces.publicIp
    #
    #   * resource.instanceDetails.networkInterfaces.securityGroups.groupId
    #
    #   * resource.instanceDetails.networkInterfaces.securityGroups.groupName
    #
    #   * resource.instanceDetails.networkInterfaces.subnetId
    #
    #   * resource.instanceDetails.networkInterfaces.vpcId
    #
    #   * resource.instanceDetails.tags.key
    #
    #   * resource.instanceDetails.tags.value
    #
    #   * resource.resourceType
    #
    #   * service.action.actionType
    #
    #   * service.action.awsApiCallAction.api
    #
    #   * service.action.awsApiCallAction.callerType
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.city.cityName
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.country.countryName
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.ipAddressV4
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.organization.asn
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.organization.asnOrg
    #
    #   * service.action.awsApiCallAction.serviceName
    #
    #   * service.action.dnsRequestAction.domain
    #
    #   * service.action.networkConnectionAction.blocked
    #
    #   * service.action.networkConnectionAction.connectionDirection
    #
    #   * service.action.networkConnectionAction.localPortDetails.port
    #
    #   * service.action.networkConnectionAction.protocol
    #
    #   * service.action.networkConnectionAction.remoteIpDetails.city.cityName
    #
    #   * service.action.networkConnectionAction.remoteIpDetails.country.countryName
    #
    #   * service.action.networkConnectionAction.remoteIpDetails.ipAddressV4
    #
    #   * service.action.networkConnectionAction.remoteIpDetails.organization.asn
    #
    #   * service.action.networkConnectionAction.remoteIpDetails.organization.asnOrg
    #
    #   * service.action.networkConnectionAction.remotePortDetails.port
    #
    #   * service.additionalInfo.threatListName
    #
    #   * service.archived
    #
    #     When this attribute is set to 'true', only archived findings are
    #     listed. When it's set to 'false', only unarchived findings are
    #     listed. When this attribute is not set, all existing findings are
    #     listed.
    #
    #   * service.resourceRole
    #
    #   * severity
    #
    #   * type
    #
    #   * updatedAt
    #
    #     Type: Timestamp in Unix Epoch millisecond format: 1486685375000
    #   @return [Types::FindingCriteria]
    #
    # @!attribute [rw] sort_criteria
    #   Represents the criteria used for sorting findings.
    #   @return [Types::SortCriteria]
    #
    # @!attribute [rw] max_results
    #   You can use this parameter to indicate the maximum number of items
    #   you want in the response. The default value is 50. The maximum value
    #   is 50.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action, fill nextToken in the request with
    #   the value of NextToken from the previous response to continue
    #   listing data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListFindingsRequest AWS API Documentation
    #
    class ListFindingsRequest < Struct.new(
      :detector_id,
      :finding_criteria,
      :sort_criteria,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] finding_ids
    #   The IDs of the findings that you're listing.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination parameter to be used on the next list operation to
    #   retrieve more items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListFindingsResponse AWS API Documentation
    #
    class ListFindingsResponse < Struct.new(
      :finding_ids,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListIPSetsRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] detector_id
    #   The unique ID of the detector that the IPSet is associated with.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   You can use this parameter to indicate the maximum number of items
    #   you want in the response. The default value is 50. The maximum value
    #   is 50.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action, fill nextToken in the request with
    #   the value of NextToken from the previous response to continue
    #   listing data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListIPSetsRequest AWS API Documentation
    #
    class ListIPSetsRequest < Struct.new(
      :detector_id,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] ip_set_ids
    #   The IDs of the IPSet resources.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination parameter to be used on the next list operation to
    #   retrieve more items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListIPSetsResponse AWS API Documentation
    #
    class ListIPSetsResponse < Struct.new(
      :ip_set_ids,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListInvitationsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] max_results
    #   You can use this parameter to indicate the maximum number of items
    #   that you want in the response. The default value is 50. The maximum
    #   value is 50.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action, fill nextToken in the request with
    #   the value of NextToken from the previous response to continue
    #   listing data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListInvitationsRequest AWS API Documentation
    #
    class ListInvitationsRequest < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] invitations
    #   A list of invitation descriptions.
    #   @return [Array<Types::Invitation>]
    #
    # @!attribute [rw] next_token
    #   The pagination parameter to be used on the next list operation to
    #   retrieve more items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListInvitationsResponse AWS API Documentation
    #
    class ListInvitationsResponse < Struct.new(
      :invitations,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListMembersRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         max_results: 1,
    #         next_token: "String",
    #         only_associated: "String",
    #       }
    #
    # @!attribute [rw] detector_id
    #   The unique ID of the detector the member is associated with.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   You can use this parameter to indicate the maximum number of items
    #   you want in the response. The default value is 50. The maximum value
    #   is 50.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action, fill nextToken in the request with
    #   the value of NextToken from the previous response to continue
    #   listing data.
    #   @return [String]
    #
    # @!attribute [rw] only_associated
    #   Specifies whether to only return associated members or to return all
    #   members (including members who haven't been invited yet or have
    #   been disassociated).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListMembersRequest AWS API Documentation
    #
    class ListMembersRequest < Struct.new(
      :detector_id,
      :max_results,
      :next_token,
      :only_associated)
      include Aws::Structure
    end

    # @!attribute [rw] members
    #   A list of members.
    #   @return [Array<Types::Member>]
    #
    # @!attribute [rw] next_token
    #   The pagination parameter to be used on the next list operation to
    #   retrieve more items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListMembersResponse AWS API Documentation
    #
    class ListMembersResponse < Struct.new(
      :members,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListOrganizationAdminAccountsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. For subsequent calls, use the `NextToken`
    #   value returned from the previous request to continue listing results
    #   after the first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListOrganizationAdminAccountsRequest AWS API Documentation
    #
    class ListOrganizationAdminAccountsRequest < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] admin_accounts
    #   An AdminAccounts object that includes a list of accounts configured
    #   as GuardDuty delegated administrators.
    #   @return [Array<Types::AdminAccount>]
    #
    # @!attribute [rw] next_token
    #   The pagination parameter to be used on the next list operation to
    #   retrieve more items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListOrganizationAdminAccountsResponse AWS API Documentation
    #
    class ListOrganizationAdminAccountsResponse < Struct.new(
      :admin_accounts,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPublishingDestinationsRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] detector_id
    #   The ID of the detector to retrieve publishing destinations for.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. For subsequent calls, use the `NextToken`
    #   value returned from the previous request to continue listing results
    #   after the first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListPublishingDestinationsRequest AWS API Documentation
    #
    class ListPublishingDestinationsRequest < Struct.new(
      :detector_id,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] destinations
    #   A `Destinations` object that includes information about each
    #   publishing destination returned.
    #   @return [Array<Types::Destination>]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. For subsequent calls, use the `NextToken`
    #   value returned from the previous request to continue listing results
    #   after the first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListPublishingDestinationsResponse AWS API Documentation
    #
    class ListPublishingDestinationsResponse < Struct.new(
      :destinations,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "GuardDutyArn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for the given GuardDuty resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListThreatIntelSetsRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] detector_id
    #   The unique ID of the detector that the threatIntelSet is associated
    #   with.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   You can use this parameter to indicate the maximum number of items
    #   that you want in the response. The default value is 50. The maximum
    #   value is 50.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   You can use this parameter to paginate results in the response. Set
    #   the value of this parameter to null on your first call to the list
    #   action. For subsequent calls to the action, fill nextToken in the
    #   request with the value of NextToken from the previous response to
    #   continue listing data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListThreatIntelSetsRequest AWS API Documentation
    #
    class ListThreatIntelSetsRequest < Struct.new(
      :detector_id,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] threat_intel_set_ids
    #   The IDs of the ThreatIntelSet resources.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination parameter to be used on the next list operation to
    #   retrieve more items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListThreatIntelSetsResponse AWS API Documentation
    #
    class ListThreatIntelSetsResponse < Struct.new(
      :threat_intel_set_ids,
      :next_token)
      include Aws::Structure
    end

    # Contains information about the local IP address of the connection.
    #
    # @!attribute [rw] ip_address_v4
    #   The IPv4 local address of the connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/LocalIpDetails AWS API Documentation
    #
    class LocalIpDetails < Struct.new(
      :ip_address_v4)
      include Aws::Structure
    end

    # Contains information about the port for the local connection.
    #
    # @!attribute [rw] port
    #   The port number of the local connection.
    #   @return [Integer]
    #
    # @!attribute [rw] port_name
    #   The port name of the local connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/LocalPortDetails AWS API Documentation
    #
    class LocalPortDetails < Struct.new(
      :port,
      :port_name)
      include Aws::Structure
    end

    # Contains information about the master account and invitation.
    #
    # @!attribute [rw] account_id
    #   The ID of the account used as the master account.
    #   @return [String]
    #
    # @!attribute [rw] invitation_id
    #   The value used to validate the master account to the member account.
    #   @return [String]
    #
    # @!attribute [rw] relationship_status
    #   The status of the relationship between the master and member
    #   accounts.
    #   @return [String]
    #
    # @!attribute [rw] invited_at
    #   The timestamp when the invitation was sent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Master AWS API Documentation
    #
    class Master < Struct.new(
      :account_id,
      :invitation_id,
      :relationship_status,
      :invited_at)
      include Aws::Structure
    end

    # Contains information about the member account.
    #
    # @!attribute [rw] account_id
    #   The ID of the member account.
    #   @return [String]
    #
    # @!attribute [rw] detector_id
    #   The detector ID of the member account.
    #   @return [String]
    #
    # @!attribute [rw] master_id
    #   The master account ID.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address of the member account.
    #   @return [String]
    #
    # @!attribute [rw] relationship_status
    #   The status of the relationship between the member and the master.
    #   @return [String]
    #
    # @!attribute [rw] invited_at
    #   The timestamp when the invitation was sent.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The last-updated timestamp of the member.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Member AWS API Documentation
    #
    class Member < Struct.new(
      :account_id,
      :detector_id,
      :master_id,
      :email,
      :relationship_status,
      :invited_at,
      :updated_at)
      include Aws::Structure
    end

    # Contains information about the NETWORK\_CONNECTION action described in
    # the finding.
    #
    # @!attribute [rw] blocked
    #   Indicates whether EC2 blocked the network connection to your
    #   instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] connection_direction
    #   The network connection direction.
    #   @return [String]
    #
    # @!attribute [rw] local_port_details
    #   The local port information of the connection.
    #   @return [Types::LocalPortDetails]
    #
    # @!attribute [rw] protocol
    #   The network connection protocol.
    #   @return [String]
    #
    # @!attribute [rw] local_ip_details
    #   The local IP information of the connection.
    #   @return [Types::LocalIpDetails]
    #
    # @!attribute [rw] remote_ip_details
    #   The remote IP information of the connection.
    #   @return [Types::RemoteIpDetails]
    #
    # @!attribute [rw] remote_port_details
    #   The remote port information of the connection.
    #   @return [Types::RemotePortDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/NetworkConnectionAction AWS API Documentation
    #
    class NetworkConnectionAction < Struct.new(
      :blocked,
      :connection_direction,
      :local_port_details,
      :protocol,
      :local_ip_details,
      :remote_ip_details,
      :remote_port_details)
      include Aws::Structure
    end

    # Contains information about the elastic network interface of the EC2
    # instance.
    #
    # @!attribute [rw] ipv_6_addresses
    #   A list of IPv6 addresses for the EC2 instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] network_interface_id
    #   The ID of the network interface.
    #   @return [String]
    #
    # @!attribute [rw] private_dns_name
    #   The private DNS name of the EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] private_ip_address
    #   The private IP address of the EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] private_ip_addresses
    #   Other private IP address information of the EC2 instance.
    #   @return [Array<Types::PrivateIpAddressDetails>]
    #
    # @!attribute [rw] public_dns_name
    #   The public DNS name of the EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] public_ip
    #   The public IP address of the EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   The security groups associated with the EC2 instance.
    #   @return [Array<Types::SecurityGroup>]
    #
    # @!attribute [rw] subnet_id
    #   The subnet ID of the EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The VPC ID of the EC2 instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/NetworkInterface AWS API Documentation
    #
    class NetworkInterface < Struct.new(
      :ipv_6_addresses,
      :network_interface_id,
      :private_dns_name,
      :private_ip_address,
      :private_ip_addresses,
      :public_dns_name,
      :public_ip,
      :security_groups,
      :subnet_id,
      :vpc_id)
      include Aws::Structure
    end

    # Contains information about the ISP organization of the remote IP
    # address.
    #
    # @!attribute [rw] asn
    #   The Autonomous System Number (ASN) of the internet provider of the
    #   remote IP address.
    #   @return [String]
    #
    # @!attribute [rw] asn_org
    #   The organization that registered this ASN.
    #   @return [String]
    #
    # @!attribute [rw] isp
    #   The ISP information for the internet provider.
    #   @return [String]
    #
    # @!attribute [rw] org
    #   The name of the internet provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Organization AWS API Documentation
    #
    class Organization < Struct.new(
      :asn,
      :asn_org,
      :isp,
      :org)
      include Aws::Structure
    end

    # Contains information on the owner of the bucket.
    #
    # @!attribute [rw] id
    #   The canonical user ID of the bucket owner. For information about
    #   locating your canonical user ID see [Finding Your Account Canonical
    #   User ID.][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/acct-identifiers.html#FindingCanonicalId
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Owner AWS API Documentation
    #
    class Owner < Struct.new(
      :id)
      include Aws::Structure
    end

    # Contains information about how permissions are configured for the S3
    # bucket.
    #
    # @!attribute [rw] bucket_level_permissions
    #   Contains information about the bucket level permissions for the S3
    #   bucket.
    #   @return [Types::BucketLevelPermissions]
    #
    # @!attribute [rw] account_level_permissions
    #   Contains information about the account level permissions on the S3
    #   bucket.
    #   @return [Types::AccountLevelPermissions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/PermissionConfiguration AWS API Documentation
    #
    class PermissionConfiguration < Struct.new(
      :bucket_level_permissions,
      :account_level_permissions)
      include Aws::Structure
    end

    # Contains information about the PORT\_PROBE action described in the
    # finding.
    #
    # @!attribute [rw] blocked
    #   Indicates whether EC2 blocked the port probe to the instance, such
    #   as with an ACL.
    #   @return [Boolean]
    #
    # @!attribute [rw] port_probe_details
    #   A list of objects related to port probe details.
    #   @return [Array<Types::PortProbeDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/PortProbeAction AWS API Documentation
    #
    class PortProbeAction < Struct.new(
      :blocked,
      :port_probe_details)
      include Aws::Structure
    end

    # Contains information about the port probe details.
    #
    # @!attribute [rw] local_port_details
    #   The local port information of the connection.
    #   @return [Types::LocalPortDetails]
    #
    # @!attribute [rw] local_ip_details
    #   The local IP information of the connection.
    #   @return [Types::LocalIpDetails]
    #
    # @!attribute [rw] remote_ip_details
    #   The remote IP information of the connection.
    #   @return [Types::RemoteIpDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/PortProbeDetail AWS API Documentation
    #
    class PortProbeDetail < Struct.new(
      :local_port_details,
      :local_ip_details,
      :remote_ip_details)
      include Aws::Structure
    end

    # Contains other private IP address information of the EC2 instance.
    #
    # @!attribute [rw] private_dns_name
    #   The private DNS name of the EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] private_ip_address
    #   The private IP address of the EC2 instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/PrivateIpAddressDetails AWS API Documentation
    #
    class PrivateIpAddressDetails < Struct.new(
      :private_dns_name,
      :private_ip_address)
      include Aws::Structure
    end

    # Contains information about the product code for the EC2 instance.
    #
    # @!attribute [rw] code
    #   The product code information.
    #   @return [String]
    #
    # @!attribute [rw] product_type
    #   The product code type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ProductCode AWS API Documentation
    #
    class ProductCode < Struct.new(
      :code,
      :product_type)
      include Aws::Structure
    end

    # Describes the public access policies that apply to the S3 bucket.
    #
    # @!attribute [rw] permission_configuration
    #   Contains information about how permissions are configured for the S3
    #   bucket.
    #   @return [Types::PermissionConfiguration]
    #
    # @!attribute [rw] effective_permission
    #   Describes the effective permission on this bucket after factoring
    #   all attached policies.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/PublicAccess AWS API Documentation
    #
    class PublicAccess < Struct.new(
      :permission_configuration,
      :effective_permission)
      include Aws::Structure
    end

    # Contains information about the remote IP address of the connection.
    #
    # @!attribute [rw] city
    #   The city information of the remote IP address.
    #   @return [Types::City]
    #
    # @!attribute [rw] country
    #   The country code of the remote IP address.
    #   @return [Types::Country]
    #
    # @!attribute [rw] geo_location
    #   The location information of the remote IP address.
    #   @return [Types::GeoLocation]
    #
    # @!attribute [rw] ip_address_v4
    #   The IPv4 remote address of the connection.
    #   @return [String]
    #
    # @!attribute [rw] organization
    #   The ISP organization information of the remote IP address.
    #   @return [Types::Organization]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/RemoteIpDetails AWS API Documentation
    #
    class RemoteIpDetails < Struct.new(
      :city,
      :country,
      :geo_location,
      :ip_address_v4,
      :organization)
      include Aws::Structure
    end

    # Contains information about the remote port.
    #
    # @!attribute [rw] port
    #   The port number of the remote connection.
    #   @return [Integer]
    #
    # @!attribute [rw] port_name
    #   The port name of the remote connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/RemotePortDetails AWS API Documentation
    #
    class RemotePortDetails < Struct.new(
      :port,
      :port_name)
      include Aws::Structure
    end

    # Contains information about the AWS resource associated with the
    # activity that prompted GuardDuty to generate a finding.
    #
    # @!attribute [rw] access_key_details
    #   The IAM access key details (IAM user information) of a user that
    #   engaged in the activity that prompted GuardDuty to generate a
    #   finding.
    #   @return [Types::AccessKeyDetails]
    #
    # @!attribute [rw] s3_bucket_details
    #   Contains information on the S3 bucket.
    #   @return [Array<Types::S3BucketDetail>]
    #
    # @!attribute [rw] instance_details
    #   The information about the EC2 instance associated with the activity
    #   that prompted GuardDuty to generate a finding.
    #   @return [Types::InstanceDetails]
    #
    # @!attribute [rw] resource_type
    #   The type of AWS resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Resource AWS API Documentation
    #
    class Resource < Struct.new(
      :access_key_details,
      :s3_bucket_details,
      :instance_details,
      :resource_type)
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Describes whether the bucket is a source or destination bucket.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the bucket was created at.
    #   @return [Time]
    #
    # @!attribute [rw] owner
    #   The owner of the S3 bucket.
    #   @return [Types::Owner]
    #
    # @!attribute [rw] tags
    #   All tags attached to the S3 bucket
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] default_server_side_encryption
    #   Describes the server side encryption method used in the S3 bucket.
    #   @return [Types::DefaultServerSideEncryption]
    #
    # @!attribute [rw] public_access
    #   Describes the public access policies that apply to the S3 bucket.
    #   @return [Types::PublicAccess]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/S3BucketDetail AWS API Documentation
    #
    class S3BucketDetail < Struct.new(
      :arn,
      :name,
      :type,
      :created_at,
      :owner,
      :tags,
      :default_server_side_encryption,
      :public_access)
      include Aws::Structure
    end

    # Contains information about the security groups associated with the EC2
    # instance.
    #
    # @!attribute [rw] group_id
    #   The security group ID of the EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The security group name of the EC2 instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/SecurityGroup AWS API Documentation
    #
    class SecurityGroup < Struct.new(
      :group_id,
      :group_name)
      include Aws::Structure
    end

    # Contains additional information about the generated finding.
    #
    # @!attribute [rw] action
    #   Information about the activity that is described in a finding.
    #   @return [Types::Action]
    #
    # @!attribute [rw] evidence
    #   An evidence object associated with the service.
    #   @return [Types::Evidence]
    #
    # @!attribute [rw] archived
    #   Indicates whether this finding is archived.
    #   @return [Boolean]
    #
    # @!attribute [rw] count
    #   The total count of the occurrences of this finding type.
    #   @return [Integer]
    #
    # @!attribute [rw] detector_id
    #   The detector ID for the GuardDuty service.
    #   @return [String]
    #
    # @!attribute [rw] event_first_seen
    #   The first-seen timestamp of the activity that prompted GuardDuty to
    #   generate this finding.
    #   @return [String]
    #
    # @!attribute [rw] event_last_seen
    #   The last-seen timestamp of the activity that prompted GuardDuty to
    #   generate this finding.
    #   @return [String]
    #
    # @!attribute [rw] resource_role
    #   The resource role information for this finding.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the AWS service (GuardDuty) that generated a finding.
    #   @return [String]
    #
    # @!attribute [rw] user_feedback
    #   Feedback that was submitted about the finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Service AWS API Documentation
    #
    class Service < Struct.new(
      :action,
      :evidence,
      :archived,
      :count,
      :detector_id,
      :event_first_seen,
      :event_last_seen,
      :resource_role,
      :service_name,
      :user_feedback)
      include Aws::Structure
    end

    # Contains information about the criteria used for sorting findings.
    #
    # @note When making an API call, you may pass SortCriteria
    #   data as a hash:
    #
    #       {
    #         attribute_name: "String",
    #         order_by: "ASC", # accepts ASC, DESC
    #       }
    #
    # @!attribute [rw] attribute_name
    #   Represents the finding attribute (for example, accountId) to sort
    #   findings by.
    #   @return [String]
    #
    # @!attribute [rw] order_by
    #   The order by which the sorted findings are to be displayed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/SortCriteria AWS API Documentation
    #
    class SortCriteria < Struct.new(
      :attribute_name,
      :order_by)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartMonitoringMembersRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         account_ids: ["AccountId"], # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   The unique ID of the detector of the GuardDuty master account
    #   associated with the member accounts to monitor.
    #   @return [String]
    #
    # @!attribute [rw] account_ids
    #   A list of account IDs of the GuardDuty member accounts to start
    #   monitoring.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/StartMonitoringMembersRequest AWS API Documentation
    #
    class StartMonitoringMembersRequest < Struct.new(
      :detector_id,
      :account_ids)
      include Aws::Structure
    end

    # @!attribute [rw] unprocessed_accounts
    #   A list of objects that contain the unprocessed account and a result
    #   string that explains why it was unprocessed.
    #   @return [Array<Types::UnprocessedAccount>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/StartMonitoringMembersResponse AWS API Documentation
    #
    class StartMonitoringMembersResponse < Struct.new(
      :unprocessed_accounts)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopMonitoringMembersRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         account_ids: ["AccountId"], # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   The unique ID of the detector associated with the GuardDuty master
    #   account that is monitoring member accounts.
    #   @return [String]
    #
    # @!attribute [rw] account_ids
    #   A list of account IDs for the member accounts to stop monitoring.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/StopMonitoringMembersRequest AWS API Documentation
    #
    class StopMonitoringMembersRequest < Struct.new(
      :detector_id,
      :account_ids)
      include Aws::Structure
    end

    # @!attribute [rw] unprocessed_accounts
    #   A list of objects that contain an accountId for each account that
    #   could not be processed, and a result string that indicates why the
    #   account was not processed.
    #   @return [Array<Types::UnprocessedAccount>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/StopMonitoringMembersResponse AWS API Documentation
    #
    class StopMonitoringMembersResponse < Struct.new(
      :unprocessed_accounts)
      include Aws::Structure
    end

    # Contains information about a tag associated with the EC2 instance.
    #
    # @!attribute [rw] key
    #   The EC2 instance tag key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The EC2 instance tag value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "GuardDutyArn", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for the GuardDuty resource to apply a
    #   tag to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be added to a resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # An instance of a threat intelligence detail that constitutes evidence
    # for the finding.
    #
    # @!attribute [rw] threat_list_name
    #   The name of the threat intelligence list that triggered the finding.
    #   @return [String]
    #
    # @!attribute [rw] threat_names
    #   A list of names of the threats in the threat intelligence list that
    #   triggered the finding.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ThreatIntelligenceDetail AWS API Documentation
    #
    class ThreatIntelligenceDetail < Struct.new(
      :threat_list_name,
      :threat_names)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UnarchiveFindingsRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         finding_ids: ["FindingId"], # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   The ID of the detector associated with the findings to unarchive.
    #   @return [String]
    #
    # @!attribute [rw] finding_ids
    #   The IDs of the findings to unarchive.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UnarchiveFindingsRequest AWS API Documentation
    #
    class UnarchiveFindingsRequest < Struct.new(
      :detector_id,
      :finding_ids)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UnarchiveFindingsResponse AWS API Documentation
    #
    class UnarchiveFindingsResponse < Aws::EmptyStructure; end

    # Contains information about the accounts that weren't processed.
    #
    # @!attribute [rw] account_id
    #   The AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] result
    #   A reason why the account hasn't been processed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UnprocessedAccount AWS API Documentation
    #
    class UnprocessedAccount < Struct.new(
      :account_id,
      :result)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "GuardDutyArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for the resource to remove tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateDetectorRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         enable: false,
    #         finding_publishing_frequency: "FIFTEEN_MINUTES", # accepts FIFTEEN_MINUTES, ONE_HOUR, SIX_HOURS
    #       }
    #
    # @!attribute [rw] detector_id
    #   The unique ID of the detector to update.
    #   @return [String]
    #
    # @!attribute [rw] enable
    #   Specifies whether the detector is enabled or not enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] finding_publishing_frequency
    #   An enum value that specifies how frequently findings are exported,
    #   such as to CloudWatch Events.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateDetectorRequest AWS API Documentation
    #
    class UpdateDetectorRequest < Struct.new(
      :detector_id,
      :enable,
      :finding_publishing_frequency)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateDetectorResponse AWS API Documentation
    #
    class UpdateDetectorResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateFilterRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         filter_name: "String", # required
    #         description: "FilterDescription",
    #         action: "NOOP", # accepts NOOP, ARCHIVE
    #         rank: 1,
    #         finding_criteria: {
    #           criterion: {
    #             "String" => {
    #               eq: ["String"],
    #               neq: ["String"],
    #               gt: 1,
    #               gte: 1,
    #               lt: 1,
    #               lte: 1,
    #               equals: ["String"],
    #               not_equals: ["String"],
    #               greater_than: 1,
    #               greater_than_or_equal: 1,
    #               less_than: 1,
    #               less_than_or_equal: 1,
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] detector_id
    #   The unique ID of the detector that specifies the GuardDuty service
    #   where you want to update a filter.
    #   @return [String]
    #
    # @!attribute [rw] filter_name
    #   The name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the filter.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   Specifies the action that is to be applied to the findings that
    #   match the filter.
    #   @return [String]
    #
    # @!attribute [rw] rank
    #   Specifies the position of the filter in the list of current filters.
    #   Also specifies the order in which this filter is applied to the
    #   findings.
    #   @return [Integer]
    #
    # @!attribute [rw] finding_criteria
    #   Represents the criteria to be used in the filter for querying
    #   findings.
    #   @return [Types::FindingCriteria]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateFilterRequest AWS API Documentation
    #
    class UpdateFilterRequest < Struct.new(
      :detector_id,
      :filter_name,
      :description,
      :action,
      :rank,
      :finding_criteria)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateFilterResponse AWS API Documentation
    #
    class UpdateFilterResponse < Struct.new(
      :name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateFindingsFeedbackRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         finding_ids: ["FindingId"], # required
    #         feedback: "USEFUL", # required, accepts USEFUL, NOT_USEFUL
    #         comments: "String",
    #       }
    #
    # @!attribute [rw] detector_id
    #   The ID of the detector associated with the findings to update
    #   feedback for.
    #   @return [String]
    #
    # @!attribute [rw] finding_ids
    #   The IDs of the findings that you want to mark as useful or not
    #   useful.
    #   @return [Array<String>]
    #
    # @!attribute [rw] feedback
    #   The feedback for the finding.
    #   @return [String]
    #
    # @!attribute [rw] comments
    #   Additional feedback about the GuardDuty findings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateFindingsFeedbackRequest AWS API Documentation
    #
    class UpdateFindingsFeedbackRequest < Struct.new(
      :detector_id,
      :finding_ids,
      :feedback,
      :comments)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateFindingsFeedbackResponse AWS API Documentation
    #
    class UpdateFindingsFeedbackResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateIPSetRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         ip_set_id: "String", # required
    #         name: "Name",
    #         location: "Location",
    #         activate: false,
    #       }
    #
    # @!attribute [rw] detector_id
    #   The detectorID that specifies the GuardDuty service whose IPSet you
    #   want to update.
    #   @return [String]
    #
    # @!attribute [rw] ip_set_id
    #   The unique ID that specifies the IPSet that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The unique ID that specifies the IPSet that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The updated URI of the file that contains the IPSet. For example:
    #   https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.
    #   @return [String]
    #
    # @!attribute [rw] activate
    #   The updated Boolean value that specifies whether the IPSet is active
    #   or not.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateIPSetRequest AWS API Documentation
    #
    class UpdateIPSetRequest < Struct.new(
      :detector_id,
      :ip_set_id,
      :name,
      :location,
      :activate)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateIPSetResponse AWS API Documentation
    #
    class UpdateIPSetResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateOrganizationConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         auto_enable: false, # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   The ID of the detector to update the delegated administrator for.
    #   @return [String]
    #
    # @!attribute [rw] auto_enable
    #   Indicates whether to automatically enable member accounts in the
    #   organization.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateOrganizationConfigurationRequest AWS API Documentation
    #
    class UpdateOrganizationConfigurationRequest < Struct.new(
      :detector_id,
      :auto_enable)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateOrganizationConfigurationResponse AWS API Documentation
    #
    class UpdateOrganizationConfigurationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdatePublishingDestinationRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         destination_id: "String", # required
    #         destination_properties: {
    #           destination_arn: "String",
    #           kms_key_arn: "String",
    #         },
    #       }
    #
    # @!attribute [rw] detector_id
    #   The ID of the detector associated with the publishing destinations
    #   to update.
    #   @return [String]
    #
    # @!attribute [rw] destination_id
    #   The ID of the publishing destination to update.
    #   @return [String]
    #
    # @!attribute [rw] destination_properties
    #   A `DestinationProperties` object that includes the `DestinationArn`
    #   and `KmsKeyArn` of the publishing destination.
    #   @return [Types::DestinationProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdatePublishingDestinationRequest AWS API Documentation
    #
    class UpdatePublishingDestinationRequest < Struct.new(
      :detector_id,
      :destination_id,
      :destination_properties)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdatePublishingDestinationResponse AWS API Documentation
    #
    class UpdatePublishingDestinationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateThreatIntelSetRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         threat_intel_set_id: "String", # required
    #         name: "Name",
    #         location: "Location",
    #         activate: false,
    #       }
    #
    # @!attribute [rw] detector_id
    #   The detectorID that specifies the GuardDuty service whose
    #   ThreatIntelSet you want to update.
    #   @return [String]
    #
    # @!attribute [rw] threat_intel_set_id
    #   The unique ID that specifies the ThreatIntelSet that you want to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The unique ID that specifies the ThreatIntelSet that you want to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The updated URI of the file that contains the ThreateIntelSet. For
    #   example: https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.
    #   @return [String]
    #
    # @!attribute [rw] activate
    #   The updated Boolean value that specifies whether the ThreateIntelSet
    #   is active or not.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateThreatIntelSetRequest AWS API Documentation
    #
    class UpdateThreatIntelSetRequest < Struct.new(
      :detector_id,
      :threat_intel_set_id,
      :name,
      :location,
      :activate)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateThreatIntelSetResponse AWS API Documentation
    #
    class UpdateThreatIntelSetResponse < Aws::EmptyStructure; end

  end
end
