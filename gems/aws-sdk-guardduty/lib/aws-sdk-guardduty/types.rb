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
    #   This value is used to validate the master account to the member
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

    # @!attribute [rw] access_key_id
    #   Access key ID of the user.
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

    # @note When making an API call, you may pass AccountDetail
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         email: "Email", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   Member account ID.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   Member account's email address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/AccountDetail AWS API Documentation
    #
    class AccountDetail < Struct.new(
      :account_id,
      :email)
      include Aws::Structure
    end

    # @!attribute [rw] action_type
    #   GuardDuty Finding activity type.
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
    #   IDs of the findings that you want to archive.
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

    # @!attribute [rw] api
    #   AWS API name.
    #   @return [String]
    #
    # @!attribute [rw] caller_type
    #   AWS API caller type.
    #   @return [String]
    #
    # @!attribute [rw] domain_details
    #   Domain information for the AWS API call.
    #   @return [Types::DomainDetails]
    #
    # @!attribute [rw] remote_ip_details
    #   Remote IP information of the connection.
    #   @return [Types::RemoteIpDetails]
    #
    # @!attribute [rw] service_name
    #   AWS service name whose API was invoked.
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

    # Bad request exception object.
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

    # @!attribute [rw] city_name
    #   City name of the remote IP address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/City AWS API Documentation
    #
    class City < Struct.new(
      :city_name)
      include Aws::Structure
    end

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
    #   Represents the equal condition to be applied to a single field when
    #   querying for findings.
    #   @return [Array<String>]
    #
    # @!attribute [rw] neq
    #   Represents the not equal condition to be applied to a single field
    #   when querying for findings.
    #   @return [Array<String>]
    #
    # @!attribute [rw] gt
    #   Represents a greater than condition to be applied to a single field
    #   when querying for findings.
    #   @return [Integer]
    #
    # @!attribute [rw] gte
    #   Represents a greater than equal condition to be applied to a single
    #   field when querying for findings.
    #   @return [Integer]
    #
    # @!attribute [rw] lt
    #   Represents a less than condition to be applied to a single field
    #   when querying for findings.
    #   @return [Integer]
    #
    # @!attribute [rw] lte
    #   Represents a less than equal condition to be applied to a single
    #   field when querying for findings.
    #   @return [Integer]
    #
    # @!attribute [rw] equals
    #   @return [Array<String>]
    #
    # @!attribute [rw] not_equals
    #   @return [Array<String>]
    #
    # @!attribute [rw] greater_than
    #   Represents a greater than condition to be applied to a single field
    #   when querying for findings.
    #   @return [Integer]
    #
    # @!attribute [rw] greater_than_or_equal
    #   Represents a greater than equal condition to be applied to a single
    #   field when querying for findings.
    #   @return [Integer]
    #
    # @!attribute [rw] less_than
    #   Represents a less than condition to be applied to a single field
    #   when querying for findings.
    #   @return [Integer]
    #
    # @!attribute [rw] less_than_or_equal
    #   Represents a less than equal condition to be applied to a single
    #   field when querying for findings.
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

    # @!attribute [rw] country_code
    #   Country code of the remote IP address.
    #   @return [String]
    #
    # @!attribute [rw] country_name
    #   Country name of the remote IP address.
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
    #   A boolean value that specifies whether the detector is to be
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
    #   A enum value that specifies how frequently customer got Finding
    #   updates published.
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
    #   The unique ID of the detector of the GuardDuty account for which you
    #   want to create a filter.
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
    #   The unique ID of the detector of the GuardDuty account for which you
    #   want to create an IPSet.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The user friendly name to identify the IPSet. This name is displayed
    #   in all findings that are triggered by activity that involves IP
    #   addresses included in this IPSet.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the file that contains the IPSet.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The URI of the file that contains the IPSet. For example
    #   (https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key)
    #   @return [String]
    #
    # @!attribute [rw] activate
    #   A boolean value that indicates whether GuardDuty is to start using
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
    #   The unique ID of the detector of the GuardDuty account with which
    #   you want to associate member accounts.
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
    #   A list of objects containing the unprocessed account and a result
    #   string explaining why it was unprocessed.
    #   @return [Array<Types::UnprocessedAccount>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateMembersResponse AWS API Documentation
    #
    class CreateMembersResponse < Struct.new(
      :unprocessed_accounts)
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
    #   Types of sample findings that you want to generate.
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
    #   The unique ID of the detector of the GuardDuty account for which you
    #   want to create a threatIntelSet.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A user-friendly ThreatIntelSet name that is displayed in all finding
    #   generated by activity that involves IP addresses included in this
    #   ThreatIntelSet.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the file that contains the ThreatIntelSet.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The URI of the file that contains the ThreatIntelSet. For example
    #   (https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key).
    #   @return [String]
    #
    # @!attribute [rw] activate
    #   A boolean value that indicates whether GuardDuty is to start using
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
    #   The tags to be added to a new Threat List resource.
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
    #   A list of objects containing the unprocessed account and a result
    #   string explaining why it was unprocessed.
    #   @return [Array<Types::UnprocessedAccount>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeclineInvitationsResponse AWS API Documentation
    #
    class DeclineInvitationsResponse < Struct.new(
      :unprocessed_accounts)
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
    #   The unique ID of the detector the filter is associated with.
    #   @return [String]
    #
    # @!attribute [rw] filter_name
    #   The name of the filter you want to delete.
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
    #   The unique ID of the detector the ipSet is associated with.
    #   @return [String]
    #
    # @!attribute [rw] ip_set_id
    #   The unique ID of the ipSet you want to delete.
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
    #   A list of objects containing the unprocessed account and a result
    #   string explaining why it was unprocessed.
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
    #   A list of objects containing the unprocessed account and a result
    #   string explaining why it was unprocessed.
    #   @return [Array<Types::UnprocessedAccount>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteMembersResponse AWS API Documentation
    #
    class DeleteMembersResponse < Struct.new(
      :unprocessed_accounts)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteThreatIntelSetRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         threat_intel_set_id: "String", # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   The unique ID of the detector the threatIntelSet is associated with.
    #   @return [String]
    #
    # @!attribute [rw] threat_intel_set_id
    #   The unique ID of the threatIntelSet you want to delete.
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
    #   you want to disassociate from master.
    #   @return [String]
    #
    # @!attribute [rw] account_ids
    #   A list of account IDs of the GuardDuty member accounts that you want
    #   to disassociate from master.
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
    #   A list of objects containing the unprocessed account and a result
    #   string explaining why it was unprocessed.
    #   @return [Array<Types::UnprocessedAccount>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DisassociateMembersResponse AWS API Documentation
    #
    class DisassociateMembersResponse < Struct.new(
      :unprocessed_accounts)
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   Domain information for the DNS request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DnsRequestAction AWS API Documentation
    #
    class DnsRequestAction < Struct.new(
      :domain)
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   Domain information for the AWS API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DomainDetails AWS API Documentation
    #
    class DomainDetails < Struct.new(
      :domain)
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   AWS account ID where the activity occurred that prompted GuardDuty
    #   to generate a finding.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of a finding described by the action.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   The confidence level of a finding.
    #   @return [Float]
    #
    # @!attribute [rw] created_at
    #   The time stamp at which a finding was generated.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of a finding.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier that corresponds to a finding described by the
    #   action.
    #   @return [String]
    #
    # @!attribute [rw] partition
    #   The AWS resource partition.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The AWS region where the activity occurred that prompted GuardDuty
    #   to generate a finding.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The AWS resource associated with the activity that prompted
    #   GuardDuty to generate a finding.
    #   @return [Types::Resource]
    #
    # @!attribute [rw] schema_version
    #   Findings' schema version.
    #   @return [String]
    #
    # @!attribute [rw] service
    #   Additional information assigned to the generated finding by
    #   GuardDuty.
    #   @return [Types::Service]
    #
    # @!attribute [rw] severity
    #   The severity of a finding.
    #   @return [Float]
    #
    # @!attribute [rw] title
    #   The title of a finding.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of a finding described by the action.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time stamp at which a finding was last updated.
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

    # @!attribute [rw] count_by_severity
    #   Represents a map of severity to count statistic for a set of
    #   findings
    #   @return [Hash<String,Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/FindingStatistics AWS API Documentation
    #
    class FindingStatistics < Struct.new(
      :count_by_severity)
      include Aws::Structure
    end

    # @!attribute [rw] lat
    #   Latitude information of remote IP address.
    #   @return [Float]
    #
    # @!attribute [rw] lon
    #   Longitude information of remote IP address.
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
    #   Detector creation timestamp.
    #   @return [String]
    #
    # @!attribute [rw] finding_publishing_frequency
    #   Finding publishing frequency.
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
    #   Detector last update timestamp.
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
    #   The unique ID of the detector the filter is associated with.
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
    #   IDs of the findings that you want to retrieve.
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
    #   Types of finding statistics to retrieve.
    #   @return [Array<String>]
    #
    # @!attribute [rw] finding_criteria
    #   Represents the criteria used for querying findings.
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
    #   Finding statistics object.
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
    #   The unique ID of the detector the ipSet is associated with.
    #   @return [String]
    #
    # @!attribute [rw] ip_set_id
    #   The unique ID of the ipSet you want to get.
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
    #   The user friendly name to identify the IPSet. This name is displayed
    #   in all findings that are triggered by activity that involves IP
    #   addresses included in this IPSet.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the file that contains the IPSet.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The URI of the file that contains the IPSet. For example
    #   (https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key)
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of ipSet file uploaded.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of the IP set resource.
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
    #   Master account details.
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
    #   A list of objects containing the unprocessed account and a result
    #   string explaining why it was unprocessed.
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
    #   The unique ID of the detector the threatIntelSet is associated with.
    #   @return [String]
    #
    # @!attribute [rw] threat_intel_set_id
    #   The unique ID of the threatIntelSet you want to get.
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
    #   A user-friendly ThreatIntelSet name that is displayed in all finding
    #   generated by activity that involves IP addresses included in this
    #   ThreatIntelSet.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the threatIntelSet.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The URI of the file that contains the ThreatIntelSet. For example
    #   (https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key).
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of threatIntelSet file uploaded.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of the Threat List resource.
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

    # @!attribute [rw] arn
    #   AWS EC2 instance profile ARN.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   AWS EC2 instance profile ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/IamInstanceProfile AWS API Documentation
    #
    class IamInstanceProfile < Struct.new(
      :arn,
      :id)
      include Aws::Structure
    end

    # @!attribute [rw] availability_zone
    #   The availability zone of the EC2 instance.
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
    # @!attribute [rw] launch_time
    #   The launch time of the EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] network_interfaces
    #   The network interface information of the EC2 instance.
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
      :launch_time,
      :network_interfaces,
      :platform,
      :product_codes,
      :tags)
      include Aws::Structure
    end

    # Internal server error exception object.
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

    # @!attribute [rw] account_id
    #   Inviter account ID
    #   @return [String]
    #
    # @!attribute [rw] invitation_id
    #   This value is used to validate the inviter account to the member
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] relationship_status
    #   The status of the relationship between the inviter and invitee
    #   accounts.
    #   @return [String]
    #
    # @!attribute [rw] invited_at
    #   Timestamp at which the invitation was sent
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
    #   The unique ID of the detector of the GuardDuty account with which
    #   you want to invite members.
    #   @return [String]
    #
    # @!attribute [rw] account_ids
    #   A list of account IDs of the accounts that you want to invite to
    #   GuardDuty as members.
    #   @return [Array<String>]
    #
    # @!attribute [rw] disable_email_notification
    #   A boolean value that specifies whether you want to disable email
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
    #   A list of objects containing the unprocessed account and a result
    #   string explaining why it was unprocessed.
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
    #   you want in the response. The default value is 50. The maximum value
    #   is 50.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action fill nextToken in the request with
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
    #   A list of detector Ids.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Pagination parameter to be used on the next list operation to
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
    #   The unique ID of the detector the filter is associated with.
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
    #   subsequent calls to the action fill nextToken in the request with
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
    #   A list of filter names
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Pagination parameter to be used on the next list operation to
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
    #   Represents the criteria used for querying findings.
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
    #   subsequent calls to the action fill nextToken in the request with
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
    #   The IDs of the findings you are listing.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Pagination parameter to be used on the next list operation to
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
    #   The unique ID of the detector the ipSet is associated with.
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
    #   subsequent calls to the action fill nextToken in the request with
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
    #   Pagination parameter to be used on the next list operation to
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
    #   you want in the response. The default value is 50. The maximum value
    #   is 50.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action fill nextToken in the request with
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
    #   Pagination parameter to be used on the next list operation to
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
    #   subsequent calls to the action fill nextToken in the request with
    #   the value of NextToken from the previous response to continue
    #   listing data.
    #   @return [String]
    #
    # @!attribute [rw] only_associated
    #   Specifies whether to only return associated members or to return all
    #   members (including members which haven't been invited yet or have
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
    #   Pagination parameter to be used on the next list operation to
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

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "GuardDutyArn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for the given GuardDuty resource
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      include Aws::Structure
    end

    # @!attribute [rw] tags
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
    #   The unique ID of the detector the threatIntelSet is associated with.
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
    #   subsequent calls to the action fill nextToken in the request with
    #   the value of NextToken from the previous response to continue
    #   listing data.
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
    #   Pagination parameter to be used on the next list operation to
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

    # @!attribute [rw] port
    #   Port number of the local connection.
    #   @return [Integer]
    #
    # @!attribute [rw] port_name
    #   Port name of the local connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/LocalPortDetails AWS API Documentation
    #
    class LocalPortDetails < Struct.new(
      :port,
      :port_name)
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   Master account ID
    #   @return [String]
    #
    # @!attribute [rw] invitation_id
    #   This value is used to validate the master account to the member
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] relationship_status
    #   The status of the relationship between the master and member
    #   accounts.
    #   @return [String]
    #
    # @!attribute [rw] invited_at
    #   Timestamp at which the invitation was sent
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

    # @!attribute [rw] account_id
    #   Member account ID.
    #   @return [String]
    #
    # @!attribute [rw] detector_id
    #   Member account's detector ID.
    #   @return [String]
    #
    # @!attribute [rw] master_id
    #   Master account ID.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   Member account's email address.
    #   @return [String]
    #
    # @!attribute [rw] relationship_status
    #   The status of the relationship between the member and the master.
    #   @return [String]
    #
    # @!attribute [rw] invited_at
    #   Timestamp at which the invitation was sent
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   Member last updated timestamp.
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

    # @!attribute [rw] blocked
    #   Network connection blocked information.
    #   @return [Boolean]
    #
    # @!attribute [rw] connection_direction
    #   Network connection direction.
    #   @return [String]
    #
    # @!attribute [rw] local_port_details
    #   Local port information of the connection.
    #   @return [Types::LocalPortDetails]
    #
    # @!attribute [rw] protocol
    #   Network connection protocol.
    #   @return [String]
    #
    # @!attribute [rw] remote_ip_details
    #   Remote IP information of the connection.
    #   @return [Types::RemoteIpDetails]
    #
    # @!attribute [rw] remote_port_details
    #   Remote port information of the connection.
    #   @return [Types::RemotePortDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/NetworkConnectionAction AWS API Documentation
    #
    class NetworkConnectionAction < Struct.new(
      :blocked,
      :connection_direction,
      :local_port_details,
      :protocol,
      :remote_ip_details,
      :remote_port_details)
      include Aws::Structure
    end

    # @!attribute [rw] ipv_6_addresses
    #   A list of EC2 instance IPv6 address information.
    #   @return [Array<String>]
    #
    # @!attribute [rw] network_interface_id
    #   The ID of the network interface
    #   @return [String]
    #
    # @!attribute [rw] private_dns_name
    #   Private DNS name of the EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] private_ip_address
    #   Private IP address of the EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] private_ip_addresses
    #   Other private IP address information of the EC2 instance.
    #   @return [Array<Types::PrivateIpAddressDetails>]
    #
    # @!attribute [rw] public_dns_name
    #   Public DNS name of the EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] public_ip
    #   Public IP address of the EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   Security groups associated with the EC2 instance.
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

    # @!attribute [rw] asn
    #   Autonomous system number of the internet provider of the remote IP
    #   address.
    #   @return [String]
    #
    # @!attribute [rw] asn_org
    #   Organization that registered this ASN.
    #   @return [String]
    #
    # @!attribute [rw] isp
    #   ISP information for the internet provider.
    #   @return [String]
    #
    # @!attribute [rw] org
    #   Name of the internet provider.
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

    # @!attribute [rw] blocked
    #   Port probe blocked information.
    #   @return [Boolean]
    #
    # @!attribute [rw] port_probe_details
    #   A list of port probe details objects.
    #   @return [Array<Types::PortProbeDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/PortProbeAction AWS API Documentation
    #
    class PortProbeAction < Struct.new(
      :blocked,
      :port_probe_details)
      include Aws::Structure
    end

    # @!attribute [rw] local_port_details
    #   Local port information of the connection.
    #   @return [Types::LocalPortDetails]
    #
    # @!attribute [rw] remote_ip_details
    #   Remote IP information of the connection.
    #   @return [Types::RemoteIpDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/PortProbeDetail AWS API Documentation
    #
    class PortProbeDetail < Struct.new(
      :local_port_details,
      :remote_ip_details)
      include Aws::Structure
    end

    # @!attribute [rw] private_dns_name
    #   Private DNS name of the EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] private_ip_address
    #   Private IP address of the EC2 instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/PrivateIpAddressDetails AWS API Documentation
    #
    class PrivateIpAddressDetails < Struct.new(
      :private_dns_name,
      :private_ip_address)
      include Aws::Structure
    end

    # @!attribute [rw] code
    #   Product code information.
    #   @return [String]
    #
    # @!attribute [rw] product_type
    #   Product code type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ProductCode AWS API Documentation
    #
    class ProductCode < Struct.new(
      :code,
      :product_type)
      include Aws::Structure
    end

    # @!attribute [rw] city
    #   City information of the remote IP address.
    #   @return [Types::City]
    #
    # @!attribute [rw] country
    #   Country code of the remote IP address.
    #   @return [Types::Country]
    #
    # @!attribute [rw] geo_location
    #   Location information of the remote IP address.
    #   @return [Types::GeoLocation]
    #
    # @!attribute [rw] ip_address_v4
    #   IPV4 remote address of the connection.
    #   @return [String]
    #
    # @!attribute [rw] organization
    #   ISP Organization information of the remote IP address.
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

    # @!attribute [rw] port
    #   Port number of the remote connection.
    #   @return [Integer]
    #
    # @!attribute [rw] port_name
    #   Port name of the remote connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/RemotePortDetails AWS API Documentation
    #
    class RemotePortDetails < Struct.new(
      :port,
      :port_name)
      include Aws::Structure
    end

    # @!attribute [rw] access_key_details
    #   The IAM access key details (IAM user information) of a user that
    #   engaged in the activity that prompted GuardDuty to generate a
    #   finding.
    #   @return [Types::AccessKeyDetails]
    #
    # @!attribute [rw] instance_details
    #   The information about the EC2 instance associated with the activity
    #   that prompted GuardDuty to generate a finding.
    #   @return [Types::InstanceDetails]
    #
    # @!attribute [rw] resource_type
    #   The type of the AWS resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Resource AWS API Documentation
    #
    class Resource < Struct.new(
      :access_key_details,
      :instance_details,
      :resource_type)
      include Aws::Structure
    end

    # @!attribute [rw] group_id
    #   EC2 instance's security group ID.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   EC2 instance's security group name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/SecurityGroup AWS API Documentation
    #
    class SecurityGroup < Struct.new(
      :group_id,
      :group_name)
      include Aws::Structure
    end

    # @!attribute [rw] action
    #   Information about the activity described in a finding.
    #   @return [Types::Action]
    #
    # @!attribute [rw] archived
    #   Indicates whether this finding is archived.
    #   @return [Boolean]
    #
    # @!attribute [rw] count
    #   Total count of the occurrences of this finding type.
    #   @return [Integer]
    #
    # @!attribute [rw] detector_id
    #   Detector ID for the GuardDuty service.
    #   @return [String]
    #
    # @!attribute [rw] event_first_seen
    #   First seen timestamp of the activity that prompted GuardDuty to
    #   generate this finding.
    #   @return [String]
    #
    # @!attribute [rw] event_last_seen
    #   Last seen timestamp of the activity that prompted GuardDuty to
    #   generate this finding.
    #   @return [String]
    #
    # @!attribute [rw] resource_role
    #   Resource role information for this finding.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the AWS service (GuardDuty) that generated a finding.
    #   @return [String]
    #
    # @!attribute [rw] user_feedback
    #   Feedback left about the finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Service AWS API Documentation
    #
    class Service < Struct.new(
      :action,
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

    # @note When making an API call, you may pass SortCriteria
    #   data as a hash:
    #
    #       {
    #         attribute_name: "String",
    #         order_by: "ASC", # accepts ASC, DESC
    #       }
    #
    # @!attribute [rw] attribute_name
    #   Represents the finding attribute (for example, accountId) by which
    #   to sort findings.
    #   @return [String]
    #
    # @!attribute [rw] order_by
    #   Order by which the sorted findings are to be displayed.
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
    #   The unique ID of the detector of the GuardDuty account whom you want
    #   to re-enable to monitor members' findings.
    #   @return [String]
    #
    # @!attribute [rw] account_ids
    #   A list of account IDs of the GuardDuty member accounts whose
    #   findings you want the master account to monitor.
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
    #   A list of objects containing the unprocessed account and a result
    #   string explaining why it was unprocessed.
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
    #   The unique ID of the detector of the GuardDuty account that you want
    #   to stop from monitor members' findings.
    #   @return [String]
    #
    # @!attribute [rw] account_ids
    #   A list of account IDs of the GuardDuty member accounts whose
    #   findings you want the master account to stop monitoring.
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
    #   A list of objects containing the unprocessed account and a result
    #   string explaining why it was unprocessed.
    #   @return [Array<Types::UnprocessedAccount>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/StopMonitoringMembersResponse AWS API Documentation
    #
    class StopMonitoringMembersResponse < Struct.new(
      :unprocessed_accounts)
      include Aws::Structure
    end

    # @!attribute [rw] key
    #   EC2 instance tag key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   EC2 instance tag value.
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
    #   The Amazon Resource Name (ARN) for the given GuardDuty resource
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

    # @note When making an API call, you may pass UnarchiveFindingsRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "DetectorId", # required
    #         finding_ids: ["FindingId"], # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   The ID of the detector that specifies the GuardDuty service whose
    #   findings you want to unarchive.
    #   @return [String]
    #
    # @!attribute [rw] finding_ids
    #   IDs of the findings that you want to unarchive.
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

    # @!attribute [rw] account_id
    #   AWS Account ID.
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
    #   The Amazon Resource Name (ARN) for the given GuardDuty resource
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys to remove from a resource.
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
    #   The unique ID of the detector that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] enable
    #   Updated boolean value for the detector that specifies whether the
    #   detector is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] finding_publishing_frequency
    #   A enum value that specifies how frequently customer got Finding
    #   updates published.
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
    #   The ID of the detector that specifies the GuardDuty service whose
    #   findings you want to mark as useful or not useful.
    #   @return [String]
    #
    # @!attribute [rw] finding_ids
    #   IDs of the findings that you want to mark as useful or not useful.
    #   @return [Array<String>]
    #
    # @!attribute [rw] feedback
    #   Valid values: USEFUL \| NOT\_USEFUL
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
    #   The updated URI of the file that contains the IPSet. For example
    #   (https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key).
    #   @return [String]
    #
    # @!attribute [rw] activate
    #   The updated boolean value that specifies whether the IPSet is active
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
    #   example (https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key)
    #   @return [String]
    #
    # @!attribute [rw] activate
    #   The updated boolean value that specifies whether the ThreateIntelSet
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
