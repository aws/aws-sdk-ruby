# frozen_string_literal: true

# This is generated code!

module Aws::CloudWatchOmni
  # This module contains the types returned by client operations.
  module Types

    # The caller is not authorized to perform this action.
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Full AccessGrant structure returned by API operations.
    # @!attribute grant_id
    #   The unique ID of the access grant.
    #   @return [String]
    # @!attribute grant_arn
    #   The Amazon Resource Name (ARN) of the access grant.
    #   @return [String]
    # @!attribute name
    #   A name that identifies the access grant.
    #   @return [String]
    # @!attribute account_id
    #   The AWS account ID that owns the grant.
    #   @return [String]
    # @!attribute domain_id
    #   The ID of the domain the grant belongs to.
    #   @return [String]
    # @!attribute principal
    #   The principal receiving the grant.
    #   @return [Types::AccessGrantPrincipal]
    # @!attribute permission
    #   The permission granted.
    #   @return [String]
    # @!attribute grant_type
    #   Who manages the grant.
    #   @return [String]
    # @!attribute created_by
    #   The principal that created the grant.
    #   @return [String]
    # @!attribute created_at
    #   The timestamp when the grant was created.
    #   @return [Time]
    # @!attribute updated_at
    #   The timestamp when the grant was last updated.
    #   @return [Time]
    # @!attribute space_id
    #   The space this grant applies to. Domain-scoped grants are returned by
    #   ListDomainAccessGrantsForOrganization instead.
    #   @return [String]
    # @!attribute scoped_actions
    #   Groups of actions allowed by the grant, each with the resource scopes and
    #   conditions that limit those actions.
    #   @return [Array<Types::ScopedActions>]
    class AccessGrant < Struct.new(
      nil,
      :grant_id,
      :grant_arn,
      :name,
      :account_id,
      :domain_id,
      :principal,
      :permission,
      :grant_type,
      :created_by,
      :created_at,
      :updated_at,
      :space_id,
      :scoped_actions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The principal receiving the grant. Specify principalId, principalAttributes,
    # or both.
    # @!attribute principal_type
    #   The type of principal receiving the grant.
    #   @return [String]
    # @!attribute principal_id
    #   The ID of the principal receiving the grant.
    #   @return [String]
    # @!attribute principal_attributes
    #   Attribute conditions for attribute-based access. When provided, the grant
    #   targets any principal matching all specified conditions. Supported only for
    #   IDC_USER principals.
    #   @return [Array<Types::AccessGrantPrincipalAttribute>]
    class AccessGrantPrincipal < Struct.new(
      nil,
      :principal_type,
      :principal_id,
      :principal_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A single attribute condition used to match principals for attribute-based
    # access.
    # @!attribute key
    #   The Identity Center user attribute to match on. One of userName, active,
    #   userStatus, displayName, email, name.givenName, name.familyName,
    #   enterprise.department, enterprise.division, enterprise.organization,
    #   enterprise.costCenter, or enterprise.employeeNumber. Each key may appear
    #   only once per grant.
    #   @return [String]
    # @!attribute value
    #   The attribute value.
    #   @return [String]
    class AccessGrantPrincipalAttribute < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Summary of an AccessGrant. Call GetAccessGrant for the full grant.
    # @!attribute grant_id
    #   The unique ID of the access grant.
    #   @return [String]
    # @!attribute grant_arn
    #   The Amazon Resource Name (ARN) of the access grant.
    #   @return [String]
    # @!attribute name
    #   A name that identifies the access grant.
    #   @return [String]
    # @!attribute domain_id
    #   The ID of the domain the grant belongs to.
    #   @return [String]
    # @!attribute principal
    #   The principal receiving the grant.
    #   @return [Types::AccessGrantPrincipal]
    # @!attribute permission
    #   The permission granted.
    #   @return [String]
    # @!attribute grant_type
    #   Who manages the grant.
    #   @return [String]
    # @!attribute space_id
    #   The space this grant applies to. Domain-scoped grants are returned by
    #   ListDomainAccessGrantsForOrganization instead.
    #   @return [String]
    class AccessGrantSummary < Struct.new(
      nil,
      :grant_id,
      :grant_arn,
      :name,
      :domain_id,
      :principal,
      :permission,
      :grant_type,
      :space_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # An Access Profile.
    # @!attribute profile_id
    #   The unique ID of the access profile.
    #   @return [String]
    # @!attribute space_id
    #   The ID of the space the profile belongs to.
    #   @return [String]
    # @!attribute arn
    #   The ARN of this access profile.
    #   @return [String]
    # @!attribute name
    #   A name that identifies the access profile.
    #   @return [String]
    # @!attribute description
    #   An optional description of the access profile.
    #   @return [String]
    # @!attribute created_at
    #   The timestamp when the access profile was created.
    #   @return [Time]
    # @!attribute updated_at
    #   The timestamp when the access profile was last updated.
    #   @return [Time]
    # @!attribute assume_status
    #   The calling principal's authorization to assume this access profile.
    #   @return [String]
    # @!attribute profile_type
    #   Who manages the access profile.
    #   @return [String]
    class AccessProfile < Struct.new(
      nil,
      :profile_id,
      :space_id,
      :arn,
      :name,
      :description,
      :created_at,
      :updated_at,
      :assume_status,
      :profile_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Summary of an access profile. Call GetAccessProfile for the full profile.
    # @!attribute profile_id
    #   The unique ID of the access profile.
    #   @return [String]
    # @!attribute arn
    #   The ARN of this access profile.
    #   @return [String]
    # @!attribute name
    #   A name that identifies the access profile.
    #   @return [String]
    # @!attribute description
    #   An optional description of the access profile.
    #   @return [String]
    # @!attribute profile_type
    #   Who manages the access profile.
    #   @return [String]
    class AccessProfileSummary < Struct.new(
      nil,
      :profile_id,
      :arn,
      :name,
      :description,
      :profile_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Full alert entity, returned by both CreateAlert and GetAlert. A create and a read of the
    # same alert describe it identically except for {@code state}, which only the read paths
    # populate. UpdateAlert returns an empty response.
    # @!attribute name
    #   The name of the alert.
    #   @return [String]
    # @!attribute alert_id
    #   The stable alert identifier (see {@link AlertId}), minted on create and
    #   immutable across updates. Use it (not {@code name}) to address the alert
    #   on GetAlert/UpdateAlert/DeleteAlert; it is also the ARN's resource id.
    #   @return [String]
    # @!attribute description
    #   An optional description of the alert.
    #   @return [String]
    # @!attribute account_id
    #   The AWS account ID that owns the alert.
    #   @return [String]
    # @!attribute space_id
    #   The ID of the space the alert belongs to.
    #   @return [String]
    # @!attribute profile_id
    #   The ID of the access profile associated with the alert.
    #   @return [String]
    # @!attribute rule
    #   The rule that defines how the alert is evaluated.
    #   @return [Types::Rule]
    # @!attribute notification_status
    #   Whether notifications are enabled.
    #   @return [String]
    # @!attribute state
    #   Live evaluation state (read-only, system-managed). Populated by GetAlert. ListAlerts
    #   reports state on `AlertSummary` instead, where it stays required.
    #
    #   Absent on CreateAlert: a newly created alert has never been evaluated, so any state
    #   reported there would be a default rather than an observation. Call GetAlert for live
    #   state. Not @required for that reason — GetAlert always populates it.
    #
    #   `contributorSummary` is nested inside this member, so it too is absent on CreateAlert.
    #   @return [Types::AlertStateInfo]
    # @!attribute notification_rules
    #   The notification rules for the alert.
    #   @return [Array<Types::NotificationRule>]
    # @!attribute created_at
    #   The timestamp when the alert was created.
    #   @return [Time]
    # @!attribute updated_at
    #   The timestamp when the alert was last updated.
    #   @return [Time]
    # @!attribute alert_arn
    #   The Amazon Resource Name (ARN) of the alert.
    #   @return [String]
    class Alert < Struct.new(
      nil,
      :name,
      :alert_id,
      :description,
      :account_id,
      :space_id,
      :profile_id,
      :rule,
      :notification_status,
      :state,
      :notification_rules,
      :created_at,
      :updated_at,
      :alert_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The condition that determines when the alert fires.
    #
    # On UpdateAlert a supplied condition is replaced whole, not merged: an omitted
    # {@code warningThreshold} or {@code criticalThreshold} removes that tier, and an
    # omitted {@code thresholdField} clears it. A condition must keep at least one
    # tier. {@code thresholdMode} and {@code comparator} are optional at the Smithy
    # level (so a single-tier condition is expressible) but are required whenever a
    # threshold is present; enforced by the service-side validator.
    # @!attribute threshold_mode
    #   How the threshold is applied to query results.
    #   @return [String]
    # @!attribute threshold_field
    #   The field the threshold is evaluated against.
    #   @return [String]
    # @!attribute comparator
    #   The comparison operator applied to the threshold.
    #   @return [String]
    # @!attribute warning_threshold
    #   The value at which the alert enters the WARNING state.
    #   @return [Float]
    # @!attribute critical_threshold
    #   The value at which the alert enters the CRITICAL state.
    #   @return [Float]
    class AlertCondition < Struct.new(
      nil,
      :threshold_mode,
      :threshold_field,
      :comparator,
      :warning_threshold,
      :critical_threshold,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Evaluation cadence. {@code intervalSeconds} must be one of
    # {30, 60, 120, 300, 600, 900, 1800, 3600}; {@code pendingDurationSeconds} and
    # {@code recoveryDurationSeconds} must be multiples of {@code intervalSeconds}.
    # A duration of 0 means fire/clear immediately with no delay.
    #
    # On UpdateAlert a supplied evaluation block is replaced whole, not merged: an
    # omitted {@code pendingDurationSeconds} or {@code recoveryDurationSeconds} is
    # cleared to unset (no such duration), not preserved and not defaulted to 0.
    # {@code intervalSeconds} is required whenever the block is present. All enforced
    # server-side / by the front-door validator.
    # @!attribute interval_seconds
    #   The interval between evaluations, in seconds.
    #   @return [Integer]
    # @!attribute pending_duration_seconds
    #   The duration a breach must persist before the alert fires, in seconds.
    #   @return [Integer]
    # @!attribute recovery_duration_seconds
    #   The duration a recovery must persist before the alert clears, in seconds.
    #   @return [Integer]
    class AlertEvaluation < Struct.new(
      nil,
      :interval_seconds,
      :pending_duration_seconds,
      :recovery_duration_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Filter criteria for ListAlerts. All members are optional; each omitted
    # member is unconstrained. At most one of {@code names}, {@code namePrefix},
    # {@code ids} may be provided (mutually exclusive; the service rejects more
    # than one). The remaining members combine with AND.
    # @!attribute names
    #   Filter to alerts whose name exactly matches any entry (OR semantics).
    #   Mutually exclusive with {@code namePrefix} and {@code ids}.
    #   @return [Array<String>]
    # @!attribute name_prefix
    #   Filter to alerts whose name starts with this prefix. Mutually exclusive
    #   with {@code names} and {@code ids}.
    #   @return [String]
    # @!attribute ids
    #   Filter to alerts whose {@link AlertId} exactly matches any entry (OR
    #   semantics). Mutually exclusive with {@code names} and {@code namePrefix}.
    #   @return [Array<String>]
    # @!attribute state_value
    #   Filter to alerts currently in any of these states (OR semantics).
    #   @return [Array<String>]
    # @!attribute notifications_enabled
    #   Filter to alerts by whether notifications are enabled.
    #   @return [Boolean]
    class AlertFilterCriteria < Struct.new(
      nil,
      :names,
      :name_prefix,
      :ids,
      :state_value,
      :notifications_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Query expression and the language it's written in.
    # @!attribute language
    #   The query language of the expression.
    #   @return [String]
    # @!attribute expression
    #   The query expression to evaluate.
    #   @return [String]
    class AlertRuleQuery < Struct.new(
      nil,
      :language,
      :expression,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Structured detail about the current evaluation.
    # @!attribute threshold_breached
    #   For COUNT_OF_RESULTS alerts, the row count that breached; null for
    #   FIELD_VALUE (multi-contributor) alerts.
    #   @return [Float]
    class AlertStateData < Struct.new(
      nil,
      :threshold_breached,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Live evaluation state for an alert. Read-only, system-managed.
    # @!attribute value
    #   Current flat state.
    #   @return [String]
    # @!attribute transitioned_at
    #   When the alert transitioned to its current state.
    #   @return [Time]
    # @!attribute contributor_summary
    #   Counts of contributors currently breaching each severity threshold.
    #   Present only when contributor-level tracking is active; absent until
    #   the first contributor breaches a {@code WARNING} or {@code CRITICAL}
    #   threshold.
    #   @return [Types::ContributorSummary]
    # @!attribute data
    #   Structured detail about why the alert is in its current state.
    #   @return [Types::AlertStateData]
    class AlertStateInfo < Struct.new(
      nil,
      :value,
      :transitioned_at,
      :contributor_summary,
      :data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Summary representation of an alert used in list responses.
    # @!attribute name
    #   The name of the alert.
    #   @return [String]
    # @!attribute alert_id
    #   The stable alert identifier (see {@link Alert#alertId}). Use it to address
    #   the alert; it is also the ARN's resource id.
    #   @return [String]
    # @!attribute space_id
    #   The ID of the space the alert belongs to.
    #   @return [String]
    # @!attribute profile_id
    #   The ID of the access profile associated with the alert.
    #   @return [String]
    # @!attribute notification_status
    #   Whether notifications are enabled.
    #   @return [String]
    # @!attribute state
    #   Live evaluation state (read-only, system-managed).
    #   @return [Types::AlertStateInfo]
    # @!attribute created_at
    #   The timestamp when the alert was created.
    #   @return [Time]
    # @!attribute updated_at
    #   The timestamp when the alert was last updated.
    #   @return [Time]
    # @!attribute alert_arn
    #   The Amazon Resource Name (ARN) of the alert.
    #   @return [String]
    class AlertSummary < Struct.new(
      nil,
      :name,
      :alert_id,
      :space_id,
      :profile_id,
      :notification_status,
      :state,
      :created_at,
      :updated_at,
      :alert_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # An API key used to authenticate an integration with its external system.
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute api_key_value
    #   The API key value used to authenticate with the external system.
    #   @return [String]
    class ApiKeyCredential < Struct.new(
      nil,
      :api_key_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A set of temporary AWS credentials.
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute access_key_id
    #   The AWS access key ID.
    #   @return [String]
    # @!attribute secret_access_key
    #   The AWS secret access key.
    #   @return [String]
    # @!attribute session_token
    #   The AWS session token.
    #   @return [String]
    # @!attribute expiration
    #   The timestamp when the credentials expire.
    #   @return [Time]
    class AwsCredentials < Struct.new(
      nil,
      :access_key_id,
      :secret_access_key,
      :session_token,
      :expiration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The operation could not be completed because of a conflict with the current
    # state of the resource.
    # @!attribute message
    #   A human-readable description of the conflict.
    #   @return [String]
    # @!attribute conflict_type
    #   The type of conflict that caused the request to fail. Not always present.
    #   @return [String]
    # @!attribute resource_id
    #   The identifier of the resource that is in conflict. Not always present.
    #   @return [String]
    # @!attribute resource_type
    #   The type of the resource that is in conflict. Not always present.
    #   @return [String]
    # @!attribute error_code
    #   The error code associated with the conflict. Not always present.
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :conflict_type,
      :resource_id,
      :resource_type,
      :error_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Counts of contributors currently breaching each severity threshold.
    # @!attribute warning_count
    #   Number of contributors currently breaching the warning threshold.
    #   @return [Integer]
    # @!attribute critical_count
    #   Number of contributors currently breaching the critical threshold.
    #   @return [Integer]
    class ContributorSummary < Struct.new(
      nil,
      :warning_count,
      :critical_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   The ID of the domain that contains the space.
    #   @return [String]
    # @!attribute space_id
    #   The ID of the space to scope the grant to.
    #   @return [String]
    # @!attribute name
    #   A name that identifies the access grant.
    #   @return [String]
    # @!attribute principal
    #   The principal receiving the grant.
    #   @return [Types::AccessGrantPrincipal]
    # @!attribute permission
    #   The permission to grant. Exactly one permission is granted per request.
    #   @return [String]
    # @!attribute scoped_actions
    #   Groups of actions to allow, each with the resource scopes and conditions
    #   that limit those actions.
    #   @return [Array<Types::ScopedActions>]
    # @!attribute tags
    #   The tags to associate with the access grant.
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   Idempotency token for safe retries. Repeated requests with the same
    #   token return the original result instead of creating a duplicate.
    #   @return [String]
    class CreateAccessGrantInput < Struct.new(
      nil,
      :domain_id,
      :space_id,
      :name,
      :principal,
      :permission,
      :scoped_actions,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_grant
    #   The details of the created access grant.
    #   @return [Types::AccessGrant]
    class CreateAccessGrantOutput < Struct.new(
      nil,
      :access_grant,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_id
    #   The unique ID of the space to create the profile in.
    #   @return [String]
    # @!attribute name
    #   A name that identifies the access profile.
    #   @return [String]
    # @!attribute description
    #   An optional description of the access profile.
    #   @return [String]
    # @!attribute tags
    #   The tags to associate with the access profile.
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   Idempotency token for safe retries. Repeated requests with the same
    #   token return the original result instead of creating a duplicate.
    #   @return [String]
    class CreateAccessProfileInput < Struct.new(
      nil,
      :space_id,
      :name,
      :description,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_profile
    #   The access profile.
    #   @return [Types::AccessProfile]
    class CreateAccessProfileOutput < Struct.new(
      nil,
      :access_profile,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_id
    #   The unique ID of the space to create the alert in.
    #   @return [String]
    # @!attribute profile_id
    #   The ID of the access profile the alert uses to evaluate its query and
    #   execute notifications. The caller supplies it: there is no managed
    #   alert profile, and the service does not pick one on the caller's behalf.
    #   @return [String]
    # @!attribute name
    #   Alert name, for display. Max 256 (the AlarmName budget). Not the alert's
    #   identity: the backend mints a separate uuid as the {@link AlertId}, so the
    #   name need not be unique within a space and addressing an alert never
    #   depends on it. UpdateAlert accepts a new name to rename the alert.
    #   @return [String]
    # @!attribute description
    #   An optional description of the alert.
    #   @return [String]
    # @!attribute rule
    #   The rule that defines how the alert is evaluated.
    #   @return [Types::Rule]
    # @!attribute notifications_enabled
    #   Whether actions (notifications) are enabled for this alert.
    #   Defaults to true when omitted.
    #   @return [Boolean]
    # @!attribute tags
    #   The tags to associate with the alert.
    #   @return [Hash<String, String>]
    # @!attribute notification_rules
    #   The notification rules that determine when and where notifications are sent.
    #   @return [Array<Types::NotificationRule>]
    # @!attribute client_token
    #   Idempotency token for safe retries. Retrying with the same token
    #   within the idempotency window returns the original alert instead
    #   of creating a duplicate.
    #   @return [String]
    class CreateAlertInput < Struct.new(
      nil,
      :space_id,
      :profile_id,
      :name,
      :description,
      :rule,
      :notifications_enabled,
      :tags,
      :notification_rules,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alert_arn
    #   Deprecated. Use `alert.alertArn`, which carries the same value. Kept so an existing
    #   caller keeps working while it moves to `alert`.
    #   @return [String]
    # @!attribute alert
    #   The alert that was created. The same `Alert` shape GetAlert returns, so a caller need
    #   not read the alert back to learn its timestamps or its minted alert id.
    #
    #   {@code alert.state} is absent here — see the `state` member of `Alert`. Every other
    #   member is populated exactly as GetAlert populates it.
    #   @return [Types::Alert]
    class CreateAlertOutput < Struct.new(
      nil,
      :alert_arn,
      :alert,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   The ID of the organization domain to create the grant on.
    #   @return [String]
    # @!attribute name
    #   A name that identifies the access grant.
    #   @return [String]
    # @!attribute principal
    #   The principal receiving the grant.
    #   @return [Types::OrganizationAccessGrantPrincipal]
    # @!attribute permission
    #   The permission to grant.
    #   @return [String]
    # @!attribute tags
    #   The tags to associate with the access grant.
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   Idempotency token for safe retries. Repeated requests with the same
    #   token return the original result instead of creating a duplicate.
    #   @return [String]
    class CreateDomainAccessGrantForOrganizationInput < Struct.new(
      nil,
      :domain_id,
      :name,
      :principal,
      :permission,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_grant
    #   The details of the created organization access grant.
    #   @return [Types::OrganizationAccessGrant]
    class CreateDomainAccessGrantForOrganizationOutput < Struct.new(
      nil,
      :access_grant,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   A name that identifies the organization domain. Must be 3-63 characters:
    #   lowercase letters, numbers, and hyphens. It must begin and end with a letter or
    #   number and cannot contain consecutive hyphens.
    #   @return [String]
    # @!attribute identity_providers
    #   The identity providers to configure for the domain.
    #   @return [Array<String>]
    # @!attribute identity_provider_configuration
    #   Identity provider configuration for the domain.
    #   @return [Types::IdentityProviderConfiguration]
    # @!attribute domain_access_role_arn
    #   The ARN of an IAM role in the management account used for domain access. You must
    #   create this role, and its trust policy must allow the service principal to assume it.
    #   @return [String]
    # @!attribute tags
    #   The tags to associate with the domain.
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   Idempotency token for safe retries. Repeated requests with the same
    #   token return the original result instead of creating a duplicate.
    #   @return [String]
    class CreateDomainForOrganizationInput < Struct.new(
      nil,
      :name,
      :identity_providers,
      :identity_provider_configuration,
      :domain_access_role_arn,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_domain
    #   The details of the created organization domain.
    #   @return [Types::OrganizationDomain]
    class CreateDomainForOrganizationOutput < Struct.new(
      nil,
      :organization_domain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   A name that identifies the domain. Must be 3-63 characters: lowercase letters,
    #   numbers, and hyphens. It must begin and end with a letter or number and cannot
    #   contain consecutive hyphens.
    #   @return [String]
    # @!attribute identity_providers
    #   The identity providers to configure for the domain.
    #   @return [Array<String>]
    # @!attribute identity_provider_configuration
    #   Identity provider configuration for the domain.
    #   @return [Types::IdentityProviderConfiguration]
    # @!attribute tags
    #   The tags to associate with the domain.
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   Idempotency token for safe retries. Repeated requests with the same
    #   token return the original result instead of creating a duplicate.
    #   @return [String]
    class CreateDomainInput < Struct.new(
      nil,
      :name,
      :identity_providers,
      :identity_provider_configuration,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   The details of the created domain.
    #   @return [Types::Domain]
    class CreateDomainOutput < Struct.new(
      nil,
      :domain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The request for creating an integration with a third-party provider.
    # @!attribute integration_type
    #   The type of third-party provider to integrate with.
    #   @return [String]
    # @!attribute name
    #   The name for the new integration; unique within the account.
    #   @return [String]
    # @!attribute credential
    #   The credential used to authenticate with the third-party provider.
    #   @return [Types::IntegrationCredential]
    # @!attribute integration_attributes
    #   Provider-specific attributes to associate with the integration.
    #   @return [Hash<String, String>]
    # @!attribute role_arn
    #   The Amazon Resource Name of the IAM role assumed to access the integration.
    #   @return [String]
    # @!attribute tags
    #   Tags to apply to the integration at creation time (Tagris tag-on-create).
    #   @since 2026-08-14
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   Idempotency token for safe retries. Retrying with the same token
    #   returns the original integration instead of creating a duplicate.
    #   @return [String]
    class CreateIntegrationInput < Struct.new(
      nil,
      :integration_type,
      :name,
      :credential,
      :integration_attributes,
      :role_arn,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The response from creating an integration.
    # @!attribute integration
    #   The details of the created integration. This is the same object returned by
    #   GetIntegration and UpdateIntegration.
    #   @return [Types::Integration]
    class CreateIntegrationOutput < Struct.new(
      nil,
      :integration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_id
    #   The unique ID of the space to create the dashboard in.
    #   @return [String]
    # @!attribute name
    #   A name that identifies the dashboard.
    #   @return [String]
    # @!attribute body
    #   The dashboard definition, as a JSON document. Maximum 1 MiB.
    #   @return [String]
    # @!attribute description
    #   An optional description of the dashboard.
    #   @return [String]
    # @!attribute tags
    #   The tags to associate with the dashboard.
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   Idempotency token for safe retries. Repeated requests with the same
    #   token return the original result instead of creating a duplicate.
    #   @return [String]
    class CreateOmniDashboardInput < Struct.new(
      nil,
      :space_id,
      :name,
      :body,
      :description,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute omni_dashboard
    #   The dashboard.
    #   @return [Types::OmniDashboard]
    class CreateOmniDashboardOutput < Struct.new(
      nil,
      :omni_dashboard,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   The ID of the domain to generate the code for.
    #   @return [String]
    # @!attribute ttl_seconds
    #   How long the code remains valid, in seconds. Defaults to 300.
    #   @return [Integer]
    # @!attribute redirect_url
    #   The URL to redirect to after the deep-link code is used. Must be an HTTPS URL in the
    #   domain with a path of /auth/callback, and cannot include a query
    #   string or fragment. If omitted, no redirect is applied.
    #   @return [String]
    class CreateOneTimeDeepLinkCodeInput < Struct.new(
      nil,
      :domain_id,
      :ttl_seconds,
      :redirect_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute code
    #   The one-time deep-link code.
    #   @return [String]
    # @!attribute deep_link_url
    #   The deep-link URL containing the one-time code.
    #   @return [String]
    # @!attribute expires_at
    #   The timestamp when the code expires.
    #   @return [Time]
    class CreateOneTimeDeepLinkCodeOutput < Struct.new(
      nil,
      :code,
      :deep_link_url,
      :expires_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   A name that identifies the space. Must be 3-64 characters: lowercase letters,
    #   numbers, and hyphens. It must begin and end with a letter or number and cannot
    #   contain consecutive hyphens.
    #   @return [String]
    # @!attribute domain_id
    #   The ID of the domain to create the space in.
    #   @return [String]
    # @!attribute data_access_role_arn
    #   The ARN of the IAM role used for data access. The role must be in the caller's
    #   account.
    #   @return [String]
    # @!attribute agent_core_evaluation_role_arn
    #   The ARN of the IAM role used by AgentCore online evaluation. Must be in the
    #   caller's account. Omit if the space does not use AgentCore online evaluation.
    #   @return [String]
    # @!attribute encryption_configuration
    #   How to encrypt the space's data at rest. Omit for service owned encryption,
    #   which is equivalent to passing `encryptionStrategy` AWS_OWNED.
    #   @return [Types::EncryptionConfiguration]
    # @!attribute tags
    #   The tags to associate with the space.
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   Idempotency token for safe retries. Repeated requests with the same
    #   token return the original result instead of creating a duplicate.
    #   @return [String]
    class CreateSpaceInput < Struct.new(
      nil,
      :name,
      :domain_id,
      :data_access_role_arn,
      :agent_core_evaluation_role_arn,
      :encryption_configuration,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space
    #   The details of the created space.
    #   @return [Types::Space]
    class CreateSpaceOutput < Struct.new(
      nil,
      :space,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   The name of the view. Must begin with the "view." prefix. View names
    #   must be unique within the account and region.
    #   @return [String]
    # @!attribute definition
    #   The SQL query that defines the view.
    #   @return [String]
    # @!attribute description
    #   A description of the view.
    #   @return [String]
    # @!attribute tags
    #   Resource tags.
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   Idempotency token for safe retries. Retrying with the same token
    #   returns the original view instead of creating a duplicate.
    #   @return [String]
    class CreateViewRequest < Struct.new(
      nil,
      :name,
      :definition,
      :description,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   The name of the view.
    #   @return [String]
    # @!attribute type
    #   The ownership category of the view.
    #   @return [String]
    # @!attribute description
    #   The description of the view.
    #   @return [String]
    # @!attribute definition
    #   The SQL query that defines the view.
    #   @return [String]
    # @!attribute created_at
    #   The timestamp when the view was created.
    #   @return [Time]
    # @!attribute updated_at
    #   The timestamp when the view was last updated.
    #   @return [Time]
    # @!attribute arn
    #   The ARN of the view.
    #   @return [String]
    class CreateViewResponse < Struct.new(
      nil,
      :name,
      :type,
      :description,
      :definition,
      :created_at,
      :updated_at,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute grant_id
    #   The ID of the access grant to delete.
    #   @return [String]
    class DeleteAccessGrantInput < Struct.new(
      nil,
      :grant_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAccessGrantOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_id
    #   The unique ID of the space.
    #   @return [String]
    # @!attribute profile_id
    #   The unique ID of the access profile to delete.
    #   @return [String]
    class DeleteAccessProfileInput < Struct.new(
      nil,
      :space_id,
      :profile_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAccessProfileOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_id
    #   The unique ID of the space.
    #   @return [String]
    # @!attribute alert_id
    #   The alert to delete.
    #   @return [String]
    class DeleteAlertInput < Struct.new(
      nil,
      :space_id,
      :alert_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAlertOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute grant_id
    #   The ID of the access grant to delete.
    #   @return [String]
    class DeleteDomainAccessGrantForOrganizationInput < Struct.new(
      nil,
      :grant_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteDomainAccessGrantForOrganizationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   The ID of the organization domain to delete.
    #   @return [String]
    class DeleteDomainForOrganizationInput < Struct.new(
      nil,
      :domain_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteDomainForOrganizationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   The unique ID of the domain to delete.
    #   @return [String]
    class DeleteDomainInput < Struct.new(
      nil,
      :domain_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteDomainOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The request for deleting an integration.
    # @!attribute identifier
    #   Identifies the integration to delete — exactly one of integrationId,
    #   integrationArn, or integrationName.
    #   @return [Types::IntegrationIdentifier]
    class DeleteIntegrationInput < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The response from deleting an integration. Empty by contract — a successful
    # call indicates the deletion was accepted (DeleteIntegration is idempotent).
    class DeleteIntegrationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_id
    #   The unique ID of the space.
    #   @return [String]
    # @!attribute dashboard_id
    #   The unique ID of the dashboard.
    #   @return [String]
    class DeleteOmniDashboardInput < Struct.new(
      nil,
      :space_id,
      :dashboard_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteOmniDashboardOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_id
    #   The unique ID of the space to delete.
    #   @return [String]
    class DeleteSpaceInput < Struct.new(
      nil,
      :space_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteSpaceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   The name of the view to delete.
    #   @return [String]
    class DeleteViewRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteViewResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Detailed information about a domain.
    # @!attribute domain_id
    #   The unique ID of the domain.
    #   @return [String]
    # @!attribute domain_arn
    #   The Amazon Resource Name (ARN) of the domain.
    #   @return [String]
    # @!attribute name
    #   A name that identifies the domain.
    #   @return [String]
    # @!attribute identity_providers
    #   The identity providers configured for the domain.
    #   @return [Array<String>]
    # @!attribute identity_provider_configuration
    #   Identity provider configuration for the domain.
    #   @return [Types::IdentityProviderConfiguration]
    # @!attribute domain_endpoint_url
    #   The HTTPS endpoint URL for accessing the domain.
    #   @return [String]
    # @!attribute custom_endpoint_urls
    #   Additional endpoint URLs derived from the domain name.
    #   @return [Array<String>]
    # @!attribute identity_center_application_arn
    #   The ARN of the Identity Center application. Absent for IAM-only domains.
    #   @return [String]
    # @!attribute region
    #   The Region where this domain was created.
    #   @return [String]
    # @!attribute created_at
    #   The timestamp when the domain was created.
    #   @return [Time]
    # @!attribute updated_at
    #   The timestamp when the domain was last updated.
    #   @return [Time]
    # @!attribute status
    #   Current status of the domain.
    #   @return [String]
    class Domain < Struct.new(
      nil,
      :domain_id,
      :domain_arn,
      :name,
      :identity_providers,
      :identity_provider_configuration,
      :domain_endpoint_url,
      :custom_endpoint_urls,
      :identity_center_application_arn,
      :region,
      :created_at,
      :updated_at,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Summary of a domain. Call GetDomain for the full domain.
    # @!attribute domain_id
    #   The unique ID of the domain.
    #   @return [String]
    # @!attribute domain_arn
    #   The Amazon Resource Name (ARN) of the domain.
    #   @return [String]
    # @!attribute name
    #   A name that identifies the domain.
    #   @return [String]
    # @!attribute identity_center_instance_arn
    #   Identity Center instance ARN configured for the domain.
    #   Absent for IAM-only domains.
    #   @return [String]
    # @!attribute region
    #   The Region where this domain was created.
    #   @return [String]
    # @!attribute created_at
    #   The timestamp when the domain was created.
    #   @return [Time]
    # @!attribute updated_at
    #   The timestamp when the domain was last updated.
    #   @return [Time]
    # @!attribute status
    #   Current status of the domain.
    #   @return [String]
    class DomainSummary < Struct.new(
      nil,
      :domain_id,
      :domain_arn,
      :name,
      :identity_center_instance_arn,
      :region,
      :created_at,
      :updated_at,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A directed edge in the context graph connecting two nodes.
    # @!attribute edge_id
    #   The unique identifier of the edge within the context graph.
    #   @return [String]
    # @!attribute from
    #   The node identifier the edge originates from.
    #   @return [String]
    # @!attribute to
    #   The node identifier the edge points to.
    #   @return [String]
    # @!attribute edge_type
    #   The kind of relationship the edge represents.
    #   @return [String]
    # @!attribute operations
    #   The operations observed on this edge.
    #   @return [Array<String>]
    # @!attribute edge_properties
    #   Attributes promoted out of the flat attribute map onto typed members. Which
    #   members are present depends on what produced the edge.
    #   @return [Types::EdgeProperties]
    # @!attribute telemetry_attributes
    #   The edge's OpenTelemetry (OTel) attributes, as emitted by telemetry. A key
    #   promoted onto an `edgeProperties` member is removed here, so no value appears twice.
    #   @return [Hash<String, String>]
    # @!attribute signal_types
    #   The kinds of telemetry signal observed on this edge.
    #   @return [Array<String>]
    # @!attribute sources
    #   The discovery sources that contributed this edge.
    #   @return [Array<String>]
    # @!attribute metadata
    #   Descriptive metadata about the edge. Present only when the request sets
    #   includeMetadata.
    #   @return [Types::Metadata]
    # @!attribute first_observed_at
    #   When this edge was first observed (UTC), at minute granularity. For an edge
    #   that merged across sources, this is the earliest value any source reported.
    #   @return [Time]
    # @!attribute last_observed_at
    #   When this edge was most recently observed (UTC), at minute granularity. For an
    #   edge that merged across sources, this is the latest value any source reported.
    #   @return [Time]
    class Edge < Struct.new(
      nil,
      :edge_id,
      :from,
      :to,
      :edge_type,
      :operations,
      :edge_properties,
      :telemetry_attributes,
      :signal_types,
      :sources,
      :metadata,
      :first_observed_at,
      :last_observed_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Criteria for filtering edges in a context graph query.
    # @!attribute edge_id
    #   Match only the edge with this identifier.
    #   @return [String]
    # @!attribute from
    #   Match only edges originating from this node identifier.
    #   @return [String]
    # @!attribute to
    #   Match only edges pointing to this node identifier.
    #   @return [String]
    # @!attribute edge_type
    #   Match only edges of this relationship kind.
    #   @return [String]
    # @!attribute operations
    #   Match edges carrying any of these operations.
    #   @return [Array<String>]
    # @!attribute telemetry_attributes
    #   Match edges by their OpenTelemetry (OTel) telemetry attributes. Not yet enforced:
    #   currently accepted but ignored (does not filter), matching
    #   nodeFilters.telemetryAttributes.
    #   @return [Array<Types::KeyFilter>]
    # @!attribute sources
    #   Match edges contributed by any of these discovery sources.
    #   @return [Array<String>]
    class EdgeFilters < Struct.new(
      nil,
      :edge_id,
      :from,
      :to,
      :edge_type,
      :operations,
      :telemetry_attributes,
      :sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Edge attributes promoted out of the flat attribute map onto typed members.
    # Which members are present depends entirely on what produced the edge, so most
    # edges carry only a few of them.
    # @!attribute protocol
    #   The IANA protocol name for the observed network traffic, such as "tcp".
    #   @return [String]
    # @!attribute source_port
    #   The source port of the observed traffic. May be a placeholder when the
    #   port is unknown.
    #   @return [String]
    # @!attribute destination_port
    #   The destination port of the observed traffic. May be a placeholder when
    #   the port is unknown.
    #   @return [String]
    # @!attribute blocked
    #   Whether the observed network flow was denied. Absent means the edge was
    #   not derived from network flow data, which is not the same as allowed.
    #   @return [Boolean]
    # @!attribute error_code
    #   The error code returned when the call was attempted and refused. Its
    #   presence means the edge exists but the dependency is failing.
    #   @return [String]
    # @!attribute http_status_code
    #   The HTTP status code observed on the request. Distinct from errorCode.
    #   @return [String]
    # @!attribute http_method
    #   The HTTP method observed on the request.
    #   @return [String]
    # @!attribute service_initiated
    #   Whether the caller was an AWS service principal rather than a user or
    #   role. Absent means the edge was not derived from a source that reports it.
    #   @return [Boolean]
    # @!attribute traffic_stats
    #   Traffic counters accumulated over the edge's observation window.
    #   @return [Types::EdgeTrafficStats]
    class EdgeProperties < Struct.new(
      nil,
      :protocol,
      :source_port,
      :destination_port,
      :blocked,
      :error_code,
      :http_status_code,
      :http_method,
      :service_initiated,
      :traffic_stats,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Additive traffic counters accumulated over an edge's observation window. Which
    # counters are populated depends on what produced the edge.
    # @!attribute bytes
    #   Total bytes observed across the edge.
    #   @return [Integer]
    # @!attribute packets
    #   Total packets observed across the edge.
    #   @return [Integer]
    # @!attribute flows
    #   Total network flows observed across the edge.
    #   @return [Integer]
    # @!attribute sent_bytes
    #   Total bytes sent to the destination.
    #   @return [Integer]
    # @!attribute received_bytes
    #   Total bytes received from the destination.
    #   @return [Integer]
    class EdgeTrafficStats < Struct.new(
      nil,
      :bytes,
      :packets,
      :flows,
      :sent_bytes,
      :received_bytes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # How a resource's data at rest is encrypted.
    #
    # `kmsKeyArn` is required when `encryptionStrategy` is CUSTOMER_MANAGED and must be
    # absent when it is AWS_OWNED; a mismatch is a ValidationException rather than a
    # silently ignored field, so a caller that selects AWS_OWNED while still passing a key
    # learns that the key was not applied.
    # @!attribute encryption_strategy
    #   Which kind of key to use. Required.
    #   @return [String]
    # @!attribute kms_key_arn
    #   Customer managed KMS key ARN. Required when `encryptionStrategy` is
    #   CUSTOMER_MANAGED, and must be omitted when it is AWS_OWNED. Must be a symmetric
    #   ENCRYPT_DECRYPT key in the caller's account and region.
    #   @return [String]
    class EncryptionConfiguration < Struct.new(
      nil,
      :encryption_strategy,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A telemetry field available for use in query expressions.
    # @!attribute name
    #   The name of the field. Field names are case-sensitive and must be used
    #   exactly as returned when referencing them in query expressions.
    #   @return [String]
    # @!attribute children
    #   Child fields nested under this field.
    #   @return [Array<Types::Field>]
    class Field < Struct.new(
      nil,
      :name,
      :children,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute grant_id
    #   The ID of the access grant to retrieve.
    #   @return [String]
    class GetAccessGrantInput < Struct.new(
      nil,
      :grant_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_grant
    #   The full details of the access grant.
    #   @return [Types::AccessGrant]
    class GetAccessGrantOutput < Struct.new(
      nil,
      :access_grant,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_id
    #   The unique ID of the space.
    #   @return [String]
    # @!attribute profile_id
    #   The unique ID of the access profile.
    #   @return [String]
    class GetAccessProfileInput < Struct.new(
      nil,
      :space_id,
      :profile_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_profile
    #   The access profile.
    #   @return [Types::AccessProfile]
    class GetAccessProfileOutput < Struct.new(
      nil,
      :access_profile,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_id
    #   The unique ID of the space.
    #   @return [String]
    # @!attribute alert_id
    #   The alert to retrieve.
    #   @return [String]
    class GetAlertInput < Struct.new(
      nil,
      :space_id,
      :alert_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alert
    #   The full alert entity.
    #   @return [Types::Alert]
    class GetAlertOutput < Struct.new(
      nil,
      :alert,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The request for retrieving a slice of the context graph.
    # @!attribute node_filters
    #   Criteria restricting which nodes are returned.
    #   @return [Types::NodeFilters]
    # @!attribute edge_filters
    #   Criteria restricting which edges are returned.
    #   @return [Types::EdgeFilters]
    # @!attribute start_time
    #   Start of the time range (UTC), inclusive.
    #   @return [Time]
    # @!attribute end_time
    #   End of the time range (UTC), inclusive.
    #   @return [Time]
    # @!attribute depth
    #   How many hops to traverse out from the nodes matched by nodeFilters. 0 returns
    #   only the matched nodes themselves.
    #   @return [Integer]
    # @!attribute max_results
    #   The maximum number of nodes to return in a single page.
    #   @return [Integer]
    # @!attribute max_edges_per_node
    #   The maximum number of edges to return per node, bounding the fan-out of a
    #   densely connected node.
    #   @return [Integer]
    # @!attribute include_metadata
    #   Whether to return the metadata block, semantics included, on each node and
    #   edge. Off by default because it costs an extra lookup per returned node.
    #   @return [Boolean]
    # @!attribute next_token
    #   Pagination token from a previous response, to retrieve the next page.
    #   @return [String]
    class GetContextGraphInput < Struct.new(
      nil,
      :node_filters,
      :edge_filters,
      :start_time,
      :end_time,
      :depth,
      :max_results,
      :max_edges_per_node,
      :include_metadata,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The response containing the requested slice of the context graph.
    # @!attribute nodes
    #   The page of nodes matching the request. This is the paginated collection.
    #   @return [Array<Types::Node>]
    # @!attribute next_token
    #   Pagination token for the next page; absent when there are no more results.
    #   @return [String]
    class GetContextGraphOutput < Struct.new(
      nil,
      :nodes,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute grant_id
    #   The ID of the access grant to retrieve.
    #   @return [String]
    class GetDomainAccessGrantForOrganizationInput < Struct.new(
      nil,
      :grant_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_grant
    #   The retrieved organization access grant.
    #   @return [Types::OrganizationAccessGrant]
    class GetDomainAccessGrantForOrganizationOutput < Struct.new(
      nil,
      :access_grant,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   The ID of the organization domain.
    #   @return [String]
    class GetDomainForOrganizationInput < Struct.new(
      nil,
      :domain_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_domain
    #   The details of the organization domain.
    #   @return [Types::OrganizationDomain]
    class GetDomainForOrganizationOutput < Struct.new(
      nil,
      :organization_domain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   The unique ID of the domain.
    #   @return [String]
    class GetDomainInput < Struct.new(
      nil,
      :domain_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   The details of the domain.
    #   @return [Types::Domain]
    class GetDomainOutput < Struct.new(
      nil,
      :domain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The request for retrieving a single integration.
    # @!attribute identifier
    #   Identifies the integration to return — exactly one of integrationId,
    #   integrationArn, or integrationName.
    #   @return [Types::IntegrationIdentifier]
    class GetIntegrationInput < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The response containing the requested integration.
    # @!attribute integration
    #   The details of the requested integration.
    #   @return [Types::Integration]
    class GetIntegrationOutput < Struct.new(
      nil,
      :integration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The request for retrieving the intelligence configuration of the calling account.
    class GetIntelligenceConfigurationInput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The intelligence configuration for the calling account.
    # @!attribute account_id
    #   The AWS account ID this configuration applies to.
    #   @return [String]
    # @!attribute kms_key_arn
    #   The currently active KMS key ARN for customer-managed encryption, if configured.
    #   @return [String]
    # @!attribute updated_at
    #   ISO-8601 timestamp of the last update.
    #   @return [Time]
    # @!attribute created_at
    #   ISO-8601 timestamp of initial creation.
    #   @return [Time]
    class GetIntelligenceConfigurationOutput < Struct.new(
      nil,
      :account_id,
      :kms_key_arn,
      :updated_at,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_id
    #   The unique ID of the space.
    #   @return [String]
    # @!attribute dashboard_id
    #   The unique ID of the dashboard.
    #   @return [String]
    class GetOmniDashboardInput < Struct.new(
      nil,
      :space_id,
      :dashboard_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute omni_dashboard
    #   The dashboard.
    #   @return [Types::OmniDashboard]
    class GetOmniDashboardOutput < Struct.new(
      nil,
      :omni_dashboard,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute context
    #   Context for credential resolution.
    #   @return [Types::SpaceCredentialRequestContext]
    # @!attribute credential_type
    #   Selects which member-account credential to return. Set this to SPACE_OPERATION.
    #   @return [String]
    class GetSpaceCredentialsForOrganizationInput < Struct.new(
      nil,
      :context,
      :credential_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute credentials
    #   The temporary AWS credentials for the space.
    #   @return [Types::AwsCredentials]
    class GetSpaceCredentialsForOrganizationOutput < Struct.new(
      nil,
      :credentials,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_id
    #   The unique ID of the space.
    #   @return [String]
    class GetSpaceInput < Struct.new(
      nil,
      :space_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space
    #   The details of the space.
    #   @return [Types::Space]
    class GetSpaceOutput < Struct.new(
      nil,
      :space,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute query_id
    #   The unique ID of the query.
    #   @return [String]
    # @!attribute next_token
    #   A token to retrieve the next page of results.
    #   @return [String]
    # @!attribute max_results
    #   The maximum number of result rows to return per page.
    #   @return [Integer]
    class GetTelemetryQueryResultsRequest < Struct.new(
      nil,
      :query_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   The current execution status of the query.
    #   @return [String]
    # @!attribute rows
    #   The result rows returned by the query.
    #   @return [Array<Hash<String, String>>]
    # @!attribute next_token
    #   A token to retrieve the next page of results, or null if there are no more results.
    #   @return [String]
    # @!attribute statistics
    #   Statistics about the query execution.
    #   @return [Types::QueryStatistics]
    class GetTelemetryQueryResultsResponse < Struct.new(
      nil,
      :status,
      :rows,
      :next_token,
      :statistics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   The name of the view.
    #   @return [String]
    class GetViewRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   The name of the view.
    #   @return [String]
    # @!attribute type
    #   The ownership category of the view.
    #   @return [String]
    # @!attribute description
    #   The description of the view.
    #   @return [String]
    # @!attribute definition
    #   The SQL query that defines the view.
    #   @return [String]
    # @!attribute created_at
    #   The timestamp when the view was created.
    #   @return [Time]
    # @!attribute updated_at
    #   The timestamp when the view was last updated.
    #   @return [Time]
    # @!attribute arn
    #   The ARN of the view.
    #   @return [String]
    class GetViewResponse < Struct.new(
      nil,
      :name,
      :type,
      :description,
      :definition,
      :created_at,
      :updated_at,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Identity Center specific configuration.
    # @!attribute identity_center_instance_arn
    #   Identity Center instance ARN
    #   @return [String]
    class IdentityCenterConfiguration < Struct.new(
      nil,
      :identity_center_instance_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Identity provider configuration for domain authentication.
    # Contains provider-specific configuration blocks.
    # @!attribute identity_center_configuration
    #   Identity Center configuration. Required when identityProviders includes IDC.
    #   @return [Types::IdentityCenterConfiguration]
    class IdentityProviderConfiguration < Struct.new(
      nil,
      :identity_center_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A connection between CloudWatch and an external system — such as a source of
    # telemetry or configuration data, a messaging destination, or a model provider.
    # @!attribute integration_id
    #   The unique identifier of the integration.
    #   @return [String]
    # @!attribute integration_arn
    #   The Amazon Resource Name (ARN) of the integration.
    #   @return [String]
    # @!attribute integration_type
    #   The type of external system that an integration connects to, such as a
    #   source of configuration data, a messaging destination, or a model provider.
    #   @return [String]
    # @!attribute name
    #   The customer-provided name of the integration.
    #   @return [String]
    # @!attribute status
    #   The current lifecycle state of an integration.
    #   @return [String]
    # @!attribute auth_type
    #   The authentication method that an integration uses to connect to its
    #   external system.
    #   @return [String]
    # @!attribute credential_arn
    #   The Amazon Resource Name (ARN) of the secret that stores the integration's
    #   credentials.
    #   @return [String]
    # @!attribute role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that CloudWatch assumes to
    #   access the external system.
    #   @return [String]
    # @!attribute integration_attributes
    #   Provider-specific key/value attributes that configure the integration.
    #   @return [Hash<String, String>]
    # @!attribute authorization_url
    #   The URL the customer visits to authorize the integration. Present while an
    #   OAuth authorization is pending.
    #   @return [String]
    # @!attribute error_message
    #   A human-readable description of why the integration is in an ERROR or FAILED
    #   state. Present only when the integration has failed.
    #   @return [String]
    # @!attribute created_at
    #   The time at which the integration was created.
    #   @return [Time]
    # @!attribute updated_at
    #   The time at which the integration was last updated.
    #   @return [Time]
    # @!attribute scope
    #   Whether this integration is account-scoped (ACCOUNT, customer-created) or organization-scoped
    #   (ORGANIZATION, created by an org-enablement rule). Absent on legacy records is treated as ACCOUNT.
    #   @return [String]
    class Integration < Struct.new(
      nil,
      :integration_id,
      :integration_arn,
      :integration_type,
      :name,
      :status,
      :auth_type,
      :credential_arn,
      :role_arn,
      :integration_attributes,
      :authorization_url,
      :error_message,
      :created_at,
      :updated_at,
      :scope,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The credential that an integration uses to authenticate with its external
    # system. Exactly one member is set, matching the integration's authentication type.
    # @!attribute oauth_code_credential
    #   Credentials for an OAuth 2.0 authorization-code grant.
    #   @return [Types::OAuthCodeCredential]
    # @!attribute oauth_client_credential
    #   Credentials for an OAuth 2.0 client-credentials grant.
    #   @return [Types::OAuthClientCredential]
    # @!attribute api_key_credential
    #   An API key credential.
    #   @return [Types::ApiKeyCredential]
    class IntegrationCredential < Struct.new(
      :oauth_code_credential,
      :oauth_client_credential,
      :api_key_credential,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class OauthCodeCredential < IntegrationCredential; end
      class OauthClientCredential < IntegrationCredential; end
      class ApiKeyCredential < IntegrationCredential; end
      class Unknown < IntegrationCredential; end
    end

    # Identifies a single integration by exactly one of its unique keys: the
    # integration id, the integration ARN, or the integration name.
    # @!attribute integration_id
    #   The unique identifier of the integration.
    #   @return [String]
    # @!attribute integration_arn
    #   The Amazon Resource Name of the integration.
    #   @return [String]
    # @!attribute integration_name
    #   The name of the integration; unique within the account.
    #   @return [String]
    class IntegrationIdentifier < Struct.new(
      :integration_id,
      :integration_arn,
      :integration_name,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class IntegrationId < IntegrationIdentifier; end
      class IntegrationArn < IntegrationIdentifier; end
      class IntegrationName < IntegrationIdentifier; end
      class Unknown < IntegrationIdentifier; end
    end

    # An unexpected error occurred while processing the request.
    # @!attribute message
    #   @return [String]
    # @!attribute error_code
    #   The error code associated with the internal error.
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      :error_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Key-value filter used for tags and attributes filtering.
    # Multiple KeyFilters are AND'ed. Multiple values within a single KeyFilter are OR'ed.
    # Values support pattern syntax: exact, negation (!value), wildcard (*value*, value*, *value).
    # @!attribute key
    #   The tag or attribute key to filter on.
    #   @return [String]
    # @!attribute values
    #   The values to match for this key, OR'ed together. Each supports exact,
    #   negation (!value), and wildcard (*value*, value*, *value) syntax.
    #   @return [Array<String>]
    class KeyFilter < Struct.new(
      nil,
      :key,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   Filter by domain ID.
    #   @return [String]
    # @!attribute space_id
    #   Filter by space ID.
    #   @return [String]
    # @!attribute principal_id
    #   Filter by principal ID.
    #   @return [String]
    # @!attribute principal_type
    #   Filter by principal type.
    #   @return [String]
    # @!attribute permission
    #   Filter by permission level.
    #   @return [String]
    # @!attribute next_token
    #   A token to retrieve the next page of results. Supply the same filters used
    #   on the request that returned it. Tokens expire after 24 hours.
    #   @return [String]
    # @!attribute max_results
    #   The maximum number of access grants to return per page. Defaults to 100.
    #   A page can contain fewer results than this value even when more results
    #   remain; continue while nextToken is present.
    #   @return [Integer]
    class ListAccessGrantsInput < Struct.new(
      nil,
      :domain_id,
      :space_id,
      :principal_id,
      :principal_type,
      :permission,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   The list of access grant summaries.
    #   @return [Array<Types::AccessGrantSummary>]
    # @!attribute next_token
    #   A token to retrieve the next page of results, or null if there are no more results.
    #   @return [String]
    class ListAccessGrantsOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_id
    #   The unique ID of the space.
    #   @return [String]
    # @!attribute next_token
    #   A token to retrieve the next page of results.
    #   @return [String]
    # @!attribute max_results
    #   The maximum number of access profiles to return per page. Defaults to 100.
    #   @return [Integer]
    class ListAccessProfilesInput < Struct.new(
      nil,
      :space_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   The list of access profile summaries.
    #   @return [Array<Types::AccessProfileSummary>]
    # @!attribute next_token
    #   A token to retrieve the next page of results, or null if there are no more results.
    #   @return [String]
    class ListAccessProfilesOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_id
    #   The unique ID of the space.
    #   @return [String]
    # @!attribute filter_criteria
    #   Filter criteria narrowing which alerts are returned. All members are
    #   optional; the three name/id filters are mutually exclusive.
    #   @return [Types::AlertFilterCriteria]
    # @!attribute sort_by
    #   The field to sort results by.
    #   @return [String]
    # @!attribute sort_order
    #   The order in which to sort results.
    #   @return [String]
    # @!attribute next_token
    #   A token to retrieve the next page of results.
    #   @return [String]
    # @!attribute max_results
    #   The maximum number of alerts to return per page.
    #   @return [Integer]
    class ListAlertsInput < Struct.new(
      nil,
      :space_id,
      :filter_criteria,
      :sort_by,
      :sort_order,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   The list of alert summaries.
    #   @return [Array<Types::AlertSummary>]
    # @!attribute next_token
    #   A token to retrieve the next page of results, or null if there are no more results.
    #   @return [String]
    class ListAlertsOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   Filter by domain ID.
    #   @return [String]
    # @!attribute principal_id
    #   Filter by principal ID.
    #   @return [String]
    # @!attribute principal_type
    #   Filter by principal type.
    #   @return [String]
    # @!attribute permission
    #   Filter by permission level.
    #   @return [String]
    # @!attribute next_token
    #   A token to retrieve the next page of results. Supply the same filters used
    #   on the request that returned it. Tokens expire after 24 hours.
    #   @return [String]
    # @!attribute max_results
    #   The maximum number of access grants to return per page. Defaults to 100.
    #   A page can contain fewer results than this value even when more results
    #   remain; continue while nextToken is present.
    #   @return [Integer]
    class ListDomainAccessGrantsForOrganizationInput < Struct.new(
      nil,
      :domain_id,
      :principal_id,
      :principal_type,
      :permission,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   The list of organization access grant summaries.
    #   @return [Array<Types::OrganizationAccessGrantSummary>]
    # @!attribute next_token
    #   A token to retrieve the next page of results, or null if there are no more results.
    #   @return [String]
    class ListDomainAccessGrantsForOrganizationOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   A token to retrieve the next page of results. Tokens expire after 24 hours.
    #   @return [String]
    # @!attribute max_results
    #   The maximum number of domains to return per page. Defaults to 100.
    #   @return [Integer]
    class ListDomainsInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   The list of domain summaries.
    #   @return [Array<Types::DomainSummary>]
    # @!attribute next_token
    #   A token to retrieve the next page of results, or null if there are no more results.
    #   @return [String]
    class ListDomainsOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The request for listing the integrations in an account.
    # @!attribute integration_type
    #   Returns only integrations of this provider type.
    #   @return [String]
    # @!attribute status
    #   Returns only integrations in this status.
    #   @return [String]
    # @!attribute name
    #   Returns only the integration with this exact name.
    #   @return [String]
    # @!attribute next_token
    #   Pagination token from a previous response; omit for the first page.
    #   @return [String]
    # @!attribute max_results
    #   Maximum number of integrations to return in one page.
    #   @return [Integer]
    class ListIntegrationsInput < Struct.new(
      nil,
      :integration_type,
      :status,
      :name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The response containing a page of integrations.
    # @!attribute items
    #   The page of integrations.
    #   @return [Array<Types::Integration>]
    # @!attribute next_token
    #   Pagination token for the next page; absent when there are no more results.
    #   @return [String]
    class ListIntegrationsOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_id
    #   The unique ID of the space.
    #   @return [String]
    # @!attribute name_prefix
    #   Filter to dashboards whose name starts with this prefix.
    #   @return [String]
    # @!attribute next_token
    #   A token to retrieve the next page of results.
    #   @return [String]
    # @!attribute max_results
    #   The maximum number of dashboards to return per page. Defaults to 100.
    #   A page can contain fewer results than this value even when more results
    #   remain; continue while nextToken is present.
    #   @return [Integer]
    class ListOmniDashboardsInput < Struct.new(
      nil,
      :space_id,
      :name_prefix,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   The list of dashboard summaries.
    #   @return [Array<Types::OmniDashboardSummary>]
    # @!attribute next_token
    #   A token to retrieve the next page of results, or null if there are no more results.
    #   @return [String]
    class ListOmniDashboardsOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   A token to retrieve the next page of results. Tokens expire after 24 hours.
    #   @return [String]
    # @!attribute max_results
    #   The maximum number of spaces to return per page. Defaults to 100.
    #   @return [Integer]
    class ListSpacesForOrganizationInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   The list of space summaries.
    #   @return [Array<Types::SpaceSummary>]
    # @!attribute next_token
    #   A token to retrieve the next page of results, or null if there are no more results.
    #   @return [String]
    class ListSpacesForOrganizationOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   Filter by domain ID.
    #   @return [String]
    # @!attribute next_token
    #   A token to retrieve the next page of results. Supply the same filters used
    #   on the request that returned it. Tokens expire after 24 hours.
    #   @return [String]
    # @!attribute max_results
    #   The maximum number of spaces to return per page. Defaults to 100.
    #   A page can contain fewer results than this value even when more results
    #   remain; continue while nextToken is present.
    #   @return [Integer]
    class ListSpacesInput < Struct.new(
      nil,
      :domain_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   The list of space summaries.
    #   @return [Array<Types::SpaceSummary>]
    # @!attribute next_token
    #   A token to retrieve the next page of results, or null if there are no more results.
    #   @return [String]
    class ListSpacesOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_set_name
    #   The name of the dataset to list fields for.
    #   @return [String]
    # @!attribute telemetry_type
    #   The type of telemetry to filter fields by.
    #   @return [String]
    # @!attribute start_time
    #   Inclusive start of the lookback window. When omitted, the service
    #   defaults to the configured lookback before endTime.
    #   @return [Time]
    # @!attribute end_time
    #   Inclusive end of the lookback window. When omitted, the service
    #   defaults to the current time.
    #   @return [Time]
    # @!attribute next_token
    #   A token to retrieve the next page of results. Reserved for future
    #   pagination; the service does not paginate at this time and returns null.
    #   @return [String]
    class ListTelemetryFieldsRequest < Struct.new(
      nil,
      :data_set_name,
      :telemetry_type,
      :start_time,
      :end_time,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fields
    #   The list of fields available for queries.
    #   @return [Array<Types::Field>]
    # @!attribute next_token
    #   A token to retrieve the next page of results, or null if there are no more results.
    #   @return [String]
    class ListTelemetryFieldsResponse < Struct.new(
      nil,
      :fields,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   A token to retrieve the next page of results.
    #   @return [String]
    # @!attribute max_results
    #   The maximum number of sessions to return per page.
    #   @return [Integer]
    class ListTelemetryQuerySessionsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sessions
    #   The list of session summaries.
    #   @return [Array<Types::SessionSummary>]
    # @!attribute next_token
    #   A token to retrieve the next page of results, or null if there are no more results.
    #   @return [String]
    class ListTelemetryQuerySessionsResponse < Struct.new(
      nil,
      :sessions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   Return only views of this ownership category.
    #   @return [String]
    # @!attribute max_results
    #   The maximum number of views to return per page.
    #   @return [Integer]
    # @!attribute next_token
    #   A token to retrieve the next page of results.
    #   @return [String]
    class ListViewsRequest < Struct.new(
      nil,
      :type,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   The list of view summaries.
    #   @return [Array<Types::ViewSummary>]
    # @!attribute next_token
    #   A token to retrieve the next page of results, or null if there are no more results.
    #   @return [String]
    class ListViewsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # One LOGS query selector block on a node. The `attributes` map's keys are AND'd; each selects with
    # `col = value`. Deliberately RAW/un-normalized so the selector matches the store, not the node's
    # merged identity.
    # @!attribute attributes
    #   One LOGS query-selector block: an exact log-store column mapped to the raw value it carries,
    #   so the selector matches the emitted signal. Keys are store column names, not bare attribute
    #   names. Every block carries "@logGroupName"; alongside it a block carries either the entity
    #   columns ("`@entities`.KeyAttributes.Name", ".Type", ".Environment",
    #   "`@entities`.Attributes.PlatformType") or OTel columns
    #   ("resource.attributes['service.name']", "resource.attributes['service.namespace']",
    #   "resource.attributes['cloud.provider'|'cloud.account.id'|'cloud.region']"). A dimension seen
    #   under several values — several log groups, or a service under two namespaces — becomes
    #   several blocks with the same columns and different values, to be OR'd together.
    #   @return [Hash<String, String>]
    class LogMetadata < Struct.new(
      nil,
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Descriptive information about a context graph node or edge, as opposed to its
    # identity and structure. Returned only when the request sets includeMetadata.
    # @!attribute metrics
    #   The metrics observed on the element.
    #   @return [Array<Types::MetricMetadata>]
    # @!attribute semantics
    #   Semantic description of the node. Absent on an edge, because semantics
    #   describe a service rather than a relationship.
    #   @return [Types::NodeSemantics]
    # @!attribute logs
    #   LOGS query selectors: a list of blocks to OR together, each block an AND of exact store
    #   column to raw value. Present on node metadata only — edges carry trace selectors. Returned
    #   when the request sets includeMetadata.
    #   @return [Array<Types::LogMetadata>]
    # @!attribute traces
    #   TRACES query selectors, same block shape as the logs selectors. Present on both node and
    #   edge metadata. Returned when the request sets includeMetadata.
    #   @return [Array<Types::TraceMetadata>]
    class Metadata < Struct.new(
      nil,
      :metrics,
      :semantics,
      :logs,
      :traces,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A single metric observed on a context graph node.
    # @!attribute name
    #   The metric name as emitted, such as "Duration".
    #   @return [String]
    # @!attribute preferred_stat
    #   The statistic to chart or alarm on, such as "p99" or "Sum". Free-form and
    #   frequently absent.
    #   @return [String]
    # @!attribute metric_type
    #   OTel metric kind: "gauge", "sum", "histogram", "exponential_histogram", or "summary"
    #   (CloudWatch-vended metrics carry the same kinds). Absent when the producer did not
    #   report one.
    #   @return [String]
    # @!attribute attributes
    #   Per-metric qualifying attributes used to query this metric's telemetry. Keys are the
    #   metric store's own label names, not bare OTel attribute names: service identity arrives
    #   as "@resource.service.name" and "@resource.service.namespace", and the instrumentation
    #   scope as "@instrumentation.@name", while span-derived metrics label the service as a
    #   bare "service.name". Cloud provider, account and region are not repeated per metric —
    #   read those from the node. Values are RAW, deliberately NOT the node's normalized or
    #   merged identity, so a selector built from them matches the emitted series. A merged node
    #   can carry different values per metric, which is why these live here rather than on the
    #   node.
    #   @return [Hash<String, String>]
    # @!attribute semantics
    #   What the metric means and the unit it is reported in.
    #   @return [Types::MetricSemantics]
    class MetricMetadata < Struct.new(
      nil,
      :name,
      :preferred_stat,
      :metric_type,
      :attributes,
      :semantics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The meaning and unit of a single metric.
    # @!attribute description
    #   Human-readable description of what the metric measures.
    #   @return [String]
    # @!attribute unit
    #   The unit the metric is reported in.
    #   @return [String]
    class MetricSemantics < Struct.new(
      nil,
      :description,
      :unit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Configures how the alert reacts when an evaluation produces no
    # data. {@code treatAs} carries the resulting state; defaults to
    # {@code NODATA} when omitted.
    # @!attribute treat_as
    #   The state to report when an evaluation produces no data.
    #   @return [String]
    class NoData < Struct.new(
      nil,
      :treat_as,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A node in the context graph representing a service, resource, or remote service.
    # @!attribute node_id
    #   The unique identifier of the node within the context graph.
    #   @return [String]
    # @!attribute node_type
    #   Whether the node is a service, a resource, or a remote service.
    #   @return [String]
    # @!attribute name
    #   The primary display name of the node.
    #   @return [String]
    # @!attribute alternate_names
    #   Other names this node was observed under. A node that merged across sources
    #   reports one resolved name, and the names it was merged away from appear here.
    #   @return [Array<String>]
    # @!attribute tags
    #   The tags observed on the underlying resource.
    #   @return [Hash<String, String>]
    # @!attribute node_properties
    #   Identity attributes promoted out of the flat attribute map onto typed members.
    #   @return [Types::NodeProperties]
    # @!attribute telemetry_attributes
    #   The node's OpenTelemetry (OTel) attributes, as emitted by telemetry — the raw
    #   values, as opposed to the normalized `nodeProperties`. A key promoted onto a
    #   `nodeProperties` member is removed here, so no value appears twice.
    #   @return [Hash<String, String>]
    # @!attribute operation_details
    #   The operations observed on this node, keyed by operation name. Each value
    #   lists the dimension sets that identify the metric series for that operation.
    #   @return [Hash<String, Array<Hash<String, String>>>]
    # @!attribute signal_types
    #   The kinds of telemetry signal observed on this node.
    #   @return [Array<String>]
    # @!attribute sources
    #   The discovery sources that contributed this node.
    #   @return [Array<String>]
    # @!attribute metadata
    #   Descriptive metadata about the node. Present only when the request sets
    #   includeMetadata.
    #   @return [Types::Metadata]
    # @!attribute first_observed_at
    #   When this node was first observed (UTC), at minute granularity. For a node
    #   that merged across sources, this is the earliest value any source reported.
    #   @return [Time]
    # @!attribute last_observed_at
    #   When this node was most recently observed (UTC), at minute granularity. For a
    #   node that merged across sources, this is the latest value any source reported.
    #   @return [Time]
    # @!attribute edges
    #   Outbound edges originating from this node. Each edge carries its `from`.
    #   @return [Array<Types::Edge>]
    class Node < Struct.new(
      nil,
      :node_id,
      :node_type,
      :name,
      :alternate_names,
      :tags,
      :node_properties,
      :telemetry_attributes,
      :operation_details,
      :signal_types,
      :sources,
      :metadata,
      :first_observed_at,
      :last_observed_at,
      :edges,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Criteria for selecting nodes in a context graph query.
    # @!attribute node_id
    #   Match only the node with this identifier.
    #   @return [String]
    # @!attribute node_type
    #   Match only nodes of this type.
    #   @return [String]
    # @!attribute name
    #   Match only nodes with this name.
    #   @return [String]
    # @!attribute tags
    #   Match nodes by the tags on the underlying resource.
    #   @return [Array<Types::KeyFilter>]
    # @!attribute telemetry_attributes
    #   Match nodes by their OpenTelemetry (OTel) telemetry attributes.
    #   @return [Array<Types::KeyFilter>]
    # @!attribute region
    #   Match nodes in any of these regions.
    #   @return [Array<String>]
    # @!attribute cloud_provider
    #   Match nodes on any of these cloud providers.
    #   @return [Array<String>]
    # @!attribute source_account_id
    #   Match nodes discovered from telemetry produced by any of these accounts.
    #   @return [Array<String>]
    # @!attribute namespace
    #   Match nodes in any of these logical service groupings.
    #   @return [Array<String>]
    # @!attribute category
    #   Match nodes of any of these categories.
    #   @return [Array<String>]
    # @!attribute stage
    #   Match nodes observed in any of these deployment environments.
    #   @return [Array<String>]
    # @!attribute sources
    #   Match nodes contributed by any of these discovery sources.
    #   @return [Array<String>]
    class NodeFilters < Struct.new(
      nil,
      :node_id,
      :node_type,
      :name,
      :tags,
      :telemetry_attributes,
      :region,
      :cloud_provider,
      :source_account_id,
      :namespace,
      :category,
      :stage,
      :sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Node identity attributes promoted out of the flat attribute map onto typed
    # members. The first four are part of the node's merge key, so a node that merged
    # across sources reports one resolved value for each.
    # @!attribute region
    #   The region the node runs in. Falls back to the region the telemetry was
    #   ingested from when the node does not report one.
    #   @return [String]
    # @!attribute cloud_provider
    #   The cloud provider hosting the node, resolved from the reported provider,
    #   platform, or vendor namespace, and defaulting to "aws".
    #   @return [String]
    # @!attribute source_account_id
    #   The account that produced the telemetry this node was discovered from.
    #   @return [String]
    # @!attribute namespace
    #   The logical service grouping the node belongs to. This is not a metric
    #   namespace.
    #   @return [String]
    # @!attribute category
    #   What kind of thing the node is, coarser than nodeType.
    #   @return [String]
    # @!attribute stage
    #   The node's deployment environment. A node may be observed in several; this is
    #   the highest-precedence one. Match any of them with NodeFilters.stage.
    #   @return [String]
    class NodeProperties < Struct.new(
      nil,
      :region,
      :cloud_provider,
      :source_account_id,
      :namespace,
      :category,
      :stage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Semantic description of the service a context graph node represents.
    # @!attribute purpose
    #   What the service does.
    #   @return [String]
    # @!attribute language
    #   The primary programming language the service is written in.
    #   @return [String]
    # @!attribute framework
    #   The application framework the service is built on.
    #   @return [String]
    # @!attribute kind
    #   The kind of workload the service is.
    #   @return [String]
    # @!attribute repository
    #   The source repository the service is built from.
    #   @return [String]
    class NodeSemantics < Struct.new(
      nil,
      :purpose,
      :language,
      :framework,
      :kind,
      :repository,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Single notification rule: which transitions trigger this rule and
    # where the resulting notification should be sent.
    # @!attribute trigger
    #   The conditions that trigger this notification rule.
    #   @return [Types::NotificationTrigger]
    # @!attribute target
    #   The destination for notifications from this rule.
    #   @return [Types::NotificationTarget]
    class NotificationRule < Struct.new(
      nil,
      :trigger,
      :target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The destination for a notification.
    # @!attribute type
    #   The type of notification target.
    #   @return [String]
    # @!attribute arn
    #   The Amazon Resource Name (ARN) of the notification target. For {@code slack} and
    #   {@code pagerduty}, an integration ARN as returned by {@code ListIntegrations}.
    #   @return [String]
    # @!attribute metadata
    #   Additional target-specific metadata.
    #   @return [Hash<String, String>]
    class NotificationTarget < Struct.new(
      nil,
      :type,
      :arn,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Trigger conditions for a notification rule. {@code stateValues} entries
    # combine with OR semantics; empty / omitted = any state.
    # @!attribute state_values
    #   Alert state(s) that trigger this rule. Empty / omitted = any state.
    #   @return [Array<String>]
    class NotificationTrigger < Struct.new(
      nil,
      :state_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Credentials for an OAuth 2.0 client-credentials grant used to authenticate
    # an integration with its external system.
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute client_id
    #   The OAuth 2.0 client identifier registered with the external system.
    #   @return [String]
    # @!attribute client_secret
    #   The OAuth 2.0 client secret that pairs with the client identifier.
    #   @return [String]
    # @!attribute provider_id
    #   The identifier of the OAuth provider that issued the client credentials.
    #   @return [String]
    class OAuthClientCredential < Struct.new(
      nil,
      :client_id,
      :client_secret,
      :provider_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Credentials for an OAuth 2.0 authorization-code grant, supplied when
    # completing the authorization of an integration.
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute auth_code
    #   The OAuth 2.0 authorization code returned by the external system's
    #   authorization endpoint.
    #   @return [String]
    class OAuthCodeCredential < Struct.new(
      nil,
      :auth_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A dashboard within a space, including its body.
    # @!attribute dashboard_id
    #   The unique ID of the dashboard.
    #   @return [String]
    # @!attribute arn
    #   The Amazon Resource Name (ARN) of the dashboard.
    #   @return [String]
    # @!attribute name
    #   A name that identifies the dashboard.
    #   @return [String]
    # @!attribute body
    #   The dashboard definition.
    #   @return [String]
    # @!attribute created_by
    #   The principal that created the dashboard.
    #   @return [String]
    # @!attribute description
    #   An optional description of the dashboard.
    #   @return [String]
    # @!attribute tags
    #   The tags associated with the dashboard.
    #   @return [Hash<String, String>]
    # @!attribute created_at
    #   The timestamp when the dashboard was created.
    #   @return [Time]
    # @!attribute updated_at
    #   The timestamp when the dashboard was last updated.
    #   @return [Time]
    class OmniDashboard < Struct.new(
      nil,
      :dashboard_id,
      :arn,
      :name,
      :body,
      :created_by,
      :description,
      :tags,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Summary of a dashboard. Call GetOmniDashboard for the full dashboard.
    # @!attribute dashboard_id
    #   The unique ID of the dashboard.
    #   @return [String]
    # @!attribute arn
    #   The Amazon Resource Name (ARN) of the dashboard.
    #   @return [String]
    # @!attribute name
    #   A name that identifies the dashboard.
    #   @return [String]
    # @!attribute created_by
    #   The principal that created the dashboard.
    #   @return [String]
    # @!attribute description
    #   An optional description of the dashboard.
    #   @return [String]
    # @!attribute tags
    #   The tags associated with the dashboard.
    #   @return [Hash<String, String>]
    # @!attribute created_at
    #   The timestamp when the dashboard was created.
    #   @return [Time]
    # @!attribute updated_at
    #   The timestamp when the dashboard was last updated.
    #   @return [Time]
    class OmniDashboardSummary < Struct.new(
      nil,
      :dashboard_id,
      :arn,
      :name,
      :created_by,
      :description,
      :tags,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # An organization-scoped access grant.
    # @!attribute grant_id
    #   The unique ID of the access grant.
    #   @return [String]
    # @!attribute grant_arn
    #   The Amazon Resource Name (ARN) of the access grant.
    #   @return [String]
    # @!attribute name
    #   A name that identifies the access grant.
    #   @return [String]
    # @!attribute domain_id
    #   The ID of the organization domain the grant belongs to.
    #   @return [String]
    # @!attribute principal
    #   The principal receiving the grant.
    #   @return [Types::OrganizationAccessGrantPrincipal]
    # @!attribute permission
    #   The permission granted.
    #   @return [String]
    # @!attribute grant_type
    #   Who manages the grant.
    #   @return [String]
    # @!attribute created_by
    #   The principal that created the grant.
    #   @return [String]
    # @!attribute created_at
    #   The timestamp when the grant was created.
    #   @return [Time]
    # @!attribute updated_at
    #   The timestamp when the grant was last updated.
    #   @return [Time]
    class OrganizationAccessGrant < Struct.new(
      nil,
      :grant_id,
      :grant_arn,
      :name,
      :domain_id,
      :principal,
      :permission,
      :grant_type,
      :created_by,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The principal receiving an organization-level domain access grant. Specify
    # principalId, principalAttributes, or both.
    # @!attribute principal_type
    #   The type of principal receiving the grant.
    #   @return [String]
    # @!attribute principal_id
    #   The ID of the principal receiving the grant.
    #   @return [String]
    # @!attribute principal_attributes
    #   Attribute conditions for attribute-based access. When provided, the grant
    #   targets any principal matching all specified conditions. Supported only for
    #   IDC_USER principals.
    #   @return [Array<Types::AccessGrantPrincipalAttribute>]
    class OrganizationAccessGrantPrincipal < Struct.new(
      nil,
      :principal_type,
      :principal_id,
      :principal_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Summary of an organization access grant. Call
    # GetDomainAccessGrantForOrganization for the full grant.
    # @!attribute grant_id
    #   The unique ID of the access grant.
    #   @return [String]
    # @!attribute grant_arn
    #   The Amazon Resource Name (ARN) of the access grant.
    #   @return [String]
    # @!attribute name
    #   A name that identifies the access grant.
    #   @return [String]
    # @!attribute domain_id
    #   The ID of the organization domain the grant belongs to.
    #   @return [String]
    # @!attribute principal
    #   The principal receiving the grant.
    #   @return [Types::OrganizationAccessGrantPrincipal]
    # @!attribute permission
    #   The permission granted.
    #   @return [String]
    # @!attribute grant_type
    #   Who manages the grant.
    #   @return [String]
    # @!attribute created_at
    #   The timestamp when the access grant was created.
    #   @return [Time]
    # @!attribute updated_at
    #   The timestamp when the access grant was last updated.
    #   @return [Time]
    class OrganizationAccessGrantSummary < Struct.new(
      nil,
      :grant_id,
      :grant_arn,
      :name,
      :domain_id,
      :principal,
      :permission,
      :grant_type,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Detailed information about an organization domain.
    # @!attribute domain_id
    #   The unique ID of the organization domain.
    #   @return [String]
    # @!attribute domain_arn
    #   The Amazon Resource Name (ARN) of the organization domain.
    #   @return [String]
    # @!attribute name
    #   A name that identifies the organization domain.
    #   @return [String]
    # @!attribute domain_endpoint_url
    #   The HTTPS endpoint URL for accessing the organization domain.
    #   @return [String]
    # @!attribute custom_endpoint_urls
    #   Additional endpoint URLs derived from the domain name.
    #   @return [Array<String>]
    # @!attribute organization_id
    #   The ID of the AWS Organization that owns the domain.
    #   @return [String]
    # @!attribute owner_account_id
    #   The AWS account ID that owns the organization domain.
    #   @return [String]
    # @!attribute identity_providers
    #   The identity providers configured for the organization domain.
    #   @return [Array<String>]
    # @!attribute identity_provider_configuration
    #   Identity provider configuration for the organization domain.
    #   @return [Types::IdentityProviderConfiguration]
    # @!attribute identity_center_application_arn
    #   The ARN of the Identity Center application. Absent for IAM-only domains.
    #   @return [String]
    # @!attribute region
    #   The Region where this organization domain was created.
    #   @return [String]
    # @!attribute status
    #   Current status of the organization domain.
    #   @return [String]
    # @!attribute domain_access_role_arn
    #   The ARN of the customer-provided IAM role in the management account used for
    #   domain access.
    #   @return [String]
    # @!attribute created_at
    #   The timestamp when the organization domain was created.
    #   @return [Time]
    # @!attribute updated_at
    #   The timestamp when the organization domain was last updated.
    #   @return [Time]
    class OrganizationDomain < Struct.new(
      nil,
      :domain_id,
      :domain_arn,
      :name,
      :domain_endpoint_url,
      :custom_endpoint_urls,
      :organization_id,
      :owner_account_id,
      :identity_providers,
      :identity_provider_configuration,
      :identity_center_application_arn,
      :region,
      :status,
      :domain_access_role_arn,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Indicates whether a query returned partial results.
    # @!attribute partial_results_detected
    #   True when the query returned partial results (some data could not be read).
    #   @return [Boolean]
    class PartialResults < Struct.new(
      nil,
      :partial_results_detected,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A user or group matched by SearchPrincipals.
    # @!attribute principal_id
    #   The unique ID of the principal.
    #   @return [String]
    # @!attribute principal_type
    #   Whether the principal is a user or a group.
    #   @return [String]
    # @!attribute display_name
    #   The display name of the principal.
    #   @return [String]
    # @!attribute user_name
    #   The user name of the principal. Present for users only.
    #   @return [String]
    # @!attribute description
    #   An optional description of the principal.
    #   @return [String]
    class PrincipalSearchResult < Struct.new(
      nil,
      :principal_id,
      :principal_type,
      :display_name,
      :user_name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The request for updating the intelligence configuration of the calling account.
    # @!attribute kms_key_arn
    #   Optional KMS key ARN to configure customer-managed encryption for anomaly data.
    #   @return [String]
    # @!attribute remove_kms_key
    #   Set to true to disassociate the configured KMS key. Mutually exclusive with
    #   kmsKeyArn; the service returns ValidationException if both are provided.
    #   @return [Boolean]
    # @!attribute client_token
    #   Idempotency token for safe retries. Repeating a request with the same token
    #   applies the update at most once instead of reprocessing it.
    #   @return [String]
    class PutIntelligenceConfigurationInput < Struct.new(
      nil,
      :kms_key_arn,
      :remove_kms_key,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The intelligence configuration for the calling account after the update.
    # @!attribute account_id
    #   The AWS account ID this configuration applies to.
    #   @return [String]
    # @!attribute kms_key_arn
    #   The currently active KMS key ARN for customer-managed encryption, if configured.
    #   @return [String]
    # @!attribute updated_at
    #   ISO-8601 timestamp of the last update.
    #   @return [Time]
    # @!attribute created_at
    #   ISO-8601 timestamp of initial creation.
    #   @return [Time]
    class PutIntelligenceConfigurationOutput < Struct.new(
      nil,
      :account_id,
      :kms_key_arn,
      :updated_at,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Statistics about a telemetry query execution.
    # @!attribute bytes_scanned
    #   The number of bytes scanned by the query.
    #   @return [Float]
    # @!attribute percent_complete
    #   The percentage of the query that has completed.
    #   @return [Integer]
    # @!attribute records_scanned
    #   The total number of records scanned.
    #   @return [Integer]
    # @!attribute records_matched
    #   The number of records that matched the query criteria.
    #   @return [Integer]
    # @!attribute partial_results
    #   Information about whether the query returned partial results.
    #   @return [Types::PartialResults]
    class QueryStatistics < Struct.new(
      nil,
      :bytes_scanned,
      :percent_complete,
      :records_scanned,
      :records_matched,
      :partial_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The specified resource does not exist.
    # @!attribute message
    #   @return [String]
    # @!attribute resource_type
    #   The type of the resource that could not be found. Not always present.
    #   @return [String]
    # @!attribute resource_id
    #   The identifier of the resource that could not be found. Not always present.
    #   @return [String]
    # @!attribute error_code
    #   The error code associated with the failure.
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_type,
      :resource_id,
      :error_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A single resource scope entry within an AccessGrant. Associates a resource
    # type with optional ARN patterns, tag conditions, and row-level filters.
    # @!attribute resource_type
    #   Resource type name (e.g., "DataSet", "OmniDashboard").
    #   @return [String]
    # @!attribute resource_arns
    #   Specific resource ARNs or ARN patterns. When set, actions are limited to
    #   these resources. When absent, defaults to "*".
    #   @return [Array<String>]
    # @!attribute tags
    #   Tag-based conditions for dynamic resource scoping. Access applies only to
    #   resources carrying all of the specified tag key/value pairs.
    #   @return [Hash<String, String>]
    # @!attribute signal_types
    #   Signal types this scope's row filtering applies to.
    #   Required when rowScopeGroups is set.
    #   @return [Array<String>]
    # @!attribute row_scope_groups
    #   Row-level filters for this scope, as an OR of AND-groups: a row is visible
    #   when it matches every filter in any one group. Requires signalTypes.
    #
    #   Row filters are additive across a principal's matching grants. A signal type
    #   with no matching group is unrestricted, and when rowScopeGroups is omitted
    #   all rows are visible for all signal types.
    #   @return [Array<Array<Types::RowScope>>]
    class ResourceScope < Struct.new(
      nil,
      :resource_type,
      :resource_arns,
      :tags,
      :signal_types,
      :row_scope_groups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A single additive row-level filter on an AccessGrant. A row is visible when
    # its value for the given field matches the filter's values. Row filters are
    # additive: the visible rows are the union of all row filters across a
    # principal's matching grants.
    # @!attribute field
    #   The field (column) the allowlist applies to (e.g., "serviceName", "accountId").
    #   @return [String]
    # @!attribute operator
    #   Match operator applied to this filter's values.
    #   @return [String]
    # @!attribute values
    #   The values the field is matched against.
    #   @return [Array<String>]
    class RowScope < Struct.new(
      nil,
      :field,
      :operator,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Top-level rule definition.
    #
    # {@code telemetryRule} members are optional at the Smithy level to support
    # PATCH semantics on UpdateAlert (send only the sub-blocks you want to
    # change). On CreateAlert, presence is enforced by the service-side validator.
    # @!attribute telemetry_rule
    #   The telemetry-based rule definition.
    #   @return [Types::TelemetryRule]
    class Rule < Struct.new(
      :telemetry_rule,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class TelemetryRule < Rule; end
      class Unknown < Rule; end
    end

    # A group of actions within an access grant, together with the resource scopes
    # and context conditions that apply to exactly those actions.
    # @!attribute actions
    #   The actions this group applies to.
    #   @return [Array<String>]
    # @!attribute resources
    #   Optional resource scopes constraining these actions to specific resources.
    #   @return [Array<Types::ResourceScope>]
    # @!attribute context_conditions
    #   Optional context conditions for fine-grained access control on these actions.
    #   @return [Hash<String, Array<String>>]
    class ScopedActions < Struct.new(
      nil,
      :actions,
      :resources,
      :context_conditions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   The ID of the domain to search within.
    #   @return [String]
    # @!attribute search_query
    #   A search term to match against user names, display names, and IDs. Pass * to list
    #   all principals. Maximum 128 characters.
    #   @return [String]
    # @!attribute max_results
    #   The maximum number of results to return. Defaults to 10. Valid only when searchQuery
    #   is *; other searches reject this parameter and return at most 10 results.
    #   @return [Integer]
    # @!attribute next_token
    #   A token to retrieve the next page of results. Valid only when searchQuery is *;
    #   other searches do not paginate and reject this parameter. Tokens expire after
    #   24 hours.
    #   @return [String]
    class SearchPrincipalsInput < Struct.new(
      nil,
      :domain_id,
      :search_query,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute results
    #   The list of matching principals.
    #   @return [Array<Types::PrincipalSearchResult>]
    # @!attribute next_token
    #   A token to retrieve the next page of results, or null if there are no more results.
    #   @return [String]
    class SearchPrincipalsOutput < Struct.new(
      nil,
      :results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A service quota was exceeded.
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Summary information about a query session, including its identifier, name,
    # and activity timestamps.
    # @!attribute session_id
    #   The unique ID of the session.
    #   @return [String]
    # @!attribute created_at
    #   The timestamp when the session was created.
    #   @return [Time]
    # @!attribute last_activity_at
    #   The timestamp of the most recent activity in the session.
    #   @return [Time]
    # @!attribute session_name
    #   The human-readable name of the session. Names under `/aws/` are reserved
    #   for service integrations.
    #   @return [String]
    class SessionSummary < Struct.new(
      nil,
      :session_id,
      :created_at,
      :last_activity_at,
      :session_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Detailed information about a space.
    # @!attribute space_id
    #   The unique ID of the space.
    #   @return [String]
    # @!attribute name
    #   A name that identifies the space.
    #   @return [String]
    # @!attribute space_arn
    #   The Amazon Resource Name (ARN) of the space.
    #   @return [String]
    # @!attribute domain_arn
    #   The Amazon Resource Name (ARN) of the domain the space belongs to. Absent when
    #   the space is not associated with a domain, so callers must tolerate its absence.
    #   @return [String]
    # @!attribute region
    #   The region where this space was created.
    #   @return [String]
    # @!attribute owner_account_id
    #   AWS account ID that owns this space.
    #   @return [String]
    # @!attribute data_access_role_arn
    #   The ARN of the IAM role used for data access.
    #   @return [String]
    # @!attribute created_at
    #   The timestamp when the space was created.
    #   @return [Time]
    # @!attribute updated_at
    #   The timestamp when the space was last updated.
    #   @return [Time]
    # @!attribute agent_core_evaluation_role_arn
    #   The ARN of the IAM role used by AgentCore online evaluation. Absent when the space
    #   was created without one.
    #   @return [String]
    # @!attribute status
    #   The status of the space.
    #   @return [String]
    # @!attribute status_reason
    #   Reason for the current space status.
    #   @return [String]
    # @!attribute encryption_configuration
    #   How the space's data at rest is encrypted. Always populated: a space with no
    #   customer managed key reports `encryptionStrategy` AWS_OWNED and no `kmsKeyArn`.
    #   @return [Types::EncryptionConfiguration]
    class Space < Struct.new(
      nil,
      :space_id,
      :name,
      :space_arn,
      :domain_arn,
      :region,
      :owner_account_id,
      :data_access_role_arn,
      :created_at,
      :updated_at,
      :agent_core_evaluation_role_arn,
      :status,
      :status_reason,
      :encryption_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Identifies what the credentials are for: either an existing space, or a target
    # account in a domain. Specify spaceId, or both domainId and targetAccountId.
    # @!attribute space_id
    #   The ID of an existing space to return credentials for.
    #   @return [String]
    # @!attribute domain_id
    #   The ID of the domain, when returning credentials for a target account that
    #   does not yet have a space.
    #   @return [String]
    # @!attribute target_account_id
    #   The ID of the target member account. Required when domainId is set.
    #   @return [String]
    class SpaceCredentialRequestContext < Struct.new(
      nil,
      :space_id,
      :domain_id,
      :target_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Summary of a space. Call GetSpace for the full space.
    # @!attribute space_id
    #   The unique ID of the space.
    #   @return [String]
    # @!attribute name
    #   A name that identifies the space.
    #   @return [String]
    # @!attribute space_arn
    #   The Amazon Resource Name (ARN) of the space.
    #   @return [String]
    # @!attribute domain_arn
    #   The Amazon Resource Name (ARN) of the domain the space belongs to. Absent when
    #   the space is not associated with a domain, so callers must tolerate its absence.
    #   @return [String]
    # @!attribute region
    #   The region where this space was created.
    #   @return [String]
    # @!attribute owner_account_id
    #   AWS account ID that owns this space.
    #   @return [String]
    # @!attribute status
    #   The status of the space.
    #   @return [String]
    # @!attribute status_reason
    #   Reason for the current space status.
    #   @return [String]
    # @!attribute created_at
    #   The timestamp when the space was created.
    #   @return [Time]
    # @!attribute updated_at
    #   The timestamp when the space was last updated.
    #   @return [Time]
    class SpaceSummary < Struct.new(
      nil,
      :space_id,
      :name,
      :space_arn,
      :domain_arn,
      :region,
      :owner_account_id,
      :status,
      :status_reason,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute query_string
    #   The query string to execute.
    #   @return [String]
    # @!attribute session_id
    #   The unique ID of the session.
    #   @return [String]
    class StartTelemetryQueryRequest < Struct.new(
      nil,
      :query_string,
      :session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute query_id
    #   The unique ID of the query.
    #   @return [String]
    # @!attribute session_id
    #   The unique ID of the session.
    #   @return [String]
    class StartTelemetryQueryResponse < Struct.new(
      nil,
      :query_id,
      :session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_name
    #   A human-readable name for the session. Names under `/aws/` are reserved
    #   for service integrations.
    #   @return [String]
    class StartTelemetryQuerySessionRequest < Struct.new(
      nil,
      :session_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   The unique ID of the session.
    #   @return [String]
    class StartTelemetryQuerySessionResponse < Struct.new(
      nil,
      :session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute query_id
    #   The unique ID of the query.
    #   @return [String]
    class StopTelemetryQueryRequest < Struct.new(
      nil,
      :query_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StopTelemetryQueryResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   The unique ID of the session.
    #   @return [String]
    class StopTelemetryQuerySessionRequest < Struct.new(
      nil,
      :session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StopTelemetryQuerySessionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Telemetry-based rule: what to query, how to evaluate the result, what
    # condition makes it fire, and what to do on missing data.
    # @!attribute query
    #   The query expression to evaluate.
    #   @return [Types::AlertRuleQuery]
    # @!attribute condition
    #   The condition that determines when the alert fires.
    #   @return [Types::AlertCondition]
    # @!attribute evaluation
    #   The evaluation cadence and durations.
    #   @return [Types::AlertEvaluation]
    # @!attribute no_data
    #   How the alert behaves when a query produces no data.
    #   @return [Types::NoData]
    class TelemetryRule < Struct.new(
      nil,
      :query,
      :condition,
      :evaluation,
      :no_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The request was throttled due to exceeding the allowed request rate.
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   The number of seconds to wait before retrying the request. Not always
    #   present.
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # One TRACES query selector block on a node/edge (see LogMetadata).
    # @!attribute attributes
    #   One TRACES query-selector block: an exact span-store column mapped to the raw value it
    #   carries. Keys are store column names, not bare attribute names — the service identity and
    #   cloud dimensions arrive as "resource.attributes['service.name']",
    #   "resource.attributes['service.namespace']", "resource.attributes['cloud.provider']",
    #   "resource.attributes['cloud.account.id']", "resource.attributes['cloud.region']" and
    #   "resource.attributes['deployment.environment']", and span-level identity as
    #   "attributes['aws.local.service']" and "attributes['aws.local.environment']". Not every
    #   column is present on every block; which ones appear depends on what the span carried.
    #   @return [Hash<String, String>]
    class TraceMetadata < Struct.new(
      nil,
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_id
    #   The unique ID of the space.
    #   @return [String]
    # @!attribute profile_id
    #   The unique ID of the access profile to update.
    #   @return [String]
    # @!attribute name
    #   A new name for the access profile. Omit to leave unchanged.
    #   @return [String]
    # @!attribute description
    #   A new description of the access profile. Omit to leave unchanged.
    #   @return [String]
    class UpdateAccessProfileInput < Struct.new(
      nil,
      :space_id,
      :profile_id,
      :name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_profile
    #   The access profile.
    #   @return [Types::AccessProfile]
    class UpdateAccessProfileOutput < Struct.new(
      nil,
      :access_profile,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_id
    #   The unique ID of the space.
    #   @return [String]
    # @!attribute alert_id
    #   The alert to update.
    #   @return [String]
    # @!attribute profile_id
    #   The ID of the access profile associated with the alert.
    #   @return [String]
    # @!attribute name
    #   A new display name for the alert. Omit to leave the name unchanged
    #   (apply-if-present / PATCH). Same constraints as CreateAlert.name; the
    #   name is not the alert's identity, so a rename never changes the alertId.
    #   @return [String]
    # @!attribute description
    #   A new description of the alert. Omit to leave unchanged.
    #   @return [String]
    # @!attribute rule
    #   The rule that defines how the alert is evaluated. Omit to leave unchanged.
    #   Each sub-block is replaced whole when present: {@code query}, {@code condition},
    #   {@code evaluation} and {@code noData} are applied only when supplied, and within a
    #   supplied block an omitted optional member is cleared to unset (null/absent) rather
    #   than preserved from the stored alert or defaulted. See {@link AlertCondition} and
    #   {@link AlertEvaluation}.
    #   @return [Types::Rule]
    # @!attribute notifications_enabled
    #   Whether actions (notifications) are enabled for this alert.
    #   Omitted = leave existing value unchanged.
    #   @return [Boolean]
    # @!attribute notification_rules
    #   Replaces the entire notification rule list when present; full-replace,
    #   not merge. Omitted = leave existing rules unchanged. An empty list
    #   clears all rules (the alert keeps evaluating; only notifications stop).
    #   @return [Array<Types::NotificationRule>]
    class UpdateAlertInput < Struct.new(
      nil,
      :space_id,
      :alert_id,
      :profile_id,
      :name,
      :description,
      :rule,
      :notifications_enabled,
      :notification_rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateAlertOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   The ID of the organization domain to update.
    #   @return [String]
    # @!attribute name
    #   A new name for the organization domain. Omit to leave unchanged. Must be 3-63
    #   characters: lowercase letters, numbers, and hyphens. It must begin and end with a
    #   letter or number and cannot contain consecutive hyphens.
    #   @return [String]
    # @!attribute identity_providers
    #   The identity providers to configure for the domain. Omit to leave unchanged.
    #   @return [Array<String>]
    # @!attribute identity_provider_configuration
    #   Identity provider configuration for the domain. Omit to leave unchanged.
    #   @return [Types::IdentityProviderConfiguration]
    class UpdateDomainForOrganizationInput < Struct.new(
      nil,
      :domain_id,
      :name,
      :identity_providers,
      :identity_provider_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_domain
    #   The details of the updated organization domain.
    #   @return [Types::OrganizationDomain]
    class UpdateDomainForOrganizationOutput < Struct.new(
      nil,
      :organization_domain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   The unique ID of the domain to update.
    #   @return [String]
    # @!attribute name
    #   A new name for the domain. Omit to leave unchanged. Must be 3-63 characters:
    #   lowercase letters, numbers, and hyphens. It must begin and end with a letter or
    #   number and cannot contain consecutive hyphens.
    #   @return [String]
    # @!attribute identity_providers
    #   The identity providers to configure for the domain.
    #   @return [Array<String>]
    # @!attribute identity_provider_configuration
    #   Identity provider configuration for the domain.
    #   @return [Types::IdentityProviderConfiguration]
    class UpdateDomainInput < Struct.new(
      nil,
      :domain_id,
      :name,
      :identity_providers,
      :identity_provider_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   The details of the updated domain.
    #   @return [Types::Domain]
    class UpdateDomainOutput < Struct.new(
      nil,
      :domain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The request for updating an existing integration.
    # @!attribute identifier
    #   Identifies the integration to update — exactly one of integrationId,
    #   integrationArn, or integrationName.
    #   @return [Types::IntegrationIdentifier]
    # @!attribute credential
    #   The replacement credential used to authenticate with the provider.
    #   @return [Types::IntegrationCredential]
    # @!attribute integration_attributes
    #   The provider-specific attributes to associate with the integration.
    #   @return [Hash<String, String>]
    # @!attribute role_arn
    #   The Amazon Resource Name of the IAM role assumed to access the integration.
    #   @return [String]
    class UpdateIntegrationInput < Struct.new(
      nil,
      :identifier,
      :credential,
      :integration_attributes,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The response from updating an integration.
    # @!attribute integration
    #   The details of the updated integration. This is the same object returned by
    #   GetIntegration and CreateIntegration. Populated on a successful update; absent
    #   only if the post-update read-back of the resource did not complete.
    #   @return [Types::Integration]
    class UpdateIntegrationOutput < Struct.new(
      nil,
      :integration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_id
    #   The unique ID of the space.
    #   @return [String]
    # @!attribute dashboard_id
    #   The unique ID of the dashboard.
    #   @return [String]
    # @!attribute body
    #   The new dashboard definition, as a JSON document. Maximum 1 MiB. Omit to
    #   leave unchanged.
    #   @return [String]
    # @!attribute name
    #   A new name for the dashboard. Omit to leave unchanged.
    #   @return [String]
    # @!attribute description
    #   A new description of the dashboard. Omit to leave unchanged.
    #   @return [String]
    class UpdateOmniDashboardInput < Struct.new(
      nil,
      :space_id,
      :dashboard_id,
      :body,
      :name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute omni_dashboard
    #   The dashboard.
    #   @return [Types::OmniDashboard]
    class UpdateOmniDashboardOutput < Struct.new(
      nil,
      :omni_dashboard,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_id
    #   The unique ID of the space to update.
    #   @return [String]
    # @!attribute name
    #   A new name for the space. Omit to leave unchanged. Must be 3-64 characters:
    #   lowercase letters, numbers, and hyphens. It must begin and end with a letter or
    #   number and cannot contain consecutive hyphens.
    #   @return [String]
    # @!attribute agent_core_evaluation_role_arn
    #   The ARN of the IAM role used by AgentCore online evaluation. Must be in the
    #   caller's account. Omit if the space does not use AgentCore online evaluation.
    #   @return [String]
    # @!attribute encryption_configuration
    #   How to encrypt the space's data at rest. Omit to leave encryption unchanged.
    #   Pass `encryptionStrategy` AWS_OWNED to stop using a customer managed key and
    #   revert to service owned encryption.
    #   @return [Types::EncryptionConfiguration]
    class UpdateSpaceInput < Struct.new(
      nil,
      :space_id,
      :name,
      :agent_core_evaluation_role_arn,
      :encryption_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space
    #   The updated details of the space.
    #   @return [Types::Space]
    class UpdateSpaceOutput < Struct.new(
      nil,
      :space,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   The name of the view to update.
    #   @return [String]
    # @!attribute definition
    #   The new SQL query that defines the view. Omit to leave unchanged.
    #   @return [String]
    # @!attribute description
    #   The new description of the view. Omit to leave unchanged.
    #   @return [String]
    class UpdateViewRequest < Struct.new(
      nil,
      :name,
      :definition,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   The name of the view.
    #   @return [String]
    # @!attribute type
    #   The ownership category of the view.
    #   @return [String]
    # @!attribute description
    #   The description of the view.
    #   @return [String]
    # @!attribute definition
    #   The SQL query that defines the view.
    #   @return [String]
    # @!attribute created_at
    #   The timestamp when the view was created.
    #   @return [Time]
    # @!attribute updated_at
    #   The timestamp when the view was last updated.
    #   @return [Time]
    # @!attribute arn
    #   The ARN of the view.
    #   @return [String]
    class UpdateViewResponse < Struct.new(
      nil,
      :name,
      :type,
      :description,
      :definition,
      :created_at,
      :updated_at,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A parameter is specified incorrectly.
    # @!attribute message
    #   @return [String]
    # @!attribute error_code
    #   The error code associated with the validation failure.
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      :error_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Summary information about a view. Does not include the view definition.
    # @!attribute name
    #   The name of the view.
    #   @return [String]
    # @!attribute type
    #   The ownership category of the view.
    #   @return [String]
    # @!attribute description
    #   The description of the view.
    #   @return [String]
    # @!attribute created_at
    #   The timestamp when the view was created.
    #   @return [Time]
    # @!attribute updated_at
    #   The timestamp when the view was last updated.
    #   @return [Time]
    class ViewSummary < Struct.new(
      nil,
      :name,
      :type,
      :description,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
