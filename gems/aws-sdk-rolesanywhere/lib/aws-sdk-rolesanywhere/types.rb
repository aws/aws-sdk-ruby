# frozen_string_literal: true

# This is generated code!

module Aws::RolesAnywhere
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A mapping applied to the authenticating end-entity certificate.</p>
    # @!attribute certificate_field
    #   <p>Fields (x509Subject, x509Issuer and x509SAN) within X.509 certificates.</p>
    #   @return [String]
    # @!attribute mapping_rules
    #   <p>A list of mapping entries for every supported specifier or sub-field.</p>
    #   @return [Array<Types::MappingRule>]
    class AttributeMapping < Struct.new(
      :certificate_field,
      :mapping_rules,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the profile.</p>
    #   @return [String]
    # @!attribute require_instance_properties
    #   <p>Specifies whether instance properties are required in temporary credential requests with this profile. </p>
    #   @return [Boolean]
    # @!attribute session_policy
    #   <p>A session policy that applies to the trust boundary of the vended session credentials. </p>
    #   @return [String]
    # @!attribute role_arns
    #   <p>A list of IAM roles that this profile can assume in a temporary credential request.</p>
    #   @return [Array<String>]
    # @!attribute managed_policy_arns
    #   <p>A list of managed policy ARNs that apply to the vended session credentials. </p>
    #   @return [Array<String>]
    # @!attribute duration_seconds
    #   <p> Used to determine how long sessions vended using this profile are valid for. See the <code>Expiration</code> section of the 
    #   <a href="https://docs.aws.amazon.com/rolesanywhere/latest/userguide/authentication-create-session.html#credentials-object">CreateSession API documentation</a>
    #   page for more details. In requests, if this value is not provided, the default value will be 3600. </p>
    #   @return [Integer]
    # @!attribute enabled
    #   <p>Specifies whether the profile is enabled.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>The tags to attach to the profile.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute accept_role_session_name
    #   <p>Used to determine if a custom role session name will be accepted in a temporary credential request.</p>
    #   @return [Boolean]
    class CreateProfileInput < Struct.new(
      :name,
      :require_instance_properties,
      :session_policy,
      :role_arns,
      :managed_policy_arns,
      :duration_seconds,
      :enabled,
      :tags,
      :accept_role_session_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile
    #   <p>The state of the profile after a read or write operation.</p>
    #   @return [Types::ProfileDetail]
    class CreateProfileOutput < Struct.new(
      :profile,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the trust anchor.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The trust anchor type and its related certificate data.</p>
    #   @return [Types::Source]
    # @!attribute enabled
    #   <p>Specifies whether the trust anchor is enabled.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>The tags to attach to the trust anchor.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute notification_settings
    #   <p>A list of notification settings to be associated to the trust anchor.</p>
    #   @return [Array<Types::NotificationSetting>]
    class CreateTrustAnchorInput < Struct.new(
      :name,
      :source,
      :enabled,
      :tags,
      :notification_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_anchor
    #   <p>The state of the trust anchor after a read or write operation. </p>
    #   @return [Types::TrustAnchorDetail]
    class CreateTrustAnchorOutput < Struct.new(
      :trust_anchor,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A record of a presented X509 credential from a temporary credential request. </p>
    # @!attribute seen_at
    #   <p>The ISO-8601 time stamp of when the certificate was last used in a temporary credential request.</p>
    #   @return [Time]
    # @!attribute serial_number
    #   <p>The serial number of the certificate.</p>
    #   @return [String]
    # @!attribute issuer
    #   <p>The fully qualified domain name of the issuing certificate for the presented end-entity certificate.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Indicates whether the credential is enabled.</p>
    #   @return [Boolean]
    # @!attribute x509_certificate_data
    #   <p>The PEM-encoded data of the certificate.</p>
    #   @return [String]
    # @!attribute failed
    #   <p>Indicates whether the temporary credential request was successful. </p>
    #   @return [Boolean]
    class CredentialSummary < Struct.new(
      :seen_at,
      :serial_number,
      :issuer,
      :enabled,
      :x509_certificate_data,
      :failed,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The state of the certificate revocation list (CRL) after a read or write operation.</p>
    # @!attribute crl_id
    #   <p>The unique identifier of the certificate revocation list (CRL).</p>
    #   @return [String]
    # @!attribute crl_arn
    #   <p>The ARN of the certificate revocation list (CRL).</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the certificate revocation list (CRL).</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Indicates whether the certificate revocation list (CRL) is enabled.</p>
    #   @return [Boolean]
    # @!attribute crl_data
    #   <p>The state of the certificate revocation list (CRL) after a read or write operation.</p>
    #   @return [String]
    # @!attribute trust_anchor_arn
    #   <p>The ARN of the TrustAnchor the certificate revocation list (CRL) will provide revocation for. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The ISO-8601 timestamp when the certificate revocation list (CRL) was created. </p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The ISO-8601 timestamp when the certificate revocation list (CRL) was last updated. </p>
    #   @return [Time]
    class CrlDetail < Struct.new(
      :crl_id,
      :crl_arn,
      :name,
      :enabled,
      :crl_data,
      :trust_anchor_arn,
      :created_at,
      :updated_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>The unique identifier of the profile.</p>
    #   @return [String]
    # @!attribute certificate_field
    #   <p>Fields (x509Subject, x509Issuer and x509SAN) within X.509 certificates.</p>
    #   @return [String]
    # @!attribute specifiers
    #   <p>A list of specifiers of a certificate field; for example, CN, OU, UID from a Subject.</p>
    #   @return [Array<String>]
    class DeleteAttributeMappingRequest < Struct.new(
      :profile_id,
      :certificate_field,
      :specifiers,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile
    #   <p>The state of the profile after a read or write operation.</p>
    #   @return [Types::ProfileDetail]
    class DeleteAttributeMappingResponse < Struct.new(
      :profile,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute crl_id
    #   <p>The unique identifier of the certificate revocation list (CRL).</p>
    #   @return [String]
    class DeleteCrlInput < Struct.new(
      :crl_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute crl
    #   <p>The state of the certificate revocation list (CRL) after a read or write operation.</p>
    #   @return [Types::CrlDetail]
    class DeleteCrlOutput < Struct.new(
      :crl,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>The unique identifier of the profile.</p>
    #   @return [String]
    class DeleteProfileInput < Struct.new(
      :profile_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile
    #   <p>The state of the profile after a read or write operation.</p>
    #   @return [Types::ProfileDetail]
    class DeleteProfileOutput < Struct.new(
      :profile,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_anchor_id
    #   <p>The unique identifier of the trust anchor.</p>
    #   @return [String]
    class DeleteTrustAnchorInput < Struct.new(
      :trust_anchor_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_anchor
    #   <p>The state of the trust anchor after a read or write operation. </p>
    #   @return [Types::TrustAnchorDetail]
    class DeleteTrustAnchorOutput < Struct.new(
      :trust_anchor,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute crl_id
    #   <p>The unique identifier of the certificate revocation list (CRL).</p>
    #   @return [String]
    class DisableCrlInput < Struct.new(
      :crl_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute crl
    #   <p>The state of the certificate revocation list (CRL) after a read or write operation.</p>
    #   @return [Types::CrlDetail]
    class DisableCrlOutput < Struct.new(
      :crl,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>The unique identifier of the profile.</p>
    #   @return [String]
    class DisableProfileInput < Struct.new(
      :profile_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile
    #   <p>The state of the profile after a read or write operation.</p>
    #   @return [Types::ProfileDetail]
    class DisableProfileOutput < Struct.new(
      :profile,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_anchor_id
    #   <p>The unique identifier of the trust anchor.</p>
    #   @return [String]
    class DisableTrustAnchorInput < Struct.new(
      :trust_anchor_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_anchor
    #   <p>The state of the trust anchor after a read or write operation. </p>
    #   @return [Types::TrustAnchorDetail]
    class DisableTrustAnchorOutput < Struct.new(
      :trust_anchor,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute crl_id
    #   <p>The unique identifier of the certificate revocation list (CRL).</p>
    #   @return [String]
    class EnableCrlInput < Struct.new(
      :crl_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute crl
    #   <p>The state of the certificate revocation list (CRL) after a read or write operation.</p>
    #   @return [Types::CrlDetail]
    class EnableCrlOutput < Struct.new(
      :crl,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>The unique identifier of the profile.</p>
    #   @return [String]
    class EnableProfileInput < Struct.new(
      :profile_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile
    #   <p>The state of the profile after a read or write operation.</p>
    #   @return [Types::ProfileDetail]
    class EnableProfileOutput < Struct.new(
      :profile,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_anchor_id
    #   <p>The unique identifier of the trust anchor.</p>
    #   @return [String]
    class EnableTrustAnchorInput < Struct.new(
      :trust_anchor_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_anchor
    #   <p>The state of the trust anchor after a read or write operation. </p>
    #   @return [Types::TrustAnchorDetail]
    class EnableTrustAnchorOutput < Struct.new(
      :trust_anchor,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute crl_id
    #   <p>The unique identifier of the certificate revocation list (CRL).</p>
    #   @return [String]
    class GetCrlInput < Struct.new(
      :crl_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute crl
    #   <p>The state of the certificate revocation list (CRL) after a read or write operation.</p>
    #   @return [Types::CrlDetail]
    class GetCrlOutput < Struct.new(
      :crl,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>The unique identifier of the profile.</p>
    #   @return [String]
    class GetProfileInput < Struct.new(
      :profile_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile
    #   <p>The state of the profile after a read or write operation.</p>
    #   @return [Types::ProfileDetail]
    class GetProfileOutput < Struct.new(
      :profile,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute subject_id
    #   <p>The unique identifier of the subject. </p>
    #   @return [String]
    class GetSubjectInput < Struct.new(
      :subject_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute subject
    #   <p>The state of the subject after a read or write operation.</p>
    #   @return [Types::SubjectDetail]
    class GetSubjectOutput < Struct.new(
      :subject,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_anchor_id
    #   <p>The unique identifier of the trust anchor.</p>
    #   @return [String]
    class GetTrustAnchorInput < Struct.new(
      :trust_anchor_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_anchor
    #   <p>The state of the trust anchor after a read or write operation. </p>
    #   @return [Types::TrustAnchorDetail]
    class GetTrustAnchorOutput < Struct.new(
      :trust_anchor,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the certificate revocation list (CRL).</p>
    #   @return [String]
    # @!attribute crl_data
    #   <p>The x509 v3 specified certificate revocation list (CRL).</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Specifies whether the certificate revocation list (CRL) is enabled.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>A list of tags to attach to the certificate revocation list (CRL).</p>
    #   @return [Array<Types::Tag>]
    # @!attribute trust_anchor_arn
    #   <p>The ARN of the TrustAnchor the certificate revocation list (CRL) will provide revocation for.</p>
    #   @return [String]
    class ImportCrlInput < Struct.new(
      :name,
      :crl_data,
      :enabled,
      :tags,
      :trust_anchor_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute crl
    #   <p>The state of the certificate revocation list (CRL) after a read or write operation.</p>
    #   @return [Types::CrlDetail]
    class ImportCrlOutput < Struct.new(
      :crl,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A key-value pair you set that identifies a property of the authenticating instance.</p>
    # @!attribute seen_at
    #   <p>The ISO-8601 time stamp of when the certificate was last used in a temporary credential request.</p>
    #   @return [Time]
    # @!attribute properties
    #   <p>A list of instanceProperty objects. </p>
    #   @return [Hash<String, String>]
    # @!attribute failed
    #   <p>Indicates whether the temporary credential request was successful. </p>
    #   @return [Boolean]
    class InstanceProperty < Struct.new(
      :seen_at,
      :properties,
      :failed,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates where the output should continue from, if a previous request did not show all results. To get the next results, make the request again with this value.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The number of resources in the paginated list. </p>
    #   @return [Integer]
    class ListCrlsInput < Struct.new(
      :next_token,
      :page_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates where the output should continue from, if a previous request did not show all results. To get the next results, make the request again with this value.</p>
    #   @return [String]
    # @!attribute crls
    #   <p>A list of certificate revocation lists (CRL). </p>
    #   @return [Array<Types::CrlDetail>]
    class ListCrlsOutput < Struct.new(
      :next_token,
      :crls,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates where the output should continue from, if a previous request did not show all results. To get the next results, make the request again with this value.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The number of resources in the paginated list. </p>
    #   @return [Integer]
    class ListProfilesInput < Struct.new(
      :next_token,
      :page_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates where the output should continue from, if a previous request did not show all results. To get the next results, make the request again with this value.</p>
    #   @return [String]
    # @!attribute profiles
    #   <p>A list of profiles.</p>
    #   @return [Array<Types::ProfileDetail>]
    class ListProfilesOutput < Struct.new(
      :next_token,
      :profiles,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates where the output should continue from, if a previous request did not show all results. To get the next results, make the request again with this value.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The number of resources in the paginated list. </p>
    #   @return [Integer]
    class ListSubjectsInput < Struct.new(
      :next_token,
      :page_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute subjects
    #   <p>A list of subjects.</p>
    #   @return [Array<Types::SubjectSummary>]
    # @!attribute next_token
    #   <p>A token that indicates where the output should continue from, if a previous request did not show all results. To get the next results, make the request again with this value.</p>
    #   @return [String]
    class ListSubjectsOutput < Struct.new(
      :subjects,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A list of tags attached to the resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates where the output should continue from, if a previous request did not show all results. To get the next results, make the request again with this value.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The number of resources in the paginated list. </p>
    #   @return [Integer]
    class ListTrustAnchorsInput < Struct.new(
      :next_token,
      :page_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates where the output should continue from, if a previous request did not show all results. To get the next results, make the request again with this value.</p>
    #   @return [String]
    # @!attribute trust_anchors
    #   <p>A list of trust anchors.</p>
    #   @return [Array<Types::TrustAnchorDetail>]
    class ListTrustAnchorsOutput < Struct.new(
      :next_token,
      :trust_anchors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A single mapping entry for each supported specifier or sub-field.</p>
    # @!attribute specifier
    #   <p>Specifier within a certificate field, such as CN, OU, or UID from the Subject field.</p>
    #   @return [String]
    class MappingRule < Struct.new(
      :specifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #          Customizable notification settings that will be applied to notification events.
    #          IAM Roles Anywhere consumes these settings while notifying across multiple channels - CloudWatch metrics, EventBridge, and Health Dashboard.
    #       </p>
    # @!attribute enabled
    #   <p>Indicates whether the notification setting is enabled.</p>
    #   @return [Boolean]
    # @!attribute event
    #   <p>The event to which this notification setting is applied.</p>
    #   @return [String]
    # @!attribute threshold
    #   <p>The number of days before a notification event. This value is required for a notification setting that is enabled.</p>
    #   @return [Integer]
    # @!attribute channel
    #   <p>The specified channel of notification.
    #         IAM Roles Anywhere uses CloudWatch metrics, EventBridge, and Health Dashboard to notify for an event.</p>
    #            <note>
    #               <p>In the absence of a specific channel, IAM Roles Anywhere applies this setting to 'ALL' channels.</p>
    #            </note>
    #   @return [String]
    class NotificationSetting < Struct.new(
      :enabled,
      :event,
      :threshold,
      :channel,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The state of a notification setting.</p>
    #          <p>A notification setting includes information such as event name, threshold, status of
    #          the notification setting, and the channel to notify.</p>
    # @!attribute enabled
    #   <p>Indicates whether the notification setting is enabled.</p>
    #   @return [Boolean]
    # @!attribute event
    #   <p>The event to which this notification setting is applied.</p>
    #   @return [String]
    # @!attribute threshold
    #   <p>The number of days before a notification event.</p>
    #   @return [Integer]
    # @!attribute channel
    #   <p>The specified channel of notification.
    #         IAM Roles Anywhere uses CloudWatch metrics, EventBridge, and Health Dashboard to notify for an event.</p>
    #            <note>
    #               <p>In the absence of a specific channel, IAM Roles Anywhere applies this setting to 'ALL' channels.</p>
    #            </note>
    #   @return [String]
    # @!attribute configured_by
    #   <p>The principal that configured the notification setting.
    #         For default settings configured by IAM Roles Anywhere,
    #         the value is <code>rolesanywhere.amazonaws.com</code>, and
    #         for customized notifications settings, it is the respective account ID.
    #         </p>
    #   @return [String]
    class NotificationSettingDetail < Struct.new(
      :enabled,
      :event,
      :threshold,
      :channel,
      :configured_by,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A notification setting key to reset.
    #          A notification setting key includes the event and the channel.
    #       </p>
    # @!attribute event
    #   <p>The notification setting event to reset.</p>
    #   @return [String]
    # @!attribute channel
    #   <p>The specified channel of notification.</p>
    #   @return [String]
    class NotificationSettingKey < Struct.new(
      :event,
      :channel,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The state of the profile after a read or write operation.</p>
    # @!attribute profile_id
    #   <p>The unique identifier of the profile.</p>
    #   @return [String]
    # @!attribute profile_arn
    #   <p>The ARN of the profile.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the profile.</p>
    #   @return [String]
    # @!attribute require_instance_properties
    #   <p>Specifies whether instance properties are required in temporary credential requests with this profile. </p>
    #   @return [Boolean]
    # @!attribute enabled
    #   <p>Indicates whether the profile is enabled.</p>
    #   @return [Boolean]
    # @!attribute created_by
    #   <p>The Amazon Web Services account that created the profile.</p>
    #   @return [String]
    # @!attribute session_policy
    #   <p>A session policy that applies to the trust boundary of the vended session credentials. </p>
    #   @return [String]
    # @!attribute role_arns
    #   <p>A list of IAM roles that this profile can assume in a temporary credential request.</p>
    #   @return [Array<String>]
    # @!attribute managed_policy_arns
    #   <p>A list of managed policy ARNs that apply to the vended session credentials. </p>
    #   @return [Array<String>]
    # @!attribute created_at
    #   <p>The ISO-8601 timestamp when the profile was created. </p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The ISO-8601 timestamp when the profile was last updated. </p>
    #   @return [Time]
    # @!attribute duration_seconds
    #   <p> Used to determine how long sessions vended using this profile are valid for. See the <code>Expiration</code> section of the 
    #   <a href="https://docs.aws.amazon.com/rolesanywhere/latest/userguide/authentication-create-session.html#credentials-object">CreateSession API documentation</a>
    #   page for more details. In requests, if this value is not provided, the default value will be 3600. </p>
    #   @return [Integer]
    # @!attribute accept_role_session_name
    #   <p>Used to determine if a custom role session name will be accepted in a temporary credential request.</p>
    #   @return [Boolean]
    # @!attribute attribute_mappings
    #   <p>A mapping applied to the authenticating end-entity certificate.</p>
    #   @return [Array<Types::AttributeMapping>]
    class ProfileDetail < Struct.new(
      :profile_id,
      :profile_arn,
      :name,
      :require_instance_properties,
      :enabled,
      :created_by,
      :session_policy,
      :role_arns,
      :managed_policy_arns,
      :created_at,
      :updated_at,
      :duration_seconds,
      :accept_role_session_name,
      :attribute_mappings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>The unique identifier of the profile.</p>
    #   @return [String]
    # @!attribute certificate_field
    #   <p>Fields (x509Subject, x509Issuer and x509SAN) within X.509 certificates.</p>
    #   @return [String]
    # @!attribute mapping_rules
    #   <p>A list of mapping entries for every supported specifier or sub-field.</p>
    #   @return [Array<Types::MappingRule>]
    class PutAttributeMappingRequest < Struct.new(
      :profile_id,
      :certificate_field,
      :mapping_rules,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile
    #   <p>The state of the profile after a read or write operation.</p>
    #   @return [Types::ProfileDetail]
    class PutAttributeMappingResponse < Struct.new(
      :profile,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_anchor_id
    #   <p>The unique identifier of the trust anchor.</p>
    #   @return [String]
    # @!attribute notification_settings
    #   <p>A list of notification settings to be associated to the trust anchor.</p>
    #   @return [Array<Types::NotificationSetting>]
    class PutNotificationSettingsRequest < Struct.new(
      :trust_anchor_id,
      :notification_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_anchor
    #   <p>The state of the trust anchor after a read or write operation. </p>
    #   @return [Types::TrustAnchorDetail]
    class PutNotificationSettingsResponse < Struct.new(
      :trust_anchor,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_anchor_id
    #   <p>The unique identifier of the trust anchor.</p>
    #   @return [String]
    # @!attribute notification_setting_keys
    #   <p>A list of notification setting keys to reset.
    #            A notification setting key includes the event and the channel.
    #         </p>
    #   @return [Array<Types::NotificationSettingKey>]
    class ResetNotificationSettingsRequest < Struct.new(
      :trust_anchor_id,
      :notification_setting_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_anchor
    #   <p>The state of the trust anchor after a read or write operation. </p>
    #   @return [Types::TrustAnchorDetail]
    class ResetNotificationSettingsResponse < Struct.new(
      :trust_anchor,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The resource could not be found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The trust anchor type and its related certificate data.</p>
    # @!attribute source_type
    #   <p>The type of the trust anchor. </p>
    #   @return [String]
    # @!attribute source_data
    #   <p>The data field of the trust anchor depending on its type. </p>
    #   @return [Types::SourceData]
    class Source < Struct.new(
      :source_type,
      :source_data,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The data field of the trust anchor depending on its type. </p>
    # @!attribute x509_certificate_data
    #   <p>The PEM-encoded data for the certificate anchor. Included for trust anchors of type <code>CERTIFICATE_BUNDLE</code>. </p>
    #   @return [String]
    # @!attribute acm_pca_arn
    #   <p>
    #            The root certificate of the Private Certificate Authority specified by this ARN is used in trust
    #            validation for temporary credential requests. Included for trust anchors of type <code>AWS_ACM_PCA</code>.
    #         </p>
    #   @return [String]
    class SourceData < Struct.new(
      :x509_certificate_data,
      :acm_pca_arn,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class X509CertificateData < SourceData; end
      class AcmPcaArn < SourceData; end
      class Unknown < SourceData; end
    end

    # <p>The state of the subject after a read or write operation.</p>
    # @!attribute subject_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute subject_id
    #   <p>The id of the resource</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>The enabled status of the subject.</p>
    #   @return [Boolean]
    # @!attribute x509_subject
    #   <p>The x509 principal identifier of the authenticating certificate.</p>
    #   @return [String]
    # @!attribute last_seen_at
    #   <p>The ISO-8601 timestamp of the last time this subject requested temporary session credentials.</p>
    #   @return [Time]
    # @!attribute created_at
    #   <p>The ISO-8601 timestamp when the subject was created. </p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The ISO-8601 timestamp when the subject was last updated.</p>
    #   @return [Time]
    # @!attribute credentials
    #   <p>The temporary session credentials vended at the last authenticating call with this subject.</p>
    #   @return [Array<Types::CredentialSummary>]
    # @!attribute instance_properties
    #   <p>The specified instance properties associated with the request.</p>
    #   @return [Array<Types::InstanceProperty>]
    class SubjectDetail < Struct.new(
      :subject_arn,
      :subject_id,
      :enabled,
      :x509_subject,
      :last_seen_at,
      :created_at,
      :updated_at,
      :credentials,
      :instance_properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A summary representation of subjects.</p>
    # @!attribute subject_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute subject_id
    #   <p>The id of the resource.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>The enabled status of the subject. </p>
    #   @return [Boolean]
    # @!attribute x509_subject
    #   <p>The x509 principal identifier of the authenticating certificate.</p>
    #   @return [String]
    # @!attribute last_seen_at
    #   <p>The ISO-8601 time stamp of when the certificate was last used in a temporary credential request.</p>
    #   @return [Time]
    # @!attribute created_at
    #   <p>The ISO-8601 time stamp of when the certificate was first used in a temporary credential request.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The ISO-8601 timestamp when the subject was last updated. </p>
    #   @return [Time]
    class SubjectSummary < Struct.new(
      :subject_arn,
      :subject_id,
      :enabled,
      :x509_subject,
      :last_seen_at,
      :created_at,
      :updated_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A label that consists of a key and value you define. </p>
    # @!attribute key
    #   <p>The tag key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The tag value.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to attach to the resource.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Too many tags.</p>
    # @!attribute message
    #   @return [String]
    class TooManyTagsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The state of the trust anchor after a read or write operation. </p>
    # @!attribute trust_anchor_id
    #   <p>The unique identifier of the trust anchor.</p>
    #   @return [String]
    # @!attribute trust_anchor_arn
    #   <p>The ARN of the trust anchor.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the trust anchor.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The trust anchor type and its related certificate data.</p>
    #   @return [Types::Source]
    # @!attribute enabled
    #   <p>Indicates whether the trust anchor is enabled.</p>
    #   @return [Boolean]
    # @!attribute created_at
    #   <p>The ISO-8601 timestamp when the trust anchor was created. </p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The ISO-8601 timestamp when the trust anchor was last updated. </p>
    #   @return [Time]
    # @!attribute notification_settings
    #   <p>A list of notification settings to be associated to the trust anchor.</p>
    #   @return [Array<Types::NotificationSettingDetail>]
    class TrustAnchorDetail < Struct.new(
      :trust_anchor_id,
      :trust_anchor_arn,
      :name,
      :source,
      :enabled,
      :created_at,
      :updated_at,
      :notification_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of keys. Tag keys are the unique identifiers of tags. </p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute crl_id
    #   <p>The unique identifier of the certificate revocation list (CRL).</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Crl.</p>
    #   @return [String]
    # @!attribute crl_data
    #   <p>The x509 v3 specified certificate revocation list (CRL).</p>
    #   @return [String]
    class UpdateCrlInput < Struct.new(
      :crl_id,
      :name,
      :crl_data,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute crl
    #   <p>The state of the certificate revocation list (CRL) after a read or write operation.</p>
    #   @return [Types::CrlDetail]
    class UpdateCrlOutput < Struct.new(
      :crl,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>The unique identifier of the profile.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the profile.</p>
    #   @return [String]
    # @!attribute session_policy
    #   <p>A session policy that applies to the trust boundary of the vended session credentials. </p>
    #   @return [String]
    # @!attribute role_arns
    #   <p>A list of IAM roles that this profile can assume in a temporary credential request.</p>
    #   @return [Array<String>]
    # @!attribute managed_policy_arns
    #   <p>A list of managed policy ARNs that apply to the vended session credentials. </p>
    #   @return [Array<String>]
    # @!attribute duration_seconds
    #   <p> Used to determine how long sessions vended using this profile are valid for. See the <code>Expiration</code> section of the 
    #   <a href="https://docs.aws.amazon.com/rolesanywhere/latest/userguide/authentication-create-session.html#credentials-object">CreateSession API documentation</a>
    #   page for more details. In requests, if this value is not provided, the default value will be 3600. </p>
    #   @return [Integer]
    # @!attribute accept_role_session_name
    #   <p>Used to determine if a custom role session name will be accepted in a temporary credential request.</p>
    #   @return [Boolean]
    class UpdateProfileInput < Struct.new(
      :profile_id,
      :name,
      :session_policy,
      :role_arns,
      :managed_policy_arns,
      :duration_seconds,
      :accept_role_session_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile
    #   <p>The state of the profile after a read or write operation.</p>
    #   @return [Types::ProfileDetail]
    class UpdateProfileOutput < Struct.new(
      :profile,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_anchor_id
    #   <p>The unique identifier of the trust anchor.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the trust anchor.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The trust anchor type and its related certificate data.</p>
    #   @return [Types::Source]
    class UpdateTrustAnchorInput < Struct.new(
      :trust_anchor_id,
      :name,
      :source,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_anchor
    #   <p>The state of the trust anchor after a read or write operation. </p>
    #   @return [Types::TrustAnchorDetail]
    class UpdateTrustAnchorOutput < Struct.new(
      :trust_anchor,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Validation exception error.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
