# frozen_string_literal: true

# This is generated code!

module Aws::GuardDuty
  # This module contains the types returned by client operations.
  module Types

    # @!attribute detector_id
    #   <p>The unique ID of the detector of the GuardDuty member account.</p>
    #   @return [String]
    # @!attribute administrator_id
    #   <p>The account ID of the GuardDuty administrator account whose invitation you're
    #         accepting.</p>
    #   @return [String]
    # @!attribute invitation_id
    #   <p>The value that is used to validate the administrator account to the member
    #         account.</p>
    #   @return [String]
    class AcceptAdministratorInvitationRequest < Struct.new(
      :detector_id,
      :administrator_id,
      :invitation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class AcceptAdministratorInvitationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @deprecated
    #   This input is deprecated, use AcceptAdministratorInvitationRequest instead
    # @!attribute detector_id
    #   <p>The unique ID of the detector of the GuardDuty member account.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute master_id
    #   <p>The account ID of the GuardDuty administrator account whose invitation you're
    #         accepting.</p>
    #   @return [String]
    # @!attribute invitation_id
    #   <p>The value that is used to validate the administrator account to the member
    #         account.</p>
    #   @return [String]
    class AcceptInvitationRequest < Struct.new(
      :detector_id,
      :master_id,
      :invitation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @deprecated
    #   This output is deprecated, use AcceptAdministratorInvitationResponse instead
    class AcceptInvitationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information on the current access control policies for the bucket.</p>
    # @!attribute allows_public_read_access
    #   <p>A value that indicates whether public read access for the bucket is enabled through an
    #         Access Control List (ACL).</p>
    #   @return [Boolean]
    # @!attribute allows_public_write_access
    #   <p>A value that indicates whether public write access for the bucket is enabled through an
    #         Access Control List (ACL).</p>
    #   @return [Boolean]
    class AccessControlList < Struct.new(
      :allows_public_read_access,
      :allows_public_write_access,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An access denied exception object.</p>
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The error type.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the access keys.</p>
    # @!attribute principal_id
    #   <p>Principal ID of the user.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>Name of the user.</p>
    #   @return [String]
    # @!attribute user_type
    #   <p>Type of the user.</p>
    #   @return [String]
    class AccessKey < Struct.new(
      :principal_id,
      :user_name,
      :user_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the access keys.</p>
    # @!attribute access_key_id
    #   <p>The access key ID of the user.</p>
    #   @return [String]
    # @!attribute principal_id
    #   <p>The principal ID of the user.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The name of the user.</p>
    #   @return [String]
    # @!attribute user_type
    #   <p>The type of the user.</p>
    #   @return [String]
    class AccessKeyDetails < Struct.new(
      :access_key_id,
      :principal_id,
      :user_name,
      :user_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the account.</p>
    # @!attribute uid
    #   <p>ID of the member's Amazon Web Services account</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the member's Amazon Web Services account.</p>
    #   @return [String]
    class Account < Struct.new(
      :uid,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the account.</p>
    # @!attribute account_id
    #   <p>The member account ID.</p>
    #   @return [String]
    # @!attribute email
    #   <p>The email address of the member account.</p>
    #            <p>The rules for a valid email address:</p>
    #            <ul>
    #               <li>
    #                  <p>The email address must be a minimum of 6 and a maximum of 64 characters long.</p>
    #               </li>
    #               <li>
    #                  <p>All characters must be 7-bit ASCII characters.</p>
    #               </li>
    #               <li>
    #                  <p>There must be one and only one @ symbol, which separates the local name from the domain name.</p>
    #               </li>
    #               <li>
    #                  <p>The local name can't contain any of the following characters:</p>
    #                  <p>whitespace, " ' ( ) < > [ ] : ' , \ | % &</p>
    #               </li>
    #               <li>
    #                  <p>The local name can't begin with a dot (.).</p>
    #               </li>
    #               <li>
    #                  <p>The domain name can consist of only the characters [a-z], [A-Z], [0-9], hyphen (-), or dot (.).</p>
    #               </li>
    #               <li>
    #                  <p>The domain name can't begin or end with a dot (.) or hyphen (-).</p>
    #               </li>
    #               <li>
    #                  <p>The domain name must contain at least one dot. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class AccountDetail < Struct.new(
      :account_id,
      :email,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides details of the GuardDuty member account that uses a free trial service.</p>
    # @!attribute account_id
    #   <p>The account identifier of the GuardDuty member account.</p>
    #   @return [String]
    # @!attribute data_sources
    #   <p>Describes the data source enabled for the GuardDuty member account.</p>
    #   @deprecated
    #     This parameter is deprecated, use Features instead
    #   @return [Types::DataSourcesFreeTrial]
    # @!attribute features
    #   <p>A list of features enabled for the GuardDuty account.</p>
    #   @return [Array<Types::FreeTrialFeatureConfigurationResult>]
    class AccountFreeTrialInfo < Struct.new(
      :account_id,
      :data_sources,
      :features,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the account level permissions on the S3 bucket.</p>
    # @!attribute block_public_access
    #   <p>Describes the S3 Block Public Access settings of the bucket's parent account.</p>
    #   @return [Types::BlockPublicAccess]
    class AccountLevelPermissions < Struct.new(
      :block_public_access,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a list of map of accounts with the number of findings associated with each account.</p>
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute last_generated_at
    #   <p>The timestamp at which the finding for this account was last generated.</p>
    #   @return [Time]
    # @!attribute total_findings
    #   <p>The total number of findings associated with an account.</p>
    #   @return [Integer]
    class AccountStatistics < Struct.new(
      :account_id,
      :last_generated_at,
      :total_findings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about actions.</p>
    # @!attribute action_type
    #   <p>The GuardDuty finding activity type.</p>
    #   @return [String]
    # @!attribute aws_api_call_action
    #   <p>Information about the AWS_API_CALL action described in this finding.</p>
    #   @return [Types::AwsApiCallAction]
    # @!attribute dns_request_action
    #   <p>Information about the DNS_REQUEST action described in this finding.</p>
    #   @return [Types::DnsRequestAction]
    # @!attribute network_connection_action
    #   <p>Information about the NETWORK_CONNECTION action described in this finding.</p>
    #   @return [Types::NetworkConnectionAction]
    # @!attribute port_probe_action
    #   <p>Information about the PORT_PROBE action described in this finding.</p>
    #   @return [Types::PortProbeAction]
    # @!attribute kubernetes_api_call_action
    #   <p>Information about the Kubernetes API call action described in this finding.</p>
    #   @return [Types::KubernetesApiCallAction]
    # @!attribute rds_login_attempt_action
    #   <p>Information about <code>RDS_LOGIN_ATTEMPT</code> action described in this finding.</p>
    #   @return [Types::RdsLoginAttemptAction]
    # @!attribute kubernetes_permission_checked_details
    #   <p>Information whether the user has the permission to use a specific Kubernetes API.</p>
    #   @return [Types::KubernetesPermissionCheckedDetails]
    # @!attribute kubernetes_role_binding_details
    #   <p>Information about the role binding that grants the permission defined in a Kubernetes role.</p>
    #   @return [Types::KubernetesRoleBindingDetails]
    # @!attribute kubernetes_role_details
    #   <p>Information about the Kubernetes role name and role type.</p>
    #   @return [Types::KubernetesRoleDetails]
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
      :kubernetes_role_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the actors involved in an attack sequence.</p>
    # @!attribute id
    #   <p>ID of the threat actor.</p>
    #   @return [String]
    # @!attribute user
    #   <p>Contains information about the user credentials used by the threat actor.</p>
    #   @return [Types::User]
    # @!attribute session
    #   <p>Contains information about the user session where the activity initiated.</p>
    #   @return [Types::Session]
    # @!attribute process
    #   <p>Contains information about the process associated with the threat actor.
    #         This includes details such as process name, path, execution time, and
    #         unique identifiers that help track the actor's activities within the system.</p>
    #   @return [Types::ActorProcess]
    class Actor < Struct.new(
      :id,
      :user,
      :session,
      :process,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a process involved in a GuardDuty finding, including process identification,
    #       execution details, and file information.</p>
    # @!attribute name
    #   <p>The name of the process as it appears in the system.</p>
    #   @return [String]
    # @!attribute path
    #   <p>The full file path to the process executable on the system.</p>
    #   @return [String]
    # @!attribute sha256
    #   <p>The SHA256 hash of the process executable file, which can be used for identification
    #         and verification purposes.</p>
    #   @return [String]
    class ActorProcess < Struct.new(
      :name,
      :path,
      :sha256,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the installed EKS add-on (GuardDuty security agent).</p>
    # @!attribute addon_version
    #   <p>Version of the installed EKS add-on.</p>
    #   @return [String]
    # @!attribute addon_status
    #   <p>Status of the installed EKS add-on.</p>
    #   @return [String]
    class AddonDetails < Struct.new(
      :addon_version,
      :addon_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The account within the organization specified as the GuardDuty delegated
    #       administrator.</p>
    # @!attribute admin_account_id
    #   <p>The Amazon Web Services account ID for the account.</p>
    #   @return [String]
    # @!attribute admin_status
    #   <p>Indicates whether the account is enabled as the delegated administrator.</p>
    #   @return [String]
    class AdminAccount < Struct.new(
      :admin_account_id,
      :admin_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the administrator account and invitation.</p>
    # @!attribute account_id
    #   <p>The ID of the account used as the administrator account.</p>
    #   @return [String]
    # @!attribute invitation_id
    #   <p>The value that is used to validate the administrator account to the member
    #         account.</p>
    #   @return [String]
    # @!attribute relationship_status
    #   <p>The status of the relationship between the administrator and member accounts.</p>
    #   @return [String]
    # @!attribute invited_at
    #   <p>The timestamp when the invitation was sent.</p>
    #   @return [String]
    class Administrator < Struct.new(
      :account_id,
      :invitation_id,
      :relationship_status,
      :invited_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the installed GuardDuty security agent.</p>
    # @!attribute version
    #   <p>Version of the installed GuardDuty security agent.</p>
    #   @return [String]
    class AgentDetails < Struct.new(
      :version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the anomalies.</p>
    # @!attribute profiles
    #   <p>Information about the types of profiles.</p>
    #   @return [Hash<String, Hash<String, Array<Types::AnomalyObject>>>]
    # @!attribute unusual
    #   <p>Information about the behavior of the anomalies.</p>
    #   @return [Types::AnomalyUnusual]
    class Anomaly < Struct.new(
      :profiles,
      :unusual,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the unusual anomalies.</p>
    # @!attribute profile_type
    #   <p>The type of behavior of the profile.</p>
    #   @return [String]
    # @!attribute profile_subtype
    #   <p>The frequency of the anomaly.</p>
    #   @return [String]
    # @!attribute observations
    #   <p>The recorded value.</p>
    #   @return [Types::Observations]
    class AnomalyObject < Struct.new(
      :profile_type,
      :profile_subtype,
      :observations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the behavior of the anomaly that is new to GuardDuty.</p>
    # @!attribute behavior
    #   <p>The behavior of the anomalous activity that caused GuardDuty to 
    #         generate the finding.</p>
    #   @return [Hash<String, Hash<String, Types::AnomalyObject>>]
    class AnomalyUnusual < Struct.new(
      :behavior,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The ID of the detector that specifies the GuardDuty service whose findings you want to
    #         archive.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute finding_ids
    #   <p>The IDs of the findings that you want to archive.</p>
    #   @return [Array<String>]
    class ArchiveFindingsRequest < Struct.new(
      :detector_id,
      :finding_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class ArchiveFindingsResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the Autonomous System (AS) associated with the network 
    #        endpoints involved in an attack sequence.</p>
    # @!attribute name
    #   <p>Name associated with the Autonomous System (AS).</p>
    #   @return [String]
    # @!attribute number
    #   <p>The unique number that identifies the Autonomous System (AS).</p>
    #   @return [Integer]
    class AutonomousSystem < Struct.new(
      :name,
      :number,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the API action.</p>
    # @!attribute api
    #   <p>The Amazon Web Services API name.</p>
    #   @return [String]
    # @!attribute caller_type
    #   <p>The Amazon Web Services API caller type.</p>
    #   @return [String]
    # @!attribute domain_details
    #   <p>The domain information for the Amazon Web Services API call.</p>
    #   @return [Types::DomainDetails]
    # @!attribute error_code
    #   <p>The error code of the failed Amazon Web Services API action.</p>
    #   @return [String]
    # @!attribute user_agent
    #   <p>The agent through which the API request was made.</p>
    #   @return [String]
    # @!attribute remote_ip_details
    #   <p>The remote IP information of the connection that initiated the Amazon Web Services API call.</p>
    #   @return [Types::RemoteIpDetails]
    # @!attribute service_name
    #   <p>The Amazon Web Services service name whose API was invoked.</p>
    #   @return [String]
    # @!attribute remote_account_details
    #   <p>The details of the Amazon Web Services account that made the API call. This field appears if the call
    #         was made from outside your account.</p>
    #   @return [Types::RemoteAccountDetails]
    # @!attribute affected_resources
    #   <p>The details of the Amazon Web Services account that made the API call. This field identifies the
    #         resources that were affected by this API call.</p>
    #   @return [Hash<String, String>]
    class AwsApiCallAction < Struct.new(
      :api,
      :caller_type,
      :domain_details,
      :error_code,
      :user_agent,
      :remote_ip_details,
      :service_name,
      :remote_account_details,
      :affected_resources,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A bad request exception object.</p>
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The error type.</p>
    #   @return [String]
    class BadRequestException < Struct.new(
      :message,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information on how the bucker owner's S3 Block Public Access settings are being
    #       applied to the S3 bucket. See <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html">S3 Block Public
    #         Access</a> for more information. </p>
    # @!attribute ignore_public_acls
    #   <p>Indicates if S3 Block Public Access is set to <code>IgnorePublicAcls</code>.</p>
    #   @return [Boolean]
    # @!attribute restrict_public_buckets
    #   <p>Indicates if S3 Block Public Access is set to <code>RestrictPublicBuckets</code>.</p>
    #   @return [Boolean]
    # @!attribute block_public_acls
    #   <p>Indicates if S3 Block Public Access is set to <code>BlockPublicAcls</code>.</p>
    #   @return [Boolean]
    # @!attribute block_public_policy
    #   <p>Indicates if S3 Block Public Access is set to <code>BlockPublicPolicy</code>.</p>
    #   @return [Boolean]
    class BlockPublicAccess < Struct.new(
      :ignore_public_acls,
      :restrict_public_buckets,
      :block_public_acls,
      :block_public_policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the bucket level permissions for the S3 bucket.</p>
    # @!attribute access_control_list
    #   <p>Contains information on how Access Control Policies are applied to the bucket.</p>
    #   @return [Types::AccessControlList]
    # @!attribute bucket_policy
    #   <p>Contains information on the bucket policies for the S3 bucket.</p>
    #   @return [Types::BucketPolicy]
    # @!attribute block_public_access
    #   <p>Contains information on which account level S3 Block Public Access settings are applied to
    #         the S3 bucket.</p>
    #   @return [Types::BlockPublicAccess]
    class BucketLevelPermissions < Struct.new(
      :access_control_list,
      :bucket_policy,
      :block_public_access,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information on the current bucket policies for the S3 bucket.</p>
    # @!attribute allows_public_read_access
    #   <p>A value that indicates whether public read access for the bucket is enabled through a
    #         bucket policy.</p>
    #   @return [Boolean]
    # @!attribute allows_public_write_access
    #   <p>A value that indicates whether public write access for the bucket is enabled through a
    #         bucket policy.</p>
    #   @return [Boolean]
    class BucketPolicy < Struct.new(
      :allows_public_read_access,
      :allows_public_write_access,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the city associated with the IP address.</p>
    # @!attribute city_name
    #   <p>The city name of the remote IP address.</p>
    #   @return [String]
    class City < Struct.new(
      :city_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information on the status of CloudTrail as a data source for the detector.</p>
    # @!attribute status
    #   <p>Describes whether CloudTrail is enabled as a data source for the detector.</p>
    #   @return [String]
    class CloudTrailConfigurationResult < Struct.new(
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the condition.</p>
    # @!attribute eq
    #   <p>Represents the <i>equal</i> condition to be applied to a single field when
    #         querying for findings.</p>
    #   @deprecated
    #   @return [Array<String>]
    # @!attribute neq
    #   <p>Represents the <i>not equal</i> condition to be applied to a single field
    #         when querying for findings.</p>
    #   @deprecated
    #   @return [Array<String>]
    # @!attribute gt
    #   <p>Represents a <i>greater than</i> condition to be applied to a single field
    #         when querying for findings.</p>
    #   @deprecated
    #   @return [Integer]
    # @!attribute gte
    #   <p>Represents a <i>greater than or equal</i> condition to be applied to a
    #         single field when querying for findings.</p>
    #   @deprecated
    #   @return [Integer]
    # @!attribute lt
    #   <p>Represents a <i>less than</i> condition to be applied to a single field when
    #         querying for findings.</p>
    #   @deprecated
    #   @return [Integer]
    # @!attribute lte
    #   <p>Represents a <i>less than or equal</i> condition to be applied to a single
    #         field when querying for findings.</p>
    #   @deprecated
    #   @return [Integer]
    # @!attribute equals
    #   <p>Represents an <i>equal</i>
    #               <b></b> condition to be applied to
    #         a single field when querying for findings.</p>
    #   @return [Array<String>]
    # @!attribute not_equals
    #   <p>Represents a <i>not equal</i>
    #               <b></b> condition to be applied
    #         to a single field when querying for findings.</p>
    #   @return [Array<String>]
    # @!attribute greater_than
    #   <p>Represents a <i>greater than</i> condition to be applied to a single field
    #         when querying for findings.</p>
    #   @return [Integer]
    # @!attribute greater_than_or_equal
    #   <p>Represents a <i>greater than or equal</i> condition to be applied to a
    #         single field when querying for findings.</p>
    #   @return [Integer]
    # @!attribute less_than
    #   <p>Represents a <i>less than</i> condition to be applied to a single field when
    #         querying for findings.</p>
    #   @return [Integer]
    # @!attribute less_than_or_equal
    #   <p>Represents a <i>less than or equal</i> condition to be applied to a single
    #         field when querying for findings.</p>
    #   @return [Integer]
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
      :less_than_or_equal,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A request conflict exception object.</p>
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The error type.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details of a container.</p>
    # @!attribute container_runtime
    #   <p>The container runtime (such as, Docker or containerd) used to run the container.</p>
    #   @return [String]
    # @!attribute id
    #   <p>Container ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Container name.</p>
    #   @return [String]
    # @!attribute image
    #   <p>Container image.</p>
    #   @return [String]
    # @!attribute image_prefix
    #   <p>Part of the image name before the last slash. For example, imagePrefix for
    #         public.ecr.aws/amazonlinux/amazonlinux:latest would be public.ecr.aws/amazonlinux. If the
    #         image name is relative and does not have a slash, this field is empty.</p>
    #   @return [String]
    # @!attribute volume_mounts
    #   <p>Container volume mounts.</p>
    #   @return [Array<Types::VolumeMount>]
    # @!attribute security_context
    #   <p>Container security context.</p>
    #   @return [Types::SecurityContext]
    class Container < Struct.new(
      :container_runtime,
      :id,
      :name,
      :image,
      :image_prefix,
      :volume_mounts,
      :security_context,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about container resources involved in a GuardDuty finding.
    #       This structure provides details about containers that were identified as part of
    #       suspicious or malicious activity.</p>
    # @!attribute image
    #   <p>The container image information, including the image name and tag used to run the container
    #         that was involved in the finding.</p>
    #   @return [String]
    # @!attribute image_uid
    #   <p>The unique ID associated with the container image.</p>
    #   @return [String]
    class ContainerFindingResource < Struct.new(
      :image,
      :image_uid,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the Amazon EC2 instance that is running 
    #     the Amazon ECS container.</p>
    # @!attribute covered_container_instances
    #   <p>Represents the nodes in the Amazon ECS cluster that has a <code>HEALTHY</code>
    #         coverage status.</p>
    #   @return [Integer]
    # @!attribute compatible_container_instances
    #   <p>Represents total number of nodes in the Amazon ECS cluster.</p>
    #   @return [Integer]
    class ContainerInstanceDetails < Struct.new(
      :covered_container_instances,
      :compatible_container_instances,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the country where the remote IP address is located.</p>
    # @!attribute country_code
    #   <p>The country code of the remote IP address.</p>
    #   @return [String]
    # @!attribute country_name
    #   <p>The country name of the remote IP address.</p>
    #   @return [String]
    class Country < Struct.new(
      :country_code,
      :country_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the Amazon EC2 instance runtime 
    #     coverage details.</p>
    # @!attribute instance_id
    #   <p>The Amazon EC2 instance ID.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The instance type of the Amazon EC2 instance.</p>
    #   @return [String]
    # @!attribute cluster_arn
    #   <p>The cluster ARN of the Amazon ECS cluster running on 
    #       the Amazon EC2 instance.</p>
    #   @return [String]
    # @!attribute agent_details
    #   <p>Information about the installed security agent.</p>
    #   @return [Types::AgentDetails]
    # @!attribute management_type
    #   <p>Indicates how the GuardDuty security agent is managed for this resource.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AUTO_MANAGED</code> indicates that GuardDuty deploys and manages updates for this resource.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MANUAL</code> indicates that you are responsible to deploy, update, and manage the GuardDuty 
    #             security agent updates for this resource.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The <code>DISABLED</code> status doesn't apply to Amazon 
    #       EC2 instances and Amazon EKS clusters.</p>
    #            </note>
    #   @return [String]
    class CoverageEc2InstanceDetails < Struct.new(
      :instance_id,
      :instance_type,
      :cluster_arn,
      :agent_details,
      :management_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about Amazon ECS cluster runtime coverage details.</p>
    # @!attribute cluster_name
    #   <p>The name of the Amazon ECS cluster.</p>
    #   @return [String]
    # @!attribute fargate_details
    #   <p>Information about the Fargate details associated with the Amazon 
    #         ECS cluster.</p>
    #   @return [Types::FargateDetails]
    # @!attribute container_instance_details
    #   <p>Information about the Amazon ECS container running on Amazon EC2 
    #         instance.</p>
    #   @return [Types::ContainerInstanceDetails]
    class CoverageEcsClusterDetails < Struct.new(
      :cluster_name,
      :fargate_details,
      :container_instance_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the EKS cluster that has a coverage status.</p>
    # @!attribute cluster_name
    #   <p>Name of the EKS cluster.</p>
    #   @return [String]
    # @!attribute covered_nodes
    #   <p>Represents the nodes within the EKS cluster that have a <code>HEALTHY</code> coverage
    #         status.</p>
    #   @return [Integer]
    # @!attribute compatible_nodes
    #   <p>Represents all the nodes within the EKS cluster in your account.</p>
    #   @return [Integer]
    # @!attribute addon_details
    #   <p>Information about the installed EKS add-on.</p>
    #   @return [Types::AddonDetails]
    # @!attribute management_type
    #   <p>Indicates how the Amazon EKS add-on GuardDuty agent is managed for this EKS cluster.</p>
    #            <p>
    #               <code>AUTO_MANAGED</code> indicates GuardDuty deploys and manages updates for this resource.</p>
    #            <p>
    #               <code>MANUAL</code> indicates that you are responsible to deploy, update, and manage 
    #         the Amazon EKS add-on GuardDuty agent for this resource.</p>
    #   @return [String]
    class CoverageEksClusterDetails < Struct.new(
      :cluster_name,
      :covered_nodes,
      :compatible_nodes,
      :addon_details,
      :management_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a condition that when matched will be added to the response of the
    #       operation.</p>
    # @!attribute equals
    #   <p>Represents an equal condition that is applied to a single field while retrieving the
    #         coverage details.</p>
    #   @return [Array<String>]
    # @!attribute not_equals
    #   <p>Represents a not equal condition that is applied to a single field while retrieving the
    #         coverage details.</p>
    #   @return [Array<String>]
    class CoverageFilterCondition < Struct.new(
      :equals,
      :not_equals,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the criteria used in the filter.</p>
    # @!attribute filter_criterion
    #   <p>Represents a condition that when matched will be added to the response of the
    #         operation.</p>
    #   @return [Array<Types::CoverageFilterCriterion>]
    class CoverageFilterCriteria < Struct.new(
      :filter_criterion,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a condition that when matched will be added to the response of the
    #       operation.</p>
    # @!attribute criterion_key
    #   <p>An enum value representing possible filter fields.</p>
    #            <note>
    #               <p>Replace the enum value <code>CLUSTER_NAME</code> with <code>EKS_CLUSTER_NAME</code>.
    #         <code>CLUSTER_NAME</code> has been deprecated.</p>
    #            </note>
    #   @return [String]
    # @!attribute filter_condition
    #   <p>Contains information about the condition.</p>
    #   @return [Types::CoverageFilterCondition]
    class CoverageFilterCriterion < Struct.new(
      :criterion_key,
      :filter_condition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the resource of the GuardDuty account.</p>
    # @!attribute resource_id
    #   <p>The unique ID of the resource.</p>
    #   @return [String]
    # @!attribute detector_id
    #   <p>The unique ID of the GuardDuty detector associated with the resource.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The unique ID of the Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute resource_details
    #   <p>Information about the resource for which the coverage statistics are retrieved.</p>
    #   @return [Types::CoverageResourceDetails]
    # @!attribute coverage_status
    #   <p>Represents the status of the EKS cluster coverage.</p>
    #   @return [String]
    # @!attribute issue
    #   <p>Represents the reason why a coverage status was <code>UNHEALTHY</code> for the EKS
    #         cluster.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp at which the coverage details for the resource were last updated. This is in
    #         UTC format.</p>
    #   @return [Time]
    class CoverageResource < Struct.new(
      :resource_id,
      :detector_id,
      :account_id,
      :resource_details,
      :coverage_status,
      :issue,
      :updated_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the resource for each individual EKS cluster.</p>
    # @!attribute eks_cluster_details
    #   <p>EKS cluster details involved in the coverage statistics.</p>
    #   @return [Types::CoverageEksClusterDetails]
    # @!attribute resource_type
    #   <p>The type of Amazon Web Services resource.</p>
    #   @return [String]
    # @!attribute ecs_cluster_details
    #   <p>Information about the Amazon ECS cluster that is assessed for 
    #       runtime coverage.</p>
    #   @return [Types::CoverageEcsClusterDetails]
    # @!attribute ec2_instance_details
    #   <p>Information about the Amazon EC2 instance assessed 
    #         for runtime coverage.</p>
    #   @return [Types::CoverageEc2InstanceDetails]
    class CoverageResourceDetails < Struct.new(
      :eks_cluster_details,
      :resource_type,
      :ecs_cluster_details,
      :ec2_instance_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the sorting criteria used in the coverage statistics.</p>
    # @!attribute attribute_name
    #   <p>Represents the field name used to sort the coverage details.</p>
    #            <note>
    #               <p>Replace the enum value <code>CLUSTER_NAME</code> with <code>EKS_CLUSTER_NAME</code>.
    #         <code>CLUSTER_NAME</code> has been deprecated.</p>
    #            </note>
    #   @return [String]
    # @!attribute order_by
    #   <p>The order in which the sorted findings are to be displayed.</p>
    #   @return [String]
    class CoverageSortCriteria < Struct.new(
      :attribute_name,
      :order_by,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the coverage statistics for a resource.</p>
    # @!attribute count_by_resource_type
    #   <p>Represents coverage statistics for EKS clusters aggregated by resource type.</p>
    #   @return [Hash<String, Integer>]
    # @!attribute count_by_coverage_status
    #   <p>Represents coverage statistics for EKS clusters aggregated by coverage status.</p>
    #   @return [Hash<String, Integer>]
    class CoverageStatistics < Struct.new(
      :count_by_resource_type,
      :count_by_coverage_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute enable
    #   <p>A Boolean value that specifies whether the detector is to be enabled.</p>
    #   @return [Boolean]
    # @!attribute client_token
    #   <p>The idempotency token for the create request.</p>
    #   @return [String]
    # @!attribute finding_publishing_frequency
    #   <p>A value that specifies how frequently updated findings are exported.</p>
    #   @return [String]
    # @!attribute data_sources
    #   <p>Describes which data sources will be enabled for the detector.</p>
    #            <p>There might be regional differences because some data sources might not be 
    #         available in all the Amazon Web Services Regions where GuardDuty is presently supported. For more 
    #         information, see <a href="https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html">Regions and endpoints</a>.</p>
    #   @deprecated
    #     This parameter is deprecated, use Features instead
    #   @return [Types::DataSourceConfigurations]
    # @!attribute tags
    #   <p>The tags to be added to a new detector resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute features
    #   <p>A list of features that will be configured for the detector.</p>
    #   @return [Array<Types::DetectorFeatureConfiguration>]
    class CreateDetectorRequest < Struct.new(
      :enable,
      :client_token,
      :finding_publishing_frequency,
      :data_sources,
      :tags,
      :features,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the created detector.</p>
    #   @return [String]
    # @!attribute unprocessed_data_sources
    #   <p>Specifies the data sources that couldn't be enabled when GuardDuty was enabled for the
    #         first time.</p>
    #   @return [Types::UnprocessedDataSourcesResult]
    class CreateDetectorResponse < Struct.new(
      :detector_id,
      :unprocessed_data_sources,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The detector ID associated with the GuardDuty account for which you want to create a filter.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the filter. Valid characters include period (.), underscore (_), dash (-), and
    #         alphanumeric characters. A whitespace is considered to be an invalid character.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the filter. Valid characters include alphanumeric characters, and
    #         special characters such as hyphen, period, colon, underscore, parentheses (<code>{ }</code>,
    #           <code>[ ]</code>, and <code>( )</code>), forward slash, horizontal tab, vertical tab,
    #         newline, form feed, return, and whitespace.</p>
    #   @return [String]
    # @!attribute action
    #   <p>Specifies the action that is to be applied to the findings that match the filter.</p>
    #   @return [String]
    # @!attribute rank
    #   <p>Specifies the position of the filter in the list of current filters. Also specifies the
    #         order in which this filter is applied to the findings.</p>
    #   @return [Integer]
    # @!attribute finding_criteria
    #   <p>Represents the criteria to be used in the filter for querying findings.</p>
    #            <p>You can only use the following attributes to query findings:</p>
    #            <ul>
    #               <li>
    #                  <p>accountId</p>
    #               </li>
    #               <li>
    #                  <p>id</p>
    #               </li>
    #               <li>
    #                  <p>region</p>
    #               </li>
    #               <li>
    #                  <p>severity</p>
    #                  <p>To filter on the basis of severity, the API and CLI use the following input list for
    #             the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_FindingCriteria.html">FindingCriteria</a>
    #             condition:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <b>Low</b>: <code>["1", "2", "3"]</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>Medium</b>: <code>["4", "5", "6"]</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>High</b>: <code>["7", "8"]</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>Critical</b>: <code>["9", "10"]</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>For more information, see <a href="https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_findings-severity.html">Findings severity levels</a>
    #             in the <i>Amazon GuardDuty User Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>type</p>
    #               </li>
    #               <li>
    #                  <p>updatedAt</p>
    #                  <p>Type: ISO 8601 string format: YYYY-MM-DDTHH:MM:SS.SSSZ or YYYY-MM-DDTHH:MM:SSZ
    #             depending on whether the value contains milliseconds.</p>
    #               </li>
    #               <li>
    #                  <p>resource.accessKeyDetails.accessKeyId</p>
    #               </li>
    #               <li>
    #                  <p>resource.accessKeyDetails.principalId</p>
    #               </li>
    #               <li>
    #                  <p>resource.accessKeyDetails.userName</p>
    #               </li>
    #               <li>
    #                  <p>resource.accessKeyDetails.userType</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.iamInstanceProfile.id</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.imageId</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.instanceId</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.tags.key</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.tags.value</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.ipv6Addresses</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.privateIpAddresses.privateIpAddress</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.publicDnsName</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.publicIp</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.securityGroups.groupId</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.securityGroups.groupName</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.subnetId</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.vpcId</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.outpostArn</p>
    #               </li>
    #               <li>
    #                  <p>resource.resourceType</p>
    #               </li>
    #               <li>
    #                  <p>resource.s3BucketDetails.publicAccess.effectivePermissions</p>
    #               </li>
    #               <li>
    #                  <p>resource.s3BucketDetails.name</p>
    #               </li>
    #               <li>
    #                  <p>resource.s3BucketDetails.tags.key</p>
    #               </li>
    #               <li>
    #                  <p>resource.s3BucketDetails.tags.value</p>
    #               </li>
    #               <li>
    #                  <p>resource.s3BucketDetails.type</p>
    #               </li>
    #               <li>
    #                  <p>service.action.actionType</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.api</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.callerType</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.errorCode</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.remoteIpDetails.city.cityName</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.remoteIpDetails.country.countryName</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.remoteIpDetails.ipAddressV4</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.remoteIpDetails.ipAddressV6</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.remoteIpDetails.organization.asn</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.remoteIpDetails.organization.asnOrg</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.serviceName</p>
    #               </li>
    #               <li>
    #                  <p>service.action.dnsRequestAction.domain</p>
    #               </li>
    #               <li>
    #                  <p>service.action.dnsRequestAction.domainWithSuffix</p>
    #               </li>
    #               <li>
    #                  <p>service.action.dnsRequestAction.vpcOwnerAccountId</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.blocked</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.connectionDirection</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.localPortDetails.port</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.protocol</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.remoteIpDetails.city.cityName</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.remoteIpDetails.country.countryName</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.remoteIpDetails.ipAddressV4</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.remoteIpDetails.ipAddressV6</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.remoteIpDetails.organization.asn</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.remoteIpDetails.organization.asnOrg</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.remotePortDetails.port</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.remoteAccountDetails.affiliated</p>
    #               </li>
    #               <li>
    #                  <p>service.action.kubernetesApiCallAction.remoteIpDetails.ipAddressV4</p>
    #               </li>
    #               <li>
    #                  <p>service.action.kubernetesApiCallAction.remoteIpDetails.ipAddressV6</p>
    #               </li>
    #               <li>
    #                  <p>service.action.kubernetesApiCallAction.namespace</p>
    #               </li>
    #               <li>
    #                  <p>service.action.kubernetesApiCallAction.remoteIpDetails.organization.asn</p>
    #               </li>
    #               <li>
    #                  <p>service.action.kubernetesApiCallAction.requestUri</p>
    #               </li>
    #               <li>
    #                  <p>service.action.kubernetesApiCallAction.statusCode</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.localIpDetails.ipAddressV4</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.localIpDetails.ipAddressV6</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.protocol</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.serviceName</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.remoteAccountDetails.accountId</p>
    #               </li>
    #               <li>
    #                  <p>service.additionalInfo.threatListName</p>
    #               </li>
    #               <li>
    #                  <p>service.resourceRole</p>
    #               </li>
    #               <li>
    #                  <p>resource.eksClusterDetails.name</p>
    #               </li>
    #               <li>
    #                  <p>resource.kubernetesDetails.kubernetesWorkloadDetails.name</p>
    #               </li>
    #               <li>
    #                  <p>resource.kubernetesDetails.kubernetesWorkloadDetails.namespace</p>
    #               </li>
    #               <li>
    #                  <p>resource.kubernetesDetails.kubernetesUserDetails.username</p>
    #               </li>
    #               <li>
    #                  <p>resource.kubernetesDetails.kubernetesWorkloadDetails.containers.image</p>
    #               </li>
    #               <li>
    #                  <p>resource.kubernetesDetails.kubernetesWorkloadDetails.containers.imagePrefix</p>
    #               </li>
    #               <li>
    #                  <p>service.ebsVolumeScanDetails.scanId</p>
    #               </li>
    #               <li>
    #                  <p>service.ebsVolumeScanDetails.scanDetections.threatDetectedByName.threatNames.name</p>
    #               </li>
    #               <li>
    #                  <p>service.ebsVolumeScanDetails.scanDetections.threatDetectedByName.threatNames.severity</p>
    #               </li>
    #               <li>
    #                  <p>service.ebsVolumeScanDetails.scanDetections.threatDetectedByName.threatNames.filePaths.hash</p>
    #               </li>
    #               <li>
    #                  <p>resource.ecsClusterDetails.name</p>
    #               </li>
    #               <li>
    #                  <p>resource.ecsClusterDetails.taskDetails.containers.image</p>
    #               </li>
    #               <li>
    #                  <p>resource.ecsClusterDetails.taskDetails.definitionArn</p>
    #               </li>
    #               <li>
    #                  <p>resource.containerDetails.image</p>
    #               </li>
    #               <li>
    #                  <p>resource.rdsDbInstanceDetails.dbInstanceIdentifier</p>
    #               </li>
    #               <li>
    #                  <p>resource.rdsDbInstanceDetails.dbClusterIdentifier</p>
    #               </li>
    #               <li>
    #                  <p>resource.rdsDbInstanceDetails.engine</p>
    #               </li>
    #               <li>
    #                  <p>resource.rdsDbUserDetails.user</p>
    #               </li>
    #               <li>
    #                  <p>resource.rdsDbInstanceDetails.tags.key</p>
    #               </li>
    #               <li>
    #                  <p>resource.rdsDbInstanceDetails.tags.value</p>
    #               </li>
    #               <li>
    #                  <p>service.runtimeDetails.process.executableSha256</p>
    #               </li>
    #               <li>
    #                  <p>service.runtimeDetails.process.name</p>
    #               </li>
    #               <li>
    #                  <p>service.runtimeDetails.process.executablePath</p>
    #               </li>
    #               <li>
    #                  <p>resource.lambdaDetails.functionName</p>
    #               </li>
    #               <li>
    #                  <p>resource.lambdaDetails.functionArn</p>
    #               </li>
    #               <li>
    #                  <p>resource.lambdaDetails.tags.key</p>
    #               </li>
    #               <li>
    #                  <p>resource.lambdaDetails.tags.value</p>
    #               </li>
    #            </ul>
    #   @return [Types::FindingCriteria]
    # @!attribute client_token
    #   <p>The idempotency token for the create request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to be added to a new filter resource.</p>
    #   @return [Hash<String, String>]
    class CreateFilterRequest < Struct.new(
      :detector_id,
      :name,
      :description,
      :action,
      :rank,
      :finding_criteria,
      :client_token,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the successfully created filter.</p>
    #   @return [String]
    class CreateFilterResponse < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector of the GuardDuty account for which you want to create an IPSet.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The user-friendly name to identify the IPSet.</p>
    #            <p> Allowed characters are alphanumeric, whitespace, dash (-), and underscores (_).</p>
    #   @return [String]
    # @!attribute format
    #   <p>The format of the file that contains the IPSet.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The URI of the file that contains the IPSet. </p>
    #   @return [String]
    # @!attribute activate
    #   <p>A Boolean value that indicates whether GuardDuty is to start using the uploaded
    #         IPSet.</p>
    #   @return [Boolean]
    # @!attribute client_token
    #   <p>The idempotency token for the create request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to be added to a new IP set resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute expected_bucket_owner
    #   <p>The Amazon Web Services account ID that owns the Amazon S3 bucket specified in the <b>location</b> parameter.</p>
    #   @return [String]
    class CreateIPSetRequest < Struct.new(
      :detector_id,
      :name,
      :format,
      :location,
      :activate,
      :client_token,
      :tags,
      :expected_bucket_owner,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ip_set_id
    #   <p>The ID of the IPSet resource.</p>
    #   @return [String]
    class CreateIPSetResponse < Struct.new(
      :ip_set_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>The idempotency token for the create request.</p>
    #   @return [String]
    # @!attribute role
    #   <p>Amazon Resource Name (ARN) of the IAM role that has the permissions to scan and add tags to the associated
    #         protected resource.</p>
    #   @return [String]
    # @!attribute protected_resource
    #   <p>Information about the protected resource that is associated with the created 
    #         Malware Protection plan. Presently, <code>S3Bucket</code> is the only supported 
    #         protected resource.</p>
    #   @return [Types::CreateProtectedResource]
    # @!attribute actions
    #   <p>Information about whether the tags will be added to the S3 object after scanning.</p>
    #   @return [Types::MalwareProtectionPlanActions]
    # @!attribute tags
    #   <p>Tags added to the Malware Protection plan resource. </p>
    #   @return [Hash<String, String>]
    class CreateMalwareProtectionPlanRequest < Struct.new(
      :client_token,
      :role,
      :protected_resource,
      :actions,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute malware_protection_plan_id
    #   <p>A unique identifier associated with the Malware Protection plan resource.</p>
    #   @return [String]
    class CreateMalwareProtectionPlanResponse < Struct.new(
      :malware_protection_plan_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector of the GuardDuty account for which you want to associate member
    #         accounts.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute account_details
    #   <p>A list of account ID and email address pairs of the accounts that you want to associate
    #         with the GuardDuty administrator account.</p>
    #   @return [Array<Types::AccountDetail>]
    class CreateMembersRequest < Struct.new(
      :detector_id,
      :account_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute unprocessed_accounts
    #   <p>A list of objects that include the <code>accountIds</code> of the unprocessed accounts and
    #         a result string that explains why each was unprocessed.</p>
    #   @return [Array<Types::UnprocessedAccount>]
    class CreateMembersResponse < Struct.new(
      :unprocessed_accounts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the protected resource that
    #       is associated with the created Malware Protection plan.
    #       Presently, <code>S3Bucket</code> is the only supported 
    #       protected resource.</p>
    # @!attribute s3_bucket
    #   <p>Information about the protected S3 bucket resource.</p>
    #   @return [Types::CreateS3BucketResource]
    class CreateProtectedResource < Struct.new(
      :s3_bucket,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The ID of the GuardDuty detector associated with the publishing destination.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute destination_type
    #   <p>The type of resource for the publishing destination. Currently only Amazon S3 buckets are
    #         supported.</p>
    #   @return [String]
    # @!attribute destination_properties
    #   <p>The properties of the publishing destination, including the ARNs for the destination and
    #         the KMS key used for encryption.</p>
    #   @return [Types::DestinationProperties]
    # @!attribute client_token
    #   <p>The idempotency token for the request.</p>
    #   @return [String]
    class CreatePublishingDestinationRequest < Struct.new(
      :detector_id,
      :destination_type,
      :destination_properties,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute destination_id
    #   <p>The ID of the publishing destination that is created.</p>
    #   @return [String]
    class CreatePublishingDestinationResponse < Struct.new(
      :destination_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the protected S3 bucket resource.</p>
    # @!attribute bucket_name
    #   <p>Name of the S3 bucket.</p>
    #   @return [String]
    # @!attribute object_prefixes
    #   <p>Information about the specified object prefixes. The S3 object will be scanned only 
    #         if it belongs to any of the specified object prefixes.</p>
    #   @return [Array<String>]
    class CreateS3BucketResource < Struct.new(
      :bucket_name,
      :object_prefixes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The ID of the detector for which you need to create sample findings.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute finding_types
    #   <p>The types of sample findings to generate.</p>
    #   @return [Array<String>]
    class CreateSampleFindingsRequest < Struct.new(
      :detector_id,
      :finding_types,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class CreateSampleFindingsResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector of the GuardDuty account for which you want to create a
    #         <code>ThreatIntelSet</code>.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A user-friendly ThreatIntelSet name displayed in all findings that are generated by
    #         activity that involves IP addresses included in this ThreatIntelSet.</p>
    #   @return [String]
    # @!attribute format
    #   <p>The format of the file that contains the ThreatIntelSet.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The URI of the file that contains the ThreatIntelSet. </p>
    #   @return [String]
    # @!attribute activate
    #   <p>A Boolean value that indicates whether GuardDuty is to start using the uploaded
    #         ThreatIntelSet.</p>
    #   @return [Boolean]
    # @!attribute client_token
    #   <p>The idempotency token for the create request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to be added to a new threat list resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute expected_bucket_owner
    #   <p>The Amazon Web Services account ID that owns the Amazon S3 bucket specified in the <b>location</b> parameter.</p>
    #   @return [String]
    class CreateThreatIntelSetRequest < Struct.new(
      :detector_id,
      :name,
      :format,
      :location,
      :activate,
      :client_token,
      :tags,
      :expected_bucket_owner,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute threat_intel_set_id
    #   <p>The ID of the ThreatIntelSet resource.</p>
    #   @return [String]
    class CreateThreatIntelSetResponse < Struct.new(
      :threat_intel_set_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information on the status of DNS logs as a data source.</p>
    # @!attribute status
    #   <p>Denotes whether DNS logs is enabled as a data source.</p>
    #   @return [String]
    class DNSLogsConfigurationResult < Struct.new(
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about which data sources are enabled.</p>
    # @!attribute s3_logs
    #   <p>Describes whether S3 data event logs are enabled as a data source.</p>
    #   @return [Types::S3LogsConfiguration]
    # @!attribute kubernetes
    #   <p>Describes whether any Kubernetes logs are enabled as data sources.</p>
    #   @return [Types::KubernetesConfiguration]
    # @!attribute malware_protection
    #   <p>Describes whether Malware Protection is enabled as a data source.</p>
    #   @return [Types::MalwareProtectionConfiguration]
    class DataSourceConfigurations < Struct.new(
      :s3_logs,
      :kubernetes,
      :malware_protection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information on the status of data sources for the detector.</p>
    # @!attribute cloud_trail
    #   <p>An object that contains information on the status of CloudTrail as a data source.</p>
    #   @return [Types::CloudTrailConfigurationResult]
    # @!attribute dns_logs
    #   <p>An object that contains information on the status of DNS logs as a data source.</p>
    #   @return [Types::DNSLogsConfigurationResult]
    # @!attribute flow_logs
    #   <p>An object that contains information on the status of VPC flow logs as a data
    #         source.</p>
    #   @return [Types::FlowLogsConfigurationResult]
    # @!attribute s3_logs
    #   <p>An object that contains information on the status of S3 Data event logs as a data
    #         source.</p>
    #   @return [Types::S3LogsConfigurationResult]
    # @!attribute kubernetes
    #   <p>An object that contains information on the status of all Kubernetes data sources.</p>
    #   @return [Types::KubernetesConfigurationResult]
    # @!attribute malware_protection
    #   <p>Describes the configuration of Malware Protection data sources.</p>
    #   @return [Types::MalwareProtectionConfigurationResult]
    class DataSourceConfigurationsResult < Struct.new(
      :cloud_trail,
      :dns_logs,
      :flow_logs,
      :s3_logs,
      :kubernetes,
      :malware_protection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about which data sources are enabled for the GuardDuty member
    #       account.</p>
    # @!attribute free_trial_days_remaining
    #   <p>A value that specifies the number of days left to use each enabled data source.</p>
    #   @return [Integer]
    class DataSourceFreeTrial < Struct.new(
      :free_trial_days_remaining,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about which data sources are enabled for the GuardDuty member
    #       account.</p>
    # @!attribute cloud_trail
    #   <p>Describes whether any Amazon Web Services CloudTrail management event logs are enabled as data sources.</p>
    #   @return [Types::DataSourceFreeTrial]
    # @!attribute dns_logs
    #   <p>Describes whether any DNS logs are enabled as data sources.</p>
    #   @return [Types::DataSourceFreeTrial]
    # @!attribute flow_logs
    #   <p>Describes whether any VPC Flow logs are enabled as data sources.</p>
    #   @return [Types::DataSourceFreeTrial]
    # @!attribute s3_logs
    #   <p>Describes whether any S3 data event logs are enabled as data sources.</p>
    #   @return [Types::DataSourceFreeTrial]
    # @!attribute kubernetes
    #   <p>Describes whether any Kubernetes logs are enabled as data sources.</p>
    #   @return [Types::KubernetesDataSourceFreeTrial]
    # @!attribute malware_protection
    #   <p>Describes whether Malware Protection is enabled as a data source.</p>
    #   @return [Types::MalwareProtectionDataSourceFreeTrial]
    class DataSourcesFreeTrial < Struct.new(
      :cloud_trail,
      :dns_logs,
      :flow_logs,
      :s3_logs,
      :kubernetes,
      :malware_protection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents list a map of dates with a count of total findings generated on each date.</p>
    # @!attribute date
    #   <p>The timestamp when the total findings count is observed.</p>
    #            <p>For example, <code>Date</code> would look like <code>"2024-09-05T17:00:00-07:00"</code>
    #         whereas <code>LastGeneratedAt</code> would look like 2024-09-05T17:12:29-07:00".</p>
    #   @return [Time]
    # @!attribute last_generated_at
    #   <p>The timestamp at which the last finding in the findings count, was generated.</p>
    #   @return [Time]
    # @!attribute severity
    #   <p>The severity of the findings generated on each date.</p>
    #   @return [Float]
    # @!attribute total_findings
    #   <p>The total number of findings that were generated per severity level on each date.</p>
    #   @return [Integer]
    class DateStatistics < Struct.new(
      :date,
      :last_generated_at,
      :severity,
      :total_findings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_ids
    #   <p>A list of account IDs of the Amazon Web Services accounts that sent invitations to the current member
    #         account that you want to decline invitations from.</p>
    #   @return [Array<String>]
    class DeclineInvitationsRequest < Struct.new(
      :account_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute unprocessed_accounts
    #   <p>A list of objects that contain the unprocessed account and a result string that explains
    #         why it was unprocessed.</p>
    #   @return [Array<Types::UnprocessedAccount>]
    class DeclineInvitationsResponse < Struct.new(
      :unprocessed_accounts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information on the server side encryption method used in the S3 bucket. See
    #         <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html">S3
    #         Server-Side Encryption</a> for more information.</p>
    # @!attribute encryption_type
    #   <p>The type of encryption used for objects within the S3 bucket.</p>
    #   @return [String]
    # @!attribute kms_master_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS encryption key. Only available if the bucket
    #           <code>EncryptionType</code> is <code>aws:kms</code>.</p>
    #   @return [String]
    class DefaultServerSideEncryption < Struct.new(
      :encryption_type,
      :kms_master_key_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector that you want to delete.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    class DeleteDetectorRequest < Struct.new(
      :detector_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteDetectorResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector that is associated with the filter.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute filter_name
    #   <p>The name of the filter that you want to delete.</p>
    #   @return [String]
    class DeleteFilterRequest < Struct.new(
      :detector_id,
      :filter_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteFilterResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector associated with the IPSet.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute ip_set_id
    #   <p>The unique ID of the IPSet to delete.</p>
    #   @return [String]
    class DeleteIPSetRequest < Struct.new(
      :detector_id,
      :ip_set_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteIPSetResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_ids
    #   <p>A list of account IDs of the Amazon Web Services accounts that sent invitations to the current member
    #         account that you want to delete invitations from.</p>
    #   @return [Array<String>]
    class DeleteInvitationsRequest < Struct.new(
      :account_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute unprocessed_accounts
    #   <p>A list of objects that contain the unprocessed account and a result string that explains
    #         why it was unprocessed.</p>
    #   @return [Array<Types::UnprocessedAccount>]
    class DeleteInvitationsResponse < Struct.new(
      :unprocessed_accounts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute malware_protection_plan_id
    #   <p>A unique identifier associated with Malware Protection plan resource.</p>
    #   @return [String]
    class DeleteMalwareProtectionPlanRequest < Struct.new(
      :malware_protection_plan_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector of the GuardDuty account whose members you want to
    #         delete.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute account_ids
    #   <p>A list of account IDs of the GuardDuty member accounts that you want to delete.</p>
    #   @return [Array<String>]
    class DeleteMembersRequest < Struct.new(
      :detector_id,
      :account_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute unprocessed_accounts
    #   <p>The accounts that could not be processed.</p>
    #   @return [Array<Types::UnprocessedAccount>]
    class DeleteMembersResponse < Struct.new(
      :unprocessed_accounts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector associated with the publishing destination to delete.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute destination_id
    #   <p>The ID of the publishing destination to delete.</p>
    #   @return [String]
    class DeletePublishingDestinationRequest < Struct.new(
      :detector_id,
      :destination_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeletePublishingDestinationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector that is associated with the threatIntelSet.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute threat_intel_set_id
    #   <p>The unique ID of the threatIntelSet that you want to delete.</p>
    #   @return [String]
    class DeleteThreatIntelSetRequest < Struct.new(
      :detector_id,
      :threat_intel_set_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteThreatIntelSetResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector that the request is associated with.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter to
    #         null on your first call to the list action. For subsequent calls to the action, fill nextToken
    #         in the request with the value of NextToken from the previous response to continue listing
    #         data.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>You can use this parameter to indicate the maximum number of items that you want in the
    #         response. The default value is 50. The maximum value is 50.</p>
    #   @return [Integer]
    # @!attribute filter_criteria
    #   <p>Represents the criteria to be used in the filter for describing scan entries.</p>
    #   @return [Types::FilterCriteria]
    # @!attribute sort_criteria
    #   <p>Represents the criteria used for sorting scan entries. The <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_SortCriteria.html#guardduty-Type-SortCriteria-attributeName">
    #                  <code>attributeName</code>
    #               </a> is required and it must be
    #         <code>scanStartTime</code>.</p>
    #   @return [Types::SortCriteria]
    class DescribeMalwareScansRequest < Struct.new(
      :detector_id,
      :next_token,
      :max_results,
      :filter_criteria,
      :sort_criteria,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute scans
    #   <p>Contains information about malware scans associated with GuardDuty Malware Protection for EC2.</p>
    #   @return [Array<Types::Scan>]
    # @!attribute next_token
    #   <p>The pagination parameter to be used on the next list operation to retrieve more
    #         items.</p>
    #   @return [String]
    class DescribeMalwareScansResponse < Struct.new(
      :scans,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The detector ID of the delegated administrator for which you need to retrieve the information.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>You can use this parameter to indicate the maximum number of items that you want in the
    #         response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter to
    #         null on your first call to the list action. For subsequent calls to the action, fill
    #           <code>nextToken</code> in the request with the value of <code>NextToken</code> from the
    #         previous response to continue listing data.</p>
    #   @return [String]
    class DescribeOrganizationConfigurationRequest < Struct.new(
      :detector_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_enable
    #   <p>Indicates whether GuardDuty is automatically enabled for accounts added to the
    #         organization.</p>
    #            <p>Even though this is still supported, we recommend using
    #           <code>AutoEnableOrganizationMembers</code> to achieve the similar results.</p>
    #   @deprecated
    #     This field is deprecated, use AutoEnableOrganizationMembers instead
    #   @return [Boolean]
    # @!attribute member_account_limit_reached
    #   <p>Indicates whether the maximum number of allowed member accounts are already associated
    #         with the delegated administrator account for your organization.</p>
    #   @return [Boolean]
    # @!attribute data_sources
    #   <p>Describes which data sources are enabled automatically for member accounts.</p>
    #   @deprecated
    #     This parameter is deprecated, use Features instead
    #   @return [Types::OrganizationDataSourceConfigurationsResult]
    # @!attribute features
    #   <p>A list of features that are configured for this organization.</p>
    #   @return [Array<Types::OrganizationFeatureConfigurationResult>]
    # @!attribute next_token
    #   <p>The pagination parameter to be used on the next list operation to retrieve more
    #         items.</p>
    #   @return [String]
    # @!attribute auto_enable_organization_members
    #   <p>Indicates the auto-enablement configuration of GuardDuty or any of the corresponding protection plans for the member accounts in the
    #         organization.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NEW</code>: Indicates that when a new account joins the organization, they will
    #             have GuardDuty or any of the corresponding protection plans enabled automatically. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL</code>: Indicates that all accounts in the organization have GuardDuty and any of the corresponding 
    #             protection plans enabled automatically. This includes <code>NEW</code> accounts that join the organization
    #             and accounts that may have been suspended or removed from the organization in
    #             GuardDuty.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code>: Indicates that GuardDuty or any of the corresponding protection plans 
    #             will not be automatically enabled for any
    #             account in the organization. The administrator must manage GuardDuty for each account in 
    #             the organization individually.</p>
    #                  <p>When you update the auto-enable setting from <code>ALL</code> or <code>NEW</code> to 
    #           <code>NONE</code>, this action doesn't disable the corresponding option for your existing accounts. This
    #           configuration will apply to the new accounts that join the organization. After you update the auto-enable settings,
    #           no new account will have the corresponding option as enabled.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DescribeOrganizationConfigurationResponse < Struct.new(
      :auto_enable,
      :member_account_limit_reached,
      :data_sources,
      :features,
      :next_token,
      :auto_enable_organization_members,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector associated with the publishing destination to
    #         retrieve.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute destination_id
    #   <p>The ID of the publishing destination to retrieve.</p>
    #   @return [String]
    class DescribePublishingDestinationRequest < Struct.new(
      :detector_id,
      :destination_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute destination_id
    #   <p>The ID of the publishing destination.</p>
    #   @return [String]
    # @!attribute destination_type
    #   <p>The type of publishing destination. Currently, only Amazon S3 buckets are
    #         supported.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the publishing destination.</p>
    #   @return [String]
    # @!attribute publishing_failure_start_timestamp
    #   <p>The time, in epoch millisecond format, at which GuardDuty was first unable to publish
    #         findings to the destination.</p>
    #   @return [Integer]
    # @!attribute destination_properties
    #   <p>A <code>DestinationProperties</code> object that includes the <code>DestinationArn</code>
    #         and <code>KmsKeyArn</code> of the publishing destination.</p>
    #   @return [Types::DestinationProperties]
    class DescribePublishingDestinationResponse < Struct.new(
      :destination_id,
      :destination_type,
      :status,
      :publishing_failure_start_timestamp,
      :destination_properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the publishing destination, including the ID, type, and
    #       status.</p>
    # @!attribute destination_id
    #   <p>The unique ID of the publishing destination.</p>
    #   @return [String]
    # @!attribute destination_type
    #   <p>The type of resource used for the publishing destination. Currently, only Amazon S3
    #         buckets are supported.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the publishing destination.</p>
    #   @return [String]
    class Destination < Struct.new(
      :destination_id,
      :destination_type,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the Amazon Resource Name (ARN) of the resource to publish to, such as an S3
    #       bucket, and the ARN of the KMS key to use to encrypt published findings.</p>
    # @!attribute destination_arn
    #   <p>The ARN of the resource to publish to.</p>
    #            <p>To specify an S3 bucket folder use the following format:
    #           <code>arn:aws:s3:::DOC-EXAMPLE-BUCKET/myFolder/</code>
    #            </p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The ARN of the KMS key to use for encryption.</p>
    #   @return [String]
    class DestinationProperties < Struct.new(
      :destination_arn,
      :kms_key_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the detected behavior.</p>
    # @!attribute anomaly
    #   <p>The details about the anomalous activity that caused GuardDuty to 
    #         generate the finding.</p>
    #   @return [Types::Anomaly]
    # @!attribute sequence
    #   <p>The details about the attack sequence.</p>
    #   @return [Types::Sequence]
    class Detection < Struct.new(
      :anomaly,
      :sequence,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the additional configuration for a feature in your GuardDuty account.</p>
    # @!attribute name
    #   <p>Name of the additional configuration.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of the additional configuration.</p>
    #   @return [String]
    class DetectorAdditionalConfiguration < Struct.new(
      :name,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the additional configuration.</p>
    # @!attribute name
    #   <p>Name of the additional configuration.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of the additional configuration.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp at which the additional configuration was last updated. This is in UTC
    #         format.</p>
    #   @return [Time]
    class DetectorAdditionalConfigurationResult < Struct.new(
      :name,
      :status,
      :updated_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a GuardDuty feature.</p>
    #          <p>Specifying both EKS Runtime Monitoring (<code>EKS_RUNTIME_MONITORING</code>)
    #       and Runtime Monitoring (<code>RUNTIME_MONITORING</code>) will cause an error. 
    #       You can add only one of these two features because Runtime Monitoring already includes the 
    #       threat detection for Amazon EKS resources. For more information, see
    #       <a href="https://docs.aws.amazon.com/guardduty/latest/ug/runtime-monitoring.html">Runtime Monitoring</a>.</p>
    # @!attribute name
    #   <p>The name of the feature.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the feature.</p>
    #   @return [String]
    # @!attribute additional_configuration
    #   <p>Additional configuration for a resource.</p>
    #   @return [Array<Types::DetectorAdditionalConfiguration>]
    class DetectorFeatureConfiguration < Struct.new(
      :name,
      :status,
      :additional_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a GuardDuty feature.</p>
    #          <p>Specifying both EKS Runtime Monitoring (<code>EKS_RUNTIME_MONITORING</code>)
    #       and Runtime Monitoring (<code>RUNTIME_MONITORING</code>) will cause an error. 
    #       You can add only one of these two features because Runtime Monitoring already includes the 
    #       threat detection for Amazon EKS resources. For more information, see
    #       <a href="https://docs.aws.amazon.com/guardduty/latest/ug/runtime-monitoring.html">Runtime Monitoring</a>.</p>
    # @!attribute name
    #   <p>Indicates the name of the feature that can be enabled for the detector.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates the status of the feature that is enabled for the detector.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp at which the feature object was updated.</p>
    #   @return [Time]
    # @!attribute additional_configuration
    #   <p>Additional configuration for a resource.</p>
    #   @return [Array<Types::DetectorAdditionalConfigurationResult>]
    class DetectorFeatureConfigurationResult < Struct.new(
      :name,
      :status,
      :updated_at,
      :additional_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute admin_account_id
    #   <p>The Amazon Web Services Account ID for the organizations account to be disabled as a GuardDuty delegated
    #         administrator.</p>
    #   @return [String]
    class DisableOrganizationAdminAccountRequest < Struct.new(
      :admin_account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisableOrganizationAdminAccountResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector of the GuardDuty member account.</p>
    #   @return [String]
    class DisassociateFromAdministratorAccountRequest < Struct.new(
      :detector_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisassociateFromAdministratorAccountResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @deprecated
    #   This input is deprecated, use DisassociateFromAdministratorAccountRequest instead
    # @!attribute detector_id
    #   <p>The unique ID of the detector of the GuardDuty member account.</p>
    #   @return [String]
    class DisassociateFromMasterAccountRequest < Struct.new(
      :detector_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @deprecated
    #   This output is deprecated, use DisassociateFromAdministratorAccountResponse instead
    class DisassociateFromMasterAccountResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector of the GuardDuty account whose members you want to
    #         disassociate from the administrator account.</p>
    #   @return [String]
    # @!attribute account_ids
    #   <p>A list of account IDs of the GuardDuty member accounts that you want to disassociate from
    #         the administrator account.</p>
    #   @return [Array<String>]
    class DisassociateMembersRequest < Struct.new(
      :detector_id,
      :account_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute unprocessed_accounts
    #   <p>A list of objects that contain the unprocessed account and a result string that explains
    #         why it was unprocessed.</p>
    #   @return [Array<Types::UnprocessedAccount>]
    class DisassociateMembersResponse < Struct.new(
      :unprocessed_accounts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the DNS_REQUEST action described in this finding.</p>
    # @!attribute domain
    #   <p>The domain information for the DNS query.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>The network connection protocol observed in the activity that prompted GuardDuty to
    #         generate the finding.</p>
    #   @return [String]
    # @!attribute blocked
    #   <p>Indicates whether the targeted port is blocked.</p>
    #   @return [Boolean]
    # @!attribute domain_with_suffix
    #   <p>The second and top level domain involved in the 
    #         activity that potentially prompted GuardDuty to generate this finding.
    #         For a list of top-level and second-level domains, see <a href="https://publicsuffix.org/">public suffix list</a>.</p>
    #   @return [String]
    # @!attribute vpc_owner_account_id
    #   <p>The Amazon Web Services account ID that owns the VPC through which the DNS request was made.</p>
    #   @return [String]
    class DnsRequestAction < Struct.new(
      :domain,
      :protocol,
      :blocked,
      :domain_with_suffix,
      :vpc_owner_account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the domain.</p>
    # @!attribute domain
    #   <p>The domain information for the Amazon Web Services API call.</p>
    #   @return [String]
    class DomainDetails < Struct.new(
      :domain,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains list of scanned and skipped EBS volumes with details.</p>
    # @!attribute scanned_volume_details
    #   <p>List of EBS volumes that were scanned.</p>
    #   @return [Array<Types::VolumeDetail>]
    # @!attribute skipped_volume_details
    #   <p>List of EBS volumes that were skipped from the malware scan.</p>
    #   @return [Array<Types::VolumeDetail>]
    class EbsVolumeDetails < Struct.new(
      :scanned_volume_details,
      :skipped_volume_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details from the malware scan that created a finding.</p>
    # @!attribute scan_id
    #   <p>Unique Id of the malware scan that generated the finding.</p>
    #   @return [String]
    # @!attribute scan_started_at
    #   <p>Returns the start date and time of the malware scan.</p>
    #   @return [Time]
    # @!attribute scan_completed_at
    #   <p>Returns the completion date and time of the malware scan.</p>
    #   @return [Time]
    # @!attribute trigger_finding_id
    #   <p>GuardDuty finding ID that triggered a malware scan.</p>
    #   @return [String]
    # @!attribute sources
    #   <p>Contains list of threat intelligence sources used to detect threats.</p>
    #   @return [Array<String>]
    # @!attribute scan_detections
    #   <p>Contains a complete view providing malware scan result details.</p>
    #   @return [Types::ScanDetections]
    # @!attribute scan_type
    #   <p>Specifies the scan type that invoked the malware scan.</p>
    #   @return [String]
    class EbsVolumeScanDetails < Struct.new(
      :scan_id,
      :scan_started_at,
      :scan_completed_at,
      :trigger_finding_id,
      :sources,
      :scan_detections,
      :scan_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration of scanning EBS volumes as a data source.</p>
    # @!attribute status
    #   <p>Describes whether scanning EBS volumes is enabled as a data source.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>Specifies the reason why scanning EBS volumes (Malware Protection) was not enabled as a
    #         data source.</p>
    #   @return [String]
    class EbsVolumesResult < Struct.new(
      :status,
      :reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the potentially impacted Amazon EC2 instance resource.</p>
    # @!attribute availability_zone
    #   <p>The availability zone of the Amazon EC2 instance. For more information, see
    #          <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#concepts-availability-zones">Availability zones</a>
    #          in the <i>Amazon EC2 User Guide</i>.</p>
    #   @return [String]
    # @!attribute image_description
    #   <p>The image description of the Amazon EC2 instance.</p>
    #   @return [String]
    # @!attribute instance_state
    #   <p>The state of the Amazon EC2 instance. For more information, see
    #          <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html">Amazon EC2 instance state changes</a>
    #          in the <i>Amazon EC2 User Guide</i>.</p>
    #   @return [String]
    # @!attribute iam_instance_profile
    #   <p>Contains information about the EC2 instance profile.</p>
    #   @return [Types::IamInstanceProfile]
    # @!attribute instance_type
    #   <p>Type of the Amazon EC2 instance.</p>
    #   @return [String]
    # @!attribute outpost_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services Outpost. This shows applicable Amazon Web Services Outposts instances.</p>
    #   @return [String]
    # @!attribute platform
    #   <p>The platform of the Amazon EC2 instance.</p>
    #   @return [String]
    # @!attribute product_codes
    #   <p>The product code of the Amazon EC2 instance.</p>
    #   @return [Array<Types::ProductCode>]
    # @!attribute ec2_network_interface_uids
    #   <p>The ID of the network interface.</p>
    #   @return [Array<String>]
    class Ec2Instance < Struct.new(
      :availability_zone,
      :image_description,
      :instance_state,
      :iam_instance_profile,
      :instance_type,
      :outpost_arn,
      :platform,
      :product_codes,
      :ec2_network_interface_uids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the elastic network interface of the Amazon EC2 instance.</p>
    # @!attribute ipv6_addresses
    #   <p>A list of IPv6 addresses for the Amazon EC2 instance.</p>
    #   @return [Array<String>]
    # @!attribute private_ip_addresses
    #   <p>Other private IP address information of the Amazon EC2 instance.</p>
    #   @return [Array<Types::PrivateIpAddressDetails>]
    # @!attribute public_ip
    #   <p>The public IP address of the Amazon EC2 instance.</p>
    #   @return [String]
    # @!attribute security_groups
    #   <p>The security groups associated with the Amazon EC2 instance.</p>
    #   @return [Array<Types::SecurityGroup>]
    # @!attribute sub_net_id
    #   <p>The subnet ID of the Amazon EC2 instance.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The VPC ID of the Amazon EC2 instance.</p>
    #   @return [String]
    class Ec2NetworkInterface < Struct.new(
      :ipv6_addresses,
      :private_ip_addresses,
      :public_ip,
      :security_groups,
      :sub_net_id,
      :vpc_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the details of the ECS Cluster.</p>
    # @!attribute name
    #   <p>The name of the ECS Cluster.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that identifies the cluster.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the ECS cluster.</p>
    #   @return [String]
    # @!attribute active_services_count
    #   <p>The number of services that are running on the cluster in an ACTIVE state.</p>
    #   @return [Integer]
    # @!attribute registered_container_instances_count
    #   <p>The number of container instances registered into the cluster.</p>
    #   @return [Integer]
    # @!attribute running_tasks_count
    #   <p>The number of tasks in the cluster that are in the RUNNING state.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>The tags of the ECS Cluster.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute task_details
    #   <p>Contains information about the details of the ECS Task.</p>
    #   @return [Types::EcsTaskDetails]
    class EcsClusterDetails < Struct.new(
      :name,
      :arn,
      :status,
      :active_services_count,
      :registered_container_instances_count,
      :running_tasks_count,
      :tags,
      :task_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the task in an ECS cluster.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the task.</p>
    #   @return [String]
    # @!attribute definition_arn
    #   <p>The ARN of the task definition that creates the task.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version counter for the task.</p>
    #   @return [String]
    # @!attribute task_created_at
    #   <p>The Unix timestamp for the time when the task was created.</p>
    #   @return [Time]
    # @!attribute started_at
    #   <p>The Unix timestamp for the time when the task started.</p>
    #   @return [Time]
    # @!attribute started_by
    #   <p>Contains the tag specified when a task is started.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags of the ECS Task.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute volumes
    #   <p>The list of data volume definitions for the task.</p>
    #   @return [Array<Types::Volume>]
    # @!attribute containers
    #   <p>The containers that's associated with the task.</p>
    #   @return [Array<Types::Container>]
    # @!attribute group
    #   <p>The name of the task group that's associated with the task.</p>
    #   @return [String]
    # @!attribute launch_type
    #   <p>A capacity on which the task is running. For example, <code>Fargate</code> and <code>EC2</code>.</p>
    #   @return [String]
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
      :launch_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the Amazon EKS cluster involved in a GuardDuty finding,
    #       including cluster identification, status, and network configuration.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the Amazon EKS cluster involved in the finding.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp indicating when the Amazon EKS cluster was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the Amazon EKS cluster.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID of the Amazon Virtual Private Cloud (Amazon VPC) associated with the Amazon EKS cluster.</p>
    #   @return [String]
    # @!attribute ec2_instance_uids
    #   <p>A list of unique identifiers for the Amazon EC2 instances that serve as worker nodes in the Amazon EKS cluster.</p>
    #   @return [Array<String>]
    class EksCluster < Struct.new(
      :arn,
      :created_at,
      :status,
      :vpc_id,
      :ec2_instance_uids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the EKS cluster involved in a Kubernetes finding.</p>
    # @!attribute name
    #   <p>EKS cluster name.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>EKS cluster ARN.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The VPC ID to which the EKS cluster is attached.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The EKS cluster status.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The EKS cluster tags.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute created_at
    #   <p>The timestamp when the EKS cluster was created.</p>
    #   @return [Time]
    class EksClusterDetails < Struct.new(
      :name,
      :arn,
      :vpc_id,
      :status,
      :tags,
      :created_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute admin_account_id
    #   <p>The Amazon Web Services account ID for the organization account to be enabled as a GuardDuty delegated
    #         administrator.</p>
    #   @return [String]
    class EnableOrganizationAdminAccountRequest < Struct.new(
      :admin_account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class EnableOrganizationAdminAccountResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the reason that the finding was generated.</p>
    # @!attribute threat_intelligence_details
    #   <p>A list of threat intelligence details related to the evidence.</p>
    #   @return [Array<Types::ThreatIntelligenceDetail>]
    class Evidence < Struct.new(
      :threat_intelligence_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about Amazon Web Services Fargate details associated with 
    #       an Amazon ECS cluster.</p>
    # @!attribute issues
    #   <p>Runtime coverage issues identified for the resource running on Amazon Web Services Fargate.</p>
    #   @return [Array<String>]
    # @!attribute management_type
    #   <p>Indicates how the GuardDuty security agent is managed for this resource.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AUTO_MANAGED</code> indicates that GuardDuty deploys and manages updates for this resource.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> indicates that the deployment of the GuardDuty security agent is disabled for this resource.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The <code>MANUAL</code> status doesn't apply to the Amazon Web Services Fargate (Amazon ECS only) woprkloads.</p>
    #            </note>
    #   @return [String]
    class FargateDetails < Struct.new(
      :issues,
      :management_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the condition.</p>
    # @!attribute equals_value
    #   <p>Represents an <i>equal</i>
    #               <b></b> condition to be applied to
    #         a single field when querying for scan entries.</p>
    #   @return [String]
    # @!attribute greater_than
    #   <p>Represents a <i>greater than</i> condition to be applied to a single field
    #         when querying for scan entries.</p>
    #   @return [Integer]
    # @!attribute less_than
    #   <p>Represents a <i>less than</i> condition to be applied to a single field when
    #         querying for scan entries.</p>
    #   @return [Integer]
    class FilterCondition < Struct.new(
      :equals_value,
      :greater_than,
      :less_than,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the criteria to be used in the filter for describing scan entries.</p>
    # @!attribute filter_criterion
    #   <p>Represents a condition that when matched will be added to the response of the
    #         operation.</p>
    #   @return [Array<Types::FilterCriterion>]
    class FilterCriteria < Struct.new(
      :filter_criterion,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a condition that when matched will be added to the response of the operation.
    #       Irrespective of using any filter criteria, an administrator account can view the scan entries
    #       for all of its member accounts. However, each member account can view the scan entries only
    #       for their own account.</p>
    # @!attribute criterion_key
    #   <p>An enum value representing possible scan properties to match with given scan
    #         entries.</p>
    #   @return [String]
    # @!attribute filter_condition
    #   <p>Contains information about the condition.</p>
    #   @return [Types::FilterCondition]
    class FilterCriterion < Struct.new(
      :criterion_key,
      :filter_condition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the finding that is generated when abnormal or suspicious
    #       activity is detected.</p>
    # @!attribute account_id
    #   <p>The ID of the account in which the finding was generated.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the finding.</p>
    #   @return [String]
    # @!attribute confidence
    #   <p>The confidence score for the finding.</p>
    #   @return [Float]
    # @!attribute created_at
    #   <p>The time and date when the finding was created.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the finding.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the finding.</p>
    #   @return [String]
    # @!attribute partition
    #   <p>The partition associated with the finding.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Region where the finding was generated. For findings generated
    #         from <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html#cloudtrail-concepts-global-service-events">Global Service Events</a>, the Region value in the finding might differ from the Region where
    #         GuardDuty identifies the potential threat. For more information,
    #         see <a href="https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_data-sources.html#cloudtrail_global">How GuardDuty
    #           handles Amazon Web Services CloudTrail global events</a> in the <i>Amazon GuardDuty User Guide</i>.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>Contains information about the Amazon Web Services resource associated with the activity that prompted
    #         GuardDuty to generate a finding.</p>
    #   @return [Types::Resource]
    # @!attribute schema_version
    #   <p>The version of the schema used for the finding.</p>
    #   @return [String]
    # @!attribute service
    #   <p>Contains additional information about the generated finding.</p>
    #   @return [Types::Service]
    # @!attribute severity
    #   <p>The severity of the finding.</p>
    #   @return [Float]
    # @!attribute title
    #   <p>The title of the finding.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of finding.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The time and date when the finding was last updated.</p>
    #   @return [String]
    # @!attribute associated_attack_sequence_arn
    #   <p>Amazon Resource Name (ARN) associated with the attack sequence finding.</p>
    #   @return [String]
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
      :associated_attack_sequence_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the criteria used for querying findings.</p>
    # @!attribute criterion
    #   <p>Represents a map of finding properties that match specified conditions and values when
    #         querying findings.</p>
    #   @return [Hash<String, Types::Condition>]
    class FindingCriteria < Struct.new(
      :criterion,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about finding statistics.</p>
    # @!attribute count_by_severity
    #   <p>Represents a list of map of severity to count statistics for a set of findings.</p>
    #   @deprecated
    #     This parameter is deprecated. Please set GroupBy to 'SEVERITY' to return GroupedBySeverity instead.
    #   @return [Hash<String, Integer>]
    # @!attribute grouped_by_account
    #   <p>Represents a list of map of accounts with a findings count associated with each account.</p>
    #   @return [Array<Types::AccountStatistics>]
    # @!attribute grouped_by_date
    #   <p>Represents a list of map of dates with a count of total findings generated on each date per severity level.</p>
    #   @return [Array<Types::DateStatistics>]
    # @!attribute grouped_by_finding_type
    #   <p>Represents a list of map of finding types with a count of total findings generated for each type. </p>
    #            <p>Based on the <code>orderBy</code>
    #       parameter, this request returns either the most occurring finding types or the least occurring finding types. If the
    #       <code>orderBy</code> parameter is <code>ASC</code>, this will represent the least occurring finding types in
    #       your account; otherwise, this will represent the most occurring finding types. The default
    #       value of <code>orderBy</code> is <code>DESC</code>.</p>
    #   @return [Array<Types::FindingTypeStatistics>]
    # @!attribute grouped_by_resource
    #   <p>Represents a list of map of top resources with a count of total findings.</p>
    #   @return [Array<Types::ResourceStatistics>]
    # @!attribute grouped_by_severity
    #   <p>Represents a list of map of total findings for each severity level.</p>
    #   @return [Array<Types::SeverityStatistics>]
    class FindingStatistics < Struct.new(
      :count_by_severity,
      :grouped_by_account,
      :grouped_by_date,
      :grouped_by_finding_type,
      :grouped_by_resource,
      :grouped_by_severity,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about each finding type associated with the 
    #       <code>groupedByFindingType</code> statistics.</p>
    # @!attribute finding_type
    #   <p>Name of the finding type.</p>
    #   @return [String]
    # @!attribute last_generated_at
    #   <p>The timestamp at which this finding type was last generated in your environment.</p>
    #   @return [Time]
    # @!attribute total_findings
    #   <p>The total number of findings associated with generated for each distinct finding type.</p>
    #   @return [Integer]
    class FindingTypeStatistics < Struct.new(
      :finding_type,
      :last_generated_at,
      :total_findings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information on the status of VPC flow logs as a data source.</p>
    # @!attribute status
    #   <p>Denotes whether VPC flow logs is enabled as a data source.</p>
    #   @return [String]
    class FlowLogsConfigurationResult < Struct.new(
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the free trial period for a feature.</p>
    # @!attribute name
    #   <p>The name of the feature for which the free trial is configured.</p>
    #   @return [String]
    # @!attribute free_trial_days_remaining
    #   <p>The number of the remaining free trial days for the feature.</p>
    #   @return [Integer]
    class FreeTrialFeatureConfigurationResult < Struct.new(
      :name,
      :free_trial_days_remaining,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the location of the remote IP address. By default, GuardDuty
    #     returns <code>Geolocation</code> with <code>Lat</code> and <code>Lon</code> as <code>0.0</code>.</p>
    # @!attribute lat
    #   <p>The latitude information of the remote IP address.</p>
    #   @return [Float]
    # @!attribute lon
    #   <p>The longitude information of the remote IP address.</p>
    #   @return [Float]
    class GeoLocation < Struct.new(
      :lat,
      :lon,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector of the GuardDuty member account.</p>
    #   @return [String]
    class GetAdministratorAccountRequest < Struct.new(
      :detector_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute administrator
    #   <p>The administrator account details.</p>
    #   @return [Types::Administrator]
    class GetAdministratorAccountResponse < Struct.new(
      :administrator,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the GuardDuty detector.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute filter_criteria
    #   <p>Represents the criteria used to filter the coverage statistics.</p>
    #   @return [Types::CoverageFilterCriteria]
    # @!attribute statistics_type
    #   <p>Represents the statistics type used to aggregate the coverage details.</p>
    #   @return [Array<String>]
    class GetCoverageStatisticsRequest < Struct.new(
      :detector_id,
      :filter_criteria,
      :statistics_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute coverage_statistics
    #   <p>Represents the count aggregated by the <code>statusCode</code> and
    #           <code>resourceType</code>.</p>
    #   @return [Types::CoverageStatistics]
    class GetCoverageStatisticsResponse < Struct.new(
      :coverage_statistics,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector that you want to get.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    class GetDetectorRequest < Struct.new(
      :detector_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute created_at
    #   <p>The timestamp of when the detector was created.</p>
    #   @return [String]
    # @!attribute finding_publishing_frequency
    #   <p>The publishing frequency of the finding.</p>
    #   @return [String]
    # @!attribute service_role
    #   <p>The GuardDuty service role.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The detector status.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The last-updated timestamp for the detector.</p>
    #   @return [String]
    # @!attribute data_sources
    #   <p>Describes which data sources are enabled for the detector.</p>
    #   @deprecated
    #     This parameter is deprecated, use Features instead
    #   @return [Types::DataSourceConfigurationsResult]
    # @!attribute tags
    #   <p>The tags of the detector resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute features
    #   <p>Describes the features that have been enabled for the detector.</p>
    #   @return [Array<Types::DetectorFeatureConfigurationResult>]
    class GetDetectorResponse < Struct.new(
      :created_at,
      :finding_publishing_frequency,
      :service_role,
      :status,
      :updated_at,
      :data_sources,
      :tags,
      :features,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector that is associated with this filter.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute filter_name
    #   <p>The name of the filter you want to get.</p>
    #   @return [String]
    class GetFilterRequest < Struct.new(
      :detector_id,
      :filter_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the filter.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the filter.</p>
    #   @return [String]
    # @!attribute action
    #   <p>Specifies the action that is to be applied to the findings that match the filter.</p>
    #   @return [String]
    # @!attribute rank
    #   <p>Specifies the position of the filter in the list of current filters. Also specifies the
    #         order in which this filter is applied to the findings.</p>
    #   @return [Integer]
    # @!attribute finding_criteria
    #   <p>Represents the criteria to be used in the filter for querying findings.</p>
    #   @return [Types::FindingCriteria]
    # @!attribute tags
    #   <p>The tags of the filter resource.</p>
    #   @return [Hash<String, String>]
    class GetFilterResponse < Struct.new(
      :name,
      :description,
      :action,
      :rank,
      :finding_criteria,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The ID of the detector that specifies the GuardDuty service whose findings you want to
    #         retrieve.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute finding_ids
    #   <p>The IDs of the findings that you want to retrieve.</p>
    #   @return [Array<String>]
    # @!attribute sort_criteria
    #   <p>Represents the criteria used for sorting findings.</p>
    #   @return [Types::SortCriteria]
    class GetFindingsRequest < Struct.new(
      :detector_id,
      :finding_ids,
      :sort_criteria,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute findings
    #   <p>A list of findings.</p>
    #   @return [Array<Types::Finding>]
    class GetFindingsResponse < Struct.new(
      :findings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The ID of the detector whose findings statistics you
    #         want to retrieve.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute finding_statistic_types
    #   <p>The types of finding statistics to retrieve.</p>
    #   @deprecated
    #     This parameter is deprecated, please use GroupBy instead
    #   @return [Array<String>]
    # @!attribute finding_criteria
    #   <p>Represents the criteria that is used for querying findings.</p>
    #   @return [Types::FindingCriteria]
    # @!attribute group_by
    #   <p>Displays the findings statistics grouped by one of the listed valid values.</p>
    #   @return [String]
    # @!attribute order_by
    #   <p>Displays the sorted findings in the requested order. The default
    #         value of <code>orderBy</code> is <code>DESC</code>.</p>
    #            <p>You can use this parameter only with the <code>groupBy</code> parameter.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned in the response. The default value is 25.</p>
    #            <p>You can use this parameter only with the <code>groupBy</code> parameter.</p>
    #   @return [Integer]
    class GetFindingsStatisticsRequest < Struct.new(
      :detector_id,
      :finding_statistic_types,
      :finding_criteria,
      :group_by,
      :order_by,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute finding_statistics
    #   <p>The finding statistics object.</p>
    #   @return [Types::FindingStatistics]
    # @!attribute next_token
    #   <p>The pagination parameter to be used on the next list operation to retrieve more items.</p>
    #            <p>This parameter is currently not supported.</p>
    #   @return [String]
    class GetFindingsStatisticsResponse < Struct.new(
      :finding_statistics,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector that is associated with the IPSet.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute ip_set_id
    #   <p>The unique ID of the IPSet to retrieve.</p>
    #   @return [String]
    class GetIPSetRequest < Struct.new(
      :detector_id,
      :ip_set_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The user-friendly name for the IPSet.</p>
    #   @return [String]
    # @!attribute format
    #   <p>The format of the file that contains the IPSet.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The URI of the file that contains the IPSet.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of IPSet file that was uploaded.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags of the IPSet resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute expected_bucket_owner
    #   <p>The Amazon Web Services account ID that owns the Amazon S3 bucket specified in the <b>location</b> parameter. This field appears 
    #         in the response only if it was provided during IPSet creation or update.</p>
    #   @return [String]
    class GetIPSetResponse < Struct.new(
      :name,
      :format,
      :location,
      :status,
      :tags,
      :expected_bucket_owner,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class GetInvitationsCountRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute invitations_count
    #   <p>The number of received invitations.</p>
    #   @return [Integer]
    class GetInvitationsCountResponse < Struct.new(
      :invitations_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute malware_protection_plan_id
    #   <p>A unique identifier associated with Malware Protection plan resource.</p>
    #   @return [String]
    class GetMalwareProtectionPlanRequest < Struct.new(
      :malware_protection_plan_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>Amazon Resource Name (ARN) of the protected resource.</p>
    #   @return [String]
    # @!attribute role
    #   <p>Amazon Resource Name (ARN) of the IAM role that includes the permissions to scan and 
    #         add tags to the associated protected resource.</p>
    #   @return [String]
    # @!attribute protected_resource
    #   <p>Information about the protected resource that is associated with the created 
    #         Malware Protection plan. Presently, <code>S3Bucket</code> is the only supported 
    #         protected resource.</p>
    #   @return [Types::CreateProtectedResource]
    # @!attribute actions
    #   <p>Information about whether the tags will be added to the S3 object after scanning.</p>
    #   @return [Types::MalwareProtectionPlanActions]
    # @!attribute created_at
    #   <p>The timestamp when the Malware Protection plan resource was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>Malware Protection plan status.</p>
    #   @return [String]
    # @!attribute status_reasons
    #   <p>Information about the issue code and message associated to the status of
    #       your Malware Protection plan.</p>
    #   @return [Array<Types::MalwareProtectionPlanStatusReason>]
    # @!attribute tags
    #   <p>Tags added to the Malware Protection plan resource.</p>
    #   @return [Hash<String, String>]
    class GetMalwareProtectionPlanResponse < Struct.new(
      :arn,
      :role,
      :protected_resource,
      :actions,
      :created_at,
      :status,
      :status_reasons,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector that is associated with this scan.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    class GetMalwareScanSettingsRequest < Struct.new(
      :detector_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute scan_resource_criteria
    #   <p>Represents the criteria to be used in the filter for scanning resources.</p>
    #   @return [Types::ScanResourceCriteria]
    # @!attribute ebs_snapshot_preservation
    #   <p>An enum value representing possible snapshot preservation settings.</p>
    #   @return [String]
    class GetMalwareScanSettingsResponse < Struct.new(
      :scan_resource_criteria,
      :ebs_snapshot_preservation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @deprecated
    #   This input is deprecated, use GetAdministratorAccountRequest instead
    # @!attribute detector_id
    #   <p>The unique ID of the detector of the GuardDuty member account.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    class GetMasterAccountRequest < Struct.new(
      :detector_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @deprecated
    #   This output is deprecated, use GetAdministratorAccountResponse instead
    # @!attribute master
    #   <p>The administrator account details.</p>
    #   @return [Types::Master]
    class GetMasterAccountResponse < Struct.new(
      :master,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The detector ID for the administrator account.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute account_ids
    #   <p>A list of member account IDs.</p>
    #   @return [Array<String>]
    class GetMemberDetectorsRequest < Struct.new(
      :detector_id,
      :account_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute member_data_source_configurations
    #   <p>An object that describes which data sources are enabled for a member account.</p>
    #   @return [Array<Types::MemberDataSourceConfiguration>]
    # @!attribute unprocessed_accounts
    #   <p>A list of member account IDs that were unable to be processed along with an explanation
    #         for why they were not processed.</p>
    #   @return [Array<Types::UnprocessedAccount>]
    class GetMemberDetectorsResponse < Struct.new(
      :member_data_source_configurations,
      :unprocessed_accounts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector of the GuardDuty account whose members you want to
    #         retrieve.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute account_ids
    #   <p>A list of account IDs of the GuardDuty member accounts that you want to describe.</p>
    #   @return [Array<String>]
    class GetMembersRequest < Struct.new(
      :detector_id,
      :account_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute members
    #   <p>A list of members.</p>
    #   @return [Array<Types::Member>]
    # @!attribute unprocessed_accounts
    #   <p>A list of objects that contain the unprocessed account and a result string that explains
    #         why it was unprocessed.</p>
    #   @return [Array<Types::UnprocessedAccount>]
    class GetMembersResponse < Struct.new(
      :members,
      :unprocessed_accounts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_details
    #   <p>Information about the statistics report for your organization.</p>
    #   @return [Types::OrganizationDetails]
    class GetOrganizationStatisticsResponse < Struct.new(
      :organization_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector of the GuardDuty member account.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute account_ids
    #   <p>A list of account identifiers of the GuardDuty member account.</p>
    #   @return [Array<String>]
    class GetRemainingFreeTrialDaysRequest < Struct.new(
      :detector_id,
      :account_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accounts
    #   <p>The member accounts which were included in a request and were processed
    #         successfully.</p>
    #   @return [Array<Types::AccountFreeTrialInfo>]
    # @!attribute unprocessed_accounts
    #   <p>The member account that was included in a request but for which the request could not be
    #         processed.</p>
    #   @return [Array<Types::UnprocessedAccount>]
    class GetRemainingFreeTrialDaysResponse < Struct.new(
      :accounts,
      :unprocessed_accounts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector that is associated with the threatIntelSet.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute threat_intel_set_id
    #   <p>The unique ID of the threatIntelSet that you want to get.</p>
    #   @return [String]
    class GetThreatIntelSetRequest < Struct.new(
      :detector_id,
      :threat_intel_set_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A user-friendly ThreatIntelSet name displayed in all findings that are generated by
    #         activity that involves IP addresses included in this ThreatIntelSet.</p>
    #   @return [String]
    # @!attribute format
    #   <p>The format of the threatIntelSet.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The URI of the file that contains the ThreatIntelSet. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of threatIntelSet file uploaded.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags of the threat list resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute expected_bucket_owner
    #   <p>The Amazon Web Services account ID that owns the Amazon S3 bucket specified in the <b>location</b> parameter. 
    #         This field appears in the response only if it was provided during ThreatIntelSet creation or update.</p>
    #   @return [String]
    class GetThreatIntelSetResponse < Struct.new(
      :name,
      :format,
      :location,
      :status,
      :tags,
      :expected_bucket_owner,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The ID of the detector that specifies the GuardDuty service whose usage statistics you
    #         want to retrieve.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute usage_statistic_type
    #   <p>The type of usage statistics to retrieve.</p>
    #   @return [String]
    # @!attribute usage_criteria
    #   <p>Represents the criteria used for querying usage.</p>
    #   @return [Types::UsageCriteria]
    # @!attribute unit
    #   <p>The currency unit you would like to view your usage statistics in. Current valid values
    #         are USD.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of
    #         this parameter to null for the first request to a list action. For subsequent calls, use the
    #         NextToken value returned from the previous request to continue listing results after the first
    #         page.</p>
    #   @return [String]
    class GetUsageStatisticsRequest < Struct.new(
      :detector_id,
      :usage_statistic_type,
      :usage_criteria,
      :unit,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute usage_statistics
    #   <p>The usage statistics object. If a UsageStatisticType was provided, the objects
    #         representing other types will be null.</p>
    #   @return [Types::UsageStatistics]
    # @!attribute next_token
    #   <p>The pagination parameter to be used on the next list operation to retrieve more
    #         items.</p>
    #   @return [String]
    class GetUsageStatisticsResponse < Struct.new(
      :usage_statistics,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details of the highest severity threat detected during scan and number of
    #       infected files.</p>
    # @!attribute severity
    #   <p>Severity level of the highest severity threat detected.</p>
    #   @return [String]
    # @!attribute threat_name
    #   <p>Threat name of the highest severity threat detected as part of the malware scan.</p>
    #   @return [String]
    # @!attribute count
    #   <p>Total number of infected files with the highest severity threat detected.</p>
    #   @return [Integer]
    class HighestSeverityThreatDetails < Struct.new(
      :severity,
      :threat_name,
      :count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a pre-existing file or directory on the host machine that the volume maps
    #       to.</p>
    # @!attribute path
    #   <p>Path of the file or directory on the host that the volume maps to.</p>
    #   @return [String]
    class HostPath < Struct.new(
      :path,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the EC2 instance profile.</p>
    # @!attribute arn
    #   <p>The profile ARN of the EC2 instance.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The profile ID of the EC2 instance.</p>
    #   @return [String]
    class IamInstanceProfile < Struct.new(
      :arn,
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the impersonated user.</p>
    # @!attribute username
    #   <p>Information about the <code>username</code> that was being impersonated.</p>
    #   @return [String]
    # @!attribute groups
    #   <p>The <code>group</code> to which the user name belongs.</p>
    #   @return [Array<String>]
    class ImpersonatedUser < Struct.new(
      :username,
      :groups,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the indicators that include a set of 
    #        signals observed in an attack sequence.</p>
    # @!attribute key
    #   <p>Specific indicator keys observed in the attack sequence. For description of the valid values for key,
    #           see <a href="https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_findings-summary.html#guardduty-extended-threat-detection-attack-sequence-finding-details">Attack sequence finding details</a> in the <i>Amazon GuardDuty User Guide</i>.</p>
    #   @return [String]
    # @!attribute values
    #   <p>Values associated with each indicator key. For example, if the indicator key is
    #           <code>SUSPICIOUS_NETWORK</code>, then the value will be the name of the network. If
    #           the indicator key is <code>ATTACK_TACTIC</code>, then the value will be one of the MITRE tactics. </p>
    #   @return [Array<String>]
    # @!attribute title
    #   <p>Title describing the indicator.</p>
    #   @return [String]
    class Indicator < Struct.new(
      :key,
      :values,
      :title,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the details of an instance.</p>
    # @!attribute availability_zone
    #   <p>The Availability Zone of the EC2 instance.</p>
    #   @return [String]
    # @!attribute iam_instance_profile
    #   <p>The profile information of the EC2 instance.</p>
    #   @return [Types::IamInstanceProfile]
    # @!attribute image_description
    #   <p>The image description of the EC2 instance.</p>
    #   @return [String]
    # @!attribute image_id
    #   <p>The image ID of the EC2 instance.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The ID of the EC2 instance.</p>
    #   @return [String]
    # @!attribute instance_state
    #   <p>The state of the EC2 instance.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The type of the EC2 instance.</p>
    #   @return [String]
    # @!attribute outpost_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services Outpost. Only applicable to Amazon Web Services Outposts
    #         instances.</p>
    #   @return [String]
    # @!attribute launch_time
    #   <p>The launch time of the EC2 instance.</p>
    #   @return [String]
    # @!attribute network_interfaces
    #   <p>The elastic network interface information of the EC2 instance.</p>
    #   @return [Array<Types::NetworkInterface>]
    # @!attribute platform
    #   <p>The platform of the EC2 instance.</p>
    #   @return [String]
    # @!attribute product_codes
    #   <p>The product code of the EC2 instance.</p>
    #   @return [Array<Types::ProductCode>]
    # @!attribute tags
    #   <p>The tags of the EC2 instance.</p>
    #   @return [Array<Types::Tag>]
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
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An internal server error exception object.</p>
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The error type.</p>
    #   @return [String]
    class InternalServerErrorException < Struct.new(
      :message,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the invitation to become a member account.</p>
    # @!attribute account_id
    #   <p>The ID of the account that the invitation was sent from.</p>
    #   @return [String]
    # @!attribute invitation_id
    #   <p>The ID of the invitation. This value is used to validate the inviter account to the member
    #         account.</p>
    #   @return [String]
    # @!attribute relationship_status
    #   <p>The status of the relationship between the inviter and invitee accounts.</p>
    #   @return [String]
    # @!attribute invited_at
    #   <p>The timestamp when the invitation was sent.</p>
    #   @return [String]
    class Invitation < Struct.new(
      :account_id,
      :invitation_id,
      :relationship_status,
      :invited_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector of the GuardDuty account with which you want to invite members.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute account_ids
    #   <p>A list of account IDs of the accounts that you want to invite to GuardDuty as
    #         members.</p>
    #   @return [Array<String>]
    # @!attribute disable_email_notification
    #   <p>A Boolean value that specifies whether you want to disable email notification to the
    #         accounts that you are inviting to GuardDuty as members.</p>
    #   @return [Boolean]
    # @!attribute message
    #   <p>The invitation message that you want to send to the accounts that you're inviting to
    #         GuardDuty as members.</p>
    #   @return [String]
    class InviteMembersRequest < Struct.new(
      :detector_id,
      :account_ids,
      :disable_email_notification,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute unprocessed_accounts
    #   <p>A list of objects that contain the unprocessed account and a result string that explains
    #         why it was unprocessed.</p>
    #   @return [Array<Types::UnprocessedAccount>]
    class InviteMembersResponse < Struct.new(
      :unprocessed_accounts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the nested item path and hash of the protected
    #       resource.</p>
    # @!attribute nested_item_path
    #   <p>The nested item path where the infected file was found.</p>
    #   @return [String]
    # @!attribute hash
    #   <p>The hash value of the infected resource.</p>
    #   @return [String]
    class ItemPath < Struct.new(
      :nested_item_path,
      :hash,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the Kubernetes API call action described in this finding.</p>
    # @!attribute request_uri
    #   <p>The Kubernetes API request URI.</p>
    #   @return [String]
    # @!attribute verb
    #   <p>The Kubernetes API request HTTP verb.</p>
    #   @return [String]
    # @!attribute source_ips
    #   <p>The IP of the Kubernetes API caller and the IPs of any proxies or load balancers between
    #         the caller and the API endpoint.</p>
    #   @return [Array<String>]
    # @!attribute user_agent
    #   <p>The user agent of the caller of the Kubernetes API.</p>
    #   @return [String]
    # @!attribute remote_ip_details
    #   <p>Contains information about the remote IP address of the connection.</p>
    #   @return [Types::RemoteIpDetails]
    # @!attribute status_code
    #   <p>The resulting HTTP response code of the Kubernetes API call action.</p>
    #   @return [Integer]
    # @!attribute parameters
    #   <p>Parameters related to the Kubernetes API call action.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>The resource component in the Kubernetes API call action.</p>
    #   @return [String]
    # @!attribute subresource
    #   <p>The name of the sub-resource in the Kubernetes API call action.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The name of the namespace where the Kubernetes API call action takes place.</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of the resource in the Kubernetes API call action.</p>
    #   @return [String]
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
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes whether Kubernetes audit logs are enabled as a data source.</p>
    # @!attribute enable
    #   <p>The status of Kubernetes audit logs as a data source.</p>
    #   @return [Boolean]
    class KubernetesAuditLogsConfiguration < Struct.new(
      :enable,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes whether Kubernetes audit logs are enabled as a data source.</p>
    # @!attribute status
    #   <p>A value that describes whether Kubernetes audit logs are enabled as a data source.</p>
    #   @return [String]
    class KubernetesAuditLogsConfigurationResult < Struct.new(
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes whether any Kubernetes data sources are enabled.</p>
    # @!attribute audit_logs
    #   <p>The status of Kubernetes audit logs as a data source.</p>
    #   @return [Types::KubernetesAuditLogsConfiguration]
    class KubernetesConfiguration < Struct.new(
      :audit_logs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes whether any Kubernetes logs will be enabled as a data source.</p>
    # @!attribute audit_logs
    #   <p>Describes whether Kubernetes audit logs are enabled as a data source.</p>
    #   @return [Types::KubernetesAuditLogsConfigurationResult]
    class KubernetesConfigurationResult < Struct.new(
      :audit_logs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides details about the Kubernetes resources when it is enabled as a data
    #       source.</p>
    # @!attribute audit_logs
    #   <p>Describes whether Kubernetes audit logs are enabled as a data source.</p>
    #   @return [Types::DataSourceFreeTrial]
    class KubernetesDataSourceFreeTrial < Struct.new(
      :audit_logs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about Kubernetes resources such as a Kubernetes user or workload resource involved
    #       in a Kubernetes finding.</p>
    # @!attribute kubernetes_user_details
    #   <p>Details about the Kubernetes user involved in a Kubernetes finding.</p>
    #   @return [Types::KubernetesUserDetails]
    # @!attribute kubernetes_workload_details
    #   <p>Details about the Kubernetes workload involved in a Kubernetes finding.</p>
    #   @return [Types::KubernetesWorkloadDetails]
    class KubernetesDetails < Struct.new(
      :kubernetes_user_details,
      :kubernetes_workload_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the Kubernetes API for which you check if you have permission to call.</p>
    # @!attribute verb
    #   <p>The verb component of the Kubernetes API call. For example, when you check whether or not you have the permission
    #       to call the <code>CreatePod</code> API, the verb component will be <code>Create</code>.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>The Kubernetes resource with which your Kubernetes API call will interact.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace where the Kubernetes API action will take place.</p>
    #   @return [String]
    # @!attribute allowed
    #   <p>Information whether the user has the permission to call the Kubernetes API.</p>
    #   @return [Boolean]
    class KubernetesPermissionCheckedDetails < Struct.new(
      :verb,
      :resource,
      :namespace,
      :allowed,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the role binding that grants the permission defined in a Kubernetes role.</p>
    # @!attribute kind
    #   <p>The kind of the role. For role binding, this value will be <code>RoleBinding</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the <code>RoleBinding</code>.</p>
    #   @return [String]
    # @!attribute uid
    #   <p>The unique identifier of the role binding.</p>
    #   @return [String]
    # @!attribute role_ref_name
    #   <p>The name of the role being referenced. This must match the name of the <code>Role</code>
    #       or <code>ClusterRole</code> that you want to bind to.</p>
    #   @return [String]
    # @!attribute role_ref_kind
    #   <p>The type of the role being referenced. This could be either <code>Role</code> or 
    #       <code>ClusterRole</code>.</p>
    #   @return [String]
    class KubernetesRoleBindingDetails < Struct.new(
      :kind,
      :name,
      :uid,
      :role_ref_name,
      :role_ref_kind,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the Kubernetes role name and role type.</p>
    # @!attribute kind
    #   <p>The kind of role. For this API, the value of <code>kind</code> will be <code>Role</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Kubernetes role.</p>
    #   @return [String]
    # @!attribute uid
    #   <p>The unique identifier of the Kubernetes role name.</p>
    #   @return [String]
    class KubernetesRoleDetails < Struct.new(
      :kind,
      :name,
      :uid,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the Kubernetes user involved in a Kubernetes finding.</p>
    # @!attribute username
    #   <p>The username of the user who called the Kubernetes API.</p>
    #   @return [String]
    # @!attribute uid
    #   <p>The user ID of the user who called the Kubernetes API.</p>
    #   @return [String]
    # @!attribute groups
    #   <p>The groups that include the user who called the Kubernetes API.</p>
    #   @return [Array<String>]
    # @!attribute session_name
    #   <p>Entity that assumes the IAM role 
    #         when Kubernetes RBAC permissions are assigned to that role.</p>
    #   @return [Array<String>]
    # @!attribute impersonated_user
    #   <p>Information about the impersonated user.</p>
    #   @return [Types::ImpersonatedUser]
    class KubernetesUserDetails < Struct.new(
      :username,
      :uid,
      :groups,
      :session_name,
      :impersonated_user,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about Kubernetes workloads involved in a GuardDuty finding,
    #       including pods, deployments, and other Kubernetes resources.</p>
    # @!attribute container_uids
    #   <p>A list of unique identifiers for the containers that are part of the Kubernetes workload.</p>
    #   @return [Array<String>]
    # @!attribute namespace
    #   <p>The Kubernetes namespace in which the workload is running, providing logical isolation within the cluster.</p>
    #   @return [String]
    # @!attribute kubernetes_resources_types
    #   <p>The types of Kubernetes resources involved in the workload.</p>
    #   @return [String]
    class KubernetesWorkload < Struct.new(
      :container_uids,
      :namespace,
      :kubernetes_resources_types,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the Kubernetes workload involved in a Kubernetes finding.</p>
    # @!attribute name
    #   <p>Kubernetes workload name.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Kubernetes workload type (e.g. Pod, Deployment, etc.).</p>
    #   @return [String]
    # @!attribute uid
    #   <p>Kubernetes workload ID.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>Kubernetes namespace that the workload is part of.</p>
    #   @return [String]
    # @!attribute host_network
    #   <p>Whether the hostNetwork flag is enabled for the pods included in the workload.</p>
    #   @return [Boolean]
    # @!attribute containers
    #   <p>Containers running as part of the Kubernetes workload.</p>
    #   @return [Array<Types::Container>]
    # @!attribute volumes
    #   <p>Volumes used by the Kubernetes workload.</p>
    #   @return [Array<Types::Volume>]
    # @!attribute service_account_name
    #   <p>The service account name that is associated with a Kubernetes workload.</p>
    #   @return [String]
    # @!attribute host_ipc
    #   <p>Whether the host IPC flag is enabled for the pods in the workload.</p>
    #   @return [Boolean]
    # @!attribute host_pid
    #   <p>Whether the host PID flag is enabled for the pods in the workload. </p>
    #   @return [Boolean]
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
      :host_pid,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the Lambda function involved in the finding.</p>
    # @!attribute function_arn
    #   <p>Amazon Resource Name (ARN) of the Lambda function.</p>
    #   @return [String]
    # @!attribute function_name
    #   <p>Name of the Lambda function.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description of the Lambda function.</p>
    #   @return [String]
    # @!attribute last_modified_at
    #   <p>The timestamp when the Lambda function was last modified. This field is in the UTC date string 
    #         format <code>(2023-03-22T19:37:20.168Z)</code>.</p>
    #   @return [Time]
    # @!attribute revision_id
    #   <p>The revision ID of the Lambda function version.</p>
    #   @return [String]
    # @!attribute function_version
    #   <p>The version of the Lambda function.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The execution role of the Lambda function.</p>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>Amazon Virtual Private Cloud configuration details associated with your Lambda function.</p>
    #   @return [Types::VpcConfig]
    # @!attribute tags
    #   <p>A list of tags attached to this resource, listed in the format of 
    #         <code>key</code>:<code>value</code> pair.</p>
    #   @return [Array<Types::Tag>]
    class LambdaDetails < Struct.new(
      :function_arn,
      :function_name,
      :description,
      :last_modified_at,
      :revision_id,
      :function_version,
      :role,
      :vpc_config,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the runtime process details.</p>
    # @!attribute start_time
    #   <p>The time when the process started. This is in UTC format.</p>
    #   @return [Time]
    # @!attribute namespace_pid
    #   <p>The process ID of the child process.</p>
    #   @return [Integer]
    # @!attribute user_id
    #   <p>The user ID of the user that executed the process.</p>
    #   @return [Integer]
    # @!attribute name
    #   <p>The name of the process.</p>
    #   @return [String]
    # @!attribute pid
    #   <p>The ID of the process.</p>
    #   @return [Integer]
    # @!attribute uuid
    #   <p>The unique ID assigned to the process by GuardDuty.</p>
    #   @return [String]
    # @!attribute executable_path
    #   <p>The absolute path of the process executable file.</p>
    #   @return [String]
    # @!attribute euid
    #   <p>The effective user ID that was used to execute the process.</p>
    #   @return [Integer]
    # @!attribute parent_uuid
    #   <p>The unique ID of the parent process. This ID is assigned to the parent process by
    #         GuardDuty.</p>
    #   @return [String]
    class LineageObject < Struct.new(
      :start_time,
      :namespace_pid,
      :user_id,
      :name,
      :pid,
      :uuid,
      :executable_path,
      :euid,
      :parent_uuid,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector whose coverage details you want to retrieve.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of
    #         this parameter to null for the first request to a list action. For subsequent calls, use the
    #         NextToken value returned from the previous request to continue listing results after the first
    #         page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #   @return [Integer]
    # @!attribute filter_criteria
    #   <p>Represents the criteria used to filter the coverage details.</p>
    #   @return [Types::CoverageFilterCriteria]
    # @!attribute sort_criteria
    #   <p>Represents the criteria used to sort the coverage details.</p>
    #   @return [Types::CoverageSortCriteria]
    class ListCoverageRequest < Struct.new(
      :detector_id,
      :next_token,
      :max_results,
      :filter_criteria,
      :sort_criteria,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resources
    #   <p>A list of resources and their attributes providing cluster details.</p>
    #   @return [Array<Types::CoverageResource>]
    # @!attribute next_token
    #   <p>The pagination parameter to be used on the next list operation to retrieve more
    #         items.</p>
    #   @return [String]
    class ListCoverageResponse < Struct.new(
      :resources,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>You can use this parameter to indicate the maximum number of items that you want in the
    #         response. The default value is 50. The maximum value is 50.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter to
    #         null on your first call to the list action. For subsequent calls to the action, fill nextToken
    #         in the request with the value of NextToken from the previous response to continue listing
    #         data.</p>
    #   @return [String]
    class ListDetectorsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_ids
    #   <p>A list of detector IDs.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The pagination parameter to be used on the next list operation to retrieve more
    #         items.</p>
    #   @return [String]
    class ListDetectorsResponse < Struct.new(
      :detector_ids,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector that is associated with the filter.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>You can use this parameter to indicate the maximum number of items that you want in the
    #         response. The default value is 50. The maximum value is 50.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter to
    #         null on your first call to the list action. For subsequent calls to the action, fill nextToken
    #         in the request with the value of NextToken from the previous response to continue listing
    #         data.</p>
    #   @return [String]
    class ListFiltersRequest < Struct.new(
      :detector_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter_names
    #   <p>A list of filter names.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The pagination parameter to be used on the next list operation to retrieve more
    #         items.</p>
    #   @return [String]
    class ListFiltersResponse < Struct.new(
      :filter_names,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The ID of the detector that specifies the GuardDuty service whose findings you want to
    #         list.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute finding_criteria
    #   <p>Represents the criteria used for querying findings. Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>JSON field name</p>
    #               </li>
    #               <li>
    #                  <p>accountId</p>
    #               </li>
    #               <li>
    #                  <p>region</p>
    #               </li>
    #               <li>
    #                  <p>confidence</p>
    #               </li>
    #               <li>
    #                  <p>id</p>
    #               </li>
    #               <li>
    #                  <p>resource.accessKeyDetails.accessKeyId</p>
    #               </li>
    #               <li>
    #                  <p>resource.accessKeyDetails.principalId</p>
    #               </li>
    #               <li>
    #                  <p>resource.accessKeyDetails.userName</p>
    #               </li>
    #               <li>
    #                  <p>resource.accessKeyDetails.userType</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.iamInstanceProfile.id</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.imageId</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.instanceId</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.ipv6Addresses</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.privateIpAddresses.privateIpAddress</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.publicDnsName</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.publicIp</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.securityGroups.groupId</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.securityGroups.groupName</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.subnetId</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.vpcId</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.tags.key</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.tags.value</p>
    #               </li>
    #               <li>
    #                  <p>resource.resourceType</p>
    #               </li>
    #               <li>
    #                  <p>service.action.actionType</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.api</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.callerType</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.remoteIpDetails.city.cityName</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.remoteIpDetails.country.countryName</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.remoteIpDetails.ipAddressV4</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.remoteIpDetails.organization.asn</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.remoteIpDetails.organization.asnOrg</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.serviceName</p>
    #               </li>
    #               <li>
    #                  <p>service.action.dnsRequestAction.domain</p>
    #               </li>
    #               <li>
    #                  <p>service.action.dnsRequestAction.domainWithSuffix</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.blocked</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.connectionDirection</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.localPortDetails.port</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.protocol</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.remoteIpDetails.country.countryName</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.remoteIpDetails.ipAddressV4</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.remoteIpDetails.organization.asn</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.remoteIpDetails.organization.asnOrg</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.remotePortDetails.port</p>
    #               </li>
    #               <li>
    #                  <p>service.additionalInfo.threatListName</p>
    #               </li>
    #               <li>
    #                  <p>service.archived</p>
    #                  <p>When this attribute is set to 'true', only archived findings are listed. When it's set
    #             to 'false', only unarchived findings are listed. When this attribute is not set, all
    #             existing findings are listed.</p>
    #               </li>
    #               <li>
    #                  <p>service.ebsVolumeScanDetails.scanId</p>
    #               </li>
    #               <li>
    #                  <p>service.resourceRole</p>
    #               </li>
    #               <li>
    #                  <p>severity</p>
    #               </li>
    #               <li>
    #                  <p>type</p>
    #               </li>
    #               <li>
    #                  <p>updatedAt</p>
    #                  <p>Type: Timestamp in Unix Epoch millisecond format: 1486685375000</p>
    #               </li>
    #            </ul>
    #   @return [Types::FindingCriteria]
    # @!attribute sort_criteria
    #   <p>Represents the criteria used for sorting findings.</p>
    #   @return [Types::SortCriteria]
    # @!attribute max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the
    #         response. The default value is 50. The maximum value is 50.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter to
    #         null on your first call to the list action. For subsequent calls to the action, fill nextToken
    #         in the request with the value of NextToken from the previous response to continue listing
    #         data.</p>
    #   @return [String]
    class ListFindingsRequest < Struct.new(
      :detector_id,
      :finding_criteria,
      :sort_criteria,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute finding_ids
    #   <p>The IDs of the findings that you're listing.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The pagination parameter to be used on the next list operation to retrieve more
    #         items.</p>
    #   @return [String]
    class ListFindingsResponse < Struct.new(
      :finding_ids,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector that is associated with IPSet.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the
    #         response. The default value is 50. The maximum value is 50.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter to
    #         null on your first call to the list action. For subsequent calls to the action, fill nextToken
    #         in the request with the value of NextToken from the previous response to continue listing
    #         data.</p>
    #   @return [String]
    class ListIPSetsRequest < Struct.new(
      :detector_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ip_set_ids
    #   <p>The IDs of the IPSet resources.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The pagination parameter to be used on the next list operation to retrieve more
    #         items.</p>
    #   @return [String]
    class ListIPSetsResponse < Struct.new(
      :ip_set_ids,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>You can use this parameter to indicate the maximum number of items that you want in the
    #         response. The default value is 50. The maximum value is 50.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter to
    #         null on your first call to the list action. For subsequent calls to the action, fill nextToken
    #         in the request with the value of NextToken from the previous response to continue listing
    #         data.</p>
    #   @return [String]
    class ListInvitationsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute invitations
    #   <p>A list of invitation descriptions.</p>
    #   @return [Array<Types::Invitation>]
    # @!attribute next_token
    #   <p>The pagination parameter to be used on the next list operation to retrieve more
    #         items.</p>
    #   @return [String]
    class ListInvitationsResponse < Struct.new(
      :invitations,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>You can use this parameter when paginating results. Set the value 
    #         of this parameter to null on your first call to the list action. 
    #         For subsequent calls to the action, fill nextToken in the request 
    #         with the value of <code>NextToken</code> from the previous response to 
    #         continue listing data.</p>
    #   @return [String]
    class ListMalwareProtectionPlansRequest < Struct.new(
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute malware_protection_plans
    #   <p>A list of unique identifiers associated with each Malware Protection plan.</p>
    #   @return [Array<Types::MalwareProtectionPlanSummary>]
    # @!attribute next_token
    #   <p>You can use this parameter when paginating results. Set the value 
    #         of this parameter to null on your first call to the list action. 
    #         For subsequent calls to the action, fill nextToken in the request 
    #         with the value of <code>NextToken</code> from the previous response to 
    #         continue listing data.</p>
    #   @return [String]
    class ListMalwareProtectionPlansResponse < Struct.new(
      :malware_protection_plans,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector that is associated with the member.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the
    #         response. The default value is 50. The maximum value is 50.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter to
    #         null on your first call to the list action. For subsequent calls to the action, fill nextToken
    #         in the request with the value of NextToken from the previous response to continue listing
    #         data.</p>
    #   @return [String]
    # @!attribute only_associated
    #   <p>Specifies whether to only return associated members or to return all members (including
    #         members who haven't been invited yet or have been disassociated). Member accounts must have
    #         been previously associated with the GuardDuty administrator account using <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_CreateMembers.html">
    #                  <code>Create
    #             Members</code>
    #               </a>. </p>
    #   @return [String]
    class ListMembersRequest < Struct.new(
      :detector_id,
      :max_results,
      :next_token,
      :only_associated,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute members
    #   <p>A list of members.</p>
    #            <note>
    #               <p>The values for <code>email</code> and <code>invitedAt</code> are available
    #       only if the member accounts are added by invitation.</p>
    #            </note>
    #   @return [Array<Types::Member>]
    # @!attribute next_token
    #   <p>The pagination parameter to be used on the next list operation to retrieve more
    #         items.</p>
    #   @return [String]
    class ListMembersResponse < Struct.new(
      :members,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of
    #         this parameter to null for the first request to a list action. For subsequent calls, use the
    #           <code>NextToken</code> value returned from the previous request to continue listing results
    #         after the first page.</p>
    #   @return [String]
    class ListOrganizationAdminAccountsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute admin_accounts
    #   <p>A list of accounts configured as GuardDuty delegated administrators.</p>
    #   @return [Array<Types::AdminAccount>]
    # @!attribute next_token
    #   <p>The pagination parameter to be used on the next list operation to retrieve more
    #         items.</p>
    #   @return [String]
    class ListOrganizationAdminAccountsResponse < Struct.new(
      :admin_accounts,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The detector ID for which you want to retrieve the publishing destination.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of
    #         this parameter to null for the first request to a list action. For subsequent calls, use the
    #           <code>NextToken</code> value returned from the previous request to continue listing results
    #         after the first page.</p>
    #   @return [String]
    class ListPublishingDestinationsRequest < Struct.new(
      :detector_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute destinations
    #   <p>A <code>Destinations</code> object that includes information about each publishing
    #         destination returned.</p>
    #   @return [Array<Types::Destination>]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of
    #         this parameter to null for the first request to a list action. For subsequent calls, use the
    #           <code>NextToken</code> value returned from the previous request to continue listing results
    #         after the first page.</p>
    #   @return [String]
    class ListPublishingDestinationsResponse < Struct.new(
      :destinations,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the given GuardDuty resource. </p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags associated with the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector that is associated with the threatIntelSet.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>You can use this parameter to indicate the maximum number of items that you want in the
    #         response. The default value is 50. The maximum value is 50.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>You can use this parameter to paginate results in the response. Set the value of this
    #         parameter to null on your first call to the list action. For subsequent calls to the action,
    #         fill nextToken in the request with the value of NextToken from the previous response to
    #         continue listing data.</p>
    #   @return [String]
    class ListThreatIntelSetsRequest < Struct.new(
      :detector_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute threat_intel_set_ids
    #   <p>The IDs of the ThreatIntelSet resources.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The pagination parameter to be used on the next list operation to retrieve more
    #         items.</p>
    #   @return [String]
    class ListThreatIntelSetsResponse < Struct.new(
      :threat_intel_set_ids,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the local IP address of the connection.</p>
    # @!attribute ip_address_v4
    #   <p>The IPv4 local address of the connection.</p>
    #   @return [String]
    # @!attribute ip_address_v6
    #   <p>The IPv6 local address of the connection.</p>
    #   @return [String]
    class LocalIpDetails < Struct.new(
      :ip_address_v4,
      :ip_address_v6,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the port for the local connection.</p>
    # @!attribute port
    #   <p>The port number of the local connection.</p>
    #   @return [Integer]
    # @!attribute port_name
    #   <p>The port name of the local connection.</p>
    #   @return [String]
    class LocalPortDetails < Struct.new(
      :port,
      :port_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the login attempts.</p>
    # @!attribute user
    #   <p>Indicates the user name which attempted to log in.</p>
    #   @return [String]
    # @!attribute application
    #   <p>Indicates the application name used to attempt log in.</p>
    #   @return [String]
    # @!attribute failed_login_attempts
    #   <p>Represents the sum of failed (unsuccessful) login attempts made to establish a connection
    #         to the database instance.</p>
    #   @return [Integer]
    # @!attribute successful_login_attempts
    #   <p>Represents the sum of successful connections (a correct combination of login attributes)
    #         made to the database instance by the actor.</p>
    #   @return [Integer]
    class LoginAttribute < Struct.new(
      :user,
      :application,
      :failed_login_attempts,
      :successful_login_attempts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes whether Malware Protection will be enabled as a data source.</p>
    # @!attribute scan_ec2_instance_with_findings
    #   <p>Describes the configuration of Malware Protection for EC2 instances with findings.</p>
    #   @return [Types::ScanEc2InstanceWithFindings]
    class MalwareProtectionConfiguration < Struct.new(
      :scan_ec2_instance_with_findings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains information on the status of all Malware Protection data
    #       sources.</p>
    # @!attribute scan_ec2_instance_with_findings
    #   <p>Describes the configuration of Malware Protection for EC2 instances with findings.</p>
    #   @return [Types::ScanEc2InstanceWithFindingsResult]
    # @!attribute service_role
    #   <p>The GuardDuty Malware Protection service role.</p>
    #   @return [String]
    class MalwareProtectionConfigurationResult < Struct.new(
      :scan_ec2_instance_with_findings,
      :service_role,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides details about Malware Protection when it is enabled as a data source.</p>
    # @!attribute scan_ec2_instance_with_findings
    #   <p>Describes whether Malware Protection for EC2 instances with findings is enabled as a data
    #         source.</p>
    #   @return [Types::DataSourceFreeTrial]
    class MalwareProtectionDataSourceFreeTrial < Struct.new(
      :scan_ec2_instance_with_findings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about whether the tags will be added to the S3 object after scanning.</p>
    # @!attribute tagging
    #   <p>Indicates whether the scanned S3 object will have tags about the scan result.</p>
    #   @return [Types::MalwareProtectionPlanTaggingAction]
    class MalwareProtectionPlanActions < Struct.new(
      :tagging,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the issue code and message associated to the status of
    #       your Malware Protection plan.</p>
    # @!attribute code
    #   <p>Issue code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Issue message that specifies the reason. For information
    #         about potential troubleshooting steps, see
    #         <a href="https://docs.aws.amazon.com/guardduty/latest/ug/troubleshoot-s3-malware-protection-status-errors.html">Troubleshooting Malware Protection for S3 status issues</a> in the 
    #         <i>Amazon GuardDuty User Guide</i>.</p>
    #   @return [String]
    class MalwareProtectionPlanStatusReason < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the Malware Protection plan resource.</p>
    # @!attribute malware_protection_plan_id
    #   <p>A unique identifier associated with Malware Protection plan.</p>
    #   @return [String]
    class MalwareProtectionPlanSummary < Struct.new(
      :malware_protection_plan_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about adding tags to the scanned S3 object after the scan result.</p>
    # @!attribute status
    #   <p>Indicates whether or not the tags will added.</p>
    #   @return [String]
    class MalwareProtectionPlanTaggingAction < Struct.new(
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the malware scan that generated a GuardDuty finding.</p>
    # @!attribute threats
    #   <p>Information about the detected threats associated with the
    #         generated GuardDuty finding.</p>
    #   @return [Array<Types::Threat>]
    class MalwareScanDetails < Struct.new(
      :threats,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the administrator account and invitation.</p>
    # @!attribute account_id
    #   <p>The ID of the account used as the administrator account.</p>
    #   @return [String]
    # @!attribute invitation_id
    #   <p>The value used to validate the administrator account to the member account.</p>
    #   @return [String]
    # @!attribute relationship_status
    #   <p>The status of the relationship between the administrator and member accounts.</p>
    #   @return [String]
    # @!attribute invited_at
    #   <p>The timestamp when the invitation was sent.</p>
    #   @return [String]
    class Master < Struct.new(
      :account_id,
      :invitation_id,
      :relationship_status,
      :invited_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the member account. </p>
    # @!attribute account_id
    #   <p>The ID of the member account.</p>
    #   @return [String]
    # @!attribute detector_id
    #   <p>The detector ID of the member account.</p>
    #   @return [String]
    # @!attribute master_id
    #   <p>The administrator account ID.</p>
    #   @return [String]
    # @!attribute email
    #   <p>The email address of the member account.</p>
    #   @return [String]
    # @!attribute relationship_status
    #   <p>The status of the relationship between the member and the administrator.</p>
    #   @return [String]
    # @!attribute invited_at
    #   <p>The timestamp when the invitation was sent.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The last-updated timestamp of the member.</p>
    #   @return [String]
    # @!attribute administrator_id
    #   <p>The administrator account ID.</p>
    #   @return [String]
    class Member < Struct.new(
      :account_id,
      :detector_id,
      :master_id,
      :email,
      :relationship_status,
      :invited_at,
      :updated_at,
      :administrator_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the additional configuration for the member account.</p>
    # @!attribute name
    #   <p>Name of the additional configuration.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of the additional configuration.</p>
    #   @return [String]
    class MemberAdditionalConfiguration < Struct.new(
      :name,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the additional configuration for the member account.</p>
    # @!attribute name
    #   <p>Indicates the name of the additional configuration that is set for the member
    #         account.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates the status of the additional configuration that is set for the member
    #         account.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp at which the additional configuration was set for the member account. This
    #         is in UTC format.</p>
    #   @return [Time]
    class MemberAdditionalConfigurationResult < Struct.new(
      :name,
      :status,
      :updated_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information on which data sources are enabled for a member account.</p>
    # @!attribute account_id
    #   <p>The account ID for the member account.</p>
    #   @return [String]
    # @!attribute data_sources
    #   <p>Contains information on the status of data sources for the account.</p>
    #   @deprecated
    #     This parameter is deprecated, use Features instead
    #   @return [Types::DataSourceConfigurationsResult]
    # @!attribute features
    #   <p>Contains information about the status of the features for the member account.</p>
    #   @return [Array<Types::MemberFeaturesConfigurationResult>]
    class MemberDataSourceConfiguration < Struct.new(
      :account_id,
      :data_sources,
      :features,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the features for the member account.</p>
    # @!attribute name
    #   <p>The name of the feature.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the feature.</p>
    #   @return [String]
    # @!attribute additional_configuration
    #   <p>Additional configuration of the feature for the member account.</p>
    #   @return [Array<Types::MemberAdditionalConfiguration>]
    class MemberFeaturesConfiguration < Struct.new(
      :name,
      :status,
      :additional_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the features for the member account.</p>
    # @!attribute name
    #   <p>Indicates the name of the feature that is enabled for the detector.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates the status of the feature that is enabled for the detector.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp at which the feature object was updated.</p>
    #   @return [Time]
    # @!attribute additional_configuration
    #   <p>Indicates the additional configuration of the feature that is configured for the member
    #         account.</p>
    #   @return [Array<Types::MemberAdditionalConfigurationResult>]
    class MemberFeaturesConfigurationResult < Struct.new(
      :name,
      :status,
      :updated_at,
      :additional_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the network connection.</p>
    # @!attribute direction
    #   <p>The direction in which the network traffic is flowing.</p>
    #   @return [String]
    class NetworkConnection < Struct.new(
      :direction,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the NETWORK_CONNECTION action described in the finding.</p>
    # @!attribute blocked
    #   <p>Indicates whether EC2 blocked the network connection to your instance.</p>
    #   @return [Boolean]
    # @!attribute connection_direction
    #   <p>The network connection direction.</p>
    #   @return [String]
    # @!attribute local_port_details
    #   <p>The local port information of the connection.</p>
    #   @return [Types::LocalPortDetails]
    # @!attribute protocol
    #   <p>The network connection protocol.</p>
    #   @return [String]
    # @!attribute local_ip_details
    #   <p>The local IP information of the connection.</p>
    #   @return [Types::LocalIpDetails]
    # @!attribute local_network_interface
    #   <p>The EC2 instance's local elastic network interface utilized for the connection.</p>
    #   @return [String]
    # @!attribute remote_ip_details
    #   <p>The remote IP information of the connection.</p>
    #   @return [Types::RemoteIpDetails]
    # @!attribute remote_port_details
    #   <p>The remote port information of the connection.</p>
    #   @return [Types::RemotePortDetails]
    class NetworkConnectionAction < Struct.new(
      :blocked,
      :connection_direction,
      :local_port_details,
      :protocol,
      :local_ip_details,
      :local_network_interface,
      :remote_ip_details,
      :remote_port_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about network endpoints that were observed in the attack sequence.</p>
    # @!attribute id
    #   <p>The ID of the network endpoint.</p>
    #   @return [String]
    # @!attribute ip
    #   <p>The IP address associated with the network endpoint.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The domain information for the network endpoint.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port number associated with the network endpoint.</p>
    #   @return [Integer]
    # @!attribute location
    #   <p>Information about the location of the network endpoint.</p>
    #   @return [Types::NetworkGeoLocation]
    # @!attribute autonomous_system
    #   <p>The Autonomous System (AS) of the network endpoint.</p>
    #   @return [Types::AutonomousSystem]
    # @!attribute connection
    #   <p>Information about the network connection.</p>
    #   @return [Types::NetworkConnection]
    class NetworkEndpoint < Struct.new(
      :id,
      :ip,
      :domain,
      :port,
      :location,
      :autonomous_system,
      :connection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about network endpoint location.</p>
    # @!attribute city
    #   <p>The name of the city.</p>
    #   @return [String]
    # @!attribute country
    #   <p>The name of the country.</p>
    #   @return [String]
    # @!attribute latitude
    #   <p>The latitude information of the endpoint location.</p>
    #   @return [Float]
    # @!attribute longitude
    #   <p>The longitude information of the endpoint location.</p>
    #   @return [Float]
    class NetworkGeoLocation < Struct.new(
      :city,
      :country,
      :latitude,
      :longitude,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the elastic network interface of the EC2 instance.</p>
    # @!attribute ipv6_addresses
    #   <p>A list of IPv6 addresses for the EC2 instance.</p>
    #   @return [Array<String>]
    # @!attribute network_interface_id
    #   <p>The ID of the network interface.</p>
    #   @return [String]
    # @!attribute private_dns_name
    #   <p>The private DNS name of the EC2 instance.</p>
    #   @return [String]
    # @!attribute private_ip_address
    #   <p>The private IP address of the EC2 instance.</p>
    #   @return [String]
    # @!attribute private_ip_addresses
    #   <p>Other private IP address information of the EC2 instance.</p>
    #   @return [Array<Types::PrivateIpAddressDetails>]
    # @!attribute public_dns_name
    #   <p>The public DNS name of the EC2 instance.</p>
    #   @return [String]
    # @!attribute public_ip
    #   <p>The public IP address of the EC2 instance.</p>
    #   @return [String]
    # @!attribute security_groups
    #   <p>The security groups associated with the EC2 instance.</p>
    #   @return [Array<Types::SecurityGroup>]
    # @!attribute subnet_id
    #   <p>The subnet ID of the EC2 instance.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The VPC ID of the EC2 instance.</p>
    #   @return [String]
    class NetworkInterface < Struct.new(
      :ipv6_addresses,
      :network_interface_id,
      :private_dns_name,
      :private_ip_address,
      :private_ip_addresses,
      :public_dns_name,
      :public_ip,
      :security_groups,
      :subnet_id,
      :vpc_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the observed behavior.</p>
    # @!attribute text
    #   <p>The text that was unusual.</p>
    #   @return [Array<String>]
    class Observations < Struct.new(
      :text,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the ISP organization of the remote IP address.</p>
    # @!attribute asn
    #   <p>The Autonomous System Number (ASN) of the internet provider of the remote IP
    #         address.</p>
    #   @return [String]
    # @!attribute asn_org
    #   <p>The organization that registered this ASN.</p>
    #   @return [String]
    # @!attribute isp
    #   <p>The ISP information for the internet provider.</p>
    #   @return [String]
    # @!attribute org
    #   <p>The name of the internet provider.</p>
    #   @return [String]
    class Organization < Struct.new(
      :asn,
      :asn_org,
      :isp,
      :org,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of additional configurations which will be configured for the organization. </p>
    #          <p>Additional configuration applies to only GuardDuty Runtime Monitoring protection plan.</p>
    # @!attribute name
    #   <p>The name of the additional configuration that will be configured for the
    #         organization. These values are applicable to only Runtime Monitoring protection plan.</p>
    #   @return [String]
    # @!attribute auto_enable
    #   <p>The status of the additional configuration that will be configured for the
    #         organization. Use one of the following 
    #         values to configure the feature status for the entire organization:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NEW</code>: Indicates that when a new account joins the organization, they will
    #             have the additional configuration enabled automatically. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL</code>: Indicates that all accounts in the organization have 
    #             the additional configuration
    #             enabled automatically. This includes <code>NEW</code> accounts that join the organization
    #             and accounts that may have been suspended or removed from the organization in
    #             GuardDuty.</p>
    #                  <p>It may take up to 24 hours to update the configuration for all the member accounts.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code>: Indicates that the additional configuration will not be 
    #             automatically enabled for any
    #             account in the organization. The administrator must manage the additional configuration 
    #             for each account individually.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class OrganizationAdditionalConfiguration < Struct.new(
      :name,
      :auto_enable,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of additional configuration which will be configured for the organization.</p>
    # @!attribute name
    #   <p>The name of the additional configuration that is configured for the member accounts within
    #         the organization. These values are applicable to only Runtime Monitoring protection plan.</p>
    #   @return [String]
    # @!attribute auto_enable
    #   <p>Describes the status of the additional configuration that is configured for the
    #         member accounts within the organization. One of the following 
    #       values is the status for the entire organization:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NEW</code>: Indicates that when a new account joins the organization, they will
    #             have the additional configuration enabled automatically. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL</code>: Indicates that all accounts in the organization have 
    #             the additional configuration
    #             enabled automatically. This includes <code>NEW</code> accounts that join the organization
    #             and accounts that may have been suspended or removed from the organization in
    #             GuardDuty.</p>
    #                  <p>It may take up to 24 hours to update the configuration for all the member accounts.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code>: Indicates that the additional configuration will not be 
    #             automatically enabled for any
    #             account in the organization. The administrator must manage the additional configuration 
    #             for each account individually.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class OrganizationAdditionalConfigurationResult < Struct.new(
      :name,
      :auto_enable,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains information on which data sources will be configured to be
    #       automatically enabled for new members within the organization.</p>
    # @!attribute s3_logs
    #   <p>Describes whether S3 data event logs are enabled for new members of the
    #         organization.</p>
    #   @return [Types::OrganizationS3LogsConfiguration]
    # @!attribute kubernetes
    #   <p>Describes the configuration of Kubernetes data sources for new members of the
    #         organization.</p>
    #   @return [Types::OrganizationKubernetesConfiguration]
    # @!attribute malware_protection
    #   <p>Describes the configuration of Malware Protection for new members of the
    #         organization.</p>
    #   @return [Types::OrganizationMalwareProtectionConfiguration]
    class OrganizationDataSourceConfigurations < Struct.new(
      :s3_logs,
      :kubernetes,
      :malware_protection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains information on which data sources are automatically enabled for
    #       new members within the organization.</p>
    # @!attribute s3_logs
    #   <p>Describes whether S3 data event logs are enabled as a data source.</p>
    #   @return [Types::OrganizationS3LogsConfigurationResult]
    # @!attribute kubernetes
    #   <p>Describes the configuration of Kubernetes data sources.</p>
    #   @return [Types::OrganizationKubernetesConfigurationResult]
    # @!attribute malware_protection
    #   <p>Describes the configuration of Malware Protection data source for an organization.</p>
    #   @return [Types::OrganizationMalwareProtectionConfigurationResult]
    class OrganizationDataSourceConfigurationsResult < Struct.new(
      :s3_logs,
      :kubernetes,
      :malware_protection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about GuardDuty coverage statistics for members
    #       in your Amazon Web Services organization.</p>
    # @!attribute updated_at
    #   <p>The timestamp at which the organization statistics
    #         was last updated. This is in
    #         UTC format.</p>
    #   @return [Time]
    # @!attribute organization_statistics
    #   <p>Information about the GuardDuty coverage statistics 
    #         for members in your Amazon Web Services organization.</p>
    #   @return [Types::OrganizationStatistics]
    class OrganizationDetails < Struct.new(
      :updated_at,
      :organization_statistics,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Organization-wide EBS volumes scan configuration.</p>
    # @!attribute auto_enable
    #   <p>Whether scanning EBS volumes should be auto-enabled for new members joining the
    #         organization.</p>
    #   @return [Boolean]
    class OrganizationEbsVolumes < Struct.new(
      :auto_enable,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains information on the status of whether EBS volumes scanning will be
    #       enabled as a data source for an organization.</p>
    # @!attribute auto_enable
    #   <p>An object that contains the status of whether scanning EBS volumes should be auto-enabled
    #         for new members joining the organization.</p>
    #   @return [Boolean]
    class OrganizationEbsVolumesResult < Struct.new(
      :auto_enable,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of features which will be configured for the organization.</p>
    # @!attribute name
    #   <p>The name of the feature that will be configured for the organization.</p>
    #   @return [String]
    # @!attribute auto_enable
    #   <p>Describes the status of the feature that is configured for the
    #         member accounts within the organization. One of the following 
    #         values is the status for the entire organization:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NEW</code>: Indicates that when a new account joins the organization, they will
    #             have the feature enabled automatically. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL</code>: Indicates that all accounts in the organization have the feature
    #             enabled automatically. This includes <code>NEW</code> accounts that join the organization
    #             and accounts that may have been suspended or removed from the organization in
    #             GuardDuty.</p>
    #                  <p>It may take up to 24 hours to update the configuration for all the member accounts.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code>: Indicates that the feature will not be 
    #             automatically enabled for any
    #             account in the organization. The administrator must manage the feature
    #             for each account individually.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute additional_configuration
    #   <p>The additional information that will be configured for the organization.</p>
    #   @return [Array<Types::OrganizationAdditionalConfiguration>]
    class OrganizationFeatureConfiguration < Struct.new(
      :name,
      :auto_enable,
      :additional_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of features which will be configured for the organization.</p>
    # @!attribute name
    #   <p>The name of the feature that is configured for the member accounts within the
    #         organization.</p>
    #   @return [String]
    # @!attribute auto_enable
    #   <p>Describes the status of the feature that is configured for the member accounts within
    #         the organization.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NEW</code>: Indicates that when a new account joins the organization, they will
    #             have the feature enabled automatically. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL</code>: Indicates that all accounts in the organization have the feature 
    #             enabled automatically. This includes <code>NEW</code> accounts that join the organization
    #             and accounts that may have been suspended or removed from the organization in
    #             GuardDuty.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code>: Indicates that the feature will not be automatically enabled for any
    #             account in the organization. In this case, each account will be managed individually 
    #             by the
    #             administrator.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute additional_configuration
    #   <p>The additional configuration that is configured for the member accounts within the
    #         organization.</p>
    #   @return [Array<Types::OrganizationAdditionalConfigurationResult>]
    class OrganizationFeatureConfigurationResult < Struct.new(
      :name,
      :auto_enable,
      :additional_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the number of accounts
    #       that have enabled a specific feature.</p>
    # @!attribute name
    #   <p>Name of the feature.</p>
    #   @return [String]
    # @!attribute enabled_accounts_count
    #   <p>Total number of accounts that have enabled a specific
    #         feature.</p>
    #   @return [Integer]
    # @!attribute additional_configuration
    #   <p>Name of the additional configuration.</p>
    #   @return [Array<Types::OrganizationFeatureStatisticsAdditionalConfiguration>]
    class OrganizationFeatureStatistics < Struct.new(
      :name,
      :enabled_accounts_count,
      :additional_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the coverage 
    #       statistic for the additional 
    #     configuration of the feature.</p>
    # @!attribute name
    #   <p>Name of the additional configuration within a feature.</p>
    #   @return [String]
    # @!attribute enabled_accounts_count
    #   <p>Total number of accounts that have enabled the additional
    #         configuration.</p>
    #   @return [Integer]
    class OrganizationFeatureStatisticsAdditionalConfiguration < Struct.new(
      :name,
      :enabled_accounts_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Organization-wide Kubernetes audit logs configuration.</p>
    # @!attribute auto_enable
    #   <p>A value that contains information on whether Kubernetes audit logs should be enabled
    #         automatically as a data source for the organization.</p>
    #   @return [Boolean]
    class OrganizationKubernetesAuditLogsConfiguration < Struct.new(
      :auto_enable,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The current configuration of Kubernetes audit logs as a data source for the
    #       organization.</p>
    # @!attribute auto_enable
    #   <p>Whether Kubernetes audit logs data source should be auto-enabled for new members joining
    #         the organization.</p>
    #   @return [Boolean]
    class OrganizationKubernetesAuditLogsConfigurationResult < Struct.new(
      :auto_enable,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Organization-wide Kubernetes data sources configurations.</p>
    # @!attribute audit_logs
    #   <p>Whether Kubernetes audit logs data source should be auto-enabled for new members joining
    #         the organization.</p>
    #   @return [Types::OrganizationKubernetesAuditLogsConfiguration]
    class OrganizationKubernetesConfiguration < Struct.new(
      :audit_logs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The current configuration of all Kubernetes data sources for the organization.</p>
    # @!attribute audit_logs
    #   <p>The current configuration of Kubernetes audit logs as a data source for the
    #         organization.</p>
    #   @return [Types::OrganizationKubernetesAuditLogsConfigurationResult]
    class OrganizationKubernetesConfigurationResult < Struct.new(
      :audit_logs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Organization-wide Malware Protection configurations.</p>
    # @!attribute scan_ec2_instance_with_findings
    #   <p>Whether Malware Protection for EC2 instances with findings should be auto-enabled for new
    #         members joining the organization.</p>
    #   @return [Types::OrganizationScanEc2InstanceWithFindings]
    class OrganizationMalwareProtectionConfiguration < Struct.new(
      :scan_ec2_instance_with_findings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains information on the status of all Malware Protection data source
    #       for an organization.</p>
    # @!attribute scan_ec2_instance_with_findings
    #   <p>Describes the configuration for scanning EC2 instances with findings for an
    #         organization.</p>
    #   @return [Types::OrganizationScanEc2InstanceWithFindingsResult]
    class OrganizationMalwareProtectionConfigurationResult < Struct.new(
      :scan_ec2_instance_with_findings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes whether S3 data event logs will be automatically enabled for new members of the
    #       organization.</p>
    # @!attribute auto_enable
    #   <p>A value that contains information on whether S3 data event logs will be enabled
    #         automatically as a data source for the organization.</p>
    #   @return [Boolean]
    class OrganizationS3LogsConfiguration < Struct.new(
      :auto_enable,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The current configuration of S3 data event logs as a data source for the
    #       organization.</p>
    # @!attribute auto_enable
    #   <p>A value that describes whether S3 data event logs are automatically enabled for new
    #         members of the organization.</p>
    #   @return [Boolean]
    class OrganizationS3LogsConfigurationResult < Struct.new(
      :auto_enable,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Organization-wide EC2 instances with findings scan configuration.</p>
    # @!attribute ebs_volumes
    #   <p>Whether scanning EBS volumes should be auto-enabled for new members joining the
    #         organization.</p>
    #   @return [Types::OrganizationEbsVolumes]
    class OrganizationScanEc2InstanceWithFindings < Struct.new(
      :ebs_volumes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains information on the status of scanning EC2 instances with findings
    #       for an organization.</p>
    # @!attribute ebs_volumes
    #   <p>Describes the configuration for scanning EBS volumes for an organization.</p>
    #   @return [Types::OrganizationEbsVolumesResult]
    class OrganizationScanEc2InstanceWithFindingsResult < Struct.new(
      :ebs_volumes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the coverage statistics of the 
    #       features for the entire 
    #       Amazon Web Services organization.</p>
    #          <p>When you create a new Amazon Web Services organization, it might 
    #       take up to 24 hours to 
    #       generate the statistics summary for this organization.</p>
    # @!attribute total_accounts_count
    #   <p>Total number of accounts in your Amazon Web Services organization.</p>
    #   @return [Integer]
    # @!attribute member_accounts_count
    #   <p>Total number of accounts in your Amazon Web Services organization 
    #         that are associated with GuardDuty.</p>
    #   @return [Integer]
    # @!attribute active_accounts_count
    #   <p>Total number of active accounts in your Amazon Web Services 
    #         organization that are associated with GuardDuty.</p>
    #   @return [Integer]
    # @!attribute enabled_accounts_count
    #   <p>Total number of accounts that have enabled GuardDuty.</p>
    #   @return [Integer]
    # @!attribute count_by_feature
    #   <p>Retrieves the coverage 
    #         statistics for each feature.</p>
    #   @return [Array<Types::OrganizationFeatureStatistics>]
    class OrganizationStatistics < Struct.new(
      :total_accounts_count,
      :member_accounts_count,
      :active_accounts_count,
      :enabled_accounts_count,
      :count_by_feature,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information on the owner of the bucket.</p>
    # @!attribute id
    #   <p>The canonical user ID of the bucket owner. For information about locating your canonical
    #         user ID see <a href="https://docs.aws.amazon.com/general/latest/gr/acct-identifiers.html#FindingCanonicalId">Finding Your Account
    #           Canonical User ID.</a>
    #            </p>
    #   @return [String]
    class Owner < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about how permissions are configured for the S3 bucket.</p>
    # @!attribute bucket_level_permissions
    #   <p>Contains information about the bucket level permissions for the S3 bucket.</p>
    #   @return [Types::BucketLevelPermissions]
    # @!attribute account_level_permissions
    #   <p>Contains information about the account level permissions on the S3 bucket.</p>
    #   @return [Types::AccountLevelPermissions]
    class PermissionConfiguration < Struct.new(
      :bucket_level_permissions,
      :account_level_permissions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the PORT_PROBE action described in the finding.</p>
    # @!attribute blocked
    #   <p>Indicates whether EC2 blocked the port probe to the instance, such as with an ACL.</p>
    #   @return [Boolean]
    # @!attribute port_probe_details
    #   <p>A list of objects related to port probe details.</p>
    #   @return [Array<Types::PortProbeDetail>]
    class PortProbeAction < Struct.new(
      :blocked,
      :port_probe_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the port probe details.</p>
    # @!attribute local_port_details
    #   <p>The local port information of the connection.</p>
    #   @return [Types::LocalPortDetails]
    # @!attribute local_ip_details
    #   <p>The local IP information of the connection.</p>
    #   @return [Types::LocalIpDetails]
    # @!attribute remote_ip_details
    #   <p>The remote IP information of the connection.</p>
    #   @return [Types::RemoteIpDetails]
    class PortProbeDetail < Struct.new(
      :local_port_details,
      :local_ip_details,
      :remote_ip_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains other private IP address information of the EC2 instance.</p>
    # @!attribute private_dns_name
    #   <p>The private DNS name of the EC2 instance.</p>
    #   @return [String]
    # @!attribute private_ip_address
    #   <p>The private IP address of the EC2 instance.</p>
    #   @return [String]
    class PrivateIpAddressDetails < Struct.new(
      :private_dns_name,
      :private_ip_address,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the observed process.</p>
    # @!attribute name
    #   <p>The name of the process.</p>
    #   @return [String]
    # @!attribute executable_path
    #   <p>The absolute path of the process executable file.</p>
    #   @return [String]
    # @!attribute executable_sha256
    #   <p>The <code>SHA256</code> hash of the process executable.</p>
    #   @return [String]
    # @!attribute namespace_pid
    #   <p>The ID of the child process.</p>
    #   @return [Integer]
    # @!attribute pwd
    #   <p>The present working directory of the process.</p>
    #   @return [String]
    # @!attribute pid
    #   <p>The ID of the process.</p>
    #   @return [Integer]
    # @!attribute start_time
    #   <p>The time when the process started. This is in UTC format.</p>
    #   @return [Time]
    # @!attribute uuid
    #   <p>The unique ID assigned to the process by GuardDuty.</p>
    #   @return [String]
    # @!attribute parent_uuid
    #   <p>The unique ID of the parent process. This ID is assigned to the parent process by
    #         GuardDuty.</p>
    #   @return [String]
    # @!attribute user
    #   <p>The user that executed the process.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The unique ID of the user that executed the process.</p>
    #   @return [Integer]
    # @!attribute euid
    #   <p>The effective user ID of the user that executed the process.</p>
    #   @return [Integer]
    # @!attribute lineage
    #   <p>Information about the process's lineage.</p>
    #   @return [Array<Types::LineageObject>]
    class ProcessDetails < Struct.new(
      :name,
      :executable_path,
      :executable_sha256,
      :namespace_pid,
      :pwd,
      :pid,
      :start_time,
      :uuid,
      :parent_uuid,
      :user,
      :user_id,
      :euid,
      :lineage,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the product code for the EC2 instance.</p>
    # @!attribute code
    #   <p>The product code information.</p>
    #   @return [String]
    # @!attribute product_type
    #   <p>The product code type.</p>
    #   @return [String]
    class ProductCode < Struct.new(
      :code,
      :product_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the public access policies that apply to the S3 bucket.</p>
    # @!attribute permission_configuration
    #   <p>Contains information about how permissions are configured for the S3 bucket.</p>
    #   @return [Types::PermissionConfiguration]
    # @!attribute effective_permission
    #   <p>Describes the effective permission on this bucket after factoring all attached
    #         policies.</p>
    #   @return [String]
    class PublicAccess < Struct.new(
      :permission_configuration,
      :effective_permission,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes public access policies that apply to the Amazon S3 bucket.</p>
    #          <p>For information about each of the following settings, see
    #        <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-control-block-public-access.html">Blocking public access to your Amazon S3 storage</a> in the <i>Amazon S3 User Guide</i>.</p>
    # @!attribute public_acl_access
    #   <p>Indicates whether or not there is a setting that allows public access to the Amazon S3 buckets through access
    #          control lists (ACLs).</p>
    #   @return [String]
    # @!attribute public_policy_access
    #   <p>Indicates whether or not there is a setting that allows public access to the Amazon S3 bucket policy.</p>
    #   @return [String]
    # @!attribute public_acl_ignore_behavior
    #   <p>Indicates whether or not there is a setting that ignores all public access control lists (ACLs)
    #          on the Amazon S3 bucket and the objects that it contains.</p>
    #   @return [String]
    # @!attribute public_bucket_restrict_behavior
    #   <p>Indicates whether or not there is a setting that restricts access to the bucket with specified policies.</p>
    #   @return [String]
    class PublicAccessConfiguration < Struct.new(
      :public_acl_access,
      :public_policy_access,
      :public_acl_ignore_behavior,
      :public_bucket_restrict_behavior,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the resource type <code>RDSDBInstance</code> involved in a
    #       GuardDuty finding.</p>
    # @!attribute db_instance_identifier
    #   <p>The identifier associated to the database instance that was involved in the
    #         finding.</p>
    #   @return [String]
    # @!attribute engine
    #   <p>The database engine of the database instance involved in the finding.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The version of the database engine that was involved in the finding.</p>
    #   @return [String]
    # @!attribute db_cluster_identifier
    #   <p>The identifier of the database cluster that contains the database instance ID involved in
    #         the finding.</p>
    #   @return [String]
    # @!attribute db_instance_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the database instance involved in the
    #         finding.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Information about the tag key-value pairs.</p>
    #   @return [Array<Types::Tag>]
    class RdsDbInstanceDetails < Struct.new(
      :db_instance_identifier,
      :engine,
      :engine_version,
      :db_cluster_identifier,
      :db_instance_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the user and authentication details for a database instance
    #       involved in the finding.</p>
    # @!attribute user
    #   <p>The user name used in the anomalous login attempt.</p>
    #   @return [String]
    # @!attribute application
    #   <p>The application name used in the anomalous login attempt.</p>
    #   @return [String]
    # @!attribute database
    #   <p>The name of the database instance involved in the anomalous login attempt.</p>
    #   @return [String]
    # @!attribute ssl
    #   <p>The version of the Secure Socket Layer (SSL) used for the network.</p>
    #   @return [String]
    # @!attribute auth_method
    #   <p>The authentication method used by the user involved in the finding.</p>
    #   @return [String]
    class RdsDbUserDetails < Struct.new(
      :user,
      :application,
      :database,
      :ssl,
      :auth_method,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the resource type <code>RDSLimitlessDB</code> that is involved in a GuardDuty
    #     finding.</p>
    # @!attribute db_shard_group_identifier
    #   <p>The name associated with the Limitless DB shard group.</p>
    #   @return [String]
    # @!attribute db_shard_group_resource_id
    #   <p>The resource identifier of the DB shard group within the Limitless Database.</p>
    #   @return [String]
    # @!attribute db_shard_group_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the DB shard group.</p>
    #   @return [String]
    # @!attribute engine
    #   <p>The database engine of the database instance involved in the finding.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The version of the database engine.</p>
    #   @return [String]
    # @!attribute db_cluster_identifier
    #   <p>The name of the database cluster that is a part of the Limitless Database.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Information about the tag key-value pair.</p>
    #   @return [Array<Types::Tag>]
    class RdsLimitlessDbDetails < Struct.new(
      :db_shard_group_identifier,
      :db_shard_group_resource_id,
      :db_shard_group_arn,
      :engine,
      :engine_version,
      :db_cluster_identifier,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that a login attempt was made to the potentially compromised database from a
    #       remote IP address.</p>
    # @!attribute remote_ip_details
    #   <p>Contains information about the remote IP address of the connection.</p>
    #   @return [Types::RemoteIpDetails]
    # @!attribute login_attributes
    #   <p>Indicates the login attributes used in the login attempt.</p>
    #   @return [Array<Types::LoginAttribute>]
    class RdsLoginAttemptAction < Struct.new(
      :remote_ip_details,
      :login_attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the remote Amazon Web Services account that made the API call.</p>
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the remote API caller.</p>
    #   @return [String]
    # @!attribute affiliated
    #   <p>Details on whether the Amazon Web Services account of the remote API caller is related to your GuardDuty
    #         environment. If this value is <code>True</code> the API caller is affiliated to your account
    #         in some way. If it is <code>False</code> the API caller is from outside your
    #         environment.</p>
    #   @return [Boolean]
    class RemoteAccountDetails < Struct.new(
      :account_id,
      :affiliated,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the remote IP address of the connection.</p>
    # @!attribute city
    #   <p>The city information of the remote IP address.</p>
    #   @return [Types::City]
    # @!attribute country
    #   <p>The country code of the remote IP address.</p>
    #   @return [Types::Country]
    # @!attribute geo_location
    #   <p>The location information of the remote IP address.</p>
    #   @return [Types::GeoLocation]
    # @!attribute ip_address_v4
    #   <p>The IPv4 remote address of the connection.</p>
    #   @return [String]
    # @!attribute ip_address_v6
    #   <p>The IPv6 remote address of the connection.</p>
    #   @return [String]
    # @!attribute organization
    #   <p>The ISP organization information of the remote IP address.</p>
    #   @return [Types::Organization]
    class RemoteIpDetails < Struct.new(
      :city,
      :country,
      :geo_location,
      :ip_address_v4,
      :ip_address_v6,
      :organization,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the remote port.</p>
    # @!attribute port
    #   <p>The port number of the remote connection.</p>
    #   @return [Integer]
    # @!attribute port_name
    #   <p>The port name of the remote connection.</p>
    #   @return [String]
    class RemotePortDetails < Struct.new(
      :port,
      :port_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the Amazon Web Services resource associated with the activity that prompted
    #       GuardDuty to generate a finding.</p>
    # @!attribute access_key_details
    #   <p>The IAM access key details (user information) of a user that engaged in the activity that
    #         prompted GuardDuty to generate a finding.</p>
    #   @return [Types::AccessKeyDetails]
    # @!attribute s3_bucket_details
    #   <p>Contains information on the S3 bucket.</p>
    #   @return [Array<Types::S3BucketDetail>]
    # @!attribute instance_details
    #   <p>The information about the EC2 instance associated with the activity that prompted
    #         GuardDuty to generate a finding.</p>
    #   @return [Types::InstanceDetails]
    # @!attribute eks_cluster_details
    #   <p>Details about the EKS cluster involved in a Kubernetes finding.</p>
    #   @return [Types::EksClusterDetails]
    # @!attribute kubernetes_details
    #   <p>Details about the Kubernetes user and workload involved in a Kubernetes finding.</p>
    #   @return [Types::KubernetesDetails]
    # @!attribute resource_type
    #   <p>The type of Amazon Web Services resource.</p>
    #   @return [String]
    # @!attribute ebs_volume_details
    #   <p>Contains list of scanned and skipped EBS volumes with details.</p>
    #   @return [Types::EbsVolumeDetails]
    # @!attribute ecs_cluster_details
    #   <p>Contains information about the details of the ECS Cluster.</p>
    #   @return [Types::EcsClusterDetails]
    # @!attribute container_details
    #   <p>Details of a container.</p>
    #   @return [Types::Container]
    # @!attribute rds_db_instance_details
    #   <p>Contains information about the database instance to which an anomalous login attempt was
    #         made.</p>
    #   @return [Types::RdsDbInstanceDetails]
    # @!attribute rds_limitless_db_details
    #   <p>Contains information about the RDS Limitless database that was involved in a GuardDuty finding.</p>
    #   @return [Types::RdsLimitlessDbDetails]
    # @!attribute rds_db_user_details
    #   <p>Contains information about the user details through which anomalous login attempt was
    #         made.</p>
    #   @return [Types::RdsDbUserDetails]
    # @!attribute lambda_details
    #   <p>Contains information about the Lambda function that was involved in a finding.</p>
    #   @return [Types::LambdaDetails]
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
      :lambda_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the Amazon Web Services resource that is associated with the activity that prompted
    #        GuardDuty to generate a finding.</p>
    # @!attribute s3_bucket
    #   <p>Contains information about the Amazon S3 bucket.</p>
    #   @return [Types::S3Bucket]
    # @!attribute ec2_instance
    #   <p>Contains information about the Amazon EC2 instance.</p>
    #   @return [Types::Ec2Instance]
    # @!attribute access_key
    #   <p>Contains information about the IAM access key details of a user that involved in the GuardDuty finding.</p>
    #   @return [Types::AccessKey]
    # @!attribute ec2_network_interface
    #   <p>Contains information about the elastic network interface of the Amazon EC2 instance.</p>
    #   @return [Types::Ec2NetworkInterface]
    # @!attribute s3_object
    #   <p>Contains information about the Amazon S3 object.</p>
    #   @return [Types::S3Object]
    # @!attribute eks_cluster
    #   <p>Contains detailed information about the Amazon EKS cluster associated with the activity that
    #         prompted GuardDuty to generate a finding.</p>
    #   @return [Types::EksCluster]
    # @!attribute kubernetes_workload
    #   <p>Contains detailed information about the Kubernetes workload associated with the activity that
    #         prompted GuardDuty to generate a finding.</p>
    #   @return [Types::KubernetesWorkload]
    # @!attribute container
    #   <p>Contains detailed information about the container associated with the activity that
    #         prompted GuardDuty to generate a finding.</p>
    #   @return [Types::ContainerFindingResource]
    class ResourceData < Struct.new(
      :s3_bucket,
      :ec2_instance,
      :access_key,
      :ec2_network_interface,
      :s3_object,
      :eks_cluster,
      :kubernetes_workload,
      :container,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the resources that were scanned in the scan entry.</p>
    # @!attribute instance_arn
    #   <p>Instance ARN that was scanned in the scan entry.</p>
    #   @return [String]
    class ResourceDetails < Struct.new(
      :instance_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The requested resource can't be found.</p>
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The error type.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about each resource type associated with the 
    #       <code>groupedByResource</code> statistics.</p>
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute last_generated_at
    #   <p>The timestamp at which the statistics for this resource was last generated.</p>
    #   @return [Time]
    # @!attribute resource_id
    #   <p>ID associated with each resource. The following list provides the mapping of the resource type
    #       and resource ID.</p>
    #            <p class="title">
    #               <b>Mapping of resource and resource ID</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>AccessKey - <code>resource.accessKeyDetails.accessKeyId</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Container - <code>resource.containerDetails.id</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>ECSCluster - <code>resource.ecsClusterDetails.name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>EKSCluster - <code>resource.eksClusterDetails.name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Instance - <code>resource.instanceDetails.instanceId</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>KubernetesCluster - <code>resource.kubernetesDetails.kubernetesWorkloadDetails.name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Lambda - <code>resource.lambdaDetails.functionName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>RDSDBInstance - <code>resource.rdsDbInstanceDetails.dbInstanceIdentifier</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>S3Bucket - <code>resource.s3BucketDetails.name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>S3Object - <code>resource.s3BucketDetails.name</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource.</p>
    #   @return [String]
    # @!attribute total_findings
    #   <p>The total number of findings associated with this resource.</p>
    #   @return [Integer]
    class ResourceStatistics < Struct.new(
      :account_id,
      :last_generated_at,
      :resource_id,
      :resource_type,
      :total_findings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the Amazon Web Services resource that is associated with the GuardDuty finding.</p>
    # @!attribute uid
    #   <p>The unique identifier of the resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the resource.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID to which the resource belongs.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the Amazon Web Services resource.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region where the resource belongs.</p>
    #   @return [String]
    # @!attribute service
    #   <p>The Amazon Web Services service of the resource.</p>
    #   @return [String]
    # @!attribute cloud_partition
    #   <p>The cloud partition within the Amazon Web Services Region to which the resource belongs.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Contains information about the tags associated with the resource.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute data
    #   <p>Contains information about the Amazon Web Services resource associated with the activity that prompted
    #          GuardDuty to generate a finding.</p>
    #   @return [Types::ResourceData]
    class ResourceV2 < Struct.new(
      :uid,
      :name,
      :account_id,
      :resource_type,
      :region,
      :service,
      :cloud_partition,
      :tags,
      :data,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Additional information about the suspicious activity.</p>
    # @!attribute modifying_process
    #   <p>Information about the process that modified the current process. This is available for
    #         multiple finding types.</p>
    #   @return [Types::ProcessDetails]
    # @!attribute modified_at
    #   <p>The timestamp at which the process modified the current process. The timestamp is in UTC date string
    #         format.</p>
    #   @return [Time]
    # @!attribute script_path
    #   <p>The path to the script that was executed.</p>
    #   @return [String]
    # @!attribute library_path
    #   <p>The path to the new library that was loaded.</p>
    #   @return [String]
    # @!attribute ld_preload_value
    #   <p>The value of the LD_PRELOAD environment variable.</p>
    #   @return [String]
    # @!attribute socket_path
    #   <p>The path to the docket socket that was accessed.</p>
    #   @return [String]
    # @!attribute runc_binary_path
    #   <p>The path to the leveraged <code>runc</code> implementation.</p>
    #   @return [String]
    # @!attribute release_agent_path
    #   <p>The path in the container that modified the release agent file.</p>
    #   @return [String]
    # @!attribute mount_source
    #   <p>The path on the host that is mounted by the container.</p>
    #   @return [String]
    # @!attribute mount_target
    #   <p>The path in the container that is mapped to the host directory.</p>
    #   @return [String]
    # @!attribute file_system_type
    #   <p>Represents the type of mounted fileSystem.</p>
    #   @return [String]
    # @!attribute flags
    #   <p>Represents options that control the behavior of a runtime operation or action. For
    #         example, a filesystem mount operation may contain a read-only flag.</p>
    #   @return [Array<String>]
    # @!attribute module_name
    #   <p>The name of the module loaded into the kernel.</p>
    #   @return [String]
    # @!attribute module_file_path
    #   <p>The path to the module loaded into the kernel.</p>
    #   @return [String]
    # @!attribute module_sha256
    #   <p>The <code>SHA256</code> hash of the module.</p>
    #   @return [String]
    # @!attribute shell_history_file_path
    #   <p>The path to the modified shell history file.</p>
    #   @return [String]
    # @!attribute target_process
    #   <p>Information about the process that had its memory overwritten by the current process.</p>
    #   @return [Types::ProcessDetails]
    # @!attribute address_family
    #   <p>Represents the communication protocol associated with the address. For example, the address
    #         family <code>AF_INET</code> is used for IP version of 4 protocol.</p>
    #   @return [String]
    # @!attribute iana_protocol_number
    #   <p>Specifies a particular protocol within the address family. Usually there is a single
    #         protocol in address families. For example, the address family <code>AF_INET</code> only has
    #         the IP protocol.</p>
    #   @return [Integer]
    # @!attribute memory_regions
    #   <p>Specifies the Region of a process's address space such as stack and heap.</p>
    #   @return [Array<String>]
    # @!attribute tool_name
    #   <p>Name of the potentially suspicious tool.</p>
    #   @return [String]
    # @!attribute tool_category
    #   <p>Category that the tool belongs to. Some of the examples
    #       are Backdoor Tool, Pentest Tool, Network Scanner, and Network Sniffer.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>Name of the security service that has been potentially disabled.</p>
    #   @return [String]
    # @!attribute command_line_example
    #   <p>Example of the command line involved in the suspicious activity.</p>
    #   @return [String]
    # @!attribute threat_file_path
    #   <p>The suspicious file path for which the threat intelligence details were found.</p>
    #   @return [String]
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
      :module_sha256,
      :shell_history_file_path,
      :target_process,
      :address_family,
      :iana_protocol_number,
      :memory_regions,
      :tool_name,
      :tool_category,
      :service_name,
      :command_line_example,
      :threat_file_path,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the process and any required context values for a specific
    #       finding.</p>
    # @!attribute process
    #   <p>Information about the observed process.</p>
    #   @return [Types::ProcessDetails]
    # @!attribute context
    #   <p>Additional information about the suspicious activity.</p>
    #   @return [Types::RuntimeContext]
    class RuntimeDetails < Struct.new(
      :process,
      :context,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the Amazon S3 bucket policies and encryption.</p>
    # @!attribute owner_id
    #   <p>The owner ID of the associated S3Amazon S3bucket.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp at which the Amazon S3 bucket was created.</p>
    #   @return [Time]
    # @!attribute encryption_type
    #   <p>The type of encryption used for the Amazon S3 buckets and its objects. For more information,
    #          see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/serv-side-encryption.html">Protecting data with server-side encryption</a>
    #          in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the encryption key that is used to encrypt the Amazon S3 bucket and its objects.</p>
    #   @return [String]
    # @!attribute effective_permission
    #   <p>Describes the effective permissions on this S3 bucket, after factoring all the attached policies.</p>
    #   @return [String]
    # @!attribute public_read_access
    #   <p>Indicates whether or not the public read access is allowed for an Amazon S3 bucket.</p>
    #   @return [String]
    # @!attribute public_write_access
    #   <p>Indicates whether or not the public write access is allowed for an Amazon S3 bucket.</p>
    #   @return [String]
    # @!attribute account_public_access
    #   <p>Contains information about the public access policies that apply to the Amazon S3 bucket at the account level.</p>
    #   @return [Types::PublicAccessConfiguration]
    # @!attribute bucket_public_access
    #   <p>Contains information about public access policies that apply to the Amazon S3 bucket.</p>
    #   @return [Types::PublicAccessConfiguration]
    # @!attribute s3_object_uids
    #   <p>Represents a list of Amazon S3 object identifiers.</p>
    #   @return [Array<String>]
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
      :s3_object_uids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information on the S3 bucket.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the S3 bucket.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the S3 bucket.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Describes whether the bucket is a source or destination bucket.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the bucket was created at.</p>
    #   @return [Time]
    # @!attribute owner
    #   <p>The owner of the S3 bucket.</p>
    #   @return [Types::Owner]
    # @!attribute tags
    #   <p>All tags attached to the S3 bucket</p>
    #   @return [Array<Types::Tag>]
    # @!attribute default_server_side_encryption
    #   <p>Describes the server side encryption method used in the S3 bucket.</p>
    #   @return [Types::DefaultServerSideEncryption]
    # @!attribute public_access
    #   <p>Describes the public access policies that apply to the S3 bucket.</p>
    #   @return [Types::PublicAccess]
    # @!attribute s3_object_details
    #   <p>Information about the S3 object that was scanned.</p>
    #   @return [Array<Types::S3ObjectDetail>]
    class S3BucketDetail < Struct.new(
      :arn,
      :name,
      :type,
      :created_at,
      :owner,
      :tags,
      :default_server_side_encryption,
      :public_access,
      :s3_object_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes whether S3 data event logs will be enabled as a data source.</p>
    # @!attribute enable
    #   <p> The status of S3 data event logs as a data source.</p>
    #   @return [Boolean]
    class S3LogsConfiguration < Struct.new(
      :enable,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes whether S3 data event logs will be enabled as a data source.</p>
    # @!attribute status
    #   <p>A value that describes whether S3 data event logs are automatically enabled for new
    #         members of the organization.</p>
    #   @return [String]
    class S3LogsConfigurationResult < Struct.new(
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the Amazon S3 object.</p>
    # @!attribute e_tag
    #   <p>The entity tag is a hash of the Amazon S3 object. The ETag reflects changes only to the
    #          contents of an object, and not its metadata.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The key of the Amazon S3 object.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version Id of the Amazon S3 object.</p>
    #   @return [String]
    class S3Object < Struct.new(
      :e_tag,
      :key,
      :version_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the S3 object that was scanned</p>
    # @!attribute object_arn
    #   <p>Amazon Resource Name (ARN) of the S3 object.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Key of the S3 object.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The entity tag is a hash of the S3 object. The ETag reflects changes only to the contents of 
    #       an object, and not its metadata.</p>
    #   @return [String]
    # @!attribute hash
    #   <p>Hash of the threat detected in this finding.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>Version ID of the object.</p>
    #   @return [String]
    class S3ObjectDetail < Struct.new(
      :object_arn,
      :key,
      :e_tag,
      :hash,
      :version_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about malware scans associated with GuardDuty Malware Protection for EC2.</p>
    # @!attribute detector_id
    #   <p>The unique ID of the detector that is associated with the request.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute admin_detector_id
    #   <p>The unique detector ID of the administrator account that the request is associated with.
    #         If the account is an administrator, the <code>AdminDetectorId</code> will be the same as the one used for 
    #         <code>DetectorId</code>.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute scan_id
    #   <p>The unique scan ID associated with a scan entry.</p>
    #   @return [String]
    # @!attribute scan_status
    #   <p>An enum value representing possible scan statuses.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>Represents the reason for <code>FAILED</code> scan status.</p>
    #   @return [String]
    # @!attribute scan_start_time
    #   <p>The timestamp of when the scan was triggered.</p>
    #   @return [Time]
    # @!attribute scan_end_time
    #   <p>The timestamp of when the scan was finished.</p>
    #   @return [Time]
    # @!attribute trigger_details
    #   <p>Specifies the reason why the scan was initiated.</p>
    #   @return [Types::TriggerDetails]
    # @!attribute resource_details
    #   <p>Represents the resources that were scanned in the scan entry.</p>
    #   @return [Types::ResourceDetails]
    # @!attribute scan_result_details
    #   <p>Represents the result of the scan.</p>
    #   @return [Types::ScanResultDetails]
    # @!attribute account_id
    #   <p>The ID for the account that belongs to the scan.</p>
    #   @return [String]
    # @!attribute total_bytes
    #   <p>Represents total bytes that were scanned.</p>
    #   @return [Integer]
    # @!attribute file_count
    #   <p>Represents the number of files that were scanned.</p>
    #   @return [Integer]
    # @!attribute attached_volumes
    #   <p>List of volumes that were attached to the original instance to be scanned.</p>
    #   @return [Array<Types::VolumeDetail>]
    # @!attribute scan_type
    #   <p>Specifies the scan type that invoked the malware scan.</p>
    #   @return [String]
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
      :scan_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the condition.</p>
    # @!attribute map_equals
    #   <p>Represents an <i>mapEqual</i>
    #               <b></b> condition to be applied
    #         to a single field when triggering for malware scan.</p>
    #   @return [Array<Types::ScanConditionPair>]
    class ScanCondition < Struct.new(
      :map_equals,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the <code>key:value</code> pair to be matched against given resource property.</p>
    # @!attribute key
    #   <p>Represents the <b>key</b> in the map condition.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Represents optional <b>value</b> in the map
    #         condition. If not specified, only the <b>key</b> will be
    #         matched.</p>
    #   @return [String]
    class ScanConditionPair < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a complete view providing malware scan result details.</p>
    # @!attribute scanned_item_count
    #   <p>Total number of scanned files.</p>
    #   @return [Types::ScannedItemCount]
    # @!attribute threats_detected_item_count
    #   <p>Total number of infected files.</p>
    #   @return [Types::ThreatsDetectedItemCount]
    # @!attribute highest_severity_threat_details
    #   <p>Details of the highest severity threat detected during malware scan and number of infected
    #         files.</p>
    #   @return [Types::HighestSeverityThreatDetails]
    # @!attribute threat_detected_by_name
    #   <p>Contains details about identified threats organized by threat name.</p>
    #   @return [Types::ThreatDetectedByName]
    class ScanDetections < Struct.new(
      :scanned_item_count,
      :threats_detected_item_count,
      :highest_severity_threat_details,
      :threat_detected_by_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes whether Malware Protection for EC2 instances with findings will be enabled as a
    #       data source.</p>
    # @!attribute ebs_volumes
    #   <p>Describes the configuration for scanning EBS volumes as data source.</p>
    #   @return [Boolean]
    class ScanEc2InstanceWithFindings < Struct.new(
      :ebs_volumes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains information on the status of whether Malware Protection for EC2
    #       instances with findings will be enabled as a data source.</p>
    # @!attribute ebs_volumes
    #   <p>Describes the configuration of scanning EBS volumes as a data source.</p>
    #   @return [Types::EbsVolumesResult]
    class ScanEc2InstanceWithFindingsResult < Struct.new(
      :ebs_volumes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details of infected file including name, file path and hash.</p>
    # @!attribute file_path
    #   <p>The file path of the infected file.</p>
    #   @return [String]
    # @!attribute volume_arn
    #   <p>EBS volume ARN details of the infected file.</p>
    #   @return [String]
    # @!attribute hash
    #   <p>The hash value of the infected file.</p>
    #   @return [String]
    # @!attribute file_name
    #   <p>File name of the infected file.</p>
    #   @return [String]
    class ScanFilePath < Struct.new(
      :file_path,
      :volume_arn,
      :hash,
      :file_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about criteria used to filter resources before triggering malware
    #       scan.</p>
    # @!attribute include
    #   <p>Represents condition that when matched will allow a malware scan for a certain
    #         resource.</p>
    #   @return [Hash<String, Types::ScanCondition>]
    # @!attribute exclude
    #   <p>Represents condition that when matched will prevent a malware scan for a certain
    #         resource.</p>
    #   @return [Hash<String, Types::ScanCondition>]
    class ScanResourceCriteria < Struct.new(
      :include,
      :exclude,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the result of the scan.</p>
    # @!attribute scan_result
    #   <p>An enum value representing possible scan results.</p>
    #   @return [String]
    class ScanResultDetails < Struct.new(
      :scan_result,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains files infected with the given threat providing details of malware name and
    #       severity.</p>
    # @!attribute name
    #   <p>The name of the identified threat.</p>
    #   @return [String]
    # @!attribute severity
    #   <p>Severity of threat identified as part of the malware scan.</p>
    #   @return [String]
    # @!attribute item_count
    #   <p>Total number of files infected with given threat.</p>
    #   @return [Integer]
    # @!attribute file_paths
    #   <p>List of infected files in EBS volume with details.</p>
    #   @return [Array<Types::ScanFilePath>]
    class ScanThreatName < Struct.new(
      :name,
      :severity,
      :item_count,
      :file_paths,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Total number of scanned files.</p>
    # @!attribute total_gb
    #   <p>Total GB of files scanned for malware.</p>
    #   @return [Integer]
    # @!attribute files
    #   <p>Number of files scanned.</p>
    #   @return [Integer]
    # @!attribute volumes
    #   <p>Total number of scanned volumes.</p>
    #   @return [Integer]
    class ScannedItemCount < Struct.new(
      :total_gb,
      :files,
      :volumes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Container security context.</p>
    # @!attribute privileged
    #   <p>Whether the container is privileged.</p>
    #   @return [Boolean]
    # @!attribute allow_privilege_escalation
    #   <p>Whether or not a container or a Kubernetes pod is allowed to gain more privileges than its parent process.</p>
    #   @return [Boolean]
    class SecurityContext < Struct.new(
      :privileged,
      :allow_privilege_escalation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the security groups associated with the EC2 instance.</p>
    # @!attribute group_id
    #   <p>The security group ID of the EC2 instance.</p>
    #   @return [String]
    # @!attribute group_name
    #   <p>The security group name of the EC2 instance.</p>
    #   @return [String]
    class SecurityGroup < Struct.new(
      :group_id,
      :group_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the GuardDuty attack sequence finding.</p>
    # @!attribute uid
    #   <p>Unique identifier of the attack sequence.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description of the attack sequence.</p>
    #   @return [String]
    # @!attribute actors
    #   <p>Contains information about the actors involved in the attack sequence.</p>
    #   @return [Array<Types::Actor>]
    # @!attribute resources
    #   <p>Contains information about the resources involved in the attack sequence.</p>
    #   @return [Array<Types::ResourceV2>]
    # @!attribute endpoints
    #   <p>Contains information about the network endpoints that were used in the attack sequence.</p>
    #   @return [Array<Types::NetworkEndpoint>]
    # @!attribute signals
    #   <p>Contains information about the signals involved in the attack sequence.</p>
    #   @return [Array<Types::Signal>]
    # @!attribute sequence_indicators
    #   <p>Contains information about the indicators observed in the attack sequence.</p>
    #   @return [Array<Types::Indicator>]
    # @!attribute additional_sequence_types
    #   <p>Additional types of sequences that may be associated with the attack sequence finding,
    #         providing further context about the nature of the detected threat.</p>
    #   @return [Array<String>]
    class Sequence < Struct.new(
      :uid,
      :description,
      :actors,
      :resources,
      :endpoints,
      :signals,
      :sequence_indicators,
      :additional_sequence_types,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains additional information about the generated finding.</p>
    # @!attribute action
    #   <p>Information about the activity that is described in a finding.</p>
    #   @return [Types::Action]
    # @!attribute evidence
    #   <p>An evidence object associated with the service.</p>
    #   @return [Types::Evidence]
    # @!attribute archived
    #   <p>Indicates whether this finding is archived.</p>
    #   @return [Boolean]
    # @!attribute count
    #   <p>The total count of the occurrences of this finding type.</p>
    #   @return [Integer]
    # @!attribute detector_id
    #   <p>The detector ID for the GuardDuty service.</p>
    #   @return [String]
    # @!attribute event_first_seen
    #   <p>The first-seen timestamp of the activity that prompted GuardDuty to generate this
    #         finding.</p>
    #   @return [String]
    # @!attribute event_last_seen
    #   <p>The last-seen timestamp of the activity that prompted GuardDuty to generate this
    #         finding.</p>
    #   @return [String]
    # @!attribute resource_role
    #   <p>The resource role information for this finding.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>The name of the Amazon Web Services service (GuardDuty) that generated a finding.</p>
    #   @return [String]
    # @!attribute user_feedback
    #   <p>Feedback that was submitted about the finding.</p>
    #   @return [String]
    # @!attribute additional_info
    #   <p>Contains additional information about the generated finding.</p>
    #   @return [Types::ServiceAdditionalInfo]
    # @!attribute feature_name
    #   <p>The name of the feature that generated a finding.</p>
    #   @return [String]
    # @!attribute ebs_volume_scan_details
    #   <p>Returns details from the malware scan that created a finding.</p>
    #   @return [Types::EbsVolumeScanDetails]
    # @!attribute runtime_details
    #   <p>Information about the process and any required context values for a specific
    #         finding</p>
    #   @return [Types::RuntimeDetails]
    # @!attribute detection
    #   <p>Contains information about the detected unusual behavior.</p>
    #   @return [Types::Detection]
    # @!attribute malware_scan_details
    #   <p>Returns details from the malware scan that generated a GuardDuty finding.</p>
    #   @return [Types::MalwareScanDetails]
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
      :malware_scan_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Additional information about the generated finding.</p>
    # @!attribute value
    #   <p>This field specifies the value of the additional information.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Describes the type of the additional information.</p>
    #   @return [String]
    class ServiceAdditionalInfo < Struct.new(
      :value,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the authenticated session.</p>
    # @!attribute uid
    #   <p>The unique identifier of the session.</p>
    #   @return [String]
    # @!attribute mfa_status
    #   <p>Indicates whether or not multi-factor authencation (MFA) was used during authentication.</p>
    #            <p>In Amazon Web Services CloudTrail, you can find this value as <code>userIdentity.sessionContext.attributes.mfaAuthenticated</code>.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The timestamp for when the session was created.</p>
    #            <p>In Amazon Web Services CloudTrail, you can find this value as <code>userIdentity.sessionContext.attributes.creationDate</code>.</p>
    #   @return [Time]
    # @!attribute issuer
    #   <p>Identifier of the session issuer.</p>
    #            <p>In Amazon Web Services CloudTrail, you can find this value as <code>userIdentity.sessionContext.sessionIssuer.arn</code>.</p>
    #   @return [String]
    class Session < Struct.new(
      :uid,
      :mfa_status,
      :created_time,
      :issuer,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about severity level for each finding type.</p>
    # @!attribute last_generated_at
    #   <p>The timestamp at which a finding type for a specific severity was last generated.</p>
    #   @return [Time]
    # @!attribute severity
    #   <p>The severity level associated with each finding type.</p>
    #   @return [Float]
    # @!attribute total_findings
    #   <p>The total number of findings associated with this severity.</p>
    #   @return [Integer]
    class SeverityStatistics < Struct.new(
      :last_generated_at,
      :severity,
      :total_findings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the signals involved in the attack sequence.</p>
    # @!attribute uid
    #   <p>The unique identifier of the signal.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the signal used to identify an attack sequence.</p>
    #            <p>Signals can be GuardDuty findings or activities observed in data sources that GuardDuty monitors. For
    #          more information, see 
    #          <a href="https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_data-sources.html">Foundational data sources</a> in the
    #        <i>Amazon GuardDuty User Guide</i>.</p>
    #            <p>A signal type can be one of the valid values listed in this API. Here are the related descriptions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>FINDING</code> - Individually generated GuardDuty finding.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CLOUD_TRAIL</code> - Activity observed from CloudTrail logs</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3_DATA_EVENTS</code> - Activity observed from CloudTrail data events for S3. Activities associated
    #              with this type will show up only when
    #              you have enabled GuardDuty S3 Protection feature in your account. For more information about S3 Protection and
    #              steps to enable it, see <a href="https://docs.aws.amazon.com/guardduty/latest/ug/s3-protection.html">S3 Protection</a> in the
    #              <i>Amazon GuardDuty User Guide</i>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the signal.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the signal. For example, when signal type is <code>FINDING</code>, 
    #          the signal name is the name of the finding.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the first finding or activity related to this signal was observed.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when this signal was last observed.</p>
    #   @return [Time]
    # @!attribute first_seen_at
    #   <p>The timestamp when the first finding or activity related to this signal was observed.</p>
    #   @return [Time]
    # @!attribute last_seen_at
    #   <p>The timestamp when the last finding or activity related to this signal was observed.</p>
    #   @return [Time]
    # @!attribute severity
    #   <p>The severity associated with the signal. For more information about severity, see 
    #          <a href="https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_findings-severity.html">Findings severity levels</a>
    #        in the <i>Amazon GuardDuty User Guide</i>.</p>
    #   @return [Float]
    # @!attribute count
    #   <p>The number of times this signal was observed.</p>
    #   @return [Integer]
    # @!attribute resource_uids
    #   <p>Information about the unique identifiers of the resources involved in the signal.</p>
    #   @return [Array<String>]
    # @!attribute actor_ids
    #   <p>Information about the IDs of the threat actors involved in the signal.</p>
    #   @return [Array<String>]
    # @!attribute endpoint_ids
    #   <p>Information about the endpoint IDs associated with this signal.</p>
    #   @return [Array<String>]
    # @!attribute signal_indicators
    #   <p>Contains information about the indicators associated with the signals.</p>
    #   @return [Array<Types::Indicator>]
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
      :signal_indicators,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the criteria used for sorting findings.</p>
    # @!attribute attribute_name
    #   <p>Represents the finding attribute, such as <code>accountId</code>, that sorts the
    #         findings.</p>
    #   @return [String]
    # @!attribute order_by
    #   <p>The order by which the sorted findings are to be displayed.</p>
    #   @return [String]
    class SortCriteria < Struct.new(
      :attribute_name,
      :order_by,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Amazon Resource Name (ARN) of the resource for which you invoked the API.</p>
    #   @return [String]
    class StartMalwareScanRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute scan_id
    #   <p>A unique identifier that gets generated when you invoke the API without any error. Each malware scan has 
    #         a corresponding scan ID. Using this scan ID, you can monitor the status of your malware scan.</p>
    #   @return [String]
    class StartMalwareScanResponse < Struct.new(
      :scan_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector of the GuardDuty administrator account associated with the
    #         member accounts to monitor.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute account_ids
    #   <p>A list of account IDs of the GuardDuty member accounts to start monitoring.</p>
    #   @return [Array<String>]
    class StartMonitoringMembersRequest < Struct.new(
      :detector_id,
      :account_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute unprocessed_accounts
    #   <p>A list of objects that contain the unprocessed account and a result string that explains
    #         why it was unprocessed.</p>
    #   @return [Array<Types::UnprocessedAccount>]
    class StartMonitoringMembersResponse < Struct.new(
      :unprocessed_accounts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector associated with the GuardDuty administrator account that is
    #         monitoring member accounts.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute account_ids
    #   <p>A list of account IDs for the member accounts to stop monitoring.</p>
    #   @return [Array<String>]
    class StopMonitoringMembersRequest < Struct.new(
      :detector_id,
      :account_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute unprocessed_accounts
    #   <p>A list of objects that contain an accountId for each account that could not be processed,
    #         and a result string that indicates why the account was not processed. </p>
    #   @return [Array<Types::UnprocessedAccount>]
    class StopMonitoringMembersResponse < Struct.new(
      :unprocessed_accounts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a tag key-value pair.</p>
    # @!attribute key
    #   <p>Describes the key associated with the tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Describes the value associated with the tag key.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the GuardDuty resource to apply a tag to.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to be added to a resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the detected threats associated with the
    #       generated finding.</p>
    # @!attribute name
    #   <p>Name of the detected threat that caused GuardDuty to generate this finding.</p>
    #   @return [String]
    # @!attribute source
    #   <p>Source of the threat that generated this finding.</p>
    #   @return [String]
    # @!attribute item_paths
    #   <p>Information about the nested item path and 
    #         hash of the protected resource.</p>
    #   @return [Array<Types::ItemPath>]
    class Threat < Struct.new(
      :name,
      :source,
      :item_paths,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about identified threats organized by threat name.</p>
    # @!attribute item_count
    #   <p>Total number of infected files identified.</p>
    #   @return [Integer]
    # @!attribute unique_threat_name_count
    #   <p>Total number of unique threats by name identified, as part of the malware scan.</p>
    #   @return [Integer]
    # @!attribute shortened
    #   <p>Flag to determine if the finding contains every single infected file-path and/or every
    #         threat.</p>
    #   @return [Boolean]
    # @!attribute threat_names
    #   <p>List of identified threats with details, organized by threat name.</p>
    #   @return [Array<Types::ScanThreatName>]
    class ThreatDetectedByName < Struct.new(
      :item_count,
      :unique_threat_name_count,
      :shortened,
      :threat_names,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An instance of a threat intelligence detail that constitutes evidence for the
    #       finding.</p>
    # @!attribute threat_list_name
    #   <p>The name of the threat intelligence list that triggered the finding.</p>
    #   @return [String]
    # @!attribute threat_names
    #   <p>A list of names of the threats in the threat intelligence list that triggered the
    #         finding.</p>
    #   @return [Array<String>]
    # @!attribute threat_file_sha256
    #   <p>SHA256 of the file that generated the finding.</p>
    #   @return [String]
    class ThreatIntelligenceDetail < Struct.new(
      :threat_list_name,
      :threat_names,
      :threat_file_sha256,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains total number of infected files.</p>
    # @!attribute files
    #   <p>Total number of infected files.</p>
    #   @return [Integer]
    class ThreatsDetectedItemCount < Struct.new(
      :files,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the total usage with the corresponding currency unit for that value.</p>
    # @!attribute amount
    #   <p>The total usage.</p>
    #   @return [String]
    # @!attribute unit
    #   <p>The currency unit that the amount is given in.</p>
    #   @return [String]
    class Total < Struct.new(
      :amount,
      :unit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the reason the scan was triggered.</p>
    # @!attribute guard_duty_finding_id
    #   <p>The ID of the GuardDuty finding that triggered the malware scan.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the scan trigger.</p>
    #   @return [String]
    class TriggerDetails < Struct.new(
      :guard_duty_finding_id,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The ID of the detector associated with the findings to unarchive.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute finding_ids
    #   <p>The IDs of the findings to unarchive.</p>
    #   @return [Array<String>]
    class UnarchiveFindingsRequest < Struct.new(
      :detector_id,
      :finding_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UnarchiveFindingsResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the accounts that weren't processed.</p>
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute result
    #   <p>A reason why the account hasn't been processed.</p>
    #   @return [String]
    class UnprocessedAccount < Struct.new(
      :account_id,
      :result,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the names of the data sources that couldn't be enabled.</p>
    # @!attribute malware_protection
    #   <p>An object that contains information on the status of all Malware Protection data
    #         sources.</p>
    #   @return [Types::MalwareProtectionConfigurationResult]
    class UnprocessedDataSourcesResult < Struct.new(
      :malware_protection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the resource to remove tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector to update.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute enable
    #   <p>Specifies whether the detector is enabled or not enabled.</p>
    #   @return [Boolean]
    # @!attribute finding_publishing_frequency
    #   <p>An enum value that specifies how frequently findings are exported, such as to CloudWatch
    #         Events.</p>
    #   @return [String]
    # @!attribute data_sources
    #   <p>Describes which data sources will be updated.</p>
    #            <p>There might be regional differences because some data sources might not be 
    #         available in all the Amazon Web Services Regions where GuardDuty is presently supported. For more 
    #         information, see <a href="https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html">Regions and endpoints</a>.</p>
    #   @deprecated
    #     This parameter is deprecated, use Features instead
    #   @return [Types::DataSourceConfigurations]
    # @!attribute features
    #   <p>Provides the features that will be updated for the detector.</p>
    #   @return [Array<Types::DetectorFeatureConfiguration>]
    class UpdateDetectorRequest < Struct.new(
      :detector_id,
      :enable,
      :finding_publishing_frequency,
      :data_sources,
      :features,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateDetectorResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector that specifies the GuardDuty service where you want to
    #         update a filter.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute filter_name
    #   <p>The name of the filter.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the filter. Valid characters include alphanumeric characters, and
    #         special characters such as hyphen, period, colon, underscore, parentheses (<code>{ }</code>,
    #           <code>[ ]</code>, and <code>( )</code>), forward slash, horizontal tab, vertical tab,
    #         newline, form feed, return, and whitespace.</p>
    #   @return [String]
    # @!attribute action
    #   <p>Specifies the action that is to be applied to the findings that match the filter.</p>
    #   @return [String]
    # @!attribute rank
    #   <p>Specifies the position of the filter in the list of current filters. Also specifies the
    #         order in which this filter is applied to the findings.</p>
    #   @return [Integer]
    # @!attribute finding_criteria
    #   <p>Represents the criteria to be used in the filter for querying findings.</p>
    #   @return [Types::FindingCriteria]
    class UpdateFilterRequest < Struct.new(
      :detector_id,
      :filter_name,
      :description,
      :action,
      :rank,
      :finding_criteria,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the filter.</p>
    #   @return [String]
    class UpdateFilterResponse < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The ID of the detector that is associated with the findings for which you want to update 
    #         the feedback.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute finding_ids
    #   <p>The IDs of the findings that you want to mark as useful or not useful.</p>
    #   @return [Array<String>]
    # @!attribute feedback
    #   <p>The feedback for the finding.</p>
    #   @return [String]
    # @!attribute comments
    #   <p>Additional feedback about the GuardDuty findings.</p>
    #   @return [String]
    class UpdateFindingsFeedbackRequest < Struct.new(
      :detector_id,
      :finding_ids,
      :feedback,
      :comments,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateFindingsFeedbackResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The detectorID that specifies the GuardDuty service whose IPSet you want to update.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute ip_set_id
    #   <p>The unique ID that specifies the IPSet that you want to update.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The unique ID that specifies the IPSet that you want to update.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The updated URI of the file that contains the IPSet. </p>
    #   @return [String]
    # @!attribute activate
    #   <p>The updated Boolean value that specifies whether the IPSet is active or not.</p>
    #   @return [Boolean]
    # @!attribute expected_bucket_owner
    #   <p>The Amazon Web Services account ID that owns the Amazon S3 bucket specified in the <b>location</b> parameter.</p>
    #   @return [String]
    class UpdateIPSetRequest < Struct.new(
      :detector_id,
      :ip_set_id,
      :name,
      :location,
      :activate,
      :expected_bucket_owner,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateIPSetResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute malware_protection_plan_id
    #   <p>A unique identifier associated with the Malware Protection plan.</p>
    #   @return [String]
    # @!attribute role
    #   <p>Amazon Resource Name (ARN) of the IAM role with permissions to scan and add tags to 
    #         the associated protected resource.</p>
    #   @return [String]
    # @!attribute actions
    #   <p>Information about whether the tags will be added to the S3 object after scanning.</p>
    #   @return [Types::MalwareProtectionPlanActions]
    # @!attribute protected_resource
    #   <p>Information about the protected resource that is associated 
    #         with the created Malware Protection plan. Presently, <code>S3Bucket</code>
    #         is the only supported protected resource.</p>
    #   @return [Types::UpdateProtectedResource]
    class UpdateMalwareProtectionPlanRequest < Struct.new(
      :malware_protection_plan_id,
      :role,
      :actions,
      :protected_resource,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The unique ID of the detector that specifies the GuardDuty service where you want to
    #         update scan settings.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute scan_resource_criteria
    #   <p>Represents the criteria to be used in the filter for selecting resources to scan.</p>
    #   @return [Types::ScanResourceCriteria]
    # @!attribute ebs_snapshot_preservation
    #   <p>An enum value representing possible snapshot preservation settings.</p>
    #   @return [String]
    class UpdateMalwareScanSettingsRequest < Struct.new(
      :detector_id,
      :scan_resource_criteria,
      :ebs_snapshot_preservation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateMalwareScanSettingsResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The detector ID of the administrator account.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute account_ids
    #   <p>A list of member account IDs to be updated.</p>
    #   @return [Array<String>]
    # @!attribute data_sources
    #   <p>Describes which data sources will be updated.</p>
    #   @deprecated
    #     This parameter is deprecated, use Features instead
    #   @return [Types::DataSourceConfigurations]
    # @!attribute features
    #   <p>A list of features that will be updated for the specified member accounts.</p>
    #   @return [Array<Types::MemberFeaturesConfiguration>]
    class UpdateMemberDetectorsRequest < Struct.new(
      :detector_id,
      :account_ids,
      :data_sources,
      :features,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute unprocessed_accounts
    #   <p>A list of member account IDs that were unable to be processed along with an explanation
    #         for why they were not processed.</p>
    #   @return [Array<Types::UnprocessedAccount>]
    class UpdateMemberDetectorsResponse < Struct.new(
      :unprocessed_accounts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The ID of the detector that configures the delegated administrator.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute auto_enable
    #   <p>Represents whether to automatically enable member accounts in the organization. This
    #       applies to only new member accounts, not the existing member accounts. When a new account joins the organization,
    #       the chosen features will be enabled for them by default.</p>
    #            <p>Even though this is still supported, we recommend using
    #      <code>AutoEnableOrganizationMembers</code> to achieve the similar results. You must provide a 
    #       value for either <code>autoEnableOrganizationMembers</code> or <code>autoEnable</code>.</p>
    #   @deprecated
    #     This field is deprecated, use AutoEnableOrganizationMembers instead
    #   @return [Boolean]
    # @!attribute data_sources
    #   <p>Describes which data sources will be updated.</p>
    #   @deprecated
    #     This parameter is deprecated, use Features instead
    #   @return [Types::OrganizationDataSourceConfigurations]
    # @!attribute features
    #   <p>A list of features that will be configured for the organization.</p>
    #   @return [Array<Types::OrganizationFeatureConfiguration>]
    # @!attribute auto_enable_organization_members
    #   <p>Indicates the auto-enablement configuration of GuardDuty for the member accounts in the
    #         organization. You must provide a value for either <code>autoEnableOrganizationMembers</code> or <code>autoEnable</code>. </p>
    #            <p>Use one of the 
    #       following configuration values for <code>autoEnableOrganizationMembers</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NEW</code>: Indicates that when a new account joins the organization, they will
    #             have GuardDuty enabled automatically. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL</code>: Indicates that all accounts in the organization have GuardDuty
    #             enabled automatically. This includes <code>NEW</code> accounts that join the organization
    #             and accounts that may have been suspended or removed from the organization in
    #             GuardDuty.</p>
    #                  <p>It may take up to 24 hours to update the configuration for all the member accounts.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code>: Indicates that GuardDuty will not be automatically enabled for any
    #             account in the organization. The administrator must manage GuardDuty for each account in the organization individually.</p>
    #                  <p>When you update the auto-enable setting from <code>ALL</code> or <code>NEW</code> to 
    #             <code>NONE</code>, this action doesn't disable the corresponding option for your existing accounts. This
    #             configuration will apply to the new accounts that join the organization. After you update the auto-enable settings,
    #             no new account will have the corresponding option as enabled.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class UpdateOrganizationConfigurationRequest < Struct.new(
      :detector_id,
      :auto_enable,
      :data_sources,
      :features,
      :auto_enable_organization_members,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateOrganizationConfigurationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the protected resource 
    #       that is associated with the created Malware Protection plan. 
    #       Presently, <code>S3Bucket</code> is the only supported protected resource.</p>
    # @!attribute s3_bucket
    #   <p>Information about the protected S3 bucket resource.</p>
    #   @return [Types::UpdateS3BucketResource]
    class UpdateProtectedResource < Struct.new(
      :s3_bucket,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The ID of the detector associated with the publishing destinations to update.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute destination_id
    #   <p>The ID of the publishing destination to update.</p>
    #   @return [String]
    # @!attribute destination_properties
    #   <p>A <code>DestinationProperties</code> object that includes the <code>DestinationArn</code>
    #         and <code>KmsKeyArn</code> of the publishing destination.</p>
    #   @return [Types::DestinationProperties]
    class UpdatePublishingDestinationRequest < Struct.new(
      :detector_id,
      :destination_id,
      :destination_properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdatePublishingDestinationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the protected S3 bucket resource.</p>
    # @!attribute object_prefixes
    #   <p>Information about the specified object prefixes. The S3 object will be scanned only 
    #         if it belongs to any of the specified object prefixes.</p>
    #   @return [Array<String>]
    class UpdateS3BucketResource < Struct.new(
      :object_prefixes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The detectorID that specifies the GuardDuty service whose ThreatIntelSet you want to
    #         update.</p>
    #            <p>To find the <code>detectorId</code> in the current Region, see the
    #   Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    #   @return [String]
    # @!attribute threat_intel_set_id
    #   <p>The unique ID that specifies the ThreatIntelSet that you want to update.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The unique ID that specifies the ThreatIntelSet that you want to update.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The updated URI of the file that contains the ThreateIntelSet.</p>
    #   @return [String]
    # @!attribute activate
    #   <p>The updated Boolean value that specifies whether the ThreateIntelSet is active or
    #         not.</p>
    #   @return [Boolean]
    # @!attribute expected_bucket_owner
    #   <p>The Amazon Web Services account ID that owns the Amazon S3 bucket specified in the <b>location</b> parameter.</p>
    #   @return [String]
    class UpdateThreatIntelSetRequest < Struct.new(
      :detector_id,
      :threat_intel_set_id,
      :name,
      :location,
      :activate,
      :expected_bucket_owner,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateThreatIntelSetResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information on the total of usage based on account IDs.</p>
    # @!attribute account_id
    #   <p>The Account ID that generated usage.</p>
    #   @return [String]
    # @!attribute total
    #   <p>Represents the total of usage for the Account ID.</p>
    #   @return [Types::Total]
    class UsageAccountResult < Struct.new(
      :account_id,
      :total,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the criteria used to query usage statistics.</p>
    # @!attribute account_ids
    #   <p>The account IDs to aggregate usage statistics from.</p>
    #   @return [Array<String>]
    # @!attribute data_sources
    #   <p>The data sources to aggregate usage statistics from.</p>
    #   @deprecated
    #     This parameter is deprecated, use Features instead
    #   @return [Array<String>]
    # @!attribute resources
    #   <p>The resources to aggregate usage statistics from. Only accepts exact resource
    #         names.</p>
    #   @return [Array<String>]
    # @!attribute features
    #   <p>The features to aggregate usage statistics from.</p>
    #   @return [Array<String>]
    class UsageCriteria < Struct.new(
      :account_ids,
      :data_sources,
      :resources,
      :features,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information on the result of usage based on data source type.</p>
    # @!attribute data_source
    #   <p>The data source type that generated usage.</p>
    #   @return [String]
    # @!attribute total
    #   <p>Represents the total of usage for the specified data source.</p>
    #   @return [Types::Total]
    class UsageDataSourceResult < Struct.new(
      :data_source,
      :total,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the result of the total usage based on the feature.</p>
    # @!attribute feature
    #   <p>The feature that generated the usage cost.</p>
    #   @return [String]
    # @!attribute total
    #   <p>Contains the total usage with the corresponding currency unit for that value.</p>
    #   @return [Types::Total]
    class UsageFeatureResult < Struct.new(
      :feature,
      :total,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information on the sum of usage based on an Amazon Web Services resource.</p>
    # @!attribute resource
    #   <p>The Amazon Web Services resource that generated usage.</p>
    #   @return [String]
    # @!attribute total
    #   <p>Represents the sum total of usage for the specified resource type.</p>
    #   @return [Types::Total]
    class UsageResourceResult < Struct.new(
      :resource,
      :total,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the result of GuardDuty usage. If a UsageStatisticType is provided the result for
    #       other types will be null. </p>
    # @!attribute sum_by_account
    #   <p>The usage statistic sum organized by account ID.</p>
    #   @return [Array<Types::UsageAccountResult>]
    # @!attribute top_accounts_by_feature
    #   <p>Lists the top 50 accounts by feature that have generated the most
    #         GuardDuty usage, in the order from most to least expensive.</p>
    #            <p>Currently, this doesn't support <code>RDS_LOGIN_EVENTS</code>.</p>
    #   @return [Array<Types::UsageTopAccountsResult>]
    # @!attribute sum_by_data_source
    #   <p>The usage statistic sum organized by on data source.</p>
    #   @return [Array<Types::UsageDataSourceResult>]
    # @!attribute sum_by_resource
    #   <p>The usage statistic sum organized by resource.</p>
    #   @return [Array<Types::UsageResourceResult>]
    # @!attribute top_resources
    #   <p>Lists the top 50 resources that have generated the most GuardDuty usage, in order from
    #         most to least expensive.</p>
    #   @return [Array<Types::UsageResourceResult>]
    # @!attribute sum_by_feature
    #   <p>The usage statistic sum organized by feature.</p>
    #   @return [Array<Types::UsageFeatureResult>]
    class UsageStatistics < Struct.new(
      :sum_by_account,
      :top_accounts_by_feature,
      :sum_by_data_source,
      :sum_by_resource,
      :top_resources,
      :sum_by_feature,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information on the total of usage based on the topmost 50 
    #       account IDs.</p>
    # @!attribute account_id
    #   <p>The unique account ID.</p>
    #   @return [String]
    # @!attribute total
    #   <p>Contains the total usage with the corresponding currency unit for that value.</p>
    #   @return [Types::Total]
    class UsageTopAccountResult < Struct.new(
      :account_id,
      :total,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the usage statistics, calculated
    #       by top accounts by feature.</p>
    # @!attribute feature
    #   <p>Features by which you can generate the usage statistics.</p>
    #            <p>
    #               <code>RDS_LOGIN_EVENTS</code> is currently not supported 
    #         with <code>topAccountsByFeature</code>.</p>
    #   @return [String]
    # @!attribute accounts
    #   <p>The accounts that contributed to the total usage cost.</p>
    #   @return [Array<Types::UsageTopAccountResult>]
    class UsageTopAccountsResult < Struct.new(
      :feature,
      :accounts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the user involved in the attack sequence.</p>
    # @!attribute name
    #   <p>The name of the user.</p>
    #   @return [String]
    # @!attribute uid
    #   <p>The unique identifier of the user.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the user.</p>
    #   @return [String]
    # @!attribute credential_uid
    #   <p>The credentials of the user ID.</p>
    #   @return [String]
    # @!attribute account
    #   <p>Contains information about the Amazon Web Services account.</p>
    #   @return [Types::Account]
    class User < Struct.new(
      :name,
      :uid,
      :type,
      :credential_uid,
      :account,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Volume used by the Kubernetes workload.</p>
    # @!attribute name
    #   <p>Volume name.</p>
    #   @return [String]
    # @!attribute host_path
    #   <p>Represents a pre-existing file or directory on the host machine that the volume maps
    #         to.</p>
    #   @return [Types::HostPath]
    class Volume < Struct.new(
      :name,
      :host_path,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains EBS volume details.</p>
    # @!attribute volume_arn
    #   <p>EBS volume ARN information.</p>
    #   @return [String]
    # @!attribute volume_type
    #   <p>The EBS volume type.</p>
    #   @return [String]
    # @!attribute device_name
    #   <p>The device name for the EBS volume.</p>
    #   @return [String]
    # @!attribute volume_size_in_gb
    #   <p>EBS volume size in GB.</p>
    #   @return [Integer]
    # @!attribute encryption_type
    #   <p>EBS volume encryption type.</p>
    #   @return [String]
    # @!attribute snapshot_arn
    #   <p>Snapshot ARN of the EBS volume.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>KMS key ARN used to encrypt the EBS volume.</p>
    #   @return [String]
    class VolumeDetail < Struct.new(
      :volume_arn,
      :volume_type,
      :device_name,
      :volume_size_in_gb,
      :encryption_type,
      :snapshot_arn,
      :kms_key_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Container volume mount.</p>
    # @!attribute name
    #   <p>Volume mount name.</p>
    #   @return [String]
    # @!attribute mount_path
    #   <p>Volume mount path.</p>
    #   @return [String]
    class VolumeMount < Struct.new(
      :name,
      :mount_path,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon Virtual Private Cloud configuration details associated with your Lambda function.</p>
    # @!attribute subnet_ids
    #   <p>The identifiers of the subnets that are associated with your Lambda function.</p>
    #   @return [Array<String>]
    # @!attribute vpc_id
    #   <p>The identifier of the Amazon Virtual Private Cloud.</p>
    #   @return [String]
    # @!attribute security_groups
    #   <p>The identifier of the security group attached to the Lambda function.</p>
    #   @return [Array<Types::SecurityGroup>]
    class VpcConfig < Struct.new(
      :subnet_ids,
      :vpc_id,
      :security_groups,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
