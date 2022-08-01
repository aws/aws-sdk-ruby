# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::OpenSearchService
  module Types

    # @note When making an API call, you may pass AWSDomainInformation
    #   data as a hash:
    #
    #       {
    #         owner_id: "OwnerId",
    #         domain_name: "DomainName", # required
    #         region: "Region",
    #       }
    #
    # @!attribute [rw] owner_id
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The name of an domain. Domain names are unique across the domains
    #   owned by an account within an AWS region. Domain names start with a
    #   letter or number and can contain the following characters: a-z
    #   (lowercase), 0-9, and - (hyphen).
    #   @return [String]
    #
    # @!attribute [rw] region
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AWSDomainInformation AWS API Documentation
    #
    class AWSDomainInformation < Struct.new(
      :owner_id,
      :domain_name,
      :region)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the ` AcceptInboundConnection `
    # operation.
    #
    # @note When making an API call, you may pass AcceptInboundConnectionRequest
    #   data as a hash:
    #
    #       {
    #         connection_id: "ConnectionId", # required
    #       }
    #
    # @!attribute [rw] connection_id
    #   The ID of the inbound connection you want to accept.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AcceptInboundConnectionRequest AWS API Documentation
    #
    class AcceptInboundConnectionRequest < Struct.new(
      :connection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of an ` AcceptInboundConnection ` operation. Contains
    # details about the accepted inbound connection.
    #
    # @!attribute [rw] connection
    #   The ` InboundConnection ` of the accepted inbound connection.
    #   @return [Types::InboundConnection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AcceptInboundConnectionResponse AWS API Documentation
    #
    class AcceptInboundConnectionResponse < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error occurred because user does not have permissions to access the
    # resource. Returns HTTP status code 403.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Aws::EmptyStructure; end

    # The configured access rules for the domain's document and search
    # endpoints, and the current status of those rules.
    #
    # @!attribute [rw] options
    #   The access policy configured for the domain. Access policies can be
    #   resource-based, IP-based, or IAM-based. See [ Configuring access
    #   policies][1]for more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-access-policies
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the access policy for the domain. See `OptionStatus`
    #   for the status information that's included.
    #   @return [Types::OptionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AccessPoliciesStatus AWS API Documentation
    #
    class AccessPoliciesStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the ` AddTags ` operation. Specifies
    # the tags to attach to the domain.
    #
    # @note When making an API call, you may pass AddTagsRequest
    #   data as a hash:
    #
    #       {
    #         arn: "ARN", # required
    #         tag_list: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] arn
    #   Specify the `ARN` of the domain you want to add tags to.
    #   @return [String]
    #
    # @!attribute [rw] tag_list
    #   List of `Tag` to add to the domain.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AddTagsRequest AWS API Documentation
    #
    class AddTagsRequest < Struct.new(
      :arn,
      :tag_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # List of limits that are specific to a given InstanceType and for each
    # of its ` InstanceRole ` .
    #
    # @!attribute [rw] limit_name
    #   Additional limit is specific to a given InstanceType and for each of
    #   its ` InstanceRole ` etc.
    #    Attributes and their details:
    #    * MaximumNumberOfDataNodesSupported
    #   ` ESPartitionInstanceType `*
    #   MaximumNumberOfDataNodesWithoutMasterNode
    #   ` ESPartitionInstanceType `
    #   @return [String]
    #
    # @!attribute [rw] limit_values
    #   Value for a given ` AdditionalLimit$LimitName ` .
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AdditionalLimit AWS API Documentation
    #
    class AdditionalLimit < Struct.new(
      :limit_name,
      :limit_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Status of the advanced options for the specified domain. Currently,
    # the following advanced options are available:
    #
    # * Option to allow references to indices in an HTTP request body. Must
    #   be `false` when configuring access to individual sub-resources. By
    #   default, the value is `true`. See [Advanced cluster parameters ][1]
    #   for more information.
    # * Option to specify the percentage of heap space allocated to field
    #   data. By default, this setting is unbounded.
    #
    # For more information, see [ Advanced cluster parameters][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options
    #
    # @!attribute [rw] options
    #   The status of advanced options for the specified domain.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] status
    #   The `OptionStatus` for advanced options for the specified domain.
    #   @return [Types::OptionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AdvancedOptionsStatus AWS API Documentation
    #
    class AdvancedOptionsStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The advanced security configuration: whether advanced security is
    # enabled, whether the internal database option is enabled.
    #
    # @!attribute [rw] enabled
    #   True if advanced security is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] internal_user_database_enabled
    #   True if the internal user database is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] saml_options
    #   Describes the SAML application configured for a domain.
    #   @return [Types::SAMLOptionsOutput]
    #
    # @!attribute [rw] anonymous_auth_disable_date
    #   Specifies the Anonymous Auth Disable Date when Anonymous Auth is
    #   enabled.
    #   @return [Time]
    #
    # @!attribute [rw] anonymous_auth_enabled
    #   True if Anonymous auth is enabled. Anonymous auth can be enabled
    #   only when AdvancedSecurity is enabled on existing domains.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AdvancedSecurityOptions AWS API Documentation
    #
    class AdvancedSecurityOptions < Struct.new(
      :enabled,
      :internal_user_database_enabled,
      :saml_options,
      :anonymous_auth_disable_date,
      :anonymous_auth_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The advanced security configuration: whether advanced security is
    # enabled, whether the internal database option is enabled, master
    # username and password (if internal database is enabled), and master
    # user ARN (if IAM is enabled).
    #
    # @note When making an API call, you may pass AdvancedSecurityOptionsInput
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #         internal_user_database_enabled: false,
    #         master_user_options: {
    #           master_user_arn: "ARN",
    #           master_user_name: "Username",
    #           master_user_password: "Password",
    #         },
    #         saml_options: {
    #           enabled: false,
    #           idp: {
    #             metadata_content: "SAMLMetadata", # required
    #             entity_id: "SAMLEntityId", # required
    #           },
    #           master_user_name: "Username",
    #           master_backend_role: "BackendRole",
    #           subject_key: "String",
    #           roles_key: "String",
    #           session_timeout_minutes: 1,
    #         },
    #         anonymous_auth_enabled: false,
    #       }
    #
    # @!attribute [rw] enabled
    #   True if advanced security is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] internal_user_database_enabled
    #   True if the internal user database is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] master_user_options
    #   Credentials for the master user: username and password, ARN, or
    #   both.
    #   @return [Types::MasterUserOptions]
    #
    # @!attribute [rw] saml_options
    #   The SAML application configuration for the domain.
    #   @return [Types::SAMLOptionsInput]
    #
    # @!attribute [rw] anonymous_auth_enabled
    #   True if Anonymous auth is enabled. Anonymous auth can be enabled
    #   only when AdvancedSecurity is enabled on existing domains.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AdvancedSecurityOptionsInput AWS API Documentation
    #
    class AdvancedSecurityOptionsInput < Struct.new(
      :enabled,
      :internal_user_database_enabled,
      :master_user_options,
      :saml_options,
      :anonymous_auth_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of advanced security options for the specified domain.
    #
    # @!attribute [rw] options
    #   Advanced security options for the specified domain.
    #   @return [Types::AdvancedSecurityOptions]
    #
    # @!attribute [rw] status
    #   Status of the advanced security options for the specified domain.
    #   @return [Types::OptionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AdvancedSecurityOptionsStatus AWS API Documentation
    #
    class AdvancedSecurityOptionsStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the request parameters to the ` AssociatePackage `
    # operation.
    #
    # @note When making an API call, you may pass AssociatePackageRequest
    #   data as a hash:
    #
    #       {
    #         package_id: "PackageID", # required
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] package_id
    #   Internal ID of the package to associate with a domain. Use
    #   `DescribePackages` to find this value.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The name of the domain to associate the package with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AssociatePackageRequest AWS API Documentation
    #
    class AssociatePackageRequest < Struct.new(
      :package_id,
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the response returned by ` AssociatePackage ` operation.
    #
    # @!attribute [rw] domain_package_details
    #   `DomainPackageDetails`
    #   @return [Types::DomainPackageDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AssociatePackageResponse AWS API Documentation
    #
    class AssociatePackageResponse < Struct.new(
      :domain_package_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the Auto-Tune type and Auto-Tune action details.
    #
    # @!attribute [rw] auto_tune_type
    #   Specifies the Auto-Tune type. Valid value is SCHEDULED\_ACTION.
    #   @return [String]
    #
    # @!attribute [rw] auto_tune_details
    #   Specifies details about the Auto-Tune action. See [ Auto-Tune for
    #   Amazon OpenSearch Service ][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html
    #   @return [Types::AutoTuneDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AutoTune AWS API Documentation
    #
    class AutoTune < Struct.new(
      :auto_tune_type,
      :auto_tune_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies details about the Auto-Tune action. See [ Auto-Tune for
    # Amazon OpenSearch Service ][1] for more information.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html
    #
    # @!attribute [rw] scheduled_auto_tune_details
    #   Specifies details about the scheduled Auto-Tune action. See [
    #   Auto-Tune for Amazon OpenSearch Service ][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html
    #   @return [Types::ScheduledAutoTuneDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AutoTuneDetails AWS API Documentation
    #
    class AutoTuneDetails < Struct.new(
      :scheduled_auto_tune_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the Auto-Tune maintenance schedule. See [ Auto-Tune for
    # Amazon OpenSearch Service ][1] for more information.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html
    #
    # @note When making an API call, you may pass AutoTuneMaintenanceSchedule
    #   data as a hash:
    #
    #       {
    #         start_at: Time.now,
    #         duration: {
    #           value: 1,
    #           unit: "HOURS", # accepts HOURS
    #         },
    #         cron_expression_for_recurrence: "String",
    #       }
    #
    # @!attribute [rw] start_at
    #   The timestamp at which the Auto-Tune maintenance schedule starts.
    #   @return [Time]
    #
    # @!attribute [rw] duration
    #   Specifies maintenance schedule duration: duration value and duration
    #   unit. See [ Auto-Tune for Amazon OpenSearch Service ][1] for more
    #   information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html
    #   @return [Types::Duration]
    #
    # @!attribute [rw] cron_expression_for_recurrence
    #   A cron expression for a recurring maintenance schedule. See [
    #   Auto-Tune for Amazon OpenSearch Service ][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AutoTuneMaintenanceSchedule AWS API Documentation
    #
    class AutoTuneMaintenanceSchedule < Struct.new(
      :start_at,
      :duration,
      :cron_expression_for_recurrence)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Auto-Tune options: the Auto-Tune desired state for the domain,
    # rollback state when disabling Auto-Tune options and list of
    # maintenance schedules.
    #
    # @note When making an API call, you may pass AutoTuneOptions
    #   data as a hash:
    #
    #       {
    #         desired_state: "ENABLED", # accepts ENABLED, DISABLED
    #         rollback_on_disable: "NO_ROLLBACK", # accepts NO_ROLLBACK, DEFAULT_ROLLBACK
    #         maintenance_schedules: [
    #           {
    #             start_at: Time.now,
    #             duration: {
    #               value: 1,
    #               unit: "HOURS", # accepts HOURS
    #             },
    #             cron_expression_for_recurrence: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] desired_state
    #   The Auto-Tune desired state. Valid values are ENABLED and DISABLED.
    #   @return [String]
    #
    # @!attribute [rw] rollback_on_disable
    #   The rollback state while disabling Auto-Tune for the domain. Valid
    #   values are NO\_ROLLBACK and DEFAULT\_ROLLBACK.
    #   @return [String]
    #
    # @!attribute [rw] maintenance_schedules
    #   A list of maintenance schedules. See [ Auto-Tune for Amazon
    #   OpenSearch Service ][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html
    #   @return [Array<Types::AutoTuneMaintenanceSchedule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AutoTuneOptions AWS API Documentation
    #
    class AutoTuneOptions < Struct.new(
      :desired_state,
      :rollback_on_disable,
      :maintenance_schedules)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Auto-Tune options: the Auto-Tune desired state for the domain and
    # list of maintenance schedules.
    #
    # @note When making an API call, you may pass AutoTuneOptionsInput
    #   data as a hash:
    #
    #       {
    #         desired_state: "ENABLED", # accepts ENABLED, DISABLED
    #         maintenance_schedules: [
    #           {
    #             start_at: Time.now,
    #             duration: {
    #               value: 1,
    #               unit: "HOURS", # accepts HOURS
    #             },
    #             cron_expression_for_recurrence: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] desired_state
    #   The Auto-Tune desired state. Valid values are ENABLED and DISABLED.
    #   @return [String]
    #
    # @!attribute [rw] maintenance_schedules
    #   A list of maintenance schedules. See [ Auto-Tune for Amazon
    #   OpenSearch Service ][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html
    #   @return [Array<Types::AutoTuneMaintenanceSchedule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AutoTuneOptionsInput AWS API Documentation
    #
    class AutoTuneOptionsInput < Struct.new(
      :desired_state,
      :maintenance_schedules)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Auto-Tune options: the Auto-Tune desired state for the domain and
    # list of maintenance schedules.
    #
    # @!attribute [rw] state
    #   The `AutoTuneState` for the domain.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message while enabling or disabling Auto-Tune.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AutoTuneOptionsOutput AWS API Documentation
    #
    class AutoTuneOptionsOutput < Struct.new(
      :state,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Auto-Tune status for the domain.
    #
    # @!attribute [rw] options
    #   Specifies Auto-Tune options for the domain.
    #   @return [Types::AutoTuneOptions]
    #
    # @!attribute [rw] status
    #   The status of the Auto-Tune options for the domain.
    #   @return [Types::AutoTuneStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AutoTuneOptionsStatus AWS API Documentation
    #
    class AutoTuneOptionsStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the current Auto-Tune status for the domain.
    #
    # @!attribute [rw] creation_date
    #   The timestamp of the Auto-Tune options creation date.
    #   @return [Time]
    #
    # @!attribute [rw] update_date
    #   The timestamp of when the Auto-Tune options were last updated.
    #   @return [Time]
    #
    # @!attribute [rw] update_version
    #   The latest version of the Auto-Tune options.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The `AutoTuneState` for the domain.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message while enabling or disabling Auto-Tune.
    #   @return [String]
    #
    # @!attribute [rw] pending_deletion
    #   Indicates whether the domain is being deleted.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AutoTuneStatus AWS API Documentation
    #
    class AutoTuneStatus < Struct.new(
      :creation_date,
      :update_date,
      :update_version,
      :state,
      :error_message,
      :pending_deletion)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error occurred while processing the request.
    #
    # @!attribute [rw] message
    #   A description of the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/BaseException AWS API Documentation
    #
    class BaseException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the ` CancelServiceSoftwareUpdate `
    # operation. Specifies the name of the domain that you wish to cancel a
    # service software update on.
    #
    # @note When making an API call, you may pass CancelServiceSoftwareUpdateRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that you want to stop the latest service
    #   software update on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/CancelServiceSoftwareUpdateRequest AWS API Documentation
    #
    class CancelServiceSoftwareUpdateRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a `CancelServiceSoftwareUpdate` operation. Contains the
    # status of the update.
    #
    # @!attribute [rw] service_software_options
    #   The current status of the OpenSearch service software update.
    #   @return [Types::ServiceSoftwareOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/CancelServiceSoftwareUpdateResponse AWS API Documentation
    #
    class CancelServiceSoftwareUpdateResponse < Struct.new(
      :service_software_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies change details of the domain configuration change.
    #
    # @!attribute [rw] change_id
    #   The unique change identifier associated with a specific domain
    #   configuration change.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Contains an optional message associated with the domain
    #   configuration change.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ChangeProgressDetails AWS API Documentation
    #
    class ChangeProgressDetails < Struct.new(
      :change_id,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A progress stage details of a specific domain configuration change.
    #
    # @!attribute [rw] name
    #   The name of the specific progress stage.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The overall status of a specific progress stage.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the progress stage.
    #   @return [String]
    #
    # @!attribute [rw] last_updated
    #   The last updated timestamp of the progress stage.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ChangeProgressStage AWS API Documentation
    #
    class ChangeProgressStage < Struct.new(
      :name,
      :status,
      :description,
      :last_updated)
      SENSITIVE = []
      include Aws::Structure
    end

    # The progress details of a specific domain configuration change.
    #
    # @!attribute [rw] change_id
    #   The unique change identifier associated with a specific domain
    #   configuration change.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time at which the configuration change is made on the domain.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The overall status of the domain configuration change. This field
    #   can take the following values: `PENDING`, `PROCESSING`, `COMPLETED`
    #   and `FAILED`
    #   @return [String]
    #
    # @!attribute [rw] pending_properties
    #   The list of properties involved in the domain configuration change
    #   that are still in pending.
    #   @return [Array<String>]
    #
    # @!attribute [rw] completed_properties
    #   The list of properties involved in the domain configuration change
    #   that are completed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] total_number_of_stages
    #   The total number of stages required for the configuration change.
    #   @return [Integer]
    #
    # @!attribute [rw] change_progress_stages
    #   The specific stages that the domain is going through to perform the
    #   configuration change.
    #   @return [Array<Types::ChangeProgressStage>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ChangeProgressStatusDetails AWS API Documentation
    #
    class ChangeProgressStatusDetails < Struct.new(
      :change_id,
      :start_time,
      :status,
      :pending_properties,
      :completed_properties,
      :total_number_of_stages,
      :change_progress_stages)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for the domain cluster, such as the type and number
    # of instances.
    #
    # @note When making an API call, you may pass ClusterConfig
    #   data as a hash:
    #
    #       {
    #         instance_type: "m3.medium.search", # accepts m3.medium.search, m3.large.search, m3.xlarge.search, m3.2xlarge.search, m4.large.search, m4.xlarge.search, m4.2xlarge.search, m4.4xlarge.search, m4.10xlarge.search, m5.large.search, m5.xlarge.search, m5.2xlarge.search, m5.4xlarge.search, m5.12xlarge.search, m5.24xlarge.search, r5.large.search, r5.xlarge.search, r5.2xlarge.search, r5.4xlarge.search, r5.12xlarge.search, r5.24xlarge.search, c5.large.search, c5.xlarge.search, c5.2xlarge.search, c5.4xlarge.search, c5.9xlarge.search, c5.18xlarge.search, t3.nano.search, t3.micro.search, t3.small.search, t3.medium.search, t3.large.search, t3.xlarge.search, t3.2xlarge.search, ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search, t2.micro.search, t2.small.search, t2.medium.search, r3.large.search, r3.xlarge.search, r3.2xlarge.search, r3.4xlarge.search, r3.8xlarge.search, i2.xlarge.search, i2.2xlarge.search, d2.xlarge.search, d2.2xlarge.search, d2.4xlarge.search, d2.8xlarge.search, c4.large.search, c4.xlarge.search, c4.2xlarge.search, c4.4xlarge.search, c4.8xlarge.search, r4.large.search, r4.xlarge.search, r4.2xlarge.search, r4.4xlarge.search, r4.8xlarge.search, r4.16xlarge.search, i3.large.search, i3.xlarge.search, i3.2xlarge.search, i3.4xlarge.search, i3.8xlarge.search, i3.16xlarge.search, r6g.large.search, r6g.xlarge.search, r6g.2xlarge.search, r6g.4xlarge.search, r6g.8xlarge.search, r6g.12xlarge.search, m6g.large.search, m6g.xlarge.search, m6g.2xlarge.search, m6g.4xlarge.search, m6g.8xlarge.search, m6g.12xlarge.search, c6g.large.search, c6g.xlarge.search, c6g.2xlarge.search, c6g.4xlarge.search, c6g.8xlarge.search, c6g.12xlarge.search, r6gd.large.search, r6gd.xlarge.search, r6gd.2xlarge.search, r6gd.4xlarge.search, r6gd.8xlarge.search, r6gd.12xlarge.search, r6gd.16xlarge.search, t4g.small.search, t4g.medium.search
    #         instance_count: 1,
    #         dedicated_master_enabled: false,
    #         zone_awareness_enabled: false,
    #         zone_awareness_config: {
    #           availability_zone_count: 1,
    #         },
    #         dedicated_master_type: "m3.medium.search", # accepts m3.medium.search, m3.large.search, m3.xlarge.search, m3.2xlarge.search, m4.large.search, m4.xlarge.search, m4.2xlarge.search, m4.4xlarge.search, m4.10xlarge.search, m5.large.search, m5.xlarge.search, m5.2xlarge.search, m5.4xlarge.search, m5.12xlarge.search, m5.24xlarge.search, r5.large.search, r5.xlarge.search, r5.2xlarge.search, r5.4xlarge.search, r5.12xlarge.search, r5.24xlarge.search, c5.large.search, c5.xlarge.search, c5.2xlarge.search, c5.4xlarge.search, c5.9xlarge.search, c5.18xlarge.search, t3.nano.search, t3.micro.search, t3.small.search, t3.medium.search, t3.large.search, t3.xlarge.search, t3.2xlarge.search, ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search, t2.micro.search, t2.small.search, t2.medium.search, r3.large.search, r3.xlarge.search, r3.2xlarge.search, r3.4xlarge.search, r3.8xlarge.search, i2.xlarge.search, i2.2xlarge.search, d2.xlarge.search, d2.2xlarge.search, d2.4xlarge.search, d2.8xlarge.search, c4.large.search, c4.xlarge.search, c4.2xlarge.search, c4.4xlarge.search, c4.8xlarge.search, r4.large.search, r4.xlarge.search, r4.2xlarge.search, r4.4xlarge.search, r4.8xlarge.search, r4.16xlarge.search, i3.large.search, i3.xlarge.search, i3.2xlarge.search, i3.4xlarge.search, i3.8xlarge.search, i3.16xlarge.search, r6g.large.search, r6g.xlarge.search, r6g.2xlarge.search, r6g.4xlarge.search, r6g.8xlarge.search, r6g.12xlarge.search, m6g.large.search, m6g.xlarge.search, m6g.2xlarge.search, m6g.4xlarge.search, m6g.8xlarge.search, m6g.12xlarge.search, c6g.large.search, c6g.xlarge.search, c6g.2xlarge.search, c6g.4xlarge.search, c6g.8xlarge.search, c6g.12xlarge.search, r6gd.large.search, r6gd.xlarge.search, r6gd.2xlarge.search, r6gd.4xlarge.search, r6gd.8xlarge.search, r6gd.12xlarge.search, r6gd.16xlarge.search, t4g.small.search, t4g.medium.search
    #         dedicated_master_count: 1,
    #         warm_enabled: false,
    #         warm_type: "ultrawarm1.medium.search", # accepts ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search
    #         warm_count: 1,
    #         cold_storage_options: {
    #           enabled: false, # required
    #         },
    #       }
    #
    # @!attribute [rw] instance_type
    #   The instance type for an OpenSearch cluster. UltraWarm instance
    #   types are not supported for data instances.
    #   @return [String]
    #
    # @!attribute [rw] instance_count
    #   The number of instances in the specified domain cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] dedicated_master_enabled
    #   A boolean value to indicate whether a dedicated master node is
    #   enabled. See [Dedicated master nodes in Amazon OpenSearch Service
    #   ][1] for more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains.html#managedomains-dedicatedmasternodes
    #   @return [Boolean]
    #
    # @!attribute [rw] zone_awareness_enabled
    #   A boolean value to indicate whether zone awareness is enabled. See
    #   [Configuring a multi-AZ domain in Amazon OpenSearch Service ][1] for
    #   more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-multiaz.html
    #   @return [Boolean]
    #
    # @!attribute [rw] zone_awareness_config
    #   The zone awareness configuration for a domain when zone awareness is
    #   enabled.
    #   @return [Types::ZoneAwarenessConfig]
    #
    # @!attribute [rw] dedicated_master_type
    #   The instance type for a dedicated master node.
    #   @return [String]
    #
    # @!attribute [rw] dedicated_master_count
    #   Total number of dedicated master nodes, active and on standby, for
    #   the cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] warm_enabled
    #   True to enable UltraWarm storage.
    #   @return [Boolean]
    #
    # @!attribute [rw] warm_type
    #   The instance type for the OpenSearch cluster's warm nodes.
    #   @return [String]
    #
    # @!attribute [rw] warm_count
    #   The number of UltraWarm nodes in the cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] cold_storage_options
    #   Specifies the `ColdStorageOptions` config for a Domain
    #   @return [Types::ColdStorageOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ClusterConfig AWS API Documentation
    #
    class ClusterConfig < Struct.new(
      :instance_type,
      :instance_count,
      :dedicated_master_enabled,
      :zone_awareness_enabled,
      :zone_awareness_config,
      :dedicated_master_type,
      :dedicated_master_count,
      :warm_enabled,
      :warm_type,
      :warm_count,
      :cold_storage_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration status for the specified domain.
    #
    # @!attribute [rw] options
    #   The cluster configuration for the specified domain.
    #   @return [Types::ClusterConfig]
    #
    # @!attribute [rw] status
    #   The cluster configuration status for the specified domain.
    #   @return [Types::OptionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ClusterConfigStatus AWS API Documentation
    #
    class ClusterConfigStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options to specify the Cognito user and identity pools for OpenSearch
    # Dashboards authentication. For more information, see [Configuring
    # Amazon Cognito authentication for OpenSearch Dashboards][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opensearch-service/latest/developerguide/cognito-auth.html
    #
    # @note When making an API call, you may pass CognitoOptions
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #         user_pool_id: "UserPoolId",
    #         identity_pool_id: "IdentityPoolId",
    #         role_arn: "RoleArn",
    #       }
    #
    # @!attribute [rw] enabled
    #   The option to enable Cognito for OpenSearch Dashboards
    #   authentication.
    #   @return [Boolean]
    #
    # @!attribute [rw] user_pool_id
    #   The Cognito user pool ID for OpenSearch Dashboards authentication.
    #   @return [String]
    #
    # @!attribute [rw] identity_pool_id
    #   The Cognito identity pool ID for OpenSearch Dashboards
    #   authentication.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The role ARN that provides OpenSearch permissions for accessing
    #   Cognito resources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/CognitoOptions AWS API Documentation
    #
    class CognitoOptions < Struct.new(
      :enabled,
      :user_pool_id,
      :identity_pool_id,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of the Cognito options for the specified domain.
    #
    # @!attribute [rw] options
    #   Cognito options for the specified domain.
    #   @return [Types::CognitoOptions]
    #
    # @!attribute [rw] status
    #   The status of the Cognito options for the specified domain.
    #   @return [Types::OptionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/CognitoOptionsStatus AWS API Documentation
    #
    class CognitoOptionsStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configuration for cold storage options such as enabled
    #
    # @note When making an API call, you may pass ColdStorageOptions
    #   data as a hash:
    #
    #       {
    #         enabled: false, # required
    #       }
    #
    # @!attribute [rw] enabled
    #   Enable cold storage option. Accepted values true or false
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ColdStorageOptions AWS API Documentation
    #
    class ColdStorageOptions < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # A map from an ` EngineVersion ` to a list of compatible `
    # EngineVersion ` s to which the domain can be upgraded.
    #
    # @!attribute [rw] source_version
    #   The current version of OpenSearch a domain is on.
    #   @return [String]
    #
    # @!attribute [rw] target_versions
    #   List of supported OpenSearch versions.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/CompatibleVersionsMap AWS API Documentation
    #
    class CompatibleVersionsMap < Struct.new(
      :source_version,
      :target_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error occurred because the client attempts to remove a resource
    # that is currently in use. Returns HTTP status code 409.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ConflictException AWS API Documentation
    #
    class ConflictException < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CreateDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         engine_version: "VersionString",
    #         cluster_config: {
    #           instance_type: "m3.medium.search", # accepts m3.medium.search, m3.large.search, m3.xlarge.search, m3.2xlarge.search, m4.large.search, m4.xlarge.search, m4.2xlarge.search, m4.4xlarge.search, m4.10xlarge.search, m5.large.search, m5.xlarge.search, m5.2xlarge.search, m5.4xlarge.search, m5.12xlarge.search, m5.24xlarge.search, r5.large.search, r5.xlarge.search, r5.2xlarge.search, r5.4xlarge.search, r5.12xlarge.search, r5.24xlarge.search, c5.large.search, c5.xlarge.search, c5.2xlarge.search, c5.4xlarge.search, c5.9xlarge.search, c5.18xlarge.search, t3.nano.search, t3.micro.search, t3.small.search, t3.medium.search, t3.large.search, t3.xlarge.search, t3.2xlarge.search, ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search, t2.micro.search, t2.small.search, t2.medium.search, r3.large.search, r3.xlarge.search, r3.2xlarge.search, r3.4xlarge.search, r3.8xlarge.search, i2.xlarge.search, i2.2xlarge.search, d2.xlarge.search, d2.2xlarge.search, d2.4xlarge.search, d2.8xlarge.search, c4.large.search, c4.xlarge.search, c4.2xlarge.search, c4.4xlarge.search, c4.8xlarge.search, r4.large.search, r4.xlarge.search, r4.2xlarge.search, r4.4xlarge.search, r4.8xlarge.search, r4.16xlarge.search, i3.large.search, i3.xlarge.search, i3.2xlarge.search, i3.4xlarge.search, i3.8xlarge.search, i3.16xlarge.search, r6g.large.search, r6g.xlarge.search, r6g.2xlarge.search, r6g.4xlarge.search, r6g.8xlarge.search, r6g.12xlarge.search, m6g.large.search, m6g.xlarge.search, m6g.2xlarge.search, m6g.4xlarge.search, m6g.8xlarge.search, m6g.12xlarge.search, c6g.large.search, c6g.xlarge.search, c6g.2xlarge.search, c6g.4xlarge.search, c6g.8xlarge.search, c6g.12xlarge.search, r6gd.large.search, r6gd.xlarge.search, r6gd.2xlarge.search, r6gd.4xlarge.search, r6gd.8xlarge.search, r6gd.12xlarge.search, r6gd.16xlarge.search, t4g.small.search, t4g.medium.search
    #           instance_count: 1,
    #           dedicated_master_enabled: false,
    #           zone_awareness_enabled: false,
    #           zone_awareness_config: {
    #             availability_zone_count: 1,
    #           },
    #           dedicated_master_type: "m3.medium.search", # accepts m3.medium.search, m3.large.search, m3.xlarge.search, m3.2xlarge.search, m4.large.search, m4.xlarge.search, m4.2xlarge.search, m4.4xlarge.search, m4.10xlarge.search, m5.large.search, m5.xlarge.search, m5.2xlarge.search, m5.4xlarge.search, m5.12xlarge.search, m5.24xlarge.search, r5.large.search, r5.xlarge.search, r5.2xlarge.search, r5.4xlarge.search, r5.12xlarge.search, r5.24xlarge.search, c5.large.search, c5.xlarge.search, c5.2xlarge.search, c5.4xlarge.search, c5.9xlarge.search, c5.18xlarge.search, t3.nano.search, t3.micro.search, t3.small.search, t3.medium.search, t3.large.search, t3.xlarge.search, t3.2xlarge.search, ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search, t2.micro.search, t2.small.search, t2.medium.search, r3.large.search, r3.xlarge.search, r3.2xlarge.search, r3.4xlarge.search, r3.8xlarge.search, i2.xlarge.search, i2.2xlarge.search, d2.xlarge.search, d2.2xlarge.search, d2.4xlarge.search, d2.8xlarge.search, c4.large.search, c4.xlarge.search, c4.2xlarge.search, c4.4xlarge.search, c4.8xlarge.search, r4.large.search, r4.xlarge.search, r4.2xlarge.search, r4.4xlarge.search, r4.8xlarge.search, r4.16xlarge.search, i3.large.search, i3.xlarge.search, i3.2xlarge.search, i3.4xlarge.search, i3.8xlarge.search, i3.16xlarge.search, r6g.large.search, r6g.xlarge.search, r6g.2xlarge.search, r6g.4xlarge.search, r6g.8xlarge.search, r6g.12xlarge.search, m6g.large.search, m6g.xlarge.search, m6g.2xlarge.search, m6g.4xlarge.search, m6g.8xlarge.search, m6g.12xlarge.search, c6g.large.search, c6g.xlarge.search, c6g.2xlarge.search, c6g.4xlarge.search, c6g.8xlarge.search, c6g.12xlarge.search, r6gd.large.search, r6gd.xlarge.search, r6gd.2xlarge.search, r6gd.4xlarge.search, r6gd.8xlarge.search, r6gd.12xlarge.search, r6gd.16xlarge.search, t4g.small.search, t4g.medium.search
    #           dedicated_master_count: 1,
    #           warm_enabled: false,
    #           warm_type: "ultrawarm1.medium.search", # accepts ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search
    #           warm_count: 1,
    #           cold_storage_options: {
    #             enabled: false, # required
    #           },
    #         },
    #         ebs_options: {
    #           ebs_enabled: false,
    #           volume_type: "standard", # accepts standard, gp2, io1
    #           volume_size: 1,
    #           iops: 1,
    #         },
    #         access_policies: "PolicyDocument",
    #         snapshot_options: {
    #           automated_snapshot_start_hour: 1,
    #         },
    #         vpc_options: {
    #           subnet_ids: ["String"],
    #           security_group_ids: ["String"],
    #         },
    #         cognito_options: {
    #           enabled: false,
    #           user_pool_id: "UserPoolId",
    #           identity_pool_id: "IdentityPoolId",
    #           role_arn: "RoleArn",
    #         },
    #         encryption_at_rest_options: {
    #           enabled: false,
    #           kms_key_id: "KmsKeyId",
    #         },
    #         node_to_node_encryption_options: {
    #           enabled: false,
    #         },
    #         advanced_options: {
    #           "String" => "String",
    #         },
    #         log_publishing_options: {
    #           "INDEX_SLOW_LOGS" => {
    #             cloud_watch_logs_log_group_arn: "CloudWatchLogsLogGroupArn",
    #             enabled: false,
    #           },
    #         },
    #         domain_endpoint_options: {
    #           enforce_https: false,
    #           tls_security_policy: "Policy-Min-TLS-1-0-2019-07", # accepts Policy-Min-TLS-1-0-2019-07, Policy-Min-TLS-1-2-2019-07
    #           custom_endpoint_enabled: false,
    #           custom_endpoint: "DomainNameFqdn",
    #           custom_endpoint_certificate_arn: "ARN",
    #         },
    #         advanced_security_options: {
    #           enabled: false,
    #           internal_user_database_enabled: false,
    #           master_user_options: {
    #             master_user_arn: "ARN",
    #             master_user_name: "Username",
    #             master_user_password: "Password",
    #           },
    #           saml_options: {
    #             enabled: false,
    #             idp: {
    #               metadata_content: "SAMLMetadata", # required
    #               entity_id: "SAMLEntityId", # required
    #             },
    #             master_user_name: "Username",
    #             master_backend_role: "BackendRole",
    #             subject_key: "String",
    #             roles_key: "String",
    #             session_timeout_minutes: 1,
    #           },
    #           anonymous_auth_enabled: false,
    #         },
    #         tag_list: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         auto_tune_options: {
    #           desired_state: "ENABLED", # accepts ENABLED, DISABLED
    #           maintenance_schedules: [
    #             {
    #               start_at: Time.now,
    #               duration: {
    #                 value: 1,
    #                 unit: "HOURS", # accepts HOURS
    #               },
    #               cron_expression_for_recurrence: "String",
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the Amazon OpenSearch Service domain you're creating.
    #   Domain names are unique across the domains owned by an account
    #   within an AWS region. Domain names must start with a lowercase
    #   letter and can contain the following characters: a-z (lowercase),
    #   0-9, and - (hyphen).
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   String of format Elasticsearch\_X.Y or OpenSearch\_X.Y to specify
    #   the engine version for the Amazon OpenSearch Service domain. For
    #   example, "OpenSearch\_1.0" or "Elasticsearch\_7.9". For more
    #   information, see [Creating and managing Amazon OpenSearch Service
    #   domains ][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomains
    #   @return [String]
    #
    # @!attribute [rw] cluster_config
    #   Configuration options for a domain. Specifies the instance type and
    #   number of instances in the domain.
    #   @return [Types::ClusterConfig]
    #
    # @!attribute [rw] ebs_options
    #   Options to enable, disable, and specify the type and size of EBS
    #   storage volumes.
    #   @return [Types::EBSOptions]
    #
    # @!attribute [rw] access_policies
    #   IAM access policy as a JSON-formatted string.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_options
    #   Option to set time, in UTC format, of the daily automated snapshot.
    #   Default value is 0 hours.
    #   @return [Types::SnapshotOptions]
    #
    # @!attribute [rw] vpc_options
    #   Options to specify the subnets and security groups for a VPC
    #   endpoint. For more information, see [Launching your Amazon
    #   OpenSearch Service domains using a VPC ][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html
    #   @return [Types::VPCOptions]
    #
    # @!attribute [rw] cognito_options
    #   Options to specify the Cognito user and identity pools for
    #   OpenSearch Dashboards authentication. For more information, see
    #   [Configuring Amazon Cognito authentication for OpenSearch
    #   Dashboards][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opensearch-service/latest/developerguide/cognito-auth.html
    #   @return [Types::CognitoOptions]
    #
    # @!attribute [rw] encryption_at_rest_options
    #   Options for encryption of data at rest.
    #   @return [Types::EncryptionAtRestOptions]
    #
    # @!attribute [rw] node_to_node_encryption_options
    #   Node-to-node encryption options.
    #   @return [Types::NodeToNodeEncryptionOptions]
    #
    # @!attribute [rw] advanced_options
    #   Option to allow references to indices in an HTTP request body. Must
    #   be `false` when configuring access to individual sub-resources. By
    #   default, the value is `true`. See [Advanced cluster parameters ][1]
    #   for more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] log_publishing_options
    #   Map of `LogType` and `LogPublishingOption`, each containing options
    #   to publish a given type of OpenSearch log.
    #   @return [Hash<String,Types::LogPublishingOption>]
    #
    # @!attribute [rw] domain_endpoint_options
    #   Options to specify configurations that will be applied to the domain
    #   endpoint.
    #   @return [Types::DomainEndpointOptions]
    #
    # @!attribute [rw] advanced_security_options
    #   Specifies advanced security options.
    #   @return [Types::AdvancedSecurityOptionsInput]
    #
    # @!attribute [rw] tag_list
    #   A list of `Tag` added during domain creation.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] auto_tune_options
    #   Specifies Auto-Tune options.
    #   @return [Types::AutoTuneOptionsInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/CreateDomainRequest AWS API Documentation
    #
    class CreateDomainRequest < Struct.new(
      :domain_name,
      :engine_version,
      :cluster_config,
      :ebs_options,
      :access_policies,
      :snapshot_options,
      :vpc_options,
      :cognito_options,
      :encryption_at_rest_options,
      :node_to_node_encryption_options,
      :advanced_options,
      :log_publishing_options,
      :domain_endpoint_options,
      :advanced_security_options,
      :tag_list,
      :auto_tune_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a `CreateDomain` operation. Contains the status of the
    # newly created Amazon OpenSearch Service domain.
    #
    # @!attribute [rw] domain_status
    #   The status of the newly created domain.
    #   @return [Types::DomainStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/CreateDomainResponse AWS API Documentation
    #
    class CreateDomainResponse < Struct.new(
      :domain_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the ` CreateOutboundConnection `
    # operation.
    #
    # @note When making an API call, you may pass CreateOutboundConnectionRequest
    #   data as a hash:
    #
    #       {
    #         local_domain_info: { # required
    #           aws_domain_information: {
    #             owner_id: "OwnerId",
    #             domain_name: "DomainName", # required
    #             region: "Region",
    #           },
    #         },
    #         remote_domain_info: { # required
    #           aws_domain_information: {
    #             owner_id: "OwnerId",
    #             domain_name: "DomainName", # required
    #             region: "Region",
    #           },
    #         },
    #         connection_alias: "ConnectionAlias", # required
    #       }
    #
    # @!attribute [rw] local_domain_info
    #   The ` AWSDomainInformation ` for the local OpenSearch domain.
    #   @return [Types::DomainInformationContainer]
    #
    # @!attribute [rw] remote_domain_info
    #   The ` AWSDomainInformation ` for the remote OpenSearch domain.
    #   @return [Types::DomainInformationContainer]
    #
    # @!attribute [rw] connection_alias
    #   The connection alias used used by the customer for this
    #   cross-cluster connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/CreateOutboundConnectionRequest AWS API Documentation
    #
    class CreateOutboundConnectionRequest < Struct.new(
      :local_domain_info,
      :remote_domain_info,
      :connection_alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a ` CreateOutboundConnection ` request. Contains the
    # details about the newly created cross-cluster connection.
    #
    # @!attribute [rw] local_domain_info
    #   The ` AWSDomainInformation ` for the local OpenSearch domain.
    #   @return [Types::DomainInformationContainer]
    #
    # @!attribute [rw] remote_domain_info
    #   The ` AWSDomainInformation ` for the remote OpenSearch domain.
    #   @return [Types::DomainInformationContainer]
    #
    # @!attribute [rw] connection_alias
    #   The connection alias provided during the create connection request.
    #   @return [String]
    #
    # @!attribute [rw] connection_status
    #   The ` OutboundConnectionStatus ` for the newly created connection.
    #   @return [Types::OutboundConnectionStatus]
    #
    # @!attribute [rw] connection_id
    #   The unique ID for the created outbound connection, which is used for
    #   subsequent operations on the connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/CreateOutboundConnectionResponse AWS API Documentation
    #
    class CreateOutboundConnectionResponse < Struct.new(
      :local_domain_info,
      :remote_domain_info,
      :connection_alias,
      :connection_status,
      :connection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for request parameters to the ` CreatePackage ` operation.
    #
    # @note When making an API call, you may pass CreatePackageRequest
    #   data as a hash:
    #
    #       {
    #         package_name: "PackageName", # required
    #         package_type: "TXT-DICTIONARY", # required, accepts TXT-DICTIONARY
    #         package_description: "PackageDescription",
    #         package_source: { # required
    #           s3_bucket_name: "S3BucketName",
    #           s3_key: "S3Key",
    #         },
    #       }
    #
    # @!attribute [rw] package_name
    #   Unique identifier for the package.
    #   @return [String]
    #
    # @!attribute [rw] package_type
    #   Type of package. Currently supports only TXT-DICTIONARY.
    #   @return [String]
    #
    # @!attribute [rw] package_description
    #   Description of the package.
    #   @return [String]
    #
    # @!attribute [rw] package_source
    #   The Amazon S3 location from which to import the package.
    #   @return [Types::PackageSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/CreatePackageRequest AWS API Documentation
    #
    class CreatePackageRequest < Struct.new(
      :package_name,
      :package_type,
      :package_description,
      :package_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the response returned by the ` CreatePackage `
    # operation.
    #
    # @!attribute [rw] package_details
    #   Information about the package.
    #   @return [Types::PackageDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/CreatePackageResponse AWS API Documentation
    #
    class CreatePackageResponse < Struct.new(
      :package_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the ` DeleteDomain ` operation.
    # Specifies the name of the domain you want to delete.
    #
    # @note When making an API call, you may pass DeleteDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain you want to permanently delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DeleteDomainRequest AWS API Documentation
    #
    class DeleteDomainRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a `DeleteDomain` request. Contains the status of the
    # pending deletion, or a "domain not found" error if the domain and
    # all of its resources have been deleted.
    #
    # @!attribute [rw] domain_status
    #   The status of the domain being deleted.
    #   @return [Types::DomainStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DeleteDomainResponse AWS API Documentation
    #
    class DeleteDomainResponse < Struct.new(
      :domain_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the ` DeleteInboundConnection `
    # operation.
    #
    # @note When making an API call, you may pass DeleteInboundConnectionRequest
    #   data as a hash:
    #
    #       {
    #         connection_id: "ConnectionId", # required
    #       }
    #
    # @!attribute [rw] connection_id
    #   The ID of the inbound connection to permanently delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DeleteInboundConnectionRequest AWS API Documentation
    #
    class DeleteInboundConnectionRequest < Struct.new(
      :connection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a ` DeleteInboundConnection ` operation. Contains
    # details about the deleted inbound connection.
    #
    # @!attribute [rw] connection
    #   The ` InboundConnection ` of the deleted inbound connection.
    #   @return [Types::InboundConnection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DeleteInboundConnectionResponse AWS API Documentation
    #
    class DeleteInboundConnectionResponse < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the ` DeleteOutboundConnection `
    # operation.
    #
    # @note When making an API call, you may pass DeleteOutboundConnectionRequest
    #   data as a hash:
    #
    #       {
    #         connection_id: "ConnectionId", # required
    #       }
    #
    # @!attribute [rw] connection_id
    #   The ID of the outbound connection you want to permanently delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DeleteOutboundConnectionRequest AWS API Documentation
    #
    class DeleteOutboundConnectionRequest < Struct.new(
      :connection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a ` DeleteOutboundConnection ` operation. Contains
    # details about the deleted outbound connection.
    #
    # @!attribute [rw] connection
    #   The ` OutboundConnection ` of the deleted outbound connection.
    #   @return [Types::OutboundConnection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DeleteOutboundConnectionResponse AWS API Documentation
    #
    class DeleteOutboundConnectionResponse < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the request parameters to the ` DeletePackage `
    # operation.
    #
    # @note When making an API call, you may pass DeletePackageRequest
    #   data as a hash:
    #
    #       {
    #         package_id: "PackageID", # required
    #       }
    #
    # @!attribute [rw] package_id
    #   The internal ID of the package you want to delete. Use
    #   `DescribePackages` to find this value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DeletePackageRequest AWS API Documentation
    #
    class DeletePackageRequest < Struct.new(
      :package_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the response parameters to the ` DeletePackage `
    # operation.
    #
    # @!attribute [rw] package_details
    #   `PackageDetails`
    #   @return [Types::PackageDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DeletePackageResponse AWS API Documentation
    #
    class DeletePackageResponse < Struct.new(
      :package_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the `DescribeDomainAutoTunes`
    # operation.
    #
    # @note When making an API call, you may pass DescribeDomainAutoTunesRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] domain_name
    #   The domain name for which you want Auto-Tune action details.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Set this value to limit the number of results returned. If not
    #   specified, defaults to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   NextToken is sent in case the earlier API call results contain the
    #   NextToken. Used for pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeDomainAutoTunesRequest AWS API Documentation
    #
    class DescribeDomainAutoTunesRequest < Struct.new(
      :domain_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a `DescribeDomainAutoTunes` request. See [ Auto-Tune for
    # Amazon OpenSearch Service ][1] for more information.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html
    #
    # @!attribute [rw] auto_tunes
    #   The list of setting adjustments that Auto-Tune has made to the
    #   domain. See [ Auto-Tune for Amazon OpenSearch Service ][1] for more
    #   information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html
    #   @return [Array<Types::AutoTune>]
    #
    # @!attribute [rw] next_token
    #   An identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeDomainAutoTunesResponse AWS API Documentation
    #
    class DescribeDomainAutoTunesResponse < Struct.new(
      :auto_tunes,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the `DescribeDomainChangeProgress`
    # operation. Specifies the domain name and optional change specific
    # identity for which you want progress information.
    #
    # @note When making an API call, you may pass DescribeDomainChangeProgressRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         change_id: "GUID",
    #       }
    #
    # @!attribute [rw] domain_name
    #   The domain you want to get the progress information about.
    #   @return [String]
    #
    # @!attribute [rw] change_id
    #   The specific change ID for which you want to get progress
    #   information. This is an optional parameter. If omitted, the service
    #   returns information about the most recent configuration change.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeDomainChangeProgressRequest AWS API Documentation
    #
    class DescribeDomainChangeProgressRequest < Struct.new(
      :domain_name,
      :change_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a `DescribeDomainChangeProgress` request. Contains the
    # progress information of the requested domain change.
    #
    # @!attribute [rw] change_progress_status
    #   Progress information for the configuration change that is requested
    #   in the `DescribeDomainChangeProgress` request.
    #   @return [Types::ChangeProgressStatusDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeDomainChangeProgressResponse AWS API Documentation
    #
    class DescribeDomainChangeProgressResponse < Struct.new(
      :change_progress_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the `DescribeDomainConfig` operation.
    # Specifies the domain name for which you want configuration
    # information.
    #
    # @note When making an API call, you may pass DescribeDomainConfigRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The domain you want to get information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeDomainConfigRequest AWS API Documentation
    #
    class DescribeDomainConfigRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a `DescribeDomainConfig` request. Contains the
    # configuration information of the requested domain.
    #
    # @!attribute [rw] domain_config
    #   The configuration information of the domain requested in the
    #   `DescribeDomainConfig` request.
    #   @return [Types::DomainConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeDomainConfigResponse AWS API Documentation
    #
    class DescribeDomainConfigResponse < Struct.new(
      :domain_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the ` DescribeDomain ` operation.
    #
    # @note When making an API call, you may pass DescribeDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain for which you want information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeDomainRequest AWS API Documentation
    #
    class DescribeDomainRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a `DescribeDomain` request. Contains the status of the
    # domain specified in the request.
    #
    # @!attribute [rw] domain_status
    #   The current status of the domain.
    #   @return [Types::DomainStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeDomainResponse AWS API Documentation
    #
    class DescribeDomainResponse < Struct.new(
      :domain_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the ` DescribeDomains ` operation. By
    # default, the API returns the status of all domains.
    #
    # @note When making an API call, you may pass DescribeDomainsRequest
    #   data as a hash:
    #
    #       {
    #         domain_names: ["DomainName"], # required
    #       }
    #
    # @!attribute [rw] domain_names
    #   The domains for which you want information.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeDomainsRequest AWS API Documentation
    #
    class DescribeDomainsRequest < Struct.new(
      :domain_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a `DescribeDomains` request. Contains the status of the
    # specified domains or all domains owned by the account.
    #
    # @!attribute [rw] domain_status_list
    #   The status of the domains requested in the `DescribeDomains`
    #   request.
    #   @return [Array<Types::DomainStatus>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeDomainsResponse AWS API Documentation
    #
    class DescribeDomainsResponse < Struct.new(
      :domain_status_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the ` DescribeInboundConnections `
    # operation.
    #
    # @note When making an API call, you may pass DescribeInboundConnectionsRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "NonEmptyString",
    #             values: ["NonEmptyString"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] filters
    #   A list of filters used to match properties for inbound cross-cluster
    #   connections. Available ` Filter ` values are: * connection-id
    #   * local-domain-info.domain-name
    #   * local-domain-info.owner-id
    #   * local-domain-info.region
    #   * remote-domain-info.domain-name
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   Set this value to limit the number of results returned. If not
    #   specified, defaults to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If more results are available and NextToken is present, make the
    #   next request to the same API with the received NextToken to paginate
    #   the remaining results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeInboundConnectionsRequest AWS API Documentation
    #
    class DescribeInboundConnectionsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a ` DescribeInboundConnections ` request. Contains a
    # list of connections matching the filter criteria.
    #
    # @!attribute [rw] connections
    #   A list of ` InboundConnection ` matching the specified filter
    #   criteria.
    #   @return [Array<Types::InboundConnection>]
    #
    # @!attribute [rw] next_token
    #   If more results are available and NextToken is present, make the
    #   next request to the same API with the received NextToken to paginate
    #   the remaining results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeInboundConnectionsResponse AWS API Documentation
    #
    class DescribeInboundConnectionsResponse < Struct.new(
      :connections,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the ` DescribeInstanceTypeLimits `
    # operation.
    #
    # @note When making an API call, you may pass DescribeInstanceTypeLimitsRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName",
    #         instance_type: "m3.medium.search", # required, accepts m3.medium.search, m3.large.search, m3.xlarge.search, m3.2xlarge.search, m4.large.search, m4.xlarge.search, m4.2xlarge.search, m4.4xlarge.search, m4.10xlarge.search, m5.large.search, m5.xlarge.search, m5.2xlarge.search, m5.4xlarge.search, m5.12xlarge.search, m5.24xlarge.search, r5.large.search, r5.xlarge.search, r5.2xlarge.search, r5.4xlarge.search, r5.12xlarge.search, r5.24xlarge.search, c5.large.search, c5.xlarge.search, c5.2xlarge.search, c5.4xlarge.search, c5.9xlarge.search, c5.18xlarge.search, t3.nano.search, t3.micro.search, t3.small.search, t3.medium.search, t3.large.search, t3.xlarge.search, t3.2xlarge.search, ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search, t2.micro.search, t2.small.search, t2.medium.search, r3.large.search, r3.xlarge.search, r3.2xlarge.search, r3.4xlarge.search, r3.8xlarge.search, i2.xlarge.search, i2.2xlarge.search, d2.xlarge.search, d2.2xlarge.search, d2.4xlarge.search, d2.8xlarge.search, c4.large.search, c4.xlarge.search, c4.2xlarge.search, c4.4xlarge.search, c4.8xlarge.search, r4.large.search, r4.xlarge.search, r4.2xlarge.search, r4.4xlarge.search, r4.8xlarge.search, r4.16xlarge.search, i3.large.search, i3.xlarge.search, i3.2xlarge.search, i3.4xlarge.search, i3.8xlarge.search, i3.16xlarge.search, r6g.large.search, r6g.xlarge.search, r6g.2xlarge.search, r6g.4xlarge.search, r6g.8xlarge.search, r6g.12xlarge.search, m6g.large.search, m6g.xlarge.search, m6g.2xlarge.search, m6g.4xlarge.search, m6g.8xlarge.search, m6g.12xlarge.search, c6g.large.search, c6g.xlarge.search, c6g.2xlarge.search, c6g.4xlarge.search, c6g.8xlarge.search, c6g.12xlarge.search, r6gd.large.search, r6gd.xlarge.search, r6gd.2xlarge.search, r6gd.4xlarge.search, r6gd.8xlarge.search, r6gd.12xlarge.search, r6gd.16xlarge.search, t4g.small.search, t4g.medium.search
    #         engine_version: "VersionString", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain you want to modify. Only include this value
    #   if you're querying OpenSearch ` Limits ` for an existing domain.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type for an OpenSearch cluster for which OpenSearch `
    #   Limits ` are needed.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   Version of OpenSearch for which ` Limits ` are needed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeInstanceTypeLimitsRequest AWS API Documentation
    #
    class DescribeInstanceTypeLimitsRequest < Struct.new(
      :domain_name,
      :instance_type,
      :engine_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters received from the `
    # DescribeInstanceTypeLimits ` operation.
    #
    # @!attribute [rw] limits_by_role
    #   The role of a given instance and all applicable limits. The role
    #   performed by a given OpenSearch instance can be one of the
    #   following: * data: If the given InstanceType is used as a data node
    #   * master: If the given InstanceType is used as a master node
    #   * ultra\_warm: If the given InstanceType is used as a warm node
    #   @return [Hash<String,Types::Limits>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeInstanceTypeLimitsResponse AWS API Documentation
    #
    class DescribeInstanceTypeLimitsResponse < Struct.new(
      :limits_by_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the ` DescribeOutboundConnections `
    # operation.
    #
    # @note When making an API call, you may pass DescribeOutboundConnectionsRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "NonEmptyString",
    #             values: ["NonEmptyString"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] filters
    #   A list of filters used to match properties for outbound
    #   cross-cluster connections. Available ` Filter ` names for this
    #   operation are: * connection-id
    #   * remote-domain-info.domain-name
    #   * remote-domain-info.owner-id
    #   * remote-domain-info.region
    #   * local-domain-info.domain-name
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   Set this value to limit the number of results returned. If not
    #   specified, defaults to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   NextToken is sent in case the earlier API call results contain the
    #   NextToken parameter. Used for pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeOutboundConnectionsRequest AWS API Documentation
    #
    class DescribeOutboundConnectionsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a ` DescribeOutboundConnections ` request. Contains the
    # list of connections matching the filter criteria.
    #
    # @!attribute [rw] connections
    #   A list of ` OutboundConnection ` matching the specified filter
    #   criteria.
    #   @return [Array<Types::OutboundConnection>]
    #
    # @!attribute [rw] next_token
    #   If more results are available and NextToken is present, make the
    #   next request to the same API with the received NextToken to paginate
    #   the remaining results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeOutboundConnectionsResponse AWS API Documentation
    #
    class DescribeOutboundConnectionsResponse < Struct.new(
      :connections,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter to apply to the `DescribePackage` response.
    #
    # @note When making an API call, you may pass DescribePackagesFilter
    #   data as a hash:
    #
    #       {
    #         name: "PackageID", # accepts PackageID, PackageName, PackageStatus
    #         value: ["DescribePackagesFilterValue"],
    #       }
    #
    # @!attribute [rw] name
    #   Any field from `PackageDetails`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A list of values for the specified field.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribePackagesFilter AWS API Documentation
    #
    class DescribePackagesFilter < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the request parameters to the ` DescribePackage `
    # operation.
    #
    # @note When making an API call, you may pass DescribePackagesRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "PackageID", # accepts PackageID, PackageName, PackageStatus
    #             value: ["DescribePackagesFilterValue"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] filters
    #   Only returns packages that match the `DescribePackagesFilterList`
    #   values.
    #   @return [Array<Types::DescribePackagesFilter>]
    #
    # @!attribute [rw] max_results
    #   Limits results to a maximum number of packages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Used for pagination. Only necessary if a previous API call includes
    #   a non-null NextToken value. If provided, returns results for the
    #   next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribePackagesRequest AWS API Documentation
    #
    class DescribePackagesRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the response returned by the ` DescribePackages `
    # operation.
    #
    # @!attribute [rw] package_details_list
    #   List of `PackageDetails` objects.
    #   @return [Array<Types::PackageDetails>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribePackagesResponse AWS API Documentation
    #
    class DescribePackagesResponse < Struct.new(
      :package_details_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for parameters to `DescribeReservedInstanceOfferings`
    #
    # @note When making an API call, you may pass DescribeReservedInstanceOfferingsRequest
    #   data as a hash:
    #
    #       {
    #         reserved_instance_offering_id: "GUID",
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] reserved_instance_offering_id
    #   The offering identifier filter value. Use this parameter to show
    #   only the available offering that matches the specified reservation
    #   identifier.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Set this value to limit the number of results returned. If not
    #   specified, defaults to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeReservedInstanceOfferingsRequest AWS API Documentation
    #
    class DescribeReservedInstanceOfferingsRequest < Struct.new(
      :reserved_instance_offering_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for results from `DescribeReservedInstanceOfferings`
    #
    # @!attribute [rw] next_token
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] reserved_instance_offerings
    #   List of reserved OpenSearch instance offerings
    #   @return [Array<Types::ReservedInstanceOffering>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeReservedInstanceOfferingsResponse AWS API Documentation
    #
    class DescribeReservedInstanceOfferingsResponse < Struct.new(
      :next_token,
      :reserved_instance_offerings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for parameters to `DescribeReservedInstances`
    #
    # @note When making an API call, you may pass DescribeReservedInstancesRequest
    #   data as a hash:
    #
    #       {
    #         reserved_instance_id: "GUID",
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] reserved_instance_id
    #   The reserved instance identifier filter value. Use this parameter to
    #   show only the reservation that matches the specified reserved
    #   OpenSearch instance ID.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Set this value to limit the number of results returned. If not
    #   specified, defaults to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeReservedInstancesRequest AWS API Documentation
    #
    class DescribeReservedInstancesRequest < Struct.new(
      :reserved_instance_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for results from `DescribeReservedInstances`
    #
    # @!attribute [rw] next_token
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] reserved_instances
    #   List of reserved OpenSearch instances.
    #   @return [Array<Types::ReservedInstance>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeReservedInstancesResponse AWS API Documentation
    #
    class DescribeReservedInstancesResponse < Struct.new(
      :next_token,
      :reserved_instances)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error occured because the client wanted to access a not supported
    # operation. Gives http status code of 409.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DisabledOperationException AWS API Documentation
    #
    class DisabledOperationException < Aws::EmptyStructure; end

    # Container for the request parameters to the ` DissociatePackage `
    # operation.
    #
    # @note When making an API call, you may pass DissociatePackageRequest
    #   data as a hash:
    #
    #       {
    #         package_id: "PackageID", # required
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] package_id
    #   The internal ID of the package to associate with a domain. Use
    #   `DescribePackages` to find this value.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The name of the domain to associate the package with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DissociatePackageRequest AWS API Documentation
    #
    class DissociatePackageRequest < Struct.new(
      :package_id,
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the response returned by ` DissociatePackage `
    # operation.
    #
    # @!attribute [rw] domain_package_details
    #   `DomainPackageDetails`
    #   @return [Types::DomainPackageDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DissociatePackageResponse AWS API Documentation
    #
    class DissociatePackageResponse < Struct.new(
      :domain_package_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of a domain.
    #
    # @!attribute [rw] engine_version
    #   String of format Elasticsearch\_X.Y or OpenSearch\_X.Y to specify
    #   the engine version for the OpenSearch or Elasticsearch domain.
    #   @return [Types::VersionStatus]
    #
    # @!attribute [rw] cluster_config
    #   The `ClusterConfig` for the domain.
    #   @return [Types::ClusterConfigStatus]
    #
    # @!attribute [rw] ebs_options
    #   The `EBSOptions` for the domain.
    #   @return [Types::EBSOptionsStatus]
    #
    # @!attribute [rw] access_policies
    #   IAM access policy as a JSON-formatted string.
    #   @return [Types::AccessPoliciesStatus]
    #
    # @!attribute [rw] snapshot_options
    #   The `SnapshotOptions` for the domain.
    #   @return [Types::SnapshotOptionsStatus]
    #
    # @!attribute [rw] vpc_options
    #   The `VPCOptions` for the specified domain. For more information, see
    #   [ Launching your Amazon OpenSearch Service domains using a VPC][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html
    #   @return [Types::VPCDerivedInfoStatus]
    #
    # @!attribute [rw] cognito_options
    #   The `CognitoOptions` for the specified domain. For more information,
    #   see [Configuring Amazon Cognito authentication for OpenSearch
    #   Dashboards][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opensearch-service/latest/developerguide/cognito-auth.html
    #   @return [Types::CognitoOptionsStatus]
    #
    # @!attribute [rw] encryption_at_rest_options
    #   The `EncryptionAtRestOptions` for the domain.
    #   @return [Types::EncryptionAtRestOptionsStatus]
    #
    # @!attribute [rw] node_to_node_encryption_options
    #   The `NodeToNodeEncryptionOptions` for the domain.
    #   @return [Types::NodeToNodeEncryptionOptionsStatus]
    #
    # @!attribute [rw] advanced_options
    #   The `AdvancedOptions` for the domain. See [Advanced options ][1] for
    #   more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options
    #   @return [Types::AdvancedOptionsStatus]
    #
    # @!attribute [rw] log_publishing_options
    #   Log publishing options for the given domain.
    #   @return [Types::LogPublishingOptionsStatus]
    #
    # @!attribute [rw] domain_endpoint_options
    #   The `DomainEndpointOptions` for the domain.
    #   @return [Types::DomainEndpointOptionsStatus]
    #
    # @!attribute [rw] advanced_security_options
    #   Specifies `AdvancedSecurityOptions` for the domain.
    #   @return [Types::AdvancedSecurityOptionsStatus]
    #
    # @!attribute [rw] auto_tune_options
    #   Specifies `AutoTuneOptions` for the domain.
    #   @return [Types::AutoTuneOptionsStatus]
    #
    # @!attribute [rw] change_progress_details
    #   Specifies change details of the domain configuration change.
    #   @return [Types::ChangeProgressDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DomainConfig AWS API Documentation
    #
    class DomainConfig < Struct.new(
      :engine_version,
      :cluster_config,
      :ebs_options,
      :access_policies,
      :snapshot_options,
      :vpc_options,
      :cognito_options,
      :encryption_at_rest_options,
      :node_to_node_encryption_options,
      :advanced_options,
      :log_publishing_options,
      :domain_endpoint_options,
      :advanced_security_options,
      :auto_tune_options,
      :change_progress_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options to configure the endpoint for the domain.
    #
    # @note When making an API call, you may pass DomainEndpointOptions
    #   data as a hash:
    #
    #       {
    #         enforce_https: false,
    #         tls_security_policy: "Policy-Min-TLS-1-0-2019-07", # accepts Policy-Min-TLS-1-0-2019-07, Policy-Min-TLS-1-2-2019-07
    #         custom_endpoint_enabled: false,
    #         custom_endpoint: "DomainNameFqdn",
    #         custom_endpoint_certificate_arn: "ARN",
    #       }
    #
    # @!attribute [rw] enforce_https
    #   Whether only HTTPS endpoint should be enabled for the domain.
    #   @return [Boolean]
    #
    # @!attribute [rw] tls_security_policy
    #   Specify the TLS security policy to apply to the HTTPS endpoint of
    #   the domain.
    #    Can be one of the following values: *
    #   **Policy-Min-TLS-1-0-2019-07:** TLS security policy which supports
    #     TLSv1.0 and higher.
    #   * **Policy-Min-TLS-1-2-2019-07:** TLS security policy which supports
    #     only TLSv1.2
    #   @return [String]
    #
    # @!attribute [rw] custom_endpoint_enabled
    #   Whether to enable a custom endpoint for the domain.
    #   @return [Boolean]
    #
    # @!attribute [rw] custom_endpoint
    #   The fully qualified domain for your custom endpoint.
    #   @return [String]
    #
    # @!attribute [rw] custom_endpoint_certificate_arn
    #   The ACM certificate ARN for your custom endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DomainEndpointOptions AWS API Documentation
    #
    class DomainEndpointOptions < Struct.new(
      :enforce_https,
      :tls_security_policy,
      :custom_endpoint_enabled,
      :custom_endpoint,
      :custom_endpoint_certificate_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configured endpoint options for the domain and their current
    # status.
    #
    # @!attribute [rw] options
    #   Options to configure the endpoint for the domain.
    #   @return [Types::DomainEndpointOptions]
    #
    # @!attribute [rw] status
    #   The status of the endpoint options for the domain. See
    #   `OptionStatus` for the status information that's included.
    #   @return [Types::OptionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DomainEndpointOptionsStatus AWS API Documentation
    #
    class DomainEndpointOptionsStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The `DomainName`.
    #   @return [String]
    #
    # @!attribute [rw] engine_type
    #   Specifies the `EngineType` of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DomainInfo AWS API Documentation
    #
    class DomainInfo < Struct.new(
      :domain_name,
      :engine_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DomainInformationContainer
    #   data as a hash:
    #
    #       {
    #         aws_domain_information: {
    #           owner_id: "OwnerId",
    #           domain_name: "DomainName", # required
    #           region: "Region",
    #         },
    #       }
    #
    # @!attribute [rw] aws_domain_information
    #   @return [Types::AWSDomainInformation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DomainInformationContainer AWS API Documentation
    #
    class DomainInformationContainer < Struct.new(
      :aws_domain_information)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information on a package associated with a domain.
    #
    # @!attribute [rw] package_id
    #   The internal ID of the package.
    #   @return [String]
    #
    # @!attribute [rw] package_name
    #   User-specified name of the package.
    #   @return [String]
    #
    # @!attribute [rw] package_type
    #   Currently supports only TXT-DICTIONARY.
    #   @return [String]
    #
    # @!attribute [rw] last_updated
    #   The timestamp of the most recent update to the package association
    #   status.
    #   @return [Time]
    #
    # @!attribute [rw] domain_name
    #   The name of the domain you've associated a package with.
    #   @return [String]
    #
    # @!attribute [rw] domain_package_status
    #   State of the association. Values are ASSOCIATING,
    #   ASSOCIATION\_FAILED, ACTIVE, DISSOCIATING, and DISSOCIATION\_FAILED.
    #   @return [String]
    #
    # @!attribute [rw] package_version
    #   @return [String]
    #
    # @!attribute [rw] reference_path
    #   The relative path on Amazon OpenSearch Service nodes, which can be
    #   used as synonym\_path when the package is a synonym file.
    #   @return [String]
    #
    # @!attribute [rw] error_details
    #   Additional information if the package is in an error state. Null
    #   otherwise.
    #   @return [Types::ErrorDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DomainPackageDetails AWS API Documentation
    #
    class DomainPackageDetails < Struct.new(
      :package_id,
      :package_name,
      :package_type,
      :last_updated,
      :domain_name,
      :domain_package_status,
      :package_version,
      :reference_path,
      :error_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # The current status of a domain.
    #
    # @!attribute [rw] domain_id
    #   The unique identifier for the specified domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The name of a domain. Domain names are unique across the domains
    #   owned by an account within an AWS region. Domain names start with a
    #   letter or number and can contain the following characters: a-z
    #   (lowercase), 0-9, and - (hyphen).
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of a domain. See [IAM identifiers
    #   ][1] in the *AWS Identity and Access Management User Guide* for more
    #   information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] created
    #   The domain creation status. `True` if the creation of a domain is
    #   complete. ` False ` if domain creation is still in progress.
    #   @return [Boolean]
    #
    # @!attribute [rw] deleted
    #   The domain deletion status. `True` if a delete request has been
    #   received for the domain but resource cleanup is still in progress.
    #   `False` if the domain has not been deleted. Once domain deletion is
    #   complete, the status of the domain is no longer returned.
    #   @return [Boolean]
    #
    # @!attribute [rw] endpoint
    #   The domain endpoint that you use to submit index and search
    #   requests.
    #   @return [String]
    #
    # @!attribute [rw] endpoints
    #   Map containing the domain endpoints used to submit index and search
    #   requests. Example `key, value`\:
    #   `'vpc','vpc-endpoint-h2dsd34efgyghrtguk5gt6j2foh4.us-east-1.es.amazonaws.com'`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] processing
    #   The status of the domain configuration. `True` if Amazon OpenSearch
    #   Service is processing configuration changes. `False` if the
    #   configuration is active.
    #   @return [Boolean]
    #
    # @!attribute [rw] upgrade_processing
    #   The status of a domain version upgrade. `True` if Amazon OpenSearch
    #   Service is undergoing a version upgrade. `False` if the
    #   configuration is active.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   @return [String]
    #
    # @!attribute [rw] cluster_config
    #   The type and number of instances in the domain.
    #   @return [Types::ClusterConfig]
    #
    # @!attribute [rw] ebs_options
    #   The `EBSOptions` for the specified domain.
    #   @return [Types::EBSOptions]
    #
    # @!attribute [rw] access_policies
    #   IAM access policy as a JSON-formatted string.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_options
    #   The status of the `SnapshotOptions`.
    #   @return [Types::SnapshotOptions]
    #
    # @!attribute [rw] vpc_options
    #   The `VPCOptions` for the specified domain. For more information, see
    #   [ Launching your Amazon OpenSearch Service domains using a VPC][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html
    #   @return [Types::VPCDerivedInfo]
    #
    # @!attribute [rw] cognito_options
    #   The `CognitoOptions` for the specified domain. For more information,
    #   see [Configuring Amazon Cognito authentication for OpenSearch
    #   Dashboards][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opensearch-service/latest/developerguide/cognito-auth.html
    #   @return [Types::CognitoOptions]
    #
    # @!attribute [rw] encryption_at_rest_options
    #   The status of the `EncryptionAtRestOptions`.
    #   @return [Types::EncryptionAtRestOptions]
    #
    # @!attribute [rw] node_to_node_encryption_options
    #   The status of the `NodeToNodeEncryptionOptions`.
    #   @return [Types::NodeToNodeEncryptionOptions]
    #
    # @!attribute [rw] advanced_options
    #   The status of the `AdvancedOptions`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] log_publishing_options
    #   Log publishing options for the given domain.
    #   @return [Hash<String,Types::LogPublishingOption>]
    #
    # @!attribute [rw] service_software_options
    #   The current status of the domain's service software.
    #   @return [Types::ServiceSoftwareOptions]
    #
    # @!attribute [rw] domain_endpoint_options
    #   The current status of the domain's endpoint options.
    #   @return [Types::DomainEndpointOptions]
    #
    # @!attribute [rw] advanced_security_options
    #   The current status of the domain's advanced security options.
    #   @return [Types::AdvancedSecurityOptions]
    #
    # @!attribute [rw] auto_tune_options
    #   The current status of the domain's Auto-Tune options.
    #   @return [Types::AutoTuneOptionsOutput]
    #
    # @!attribute [rw] change_progress_details
    #   Specifies change details of the domain configuration change.
    #   @return [Types::ChangeProgressDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DomainStatus AWS API Documentation
    #
    class DomainStatus < Struct.new(
      :domain_id,
      :domain_name,
      :arn,
      :created,
      :deleted,
      :endpoint,
      :endpoints,
      :processing,
      :upgrade_processing,
      :engine_version,
      :cluster_config,
      :ebs_options,
      :access_policies,
      :snapshot_options,
      :vpc_options,
      :cognito_options,
      :encryption_at_rest_options,
      :node_to_node_encryption_options,
      :advanced_options,
      :log_publishing_options,
      :service_software_options,
      :domain_endpoint_options,
      :advanced_security_options,
      :auto_tune_options,
      :change_progress_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployment_type
    #   Specifies the way in which Amazon OpenSearch Service applies the
    #   update. Possible responses are `Blue/Green` (the update requires a
    #   blue/green deployment), `DynamicUpdate` (no blue/green required),
    #   `Undetermined` (the domain is undergoing an update and can't
    #   predict the deployment type; try again after the update is
    #   complete), and `None` (the request doesn't include any
    #   configuration changes).
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Contains an optional message associated with the DryRunResults.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DryRunResults AWS API Documentation
    #
    class DryRunResults < Struct.new(
      :deployment_type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maintenance schedule duration: duration value and duration unit.
    # See [ Auto-Tune for Amazon OpenSearch Service ][1] for more
    # information.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html
    #
    # @note When making an API call, you may pass Duration
    #   data as a hash:
    #
    #       {
    #         value: 1,
    #         unit: "HOURS", # accepts HOURS
    #       }
    #
    # @!attribute [rw] value
    #   Integer to specify the value of a maintenance schedule duration. See
    #   [ Auto-Tune for Amazon OpenSearch Service ][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html
    #   @return [Integer]
    #
    # @!attribute [rw] unit
    #   The unit of a maintenance schedule duration. Valid value is HOURS.
    #   See [ Auto-Tune for Amazon OpenSearch Service ][1] for more
    #   information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/Duration AWS API Documentation
    #
    class Duration < Struct.new(
      :value,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options to enable, disable, and specify the properties of EBS storage
    # volumes.
    #
    # @note When making an API call, you may pass EBSOptions
    #   data as a hash:
    #
    #       {
    #         ebs_enabled: false,
    #         volume_type: "standard", # accepts standard, gp2, io1
    #         volume_size: 1,
    #         iops: 1,
    #       }
    #
    # @!attribute [rw] ebs_enabled
    #   Whether EBS-based storage is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] volume_type
    #   The volume type for EBS-based storage.
    #   @return [String]
    #
    # @!attribute [rw] volume_size
    #   Integer to specify the size of an EBS volume.
    #   @return [Integer]
    #
    # @!attribute [rw] iops
    #   The IOPD for a Provisioned IOPS EBS volume (SSD).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/EBSOptions AWS API Documentation
    #
    class EBSOptions < Struct.new(
      :ebs_enabled,
      :volume_type,
      :volume_size,
      :iops)
      SENSITIVE = []
      include Aws::Structure
    end

    # Status of the EBS options for the specified domain.
    #
    # @!attribute [rw] options
    #   The EBS options for the specified domain.
    #   @return [Types::EBSOptions]
    #
    # @!attribute [rw] status
    #   The status of the EBS options for the specified domain.
    #   @return [Types::OptionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/EBSOptionsStatus AWS API Documentation
    #
    class EBSOptionsStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies encryption at rest options.
    #
    # @note When making an API call, you may pass EncryptionAtRestOptions
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #         kms_key_id: "KmsKeyId",
    #       }
    #
    # @!attribute [rw] enabled
    #   The option to enable encryption at rest.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key ID for encryption at rest options.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/EncryptionAtRestOptions AWS API Documentation
    #
    class EncryptionAtRestOptions < Struct.new(
      :enabled,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Status of the encryption At Rest options for the specified domain.
    #
    # @!attribute [rw] options
    #   The Encryption At Rest options for the specified domain.
    #   @return [Types::EncryptionAtRestOptions]
    #
    # @!attribute [rw] status
    #   The status of the Encryption At Rest options for the specified
    #   domain.
    #   @return [Types::OptionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/EncryptionAtRestOptionsStatus AWS API Documentation
    #
    class EncryptionAtRestOptionsStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] error_type
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ErrorDetails AWS API Documentation
    #
    class ErrorDetails < Struct.new(
      :error_type,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter used to limit results when describing inbound or outbound
    # cross-cluster connections. Multiple values can be specified per
    # filter. A cross-cluster connection must match at least one of the
    # specified values for it to be returned from an operation.
    #
    # @note When making an API call, you may pass Filter
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyString",
    #         values: ["NonEmptyString"],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   Contains one or more values for the filter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the request parameters to ` GetCompatibleVersions `
    # operation.
    #
    # @note When making an API call, you may pass GetCompatibleVersionsRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName",
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of an domain. Domain names are unique across the domains
    #   owned by an account within an AWS region. Domain names start with a
    #   letter or number and can contain the following characters: a-z
    #   (lowercase), 0-9, and - (hyphen).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/GetCompatibleVersionsRequest AWS API Documentation
    #
    class GetCompatibleVersionsRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the response returned by the ` GetCompatibleVersions `
    # operation.
    #
    # @!attribute [rw] compatible_versions
    #   A map of compatible OpenSearch versions returned as part of the `
    #   GetCompatibleVersions ` operation.
    #   @return [Array<Types::CompatibleVersionsMap>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/GetCompatibleVersionsResponse AWS API Documentation
    #
    class GetCompatibleVersionsResponse < Struct.new(
      :compatible_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the request parameters to the ` GetPackageVersionHistory
    # ` operation.
    #
    # @note When making an API call, you may pass GetPackageVersionHistoryRequest
    #   data as a hash:
    #
    #       {
    #         package_id: "PackageID", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] package_id
    #   Returns an audit history of package versions.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Limits results to a maximum number of package versions.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Used for pagination. Only necessary if a previous API call includes
    #   a non-null NextToken value. If provided, returns results for the
    #   next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/GetPackageVersionHistoryRequest AWS API Documentation
    #
    class GetPackageVersionHistoryRequest < Struct.new(
      :package_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for response returned by ` GetPackageVersionHistory `
    # operation.
    #
    # @!attribute [rw] package_id
    #   @return [String]
    #
    # @!attribute [rw] package_version_history_list
    #   List of `PackageVersionHistory` objects.
    #   @return [Array<Types::PackageVersionHistory>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/GetPackageVersionHistoryResponse AWS API Documentation
    #
    class GetPackageVersionHistoryResponse < Struct.new(
      :package_id,
      :package_version_history_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the request parameters to the ` GetUpgradeHistory `
    # operation.
    #
    # @note When making an API call, you may pass GetUpgradeHistoryRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of an domain. Domain names are unique across the domains
    #   owned by an account within an AWS region. Domain names start with a
    #   letter or number and can contain the following characters: a-z
    #   (lowercase), 0-9, and - (hyphen).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Set this value to limit the number of results returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Paginated APIs accept the NextToken input to return the next page of
    #   results and provide a NextToken output in the response, which you
    #   can use to retrieve more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/GetUpgradeHistoryRequest AWS API Documentation
    #
    class GetUpgradeHistoryRequest < Struct.new(
      :domain_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the response returned by the ` GetUpgradeHistory `
    # operation.
    #
    # @!attribute [rw] upgrade_histories
    #   A list of ` UpgradeHistory ` objects corresponding to each upgrade
    #   or upgrade eligibility check performed on a domain returned as part
    #   of the ` GetUpgradeHistoryResponse ` object.
    #   @return [Array<Types::UpgradeHistory>]
    #
    # @!attribute [rw] next_token
    #   Pagination token that needs to be supplied to the next call to get
    #   the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/GetUpgradeHistoryResponse AWS API Documentation
    #
    class GetUpgradeHistoryResponse < Struct.new(
      :upgrade_histories,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the request parameters to the ` GetUpgradeStatus `
    # operation.
    #
    # @note When making an API call, you may pass GetUpgradeStatusRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of an domain. Domain names are unique across the domains
    #   owned by an account within an AWS region. Domain names start with a
    #   letter or number and can contain the following characters: a-z
    #   (lowercase), 0-9, and - (hyphen).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/GetUpgradeStatusRequest AWS API Documentation
    #
    class GetUpgradeStatusRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the response returned by the ` GetUpgradeStatus `
    # operation.
    #
    # @!attribute [rw] upgrade_step
    #   One of three steps an upgrade or upgrade eligibility check goes
    #   through: * PreUpgradeCheck
    #   * Snapshot
    #   * Upgrade
    #   @return [String]
    #
    # @!attribute [rw] step_status
    #   One of four statuses an upgrade have, returned as part of the `
    #   GetUpgradeStatusResponse ` object. The status can take one of the
    #   following values: * In Progress
    #   * Succeeded
    #   * Succeeded with Issues
    #   * Failed
    #   @return [String]
    #
    # @!attribute [rw] upgrade_name
    #   A string that briefly describes the update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/GetUpgradeStatusResponse AWS API Documentation
    #
    class GetUpgradeStatusResponse < Struct.new(
      :upgrade_step,
      :step_status,
      :upgrade_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of an inbound connection.
    #
    # @!attribute [rw] local_domain_info
    #   The ` AWSDomainInformation ` for the local OpenSearch domain.
    #   @return [Types::DomainInformationContainer]
    #
    # @!attribute [rw] remote_domain_info
    #   The ` AWSDomainInformation ` for the remote OpenSearch domain.
    #   @return [Types::DomainInformationContainer]
    #
    # @!attribute [rw] connection_id
    #   The connection ID for the inbound cross-cluster connection.
    #   @return [String]
    #
    # @!attribute [rw] connection_status
    #   The ` InboundConnectionStatus ` for the outbound connection.
    #   @return [Types::InboundConnectionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/InboundConnection AWS API Documentation
    #
    class InboundConnection < Struct.new(
      :local_domain_info,
      :remote_domain_info,
      :connection_id,
      :connection_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connection status of an inbound cross-cluster connection.
    #
    # @!attribute [rw] status_code
    #   The state code for the inbound connection. Can be one of the
    #   following:
    #
    #   * PENDING\_ACCEPTANCE: Inbound connection is not yet accepted by the
    #     remote domain owner.
    #   * APPROVED: Inbound connection is pending acceptance by the remote
    #     domain owner.
    #   * PROVISIONING: Inbound connection provisioning is in progress.
    #   * ACTIVE: Inbound connection is active and ready to use.
    #   * REJECTING: Inbound connection rejection is in process.
    #   * REJECTED: Inbound connection is rejected.
    #   * DELETING: Inbound connection deletion is in progress.
    #   * DELETED: Inbound connection is deleted and can no longer be used.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Verbose information for the inbound connection status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/InboundConnectionStatus AWS API Documentation
    #
    class InboundConnectionStatus < Struct.new(
      :status_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # InstanceCountLimits represents the limits on the number of instances
    # that can be created in Amazon OpenSearch Service for a given
    # InstanceType.
    #
    # @!attribute [rw] minimum_instance_count
    #   Minimum number of instances that can be instantiated for a given
    #   InstanceType.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_instance_count
    #   Maximum number of instances that can be instantiated for a given
    #   InstanceType.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/InstanceCountLimits AWS API Documentation
    #
    class InstanceCountLimits < Struct.new(
      :minimum_instance_count,
      :maximum_instance_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # InstanceLimits represents the list of instance-related attributes that
    # are available for a given InstanceType.
    #
    # @!attribute [rw] instance_count_limits
    #   InstanceCountLimits represents the limits on the number of instances
    #   that can be created in Amazon OpenSearch Service for a given
    #   InstanceType.
    #   @return [Types::InstanceCountLimits]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/InstanceLimits AWS API Documentation
    #
    class InstanceLimits < Struct.new(
      :instance_count_limits)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_type
    #   @return [String]
    #
    # @!attribute [rw] encryption_enabled
    #   @return [Boolean]
    #
    # @!attribute [rw] cognito_enabled
    #   @return [Boolean]
    #
    # @!attribute [rw] app_logs_enabled
    #   @return [Boolean]
    #
    # @!attribute [rw] advanced_security_enabled
    #   @return [Boolean]
    #
    # @!attribute [rw] warm_enabled
    #   @return [Boolean]
    #
    # @!attribute [rw] instance_role
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/InstanceTypeDetails AWS API Documentation
    #
    class InstanceTypeDetails < Struct.new(
      :instance_type,
      :encryption_enabled,
      :cognito_enabled,
      :app_logs_enabled,
      :advanced_security_enabled,
      :warm_enabled,
      :instance_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing has failed because of an unknown error,
    # exception or failure (the failure is internal to the service) . Gives
    # http status code of 500.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/InternalException AWS API Documentation
    #
    class InternalException < Aws::EmptyStructure; end

    # The request processing has failed because of invalid pagination token
    # provided by customer. Returns an HTTP status code of 400.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/InvalidPaginationTokenException AWS API Documentation
    #
    class InvalidPaginationTokenException < Aws::EmptyStructure; end

    # An exception for trying to create or access sub-resource that is
    # either invalid or not supported. Gives http status code of 409.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/InvalidTypeException AWS API Documentation
    #
    class InvalidTypeException < Aws::EmptyStructure; end

    # An exception for trying to create more than allowed resources or
    # sub-resources. Gives http status code of 409.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Aws::EmptyStructure; end

    # Limits for a given InstanceType and for each of its roles.
    #  Limits contains the following: ` StorageTypes `, ` InstanceLimits `,
    # and ` AdditionalLimits `
    #
    # @!attribute [rw] storage_types
    #   Storage-related types and attributes that are available for a given
    #   InstanceType.
    #   @return [Array<Types::StorageType>]
    #
    # @!attribute [rw] instance_limits
    #   InstanceLimits represents the list of instance-related attributes
    #   that are available for a given InstanceType.
    #   @return [Types::InstanceLimits]
    #
    # @!attribute [rw] additional_limits
    #   List of additional limits that are specific to a given InstanceType
    #   and for each of its ` InstanceRole ` .
    #   @return [Array<Types::AdditionalLimit>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/Limits AWS API Documentation
    #
    class Limits < Struct.new(
      :storage_types,
      :instance_limits,
      :additional_limits)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the `ListDomainNames` operation.
    #
    # @note When making an API call, you may pass ListDomainNamesRequest
    #   data as a hash:
    #
    #       {
    #         engine_type: "OpenSearch", # accepts OpenSearch, Elasticsearch
    #       }
    #
    # @!attribute [rw] engine_type
    #   Optional parameter to filter the output by domain engine type.
    #   Acceptable values are 'Elasticsearch' and 'OpenSearch'.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListDomainNamesRequest AWS API Documentation
    #
    class ListDomainNamesRequest < Struct.new(
      :engine_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a `ListDomainNames` operation. Contains the names of all
    # domains owned by this account and their respective engine types.
    #
    # @!attribute [rw] domain_names
    #   List of domain names and respective engine types.
    #   @return [Array<Types::DomainInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListDomainNamesResponse AWS API Documentation
    #
    class ListDomainNamesResponse < Struct.new(
      :domain_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the request parameters to the ` ListDomainsForPackage `
    # operation.
    #
    # @note When making an API call, you may pass ListDomainsForPackageRequest
    #   data as a hash:
    #
    #       {
    #         package_id: "PackageID", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] package_id
    #   The package for which to list associated domains.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Limits the results to a maximum number of domains.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Used for pagination. Only necessary if a previous API call includes
    #   a non-null NextToken value. If provided, returns results for the
    #   next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListDomainsForPackageRequest AWS API Documentation
    #
    class ListDomainsForPackageRequest < Struct.new(
      :package_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the response parameters to the ` ListDomainsForPackage `
    # operation.
    #
    # @!attribute [rw] domain_package_details_list
    #   List of `DomainPackageDetails` objects.
    #   @return [Array<Types::DomainPackageDetails>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListDomainsForPackageResponse AWS API Documentation
    #
    class ListDomainsForPackageResponse < Struct.new(
      :domain_package_details_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListInstanceTypeDetailsRequest
    #   data as a hash:
    #
    #       {
    #         engine_version: "VersionString", # required
    #         domain_name: "DomainName",
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] engine_version
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The name of an domain. Domain names are unique across the domains
    #   owned by an account within an AWS region. Domain names start with a
    #   letter or number and can contain the following characters: a-z
    #   (lowercase), 0-9, and - (hyphen).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Set this value to limit the number of results returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Paginated APIs accept the NextToken input to return the next page of
    #   results and provide a NextToken output in the response, which you
    #   can use to retrieve more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListInstanceTypeDetailsRequest AWS API Documentation
    #
    class ListInstanceTypeDetailsRequest < Struct.new(
      :engine_version,
      :domain_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_type_details
    #   @return [Array<Types::InstanceTypeDetails>]
    #
    # @!attribute [rw] next_token
    #   Paginated APIs accept the NextToken input to return the next page of
    #   results and provide a NextToken output in the response, which you
    #   can use to retrieve more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListInstanceTypeDetailsResponse AWS API Documentation
    #
    class ListInstanceTypeDetailsResponse < Struct.new(
      :instance_type_details,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the request parameters to the ` ListPackagesForDomain `
    # operation.
    #
    # @note When making an API call, you may pass ListPackagesForDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain for which you want to list associated
    #   packages.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Limits results to a maximum number of packages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Used for pagination. Only necessary if a previous API call includes
    #   a non-null NextToken value. If provided, returns results for the
    #   next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListPackagesForDomainRequest AWS API Documentation
    #
    class ListPackagesForDomainRequest < Struct.new(
      :domain_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the response parameters to the ` ListPackagesForDomain `
    # operation.
    #
    # @!attribute [rw] domain_package_details_list
    #   List of `DomainPackageDetails` objects.
    #   @return [Array<Types::DomainPackageDetails>]
    #
    # @!attribute [rw] next_token
    #   Pagination token to supply to the next call to get the next page of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListPackagesForDomainResponse AWS API Documentation
    #
    class ListPackagesForDomainResponse < Struct.new(
      :domain_package_details_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the ` ListTags ` operation. Specify
    # the `ARN` of the domain that the tags you want to view are attached
    # to.
    #
    # @note When making an API call, you may pass ListTagsRequest
    #   data as a hash:
    #
    #       {
    #         arn: "ARN", # required
    #       }
    #
    # @!attribute [rw] arn
    #   Specify the `ARN` of the domain that the tags you want to view are
    #   attached to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListTagsRequest AWS API Documentation
    #
    class ListTagsRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a `ListTags` operation. Contains tags for all requested
    # domains.
    #
    # @!attribute [rw] tag_list
    #   List of `Tag` for the requested domain.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListTagsResponse AWS API Documentation
    #
    class ListTagsResponse < Struct.new(
      :tag_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the ` ListVersions ` operation. Use `
    # MaxResults ` to control the maximum number of results to
    # retrieve in a single call.
    #
    #  Use ` NextToken ` in response to retrieve more results. If the
    # received response does not contain a NextToken, there are no more
    # results to retrieve.
    #
    # @note When making an API call, you may pass ListVersionsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   Set this value to limit the number of results returned. Value must
    #   be greater than 10 or it won't be honored.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Paginated APIs accept the NextToken input to return the next page of
    #   results and provide a NextToken output in the response, which you
    #   can use to retrieve more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListVersionsRequest AWS API Documentation
    #
    class ListVersionsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters for response received from the `
    # ListVersions ` operation.
    #
    # @!attribute [rw] versions
    #   List of supported OpenSearch versions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Paginated APIs accept the NextToken input to return the next page of
    #   results and provide a NextToken output in the response, which you
    #   can use to retrieve more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListVersionsResponse AWS API Documentation
    #
    class ListVersionsResponse < Struct.new(
      :versions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Log Publishing option that is set for a given domain.
    # Attributes and their details: * CloudWatchLogsLogGroupArn: ARN of the
    # Cloudwatch log group to
    #   publish logs to.
    # * Enabled: Whether the log publishing for a given log type is enabled
    #   or not.
    #
    # @note When making an API call, you may pass LogPublishingOption
    #   data as a hash:
    #
    #       {
    #         cloud_watch_logs_log_group_arn: "CloudWatchLogsLogGroupArn",
    #         enabled: false,
    #       }
    #
    # @!attribute [rw] cloud_watch_logs_log_group_arn
    #   ARN of the Cloudwatch log group to publish logs to.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Whether the given log publishing option is enabled or not.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/LogPublishingOption AWS API Documentation
    #
    class LogPublishingOption < Struct.new(
      :cloud_watch_logs_log_group_arn,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configured log publishing options for the domain and their current
    # status.
    #
    # @!attribute [rw] options
    #   The log publishing options configured for the domain.
    #   @return [Hash<String,Types::LogPublishingOption>]
    #
    # @!attribute [rw] status
    #   The status of the log publishing options for the domain. See
    #   `OptionStatus` for the status information that's included.
    #   @return [Types::OptionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/LogPublishingOptionsStatus AWS API Documentation
    #
    class LogPublishingOptionsStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Credentials for the master user: username and password, ARN, or both.
    #
    # @note When making an API call, you may pass MasterUserOptions
    #   data as a hash:
    #
    #       {
    #         master_user_arn: "ARN",
    #         master_user_name: "Username",
    #         master_user_password: "Password",
    #       }
    #
    # @!attribute [rw] master_user_arn
    #   ARN for the master user (if IAM is enabled).
    #   @return [String]
    #
    # @!attribute [rw] master_user_name
    #   The master user's username, which is stored in the Amazon
    #   OpenSearch Service domain's internal database.
    #   @return [String]
    #
    # @!attribute [rw] master_user_password
    #   The master user's password, which is stored in the Amazon
    #   OpenSearch Service domain's internal database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/MasterUserOptions AWS API Documentation
    #
    class MasterUserOptions < Struct.new(
      :master_user_arn,
      :master_user_name,
      :master_user_password)
      SENSITIVE = [:master_user_name, :master_user_password]
      include Aws::Structure
    end

    # The node-to-node encryption options.
    #
    # @note When making an API call, you may pass NodeToNodeEncryptionOptions
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #       }
    #
    # @!attribute [rw] enabled
    #   True to enable node-to-node encryption.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/NodeToNodeEncryptionOptions AWS API Documentation
    #
    class NodeToNodeEncryptionOptions < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Status of the node-to-node encryption options for the specified
    # domain.
    #
    # @!attribute [rw] options
    #   The node-to-node encryption options for the specified domain.
    #   @return [Types::NodeToNodeEncryptionOptions]
    #
    # @!attribute [rw] status
    #   The status of the node-to-node encryption options for the specified
    #   domain.
    #   @return [Types::OptionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/NodeToNodeEncryptionOptionsStatus AWS API Documentation
    #
    class NodeToNodeEncryptionOptionsStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the current status of the entity.
    #
    # @!attribute [rw] creation_date
    #   The timestamp of when the entity was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_date
    #   The timestamp of the last time the entity was updated.
    #   @return [Time]
    #
    # @!attribute [rw] update_version
    #   The latest version of the entity.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   Provides the `OptionState` for the domain.
    #   @return [String]
    #
    # @!attribute [rw] pending_deletion
    #   Indicates whether the domain is being deleted.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/OptionStatus AWS API Documentation
    #
    class OptionStatus < Struct.new(
      :creation_date,
      :update_date,
      :update_version,
      :state,
      :pending_deletion)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies details about an outbound connection.
    #
    # @!attribute [rw] local_domain_info
    #   The ` DomainInformation ` for the local OpenSearch domain.
    #   @return [Types::DomainInformationContainer]
    #
    # @!attribute [rw] remote_domain_info
    #   The ` DomainInformation ` for the remote OpenSearch domain.
    #   @return [Types::DomainInformationContainer]
    #
    # @!attribute [rw] connection_id
    #   The connection ID for the outbound cross-cluster connection.
    #   @return [String]
    #
    # @!attribute [rw] connection_alias
    #   The connection alias for the outbound cross-cluster connection.
    #   @return [String]
    #
    # @!attribute [rw] connection_status
    #   The ` OutboundConnectionStatus ` for the outbound connection.
    #   @return [Types::OutboundConnectionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/OutboundConnection AWS API Documentation
    #
    class OutboundConnection < Struct.new(
      :local_domain_info,
      :remote_domain_info,
      :connection_id,
      :connection_alias,
      :connection_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connection status of an outbound cross-cluster connection.
    #
    # @!attribute [rw] status_code
    #   The state code for the outbound connection. Can be one of the
    #   following:
    #
    #   * VALIDATING: The outbound connection request is being validated.
    #   * VALIDATION\_FAILED: Validation failed for the connection request.
    #   * PENDING\_ACCEPTANCE: Outbound connection request is validated and
    #     is not yet accepted by the remote domain owner.
    #   * APPROVED: Outbound connection has been approved by the remote
    #     domain owner for getting provisioned.
    #   * PROVISIONING: Outbound connection request is in process.
    #   * ACTIVE: Outbound connection is active and ready to use.
    #   * REJECTING: Outbound connection rejection by remote domain owner is
    #     in progress.
    #   * REJECTED: Outbound connection request is rejected by remote domain
    #     owner.
    #   * DELETING: Outbound connection deletion is in progress.
    #   * DELETED: Outbound connection is deleted and can no longer be used.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Verbose information for the outbound connection status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/OutboundConnectionStatus AWS API Documentation
    #
    class OutboundConnectionStatus < Struct.new(
      :status_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Basic information about a package.
    #
    # @!attribute [rw] package_id
    #   Internal ID of the package.
    #   @return [String]
    #
    # @!attribute [rw] package_name
    #   User-specified name of the package.
    #   @return [String]
    #
    # @!attribute [rw] package_type
    #   Currently supports only TXT-DICTIONARY.
    #   @return [String]
    #
    # @!attribute [rw] package_description
    #   User-specified description of the package.
    #   @return [String]
    #
    # @!attribute [rw] package_status
    #   Current state of the package. Values are COPYING, COPY\_FAILED,
    #   AVAILABLE, DELETING, and DELETE\_FAILED.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the package was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   @return [Time]
    #
    # @!attribute [rw] available_package_version
    #   @return [String]
    #
    # @!attribute [rw] error_details
    #   Additional information if the package is in an error state. Null
    #   otherwise.
    #   @return [Types::ErrorDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/PackageDetails AWS API Documentation
    #
    class PackageDetails < Struct.new(
      :package_id,
      :package_name,
      :package_type,
      :package_description,
      :package_status,
      :created_at,
      :last_updated_at,
      :available_package_version,
      :error_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 location for importing the package specified as
    # `S3BucketName` and `S3Key`
    #
    # @note When making an API call, you may pass PackageSource
    #   data as a hash:
    #
    #       {
    #         s3_bucket_name: "S3BucketName",
    #         s3_key: "S3Key",
    #       }
    #
    # @!attribute [rw] s3_bucket_name
    #   The name of the Amazon S3 bucket containing the package.
    #   @return [String]
    #
    # @!attribute [rw] s3_key
    #   Key (file name) of the package.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/PackageSource AWS API Documentation
    #
    class PackageSource < Struct.new(
      :s3_bucket_name,
      :s3_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of a package version.
    #
    # @!attribute [rw] package_version
    #   The package version.
    #   @return [String]
    #
    # @!attribute [rw] commit_message
    #   A message associated with the package version.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the package was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/PackageVersionHistory AWS API Documentation
    #
    class PackageVersionHistory < Struct.new(
      :package_version,
      :commit_message,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for parameters to `PurchaseReservedInstanceOffering`
    #
    # @note When making an API call, you may pass PurchaseReservedInstanceOfferingRequest
    #   data as a hash:
    #
    #       {
    #         reserved_instance_offering_id: "GUID", # required
    #         reservation_name: "ReservationToken", # required
    #         instance_count: 1,
    #       }
    #
    # @!attribute [rw] reserved_instance_offering_id
    #   The ID of the reserved OpenSearch instance offering to purchase.
    #   @return [String]
    #
    # @!attribute [rw] reservation_name
    #   A customer-specified identifier to track this reservation.
    #   @return [String]
    #
    # @!attribute [rw] instance_count
    #   The number of OpenSearch instances to reserve.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/PurchaseReservedInstanceOfferingRequest AWS API Documentation
    #
    class PurchaseReservedInstanceOfferingRequest < Struct.new(
      :reserved_instance_offering_id,
      :reservation_name,
      :instance_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `PurchaseReservedInstanceOffering`
    # operation.
    #
    # @!attribute [rw] reserved_instance_id
    #   Details of the reserved OpenSearch instance which was purchased.
    #   @return [String]
    #
    # @!attribute [rw] reservation_name
    #   The customer-specified identifier used to track this reservation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/PurchaseReservedInstanceOfferingResponse AWS API Documentation
    #
    class PurchaseReservedInstanceOfferingResponse < Struct.new(
      :reserved_instance_id,
      :reservation_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the specific price and frequency of a recurring charges for a
    # reserved OpenSearch instance, or for a reserved OpenSearch instance
    # offering.
    #
    # @!attribute [rw] recurring_charge_amount
    #   The monetary amount of the recurring charge.
    #   @return [Float]
    #
    # @!attribute [rw] recurring_charge_frequency
    #   The frequency of the recurring charge.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/RecurringCharge AWS API Documentation
    #
    class RecurringCharge < Struct.new(
      :recurring_charge_amount,
      :recurring_charge_frequency)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the ` RejectInboundConnection `
    # operation.
    #
    # @note When making an API call, you may pass RejectInboundConnectionRequest
    #   data as a hash:
    #
    #       {
    #         connection_id: "ConnectionId", # required
    #       }
    #
    # @!attribute [rw] connection_id
    #   The ID of the inbound connection to reject.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/RejectInboundConnectionRequest AWS API Documentation
    #
    class RejectInboundConnectionRequest < Struct.new(
      :connection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a ` RejectInboundConnection ` operation. Contains
    # details about the rejected inbound connection.
    #
    # @!attribute [rw] connection
    #   The ` InboundConnection ` of the rejected inbound connection.
    #   @return [Types::InboundConnection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/RejectInboundConnectionResponse AWS API Documentation
    #
    class RejectInboundConnectionResponse < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the ` RemoveTags ` operation. Specify
    # the `ARN` for the domain from which you want to remove the specified
    # `TagKey`.
    #
    # @note When making an API call, you may pass RemoveTagsRequest
    #   data as a hash:
    #
    #       {
    #         arn: "ARN", # required
    #         tag_keys: ["String"], # required
    #       }
    #
    # @!attribute [rw] arn
    #   The `ARN` of the domain from which you want to delete the specified
    #   tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The `TagKey` list you want to remove from the domain.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/RemoveTagsRequest AWS API Documentation
    #
    class RemoveTagsRequest < Struct.new(
      :arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of a reserved OpenSearch instance.
    #
    # @!attribute [rw] reservation_name
    #   The customer-specified identifier to track this reservation.
    #   @return [String]
    #
    # @!attribute [rw] reserved_instance_id
    #   The unique identifier for the reservation.
    #   @return [String]
    #
    # @!attribute [rw] billing_subscription_id
    #   @return [Integer]
    #
    # @!attribute [rw] reserved_instance_offering_id
    #   The offering identifier.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The OpenSearch instance type offered by the reserved instance
    #   offering.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time the reservation started.
    #   @return [Time]
    #
    # @!attribute [rw] duration
    #   The duration, in seconds, for which the OpenSearch instance is
    #   reserved.
    #   @return [Integer]
    #
    # @!attribute [rw] fixed_price
    #   The upfront fixed charge you will paid to purchase the specific
    #   reserved OpenSearch instance offering.
    #   @return [Float]
    #
    # @!attribute [rw] usage_price
    #   The rate you are charged for each hour for the domain that is using
    #   this reserved instance.
    #   @return [Float]
    #
    # @!attribute [rw] currency_code
    #   The currency code for the reserved OpenSearch instance offering.
    #   @return [String]
    #
    # @!attribute [rw] instance_count
    #   The number of OpenSearch instances that have been reserved.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The state of the reserved OpenSearch instance.
    #   @return [String]
    #
    # @!attribute [rw] payment_option
    #   The payment option as defined in the reserved OpenSearch instance
    #   offering.
    #   @return [String]
    #
    # @!attribute [rw] recurring_charges
    #   The charge to your account regardless of whether you are creating
    #   any domains using the instance offering.
    #   @return [Array<Types::RecurringCharge>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ReservedInstance AWS API Documentation
    #
    class ReservedInstance < Struct.new(
      :reservation_name,
      :reserved_instance_id,
      :billing_subscription_id,
      :reserved_instance_offering_id,
      :instance_type,
      :start_time,
      :duration,
      :fixed_price,
      :usage_price,
      :currency_code,
      :instance_count,
      :state,
      :payment_option,
      :recurring_charges)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of a reserved OpenSearch instance offering.
    #
    # @!attribute [rw] reserved_instance_offering_id
    #   The OpenSearch reserved instance offering identifier.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The OpenSearch instance type offered by the reserved instance
    #   offering.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The duration, in seconds, for which the offering will reserve the
    #   OpenSearch instance.
    #   @return [Integer]
    #
    # @!attribute [rw] fixed_price
    #   The upfront fixed charge you will pay to purchase the specific
    #   reserved OpenSearch instance offering.
    #   @return [Float]
    #
    # @!attribute [rw] usage_price
    #   The rate you are charged for each hour the domain that is using the
    #   offering is running.
    #   @return [Float]
    #
    # @!attribute [rw] currency_code
    #   The currency code for the reserved OpenSearch instance offering.
    #   @return [String]
    #
    # @!attribute [rw] payment_option
    #   Payment option for the reserved OpenSearch instance offering
    #   @return [String]
    #
    # @!attribute [rw] recurring_charges
    #   The charge to your account regardless of whether you are creating
    #   any domains using the instance offering.
    #   @return [Array<Types::RecurringCharge>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ReservedInstanceOffering AWS API Documentation
    #
    class ReservedInstanceOffering < Struct.new(
      :reserved_instance_offering_id,
      :instance_type,
      :duration,
      :fixed_price,
      :usage_price,
      :currency_code,
      :payment_option,
      :recurring_charges)
      SENSITIVE = []
      include Aws::Structure
    end

    # An exception for creating a resource that already exists. Gives http
    # status code of 400.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ResourceAlreadyExistsException AWS API Documentation
    #
    class ResourceAlreadyExistsException < Aws::EmptyStructure; end

    # An exception for accessing or deleting a resource that does not exist.
    # Gives http status code of 400.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Aws::EmptyStructure; end

    # The SAML identity povider's information.
    #
    # @note When making an API call, you may pass SAMLIdp
    #   data as a hash:
    #
    #       {
    #         metadata_content: "SAMLMetadata", # required
    #         entity_id: "SAMLEntityId", # required
    #       }
    #
    # @!attribute [rw] metadata_content
    #   The metadata of the SAML application in XML format.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The unique entity ID of the application in SAML identity provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/SAMLIdp AWS API Documentation
    #
    class SAMLIdp < Struct.new(
      :metadata_content,
      :entity_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The SAML application configuration for the domain.
    #
    # @note When making an API call, you may pass SAMLOptionsInput
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #         idp: {
    #           metadata_content: "SAMLMetadata", # required
    #           entity_id: "SAMLEntityId", # required
    #         },
    #         master_user_name: "Username",
    #         master_backend_role: "BackendRole",
    #         subject_key: "String",
    #         roles_key: "String",
    #         session_timeout_minutes: 1,
    #       }
    #
    # @!attribute [rw] enabled
    #   True if SAML is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] idp
    #   The SAML Identity Provider's information.
    #   @return [Types::SAMLIdp]
    #
    # @!attribute [rw] master_user_name
    #   The SAML master username, which is stored in the Amazon OpenSearch
    #   Service domain's internal database.
    #   @return [String]
    #
    # @!attribute [rw] master_backend_role
    #   The backend role that the SAML master user is mapped to.
    #   @return [String]
    #
    # @!attribute [rw] subject_key
    #   Element of the SAML assertion to use for username. Default is
    #   NameID.
    #   @return [String]
    #
    # @!attribute [rw] roles_key
    #   Element of the SAML assertion to use for backend roles. Default is
    #   roles.
    #   @return [String]
    #
    # @!attribute [rw] session_timeout_minutes
    #   The duration, in minutes, after which a user session becomes
    #   inactive. Acceptable values are between 1 and 1440, and the default
    #   value is 60.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/SAMLOptionsInput AWS API Documentation
    #
    class SAMLOptionsInput < Struct.new(
      :enabled,
      :idp,
      :master_user_name,
      :master_backend_role,
      :subject_key,
      :roles_key,
      :session_timeout_minutes)
      SENSITIVE = [:master_user_name]
      include Aws::Structure
    end

    # Describes the SAML application configured for the domain.
    #
    # @!attribute [rw] enabled
    #   True if SAML is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] idp
    #   Describes the SAML identity provider's information.
    #   @return [Types::SAMLIdp]
    #
    # @!attribute [rw] subject_key
    #   The key used for matching the SAML subject attribute.
    #   @return [String]
    #
    # @!attribute [rw] roles_key
    #   The key used for matching the SAML roles attribute.
    #   @return [String]
    #
    # @!attribute [rw] session_timeout_minutes
    #   The duration, in minutes, after which a user session becomes
    #   inactive.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/SAMLOptionsOutput AWS API Documentation
    #
    class SAMLOptionsOutput < Struct.new(
      :enabled,
      :idp,
      :subject_key,
      :roles_key,
      :session_timeout_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies details about the scheduled Auto-Tune action. See [
    # Auto-Tune for Amazon OpenSearch Service ][1] for more information.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html
    #
    # @!attribute [rw] date
    #   The timestamp of the Auto-Tune action scheduled for the domain.
    #   @return [Time]
    #
    # @!attribute [rw] action_type
    #   The Auto-Tune action type. Valid values are JVM\_HEAP\_SIZE\_TUNING
    #   and JVM\_YOUNG\_GEN\_TUNING.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The Auto-Tune action description.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The Auto-Tune action severity. Valid values are LOW, MEDIUM, and
    #   HIGH.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ScheduledAutoTuneDetails AWS API Documentation
    #
    class ScheduledAutoTuneDetails < Struct.new(
      :date,
      :action_type,
      :action,
      :severity)
      SENSITIVE = []
      include Aws::Structure
    end

    # The current options of an domain service software options.
    #
    # @!attribute [rw] current_version
    #   The current service software version present on the domain.
    #   @return [String]
    #
    # @!attribute [rw] new_version
    #   The new service software version if one is available.
    #   @return [String]
    #
    # @!attribute [rw] update_available
    #   `True` if you're able to update your service software version.
    #   `False` if you can't update your service software version.
    #   @return [Boolean]
    #
    # @!attribute [rw] cancellable
    #   `True` if you're able to cancel your service software version
    #   update. `False` if you can't cancel your service software update.
    #   @return [Boolean]
    #
    # @!attribute [rw] update_status
    #   The status of your service software update. This field can take the
    #   following values: ` ELIGIBLE`, `PENDING_UPDATE`, `IN_PROGRESS`,
    #   `COMPLETED`, and ` NOT_ELIGIBLE`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the `UpdateStatus`.
    #   @return [String]
    #
    # @!attribute [rw] automated_update_date
    #   The timestamp, in Epoch time, until which you can manually request a
    #   service software update. After this date, we automatically update
    #   your service software.
    #   @return [Time]
    #
    # @!attribute [rw] optional_deployment
    #   `True` if a service software is never automatically updated. `False`
    #   if a service software is automatically updated after
    #   `AutomatedUpdateDate`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ServiceSoftwareOptions AWS API Documentation
    #
    class ServiceSoftwareOptions < Struct.new(
      :current_version,
      :new_version,
      :update_available,
      :cancellable,
      :update_status,
      :description,
      :automated_update_date,
      :optional_deployment)
      SENSITIVE = []
      include Aws::Structure
    end

    # The time, in UTC format, when the service takes a daily automated
    # snapshot of the specified domain. Default is `0` hours.
    #
    # @note When making an API call, you may pass SnapshotOptions
    #   data as a hash:
    #
    #       {
    #         automated_snapshot_start_hour: 1,
    #       }
    #
    # @!attribute [rw] automated_snapshot_start_hour
    #   The time, in UTC format, when the service takes a daily automated
    #   snapshot of the specified domain. Default is `0` hours.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/SnapshotOptions AWS API Documentation
    #
    class SnapshotOptions < Struct.new(
      :automated_snapshot_start_hour)
      SENSITIVE = []
      include Aws::Structure
    end

    # Status of a daily automated snapshot.
    #
    # @!attribute [rw] options
    #   The daily snapshot options specified for the domain.
    #   @return [Types::SnapshotOptions]
    #
    # @!attribute [rw] status
    #   The status of a daily automated snapshot.
    #   @return [Types::OptionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/SnapshotOptionsStatus AWS API Documentation
    #
    class SnapshotOptionsStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the ` StartServiceSoftwareUpdate `
    # operation. Specifies the name of the domain to schedule a service
    # software update for.
    #
    # @note When making an API call, you may pass StartServiceSoftwareUpdateRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that you want to update to the latest service
    #   software.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/StartServiceSoftwareUpdateRequest AWS API Documentation
    #
    class StartServiceSoftwareUpdateRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a `StartServiceSoftwareUpdate` operation. Contains the
    # status of the update.
    #
    # @!attribute [rw] service_software_options
    #   The current status of the OpenSearch service software update.
    #   @return [Types::ServiceSoftwareOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/StartServiceSoftwareUpdateResponse AWS API Documentation
    #
    class StartServiceSoftwareUpdateResponse < Struct.new(
      :service_software_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # StorageTypes represents the list of storage-related types and their
    # attributes that are available for a given InstanceType.
    #
    # @!attribute [rw] storage_type_name
    #   Type of storage. List of available storage options: 1.  instance
    #   2.  ebs
    #   @return [String]
    #
    # @!attribute [rw] storage_sub_type_name
    #   Sub-type of the given storage type. List of available sub-storage
    #   options: "instance" storageType has no storageSubType. "ebs"
    #   storageType has the following valid storageSubTypes: 1.  standard
    #   2.  gp2
    #   3.  io1
    #
    #    See ` VolumeType ` for more information regarding each EBS storage
    #   option.
    #   @return [String]
    #
    # @!attribute [rw] storage_type_limits
    #   Limits that are applicable for the given storage type.
    #   @return [Array<Types::StorageTypeLimit>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/StorageType AWS API Documentation
    #
    class StorageType < Struct.new(
      :storage_type_name,
      :storage_sub_type_name,
      :storage_type_limits)
      SENSITIVE = []
      include Aws::Structure
    end

    # Limits that are applicable for the given storage type.
    #
    # @!attribute [rw] limit_name
    #   Name of storage limits that are applicable for the given storage
    #   type. If ` StorageType ` is "ebs", the following storage options
    #   are applicable: 1.  MinimumVolumeSize
    #   2.  MaximumVolumeSize
    #   3.  MaximumIops
    #   4.  MinimumIops
    #   @return [String]
    #
    # @!attribute [rw] limit_values
    #   Values for the ` StorageTypeLimit$LimitName ` .
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/StorageTypeLimit AWS API Documentation
    #
    class StorageTypeLimit < Struct.new(
      :limit_name,
      :limit_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key value pair for a resource tag.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   The `TagKey`, the name of the tag. Tag keys must be unique for the
    #   domain to which they are attached.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The `TagValue`, the value assigned to the corresponding tag key. Tag
    #   values can be null and don't have to be unique in a tag set. For
    #   example, you can have a key value pair in a tag set of `project :
    #   Trinity` and `cost-center : Trinity`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the ` UpdateDomain ` operation.
    # Specifies the type and number of instances in the domain cluster.
    #
    # @note When making an API call, you may pass UpdateDomainConfigRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         cluster_config: {
    #           instance_type: "m3.medium.search", # accepts m3.medium.search, m3.large.search, m3.xlarge.search, m3.2xlarge.search, m4.large.search, m4.xlarge.search, m4.2xlarge.search, m4.4xlarge.search, m4.10xlarge.search, m5.large.search, m5.xlarge.search, m5.2xlarge.search, m5.4xlarge.search, m5.12xlarge.search, m5.24xlarge.search, r5.large.search, r5.xlarge.search, r5.2xlarge.search, r5.4xlarge.search, r5.12xlarge.search, r5.24xlarge.search, c5.large.search, c5.xlarge.search, c5.2xlarge.search, c5.4xlarge.search, c5.9xlarge.search, c5.18xlarge.search, t3.nano.search, t3.micro.search, t3.small.search, t3.medium.search, t3.large.search, t3.xlarge.search, t3.2xlarge.search, ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search, t2.micro.search, t2.small.search, t2.medium.search, r3.large.search, r3.xlarge.search, r3.2xlarge.search, r3.4xlarge.search, r3.8xlarge.search, i2.xlarge.search, i2.2xlarge.search, d2.xlarge.search, d2.2xlarge.search, d2.4xlarge.search, d2.8xlarge.search, c4.large.search, c4.xlarge.search, c4.2xlarge.search, c4.4xlarge.search, c4.8xlarge.search, r4.large.search, r4.xlarge.search, r4.2xlarge.search, r4.4xlarge.search, r4.8xlarge.search, r4.16xlarge.search, i3.large.search, i3.xlarge.search, i3.2xlarge.search, i3.4xlarge.search, i3.8xlarge.search, i3.16xlarge.search, r6g.large.search, r6g.xlarge.search, r6g.2xlarge.search, r6g.4xlarge.search, r6g.8xlarge.search, r6g.12xlarge.search, m6g.large.search, m6g.xlarge.search, m6g.2xlarge.search, m6g.4xlarge.search, m6g.8xlarge.search, m6g.12xlarge.search, c6g.large.search, c6g.xlarge.search, c6g.2xlarge.search, c6g.4xlarge.search, c6g.8xlarge.search, c6g.12xlarge.search, r6gd.large.search, r6gd.xlarge.search, r6gd.2xlarge.search, r6gd.4xlarge.search, r6gd.8xlarge.search, r6gd.12xlarge.search, r6gd.16xlarge.search, t4g.small.search, t4g.medium.search
    #           instance_count: 1,
    #           dedicated_master_enabled: false,
    #           zone_awareness_enabled: false,
    #           zone_awareness_config: {
    #             availability_zone_count: 1,
    #           },
    #           dedicated_master_type: "m3.medium.search", # accepts m3.medium.search, m3.large.search, m3.xlarge.search, m3.2xlarge.search, m4.large.search, m4.xlarge.search, m4.2xlarge.search, m4.4xlarge.search, m4.10xlarge.search, m5.large.search, m5.xlarge.search, m5.2xlarge.search, m5.4xlarge.search, m5.12xlarge.search, m5.24xlarge.search, r5.large.search, r5.xlarge.search, r5.2xlarge.search, r5.4xlarge.search, r5.12xlarge.search, r5.24xlarge.search, c5.large.search, c5.xlarge.search, c5.2xlarge.search, c5.4xlarge.search, c5.9xlarge.search, c5.18xlarge.search, t3.nano.search, t3.micro.search, t3.small.search, t3.medium.search, t3.large.search, t3.xlarge.search, t3.2xlarge.search, ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search, t2.micro.search, t2.small.search, t2.medium.search, r3.large.search, r3.xlarge.search, r3.2xlarge.search, r3.4xlarge.search, r3.8xlarge.search, i2.xlarge.search, i2.2xlarge.search, d2.xlarge.search, d2.2xlarge.search, d2.4xlarge.search, d2.8xlarge.search, c4.large.search, c4.xlarge.search, c4.2xlarge.search, c4.4xlarge.search, c4.8xlarge.search, r4.large.search, r4.xlarge.search, r4.2xlarge.search, r4.4xlarge.search, r4.8xlarge.search, r4.16xlarge.search, i3.large.search, i3.xlarge.search, i3.2xlarge.search, i3.4xlarge.search, i3.8xlarge.search, i3.16xlarge.search, r6g.large.search, r6g.xlarge.search, r6g.2xlarge.search, r6g.4xlarge.search, r6g.8xlarge.search, r6g.12xlarge.search, m6g.large.search, m6g.xlarge.search, m6g.2xlarge.search, m6g.4xlarge.search, m6g.8xlarge.search, m6g.12xlarge.search, c6g.large.search, c6g.xlarge.search, c6g.2xlarge.search, c6g.4xlarge.search, c6g.8xlarge.search, c6g.12xlarge.search, r6gd.large.search, r6gd.xlarge.search, r6gd.2xlarge.search, r6gd.4xlarge.search, r6gd.8xlarge.search, r6gd.12xlarge.search, r6gd.16xlarge.search, t4g.small.search, t4g.medium.search
    #           dedicated_master_count: 1,
    #           warm_enabled: false,
    #           warm_type: "ultrawarm1.medium.search", # accepts ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search
    #           warm_count: 1,
    #           cold_storage_options: {
    #             enabled: false, # required
    #           },
    #         },
    #         ebs_options: {
    #           ebs_enabled: false,
    #           volume_type: "standard", # accepts standard, gp2, io1
    #           volume_size: 1,
    #           iops: 1,
    #         },
    #         snapshot_options: {
    #           automated_snapshot_start_hour: 1,
    #         },
    #         vpc_options: {
    #           subnet_ids: ["String"],
    #           security_group_ids: ["String"],
    #         },
    #         cognito_options: {
    #           enabled: false,
    #           user_pool_id: "UserPoolId",
    #           identity_pool_id: "IdentityPoolId",
    #           role_arn: "RoleArn",
    #         },
    #         advanced_options: {
    #           "String" => "String",
    #         },
    #         access_policies: "PolicyDocument",
    #         log_publishing_options: {
    #           "INDEX_SLOW_LOGS" => {
    #             cloud_watch_logs_log_group_arn: "CloudWatchLogsLogGroupArn",
    #             enabled: false,
    #           },
    #         },
    #         encryption_at_rest_options: {
    #           enabled: false,
    #           kms_key_id: "KmsKeyId",
    #         },
    #         domain_endpoint_options: {
    #           enforce_https: false,
    #           tls_security_policy: "Policy-Min-TLS-1-0-2019-07", # accepts Policy-Min-TLS-1-0-2019-07, Policy-Min-TLS-1-2-2019-07
    #           custom_endpoint_enabled: false,
    #           custom_endpoint: "DomainNameFqdn",
    #           custom_endpoint_certificate_arn: "ARN",
    #         },
    #         node_to_node_encryption_options: {
    #           enabled: false,
    #         },
    #         advanced_security_options: {
    #           enabled: false,
    #           internal_user_database_enabled: false,
    #           master_user_options: {
    #             master_user_arn: "ARN",
    #             master_user_name: "Username",
    #             master_user_password: "Password",
    #           },
    #           saml_options: {
    #             enabled: false,
    #             idp: {
    #               metadata_content: "SAMLMetadata", # required
    #               entity_id: "SAMLEntityId", # required
    #             },
    #             master_user_name: "Username",
    #             master_backend_role: "BackendRole",
    #             subject_key: "String",
    #             roles_key: "String",
    #             session_timeout_minutes: 1,
    #           },
    #           anonymous_auth_enabled: false,
    #         },
    #         auto_tune_options: {
    #           desired_state: "ENABLED", # accepts ENABLED, DISABLED
    #           rollback_on_disable: "NO_ROLLBACK", # accepts NO_ROLLBACK, DEFAULT_ROLLBACK
    #           maintenance_schedules: [
    #             {
    #               start_at: Time.now,
    #               duration: {
    #                 value: 1,
    #                 unit: "HOURS", # accepts HOURS
    #               },
    #               cron_expression_for_recurrence: "String",
    #             },
    #           ],
    #         },
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain you're updating.
    #   @return [String]
    #
    # @!attribute [rw] cluster_config
    #   The type and number of instances to instantiate for the domain
    #   cluster.
    #   @return [Types::ClusterConfig]
    #
    # @!attribute [rw] ebs_options
    #   Specify the type and size of the EBS volume to use.
    #   @return [Types::EBSOptions]
    #
    # @!attribute [rw] snapshot_options
    #   Option to set the time, in UTC format, for the daily automated
    #   snapshot. Default value is `0` hours.
    #   @return [Types::SnapshotOptions]
    #
    # @!attribute [rw] vpc_options
    #   Options to specify the subnets and security groups for the VPC
    #   endpoint. For more information, see [Launching your Amazon
    #   OpenSearch Service domains using a VPC ][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html
    #   @return [Types::VPCOptions]
    #
    # @!attribute [rw] cognito_options
    #   Options to specify the Cognito user and identity pools for
    #   OpenSearch Dashboards authentication. For more information, see
    #   [Configuring Amazon Cognito authentication for OpenSearch
    #   Dashboards][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opensearch-service/latest/developerguide/cognito-auth.html
    #   @return [Types::CognitoOptions]
    #
    # @!attribute [rw] advanced_options
    #   Modifies the advanced option to allow references to indices in an
    #   HTTP request body. Must be `false` when configuring access to
    #   individual sub-resources. By default, the value is `true`. See
    #   [Advanced options ][1] for more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] access_policies
    #   IAM access policy as a JSON-formatted string.
    #   @return [String]
    #
    # @!attribute [rw] log_publishing_options
    #   Map of `LogType` and `LogPublishingOption`, each containing options
    #   to publish a given type of OpenSearch log.
    #   @return [Hash<String,Types::LogPublishingOption>]
    #
    # @!attribute [rw] encryption_at_rest_options
    #   Specifies encryption of data at rest options.
    #   @return [Types::EncryptionAtRestOptions]
    #
    # @!attribute [rw] domain_endpoint_options
    #   Options to specify configuration that will be applied to the domain
    #   endpoint.
    #   @return [Types::DomainEndpointOptions]
    #
    # @!attribute [rw] node_to_node_encryption_options
    #   Specifies node-to-node encryption options.
    #   @return [Types::NodeToNodeEncryptionOptions]
    #
    # @!attribute [rw] advanced_security_options
    #   Specifies advanced security options.
    #   @return [Types::AdvancedSecurityOptionsInput]
    #
    # @!attribute [rw] auto_tune_options
    #   Specifies Auto-Tune options.
    #   @return [Types::AutoTuneOptions]
    #
    # @!attribute [rw] dry_run
    #   This flag, when set to True, specifies whether the `UpdateDomain`
    #   request should return the results of validation checks
    #   (DryRunResults) without actually applying the change.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/UpdateDomainConfigRequest AWS API Documentation
    #
    class UpdateDomainConfigRequest < Struct.new(
      :domain_name,
      :cluster_config,
      :ebs_options,
      :snapshot_options,
      :vpc_options,
      :cognito_options,
      :advanced_options,
      :access_policies,
      :log_publishing_options,
      :encryption_at_rest_options,
      :domain_endpoint_options,
      :node_to_node_encryption_options,
      :advanced_security_options,
      :auto_tune_options,
      :dry_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of an `UpdateDomain` request. Contains the status of the
    # domain being updated.
    #
    # @!attribute [rw] domain_config
    #   The status of the updated domain.
    #   @return [Types::DomainConfig]
    #
    # @!attribute [rw] dry_run_results
    #   Contains result of DryRun.
    #   @return [Types::DryRunResults]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/UpdateDomainConfigResponse AWS API Documentation
    #
    class UpdateDomainConfigResponse < Struct.new(
      :domain_config,
      :dry_run_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for request parameters to the ` UpdatePackage ` operation.
    #
    # @note When making an API call, you may pass UpdatePackageRequest
    #   data as a hash:
    #
    #       {
    #         package_id: "PackageID", # required
    #         package_source: { # required
    #           s3_bucket_name: "S3BucketName",
    #           s3_key: "S3Key",
    #         },
    #         package_description: "PackageDescription",
    #         commit_message: "CommitMessage",
    #       }
    #
    # @!attribute [rw] package_id
    #   The unique identifier for the package.
    #   @return [String]
    #
    # @!attribute [rw] package_source
    #   The Amazon S3 location for importing the package specified as
    #   `S3BucketName` and `S3Key`
    #   @return [Types::PackageSource]
    #
    # @!attribute [rw] package_description
    #   A new description of the package.
    #   @return [String]
    #
    # @!attribute [rw] commit_message
    #   A commit message for the new version which is shown as part of
    #   `GetPackageVersionHistoryResponse`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/UpdatePackageRequest AWS API Documentation
    #
    class UpdatePackageRequest < Struct.new(
      :package_id,
      :package_source,
      :package_description,
      :commit_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the response returned by the ` UpdatePackage `
    # operation.
    #
    # @!attribute [rw] package_details
    #   Information about the package.
    #   @return [Types::PackageDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/UpdatePackageResponse AWS API Documentation
    #
    class UpdatePackageResponse < Struct.new(
      :package_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the request parameters to ` UpgradeDomain ` operation.
    #
    # @note When making an API call, you may pass UpgradeDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         target_version: "VersionString", # required
    #         perform_check_only: false,
    #         advanced_options: {
    #           "String" => "String",
    #         },
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of an domain. Domain names are unique across the domains
    #   owned by an account within an AWS region. Domain names start with a
    #   letter or number and can contain the following characters: a-z
    #   (lowercase), 0-9, and - (hyphen).
    #   @return [String]
    #
    # @!attribute [rw] target_version
    #   The version of OpenSearch you intend to upgrade the domain to.
    #   @return [String]
    #
    # @!attribute [rw] perform_check_only
    #   When true, indicates that an upgrade eligibility check needs to be
    #   performed. Does not actually perform the upgrade.
    #   @return [Boolean]
    #
    # @!attribute [rw] advanced_options
    #   Exposes select native OpenSearch configuration values from
    #   `opensearch.yml`. Currently, the following advanced options are
    #   available:
    #
    #   * Option to allow references to indices in an HTTP request body.
    #     Must be `false` when configuring access to individual
    #     sub-resources. By default, the value is `true`. See [Advanced
    #     cluster parameters ][1] for more information.
    #   * Option to specify the percentage of heap space allocated to field
    #     data. By default, this setting is unbounded.
    #
    #   For more information, see [ Advanced cluster parameters][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/UpgradeDomainRequest AWS API Documentation
    #
    class UpgradeDomainRequest < Struct.new(
      :domain_name,
      :target_version,
      :perform_check_only,
      :advanced_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for response returned by ` UpgradeDomain ` operation.
    #
    # @!attribute [rw] upgrade_id
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The name of an domain. Domain names are unique across the domains
    #   owned by an account within an AWS region. Domain names start with a
    #   letter or number and can contain the following characters: a-z
    #   (lowercase), 0-9, and - (hyphen).
    #   @return [String]
    #
    # @!attribute [rw] target_version
    #   The version of OpenSearch that you intend to upgrade the domain to.
    #   @return [String]
    #
    # @!attribute [rw] perform_check_only
    #   When true, indicates that an upgrade eligibility check needs to be
    #   performed. Does not actually perform the upgrade.
    #   @return [Boolean]
    #
    # @!attribute [rw] advanced_options
    #   Exposes select native OpenSearch configuration values from
    #   `opensearch.yml`. Currently, the following advanced options are
    #   available:
    #
    #   * Option to allow references to indices in an HTTP request body.
    #     Must be `false` when configuring access to individual
    #     sub-resources. By default, the value is `true`. See [Advanced
    #     cluster parameters ][1] for more information.
    #   * Option to specify the percentage of heap space allocated to field
    #     data. By default, this setting is unbounded.
    #
    #   For more information, see [ Advanced cluster parameters][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] change_progress_details
    #   Specifies change details of the domain configuration change.
    #   @return [Types::ChangeProgressDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/UpgradeDomainResponse AWS API Documentation
    #
    class UpgradeDomainResponse < Struct.new(
      :upgrade_id,
      :domain_name,
      :target_version,
      :perform_check_only,
      :advanced_options,
      :change_progress_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # History of the last 10 upgrades and upgrade eligibility checks.
    #
    # @!attribute [rw] upgrade_name
    #   A string that briefly describes the upgrade.
    #   @return [String]
    #
    # @!attribute [rw] start_timestamp
    #   UTC timestamp at which the upgrade API call was made in
    #   "yyyy-MM-ddTHH:mm:ssZ" format.
    #   @return [Time]
    #
    # @!attribute [rw] upgrade_status
    #   The current status of the upgrade. The status can take one of the
    #   following values: * In Progress
    #   * Succeeded
    #   * Succeeded with Issues
    #   * Failed
    #   @return [String]
    #
    # @!attribute [rw] steps_list
    #   A list of ` UpgradeStepItem ` s representing information about each
    #   step performed as part of a specific upgrade or upgrade eligibility
    #   check.
    #   @return [Array<Types::UpgradeStepItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/UpgradeHistory AWS API Documentation
    #
    class UpgradeHistory < Struct.new(
      :upgrade_name,
      :start_timestamp,
      :upgrade_status,
      :steps_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a single step of the upgrade or upgrade eligibility check
    # workflow.
    #
    # @!attribute [rw] upgrade_step
    #   One of three steps an upgrade or upgrade eligibility check goes
    #   through: * PreUpgradeCheck
    #   * Snapshot
    #   * Upgrade
    #   @return [String]
    #
    # @!attribute [rw] upgrade_step_status
    #   The current status of the upgrade. The status can take one of the
    #   following values: * In Progress
    #   * Succeeded
    #   * Succeeded with Issues
    #   * Failed
    #   @return [String]
    #
    # @!attribute [rw] issues
    #   A list of strings containing detailed information about the errors
    #   encountered in a particular step.
    #   @return [Array<String>]
    #
    # @!attribute [rw] progress_percent
    #   The floating point value representing the progress percentage of a
    #   particular step.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/UpgradeStepItem AWS API Documentation
    #
    class UpgradeStepItem < Struct.new(
      :upgrade_step,
      :upgrade_step_status,
      :issues,
      :progress_percent)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options to specify the subnets and security groups for the VPC
    # endpoint. For more information, see [ Launching your Amazon OpenSearch
    # Service domains using a VPC][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html
    #
    # @!attribute [rw] vpc_id
    #   The VPC ID for the domain. Exists only if the domain was created
    #   with `VPCOptions`.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The subnets for the VPC endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] availability_zones
    #   The Availability Zones for the domain. Exists only if the domain was
    #   created with `VPCOptions`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The security groups for the VPC endpoint.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/VPCDerivedInfo AWS API Documentation
    #
    class VPCDerivedInfo < Struct.new(
      :vpc_id,
      :subnet_ids,
      :availability_zones,
      :security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Status of the VPC options for the specified domain.
    #
    # @!attribute [rw] options
    #   The VPC options for the specified domain.
    #   @return [Types::VPCDerivedInfo]
    #
    # @!attribute [rw] status
    #   The status of the VPC options for the specified domain.
    #   @return [Types::OptionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/VPCDerivedInfoStatus AWS API Documentation
    #
    class VPCDerivedInfoStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options to specify the subnets and security groups for the VPC
    # endpoint. For more information, see [ Launching your Amazon OpenSearch
    # Service domains using a VPC][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html
    #
    # @note When making an API call, you may pass VPCOptions
    #   data as a hash:
    #
    #       {
    #         subnet_ids: ["String"],
    #         security_group_ids: ["String"],
    #       }
    #
    # @!attribute [rw] subnet_ids
    #   The subnets for the VPC endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The security groups for the VPC endpoint.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/VPCOptions AWS API Documentation
    #
    class VPCOptions < Struct.new(
      :subnet_ids,
      :security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # An exception for missing / invalid input fields. Gives http status
    # code of 400.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ValidationException AWS API Documentation
    #
    class ValidationException < Aws::EmptyStructure; end

    # The status of the OpenSearch version options for the specified
    # OpenSearch domain.
    #
    # @!attribute [rw] options
    #   The OpenSearch version for the specified OpenSearch domain.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the OpenSearch version options for the specified
    #   OpenSearch domain.
    #   @return [Types::OptionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/VersionStatus AWS API Documentation
    #
    class VersionStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The zone awareness configuration for the domain cluster, such as the
    # number of availability zones.
    #
    # @note When making an API call, you may pass ZoneAwarenessConfig
    #   data as a hash:
    #
    #       {
    #         availability_zone_count: 1,
    #       }
    #
    # @!attribute [rw] availability_zone_count
    #   An integer value to indicate the number of availability zones for a
    #   domain when zone awareness is enabled. This should be equal to
    #   number of subnets if VPC endpoints is enabled.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ZoneAwarenessConfig AWS API Documentation
    #
    class ZoneAwarenessConfig < Struct.new(
      :availability_zone_count)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
