# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RolesAnywhere
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] duration_seconds
    #   The number of seconds the vended session credentials are valid for.
    #   @return [Integer]
    #
    # @!attribute [rw] enabled
    #   Specifies whether the profile is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] managed_policy_arns
    #   A list of managed policy ARNs that apply to the vended session
    #   credentials.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The name of the profile.
    #   @return [String]
    #
    # @!attribute [rw] require_instance_properties
    #   Specifies whether instance properties are required in temporary
    #   credential requests with this profile.
    #   @return [Boolean]
    #
    # @!attribute [rw] role_arns
    #   A list of IAM roles that this profile can assume in a temporary
    #   credential request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] session_policy
    #   A session policy that applies to the trust boundary of the vended
    #   session credentials.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to attach to the profile.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/CreateProfileRequest AWS API Documentation
    #
    class CreateProfileRequest < Struct.new(
      :duration_seconds,
      :enabled,
      :managed_policy_arns,
      :name,
      :require_instance_properties,
      :role_arns,
      :session_policy,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] enabled
    #   Specifies whether the trust anchor is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   The name of the trust anchor.
    #   @return [String]
    #
    # @!attribute [rw] notification_settings
    #   A list of notification settings to be associated to the trust
    #   anchor.
    #   @return [Array<Types::NotificationSetting>]
    #
    # @!attribute [rw] source
    #   The trust anchor type and its related certificate data.
    #   @return [Types::Source]
    #
    # @!attribute [rw] tags
    #   The tags to attach to the trust anchor.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/CreateTrustAnchorRequest AWS API Documentation
    #
    class CreateTrustAnchorRequest < Struct.new(
      :enabled,
      :name,
      :notification_settings,
      :source,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A record of a presented X509 credential from a temporary credential
    # request.
    #
    # @!attribute [rw] enabled
    #   Indicates whether the credential is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] failed
    #   Indicates whether the temporary credential request was successful.
    #   @return [Boolean]
    #
    # @!attribute [rw] issuer
    #   The fully qualified domain name of the issuing certificate for the
    #   presented end-entity certificate.
    #   @return [String]
    #
    # @!attribute [rw] seen_at
    #   The ISO-8601 time stamp of when the certificate was last used in a
    #   temporary credential request.
    #   @return [Time]
    #
    # @!attribute [rw] serial_number
    #   The serial number of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] x509_certificate_data
    #   The PEM-encoded data of the certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/CredentialSummary AWS API Documentation
    #
    class CredentialSummary < Struct.new(
      :enabled,
      :failed,
      :issuer,
      :seen_at,
      :serial_number,
      :x509_certificate_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # The state of the certificate revocation list (CRL) after a read or
    # write operation.
    #
    # @!attribute [rw] created_at
    #   The ISO-8601 timestamp when the certificate revocation list (CRL)
    #   was created.
    #   @return [Time]
    #
    # @!attribute [rw] crl_arn
    #   The ARN of the certificate revocation list (CRL).
    #   @return [String]
    #
    # @!attribute [rw] crl_data
    #   The state of the certificate revocation list (CRL) after a read or
    #   write operation.
    #   @return [String]
    #
    # @!attribute [rw] crl_id
    #   The unique identifier of the certificate revocation list (CRL).
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Indicates whether the certificate revocation list (CRL) is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   The name of the certificate revocation list (CRL).
    #   @return [String]
    #
    # @!attribute [rw] trust_anchor_arn
    #   The ARN of the TrustAnchor the certificate revocation list (CRL)
    #   will provide revocation for.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The ISO-8601 timestamp when the certificate revocation list (CRL)
    #   was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/CrlDetail AWS API Documentation
    #
    class CrlDetail < Struct.new(
      :created_at,
      :crl_arn,
      :crl_data,
      :crl_id,
      :enabled,
      :name,
      :trust_anchor_arn,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] crl
    #   The state of the certificate revocation list (CRL) after a read or
    #   write operation.
    #   @return [Types::CrlDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/CrlDetailResponse AWS API Documentation
    #
    class CrlDetailResponse < Struct.new(
      :crl)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] crl_data
    #   The x509 v3 specified certificate revocation list (CRL).
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether the certificate revocation list (CRL) is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   The name of the certificate revocation list (CRL).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to attach to the certificate revocation list (CRL).
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] trust_anchor_arn
    #   The ARN of the TrustAnchor the certificate revocation list (CRL)
    #   will provide revocation for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/ImportCrlRequest AWS API Documentation
    #
    class ImportCrlRequest < Struct.new(
      :crl_data,
      :enabled,
      :name,
      :tags,
      :trust_anchor_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key-value pair you set that identifies a property of the
    # authenticating instance.
    #
    # @!attribute [rw] failed
    #   Indicates whether the temporary credential request was successful.
    #   @return [Boolean]
    #
    # @!attribute [rw] properties
    #   A list of instanceProperty objects.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] seen_at
    #   The ISO-8601 time stamp of when the certificate was last used in a
    #   temporary credential request.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/InstanceProperty AWS API Documentation
    #
    class InstanceProperty < Struct.new(
      :failed,
      :properties,
      :seen_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] crls
    #   A list of certificate revocation lists (CRL).
    #   @return [Array<Types::CrlDetail>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where the output should continue from, if a
    #   previous request did not show all results. To get the next results,
    #   make the request again with this value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/ListCrlsResponse AWS API Documentation
    #
    class ListCrlsResponse < Struct.new(
      :crls,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token that indicates where the output should continue from, if a
    #   previous request did not show all results. To get the next results,
    #   make the request again with this value.
    #   @return [String]
    #
    # @!attribute [rw] profiles
    #   A list of profiles.
    #   @return [Array<Types::ProfileDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/ListProfilesResponse AWS API Documentation
    #
    class ListProfilesResponse < Struct.new(
      :next_token,
      :profiles)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token that indicates where the output should continue from, if a
    #   previous request did not show all results. To get the next results,
    #   make the request again with this value.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The number of resources in the paginated list.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/ListRequest AWS API Documentation
    #
    class ListRequest < Struct.new(
      :next_token,
      :page_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token that indicates where the output should continue from, if a
    #   previous request did not show all results. To get the next results,
    #   make the request again with this value.
    #   @return [String]
    #
    # @!attribute [rw] subjects
    #   A list of subjects.
    #   @return [Array<Types::SubjectSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/ListSubjectsResponse AWS API Documentation
    #
    class ListSubjectsResponse < Struct.new(
      :next_token,
      :subjects)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of tags attached to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token that indicates where the output should continue from, if a
    #   previous request did not show all results. To get the next results,
    #   make the request again with this value.
    #   @return [String]
    #
    # @!attribute [rw] trust_anchors
    #   A list of trust anchors.
    #   @return [Array<Types::TrustAnchorDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/ListTrustAnchorsResponse AWS API Documentation
    #
    class ListTrustAnchorsResponse < Struct.new(
      :next_token,
      :trust_anchors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Customizable notification settings that will be applied to
    # notification events. IAM Roles Anywhere consumes these settings while
    # notifying across multiple channels - CloudWatch metrics, EventBridge,
    # and Health Dashboard.
    #
    # @!attribute [rw] channel
    #   The specified channel of notification. IAM Roles Anywhere uses
    #   CloudWatch metrics, EventBridge, and Health Dashboard to notify for
    #   an event.
    #
    #   <note markdown="1"> In the absence of a specific channel, IAM Roles Anywhere applies
    #   this setting to 'ALL' channels.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Indicates whether the notification setting is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] event
    #   The event to which this notification setting is applied.
    #   @return [String]
    #
    # @!attribute [rw] threshold
    #   The number of days before a notification event. This value is
    #   required for a notification setting that is enabled.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/NotificationSetting AWS API Documentation
    #
    class NotificationSetting < Struct.new(
      :channel,
      :enabled,
      :event,
      :threshold)
      SENSITIVE = []
      include Aws::Structure
    end

    # The state of a notification setting.
    #
    # A notification setting includes information such as event name,
    # threshold, status of the notification setting, and the channel to
    # notify.
    #
    # @!attribute [rw] channel
    #   The specified channel of notification. IAM Roles Anywhere uses
    #   CloudWatch metrics, EventBridge, and Health Dashboard to notify for
    #   an event.
    #
    #   <note markdown="1"> In the absence of a specific channel, IAM Roles Anywhere applies
    #   this setting to 'ALL' channels.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] configured_by
    #   The principal that configured the notification setting. For default
    #   settings configured by IAM Roles Anywhere, the value is
    #   `rolesanywhere.amazonaws.com`, and for customized notifications
    #   settings, it is the respective account ID.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Indicates whether the notification setting is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] event
    #   The event to which this notification setting is applied.
    #   @return [String]
    #
    # @!attribute [rw] threshold
    #   The number of days before a notification event.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/NotificationSettingDetail AWS API Documentation
    #
    class NotificationSettingDetail < Struct.new(
      :channel,
      :configured_by,
      :enabled,
      :event,
      :threshold)
      SENSITIVE = []
      include Aws::Structure
    end

    # A notification setting key to reset. A notification setting key
    # includes the event and the channel.
    #
    # @!attribute [rw] channel
    #   The specified channel of notification.
    #   @return [String]
    #
    # @!attribute [rw] event
    #   The notification setting event to reset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/NotificationSettingKey AWS API Documentation
    #
    class NotificationSettingKey < Struct.new(
      :channel,
      :event)
      SENSITIVE = []
      include Aws::Structure
    end

    # The state of the profile after a read or write operation.
    #
    # @!attribute [rw] created_at
    #   The ISO-8601 timestamp when the profile was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon Web Services account that created the profile.
    #   @return [String]
    #
    # @!attribute [rw] duration_seconds
    #   The number of seconds the vended session credentials are valid for.
    #   @return [Integer]
    #
    # @!attribute [rw] enabled
    #   Indicates whether the profile is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] managed_policy_arns
    #   A list of managed policy ARNs that apply to the vended session
    #   credentials.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The name of the profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_arn
    #   The ARN of the profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of the profile.
    #   @return [String]
    #
    # @!attribute [rw] require_instance_properties
    #   Specifies whether instance properties are required in temporary
    #   credential requests with this profile.
    #   @return [Boolean]
    #
    # @!attribute [rw] role_arns
    #   A list of IAM roles that this profile can assume in a temporary
    #   credential request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] session_policy
    #   A session policy that applies to the trust boundary of the vended
    #   session credentials.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The ISO-8601 timestamp when the profile was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/ProfileDetail AWS API Documentation
    #
    class ProfileDetail < Struct.new(
      :created_at,
      :created_by,
      :duration_seconds,
      :enabled,
      :managed_policy_arns,
      :name,
      :profile_arn,
      :profile_id,
      :require_instance_properties,
      :role_arns,
      :session_policy,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile
    #   The state of the profile after a read or write operation.
    #   @return [Types::ProfileDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/ProfileDetailResponse AWS API Documentation
    #
    class ProfileDetailResponse < Struct.new(
      :profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notification_settings
    #   A list of notification settings to be associated to the trust
    #   anchor.
    #   @return [Array<Types::NotificationSetting>]
    #
    # @!attribute [rw] trust_anchor_id
    #   The unique identifier of the trust anchor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/PutNotificationSettingsRequest AWS API Documentation
    #
    class PutNotificationSettingsRequest < Struct.new(
      :notification_settings,
      :trust_anchor_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trust_anchor
    #   The state of the trust anchor after a read or write operation.
    #   @return [Types::TrustAnchorDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/PutNotificationSettingsResponse AWS API Documentation
    #
    class PutNotificationSettingsResponse < Struct.new(
      :trust_anchor)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notification_setting_keys
    #   A list of notification setting keys to reset. A notification setting
    #   key includes the event and the channel.
    #   @return [Array<Types::NotificationSettingKey>]
    #
    # @!attribute [rw] trust_anchor_id
    #   The unique identifier of the trust anchor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/ResetNotificationSettingsRequest AWS API Documentation
    #
    class ResetNotificationSettingsRequest < Struct.new(
      :notification_setting_keys,
      :trust_anchor_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trust_anchor
    #   The state of the trust anchor after a read or write operation.
    #   @return [Types::TrustAnchorDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/ResetNotificationSettingsResponse AWS API Documentation
    #
    class ResetNotificationSettingsResponse < Struct.new(
      :trust_anchor)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource could not be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] crl_id
    #   The unique identifier of the certificate revocation list (CRL).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/ScalarCrlRequest AWS API Documentation
    #
    class ScalarCrlRequest < Struct.new(
      :crl_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_id
    #   The unique identifier of the profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/ScalarProfileRequest AWS API Documentation
    #
    class ScalarProfileRequest < Struct.new(
      :profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subject_id
    #   The unique identifier of the subject.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/ScalarSubjectRequest AWS API Documentation
    #
    class ScalarSubjectRequest < Struct.new(
      :subject_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trust_anchor_id
    #   The unique identifier of the trust anchor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/ScalarTrustAnchorRequest AWS API Documentation
    #
    class ScalarTrustAnchorRequest < Struct.new(
      :trust_anchor_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The trust anchor type and its related certificate data.
    #
    # @!attribute [rw] source_data
    #   The data field of the trust anchor depending on its type.
    #   @return [Types::SourceData]
    #
    # @!attribute [rw] source_type
    #   The type of the trust anchor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/Source AWS API Documentation
    #
    class Source < Struct.new(
      :source_data,
      :source_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data field of the trust anchor depending on its type.
    #
    # @note SourceData is a union - when making an API calls you must set exactly one of the members.
    #
    # @note SourceData is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of SourceData corresponding to the set member.
    #
    # @!attribute [rw] acm_pca_arn
    #   The root certificate of the Private Certificate Authority specified
    #   by this ARN is used in trust validation for temporary credential
    #   requests. Included for trust anchors of type `AWS_ACM_PCA`.
    #   @return [String]
    #
    # @!attribute [rw] x509_certificate_data
    #   The PEM-encoded data for the certificate anchor. Included for trust
    #   anchors of type `CERTIFICATE_BUNDLE`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/SourceData AWS API Documentation
    #
    class SourceData < Struct.new(
      :acm_pca_arn,
      :x509_certificate_data,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AcmPcaArn < SourceData; end
      class X509CertificateData < SourceData; end
      class Unknown < SourceData; end
    end

    # The state of the subject after a read or write operation.
    #
    # @!attribute [rw] created_at
    #   The ISO-8601 timestamp when the subject was created.
    #   @return [Time]
    #
    # @!attribute [rw] credentials
    #   The temporary session credentials vended at the last authenticating
    #   call with this subject.
    #   @return [Array<Types::CredentialSummary>]
    #
    # @!attribute [rw] enabled
    #   The enabled status of the subject.
    #   @return [Boolean]
    #
    # @!attribute [rw] instance_properties
    #   The specified instance properties associated with the request.
    #   @return [Array<Types::InstanceProperty>]
    #
    # @!attribute [rw] last_seen_at
    #   The ISO-8601 timestamp of the last time this subject requested
    #   temporary session credentials.
    #   @return [Time]
    #
    # @!attribute [rw] subject_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] subject_id
    #   The id of the resource
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The ISO-8601 timestamp when the subject was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] x509_subject
    #   The x509 principal identifier of the authenticating certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/SubjectDetail AWS API Documentation
    #
    class SubjectDetail < Struct.new(
      :created_at,
      :credentials,
      :enabled,
      :instance_properties,
      :last_seen_at,
      :subject_arn,
      :subject_id,
      :updated_at,
      :x509_subject)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subject
    #   The state of the subject after a read or write operation.
    #   @return [Types::SubjectDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/SubjectDetailResponse AWS API Documentation
    #
    class SubjectDetailResponse < Struct.new(
      :subject)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary representation of subjects.
    #
    # @!attribute [rw] created_at
    #   The ISO-8601 time stamp of when the certificate was first used in a
    #   temporary credential request.
    #   @return [Time]
    #
    # @!attribute [rw] enabled
    #   The enabled status of the subject.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_seen_at
    #   The ISO-8601 time stamp of when the certificate was last used in a
    #   temporary credential request.
    #   @return [Time]
    #
    # @!attribute [rw] subject_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] subject_id
    #   The id of the resource.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The ISO-8601 timestamp when the subject was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] x509_subject
    #   The x509 principal identifier of the authenticating certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/SubjectSummary AWS API Documentation
    #
    class SubjectSummary < Struct.new(
      :created_at,
      :enabled,
      :last_seen_at,
      :subject_arn,
      :subject_id,
      :updated_at,
      :x509_subject)
      SENSITIVE = []
      include Aws::Structure
    end

    # A label that consists of a key and value you define.
    #
    # @!attribute [rw] key
    #   The tag key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = [:key, :value]
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to attach to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Too many tags.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The state of the trust anchor after a read or write operation.
    #
    # @!attribute [rw] created_at
    #   The ISO-8601 timestamp when the trust anchor was created.
    #   @return [Time]
    #
    # @!attribute [rw] enabled
    #   Indicates whether the trust anchor is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   The name of the trust anchor.
    #   @return [String]
    #
    # @!attribute [rw] notification_settings
    #   A list of notification settings to be associated to the trust
    #   anchor.
    #   @return [Array<Types::NotificationSettingDetail>]
    #
    # @!attribute [rw] source
    #   The trust anchor type and its related certificate data.
    #   @return [Types::Source]
    #
    # @!attribute [rw] trust_anchor_arn
    #   The ARN of the trust anchor.
    #   @return [String]
    #
    # @!attribute [rw] trust_anchor_id
    #   The unique identifier of the trust anchor.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The ISO-8601 timestamp when the trust anchor was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/TrustAnchorDetail AWS API Documentation
    #
    class TrustAnchorDetail < Struct.new(
      :created_at,
      :enabled,
      :name,
      :notification_settings,
      :source,
      :trust_anchor_arn,
      :trust_anchor_id,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trust_anchor
    #   The state of the trust anchor after a read or write operation.
    #   @return [Types::TrustAnchorDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/TrustAnchorDetailResponse AWS API Documentation
    #
    class TrustAnchorDetailResponse < Struct.new(
      :trust_anchor)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of keys. Tag keys are the unique identifiers of tags.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] crl_data
    #   The x509 v3 specified certificate revocation list (CRL).
    #   @return [String]
    #
    # @!attribute [rw] crl_id
    #   The unique identifier of the certificate revocation list (CRL).
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Crl.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/UpdateCrlRequest AWS API Documentation
    #
    class UpdateCrlRequest < Struct.new(
      :crl_data,
      :crl_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] duration_seconds
    #   The number of seconds the vended session credentials are valid for.
    #   @return [Integer]
    #
    # @!attribute [rw] managed_policy_arns
    #   A list of managed policy ARNs that apply to the vended session
    #   credentials.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The name of the profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of the profile.
    #   @return [String]
    #
    # @!attribute [rw] role_arns
    #   A list of IAM roles that this profile can assume in a temporary
    #   credential request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] session_policy
    #   A session policy that applies to the trust boundary of the vended
    #   session credentials.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/UpdateProfileRequest AWS API Documentation
    #
    class UpdateProfileRequest < Struct.new(
      :duration_seconds,
      :managed_policy_arns,
      :name,
      :profile_id,
      :role_arns,
      :session_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the trust anchor.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The trust anchor type and its related certificate data.
    #   @return [Types::Source]
    #
    # @!attribute [rw] trust_anchor_id
    #   The unique identifier of the trust anchor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/UpdateTrustAnchorRequest AWS API Documentation
    #
    class UpdateTrustAnchorRequest < Struct.new(
      :name,
      :source,
      :trust_anchor_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Validation exception error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
