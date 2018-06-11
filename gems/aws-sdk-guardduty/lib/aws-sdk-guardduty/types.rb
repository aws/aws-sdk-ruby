# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::GuardDuty
  module Types

    # AcceptInvitation request body.
    #
    # @note When making an API call, you may pass AcceptInvitationRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "__string", # required
    #         invitation_id: "InvitationId",
    #         master_id: "MasterId",
    #       }
    #
    # @!attribute [rw] detector_id
    #   @return [String]
    #
    # @!attribute [rw] invitation_id
    #   This value is used to validate the master account to the member
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] master_id
    #   The account ID of the master GuardDuty account whose invitation
    #   you're accepting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/AcceptInvitationRequest AWS API Documentation
    #
    class AcceptInvitationRequest < Struct.new(
      :detector_id,
      :invitation_id,
      :master_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/AcceptInvitationResponse AWS API Documentation
    #
    class AcceptInvitationResponse < Aws::EmptyStructure; end

    # The IAM access key details (IAM user information) of a user that
    # engaged in the activity that prompted GuardDuty to generate a finding.
    #
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

    # An object containing the member's accountId and email address.
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

    # Information about the activity described in a finding.
    #
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

    # Archive Findings Request
    #
    # @note When making an API call, you may pass ArchiveFindingsRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "__string", # required
    #         finding_ids: ["FindingId"],
    #       }
    #
    # @!attribute [rw] detector_id
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

    # Information about the AWS\_API\_CALL action described in this finding.
    #
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

    # City information of the remote IP address.
    #
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

    # Finding attribute (for example, accountId) for which conditions and
    # values must be specified when querying findings.
    #
    # @note When making an API call, you may pass Condition
    #   data as a hash:
    #
    #       {
    #         eq: ["__string"],
    #         gt: 1,
    #         gte: 1,
    #         lt: 1,
    #         lte: 1,
    #         neq: ["__string"],
    #       }
    #
    # @!attribute [rw] eq
    #   Represents the equal condition to be applied to a single field when
    #   querying for findings.
    #   @return [Array<String>]
    #
    # @!attribute [rw] gt
    #   Represents the greater than condition to be applied to a single
    #   field when querying for findings.
    #   @return [Integer]
    #
    # @!attribute [rw] gte
    #   Represents the greater than equal condition to be applied to a
    #   single field when querying for findings.
    #   @return [Integer]
    #
    # @!attribute [rw] lt
    #   Represents the less than condition to be applied to a single field
    #   when querying for findings.
    #   @return [Integer]
    #
    # @!attribute [rw] lte
    #   Represents the less than equal condition to be applied to a single
    #   field when querying for findings.
    #   @return [Integer]
    #
    # @!attribute [rw] neq
    #   Represents the not equal condition to be applied to a single field
    #   when querying for findings.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Condition AWS API Documentation
    #
    class Condition < Struct.new(
      :eq,
      :gt,
      :gte,
      :lt,
      :lte,
      :neq)
      include Aws::Structure
    end

    # Country information of the remote IP address.
    #
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

    # Create Detector Request
    #
    # @note When making an API call, you may pass CreateDetectorRequest
    #   data as a hash:
    #
    #       {
    #         enable: false,
    #       }
    #
    # @!attribute [rw] enable
    #   A boolean value that specifies whether the detector is to be
    #   enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateDetectorRequest AWS API Documentation
    #
    class CreateDetectorRequest < Struct.new(
      :enable)
      include Aws::Structure
    end

    # CreateDetector response object.
    #
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

    # CreateFilter request object.
    #
    # @note When making an API call, you may pass CreateFilterRequest
    #   data as a hash:
    #
    #       {
    #         action: "NOOP", # accepts NOOP, ARCHIVE
    #         client_token: "__stringMin0Max64",
    #         description: "FilterDescription",
    #         detector_id: "__string", # required
    #         finding_criteria: {
    #           criterion: {
    #             "__string" => {
    #               eq: ["__string"],
    #               gt: 1,
    #               gte: 1,
    #               lt: 1,
    #               lte: 1,
    #               neq: ["__string"],
    #             },
    #           },
    #         },
    #         name: "FilterName",
    #         rank: 1,
    #       }
    #
    # @!attribute [rw] action
    #   Specifies the action that is to be applied to the findings that
    #   match the filter.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token for the create request.**A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the filter.
    #   @return [String]
    #
    # @!attribute [rw] detector_id
    #   @return [String]
    #
    # @!attribute [rw] finding_criteria
    #   Represents the criteria to be used in the filter for querying
    #   findings.
    #   @return [Types::FindingCriteria]
    #
    # @!attribute [rw] name
    #   The name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] rank
    #   Specifies the position of the filter in the list of current filters.
    #   Also specifies the order in which this filter is applied to the
    #   findings.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateFilterRequest AWS API Documentation
    #
    class CreateFilterRequest < Struct.new(
      :action,
      :client_token,
      :description,
      :detector_id,
      :finding_criteria,
      :name,
      :rank)
      include Aws::Structure
    end

    # CreateFilter response object.
    #
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

    # Create IP Set Request
    #
    # @note When making an API call, you may pass CreateIPSetRequest
    #   data as a hash:
    #
    #       {
    #         activate: false,
    #         detector_id: "__string", # required
    #         format: "TXT", # accepts TXT, STIX, OTX_CSV, ALIEN_VAULT, PROOF_POINT, FIRE_EYE
    #         location: "Location",
    #         name: "Name",
    #       }
    #
    # @!attribute [rw] activate
    #   A boolean value that indicates whether GuardDuty is to start using
    #   the uploaded IPSet.
    #   @return [Boolean]
    #
    # @!attribute [rw] detector_id
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
    # @!attribute [rw] name
    #   The user friendly name to identify the IPSet. This name is displayed
    #   in all findings that are triggered by activity that involves IP
    #   addresses included in this IPSet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateIPSetRequest AWS API Documentation
    #
    class CreateIPSetRequest < Struct.new(
      :activate,
      :detector_id,
      :format,
      :location,
      :name)
      include Aws::Structure
    end

    # CreateIPSet response object.
    #
    # @!attribute [rw] ip_set_id
    #   The unique identifier for an IP Set
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateIPSetResponse AWS API Documentation
    #
    class CreateIPSetResponse < Struct.new(
      :ip_set_id)
      include Aws::Structure
    end

    # CreateMembers body
    #
    # @note When making an API call, you may pass CreateMembersRequest
    #   data as a hash:
    #
    #       {
    #         account_details: [
    #           {
    #             account_id: "AccountId", # required
    #             email: "Email", # required
    #           },
    #         ],
    #         detector_id: "__string", # required
    #       }
    #
    # @!attribute [rw] account_details
    #   A list of account ID and email address pairs of the accounts that
    #   you want to associate with the master GuardDuty account.
    #   @return [Array<Types::AccountDetail>]
    #
    # @!attribute [rw] detector_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateMembersRequest AWS API Documentation
    #
    class CreateMembersRequest < Struct.new(
      :account_details,
      :detector_id)
      include Aws::Structure
    end

    # CreateMembers response object.
    #
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

    # Create Sample Findings Request
    #
    # @note When making an API call, you may pass CreateSampleFindingsRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "__string", # required
    #         finding_types: ["FindingType"],
    #       }
    #
    # @!attribute [rw] detector_id
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

    # Create Threat Intel Set Request
    #
    # @note When making an API call, you may pass CreateThreatIntelSetRequest
    #   data as a hash:
    #
    #       {
    #         activate: false,
    #         detector_id: "__string", # required
    #         format: "TXT", # accepts TXT, STIX, OTX_CSV, ALIEN_VAULT, PROOF_POINT, FIRE_EYE
    #         location: "Location",
    #         name: "Name",
    #       }
    #
    # @!attribute [rw] activate
    #   A boolean value that indicates whether GuardDuty is to start using
    #   the uploaded ThreatIntelSet.
    #   @return [Boolean]
    #
    # @!attribute [rw] detector_id
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
    # @!attribute [rw] name
    #   A user-friendly ThreatIntelSet name that is displayed in all finding
    #   generated by activity that involves IP addresses included in this
    #   ThreatIntelSet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateThreatIntelSetRequest AWS API Documentation
    #
    class CreateThreatIntelSetRequest < Struct.new(
      :activate,
      :detector_id,
      :format,
      :location,
      :name)
      include Aws::Structure
    end

    # CreateThreatIntelSet response object.
    #
    # @!attribute [rw] threat_intel_set_id
    #   The unique identifier for an threat intel set
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateThreatIntelSetResponse AWS API Documentation
    #
    class CreateThreatIntelSetResponse < Struct.new(
      :threat_intel_set_id)
      include Aws::Structure
    end

    # DeclineInvitations request body.
    #
    # @note When making an API call, you may pass DeclineInvitationsRequest
    #   data as a hash:
    #
    #       {
    #         account_ids: ["__string"],
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

    # DeclineInvitations response object.
    #
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
    #         detector_id: "__string", # required
    #       }
    #
    # @!attribute [rw] detector_id
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
    #         detector_id: "__string", # required
    #         filter_name: "__string", # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   @return [String]
    #
    # @!attribute [rw] filter_name
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
    #         detector_id: "__string", # required
    #         ip_set_id: "__string", # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   @return [String]
    #
    # @!attribute [rw] ip_set_id
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

    # DeleteInvitations request body.
    #
    # @note When making an API call, you may pass DeleteInvitationsRequest
    #   data as a hash:
    #
    #       {
    #         account_ids: ["__string"],
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

    # DeleteInvitations response object.
    #
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

    # DeleteMembers request body.
    #
    # @note When making an API call, you may pass DeleteMembersRequest
    #   data as a hash:
    #
    #       {
    #         account_ids: ["__string"],
    #         detector_id: "__string", # required
    #       }
    #
    # @!attribute [rw] account_ids
    #   A list of account IDs of the GuardDuty member accounts that you want
    #   to delete.
    #   @return [Array<String>]
    #
    # @!attribute [rw] detector_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteMembersRequest AWS API Documentation
    #
    class DeleteMembersRequest < Struct.new(
      :account_ids,
      :detector_id)
      include Aws::Structure
    end

    # DeleteMembers response object.
    #
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
    #         detector_id: "__string", # required
    #         threat_intel_set_id: "__string", # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   @return [String]
    #
    # @!attribute [rw] threat_intel_set_id
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
    #         detector_id: "__string", # required
    #       }
    #
    # @!attribute [rw] detector_id
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

    # DisassociateMembers request body.
    #
    # @note When making an API call, you may pass DisassociateMembersRequest
    #   data as a hash:
    #
    #       {
    #         account_ids: ["__string"],
    #         detector_id: "__string", # required
    #       }
    #
    # @!attribute [rw] account_ids
    #   A list of account IDs of the GuardDuty member accounts that you want
    #   to disassociate from master.
    #   @return [Array<String>]
    #
    # @!attribute [rw] detector_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DisassociateMembersRequest AWS API Documentation
    #
    class DisassociateMembersRequest < Struct.new(
      :account_ids,
      :detector_id)
      include Aws::Structure
    end

    # DisassociateMembers response object.
    #
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

    # Information about the DNS\_REQUEST action described in this finding.
    #
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

    # Domain information for the AWS API call.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DomainDetails AWS API Documentation
    #
    class DomainDetails < Aws::EmptyStructure; end

    # Error response object.
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The error type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ErrorResponse AWS API Documentation
    #
    class ErrorResponse < Struct.new(
      :message,
      :type)
      include Aws::Structure
    end

    # Representation of a abnormal or suspicious activity.
    #
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

    # Represents the criteria used for querying findings.
    #
    # @note When making an API call, you may pass FindingCriteria
    #   data as a hash:
    #
    #       {
    #         criterion: {
    #           "__string" => {
    #             eq: ["__string"],
    #             gt: 1,
    #             gte: 1,
    #             lt: 1,
    #             lte: 1,
    #             neq: ["__string"],
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

    # Finding statistics object.
    #
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

    # Location information of the remote IP address.
    #
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
    #         detector_id: "__string", # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetDetectorRequest AWS API Documentation
    #
    class GetDetectorRequest < Struct.new(
      :detector_id)
      include Aws::Structure
    end

    # GetDetector response object.
    #
    # @!attribute [rw] created_at
    #   The first time a resource was created. The format will be ISO-8601.
    #   @return [String]
    #
    # @!attribute [rw] service_role
    #   Customer serviceRole name or ARN for accessing customer resources
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of detector.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The first time a resource was created. The format will be ISO-8601.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetDetectorResponse AWS API Documentation
    #
    class GetDetectorResponse < Struct.new(
      :created_at,
      :service_role,
      :status,
      :updated_at)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetFilterRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "__string", # required
    #         filter_name: "__string", # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   @return [String]
    #
    # @!attribute [rw] filter_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetFilterRequest AWS API Documentation
    #
    class GetFilterRequest < Struct.new(
      :detector_id,
      :filter_name)
      include Aws::Structure
    end

    # GetFilter response object.
    #
    # @!attribute [rw] action
    #   Specifies the action that is to be applied to the findings that
    #   match the filter.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the filter.
    #   @return [String]
    #
    # @!attribute [rw] finding_criteria
    #   Represents the criteria to be used in the filter for querying
    #   findings.
    #   @return [Types::FindingCriteria]
    #
    # @!attribute [rw] name
    #   The name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] rank
    #   Specifies the position of the filter in the list of current filters.
    #   Also specifies the order in which this filter is applied to the
    #   findings.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetFilterResponse AWS API Documentation
    #
    class GetFilterResponse < Struct.new(
      :action,
      :description,
      :finding_criteria,
      :name,
      :rank)
      include Aws::Structure
    end

    # Get Findings Request
    #
    # @note When making an API call, you may pass GetFindingsRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "__string", # required
    #         finding_ids: ["FindingId"],
    #         sort_criteria: {
    #           attribute_name: "__string",
    #           order_by: "ASC", # accepts ASC, DESC
    #         },
    #       }
    #
    # @!attribute [rw] detector_id
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

    # GetFindings response object.
    #
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

    # Get Findings Statistics Request
    #
    # @note When making an API call, you may pass GetFindingsStatisticsRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "__string", # required
    #         finding_criteria: {
    #           criterion: {
    #             "__string" => {
    #               eq: ["__string"],
    #               gt: 1,
    #               gte: 1,
    #               lt: 1,
    #               lte: 1,
    #               neq: ["__string"],
    #             },
    #           },
    #         },
    #         finding_statistic_types: ["COUNT_BY_SEVERITY"], # accepts COUNT_BY_SEVERITY
    #       }
    #
    # @!attribute [rw] detector_id
    #   @return [String]
    #
    # @!attribute [rw] finding_criteria
    #   Represents the criteria used for querying findings.
    #   @return [Types::FindingCriteria]
    #
    # @!attribute [rw] finding_statistic_types
    #   Types of finding statistics to retrieve.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetFindingsStatisticsRequest AWS API Documentation
    #
    class GetFindingsStatisticsRequest < Struct.new(
      :detector_id,
      :finding_criteria,
      :finding_statistic_types)
      include Aws::Structure
    end

    # GetFindingsStatistics response object.
    #
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
    #         detector_id: "__string", # required
    #         ip_set_id: "__string", # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   @return [String]
    #
    # @!attribute [rw] ip_set_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetIPSetRequest AWS API Documentation
    #
    class GetIPSetRequest < Struct.new(
      :detector_id,
      :ip_set_id)
      include Aws::Structure
    end

    # GetIPSet response object.
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
    # @!attribute [rw] name
    #   The user friendly name to identify the IPSet. This name is displayed
    #   in all findings that are triggered by activity that involves IP
    #   addresses included in this IPSet.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of ipSet file uploaded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetIPSetResponse AWS API Documentation
    #
    class GetIPSetResponse < Struct.new(
      :format,
      :location,
      :name,
      :status)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetInvitationsCountRequest AWS API Documentation
    #
    class GetInvitationsCountRequest < Aws::EmptyStructure; end

    # GetInvitationsCount response object.
    #
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
    #         detector_id: "__string", # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetMasterAccountRequest AWS API Documentation
    #
    class GetMasterAccountRequest < Struct.new(
      :detector_id)
      include Aws::Structure
    end

    # GetMasterAccount response object.
    #
    # @!attribute [rw] master
    #   Contains details about the master account.
    #   @return [Types::Master]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetMasterAccountResponse AWS API Documentation
    #
    class GetMasterAccountResponse < Struct.new(
      :master)
      include Aws::Structure
    end

    # GetMembers request body.
    #
    # @note When making an API call, you may pass GetMembersRequest
    #   data as a hash:
    #
    #       {
    #         account_ids: ["__string"],
    #         detector_id: "__string", # required
    #       }
    #
    # @!attribute [rw] account_ids
    #   A list of account IDs of the GuardDuty member accounts that you want
    #   to describe.
    #   @return [Array<String>]
    #
    # @!attribute [rw] detector_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetMembersRequest AWS API Documentation
    #
    class GetMembersRequest < Struct.new(
      :account_ids,
      :detector_id)
      include Aws::Structure
    end

    # GetMembers response object.
    #
    # @!attribute [rw] members
    #   A list of member descriptions.
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
    #         detector_id: "__string", # required
    #         threat_intel_set_id: "__string", # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   @return [String]
    #
    # @!attribute [rw] threat_intel_set_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetThreatIntelSetRequest AWS API Documentation
    #
    class GetThreatIntelSetRequest < Struct.new(
      :detector_id,
      :threat_intel_set_id)
      include Aws::Structure
    end

    # GetThreatIntelSet response object
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
    # @!attribute [rw] name
    #   A user-friendly ThreatIntelSet name that is displayed in all finding
    #   generated by activity that involves IP addresses included in this
    #   ThreatIntelSet.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of threatIntelSet file uploaded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetThreatIntelSetResponse AWS API Documentation
    #
    class GetThreatIntelSetResponse < Struct.new(
      :format,
      :location,
      :name,
      :status)
      include Aws::Structure
    end

    # The profile information of the EC2 instance.
    #
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

    # The information about the EC2 instance associated with the activity
    # that prompted GuardDuty to generate a finding.
    #
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

    # Invitation from an AWS account to become the current account's
    # master.
    #
    # @!attribute [rw] account_id
    #   Inviter account ID
    #   @return [String]
    #
    # @!attribute [rw] invitation_id
    #   This value is used to validate the inviter account to the member
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] invited_at
    #   Timestamp at which the invitation was sent
    #   @return [String]
    #
    # @!attribute [rw] relationship_status
    #   The status of the relationship between the inviter and invitee
    #   accounts.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Invitation AWS API Documentation
    #
    class Invitation < Struct.new(
      :account_id,
      :invitation_id,
      :invited_at,
      :relationship_status)
      include Aws::Structure
    end

    # InviteMembers request body.
    #
    # @note When making an API call, you may pass InviteMembersRequest
    #   data as a hash:
    #
    #       {
    #         account_ids: ["__string"],
    #         detector_id: "__string", # required
    #         disable_email_notification: false,
    #         message: "Message",
    #       }
    #
    # @!attribute [rw] account_ids
    #   A list of account IDs of the accounts that you want to invite to
    #   GuardDuty as members.
    #   @return [Array<String>]
    #
    # @!attribute [rw] detector_id
    #   @return [String]
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
      :account_ids,
      :detector_id,
      :disable_email_notification,
      :message)
      include Aws::Structure
    end

    # InviteMembers response object.
    #
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
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   You can use this parameter to indicate the maximum number of items
    #   that you want in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListDetectorsRequest AWS API Documentation
    #
    class ListDetectorsRequest < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # ListDetectors response object.
    #
    # @!attribute [rw] detector_ids
    #   A list of detector Ids.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action fill nextToken in the request with
    #   the value of NextToken from the previous response to continue
    #   listing data.
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
    #         detector_id: "__string", # required
    #         max_results: 1,
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] detector_id
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   You can use this parameter to indicate the maximum number of items
    #   that you want in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
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

    # ListFilters response object.
    #
    # @!attribute [rw] filter_names
    #   A list of filter names
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action fill nextToken in the request with
    #   the value of NextToken from the previous response to continue
    #   listing data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListFiltersResponse AWS API Documentation
    #
    class ListFiltersResponse < Struct.new(
      :filter_names,
      :next_token)
      include Aws::Structure
    end

    # List Findings Request
    #
    # @note When making an API call, you may pass ListFindingsRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "__string", # required
    #         finding_criteria: {
    #           criterion: {
    #             "__string" => {
    #               eq: ["__string"],
    #               gt: 1,
    #               gte: 1,
    #               lt: 1,
    #               lte: 1,
    #               neq: ["__string"],
    #             },
    #           },
    #         },
    #         max_results: 1,
    #         next_token: "NextToken",
    #         sort_criteria: {
    #           attribute_name: "__string",
    #           order_by: "ASC", # accepts ASC, DESC
    #         },
    #       }
    #
    # @!attribute [rw] detector_id
    #   @return [String]
    #
    # @!attribute [rw] finding_criteria
    #   Represents the criteria used for querying findings.
    #   @return [Types::FindingCriteria]
    #
    # @!attribute [rw] max_results
    #   You can use this parameter to indicate the maximum number of items
    #   you want in the response. The default value is 50. The maximum value
    #   is 50.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the ListFindings
    #   action. For subsequent calls to the action fill nextToken in the
    #   request with the value of nextToken from the previous response to
    #   continue listing data.
    #   @return [String]
    #
    # @!attribute [rw] sort_criteria
    #   Represents the criteria used for sorting findings.
    #   @return [Types::SortCriteria]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListFindingsRequest AWS API Documentation
    #
    class ListFindingsRequest < Struct.new(
      :detector_id,
      :finding_criteria,
      :max_results,
      :next_token,
      :sort_criteria)
      include Aws::Structure
    end

    # ListFindings response object.
    #
    # @!attribute [rw] finding_ids
    #   The list of the Findings.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action fill nextToken in the request with
    #   the value of NextToken from the previous response to continue
    #   listing data.
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
    #         detector_id: "__string", # required
    #         max_results: 1,
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] detector_id
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   You can use this parameter to indicate the maximum number of items
    #   that you want in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
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

    # ListIPSets response object.
    #
    # @!attribute [rw] ip_set_ids
    #   A list of the IP set IDs
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action fill nextToken in the request with
    #   the value of NextToken from the previous response to continue
    #   listing data.
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
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   You can use this parameter to indicate the maximum number of items
    #   that you want in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListInvitationsRequest AWS API Documentation
    #
    class ListInvitationsRequest < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # ListInvitations response object.
    #
    # @!attribute [rw] invitations
    #   A list of invitation descriptions.
    #   @return [Array<Types::Invitation>]
    #
    # @!attribute [rw] next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action fill nextToken in the request with
    #   the value of NextToken from the previous response to continue
    #   listing data.
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
    #         detector_id: "__string", # required
    #         max_results: 1,
    #         next_token: "__string",
    #         only_associated: "__string",
    #       }
    #
    # @!attribute [rw] detector_id
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   You can use this parameter to indicate the maximum number of items
    #   that you want in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] only_associated
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

    # ListMembers response object.
    #
    # @!attribute [rw] members
    #   A list of member descriptions.
    #   @return [Array<Types::Member>]
    #
    # @!attribute [rw] next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action fill nextToken in the request with
    #   the value of NextToken from the previous response to continue
    #   listing data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListMembersResponse AWS API Documentation
    #
    class ListMembersResponse < Struct.new(
      :members,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListThreatIntelSetsRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "__string", # required
    #         max_results: 1,
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] detector_id
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   You can use this parameter to indicate the maximum number of items
    #   that you want in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
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

    # ListThreatIntelSets response object.
    #
    # @!attribute [rw] next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action fill nextToken in the request with
    #   the value of NextToken from the previous response to continue
    #   listing data.
    #   @return [String]
    #
    # @!attribute [rw] threat_intel_set_ids
    #   The list of the threat intel set IDs
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListThreatIntelSetsResponse AWS API Documentation
    #
    class ListThreatIntelSetsResponse < Struct.new(
      :next_token,
      :threat_intel_set_ids)
      include Aws::Structure
    end

    # Local port information of the connection.
    #
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

    # Contains details about the master account.
    #
    # @!attribute [rw] account_id
    #   Master account ID
    #   @return [String]
    #
    # @!attribute [rw] invitation_id
    #   This value is used to validate the master account to the member
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] invited_at
    #   Timestamp at which the invitation was sent
    #   @return [String]
    #
    # @!attribute [rw] relationship_status
    #   The status of the relationship between the master and member
    #   accounts.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Master AWS API Documentation
    #
    class Master < Struct.new(
      :account_id,
      :invitation_id,
      :invited_at,
      :relationship_status)
      include Aws::Structure
    end

    # Contains details about the member account.
    #
    # @!attribute [rw] account_id
    #   AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] detector_id
    #   The unique identifier for a detector.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   Member account's email address.
    #   @return [String]
    #
    # @!attribute [rw] invited_at
    #   Timestamp at which the invitation was sent
    #   @return [String]
    #
    # @!attribute [rw] master_id
    #   The master account ID.
    #   @return [String]
    #
    # @!attribute [rw] relationship_status
    #   The status of the relationship between the member and the master.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The first time a resource was created. The format will be ISO-8601.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Member AWS API Documentation
    #
    class Member < Struct.new(
      :account_id,
      :detector_id,
      :email,
      :invited_at,
      :master_id,
      :relationship_status,
      :updated_at)
      include Aws::Structure
    end

    # Information about the NETWORK\_CONNECTION action described in this
    # finding.
    #
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

    # The network interface information of the EC2 instance.
    #
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

    # ISP Organization information of the remote IP address.
    #
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

    # Information about the PORT\_PROBE action described in this finding.
    #
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

    # Details about the port probe finding.
    #
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

    # Other private IP address information of the EC2 instance.
    #
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

    # The product code of the EC2 instance.
    #
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

    # Remote IP information of the connection.
    #
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

    # Remote port information of the connection.
    #
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

    # The AWS resource associated with the activity that prompted GuardDuty
    # to generate a finding.
    #
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

    # Security groups associated with the EC2 instance.
    #
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

    # Additional information assigned to the generated finding by GuardDuty.
    #
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

    # Represents the criteria used for sorting findings.
    #
    # @note When making an API call, you may pass SortCriteria
    #   data as a hash:
    #
    #       {
    #         attribute_name: "__string",
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

    # StartMonitoringMembers request body.
    #
    # @note When making an API call, you may pass StartMonitoringMembersRequest
    #   data as a hash:
    #
    #       {
    #         account_ids: ["__string"],
    #         detector_id: "__string", # required
    #       }
    #
    # @!attribute [rw] account_ids
    #   A list of account IDs of the GuardDuty member accounts whose
    #   findings you want the master account to monitor.
    #   @return [Array<String>]
    #
    # @!attribute [rw] detector_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/StartMonitoringMembersRequest AWS API Documentation
    #
    class StartMonitoringMembersRequest < Struct.new(
      :account_ids,
      :detector_id)
      include Aws::Structure
    end

    # StartMonitoringMembers response object.
    #
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

    # StopMonitoringMembers request body.
    #
    # @note When making an API call, you may pass StopMonitoringMembersRequest
    #   data as a hash:
    #
    #       {
    #         account_ids: ["__string"],
    #         detector_id: "__string", # required
    #       }
    #
    # @!attribute [rw] account_ids
    #   A list of account IDs of the GuardDuty member accounts whose
    #   findings you want the master account to stop monitoring.
    #   @return [Array<String>]
    #
    # @!attribute [rw] detector_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/StopMonitoringMembersRequest AWS API Documentation
    #
    class StopMonitoringMembersRequest < Struct.new(
      :account_ids,
      :detector_id)
      include Aws::Structure
    end

    # StopMonitoringMembers response object.
    #
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

    # A tag of the EC2 instance.
    #
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

    # Unrchive Findings Request
    #
    # @note When making an API call, you may pass UnarchiveFindingsRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "__string", # required
    #         finding_ids: ["FindingId"],
    #       }
    #
    # @!attribute [rw] detector_id
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

    # An object containing the unprocessed account and a result string
    # explaining why it was unprocessed.
    #
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

    # Update Detector Request
    #
    # @note When making an API call, you may pass UpdateDetectorRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "__string", # required
    #         enable: false,
    #       }
    #
    # @!attribute [rw] detector_id
    #   @return [String]
    #
    # @!attribute [rw] enable
    #   Updated boolean value for the detector that specifies whether the
    #   detector is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateDetectorRequest AWS API Documentation
    #
    class UpdateDetectorRequest < Struct.new(
      :detector_id,
      :enable)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateDetectorResponse AWS API Documentation
    #
    class UpdateDetectorResponse < Aws::EmptyStructure; end

    # UpdateFilter request object.
    #
    # @note When making an API call, you may pass UpdateFilterRequest
    #   data as a hash:
    #
    #       {
    #         action: "NOOP", # accepts NOOP, ARCHIVE
    #         description: "FilterDescription",
    #         detector_id: "__string", # required
    #         filter_name: "__string", # required
    #         finding_criteria: {
    #           criterion: {
    #             "__string" => {
    #               eq: ["__string"],
    #               gt: 1,
    #               gte: 1,
    #               lt: 1,
    #               lte: 1,
    #               neq: ["__string"],
    #             },
    #           },
    #         },
    #         rank: 1,
    #       }
    #
    # @!attribute [rw] action
    #   Specifies the action that is to be applied to the findings that
    #   match the filter.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the filter.
    #   @return [String]
    #
    # @!attribute [rw] detector_id
    #   @return [String]
    #
    # @!attribute [rw] filter_name
    #   @return [String]
    #
    # @!attribute [rw] finding_criteria
    #   Represents the criteria to be used in the filter for querying
    #   findings.
    #   @return [Types::FindingCriteria]
    #
    # @!attribute [rw] rank
    #   Specifies the position of the filter in the list of current filters.
    #   Also specifies the order in which this filter is applied to the
    #   findings.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateFilterRequest AWS API Documentation
    #
    class UpdateFilterRequest < Struct.new(
      :action,
      :description,
      :detector_id,
      :filter_name,
      :finding_criteria,
      :rank)
      include Aws::Structure
    end

    # UpdateFilter response object.
    #
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

    # Update findings feedback body
    #
    # @note When making an API call, you may pass UpdateFindingsFeedbackRequest
    #   data as a hash:
    #
    #       {
    #         comments: "Comments",
    #         detector_id: "__string", # required
    #         feedback: "USEFUL", # accepts USEFUL, NOT_USEFUL
    #         finding_ids: ["FindingId"],
    #       }
    #
    # @!attribute [rw] comments
    #   Additional feedback about the GuardDuty findings.
    #   @return [String]
    #
    # @!attribute [rw] detector_id
    #   @return [String]
    #
    # @!attribute [rw] feedback
    #   Valid values: USEFUL \| NOT\_USEFUL
    #   @return [String]
    #
    # @!attribute [rw] finding_ids
    #   IDs of the findings that you want to mark as useful or not useful.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateFindingsFeedbackRequest AWS API Documentation
    #
    class UpdateFindingsFeedbackRequest < Struct.new(
      :comments,
      :detector_id,
      :feedback,
      :finding_ids)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateFindingsFeedbackResponse AWS API Documentation
    #
    class UpdateFindingsFeedbackResponse < Aws::EmptyStructure; end

    # Update IP Set Request
    #
    # @note When making an API call, you may pass UpdateIPSetRequest
    #   data as a hash:
    #
    #       {
    #         activate: false,
    #         detector_id: "__string", # required
    #         ip_set_id: "__string", # required
    #         location: "Location",
    #         name: "Name",
    #       }
    #
    # @!attribute [rw] activate
    #   The updated boolean value that specifies whether the IPSet is active
    #   or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] detector_id
    #   @return [String]
    #
    # @!attribute [rw] ip_set_id
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The updated URI of the file that contains the IPSet. For example
    #   (https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key).
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The unique ID that specifies the IPSet that you want to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateIPSetRequest AWS API Documentation
    #
    class UpdateIPSetRequest < Struct.new(
      :activate,
      :detector_id,
      :ip_set_id,
      :location,
      :name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateIPSetResponse AWS API Documentation
    #
    class UpdateIPSetResponse < Aws::EmptyStructure; end

    # Update Threat Intel Set Request
    #
    # @note When making an API call, you may pass UpdateThreatIntelSetRequest
    #   data as a hash:
    #
    #       {
    #         activate: false,
    #         detector_id: "__string", # required
    #         location: "Location",
    #         name: "Name",
    #         threat_intel_set_id: "__string", # required
    #       }
    #
    # @!attribute [rw] activate
    #   The updated boolean value that specifies whether the ThreateIntelSet
    #   is active or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] detector_id
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The updated URI of the file that contains the ThreateIntelSet. For
    #   example (https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key)
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The unique ID that specifies the ThreatIntelSet that you want to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] threat_intel_set_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateThreatIntelSetRequest AWS API Documentation
    #
    class UpdateThreatIntelSetRequest < Struct.new(
      :activate,
      :detector_id,
      :location,
      :name,
      :threat_intel_set_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateThreatIntelSetResponse AWS API Documentation
    #
    class UpdateThreatIntelSetResponse < Aws::EmptyStructure; end

  end
end
