# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudWatchOmni
  module Types

    # The caller is not authorized to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Full AccessGrant structure returned by API operations.
    #
    # @!attribute [rw] grant_id
    #   The unique ID of the access grant.
    #   @return [String]
    #
    # @!attribute [rw] grant_arn
    #   The Amazon Resource Name (ARN) of the access grant.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name that identifies the access grant.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The AWS account ID that owns the grant.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the domain the grant belongs to.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The principal receiving the grant.
    #   @return [Types::AccessGrantPrincipal]
    #
    # @!attribute [rw] permission
    #   The permission granted.
    #   @return [String]
    #
    # @!attribute [rw] grant_type
    #   Who manages the grant.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The principal that created the grant.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the grant was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the grant was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] space_id
    #   The space this grant applies to. Domain-scoped grants are returned
    #   by ListDomainAccessGrantsForOrganization instead.
    #   @return [String]
    #
    # @!attribute [rw] scoped_actions
    #   Groups of actions allowed by the grant, each with the resource
    #   scopes and conditions that limit those actions.
    #   @return [Array<Types::ScopedActions>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/AccessGrant AWS API Documentation
    #
    class AccessGrant < Struct.new(
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
      :scoped_actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The principal receiving the grant. Specify principalId,
    # principalAttributes, or both.
    #
    # @!attribute [rw] principal_type
    #   The type of principal receiving the grant.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The ID of the principal receiving the grant.
    #   @return [String]
    #
    # @!attribute [rw] principal_attributes
    #   Attribute conditions for attribute-based access. When provided, the
    #   grant targets any principal matching all specified conditions.
    #   Supported only for IDC\_USER principals.
    #   @return [Array<Types::AccessGrantPrincipalAttribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/AccessGrantPrincipal AWS API Documentation
    #
    class AccessGrantPrincipal < Struct.new(
      :principal_type,
      :principal_id,
      :principal_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single attribute condition used to match principals for
    # attribute-based access.
    #
    # @!attribute [rw] key
    #   The Identity Center user attribute to match on. One of userName,
    #   active, userStatus, displayName, email, name.givenName,
    #   name.familyName, enterprise.department, enterprise.division,
    #   enterprise.organization, enterprise.costCenter, or
    #   enterprise.employeeNumber. Each key may appear only once per grant.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The attribute value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/AccessGrantPrincipalAttribute AWS API Documentation
    #
    class AccessGrantPrincipalAttribute < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of an AccessGrant. Call GetAccessGrant for the full grant.
    #
    # @!attribute [rw] grant_id
    #   The unique ID of the access grant.
    #   @return [String]
    #
    # @!attribute [rw] grant_arn
    #   The Amazon Resource Name (ARN) of the access grant.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name that identifies the access grant.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the domain the grant belongs to.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The principal receiving the grant.
    #   @return [Types::AccessGrantPrincipal]
    #
    # @!attribute [rw] permission
    #   The permission granted.
    #   @return [String]
    #
    # @!attribute [rw] grant_type
    #   Who manages the grant.
    #   @return [String]
    #
    # @!attribute [rw] space_id
    #   The space this grant applies to. Domain-scoped grants are returned
    #   by ListDomainAccessGrantsForOrganization instead.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/AccessGrantSummary AWS API Documentation
    #
    class AccessGrantSummary < Struct.new(
      :grant_id,
      :grant_arn,
      :name,
      :domain_id,
      :principal,
      :permission,
      :grant_type,
      :space_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Access Profile.
    #
    # @!attribute [rw] profile_id
    #   The unique ID of the access profile.
    #   @return [String]
    #
    # @!attribute [rw] space_id
    #   The ID of the space the profile belongs to.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of this access profile.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name that identifies the access profile.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description of the access profile.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the access profile was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the access profile was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] assume_status
    #   The calling principal's authorization to assume this access
    #   profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_type
    #   Who manages the access profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/AccessProfile AWS API Documentation
    #
    class AccessProfile < Struct.new(
      :profile_id,
      :space_id,
      :arn,
      :name,
      :description,
      :created_at,
      :updated_at,
      :assume_status,
      :profile_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of an access profile. Call GetAccessProfile for the full
    # profile.
    #
    # @!attribute [rw] profile_id
    #   The unique ID of the access profile.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of this access profile.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name that identifies the access profile.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description of the access profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_type
    #   Who manages the access profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/AccessProfileSummary AWS API Documentation
    #
    class AccessProfileSummary < Struct.new(
      :profile_id,
      :arn,
      :name,
      :description,
      :profile_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Full alert entity, returned by both CreateAlert and GetAlert. A create
    # and a read of the same alert describe it identically except for
    # \{@code state}, which only the read paths populate. UpdateAlert
    # returns an empty response.
    #
    # @!attribute [rw] name
    #   The name of the alert.
    #   @return [String]
    #
    # @!attribute [rw] alert_id
    #   The stable alert identifier (see \{@link AlertId}), minted on create
    #   and immutable across updates. Use it (not \{@code name}) to address
    #   the alert on GetAlert/UpdateAlert/DeleteAlert; it is also the ARN's
    #   resource id.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description of the alert.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The AWS account ID that owns the alert.
    #   @return [String]
    #
    # @!attribute [rw] space_id
    #   The ID of the space the alert belongs to.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The ID of the access profile associated with the alert.
    #   @return [String]
    #
    # @!attribute [rw] rule
    #   The rule that defines how the alert is evaluated.
    #   @return [Types::Rule]
    #
    # @!attribute [rw] notification_status
    #   Whether notifications are enabled.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Live evaluation state (read-only, system-managed). Populated by
    #   GetAlert. ListAlerts reports state on `AlertSummary` instead, where
    #   it stays required.
    #
    #   Absent on CreateAlert: a newly created alert has never been
    #   evaluated, so any state reported there would be a default rather
    #   than an observation. Call GetAlert for live state. Not @required for
    #   that reason — GetAlert always populates it.
    #
    #   `contributorSummary` is nested inside this member, so it too is
    #   absent on CreateAlert.
    #   @return [Types::AlertStateInfo]
    #
    # @!attribute [rw] notification_rules
    #   The notification rules for the alert.
    #   @return [Array<Types::NotificationRule>]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the alert was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the alert was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] alert_arn
    #   The Amazon Resource Name (ARN) of the alert.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/Alert AWS API Documentation
    #
    class Alert < Struct.new(
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
      :alert_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The condition that determines when the alert fires.
    #
    # On UpdateAlert a supplied condition is replaced whole, not merged: an
    # omitted \{@code warningThreshold} or \{@code criticalThreshold}
    # removes that tier, and an omitted \{@code thresholdField} clears it. A
    # condition must keep at least one tier. \{@code thresholdMode} and
    # \{@code comparator} are optional at the Smithy level (so a single-tier
    # condition is expressible) but are required whenever a threshold is
    # present; enforced by the service-side validator.
    #
    # @!attribute [rw] threshold_mode
    #   How the threshold is applied to query results.
    #   @return [String]
    #
    # @!attribute [rw] threshold_field
    #   The field the threshold is evaluated against.
    #   @return [String]
    #
    # @!attribute [rw] comparator
    #   The comparison operator applied to the threshold.
    #   @return [String]
    #
    # @!attribute [rw] warning_threshold
    #   The value at which the alert enters the WARNING state.
    #   @return [Float]
    #
    # @!attribute [rw] critical_threshold
    #   The value at which the alert enters the CRITICAL state.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/AlertCondition AWS API Documentation
    #
    class AlertCondition < Struct.new(
      :threshold_mode,
      :threshold_field,
      :comparator,
      :warning_threshold,
      :critical_threshold)
      SENSITIVE = []
      include Aws::Structure
    end

    # Evaluation cadence. \{@code intervalSeconds} must be one of \{30, 60,
    # 120, 300, 600, 900, 1800, 3600}; \{@code pendingDurationSeconds} and
    # \{@code recoveryDurationSeconds} must be multiples of \{@code
    # intervalSeconds}. A duration of 0 means fire/clear immediately with no
    # delay.
    #
    # On UpdateAlert a supplied evaluation block is replaced whole, not
    # merged: an omitted \{@code pendingDurationSeconds} or \{@code
    # recoveryDurationSeconds} is cleared to unset (no such duration), not
    # preserved and not defaulted to 0. \{@code intervalSeconds} is required
    # whenever the block is present. All enforced server-side / by the
    # front-door validator.
    #
    # @!attribute [rw] interval_seconds
    #   The interval between evaluations, in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] pending_duration_seconds
    #   The duration a breach must persist before the alert fires, in
    #   seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] recovery_duration_seconds
    #   The duration a recovery must persist before the alert clears, in
    #   seconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/AlertEvaluation AWS API Documentation
    #
    class AlertEvaluation < Struct.new(
      :interval_seconds,
      :pending_duration_seconds,
      :recovery_duration_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filter criteria for ListAlerts. All members are optional; each omitted
    # member is unconstrained. At most one of \{@code names}, \{@code
    # namePrefix}, \{@code ids} may be provided (mutually exclusive; the
    # service rejects more than one). The remaining members combine with
    # AND.
    #
    # @!attribute [rw] names
    #   Filter to alerts whose name exactly matches any entry (OR
    #   semantics). Mutually exclusive with \{@code namePrefix} and \{@code
    #   ids}.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name_prefix
    #   Filter to alerts whose name starts with this prefix. Mutually
    #   exclusive with \{@code names} and \{@code ids}.
    #   @return [String]
    #
    # @!attribute [rw] ids
    #   Filter to alerts whose \{@link AlertId} exactly matches any entry
    #   (OR semantics). Mutually exclusive with \{@code names} and \{@code
    #   namePrefix}.
    #   @return [Array<String>]
    #
    # @!attribute [rw] state_value
    #   Filter to alerts currently in any of these states (OR semantics).
    #   @return [Array<String>]
    #
    # @!attribute [rw] notifications_enabled
    #   Filter to alerts by whether notifications are enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/AlertFilterCriteria AWS API Documentation
    #
    class AlertFilterCriteria < Struct.new(
      :names,
      :name_prefix,
      :ids,
      :state_value,
      :notifications_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Query expression and the language it's written in.
    #
    # @!attribute [rw] language
    #   The query language of the expression.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   The query expression to evaluate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/AlertRuleQuery AWS API Documentation
    #
    class AlertRuleQuery < Struct.new(
      :language,
      :expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structured detail about the current evaluation.
    #
    # @!attribute [rw] threshold_breached
    #   For COUNT\_OF\_RESULTS alerts, the row count that breached; null for
    #   FIELD\_VALUE (multi-contributor) alerts.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/AlertStateData AWS API Documentation
    #
    class AlertStateData < Struct.new(
      :threshold_breached)
      SENSITIVE = []
      include Aws::Structure
    end

    # Live evaluation state for an alert. Read-only, system-managed.
    #
    # @!attribute [rw] value
    #   Current flat state.
    #   @return [String]
    #
    # @!attribute [rw] transitioned_at
    #   When the alert transitioned to its current state.
    #   @return [Time]
    #
    # @!attribute [rw] contributor_summary
    #   Counts of contributors currently breaching each severity threshold.
    #   Present only when contributor-level tracking is active; absent until
    #   the first contributor breaches a \{@code WARNING} or \{@code
    #   CRITICAL} threshold.
    #   @return [Types::ContributorSummary]
    #
    # @!attribute [rw] data
    #   Structured detail about why the alert is in its current state.
    #   @return [Types::AlertStateData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/AlertStateInfo AWS API Documentation
    #
    class AlertStateInfo < Struct.new(
      :value,
      :transitioned_at,
      :contributor_summary,
      :data)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary representation of an alert used in list responses.
    #
    # @!attribute [rw] name
    #   The name of the alert.
    #   @return [String]
    #
    # @!attribute [rw] alert_id
    #   The stable alert identifier (see \{@link Alert#alertId}). Use it to
    #   address the alert; it is also the ARN's resource id.
    #   @return [String]
    #
    # @!attribute [rw] space_id
    #   The ID of the space the alert belongs to.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The ID of the access profile associated with the alert.
    #   @return [String]
    #
    # @!attribute [rw] notification_status
    #   Whether notifications are enabled.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Live evaluation state (read-only, system-managed).
    #   @return [Types::AlertStateInfo]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the alert was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the alert was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] alert_arn
    #   The Amazon Resource Name (ARN) of the alert.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/AlertSummary AWS API Documentation
    #
    class AlertSummary < Struct.new(
      :name,
      :alert_id,
      :space_id,
      :profile_id,
      :notification_status,
      :state,
      :created_at,
      :updated_at,
      :alert_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An API key used to authenticate an integration with its external
    # system.
    #
    # @!attribute [rw] api_key_value
    #   The API key value used to authenticate with the external system.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ApiKeyCredential AWS API Documentation
    #
    class ApiKeyCredential < Struct.new(
      :api_key_value)
      SENSITIVE = [:api_key_value]
      include Aws::Structure
    end

    # A set of temporary AWS credentials.
    #
    # @!attribute [rw] access_key_id
    #   The AWS access key ID.
    #   @return [String]
    #
    # @!attribute [rw] secret_access_key
    #   The AWS secret access key.
    #   @return [String]
    #
    # @!attribute [rw] session_token
    #   The AWS session token.
    #   @return [String]
    #
    # @!attribute [rw] expiration
    #   The timestamp when the credentials expire.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/AwsCredentials AWS API Documentation
    #
    class AwsCredentials < Struct.new(
      :access_key_id,
      :secret_access_key,
      :session_token,
      :expiration)
      SENSITIVE = [:access_key_id, :secret_access_key, :session_token]
      include Aws::Structure
    end

    # The operation could not be completed because of a conflict with the
    # current state of the resource.
    #
    # @!attribute [rw] message
    #   A human-readable description of the conflict.
    #   @return [String]
    #
    # @!attribute [rw] conflict_type
    #   The type of conflict that caused the request to fail. Not always
    #   present.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that is in conflict. Not always
    #   present.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that is in conflict. Not always present.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code associated with the conflict. Not always present.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :conflict_type,
      :resource_id,
      :resource_type,
      :error_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Counts of contributors currently breaching each severity threshold.
    #
    # @!attribute [rw] warning_count
    #   Number of contributors currently breaching the warning threshold.
    #   @return [Integer]
    #
    # @!attribute [rw] critical_count
    #   Number of contributors currently breaching the critical threshold.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ContributorSummary AWS API Documentation
    #
    class ContributorSummary < Struct.new(
      :warning_count,
      :critical_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The ID of the domain that contains the space.
    #   @return [String]
    #
    # @!attribute [rw] space_id
    #   The ID of the space to scope the grant to.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name that identifies the access grant.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The principal receiving the grant.
    #   @return [Types::AccessGrantPrincipal]
    #
    # @!attribute [rw] permission
    #   The permission to grant. Exactly one permission is granted per
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] scoped_actions
    #   Groups of actions to allow, each with the resource scopes and
    #   conditions that limit those actions.
    #   @return [Array<Types::ScopedActions>]
    #
    # @!attribute [rw] tags
    #   The tags to associate with the access grant.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   Idempotency token for safe retries. Repeated requests with the same
    #   token return the original result instead of creating a duplicate.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/CreateAccessGrantInput AWS API Documentation
    #
    class CreateAccessGrantInput < Struct.new(
      :domain_id,
      :space_id,
      :name,
      :principal,
      :permission,
      :scoped_actions,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_grant
    #   The details of the created access grant.
    #   @return [Types::AccessGrant]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/CreateAccessGrantOutput AWS API Documentation
    #
    class CreateAccessGrantOutput < Struct.new(
      :access_grant)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The unique ID of the space to create the profile in.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name that identifies the access profile.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description of the access profile.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to associate with the access profile.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   Idempotency token for safe retries. Repeated requests with the same
    #   token return the original result instead of creating a duplicate.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/CreateAccessProfileInput AWS API Documentation
    #
    class CreateAccessProfileInput < Struct.new(
      :space_id,
      :name,
      :description,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_profile
    #   The access profile.
    #   @return [Types::AccessProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/CreateAccessProfileOutput AWS API Documentation
    #
    class CreateAccessProfileOutput < Struct.new(
      :access_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The unique ID of the space to create the alert in.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The ID of the access profile the alert uses to evaluate its query
    #   and execute notifications. The caller supplies it: there is no
    #   managed alert profile, and the service does not pick one on the
    #   caller's behalf.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Alert name, for display. Max 256 (the AlarmName budget). Not the
    #   alert's identity: the backend mints a separate uuid as the \{@link
    #   AlertId}, so the name need not be unique within a space and
    #   addressing an alert never depends on it. UpdateAlert accepts a new
    #   name to rename the alert.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description of the alert.
    #   @return [String]
    #
    # @!attribute [rw] rule
    #   The rule that defines how the alert is evaluated.
    #   @return [Types::Rule]
    #
    # @!attribute [rw] notifications_enabled
    #   Whether actions (notifications) are enabled for this alert. Defaults
    #   to true when omitted.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   The tags to associate with the alert.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] notification_rules
    #   The notification rules that determine when and where notifications
    #   are sent.
    #   @return [Array<Types::NotificationRule>]
    #
    # @!attribute [rw] client_token
    #   Idempotency token for safe retries. Retrying with the same token
    #   within the idempotency window returns the original alert instead of
    #   creating a duplicate.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/CreateAlertInput AWS API Documentation
    #
    class CreateAlertInput < Struct.new(
      :space_id,
      :profile_id,
      :name,
      :description,
      :rule,
      :notifications_enabled,
      :tags,
      :notification_rules,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alert_arn
    #   Deprecated. Use `alert.alertArn`, which carries the same value. Kept
    #   so an existing caller keeps working while it moves to `alert`.
    #   @return [String]
    #
    # @!attribute [rw] alert
    #   The alert that was created. The same `Alert` shape GetAlert returns,
    #   so a caller need not read the alert back to learn its timestamps or
    #   its minted alert id.
    #
    #   \{@code alert.state} is absent here — see the `state` member of
    #   `Alert`. Every other member is populated exactly as GetAlert
    #   populates it.
    #   @return [Types::Alert]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/CreateAlertOutput AWS API Documentation
    #
    class CreateAlertOutput < Struct.new(
      :alert_arn,
      :alert)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The ID of the organization domain to create the grant on.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name that identifies the access grant.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The principal receiving the grant.
    #   @return [Types::OrganizationAccessGrantPrincipal]
    #
    # @!attribute [rw] permission
    #   The permission to grant.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to associate with the access grant.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   Idempotency token for safe retries. Repeated requests with the same
    #   token return the original result instead of creating a duplicate.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/CreateDomainAccessGrantForOrganizationInput AWS API Documentation
    #
    class CreateDomainAccessGrantForOrganizationInput < Struct.new(
      :domain_id,
      :name,
      :principal,
      :permission,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_grant
    #   The details of the created organization access grant.
    #   @return [Types::OrganizationAccessGrant]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/CreateDomainAccessGrantForOrganizationOutput AWS API Documentation
    #
    class CreateDomainAccessGrantForOrganizationOutput < Struct.new(
      :access_grant)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A name that identifies the organization domain. Must be 3-63
    #   characters: lowercase letters, numbers, and hyphens. It must begin
    #   and end with a letter or number and cannot contain consecutive
    #   hyphens.
    #   @return [String]
    #
    # @!attribute [rw] identity_providers
    #   The identity providers to configure for the domain.
    #   @return [Array<String>]
    #
    # @!attribute [rw] identity_provider_configuration
    #   Identity provider configuration for the domain.
    #   @return [Types::IdentityProviderConfiguration]
    #
    # @!attribute [rw] domain_access_role_arn
    #   The ARN of an IAM role in the management account used for domain
    #   access. You must create this role, and its trust policy must allow
    #   the service principal to assume it.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to associate with the domain.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   Idempotency token for safe retries. Repeated requests with the same
    #   token return the original result instead of creating a duplicate.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/CreateDomainForOrganizationInput AWS API Documentation
    #
    class CreateDomainForOrganizationInput < Struct.new(
      :name,
      :identity_providers,
      :identity_provider_configuration,
      :domain_access_role_arn,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_domain
    #   The details of the created organization domain.
    #   @return [Types::OrganizationDomain]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/CreateDomainForOrganizationOutput AWS API Documentation
    #
    class CreateDomainForOrganizationOutput < Struct.new(
      :organization_domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A name that identifies the domain. Must be 3-63 characters:
    #   lowercase letters, numbers, and hyphens. It must begin and end with
    #   a letter or number and cannot contain consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] identity_providers
    #   The identity providers to configure for the domain.
    #   @return [Array<String>]
    #
    # @!attribute [rw] identity_provider_configuration
    #   Identity provider configuration for the domain.
    #   @return [Types::IdentityProviderConfiguration]
    #
    # @!attribute [rw] tags
    #   The tags to associate with the domain.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   Idempotency token for safe retries. Repeated requests with the same
    #   token return the original result instead of creating a duplicate.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/CreateDomainInput AWS API Documentation
    #
    class CreateDomainInput < Struct.new(
      :name,
      :identity_providers,
      :identity_provider_configuration,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The details of the created domain.
    #   @return [Types::Domain]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/CreateDomainOutput AWS API Documentation
    #
    class CreateDomainOutput < Struct.new(
      :domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for creating an integration with a third-party provider.
    #
    # @!attribute [rw] integration_type
    #   The type of third-party provider to integrate with.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the new integration; unique within the account.
    #   @return [String]
    #
    # @!attribute [rw] credential
    #   The credential used to authenticate with the third-party provider.
    #   @return [Types::IntegrationCredential]
    #
    # @!attribute [rw] integration_attributes
    #   Provider-specific attributes to associate with the integration.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name of the IAM role assumed to access the
    #   integration.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to apply to the integration at creation time (Tagris
    #   tag-on-create).
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   Idempotency token for safe retries. Retrying with the same token
    #   returns the original integration instead of creating a duplicate.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/CreateIntegrationInput AWS API Documentation
    #
    class CreateIntegrationInput < Struct.new(
      :integration_type,
      :name,
      :credential,
      :integration_attributes,
      :role_arn,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response from creating an integration.
    #
    # @!attribute [rw] integration
    #   The details of the created integration. This is the same object
    #   returned by GetIntegration and UpdateIntegration.
    #   @return [Types::Integration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/CreateIntegrationOutput AWS API Documentation
    #
    class CreateIntegrationOutput < Struct.new(
      :integration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The unique ID of the space to create the dashboard in.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name that identifies the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The dashboard definition, as a JSON document. Maximum 1 MiB.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description of the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to associate with the dashboard.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   Idempotency token for safe retries. Repeated requests with the same
    #   token return the original result instead of creating a duplicate.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/CreateOmniDashboardInput AWS API Documentation
    #
    class CreateOmniDashboardInput < Struct.new(
      :space_id,
      :name,
      :body,
      :description,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] omni_dashboard
    #   The dashboard.
    #   @return [Types::OmniDashboard]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/CreateOmniDashboardOutput AWS API Documentation
    #
    class CreateOmniDashboardOutput < Struct.new(
      :omni_dashboard)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The ID of the domain to generate the code for.
    #   @return [String]
    #
    # @!attribute [rw] ttl_seconds
    #   How long the code remains valid, in seconds. Defaults to 300.
    #   @return [Integer]
    #
    # @!attribute [rw] redirect_url
    #   The URL to redirect to after the deep-link code is used. Must be an
    #   HTTPS URL in the domain with a path of /auth/callback, and cannot
    #   include a query string or fragment. If omitted, no redirect is
    #   applied.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/CreateOneTimeDeepLinkCodeInput AWS API Documentation
    #
    class CreateOneTimeDeepLinkCodeInput < Struct.new(
      :domain_id,
      :ttl_seconds,
      :redirect_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code
    #   The one-time deep-link code.
    #   @return [String]
    #
    # @!attribute [rw] deep_link_url
    #   The deep-link URL containing the one-time code.
    #   @return [String]
    #
    # @!attribute [rw] expires_at
    #   The timestamp when the code expires.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/CreateOneTimeDeepLinkCodeOutput AWS API Documentation
    #
    class CreateOneTimeDeepLinkCodeOutput < Struct.new(
      :code,
      :deep_link_url,
      :expires_at)
      SENSITIVE = [:code, :deep_link_url]
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A name that identifies the space. Must be 3-64 characters: lowercase
    #   letters, numbers, and hyphens. It must begin and end with a letter
    #   or number and cannot contain consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the domain to create the space in.
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The ARN of the IAM role used for data access. The role must be in
    #   the caller's account.
    #   @return [String]
    #
    # @!attribute [rw] agent_core_evaluation_role_arn
    #   The ARN of the IAM role used by AgentCore online evaluation. Must be
    #   in the caller's account. Omit if the space does not use AgentCore
    #   online evaluation.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   How to encrypt the space's data at rest. Omit for service owned
    #   encryption, which is equivalent to passing `encryptionStrategy`
    #   AWS\_OWNED.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] tags
    #   The tags to associate with the space.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   Idempotency token for safe retries. Repeated requests with the same
    #   token return the original result instead of creating a duplicate.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/CreateSpaceInput AWS API Documentation
    #
    class CreateSpaceInput < Struct.new(
      :name,
      :domain_id,
      :data_access_role_arn,
      :agent_core_evaluation_role_arn,
      :encryption_configuration,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space
    #   The details of the created space.
    #   @return [Types::Space]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/CreateSpaceOutput AWS API Documentation
    #
    class CreateSpaceOutput < Struct.new(
      :space)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the view. Must begin with the "view." prefix. View names
    #   must be unique within the account and region.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The SQL query that defines the view.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the view.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Resource tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   Idempotency token for safe retries. Retrying with the same token
    #   returns the original view instead of creating a duplicate.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/CreateViewRequest AWS API Documentation
    #
    class CreateViewRequest < Struct.new(
      :name,
      :definition,
      :description,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the view.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The ownership category of the view.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the view.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The SQL query that defines the view.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the view was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the view was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] arn
    #   The ARN of the view.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/CreateViewResponse AWS API Documentation
    #
    class CreateViewResponse < Struct.new(
      :name,
      :type,
      :description,
      :definition,
      :created_at,
      :updated_at,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] grant_id
    #   The ID of the access grant to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/DeleteAccessGrantInput AWS API Documentation
    #
    class DeleteAccessGrantInput < Struct.new(
      :grant_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/DeleteAccessGrantOutput AWS API Documentation
    #
    class DeleteAccessGrantOutput < Aws::EmptyStructure; end

    # @!attribute [rw] space_id
    #   The unique ID of the space.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The unique ID of the access profile to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/DeleteAccessProfileInput AWS API Documentation
    #
    class DeleteAccessProfileInput < Struct.new(
      :space_id,
      :profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/DeleteAccessProfileOutput AWS API Documentation
    #
    class DeleteAccessProfileOutput < Aws::EmptyStructure; end

    # @!attribute [rw] space_id
    #   The unique ID of the space.
    #   @return [String]
    #
    # @!attribute [rw] alert_id
    #   The alert to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/DeleteAlertInput AWS API Documentation
    #
    class DeleteAlertInput < Struct.new(
      :space_id,
      :alert_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/DeleteAlertOutput AWS API Documentation
    #
    class DeleteAlertOutput < Aws::EmptyStructure; end

    # @!attribute [rw] grant_id
    #   The ID of the access grant to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/DeleteDomainAccessGrantForOrganizationInput AWS API Documentation
    #
    class DeleteDomainAccessGrantForOrganizationInput < Struct.new(
      :grant_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/DeleteDomainAccessGrantForOrganizationOutput AWS API Documentation
    #
    class DeleteDomainAccessGrantForOrganizationOutput < Aws::EmptyStructure; end

    # @!attribute [rw] domain_id
    #   The ID of the organization domain to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/DeleteDomainForOrganizationInput AWS API Documentation
    #
    class DeleteDomainForOrganizationInput < Struct.new(
      :domain_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/DeleteDomainForOrganizationOutput AWS API Documentation
    #
    class DeleteDomainForOrganizationOutput < Aws::EmptyStructure; end

    # @!attribute [rw] domain_id
    #   The unique ID of the domain to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/DeleteDomainInput AWS API Documentation
    #
    class DeleteDomainInput < Struct.new(
      :domain_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/DeleteDomainOutput AWS API Documentation
    #
    class DeleteDomainOutput < Aws::EmptyStructure; end

    # The request for deleting an integration.
    #
    # @!attribute [rw] identifier
    #   Identifies the integration to delete — exactly one of integrationId,
    #   integrationArn, or integrationName.
    #   @return [Types::IntegrationIdentifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/DeleteIntegrationInput AWS API Documentation
    #
    class DeleteIntegrationInput < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response from deleting an integration. Empty by contract — a
    # successful call indicates the deletion was accepted (DeleteIntegration
    # is idempotent).
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/DeleteIntegrationOutput AWS API Documentation
    #
    class DeleteIntegrationOutput < Aws::EmptyStructure; end

    # @!attribute [rw] space_id
    #   The unique ID of the space.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_id
    #   The unique ID of the dashboard.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/DeleteOmniDashboardInput AWS API Documentation
    #
    class DeleteOmniDashboardInput < Struct.new(
      :space_id,
      :dashboard_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/DeleteOmniDashboardOutput AWS API Documentation
    #
    class DeleteOmniDashboardOutput < Aws::EmptyStructure; end

    # @!attribute [rw] space_id
    #   The unique ID of the space to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/DeleteSpaceInput AWS API Documentation
    #
    class DeleteSpaceInput < Struct.new(
      :space_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/DeleteSpaceOutput AWS API Documentation
    #
    class DeleteSpaceOutput < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the view to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/DeleteViewRequest AWS API Documentation
    #
    class DeleteViewRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/DeleteViewResponse AWS API Documentation
    #
    class DeleteViewResponse < Aws::EmptyStructure; end

    # Detailed information about a domain.
    #
    # @!attribute [rw] domain_id
    #   The unique ID of the domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_arn
    #   The Amazon Resource Name (ARN) of the domain.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name that identifies the domain.
    #   @return [String]
    #
    # @!attribute [rw] identity_providers
    #   The identity providers configured for the domain.
    #   @return [Array<String>]
    #
    # @!attribute [rw] identity_provider_configuration
    #   Identity provider configuration for the domain.
    #   @return [Types::IdentityProviderConfiguration]
    #
    # @!attribute [rw] domain_endpoint_url
    #   The HTTPS endpoint URL for accessing the domain.
    #   @return [String]
    #
    # @!attribute [rw] custom_endpoint_urls
    #   Additional endpoint URLs derived from the domain name.
    #   @return [Array<String>]
    #
    # @!attribute [rw] identity_center_application_arn
    #   The ARN of the Identity Center application. Absent for IAM-only
    #   domains.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Region where this domain was created.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the domain was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the domain was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   Current status of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/Domain AWS API Documentation
    #
    class Domain < Struct.new(
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
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of a domain. Call GetDomain for the full domain.
    #
    # @!attribute [rw] domain_id
    #   The unique ID of the domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_arn
    #   The Amazon Resource Name (ARN) of the domain.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name that identifies the domain.
    #   @return [String]
    #
    # @!attribute [rw] identity_center_instance_arn
    #   Identity Center instance ARN configured for the domain. Absent for
    #   IAM-only domains.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Region where this domain was created.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the domain was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the domain was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   Current status of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/DomainSummary AWS API Documentation
    #
    class DomainSummary < Struct.new(
      :domain_id,
      :domain_arn,
      :name,
      :identity_center_instance_arn,
      :region,
      :created_at,
      :updated_at,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A directed edge in the context graph connecting two nodes.
    #
    # @!attribute [rw] edge_id
    #   The unique identifier of the edge within the context graph.
    #   @return [String]
    #
    # @!attribute [rw] from
    #   The node identifier the edge originates from.
    #   @return [String]
    #
    # @!attribute [rw] to
    #   The node identifier the edge points to.
    #   @return [String]
    #
    # @!attribute [rw] edge_type
    #   The kind of relationship the edge represents.
    #   @return [String]
    #
    # @!attribute [rw] operations
    #   The operations observed on this edge.
    #   @return [Array<String>]
    #
    # @!attribute [rw] edge_properties
    #   Attributes promoted out of the flat attribute map onto typed
    #   members. Which members are present depends on what produced the
    #   edge.
    #   @return [Types::EdgeProperties]
    #
    # @!attribute [rw] telemetry_attributes
    #   The edge's OpenTelemetry (OTel) attributes, as emitted by
    #   telemetry. A key promoted onto an `edgeProperties` member is removed
    #   here, so no value appears twice.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] signal_types
    #   The kinds of telemetry signal observed on this edge.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sources
    #   The discovery sources that contributed this edge.
    #   @return [Array<String>]
    #
    # @!attribute [rw] metadata
    #   Descriptive metadata about the edge. Present only when the request
    #   sets includeMetadata.
    #   @return [Types::Metadata]
    #
    # @!attribute [rw] first_observed_at
    #   When this edge was first observed (UTC), at minute granularity. For
    #   an edge that merged across sources, this is the earliest value any
    #   source reported.
    #   @return [Time]
    #
    # @!attribute [rw] last_observed_at
    #   When this edge was most recently observed (UTC), at minute
    #   granularity. For an edge that merged across sources, this is the
    #   latest value any source reported.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/Edge AWS API Documentation
    #
    class Edge < Struct.new(
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
      :last_observed_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Criteria for filtering edges in a context graph query.
    #
    # @!attribute [rw] edge_id
    #   Match only the edge with this identifier.
    #   @return [String]
    #
    # @!attribute [rw] from
    #   Match only edges originating from this node identifier.
    #   @return [String]
    #
    # @!attribute [rw] to
    #   Match only edges pointing to this node identifier.
    #   @return [String]
    #
    # @!attribute [rw] edge_type
    #   Match only edges of this relationship kind.
    #   @return [String]
    #
    # @!attribute [rw] operations
    #   Match edges carrying any of these operations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] telemetry_attributes
    #   Match edges by their OpenTelemetry (OTel) telemetry attributes. Not
    #   yet enforced: currently accepted but ignored (does not filter),
    #   matching nodeFilters.telemetryAttributes.
    #   @return [Array<Types::KeyFilter>]
    #
    # @!attribute [rw] sources
    #   Match edges contributed by any of these discovery sources.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/EdgeFilters AWS API Documentation
    #
    class EdgeFilters < Struct.new(
      :edge_id,
      :from,
      :to,
      :edge_type,
      :operations,
      :telemetry_attributes,
      :sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # Edge attributes promoted out of the flat attribute map onto typed
    # members. Which members are present depends entirely on what produced
    # the edge, so most edges carry only a few of them.
    #
    # @!attribute [rw] protocol
    #   The IANA protocol name for the observed network traffic, such as
    #   "tcp".
    #   @return [String]
    #
    # @!attribute [rw] source_port
    #   The source port of the observed traffic. May be a placeholder when
    #   the port is unknown.
    #   @return [String]
    #
    # @!attribute [rw] destination_port
    #   The destination port of the observed traffic. May be a placeholder
    #   when the port is unknown.
    #   @return [String]
    #
    # @!attribute [rw] blocked
    #   Whether the observed network flow was denied. Absent means the edge
    #   was not derived from network flow data, which is not the same as
    #   allowed.
    #   @return [Boolean]
    #
    # @!attribute [rw] error_code
    #   The error code returned when the call was attempted and refused. Its
    #   presence means the edge exists but the dependency is failing.
    #   @return [String]
    #
    # @!attribute [rw] http_status_code
    #   The HTTP status code observed on the request. Distinct from
    #   errorCode.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   The HTTP method observed on the request.
    #   @return [String]
    #
    # @!attribute [rw] service_initiated
    #   Whether the caller was an AWS service principal rather than a user
    #   or role. Absent means the edge was not derived from a source that
    #   reports it.
    #   @return [Boolean]
    #
    # @!attribute [rw] traffic_stats
    #   Traffic counters accumulated over the edge's observation window.
    #   @return [Types::EdgeTrafficStats]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/EdgeProperties AWS API Documentation
    #
    class EdgeProperties < Struct.new(
      :protocol,
      :source_port,
      :destination_port,
      :blocked,
      :error_code,
      :http_status_code,
      :http_method,
      :service_initiated,
      :traffic_stats)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additive traffic counters accumulated over an edge's observation
    # window. Which counters are populated depends on what produced the
    # edge.
    #
    # @!attribute [rw] bytes
    #   Total bytes observed across the edge.
    #   @return [Integer]
    #
    # @!attribute [rw] packets
    #   Total packets observed across the edge.
    #   @return [Integer]
    #
    # @!attribute [rw] flows
    #   Total network flows observed across the edge.
    #   @return [Integer]
    #
    # @!attribute [rw] sent_bytes
    #   Total bytes sent to the destination.
    #   @return [Integer]
    #
    # @!attribute [rw] received_bytes
    #   Total bytes received from the destination.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/EdgeTrafficStats AWS API Documentation
    #
    class EdgeTrafficStats < Struct.new(
      :bytes,
      :packets,
      :flows,
      :sent_bytes,
      :received_bytes)
      SENSITIVE = []
      include Aws::Structure
    end

    # How a resource's data at rest is encrypted.
    #
    # `kmsKeyArn` is required when `encryptionStrategy` is CUSTOMER\_MANAGED
    # and must be absent when it is AWS\_OWNED; a mismatch is a
    # ValidationException rather than a silently ignored field, so a caller
    # that selects AWS\_OWNED while still passing a key learns that the key
    # was not applied.
    #
    # @!attribute [rw] encryption_strategy
    #   Which kind of key to use. Required.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   Customer managed KMS key ARN. Required when `encryptionStrategy` is
    #   CUSTOMER\_MANAGED, and must be omitted when it is AWS\_OWNED. Must
    #   be a symmetric ENCRYPT\_DECRYPT key in the caller's account and
    #   region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/EncryptionConfiguration AWS API Documentation
    #
    class EncryptionConfiguration < Struct.new(
      :encryption_strategy,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A telemetry field available for use in query expressions.
    #
    # @!attribute [rw] name
    #   The name of the field. Field names are case-sensitive and must be
    #   used exactly as returned when referencing them in query expressions.
    #   @return [String]
    #
    # @!attribute [rw] children
    #   Child fields nested under this field.
    #   @return [Array<Types::Field>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/Field AWS API Documentation
    #
    class Field < Struct.new(
      :name,
      :children)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] grant_id
    #   The ID of the access grant to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetAccessGrantInput AWS API Documentation
    #
    class GetAccessGrantInput < Struct.new(
      :grant_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_grant
    #   The full details of the access grant.
    #   @return [Types::AccessGrant]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetAccessGrantOutput AWS API Documentation
    #
    class GetAccessGrantOutput < Struct.new(
      :access_grant)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The unique ID of the space.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The unique ID of the access profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetAccessProfileInput AWS API Documentation
    #
    class GetAccessProfileInput < Struct.new(
      :space_id,
      :profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_profile
    #   The access profile.
    #   @return [Types::AccessProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetAccessProfileOutput AWS API Documentation
    #
    class GetAccessProfileOutput < Struct.new(
      :access_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The unique ID of the space.
    #   @return [String]
    #
    # @!attribute [rw] alert_id
    #   The alert to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetAlertInput AWS API Documentation
    #
    class GetAlertInput < Struct.new(
      :space_id,
      :alert_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alert
    #   The full alert entity.
    #   @return [Types::Alert]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetAlertOutput AWS API Documentation
    #
    class GetAlertOutput < Struct.new(
      :alert)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for retrieving a slice of the context graph.
    #
    # @!attribute [rw] node_filters
    #   Criteria restricting which nodes are returned.
    #   @return [Types::NodeFilters]
    #
    # @!attribute [rw] edge_filters
    #   Criteria restricting which edges are returned.
    #   @return [Types::EdgeFilters]
    #
    # @!attribute [rw] start_time
    #   Start of the time range (UTC), inclusive.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   End of the time range (UTC), inclusive.
    #   @return [Time]
    #
    # @!attribute [rw] depth
    #   How many hops to traverse out from the nodes matched by nodeFilters.
    #   0 returns only the matched nodes themselves.
    #   @return [Integer]
    #
    # @!attribute [rw] max_results
    #   The maximum number of nodes to return in a single page.
    #   @return [Integer]
    #
    # @!attribute [rw] max_edges_per_node
    #   The maximum number of edges to return per node, bounding the fan-out
    #   of a densely connected node.
    #   @return [Integer]
    #
    # @!attribute [rw] include_metadata
    #   Whether to return the metadata block, semantics included, on each
    #   node and edge. Off by default because it costs an extra lookup per
    #   returned node.
    #   @return [Boolean]
    #
    # @!attribute [rw] next_token
    #   Pagination token from a previous response, to retrieve the next
    #   page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetContextGraphInput AWS API Documentation
    #
    class GetContextGraphInput < Struct.new(
      :node_filters,
      :edge_filters,
      :start_time,
      :end_time,
      :depth,
      :max_results,
      :max_edges_per_node,
      :include_metadata,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response containing the requested slice of the context graph.
    #
    # @!attribute [rw] nodes
    #   The page of nodes matching the request. This is the paginated
    #   collection.
    #   @return [Array<Types::Node>]
    #
    # @!attribute [rw] next_token
    #   Pagination token for the next page; absent when there are no more
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetContextGraphOutput AWS API Documentation
    #
    class GetContextGraphOutput < Struct.new(
      :nodes,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] grant_id
    #   The ID of the access grant to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetDomainAccessGrantForOrganizationInput AWS API Documentation
    #
    class GetDomainAccessGrantForOrganizationInput < Struct.new(
      :grant_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_grant
    #   The retrieved organization access grant.
    #   @return [Types::OrganizationAccessGrant]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetDomainAccessGrantForOrganizationOutput AWS API Documentation
    #
    class GetDomainAccessGrantForOrganizationOutput < Struct.new(
      :access_grant)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The ID of the organization domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetDomainForOrganizationInput AWS API Documentation
    #
    class GetDomainForOrganizationInput < Struct.new(
      :domain_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_domain
    #   The details of the organization domain.
    #   @return [Types::OrganizationDomain]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetDomainForOrganizationOutput AWS API Documentation
    #
    class GetDomainForOrganizationOutput < Struct.new(
      :organization_domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The unique ID of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetDomainInput AWS API Documentation
    #
    class GetDomainInput < Struct.new(
      :domain_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The details of the domain.
    #   @return [Types::Domain]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetDomainOutput AWS API Documentation
    #
    class GetDomainOutput < Struct.new(
      :domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for retrieving a single integration.
    #
    # @!attribute [rw] identifier
    #   Identifies the integration to return — exactly one of integrationId,
    #   integrationArn, or integrationName.
    #   @return [Types::IntegrationIdentifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetIntegrationInput AWS API Documentation
    #
    class GetIntegrationInput < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response containing the requested integration.
    #
    # @!attribute [rw] integration
    #   The details of the requested integration.
    #   @return [Types::Integration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetIntegrationOutput AWS API Documentation
    #
    class GetIntegrationOutput < Struct.new(
      :integration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for retrieving the intelligence configuration of the
    # calling account.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetIntelligenceConfigurationInput AWS API Documentation
    #
    class GetIntelligenceConfigurationInput < Aws::EmptyStructure; end

    # The intelligence configuration for the calling account.
    #
    # @!attribute [rw] account_id
    #   The AWS account ID this configuration applies to.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The currently active KMS key ARN for customer-managed encryption, if
    #   configured.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   ISO-8601 timestamp of the last update.
    #   @return [Time]
    #
    # @!attribute [rw] created_at
    #   ISO-8601 timestamp of initial creation.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetIntelligenceConfigurationOutput AWS API Documentation
    #
    class GetIntelligenceConfigurationOutput < Struct.new(
      :account_id,
      :kms_key_arn,
      :updated_at,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The unique ID of the space.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_id
    #   The unique ID of the dashboard.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetOmniDashboardInput AWS API Documentation
    #
    class GetOmniDashboardInput < Struct.new(
      :space_id,
      :dashboard_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] omni_dashboard
    #   The dashboard.
    #   @return [Types::OmniDashboard]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetOmniDashboardOutput AWS API Documentation
    #
    class GetOmniDashboardOutput < Struct.new(
      :omni_dashboard)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] context
    #   Context for credential resolution.
    #   @return [Types::SpaceCredentialRequestContext]
    #
    # @!attribute [rw] credential_type
    #   Selects which member-account credential to return. Set this to
    #   SPACE\_OPERATION.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetSpaceCredentialsForOrganizationInput AWS API Documentation
    #
    class GetSpaceCredentialsForOrganizationInput < Struct.new(
      :context,
      :credential_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] credentials
    #   The temporary AWS credentials for the space.
    #   @return [Types::AwsCredentials]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetSpaceCredentialsForOrganizationOutput AWS API Documentation
    #
    class GetSpaceCredentialsForOrganizationOutput < Struct.new(
      :credentials)
      SENSITIVE = [:credentials]
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The unique ID of the space.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetSpaceInput AWS API Documentation
    #
    class GetSpaceInput < Struct.new(
      :space_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space
    #   The details of the space.
    #   @return [Types::Space]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetSpaceOutput AWS API Documentation
    #
    class GetSpaceOutput < Struct.new(
      :space)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_id
    #   The unique ID of the query.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of result rows to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetTelemetryQueryResultsRequest AWS API Documentation
    #
    class GetTelemetryQueryResultsRequest < Struct.new(
      :query_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The current execution status of the query.
    #   @return [String]
    #
    # @!attribute [rw] rows
    #   The result rows returned by the query.
    #   @return [Array<Hash<String,String>>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results, or null if there are
    #   no more results.
    #   @return [String]
    #
    # @!attribute [rw] statistics
    #   Statistics about the query execution.
    #   @return [Types::QueryStatistics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetTelemetryQueryResultsResponse AWS API Documentation
    #
    class GetTelemetryQueryResultsResponse < Struct.new(
      :status,
      :rows,
      :next_token,
      :statistics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the view.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetViewRequest AWS API Documentation
    #
    class GetViewRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the view.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The ownership category of the view.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the view.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The SQL query that defines the view.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the view was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the view was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] arn
    #   The ARN of the view.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetViewResponse AWS API Documentation
    #
    class GetViewResponse < Struct.new(
      :name,
      :type,
      :description,
      :definition,
      :created_at,
      :updated_at,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identity Center specific configuration.
    #
    # @!attribute [rw] identity_center_instance_arn
    #   Identity Center instance ARN
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/IdentityCenterConfiguration AWS API Documentation
    #
    class IdentityCenterConfiguration < Struct.new(
      :identity_center_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identity provider configuration for domain authentication. Contains
    # provider-specific configuration blocks.
    #
    # @!attribute [rw] identity_center_configuration
    #   Identity Center configuration. Required when identityProviders
    #   includes IDC.
    #   @return [Types::IdentityCenterConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/IdentityProviderConfiguration AWS API Documentation
    #
    class IdentityProviderConfiguration < Struct.new(
      :identity_center_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A connection between CloudWatch and an external system — such as a
    # source of telemetry or configuration data, a messaging destination, or
    # a model provider.
    #
    # @!attribute [rw] integration_id
    #   The unique identifier of the integration.
    #   @return [String]
    #
    # @!attribute [rw] integration_arn
    #   The Amazon Resource Name (ARN) of the integration.
    #   @return [String]
    #
    # @!attribute [rw] integration_type
    #   The type of external system that an integration connects to, such as
    #   a source of configuration data, a messaging destination, or a model
    #   provider.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The customer-provided name of the integration.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current lifecycle state of an integration.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The authentication method that an integration uses to connect to its
    #   external system.
    #   @return [String]
    #
    # @!attribute [rw] credential_arn
    #   The Amazon Resource Name (ARN) of the secret that stores the
    #   integration's credentials.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that CloudWatch
    #   assumes to access the external system.
    #   @return [String]
    #
    # @!attribute [rw] integration_attributes
    #   Provider-specific key/value attributes that configure the
    #   integration.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] authorization_url
    #   The URL the customer visits to authorize the integration. Present
    #   while an OAuth authorization is pending.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A human-readable description of why the integration is in an ERROR
    #   or FAILED state. Present only when the integration has failed.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the integration was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time at which the integration was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] scope
    #   Whether this integration is account-scoped (ACCOUNT,
    #   customer-created) or organization-scoped (ORGANIZATION, created by
    #   an org-enablement rule). Absent on legacy records is treated as
    #   ACCOUNT.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/Integration AWS API Documentation
    #
    class Integration < Struct.new(
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
      :scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # The credential that an integration uses to authenticate with its
    # external system. Exactly one member is set, matching the
    # integration's authentication type.
    #
    # @note IntegrationCredential is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] oauth_code_credential
    #   Credentials for an OAuth 2.0 authorization-code grant.
    #   @return [Types::OAuthCodeCredential]
    #
    # @!attribute [rw] oauth_client_credential
    #   Credentials for an OAuth 2.0 client-credentials grant.
    #   @return [Types::OAuthClientCredential]
    #
    # @!attribute [rw] api_key_credential
    #   An API key credential.
    #   @return [Types::ApiKeyCredential]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/IntegrationCredential AWS API Documentation
    #
    class IntegrationCredential < Struct.new(
      :oauth_code_credential,
      :oauth_client_credential,
      :api_key_credential,
      :unknown)
      SENSITIVE = [:oauth_code_credential, :oauth_client_credential, :api_key_credential]
      include Aws::Structure
      include Aws::Structure::Union

      class OauthCodeCredential < IntegrationCredential; end
      class OauthClientCredential < IntegrationCredential; end
      class ApiKeyCredential < IntegrationCredential; end
      class Unknown < IntegrationCredential; end
    end

    # Identifies a single integration by exactly one of its unique keys: the
    # integration id, the integration ARN, or the integration name.
    #
    # @note IntegrationIdentifier is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] integration_id
    #   The unique identifier of the integration.
    #   @return [String]
    #
    # @!attribute [rw] integration_arn
    #   The Amazon Resource Name of the integration.
    #   @return [String]
    #
    # @!attribute [rw] integration_name
    #   The name of the integration; unique within the account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/IntegrationIdentifier AWS API Documentation
    #
    class IntegrationIdentifier < Struct.new(
      :integration_id,
      :integration_arn,
      :integration_name,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class IntegrationId < IntegrationIdentifier; end
      class IntegrationArn < IntegrationIdentifier; end
      class IntegrationName < IntegrationIdentifier; end
      class Unknown < IntegrationIdentifier; end
    end

    # An unexpected error occurred while processing the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code associated with the internal error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :error_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Key-value filter used for tags and attributes filtering. Multiple
    # KeyFilters are AND'ed. Multiple values within a single KeyFilter are
    # OR'ed. Values support pattern syntax: exact, negation (!value),
    # wildcard (*value*, value*, *value).
    #
    # @!attribute [rw] key
    #   The tag or attribute key to filter on.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values to match for this key, OR'ed together. Each supports
    #   exact, negation (!value), and wildcard (*value*, value*, *value)
    #   syntax.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/KeyFilter AWS API Documentation
    #
    class KeyFilter < Struct.new(
      :key,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   Filter by domain ID.
    #   @return [String]
    #
    # @!attribute [rw] space_id
    #   Filter by space ID.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   Filter by principal ID.
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   Filter by principal type.
    #   @return [String]
    #
    # @!attribute [rw] permission
    #   Filter by permission level.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results. Supply the same
    #   filters used on the request that returned it. Tokens expire after 24
    #   hours.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of access grants to return per page. Defaults to
    #   100. A page can contain fewer results than this value even when more
    #   results remain; continue while nextToken is present.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListAccessGrantsInput AWS API Documentation
    #
    class ListAccessGrantsInput < Struct.new(
      :domain_id,
      :space_id,
      :principal_id,
      :principal_type,
      :permission,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of access grant summaries.
    #   @return [Array<Types::AccessGrantSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results, or null if there are
    #   no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListAccessGrantsOutput AWS API Documentation
    #
    class ListAccessGrantsOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The unique ID of the space.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of access profiles to return per page. Defaults
    #   to 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListAccessProfilesInput AWS API Documentation
    #
    class ListAccessProfilesInput < Struct.new(
      :space_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of access profile summaries.
    #   @return [Array<Types::AccessProfileSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results, or null if there are
    #   no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListAccessProfilesOutput AWS API Documentation
    #
    class ListAccessProfilesOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The unique ID of the space.
    #   @return [String]
    #
    # @!attribute [rw] filter_criteria
    #   Filter criteria narrowing which alerts are returned. All members are
    #   optional; the three name/id filters are mutually exclusive.
    #   @return [Types::AlertFilterCriteria]
    #
    # @!attribute [rw] sort_by
    #   The field to sort results by.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The order in which to sort results.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of alerts to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListAlertsInput AWS API Documentation
    #
    class ListAlertsInput < Struct.new(
      :space_id,
      :filter_criteria,
      :sort_by,
      :sort_order,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of alert summaries.
    #   @return [Array<Types::AlertSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results, or null if there are
    #   no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListAlertsOutput AWS API Documentation
    #
    class ListAlertsOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   Filter by domain ID.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   Filter by principal ID.
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   Filter by principal type.
    #   @return [String]
    #
    # @!attribute [rw] permission
    #   Filter by permission level.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results. Supply the same
    #   filters used on the request that returned it. Tokens expire after 24
    #   hours.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of access grants to return per page. Defaults to
    #   100. A page can contain fewer results than this value even when more
    #   results remain; continue while nextToken is present.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListDomainAccessGrantsForOrganizationInput AWS API Documentation
    #
    class ListDomainAccessGrantsForOrganizationInput < Struct.new(
      :domain_id,
      :principal_id,
      :principal_type,
      :permission,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of organization access grant summaries.
    #   @return [Array<Types::OrganizationAccessGrantSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results, or null if there are
    #   no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListDomainAccessGrantsForOrganizationOutput AWS API Documentation
    #
    class ListDomainAccessGrantsForOrganizationOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results. Tokens expire after 24
    #   hours.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of domains to return per page. Defaults to 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListDomainsInput AWS API Documentation
    #
    class ListDomainsInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of domain summaries.
    #   @return [Array<Types::DomainSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results, or null if there are
    #   no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListDomainsOutput AWS API Documentation
    #
    class ListDomainsOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for listing the integrations in an account.
    #
    # @!attribute [rw] integration_type
    #   Returns only integrations of this provider type.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Returns only integrations in this status.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Returns only the integration with this exact name.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Pagination token from a previous response; omit for the first page.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of integrations to return in one page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListIntegrationsInput AWS API Documentation
    #
    class ListIntegrationsInput < Struct.new(
      :integration_type,
      :status,
      :name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response containing a page of integrations.
    #
    # @!attribute [rw] items
    #   The page of integrations.
    #   @return [Array<Types::Integration>]
    #
    # @!attribute [rw] next_token
    #   Pagination token for the next page; absent when there are no more
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListIntegrationsOutput AWS API Documentation
    #
    class ListIntegrationsOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The unique ID of the space.
    #   @return [String]
    #
    # @!attribute [rw] name_prefix
    #   Filter to dashboards whose name starts with this prefix.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of dashboards to return per page. Defaults to
    #   100. A page can contain fewer results than this value even when more
    #   results remain; continue while nextToken is present.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListOmniDashboardsInput AWS API Documentation
    #
    class ListOmniDashboardsInput < Struct.new(
      :space_id,
      :name_prefix,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of dashboard summaries.
    #   @return [Array<Types::OmniDashboardSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results, or null if there are
    #   no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListOmniDashboardsOutput AWS API Documentation
    #
    class ListOmniDashboardsOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results. Tokens expire after 24
    #   hours.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of spaces to return per page. Defaults to 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListSpacesForOrganizationInput AWS API Documentation
    #
    class ListSpacesForOrganizationInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of space summaries.
    #   @return [Array<Types::SpaceSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results, or null if there are
    #   no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListSpacesForOrganizationOutput AWS API Documentation
    #
    class ListSpacesForOrganizationOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   Filter by domain ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results. Supply the same
    #   filters used on the request that returned it. Tokens expire after 24
    #   hours.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of spaces to return per page. Defaults to 100. A
    #   page can contain fewer results than this value even when more
    #   results remain; continue while nextToken is present.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListSpacesInput AWS API Documentation
    #
    class ListSpacesInput < Struct.new(
      :domain_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of space summaries.
    #   @return [Array<Types::SpaceSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results, or null if there are
    #   no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListSpacesOutput AWS API Documentation
    #
    class ListSpacesOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_set_name
    #   The name of the dataset to list fields for.
    #   @return [String]
    #
    # @!attribute [rw] telemetry_type
    #   The type of telemetry to filter fields by.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   Inclusive start of the lookback window. When omitted, the service
    #   defaults to the configured lookback before endTime.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   Inclusive end of the lookback window. When omitted, the service
    #   defaults to the current time.
    #   @return [Time]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results. Reserved for future
    #   pagination; the service does not paginate at this time and returns
    #   null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListTelemetryFieldsRequest AWS API Documentation
    #
    class ListTelemetryFieldsRequest < Struct.new(
      :data_set_name,
      :telemetry_type,
      :start_time,
      :end_time,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fields
    #   The list of fields available for queries.
    #   @return [Array<Types::Field>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results, or null if there are
    #   no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListTelemetryFieldsResponse AWS API Documentation
    #
    class ListTelemetryFieldsResponse < Struct.new(
      :fields,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of sessions to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListTelemetryQuerySessionsRequest AWS API Documentation
    #
    class ListTelemetryQuerySessionsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sessions
    #   The list of session summaries.
    #   @return [Array<Types::SessionSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results, or null if there are
    #   no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListTelemetryQuerySessionsResponse AWS API Documentation
    #
    class ListTelemetryQuerySessionsResponse < Struct.new(
      :sessions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type
    #   Return only views of this ownership category.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of views to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListViewsRequest AWS API Documentation
    #
    class ListViewsRequest < Struct.new(
      :type,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of view summaries.
    #   @return [Array<Types::ViewSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results, or null if there are
    #   no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListViewsResponse AWS API Documentation
    #
    class ListViewsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # One LOGS query selector block on a node. The `attributes` map's keys
    # are AND'd; each selects with `col = value`. Deliberately
    # RAW/un-normalized so the selector matches the store, not the node's
    # merged identity.
    #
    # @!attribute [rw] attributes
    #   One LOGS query-selector block: EXACT store column -&gt; raw SCALAR
    #   value (mirroring the scalar MetadataAttributeMap). Keyed by the
    #   store column that carries the value (e.g.
    #   `resource.attributes['service.name']`,
    #   `attributes['aws.local.service']`, `@logGroupName`) so the selector
    #   matches the emitted signal. A dimension seen under several values (a
    #   service under two namespaces, several log groups) becomes several
    #   blocks with the same columns and different values, which the console
    #   ORs. Dedicated to the LOGS selector so its cap evolves independently
    #   of the metric attribute map and the TRACES map. Selector caps are
    #   deliberately DISTINCT from the metric caps.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/LogMetadata AWS API Documentation
    #
    class LogMetadata < Struct.new(
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Descriptive information about a context graph node or edge, as opposed
    # to its identity and structure. Returned only when the request sets
    # includeMetadata.
    #
    # @!attribute [rw] metrics
    #   The metrics observed on the element.
    #   @return [Array<Types::MetricMetadata>]
    #
    # @!attribute [rw] semantics
    #   Semantic description of the node. Absent on an edge, because
    #   semantics describe a service rather than a relationship.
    #   @return [Types::NodeSemantics]
    #
    # @!attribute [rw] logs
    #   Per-signal LOGS query selectors: a LIST of blocks the console ORs,
    #   each an AND of exact store column -&gt; raw values. Node-level
    #   (edges carry only traces). Populated when the request sets
    #   includeMetadata; derived labels (logSourceType) are added by the
    #   service projection, not stored here.
    #   @return [Array<Types::LogMetadata>]
    #
    # @!attribute [rw] traces
    #   Per-signal TRACES query selectors (same block shape as logs).
    #   Present on both node and edge metadata. serviceName is derived at
    #   the service projection, not stored here.
    #   @return [Array<Types::TraceMetadata>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/Metadata AWS API Documentation
    #
    class Metadata < Struct.new(
      :metrics,
      :semantics,
      :logs,
      :traces)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single metric observed on a context graph node.
    #
    # @!attribute [rw] name
    #   The metric name as emitted, such as "Duration".
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   DEPRECATED: read attributes\["service.namespace"\] instead. Retained
    #   (deprecated) for backward compatibility with existing consumers;
    #   will be removed once they migrate. The logical service grouping the
    #   metric belongs to.
    #   @return [String]
    #
    # @!attribute [rw] preferred_stat
    #   The statistic to chart or alarm on, such as "p99" or "Sum".
    #   Free-form and frequently absent.
    #   @return [String]
    #
    # @!attribute [rw] metric_type
    #   OTel metric kind: "gauge", "sum", "histogram",
    #   "exponential\_histogram", or "summary" (CloudWatch-vended metrics
    #   carry the same kinds). Absent when the producer did not report one.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   Per-metric qualifying attributes the console uses to query this
    #   metric's telemetry. These are the RAW, store-matching values keyed
    #   by their OTel names ("service.name", "service.namespace",
    #   "cloud.provider", "cloud.account.id", "cloud.region",
    #   "instrumentation\_scope") — deliberately NOT the node's
    #   normalized/merged identity, so the query selectors match the emitted
    #   series. A merged node can carry different values per metric, which
    #   is why they live here rather than on the node.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] semantics
    #   What the metric means and the unit it is reported in.
    #   @return [Types::MetricSemantics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/MetricMetadata AWS API Documentation
    #
    class MetricMetadata < Struct.new(
      :name,
      :namespace,
      :preferred_stat,
      :metric_type,
      :attributes,
      :semantics)
      SENSITIVE = []
      include Aws::Structure
    end

    # The meaning and unit of a single metric.
    #
    # @!attribute [rw] description
    #   Human-readable description of what the metric measures.
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The unit the metric is reported in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/MetricSemantics AWS API Documentation
    #
    class MetricSemantics < Struct.new(
      :description,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures how the alert reacts when an evaluation produces no data.
    # \{@code treatAs} carries the resulting state; defaults to \{@code
    # NODATA} when omitted.
    #
    # @!attribute [rw] treat_as
    #   The state to report when an evaluation produces no data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/NoData AWS API Documentation
    #
    class NoData < Struct.new(
      :treat_as)
      SENSITIVE = []
      include Aws::Structure
    end

    # A node in the context graph representing a service, resource, or
    # remote service.
    #
    # @!attribute [rw] node_id
    #   The unique identifier of the node within the context graph.
    #   @return [String]
    #
    # @!attribute [rw] node_type
    #   Whether the node is a service, a resource, or a remote service.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The primary display name of the node.
    #   @return [String]
    #
    # @!attribute [rw] alternate_names
    #   Other names this node was observed under. A node that merged across
    #   sources reports one resolved name, and the names it was merged away
    #   from appear here.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags observed on the underlying resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] node_properties
    #   Identity attributes promoted out of the flat attribute map onto
    #   typed members.
    #   @return [Types::NodeProperties]
    #
    # @!attribute [rw] telemetry_attributes
    #   The node's OpenTelemetry (OTel) attributes, as emitted by telemetry
    #   — the raw values, as opposed to the normalized `nodeProperties`. A
    #   key promoted onto a `nodeProperties` member is removed here, so no
    #   value appears twice.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] operation_details
    #   The operations observed on this node, keyed by operation name. Each
    #   value lists the dimension sets that identify the metric series for
    #   that operation.
    #   @return [Hash<String,Array<Hash<String,String>>>]
    #
    # @!attribute [rw] signal_types
    #   The kinds of telemetry signal observed on this node.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sources
    #   The discovery sources that contributed this node.
    #   @return [Array<String>]
    #
    # @!attribute [rw] metadata
    #   Descriptive metadata about the node. Present only when the request
    #   sets includeMetadata.
    #   @return [Types::Metadata]
    #
    # @!attribute [rw] first_observed_at
    #   When this node was first observed (UTC), at minute granularity. For
    #   a node that merged across sources, this is the earliest value any
    #   source reported.
    #   @return [Time]
    #
    # @!attribute [rw] last_observed_at
    #   When this node was most recently observed (UTC), at minute
    #   granularity. For a node that merged across sources, this is the
    #   latest value any source reported.
    #   @return [Time]
    #
    # @!attribute [rw] edges
    #   Outbound edges originating from this node. Each edge carries its
    #   `from`.
    #   @return [Array<Types::Edge>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/Node AWS API Documentation
    #
    class Node < Struct.new(
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
      :edges)
      SENSITIVE = []
      include Aws::Structure
    end

    # Criteria for selecting nodes in a context graph query.
    #
    # @!attribute [rw] node_id
    #   Match only the node with this identifier.
    #   @return [String]
    #
    # @!attribute [rw] node_type
    #   Match only nodes of this type.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Match only nodes with this name.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Match nodes by the tags on the underlying resource.
    #   @return [Array<Types::KeyFilter>]
    #
    # @!attribute [rw] telemetry_attributes
    #   Match nodes by their OpenTelemetry (OTel) telemetry attributes.
    #   @return [Array<Types::KeyFilter>]
    #
    # @!attribute [rw] region
    #   Match nodes in any of these regions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cloud_provider
    #   Match nodes on any of these cloud providers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] source_account_id
    #   Match nodes discovered from telemetry produced by any of these
    #   accounts.
    #   @return [Array<String>]
    #
    # @!attribute [rw] namespace
    #   Match nodes in any of these logical service groupings.
    #   @return [Array<String>]
    #
    # @!attribute [rw] category
    #   Match nodes of any of these categories.
    #   @return [Array<String>]
    #
    # @!attribute [rw] stage
    #   Match nodes observed in any of these deployment environments.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sources
    #   Match nodes contributed by any of these discovery sources.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/NodeFilters AWS API Documentation
    #
    class NodeFilters < Struct.new(
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
      :sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # Node identity attributes promoted out of the flat attribute map onto
    # typed members. The first four are part of the node's merge key, so a
    # node that merged across sources reports one resolved value for each.
    #
    # @!attribute [rw] region
    #   The region the node runs in. Falls back to the region the telemetry
    #   was ingested from when the node does not report one.
    #   @return [String]
    #
    # @!attribute [rw] cloud_provider
    #   The cloud provider hosting the node, resolved from the reported
    #   provider, platform, or vendor namespace, and defaulting to "aws".
    #   @return [String]
    #
    # @!attribute [rw] source_account_id
    #   The account that produced the telemetry this node was discovered
    #   from.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The logical service grouping the node belongs to. This is not a
    #   metric namespace.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   What kind of thing the node is, coarser than nodeType.
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   The node's deployment environment. A node may be observed in
    #   several; this is the highest-precedence one. Match any of them with
    #   NodeFilters.stage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/NodeProperties AWS API Documentation
    #
    class NodeProperties < Struct.new(
      :region,
      :cloud_provider,
      :source_account_id,
      :namespace,
      :category,
      :stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Semantic description of the service a context graph node represents.
    #
    # @!attribute [rw] purpose
    #   What the service does.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The primary programming language the service is written in.
    #   @return [String]
    #
    # @!attribute [rw] framework
    #   The application framework the service is built on.
    #   @return [String]
    #
    # @!attribute [rw] kind
    #   The kind of workload the service is.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The source repository the service is built from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/NodeSemantics AWS API Documentation
    #
    class NodeSemantics < Struct.new(
      :purpose,
      :language,
      :framework,
      :kind,
      :repository)
      SENSITIVE = []
      include Aws::Structure
    end

    # Single notification rule: which transitions trigger this rule and
    # where the resulting notification should be sent.
    #
    # @!attribute [rw] trigger
    #   The conditions that trigger this notification rule.
    #   @return [Types::NotificationTrigger]
    #
    # @!attribute [rw] target
    #   The destination for notifications from this rule.
    #   @return [Types::NotificationTarget]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/NotificationRule AWS API Documentation
    #
    class NotificationRule < Struct.new(
      :trigger,
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # The destination for a notification.
    #
    # @!attribute [rw] type
    #   The type of notification target.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the notification target. For
    #   \{@code slack} and \{@code pagerduty}, an integration ARN as
    #   returned by \{@code ListIntegrations}.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   Additional target-specific metadata.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/NotificationTarget AWS API Documentation
    #
    class NotificationTarget < Struct.new(
      :type,
      :arn,
      :metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # Trigger conditions for a notification rule. \{@code stateValues}
    # entries combine with OR semantics; empty / omitted = any state.
    #
    # @!attribute [rw] state_values
    #   Alert state(s) that trigger this rule. Empty / omitted = any state.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/NotificationTrigger AWS API Documentation
    #
    class NotificationTrigger < Struct.new(
      :state_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Credentials for an OAuth 2.0 client-credentials grant used to
    # authenticate an integration with its external system.
    #
    # @!attribute [rw] client_id
    #   The OAuth 2.0 client identifier registered with the external system.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The OAuth 2.0 client secret that pairs with the client identifier.
    #   @return [String]
    #
    # @!attribute [rw] provider_id
    #   The identifier of the OAuth provider that issued the client
    #   credentials.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/OAuthClientCredential AWS API Documentation
    #
    class OAuthClientCredential < Struct.new(
      :client_id,
      :client_secret,
      :provider_id)
      SENSITIVE = [:client_secret]
      include Aws::Structure
    end

    # Credentials for an OAuth 2.0 authorization-code grant, supplied when
    # completing the authorization of an integration.
    #
    # @!attribute [rw] auth_code
    #   The OAuth 2.0 authorization code returned by the external system's
    #   authorization endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/OAuthCodeCredential AWS API Documentation
    #
    class OAuthCodeCredential < Struct.new(
      :auth_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # A dashboard within a space, including its body.
    #
    # @!attribute [rw] dashboard_id
    #   The unique ID of the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name that identifies the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The dashboard definition.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The principal that created the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description of the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the dashboard.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the dashboard was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the dashboard was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/OmniDashboard AWS API Documentation
    #
    class OmniDashboard < Struct.new(
      :dashboard_id,
      :arn,
      :name,
      :body,
      :created_by,
      :description,
      :tags,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of a dashboard. Call GetOmniDashboard for the full dashboard.
    #
    # @!attribute [rw] dashboard_id
    #   The unique ID of the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name that identifies the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The principal that created the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description of the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the dashboard.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the dashboard was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the dashboard was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/OmniDashboardSummary AWS API Documentation
    #
    class OmniDashboardSummary < Struct.new(
      :dashboard_id,
      :arn,
      :name,
      :created_by,
      :description,
      :tags,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # An organization-scoped access grant.
    #
    # @!attribute [rw] grant_id
    #   The unique ID of the access grant.
    #   @return [String]
    #
    # @!attribute [rw] grant_arn
    #   The Amazon Resource Name (ARN) of the access grant.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name that identifies the access grant.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the organization domain the grant belongs to.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The principal receiving the grant.
    #   @return [Types::OrganizationAccessGrantPrincipal]
    #
    # @!attribute [rw] permission
    #   The permission granted.
    #   @return [String]
    #
    # @!attribute [rw] grant_type
    #   Who manages the grant.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The principal that created the grant.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the grant was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the grant was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/OrganizationAccessGrant AWS API Documentation
    #
    class OrganizationAccessGrant < Struct.new(
      :grant_id,
      :grant_arn,
      :name,
      :domain_id,
      :principal,
      :permission,
      :grant_type,
      :created_by,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The principal receiving an organization-level domain access grant.
    # Specify principalId, principalAttributes, or both.
    #
    # @!attribute [rw] principal_type
    #   The type of principal receiving the grant.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The ID of the principal receiving the grant.
    #   @return [String]
    #
    # @!attribute [rw] principal_attributes
    #   Attribute conditions for attribute-based access. When provided, the
    #   grant targets any principal matching all specified conditions.
    #   Supported only for IDC\_USER principals.
    #   @return [Array<Types::AccessGrantPrincipalAttribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/OrganizationAccessGrantPrincipal AWS API Documentation
    #
    class OrganizationAccessGrantPrincipal < Struct.new(
      :principal_type,
      :principal_id,
      :principal_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of an organization access grant. Call
    # GetDomainAccessGrantForOrganization for the full grant.
    #
    # @!attribute [rw] grant_id
    #   The unique ID of the access grant.
    #   @return [String]
    #
    # @!attribute [rw] grant_arn
    #   The Amazon Resource Name (ARN) of the access grant.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name that identifies the access grant.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the organization domain the grant belongs to.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The principal receiving the grant.
    #   @return [Types::OrganizationAccessGrantPrincipal]
    #
    # @!attribute [rw] permission
    #   The permission granted.
    #   @return [String]
    #
    # @!attribute [rw] grant_type
    #   Who manages the grant.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the access grant was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the access grant was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/OrganizationAccessGrantSummary AWS API Documentation
    #
    class OrganizationAccessGrantSummary < Struct.new(
      :grant_id,
      :grant_arn,
      :name,
      :domain_id,
      :principal,
      :permission,
      :grant_type,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information about an organization domain.
    #
    # @!attribute [rw] domain_id
    #   The unique ID of the organization domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_arn
    #   The Amazon Resource Name (ARN) of the organization domain.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name that identifies the organization domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_endpoint_url
    #   The HTTPS endpoint URL for accessing the organization domain.
    #   @return [String]
    #
    # @!attribute [rw] custom_endpoint_urls
    #   Additional endpoint URLs derived from the domain name.
    #   @return [Array<String>]
    #
    # @!attribute [rw] organization_id
    #   The ID of the AWS Organization that owns the domain.
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   The AWS account ID that owns the organization domain.
    #   @return [String]
    #
    # @!attribute [rw] identity_providers
    #   The identity providers configured for the organization domain.
    #   @return [Array<String>]
    #
    # @!attribute [rw] identity_provider_configuration
    #   Identity provider configuration for the organization domain.
    #   @return [Types::IdentityProviderConfiguration]
    #
    # @!attribute [rw] identity_center_application_arn
    #   The ARN of the Identity Center application. Absent for IAM-only
    #   domains.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Region where this organization domain was created.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Current status of the organization domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_access_role_arn
    #   The ARN of the customer-provided IAM role in the management account
    #   used for domain access.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the organization domain was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the organization domain was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/OrganizationDomain AWS API Documentation
    #
    class OrganizationDomain < Struct.new(
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
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates whether a query returned partial results.
    #
    # @!attribute [rw] partial_results_detected
    #   True when the query returned partial results (some data could not be
    #   read).
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/PartialResults AWS API Documentation
    #
    class PartialResults < Struct.new(
      :partial_results_detected)
      SENSITIVE = []
      include Aws::Structure
    end

    # A user or group matched by SearchPrincipals.
    #
    # @!attribute [rw] principal_id
    #   The unique ID of the principal.
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   Whether the principal is a user or a group.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the principal.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The user name of the principal. Present for users only.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description of the principal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/PrincipalSearchResult AWS API Documentation
    #
    class PrincipalSearchResult < Struct.new(
      :principal_id,
      :principal_type,
      :display_name,
      :user_name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for updating the intelligence configuration of the calling
    # account.
    #
    # @!attribute [rw] kms_key_arn
    #   Optional KMS key ARN to configure customer-managed encryption for
    #   anomaly data.
    #   @return [String]
    #
    # @!attribute [rw] remove_kms_key
    #   Set to true to disassociate the configured KMS key. Mutually
    #   exclusive with kmsKeyArn; the service returns ValidationException if
    #   both are provided.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_token
    #   Idempotency token for safe retries. Repeating a request with the
    #   same token applies the update at most once instead of reprocessing
    #   it.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/PutIntelligenceConfigurationInput AWS API Documentation
    #
    class PutIntelligenceConfigurationInput < Struct.new(
      :kms_key_arn,
      :remove_kms_key,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The intelligence configuration for the calling account after the
    # update.
    #
    # @!attribute [rw] account_id
    #   The AWS account ID this configuration applies to.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The currently active KMS key ARN for customer-managed encryption, if
    #   configured.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   ISO-8601 timestamp of the last update.
    #   @return [Time]
    #
    # @!attribute [rw] created_at
    #   ISO-8601 timestamp of initial creation.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/PutIntelligenceConfigurationOutput AWS API Documentation
    #
    class PutIntelligenceConfigurationOutput < Struct.new(
      :account_id,
      :kms_key_arn,
      :updated_at,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Statistics about a telemetry query execution.
    #
    # @!attribute [rw] bytes_scanned
    #   The number of bytes scanned by the query.
    #   @return [Float]
    #
    # @!attribute [rw] percent_complete
    #   The percentage of the query that has completed.
    #   @return [Integer]
    #
    # @!attribute [rw] records_scanned
    #   The total number of records scanned.
    #   @return [Integer]
    #
    # @!attribute [rw] records_matched
    #   The number of records that matched the query criteria.
    #   @return [Integer]
    #
    # @!attribute [rw] partial_results
    #   Information about whether the query returned partial results.
    #   @return [Types::PartialResults]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/QueryStatistics AWS API Documentation
    #
    class QueryStatistics < Struct.new(
      :bytes_scanned,
      :percent_complete,
      :records_scanned,
      :records_matched,
      :partial_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that could not be found. Not always
    #   present.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that could not be found. Not always
    #   present.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code associated with the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_type,
      :resource_id,
      :error_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single resource scope entry within an AccessGrant. Associates a
    # resource type with optional ARN patterns, tag conditions, and
    # row-level filters.
    #
    # @!attribute [rw] resource_type
    #   Resource type name (e.g., "DataSet", "OmniDashboard").
    #   @return [String]
    #
    # @!attribute [rw] resource_arns
    #   Specific resource ARNs or ARN patterns. When set, actions are
    #   limited to these resources. When absent, defaults to "*".
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Tag-based conditions for dynamic resource scoping. Access applies
    #   only to resources carrying all of the specified tag key/value pairs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] signal_types
    #   Signal types this scope's row filtering applies to. Required when
    #   rowScopeGroups is set.
    #   @return [Array<String>]
    #
    # @!attribute [rw] row_scope_groups
    #   Row-level filters for this scope, as an OR of AND-groups: a row is
    #   visible when it matches every filter in any one group. Requires
    #   signalTypes.
    #
    #   Row filters are additive across a principal's matching grants. A
    #   signal type with no matching group is unrestricted, and when
    #   rowScopeGroups is omitted all rows are visible for all signal types.
    #   @return [Array<Array<Types::RowScope>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ResourceScope AWS API Documentation
    #
    class ResourceScope < Struct.new(
      :resource_type,
      :resource_arns,
      :tags,
      :signal_types,
      :row_scope_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single additive row-level filter on an AccessGrant. A row is visible
    # when its value for the given field matches the filter's values. Row
    # filters are additive: the visible rows are the union of all row
    # filters across a principal's matching grants.
    #
    # @!attribute [rw] field
    #   The field (column) the allowlist applies to (e.g., "serviceName",
    #   "accountId").
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   Match operator applied to this filter's values.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values the field is matched against.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/RowScope AWS API Documentation
    #
    class RowScope < Struct.new(
      :field,
      :operator,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Top-level rule definition.
    #
    # \{@code telemetryRule} members are optional at the Smithy level to
    # support PATCH semantics on UpdateAlert (send only the sub-blocks you
    # want to change). On CreateAlert, presence is enforced by the
    # service-side validator.
    #
    # @note Rule is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Rule is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Rule corresponding to the set member.
    #
    # @!attribute [rw] telemetry_rule
    #   The telemetry-based rule definition.
    #   @return [Types::TelemetryRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/Rule AWS API Documentation
    #
    class Rule < Struct.new(
      :telemetry_rule,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class TelemetryRule < Rule; end
      class Unknown < Rule; end
    end

    # A group of actions within an access grant, together with the resource
    # scopes and context conditions that apply to exactly those actions.
    #
    # @!attribute [rw] actions
    #   The actions this group applies to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resources
    #   Optional resource scopes constraining these actions to specific
    #   resources.
    #   @return [Array<Types::ResourceScope>]
    #
    # @!attribute [rw] context_conditions
    #   Optional context conditions for fine-grained access control on these
    #   actions.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ScopedActions AWS API Documentation
    #
    class ScopedActions < Struct.new(
      :actions,
      :resources,
      :context_conditions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The ID of the domain to search within.
    #   @return [String]
    #
    # @!attribute [rw] search_query
    #   A search term to match against user names, display names, and IDs.
    #   Pass * to list all principals. Maximum 128 characters.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. Defaults to 10. Valid only
    #   when searchQuery is *; other searches reject this parameter and
    #   return at most 10 results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results. Valid only when
    #   searchQuery is *; other searches do not paginate and reject this
    #   parameter. Tokens expire after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/SearchPrincipalsInput AWS API Documentation
    #
    class SearchPrincipalsInput < Struct.new(
      :domain_id,
      :search_query,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   The list of matching principals.
    #   @return [Array<Types::PrincipalSearchResult>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results, or null if there are
    #   no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/SearchPrincipalsOutput AWS API Documentation
    #
    class SearchPrincipalsOutput < Struct.new(
      :results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A service quota was exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a query session, including its identifier,
    # name, and activity timestamps.
    #
    # @!attribute [rw] session_id
    #   The unique ID of the session.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the session was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_activity_at
    #   The timestamp of the most recent activity in the session.
    #   @return [Time]
    #
    # @!attribute [rw] session_name
    #   The human-readable name of the session. Names under `/aws/` are
    #   reserved for service integrations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/SessionSummary AWS API Documentation
    #
    class SessionSummary < Struct.new(
      :session_id,
      :created_at,
      :last_activity_at,
      :session_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information about a space.
    #
    # @!attribute [rw] space_id
    #   The unique ID of the space.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name that identifies the space.
    #   @return [String]
    #
    # @!attribute [rw] space_arn
    #   The Amazon Resource Name (ARN) of the space.
    #   @return [String]
    #
    # @!attribute [rw] domain_arn
    #   The Amazon Resource Name (ARN) of the domain the space belongs to.
    #   Absent when the space is not associated with a domain, so callers
    #   must tolerate its absence.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The region where this space was created.
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   AWS account ID that owns this space.
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The ARN of the IAM role used for data access.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the space was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the space was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] agent_core_evaluation_role_arn
    #   The ARN of the IAM role used by AgentCore online evaluation. Absent
    #   when the space was created without one.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the space.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Reason for the current space status.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   How the space's data at rest is encrypted. Always populated: a
    #   space with no customer managed key reports `encryptionStrategy`
    #   AWS\_OWNED and no `kmsKeyArn`.
    #   @return [Types::EncryptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/Space AWS API Documentation
    #
    class Space < Struct.new(
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
      :encryption_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies what the credentials are for: either an existing space, or
    # a target account in a domain. Specify spaceId, or both domainId and
    # targetAccountId.
    #
    # @!attribute [rw] space_id
    #   The ID of an existing space to return credentials for.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the domain, when returning credentials for a target
    #   account that does not yet have a space.
    #   @return [String]
    #
    # @!attribute [rw] target_account_id
    #   The ID of the target member account. Required when domainId is set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/SpaceCredentialRequestContext AWS API Documentation
    #
    class SpaceCredentialRequestContext < Struct.new(
      :space_id,
      :domain_id,
      :target_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of a space. Call GetSpace for the full space.
    #
    # @!attribute [rw] space_id
    #   The unique ID of the space.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name that identifies the space.
    #   @return [String]
    #
    # @!attribute [rw] space_arn
    #   The Amazon Resource Name (ARN) of the space.
    #   @return [String]
    #
    # @!attribute [rw] domain_arn
    #   The Amazon Resource Name (ARN) of the domain the space belongs to.
    #   Absent when the space is not associated with a domain, so callers
    #   must tolerate its absence.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The region where this space was created.
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   AWS account ID that owns this space.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the space.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Reason for the current space status.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the space was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the space was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/SpaceSummary AWS API Documentation
    #
    class SpaceSummary < Struct.new(
      :space_id,
      :name,
      :space_arn,
      :domain_arn,
      :region,
      :owner_account_id,
      :status,
      :status_reason,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_string
    #   The query string to execute.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique ID of the session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/StartTelemetryQueryRequest AWS API Documentation
    #
    class StartTelemetryQueryRequest < Struct.new(
      :query_string,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_id
    #   The unique ID of the query.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique ID of the session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/StartTelemetryQueryResponse AWS API Documentation
    #
    class StartTelemetryQueryResponse < Struct.new(
      :query_id,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_name
    #   A human-readable name for the session. Names under `/aws/` are
    #   reserved for service integrations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/StartTelemetryQuerySessionRequest AWS API Documentation
    #
    class StartTelemetryQuerySessionRequest < Struct.new(
      :session_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The unique ID of the session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/StartTelemetryQuerySessionResponse AWS API Documentation
    #
    class StartTelemetryQuerySessionResponse < Struct.new(
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_id
    #   The unique ID of the query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/StopTelemetryQueryRequest AWS API Documentation
    #
    class StopTelemetryQueryRequest < Struct.new(
      :query_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/StopTelemetryQueryResponse AWS API Documentation
    #
    class StopTelemetryQueryResponse < Aws::EmptyStructure; end

    # @!attribute [rw] session_id
    #   The unique ID of the session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/StopTelemetryQuerySessionRequest AWS API Documentation
    #
    class StopTelemetryQuerySessionRequest < Struct.new(
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/StopTelemetryQuerySessionResponse AWS API Documentation
    #
    class StopTelemetryQuerySessionResponse < Aws::EmptyStructure; end

    # Telemetry-based rule: what to query, how to evaluate the result, what
    # condition makes it fire, and what to do on missing data.
    #
    # @!attribute [rw] query
    #   The query expression to evaluate.
    #   @return [Types::AlertRuleQuery]
    #
    # @!attribute [rw] condition
    #   The condition that determines when the alert fires.
    #   @return [Types::AlertCondition]
    #
    # @!attribute [rw] evaluation
    #   The evaluation cadence and durations.
    #   @return [Types::AlertEvaluation]
    #
    # @!attribute [rw] no_data
    #   How the alert behaves when a query produces no data.
    #   @return [Types::NoData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/TelemetryRule AWS API Documentation
    #
    class TelemetryRule < Struct.new(
      :query,
      :condition,
      :evaluation,
      :no_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was throttled due to exceeding the allowed request rate.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying the request. Not
    #   always present.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # One TRACES query selector block on a node/edge (see LogMetadata).
    #
    # @!attribute [rw] attributes
    #   TRACES counterpart of LogMetadataAttributeMap — a dedicated
    #   per-signal map so the two evolve independently (same scalar shape
    #   and cap today).
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/TraceMetadata AWS API Documentation
    #
    class TraceMetadata < Struct.new(
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The unique ID of the space.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The unique ID of the access profile to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A new name for the access profile. Omit to leave unchanged.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A new description of the access profile. Omit to leave unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/UpdateAccessProfileInput AWS API Documentation
    #
    class UpdateAccessProfileInput < Struct.new(
      :space_id,
      :profile_id,
      :name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_profile
    #   The access profile.
    #   @return [Types::AccessProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/UpdateAccessProfileOutput AWS API Documentation
    #
    class UpdateAccessProfileOutput < Struct.new(
      :access_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The unique ID of the space.
    #   @return [String]
    #
    # @!attribute [rw] alert_id
    #   The alert to update.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The ID of the access profile associated with the alert.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A new display name for the alert. Omit to leave the name unchanged
    #   (apply-if-present / PATCH). Same constraints as CreateAlert.name;
    #   the name is not the alert's identity, so a rename never changes the
    #   alertId.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A new description of the alert. Omit to leave unchanged.
    #   @return [String]
    #
    # @!attribute [rw] rule
    #   The rule that defines how the alert is evaluated. Omit to leave
    #   unchanged. Each sub-block is replaced whole when present: \{@code
    #   query}, \{@code condition}, \{@code evaluation} and \{@code noData}
    #   are applied only when supplied, and within a supplied block an
    #   omitted optional member is cleared to unset (null/absent) rather
    #   than preserved from the stored alert or defaulted. See \{@link
    #   AlertCondition} and \{@link AlertEvaluation}.
    #   @return [Types::Rule]
    #
    # @!attribute [rw] notifications_enabled
    #   Whether actions (notifications) are enabled for this alert. Omitted
    #   = leave existing value unchanged.
    #   @return [Boolean]
    #
    # @!attribute [rw] notification_rules
    #   Replaces the entire notification rule list when present;
    #   full-replace, not merge. Omitted = leave existing rules unchanged.
    #   An empty list clears all rules (the alert keeps evaluating; only
    #   notifications stop).
    #   @return [Array<Types::NotificationRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/UpdateAlertInput AWS API Documentation
    #
    class UpdateAlertInput < Struct.new(
      :space_id,
      :alert_id,
      :profile_id,
      :name,
      :description,
      :rule,
      :notifications_enabled,
      :notification_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/UpdateAlertOutput AWS API Documentation
    #
    class UpdateAlertOutput < Aws::EmptyStructure; end

    # @!attribute [rw] domain_id
    #   The ID of the organization domain to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A new name for the organization domain. Omit to leave unchanged.
    #   Must be 3-63 characters: lowercase letters, numbers, and hyphens. It
    #   must begin and end with a letter or number and cannot contain
    #   consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] identity_providers
    #   The identity providers to configure for the domain. Omit to leave
    #   unchanged.
    #   @return [Array<String>]
    #
    # @!attribute [rw] identity_provider_configuration
    #   Identity provider configuration for the domain. Omit to leave
    #   unchanged.
    #   @return [Types::IdentityProviderConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/UpdateDomainForOrganizationInput AWS API Documentation
    #
    class UpdateDomainForOrganizationInput < Struct.new(
      :domain_id,
      :name,
      :identity_providers,
      :identity_provider_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_domain
    #   The details of the updated organization domain.
    #   @return [Types::OrganizationDomain]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/UpdateDomainForOrganizationOutput AWS API Documentation
    #
    class UpdateDomainForOrganizationOutput < Struct.new(
      :organization_domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The unique ID of the domain to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A new name for the domain. Omit to leave unchanged. Must be 3-63
    #   characters: lowercase letters, numbers, and hyphens. It must begin
    #   and end with a letter or number and cannot contain consecutive
    #   hyphens.
    #   @return [String]
    #
    # @!attribute [rw] identity_providers
    #   The identity providers to configure for the domain.
    #   @return [Array<String>]
    #
    # @!attribute [rw] identity_provider_configuration
    #   Identity provider configuration for the domain.
    #   @return [Types::IdentityProviderConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/UpdateDomainInput AWS API Documentation
    #
    class UpdateDomainInput < Struct.new(
      :domain_id,
      :name,
      :identity_providers,
      :identity_provider_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The details of the updated domain.
    #   @return [Types::Domain]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/UpdateDomainOutput AWS API Documentation
    #
    class UpdateDomainOutput < Struct.new(
      :domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for updating an existing integration.
    #
    # @!attribute [rw] identifier
    #   Identifies the integration to update — exactly one of integrationId,
    #   integrationArn, or integrationName.
    #   @return [Types::IntegrationIdentifier]
    #
    # @!attribute [rw] credential
    #   The replacement credential used to authenticate with the provider.
    #   @return [Types::IntegrationCredential]
    #
    # @!attribute [rw] integration_attributes
    #   The provider-specific attributes to associate with the integration.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name of the IAM role assumed to access the
    #   integration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/UpdateIntegrationInput AWS API Documentation
    #
    class UpdateIntegrationInput < Struct.new(
      :identifier,
      :credential,
      :integration_attributes,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response from updating an integration.
    #
    # @!attribute [rw] integration
    #   The details of the updated integration. This is the same object
    #   returned by GetIntegration and CreateIntegration. Populated on a
    #   successful update; absent only if the post-update read-back of the
    #   resource did not complete.
    #   @return [Types::Integration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/UpdateIntegrationOutput AWS API Documentation
    #
    class UpdateIntegrationOutput < Struct.new(
      :integration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The unique ID of the space.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_id
    #   The unique ID of the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The new dashboard definition, as a JSON document. Maximum 1 MiB.
    #   Omit to leave unchanged.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A new name for the dashboard. Omit to leave unchanged.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A new description of the dashboard. Omit to leave unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/UpdateOmniDashboardInput AWS API Documentation
    #
    class UpdateOmniDashboardInput < Struct.new(
      :space_id,
      :dashboard_id,
      :body,
      :name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] omni_dashboard
    #   The dashboard.
    #   @return [Types::OmniDashboard]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/UpdateOmniDashboardOutput AWS API Documentation
    #
    class UpdateOmniDashboardOutput < Struct.new(
      :omni_dashboard)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The unique ID of the space to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A new name for the space. Omit to leave unchanged. Must be 3-64
    #   characters: lowercase letters, numbers, and hyphens. It must begin
    #   and end with a letter or number and cannot contain consecutive
    #   hyphens.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   How to encrypt the space's data at rest. Omit to leave encryption
    #   unchanged. Pass `encryptionStrategy` AWS\_OWNED to stop using a
    #   customer managed key and revert to service owned encryption.
    #   @return [Types::EncryptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/UpdateSpaceInput AWS API Documentation
    #
    class UpdateSpaceInput < Struct.new(
      :space_id,
      :name,
      :encryption_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space
    #   The updated details of the space.
    #   @return [Types::Space]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/UpdateSpaceOutput AWS API Documentation
    #
    class UpdateSpaceOutput < Struct.new(
      :space)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the view to update.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The new SQL query that defines the view. Omit to leave unchanged.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description of the view. Omit to leave unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/UpdateViewRequest AWS API Documentation
    #
    class UpdateViewRequest < Struct.new(
      :name,
      :definition,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the view.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The ownership category of the view.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the view.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The SQL query that defines the view.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the view was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the view was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] arn
    #   The ARN of the view.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/UpdateViewResponse AWS API Documentation
    #
    class UpdateViewResponse < Struct.new(
      :name,
      :type,
      :description,
      :definition,
      :created_at,
      :updated_at,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A parameter is specified incorrectly.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code associated with the validation failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :error_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a view. Does not include the view
    # definition.
    #
    # @!attribute [rw] name
    #   The name of the view.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The ownership category of the view.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the view.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the view was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the view was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ViewSummary AWS API Documentation
    #
    class ViewSummary < Struct.new(
      :name,
      :type,
      :description,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

