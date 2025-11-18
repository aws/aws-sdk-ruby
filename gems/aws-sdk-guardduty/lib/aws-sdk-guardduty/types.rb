# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::GuardDuty
  module Types

    # @!attribute [rw] detector_id
    #   The unique ID of the detector of the GuardDuty member account.
    #   @return [String]
    #
    # @!attribute [rw] administrator_id
    #   The account ID of the GuardDuty administrator account whose
    #   invitation you're accepting.
    #   @return [String]
    #
    # @!attribute [rw] invitation_id
    #   The value that is used to validate the administrator account to the
    #   member account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/AcceptAdministratorInvitationRequest AWS API Documentation
    #
    class AcceptAdministratorInvitationRequest < Struct.new(
      :detector_id,
      :administrator_id,
      :invitation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/AcceptAdministratorInvitationResponse AWS API Documentation
    #
    class AcceptAdministratorInvitationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector of the GuardDuty member account.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #   @return [String]
    #
    # @!attribute [rw] master_id
    #   The account ID of the GuardDuty administrator account whose
    #   invitation you're accepting.
    #   @return [String]
    #
    # @!attribute [rw] invitation_id
    #   The value that is used to validate the administrator account to the
    #   member account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/AcceptInvitationRequest AWS API Documentation
    #
    class AcceptInvitationRequest < Struct.new(
      :detector_id,
      :master_id,
      :invitation_id)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # An access denied exception object.
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The error type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the access keys.
    #
    # @!attribute [rw] principal_id
    #   Principal ID of the user.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   Name of the user.
    #   @return [String]
    #
    # @!attribute [rw] user_type
    #   Type of the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/AccessKey AWS API Documentation
    #
    class AccessKey < Struct.new(
      :principal_id,
      :user_name,
      :user_type)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the account.
    #
    # @!attribute [rw] uid
    #   ID of the member's Amazon Web Services account
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the member's Amazon Web Services account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Account AWS API Documentation
    #
    class Account < Struct.new(
      :uid,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the account.
    #
    # @!attribute [rw] account_id
    #   The member account ID.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address of the member account. The following list includes
    #   the rules for a valid email address:
    #
    #   * The email address must be a minimum of 6 and a maximum of 64
    #     characters long.
    #
    #   * All characters must be 7-bit ASCII characters.
    #
    #   * There must be one and only one @ symbol, which separates the local
    #     name from the domain name.
    #
    #   * The local name can't contain any of the following characters:
    #
    #     whitespace, " ' ( ) &lt; &gt; \[ \] : ' , \\ \| % &amp;
    #
    #   * The local name can't begin with a dot (.).
    #
    #   * The domain name can consist of only the characters \[a-z\],
    #     \[A-Z\], \[0-9\], hyphen (-), or dot (.).
    #
    #   * The domain name can't begin or end with a dot (.) or hyphen (-).
    #
    #   * The domain name must contain at least one dot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/AccountDetail AWS API Documentation
    #
    class AccountDetail < Struct.new(
      :account_id,
      :email)
      SENSITIVE = [:email]
      include Aws::Structure
    end

    # Provides details of the GuardDuty member account that uses a free
    # trial service.
    #
    # @!attribute [rw] account_id
    #   The account identifier of the GuardDuty member account.
    #   @return [String]
    #
    # @!attribute [rw] data_sources
    #   Describes the data source enabled for the GuardDuty member account.
    #   @return [Types::DataSourcesFreeTrial]
    #
    # @!attribute [rw] features
    #   A list of features enabled for the GuardDuty account.
    #   @return [Array<Types::FreeTrialFeatureConfigurationResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/AccountFreeTrialInfo AWS API Documentation
    #
    class AccountFreeTrialInfo < Struct.new(
      :account_id,
      :data_sources,
      :features)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a list of map of accounts with the number of findings
    # associated with each account.
    #
    # @!attribute [rw] account_id
    #   The ID of the Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] last_generated_at
    #   The timestamp at which the finding for this account was last
    #   generated.
    #   @return [Time]
    #
    # @!attribute [rw] total_findings
    #   The total number of findings associated with an account.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/AccountStatistics AWS API Documentation
    #
    class AccountStatistics < Struct.new(
      :account_id,
      :last_generated_at,
      :total_findings)
      SENSITIVE = []
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
    # @!attribute [rw] kubernetes_api_call_action
    #   Information about the Kubernetes API call action described in this
    #   finding.
    #   @return [Types::KubernetesApiCallAction]
    #
    # @!attribute [rw] rds_login_attempt_action
    #   Information about `RDS_LOGIN_ATTEMPT` action described in this
    #   finding.
    #   @return [Types::RdsLoginAttemptAction]
    #
    # @!attribute [rw] kubernetes_permission_checked_details
    #   Information whether the user has the permission to use a specific
    #   Kubernetes API.
    #   @return [Types::KubernetesPermissionCheckedDetails]
    #
    # @!attribute [rw] kubernetes_role_binding_details
    #   Information about the role binding that grants the permission
    #   defined in a Kubernetes role.
    #   @return [Types::KubernetesRoleBindingDetails]
    #
    # @!attribute [rw] kubernetes_role_details
    #   Information about the Kubernetes role name and role type.
    #   @return [Types::KubernetesRoleDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Action AWS API Documentation
    #
    class Action < Struct.new(
      :action_type,
      :aws_api_call_action,
      :dns_request_action,
      :network_connection_action,
      :port_probe_action,
      :kubernetes_api_call_action,
      :rds_login_attempt_action,
      :kubernetes_permission_checked_details,
      :kubernetes_role_binding_details,
      :kubernetes_role_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the actors involved in an attack sequence.
    #
    # @!attribute [rw] id
    #   ID of the threat actor.
    #   @return [String]
    #
    # @!attribute [rw] user
    #   Contains information about the user credentials used by the threat
    #   actor.
    #   @return [Types::User]
    #
    # @!attribute [rw] session
    #   Contains information about the user session where the activity
    #   initiated.
    #   @return [Types::Session]
    #
    # @!attribute [rw] process
    #   Contains information about the process associated with the threat
    #   actor. This includes details such as process name, path, execution
    #   time, and unique identifiers that help track the actor's activities
    #   within the system.
    #   @return [Types::ActorProcess]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Actor AWS API Documentation
    #
    class Actor < Struct.new(
      :id,
      :user,
      :session,
      :process)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a process involved in a GuardDuty finding,
    # including process identification, execution details, and file
    # information.
    #
    # @!attribute [rw] name
    #   The name of the process as it appears in the system.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The full file path to the process executable on the system.
    #   @return [String]
    #
    # @!attribute [rw] sha_256
    #   The SHA256 hash of the process executable file, which can be used
    #   for identification and verification purposes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ActorProcess AWS API Documentation
    #
    class ActorProcess < Struct.new(
      :name,
      :path,
      :sha_256)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the installed EKS add-on (GuardDuty security agent).
    #
    # @!attribute [rw] addon_version
    #   Version of the installed EKS add-on.
    #   @return [String]
    #
    # @!attribute [rw] addon_status
    #   Status of the installed EKS add-on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/AddonDetails AWS API Documentation
    #
    class AddonDetails < Struct.new(
      :addon_version,
      :addon_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The account within the organization specified as the GuardDuty
    # delegated administrator.
    #
    # @!attribute [rw] admin_account_id
    #   The Amazon Web Services account ID for the account.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the administrator account and invitation.
    #
    # @!attribute [rw] account_id
    #   The ID of the account used as the administrator account.
    #   @return [String]
    #
    # @!attribute [rw] invitation_id
    #   The value that is used to validate the administrator account to the
    #   member account.
    #   @return [String]
    #
    # @!attribute [rw] relationship_status
    #   The status of the relationship between the administrator and member
    #   accounts.
    #   @return [String]
    #
    # @!attribute [rw] invited_at
    #   The timestamp when the invitation was sent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Administrator AWS API Documentation
    #
    class Administrator < Struct.new(
      :account_id,
      :invitation_id,
      :relationship_status,
      :invited_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the installed GuardDuty security agent.
    #
    # @!attribute [rw] version
    #   Version of the installed GuardDuty security agent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/AgentDetails AWS API Documentation
    #
    class AgentDetails < Struct.new(
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the anomalies.
    #
    # @!attribute [rw] profiles
    #   Information about the types of profiles.
    #   @return [Hash<String,Hash<String,Array<Types::AnomalyObject>>>]
    #
    # @!attribute [rw] unusual
    #   Information about the behavior of the anomalies.
    #   @return [Types::AnomalyUnusual]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Anomaly AWS API Documentation
    #
    class Anomaly < Struct.new(
      :profiles,
      :unusual)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the unusual anomalies.
    #
    # @!attribute [rw] profile_type
    #   The type of behavior of the profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_subtype
    #   The frequency of the anomaly.
    #   @return [String]
    #
    # @!attribute [rw] observations
    #   The recorded value.
    #   @return [Types::Observations]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/AnomalyObject AWS API Documentation
    #
    class AnomalyObject < Struct.new(
      :profile_type,
      :profile_subtype,
      :observations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the behavior of the anomaly that is new to
    # GuardDuty.
    #
    # @!attribute [rw] behavior
    #   The behavior of the anomalous activity that caused GuardDuty to
    #   generate the finding.
    #   @return [Hash<String,Hash<String,Types::AnomalyObject>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/AnomalyUnusual AWS API Documentation
    #
    class AnomalyUnusual < Struct.new(
      :behavior)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The ID of the detector that specifies the GuardDuty service whose
    #   findings you want to archive.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ArchiveFindingsResponse AWS API Documentation
    #
    class ArchiveFindingsResponse < Aws::EmptyStructure; end

    # Contains information about the Autonomous System (AS) associated with
    # the network endpoints involved in an attack sequence.
    #
    # @!attribute [rw] name
    #   Name associated with the Autonomous System (AS).
    #   @return [String]
    #
    # @!attribute [rw] number
    #   The unique number that identifies the Autonomous System (AS).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/AutonomousSystem AWS API Documentation
    #
    class AutonomousSystem < Struct.new(
      :name,
      :number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the API action.
    #
    # @!attribute [rw] api
    #   The Amazon Web Services API name.
    #   @return [String]
    #
    # @!attribute [rw] caller_type
    #   The Amazon Web Services API caller type.
    #   @return [String]
    #
    # @!attribute [rw] domain_details
    #   The domain information for the Amazon Web Services API call.
    #   @return [Types::DomainDetails]
    #
    # @!attribute [rw] error_code
    #   The error code of the failed Amazon Web Services API action.
    #   @return [String]
    #
    # @!attribute [rw] user_agent
    #   The agent through which the API request was made.
    #   @return [String]
    #
    # @!attribute [rw] remote_ip_details
    #   The remote IP information of the connection that initiated the
    #   Amazon Web Services API call.
    #   @return [Types::RemoteIpDetails]
    #
    # @!attribute [rw] service_name
    #   The Amazon Web Services service name whose API was invoked.
    #   @return [String]
    #
    # @!attribute [rw] remote_account_details
    #   The details of the Amazon Web Services account that made the API
    #   call. This field appears if the call was made from outside your
    #   account.
    #   @return [Types::RemoteAccountDetails]
    #
    # @!attribute [rw] affected_resources
    #   The details of the Amazon Web Services account that made the API
    #   call. This field identifies the resources that were affected by this
    #   API call.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/AwsApiCallAction AWS API Documentation
    #
    class AwsApiCallAction < Struct.new(
      :api,
      :caller_type,
      :domain_details,
      :error_code,
      :user_agent,
      :remote_ip_details,
      :service_name,
      :remote_account_details,
      :affected_resources)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information on the status of CloudTrail as a data source for
    # the detector.
    #
    # @!attribute [rw] status
    #   Describes whether CloudTrail is enabled as a data source for the
    #   detector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CloudTrailConfigurationResult AWS API Documentation
    #
    class CloudTrailConfigurationResult < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the condition.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A request conflict exception object.
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The error type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of a container.
    #
    # @!attribute [rw] container_runtime
    #   The container runtime (such as, Docker or containerd) used to run
    #   the container.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Container ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Container name.
    #   @return [String]
    #
    # @!attribute [rw] image
    #   Container image.
    #   @return [String]
    #
    # @!attribute [rw] image_prefix
    #   Part of the image name before the last slash. For example,
    #   imagePrefix for public.ecr.aws/amazonlinux/amazonlinux:latest would
    #   be public.ecr.aws/amazonlinux. If the image name is relative and
    #   does not have a slash, this field is empty.
    #   @return [String]
    #
    # @!attribute [rw] volume_mounts
    #   Container volume mounts.
    #   @return [Array<Types::VolumeMount>]
    #
    # @!attribute [rw] security_context
    #   Container security context.
    #   @return [Types::SecurityContext]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Container AWS API Documentation
    #
    class Container < Struct.new(
      :container_runtime,
      :id,
      :name,
      :image,
      :image_prefix,
      :volume_mounts,
      :security_context)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about container resources involved in a GuardDuty
    # finding. This structure provides details about containers that were
    # identified as part of suspicious or malicious activity.
    #
    # @!attribute [rw] image
    #   The container image information, including the image name and tag
    #   used to run the container that was involved in the finding.
    #   @return [String]
    #
    # @!attribute [rw] image_uid
    #   The unique ID associated with the container image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ContainerFindingResource AWS API Documentation
    #
    class ContainerFindingResource < Struct.new(
      :image,
      :image_uid)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the Amazon EC2 instance that is running the
    # Amazon ECS container.
    #
    # @!attribute [rw] covered_container_instances
    #   Represents the nodes in the Amazon ECS cluster that has a `HEALTHY`
    #   coverage status.
    #   @return [Integer]
    #
    # @!attribute [rw] compatible_container_instances
    #   Represents total number of nodes in the Amazon ECS cluster.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ContainerInstanceDetails AWS API Documentation
    #
    class ContainerInstanceDetails < Struct.new(
      :covered_container_instances,
      :compatible_container_instances)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the Amazon EC2 instance runtime coverage
    # details.
    #
    # @!attribute [rw] instance_id
    #   The Amazon EC2 instance ID.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type of the Amazon EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] cluster_arn
    #   The cluster ARN of the Amazon ECS cluster running on the Amazon EC2
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] agent_details
    #   Information about the installed security agent.
    #   @return [Types::AgentDetails]
    #
    # @!attribute [rw] management_type
    #   Indicates how the GuardDuty security agent is managed for this
    #   resource.
    #
    #   * `AUTO_MANAGED` indicates that GuardDuty deploys and manages
    #     updates for this resource.
    #
    #   * `MANUAL` indicates that you are responsible to deploy, update, and
    #     manage the GuardDuty security agent updates for this resource.
    #
    #   <note markdown="1"> The `DISABLED` status doesn't apply to Amazon EC2 instances and
    #   Amazon EKS clusters.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CoverageEc2InstanceDetails AWS API Documentation
    #
    class CoverageEc2InstanceDetails < Struct.new(
      :instance_id,
      :instance_type,
      :cluster_arn,
      :agent_details,
      :management_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about Amazon ECS cluster runtime coverage
    # details.
    #
    # @!attribute [rw] cluster_name
    #   The name of the Amazon ECS cluster.
    #   @return [String]
    #
    # @!attribute [rw] fargate_details
    #   Information about the Fargate details associated with the Amazon ECS
    #   cluster.
    #   @return [Types::FargateDetails]
    #
    # @!attribute [rw] container_instance_details
    #   Information about the Amazon ECS container running on Amazon EC2
    #   instance.
    #   @return [Types::ContainerInstanceDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CoverageEcsClusterDetails AWS API Documentation
    #
    class CoverageEcsClusterDetails < Struct.new(
      :cluster_name,
      :fargate_details,
      :container_instance_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the EKS cluster that has a coverage status.
    #
    # @!attribute [rw] cluster_name
    #   Name of the EKS cluster.
    #   @return [String]
    #
    # @!attribute [rw] covered_nodes
    #   Represents the nodes within the EKS cluster that have a `HEALTHY`
    #   coverage status.
    #   @return [Integer]
    #
    # @!attribute [rw] compatible_nodes
    #   Represents all the nodes within the EKS cluster in your account.
    #   @return [Integer]
    #
    # @!attribute [rw] addon_details
    #   Information about the installed EKS add-on.
    #   @return [Types::AddonDetails]
    #
    # @!attribute [rw] management_type
    #   Indicates how the Amazon EKS add-on GuardDuty agent is managed for
    #   this EKS cluster.
    #
    #   `AUTO_MANAGED` indicates GuardDuty deploys and manages updates for
    #   this resource.
    #
    #   `MANUAL` indicates that you are responsible to deploy, update, and
    #   manage the Amazon EKS add-on GuardDuty agent for this resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CoverageEksClusterDetails AWS API Documentation
    #
    class CoverageEksClusterDetails < Struct.new(
      :cluster_name,
      :covered_nodes,
      :compatible_nodes,
      :addon_details,
      :management_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a condition that when matched will be added to the response
    # of the operation.
    #
    # @!attribute [rw] equals
    #   Represents an equal condition that is applied to a single field
    #   while retrieving the coverage details.
    #   @return [Array<String>]
    #
    # @!attribute [rw] not_equals
    #   Represents a not equal condition that is applied to a single field
    #   while retrieving the coverage details.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CoverageFilterCondition AWS API Documentation
    #
    class CoverageFilterCondition < Struct.new(
      :equals,
      :not_equals)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the criteria used in the filter.
    #
    # @!attribute [rw] filter_criterion
    #   Represents a condition that when matched will be added to the
    #   response of the operation.
    #   @return [Array<Types::CoverageFilterCriterion>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CoverageFilterCriteria AWS API Documentation
    #
    class CoverageFilterCriteria < Struct.new(
      :filter_criterion)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a condition that when matched will be added to the response
    # of the operation.
    #
    # @!attribute [rw] criterion_key
    #   An enum value representing possible filter fields.
    #
    #   <note markdown="1"> Replace the enum value `CLUSTER_NAME` with `EKS_CLUSTER_NAME`.
    #   `CLUSTER_NAME` has been deprecated.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] filter_condition
    #   Contains information about the condition.
    #   @return [Types::CoverageFilterCondition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CoverageFilterCriterion AWS API Documentation
    #
    class CoverageFilterCriterion < Struct.new(
      :criterion_key,
      :filter_condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the resource of the GuardDuty account.
    #
    # @!attribute [rw] resource_id
    #   The unique ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] detector_id
    #   The unique ID of the GuardDuty detector associated with the
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The unique ID of the Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] resource_details
    #   Information about the resource for which the coverage statistics are
    #   retrieved.
    #   @return [Types::CoverageResourceDetails]
    #
    # @!attribute [rw] coverage_status
    #   Represents the status of the EKS cluster coverage.
    #   @return [String]
    #
    # @!attribute [rw] issue
    #   Represents the reason why a coverage status was `UNHEALTHY` for the
    #   EKS cluster.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp at which the coverage details for the resource were
    #   last updated. This is in UTC format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CoverageResource AWS API Documentation
    #
    class CoverageResource < Struct.new(
      :resource_id,
      :detector_id,
      :account_id,
      :resource_details,
      :coverage_status,
      :issue,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the resource for each individual EKS cluster.
    #
    # @!attribute [rw] eks_cluster_details
    #   EKS cluster details involved in the coverage statistics.
    #   @return [Types::CoverageEksClusterDetails]
    #
    # @!attribute [rw] resource_type
    #   The type of Amazon Web Services resource.
    #   @return [String]
    #
    # @!attribute [rw] ecs_cluster_details
    #   Information about the Amazon ECS cluster that is assessed for
    #   runtime coverage.
    #   @return [Types::CoverageEcsClusterDetails]
    #
    # @!attribute [rw] ec2_instance_details
    #   Information about the Amazon EC2 instance assessed for runtime
    #   coverage.
    #   @return [Types::CoverageEc2InstanceDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CoverageResourceDetails AWS API Documentation
    #
    class CoverageResourceDetails < Struct.new(
      :eks_cluster_details,
      :resource_type,
      :ecs_cluster_details,
      :ec2_instance_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the sorting criteria used in the coverage
    # statistics.
    #
    # @!attribute [rw] attribute_name
    #   Represents the field name used to sort the coverage details.
    #
    #   <note markdown="1"> Replace the enum value `CLUSTER_NAME` with `EKS_CLUSTER_NAME`.
    #   `CLUSTER_NAME` has been deprecated.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] order_by
    #   The order in which the sorted findings are to be displayed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CoverageSortCriteria AWS API Documentation
    #
    class CoverageSortCriteria < Struct.new(
      :attribute_name,
      :order_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the coverage statistics for a resource.
    #
    # @!attribute [rw] count_by_resource_type
    #   Represents coverage statistics for EKS clusters aggregated by
    #   resource type.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] count_by_coverage_status
    #   Represents coverage statistics for EKS clusters aggregated by
    #   coverage status.
    #   @return [Hash<String,Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CoverageStatistics AWS API Documentation
    #
    class CoverageStatistics < Struct.new(
      :count_by_resource_type,
      :count_by_coverage_status)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   A value that specifies how frequently updated findings are exported.
    #   @return [String]
    #
    # @!attribute [rw] data_sources
    #   Describes which data sources will be enabled for the detector.
    #
    #   There might be regional differences because some data sources might
    #   not be available in all the Amazon Web Services Regions where
    #   GuardDuty is presently supported. For more information, see [Regions
    #   and endpoints][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html
    #   @return [Types::DataSourceConfigurations]
    #
    # @!attribute [rw] tags
    #   The tags to be added to a new detector resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] features
    #   A list of features that will be configured for the detector.
    #   @return [Array<Types::DetectorFeatureConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateDetectorRequest AWS API Documentation
    #
    class CreateDetectorRequest < Struct.new(
      :enable,
      :client_token,
      :finding_publishing_frequency,
      :data_sources,
      :tags,
      :features)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The unique ID of the created detector.
    #   @return [String]
    #
    # @!attribute [rw] unprocessed_data_sources
    #   Specifies the data sources that couldn't be enabled when GuardDuty
    #   was enabled for the first time.
    #   @return [Types::UnprocessedDataSourcesResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateDetectorResponse AWS API Documentation
    #
    class CreateDetectorResponse < Struct.new(
      :detector_id,
      :unprocessed_data_sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The detector ID associated with the GuardDuty account for which you
    #   want to create a filter.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the filter. Valid characters include period (.),
    #   underscore (\_), dash (-), and alphanumeric characters. A whitespace
    #   is considered to be an invalid character.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the filter. Valid characters include alphanumeric
    #   characters, and special characters such as hyphen, period, colon,
    #   underscore, parentheses (`{ }`, `[ ]`, and `( )`), forward slash,
    #   horizontal tab, vertical tab, newline, form feed, return, and
    #   whitespace.
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
    #   * id
    #
    #   * region
    #
    #   * severity
    #
    #     To filter on the basis of severity, the API and CLI use the
    #     following input list for the [FindingCriteria][1] condition:
    #
    #     * **Low**: `["1", "2", "3"]`
    #
    #     * **Medium**: `["4", "5", "6"]`
    #
    #     * **High**: `["7", "8"]`
    #
    #     * **Critical**: `["9", "10"]`
    #     For more information, see [Findings severity levels][2] in the
    #     *Amazon GuardDuty User Guide*.
    #
    #   * type
    #
    #   * updatedAt
    #
    #     Type: ISO 8601 string format: YYYY-MM-DDTHH:MM:SS.SSSZ or
    #     YYYY-MM-DDTHH:MM:SSZ depending on whether the value contains
    #     milliseconds.
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
    #   * resource.instanceDetails.tags.key
    #
    #   * resource.instanceDetails.tags.value
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
    #   * resource.instanceDetails.outpostArn
    #
    #   * resource.resourceType
    #
    #   * resource.s3BucketDetails.publicAccess.effectivePermissions
    #
    #   * resource.s3BucketDetails.name
    #
    #   * resource.s3BucketDetails.tags.key
    #
    #   * resource.s3BucketDetails.tags.value
    #
    #   * resource.s3BucketDetails.type
    #
    #   * service.action.actionType
    #
    #   * service.action.awsApiCallAction.api
    #
    #   * service.action.awsApiCallAction.callerType
    #
    #   * service.action.awsApiCallAction.errorCode
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.city.cityName
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.country.countryName
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.ipAddressV4
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.ipAddressV6
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.organization.asn
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.organization.asnOrg
    #
    #   * service.action.awsApiCallAction.serviceName
    #
    #   * service.action.dnsRequestAction.domain
    #
    #   * service.action.dnsRequestAction.domainWithSuffix
    #
    #   * service.action.dnsRequestAction.vpcOwnerAccountId
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
    #   * service.action.networkConnectionAction.remoteIpDetails.ipAddressV6
    #
    #   * service.action.networkConnectionAction.remoteIpDetails.organization.asn
    #
    #   * service.action.networkConnectionAction.remoteIpDetails.organization.asnOrg
    #
    #   * service.action.networkConnectionAction.remotePortDetails.port
    #
    #   * service.action.awsApiCallAction.remoteAccountDetails.affiliated
    #
    #   * service.action.kubernetesApiCallAction.remoteIpDetails.ipAddressV4
    #
    #   * service.action.kubernetesApiCallAction.remoteIpDetails.ipAddressV6
    #
    #   * service.action.kubernetesApiCallAction.namespace
    #
    #   * service.action.kubernetesApiCallAction.remoteIpDetails.organization.asn
    #
    #   * service.action.kubernetesApiCallAction.requestUri
    #
    #   * service.action.kubernetesApiCallAction.statusCode
    #
    #   * service.action.networkConnectionAction.localIpDetails.ipAddressV4
    #
    #   * service.action.networkConnectionAction.localIpDetails.ipAddressV6
    #
    #   * service.action.networkConnectionAction.protocol
    #
    #   * service.action.awsApiCallAction.serviceName
    #
    #   * service.action.awsApiCallAction.remoteAccountDetails.accountId
    #
    #   * service.additionalInfo.threatListName
    #
    #   * service.resourceRole
    #
    #   * resource.eksClusterDetails.name
    #
    #   * resource.kubernetesDetails.kubernetesWorkloadDetails.name
    #
    #   * resource.kubernetesDetails.kubernetesWorkloadDetails.namespace
    #
    #   * resource.kubernetesDetails.kubernetesUserDetails.username
    #
    #   * resource.kubernetesDetails.kubernetesWorkloadDetails.containers.image
    #
    #   * resource.kubernetesDetails.kubernetesWorkloadDetails.containers.imagePrefix
    #
    #   * service.ebsVolumeScanDetails.scanId
    #
    #   * service.ebsVolumeScanDetails.scanDetections.threatDetectedByName.threatNames.name
    #
    #   * service.ebsVolumeScanDetails.scanDetections.threatDetectedByName.threatNames.severity
    #
    #   * service.ebsVolumeScanDetails.scanDetections.threatDetectedByName.threatNames.filePaths.hash
    #
    #   * resource.ecsClusterDetails.name
    #
    #   * resource.ecsClusterDetails.taskDetails.containers.image
    #
    #   * resource.ecsClusterDetails.taskDetails.definitionArn
    #
    #   * resource.containerDetails.image
    #
    #   * resource.rdsDbInstanceDetails.dbInstanceIdentifier
    #
    #   * resource.rdsDbInstanceDetails.dbClusterIdentifier
    #
    #   * resource.rdsDbInstanceDetails.engine
    #
    #   * resource.rdsDbUserDetails.user
    #
    #   * resource.rdsDbInstanceDetails.tags.key
    #
    #   * resource.rdsDbInstanceDetails.tags.value
    #
    #   * service.runtimeDetails.process.executableSha256
    #
    #   * service.runtimeDetails.process.name
    #
    #   * service.runtimeDetails.process.executablePath
    #
    #   * resource.lambdaDetails.functionName
    #
    #   * resource.lambdaDetails.functionArn
    #
    #   * resource.lambdaDetails.tags.key
    #
    #   * resource.lambdaDetails.tags.value
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_FindingCriteria.html
    #   [2]: https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_findings-severity.html
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector of the GuardDuty account for which you
    #   want to create an IPSet.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The user-friendly name to identify the IPSet.
    #
    #   Allowed characters are alphanumeric, whitespace, dash (-), and
    #   underscores (\_).
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the file that contains the IPSet.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The URI of the file that contains the IPSet.
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
    # @!attribute [rw] expected_bucket_owner
    #   The Amazon Web Services account ID that owns the Amazon S3 bucket
    #   specified in the **location** parameter.
    #   @return [String]
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
      :tags,
      :expected_bucket_owner)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   The idempotency token for the create request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   Amazon Resource Name (ARN) of the IAM role that has the permissions
    #   to scan and add tags to the associated protected resource.
    #   @return [String]
    #
    # @!attribute [rw] protected_resource
    #   Information about the protected resource that is associated with the
    #   created Malware Protection plan. Presently, `S3Bucket` is the only
    #   supported protected resource.
    #   @return [Types::CreateProtectedResource]
    #
    # @!attribute [rw] actions
    #   Information about whether the tags will be added to the S3 object
    #   after scanning.
    #   @return [Types::MalwareProtectionPlanActions]
    #
    # @!attribute [rw] tags
    #   Tags added to the Malware Protection plan resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateMalwareProtectionPlanRequest AWS API Documentation
    #
    class CreateMalwareProtectionPlanRequest < Struct.new(
      :client_token,
      :role,
      :protected_resource,
      :actions,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] malware_protection_plan_id
    #   A unique identifier associated with the Malware Protection plan
    #   resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateMalwareProtectionPlanResponse AWS API Documentation
    #
    class CreateMalwareProtectionPlanResponse < Struct.new(
      :malware_protection_plan_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector of the GuardDuty account for which you
    #   want to associate member accounts.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #   @return [String]
    #
    # @!attribute [rw] account_details
    #   A list of account ID and email address pairs of the accounts that
    #   you want to associate with the GuardDuty administrator account.
    #   @return [Array<Types::AccountDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateMembersRequest AWS API Documentation
    #
    class CreateMembersRequest < Struct.new(
      :detector_id,
      :account_details)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the protected resource that is associated with the
    # created Malware Protection plan. Presently, `S3Bucket` is the only
    # supported protected resource.
    #
    # @!attribute [rw] s3_bucket
    #   Information about the protected S3 bucket resource.
    #   @return [Types::CreateS3BucketResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateProtectedResource AWS API Documentation
    #
    class CreateProtectedResource < Struct.new(
      :s3_bucket)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The ID of the GuardDuty detector associated with the publishing
    #   destination.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
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
    # @!attribute [rw] tags
    #   The tags to be added to a new publishing destination resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreatePublishingDestinationRequest AWS API Documentation
    #
    class CreatePublishingDestinationRequest < Struct.new(
      :detector_id,
      :destination_type,
      :destination_properties,
      :client_token,
      :tags)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the protected S3 bucket resource.
    #
    # @!attribute [rw] bucket_name
    #   Name of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] object_prefixes
    #   Information about the specified object prefixes. The S3 object will
    #   be scanned only if it belongs to any of the specified object
    #   prefixes.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateS3BucketResource AWS API Documentation
    #
    class CreateS3BucketResource < Struct.new(
      :bucket_name,
      :object_prefixes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The ID of the detector for which you need to create sample findings.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateSampleFindingsResponse AWS API Documentation
    #
    class CreateSampleFindingsResponse < Aws::EmptyStructure; end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector of the GuardDuty account for which you
    #   want to create a threat entity set.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A user-friendly name to identify the threat entity set.
    #
    #   The name of your list can include lowercase letters, uppercase
    #   letters, numbers, dash (-), and underscore (\_).
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the file that contains the threat entity set.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The URI of the file that contains the threat entity set. The format
    #   of the `Location` URL must be a valid Amazon S3 URL format. Invalid
    #   URL formats will result in an error, regardless of whether you
    #   activate the entity set or not. For more information about format of
    #   the location URLs, see [Format of location URL under Step 2: Adding
    #   trusted or threat intelligence data][1] in the *Amazon GuardDuty
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/ug/guardduty-lists-create-activate.html
    #   @return [String]
    #
    # @!attribute [rw] expected_bucket_owner
    #   The Amazon Web Services account ID that owns the Amazon S3 bucket
    #   specified in the **location** parameter.
    #   @return [String]
    #
    # @!attribute [rw] activate
    #   A boolean value that indicates whether GuardDuty should start using
    #   the uploaded threat entity set to generate findings.
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
    #   The tags to be added to a new threat entity set resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateThreatEntitySetRequest AWS API Documentation
    #
    class CreateThreatEntitySetRequest < Struct.new(
      :detector_id,
      :name,
      :format,
      :location,
      :expected_bucket_owner,
      :activate,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] threat_entity_set_id
    #   The ID returned by GuardDuty after creation of the threat entity set
    #   resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateThreatEntitySetResponse AWS API Documentation
    #
    class CreateThreatEntitySetResponse < Struct.new(
      :threat_entity_set_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector of the GuardDuty account for which you
    #   want to create a `threatIntelSet`.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
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
    #   The URI of the file that contains the ThreatIntelSet.
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
    # @!attribute [rw] expected_bucket_owner
    #   The Amazon Web Services account ID that owns the Amazon S3 bucket
    #   specified in the **location** parameter.
    #   @return [String]
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
      :tags,
      :expected_bucket_owner)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector of the GuardDuty account for which you
    #   want to create a trusted entity set.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A user-friendly name to identify the trusted entity set.
    #
    #   The name of your list can include lowercase letters, uppercase
    #   letters, numbers, dash (-), and underscore (\_).
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the file that contains the trusted entity set.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The URI of the file that contains the threat entity set. The format
    #   of the `Location` URL must be a valid Amazon S3 URL format. Invalid
    #   URL formats will result in an error, regardless of whether you
    #   activate the entity set or not. For more information about format of
    #   the location URLs, see [Format of location URL under Step 2: Adding
    #   trusted or threat intelligence data][1] in the *Amazon GuardDuty
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/ug/guardduty-lists-create-activate.html
    #   @return [String]
    #
    # @!attribute [rw] expected_bucket_owner
    #   The Amazon Web Services account ID that owns the Amazon S3 bucket
    #   specified in the **location** parameter.
    #   @return [String]
    #
    # @!attribute [rw] activate
    #   A boolean value that indicates whether GuardDuty is to start using
    #   the uploaded trusted entity set.
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
    #   The tags to be added to a new trusted entity set resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateTrustedEntitySetRequest AWS API Documentation
    #
    class CreateTrustedEntitySetRequest < Struct.new(
      :detector_id,
      :name,
      :format,
      :location,
      :expected_bucket_owner,
      :activate,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trusted_entity_set_id
    #   The ID returned by GuardDuty after creation of the trusted entity
    #   set resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateTrustedEntitySetResponse AWS API Documentation
    #
    class CreateTrustedEntitySetResponse < Struct.new(
      :trusted_entity_set_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information on the status of DNS logs as a data source.
    #
    # @!attribute [rw] status
    #   Denotes whether DNS logs is enabled as a data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DNSLogsConfigurationResult AWS API Documentation
    #
    class DNSLogsConfigurationResult < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about which data sources are enabled.
    #
    # @!attribute [rw] s3_logs
    #   Describes whether S3 data event logs are enabled as a data source.
    #   @return [Types::S3LogsConfiguration]
    #
    # @!attribute [rw] kubernetes
    #   Describes whether any Kubernetes logs are enabled as data sources.
    #   @return [Types::KubernetesConfiguration]
    #
    # @!attribute [rw] malware_protection
    #   Describes whether Malware Protection is enabled as a data source.
    #   @return [Types::MalwareProtectionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DataSourceConfigurations AWS API Documentation
    #
    class DataSourceConfigurations < Struct.new(
      :s3_logs,
      :kubernetes,
      :malware_protection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information on the status of data sources for the detector.
    #
    # @!attribute [rw] cloud_trail
    #   An object that contains information on the status of CloudTrail as a
    #   data source.
    #   @return [Types::CloudTrailConfigurationResult]
    #
    # @!attribute [rw] dns_logs
    #   An object that contains information on the status of DNS logs as a
    #   data source.
    #   @return [Types::DNSLogsConfigurationResult]
    #
    # @!attribute [rw] flow_logs
    #   An object that contains information on the status of VPC flow logs
    #   as a data source.
    #   @return [Types::FlowLogsConfigurationResult]
    #
    # @!attribute [rw] s3_logs
    #   An object that contains information on the status of S3 Data event
    #   logs as a data source.
    #   @return [Types::S3LogsConfigurationResult]
    #
    # @!attribute [rw] kubernetes
    #   An object that contains information on the status of all Kubernetes
    #   data sources.
    #   @return [Types::KubernetesConfigurationResult]
    #
    # @!attribute [rw] malware_protection
    #   Describes the configuration of Malware Protection data sources.
    #   @return [Types::MalwareProtectionConfigurationResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DataSourceConfigurationsResult AWS API Documentation
    #
    class DataSourceConfigurationsResult < Struct.new(
      :cloud_trail,
      :dns_logs,
      :flow_logs,
      :s3_logs,
      :kubernetes,
      :malware_protection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about which data sources are enabled for the
    # GuardDuty member account.
    #
    # @!attribute [rw] free_trial_days_remaining
    #   A value that specifies the number of days left to use each enabled
    #   data source.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DataSourceFreeTrial AWS API Documentation
    #
    class DataSourceFreeTrial < Struct.new(
      :free_trial_days_remaining)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about which data sources are enabled for the
    # GuardDuty member account.
    #
    # @!attribute [rw] cloud_trail
    #   Describes whether any Amazon Web Services CloudTrail management
    #   event logs are enabled as data sources.
    #   @return [Types::DataSourceFreeTrial]
    #
    # @!attribute [rw] dns_logs
    #   Describes whether any DNS logs are enabled as data sources.
    #   @return [Types::DataSourceFreeTrial]
    #
    # @!attribute [rw] flow_logs
    #   Describes whether any VPC Flow logs are enabled as data sources.
    #   @return [Types::DataSourceFreeTrial]
    #
    # @!attribute [rw] s3_logs
    #   Describes whether any S3 data event logs are enabled as data
    #   sources.
    #   @return [Types::DataSourceFreeTrial]
    #
    # @!attribute [rw] kubernetes
    #   Describes whether any Kubernetes logs are enabled as data sources.
    #   @return [Types::KubernetesDataSourceFreeTrial]
    #
    # @!attribute [rw] malware_protection
    #   Describes whether Malware Protection is enabled as a data source.
    #   @return [Types::MalwareProtectionDataSourceFreeTrial]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DataSourcesFreeTrial AWS API Documentation
    #
    class DataSourcesFreeTrial < Struct.new(
      :cloud_trail,
      :dns_logs,
      :flow_logs,
      :s3_logs,
      :kubernetes,
      :malware_protection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents list a map of dates with a count of total findings
    # generated on each date.
    #
    # @!attribute [rw] date
    #   The timestamp when the total findings count is observed.
    #
    #   For example, `Date` would look like `"2024-09-05T17:00:00-07:00"`
    #   whereas `LastGeneratedAt` would look like
    #   2024-09-05T17:12:29-07:00".
    #   @return [Time]
    #
    # @!attribute [rw] last_generated_at
    #   The timestamp at which the last finding in the findings count, was
    #   generated.
    #   @return [Time]
    #
    # @!attribute [rw] severity
    #   The severity of the findings generated on each date.
    #   @return [Float]
    #
    # @!attribute [rw] total_findings
    #   The total number of findings that were generated per severity level
    #   on each date.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DateStatistics AWS API Documentation
    #
    class DateStatistics < Struct.new(
      :date,
      :last_generated_at,
      :severity,
      :total_findings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   A list of account IDs of the Amazon Web Services accounts that sent
    #   invitations to the current member account that you want to decline
    #   invitations from.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeclineInvitationsRequest AWS API Documentation
    #
    class DeclineInvitationsRequest < Struct.new(
      :account_ids)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information on the server side encryption method used in the
    # S3 bucket. See [S3 Server-Side Encryption][1] for more information.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector that you want to delete.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteDetectorRequest AWS API Documentation
    #
    class DeleteDetectorRequest < Struct.new(
      :detector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteDetectorResponse AWS API Documentation
    #
    class DeleteDetectorResponse < Aws::EmptyStructure; end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector that is associated with the filter.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteFilterResponse AWS API Documentation
    #
    class DeleteFilterResponse < Aws::EmptyStructure; end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector associated with the IPSet.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteIPSetResponse AWS API Documentation
    #
    class DeleteIPSetResponse < Aws::EmptyStructure; end

    # @!attribute [rw] account_ids
    #   A list of account IDs of the Amazon Web Services accounts that sent
    #   invitations to the current member account that you want to delete
    #   invitations from.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteInvitationsRequest AWS API Documentation
    #
    class DeleteInvitationsRequest < Struct.new(
      :account_ids)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] malware_protection_plan_id
    #   A unique identifier associated with Malware Protection plan
    #   resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteMalwareProtectionPlanRequest AWS API Documentation
    #
    class DeleteMalwareProtectionPlanRequest < Struct.new(
      :malware_protection_plan_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector of the GuardDuty account whose members
    #   you want to delete.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector associated with the publishing
    #   destination to delete.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeletePublishingDestinationResponse AWS API Documentation
    #
    class DeletePublishingDestinationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector associated with the threat entity set
    #   resource.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #   @return [String]
    #
    # @!attribute [rw] threat_entity_set_id
    #   The unique ID that helps GuardDuty identify which threat entity set
    #   needs to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteThreatEntitySetRequest AWS API Documentation
    #
    class DeleteThreatEntitySetRequest < Struct.new(
      :detector_id,
      :threat_entity_set_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteThreatEntitySetResponse AWS API Documentation
    #
    class DeleteThreatEntitySetResponse < Aws::EmptyStructure; end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector that is associated with the
    #   threatIntelSet.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteThreatIntelSetResponse AWS API Documentation
    #
    class DeleteThreatIntelSetResponse < Aws::EmptyStructure; end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector associated with the trusted entity set
    #   resource.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #   @return [String]
    #
    # @!attribute [rw] trusted_entity_set_id
    #   The unique ID that helps GuardDuty identify which trusted entity set
    #   needs to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteTrustedEntitySetRequest AWS API Documentation
    #
    class DeleteTrustedEntitySetRequest < Struct.new(
      :detector_id,
      :trusted_entity_set_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteTrustedEntitySetResponse AWS API Documentation
    #
    class DeleteTrustedEntitySetResponse < Aws::EmptyStructure; end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector that the request is associated with.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action, fill nextToken in the request with
    #   the value of NextToken from the previous response to continue
    #   listing data.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   You can use this parameter to indicate the maximum number of items
    #   that you want in the response. The default value is 50. The maximum
    #   value is 50.
    #   @return [Integer]
    #
    # @!attribute [rw] filter_criteria
    #   Represents the criteria to be used in the filter for describing scan
    #   entries.
    #   @return [Types::FilterCriteria]
    #
    # @!attribute [rw] sort_criteria
    #   Represents the criteria used for sorting scan entries. The [
    #   `attributeName` ][1] is required and it must be `scanStartTime`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_SortCriteria.html#guardduty-Type-SortCriteria-attributeName
    #   @return [Types::SortCriteria]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DescribeMalwareScansRequest AWS API Documentation
    #
    class DescribeMalwareScansRequest < Struct.new(
      :detector_id,
      :next_token,
      :max_results,
      :filter_criteria,
      :sort_criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scans
    #   Contains information about malware scans associated with GuardDuty
    #   Malware Protection for EC2.
    #   @return [Array<Types::Scan>]
    #
    # @!attribute [rw] next_token
    #   The pagination parameter to be used on the next list operation to
    #   retrieve more items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DescribeMalwareScansResponse AWS API Documentation
    #
    class DescribeMalwareScansResponse < Struct.new(
      :scans,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The detector ID of the delegated administrator for which you need to
    #   retrieve the information.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   You can use this parameter to indicate the maximum number of items
    #   that you want in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action, fill `nextToken` in the request with
    #   the value of `NextToken` from the previous response to continue
    #   listing data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DescribeOrganizationConfigurationRequest AWS API Documentation
    #
    class DescribeOrganizationConfigurationRequest < Struct.new(
      :detector_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_enable
    #   Indicates whether GuardDuty is automatically enabled for accounts
    #   added to the organization.
    #
    #   Even though this is still supported, we recommend using
    #   `AutoEnableOrganizationMembers` to achieve the similar results.
    #   @return [Boolean]
    #
    # @!attribute [rw] member_account_limit_reached
    #   Indicates whether the maximum number of allowed member accounts are
    #   already associated with the delegated administrator account for your
    #   organization.
    #   @return [Boolean]
    #
    # @!attribute [rw] data_sources
    #   Describes which data sources are enabled automatically for member
    #   accounts.
    #   @return [Types::OrganizationDataSourceConfigurationsResult]
    #
    # @!attribute [rw] features
    #   A list of features that are configured for this organization.
    #   @return [Array<Types::OrganizationFeatureConfigurationResult>]
    #
    # @!attribute [rw] next_token
    #   The pagination parameter to be used on the next list operation to
    #   retrieve more items.
    #   @return [String]
    #
    # @!attribute [rw] auto_enable_organization_members
    #   Indicates the auto-enablement configuration of GuardDuty or any of
    #   the corresponding protection plans for the member accounts in the
    #   organization.
    #
    #   * `NEW`: Indicates that when a new account joins the organization,
    #     they will have GuardDuty or any of the corresponding protection
    #     plans enabled automatically.
    #
    #   * `ALL`: Indicates that all accounts in the organization have
    #     GuardDuty and any of the corresponding protection plans enabled
    #     automatically. This includes `NEW` accounts that join the
    #     organization and accounts that may have been suspended or removed
    #     from the organization in GuardDuty.
    #
    #   * `NONE`: Indicates that GuardDuty or any of the corresponding
    #     protection plans will not be automatically enabled for any account
    #     in the organization. The administrator must manage GuardDuty for
    #     each account in the organization individually.
    #
    #     When you update the auto-enable setting from `ALL` or `NEW` to
    #     `NONE`, this action doesn't disable the corresponding option for
    #     your existing accounts. This configuration will apply to the new
    #     accounts that join the organization. After you update the
    #     auto-enable settings, no new account will have the corresponding
    #     option as enabled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DescribeOrganizationConfigurationResponse AWS API Documentation
    #
    class DescribeOrganizationConfigurationResponse < Struct.new(
      :auto_enable,
      :member_account_limit_reached,
      :data_sources,
      :features,
      :next_token,
      :auto_enable_organization_members)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector associated with the publishing
    #   destination to retrieve.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
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
      SENSITIVE = []
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
    # @!attribute [rw] tags
    #   The tags of the publishing destination resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DescribePublishingDestinationResponse AWS API Documentation
    #
    class DescribePublishingDestinationResponse < Struct.new(
      :destination_id,
      :destination_type,
      :status,
      :publishing_failure_start_timestamp,
      :destination_properties,
      :tags)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the Amazon Resource Name (ARN) of the resource to publish to,
    # such as an S3 bucket, and the ARN of the KMS key to use to encrypt
    # published findings.
    #
    # @!attribute [rw] destination_arn
    #   The ARN of the resource to publish to.
    #
    #   To specify an S3 bucket folder use the following format:
    #   `arn:aws:s3:::DOC-EXAMPLE-BUCKET/myFolder/`
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the detected behavior.
    #
    # @!attribute [rw] anomaly
    #   The details about the anomalous activity that caused GuardDuty to
    #   generate the finding.
    #   @return [Types::Anomaly]
    #
    # @!attribute [rw] sequence
    #   The details about the attack sequence.
    #   @return [Types::Sequence]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Detection AWS API Documentation
    #
    class Detection < Struct.new(
      :anomaly,
      :sequence)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the additional configuration for a feature in your
    # GuardDuty account.
    #
    # @!attribute [rw] name
    #   Name of the additional configuration.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of the additional configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DetectorAdditionalConfiguration AWS API Documentation
    #
    class DetectorAdditionalConfiguration < Struct.new(
      :name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the additional configuration.
    #
    # @!attribute [rw] name
    #   Name of the additional configuration.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of the additional configuration.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp at which the additional configuration was last
    #   updated. This is in UTC format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DetectorAdditionalConfigurationResult AWS API Documentation
    #
    class DetectorAdditionalConfigurationResult < Struct.new(
      :name,
      :status,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a GuardDuty feature.
    #
    # Specifying both EKS Runtime Monitoring (`EKS_RUNTIME_MONITORING`) and
    # Runtime Monitoring (`RUNTIME_MONITORING`) will cause an error. You can
    # add only one of these two features because Runtime Monitoring already
    # includes the threat detection for Amazon EKS resources. For more
    # information, see [Runtime Monitoring][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/guardduty/latest/ug/runtime-monitoring.html
    #
    # @!attribute [rw] name
    #   The name of the feature.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the feature.
    #   @return [String]
    #
    # @!attribute [rw] additional_configuration
    #   Additional configuration for a resource.
    #   @return [Array<Types::DetectorAdditionalConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DetectorFeatureConfiguration AWS API Documentation
    #
    class DetectorFeatureConfiguration < Struct.new(
      :name,
      :status,
      :additional_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a GuardDuty feature.
    #
    # Specifying both EKS Runtime Monitoring (`EKS_RUNTIME_MONITORING`) and
    # Runtime Monitoring (`RUNTIME_MONITORING`) will cause an error. You can
    # add only one of these two features because Runtime Monitoring already
    # includes the threat detection for Amazon EKS resources. For more
    # information, see [Runtime Monitoring][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/guardduty/latest/ug/runtime-monitoring.html
    #
    # @!attribute [rw] name
    #   Indicates the name of the feature that can be enabled for the
    #   detector.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates the status of the feature that is enabled for the
    #   detector.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp at which the feature object was updated.
    #   @return [Time]
    #
    # @!attribute [rw] additional_configuration
    #   Additional configuration for a resource.
    #   @return [Array<Types::DetectorAdditionalConfigurationResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DetectorFeatureConfigurationResult AWS API Documentation
    #
    class DetectorFeatureConfigurationResult < Struct.new(
      :name,
      :status,
      :updated_at,
      :additional_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] admin_account_id
    #   The Amazon Web Services Account ID for the organizations account to
    #   be disabled as a GuardDuty delegated administrator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DisableOrganizationAdminAccountRequest AWS API Documentation
    #
    class DisableOrganizationAdminAccountRequest < Struct.new(
      :admin_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DisableOrganizationAdminAccountResponse AWS API Documentation
    #
    class DisableOrganizationAdminAccountResponse < Aws::EmptyStructure; end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector of the GuardDuty member account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DisassociateFromAdministratorAccountRequest AWS API Documentation
    #
    class DisassociateFromAdministratorAccountRequest < Struct.new(
      :detector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DisassociateFromAdministratorAccountResponse AWS API Documentation
    #
    class DisassociateFromAdministratorAccountResponse < Aws::EmptyStructure; end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector of the GuardDuty member account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DisassociateFromMasterAccountRequest AWS API Documentation
    #
    class DisassociateFromMasterAccountRequest < Struct.new(
      :detector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DisassociateFromMasterAccountResponse AWS API Documentation
    #
    class DisassociateFromMasterAccountResponse < Aws::EmptyStructure; end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector of the GuardDuty account whose members
    #   you want to disassociate from the administrator account.
    #   @return [String]
    #
    # @!attribute [rw] account_ids
    #   A list of account IDs of the GuardDuty member accounts that you want
    #   to disassociate from the administrator account.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DisassociateMembersRequest AWS API Documentation
    #
    class DisassociateMembersRequest < Struct.new(
      :detector_id,
      :account_ids)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the DNS\_REQUEST action described in this
    # finding.
    #
    # @!attribute [rw] domain
    #   The domain information for the DNS query.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The network connection protocol observed in the activity that
    #   prompted GuardDuty to generate the finding.
    #   @return [String]
    #
    # @!attribute [rw] blocked
    #   Indicates whether the targeted port is blocked.
    #   @return [Boolean]
    #
    # @!attribute [rw] domain_with_suffix
    #   The second and top level domain involved in the activity that
    #   potentially prompted GuardDuty to generate this finding. For a list
    #   of top-level and second-level domains, see [public suffix list][1].
    #
    #
    #
    #   [1]: https://publicsuffix.org/
    #   @return [String]
    #
    # @!attribute [rw] vpc_owner_account_id
    #   The Amazon Web Services account ID that owns the VPC through which
    #   the DNS request was made.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DnsRequestAction AWS API Documentation
    #
    class DnsRequestAction < Struct.new(
      :domain,
      :protocol,
      :blocked,
      :domain_with_suffix,
      :vpc_owner_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the domain.
    #
    # @!attribute [rw] domain
    #   The domain information for the Amazon Web Services API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DomainDetails AWS API Documentation
    #
    class DomainDetails < Struct.new(
      :domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains list of scanned and skipped EBS volumes with details.
    #
    # @!attribute [rw] scanned_volume_details
    #   List of EBS volumes that were scanned.
    #   @return [Array<Types::VolumeDetail>]
    #
    # @!attribute [rw] skipped_volume_details
    #   List of EBS volumes that were skipped from the malware scan.
    #   @return [Array<Types::VolumeDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/EbsVolumeDetails AWS API Documentation
    #
    class EbsVolumeDetails < Struct.new(
      :scanned_volume_details,
      :skipped_volume_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details from the malware scan that created a finding.
    #
    # @!attribute [rw] scan_id
    #   Unique Id of the malware scan that generated the finding.
    #   @return [String]
    #
    # @!attribute [rw] scan_started_at
    #   Returns the start date and time of the malware scan.
    #   @return [Time]
    #
    # @!attribute [rw] scan_completed_at
    #   Returns the completion date and time of the malware scan.
    #   @return [Time]
    #
    # @!attribute [rw] trigger_finding_id
    #   GuardDuty finding ID that triggered a malware scan.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   Contains list of threat intelligence sources used to detect threats.
    #   @return [Array<String>]
    #
    # @!attribute [rw] scan_detections
    #   Contains a complete view providing malware scan result details.
    #   @return [Types::ScanDetections]
    #
    # @!attribute [rw] scan_type
    #   Specifies the scan type that invoked the malware scan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/EbsVolumeScanDetails AWS API Documentation
    #
    class EbsVolumeScanDetails < Struct.new(
      :scan_id,
      :scan_started_at,
      :scan_completed_at,
      :trigger_finding_id,
      :sources,
      :scan_detections,
      :scan_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration of scanning EBS volumes as a data source.
    #
    # @!attribute [rw] status
    #   Describes whether scanning EBS volumes is enabled as a data source.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Specifies the reason why scanning EBS volumes (Malware Protection)
    #   was not enabled as a data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/EbsVolumesResult AWS API Documentation
    #
    class EbsVolumesResult < Struct.new(
      :status,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the potentially impacted Amazon EC2 instance resource.
    #
    # @!attribute [rw] availability_zone
    #   The availability zone of the Amazon EC2 instance. For more
    #   information, see [Availability zones][1] in the *Amazon EC2 User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#concepts-availability-zones
    #   @return [String]
    #
    # @!attribute [rw] image_description
    #   The image description of the Amazon EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_state
    #   The state of the Amazon EC2 instance. For more information, see
    #   [Amazon EC2 instance state changes][1] in the *Amazon EC2 User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html
    #   @return [String]
    #
    # @!attribute [rw] iam_instance_profile
    #   Contains information about the EC2 instance profile.
    #   @return [Types::IamInstanceProfile]
    #
    # @!attribute [rw] instance_type
    #   Type of the Amazon EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] outpost_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services Outpost.
    #   This shows applicable Amazon Web Services Outposts instances.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform of the Amazon EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] product_codes
    #   The product code of the Amazon EC2 instance.
    #   @return [Array<Types::ProductCode>]
    #
    # @!attribute [rw] ec2_network_interface_uids
    #   The ID of the network interface.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Ec2Instance AWS API Documentation
    #
    class Ec2Instance < Struct.new(
      :availability_zone,
      :image_description,
      :instance_state,
      :iam_instance_profile,
      :instance_type,
      :outpost_arn,
      :platform,
      :product_codes,
      :ec2_network_interface_uids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the elastic network interface of the Amazon
    # EC2 instance.
    #
    # @!attribute [rw] ipv_6_addresses
    #   A list of IPv6 addresses for the Amazon EC2 instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] private_ip_addresses
    #   Other private IP address information of the Amazon EC2 instance.
    #   @return [Array<Types::PrivateIpAddressDetails>]
    #
    # @!attribute [rw] public_ip
    #   The public IP address of the Amazon EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   The security groups associated with the Amazon EC2 instance.
    #   @return [Array<Types::SecurityGroup>]
    #
    # @!attribute [rw] sub_net_id
    #   The subnet ID of the Amazon EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The VPC ID of the Amazon EC2 instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Ec2NetworkInterface AWS API Documentation
    #
    class Ec2NetworkInterface < Struct.new(
      :ipv_6_addresses,
      :private_ip_addresses,
      :public_ip,
      :security_groups,
      :sub_net_id,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the details of the ECS Cluster.
    #
    # @!attribute [rw] name
    #   The name of the ECS Cluster.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that identifies the cluster.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the ECS cluster.
    #   @return [String]
    #
    # @!attribute [rw] active_services_count
    #   The number of services that are running on the cluster in an ACTIVE
    #   state.
    #   @return [Integer]
    #
    # @!attribute [rw] registered_container_instances_count
    #   The number of container instances registered into the cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] running_tasks_count
    #   The number of tasks in the cluster that are in the RUNNING state.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   The tags of the ECS Cluster.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] task_details
    #   Contains information about the details of the ECS Task.
    #   @return [Types::EcsTaskDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/EcsClusterDetails AWS API Documentation
    #
    class EcsClusterDetails < Struct.new(
      :name,
      :arn,
      :status,
      :active_services_count,
      :registered_container_instances_count,
      :running_tasks_count,
      :tags,
      :task_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the task in an ECS cluster.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the task.
    #   @return [String]
    #
    # @!attribute [rw] definition_arn
    #   The ARN of the task definition that creates the task.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version counter for the task.
    #   @return [String]
    #
    # @!attribute [rw] task_created_at
    #   The Unix timestamp for the time when the task was created.
    #   @return [Time]
    #
    # @!attribute [rw] started_at
    #   The Unix timestamp for the time when the task started.
    #   @return [Time]
    #
    # @!attribute [rw] started_by
    #   Contains the tag specified when a task is started.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of the ECS Task.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] volumes
    #   The list of data volume definitions for the task.
    #   @return [Array<Types::Volume>]
    #
    # @!attribute [rw] containers
    #   The containers that's associated with the task.
    #   @return [Array<Types::Container>]
    #
    # @!attribute [rw] group
    #   The name of the task group that's associated with the task.
    #   @return [String]
    #
    # @!attribute [rw] launch_type
    #   A capacity on which the task is running. For example, `Fargate` and
    #   `EC2`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/EcsTaskDetails AWS API Documentation
    #
    class EcsTaskDetails < Struct.new(
      :arn,
      :definition_arn,
      :version,
      :task_created_at,
      :started_at,
      :started_by,
      :tags,
      :volumes,
      :containers,
      :group,
      :launch_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the Amazon EKS cluster involved in a
    # GuardDuty finding, including cluster identification, status, and
    # network configuration.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the Amazon
    #   EKS cluster involved in the finding.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp indicating when the Amazon EKS cluster was created, in
    #   UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the Amazon EKS cluster.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the Amazon Virtual Private Cloud (Amazon VPC) associated
    #   with the Amazon EKS cluster.
    #   @return [String]
    #
    # @!attribute [rw] ec2_instance_uids
    #   A list of unique identifiers for the Amazon EC2 instances that serve
    #   as worker nodes in the Amazon EKS cluster.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/EksCluster AWS API Documentation
    #
    class EksCluster < Struct.new(
      :arn,
      :created_at,
      :status,
      :vpc_id,
      :ec2_instance_uids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the EKS cluster involved in a Kubernetes finding.
    #
    # @!attribute [rw] name
    #   EKS cluster name.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   EKS cluster ARN.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The VPC ID to which the EKS cluster is attached.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The EKS cluster status.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The EKS cluster tags.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the EKS cluster was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/EksClusterDetails AWS API Documentation
    #
    class EksClusterDetails < Struct.new(
      :name,
      :arn,
      :vpc_id,
      :status,
      :tags,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] admin_account_id
    #   The Amazon Web Services account ID for the organization account to
    #   be enabled as a GuardDuty delegated administrator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/EnableOrganizationAdminAccountRequest AWS API Documentation
    #
    class EnableOrganizationAdminAccountRequest < Struct.new(
      :admin_account_id)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about Amazon Web Services Fargate details
    # associated with an Amazon ECS cluster.
    #
    # @!attribute [rw] issues
    #   Runtime coverage issues identified for the resource running on
    #   Amazon Web Services Fargate.
    #   @return [Array<String>]
    #
    # @!attribute [rw] management_type
    #   Indicates how the GuardDuty security agent is managed for this
    #   resource.
    #
    #   * `AUTO_MANAGED` indicates that GuardDuty deploys and manages
    #     updates for this resource.
    #
    #   * `DISABLED` indicates that the deployment of the GuardDuty security
    #     agent is disabled for this resource.
    #
    #   <note markdown="1"> The `MANUAL` status doesn't apply to the Amazon Web Services
    #   Fargate (Amazon ECS only) woprkloads.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/FargateDetails AWS API Documentation
    #
    class FargateDetails < Struct.new(
      :issues,
      :management_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the condition.
    #
    # @!attribute [rw] equals_value
    #   Represents an *equal* **** condition to be applied to a single field
    #   when querying for scan entries.
    #   @return [String]
    #
    # @!attribute [rw] greater_than
    #   Represents a *greater than* condition to be applied to a single
    #   field when querying for scan entries.
    #   @return [Integer]
    #
    # @!attribute [rw] less_than
    #   Represents a *less than* condition to be applied to a single field
    #   when querying for scan entries.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/FilterCondition AWS API Documentation
    #
    class FilterCondition < Struct.new(
      :equals_value,
      :greater_than,
      :less_than)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the criteria to be used in the filter for describing scan
    # entries.
    #
    # @!attribute [rw] filter_criterion
    #   Represents a condition that when matched will be added to the
    #   response of the operation.
    #   @return [Array<Types::FilterCriterion>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/FilterCriteria AWS API Documentation
    #
    class FilterCriteria < Struct.new(
      :filter_criterion)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a condition that when matched will be added to the response
    # of the operation. Irrespective of using any filter criteria, an
    # administrator account can view the scan entries for all of its member
    # accounts. However, each member account can view the scan entries only
    # for their own account.
    #
    # @!attribute [rw] criterion_key
    #   An enum value representing possible scan properties to match with
    #   given scan entries.
    #   @return [String]
    #
    # @!attribute [rw] filter_condition
    #   Contains information about the condition.
    #   @return [Types::FilterCondition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/FilterCriterion AWS API Documentation
    #
    class FilterCriterion < Struct.new(
      :criterion_key,
      :filter_condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the finding that is generated when abnormal
    # or suspicious activity is detected.
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
    #   The Region where the finding was generated. For findings generated
    #   from [Global Service Events][1], the Region value in the finding
    #   might differ from the Region where GuardDuty identifies the
    #   potential threat. For more information, see [How GuardDuty handles
    #   Amazon Web Services CloudTrail global events][2] in the *Amazon
    #   GuardDuty User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html#cloudtrail-concepts-global-service-events
    #   [2]: https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_data-sources.html#cloudtrail_global
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   Contains information about the Amazon Web Services resource
    #   associated with the activity that prompted GuardDuty to generate a
    #   finding.
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
    # @!attribute [rw] associated_attack_sequence_arn
    #   Amazon Resource Name (ARN) associated with the attack sequence
    #   finding.
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
      :updated_at,
      :associated_attack_sequence_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the criteria used for querying findings.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about finding statistics.
    #
    # @!attribute [rw] count_by_severity
    #   Represents a list of map of severity to count statistics for a set
    #   of findings.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] grouped_by_account
    #   Represents a list of map of accounts with a findings count
    #   associated with each account.
    #   @return [Array<Types::AccountStatistics>]
    #
    # @!attribute [rw] grouped_by_date
    #   Represents a list of map of dates with a count of total findings
    #   generated on each date per severity level.
    #   @return [Array<Types::DateStatistics>]
    #
    # @!attribute [rw] grouped_by_finding_type
    #   Represents a list of map of finding types with a count of total
    #   findings generated for each type.
    #
    #   Based on the `orderBy` parameter, this request returns either the
    #   most occurring finding types or the least occurring finding types.
    #   If the `orderBy` parameter is `ASC`, this will represent the least
    #   occurring finding types in your account; otherwise, this will
    #   represent the most occurring finding types. The default value of
    #   `orderBy` is `DESC`.
    #   @return [Array<Types::FindingTypeStatistics>]
    #
    # @!attribute [rw] grouped_by_resource
    #   Represents a list of map of top resources with a count of total
    #   findings.
    #   @return [Array<Types::ResourceStatistics>]
    #
    # @!attribute [rw] grouped_by_severity
    #   Represents a list of map of total findings for each severity level.
    #   @return [Array<Types::SeverityStatistics>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/FindingStatistics AWS API Documentation
    #
    class FindingStatistics < Struct.new(
      :count_by_severity,
      :grouped_by_account,
      :grouped_by_date,
      :grouped_by_finding_type,
      :grouped_by_resource,
      :grouped_by_severity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about each finding type associated with the
    # `groupedByFindingType` statistics.
    #
    # @!attribute [rw] finding_type
    #   Name of the finding type.
    #   @return [String]
    #
    # @!attribute [rw] last_generated_at
    #   The timestamp at which this finding type was last generated in your
    #   environment.
    #   @return [Time]
    #
    # @!attribute [rw] total_findings
    #   The total number of findings associated with generated for each
    #   distinct finding type.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/FindingTypeStatistics AWS API Documentation
    #
    class FindingTypeStatistics < Struct.new(
      :finding_type,
      :last_generated_at,
      :total_findings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information on the status of VPC flow logs as a data source.
    #
    # @!attribute [rw] status
    #   Denotes whether VPC flow logs is enabled as a data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/FlowLogsConfigurationResult AWS API Documentation
    #
    class FlowLogsConfigurationResult < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the free trial period for a feature.
    #
    # @!attribute [rw] name
    #   The name of the feature for which the free trial is configured.
    #   @return [String]
    #
    # @!attribute [rw] free_trial_days_remaining
    #   The number of the remaining free trial days for the feature.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/FreeTrialFeatureConfigurationResult AWS API Documentation
    #
    class FreeTrialFeatureConfigurationResult < Struct.new(
      :name,
      :free_trial_days_remaining)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the location of the remote IP address. By
    # default, GuardDuty returns `Geolocation` with `Lat` and `Lon` as
    # `0.0`.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector of the GuardDuty member account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetAdministratorAccountRequest AWS API Documentation
    #
    class GetAdministratorAccountRequest < Struct.new(
      :detector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] administrator
    #   The administrator account details.
    #   @return [Types::Administrator]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetAdministratorAccountResponse AWS API Documentation
    #
    class GetAdministratorAccountResponse < Struct.new(
      :administrator)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The unique ID of the GuardDuty detector.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #   @return [String]
    #
    # @!attribute [rw] filter_criteria
    #   Represents the criteria used to filter the coverage statistics.
    #   @return [Types::CoverageFilterCriteria]
    #
    # @!attribute [rw] statistics_type
    #   Represents the statistics type used to aggregate the coverage
    #   details.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetCoverageStatisticsRequest AWS API Documentation
    #
    class GetCoverageStatisticsRequest < Struct.new(
      :detector_id,
      :filter_criteria,
      :statistics_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] coverage_statistics
    #   Represents the count aggregated by the `statusCode` and
    #   `resourceType`.
    #   @return [Types::CoverageStatistics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetCoverageStatisticsResponse AWS API Documentation
    #
    class GetCoverageStatisticsResponse < Struct.new(
      :coverage_statistics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector that you want to get.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetDetectorRequest AWS API Documentation
    #
    class GetDetectorRequest < Struct.new(
      :detector_id)
      SENSITIVE = []
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
    # @!attribute [rw] data_sources
    #   Describes which data sources are enabled for the detector.
    #   @return [Types::DataSourceConfigurationsResult]
    #
    # @!attribute [rw] tags
    #   The tags of the detector resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] features
    #   Describes the features that have been enabled for the detector.
    #   @return [Array<Types::DetectorFeatureConfigurationResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetDetectorResponse AWS API Documentation
    #
    class GetDetectorResponse < Struct.new(
      :created_at,
      :finding_publishing_frequency,
      :service_role,
      :status,
      :updated_at,
      :data_sources,
      :tags,
      :features)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector that is associated with this filter.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The ID of the detector that specifies the GuardDuty service whose
    #   findings you want to retrieve.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The ID of the detector whose findings statistics you want to
    #   retrieve.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
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
    # @!attribute [rw] group_by
    #   Displays the findings statistics grouped by one of the listed valid
    #   values.
    #   @return [String]
    #
    # @!attribute [rw] order_by
    #   Displays the sorted findings in the requested order. The default
    #   value of `orderBy` is `DESC`.
    #
    #   You can use this parameter only with the `groupBy` parameter.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned in the response. The
    #   default value is 25.
    #
    #   You can use this parameter only with the `groupBy` parameter.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetFindingsStatisticsRequest AWS API Documentation
    #
    class GetFindingsStatisticsRequest < Struct.new(
      :detector_id,
      :finding_statistic_types,
      :finding_criteria,
      :group_by,
      :order_by,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] finding_statistics
    #   The finding statistics object.
    #   @return [Types::FindingStatistics]
    #
    # @!attribute [rw] next_token
    #   The pagination parameter to be used on the next list operation to
    #   retrieve more items.
    #
    #   This parameter is currently not supported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetFindingsStatisticsResponse AWS API Documentation
    #
    class GetFindingsStatisticsResponse < Struct.new(
      :finding_statistics,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector that is associated with the IPSet.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
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
      SENSITIVE = []
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
    #   The URI of the file that contains the IPSet.
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
    # @!attribute [rw] expected_bucket_owner
    #   The Amazon Web Services account ID that owns the Amazon S3 bucket
    #   specified in the **location** parameter. This field appears in the
    #   response only if it was provided during IPSet creation or update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetIPSetResponse AWS API Documentation
    #
    class GetIPSetResponse < Struct.new(
      :name,
      :format,
      :location,
      :status,
      :tags,
      :expected_bucket_owner)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] malware_protection_plan_id
    #   A unique identifier associated with Malware Protection plan
    #   resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetMalwareProtectionPlanRequest AWS API Documentation
    #
    class GetMalwareProtectionPlanRequest < Struct.new(
      :malware_protection_plan_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Amazon Resource Name (ARN) of the protected resource.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   Amazon Resource Name (ARN) of the IAM role that includes the
    #   permissions to scan and add tags to the associated protected
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] protected_resource
    #   Information about the protected resource that is associated with the
    #   created Malware Protection plan. Presently, `S3Bucket` is the only
    #   supported protected resource.
    #   @return [Types::CreateProtectedResource]
    #
    # @!attribute [rw] actions
    #   Information about whether the tags will be added to the S3 object
    #   after scanning.
    #   @return [Types::MalwareProtectionPlanActions]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the Malware Protection plan resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   Malware Protection plan status.
    #   @return [String]
    #
    # @!attribute [rw] status_reasons
    #   Information about the issue code and message associated to the
    #   status of your Malware Protection plan.
    #   @return [Array<Types::MalwareProtectionPlanStatusReason>]
    #
    # @!attribute [rw] tags
    #   Tags added to the Malware Protection plan resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetMalwareProtectionPlanResponse AWS API Documentation
    #
    class GetMalwareProtectionPlanResponse < Struct.new(
      :arn,
      :role,
      :protected_resource,
      :actions,
      :created_at,
      :status,
      :status_reasons,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector that is associated with this scan.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetMalwareScanSettingsRequest AWS API Documentation
    #
    class GetMalwareScanSettingsRequest < Struct.new(
      :detector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scan_resource_criteria
    #   Represents the criteria to be used in the filter for scanning
    #   resources.
    #   @return [Types::ScanResourceCriteria]
    #
    # @!attribute [rw] ebs_snapshot_preservation
    #   An enum value representing possible snapshot preservation settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetMalwareScanSettingsResponse AWS API Documentation
    #
    class GetMalwareScanSettingsResponse < Struct.new(
      :scan_resource_criteria,
      :ebs_snapshot_preservation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector of the GuardDuty member account.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetMasterAccountRequest AWS API Documentation
    #
    class GetMasterAccountRequest < Struct.new(
      :detector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] master
    #   The administrator account details.
    #   @return [Types::Master]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetMasterAccountResponse AWS API Documentation
    #
    class GetMasterAccountResponse < Struct.new(
      :master)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The detector ID for the administrator account.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #   @return [String]
    #
    # @!attribute [rw] account_ids
    #   A list of member account IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetMemberDetectorsRequest AWS API Documentation
    #
    class GetMemberDetectorsRequest < Struct.new(
      :detector_id,
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] member_data_source_configurations
    #   An object that describes which data sources are enabled for a member
    #   account.
    #   @return [Array<Types::MemberDataSourceConfiguration>]
    #
    # @!attribute [rw] unprocessed_accounts
    #   A list of member account IDs that were unable to be processed along
    #   with an explanation for why they were not processed.
    #   @return [Array<Types::UnprocessedAccount>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetMemberDetectorsResponse AWS API Documentation
    #
    class GetMemberDetectorsResponse < Struct.new(
      :member_data_source_configurations,
      :unprocessed_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector of the GuardDuty account whose members
    #   you want to retrieve.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_details
    #   Information about the statistics report for your organization.
    #   @return [Types::OrganizationDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetOrganizationStatisticsResponse AWS API Documentation
    #
    class GetOrganizationStatisticsResponse < Struct.new(
      :organization_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector of the GuardDuty member account.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #   @return [String]
    #
    # @!attribute [rw] account_ids
    #   A list of account identifiers of the GuardDuty member account.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetRemainingFreeTrialDaysRequest AWS API Documentation
    #
    class GetRemainingFreeTrialDaysRequest < Struct.new(
      :detector_id,
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accounts
    #   The member accounts which were included in a request and were
    #   processed successfully.
    #   @return [Array<Types::AccountFreeTrialInfo>]
    #
    # @!attribute [rw] unprocessed_accounts
    #   The member account that was included in a request but for which the
    #   request could not be processed.
    #   @return [Array<Types::UnprocessedAccount>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetRemainingFreeTrialDaysResponse AWS API Documentation
    #
    class GetRemainingFreeTrialDaysResponse < Struct.new(
      :accounts,
      :unprocessed_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector associated with the threat entity set
    #   resource.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #   @return [String]
    #
    # @!attribute [rw] threat_entity_set_id
    #   The unique ID that helps GuardDuty identify the threat entity set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetThreatEntitySetRequest AWS API Documentation
    #
    class GetThreatEntitySetRequest < Struct.new(
      :detector_id,
      :threat_entity_set_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the threat entity set associated with the specified
    #   `threatEntitySetId`.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the file that contains the threat entity set.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The URI of the file that contains the threat entity set.
    #   @return [String]
    #
    # @!attribute [rw] expected_bucket_owner
    #   The Amazon Web Services account ID that owns the Amazon S3 bucket
    #   specified in the **location** parameter.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the associated threat entity set.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the threat entity set resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the associated threat entity set was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the associated threat entity set was updated.
    #   @return [Time]
    #
    # @!attribute [rw] error_details
    #   The error details when the status is shown as `ERROR`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetThreatEntitySetResponse AWS API Documentation
    #
    class GetThreatEntitySetResponse < Struct.new(
      :name,
      :format,
      :location,
      :expected_bucket_owner,
      :status,
      :tags,
      :created_at,
      :updated_at,
      :error_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector that is associated with the
    #   threatIntelSet.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
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
      SENSITIVE = []
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
    #   The URI of the file that contains the ThreatIntelSet.
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
    # @!attribute [rw] expected_bucket_owner
    #   The Amazon Web Services account ID that owns the Amazon S3 bucket
    #   specified in the **location** parameter. This field appears in the
    #   response only if it was provided during ThreatIntelSet creation or
    #   update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetThreatIntelSetResponse AWS API Documentation
    #
    class GetThreatIntelSetResponse < Struct.new(
      :name,
      :format,
      :location,
      :status,
      :tags,
      :expected_bucket_owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The unique ID of the GuardDuty detector associated with this trusted
    #   entity set.
    #   @return [String]
    #
    # @!attribute [rw] trusted_entity_set_id
    #   The unique ID that helps GuardDuty identify the trusted entity set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetTrustedEntitySetRequest AWS API Documentation
    #
    class GetTrustedEntitySetRequest < Struct.new(
      :detector_id,
      :trusted_entity_set_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the threat entity set associated with the specified
    #   `trustedEntitySetId`.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the file that contains the trusted entity set.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The URI of the file that contains the trusted entity set.
    #   @return [String]
    #
    # @!attribute [rw] expected_bucket_owner
    #   The Amazon Web Services account ID that owns the Amazon S3 bucket
    #   specified in the **location** parameter.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the associated trusted entity set.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with trusted entity set resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the associated trusted entity set was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the associated trusted entity set was updated.
    #   @return [Time]
    #
    # @!attribute [rw] error_details
    #   The error details when the status is shown as `ERROR`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetTrustedEntitySetResponse AWS API Documentation
    #
    class GetTrustedEntitySetResponse < Struct.new(
      :name,
      :format,
      :location,
      :expected_bucket_owner,
      :status,
      :tags,
      :created_at,
      :updated_at,
      :error_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The ID of the detector that specifies the GuardDuty service whose
    #   usage statistics you want to retrieve.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #   @return [String]
    #
    # @!attribute [rw] usage_statistic_type
    #   The type of usage statistics to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] usage_criteria
    #   Represents the criteria used for querying usage.
    #   @return [Types::UsageCriteria]
    #
    # @!attribute [rw] unit
    #   The currency unit you would like to view your usage statistics in.
    #   Current valid values are USD.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. For subsequent calls, use the NextToken
    #   value returned from the previous request to continue listing results
    #   after the first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetUsageStatisticsRequest AWS API Documentation
    #
    class GetUsageStatisticsRequest < Struct.new(
      :detector_id,
      :usage_statistic_type,
      :usage_criteria,
      :unit,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] usage_statistics
    #   The usage statistics object. If a UsageStatisticType was provided,
    #   the objects representing other types will be null.
    #   @return [Types::UsageStatistics]
    #
    # @!attribute [rw] next_token
    #   The pagination parameter to be used on the next list operation to
    #   retrieve more items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetUsageStatisticsResponse AWS API Documentation
    #
    class GetUsageStatisticsResponse < Struct.new(
      :usage_statistics,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details of the highest severity threat detected during scan
    # and number of infected files.
    #
    # @!attribute [rw] severity
    #   Severity level of the highest severity threat detected.
    #   @return [String]
    #
    # @!attribute [rw] threat_name
    #   Threat name of the highest severity threat detected as part of the
    #   malware scan.
    #   @return [String]
    #
    # @!attribute [rw] count
    #   Total number of infected files with the highest severity threat
    #   detected.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/HighestSeverityThreatDetails AWS API Documentation
    #
    class HighestSeverityThreatDetails < Struct.new(
      :severity,
      :threat_name,
      :count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a pre-existing file or directory on the host machine that
    # the volume maps to.
    #
    # @!attribute [rw] path
    #   Path of the file or directory on the host that the volume maps to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/HostPath AWS API Documentation
    #
    class HostPath < Struct.new(
      :path)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the impersonated user.
    #
    # @!attribute [rw] username
    #   Information about the `username` that was being impersonated.
    #   @return [String]
    #
    # @!attribute [rw] groups
    #   The `group` to which the user name belongs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ImpersonatedUser AWS API Documentation
    #
    class ImpersonatedUser < Struct.new(
      :username,
      :groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the indicators that include a set of
    # signals observed in an attack sequence.
    #
    # @!attribute [rw] key
    #   Specific indicator keys observed in the attack sequence. For
    #   description of the valid values for key, see [Attack sequence
    #   finding details][1] in the *Amazon GuardDuty User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_findings-summary.html#guardduty-extended-threat-detection-attack-sequence-finding-details
    #   @return [String]
    #
    # @!attribute [rw] values
    #   Values associated with each indicator key. For example, if the
    #   indicator key is `SUSPICIOUS_NETWORK`, then the value will be the
    #   name of the network. If the indicator key is `ATTACK_TACTIC`, then
    #   the value will be one of the MITRE tactics.
    #   @return [Array<String>]
    #
    # @!attribute [rw] title
    #   Title describing the indicator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Indicator AWS API Documentation
    #
    class Indicator < Struct.new(
      :key,
      :values,
      :title)
      SENSITIVE = []
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
    #   The Amazon Resource Name (ARN) of the Amazon Web Services Outpost.
    #   Only applicable to Amazon Web Services Outposts instances.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector of the GuardDuty account with which
    #   you want to invite members.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #   @return [String]
    #
    # @!attribute [rw] account_ids
    #   A list of account IDs of the accounts that you want to invite to
    #   GuardDuty as members.
    #   @return [Array<String>]
    #
    # @!attribute [rw] disable_email_notification
    #   A Boolean value that specifies whether you want to disable email
    #   notification to the accounts that you are inviting to GuardDuty as
    #   members.
    #   @return [Boolean]
    #
    # @!attribute [rw] message
    #   The invitation message that you want to send to the accounts that
    #   you're inviting to GuardDuty as members.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/InviteMembersRequest AWS API Documentation
    #
    class InviteMembersRequest < Struct.new(
      :detector_id,
      :account_ids,
      :disable_email_notification,
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the nested item path and hash of the protected
    # resource.
    #
    # @!attribute [rw] nested_item_path
    #   The nested item path where the infected file was found.
    #   @return [String]
    #
    # @!attribute [rw] hash
    #   The hash value of the infected resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ItemPath AWS API Documentation
    #
    class ItemPath < Struct.new(
      :nested_item_path,
      :hash)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the Kubernetes API call action described in this
    # finding.
    #
    # @!attribute [rw] request_uri
    #   The Kubernetes API request URI.
    #   @return [String]
    #
    # @!attribute [rw] verb
    #   The Kubernetes API request HTTP verb.
    #   @return [String]
    #
    # @!attribute [rw] source_ips
    #   The IP of the Kubernetes API caller and the IPs of any proxies or
    #   load balancers between the caller and the API endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_agent
    #   The user agent of the caller of the Kubernetes API.
    #   @return [String]
    #
    # @!attribute [rw] remote_ip_details
    #   Contains information about the remote IP address of the connection.
    #   @return [Types::RemoteIpDetails]
    #
    # @!attribute [rw] status_code
    #   The resulting HTTP response code of the Kubernetes API call action.
    #   @return [Integer]
    #
    # @!attribute [rw] parameters
    #   Parameters related to the Kubernetes API call action.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The resource component in the Kubernetes API call action.
    #   @return [String]
    #
    # @!attribute [rw] subresource
    #   The name of the sub-resource in the Kubernetes API call action.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The name of the namespace where the Kubernetes API call action takes
    #   place.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the resource in the Kubernetes API call action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/KubernetesApiCallAction AWS API Documentation
    #
    class KubernetesApiCallAction < Struct.new(
      :request_uri,
      :verb,
      :source_ips,
      :user_agent,
      :remote_ip_details,
      :status_code,
      :parameters,
      :resource,
      :subresource,
      :namespace,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes whether Kubernetes audit logs are enabled as a data source.
    #
    # @!attribute [rw] enable
    #   The status of Kubernetes audit logs as a data source.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/KubernetesAuditLogsConfiguration AWS API Documentation
    #
    class KubernetesAuditLogsConfiguration < Struct.new(
      :enable)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes whether Kubernetes audit logs are enabled as a data source.
    #
    # @!attribute [rw] status
    #   A value that describes whether Kubernetes audit logs are enabled as
    #   a data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/KubernetesAuditLogsConfigurationResult AWS API Documentation
    #
    class KubernetesAuditLogsConfigurationResult < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes whether any Kubernetes data sources are enabled.
    #
    # @!attribute [rw] audit_logs
    #   The status of Kubernetes audit logs as a data source.
    #   @return [Types::KubernetesAuditLogsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/KubernetesConfiguration AWS API Documentation
    #
    class KubernetesConfiguration < Struct.new(
      :audit_logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes whether any Kubernetes logs will be enabled as a data
    # source.
    #
    # @!attribute [rw] audit_logs
    #   Describes whether Kubernetes audit logs are enabled as a data
    #   source.
    #   @return [Types::KubernetesAuditLogsConfigurationResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/KubernetesConfigurationResult AWS API Documentation
    #
    class KubernetesConfigurationResult < Struct.new(
      :audit_logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about the Kubernetes resources when it is enabled as
    # a data source.
    #
    # @!attribute [rw] audit_logs
    #   Describes whether Kubernetes audit logs are enabled as a data
    #   source.
    #   @return [Types::DataSourceFreeTrial]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/KubernetesDataSourceFreeTrial AWS API Documentation
    #
    class KubernetesDataSourceFreeTrial < Struct.new(
      :audit_logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about Kubernetes resources such as a Kubernetes user or
    # workload resource involved in a Kubernetes finding.
    #
    # @!attribute [rw] kubernetes_user_details
    #   Details about the Kubernetes user involved in a Kubernetes finding.
    #   @return [Types::KubernetesUserDetails]
    #
    # @!attribute [rw] kubernetes_workload_details
    #   Details about the Kubernetes workload involved in a Kubernetes
    #   finding.
    #   @return [Types::KubernetesWorkloadDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/KubernetesDetails AWS API Documentation
    #
    class KubernetesDetails < Struct.new(
      :kubernetes_user_details,
      :kubernetes_workload_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the Kubernetes API for which you check if you have
    # permission to call.
    #
    # @!attribute [rw] verb
    #   The verb component of the Kubernetes API call. For example, when you
    #   check whether or not you have the permission to call the `CreatePod`
    #   API, the verb component will be `Create`.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The Kubernetes resource with which your Kubernetes API call will
    #   interact.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace where the Kubernetes API action will take place.
    #   @return [String]
    #
    # @!attribute [rw] allowed
    #   Information whether the user has the permission to call the
    #   Kubernetes API.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/KubernetesPermissionCheckedDetails AWS API Documentation
    #
    class KubernetesPermissionCheckedDetails < Struct.new(
      :verb,
      :resource,
      :namespace,
      :allowed)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the role binding that grants the permission
    # defined in a Kubernetes role.
    #
    # @!attribute [rw] kind
    #   The kind of the role. For role binding, this value will be
    #   `RoleBinding`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the `RoleBinding`.
    #   @return [String]
    #
    # @!attribute [rw] uid
    #   The unique identifier of the role binding.
    #   @return [String]
    #
    # @!attribute [rw] role_ref_name
    #   The name of the role being referenced. This must match the name of
    #   the `Role` or `ClusterRole` that you want to bind to.
    #   @return [String]
    #
    # @!attribute [rw] role_ref_kind
    #   The type of the role being referenced. This could be either `Role`
    #   or `ClusterRole`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/KubernetesRoleBindingDetails AWS API Documentation
    #
    class KubernetesRoleBindingDetails < Struct.new(
      :kind,
      :name,
      :uid,
      :role_ref_name,
      :role_ref_kind)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the Kubernetes role name and role type.
    #
    # @!attribute [rw] kind
    #   The kind of role. For this API, the value of `kind` will be `Role`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Kubernetes role.
    #   @return [String]
    #
    # @!attribute [rw] uid
    #   The unique identifier of the Kubernetes role name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/KubernetesRoleDetails AWS API Documentation
    #
    class KubernetesRoleDetails < Struct.new(
      :kind,
      :name,
      :uid)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the Kubernetes user involved in a Kubernetes finding.
    #
    # @!attribute [rw] username
    #   The username of the user who called the Kubernetes API.
    #   @return [String]
    #
    # @!attribute [rw] uid
    #   The user ID of the user who called the Kubernetes API.
    #   @return [String]
    #
    # @!attribute [rw] groups
    #   The groups that include the user who called the Kubernetes API.
    #   @return [Array<String>]
    #
    # @!attribute [rw] session_name
    #   Entity that assumes the IAM role when Kubernetes RBAC permissions
    #   are assigned to that role.
    #   @return [Array<String>]
    #
    # @!attribute [rw] impersonated_user
    #   Information about the impersonated user.
    #   @return [Types::ImpersonatedUser]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/KubernetesUserDetails AWS API Documentation
    #
    class KubernetesUserDetails < Struct.new(
      :username,
      :uid,
      :groups,
      :session_name,
      :impersonated_user)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about Kubernetes workloads involved in a
    # GuardDuty finding, including pods, deployments, and other Kubernetes
    # resources.
    #
    # @!attribute [rw] container_uids
    #   A list of unique identifiers for the containers that are part of the
    #   Kubernetes workload.
    #   @return [Array<String>]
    #
    # @!attribute [rw] namespace
    #   The Kubernetes namespace in which the workload is running, providing
    #   logical isolation within the cluster.
    #   @return [String]
    #
    # @!attribute [rw] kubernetes_resources_types
    #   The types of Kubernetes resources involved in the workload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/KubernetesWorkload AWS API Documentation
    #
    class KubernetesWorkload < Struct.new(
      :container_uids,
      :namespace,
      :kubernetes_resources_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the Kubernetes workload involved in a Kubernetes
    # finding.
    #
    # @!attribute [rw] name
    #   Kubernetes workload name.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Kubernetes workload type (e.g. Pod, Deployment, etc.).
    #   @return [String]
    #
    # @!attribute [rw] uid
    #   Kubernetes workload ID.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   Kubernetes namespace that the workload is part of.
    #   @return [String]
    #
    # @!attribute [rw] host_network
    #   Whether the hostNetwork flag is enabled for the pods included in the
    #   workload.
    #   @return [Boolean]
    #
    # @!attribute [rw] containers
    #   Containers running as part of the Kubernetes workload.
    #   @return [Array<Types::Container>]
    #
    # @!attribute [rw] volumes
    #   Volumes used by the Kubernetes workload.
    #   @return [Array<Types::Volume>]
    #
    # @!attribute [rw] service_account_name
    #   The service account name that is associated with a Kubernetes
    #   workload.
    #   @return [String]
    #
    # @!attribute [rw] host_ipc
    #   Whether the host IPC flag is enabled for the pods in the workload.
    #   @return [Boolean]
    #
    # @!attribute [rw] host_pid
    #   Whether the host PID flag is enabled for the pods in the workload.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/KubernetesWorkloadDetails AWS API Documentation
    #
    class KubernetesWorkloadDetails < Struct.new(
      :name,
      :type,
      :uid,
      :namespace,
      :host_network,
      :containers,
      :volumes,
      :service_account_name,
      :host_ipc,
      :host_pid)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the Lambda function involved in the finding.
    #
    # @!attribute [rw] function_arn
    #   Amazon Resource Name (ARN) of the Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] function_name
    #   Name of the Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_at
    #   The timestamp when the Lambda function was last modified. This field
    #   is in the UTC date string format `(2023-03-22T19:37:20.168Z)`.
    #   @return [Time]
    #
    # @!attribute [rw] revision_id
    #   The revision ID of the Lambda function version.
    #   @return [String]
    #
    # @!attribute [rw] function_version
    #   The version of the Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The execution role of the Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   Amazon Virtual Private Cloud configuration details associated with
    #   your Lambda function.
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] tags
    #   A list of tags attached to this resource, listed in the format of
    #   `key`:`value` pair.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/LambdaDetails AWS API Documentation
    #
    class LambdaDetails < Struct.new(
      :function_arn,
      :function_name,
      :description,
      :last_modified_at,
      :revision_id,
      :function_version,
      :role,
      :vpc_config,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the runtime process details.
    #
    # @!attribute [rw] start_time
    #   The time when the process started. This is in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] namespace_pid
    #   The process ID of the child process.
    #   @return [Integer]
    #
    # @!attribute [rw] user_id
    #   The user ID of the user that executed the process.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the process.
    #   @return [String]
    #
    # @!attribute [rw] pid
    #   The ID of the process.
    #   @return [Integer]
    #
    # @!attribute [rw] uuid
    #   The unique ID assigned to the process by GuardDuty.
    #   @return [String]
    #
    # @!attribute [rw] executable_path
    #   The absolute path of the process executable file.
    #   @return [String]
    #
    # @!attribute [rw] euid
    #   The effective user ID that was used to execute the process.
    #   @return [Integer]
    #
    # @!attribute [rw] parent_uuid
    #   The unique ID of the parent process. This ID is assigned to the
    #   parent process by GuardDuty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/LineageObject AWS API Documentation
    #
    class LineageObject < Struct.new(
      :start_time,
      :namespace_pid,
      :user_id,
      :name,
      :pid,
      :uuid,
      :executable_path,
      :euid,
      :parent_uuid)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector whose coverage details you want to
    #   retrieve.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. For subsequent calls, use the NextToken
    #   value returned from the previous request to continue listing results
    #   after the first page.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] filter_criteria
    #   Represents the criteria used to filter the coverage details.
    #   @return [Types::CoverageFilterCriteria]
    #
    # @!attribute [rw] sort_criteria
    #   Represents the criteria used to sort the coverage details.
    #   @return [Types::CoverageSortCriteria]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListCoverageRequest AWS API Documentation
    #
    class ListCoverageRequest < Struct.new(
      :detector_id,
      :next_token,
      :max_results,
      :filter_criteria,
      :sort_criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resources
    #   A list of resources and their attributes providing cluster details.
    #   @return [Array<Types::CoverageResource>]
    #
    # @!attribute [rw] next_token
    #   The pagination parameter to be used on the next list operation to
    #   retrieve more items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListCoverageResponse AWS API Documentation
    #
    class ListCoverageResponse < Struct.new(
      :resources,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector that is associated with the filter.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The ID of the detector that specifies the GuardDuty service whose
    #   findings you want to list.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
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
    #   * service.action.dnsRequestAction.domainWithSuffix
    #
    #   * service.action.networkConnectionAction.blocked
    #
    #   * service.action.networkConnectionAction.connectionDirection
    #
    #   * service.action.networkConnectionAction.localPortDetails.port
    #
    #   * service.action.networkConnectionAction.protocol
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
    #   * service.ebsVolumeScanDetails.scanId
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector that is associated with IPSet.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action, fill nextToken in the request with
    #   the value of `NextToken` from the previous response to continue
    #   listing data. The default page size is 100 plans.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListMalwareProtectionPlansRequest AWS API Documentation
    #
    class ListMalwareProtectionPlansRequest < Struct.new(
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] malware_protection_plans
    #   A list of unique identifiers associated with each Malware Protection
    #   plan.
    #   @return [Array<Types::MalwareProtectionPlanSummary>]
    #
    # @!attribute [rw] next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action, fill nextToken in the request with
    #   the value of `NextToken` from the previous response to continue
    #   listing data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListMalwareProtectionPlansResponse AWS API Documentation
    #
    class ListMalwareProtectionPlansResponse < Struct.new(
      :malware_protection_plans,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector that is associated with the member.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
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
    #   been disassociated). Member accounts must have been previously
    #   associated with the GuardDuty administrator account using [ `Create
    #   Members` ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_CreateMembers.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListMembersRequest AWS API Documentation
    #
    class ListMembersRequest < Struct.new(
      :detector_id,
      :max_results,
      :next_token,
      :only_associated)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] members
    #   A list of members.
    #
    #   <note markdown="1"> The values for `email` and `invitedAt` are available only if the
    #   member accounts are added by invitation.
    #
    #    </note>
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] admin_accounts
    #   A list of accounts configured as GuardDuty delegated administrators.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The detector ID for which you want to retrieve the publishing
    #   destination.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for the given GuardDuty resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The unique ID of the GuardDuty detector that is associated with this
    #   threat entity set.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   You can use this parameter to indicate the maximum number of items
    #   you want in the response. The default value is 50.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListThreatEntitySetsRequest AWS API Documentation
    #
    class ListThreatEntitySetsRequest < Struct.new(
      :detector_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] threat_entity_set_ids
    #   The IDs of the threat entity set resources.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination parameter to be used on the next list operation to
    #   retrieve more items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListThreatEntitySetsResponse AWS API Documentation
    #
    class ListThreatEntitySetsResponse < Struct.new(
      :threat_entity_set_ids,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector that is associated with the
    #   threatIntelSet.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The unique ID of the GuardDuty detector that is associated with this
    #   threat entity set.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   You can use this parameter to indicate the maximum number of items
    #   you want in the response. The default value is 50.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListTrustedEntitySetsRequest AWS API Documentation
    #
    class ListTrustedEntitySetsRequest < Struct.new(
      :detector_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trusted_entity_set_ids
    #   The IDs of the trusted entity set resources.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination parameter to be used on the next list operation to
    #   retrieve more items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListTrustedEntitySetsResponse AWS API Documentation
    #
    class ListTrustedEntitySetsResponse < Struct.new(
      :trusted_entity_set_ids,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the local IP address of the connection.
    #
    # @!attribute [rw] ip_address_v4
    #   The IPv4 local address of the connection.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_v6
    #   The IPv6 local address of the connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/LocalIpDetails AWS API Documentation
    #
    class LocalIpDetails < Struct.new(
      :ip_address_v4,
      :ip_address_v6)
      SENSITIVE = [:ip_address_v4, :ip_address_v6]
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the login attempts.
    #
    # @!attribute [rw] user
    #   Indicates the user name which attempted to log in.
    #   @return [String]
    #
    # @!attribute [rw] application
    #   Indicates the application name used to attempt log in.
    #   @return [String]
    #
    # @!attribute [rw] failed_login_attempts
    #   Represents the sum of failed (unsuccessful) login attempts made to
    #   establish a connection to the database instance.
    #   @return [Integer]
    #
    # @!attribute [rw] successful_login_attempts
    #   Represents the sum of successful connections (a correct combination
    #   of login attributes) made to the database instance by the actor.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/LoginAttribute AWS API Documentation
    #
    class LoginAttribute < Struct.new(
      :user,
      :application,
      :failed_login_attempts,
      :successful_login_attempts)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes whether Malware Protection will be enabled as a data source.
    #
    # @!attribute [rw] scan_ec2_instance_with_findings
    #   Describes the configuration of Malware Protection for EC2 instances
    #   with findings.
    #   @return [Types::ScanEc2InstanceWithFindings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/MalwareProtectionConfiguration AWS API Documentation
    #
    class MalwareProtectionConfiguration < Struct.new(
      :scan_ec2_instance_with_findings)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information on the status of all Malware
    # Protection data sources.
    #
    # @!attribute [rw] scan_ec2_instance_with_findings
    #   Describes the configuration of Malware Protection for EC2 instances
    #   with findings.
    #   @return [Types::ScanEc2InstanceWithFindingsResult]
    #
    # @!attribute [rw] service_role
    #   The GuardDuty Malware Protection service role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/MalwareProtectionConfigurationResult AWS API Documentation
    #
    class MalwareProtectionConfigurationResult < Struct.new(
      :scan_ec2_instance_with_findings,
      :service_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about Malware Protection when it is enabled as a data
    # source.
    #
    # @!attribute [rw] scan_ec2_instance_with_findings
    #   Describes whether Malware Protection for EC2 instances with findings
    #   is enabled as a data source.
    #   @return [Types::DataSourceFreeTrial]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/MalwareProtectionDataSourceFreeTrial AWS API Documentation
    #
    class MalwareProtectionDataSourceFreeTrial < Struct.new(
      :scan_ec2_instance_with_findings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about whether the tags will be added to the S3 object
    # after scanning.
    #
    # @!attribute [rw] tagging
    #   Indicates whether the scanned S3 object will have tags about the
    #   scan result.
    #   @return [Types::MalwareProtectionPlanTaggingAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/MalwareProtectionPlanActions AWS API Documentation
    #
    class MalwareProtectionPlanActions < Struct.new(
      :tagging)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the issue code and message associated to the status
    # of your Malware Protection plan.
    #
    # @!attribute [rw] code
    #   Issue code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Issue message that specifies the reason. For information about
    #   potential troubleshooting steps, see [Troubleshooting Malware
    #   Protection for S3 status issues][1] in the *Amazon GuardDuty User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/ug/troubleshoot-s3-malware-protection-status-errors.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/MalwareProtectionPlanStatusReason AWS API Documentation
    #
    class MalwareProtectionPlanStatusReason < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the Malware Protection plan resource.
    #
    # @!attribute [rw] malware_protection_plan_id
    #   A unique identifier associated with Malware Protection plan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/MalwareProtectionPlanSummary AWS API Documentation
    #
    class MalwareProtectionPlanSummary < Struct.new(
      :malware_protection_plan_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about adding tags to the scanned S3 object after the scan
    # result.
    #
    # @!attribute [rw] status
    #   Indicates whether or not the tags will added.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/MalwareProtectionPlanTaggingAction AWS API Documentation
    #
    class MalwareProtectionPlanTaggingAction < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the malware scan that generated a GuardDuty finding.
    #
    # @!attribute [rw] threats
    #   Information about the detected threats associated with the generated
    #   GuardDuty finding.
    #   @return [Array<Types::Threat>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/MalwareScanDetails AWS API Documentation
    #
    class MalwareScanDetails < Struct.new(
      :threats)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the administrator account and invitation.
    #
    # @!attribute [rw] account_id
    #   The ID of the account used as the administrator account.
    #   @return [String]
    #
    # @!attribute [rw] invitation_id
    #   The value used to validate the administrator account to the member
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] relationship_status
    #   The status of the relationship between the administrator and member
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
      SENSITIVE = []
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
    #   The administrator account ID.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address of the member account.
    #   @return [String]
    #
    # @!attribute [rw] relationship_status
    #   The status of the relationship between the member and the
    #   administrator.
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
    # @!attribute [rw] administrator_id
    #   The administrator account ID.
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
      :updated_at,
      :administrator_id)
      SENSITIVE = [:email]
      include Aws::Structure
    end

    # Information about the additional configuration for the member account.
    #
    # @!attribute [rw] name
    #   Name of the additional configuration.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of the additional configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/MemberAdditionalConfiguration AWS API Documentation
    #
    class MemberAdditionalConfiguration < Struct.new(
      :name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the additional configuration for the member account.
    #
    # @!attribute [rw] name
    #   Indicates the name of the additional configuration that is set for
    #   the member account.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates the status of the additional configuration that is set for
    #   the member account.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp at which the additional configuration was set for the
    #   member account. This is in UTC format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/MemberAdditionalConfigurationResult AWS API Documentation
    #
    class MemberAdditionalConfigurationResult < Struct.new(
      :name,
      :status,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information on which data sources are enabled for a member
    # account.
    #
    # @!attribute [rw] account_id
    #   The account ID for the member account.
    #   @return [String]
    #
    # @!attribute [rw] data_sources
    #   Contains information on the status of data sources for the account.
    #   @return [Types::DataSourceConfigurationsResult]
    #
    # @!attribute [rw] features
    #   Contains information about the status of the features for the member
    #   account.
    #   @return [Array<Types::MemberFeaturesConfigurationResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/MemberDataSourceConfiguration AWS API Documentation
    #
    class MemberDataSourceConfiguration < Struct.new(
      :account_id,
      :data_sources,
      :features)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the features for the member account.
    #
    # @!attribute [rw] name
    #   The name of the feature.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the feature.
    #   @return [String]
    #
    # @!attribute [rw] additional_configuration
    #   Additional configuration of the feature for the member account.
    #   @return [Array<Types::MemberAdditionalConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/MemberFeaturesConfiguration AWS API Documentation
    #
    class MemberFeaturesConfiguration < Struct.new(
      :name,
      :status,
      :additional_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the features for the member account.
    #
    # @!attribute [rw] name
    #   Indicates the name of the feature that is enabled for the detector.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates the status of the feature that is enabled for the
    #   detector.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp at which the feature object was updated.
    #   @return [Time]
    #
    # @!attribute [rw] additional_configuration
    #   Indicates the additional configuration of the feature that is
    #   configured for the member account.
    #   @return [Array<Types::MemberAdditionalConfigurationResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/MemberFeaturesConfigurationResult AWS API Documentation
    #
    class MemberFeaturesConfigurationResult < Struct.new(
      :name,
      :status,
      :updated_at,
      :additional_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the network connection.
    #
    # @!attribute [rw] direction
    #   The direction in which the network traffic is flowing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/NetworkConnection AWS API Documentation
    #
    class NetworkConnection < Struct.new(
      :direction)
      SENSITIVE = []
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
    # @!attribute [rw] local_network_interface
    #   The EC2 instance's local elastic network interface utilized for the
    #   connection.
    #   @return [String]
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
      :local_network_interface,
      :remote_ip_details,
      :remote_port_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about network endpoints that were observed in the
    # attack sequence.
    #
    # @!attribute [rw] id
    #   The ID of the network endpoint.
    #   @return [String]
    #
    # @!attribute [rw] ip
    #   The IP address associated with the network endpoint.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain information for the network endpoint.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number associated with the network endpoint.
    #   @return [Integer]
    #
    # @!attribute [rw] location
    #   Information about the location of the network endpoint.
    #   @return [Types::NetworkGeoLocation]
    #
    # @!attribute [rw] autonomous_system
    #   The Autonomous System (AS) of the network endpoint.
    #   @return [Types::AutonomousSystem]
    #
    # @!attribute [rw] connection
    #   Information about the network connection.
    #   @return [Types::NetworkConnection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/NetworkEndpoint AWS API Documentation
    #
    class NetworkEndpoint < Struct.new(
      :id,
      :ip,
      :domain,
      :port,
      :location,
      :autonomous_system,
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about network endpoint location.
    #
    # @!attribute [rw] city
    #   The name of the city.
    #   @return [String]
    #
    # @!attribute [rw] country
    #   The name of the country.
    #   @return [String]
    #
    # @!attribute [rw] latitude
    #   The latitude information of the endpoint location.
    #   @return [Float]
    #
    # @!attribute [rw] longitude
    #   The longitude information of the endpoint location.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/NetworkGeoLocation AWS API Documentation
    #
    class NetworkGeoLocation < Struct.new(
      :city,
      :country,
      :latitude,
      :longitude)
      SENSITIVE = []
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
      SENSITIVE = [:private_ip_address]
      include Aws::Structure
    end

    # Contains information about the observed behavior.
    #
    # @!attribute [rw] text
    #   The text that was unusual.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Observations AWS API Documentation
    #
    class Observations < Struct.new(
      :text)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of additional configurations which will be configured for the
    # organization.
    #
    # Additional configuration applies to only GuardDuty Runtime Monitoring
    # protection plan.
    #
    # @!attribute [rw] name
    #   The name of the additional configuration that will be configured for
    #   the organization. These values are applicable to only Runtime
    #   Monitoring protection plan.
    #   @return [String]
    #
    # @!attribute [rw] auto_enable
    #   The status of the additional configuration that will be configured
    #   for the organization. Use one of the following values to configure
    #   the feature status for the entire organization:
    #
    #   * `NEW`: Indicates that when a new account joins the organization,
    #     they will have the additional configuration enabled automatically.
    #
    #   * `ALL`: Indicates that all accounts in the organization have the
    #     additional configuration enabled automatically. This includes
    #     `NEW` accounts that join the organization and accounts that may
    #     have been suspended or removed from the organization in GuardDuty.
    #
    #     It may take up to 24 hours to update the configuration for all the
    #     member accounts.
    #
    #   * `NONE`: Indicates that the additional configuration will not be
    #     automatically enabled for any account in the organization. The
    #     administrator must manage the additional configuration for each
    #     account individually.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/OrganizationAdditionalConfiguration AWS API Documentation
    #
    class OrganizationAdditionalConfiguration < Struct.new(
      :name,
      :auto_enable)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of additional configuration which will be configured for the
    # organization.
    #
    # @!attribute [rw] name
    #   The name of the additional configuration that is configured for the
    #   member accounts within the organization. These values are applicable
    #   to only Runtime Monitoring protection plan.
    #   @return [String]
    #
    # @!attribute [rw] auto_enable
    #   Describes the status of the additional configuration that is
    #   configured for the member accounts within the organization. One of
    #   the following values is the status for the entire organization:
    #
    #   * `NEW`: Indicates that when a new account joins the organization,
    #     they will have the additional configuration enabled automatically.
    #
    #   * `ALL`: Indicates that all accounts in the organization have the
    #     additional configuration enabled automatically. This includes
    #     `NEW` accounts that join the organization and accounts that may
    #     have been suspended or removed from the organization in GuardDuty.
    #
    #     It may take up to 24 hours to update the configuration for all the
    #     member accounts.
    #
    #   * `NONE`: Indicates that the additional configuration will not be
    #     automatically enabled for any account in the organization. The
    #     administrator must manage the additional configuration for each
    #     account individually.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/OrganizationAdditionalConfigurationResult AWS API Documentation
    #
    class OrganizationAdditionalConfigurationResult < Struct.new(
      :name,
      :auto_enable)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information on which data sources will be
    # configured to be automatically enabled for new members within the
    # organization.
    #
    # @!attribute [rw] s3_logs
    #   Describes whether S3 data event logs are enabled for new members of
    #   the organization.
    #   @return [Types::OrganizationS3LogsConfiguration]
    #
    # @!attribute [rw] kubernetes
    #   Describes the configuration of Kubernetes data sources for new
    #   members of the organization.
    #   @return [Types::OrganizationKubernetesConfiguration]
    #
    # @!attribute [rw] malware_protection
    #   Describes the configuration of Malware Protection for new members of
    #   the organization.
    #   @return [Types::OrganizationMalwareProtectionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/OrganizationDataSourceConfigurations AWS API Documentation
    #
    class OrganizationDataSourceConfigurations < Struct.new(
      :s3_logs,
      :kubernetes,
      :malware_protection)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information on which data sources are
    # automatically enabled for new members within the organization.
    #
    # @!attribute [rw] s3_logs
    #   Describes whether S3 data event logs are enabled as a data source.
    #   @return [Types::OrganizationS3LogsConfigurationResult]
    #
    # @!attribute [rw] kubernetes
    #   Describes the configuration of Kubernetes data sources.
    #   @return [Types::OrganizationKubernetesConfigurationResult]
    #
    # @!attribute [rw] malware_protection
    #   Describes the configuration of Malware Protection data source for an
    #   organization.
    #   @return [Types::OrganizationMalwareProtectionConfigurationResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/OrganizationDataSourceConfigurationsResult AWS API Documentation
    #
    class OrganizationDataSourceConfigurationsResult < Struct.new(
      :s3_logs,
      :kubernetes,
      :malware_protection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about GuardDuty coverage statistics for members in your
    # Amazon Web Services organization.
    #
    # @!attribute [rw] updated_at
    #   The timestamp at which the organization statistics was last updated.
    #   This is in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] organization_statistics
    #   Information about the GuardDuty coverage statistics for members in
    #   your Amazon Web Services organization.
    #   @return [Types::OrganizationStatistics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/OrganizationDetails AWS API Documentation
    #
    class OrganizationDetails < Struct.new(
      :updated_at,
      :organization_statistics)
      SENSITIVE = []
      include Aws::Structure
    end

    # Organization-wide EBS volumes scan configuration.
    #
    # @!attribute [rw] auto_enable
    #   Whether scanning EBS volumes should be auto-enabled for new members
    #   joining the organization.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/OrganizationEbsVolumes AWS API Documentation
    #
    class OrganizationEbsVolumes < Struct.new(
      :auto_enable)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information on the status of whether EBS
    # volumes scanning will be enabled as a data source for an organization.
    #
    # @!attribute [rw] auto_enable
    #   An object that contains the status of whether scanning EBS volumes
    #   should be auto-enabled for new members joining the organization.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/OrganizationEbsVolumesResult AWS API Documentation
    #
    class OrganizationEbsVolumesResult < Struct.new(
      :auto_enable)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of features which will be configured for the organization.
    #
    # @!attribute [rw] name
    #   The name of the feature that will be configured for the
    #   organization.
    #   @return [String]
    #
    # @!attribute [rw] auto_enable
    #   Describes the status of the feature that is configured for the
    #   member accounts within the organization. One of the following values
    #   is the status for the entire organization:
    #
    #   * `NEW`: Indicates that when a new account joins the organization,
    #     they will have the feature enabled automatically.
    #
    #   * `ALL`: Indicates that all accounts in the organization have the
    #     feature enabled automatically. This includes `NEW` accounts that
    #     join the organization and accounts that may have been suspended or
    #     removed from the organization in GuardDuty.
    #
    #     It may take up to 24 hours to update the configuration for all the
    #     member accounts.
    #
    #   * `NONE`: Indicates that the feature will not be automatically
    #     enabled for any account in the organization. The administrator
    #     must manage the feature for each account individually.
    #   @return [String]
    #
    # @!attribute [rw] additional_configuration
    #   The additional information that will be configured for the
    #   organization.
    #   @return [Array<Types::OrganizationAdditionalConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/OrganizationFeatureConfiguration AWS API Documentation
    #
    class OrganizationFeatureConfiguration < Struct.new(
      :name,
      :auto_enable,
      :additional_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of features which will be configured for the organization.
    #
    # @!attribute [rw] name
    #   The name of the feature that is configured for the member accounts
    #   within the organization.
    #   @return [String]
    #
    # @!attribute [rw] auto_enable
    #   Describes the status of the feature that is configured for the
    #   member accounts within the organization.
    #
    #   * `NEW`: Indicates that when a new account joins the organization,
    #     they will have the feature enabled automatically.
    #
    #   * `ALL`: Indicates that all accounts in the organization have the
    #     feature enabled automatically. This includes `NEW` accounts that
    #     join the organization and accounts that may have been suspended or
    #     removed from the organization in GuardDuty.
    #
    #   * `NONE`: Indicates that the feature will not be automatically
    #     enabled for any account in the organization. In this case, each
    #     account will be managed individually by the administrator.
    #   @return [String]
    #
    # @!attribute [rw] additional_configuration
    #   The additional configuration that is configured for the member
    #   accounts within the organization.
    #   @return [Array<Types::OrganizationAdditionalConfigurationResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/OrganizationFeatureConfigurationResult AWS API Documentation
    #
    class OrganizationFeatureConfigurationResult < Struct.new(
      :name,
      :auto_enable,
      :additional_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the number of accounts that have enabled a specific
    # feature.
    #
    # @!attribute [rw] name
    #   Name of the feature.
    #   @return [String]
    #
    # @!attribute [rw] enabled_accounts_count
    #   Total number of accounts that have enabled a specific feature.
    #   @return [Integer]
    #
    # @!attribute [rw] additional_configuration
    #   Name of the additional configuration.
    #   @return [Array<Types::OrganizationFeatureStatisticsAdditionalConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/OrganizationFeatureStatistics AWS API Documentation
    #
    class OrganizationFeatureStatistics < Struct.new(
      :name,
      :enabled_accounts_count,
      :additional_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the coverage statistic for the additional
    # configuration of the feature.
    #
    # @!attribute [rw] name
    #   Name of the additional configuration within a feature.
    #   @return [String]
    #
    # @!attribute [rw] enabled_accounts_count
    #   Total number of accounts that have enabled the additional
    #   configuration.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/OrganizationFeatureStatisticsAdditionalConfiguration AWS API Documentation
    #
    class OrganizationFeatureStatisticsAdditionalConfiguration < Struct.new(
      :name,
      :enabled_accounts_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Organization-wide Kubernetes audit logs configuration.
    #
    # @!attribute [rw] auto_enable
    #   A value that contains information on whether Kubernetes audit logs
    #   should be enabled automatically as a data source for the
    #   organization.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/OrganizationKubernetesAuditLogsConfiguration AWS API Documentation
    #
    class OrganizationKubernetesAuditLogsConfiguration < Struct.new(
      :auto_enable)
      SENSITIVE = []
      include Aws::Structure
    end

    # The current configuration of Kubernetes audit logs as a data source
    # for the organization.
    #
    # @!attribute [rw] auto_enable
    #   Whether Kubernetes audit logs data source should be auto-enabled for
    #   new members joining the organization.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/OrganizationKubernetesAuditLogsConfigurationResult AWS API Documentation
    #
    class OrganizationKubernetesAuditLogsConfigurationResult < Struct.new(
      :auto_enable)
      SENSITIVE = []
      include Aws::Structure
    end

    # Organization-wide Kubernetes data sources configurations.
    #
    # @!attribute [rw] audit_logs
    #   Whether Kubernetes audit logs data source should be auto-enabled for
    #   new members joining the organization.
    #   @return [Types::OrganizationKubernetesAuditLogsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/OrganizationKubernetesConfiguration AWS API Documentation
    #
    class OrganizationKubernetesConfiguration < Struct.new(
      :audit_logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # The current configuration of all Kubernetes data sources for the
    # organization.
    #
    # @!attribute [rw] audit_logs
    #   The current configuration of Kubernetes audit logs as a data source
    #   for the organization.
    #   @return [Types::OrganizationKubernetesAuditLogsConfigurationResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/OrganizationKubernetesConfigurationResult AWS API Documentation
    #
    class OrganizationKubernetesConfigurationResult < Struct.new(
      :audit_logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Organization-wide Malware Protection configurations.
    #
    # @!attribute [rw] scan_ec2_instance_with_findings
    #   Whether Malware Protection for EC2 instances with findings should be
    #   auto-enabled for new members joining the organization.
    #   @return [Types::OrganizationScanEc2InstanceWithFindings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/OrganizationMalwareProtectionConfiguration AWS API Documentation
    #
    class OrganizationMalwareProtectionConfiguration < Struct.new(
      :scan_ec2_instance_with_findings)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information on the status of all Malware
    # Protection data source for an organization.
    #
    # @!attribute [rw] scan_ec2_instance_with_findings
    #   Describes the configuration for scanning EC2 instances with findings
    #   for an organization.
    #   @return [Types::OrganizationScanEc2InstanceWithFindingsResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/OrganizationMalwareProtectionConfigurationResult AWS API Documentation
    #
    class OrganizationMalwareProtectionConfigurationResult < Struct.new(
      :scan_ec2_instance_with_findings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes whether S3 data event logs will be automatically enabled for
    # new members of the organization.
    #
    # @!attribute [rw] auto_enable
    #   A value that contains information on whether S3 data event logs will
    #   be enabled automatically as a data source for the organization.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/OrganizationS3LogsConfiguration AWS API Documentation
    #
    class OrganizationS3LogsConfiguration < Struct.new(
      :auto_enable)
      SENSITIVE = []
      include Aws::Structure
    end

    # The current configuration of S3 data event logs as a data source for
    # the organization.
    #
    # @!attribute [rw] auto_enable
    #   A value that describes whether S3 data event logs are automatically
    #   enabled for new members of the organization.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/OrganizationS3LogsConfigurationResult AWS API Documentation
    #
    class OrganizationS3LogsConfigurationResult < Struct.new(
      :auto_enable)
      SENSITIVE = []
      include Aws::Structure
    end

    # Organization-wide EC2 instances with findings scan configuration.
    #
    # @!attribute [rw] ebs_volumes
    #   Whether scanning EBS volumes should be auto-enabled for new members
    #   joining the organization.
    #   @return [Types::OrganizationEbsVolumes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/OrganizationScanEc2InstanceWithFindings AWS API Documentation
    #
    class OrganizationScanEc2InstanceWithFindings < Struct.new(
      :ebs_volumes)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information on the status of scanning EC2
    # instances with findings for an organization.
    #
    # @!attribute [rw] ebs_volumes
    #   Describes the configuration for scanning EBS volumes for an
    #   organization.
    #   @return [Types::OrganizationEbsVolumesResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/OrganizationScanEc2InstanceWithFindingsResult AWS API Documentation
    #
    class OrganizationScanEc2InstanceWithFindingsResult < Struct.new(
      :ebs_volumes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the coverage statistics of the features for the
    # entire Amazon Web Services organization.
    #
    # When you create a new Amazon Web Services organization, it might take
    # up to 24 hours to generate the statistics summary for this
    # organization.
    #
    # @!attribute [rw] total_accounts_count
    #   Total number of accounts in your Amazon Web Services organization.
    #   @return [Integer]
    #
    # @!attribute [rw] member_accounts_count
    #   Total number of accounts in your Amazon Web Services organization
    #   that are associated with GuardDuty.
    #   @return [Integer]
    #
    # @!attribute [rw] active_accounts_count
    #   Total number of active accounts in your Amazon Web Services
    #   organization that are associated with GuardDuty.
    #   @return [Integer]
    #
    # @!attribute [rw] enabled_accounts_count
    #   Total number of accounts that have enabled GuardDuty.
    #   @return [Integer]
    #
    # @!attribute [rw] count_by_feature
    #   Retrieves the coverage statistics for each feature.
    #   @return [Array<Types::OrganizationFeatureStatistics>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/OrganizationStatistics AWS API Documentation
    #
    class OrganizationStatistics < Struct.new(
      :total_accounts_count,
      :member_accounts_count,
      :active_accounts_count,
      :enabled_accounts_count,
      :count_by_feature)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = [:private_ip_address]
      include Aws::Structure
    end

    # Information about the observed process.
    #
    # @!attribute [rw] name
    #   The name of the process.
    #   @return [String]
    #
    # @!attribute [rw] executable_path
    #   The absolute path of the process executable file.
    #   @return [String]
    #
    # @!attribute [rw] executable_sha_256
    #   The `SHA256` hash of the process executable.
    #   @return [String]
    #
    # @!attribute [rw] namespace_pid
    #   The ID of the child process.
    #   @return [Integer]
    #
    # @!attribute [rw] pwd
    #   The present working directory of the process.
    #   @return [String]
    #
    # @!attribute [rw] pid
    #   The ID of the process.
    #   @return [Integer]
    #
    # @!attribute [rw] start_time
    #   The time when the process started. This is in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] uuid
    #   The unique ID assigned to the process by GuardDuty.
    #   @return [String]
    #
    # @!attribute [rw] parent_uuid
    #   The unique ID of the parent process. This ID is assigned to the
    #   parent process by GuardDuty.
    #   @return [String]
    #
    # @!attribute [rw] user
    #   The user that executed the process.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The unique ID of the user that executed the process.
    #   @return [Integer]
    #
    # @!attribute [rw] euid
    #   The effective user ID of the user that executed the process.
    #   @return [Integer]
    #
    # @!attribute [rw] lineage
    #   Information about the process's lineage.
    #   @return [Array<Types::LineageObject>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ProcessDetails AWS API Documentation
    #
    class ProcessDetails < Struct.new(
      :name,
      :executable_path,
      :executable_sha_256,
      :namespace_pid,
      :pwd,
      :pid,
      :start_time,
      :uuid,
      :parent_uuid,
      :user,
      :user_id,
      :euid,
      :lineage)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes public access policies that apply to the Amazon S3 bucket.
    #
    # For information about each of the following settings, see [Blocking
    # public access to your Amazon S3 storage][1] in the *Amazon S3 User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-control-block-public-access.html
    #
    # @!attribute [rw] public_acl_access
    #   Indicates whether or not there is a setting that allows public
    #   access to the Amazon S3 buckets through access control lists (ACLs).
    #   @return [String]
    #
    # @!attribute [rw] public_policy_access
    #   Indicates whether or not there is a setting that allows public
    #   access to the Amazon S3 bucket policy.
    #   @return [String]
    #
    # @!attribute [rw] public_acl_ignore_behavior
    #   Indicates whether or not there is a setting that ignores all public
    #   access control lists (ACLs) on the Amazon S3 bucket and the objects
    #   that it contains.
    #   @return [String]
    #
    # @!attribute [rw] public_bucket_restrict_behavior
    #   Indicates whether or not there is a setting that restricts access to
    #   the bucket with specified policies.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/PublicAccessConfiguration AWS API Documentation
    #
    class PublicAccessConfiguration < Struct.new(
      :public_acl_access,
      :public_policy_access,
      :public_acl_ignore_behavior,
      :public_bucket_restrict_behavior)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the resource type `RDSDBInstance` involved
    # in a GuardDuty finding.
    #
    # @!attribute [rw] db_instance_identifier
    #   The identifier associated to the database instance that was involved
    #   in the finding.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The database engine of the database instance involved in the
    #   finding.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version of the database engine that was involved in the finding.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_identifier
    #   The identifier of the database cluster that contains the database
    #   instance ID involved in the finding.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_arn
    #   The Amazon Resource Name (ARN) that identifies the database instance
    #   involved in the finding.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Information about the tag key-value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/RdsDbInstanceDetails AWS API Documentation
    #
    class RdsDbInstanceDetails < Struct.new(
      :db_instance_identifier,
      :engine,
      :engine_version,
      :db_cluster_identifier,
      :db_instance_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the user and authentication details for a
    # database instance involved in the finding.
    #
    # @!attribute [rw] user
    #   The user name used in the anomalous login attempt.
    #   @return [String]
    #
    # @!attribute [rw] application
    #   The application name used in the anomalous login attempt.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The name of the database instance involved in the anomalous login
    #   attempt.
    #   @return [String]
    #
    # @!attribute [rw] ssl
    #   The version of the Secure Socket Layer (SSL) used for the network.
    #   @return [String]
    #
    # @!attribute [rw] auth_method
    #   The authentication method used by the user involved in the finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/RdsDbUserDetails AWS API Documentation
    #
    class RdsDbUserDetails < Struct.new(
      :user,
      :application,
      :database,
      :ssl,
      :auth_method)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the resource type `RDSLimitlessDB` that is
    # involved in a GuardDuty finding.
    #
    # @!attribute [rw] db_shard_group_identifier
    #   The name associated with the Limitless DB shard group.
    #   @return [String]
    #
    # @!attribute [rw] db_shard_group_resource_id
    #   The resource identifier of the DB shard group within the Limitless
    #   Database.
    #   @return [String]
    #
    # @!attribute [rw] db_shard_group_arn
    #   The Amazon Resource Name (ARN) that identifies the DB shard group.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The database engine of the database instance involved in the
    #   finding.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version of the database engine.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_identifier
    #   The name of the database cluster that is a part of the Limitless
    #   Database.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Information about the tag key-value pair.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/RdsLimitlessDbDetails AWS API Documentation
    #
    class RdsLimitlessDbDetails < Struct.new(
      :db_shard_group_identifier,
      :db_shard_group_resource_id,
      :db_shard_group_arn,
      :engine,
      :engine_version,
      :db_cluster_identifier,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates that a login attempt was made to the potentially compromised
    # database from a remote IP address.
    #
    # @!attribute [rw] remote_ip_details
    #   Contains information about the remote IP address of the connection.
    #   @return [Types::RemoteIpDetails]
    #
    # @!attribute [rw] login_attributes
    #   Indicates the login attributes used in the login attempt.
    #   @return [Array<Types::LoginAttribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/RdsLoginAttemptAction AWS API Documentation
    #
    class RdsLoginAttemptAction < Struct.new(
      :remote_ip_details,
      :login_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the remote Amazon Web Services account that
    # made the API call.
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the remote API caller.
    #   @return [String]
    #
    # @!attribute [rw] affiliated
    #   Details on whether the Amazon Web Services account of the remote API
    #   caller is related to your GuardDuty environment. If this value is
    #   `True` the API caller is affiliated to your account in some way. If
    #   it is `False` the API caller is from outside your environment.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/RemoteAccountDetails AWS API Documentation
    #
    class RemoteAccountDetails < Struct.new(
      :account_id,
      :affiliated)
      SENSITIVE = []
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
    # @!attribute [rw] ip_address_v6
    #   The IPv6 remote address of the connection.
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
      :ip_address_v6,
      :organization)
      SENSITIVE = [:ip_address_v4, :ip_address_v6]
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the Amazon Web Services resource associated
    # with the activity that prompted GuardDuty to generate a finding.
    #
    # @!attribute [rw] access_key_details
    #   The IAM access key details (user information) of a user that engaged
    #   in the activity that prompted GuardDuty to generate a finding.
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
    # @!attribute [rw] eks_cluster_details
    #   Details about the EKS cluster involved in a Kubernetes finding.
    #   @return [Types::EksClusterDetails]
    #
    # @!attribute [rw] kubernetes_details
    #   Details about the Kubernetes user and workload involved in a
    #   Kubernetes finding.
    #   @return [Types::KubernetesDetails]
    #
    # @!attribute [rw] resource_type
    #   The type of Amazon Web Services resource.
    #   @return [String]
    #
    # @!attribute [rw] ebs_volume_details
    #   Contains list of scanned and skipped EBS volumes with details.
    #   @return [Types::EbsVolumeDetails]
    #
    # @!attribute [rw] ecs_cluster_details
    #   Contains information about the details of the ECS Cluster.
    #   @return [Types::EcsClusterDetails]
    #
    # @!attribute [rw] container_details
    #   Details of a container.
    #   @return [Types::Container]
    #
    # @!attribute [rw] rds_db_instance_details
    #   Contains information about the database instance to which an
    #   anomalous login attempt was made.
    #   @return [Types::RdsDbInstanceDetails]
    #
    # @!attribute [rw] rds_limitless_db_details
    #   Contains information about the RDS Limitless database that was
    #   involved in a GuardDuty finding.
    #   @return [Types::RdsLimitlessDbDetails]
    #
    # @!attribute [rw] rds_db_user_details
    #   Contains information about the user details through which anomalous
    #   login attempt was made.
    #   @return [Types::RdsDbUserDetails]
    #
    # @!attribute [rw] lambda_details
    #   Contains information about the Lambda function that was involved in
    #   a finding.
    #   @return [Types::LambdaDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Resource AWS API Documentation
    #
    class Resource < Struct.new(
      :access_key_details,
      :s3_bucket_details,
      :instance_details,
      :eks_cluster_details,
      :kubernetes_details,
      :resource_type,
      :ebs_volume_details,
      :ecs_cluster_details,
      :container_details,
      :rds_db_instance_details,
      :rds_limitless_db_details,
      :rds_db_user_details,
      :lambda_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the Amazon Web Services resource that is
    # associated with the activity that prompted GuardDuty to generate a
    # finding.
    #
    # @!attribute [rw] s3_bucket
    #   Contains information about the Amazon S3 bucket.
    #   @return [Types::S3Bucket]
    #
    # @!attribute [rw] ec2_instance
    #   Contains information about the Amazon EC2 instance.
    #   @return [Types::Ec2Instance]
    #
    # @!attribute [rw] access_key
    #   Contains information about the IAM access key details of a user that
    #   involved in the GuardDuty finding.
    #   @return [Types::AccessKey]
    #
    # @!attribute [rw] ec2_network_interface
    #   Contains information about the elastic network interface of the
    #   Amazon EC2 instance.
    #   @return [Types::Ec2NetworkInterface]
    #
    # @!attribute [rw] s3_object
    #   Contains information about the Amazon S3 object.
    #   @return [Types::S3Object]
    #
    # @!attribute [rw] eks_cluster
    #   Contains detailed information about the Amazon EKS cluster
    #   associated with the activity that prompted GuardDuty to generate a
    #   finding.
    #   @return [Types::EksCluster]
    #
    # @!attribute [rw] kubernetes_workload
    #   Contains detailed information about the Kubernetes workload
    #   associated with the activity that prompted GuardDuty to generate a
    #   finding.
    #   @return [Types::KubernetesWorkload]
    #
    # @!attribute [rw] container
    #   Contains detailed information about the container associated with
    #   the activity that prompted GuardDuty to generate a finding.
    #   @return [Types::ContainerFindingResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ResourceData AWS API Documentation
    #
    class ResourceData < Struct.new(
      :s3_bucket,
      :ec2_instance,
      :access_key,
      :ec2_network_interface,
      :s3_object,
      :eks_cluster,
      :kubernetes_workload,
      :container)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the resources that were scanned in the scan entry.
    #
    # @!attribute [rw] instance_arn
    #   Instance ARN that was scanned in the scan entry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ResourceDetails AWS API Documentation
    #
    class ResourceDetails < Struct.new(
      :instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested resource can't be found.
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The error type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about each resource type associated with the
    # `groupedByResource` statistics.
    #
    # @!attribute [rw] account_id
    #   The ID of the Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] last_generated_at
    #   The timestamp at which the statistics for this resource was last
    #   generated.
    #   @return [Time]
    #
    # @!attribute [rw] resource_id
    #   ID associated with each resource. The following list provides the
    #   mapping of the resource type and resource ID.
    #
    #   **Mapping of resource and resource ID**
    #
    #   * AccessKey - `resource.accessKeyDetails.accessKeyId`
    #
    #   * Container - `resource.containerDetails.id`
    #
    #   * ECSCluster - `resource.ecsClusterDetails.name`
    #
    #   * EKSCluster - `resource.eksClusterDetails.name`
    #
    #   * Instance - `resource.instanceDetails.instanceId`
    #
    #   * KubernetesCluster -
    #     `resource.kubernetesDetails.kubernetesWorkloadDetails.name`
    #
    #   * Lambda - `resource.lambdaDetails.functionName`
    #
    #   * RDSDBInstance -
    #     `resource.rdsDbInstanceDetails.dbInstanceIdentifier`
    #
    #   * S3Bucket - `resource.s3BucketDetails.name`
    #
    #   * S3Object - `resource.s3BucketDetails.name`
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource.
    #   @return [String]
    #
    # @!attribute [rw] total_findings
    #   The total number of findings associated with this resource.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ResourceStatistics AWS API Documentation
    #
    class ResourceStatistics < Struct.new(
      :account_id,
      :last_generated_at,
      :resource_id,
      :resource_type,
      :total_findings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the Amazon Web Services resource that is
    # associated with the GuardDuty finding.
    #
    # @!attribute [rw] uid
    #   The unique identifier of the resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID to which the resource belongs.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the Amazon Web Services resource.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region where the resource belongs.
    #   @return [String]
    #
    # @!attribute [rw] service
    #   The Amazon Web Services service of the resource.
    #   @return [String]
    #
    # @!attribute [rw] cloud_partition
    #   The cloud partition within the Amazon Web Services Region to which
    #   the resource belongs.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Contains information about the tags associated with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] data
    #   Contains information about the Amazon Web Services resource
    #   associated with the activity that prompted GuardDuty to generate a
    #   finding.
    #   @return [Types::ResourceData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ResourceV2 AWS API Documentation
    #
    class ResourceV2 < Struct.new(
      :uid,
      :name,
      :account_id,
      :resource_type,
      :region,
      :service,
      :cloud_partition,
      :tags,
      :data)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional information about the suspicious activity.
    #
    # @!attribute [rw] modifying_process
    #   Information about the process that modified the current process.
    #   This is available for multiple finding types.
    #   @return [Types::ProcessDetails]
    #
    # @!attribute [rw] modified_at
    #   The timestamp at which the process modified the current process. The
    #   timestamp is in UTC date string format.
    #   @return [Time]
    #
    # @!attribute [rw] script_path
    #   The path to the script that was executed.
    #   @return [String]
    #
    # @!attribute [rw] library_path
    #   The path to the new library that was loaded.
    #   @return [String]
    #
    # @!attribute [rw] ld_preload_value
    #   The value of the LD\_PRELOAD environment variable.
    #   @return [String]
    #
    # @!attribute [rw] socket_path
    #   The path to the docket socket that was accessed.
    #   @return [String]
    #
    # @!attribute [rw] runc_binary_path
    #   The path to the leveraged `runc` implementation.
    #   @return [String]
    #
    # @!attribute [rw] release_agent_path
    #   The path in the container that modified the release agent file.
    #   @return [String]
    #
    # @!attribute [rw] mount_source
    #   The path on the host that is mounted by the container.
    #   @return [String]
    #
    # @!attribute [rw] mount_target
    #   The path in the container that is mapped to the host directory.
    #   @return [String]
    #
    # @!attribute [rw] file_system_type
    #   Represents the type of mounted fileSystem.
    #   @return [String]
    #
    # @!attribute [rw] flags
    #   Represents options that control the behavior of a runtime operation
    #   or action. For example, a filesystem mount operation may contain a
    #   read-only flag.
    #   @return [Array<String>]
    #
    # @!attribute [rw] module_name
    #   The name of the module loaded into the kernel.
    #   @return [String]
    #
    # @!attribute [rw] module_file_path
    #   The path to the module loaded into the kernel.
    #   @return [String]
    #
    # @!attribute [rw] module_sha_256
    #   The `SHA256` hash of the module.
    #   @return [String]
    #
    # @!attribute [rw] shell_history_file_path
    #   The path to the modified shell history file.
    #   @return [String]
    #
    # @!attribute [rw] target_process
    #   Information about the process that had its memory overwritten by the
    #   current process.
    #   @return [Types::ProcessDetails]
    #
    # @!attribute [rw] address_family
    #   Represents the communication protocol associated with the address.
    #   For example, the address family `AF_INET` is used for IP version of
    #   4 protocol.
    #   @return [String]
    #
    # @!attribute [rw] iana_protocol_number
    #   Specifies a particular protocol within the address family. Usually
    #   there is a single protocol in address families. For example, the
    #   address family `AF_INET` only has the IP protocol.
    #   @return [Integer]
    #
    # @!attribute [rw] memory_regions
    #   Specifies the Region of a process's address space such as stack and
    #   heap.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tool_name
    #   Name of the potentially suspicious tool.
    #   @return [String]
    #
    # @!attribute [rw] tool_category
    #   Category that the tool belongs to. Some of the examples are Backdoor
    #   Tool, Pentest Tool, Network Scanner, and Network Sniffer.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   Name of the security service that has been potentially disabled.
    #   @return [String]
    #
    # @!attribute [rw] command_line_example
    #   Example of the command line involved in the suspicious activity.
    #   @return [String]
    #
    # @!attribute [rw] threat_file_path
    #   The suspicious file path for which the threat intelligence details
    #   were found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/RuntimeContext AWS API Documentation
    #
    class RuntimeContext < Struct.new(
      :modifying_process,
      :modified_at,
      :script_path,
      :library_path,
      :ld_preload_value,
      :socket_path,
      :runc_binary_path,
      :release_agent_path,
      :mount_source,
      :mount_target,
      :file_system_type,
      :flags,
      :module_name,
      :module_file_path,
      :module_sha_256,
      :shell_history_file_path,
      :target_process,
      :address_family,
      :iana_protocol_number,
      :memory_regions,
      :tool_name,
      :tool_category,
      :service_name,
      :command_line_example,
      :threat_file_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the process and any required context values for a
    # specific finding.
    #
    # @!attribute [rw] process
    #   Information about the observed process.
    #   @return [Types::ProcessDetails]
    #
    # @!attribute [rw] context
    #   Additional information about the suspicious activity.
    #   @return [Types::RuntimeContext]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/RuntimeDetails AWS API Documentation
    #
    class RuntimeDetails < Struct.new(
      :process,
      :context)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the Amazon S3 bucket policies and
    # encryption.
    #
    # @!attribute [rw] owner_id
    #   The owner ID of the associated S3Amazon S3bucket.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp at which the Amazon S3 bucket was created.
    #   @return [Time]
    #
    # @!attribute [rw] encryption_type
    #   The type of encryption used for the Amazon S3 buckets and its
    #   objects. For more information, see [Protecting data with server-side
    #   encryption][1] in the *Amazon S3 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/serv-side-encryption.html
    #   @return [String]
    #
    # @!attribute [rw] encryption_key_arn
    #   The Amazon Resource Name (ARN) of the encryption key that is used to
    #   encrypt the Amazon S3 bucket and its objects.
    #   @return [String]
    #
    # @!attribute [rw] effective_permission
    #   Describes the effective permissions on this S3 bucket, after
    #   factoring all the attached policies.
    #   @return [String]
    #
    # @!attribute [rw] public_read_access
    #   Indicates whether or not the public read access is allowed for an
    #   Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] public_write_access
    #   Indicates whether or not the public write access is allowed for an
    #   Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] account_public_access
    #   Contains information about the public access policies that apply to
    #   the Amazon S3 bucket at the account level.
    #   @return [Types::PublicAccessConfiguration]
    #
    # @!attribute [rw] bucket_public_access
    #   Contains information about public access policies that apply to the
    #   Amazon S3 bucket.
    #   @return [Types::PublicAccessConfiguration]
    #
    # @!attribute [rw] s3_object_uids
    #   Represents a list of Amazon S3 object identifiers.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/S3Bucket AWS API Documentation
    #
    class S3Bucket < Struct.new(
      :owner_id,
      :created_at,
      :encryption_type,
      :encryption_key_arn,
      :effective_permission,
      :public_read_access,
      :public_write_access,
      :account_public_access,
      :bucket_public_access,
      :s3_object_uids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information on the S3 bucket.
    #
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
    # @!attribute [rw] s3_object_details
    #   Information about the S3 object that was scanned.
    #   @return [Array<Types::S3ObjectDetail>]
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
      :public_access,
      :s3_object_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes whether S3 data event logs will be enabled as a data source.
    #
    # @!attribute [rw] enable
    #   The status of S3 data event logs as a data source.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/S3LogsConfiguration AWS API Documentation
    #
    class S3LogsConfiguration < Struct.new(
      :enable)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes whether S3 data event logs will be enabled as a data source.
    #
    # @!attribute [rw] status
    #   A value that describes whether S3 data event logs are automatically
    #   enabled for new members of the organization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/S3LogsConfigurationResult AWS API Documentation
    #
    class S3LogsConfigurationResult < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the Amazon S3 object.
    #
    # @!attribute [rw] etag
    #   The entity tag is a hash of the Amazon S3 object. The ETag reflects
    #   changes only to the contents of an object, and not its metadata.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The key of the Amazon S3 object.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The version Id of the Amazon S3 object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/S3Object AWS API Documentation
    #
    class S3Object < Struct.new(
      :etag,
      :key,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the S3 object that was scanned
    #
    # @!attribute [rw] object_arn
    #   Amazon Resource Name (ARN) of the S3 object.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   Key of the S3 object.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The entity tag is a hash of the S3 object. The ETag reflects changes
    #   only to the contents of an object, and not its metadata.
    #   @return [String]
    #
    # @!attribute [rw] hash
    #   Hash of the threat detected in this finding.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   Version ID of the object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/S3ObjectDetail AWS API Documentation
    #
    class S3ObjectDetail < Struct.new(
      :object_arn,
      :key,
      :etag,
      :hash,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The S3 object path to initiate a scan, including bucket name, object
    # key, and optional version ID.
    #
    # @!attribute [rw] bucket
    #   The name of the S3 bucket containing the object to scan. The bucket
    #   must have GuardDuty Malware Protection enabled.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The key (name) of the S3 object to scan for malware. This must be
    #   the full key path of the object within the bucket.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The version ID of the S3 object to scan. If not specified, the
    #   latest version of the object is scanned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/S3ObjectForSendObjectMalwareScan AWS API Documentation
    #
    class S3ObjectForSendObjectMalwareScan < Struct.new(
      :bucket,
      :key,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about malware scans associated with GuardDuty
    # Malware Protection for EC2.
    #
    # @!attribute [rw] detector_id
    #   The unique ID of the detector that is associated with the request.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #   @return [String]
    #
    # @!attribute [rw] admin_detector_id
    #   The unique detector ID of the administrator account that the request
    #   is associated with. If the account is an administrator, the
    #   `AdminDetectorId` will be the same as the one used for `DetectorId`.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #   @return [String]
    #
    # @!attribute [rw] scan_id
    #   The unique scan ID associated with a scan entry.
    #   @return [String]
    #
    # @!attribute [rw] scan_status
    #   An enum value representing possible scan statuses.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   Represents the reason for `FAILED` scan status.
    #   @return [String]
    #
    # @!attribute [rw] scan_start_time
    #   The timestamp of when the scan was triggered.
    #   @return [Time]
    #
    # @!attribute [rw] scan_end_time
    #   The timestamp of when the scan was finished.
    #   @return [Time]
    #
    # @!attribute [rw] trigger_details
    #   Specifies the reason why the scan was initiated.
    #   @return [Types::TriggerDetails]
    #
    # @!attribute [rw] resource_details
    #   Represents the resources that were scanned in the scan entry.
    #   @return [Types::ResourceDetails]
    #
    # @!attribute [rw] scan_result_details
    #   Represents the result of the scan.
    #   @return [Types::ScanResultDetails]
    #
    # @!attribute [rw] account_id
    #   The ID for the account that belongs to the scan.
    #   @return [String]
    #
    # @!attribute [rw] total_bytes
    #   Represents total bytes that were scanned.
    #   @return [Integer]
    #
    # @!attribute [rw] file_count
    #   Represents the number of files that were scanned.
    #   @return [Integer]
    #
    # @!attribute [rw] attached_volumes
    #   List of volumes that were attached to the original instance to be
    #   scanned.
    #   @return [Array<Types::VolumeDetail>]
    #
    # @!attribute [rw] scan_type
    #   Specifies the scan type that invoked the malware scan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Scan AWS API Documentation
    #
    class Scan < Struct.new(
      :detector_id,
      :admin_detector_id,
      :scan_id,
      :scan_status,
      :failure_reason,
      :scan_start_time,
      :scan_end_time,
      :trigger_details,
      :resource_details,
      :scan_result_details,
      :account_id,
      :total_bytes,
      :file_count,
      :attached_volumes,
      :scan_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the condition.
    #
    # @!attribute [rw] map_equals
    #   Represents an *mapEqual* **** condition to be applied to a single
    #   field when triggering for malware scan.
    #   @return [Array<Types::ScanConditionPair>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ScanCondition AWS API Documentation
    #
    class ScanCondition < Struct.new(
      :map_equals)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the `key:value` pair to be matched against given resource
    # property.
    #
    # @!attribute [rw] key
    #   Represents the **key** in the map condition.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Represents optional **value** in the map condition. If not
    #   specified, only the **key** will be matched.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ScanConditionPair AWS API Documentation
    #
    class ScanConditionPair < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a complete view providing malware scan result details.
    #
    # @!attribute [rw] scanned_item_count
    #   Total number of scanned files.
    #   @return [Types::ScannedItemCount]
    #
    # @!attribute [rw] threats_detected_item_count
    #   Total number of infected files.
    #   @return [Types::ThreatsDetectedItemCount]
    #
    # @!attribute [rw] highest_severity_threat_details
    #   Details of the highest severity threat detected during malware scan
    #   and number of infected files.
    #   @return [Types::HighestSeverityThreatDetails]
    #
    # @!attribute [rw] threat_detected_by_name
    #   Contains details about identified threats organized by threat name.
    #   @return [Types::ThreatDetectedByName]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ScanDetections AWS API Documentation
    #
    class ScanDetections < Struct.new(
      :scanned_item_count,
      :threats_detected_item_count,
      :highest_severity_threat_details,
      :threat_detected_by_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes whether Malware Protection for EC2 instances with findings
    # will be enabled as a data source.
    #
    # @!attribute [rw] ebs_volumes
    #   Describes the configuration for scanning EBS volumes as data source.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ScanEc2InstanceWithFindings AWS API Documentation
    #
    class ScanEc2InstanceWithFindings < Struct.new(
      :ebs_volumes)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information on the status of whether Malware
    # Protection for EC2 instances with findings will be enabled as a data
    # source.
    #
    # @!attribute [rw] ebs_volumes
    #   Describes the configuration of scanning EBS volumes as a data
    #   source.
    #   @return [Types::EbsVolumesResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ScanEc2InstanceWithFindingsResult AWS API Documentation
    #
    class ScanEc2InstanceWithFindingsResult < Struct.new(
      :ebs_volumes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details of infected file including name, file path and hash.
    #
    # @!attribute [rw] file_path
    #   The file path of the infected file.
    #   @return [String]
    #
    # @!attribute [rw] volume_arn
    #   EBS volume ARN details of the infected file.
    #   @return [String]
    #
    # @!attribute [rw] hash
    #   The hash value of the infected file.
    #   @return [String]
    #
    # @!attribute [rw] file_name
    #   File name of the infected file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ScanFilePath AWS API Documentation
    #
    class ScanFilePath < Struct.new(
      :file_path,
      :volume_arn,
      :hash,
      :file_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about criteria used to filter resources before
    # triggering malware scan.
    #
    # @!attribute [rw] include
    #   Represents condition that when matched will allow a malware scan for
    #   a certain resource.
    #   @return [Hash<String,Types::ScanCondition>]
    #
    # @!attribute [rw] exclude
    #   Represents condition that when matched will prevent a malware scan
    #   for a certain resource.
    #   @return [Hash<String,Types::ScanCondition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ScanResourceCriteria AWS API Documentation
    #
    class ScanResourceCriteria < Struct.new(
      :include,
      :exclude)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the result of the scan.
    #
    # @!attribute [rw] scan_result
    #   An enum value representing possible scan results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ScanResultDetails AWS API Documentation
    #
    class ScanResultDetails < Struct.new(
      :scan_result)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains files infected with the given threat providing details of
    # malware name and severity.
    #
    # @!attribute [rw] name
    #   The name of the identified threat.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   Severity of threat identified as part of the malware scan.
    #   @return [String]
    #
    # @!attribute [rw] item_count
    #   Total number of files infected with given threat.
    #   @return [Integer]
    #
    # @!attribute [rw] file_paths
    #   List of infected files in EBS volume with details.
    #   @return [Array<Types::ScanFilePath>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ScanThreatName AWS API Documentation
    #
    class ScanThreatName < Struct.new(
      :name,
      :severity,
      :item_count,
      :file_paths)
      SENSITIVE = []
      include Aws::Structure
    end

    # Total number of scanned files.
    #
    # @!attribute [rw] total_gb
    #   Total GB of files scanned for malware.
    #   @return [Integer]
    #
    # @!attribute [rw] files
    #   Number of files scanned.
    #   @return [Integer]
    #
    # @!attribute [rw] volumes
    #   Total number of scanned volumes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ScannedItemCount AWS API Documentation
    #
    class ScannedItemCount < Struct.new(
      :total_gb,
      :files,
      :volumes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container security context.
    #
    # @!attribute [rw] privileged
    #   Whether the container is privileged.
    #   @return [Boolean]
    #
    # @!attribute [rw] allow_privilege_escalation
    #   Whether or not a container or a Kubernetes pod is allowed to gain
    #   more privileges than its parent process.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/SecurityContext AWS API Documentation
    #
    class SecurityContext < Struct.new(
      :privileged,
      :allow_privilege_escalation)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] s3_object
    #   The S3 object information for the object you want to scan. The
    #   bucket must have a Malware Protection plan configured to use this
    #   API.
    #   @return [Types::S3ObjectForSendObjectMalwareScan]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/SendObjectMalwareScanRequest AWS API Documentation
    #
    class SendObjectMalwareScanRequest < Struct.new(
      :s3_object)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/SendObjectMalwareScanResponse AWS API Documentation
    #
    class SendObjectMalwareScanResponse < Aws::EmptyStructure; end

    # Contains information about the GuardDuty attack sequence finding.
    #
    # @!attribute [rw] uid
    #   Unique identifier of the attack sequence.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the attack sequence.
    #   @return [String]
    #
    # @!attribute [rw] actors
    #   Contains information about the actors involved in the attack
    #   sequence.
    #   @return [Array<Types::Actor>]
    #
    # @!attribute [rw] resources
    #   Contains information about the resources involved in the attack
    #   sequence.
    #   @return [Array<Types::ResourceV2>]
    #
    # @!attribute [rw] endpoints
    #   Contains information about the network endpoints that were used in
    #   the attack sequence.
    #   @return [Array<Types::NetworkEndpoint>]
    #
    # @!attribute [rw] signals
    #   Contains information about the signals involved in the attack
    #   sequence.
    #   @return [Array<Types::Signal>]
    #
    # @!attribute [rw] sequence_indicators
    #   Contains information about the indicators observed in the attack
    #   sequence.
    #   @return [Array<Types::Indicator>]
    #
    # @!attribute [rw] additional_sequence_types
    #   Additional types of sequences that may be associated with the attack
    #   sequence finding, providing further context about the nature of the
    #   detected threat.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Sequence AWS API Documentation
    #
    class Sequence < Struct.new(
      :uid,
      :description,
      :actors,
      :resources,
      :endpoints,
      :signals,
      :sequence_indicators,
      :additional_sequence_types)
      SENSITIVE = []
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
    #   The name of the Amazon Web Services service (GuardDuty) that
    #   generated a finding.
    #   @return [String]
    #
    # @!attribute [rw] user_feedback
    #   Feedback that was submitted about the finding.
    #   @return [String]
    #
    # @!attribute [rw] additional_info
    #   Contains additional information about the generated finding.
    #   @return [Types::ServiceAdditionalInfo]
    #
    # @!attribute [rw] feature_name
    #   The name of the feature that generated a finding.
    #   @return [String]
    #
    # @!attribute [rw] ebs_volume_scan_details
    #   Returns details from the malware scan that created a finding.
    #   @return [Types::EbsVolumeScanDetails]
    #
    # @!attribute [rw] runtime_details
    #   Information about the process and any required context values for a
    #   specific finding
    #   @return [Types::RuntimeDetails]
    #
    # @!attribute [rw] detection
    #   Contains information about the detected unusual behavior.
    #   @return [Types::Detection]
    #
    # @!attribute [rw] malware_scan_details
    #   Returns details from the malware scan that generated a GuardDuty
    #   finding.
    #   @return [Types::MalwareScanDetails]
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
      :user_feedback,
      :additional_info,
      :feature_name,
      :ebs_volume_scan_details,
      :runtime_details,
      :detection,
      :malware_scan_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional information about the generated finding.
    #
    # @!attribute [rw] value
    #   This field specifies the value of the additional information.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Describes the type of the additional information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ServiceAdditionalInfo AWS API Documentation
    #
    class ServiceAdditionalInfo < Struct.new(
      :value,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the authenticated session.
    #
    # @!attribute [rw] uid
    #   The unique identifier of the session.
    #   @return [String]
    #
    # @!attribute [rw] mfa_status
    #   Indicates whether or not multi-factor authencation (MFA) was used
    #   during authentication.
    #
    #   In Amazon Web Services CloudTrail, you can find this value as
    #   `userIdentity.sessionContext.attributes.mfaAuthenticated`.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The timestamp for when the session was created.
    #
    #   In Amazon Web Services CloudTrail, you can find this value as
    #   `userIdentity.sessionContext.attributes.creationDate`.
    #   @return [Time]
    #
    # @!attribute [rw] issuer
    #   Identifier of the session issuer.
    #
    #   In Amazon Web Services CloudTrail, you can find this value as
    #   `userIdentity.sessionContext.sessionIssuer.arn`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Session AWS API Documentation
    #
    class Session < Struct.new(
      :uid,
      :mfa_status,
      :created_time,
      :issuer)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about severity level for each finding type.
    #
    # @!attribute [rw] last_generated_at
    #   The timestamp at which a finding type for a specific severity was
    #   last generated.
    #   @return [Time]
    #
    # @!attribute [rw] severity
    #   The severity level associated with each finding type.
    #   @return [Float]
    #
    # @!attribute [rw] total_findings
    #   The total number of findings associated with this severity.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/SeverityStatistics AWS API Documentation
    #
    class SeverityStatistics < Struct.new(
      :last_generated_at,
      :severity,
      :total_findings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the signals involved in the attack
    # sequence.
    #
    # @!attribute [rw] uid
    #   The unique identifier of the signal.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the signal used to identify an attack sequence.
    #
    #   Signals can be GuardDuty findings or activities observed in data
    #   sources that GuardDuty monitors. For more information, see
    #   [Foundational data sources][1] in the *Amazon GuardDuty User Guide*.
    #
    #   A signal type can be one of the valid values listed in this API.
    #   Here are the related descriptions:
    #
    #   * `FINDING` - Individually generated GuardDuty finding.
    #
    #   * `CLOUD_TRAIL` - Activity observed from CloudTrail logs
    #
    #   * `S3_DATA_EVENTS` - Activity observed from CloudTrail data events
    #     for S3. Activities associated with this type will show up only
    #     when you have enabled GuardDuty S3 Protection feature in your
    #     account. For more information about S3 Protection and steps to
    #     enable it, see [S3 Protection][2] in the *Amazon GuardDuty User
    #     Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_data-sources.html
    #   [2]: https://docs.aws.amazon.com/guardduty/latest/ug/s3-protection.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the signal.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the signal. For example, when signal type is `FINDING`,
    #   the signal name is the name of the finding.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the first finding or activity related to this
    #   signal was observed.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when this signal was last observed.
    #   @return [Time]
    #
    # @!attribute [rw] first_seen_at
    #   The timestamp when the first finding or activity related to this
    #   signal was observed.
    #   @return [Time]
    #
    # @!attribute [rw] last_seen_at
    #   The timestamp when the last finding or activity related to this
    #   signal was observed.
    #   @return [Time]
    #
    # @!attribute [rw] severity
    #   The severity associated with the signal. For more information about
    #   severity, see [Findings severity levels][1] in the *Amazon GuardDuty
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_findings-severity.html
    #   @return [Float]
    #
    # @!attribute [rw] count
    #   The number of times this signal was observed.
    #   @return [Integer]
    #
    # @!attribute [rw] resource_uids
    #   Information about the unique identifiers of the resources involved
    #   in the signal.
    #   @return [Array<String>]
    #
    # @!attribute [rw] actor_ids
    #   Information about the IDs of the threat actors involved in the
    #   signal.
    #   @return [Array<String>]
    #
    # @!attribute [rw] endpoint_ids
    #   Information about the endpoint IDs associated with this signal.
    #   @return [Array<String>]
    #
    # @!attribute [rw] signal_indicators
    #   Contains information about the indicators associated with the
    #   signals.
    #   @return [Array<Types::Indicator>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Signal AWS API Documentation
    #
    class Signal < Struct.new(
      :uid,
      :type,
      :description,
      :name,
      :created_at,
      :updated_at,
      :first_seen_at,
      :last_seen_at,
      :severity,
      :count,
      :resource_uids,
      :actor_ids,
      :endpoint_ids,
      :signal_indicators)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the criteria used for sorting findings.
    #
    # @!attribute [rw] attribute_name
    #   Represents the finding attribute, such as `accountId`, that sorts
    #   the findings.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) of the resource for which you invoked the
    #   API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/StartMalwareScanRequest AWS API Documentation
    #
    class StartMalwareScanRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scan_id
    #   A unique identifier that gets generated when you invoke the API
    #   without any error. Each malware scan has a corresponding scan ID.
    #   Using this scan ID, you can monitor the status of your malware scan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/StartMalwareScanResponse AWS API Documentation
    #
    class StartMalwareScanResponse < Struct.new(
      :scan_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector of the GuardDuty administrator account
    #   associated with the member accounts to monitor.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector associated with the GuardDuty
    #   administrator account that is monitoring member accounts.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a tag key-value pair.
    #
    # @!attribute [rw] key
    #   Describes the key associated with the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Describes the value associated with the tag key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Information about the detected threats associated with the generated
    # finding.
    #
    # @!attribute [rw] name
    #   Name of the detected threat that caused GuardDuty to generate this
    #   finding.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   Source of the threat that generated this finding.
    #   @return [String]
    #
    # @!attribute [rw] item_paths
    #   Information about the nested item path and hash of the protected
    #   resource.
    #   @return [Array<Types::ItemPath>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Threat AWS API Documentation
    #
    class Threat < Struct.new(
      :name,
      :source,
      :item_paths)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about identified threats organized by threat name.
    #
    # @!attribute [rw] item_count
    #   Total number of infected files identified.
    #   @return [Integer]
    #
    # @!attribute [rw] unique_threat_name_count
    #   Total number of unique threats by name identified, as part of the
    #   malware scan.
    #   @return [Integer]
    #
    # @!attribute [rw] shortened
    #   Flag to determine if the finding contains every single infected
    #   file-path and/or every threat.
    #   @return [Boolean]
    #
    # @!attribute [rw] threat_names
    #   List of identified threats with details, organized by threat name.
    #   @return [Array<Types::ScanThreatName>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ThreatDetectedByName AWS API Documentation
    #
    class ThreatDetectedByName < Struct.new(
      :item_count,
      :unique_threat_name_count,
      :shortened,
      :threat_names)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @!attribute [rw] threat_file_sha_256
    #   SHA256 of the file that generated the finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ThreatIntelligenceDetail AWS API Documentation
    #
    class ThreatIntelligenceDetail < Struct.new(
      :threat_list_name,
      :threat_names,
      :threat_file_sha_256)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains total number of infected files.
    #
    # @!attribute [rw] files
    #   Total number of infected files.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ThreatsDetectedItemCount AWS API Documentation
    #
    class ThreatsDetectedItemCount < Struct.new(
      :files)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the total usage with the corresponding currency unit for that
    # value.
    #
    # @!attribute [rw] amount
    #   The total usage.
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The currency unit that the amount is given in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Total AWS API Documentation
    #
    class Total < Struct.new(
      :amount,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the reason the scan was triggered.
    #
    # @!attribute [rw] guard_duty_finding_id
    #   The ID of the GuardDuty finding that triggered the malware scan.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the scan trigger.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/TriggerDetails AWS API Documentation
    #
    class TriggerDetails < Struct.new(
      :guard_duty_finding_id,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The ID of the detector associated with the findings to unarchive.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UnarchiveFindingsResponse AWS API Documentation
    #
    class UnarchiveFindingsResponse < Aws::EmptyStructure; end

    # Contains information about the accounts that weren't processed.
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the names of the data sources that couldn't be enabled.
    #
    # @!attribute [rw] malware_protection
    #   An object that contains information on the status of all Malware
    #   Protection data sources.
    #   @return [Types::MalwareProtectionConfigurationResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UnprocessedDataSourcesResult AWS API Documentation
    #
    class UnprocessedDataSourcesResult < Struct.new(
      :malware_protection)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector to update.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
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
    # @!attribute [rw] data_sources
    #   Describes which data sources will be updated.
    #
    #   There might be regional differences because some data sources might
    #   not be available in all the Amazon Web Services Regions where
    #   GuardDuty is presently supported. For more information, see [Regions
    #   and endpoints][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html
    #   @return [Types::DataSourceConfigurations]
    #
    # @!attribute [rw] features
    #   Provides the features that will be updated for the detector.
    #   @return [Array<Types::DetectorFeatureConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateDetectorRequest AWS API Documentation
    #
    class UpdateDetectorRequest < Struct.new(
      :detector_id,
      :enable,
      :finding_publishing_frequency,
      :data_sources,
      :features)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateDetectorResponse AWS API Documentation
    #
    class UpdateDetectorResponse < Aws::EmptyStructure; end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector that specifies the GuardDuty service
    #   where you want to update a filter.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #   @return [String]
    #
    # @!attribute [rw] filter_name
    #   The name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the filter. Valid characters include alphanumeric
    #   characters, and special characters such as hyphen, period, colon,
    #   underscore, parentheses (`{ }`, `[ ]`, and `( )`), forward slash,
    #   horizontal tab, vertical tab, newline, form feed, return, and
    #   whitespace.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The ID of the detector that is associated with the findings for
    #   which you want to update the feedback.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
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
      SENSITIVE = [:comments]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateFindingsFeedbackResponse AWS API Documentation
    #
    class UpdateFindingsFeedbackResponse < Aws::EmptyStructure; end

    # @!attribute [rw] detector_id
    #   The detectorID that specifies the GuardDuty service whose IPSet you
    #   want to update.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
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
    #   The updated URI of the file that contains the IPSet.
    #   @return [String]
    #
    # @!attribute [rw] activate
    #   The updated Boolean value that specifies whether the IPSet is active
    #   or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] expected_bucket_owner
    #   The Amazon Web Services account ID that owns the Amazon S3 bucket
    #   specified in the **location** parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateIPSetRequest AWS API Documentation
    #
    class UpdateIPSetRequest < Struct.new(
      :detector_id,
      :ip_set_id,
      :name,
      :location,
      :activate,
      :expected_bucket_owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateIPSetResponse AWS API Documentation
    #
    class UpdateIPSetResponse < Aws::EmptyStructure; end

    # @!attribute [rw] malware_protection_plan_id
    #   A unique identifier associated with the Malware Protection plan.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   Amazon Resource Name (ARN) of the IAM role with permissions to scan
    #   and add tags to the associated protected resource.
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   Information about whether the tags will be added to the S3 object
    #   after scanning.
    #   @return [Types::MalwareProtectionPlanActions]
    #
    # @!attribute [rw] protected_resource
    #   Information about the protected resource that is associated with the
    #   created Malware Protection plan. Presently, `S3Bucket` is the only
    #   supported protected resource.
    #   @return [Types::UpdateProtectedResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateMalwareProtectionPlanRequest AWS API Documentation
    #
    class UpdateMalwareProtectionPlanRequest < Struct.new(
      :malware_protection_plan_id,
      :role,
      :actions,
      :protected_resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The unique ID of the detector that specifies the GuardDuty service
    #   where you want to update scan settings.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #   @return [String]
    #
    # @!attribute [rw] scan_resource_criteria
    #   Represents the criteria to be used in the filter for selecting
    #   resources to scan.
    #   @return [Types::ScanResourceCriteria]
    #
    # @!attribute [rw] ebs_snapshot_preservation
    #   An enum value representing possible snapshot preservation settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateMalwareScanSettingsRequest AWS API Documentation
    #
    class UpdateMalwareScanSettingsRequest < Struct.new(
      :detector_id,
      :scan_resource_criteria,
      :ebs_snapshot_preservation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateMalwareScanSettingsResponse AWS API Documentation
    #
    class UpdateMalwareScanSettingsResponse < Aws::EmptyStructure; end

    # @!attribute [rw] detector_id
    #   The detector ID of the administrator account.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #   @return [String]
    #
    # @!attribute [rw] account_ids
    #   A list of member account IDs to be updated.
    #   @return [Array<String>]
    #
    # @!attribute [rw] data_sources
    #   Describes which data sources will be updated.
    #   @return [Types::DataSourceConfigurations]
    #
    # @!attribute [rw] features
    #   A list of features that will be updated for the specified member
    #   accounts.
    #   @return [Array<Types::MemberFeaturesConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateMemberDetectorsRequest AWS API Documentation
    #
    class UpdateMemberDetectorsRequest < Struct.new(
      :detector_id,
      :account_ids,
      :data_sources,
      :features)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] unprocessed_accounts
    #   A list of member account IDs that were unable to be processed along
    #   with an explanation for why they were not processed.
    #   @return [Array<Types::UnprocessedAccount>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateMemberDetectorsResponse AWS API Documentation
    #
    class UpdateMemberDetectorsResponse < Struct.new(
      :unprocessed_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The ID of the detector that configures the delegated administrator.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #   @return [String]
    #
    # @!attribute [rw] auto_enable
    #   Represents whether to automatically enable member accounts in the
    #   organization. This applies to only new member accounts, not the
    #   existing member accounts. When a new account joins the organization,
    #   the chosen features will be enabled for them by default.
    #
    #   Even though this is still supported, we recommend using
    #   `AutoEnableOrganizationMembers` to achieve the similar results. You
    #   must provide a value for either `autoEnableOrganizationMembers` or
    #   `autoEnable`.
    #   @return [Boolean]
    #
    # @!attribute [rw] data_sources
    #   Describes which data sources will be updated.
    #   @return [Types::OrganizationDataSourceConfigurations]
    #
    # @!attribute [rw] features
    #   A list of features that will be configured for the organization.
    #   @return [Array<Types::OrganizationFeatureConfiguration>]
    #
    # @!attribute [rw] auto_enable_organization_members
    #   Indicates the auto-enablement configuration of GuardDuty for the
    #   member accounts in the organization. You must provide a value for
    #   either `autoEnableOrganizationMembers` or `autoEnable`.
    #
    #   Use one of the following configuration values for
    #   `autoEnableOrganizationMembers`:
    #
    #   * `NEW`: Indicates that when a new account joins the organization,
    #     they will have GuardDuty enabled automatically.
    #
    #   * `ALL`: Indicates that all accounts in the organization have
    #     GuardDuty enabled automatically. This includes `NEW` accounts that
    #     join the organization and accounts that may have been suspended or
    #     removed from the organization in GuardDuty.
    #
    #     It may take up to 24 hours to update the configuration for all the
    #     member accounts.
    #
    #   * `NONE`: Indicates that GuardDuty will not be automatically enabled
    #     for any account in the organization. The administrator must manage
    #     GuardDuty for each account in the organization individually.
    #
    #     When you update the auto-enable setting from `ALL` or `NEW` to
    #     `NONE`, this action doesn't disable the corresponding option for
    #     your existing accounts. This configuration will apply to the new
    #     accounts that join the organization. After you update the
    #     auto-enable settings, no new account will have the corresponding
    #     option as enabled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateOrganizationConfigurationRequest AWS API Documentation
    #
    class UpdateOrganizationConfigurationRequest < Struct.new(
      :detector_id,
      :auto_enable,
      :data_sources,
      :features,
      :auto_enable_organization_members)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateOrganizationConfigurationResponse AWS API Documentation
    #
    class UpdateOrganizationConfigurationResponse < Aws::EmptyStructure; end

    # Information about the protected resource that is associated with the
    # created Malware Protection plan. Presently, `S3Bucket` is the only
    # supported protected resource.
    #
    # @!attribute [rw] s3_bucket
    #   Information about the protected S3 bucket resource.
    #   @return [Types::UpdateS3BucketResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateProtectedResource AWS API Documentation
    #
    class UpdateProtectedResource < Struct.new(
      :s3_bucket)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The ID of the detector associated with the publishing destinations
    #   to update.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdatePublishingDestinationResponse AWS API Documentation
    #
    class UpdatePublishingDestinationResponse < Aws::EmptyStructure; end

    # Information about the protected S3 bucket resource.
    #
    # @!attribute [rw] object_prefixes
    #   Information about the specified object prefixes. The S3 object will
    #   be scanned only if it belongs to any of the specified object
    #   prefixes.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateS3BucketResource AWS API Documentation
    #
    class UpdateS3BucketResource < Struct.new(
      :object_prefixes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The unique ID of the GuardDuty detector associated with the threat
    #   entity set that you want to update.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #   @return [String]
    #
    # @!attribute [rw] threat_entity_set_id
    #   The ID returned by GuardDuty after updating the threat entity set
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A user-friendly name to identify the trusted entity set.
    #
    #   The name of your list can include lowercase letters, uppercase
    #   letters, numbers, dash (-), and underscore (\_).
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The URI of the file that contains the trusted entity set.
    #   @return [String]
    #
    # @!attribute [rw] expected_bucket_owner
    #   The Amazon Web Services account ID that owns the Amazon S3 bucket
    #   specified in the **location** parameter.
    #   @return [String]
    #
    # @!attribute [rw] activate
    #   A boolean value that indicates whether GuardDuty is to start using
    #   this updated threat entity set. After you update an entity set, you
    #   will need to activate it again. It might take up to 15 minutes for
    #   the updated entity set to be effective.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateThreatEntitySetRequest AWS API Documentation
    #
    class UpdateThreatEntitySetRequest < Struct.new(
      :detector_id,
      :threat_entity_set_id,
      :name,
      :location,
      :expected_bucket_owner,
      :activate)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateThreatEntitySetResponse AWS API Documentation
    #
    class UpdateThreatEntitySetResponse < Aws::EmptyStructure; end

    # @!attribute [rw] detector_id
    #   The detectorID that specifies the GuardDuty service whose
    #   ThreatIntelSet you want to update.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
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
    #   The updated URI of the file that contains the ThreateIntelSet.
    #   @return [String]
    #
    # @!attribute [rw] activate
    #   The updated Boolean value that specifies whether the ThreateIntelSet
    #   is active or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] expected_bucket_owner
    #   The Amazon Web Services account ID that owns the Amazon S3 bucket
    #   specified in the **location** parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateThreatIntelSetRequest AWS API Documentation
    #
    class UpdateThreatIntelSetRequest < Struct.new(
      :detector_id,
      :threat_intel_set_id,
      :name,
      :location,
      :activate,
      :expected_bucket_owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateThreatIntelSetResponse AWS API Documentation
    #
    class UpdateThreatIntelSetResponse < Aws::EmptyStructure; end

    # @!attribute [rw] detector_id
    #   The unique ID of the GuardDuty detector associated with the threat
    #   entity set that you want to update.
    #
    #   To find the `detectorId` in the current Region, see the Settings
    #   page in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #   @return [String]
    #
    # @!attribute [rw] trusted_entity_set_id
    #   The ID returned by GuardDuty after updating the trusted entity set
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A user-friendly name to identify the trusted entity set.
    #
    #   The name of your list can include lowercase letters, uppercase
    #   letters, numbers, dash (-), and underscore (\_).
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The URI of the file that contains the trusted entity set.
    #   @return [String]
    #
    # @!attribute [rw] expected_bucket_owner
    #   The Amazon Web Services account ID that owns the Amazon S3 bucket
    #   specified in the **location** parameter.
    #   @return [String]
    #
    # @!attribute [rw] activate
    #   A boolean value that indicates whether GuardDuty is to start using
    #   this updated trusted entity set. After you update an entity set, you
    #   will need to activate it again. It might take up to 15 minutes for
    #   the updated entity set to be effective.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateTrustedEntitySetRequest AWS API Documentation
    #
    class UpdateTrustedEntitySetRequest < Struct.new(
      :detector_id,
      :trusted_entity_set_id,
      :name,
      :location,
      :expected_bucket_owner,
      :activate)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateTrustedEntitySetResponse AWS API Documentation
    #
    class UpdateTrustedEntitySetResponse < Aws::EmptyStructure; end

    # Contains information on the total of usage based on account IDs.
    #
    # @!attribute [rw] account_id
    #   The Account ID that generated usage.
    #   @return [String]
    #
    # @!attribute [rw] total
    #   Represents the total of usage for the Account ID.
    #   @return [Types::Total]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UsageAccountResult AWS API Documentation
    #
    class UsageAccountResult < Struct.new(
      :account_id,
      :total)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the criteria used to query usage
    # statistics.
    #
    # @!attribute [rw] account_ids
    #   The account IDs to aggregate usage statistics from.
    #   @return [Array<String>]
    #
    # @!attribute [rw] data_sources
    #   The data sources to aggregate usage statistics from.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resources
    #   The resources to aggregate usage statistics from. Only accepts exact
    #   resource names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] features
    #   The features to aggregate usage statistics from.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UsageCriteria AWS API Documentation
    #
    class UsageCriteria < Struct.new(
      :account_ids,
      :data_sources,
      :resources,
      :features)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information on the result of usage based on data source type.
    #
    # @!attribute [rw] data_source
    #   The data source type that generated usage.
    #   @return [String]
    #
    # @!attribute [rw] total
    #   Represents the total of usage for the specified data source.
    #   @return [Types::Total]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UsageDataSourceResult AWS API Documentation
    #
    class UsageDataSourceResult < Struct.new(
      :data_source,
      :total)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the result of the total usage based on the
    # feature.
    #
    # @!attribute [rw] feature
    #   The feature that generated the usage cost.
    #   @return [String]
    #
    # @!attribute [rw] total
    #   Contains the total usage with the corresponding currency unit for
    #   that value.
    #   @return [Types::Total]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UsageFeatureResult AWS API Documentation
    #
    class UsageFeatureResult < Struct.new(
      :feature,
      :total)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information on the sum of usage based on an Amazon Web
    # Services resource.
    #
    # @!attribute [rw] resource
    #   The Amazon Web Services resource that generated usage.
    #   @return [String]
    #
    # @!attribute [rw] total
    #   Represents the sum total of usage for the specified resource type.
    #   @return [Types::Total]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UsageResourceResult AWS API Documentation
    #
    class UsageResourceResult < Struct.new(
      :resource,
      :total)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the result of GuardDuty usage. If a UsageStatisticType is
    # provided the result for other types will be null.
    #
    # @!attribute [rw] sum_by_account
    #   The usage statistic sum organized by account ID.
    #   @return [Array<Types::UsageAccountResult>]
    #
    # @!attribute [rw] top_accounts_by_feature
    #   Lists the top 50 accounts by feature that have generated the most
    #   GuardDuty usage, in the order from most to least expensive.
    #
    #   Currently, this doesn't support `RDS_LOGIN_EVENTS`.
    #   @return [Array<Types::UsageTopAccountsResult>]
    #
    # @!attribute [rw] sum_by_data_source
    #   The usage statistic sum organized by on data source.
    #   @return [Array<Types::UsageDataSourceResult>]
    #
    # @!attribute [rw] sum_by_resource
    #   The usage statistic sum organized by resource.
    #   @return [Array<Types::UsageResourceResult>]
    #
    # @!attribute [rw] top_resources
    #   Lists the top 50 resources that have generated the most GuardDuty
    #   usage, in order from most to least expensive.
    #   @return [Array<Types::UsageResourceResult>]
    #
    # @!attribute [rw] sum_by_feature
    #   The usage statistic sum organized by feature.
    #   @return [Array<Types::UsageFeatureResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UsageStatistics AWS API Documentation
    #
    class UsageStatistics < Struct.new(
      :sum_by_account,
      :top_accounts_by_feature,
      :sum_by_data_source,
      :sum_by_resource,
      :top_resources,
      :sum_by_feature)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information on the total of usage based on the topmost 50
    # account IDs.
    #
    # @!attribute [rw] account_id
    #   The unique account ID.
    #   @return [String]
    #
    # @!attribute [rw] total
    #   Contains the total usage with the corresponding currency unit for
    #   that value.
    #   @return [Types::Total]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UsageTopAccountResult AWS API Documentation
    #
    class UsageTopAccountResult < Struct.new(
      :account_id,
      :total)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the usage statistics, calculated by top accounts by
    # feature.
    #
    # @!attribute [rw] feature
    #   Features by which you can generate the usage statistics.
    #
    #   `RDS_LOGIN_EVENTS` is currently not supported with
    #   `topAccountsByFeature`.
    #   @return [String]
    #
    # @!attribute [rw] accounts
    #   The accounts that contributed to the total usage cost.
    #   @return [Array<Types::UsageTopAccountResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UsageTopAccountsResult AWS API Documentation
    #
    class UsageTopAccountsResult < Struct.new(
      :feature,
      :accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the user involved in the attack sequence.
    #
    # @!attribute [rw] name
    #   The name of the user.
    #   @return [String]
    #
    # @!attribute [rw] uid
    #   The unique identifier of the user.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the user.
    #   @return [String]
    #
    # @!attribute [rw] credential_uid
    #   The credentials of the user ID.
    #   @return [String]
    #
    # @!attribute [rw] account
    #   Contains information about the Amazon Web Services account.
    #   @return [Types::Account]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/User AWS API Documentation
    #
    class User < Struct.new(
      :name,
      :uid,
      :type,
      :credential_uid,
      :account)
      SENSITIVE = []
      include Aws::Structure
    end

    # Volume used by the Kubernetes workload.
    #
    # @!attribute [rw] name
    #   Volume name.
    #   @return [String]
    #
    # @!attribute [rw] host_path
    #   Represents a pre-existing file or directory on the host machine that
    #   the volume maps to.
    #   @return [Types::HostPath]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/Volume AWS API Documentation
    #
    class Volume < Struct.new(
      :name,
      :host_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains EBS volume details.
    #
    # @!attribute [rw] volume_arn
    #   EBS volume ARN information.
    #   @return [String]
    #
    # @!attribute [rw] volume_type
    #   The EBS volume type.
    #   @return [String]
    #
    # @!attribute [rw] device_name
    #   The device name for the EBS volume.
    #   @return [String]
    #
    # @!attribute [rw] volume_size_in_gb
    #   EBS volume size in GB.
    #   @return [Integer]
    #
    # @!attribute [rw] encryption_type
    #   EBS volume encryption type.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_arn
    #   Snapshot ARN of the EBS volume.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   KMS key ARN used to encrypt the EBS volume.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/VolumeDetail AWS API Documentation
    #
    class VolumeDetail < Struct.new(
      :volume_arn,
      :volume_type,
      :device_name,
      :volume_size_in_gb,
      :encryption_type,
      :snapshot_arn,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container volume mount.
    #
    # @!attribute [rw] name
    #   Volume mount name.
    #   @return [String]
    #
    # @!attribute [rw] mount_path
    #   Volume mount path.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/VolumeMount AWS API Documentation
    #
    class VolumeMount < Struct.new(
      :name,
      :mount_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Virtual Private Cloud configuration details associated with
    # your Lambda function.
    #
    # @!attribute [rw] subnet_ids
    #   The identifiers of the subnets that are associated with your Lambda
    #   function.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_id
    #   The identifier of the Amazon Virtual Private Cloud.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   The identifier of the security group attached to the Lambda
    #   function.
    #   @return [Array<Types::SecurityGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/VpcConfig AWS API Documentation
    #
    class VpcConfig < Struct.new(
      :subnet_ids,
      :vpc_id,
      :security_groups)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

