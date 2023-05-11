# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ElasticsearchService
  module Types

    # Container for the parameters to the
    # `AcceptInboundCrossClusterSearchConnection` operation.
    #
    # @!attribute [rw] cross_cluster_search_connection_id
    #   The id of the inbound connection that you want to accept.
    #   @return [String]
    #
    class AcceptInboundCrossClusterSearchConnectionRequest < Struct.new(
      :cross_cluster_search_connection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a `AcceptInboundCrossClusterSearchConnection` operation.
    # Contains details of accepted inbound connection.
    #
    # @!attribute [rw] cross_cluster_search_connection
    #   Specifies the `InboundCrossClusterSearchConnection` of accepted
    #   inbound connection.
    #   @return [Types::InboundCrossClusterSearchConnection]
    #
    class AcceptInboundCrossClusterSearchConnectionResponse < Struct.new(
      :cross_cluster_search_connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error occurred because user does not have permissions to access the
    # resource. Returns HTTP status code 403.
    #
    class AccessDeniedException < Aws::EmptyStructure; end

    # The configured access rules for the domain's document and search
    # endpoints, and the current status of those rules.
    #
    # @!attribute [rw] options
    #   The access policy configured for the Elasticsearch domain. Access
    #   policies may be resource-based, IP-based, or IAM-based. See [
    #   Configuring Access Policies][1]for more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-access-policies
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the access policy for the Elasticsearch domain. See
    #   `OptionStatus` for the status information that's included.
    #   @return [Types::OptionStatus]
    #
    class AccessPoliciesStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the `AddTags` operation. Specify the
    # tags that you want to attach to the Elasticsearch domain.
    #
    # @!attribute [rw] arn
    #   Specify the `ARN` for which you want to add the tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_list
    #   List of `Tag` that need to be added for the Elasticsearch domain.
    #   @return [Array<Types::Tag>]
    #
    class AddTagsRequest < Struct.new(
      :arn,
      :tag_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # List of limits that are specific to a given InstanceType and for each
    # of it's ` InstanceRole ` .
    #
    # @!attribute [rw] limit_name
    #   Name of Additional Limit is specific to a given InstanceType and for
    #   each of it's ` InstanceRole ` etc.
    #    Attributes and their details:
    #    * MaximumNumberOfDataNodesSupported
    #   ` ESPartitionInstanceType `*
    #   MaximumNumberOfDataNodesWithoutMasterNode
    #   ` ESPartitionInstanceType `
    #   @return [String]
    #
    # @!attribute [rw] limit_values
    #   Value for given ` AdditionalLimit$LimitName ` .
    #   @return [Array<String>]
    #
    class AdditionalLimit < Struct.new(
      :limit_name,
      :limit_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Status of the advanced options for the specified Elasticsearch domain.
    # Currently, the following advanced options are available:
    #
    # * Option to allow references to indices in an HTTP request body. Must
    #   be `false` when configuring access to individual sub-resources. By
    #   default, the value is `true`. See [Configuration Advanced
    #   Options][1] for more information.
    # * Option to specify the percentage of heap space that is allocated to
    #   field data. By default, this setting is unbounded.
    #
    # For more information, see [Configuring Advanced Options][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options
    #
    # @!attribute [rw] options
    #   Specifies the status of advanced options for the specified
    #   Elasticsearch domain.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] status
    #   Specifies the status of `OptionStatus` for advanced options for the
    #   specified Elasticsearch domain.
    #   @return [Types::OptionStatus]
    #
    class AdvancedOptionsStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the advanced security configuration: whether advanced
    # security is enabled, whether the internal database option is enabled.
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
    class AdvancedSecurityOptions < Struct.new(
      :enabled,
      :internal_user_database_enabled,
      :saml_options,
      :anonymous_auth_disable_date,
      :anonymous_auth_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the advanced security configuration: whether advanced
    # security is enabled, whether the internal database option is enabled,
    # master username and password (if internal database is enabled), and
    # master user ARN (if IAM is enabled).
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
    #   Specifies the SAML application configuration for the domain.
    #   @return [Types::SAMLOptionsInput]
    #
    # @!attribute [rw] anonymous_auth_enabled
    #   True if Anonymous auth is enabled. Anonymous auth can be enabled
    #   only when AdvancedSecurity is enabled on existing domains.
    #   @return [Boolean]
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

    # Specifies the status of advanced security options for the specified
    # Elasticsearch domain.
    #
    # @!attribute [rw] options
    #   Specifies advanced security options for the specified Elasticsearch
    #   domain.
    #   @return [Types::AdvancedSecurityOptions]
    #
    # @!attribute [rw] status
    #   Status of the advanced security options for the specified
    #   Elasticsearch domain.
    #   @return [Types::OptionStatus]
    #
    class AdvancedSecurityOptionsStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for request parameters to ` AssociatePackage ` operation.
    #
    # @!attribute [rw] package_id
    #   Internal ID of the package that you want to associate with a domain.
    #   Use `DescribePackages` to find this value.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   Name of the domain that you want to associate the package with.
    #   @return [String]
    #
    class AssociatePackageRequest < Struct.new(
      :package_id,
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for response returned by ` AssociatePackage ` operation.
    #
    # @!attribute [rw] domain_package_details
    #   `DomainPackageDetails`
    #   @return [Types::DomainPackageDetails]
    #
    class AssociatePackageResponse < Struct.new(
      :domain_package_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for request parameters to the `AuthorizeVpcEndpointAccess`
    # operation. Specifies the account to be permitted to manage VPC
    # endpoints against the domain.
    #
    # @!attribute [rw] domain_name
    #   The name of the OpenSearch Service domain to provide access to.
    #   @return [String]
    #
    # @!attribute [rw] account
    #   The account ID to grant access to.
    #   @return [String]
    #
    class AuthorizeVpcEndpointAccessRequest < Struct.new(
      :domain_name,
      :account)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for response parameters to the `AuthorizeVpcEndpointAccess`
    # operation. Contains the account ID and the type of the account being
    # authorized to access the VPC endpoint.
    #
    # @!attribute [rw] authorized_principal
    #   Information about the account or service that was provided access to
    #   the domain.
    #   @return [Types::AuthorizedPrincipal]
    #
    class AuthorizeVpcEndpointAccessResponse < Struct.new(
      :authorized_principal)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an account or service that has access to an Amazon
    # OpenSearch Service domain through the use of an interface VPC
    # endpoint.
    #
    # @!attribute [rw] principal_type
    #   The type of principal.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The IAM principal that is allowed access to the domain.
    #   @return [String]
    #
    class AuthorizedPrincipal < Struct.new(
      :principal_type,
      :principal)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies Auto-Tune type and Auto-Tune action details.
    #
    # @!attribute [rw] auto_tune_type
    #   Specifies Auto-Tune type. Valid value is SCHEDULED\_ACTION.
    #   @return [String]
    #
    # @!attribute [rw] auto_tune_details
    #   Specifies details of the Auto-Tune action. See the [Developer
    #   Guide][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html
    #   @return [Types::AutoTuneDetails]
    #
    class AutoTune < Struct.new(
      :auto_tune_type,
      :auto_tune_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies details of the Auto-Tune action. See the [Developer
    # Guide][1] for more information.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html
    #
    # @!attribute [rw] scheduled_auto_tune_details
    #   Specifies details of the scheduled Auto-Tune action. See the
    #   [Developer Guide][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html
    #   @return [Types::ScheduledAutoTuneDetails]
    #
    class AutoTuneDetails < Struct.new(
      :scheduled_auto_tune_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies Auto-Tune maitenance schedule. See the [Developer Guide][1]
    # for more information.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html
    #
    # @!attribute [rw] start_at
    #   Specifies timestamp at which Auto-Tune maintenance schedule start.
    #   @return [Time]
    #
    # @!attribute [rw] duration
    #   Specifies maintenance schedule duration: duration value and duration
    #   unit. See the [Developer Guide][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html
    #   @return [Types::Duration]
    #
    # @!attribute [rw] cron_expression_for_recurrence
    #   Specifies cron expression for a recurring maintenance schedule. See
    #   the [Developer Guide][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html
    #   @return [String]
    #
    class AutoTuneMaintenanceSchedule < Struct.new(
      :start_at,
      :duration,
      :cron_expression_for_recurrence)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the Auto-Tune options: the Auto-Tune desired state for the
    # domain, rollback state when disabling Auto-Tune options and list of
    # maintenance schedules.
    #
    # @!attribute [rw] desired_state
    #   Specifies the Auto-Tune desired state. Valid values are ENABLED,
    #   DISABLED.
    #   @return [String]
    #
    # @!attribute [rw] rollback_on_disable
    #   Specifies the rollback state while disabling Auto-Tune for the
    #   domain. Valid values are NO\_ROLLBACK, DEFAULT\_ROLLBACK.
    #   @return [String]
    #
    # @!attribute [rw] maintenance_schedules
    #   Specifies list of maitenance schedules. See the [Developer Guide][1]
    #   for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html
    #   @return [Array<Types::AutoTuneMaintenanceSchedule>]
    #
    class AutoTuneOptions < Struct.new(
      :desired_state,
      :rollback_on_disable,
      :maintenance_schedules)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the Auto-Tune options: the Auto-Tune desired state for the
    # domain and list of maintenance schedules.
    #
    # @!attribute [rw] desired_state
    #   Specifies the Auto-Tune desired state. Valid values are ENABLED,
    #   DISABLED.
    #   @return [String]
    #
    # @!attribute [rw] maintenance_schedules
    #   Specifies list of maitenance schedules. See the [Developer Guide][1]
    #   for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html
    #   @return [Array<Types::AutoTuneMaintenanceSchedule>]
    #
    class AutoTuneOptionsInput < Struct.new(
      :desired_state,
      :maintenance_schedules)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the Auto-Tune options: the Auto-Tune desired state for the
    # domain and list of maintenance schedules.
    #
    # @!attribute [rw] state
    #   Specifies the `AutoTuneState` for the Elasticsearch domain.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Specifies the error message while enabling or disabling the
    #   Auto-Tune.
    #   @return [String]
    #
    class AutoTuneOptionsOutput < Struct.new(
      :state,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the status of Auto-Tune options for the specified
    # Elasticsearch domain.
    #
    # @!attribute [rw] options
    #   Specifies Auto-Tune options for the specified Elasticsearch domain.
    #   @return [Types::AutoTuneOptions]
    #
    # @!attribute [rw] status
    #   Specifies Status of the Auto-Tune options for the specified
    #   Elasticsearch domain.
    #   @return [Types::AutoTuneStatus]
    #
    class AutoTuneOptionsStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the current status of the Auto-Tune options.
    #
    # @!attribute [rw] creation_date
    #   Timestamp which tells Auto-Tune options creation date .
    #   @return [Time]
    #
    # @!attribute [rw] update_date
    #   Timestamp which tells Auto-Tune options last updated time.
    #   @return [Time]
    #
    # @!attribute [rw] update_version
    #   Specifies the Auto-Tune options latest version.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   Specifies the `AutoTuneState` for the Elasticsearch domain.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Specifies the error message while enabling or disabling the
    #   Auto-Tune options.
    #   @return [String]
    #
    # @!attribute [rw] pending_deletion
    #   Indicates whether the Elasticsearch domain is being deleted.
    #   @return [Boolean]
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
    class BaseException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the
    # `CancelElasticsearchServiceSoftwareUpdate` operation. Specifies the
    # name of the Elasticsearch domain that you wish to cancel a service
    # software update on.
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that you want to stop the latest service
    #   software update on.
    #   @return [String]
    #
    class CancelElasticsearchServiceSoftwareUpdateRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a `CancelElasticsearchServiceSoftwareUpdate` operation.
    # Contains the status of the update.
    #
    # @!attribute [rw] service_software_options
    #   The current status of the Elasticsearch service software update.
    #   @return [Types::ServiceSoftwareOptions]
    #
    class CancelElasticsearchServiceSoftwareUpdateResponse < Struct.new(
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

    # Options to specify the Cognito user and identity pools for Kibana
    # authentication. For more information, see [Amazon Cognito
    # Authentication for Kibana][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html
    #
    # @!attribute [rw] enabled
    #   Specifies the option to enable Cognito for Kibana authentication.
    #   @return [Boolean]
    #
    # @!attribute [rw] user_pool_id
    #   Specifies the Cognito user pool ID for Kibana authentication.
    #   @return [String]
    #
    # @!attribute [rw] identity_pool_id
    #   Specifies the Cognito identity pool ID for Kibana authentication.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   Specifies the role ARN that provides Elasticsearch permissions for
    #   accessing Cognito resources.
    #   @return [String]
    #
    class CognitoOptions < Struct.new(
      :enabled,
      :user_pool_id,
      :identity_pool_id,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Status of the Cognito options for the specified Elasticsearch domain.
    #
    # @!attribute [rw] options
    #   Specifies the Cognito options for the specified Elasticsearch
    #   domain.
    #   @return [Types::CognitoOptions]
    #
    # @!attribute [rw] status
    #   Specifies the status of the Cognito options for the specified
    #   Elasticsearch domain.
    #   @return [Types::OptionStatus]
    #
    class CognitoOptionsStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configuration for cold storage options such as enabled
    #
    # @!attribute [rw] enabled
    #   Enable cold storage option. Accepted values true or false
    #   @return [Boolean]
    #
    class ColdStorageOptions < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # A map from an ` ElasticsearchVersion ` to a list of compatible `
    # ElasticsearchVersion ` s to which the domain can be upgraded.
    #
    # @!attribute [rw] source_version
    #   The current version of Elasticsearch on which a domain is.
    #   @return [String]
    #
    # @!attribute [rw] target_versions
    #   List of supported elastic search versions.
    #   @return [Array<String>]
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
    class ConflictException < Aws::EmptyStructure; end

    # @!attribute [rw] domain_name
    #   The name of the Elasticsearch domain that you are creating. Domain
    #   names are unique across the domains owned by an account within an
    #   AWS region. Domain names must start with a lowercase letter and can
    #   contain the following characters: a-z (lowercase), 0-9, and -
    #   (hyphen).
    #   @return [String]
    #
    # @!attribute [rw] elasticsearch_version
    #   String of format X.Y to specify version for the Elasticsearch domain
    #   eg. "1.5" or "2.3". For more information, see [Creating
    #   Elasticsearch Domains][1] in the *Amazon Elasticsearch Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains
    #   @return [String]
    #
    # @!attribute [rw] elasticsearch_cluster_config
    #   Configuration options for an Elasticsearch domain. Specifies the
    #   instance type and number of instances in the domain cluster.
    #   @return [Types::ElasticsearchClusterConfig]
    #
    # @!attribute [rw] ebs_options
    #   Options to enable, disable and specify the type and size of EBS
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
    #   Options to specify the subnets and security groups for VPC endpoint.
    #   For more information, see [Creating a VPC][1] in *VPC Endpoints for
    #   Amazon Elasticsearch Service Domains*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-creating-vpc
    #   @return [Types::VPCOptions]
    #
    # @!attribute [rw] cognito_options
    #   Options to specify the Cognito user and identity pools for Kibana
    #   authentication. For more information, see [Amazon Cognito
    #   Authentication for Kibana][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html
    #   @return [Types::CognitoOptions]
    #
    # @!attribute [rw] encryption_at_rest_options
    #   Specifies the Encryption At Rest Options.
    #   @return [Types::EncryptionAtRestOptions]
    #
    # @!attribute [rw] node_to_node_encryption_options
    #   Specifies the NodeToNodeEncryptionOptions.
    #   @return [Types::NodeToNodeEncryptionOptions]
    #
    # @!attribute [rw] advanced_options
    #   Option to allow references to indices in an HTTP request body. Must
    #   be `false` when configuring access to individual sub-resources. By
    #   default, the value is `true`. See [Configuration Advanced
    #   Options][1] for more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] log_publishing_options
    #   Map of `LogType` and `LogPublishingOption`, each containing options
    #   to publish a given type of Elasticsearch log.
    #   @return [Hash<String,Types::LogPublishingOption>]
    #
    # @!attribute [rw] domain_endpoint_options
    #   Options to specify configuration that will be applied to the domain
    #   endpoint.
    #   @return [Types::DomainEndpointOptions]
    #
    # @!attribute [rw] advanced_security_options
    #   Specifies advanced security options.
    #   @return [Types::AdvancedSecurityOptionsInput]
    #
    # @!attribute [rw] auto_tune_options
    #   Specifies Auto-Tune options.
    #   @return [Types::AutoTuneOptionsInput]
    #
    # @!attribute [rw] tag_list
    #   A list of `Tag` added during domain creation.
    #   @return [Array<Types::Tag>]
    #
    class CreateElasticsearchDomainRequest < Struct.new(
      :domain_name,
      :elasticsearch_version,
      :elasticsearch_cluster_config,
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
      :tag_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a `CreateElasticsearchDomain` operation. Contains the
    # status of the newly created Elasticsearch domain.
    #
    # @!attribute [rw] domain_status
    #   The status of the newly created Elasticsearch domain.
    #   @return [Types::ElasticsearchDomainStatus]
    #
    class CreateElasticsearchDomainResponse < Struct.new(
      :domain_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the
    # `CreateOutboundCrossClusterSearchConnection` operation.
    #
    # @!attribute [rw] source_domain_info
    #   Specifies the `DomainInformation` for the source Elasticsearch
    #   domain.
    #   @return [Types::DomainInformation]
    #
    # @!attribute [rw] destination_domain_info
    #   Specifies the `DomainInformation` for the destination Elasticsearch
    #   domain.
    #   @return [Types::DomainInformation]
    #
    # @!attribute [rw] connection_alias
    #   Specifies the connection alias that will be used by the customer for
    #   this connection.
    #   @return [String]
    #
    class CreateOutboundCrossClusterSearchConnectionRequest < Struct.new(
      :source_domain_info,
      :destination_domain_info,
      :connection_alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a `CreateOutboundCrossClusterSearchConnection` request.
    # Contains the details of the newly created cross-cluster search
    # connection.
    #
    # @!attribute [rw] source_domain_info
    #   Specifies the `DomainInformation` for the source Elasticsearch
    #   domain.
    #   @return [Types::DomainInformation]
    #
    # @!attribute [rw] destination_domain_info
    #   Specifies the `DomainInformation` for the destination Elasticsearch
    #   domain.
    #   @return [Types::DomainInformation]
    #
    # @!attribute [rw] connection_alias
    #   Specifies the connection alias provided during the create connection
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] connection_status
    #   Specifies the `OutboundCrossClusterSearchConnectionStatus` for the
    #   newly created connection.
    #   @return [Types::OutboundCrossClusterSearchConnectionStatus]
    #
    # @!attribute [rw] cross_cluster_search_connection_id
    #   Unique id for the created outbound connection, which is used for
    #   subsequent operations on connection.
    #   @return [String]
    #
    class CreateOutboundCrossClusterSearchConnectionResponse < Struct.new(
      :source_domain_info,
      :destination_domain_info,
      :connection_alias,
      :connection_status,
      :cross_cluster_search_connection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for request parameters to ` CreatePackage ` operation.
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
    #   The customer S3 location `PackageSource` for importing the package.
    #   @return [Types::PackageSource]
    #
    class CreatePackageRequest < Struct.new(
      :package_name,
      :package_type,
      :package_description,
      :package_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for response returned by ` CreatePackage ` operation.
    #
    # @!attribute [rw] package_details
    #   Information about the package `PackageDetails`.
    #   @return [Types::PackageDetails]
    #
    class CreatePackageResponse < Struct.new(
      :package_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the `CreateVpcEndpointRequest`
    # operation.
    #
    # @!attribute [rw] domain_arn
    #   The Amazon Resource Name (ARN) of the domain to grant access to.
    #   @return [String]
    #
    # @!attribute [rw] vpc_options
    #   Options to specify the subnets and security groups for the endpoint.
    #   @return [Types::VPCOptions]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #   @return [String]
    #
    class CreateVpcEndpointRequest < Struct.new(
      :domain_arn,
      :vpc_options,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for response parameters to the `CreateVpcEndpoint`
    # operation. Contains the configuration and status of the VPC Endpoint
    # being created.
    #
    # @!attribute [rw] vpc_endpoint
    #   Information about the newly created VPC endpoint.
    #   @return [Types::VpcEndpoint]
    #
    class CreateVpcEndpointResponse < Struct.new(
      :vpc_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the `DeleteElasticsearchDomain`
    # operation. Specifies the name of the Elasticsearch domain that you
    # want to delete.
    #
    # @!attribute [rw] domain_name
    #   The name of the Elasticsearch domain that you want to permanently
    #   delete.
    #   @return [String]
    #
    class DeleteElasticsearchDomainRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a `DeleteElasticsearchDomain` request. Contains the
    # status of the pending deletion, or no status if the domain and all of
    # its resources have been deleted.
    #
    # @!attribute [rw] domain_status
    #   The status of the Elasticsearch domain being deleted.
    #   @return [Types::ElasticsearchDomainStatus]
    #
    class DeleteElasticsearchDomainResponse < Struct.new(
      :domain_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the
    # `DeleteInboundCrossClusterSearchConnection` operation.
    #
    # @!attribute [rw] cross_cluster_search_connection_id
    #   The id of the inbound connection that you want to permanently
    #   delete.
    #   @return [String]
    #
    class DeleteInboundCrossClusterSearchConnectionRequest < Struct.new(
      :cross_cluster_search_connection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a `DeleteInboundCrossClusterSearchConnection` operation.
    # Contains details of deleted inbound connection.
    #
    # @!attribute [rw] cross_cluster_search_connection
    #   Specifies the `InboundCrossClusterSearchConnection` of deleted
    #   inbound connection.
    #   @return [Types::InboundCrossClusterSearchConnection]
    #
    class DeleteInboundCrossClusterSearchConnectionResponse < Struct.new(
      :cross_cluster_search_connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the
    # `DeleteOutboundCrossClusterSearchConnection` operation.
    #
    # @!attribute [rw] cross_cluster_search_connection_id
    #   The id of the outbound connection that you want to permanently
    #   delete.
    #   @return [String]
    #
    class DeleteOutboundCrossClusterSearchConnectionRequest < Struct.new(
      :cross_cluster_search_connection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a `DeleteOutboundCrossClusterSearchConnection`
    # operation. Contains details of deleted outbound connection.
    #
    # @!attribute [rw] cross_cluster_search_connection
    #   Specifies the `OutboundCrossClusterSearchConnection` of deleted
    #   outbound connection.
    #   @return [Types::OutboundCrossClusterSearchConnection]
    #
    class DeleteOutboundCrossClusterSearchConnectionResponse < Struct.new(
      :cross_cluster_search_connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for request parameters to ` DeletePackage ` operation.
    #
    # @!attribute [rw] package_id
    #   Internal ID of the package that you want to delete. Use
    #   `DescribePackages` to find this value.
    #   @return [String]
    #
    class DeletePackageRequest < Struct.new(
      :package_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for response parameters to ` DeletePackage ` operation.
    #
    # @!attribute [rw] package_details
    #   `PackageDetails`
    #   @return [Types::PackageDetails]
    #
    class DeletePackageResponse < Struct.new(
      :package_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Deletes an Amazon OpenSearch Service-managed interface VPC endpoint.
    #
    # @!attribute [rw] vpc_endpoint_id
    #   The unique identifier of the endpoint to be deleted.
    #   @return [String]
    #
    class DeleteVpcEndpointRequest < Struct.new(
      :vpc_endpoint_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for response parameters to the `DeleteVpcEndpoint`
    # operation. Contains the summarized detail of the VPC Endpoint being
    # deleted.
    #
    # @!attribute [rw] vpc_endpoint_summary
    #   Information about the deleted endpoint, including its current status
    #   (`DELETING` or `DELETE_FAILED`).
    #   @return [Types::VpcEndpointSummary]
    #
    class DeleteVpcEndpointResponse < Struct.new(
      :vpc_endpoint_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the `DescribeDomainAutoTunes`
    # operation.
    #
    # @!attribute [rw] domain_name
    #   Specifies the domain name for which you want Auto-Tune action
    #   details.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Set this value to limit the number of results returned. If not
    #   specified, defaults to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   NextToken is sent in case the earlier API call results contain the
    #   NextToken. It is used for pagination.
    #   @return [String]
    #
    class DescribeDomainAutoTunesRequest < Struct.new(
      :domain_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of `DescribeDomainAutoTunes` request. See the [Developer
    # Guide][1] for more information.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html
    #
    # @!attribute [rw] auto_tunes
    #   Specifies the list of setting adjustments that Auto-Tune has made to
    #   the domain. See the [Developer Guide][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html
    #   @return [Array<Types::AutoTune>]
    #
    # @!attribute [rw] next_token
    #   Specifies an identifier to allow retrieval of paginated results.
    #   @return [String]
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
    class DescribeDomainChangeProgressResponse < Struct.new(
      :change_progress_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the
    # `DescribeElasticsearchDomainConfig` operation. Specifies the domain
    # name for which you want configuration information.
    #
    # @!attribute [rw] domain_name
    #   The Elasticsearch domain that you want to get information about.
    #   @return [String]
    #
    class DescribeElasticsearchDomainConfigRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a `DescribeElasticsearchDomainConfig` request. Contains
    # the configuration information of the requested domain.
    #
    # @!attribute [rw] domain_config
    #   The configuration information of the domain requested in the
    #   `DescribeElasticsearchDomainConfig` request.
    #   @return [Types::ElasticsearchDomainConfig]
    #
    class DescribeElasticsearchDomainConfigResponse < Struct.new(
      :domain_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the `DescribeElasticsearchDomain`
    # operation.
    #
    # @!attribute [rw] domain_name
    #   The name of the Elasticsearch domain for which you want information.
    #   @return [String]
    #
    class DescribeElasticsearchDomainRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a `DescribeElasticsearchDomain` request. Contains the
    # status of the domain specified in the request.
    #
    # @!attribute [rw] domain_status
    #   The current status of the Elasticsearch domain.
    #   @return [Types::ElasticsearchDomainStatus]
    #
    class DescribeElasticsearchDomainResponse < Struct.new(
      :domain_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the `DescribeElasticsearchDomains`
    # operation. By default, the API returns the status of all Elasticsearch
    # domains.
    #
    # @!attribute [rw] domain_names
    #   The Elasticsearch domains for which you want information.
    #   @return [Array<String>]
    #
    class DescribeElasticsearchDomainsRequest < Struct.new(
      :domain_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a `DescribeElasticsearchDomains` request. Contains the
    # status of the specified domains or all domains owned by the account.
    #
    # @!attribute [rw] domain_status_list
    #   The status of the domains requested in the
    #   `DescribeElasticsearchDomains` request.
    #   @return [Array<Types::ElasticsearchDomainStatus>]
    #
    class DescribeElasticsearchDomainsResponse < Struct.new(
      :domain_status_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to `
    # DescribeElasticsearchInstanceTypeLimits ` operation.
    #
    # @!attribute [rw] domain_name
    #   DomainName represents the name of the Domain that we are trying to
    #   modify. This should be present only if we are querying for
    #   Elasticsearch ` Limits ` for existing domain.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type for an Elasticsearch cluster for which
    #   Elasticsearch ` Limits ` are needed.
    #   @return [String]
    #
    # @!attribute [rw] elasticsearch_version
    #   Version of Elasticsearch for which ` Limits ` are needed.
    #   @return [String]
    #
    class DescribeElasticsearchInstanceTypeLimitsRequest < Struct.new(
      :domain_name,
      :instance_type,
      :elasticsearch_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters received from `
    # DescribeElasticsearchInstanceTypeLimits ` operation.
    #
    # @!attribute [rw] limits_by_role
    #   Map of Role of the Instance and Limits that are applicable. Role
    #   performed by given Instance in Elasticsearch can be one of the
    #   following: * data: If the given InstanceType is used as data node
    #   * master: If the given InstanceType is used as master node
    #   * ultra\_warm: If the given InstanceType is used as warm node
    #   @return [Hash<String,Types::Limits>]
    #
    class DescribeElasticsearchInstanceTypeLimitsResponse < Struct.new(
      :limits_by_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the
    # `DescribeInboundCrossClusterSearchConnections` operation.
    #
    # @!attribute [rw] filters
    #   A list of filters used to match properties for inbound cross-cluster
    #   search connection. Available `Filter` names for this operation are:
    #   * cross-cluster-search-connection-id
    #   * source-domain-info.domain-name
    #   * source-domain-info.owner-id
    #   * source-domain-info.region
    #   * destination-domain-info.domain-name
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   Set this value to limit the number of results returned. If not
    #   specified, defaults to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   NextToken is sent in case the earlier API call results contain the
    #   NextToken. It is used for pagination.
    #   @return [String]
    #
    class DescribeInboundCrossClusterSearchConnectionsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a `DescribeInboundCrossClusterSearchConnections`
    # request. Contains the list of connections matching the filter
    # criteria.
    #
    # @!attribute [rw] cross_cluster_search_connections
    #   Consists of list of `InboundCrossClusterSearchConnection` matching
    #   the specified filter criteria.
    #   @return [Array<Types::InboundCrossClusterSearchConnection>]
    #
    # @!attribute [rw] next_token
    #   If more results are available and NextToken is present, make the
    #   next request to the same API with the received NextToken to paginate
    #   the remaining results.
    #   @return [String]
    #
    class DescribeInboundCrossClusterSearchConnectionsResponse < Struct.new(
      :cross_cluster_search_connections,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the
    # `DescribeOutboundCrossClusterSearchConnections` operation.
    #
    # @!attribute [rw] filters
    #   A list of filters used to match properties for outbound
    #   cross-cluster search connection. Available `Filter` names for this
    #   operation are: * cross-cluster-search-connection-id
    #   * destination-domain-info.domain-name
    #   * destination-domain-info.owner-id
    #   * destination-domain-info.region
    #   * source-domain-info.domain-name
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   Set this value to limit the number of results returned. If not
    #   specified, defaults to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   NextToken is sent in case the earlier API call results contain the
    #   NextToken. It is used for pagination.
    #   @return [String]
    #
    class DescribeOutboundCrossClusterSearchConnectionsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a `DescribeOutboundCrossClusterSearchConnections`
    # request. Contains the list of connections matching the filter
    # criteria.
    #
    # @!attribute [rw] cross_cluster_search_connections
    #   Consists of list of `OutboundCrossClusterSearchConnection` matching
    #   the specified filter criteria.
    #   @return [Array<Types::OutboundCrossClusterSearchConnection>]
    #
    # @!attribute [rw] next_token
    #   If more results are available and NextToken is present, make the
    #   next request to the same API with the received NextToken to paginate
    #   the remaining results.
    #   @return [String]
    #
    class DescribeOutboundCrossClusterSearchConnectionsResponse < Struct.new(
      :cross_cluster_search_connections,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filter to apply in `DescribePackage` response.
    #
    # @!attribute [rw] name
    #   Any field from `PackageDetails`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A non-empty list of values for the specified field.
    #   @return [Array<String>]
    #
    class DescribePackagesFilter < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for request parameters to ` DescribePackage ` operation.
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
    class DescribePackagesRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for response returned by ` DescribePackages ` operation.
    #
    # @!attribute [rw] package_details_list
    #   List of `PackageDetails` objects.
    #   @return [Array<Types::PackageDetails>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    class DescribePackagesResponse < Struct.new(
      :package_details_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for parameters to
    # `DescribeReservedElasticsearchInstanceOfferings`
    #
    # @!attribute [rw] reserved_elasticsearch_instance_offering_id
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
    #   NextToken should be sent in case if earlier API call produced result
    #   containing NextToken. It is used for pagination.
    #   @return [String]
    #
    class DescribeReservedElasticsearchInstanceOfferingsRequest < Struct.new(
      :reserved_elasticsearch_instance_offering_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for results from
    # `DescribeReservedElasticsearchInstanceOfferings`
    #
    # @!attribute [rw] next_token
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] reserved_elasticsearch_instance_offerings
    #   List of reserved Elasticsearch instance offerings
    #   @return [Array<Types::ReservedElasticsearchInstanceOffering>]
    #
    class DescribeReservedElasticsearchInstanceOfferingsResponse < Struct.new(
      :next_token,
      :reserved_elasticsearch_instance_offerings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for parameters to `DescribeReservedElasticsearchInstances`
    #
    # @!attribute [rw] reserved_elasticsearch_instance_id
    #   The reserved instance identifier filter value. Use this parameter to
    #   show only the reservation that matches the specified reserved
    #   Elasticsearch instance ID.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Set this value to limit the number of results returned. If not
    #   specified, defaults to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   NextToken should be sent in case if earlier API call produced result
    #   containing NextToken. It is used for pagination.
    #   @return [String]
    #
    class DescribeReservedElasticsearchInstancesRequest < Struct.new(
      :reserved_elasticsearch_instance_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for results from `DescribeReservedElasticsearchInstances`
    #
    # @!attribute [rw] next_token
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] reserved_elasticsearch_instances
    #   List of reserved Elasticsearch instances.
    #   @return [Array<Types::ReservedElasticsearchInstance>]
    #
    class DescribeReservedElasticsearchInstancesResponse < Struct.new(
      :next_token,
      :reserved_elasticsearch_instances)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for request parameters to the `DescribeVpcEndpoints`
    # operation. Specifies the list of VPC endpoints to be described.
    #
    # @!attribute [rw] vpc_endpoint_ids
    #   The unique identifiers of the endpoints to get information about.
    #   @return [Array<String>]
    #
    class DescribeVpcEndpointsRequest < Struct.new(
      :vpc_endpoint_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for response parameters to the `DescribeVpcEndpoints`
    # operation. Returns a list containing configuration details and status
    # of the VPC Endpoints as well as a list containing error responses of
    # the endpoints that could not be described
    #
    # @!attribute [rw] vpc_endpoints
    #   Information about each requested VPC endpoint.
    #   @return [Array<Types::VpcEndpoint>]
    #
    # @!attribute [rw] vpc_endpoint_errors
    #   Any errors associated with the request.
    #   @return [Array<Types::VpcEndpointError>]
    #
    class DescribeVpcEndpointsResponse < Struct.new(
      :vpc_endpoints,
      :vpc_endpoint_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error occured because the client wanted to access a not supported
    # operation. Gives http status code of 409.
    #
    class DisabledOperationException < Aws::EmptyStructure; end

    # Container for request parameters to ` DissociatePackage ` operation.
    #
    # @!attribute [rw] package_id
    #   Internal ID of the package that you want to associate with a domain.
    #   Use `DescribePackages` to find this value.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   Name of the domain that you want to associate the package with.
    #   @return [String]
    #
    class DissociatePackageRequest < Struct.new(
      :package_id,
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for response returned by ` DissociatePackage ` operation.
    #
    # @!attribute [rw] domain_package_details
    #   `DomainPackageDetails`
    #   @return [Types::DomainPackageDetails]
    #
    class DissociatePackageResponse < Struct.new(
      :domain_package_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options to configure endpoint for the Elasticsearch domain.
    #
    # @!attribute [rw] enforce_https
    #   Specify if only HTTPS endpoint should be enabled for the
    #   Elasticsearch domain.
    #   @return [Boolean]
    #
    # @!attribute [rw] tls_security_policy
    #   Specify the TLS security policy that needs to be applied to the
    #   HTTPS endpoint of Elasticsearch domain.
    #    It can be one of the following values: *
    #   <b>Policy-Min-TLS-1-0-2019-07: </b> TLS security policy which
    #     supports TLSv1.0 and higher.
    #   * <b>Policy-Min-TLS-1-2-2019-07: </b> TLS security policy which
    #     supports only TLSv1.2
    #   @return [String]
    #
    # @!attribute [rw] custom_endpoint_enabled
    #   Specify if custom endpoint should be enabled for the Elasticsearch
    #   domain.
    #   @return [Boolean]
    #
    # @!attribute [rw] custom_endpoint
    #   Specify the fully qualified domain for your custom endpoint.
    #   @return [String]
    #
    # @!attribute [rw] custom_endpoint_certificate_arn
    #   Specify ACM certificate ARN for your custom endpoint.
    #   @return [String]
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
    #   Options to configure endpoint for the Elasticsearch domain.
    #   @return [Types::DomainEndpointOptions]
    #
    # @!attribute [rw] status
    #   The status of the endpoint options for the Elasticsearch domain. See
    #   `OptionStatus` for the status information that's included.
    #   @return [Types::OptionStatus]
    #
    class DomainEndpointOptionsStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   Specifies the `DomainName`.
    #   @return [String]
    #
    # @!attribute [rw] engine_type
    #   Specifies the `EngineType` of the domain.
    #   @return [String]
    #
    class DomainInfo < Struct.new(
      :domain_name,
      :engine_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] owner_id
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The name of an Elasticsearch domain. Domain names are unique across
    #   the domains owned by an account within an AWS region. Domain names
    #   start with a letter or number and can contain the following
    #   characters: a-z (lowercase), 0-9, and - (hyphen).
    #   @return [String]
    #
    # @!attribute [rw] region
    #   @return [String]
    #
    class DomainInformation < Struct.new(
      :owner_id,
      :domain_name,
      :region)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information on a package that is associated with a domain.
    #
    # @!attribute [rw] package_id
    #   Internal ID of the package.
    #   @return [String]
    #
    # @!attribute [rw] package_name
    #   User specified name of the package.
    #   @return [String]
    #
    # @!attribute [rw] package_type
    #   Currently supports only TXT-DICTIONARY.
    #   @return [String]
    #
    # @!attribute [rw] last_updated
    #   Timestamp of the most-recent update to the association status.
    #   @return [Time]
    #
    # @!attribute [rw] domain_name
    #   Name of the domain you've associated a package with.
    #   @return [String]
    #
    # @!attribute [rw] domain_package_status
    #   State of the association. Values are
    #   ASSOCIATING/ASSOCIATION\_FAILED/ACTIVE/DISSOCIATING/DISSOCIATION\_FAILED.
    #   @return [String]
    #
    # @!attribute [rw] package_version
    #   @return [String]
    #
    # @!attribute [rw] reference_path
    #   The relative path on Amazon ES nodes, which can be used as
    #   synonym\_path when the package is synonym file.
    #   @return [String]
    #
    # @!attribute [rw] error_details
    #   Additional information if the package is in an error state. Null
    #   otherwise.
    #   @return [Types::ErrorDetails]
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

    # @!attribute [rw] deployment_type
    #   Specifies the deployment mechanism through which the update shall be
    #   applied on the domain. Possible responses are `Blue/Green` (The
    #   update will require a blue/green deployment.) `DynamicUpdate` (The
    #   update can be applied in-place without a Blue/Green deployment
    #   required.) `Undetermined` (The domain is undergoing an update which
    #   needs to complete before the deployment type can be predicted.)
    #   `None` (The configuration change matches the current configuration
    #   and will not result in any update.)
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Contains an optional message associated with the DryRunResults.
    #   @return [String]
    #
    class DryRunResults < Struct.new(
      :deployment_type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies maintenance schedule duration: duration value and duration
    # unit. See the [Developer Guide][1] for more information.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html
    #
    # @!attribute [rw] value
    #   Integer to specify the value of a maintenance schedule duration. See
    #   the [Developer Guide][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html
    #   @return [Integer]
    #
    # @!attribute [rw] unit
    #   Specifies the unit of a maintenance schedule duration. Valid value
    #   is HOURS. See the [Developer Guide][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html
    #   @return [String]
    #
    class Duration < Struct.new(
      :value,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options to enable, disable, and specify the properties of EBS storage
    # volumes. For more information, see [ Configuring EBS-based
    # Storage][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs
    #
    # @!attribute [rw] ebs_enabled
    #   Specifies whether EBS-based storage is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] volume_type
    #   Specifies the volume type for EBS-based storage.
    #   @return [String]
    #
    # @!attribute [rw] volume_size
    #   Integer to specify the size of an EBS volume.
    #   @return [Integer]
    #
    # @!attribute [rw] iops
    #   Specifies the IOPS for Provisioned IOPS And GP3 EBS volume (SSD).
    #   @return [Integer]
    #
    # @!attribute [rw] throughput
    #   Specifies the Throughput for GP3 EBS volume (SSD).
    #   @return [Integer]
    #
    class EBSOptions < Struct.new(
      :ebs_enabled,
      :volume_type,
      :volume_size,
      :iops,
      :throughput)
      SENSITIVE = []
      include Aws::Structure
    end

    # Status of the EBS options for the specified Elasticsearch domain.
    #
    # @!attribute [rw] options
    #   Specifies the EBS options for the specified Elasticsearch domain.
    #   @return [Types::EBSOptions]
    #
    # @!attribute [rw] status
    #   Specifies the status of the EBS options for the specified
    #   Elasticsearch domain.
    #   @return [Types::OptionStatus]
    #
    class EBSOptionsStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configuration for the domain cluster, such as the type
    # and number of instances.
    #
    # @!attribute [rw] instance_type
    #   The instance type for an Elasticsearch cluster. UltraWarm instance
    #   types are not supported for data instances.
    #   @return [String]
    #
    # @!attribute [rw] instance_count
    #   The number of instances in the specified domain cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] dedicated_master_enabled
    #   A boolean value to indicate whether a dedicated master node is
    #   enabled. See [About Dedicated Master Nodes][1] for more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-dedicatedmasternodes
    #   @return [Boolean]
    #
    # @!attribute [rw] zone_awareness_enabled
    #   A boolean value to indicate whether zone awareness is enabled. See
    #   [About Zone Awareness][1] for more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-zoneawareness
    #   @return [Boolean]
    #
    # @!attribute [rw] zone_awareness_config
    #   Specifies the zone awareness configuration for a domain when zone
    #   awareness is enabled.
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
    #   True to enable warm storage.
    #   @return [Boolean]
    #
    # @!attribute [rw] warm_type
    #   The instance type for the Elasticsearch cluster's warm nodes.
    #   @return [String]
    #
    # @!attribute [rw] warm_count
    #   The number of warm nodes in the cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] cold_storage_options
    #   Specifies the `ColdStorageOptions` config for Elasticsearch Domain
    #   @return [Types::ColdStorageOptions]
    #
    class ElasticsearchClusterConfig < Struct.new(
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

    # Specifies the configuration status for the specified Elasticsearch
    # domain.
    #
    # @!attribute [rw] options
    #   Specifies the cluster configuration for the specified Elasticsearch
    #   domain.
    #   @return [Types::ElasticsearchClusterConfig]
    #
    # @!attribute [rw] status
    #   Specifies the status of the configuration for the specified
    #   Elasticsearch domain.
    #   @return [Types::OptionStatus]
    #
    class ElasticsearchClusterConfigStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of an Elasticsearch domain.
    #
    # @!attribute [rw] elasticsearch_version
    #   String of format X.Y to specify version for the Elasticsearch
    #   domain.
    #   @return [Types::ElasticsearchVersionStatus]
    #
    # @!attribute [rw] elasticsearch_cluster_config
    #   Specifies the `ElasticsearchClusterConfig` for the Elasticsearch
    #   domain.
    #   @return [Types::ElasticsearchClusterConfigStatus]
    #
    # @!attribute [rw] ebs_options
    #   Specifies the `EBSOptions` for the Elasticsearch domain.
    #   @return [Types::EBSOptionsStatus]
    #
    # @!attribute [rw] access_policies
    #   IAM access policy as a JSON-formatted string.
    #   @return [Types::AccessPoliciesStatus]
    #
    # @!attribute [rw] snapshot_options
    #   Specifies the `SnapshotOptions` for the Elasticsearch domain.
    #   @return [Types::SnapshotOptionsStatus]
    #
    # @!attribute [rw] vpc_options
    #   The `VPCOptions` for the specified domain. For more information, see
    #   [VPC Endpoints for Amazon Elasticsearch Service Domains][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html
    #   @return [Types::VPCDerivedInfoStatus]
    #
    # @!attribute [rw] cognito_options
    #   The `CognitoOptions` for the specified domain. For more information,
    #   see [Amazon Cognito Authentication for Kibana][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html
    #   @return [Types::CognitoOptionsStatus]
    #
    # @!attribute [rw] encryption_at_rest_options
    #   Specifies the `EncryptionAtRestOptions` for the Elasticsearch
    #   domain.
    #   @return [Types::EncryptionAtRestOptionsStatus]
    #
    # @!attribute [rw] node_to_node_encryption_options
    #   Specifies the `NodeToNodeEncryptionOptions` for the Elasticsearch
    #   domain.
    #   @return [Types::NodeToNodeEncryptionOptionsStatus]
    #
    # @!attribute [rw] advanced_options
    #   Specifies the `AdvancedOptions` for the domain. See [Configuring
    #   Advanced Options][1] for more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options
    #   @return [Types::AdvancedOptionsStatus]
    #
    # @!attribute [rw] log_publishing_options
    #   Log publishing options for the given domain.
    #   @return [Types::LogPublishingOptionsStatus]
    #
    # @!attribute [rw] domain_endpoint_options
    #   Specifies the `DomainEndpointOptions` for the Elasticsearch domain.
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
    class ElasticsearchDomainConfig < Struct.new(
      :elasticsearch_version,
      :elasticsearch_cluster_config,
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

    # The current status of an Elasticsearch domain.
    #
    # @!attribute [rw] domain_id
    #   The unique identifier for the specified Elasticsearch domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The name of an Elasticsearch domain. Domain names are unique across
    #   the domains owned by an account within an AWS region. Domain names
    #   start with a letter or number and can contain the following
    #   characters: a-z (lowercase), 0-9, and - (hyphen).
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon resource name (ARN) of an Elasticsearch domain. See
    #   [Identifiers for IAM Entities][1] in *Using AWS Identity and Access
    #   Management* for more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/index.html?Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] created
    #   The domain creation status. `True` if the creation of an
    #   Elasticsearch domain is complete. `False` if domain creation is
    #   still in progress.
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
    #   The Elasticsearch domain endpoint that you use to submit index and
    #   search requests.
    #   @return [String]
    #
    # @!attribute [rw] endpoints
    #   Map containing the Elasticsearch domain endpoints used to submit
    #   index and search requests. Example `key, value`:
    #   `'vpc','vpc-endpoint-h2dsd34efgyghrtguk5gt6j2foh4.us-east-1.es.amazonaws.com'`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] processing
    #   The status of the Elasticsearch domain configuration. `True` if
    #   Amazon Elasticsearch Service is processing configuration changes.
    #   `False` if the configuration is active.
    #   @return [Boolean]
    #
    # @!attribute [rw] upgrade_processing
    #   The status of an Elasticsearch domain version upgrade. `True` if
    #   Amazon Elasticsearch Service is undergoing a version upgrade.
    #   `False` if the configuration is active.
    #   @return [Boolean]
    #
    # @!attribute [rw] elasticsearch_version
    #   @return [String]
    #
    # @!attribute [rw] elasticsearch_cluster_config
    #   The type and number of instances in the domain cluster.
    #   @return [Types::ElasticsearchClusterConfig]
    #
    # @!attribute [rw] ebs_options
    #   The `EBSOptions` for the specified domain. See [Configuring
    #   EBS-based Storage][1] for more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs
    #   @return [Types::EBSOptions]
    #
    # @!attribute [rw] access_policies
    #   IAM access policy as a JSON-formatted string.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_options
    #   Specifies the status of the `SnapshotOptions`
    #   @return [Types::SnapshotOptions]
    #
    # @!attribute [rw] vpc_options
    #   The `VPCOptions` for the specified domain. For more information, see
    #   [VPC Endpoints for Amazon Elasticsearch Service Domains][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html
    #   @return [Types::VPCDerivedInfo]
    #
    # @!attribute [rw] cognito_options
    #   The `CognitoOptions` for the specified domain. For more information,
    #   see [Amazon Cognito Authentication for Kibana][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html
    #   @return [Types::CognitoOptions]
    #
    # @!attribute [rw] encryption_at_rest_options
    #   Specifies the status of the `EncryptionAtRestOptions`.
    #   @return [Types::EncryptionAtRestOptions]
    #
    # @!attribute [rw] node_to_node_encryption_options
    #   Specifies the status of the `NodeToNodeEncryptionOptions`.
    #   @return [Types::NodeToNodeEncryptionOptions]
    #
    # @!attribute [rw] advanced_options
    #   Specifies the status of the `AdvancedOptions`
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] log_publishing_options
    #   Log publishing options for the given domain.
    #   @return [Hash<String,Types::LogPublishingOption>]
    #
    # @!attribute [rw] service_software_options
    #   The current status of the Elasticsearch domain's service software.
    #   @return [Types::ServiceSoftwareOptions]
    #
    # @!attribute [rw] domain_endpoint_options
    #   The current status of the Elasticsearch domain's endpoint options.
    #   @return [Types::DomainEndpointOptions]
    #
    # @!attribute [rw] advanced_security_options
    #   The current status of the Elasticsearch domain's advanced security
    #   options.
    #   @return [Types::AdvancedSecurityOptions]
    #
    # @!attribute [rw] auto_tune_options
    #   The current status of the Elasticsearch domain's Auto-Tune options.
    #   @return [Types::AutoTuneOptionsOutput]
    #
    # @!attribute [rw] change_progress_details
    #   Specifies change details of the domain configuration change.
    #   @return [Types::ChangeProgressDetails]
    #
    class ElasticsearchDomainStatus < Struct.new(
      :domain_id,
      :domain_name,
      :arn,
      :created,
      :deleted,
      :endpoint,
      :endpoints,
      :processing,
      :upgrade_processing,
      :elasticsearch_version,
      :elasticsearch_cluster_config,
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

    # Status of the Elasticsearch version options for the specified
    # Elasticsearch domain.
    #
    # @!attribute [rw] options
    #   Specifies the Elasticsearch version for the specified Elasticsearch
    #   domain.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Specifies the status of the Elasticsearch version options for the
    #   specified Elasticsearch domain.
    #   @return [Types::OptionStatus]
    #
    class ElasticsearchVersionStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the Encryption At Rest Options.
    #
    # @!attribute [rw] enabled
    #   Specifies the option to enable Encryption At Rest.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   Specifies the KMS Key ID for Encryption At Rest options.
    #   @return [String]
    #
    class EncryptionAtRestOptions < Struct.new(
      :enabled,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Status of the Encryption At Rest options for the specified
    # Elasticsearch domain.
    #
    # @!attribute [rw] options
    #   Specifies the Encryption At Rest options for the specified
    #   Elasticsearch domain.
    #   @return [Types::EncryptionAtRestOptions]
    #
    # @!attribute [rw] status
    #   Specifies the status of the Encryption At Rest options for the
    #   specified Elasticsearch domain.
    #   @return [Types::OptionStatus]
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
    class ErrorDetails < Struct.new(
      :error_type,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter used to limit results when describing inbound or outbound
    # cross-cluster search connections. Multiple values can be specified per
    # filter. A cross-cluster search connection must match at least one of
    # the specified values for it to be returned from an operation.
    #
    # @!attribute [rw] name
    #   Specifies the name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   Contains one or more values for the filter.
    #   @return [Array<String>]
    #
    class Filter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for request parameters to `
    # GetCompatibleElasticsearchVersions ` operation.
    #
    # @!attribute [rw] domain_name
    #   The name of an Elasticsearch domain. Domain names are unique across
    #   the domains owned by an account within an AWS region. Domain names
    #   start with a letter or number and can contain the following
    #   characters: a-z (lowercase), 0-9, and - (hyphen).
    #   @return [String]
    #
    class GetCompatibleElasticsearchVersionsRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for response returned by `
    # GetCompatibleElasticsearchVersions ` operation.
    #
    # @!attribute [rw] compatible_elasticsearch_versions
    #   A map of compatible Elasticsearch versions returned as part of the `
    #   GetCompatibleElasticsearchVersions ` operation.
    #   @return [Array<Types::CompatibleVersionsMap>]
    #
    class GetCompatibleElasticsearchVersionsResponse < Struct.new(
      :compatible_elasticsearch_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for request parameters to ` GetPackageVersionHistory `
    # operation.
    #
    # @!attribute [rw] package_id
    #   Returns an audit history of versions of the package.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Limits results to a maximum number of versions.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Used for pagination. Only necessary if a previous API call includes
    #   a non-null NextToken value. If provided, returns results for the
    #   next page.
    #   @return [String]
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
    class GetPackageVersionHistoryResponse < Struct.new(
      :package_id,
      :package_version_history_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for request parameters to ` GetUpgradeHistory ` operation.
    #
    # @!attribute [rw] domain_name
    #   The name of an Elasticsearch domain. Domain names are unique across
    #   the domains owned by an account within an AWS region. Domain names
    #   start with a letter or number and can contain the following
    #   characters: a-z (lowercase), 0-9, and - (hyphen).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Set this value to limit the number of results returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Paginated APIs accepts NextToken input to returns next page results
    #   and provides a NextToken output in the response which can be used by
    #   the client to retrieve more results.
    #   @return [String]
    #
    class GetUpgradeHistoryRequest < Struct.new(
      :domain_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for response returned by ` GetUpgradeHistory ` operation.
    #
    # @!attribute [rw] upgrade_histories
    #   A list of ` UpgradeHistory ` objects corresponding to each Upgrade
    #   or Upgrade Eligibility Check performed on a domain returned as part
    #   of ` GetUpgradeHistoryResponse ` object.
    #   @return [Array<Types::UpgradeHistory>]
    #
    # @!attribute [rw] next_token
    #   Pagination token that needs to be supplied to the next call to get
    #   the next page of results
    #   @return [String]
    #
    class GetUpgradeHistoryResponse < Struct.new(
      :upgrade_histories,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for request parameters to ` GetUpgradeStatus ` operation.
    #
    # @!attribute [rw] domain_name
    #   The name of an Elasticsearch domain. Domain names are unique across
    #   the domains owned by an account within an AWS region. Domain names
    #   start with a letter or number and can contain the following
    #   characters: a-z (lowercase), 0-9, and - (hyphen).
    #   @return [String]
    #
    class GetUpgradeStatusRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for response returned by ` GetUpgradeStatus ` operation.
    #
    # @!attribute [rw] upgrade_step
    #   Represents one of 3 steps that an Upgrade or Upgrade Eligibility
    #   Check does through: * PreUpgradeCheck
    #   * Snapshot
    #   * Upgrade
    #   @return [String]
    #
    # @!attribute [rw] step_status
    #   One of 4 statuses that a step can go through returned as part of the
    #   ` GetUpgradeStatusResponse ` object. The status can take one of the
    #   following values: * In Progress
    #   * Succeeded
    #   * Succeeded with Issues
    #   * Failed
    #   @return [String]
    #
    # @!attribute [rw] upgrade_name
    #   A string that describes the update briefly
    #   @return [String]
    #
    class GetUpgradeStatusResponse < Struct.new(
      :upgrade_step,
      :step_status,
      :upgrade_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies details of an inbound connection.
    #
    # @!attribute [rw] source_domain_info
    #   Specifies the `DomainInformation` for the source Elasticsearch
    #   domain.
    #   @return [Types::DomainInformation]
    #
    # @!attribute [rw] destination_domain_info
    #   Specifies the `DomainInformation` for the destination Elasticsearch
    #   domain.
    #   @return [Types::DomainInformation]
    #
    # @!attribute [rw] cross_cluster_search_connection_id
    #   Specifies the connection id for the inbound cross-cluster search
    #   connection.
    #   @return [String]
    #
    # @!attribute [rw] connection_status
    #   Specifies the `InboundCrossClusterSearchConnectionStatus` for the
    #   outbound connection.
    #   @return [Types::InboundCrossClusterSearchConnectionStatus]
    #
    class InboundCrossClusterSearchConnection < Struct.new(
      :source_domain_info,
      :destination_domain_info,
      :cross_cluster_search_connection_id,
      :connection_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the coonection status of an inbound cross-cluster search
    # connection.
    #
    # @!attribute [rw] status_code
    #   The state code for inbound connection. This can be one of the
    #   following:
    #
    #   * PENDING\_ACCEPTANCE: Inbound connection is not yet accepted by
    #     destination domain owner.
    #   * APPROVED: Inbound connection is pending acceptance by destination
    #     domain owner.
    #   * REJECTING: Inbound connection rejection is in process.
    #   * REJECTED: Inbound connection is rejected.
    #   * DELETING: Inbound connection deletion is in progress.
    #   * DELETED: Inbound connection is deleted and cannot be used further.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Specifies verbose information for the inbound connection status.
    #   @return [String]
    #
    class InboundCrossClusterSearchConnectionStatus < Struct.new(
      :status_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # InstanceCountLimits represents the limits on number of instances that
    # be created in Amazon Elasticsearch for given InstanceType.
    #
    # @!attribute [rw] minimum_instance_count
    #   Minimum number of Instances that can be instantiated for given
    #   InstanceType.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_instance_count
    #   Maximum number of Instances that can be instantiated for given
    #   InstanceType.
    #   @return [Integer]
    #
    class InstanceCountLimits < Struct.new(
      :minimum_instance_count,
      :maximum_instance_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # InstanceLimits represents the list of instance related attributes that
    # are available for given InstanceType.
    #
    # @!attribute [rw] instance_count_limits
    #   InstanceCountLimits represents the limits on number of instances
    #   that be created in Amazon Elasticsearch for given InstanceType.
    #   @return [Types::InstanceCountLimits]
    #
    class InstanceLimits < Struct.new(
      :instance_count_limits)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing has failed because of an unknown error,
    # exception or failure (the failure is internal to the service) . Gives
    # http status code of 500.
    #
    class InternalException < Aws::EmptyStructure; end

    # The request processing has failed because of invalid pagination token
    # provided by customer. Returns an HTTP status code of 400.
    #
    class InvalidPaginationTokenException < Aws::EmptyStructure; end

    # An exception for trying to create or access sub-resource that is
    # either invalid or not supported. Gives http status code of 409.
    #
    class InvalidTypeException < Aws::EmptyStructure; end

    # An exception for trying to create more than allowed resources or
    # sub-resources. Gives http status code of 409.
    #
    class LimitExceededException < Aws::EmptyStructure; end

    # Limits for given InstanceType and for each of it's role.
    #  Limits contains following ` StorageTypes, ` ` InstanceLimits ` and `
    # AdditionalLimits `
    #
    # @!attribute [rw] storage_types
    #   StorageType represents the list of storage related types and
    #   attributes that are available for given InstanceType.
    #   @return [Array<Types::StorageType>]
    #
    # @!attribute [rw] instance_limits
    #   InstanceLimits represents the list of instance related attributes
    #   that are available for given InstanceType.
    #   @return [Types::InstanceLimits]
    #
    # @!attribute [rw] additional_limits
    #   List of additional limits that are specific to a given InstanceType
    #   and for each of it's ` InstanceRole ` .
    #   @return [Array<Types::AdditionalLimit>]
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
    # @!attribute [rw] engine_type
    #   Optional parameter to filter the output by domain engine type.
    #   Acceptable values are 'Elasticsearch' and 'OpenSearch'.
    #   @return [String]
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
    class ListDomainNamesResponse < Struct.new(
      :domain_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for request parameters to ` ListDomainsForPackage `
    # operation.
    #
    # @!attribute [rw] package_id
    #   The package for which to list domains.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Limits results to a maximum number of domains.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Used for pagination. Only necessary if a previous API call includes
    #   a non-null NextToken value. If provided, returns results for the
    #   next page.
    #   @return [String]
    #
    class ListDomainsForPackageRequest < Struct.new(
      :package_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for response parameters to ` ListDomainsForPackage `
    # operation.
    #
    # @!attribute [rw] domain_package_details_list
    #   List of `DomainPackageDetails` objects.
    #   @return [Array<Types::DomainPackageDetails>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    class ListDomainsForPackageResponse < Struct.new(
      :domain_package_details_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the ` ListElasticsearchInstanceTypes `
    # operation.
    #
    # @!attribute [rw] elasticsearch_version
    #   Version of Elasticsearch for which list of supported elasticsearch
    #   instance types are needed.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   DomainName represents the name of the Domain that we are trying to
    #   modify. This should be present only if we are querying for list of
    #   available Elasticsearch instance types when modifying existing
    #   domain.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Set this value to limit the number of results returned. Value
    #   provided must be greater than 30 else it wont be honored.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   NextToken should be sent in case if earlier API call produced result
    #   containing NextToken. It is used for pagination.
    #   @return [String]
    #
    class ListElasticsearchInstanceTypesRequest < Struct.new(
      :elasticsearch_version,
      :domain_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters returned by `
    # ListElasticsearchInstanceTypes ` operation.
    #
    # @!attribute [rw] elasticsearch_instance_types
    #   List of instance types supported by Amazon Elasticsearch service for
    #   given ` ElasticsearchVersion `
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   In case if there are more results available NextToken would be
    #   present, make further request to the same API with received
    #   NextToken to paginate remaining results.
    #   @return [String]
    #
    class ListElasticsearchInstanceTypesResponse < Struct.new(
      :elasticsearch_instance_types,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the ` ListElasticsearchVersions `
    # operation. Use ` MaxResults ` to control the maximum number of results
    # to
    # retrieve in a single call.
    #
    #  Use ` NextToken ` in response to retrieve more results. If the
    # received response does not contain a NextToken, then there are no more
    # results to retrieve.
    #
    # @!attribute [rw] max_results
    #   Set this value to limit the number of results returned. Value
    #   provided must be greater than 10 else it wont be honored.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Paginated APIs accepts NextToken input to returns next page results
    #   and provides a NextToken output in the response which can be used by
    #   the client to retrieve more results.
    #   @return [String]
    #
    class ListElasticsearchVersionsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters for response received from `
    # ListElasticsearchVersions ` operation.
    #
    # @!attribute [rw] elasticsearch_versions
    #   List of supported elastic search versions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Paginated APIs accepts NextToken input to returns next page results
    #   and provides a NextToken output in the response which can be used by
    #   the client to retrieve more results.
    #   @return [String]
    #
    class ListElasticsearchVersionsResponse < Struct.new(
      :elasticsearch_versions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for request parameters to ` ListPackagesForDomain `
    # operation.
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
    class ListPackagesForDomainRequest < Struct.new(
      :domain_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for response parameters to ` ListPackagesForDomain `
    # operation.
    #
    # @!attribute [rw] domain_package_details_list
    #   List of `DomainPackageDetails` objects.
    #   @return [Array<Types::DomainPackageDetails>]
    #
    # @!attribute [rw] next_token
    #   Pagination token that needs to be supplied to the next call to get
    #   the next page of results.
    #   @return [String]
    #
    class ListPackagesForDomainResponse < Struct.new(
      :domain_package_details_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the `ListTags` operation. Specify the
    # `ARN` for the Elasticsearch domain to which the tags are attached that
    # you want to view are attached.
    #
    # @!attribute [rw] arn
    #   Specify the `ARN` for the Elasticsearch domain to which the tags are
    #   attached that you want to view.
    #   @return [String]
    #
    class ListTagsRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a `ListTags` operation. Contains tags for all requested
    # Elasticsearch domains.
    #
    # @!attribute [rw] tag_list
    #   List of `Tag` for the requested Elasticsearch domain.
    #   @return [Array<Types::Tag>]
    #
    class ListTagsResponse < Struct.new(
      :tag_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Retrieves information about each principal that is allowed to access a
    # given Amazon OpenSearch Service domain through the use of an interface
    # VPC endpoint
    #
    # @!attribute [rw] domain_name
    #   The name of the OpenSearch Service domain to retrieve access
    #   information for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    class ListVpcEndpointAccessRequest < Struct.new(
      :domain_name,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for response parameters to the `ListVpcEndpointAccess`
    # operation. Returns a list of accounts id and account type authorized
    # to manage VPC endpoints.
    #
    # @!attribute [rw] authorized_principal_list
    #   List of `AuthorizedPrincipal` describing the details of the
    #   permissions to manage VPC endpoints against the specified domain.
    #   @return [Array<Types::AuthorizedPrincipal>]
    #
    # @!attribute [rw] next_token
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    class ListVpcEndpointAccessResponse < Struct.new(
      :authorized_principal_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for request parameters to the `ListVpcEndpointsForDomain`
    # operation. Specifies the domain whose VPC endpoints will be listed.
    #
    # @!attribute [rw] domain_name
    #   Name of the ElasticSearch domain whose VPC endpoints are to be
    #   listed.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    class ListVpcEndpointsForDomainRequest < Struct.new(
      :domain_name,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for response parameters to the `ListVpcEndpointsForDomain`
    # operation. Returns a list containing summarized details of the VPC
    # endpoints.
    #
    # @!attribute [rw] vpc_endpoint_summary_list
    #   Provides list of `VpcEndpointSummary` summarizing details of the VPC
    #   endpoints.
    #   @return [Array<Types::VpcEndpointSummary>]
    #
    # @!attribute [rw] next_token
    #   Information about each endpoint associated with the domain.
    #   @return [String]
    #
    class ListVpcEndpointsForDomainResponse < Struct.new(
      :vpc_endpoint_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for request parameters to the `ListVpcEndpoints` operation.
    #
    # @!attribute [rw] next_token
    #   Identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    class ListVpcEndpointsRequest < Struct.new(
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for response parameters to the `ListVpcEndpoints` operation.
    # Returns a list containing summarized details of the VPC endpoints.
    #
    # @!attribute [rw] vpc_endpoint_summary_list
    #   Information about each endpoint.
    #   @return [Array<Types::VpcEndpointSummary>]
    #
    # @!attribute [rw] next_token
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    class ListVpcEndpointsResponse < Struct.new(
      :vpc_endpoint_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Log Publishing option that is set for given domain.
    # Attributes and their details: * CloudWatchLogsLogGroupArn: ARN of the
    # Cloudwatch log group to which
    #   log needs to be published.
    # * Enabled: Whether the log publishing for given log type is enabled or
    #   not
    #
    # @!attribute [rw] cloud_watch_logs_log_group_arn
    #   ARN of the Cloudwatch log group to which log needs to be published.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether given log publishing option is enabled or not.
    #   @return [Boolean]
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
    #   The log publishing options configured for the Elasticsearch domain.
    #   @return [Hash<String,Types::LogPublishingOption>]
    #
    # @!attribute [rw] status
    #   The status of the log publishing options for the Elasticsearch
    #   domain. See `OptionStatus` for the status information that's
    #   included.
    #   @return [Types::OptionStatus]
    #
    class LogPublishingOptionsStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Credentials for the master user: username and password, ARN, or both.
    #
    # @!attribute [rw] master_user_arn
    #   ARN for the master user (if IAM is enabled).
    #   @return [String]
    #
    # @!attribute [rw] master_user_name
    #   The master user's username, which is stored in the Amazon
    #   Elasticsearch Service domain's internal database.
    #   @return [String]
    #
    # @!attribute [rw] master_user_password
    #   The master user's password, which is stored in the Amazon
    #   Elasticsearch Service domain's internal database.
    #   @return [String]
    #
    class MasterUserOptions < Struct.new(
      :master_user_arn,
      :master_user_name,
      :master_user_password)
      SENSITIVE = [:master_user_name, :master_user_password]
      include Aws::Structure
    end

    # Specifies the node-to-node encryption options.
    #
    # @!attribute [rw] enabled
    #   Specify true to enable node-to-node encryption.
    #   @return [Boolean]
    #
    class NodeToNodeEncryptionOptions < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Status of the node-to-node encryption options for the specified
    # Elasticsearch domain.
    #
    # @!attribute [rw] options
    #   Specifies the node-to-node encryption options for the specified
    #   Elasticsearch domain.
    #   @return [Types::NodeToNodeEncryptionOptions]
    #
    # @!attribute [rw] status
    #   Specifies the status of the node-to-node encryption options for the
    #   specified Elasticsearch domain.
    #   @return [Types::OptionStatus]
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
    #   Timestamp which tells the creation date for the entity.
    #   @return [Time]
    #
    # @!attribute [rw] update_date
    #   Timestamp which tells the last updated time for the entity.
    #   @return [Time]
    #
    # @!attribute [rw] update_version
    #   Specifies the latest version for the entity.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   Provides the `OptionState` for the Elasticsearch domain.
    #   @return [String]
    #
    # @!attribute [rw] pending_deletion
    #   Indicates whether the Elasticsearch domain is being deleted.
    #   @return [Boolean]
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

    # Specifies details of an outbound connection.
    #
    # @!attribute [rw] source_domain_info
    #   Specifies the `DomainInformation` for the source Elasticsearch
    #   domain.
    #   @return [Types::DomainInformation]
    #
    # @!attribute [rw] destination_domain_info
    #   Specifies the `DomainInformation` for the destination Elasticsearch
    #   domain.
    #   @return [Types::DomainInformation]
    #
    # @!attribute [rw] cross_cluster_search_connection_id
    #   Specifies the connection id for the outbound cross-cluster search
    #   connection.
    #   @return [String]
    #
    # @!attribute [rw] connection_alias
    #   Specifies the connection alias for the outbound cross-cluster search
    #   connection.
    #   @return [String]
    #
    # @!attribute [rw] connection_status
    #   Specifies the `OutboundCrossClusterSearchConnectionStatus` for the
    #   outbound connection.
    #   @return [Types::OutboundCrossClusterSearchConnectionStatus]
    #
    class OutboundCrossClusterSearchConnection < Struct.new(
      :source_domain_info,
      :destination_domain_info,
      :cross_cluster_search_connection_id,
      :connection_alias,
      :connection_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the connection status of an outbound cross-cluster search
    # connection.
    #
    # @!attribute [rw] status_code
    #   The state code for outbound connection. This can be one of the
    #   following:
    #
    #   * VALIDATING: The outbound connection request is being validated.
    #   * VALIDATION\_FAILED: Validation failed for the connection request.
    #   * PENDING\_ACCEPTANCE: Outbound connection request is validated and
    #     is not yet accepted by destination domain owner.
    #   * PROVISIONING: Outbound connection request is in process.
    #   * ACTIVE: Outbound connection is active and ready to use.
    #   * REJECTED: Outbound connection request is rejected by destination
    #     domain owner.
    #   * DELETING: Outbound connection deletion is in progress.
    #   * DELETED: Outbound connection is deleted and cannot be used
    #     further.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Specifies verbose information for the outbound connection status.
    #   @return [String]
    #
    class OutboundCrossClusterSearchConnectionStatus < Struct.new(
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
    #   User specified name of the package.
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
    #   Current state of the package. Values are
    #   COPYING/COPY\_FAILED/AVAILABLE/DELETING/DELETE\_FAILED
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp which tells creation date of the package.
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

    # The S3 location for importing the package specified as `S3BucketName`
    # and `S3Key`
    #
    # @!attribute [rw] s3_bucket_name
    #   Name of the bucket containing the package.
    #   @return [String]
    #
    # @!attribute [rw] s3_key
    #   Key (file name) of the package.
    #   @return [String]
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
    #   Version of the package.
    #   @return [String]
    #
    # @!attribute [rw] commit_message
    #   A message associated with the version.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp which tells creation time of the package version.
    #   @return [Time]
    #
    class PackageVersionHistory < Struct.new(
      :package_version,
      :commit_message,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for parameters to
    # `PurchaseReservedElasticsearchInstanceOffering`
    #
    # @!attribute [rw] reserved_elasticsearch_instance_offering_id
    #   The ID of the reserved Elasticsearch instance offering to purchase.
    #   @return [String]
    #
    # @!attribute [rw] reservation_name
    #   A customer-specified identifier to track this reservation.
    #   @return [String]
    #
    # @!attribute [rw] instance_count
    #   The number of Elasticsearch instances to reserve.
    #   @return [Integer]
    #
    class PurchaseReservedElasticsearchInstanceOfferingRequest < Struct.new(
      :reserved_elasticsearch_instance_offering_id,
      :reservation_name,
      :instance_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a
    # `PurchaseReservedElasticsearchInstanceOffering` operation.
    #
    # @!attribute [rw] reserved_elasticsearch_instance_id
    #   Details of the reserved Elasticsearch instance which was purchased.
    #   @return [String]
    #
    # @!attribute [rw] reservation_name
    #   The customer-specified identifier used to track this reservation.
    #   @return [String]
    #
    class PurchaseReservedElasticsearchInstanceOfferingResponse < Struct.new(
      :reserved_elasticsearch_instance_id,
      :reservation_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the specific price and frequency of a recurring charges for a
    # reserved Elasticsearch instance, or for a reserved Elasticsearch
    # instance offering.
    #
    # @!attribute [rw] recurring_charge_amount
    #   The monetary amount of the recurring charge.
    #   @return [Float]
    #
    # @!attribute [rw] recurring_charge_frequency
    #   The frequency of the recurring charge.
    #   @return [String]
    #
    class RecurringCharge < Struct.new(
      :recurring_charge_amount,
      :recurring_charge_frequency)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the
    # `RejectInboundCrossClusterSearchConnection` operation.
    #
    # @!attribute [rw] cross_cluster_search_connection_id
    #   The id of the inbound connection that you want to reject.
    #   @return [String]
    #
    class RejectInboundCrossClusterSearchConnectionRequest < Struct.new(
      :cross_cluster_search_connection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a `RejectInboundCrossClusterSearchConnection` operation.
    # Contains details of rejected inbound connection.
    #
    # @!attribute [rw] cross_cluster_search_connection
    #   Specifies the `InboundCrossClusterSearchConnection` of rejected
    #   inbound connection.
    #   @return [Types::InboundCrossClusterSearchConnection]
    #
    class RejectInboundCrossClusterSearchConnectionResponse < Struct.new(
      :cross_cluster_search_connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the `RemoveTags` operation. Specify
    # the `ARN` for the Elasticsearch domain from which you want to remove
    # the specified `TagKey`.
    #
    # @!attribute [rw] arn
    #   Specifies the `ARN` for the Elasticsearch domain from which you want
    #   to delete the specified tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Specifies the `TagKey` list which you want to remove from the
    #   Elasticsearch domain.
    #   @return [Array<String>]
    #
    class RemoveTagsRequest < Struct.new(
      :arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of a reserved Elasticsearch instance.
    #
    # @!attribute [rw] reservation_name
    #   The customer-specified identifier to track this reservation.
    #   @return [String]
    #
    # @!attribute [rw] reserved_elasticsearch_instance_id
    #   The unique identifier for the reservation.
    #   @return [String]
    #
    # @!attribute [rw] reserved_elasticsearch_instance_offering_id
    #   The offering identifier.
    #   @return [String]
    #
    # @!attribute [rw] elasticsearch_instance_type
    #   The Elasticsearch instance type offered by the reserved instance
    #   offering.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time the reservation started.
    #   @return [Time]
    #
    # @!attribute [rw] duration
    #   The duration, in seconds, for which the Elasticsearch instance is
    #   reserved.
    #   @return [Integer]
    #
    # @!attribute [rw] fixed_price
    #   The upfront fixed charge you will paid to purchase the specific
    #   reserved Elasticsearch instance offering.
    #   @return [Float]
    #
    # @!attribute [rw] usage_price
    #   The rate you are charged for each hour for the domain that is using
    #   this reserved instance.
    #   @return [Float]
    #
    # @!attribute [rw] currency_code
    #   The currency code for the reserved Elasticsearch instance offering.
    #   @return [String]
    #
    # @!attribute [rw] elasticsearch_instance_count
    #   The number of Elasticsearch instances that have been reserved.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The state of the reserved Elasticsearch instance.
    #   @return [String]
    #
    # @!attribute [rw] payment_option
    #   The payment option as defined in the reserved Elasticsearch instance
    #   offering.
    #   @return [String]
    #
    # @!attribute [rw] recurring_charges
    #   The charge to your account regardless of whether you are creating
    #   any domains using the instance offering.
    #   @return [Array<Types::RecurringCharge>]
    #
    class ReservedElasticsearchInstance < Struct.new(
      :reservation_name,
      :reserved_elasticsearch_instance_id,
      :reserved_elasticsearch_instance_offering_id,
      :elasticsearch_instance_type,
      :start_time,
      :duration,
      :fixed_price,
      :usage_price,
      :currency_code,
      :elasticsearch_instance_count,
      :state,
      :payment_option,
      :recurring_charges)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of a reserved Elasticsearch instance offering.
    #
    # @!attribute [rw] reserved_elasticsearch_instance_offering_id
    #   The Elasticsearch reserved instance offering identifier.
    #   @return [String]
    #
    # @!attribute [rw] elasticsearch_instance_type
    #   The Elasticsearch instance type offered by the reserved instance
    #   offering.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The duration, in seconds, for which the offering will reserve the
    #   Elasticsearch instance.
    #   @return [Integer]
    #
    # @!attribute [rw] fixed_price
    #   The upfront fixed charge you will pay to purchase the specific
    #   reserved Elasticsearch instance offering.
    #   @return [Float]
    #
    # @!attribute [rw] usage_price
    #   The rate you are charged for each hour the domain that is using the
    #   offering is running.
    #   @return [Float]
    #
    # @!attribute [rw] currency_code
    #   The currency code for the reserved Elasticsearch instance offering.
    #   @return [String]
    #
    # @!attribute [rw] payment_option
    #   Payment option for the reserved Elasticsearch instance offering
    #   @return [String]
    #
    # @!attribute [rw] recurring_charges
    #   The charge to your account regardless of whether you are creating
    #   any domains using the instance offering.
    #   @return [Array<Types::RecurringCharge>]
    #
    class ReservedElasticsearchInstanceOffering < Struct.new(
      :reserved_elasticsearch_instance_offering_id,
      :elasticsearch_instance_type,
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
    class ResourceAlreadyExistsException < Aws::EmptyStructure; end

    # An exception for accessing or deleting a resource that does not exist.
    # Gives http status code of 400.
    #
    class ResourceNotFoundException < Aws::EmptyStructure; end

    # Revokes access to an Amazon OpenSearch Service domain that was
    # provided through an interface VPC endpoint.
    #
    # @!attribute [rw] domain_name
    #   The name of the OpenSearch Service domain.
    #   @return [String]
    #
    # @!attribute [rw] account
    #   The account ID to revoke access from.
    #   @return [String]
    #
    class RevokeVpcEndpointAccessRequest < Struct.new(
      :domain_name,
      :account)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for response parameters to the `RevokeVpcEndpointAccess`
    # operation. The response body for this operation is empty.
    #
    class RevokeVpcEndpointAccessResponse < Aws::EmptyStructure; end

    # Specifies the SAML Identity Provider's information.
    #
    # @!attribute [rw] metadata_content
    #   The Metadata of the SAML application in xml format.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The unique Entity ID of the application in SAML Identity Provider.
    #   @return [String]
    #
    class SAMLIdp < Struct.new(
      :metadata_content,
      :entity_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the SAML application configuration for the domain.
    #
    # @!attribute [rw] enabled
    #   True if SAML is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] idp
    #   Specifies the SAML Identity Provider's information.
    #   @return [Types::SAMLIdp]
    #
    # @!attribute [rw] master_user_name
    #   The SAML master username, which is stored in the Amazon
    #   Elasticsearch Service domain's internal database.
    #   @return [String]
    #
    # @!attribute [rw] master_backend_role
    #   The backend role to which the SAML master user is mapped to.
    #   @return [String]
    #
    # @!attribute [rw] subject_key
    #   The key to use for matching the SAML Subject attribute.
    #   @return [String]
    #
    # @!attribute [rw] roles_key
    #   The key to use for matching the SAML Roles attribute.
    #   @return [String]
    #
    # @!attribute [rw] session_timeout_minutes
    #   The duration, in minutes, after which a user session becomes
    #   inactive. Acceptable values are between 1 and 1440, and the default
    #   value is 60.
    #   @return [Integer]
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
    #   Describes the SAML Identity Provider's information.
    #   @return [Types::SAMLIdp]
    #
    # @!attribute [rw] subject_key
    #   The key used for matching the SAML Subject attribute.
    #   @return [String]
    #
    # @!attribute [rw] roles_key
    #   The key used for matching the SAML Roles attribute.
    #   @return [String]
    #
    # @!attribute [rw] session_timeout_minutes
    #   The duration, in minutes, after which a user session becomes
    #   inactive.
    #   @return [Integer]
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

    # Specifies details of the scheduled Auto-Tune action. See the
    # [Developer Guide][1] for more information.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html
    #
    # @!attribute [rw] date
    #   Specifies timestamp for the Auto-Tune action scheduled for the
    #   domain.
    #   @return [Time]
    #
    # @!attribute [rw] action_type
    #   Specifies Auto-Tune action type. Valid values are
    #   JVM\_HEAP\_SIZE\_TUNING and JVM\_YOUNG\_GEN\_TUNING.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   Specifies Auto-Tune action description.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   Specifies Auto-Tune action severity. Valid values are LOW, MEDIUM
    #   and HIGH.
    #   @return [String]
    #
    class ScheduledAutoTuneDetails < Struct.new(
      :date,
      :action_type,
      :action,
      :severity)
      SENSITIVE = []
      include Aws::Structure
    end

    # The current options of an Elasticsearch domain service software
    # options.
    #
    # @!attribute [rw] current_version
    #   The current service software version that is present on the domain.
    #   @return [String]
    #
    # @!attribute [rw] new_version
    #   The new service software version if one is available.
    #   @return [String]
    #
    # @!attribute [rw] update_available
    #   `True` if you are able to update you service software version.
    #   `False` if you are not able to update your service software version.
    #   @return [Boolean]
    #
    # @!attribute [rw] cancellable
    #   `True` if you are able to cancel your service software version
    #   update. `False` if you are not able to cancel your service software
    #   version.
    #   @return [Boolean]
    #
    # @!attribute [rw] update_status
    #   The status of your service software update. This field can take the
    #   following values: `ELIGIBLE`, `PENDING_UPDATE`, `IN_PROGRESS`,
    #   `COMPLETED`, and `NOT_ELIGIBLE`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the `UpdateStatus`.
    #   @return [String]
    #
    # @!attribute [rw] automated_update_date
    #   Timestamp, in Epoch time, until which you can manually request a
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

    # Specifies the time, in UTC format, when the service takes a daily
    # automated snapshot of the specified Elasticsearch domain. Default
    # value is `0` hours.
    #
    # @!attribute [rw] automated_snapshot_start_hour
    #   Specifies the time, in UTC format, when the service takes a daily
    #   automated snapshot of the specified Elasticsearch domain. Default
    #   value is `0` hours.
    #   @return [Integer]
    #
    class SnapshotOptions < Struct.new(
      :automated_snapshot_start_hour)
      SENSITIVE = []
      include Aws::Structure
    end

    # Status of a daily automated snapshot.
    #
    # @!attribute [rw] options
    #   Specifies the daily snapshot options specified for the Elasticsearch
    #   domain.
    #   @return [Types::SnapshotOptions]
    #
    # @!attribute [rw] status
    #   Specifies the status of a daily automated snapshot.
    #   @return [Types::OptionStatus]
    #
    class SnapshotOptionsStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the
    # `StartElasticsearchServiceSoftwareUpdate` operation. Specifies the
    # name of the Elasticsearch domain that you wish to schedule a service
    # software update on.
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that you want to update to the latest service
    #   software.
    #   @return [String]
    #
    class StartElasticsearchServiceSoftwareUpdateRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a `StartElasticsearchServiceSoftwareUpdate` operation.
    # Contains the status of the update.
    #
    # @!attribute [rw] service_software_options
    #   The current status of the Elasticsearch service software update.
    #   @return [Types::ServiceSoftwareOptions]
    #
    class StartElasticsearchServiceSoftwareUpdateResponse < Struct.new(
      :service_software_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # StorageTypes represents the list of storage related types and their
    # attributes that are available for given InstanceType.
    #
    # @!attribute [rw] storage_type_name
    #   Type of the storage. List of available storage options: 1.  instance
    #   2.  ebs
    #   @return [String]
    #
    # @!attribute [rw] storage_sub_type_name
    #   SubType of the given storage type. List of available sub-storage
    #   options: For "instance" storageType we wont have any
    #   storageSubType, in case of "ebs" storageType we will have
    #   following valid storageSubTypes 1.  standard
    #   2.  gp2
    #   3.  gp3
    #   4.  io1
    #
    #    Refer `VolumeType` for more information regarding above EBS storage
    #   options.
    #   @return [String]
    #
    # @!attribute [rw] storage_type_limits
    #   List of limits that are applicable for given storage type.
    #   @return [Array<Types::StorageTypeLimit>]
    #
    class StorageType < Struct.new(
      :storage_type_name,
      :storage_sub_type_name,
      :storage_type_limits)
      SENSITIVE = []
      include Aws::Structure
    end

    # Limits that are applicable for given storage type.
    #
    # @!attribute [rw] limit_name
    #   Name of storage limits that are applicable for given storage type.
    #   If ` StorageType ` is ebs, following storage options are applicable
    #   1.  MinimumVolumeSize
    #   2.  MaximumVolumeSize
    #   3.  MaximumIops
    #   4.  MinimumIops
    #   5.  MaximumThroughput
    #   6.  MinimumThroughput
    #   @return [String]
    #
    # @!attribute [rw] limit_values
    #   Values for the ` StorageTypeLimit$LimitName ` .
    #   @return [Array<String>]
    #
    class StorageTypeLimit < Struct.new(
      :limit_name,
      :limit_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a key value pair for a resource tag.
    #
    # @!attribute [rw] key
    #   Specifies the `TagKey`, the name of the tag. Tag keys must be unique
    #   for the Elasticsearch domain to which they are attached.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Specifies the `TagValue`, the value assigned to the corresponding
    #   tag key. Tag values can be null and do not have to be unique in a
    #   tag set. For example, you can have a key value pair in a tag set of
    #   `project : Trinity` and `cost-center : Trinity`
    #   @return [String]
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the `UpdateElasticsearchDomain`
    # operation. Specifies the type and number of instances in the domain
    # cluster.
    #
    # @!attribute [rw] domain_name
    #   The name of the Elasticsearch domain that you are updating.
    #   @return [String]
    #
    # @!attribute [rw] elasticsearch_cluster_config
    #   The type and number of instances to instantiate for the domain
    #   cluster.
    #   @return [Types::ElasticsearchClusterConfig]
    #
    # @!attribute [rw] ebs_options
    #   Specify the type and size of the EBS volume that you want to use.
    #   @return [Types::EBSOptions]
    #
    # @!attribute [rw] snapshot_options
    #   Option to set the time, in UTC format, for the daily automated
    #   snapshot. Default value is `0` hours.
    #   @return [Types::SnapshotOptions]
    #
    # @!attribute [rw] vpc_options
    #   Options to specify the subnets and security groups for VPC endpoint.
    #   For more information, see [Creating a VPC][1] in *VPC Endpoints for
    #   Amazon Elasticsearch Service Domains*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-creating-vpc
    #   @return [Types::VPCOptions]
    #
    # @!attribute [rw] cognito_options
    #   Options to specify the Cognito user and identity pools for Kibana
    #   authentication. For more information, see [Amazon Cognito
    #   Authentication for Kibana][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html
    #   @return [Types::CognitoOptions]
    #
    # @!attribute [rw] advanced_options
    #   Modifies the advanced option to allow references to indices in an
    #   HTTP request body. Must be `false` when configuring access to
    #   individual sub-resources. By default, the value is `true`. See
    #   [Configuration Advanced Options][1] for more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] access_policies
    #   IAM access policy as a JSON-formatted string.
    #   @return [String]
    #
    # @!attribute [rw] log_publishing_options
    #   Map of `LogType` and `LogPublishingOption`, each containing options
    #   to publish a given type of Elasticsearch log.
    #   @return [Hash<String,Types::LogPublishingOption>]
    #
    # @!attribute [rw] domain_endpoint_options
    #   Options to specify configuration that will be applied to the domain
    #   endpoint.
    #   @return [Types::DomainEndpointOptions]
    #
    # @!attribute [rw] advanced_security_options
    #   Specifies advanced security options.
    #   @return [Types::AdvancedSecurityOptionsInput]
    #
    # @!attribute [rw] node_to_node_encryption_options
    #   Specifies the NodeToNodeEncryptionOptions.
    #   @return [Types::NodeToNodeEncryptionOptions]
    #
    # @!attribute [rw] encryption_at_rest_options
    #   Specifies the Encryption At Rest Options.
    #   @return [Types::EncryptionAtRestOptions]
    #
    # @!attribute [rw] auto_tune_options
    #   Specifies Auto-Tune options.
    #   @return [Types::AutoTuneOptions]
    #
    # @!attribute [rw] dry_run
    #   This flag, when set to True, specifies whether the
    #   `UpdateElasticsearchDomain` request should return the results of
    #   validation checks without actually applying the change. This flag,
    #   when set to True, specifies the deployment mechanism through which
    #   the update shall be applied on the domain. This will not actually
    #   perform the Update.
    #   @return [Boolean]
    #
    class UpdateElasticsearchDomainConfigRequest < Struct.new(
      :domain_name,
      :elasticsearch_cluster_config,
      :ebs_options,
      :snapshot_options,
      :vpc_options,
      :cognito_options,
      :advanced_options,
      :access_policies,
      :log_publishing_options,
      :domain_endpoint_options,
      :advanced_security_options,
      :node_to_node_encryption_options,
      :encryption_at_rest_options,
      :auto_tune_options,
      :dry_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of an `UpdateElasticsearchDomain` request. Contains the
    # status of the Elasticsearch domain being updated.
    #
    # @!attribute [rw] domain_config
    #   The status of the updated Elasticsearch domain.
    #   @return [Types::ElasticsearchDomainConfig]
    #
    # @!attribute [rw] dry_run_results
    #   Contains result of DryRun.
    #   @return [Types::DryRunResults]
    #
    class UpdateElasticsearchDomainConfigResponse < Struct.new(
      :domain_config,
      :dry_run_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for request parameters to ` UpdatePackage ` operation.
    #
    # @!attribute [rw] package_id
    #   Unique identifier for the package.
    #   @return [String]
    #
    # @!attribute [rw] package_source
    #   The S3 location for importing the package specified as
    #   `S3BucketName` and `S3Key`
    #   @return [Types::PackageSource]
    #
    # @!attribute [rw] package_description
    #   New description of the package.
    #   @return [String]
    #
    # @!attribute [rw] commit_message
    #   An info message for the new version which will be shown as part of
    #   `GetPackageVersionHistoryResponse`.
    #   @return [String]
    #
    class UpdatePackageRequest < Struct.new(
      :package_id,
      :package_source,
      :package_description,
      :commit_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for response returned by ` UpdatePackage ` operation.
    #
    # @!attribute [rw] package_details
    #   Information about the package `PackageDetails`.
    #   @return [Types::PackageDetails]
    #
    class UpdatePackageResponse < Struct.new(
      :package_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Modifies an Amazon OpenSearch Service-managed interface VPC endpoint.
    #
    # @!attribute [rw] vpc_endpoint_id
    #   Unique identifier of the VPC endpoint to be updated.
    #   @return [String]
    #
    # @!attribute [rw] vpc_options
    #   The security groups and/or subnets to add, remove, or modify.
    #   @return [Types::VPCOptions]
    #
    class UpdateVpcEndpointRequest < Struct.new(
      :vpc_endpoint_id,
      :vpc_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the configuration and status of the VPC endpoint being
    # updated.
    #
    # @!attribute [rw] vpc_endpoint
    #   The endpoint to be updated.
    #   @return [Types::VpcEndpoint]
    #
    class UpdateVpcEndpointResponse < Struct.new(
      :vpc_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for request parameters to ` UpgradeElasticsearchDomain `
    # operation.
    #
    # @!attribute [rw] domain_name
    #   The name of an Elasticsearch domain. Domain names are unique across
    #   the domains owned by an account within an AWS region. Domain names
    #   start with a letter or number and can contain the following
    #   characters: a-z (lowercase), 0-9, and - (hyphen).
    #   @return [String]
    #
    # @!attribute [rw] target_version
    #   The version of Elasticsearch that you intend to upgrade the domain
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] perform_check_only
    #   This flag, when set to True, indicates that an Upgrade Eligibility
    #   Check needs to be performed. This will not actually perform the
    #   Upgrade.
    #   @return [Boolean]
    #
    class UpgradeElasticsearchDomainRequest < Struct.new(
      :domain_name,
      :target_version,
      :perform_check_only)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for response returned by ` UpgradeElasticsearchDomain `
    # operation.
    #
    # @!attribute [rw] domain_name
    #   The name of an Elasticsearch domain. Domain names are unique across
    #   the domains owned by an account within an AWS region. Domain names
    #   start with a letter or number and can contain the following
    #   characters: a-z (lowercase), 0-9, and - (hyphen).
    #   @return [String]
    #
    # @!attribute [rw] target_version
    #   The version of Elasticsearch that you intend to upgrade the domain
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] perform_check_only
    #   This flag, when set to True, indicates that an Upgrade Eligibility
    #   Check needs to be performed. This will not actually perform the
    #   Upgrade.
    #   @return [Boolean]
    #
    # @!attribute [rw] change_progress_details
    #   Specifies change details of the domain configuration change.
    #   @return [Types::ChangeProgressDetails]
    #
    class UpgradeElasticsearchDomainResponse < Struct.new(
      :domain_name,
      :target_version,
      :perform_check_only,
      :change_progress_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # History of the last 10 Upgrades and Upgrade Eligibility Checks.
    #
    # @!attribute [rw] upgrade_name
    #   A string that describes the update briefly
    #   @return [String]
    #
    # @!attribute [rw] start_timestamp
    #   UTC Timestamp at which the Upgrade API call was made in
    #   "yyyy-MM-ddTHH:mm:ssZ" format.
    #   @return [Time]
    #
    # @!attribute [rw] upgrade_status
    #   The overall status of the update. The status can take one of the
    #   following values: * In Progress
    #   * Succeeded
    #   * Succeeded with Issues
    #   * Failed
    #   @return [String]
    #
    # @!attribute [rw] steps_list
    #   A list of ` UpgradeStepItem ` s representing information about each
    #   step performed as pard of a specific Upgrade or Upgrade Eligibility
    #   Check.
    #   @return [Array<Types::UpgradeStepItem>]
    #
    class UpgradeHistory < Struct.new(
      :upgrade_name,
      :start_timestamp,
      :upgrade_status,
      :steps_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a single step of the Upgrade or Upgrade Eligibility Check
    # workflow.
    #
    # @!attribute [rw] upgrade_step
    #   Represents one of 3 steps that an Upgrade or Upgrade Eligibility
    #   Check does through: * PreUpgradeCheck
    #   * Snapshot
    #   * Upgrade
    #   @return [String]
    #
    # @!attribute [rw] upgrade_step_status
    #   The status of a particular step during an upgrade. The status can
    #   take one of the following values: * In Progress
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
    #   The Floating point value representing progress percentage of a
    #   particular step.
    #   @return [Float]
    #
    class UpgradeStepItem < Struct.new(
      :upgrade_step,
      :upgrade_step_status,
      :issues,
      :progress_percent)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options to specify the subnets and security groups for VPC endpoint.
    # For more information, see [ VPC Endpoints for Amazon Elasticsearch
    # Service Domains][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html
    #
    # @!attribute [rw] vpc_id
    #   The VPC Id for the Elasticsearch domain. Exists only if the domain
    #   was created with VPCOptions.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   Specifies the subnets for VPC endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] availability_zones
    #   The availability zones for the Elasticsearch domain. Exists only if
    #   the domain was created with VPCOptions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   Specifies the security groups for VPC endpoint.
    #   @return [Array<String>]
    #
    class VPCDerivedInfo < Struct.new(
      :vpc_id,
      :subnet_ids,
      :availability_zones,
      :security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Status of the VPC options for the specified Elasticsearch domain.
    #
    # @!attribute [rw] options
    #   Specifies the VPC options for the specified Elasticsearch domain.
    #   @return [Types::VPCDerivedInfo]
    #
    # @!attribute [rw] status
    #   Specifies the status of the VPC options for the specified
    #   Elasticsearch domain.
    #   @return [Types::OptionStatus]
    #
    class VPCDerivedInfoStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options to specify the subnets and security groups for VPC endpoint.
    # For more information, see [ VPC Endpoints for Amazon Elasticsearch
    # Service Domains][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html
    #
    # @!attribute [rw] subnet_ids
    #   Specifies the subnets for VPC endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   Specifies the security groups for VPC endpoint.
    #   @return [Array<String>]
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
    class ValidationException < Aws::EmptyStructure; end

    # The connection endpoint for connecting to an Amazon OpenSearch Service
    # domain through a proxy.
    #
    # @!attribute [rw] vpc_endpoint_id
    #   The unique identifier of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_owner
    #   The creator of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] domain_arn
    #   The Amazon Resource Name (ARN) of the domain associated with the
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] vpc_options
    #   Options to specify the subnets and security groups for an Amazon
    #   OpenSearch Service VPC endpoint.
    #   @return [Types::VPCDerivedInfo]
    #
    # @!attribute [rw] status
    #   The current status of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The connection endpoint ID for connecting to the domain.
    #   @return [String]
    #
    class VpcEndpoint < Struct.new(
      :vpc_endpoint_id,
      :vpc_endpoint_owner,
      :domain_arn,
      :vpc_options,
      :status,
      :endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error information when attempting to describe an Amazon OpenSearch
    # Service-managed VPC endpoint.
    #
    # @!attribute [rw] vpc_endpoint_id
    #   The unique identifier of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The code associated with the error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A message describing the error.
    #   @return [String]
    #
    class VpcEndpointError < Struct.new(
      :vpc_endpoint_id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information for an Amazon OpenSearch Service-managed VPC
    # endpoint.
    #
    # @!attribute [rw] vpc_endpoint_id
    #   The unique identifier of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_owner
    #   The creator of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] domain_arn
    #   The Amazon Resource Name (ARN) of the domain associated with the
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the endpoint.
    #   @return [String]
    #
    class VpcEndpointSummary < Struct.new(
      :vpc_endpoint_id,
      :vpc_endpoint_owner,
      :domain_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the zone awareness configuration for the domain cluster,
    # such as the number of availability zones.
    #
    # @!attribute [rw] availability_zone_count
    #   An integer value to indicate the number of availability zones for a
    #   domain when zone awareness is enabled. This should be equal to
    #   number of subnets if VPC endpoints is enabled
    #   @return [Integer]
    #
    class ZoneAwarenessConfig < Struct.new(
      :availability_zone_count)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
