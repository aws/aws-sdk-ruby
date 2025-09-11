# frozen_string_literal: true

# This is generated code!

module Aws::ElasticsearchService
  # This module contains the types returned by client operations.
  module Types

    # <p>Container for the parameters to the <code><a>AcceptInboundCrossClusterSearchConnection</a></code> operation.</p>
    # @!attribute cross_cluster_search_connection_id
    #   <p>The id of the inbound connection that you want to accept.</p>
    #   @return [String]
    class AcceptInboundCrossClusterSearchConnectionRequest < Struct.new(
      :cross_cluster_search_connection_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a <code><a>AcceptInboundCrossClusterSearchConnection</a></code> operation. Contains details of accepted inbound connection.</p>
    # @!attribute cross_cluster_search_connection
    #   <p>Specifies the <code><a>InboundCrossClusterSearchConnection</a></code> of accepted inbound connection. </p>
    #   @return [Types::InboundCrossClusterSearchConnection]
    class AcceptInboundCrossClusterSearchConnectionResponse < Struct.new(
      :cross_cluster_search_connection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error occurred because user does not have permissions to access the resource. Returns HTTP status code 403.</p>
    # @!attribute message
    #   <p>A description of the error.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configured access rules for the domain's document and search endpoints, and the current status of those rules.</p>
    # @!attribute options
    #   <p>The access policy configured for the Elasticsearch domain.  Access policies may be resource-based, IP-based, or IAM-based.  See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-access-policies" target="_blank">
    #              Configuring Access Policies</a>for more information.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the access policy for the Elasticsearch domain. See <code>OptionStatus</code> for the status information that's included. </p>
    #   @return [Types::OptionStatus]
    class AccessPoliciesStatus < Struct.new(
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code><a>AddTags</a></code> operation. Specify the tags that you want to attach to the Elasticsearch domain.</p>
    # @!attribute arn
    #   <p> Specify the <code>ARN</code> for which you want to add the tags.</p>
    #   @return [String]
    # @!attribute tag_list
    #   <p> List of <code>Tag</code> that need to be added for the Elasticsearch domain. </p>
    #   @return [Array<Types::Tag>]
    class AddTagsRequest < Struct.new(
      :arn,
      :tag_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       List of limits that are specific to a given InstanceType and for each of it's
    #       <code>
    #         <a>InstanceRole</a>
    #       </code>
    #       .
    #     </p>
    # @!attribute limit_name
    #   <p>
    #         Name of Additional Limit is specific to a given InstanceType and for each of it's
    #         <code>
    #           <a>InstanceRole</a>
    #         </code>
    #         etc.
    #         <br></br>
    #         Attributes and their details:
    #         <br></br>
    #         <ul>
    #           <li>MaximumNumberOfDataNodesSupported</li>
    #           This attribute will be present in Master node only to specify how
    #           much data nodes upto which given
    #           <code>
    #             <a>ESPartitionInstanceType</a>
    #           </code>
    #           can support as master node.
    #           <li>MaximumNumberOfDataNodesWithoutMasterNode</li>
    #           This attribute will be present in Data node only to specify how much
    #           data nodes of given
    #           <code>
    #             <a>ESPartitionInstanceType</a>
    #           </code>
    #           upto which you don't need any master nodes to govern them.
    #         </ul>
    #       </p>
    #   @return [String]
    # @!attribute limit_values
    #   <p>
    #       Value for given
    #       <code>
    #         <a>AdditionalLimit$LimitName</a>
    #       </code>
    #       .
    #     </p>
    #   @return [Array<String>]
    class AdditionalLimit < Struct.new(
      :limit_name,
      :limit_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Status of the advanced options for the specified Elasticsearch domain. Currently, the following advanced options are available:</p>
    #        <ul>
    #            <li>Option to allow references to indices in an HTTP request body.  Must be <code>false</code> when configuring access to individual sub-resources.  By default, the value is <code>true</code>.
    #                See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options" target="_blank">Configuration Advanced Options</a> for more information.</li>
    #            <li>Option to specify the percentage of heap space that is allocated to field data. By default, this setting is unbounded.</li>
    #        </ul>
    #        <p>For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options">Configuring Advanced Options</a>.</p>
    # @!attribute options
    #   <p> Specifies the status of advanced options for the specified Elasticsearch domain.</p>
    #   @return [Hash<String, String>]
    # @!attribute status
    #   <p> Specifies the status of <code>OptionStatus</code> for advanced options for the specified Elasticsearch domain.</p>
    #   @return [Types::OptionStatus]
    class AdvancedOptionsStatus < Struct.new(
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the advanced security configuration: whether advanced security is enabled, whether the internal database option is enabled.</p>
    # @!attribute enabled
    #   <p>True if advanced security is enabled.</p>
    #   @return [Boolean]
    # @!attribute internal_user_database_enabled
    #   <p>True if the internal user database is enabled.</p>
    #   @return [Boolean]
    # @!attribute saml_options
    #   <p>Describes the SAML application configured for a domain.</p>
    #   @return [Types::SAMLOptionsOutput]
    # @!attribute anonymous_auth_disable_date
    #   <p>Specifies the Anonymous Auth Disable Date when Anonymous Auth is enabled.</p>
    #   @return [Time]
    # @!attribute anonymous_auth_enabled
    #   <p>True if Anonymous auth is enabled. Anonymous auth can be enabled only when AdvancedSecurity is enabled on existing domains.</p>
    #   @return [Boolean]
    class AdvancedSecurityOptions < Struct.new(
      :enabled,
      :internal_user_database_enabled,
      :saml_options,
      :anonymous_auth_disable_date,
      :anonymous_auth_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the advanced security configuration: whether advanced security is enabled, whether the internal database option is enabled, master username and password (if internal database is enabled), and master user ARN (if IAM is enabled).</p>
    # @!attribute enabled
    #   <p>True if advanced security is enabled.</p>
    #   @return [Boolean]
    # @!attribute internal_user_database_enabled
    #   <p>True if the internal user database is enabled.</p>
    #   @return [Boolean]
    # @!attribute master_user_options
    #   <p>Credentials for the master user: username and password, ARN, or both.</p>
    #   @return [Types::MasterUserOptions]
    # @!attribute saml_options
    #   <p>Specifies the SAML application configuration for the domain.</p>
    #   @return [Types::SAMLOptionsInput]
    # @!attribute anonymous_auth_enabled
    #   <p>True if Anonymous auth is enabled. Anonymous auth can be enabled only when AdvancedSecurity is enabled on existing domains.</p>
    #   @return [Boolean]
    class AdvancedSecurityOptionsInput < Struct.new(
      :enabled,
      :internal_user_database_enabled,
      :master_user_options,
      :saml_options,
      :anonymous_auth_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Specifies the status of advanced security options for the specified Elasticsearch domain.</p>
    # @!attribute options
    #   <p> Specifies advanced security options for the specified Elasticsearch domain.</p>
    #   @return [Types::AdvancedSecurityOptions]
    # @!attribute status
    #   <p> Status of the advanced security options for the specified Elasticsearch domain.</p>
    #   @return [Types::OptionStatus]
    class AdvancedSecurityOptionsStatus < Struct.new(
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Container for request parameters to
    #       <code>
    #         <a>AssociatePackage</a>
    #       </code>
    #       operation.
    #     </p>
    # @!attribute package_id
    #   <p>Internal ID of the package that you want to associate with a domain. Use <code>DescribePackages</code> to find this value.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>Name of the domain that you want to associate the package with.</p>
    #   @return [String]
    class AssociatePackageRequest < Struct.new(
      :package_id,
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Container for response returned by
    #       <code>
    #         <a>AssociatePackage</a>
    #       </code>
    #       operation.
    #     </p>
    # @!attribute domain_package_details
    #   <p><code>DomainPackageDetails</code></p>
    #   @return [Types::DomainPackageDetails]
    class AssociatePackageResponse < Struct.new(
      :domain_package_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for request parameters to the <code><a>AuthorizeVpcEndpointAccess</a></code> operation.
    #           Specifies the account to be permitted to manage VPC endpoints against the domain.</p>
    # @!attribute domain_name
    #   <p>The name of the OpenSearch Service domain to provide access to.</p>
    #   @return [String]
    # @!attribute account
    #   <p>The account ID to grant access to.</p>
    #   @return [String]
    class AuthorizeVpcEndpointAccessRequest < Struct.new(
      :domain_name,
      :account,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for response parameters to the <code><a>AuthorizeVpcEndpointAccess</a></code> operation.
    #           Contains the account ID and the type of the account being authorized to access the VPC endpoint.</p>
    # @!attribute authorized_principal
    #   <p>Information about the account or service that was provided access to the
    #      domain.</p>
    #   @return [Types::AuthorizedPrincipal]
    class AuthorizeVpcEndpointAccessResponse < Struct.new(
      :authorized_principal,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an  account or service that has access to an Amazon
    #    OpenSearch Service domain through the use of an interface VPC endpoint.</p>
    # @!attribute principal_type
    #   <p>The type of principal.</p>
    #   @return [String]
    # @!attribute principal
    #   <p>The IAM principal that is allowed access to the domain.</p>
    #   @return [String]
    class AuthorizedPrincipal < Struct.new(
      :principal_type,
      :principal,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies Auto-Tune type and Auto-Tune action details. </p>
    # @!attribute auto_tune_type
    #   <p>Specifies Auto-Tune type. Valid value is SCHEDULED_ACTION. </p>
    #   @return [String]
    # @!attribute auto_tune_details
    #   <p>Specifies details of the Auto-Tune action. See the <a href="https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html" target="_blank">Developer Guide</a> for more information. </p>
    #   @return [Types::AutoTuneDetails]
    class AutoTune < Struct.new(
      :auto_tune_type,
      :auto_tune_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies details of the Auto-Tune action. See the <a href="https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html" target="_blank">Developer Guide</a> for more information. </p>
    # @!attribute scheduled_auto_tune_details
    #   <p>Specifies details of the scheduled Auto-Tune action. See the <a href="https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html" target="_blank">Developer Guide</a> for more information. </p>
    #   @return [Types::ScheduledAutoTuneDetails]
    class AutoTuneDetails < Struct.new(
      :scheduled_auto_tune_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies Auto-Tune maitenance schedule. See the <a href="https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html" target="_blank">Developer Guide</a> for more information.</p>
    # @!attribute start_at
    #   <p>Specifies timestamp at which Auto-Tune maintenance schedule start. </p>
    #   @return [Time]
    # @!attribute duration
    #   <p>Specifies maintenance schedule duration: duration value and duration unit. See the <a href="https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html" target="_blank">Developer Guide</a> for more information.</p>
    #   @return [Types::Duration]
    # @!attribute cron_expression_for_recurrence
    #   <p>Specifies cron expression for a recurring maintenance schedule. See the <a href="https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html" target="_blank">Developer Guide</a> for more information.</p>
    #   @return [String]
    class AutoTuneMaintenanceSchedule < Struct.new(
      :start_at,
      :duration,
      :cron_expression_for_recurrence,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the Auto-Tune options: the Auto-Tune desired state for the domain, rollback state when disabling Auto-Tune options and list of maintenance schedules.</p>
    # @!attribute desired_state
    #   <p>Specifies the Auto-Tune desired state. Valid values are ENABLED, DISABLED. </p>
    #   @return [String]
    # @!attribute rollback_on_disable
    #   <p>Specifies the rollback state while disabling Auto-Tune for the domain. Valid values are NO_ROLLBACK, DEFAULT_ROLLBACK. </p>
    #   @return [String]
    # @!attribute maintenance_schedules
    #   <p>Specifies list of maitenance schedules. See the <a href="https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html" target="_blank">Developer Guide</a> for more information.</p>
    #   @return [Array<Types::AutoTuneMaintenanceSchedule>]
    class AutoTuneOptions < Struct.new(
      :desired_state,
      :rollback_on_disable,
      :maintenance_schedules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the Auto-Tune options: the Auto-Tune desired state for the domain and list of maintenance schedules.</p>
    # @!attribute desired_state
    #   <p>Specifies the Auto-Tune desired state. Valid values are ENABLED, DISABLED. </p>
    #   @return [String]
    # @!attribute maintenance_schedules
    #   <p>Specifies list of maitenance schedules. See the <a href="https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html" target="_blank">Developer Guide</a> for more information.</p>
    #   @return [Array<Types::AutoTuneMaintenanceSchedule>]
    class AutoTuneOptionsInput < Struct.new(
      :desired_state,
      :maintenance_schedules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the Auto-Tune options: the Auto-Tune desired state for the domain and list of maintenance schedules.</p>
    # @!attribute state
    #   <p>Specifies the <code>AutoTuneState</code> for the Elasticsearch domain.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>Specifies the error message while enabling or disabling the Auto-Tune.</p>
    #   @return [String]
    class AutoTuneOptionsOutput < Struct.new(
      :state,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Specifies the status of Auto-Tune options for the specified Elasticsearch domain.</p>
    # @!attribute options
    #   <p> Specifies Auto-Tune options for the specified Elasticsearch domain.</p>
    #   @return [Types::AutoTuneOptions]
    # @!attribute status
    #   <p> Specifies Status of the Auto-Tune options for the specified Elasticsearch domain.</p>
    #   @return [Types::AutoTuneStatus]
    class AutoTuneOptionsStatus < Struct.new(
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the current status of the Auto-Tune options. </p>
    # @!attribute creation_date
    #   <p>Timestamp which tells Auto-Tune options creation date .</p>
    #   @return [Time]
    # @!attribute update_date
    #   <p>Timestamp which tells Auto-Tune options last updated time.</p>
    #   @return [Time]
    # @!attribute update_version
    #   <p>Specifies the Auto-Tune options latest version.</p>
    #   @return [Integer]
    # @!attribute state
    #   <p>Specifies the <code>AutoTuneState</code> for the Elasticsearch domain.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>Specifies the error message while enabling or disabling the Auto-Tune options.</p>
    #   @return [String]
    # @!attribute pending_deletion
    #   <p>Indicates whether the Elasticsearch domain is being deleted.</p>
    #   @return [Boolean]
    class AutoTuneStatus < Struct.new(
      :creation_date,
      :update_date,
      :update_version,
      :state,
      :error_message,
      :pending_deletion,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:update_version] = 0 unless options.key?(:update_version)
        super
      end
    end

    # <p>An error occurred while processing the request.</p>
    # @!attribute message
    #   <p>A description of the error.</p>
    #   @return [String]
    class BaseException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for parameters of the <code>CancelDomainConfigChange</code> operation.</p>
    # @!attribute domain_name
    #   <p>Name of the OpenSearch Service domain configuration request to cancel.</p>
    #   @return [String]
    # @!attribute dry_run
    #   <p>When set to <b>True</b>, returns the list of change IDs and properties that will be cancelled without actually cancelling the change.</p>
    #   @return [Boolean]
    class CancelDomainConfigChangeRequest < Struct.new(
      :domain_name,
      :dry_run,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the details of the cancelled domain config change.</p>
    # @!attribute dry_run
    #   <p>Whether or not the request was a dry run. If <b>True</b>, the changes were not actually cancelled.</p>
    #   @return [Boolean]
    # @!attribute cancelled_change_ids
    #   <p>The unique identifiers of the changes that were cancelled.</p>
    #   @return [Array<String>]
    # @!attribute cancelled_change_properties
    #   <p>The domain change properties that were cancelled.</p>
    #   @return [Array<Types::CancelledChangeProperty>]
    class CancelDomainConfigChangeResponse < Struct.new(
      :dry_run,
      :cancelled_change_ids,
      :cancelled_change_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code><a>CancelElasticsearchServiceSoftwareUpdate</a></code> operation. Specifies the name of the Elasticsearch domain that you wish to cancel a service software update on.</p>
    # @!attribute domain_name
    #   <p>The name of the domain that you want to stop the latest service software update on.</p>
    #   @return [String]
    class CancelElasticsearchServiceSoftwareUpdateRequest < Struct.new(
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a <code>CancelElasticsearchServiceSoftwareUpdate</code> operation. Contains the status of the update.</p>
    # @!attribute service_software_options
    #   <p>The current status of the Elasticsearch service software update.</p>
    #   @return [Types::ServiceSoftwareOptions]
    class CancelElasticsearchServiceSoftwareUpdateResponse < Struct.new(
      :service_software_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A property change that was cancelled for an Amazon OpenSearch Service domain.</p>
    # @!attribute property_name
    #   <p>The name of the property whose change was cancelled.</p>
    #   @return [String]
    # @!attribute cancelled_value
    #   <p>The pending value of the property that was cancelled. This would have been the eventual value of the property if the chance had not been cancelled.</p>
    #   @return [String]
    # @!attribute active_value
    #   <p>The current value of the property, after the change was cancelled.</p>
    #   @return [String]
    class CancelledChangeProperty < Struct.new(
      :property_name,
      :cancelled_value,
      :active_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies change details of the domain configuration change.</p>
    # @!attribute change_id
    #   <p>The unique change identifier associated with a specific domain configuration change.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Contains an optional message associated with the domain configuration change.</p>
    #   @return [String]
    # @!attribute config_change_status
    #   <p>The current status of the configuration change.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time that the configuration change was initiated, in Universal Coordinated Time (UTC).</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The last time that the configuration change was updated.</p>
    #   @return [Time]
    # @!attribute initiated_by
    #   <p>The IAM principal who initiated the configuration change.</p>
    #   @return [String]
    class ChangeProgressDetails < Struct.new(
      :change_id,
      :message,
      :config_change_status,
      :start_time,
      :last_updated_time,
      :initiated_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A progress stage details of a specific domain configuration change.</p>
    # @!attribute name
    #   <p>The name of the specific progress stage.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The overall status of a specific progress stage.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the progress stage.</p>
    #   @return [String]
    # @!attribute last_updated
    #   <p>The last updated timestamp of the progress stage.</p>
    #   @return [Time]
    class ChangeProgressStage < Struct.new(
      :name,
      :status,
      :description,
      :last_updated,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The progress details of a specific domain configuration change.</p>
    # @!attribute change_id
    #   <p>The unique change identifier associated with a specific domain configuration change.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time at which the configuration change is made on the domain.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The overall status of the domain configuration change. This field can take the following values: <code>PENDING</code>, <code>PROCESSING</code>, <code>COMPLETED</code> and <code>FAILED</code></p>
    #   @return [String]
    # @!attribute pending_properties
    #   <p>The list of properties involved in the domain configuration change that are still in pending.</p>
    #   @return [Array<String>]
    # @!attribute completed_properties
    #   <p>The list of properties involved in the domain configuration change that are completed.</p>
    #   @return [Array<String>]
    # @!attribute total_number_of_stages
    #   <p>The total number of stages required for the configuration change.</p>
    #   @return [Integer]
    # @!attribute change_progress_stages
    #   <p>The specific stages that the domain is going through to perform the configuration change.</p>
    #   @return [Array<Types::ChangeProgressStage>]
    # @!attribute config_change_status
    #   <p>The current status of the configuration change.</p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p>The last time that the status of the configuration change was updated.</p>
    #   @return [Time]
    # @!attribute initiated_by
    #   <p>The IAM principal who initiated the configuration change.</p>
    #   @return [String]
    class ChangeProgressStatusDetails < Struct.new(
      :change_id,
      :start_time,
      :status,
      :pending_properties,
      :completed_properties,
      :total_number_of_stages,
      :change_progress_stages,
      :config_change_status,
      :last_updated_time,
      :initiated_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:total_number_of_stages] = 0 unless options.key?(:total_number_of_stages)
        super
      end
    end

    # <p>Options to specify the Cognito user and identity pools for Kibana authentication. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html" target="_blank">Amazon Cognito Authentication for Kibana</a>.</p>
    # @!attribute enabled
    #   <p>Specifies the option to enable Cognito for Kibana authentication.</p>
    #   @return [Boolean]
    # @!attribute user_pool_id
    #   <p>Specifies the Cognito user pool ID for Kibana authentication.</p>
    #   @return [String]
    # @!attribute identity_pool_id
    #   <p>Specifies the Cognito identity pool ID for Kibana authentication.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>Specifies the role ARN that provides Elasticsearch permissions for accessing Cognito resources.</p>
    #   @return [String]
    class CognitoOptions < Struct.new(
      :enabled,
      :user_pool_id,
      :identity_pool_id,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Status of the Cognito options for the specified Elasticsearch domain.</p>
    # @!attribute options
    #   <p>Specifies the Cognito options for the specified Elasticsearch domain.</p>
    #   @return [Types::CognitoOptions]
    # @!attribute status
    #   <p>Specifies the status of the Cognito options for the specified Elasticsearch domain.</p>
    #   @return [Types::OptionStatus]
    class CognitoOptionsStatus < Struct.new(
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the configuration for cold storage options such as enabled</p>
    # @!attribute enabled
    #   <p>Enable cold storage option. Accepted values true or false</p>
    #   @return [Boolean]
    class ColdStorageOptions < Struct.new(
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       A map from an
    #       <code>
    #         <a>ElasticsearchVersion</a>
    #       </code>
    #       to a list of compatible
    #       <code>
    #         <a>ElasticsearchVersion</a>
    #       </code>
    #       s to which the domain can be upgraded.
    #     </p>
    # @!attribute source_version
    #   <p>The current version of Elasticsearch on which a domain is.</p>
    #   @return [String]
    # @!attribute target_versions
    #   <p>List of supported elastic search versions.
    #       </p>
    #   @return [Array<String>]
    class CompatibleVersionsMap < Struct.new(
      :source_version,
      :target_versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error occurred because the client attempts to remove a resource that is currently in use. Returns HTTP status code 409.</p>
    # @!attribute message
    #   <p>A description of the error.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The name of the Elasticsearch domain that you are creating. Domain names are unique across the domains owned by an account within an AWS region. Domain names must start with a lowercase letter and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #   @return [String]
    # @!attribute elasticsearch_version
    #   <p>String of format X.Y to specify version for the Elasticsearch domain eg. "1.5" or "2.3". For more information,
    #             see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains" target="_blank">Creating Elasticsearch Domains</a> in the <i>Amazon Elasticsearch Service Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute elasticsearch_cluster_config
    #   <p>Configuration options for an Elasticsearch domain. Specifies the instance type and number of instances in the domain cluster. </p>
    #   @return [Types::ElasticsearchClusterConfig]
    # @!attribute ebs_options
    #   <p>Options to enable, disable and specify the type and size of EBS storage volumes. </p>
    #   @return [Types::EBSOptions]
    # @!attribute access_policies
    #   <p> IAM access policy as a JSON-formatted string.</p>
    #   @return [String]
    # @!attribute snapshot_options
    #   <p>Option to set time, in UTC format, of the daily automated snapshot. Default value is 0 hours. </p>
    #   @return [Types::SnapshotOptions]
    # @!attribute vpc_options
    #   <p>Options to specify the subnets and security groups for VPC endpoint. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-creating-vpc" target="_blank">Creating a VPC</a> in <i>VPC Endpoints for Amazon Elasticsearch Service Domains</i></p>
    #   @return [Types::VPCOptions]
    # @!attribute cognito_options
    #   <p>Options to specify the Cognito user and identity pools for Kibana authentication. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html" target="_blank">Amazon Cognito Authentication for Kibana</a>.</p>
    #   @return [Types::CognitoOptions]
    # @!attribute encryption_at_rest_options
    #   <p>Specifies the Encryption At Rest Options.</p>
    #   @return [Types::EncryptionAtRestOptions]
    # @!attribute node_to_node_encryption_options
    #   <p>Specifies the NodeToNodeEncryptionOptions.</p>
    #   @return [Types::NodeToNodeEncryptionOptions]
    # @!attribute advanced_options
    #   <p> Option to allow references to indices in an HTTP request body.  Must be <code>false</code> when configuring access to individual sub-resources.  By default, the value is <code>true</code>.
    #             See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options" target="_blank">Configuration Advanced Options</a> for more information.</p>
    #   @return [Hash<String, String>]
    # @!attribute log_publishing_options
    #   <p>Map of <code>LogType</code> and <code>LogPublishingOption</code>, each containing options to publish a given type of Elasticsearch log.</p>
    #   @return [Hash<String, Types::LogPublishingOption>]
    # @!attribute domain_endpoint_options
    #   <p>Options to specify configuration that will be applied to the domain endpoint.</p>
    #   @return [Types::DomainEndpointOptions]
    # @!attribute advanced_security_options
    #   <p>Specifies advanced security options.</p>
    #   @return [Types::AdvancedSecurityOptionsInput]
    # @!attribute auto_tune_options
    #   <p>Specifies Auto-Tune options.</p>
    #   @return [Types::AutoTuneOptionsInput]
    # @!attribute tag_list
    #   <p>A list of <code>Tag</code> added during domain creation.</p>
    #   @return [Array<Types::Tag>]
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
      :tag_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a <code>CreateElasticsearchDomain</code> operation. Contains the status of the newly created Elasticsearch domain.</p>
    # @!attribute domain_status
    #   <p>The status of the newly created Elasticsearch domain. </p>
    #   @return [Types::ElasticsearchDomainStatus]
    class CreateElasticsearchDomainResponse < Struct.new(
      :domain_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code><a>CreateOutboundCrossClusterSearchConnection</a></code> operation.</p>
    # @!attribute source_domain_info
    #   <p>Specifies the <code><a>DomainInformation</a></code> for the source Elasticsearch domain.</p>
    #   @return [Types::DomainInformation]
    # @!attribute destination_domain_info
    #   <p>Specifies the <code><a>DomainInformation</a></code> for the destination Elasticsearch domain.</p>
    #   @return [Types::DomainInformation]
    # @!attribute connection_alias
    #   <p>Specifies the connection alias that will be used by the customer for this connection.</p>
    #   @return [String]
    class CreateOutboundCrossClusterSearchConnectionRequest < Struct.new(
      :source_domain_info,
      :destination_domain_info,
      :connection_alias,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a <code><a>CreateOutboundCrossClusterSearchConnection</a></code> request. Contains the details of the newly created cross-cluster search connection.</p>
    # @!attribute source_domain_info
    #   <p>Specifies the <code><a>DomainInformation</a></code> for the source Elasticsearch domain.</p>
    #   @return [Types::DomainInformation]
    # @!attribute destination_domain_info
    #   <p>Specifies the <code><a>DomainInformation</a></code> for the destination Elasticsearch domain.</p>
    #   @return [Types::DomainInformation]
    # @!attribute connection_alias
    #   <p>Specifies the connection alias provided during the create connection request.</p>
    #   @return [String]
    # @!attribute connection_status
    #   <p>Specifies the <code><a>OutboundCrossClusterSearchConnectionStatus</a></code> for the newly created connection.</p>
    #   @return [Types::OutboundCrossClusterSearchConnectionStatus]
    # @!attribute cross_cluster_search_connection_id
    #   <p>Unique id for the created outbound connection, which is used for subsequent operations on connection.</p>
    #   @return [String]
    class CreateOutboundCrossClusterSearchConnectionResponse < Struct.new(
      :source_domain_info,
      :destination_domain_info,
      :connection_alias,
      :connection_status,
      :cross_cluster_search_connection_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Container for request parameters to
    #       <code>
    #         <a>CreatePackage</a>
    #       </code>
    #       operation.
    #     </p>
    # @!attribute package_name
    #   <p>Unique identifier for the package.</p>
    #   @return [String]
    # @!attribute package_type
    #   <p>Type of package. Currently supports only TXT-DICTIONARY.</p>
    #   @return [String]
    # @!attribute package_description
    #   <p>Description of the package.</p>
    #   @return [String]
    # @!attribute package_source
    #   <p>The customer S3 location <code>PackageSource</code> for importing the package.</p>
    #   @return [Types::PackageSource]
    class CreatePackageRequest < Struct.new(
      :package_name,
      :package_type,
      :package_description,
      :package_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Container for response returned by
    #       <code>
    #         <a>CreatePackage</a>
    #       </code>
    #       operation.
    #     </p>
    # @!attribute package_details
    #   <p>Information about the package <code>PackageDetails</code>.</p>
    #   @return [Types::PackageDetails]
    class CreatePackageResponse < Struct.new(
      :package_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code><a>CreateVpcEndpointRequest</a></code> operation.</p>
    # @!attribute domain_arn
    #   <p>The Amazon Resource Name (ARN) of the domain to grant access to.</p>
    #   @return [String]
    # @!attribute vpc_options
    #   <p>Options to specify the subnets and security groups for the endpoint.</p>
    #   @return [Types::VPCOptions]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    class CreateVpcEndpointRequest < Struct.new(
      :domain_arn,
      :vpc_options,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for response parameters to the <code><a>CreateVpcEndpoint</a></code> operation. Contains the configuration and status of the VPC Endpoint being created.</p>
    # @!attribute vpc_endpoint
    #   <p>Information about the newly created VPC endpoint.</p>
    #   @return [Types::VpcEndpoint]
    class CreateVpcEndpointResponse < Struct.new(
      :vpc_endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code><a>DeleteElasticsearchDomain</a></code> operation. Specifies the name of the Elasticsearch domain that you want to delete.</p>
    # @!attribute domain_name
    #   <p>The name of the Elasticsearch domain that you want to permanently delete.</p>
    #   @return [String]
    class DeleteElasticsearchDomainRequest < Struct.new(
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a <code>DeleteElasticsearchDomain</code> request. Contains the status of the pending deletion, or no status if the domain and all of its resources have been deleted.</p>
    # @!attribute domain_status
    #   <p>The status of the Elasticsearch domain being deleted.</p>
    #   @return [Types::ElasticsearchDomainStatus]
    class DeleteElasticsearchDomainResponse < Struct.new(
      :domain_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code><a>DeleteInboundCrossClusterSearchConnection</a></code> operation.</p>
    # @!attribute cross_cluster_search_connection_id
    #   <p>The id of the inbound connection that you want to permanently delete.</p>
    #   @return [String]
    class DeleteInboundCrossClusterSearchConnectionRequest < Struct.new(
      :cross_cluster_search_connection_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a <code><a>DeleteInboundCrossClusterSearchConnection</a></code> operation. Contains details of deleted inbound connection.</p>
    # @!attribute cross_cluster_search_connection
    #   <p>Specifies the <code><a>InboundCrossClusterSearchConnection</a></code> of deleted inbound connection. </p>
    #   @return [Types::InboundCrossClusterSearchConnection]
    class DeleteInboundCrossClusterSearchConnectionResponse < Struct.new(
      :cross_cluster_search_connection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code><a>DeleteOutboundCrossClusterSearchConnection</a></code> operation.</p>
    # @!attribute cross_cluster_search_connection_id
    #   <p>The id of the outbound connection that you want to permanently delete.</p>
    #   @return [String]
    class DeleteOutboundCrossClusterSearchConnectionRequest < Struct.new(
      :cross_cluster_search_connection_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a <code><a>DeleteOutboundCrossClusterSearchConnection</a></code> operation. Contains details of deleted outbound connection.</p>
    # @!attribute cross_cluster_search_connection
    #   <p>Specifies the <code><a>OutboundCrossClusterSearchConnection</a></code> of deleted outbound connection. </p>
    #   @return [Types::OutboundCrossClusterSearchConnection]
    class DeleteOutboundCrossClusterSearchConnectionResponse < Struct.new(
      :cross_cluster_search_connection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Container for request parameters to
    #       <code>
    #         <a>DeletePackage</a>
    #       </code>
    #       operation.
    #     </p>
    # @!attribute package_id
    #   <p>Internal ID of the package that you want to delete. Use <code>DescribePackages</code> to find this value.</p>
    #   @return [String]
    class DeletePackageRequest < Struct.new(
      :package_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Container for response parameters to
    #       <code>
    #         <a>DeletePackage</a>
    #       </code>
    #       operation.
    #     </p>
    # @!attribute package_details
    #   <p><code>PackageDetails</code></p>
    #   @return [Types::PackageDetails]
    class DeletePackageResponse < Struct.new(
      :package_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Deletes an Amazon OpenSearch Service-managed interface VPC endpoint.</p>
    # @!attribute vpc_endpoint_id
    #   <p>The unique identifier of the endpoint to be deleted.</p>
    #   @return [String]
    class DeleteVpcEndpointRequest < Struct.new(
      :vpc_endpoint_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for response parameters to the <code><a>DeleteVpcEndpoint</a></code> operation. Contains the summarized detail of the VPC Endpoint being deleted.</p>
    # @!attribute vpc_endpoint_summary
    #   <p>Information about the deleted endpoint, including its current status (<code>DELETING</code>
    #      or <code>DELETE_FAILED</code>).</p>
    #   @return [Types::VpcEndpointSummary]
    class DeleteVpcEndpointResponse < Struct.new(
      :vpc_endpoint_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code>DescribeDomainAutoTunes</code> operation.</p>
    # @!attribute domain_name
    #   <p>Specifies the domain name for which you want Auto-Tune action details.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>NextToken is sent in case the earlier API call results contain the NextToken. It is used for pagination.</p>
    #   @return [String]
    class DescribeDomainAutoTunesRequest < Struct.new(
      :domain_name,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of <code>DescribeDomainAutoTunes</code> request. See the <a href="https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html" target="_blank">Developer Guide</a> for more information. </p>
    # @!attribute auto_tunes
    #   <p>Specifies the list of setting adjustments that Auto-Tune has made to the domain. See the <a href="https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html" target="_blank">Developer Guide</a> for more information.</p>
    #   @return [Array<Types::AutoTune>]
    # @!attribute next_token
    #   <p>Specifies an identifier to allow retrieval of paginated results.</p>
    #   @return [String]
    class DescribeDomainAutoTunesResponse < Struct.new(
      :auto_tunes,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code>DescribeDomainChangeProgress</code> operation. Specifies the
    #         domain name and optional change specific identity for which you want progress information.
    #       </p>
    # @!attribute domain_name
    #   <p>The domain you want to get the progress information about.</p>
    #   @return [String]
    # @!attribute change_id
    #   <p>The specific change ID for which you want to get progress information. This is an optional parameter.
    #           If omitted, the service returns information about the most recent configuration change.
    #         </p>
    #   @return [String]
    class DescribeDomainChangeProgressRequest < Struct.new(
      :domain_name,
      :change_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a <code>DescribeDomainChangeProgress</code> request. Contains the progress information of
    #         the requested domain change.
    #       </p>
    # @!attribute change_progress_status
    #   <p>Progress information for the configuration change that is requested in the <code>DescribeDomainChangeProgress</code> request.
    #         </p>
    #   @return [Types::ChangeProgressStatusDetails]
    class DescribeDomainChangeProgressResponse < Struct.new(
      :change_progress_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Container for the parameters to the <code>DescribeElasticsearchDomainConfig</code> operation. Specifies the domain name for which you want configuration information.</p>
    # @!attribute domain_name
    #   <p>The Elasticsearch domain that you want to get information about.</p>
    #   @return [String]
    class DescribeElasticsearchDomainConfigRequest < Struct.new(
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a <code>DescribeElasticsearchDomainConfig</code> request. Contains the configuration information of the requested domain.</p>
    # @!attribute domain_config
    #   <p>The configuration information of the domain requested in the <code>DescribeElasticsearchDomainConfig</code> request.</p>
    #   @return [Types::ElasticsearchDomainConfig]
    class DescribeElasticsearchDomainConfigResponse < Struct.new(
      :domain_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code><a>DescribeElasticsearchDomain</a></code> operation.</p>
    # @!attribute domain_name
    #   <p>The name of the Elasticsearch domain for which you want information.</p>
    #   @return [String]
    class DescribeElasticsearchDomainRequest < Struct.new(
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a <code>DescribeElasticsearchDomain</code> request. Contains the status of the domain specified in the request.</p>
    # @!attribute domain_status
    #   <p>The current status of the Elasticsearch domain.</p>
    #   @return [Types::ElasticsearchDomainStatus]
    class DescribeElasticsearchDomainResponse < Struct.new(
      :domain_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code><a>DescribeElasticsearchDomains</a></code> operation. By default, the API returns the status of all Elasticsearch domains.</p>
    # @!attribute domain_names
    #   <p>The Elasticsearch domains for which you want information.</p>
    #   @return [Array<String>]
    class DescribeElasticsearchDomainsRequest < Struct.new(
      :domain_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a <code>DescribeElasticsearchDomains</code> request. Contains the status of the specified domains or all domains owned by the account.</p>
    # @!attribute domain_status_list
    #   <p>The status of the domains requested in the <code>DescribeElasticsearchDomains</code> request.</p>
    #   @return [Array<Types::ElasticsearchDomainStatus>]
    class DescribeElasticsearchDomainsResponse < Struct.new(
      :domain_status_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Container for the parameters to
    #       <code>
    #         <a>DescribeElasticsearchInstanceTypeLimits</a>
    #       </code>
    #       operation.
    #     </p>
    # @!attribute domain_name
    #   <p>
    #         DomainName represents the name of the Domain that we are trying to
    #         modify. This should be present only if we are
    #         querying for Elasticsearch
    #         <code>
    #           <a>Limits</a>
    #         </code>
    #         for existing domain.
    #       </p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>
    #         The instance type for an Elasticsearch cluster for which Elasticsearch
    #         <code>
    #           <a>Limits</a>
    #         </code>
    #         are needed.
    #       </p>
    #   @return [String]
    # @!attribute elasticsearch_version
    #   <p>
    #         Version of Elasticsearch for which
    #         <code>
    #           <a>Limits</a>
    #         </code>
    #         are needed.
    #       </p>
    #   @return [String]
    class DescribeElasticsearchInstanceTypeLimitsRequest < Struct.new(
      :domain_name,
      :instance_type,
      :elasticsearch_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Container for the parameters received from
    #       <code>
    #         <a>DescribeElasticsearchInstanceTypeLimits</a>
    #       </code>
    #       operation.
    #     </p>
    # @!attribute limits_by_role
    #   <p>
    #         Map of Role of the Instance and Limits that are applicable.
    #         Role performed by given Instance in Elasticsearch
    #         can be one of the following:
    #         <ul>
    #           <li>data: If the given InstanceType is used as data node</li>
    #           <li>master: If the given InstanceType is used as master node</li>
    #           <li>ultra_warm: If the given InstanceType is used as warm node</li>
    #         </ul>
    #       </p>
    #   @return [Hash<String, Types::Limits>]
    class DescribeElasticsearchInstanceTypeLimitsResponse < Struct.new(
      :limits_by_role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code><a>DescribeInboundCrossClusterSearchConnections</a></code> operation.</p>
    # @!attribute filters
    #   <p>
    #         A list of filters used to match properties for inbound cross-cluster search connection.
    #         Available <code><a>Filter</a></code> names for this operation are:
    #         <ul>
    #           <li>cross-cluster-search-connection-id</li>
    #           <li>source-domain-info.domain-name</li>
    #           <li>source-domain-info.owner-id</li>
    #           <li>source-domain-info.region</li>
    #           <li>destination-domain-info.domain-name</li>
    #         </ul>
    #       </p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_results
    #   <p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> NextToken is sent in case the earlier API call results contain the NextToken. It is used for pagination.</p>
    #   @return [String]
    class DescribeInboundCrossClusterSearchConnectionsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a <code><a>DescribeInboundCrossClusterSearchConnections</a></code> request. Contains the list of connections matching the filter criteria.</p>
    # @!attribute cross_cluster_search_connections
    #   <p>Consists of list of <code><a>InboundCrossClusterSearchConnection</a></code> matching the specified filter criteria.</p>
    #   @return [Array<Types::InboundCrossClusterSearchConnection>]
    # @!attribute next_token
    #   <p>If more results are available and NextToken is present, make the next request to the same API with the received NextToken to paginate the remaining results.
    #       </p>
    #   @return [String]
    class DescribeInboundCrossClusterSearchConnectionsResponse < Struct.new(
      :cross_cluster_search_connections,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code><a>DescribeOutboundCrossClusterSearchConnections</a></code> operation.</p>
    # @!attribute filters
    #   <p>
    #         A list of filters used to match properties for outbound cross-cluster search connection.
    #         Available <code><a>Filter</a></code> names for this operation are:
    #         <ul>
    #           <li>cross-cluster-search-connection-id</li>
    #           <li>destination-domain-info.domain-name</li>
    #           <li>destination-domain-info.owner-id</li>
    #           <li>destination-domain-info.region</li>
    #           <li>source-domain-info.domain-name</li>
    #         </ul>
    #       </p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_results
    #   <p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> NextToken is sent in case the earlier API call results contain the NextToken. It is used for pagination.</p>
    #   @return [String]
    class DescribeOutboundCrossClusterSearchConnectionsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a <code><a>DescribeOutboundCrossClusterSearchConnections</a></code> request. Contains the list of connections matching the filter criteria.</p>
    # @!attribute cross_cluster_search_connections
    #   <p>Consists of list of <code><a>OutboundCrossClusterSearchConnection</a></code> matching the specified filter criteria.</p>
    #   @return [Array<Types::OutboundCrossClusterSearchConnection>]
    # @!attribute next_token
    #   <p>If more results are available and NextToken is present, make the next request to the same API with the received NextToken to paginate the remaining results.
    #       </p>
    #   @return [String]
    class DescribeOutboundCrossClusterSearchConnectionsResponse < Struct.new(
      :cross_cluster_search_connections,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Filter to apply in <code>DescribePackage</code> response.</p>
    # @!attribute name
    #   <p>Any field from <code>PackageDetails</code>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>A non-empty list of values for the specified field.</p>
    #   @return [Array<String>]
    class DescribePackagesFilter < Struct.new(
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Container for request parameters to
    #       <code>
    #         <a>DescribePackage</a>
    #       </code>
    #       operation.
    #     </p>
    # @!attribute filters
    #   <p>Only returns packages that match the <code>DescribePackagesFilterList</code> values.</p>
    #   @return [Array<Types::DescribePackagesFilter>]
    # @!attribute max_results
    #   <p>Limits results to a maximum number of packages.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided, returns results for the next page.</p>
    #   @return [String]
    class DescribePackagesRequest < Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Container for response returned by
    #       <code>
    #         <a>DescribePackages</a>
    #       </code>
    #       operation.
    #     </p>
    # @!attribute package_details_list
    #   <p>List of <code>PackageDetails</code> objects.</p>
    #   @return [Array<Types::PackageDetails>]
    # @!attribute next_token
    #   @return [String]
    class DescribePackagesResponse < Struct.new(
      :package_details_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for parameters to <code>DescribeReservedElasticsearchInstanceOfferings</code></p>
    # @!attribute reserved_elasticsearch_instance_offering_id
    #   <p>The offering identifier filter value. Use this parameter to show only the available offering that matches the specified reservation identifier.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>NextToken should be sent in case if earlier API call produced result
    #   		containing NextToken. It is used for pagination.</p>
    #   @return [String]
    class DescribeReservedElasticsearchInstanceOfferingsRequest < Struct.new(
      :reserved_elasticsearch_instance_offering_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for results from <code>DescribeReservedElasticsearchInstanceOfferings</code></p>
    # @!attribute next_token
    #   <p>Provides an identifier to allow retrieval of paginated results.</p>
    #   @return [String]
    # @!attribute reserved_elasticsearch_instance_offerings
    #   <p>List of reserved Elasticsearch instance offerings</p>
    #   @return [Array<Types::ReservedElasticsearchInstanceOffering>]
    class DescribeReservedElasticsearchInstanceOfferingsResponse < Struct.new(
      :next_token,
      :reserved_elasticsearch_instance_offerings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for parameters to <code>DescribeReservedElasticsearchInstances</code></p>
    # @!attribute reserved_elasticsearch_instance_id
    #   <p>The reserved instance identifier filter value. Use this parameter to show only the reservation that matches the specified reserved Elasticsearch instance ID.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>NextToken should be sent in case if earlier API call produced result
    #   		containing NextToken. It is used for pagination.</p>
    #   @return [String]
    class DescribeReservedElasticsearchInstancesRequest < Struct.new(
      :reserved_elasticsearch_instance_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for results from <code>DescribeReservedElasticsearchInstances</code></p>
    # @!attribute next_token
    #   <p>Provides an identifier to allow retrieval of paginated results.</p>
    #   @return [String]
    # @!attribute reserved_elasticsearch_instances
    #   <p>List of reserved Elasticsearch instances.</p>
    #   @return [Array<Types::ReservedElasticsearchInstance>]
    class DescribeReservedElasticsearchInstancesResponse < Struct.new(
      :next_token,
      :reserved_elasticsearch_instances,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for request parameters to the <code><a>DescribeVpcEndpoints</a></code> operation. Specifies the list of VPC endpoints to be described.</p>
    # @!attribute vpc_endpoint_ids
    #   <p>The unique identifiers of the endpoints to get information about.</p>
    #   @return [Array<String>]
    class DescribeVpcEndpointsRequest < Struct.new(
      :vpc_endpoint_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for response parameters to the <code><a>DescribeVpcEndpoints</a></code> operation. Returns a list containing configuration details and
    #           status of the VPC Endpoints as well as a list containing error responses of the endpoints that could not be described</p>
    # @!attribute vpc_endpoints
    #   <p>Information about each requested VPC endpoint.</p>
    #   @return [Array<Types::VpcEndpoint>]
    # @!attribute vpc_endpoint_errors
    #   <p>Any errors associated with the request.</p>
    #   @return [Array<Types::VpcEndpointError>]
    class DescribeVpcEndpointsResponse < Struct.new(
      :vpc_endpoints,
      :vpc_endpoint_errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error occured because the client wanted to access a not supported operation. Gives http status code of 409.</p>
    # @!attribute message
    #   <p>A description of the error.</p>
    #   @return [String]
    class DisabledOperationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Container for request parameters to
    #       <code>
    #         <a>DissociatePackage</a>
    #       </code>
    #       operation.
    #     </p>
    # @!attribute package_id
    #   <p>Internal ID of the package that you want to associate with a domain. Use <code>DescribePackages</code> to find this value.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>Name of the domain that you want to associate the package with.</p>
    #   @return [String]
    class DissociatePackageRequest < Struct.new(
      :package_id,
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Container for response returned by
    #       <code>
    #         <a>DissociatePackage</a>
    #       </code>
    #       operation.
    #     </p>
    # @!attribute domain_package_details
    #   <p><code>DomainPackageDetails</code></p>
    #   @return [Types::DomainPackageDetails]
    class DissociatePackageResponse < Struct.new(
      :domain_package_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Options to configure endpoint for the Elasticsearch domain.</p>
    # @!attribute enforce_https
    #   <p>Specify if only HTTPS endpoint should be enabled for the Elasticsearch domain.</p>
    #   @return [Boolean]
    # @!attribute tls_security_policy
    #   <p>Specify the TLS security policy that needs to be applied to the HTTPS endpoint of Elasticsearch domain.
    #           <br></br> It can be one of the following values:
    #           <ul>
    #               <li><b>Policy-Min-TLS-1-0-2019-07: </b> TLS security policy that supports TLS version 1.0 to TLS version 1.2</li>
    #               <li><b>Policy-Min-TLS-1-2-2019-07: </b> TLS security policy that supports only TLS version 1.2</li>
    #               <li><b>Policy-Min-TLS-1-2-PFS-2023-10: </b> TLS security policy that supports TLS version 1.2 to TLS version 1.3 with perfect forward secrecy cipher suites</li>
    #           </ul>
    #       </p>
    #   @return [String]
    # @!attribute custom_endpoint_enabled
    #   <p>Specify if custom endpoint should be enabled for the Elasticsearch domain.</p>
    #   @return [Boolean]
    # @!attribute custom_endpoint
    #   <p>Specify the fully qualified domain for your custom endpoint.</p>
    #   @return [String]
    # @!attribute custom_endpoint_certificate_arn
    #   <p>Specify ACM certificate ARN for your custom endpoint.</p>
    #   @return [String]
    class DomainEndpointOptions < Struct.new(
      :enforce_https,
      :tls_security_policy,
      :custom_endpoint_enabled,
      :custom_endpoint,
      :custom_endpoint_certificate_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configured endpoint options for the domain and their current status.</p>
    # @!attribute options
    #   <p>Options to configure endpoint for the Elasticsearch domain.</p>
    #   @return [Types::DomainEndpointOptions]
    # @!attribute status
    #   <p>The status of the endpoint options for the Elasticsearch domain. See <code>OptionStatus</code> for the status information that's included. </p>
    #   @return [Types::OptionStatus]
    class DomainEndpointOptionsStatus < Struct.new(
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p> Specifies the <code>DomainName</code>.</p>
    #   @return [String]
    # @!attribute engine_type
    #   <p> Specifies the <code>EngineType</code> of the domain.</p>
    #   @return [String]
    class DomainInfo < Struct.new(
      :domain_name,
      :engine_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute owner_id
    #   @return [String]
    # @!attribute domain_name
    #   <p>The name of an Elasticsearch domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #   @return [String]
    # @!attribute region
    #   @return [String]
    class DomainInformation < Struct.new(
      :owner_id,
      :domain_name,
      :region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information on a package that is associated with a domain.</p>
    # @!attribute package_id
    #   <p>Internal ID of the package.</p>
    #   @return [String]
    # @!attribute package_name
    #   <p>User specified name of the package.</p>
    #   @return [String]
    # @!attribute package_type
    #   <p>Currently supports only TXT-DICTIONARY.</p>
    #   @return [String]
    # @!attribute last_updated
    #   <p>Timestamp of the most-recent update to the association status.</p>
    #   @return [Time]
    # @!attribute domain_name
    #   <p>Name of the domain you've associated a package with.</p>
    #   @return [String]
    # @!attribute domain_package_status
    #   <p>State of the association. Values are ASSOCIATING/ASSOCIATION_FAILED/ACTIVE/DISSOCIATING/DISSOCIATION_FAILED.</p>
    #   @return [String]
    # @!attribute package_version
    #   @return [String]
    # @!attribute reference_path
    #   <p>The relative path on Amazon ES nodes, which can be used as synonym_path when the package is synonym file.</p>
    #   @return [String]
    # @!attribute error_details
    #   <p>Additional information if the package is in an error state. Null otherwise.</p>
    #   @return [Types::ErrorDetails]
    class DomainPackageDetails < Struct.new(
      :package_id,
      :package_name,
      :package_type,
      :last_updated,
      :domain_name,
      :domain_package_status,
      :package_version,
      :reference_path,
      :error_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployment_type
    #   <p>
    #               Specifies the deployment mechanism through which the update shall be applied on the domain.
    #               Possible responses are
    #               <code>Blue/Green</code> (The update will require a blue/green deployment.)
    #               <code>DynamicUpdate</code> (The update can be applied in-place without a Blue/Green deployment required.)
    #               <code>Undetermined</code> (The domain is undergoing an update which needs to complete before the deployment type can be predicted.)
    #               <code>None</code> (The configuration change matches the current configuration and will not result in any update.)
    #           </p>
    #   @return [String]
    # @!attribute message
    #   <p>Contains an optional message associated with the DryRunResults.</p>
    #   @return [String]
    class DryRunResults < Struct.new(
      :deployment_type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies maintenance schedule duration: duration value and duration unit. See the <a href="https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html" target="_blank">Developer Guide</a> for more information.</p>
    # @!attribute value
    #   <p> Integer to specify the value of a maintenance schedule duration. See the <a href="https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html" target="_blank">Developer Guide</a> for more information.</p>
    #   @return [Integer]
    # @!attribute unit
    #   <p>Specifies the unit of a maintenance schedule duration. Valid value is HOURS. See the <a href="https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html" target="_blank">Developer Guide</a> for more information.</p>
    #   @return [String]
    class Duration < Struct.new(
      :value,
      :unit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Options to enable, disable, and specify the properties of EBS storage volumes. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs" target="_blank"> Configuring EBS-based Storage</a>.</p>
    # @!attribute ebs_enabled
    #   <p>Specifies whether EBS-based storage is enabled.</p>
    #   @return [Boolean]
    # @!attribute volume_type
    #   <p> Specifies the volume type for EBS-based storage.</p>
    #   @return [String]
    # @!attribute volume_size
    #   <p> Integer to specify the size of an EBS volume.</p>
    #   @return [Integer]
    # @!attribute iops
    #   <p>Specifies the IOPS for Provisioned IOPS And GP3 EBS volume (SSD).</p>
    #   @return [Integer]
    # @!attribute throughput
    #   <p>Specifies the Throughput for GP3 EBS volume (SSD).</p>
    #   @return [Integer]
    class EBSOptions < Struct.new(
      :ebs_enabled,
      :volume_type,
      :volume_size,
      :iops,
      :throughput,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Status of the EBS options for the specified Elasticsearch domain.</p>
    # @!attribute options
    #   <p> Specifies the EBS options for the specified Elasticsearch domain.</p>
    #   @return [Types::EBSOptions]
    # @!attribute status
    #   <p> Specifies the status of the EBS options for the specified Elasticsearch domain.</p>
    #   @return [Types::OptionStatus]
    class EBSOptionsStatus < Struct.new(
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the configuration for the domain cluster, such as the type and number of instances.</p>
    # @!attribute instance_type
    #   <p>The instance type for an Elasticsearch cluster. UltraWarm instance types are not supported for data instances.</p>
    #   @return [String]
    # @!attribute instance_count
    #   <p>The number of instances in the specified domain cluster.</p>
    #   @return [Integer]
    # @!attribute dedicated_master_enabled
    #   <p>A boolean value to indicate whether a dedicated master node is enabled.  See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-dedicatedmasternodes" target="_blank">About Dedicated Master Nodes</a> for more information.</p>
    #   @return [Boolean]
    # @!attribute zone_awareness_enabled
    #   <p>A boolean value to indicate whether zone awareness is enabled.  See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-zoneawareness" target="_blank">About Zone Awareness</a> for more information.</p>
    #   @return [Boolean]
    # @!attribute zone_awareness_config
    #   <p>Specifies the zone awareness configuration for a domain when zone awareness is enabled.</p>
    #   @return [Types::ZoneAwarenessConfig]
    # @!attribute dedicated_master_type
    #   <p>The instance type for a dedicated master node.</p>
    #   @return [String]
    # @!attribute dedicated_master_count
    #   <p>Total number of dedicated master nodes, active and on standby, for the cluster.</p>
    #   @return [Integer]
    # @!attribute warm_enabled
    #   <p>True to enable warm storage.</p>
    #   @return [Boolean]
    # @!attribute warm_type
    #   <p>The instance type for the Elasticsearch cluster's warm nodes.</p>
    #   @return [String]
    # @!attribute warm_count
    #   <p>The number of warm nodes in the cluster.</p>
    #   @return [Integer]
    # @!attribute cold_storage_options
    #   <p>Specifies the <code>ColdStorageOptions</code> config for Elasticsearch Domain</p>
    #   @return [Types::ColdStorageOptions]
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
      :cold_storage_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Specifies the configuration status for the specified Elasticsearch domain.</p>
    # @!attribute options
    #   <p> Specifies the cluster configuration for the specified Elasticsearch domain.</p>
    #   @return [Types::ElasticsearchClusterConfig]
    # @!attribute status
    #   <p> Specifies the status of the configuration for the specified Elasticsearch domain.</p>
    #   @return [Types::OptionStatus]
    class ElasticsearchClusterConfigStatus < Struct.new(
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of an Elasticsearch domain.</p>
    # @!attribute elasticsearch_version
    #   <p>String of format X.Y to specify version for the Elasticsearch domain.</p>
    #   @return [Types::ElasticsearchVersionStatus]
    # @!attribute elasticsearch_cluster_config
    #   <p>Specifies the <code>ElasticsearchClusterConfig</code> for the Elasticsearch domain.</p>
    #   @return [Types::ElasticsearchClusterConfigStatus]
    # @!attribute ebs_options
    #   <p>Specifies the <code>EBSOptions</code> for the Elasticsearch domain.</p>
    #   @return [Types::EBSOptionsStatus]
    # @!attribute access_policies
    #   <p>IAM access policy as a JSON-formatted string.</p>
    #   @return [Types::AccessPoliciesStatus]
    # @!attribute snapshot_options
    #   <p>Specifies the <code>SnapshotOptions</code> for the Elasticsearch domain.</p>
    #   @return [Types::SnapshotOptionsStatus]
    # @!attribute vpc_options
    #   <p>The <code>VPCOptions</code> for the specified domain. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html" target="_blank">VPC Endpoints for Amazon Elasticsearch Service Domains</a>.</p>
    #   @return [Types::VPCDerivedInfoStatus]
    # @!attribute cognito_options
    #   <p>The <code>CognitoOptions</code> for the specified domain. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html" target="_blank">Amazon Cognito Authentication for Kibana</a>.</p>
    #   @return [Types::CognitoOptionsStatus]
    # @!attribute encryption_at_rest_options
    #   <p>Specifies the <code>EncryptionAtRestOptions</code> for the Elasticsearch domain.</p>
    #   @return [Types::EncryptionAtRestOptionsStatus]
    # @!attribute node_to_node_encryption_options
    #   <p>Specifies the <code>NodeToNodeEncryptionOptions</code> for the Elasticsearch domain.</p>
    #   @return [Types::NodeToNodeEncryptionOptionsStatus]
    # @!attribute advanced_options
    #   <p>Specifies the <code>AdvancedOptions</code> for the domain.  See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options" target="_blank">Configuring Advanced Options</a> for more information.</p>
    #   @return [Types::AdvancedOptionsStatus]
    # @!attribute log_publishing_options
    #   <p>Log publishing options for the given domain.</p>
    #   @return [Types::LogPublishingOptionsStatus]
    # @!attribute domain_endpoint_options
    #   <p>Specifies the <code>DomainEndpointOptions</code> for the Elasticsearch domain.</p>
    #   @return [Types::DomainEndpointOptionsStatus]
    # @!attribute advanced_security_options
    #   <p>Specifies <code>AdvancedSecurityOptions</code> for the domain. </p>
    #   @return [Types::AdvancedSecurityOptionsStatus]
    # @!attribute auto_tune_options
    #   <p>Specifies <code>AutoTuneOptions</code> for the domain. </p>
    #   @return [Types::AutoTuneOptionsStatus]
    # @!attribute change_progress_details
    #   <p>Specifies change details of the domain configuration change.</p>
    #   @return [Types::ChangeProgressDetails]
    # @!attribute modifying_properties
    #   <p>Information about the domain properties that are currently being modified.</p>
    #   @return [Array<Types::ModifyingProperties>]
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
      :change_progress_details,
      :modifying_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The current status of an Elasticsearch domain.</p>
    # @!attribute domain_id
    #   <p>The unique identifier for the specified Elasticsearch domain.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The name of an Elasticsearch domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon resource name (ARN) of an Elasticsearch domain.  See <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/index.html?Using_Identifiers.html" target="_blank">Identifiers for IAM Entities</a> in <i>Using AWS Identity and Access Management</i> for more information.</p>
    #   @return [String]
    # @!attribute created
    #   <p>The domain creation status. <code>True</code> if the creation of an Elasticsearch domain is complete. <code>False</code> if domain creation is still in progress.</p>
    #   @return [Boolean]
    # @!attribute deleted
    #   <p>The domain deletion status. <code>True</code> if a delete request has been received for the domain but resource cleanup is still in progress. <code>False</code> if the domain has not been deleted. Once domain deletion is complete, the status of the domain is no longer returned.</p>
    #   @return [Boolean]
    # @!attribute endpoint
    #   <p>The Elasticsearch domain endpoint that you use to submit index and search requests.</p>
    #   @return [String]
    # @!attribute endpoints
    #   <p>Map containing the Elasticsearch domain endpoints used to submit index and search requests. Example <code>key, value</code>: <code>'vpc','vpc-endpoint-h2dsd34efgyghrtguk5gt6j2foh4.us-east-1.es.amazonaws.com'</code>.</p>
    #   @return [Hash<String, String>]
    # @!attribute processing
    #   <p>The status of the Elasticsearch domain configuration. <code>True</code> if Amazon Elasticsearch Service is processing configuration changes. <code>False</code> if the configuration is active.</p>
    #   @return [Boolean]
    # @!attribute upgrade_processing
    #   <p>The status of an Elasticsearch domain version upgrade. <code>True</code> if Amazon Elasticsearch Service is undergoing a version upgrade. <code>False</code> if the configuration is active.</p>
    #   @return [Boolean]
    # @!attribute elasticsearch_version
    #   @return [String]
    # @!attribute elasticsearch_cluster_config
    #   <p>The type and number of instances in the domain cluster.</p>
    #   @return [Types::ElasticsearchClusterConfig]
    # @!attribute ebs_options
    #   <p>The <code>EBSOptions</code> for the specified domain.  See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs" target="_blank">Configuring EBS-based Storage</a> for more information.</p>
    #   @return [Types::EBSOptions]
    # @!attribute access_policies
    #   <p> IAM access policy as a JSON-formatted string.</p>
    #   @return [String]
    # @!attribute snapshot_options
    #   <p>Specifies the status of the <code>SnapshotOptions</code></p>
    #   @return [Types::SnapshotOptions]
    # @!attribute vpc_options
    #   <p>The <code>VPCOptions</code> for the specified domain. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html" target="_blank">VPC Endpoints for Amazon Elasticsearch Service Domains</a>.</p>
    #   @return [Types::VPCDerivedInfo]
    # @!attribute cognito_options
    #   <p>The <code>CognitoOptions</code> for the specified domain. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html" target="_blank">Amazon Cognito Authentication for Kibana</a>.</p>
    #   @return [Types::CognitoOptions]
    # @!attribute encryption_at_rest_options
    #   <p> Specifies the status of the <code>EncryptionAtRestOptions</code>.</p>
    #   @return [Types::EncryptionAtRestOptions]
    # @!attribute node_to_node_encryption_options
    #   <p>Specifies the status of the <code>NodeToNodeEncryptionOptions</code>.</p>
    #   @return [Types::NodeToNodeEncryptionOptions]
    # @!attribute advanced_options
    #   <p>Specifies the status of the <code>AdvancedOptions</code></p>
    #   @return [Hash<String, String>]
    # @!attribute log_publishing_options
    #   <p>Log publishing options for the given domain.</p>
    #   @return [Hash<String, Types::LogPublishingOption>]
    # @!attribute service_software_options
    #   <p>The current status of the Elasticsearch domain's service software.</p>
    #   @return [Types::ServiceSoftwareOptions]
    # @!attribute domain_endpoint_options
    #   <p>The current status of the Elasticsearch domain's endpoint options.</p>
    #   @return [Types::DomainEndpointOptions]
    # @!attribute advanced_security_options
    #   <p>The current status of the Elasticsearch domain's advanced security options.</p>
    #   @return [Types::AdvancedSecurityOptions]
    # @!attribute auto_tune_options
    #   <p>The current status of the Elasticsearch domain's Auto-Tune options.</p>
    #   @return [Types::AutoTuneOptionsOutput]
    # @!attribute change_progress_details
    #   <p>Specifies change details of the domain configuration change.</p>
    #   @return [Types::ChangeProgressDetails]
    # @!attribute domain_processing_status
    #   <p>The status of any changes that are currently in progress for the domain.</p>
    #   @return [String]
    # @!attribute modifying_properties
    #   <p>Information about the domain properties that are currently being modified.</p>
    #   @return [Array<Types::ModifyingProperties>]
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
      :change_progress_details,
      :domain_processing_status,
      :modifying_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Status of the Elasticsearch version options for the specified Elasticsearch domain.</p>
    # @!attribute options
    #   <p> Specifies the Elasticsearch version for the specified Elasticsearch domain.</p>
    #   @return [String]
    # @!attribute status
    #   <p> Specifies the status of the Elasticsearch version options for the specified Elasticsearch domain.</p>
    #   @return [Types::OptionStatus]
    class ElasticsearchVersionStatus < Struct.new(
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the Encryption At Rest Options.</p>
    # @!attribute enabled
    #   <p>Specifies the option to enable Encryption At Rest.</p>
    #   @return [Boolean]
    # @!attribute kms_key_id
    #   <p> Specifies the KMS Key ID for Encryption At Rest options.</p>
    #   @return [String]
    class EncryptionAtRestOptions < Struct.new(
      :enabled,
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Status of the Encryption At Rest options for the specified Elasticsearch domain.</p>
    # @!attribute options
    #   <p> Specifies the Encryption At Rest options for the specified Elasticsearch domain.</p>
    #   @return [Types::EncryptionAtRestOptions]
    # @!attribute status
    #   <p> Specifies the status of the Encryption At Rest options for the specified Elasticsearch domain.</p>
    #   @return [Types::OptionStatus]
    class EncryptionAtRestOptionsStatus < Struct.new(
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute error_type
    #   @return [String]
    # @!attribute error_message
    #   @return [String]
    class ErrorDetails < Struct.new(
      :error_type,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       A filter used to limit results when describing inbound or outbound cross-cluster search connections.
    #       Multiple values can be specified per filter.
    #       A cross-cluster search connection must match at least one of the specified values for it to be
    #       returned from an operation.
    #     </p>
    # @!attribute name
    #   <p>
    #         Specifies the name of the filter.
    #       </p>
    #   @return [String]
    # @!attribute values
    #   <p>
    #         Contains one or more values for the filter.
    #       </p>
    #   @return [Array<String>]
    class Filter < Struct.new(
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Container for request parameters to
    #       <code>
    #         <a>GetCompatibleElasticsearchVersions</a>
    #       </code>
    #       operation.
    #     </p>
    # @!attribute domain_name
    #   <p>The name of an Elasticsearch domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #   @return [String]
    class GetCompatibleElasticsearchVersionsRequest < Struct.new(
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Container for response returned by
    #       <code>
    #         <a>GetCompatibleElasticsearchVersions</a>
    #       </code>
    #       operation.
    #     </p>
    # @!attribute compatible_elasticsearch_versions
    #   <p>
    #         A map of compatible Elasticsearch versions returned as part of the
    #         <code>
    #           <a>GetCompatibleElasticsearchVersions</a>
    #         </code>
    #         operation.
    #       </p>
    #   @return [Array<Types::CompatibleVersionsMap>]
    class GetCompatibleElasticsearchVersionsResponse < Struct.new(
      :compatible_elasticsearch_versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Container for request parameters to
    #       <code>
    #         <a>GetPackageVersionHistory</a>
    #       </code>
    #       operation.
    #     </p>
    # @!attribute package_id
    #   <p>Returns an audit history of versions of the package.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Limits results to a maximum number of versions.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided, returns results for the next page.</p>
    #   @return [String]
    class GetPackageVersionHistoryRequest < Struct.new(
      :package_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Container for response returned by
    #       <code>
    #         <a>GetPackageVersionHistory</a>
    #       </code>
    #       operation.
    #     </p>
    # @!attribute package_id
    #   @return [String]
    # @!attribute package_version_history_list
    #   <p>List of <code>PackageVersionHistory</code> objects.</p>
    #   @return [Array<Types::PackageVersionHistory>]
    # @!attribute next_token
    #   @return [String]
    class GetPackageVersionHistoryResponse < Struct.new(
      :package_id,
      :package_version_history_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Container for request parameters to
    #       <code>
    #         <a>GetUpgradeHistory</a>
    #       </code>
    #       operation.
    #     </p>
    # @!attribute domain_name
    #   <p>The name of an Elasticsearch domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #         Set this value to limit the number of results returned.
    #       </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>
    #         Paginated APIs accepts NextToken input to returns next page results and provides
    #         a NextToken output in the response which can be used by the client to retrieve more results.
    #       </p>
    #   @return [String]
    class GetUpgradeHistoryRequest < Struct.new(
      :domain_name,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Container for response returned by
    #       <code>
    #         <a>GetUpgradeHistory</a>
    #       </code>
    #       operation.
    #     </p>
    # @!attribute upgrade_histories
    #   <p>
    #         A list of
    #         <code>
    #           <a>UpgradeHistory</a>
    #         </code>
    #         objects corresponding to each Upgrade or Upgrade Eligibility Check performed on a domain returned as part of
    #         <code>
    #           <a>GetUpgradeHistoryResponse</a>
    #         </code>
    #         object.
    #       </p>
    #   @return [Array<Types::UpgradeHistory>]
    # @!attribute next_token
    #   <p>Pagination token that needs to be supplied to the next call to get the next page of results</p>
    #   @return [String]
    class GetUpgradeHistoryResponse < Struct.new(
      :upgrade_histories,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Container for request parameters to
    #       <code>
    #         <a>GetUpgradeStatus</a>
    #       </code>
    #       operation.
    #     </p>
    # @!attribute domain_name
    #   <p>The name of an Elasticsearch domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #   @return [String]
    class GetUpgradeStatusRequest < Struct.new(
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Container for response returned by
    #       <code>
    #         <a>GetUpgradeStatus</a>
    #       </code>
    #       operation.
    #     </p>
    # @!attribute upgrade_step
    #   <p>
    #         Represents one of 3 steps that an Upgrade or Upgrade Eligibility Check does through:
    #         <ul>
    #           <li>PreUpgradeCheck</li>
    #           <li>Snapshot</li>
    #           <li>Upgrade</li>
    #         </ul>
    #       </p>
    #   @return [String]
    # @!attribute step_status
    #   <p>
    #         One of 4 statuses that a step can go through returned as part of the
    #         <code>
    #           <a>GetUpgradeStatusResponse</a>
    #         </code>
    #         object. The status can take one of the following values:
    #         <ul>
    #           <li>In Progress</li>
    #           <li>Succeeded</li>
    #           <li>Succeeded with Issues</li>
    #           <li>Failed</li>
    #         </ul>
    #       </p>
    #   @return [String]
    # @!attribute upgrade_name
    #   <p>A string that describes the update briefly</p>
    #   @return [String]
    class GetUpgradeStatusResponse < Struct.new(
      :upgrade_step,
      :step_status,
      :upgrade_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies details of an inbound connection.</p>
    # @!attribute source_domain_info
    #   <p>Specifies the <code><a>DomainInformation</a></code> for the source Elasticsearch domain.</p>
    #   @return [Types::DomainInformation]
    # @!attribute destination_domain_info
    #   <p>Specifies the <code><a>DomainInformation</a></code> for the destination Elasticsearch domain.</p>
    #   @return [Types::DomainInformation]
    # @!attribute cross_cluster_search_connection_id
    #   <p>Specifies the connection id for the inbound cross-cluster search connection.</p>
    #   @return [String]
    # @!attribute connection_status
    #   <p>Specifies the <code><a>InboundCrossClusterSearchConnectionStatus</a></code> for the outbound connection.</p>
    #   @return [Types::InboundCrossClusterSearchConnectionStatus]
    class InboundCrossClusterSearchConnection < Struct.new(
      :source_domain_info,
      :destination_domain_info,
      :cross_cluster_search_connection_id,
      :connection_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the coonection status of an inbound cross-cluster search connection.</p>
    # @!attribute status_code
    #   <p>The state code for inbound connection. This can be one of the following:</p>
    #       <ul>
    #         <li>PENDING_ACCEPTANCE: Inbound connection is not yet accepted by destination domain owner.</li>
    #         <li>APPROVED: Inbound connection is pending acceptance by destination domain owner.</li>
    #         <li>REJECTING: Inbound connection rejection is in process.</li>
    #         <li>REJECTED: Inbound connection is rejected.</li>
    #         <li>DELETING: Inbound connection deletion is in progress.</li>
    #         <li>DELETED: Inbound connection is deleted and cannot be used further.</li>
    #       </ul>
    #   @return [String]
    # @!attribute message
    #   <p>Specifies verbose information for the inbound connection status.</p>
    #   @return [String]
    class InboundCrossClusterSearchConnectionStatus < Struct.new(
      :status_code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       InstanceCountLimits represents the limits on number of instances that be created in Amazon Elasticsearch for
    #       given InstanceType.
    #     </p>
    # @!attribute minimum_instance_count
    #   <p>
    #         Minimum number of Instances that can be instantiated for given InstanceType.
    #       </p>
    #   @return [Integer]
    # @!attribute maximum_instance_count
    #   <p>
    #         Maximum number of Instances that can be instantiated for given InstanceType.
    #       </p>
    #   @return [Integer]
    class InstanceCountLimits < Struct.new(
      :minimum_instance_count,
      :maximum_instance_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:minimum_instance_count] = 0 unless options.key?(:minimum_instance_count)
        options[:maximum_instance_count] = 0 unless options.key?(:maximum_instance_count)
        super
      end
    end

    # <p>InstanceLimits represents the list of instance related attributes that are available for given InstanceType.
    #     </p>
    # @!attribute instance_count_limits
    #   <p>
    #         InstanceCountLimits represents the limits on number of instances that be created in Amazon Elasticsearch for
    #         given InstanceType.
    #       </p>
    #   @return [Types::InstanceCountLimits]
    class InstanceLimits < Struct.new(
      :instance_count_limits,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request processing has failed because of an unknown error, exception or failure (the failure is internal to the service) . Gives http status code of 500.</p>
    # @!attribute message
    #   <p>A description of the error.</p>
    #   @return [String]
    class InternalException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request processing has failed because of invalid pagination token provided by customer. Returns an HTTP status code of 400. </p>
    # @!attribute message
    #   <p>A description of the error.</p>
    #   @return [String]
    class InvalidPaginationTokenException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An exception for trying to create or access sub-resource that is either invalid or not supported. Gives http status code of 409.</p>
    # @!attribute message
    #   <p>A description of the error.</p>
    #   @return [String]
    class InvalidTypeException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An exception for trying to create more than allowed resources or sub-resources. Gives http status code of 409.</p>
    # @!attribute message
    #   <p>A description of the error.</p>
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Limits for given InstanceType and for each of it's role.
    #       <br></br>
    #       Limits contains following
    #       <code>
    #         <a>StorageTypes,</a>
    #       </code>
    #       <code>
    #         <a>InstanceLimits</a>
    #       </code>
    #       and
    #       <code>
    #         <a>AdditionalLimits</a>
    #       </code>
    #     </p>
    # @!attribute storage_types
    #   <p>StorageType represents the list of storage related types and attributes
    #         that are available for given InstanceType.
    #       </p>
    #   @return [Array<Types::StorageType>]
    # @!attribute instance_limits
    #   <p>InstanceLimits represents the list of instance related attributes that are available for given InstanceType.
    #       </p>
    #   @return [Types::InstanceLimits]
    # @!attribute additional_limits
    #   <p>
    #         List of additional limits that are specific to a given InstanceType and for each of it's
    #         <code>
    #           <a>InstanceRole</a>
    #         </code>
    #         .
    #       </p>
    #   @return [Array<Types::AdditionalLimit>]
    class Limits < Struct.new(
      :storage_types,
      :instance_limits,
      :additional_limits,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Container for the parameters to the <code><a>ListDomainNames</a></code> operation.</p>
    # @!attribute engine_type
    #   <p> Optional parameter to filter the output by domain engine type. Acceptable values are 'Elasticsearch' and 'OpenSearch'. </p>
    #   @return [String]
    class ListDomainNamesRequest < Struct.new(
      :engine_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a <code>ListDomainNames</code> operation. Contains the names of all domains owned by this account and their respective engine types.</p>
    # @!attribute domain_names
    #   <p>List of domain names and respective engine types.</p>
    #   @return [Array<Types::DomainInfo>]
    class ListDomainNamesResponse < Struct.new(
      :domain_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Container for request parameters to
    #       <code>
    #         <a>ListDomainsForPackage</a>
    #       </code>
    #       operation.
    #     </p>
    # @!attribute package_id
    #   <p>The package for which to list domains.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Limits results to a maximum number of domains.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided, returns results for the next page.</p>
    #   @return [String]
    class ListDomainsForPackageRequest < Struct.new(
      :package_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Container for response parameters to
    #       <code>
    #         <a>ListDomainsForPackage</a>
    #       </code>
    #       operation.
    #     </p>
    # @!attribute domain_package_details_list
    #   <p>List of <code>DomainPackageDetails</code> objects.</p>
    #   @return [Array<Types::DomainPackageDetails>]
    # @!attribute next_token
    #   @return [String]
    class ListDomainsForPackageResponse < Struct.new(
      :domain_package_details_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Container for the parameters to the
    #       <code>
    #         <a>ListElasticsearchInstanceTypes</a>
    #       </code>
    #       operation.
    #     </p>
    # @!attribute elasticsearch_version
    #   <p>Version of Elasticsearch for which list of supported elasticsearch
    #         instance types are needed.
    #       </p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>DomainName represents the name of the Domain that we are trying to modify. This should be present only if we are
    #         querying for list of available Elasticsearch instance types when modifying existing domain.
    #       </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #       Set this value to limit the number of results returned.
    #       Value provided must be greater than 30 else it wont be honored.
    #     </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>NextToken should be sent in case if earlier API call produced result
    #         containing NextToken. It is used for pagination.
    #       </p>
    #   @return [String]
    class ListElasticsearchInstanceTypesRequest < Struct.new(
      :elasticsearch_version,
      :domain_name,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Container for the parameters returned by
    #       <code>
    #         <a>ListElasticsearchInstanceTypes</a>
    #       </code>
    #       operation.
    #     </p>
    # @!attribute elasticsearch_instance_types
    #   <p>
    #         List of instance types supported by Amazon Elasticsearch service for
    #         given
    #         <code>
    #           <a>ElasticsearchVersion</a>
    #         </code>
    #       </p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>In case if there are more results available NextToken would be
    #         present, make further request to the same API with
    #         received NextToken to paginate remaining results.
    #       </p>
    #   @return [String]
    class ListElasticsearchInstanceTypesResponse < Struct.new(
      :elasticsearch_instance_types,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Container for the parameters to the
    #       <code>
    #         <a>ListElasticsearchVersions</a>
    #       </code>
    #       operation.
    #       <p>
    #         Use
    #         <code>
    #           <a>MaxResults</a>
    #         </code>
    #         to control the maximum number of results to retrieve in a single
    #         call.
    #       </p>
    #       <p>
    #         Use
    #         <code>
    #           <a>NextToken</a>
    #         </code>
    #         in response to retrieve more results. If the received response does
    #         not contain a NextToken, then there are no more results to retrieve.
    #       </p>
    #     </p>
    # @!attribute max_results
    #   <p>
    #         Set this value to limit the number of results returned.
    #         Value provided must be greater than 10 else it wont be honored.
    #       </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>
    #         Paginated APIs accepts NextToken input to returns next page results and provides
    #         a NextToken output in the response which can be used by the client to retrieve more results.
    #       </p>
    #   @return [String]
    class ListElasticsearchVersionsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Container for the parameters for response received from
    #       <code>
    #         <a>ListElasticsearchVersions</a>
    #       </code>
    #       operation.
    #     </p>
    # @!attribute elasticsearch_versions
    #   <p>List of supported elastic search versions.
    #       </p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>
    #         Paginated APIs accepts NextToken input to returns next page results and provides
    #         a NextToken output in the response which can be used by the client to retrieve more results.
    #       </p>
    #   @return [String]
    class ListElasticsearchVersionsResponse < Struct.new(
      :elasticsearch_versions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Container for request parameters to
    #       <code>
    #         <a>ListPackagesForDomain</a>
    #       </code>
    #       operation.
    #     </p>
    # @!attribute domain_name
    #   <p>The name of the domain for which you want to list associated packages.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Limits results to a maximum number of packages.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided, returns results for the next page.</p>
    #   @return [String]
    class ListPackagesForDomainRequest < Struct.new(
      :domain_name,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Container for response parameters to
    #       <code>
    #         <a>ListPackagesForDomain</a>
    #       </code>
    #       operation.
    #     </p>
    # @!attribute domain_package_details_list
    #   <p>List of <code>DomainPackageDetails</code> objects.</p>
    #   @return [Array<Types::DomainPackageDetails>]
    # @!attribute next_token
    #   <p>Pagination token that needs to be supplied to the next call to get the next page of results.</p>
    #   @return [String]
    class ListPackagesForDomainResponse < Struct.new(
      :domain_package_details_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code><a>ListTags</a></code> operation. Specify the <code>ARN</code> for the Elasticsearch domain to which the tags are attached that you want to view are attached.</p>
    # @!attribute arn
    #   <p> Specify the <code>ARN</code> for the Elasticsearch domain to which the tags are attached that you want to view.</p>
    #   @return [String]
    class ListTagsRequest < Struct.new(
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a <code>ListTags</code> operation. Contains tags for all requested Elasticsearch domains.</p>
    # @!attribute tag_list
    #   <p> List of <code>Tag</code> for the requested Elasticsearch domain.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsResponse < Struct.new(
      :tag_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Retrieves information about each principal that is allowed to access a
    #    given Amazon OpenSearch Service domain through the use of an interface VPC endpoint</p>
    # @!attribute domain_name
    #   <p>The name of the OpenSearch Service domain to retrieve access information for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Provides an identifier to allow retrieval of paginated results.</p>
    #   @return [String]
    class ListVpcEndpointAccessRequest < Struct.new(
      :domain_name,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for response parameters to the <code><a>ListVpcEndpointAccess</a></code> operation.
    #           Returns a list of accounts id and account type authorized to manage VPC endpoints.</p>
    # @!attribute authorized_principal_list
    #   <p>List of <code>AuthorizedPrincipal</code> describing the details of the permissions to manage VPC endpoints against the specified domain.</p>
    #   @return [Array<Types::AuthorizedPrincipal>]
    # @!attribute next_token
    #   <p>Provides an identifier to allow retrieval of paginated results.</p>
    #   @return [String]
    class ListVpcEndpointAccessResponse < Struct.new(
      :authorized_principal_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for request parameters to the <code><a>ListVpcEndpointsForDomain</a></code> operation. Specifies the domain whose VPC endpoints will be listed.</p>
    # @!attribute domain_name
    #   <p>Name of the ElasticSearch domain whose VPC endpoints are to be listed.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Provides an identifier to allow retrieval of paginated results.</p>
    #   @return [String]
    class ListVpcEndpointsForDomainRequest < Struct.new(
      :domain_name,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for response parameters to the <code><a>ListVpcEndpointsForDomain</a></code> operation. Returns a list containing summarized details of the VPC endpoints.</p>
    # @!attribute vpc_endpoint_summary_list
    #   <p>Provides list of <code>VpcEndpointSummary</code> summarizing details of the VPC endpoints.</p>
    #   @return [Array<Types::VpcEndpointSummary>]
    # @!attribute next_token
    #   <p>Information about each endpoint associated with the domain.</p>
    #   @return [String]
    class ListVpcEndpointsForDomainResponse < Struct.new(
      :vpc_endpoint_summary_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for request parameters to the <code><a>ListVpcEndpoints</a></code> operation.</p>
    # @!attribute next_token
    #   <p>Identifier to allow retrieval of paginated results.</p>
    #   @return [String]
    class ListVpcEndpointsRequest < Struct.new(
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for response parameters to the <code><a>ListVpcEndpoints</a></code> operation. Returns a list containing summarized details of the VPC endpoints.</p>
    # @!attribute vpc_endpoint_summary_list
    #   <p>Information about each endpoint.</p>
    #   @return [Array<Types::VpcEndpointSummary>]
    # @!attribute next_token
    #   <p>Provides an identifier to allow retrieval of paginated results.</p>
    #   @return [String]
    class ListVpcEndpointsResponse < Struct.new(
      :vpc_endpoint_summary_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Log Publishing option that is set for given domain.
    #        <br></br>Attributes and their details:
    #      <ul>
    #        <li>CloudWatchLogsLogGroupArn: ARN of the Cloudwatch log group to which log needs to be published.</li>
    #        <li>Enabled: Whether the log publishing for given log type is enabled or not</li>
    #      </ul>
    #    </p>
    # @!attribute cloud_watch_logs_log_group_arn
    #   <p>ARN of the Cloudwatch log group to which log needs to be published.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p> Specifies whether given log publishing option is enabled or not.</p>
    #   @return [Boolean]
    class LogPublishingOption < Struct.new(
      :cloud_watch_logs_log_group_arn,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configured log publishing options for the domain and their current status.</p>
    # @!attribute options
    #   <p>The log publishing options configured for the Elasticsearch domain.</p>
    #   @return [Hash<String, Types::LogPublishingOption>]
    # @!attribute status
    #   <p>The status of the log publishing options for the Elasticsearch domain. See <code>OptionStatus</code> for the status information that's included. </p>
    #   @return [Types::OptionStatus]
    class LogPublishingOptionsStatus < Struct.new(
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Credentials for the master user: username and password, ARN, or both.</p>
    # @!attribute master_user_arn
    #   <p>ARN for the master user (if IAM is enabled).</p>
    #   @return [String]
    # @!attribute master_user_name
    #   <p>The master user's username, which is stored in the Amazon Elasticsearch Service domain's internal database.</p>
    #   @return [String]
    # @!attribute master_user_password
    #   <p>The master user's password, which is stored in the Amazon Elasticsearch Service domain's internal database.</p>
    #   @return [String]
    class MasterUserOptions < Struct.new(
      :master_user_arn,
      :master_user_name,
      :master_user_password,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the domain properties that are currently being modified.</p>
    # @!attribute name
    #   <p>The name of the property that is currently being modified.</p>
    #   @return [String]
    # @!attribute active_value
    #   <p>The current value of the domain property that is being modified.</p>
    #   @return [String]
    # @!attribute pending_value
    #   <p>The value that the property that is currently being modified will eventually have.</p>
    #   @return [String]
    # @!attribute value_type
    #   <p>The type of value that is currently being modified. Properties can have two types:</p>
    #       <ul>
    #         <li><b>PLAIN_TEXT</b>: Contain direct values such as "1", "True", or "c5.large.search".</li>
    #         <li><b>STRINGIFIED_JSON</b>: Contain content in JSON format, such as {"Enabled":"True"}".</li>
    #       </ul>
    #   @return [String]
    class ModifyingProperties < Struct.new(
      :name,
      :active_value,
      :pending_value,
      :value_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the node-to-node encryption options.</p>
    # @!attribute enabled
    #   <p>Specify true to enable node-to-node encryption.</p>
    #   @return [Boolean]
    class NodeToNodeEncryptionOptions < Struct.new(
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Status of the node-to-node encryption options for the specified Elasticsearch domain.</p>
    # @!attribute options
    #   <p>Specifies the node-to-node encryption options for the specified Elasticsearch domain.</p>
    #   @return [Types::NodeToNodeEncryptionOptions]
    # @!attribute status
    #   <p>Specifies the status of the node-to-node encryption options for the specified Elasticsearch domain.</p>
    #   @return [Types::OptionStatus]
    class NodeToNodeEncryptionOptionsStatus < Struct.new(
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the current status of the entity.</p>
    # @!attribute creation_date
    #   <p>Timestamp which tells the creation date for the entity.</p>
    #   @return [Time]
    # @!attribute update_date
    #   <p>Timestamp which tells the last updated time for the entity.</p>
    #   @return [Time]
    # @!attribute update_version
    #   <p>Specifies the latest version for the entity.</p>
    #   @return [Integer]
    # @!attribute state
    #   <p>Provides the <code>OptionState</code> for the Elasticsearch domain.</p>
    #   @return [String]
    # @!attribute pending_deletion
    #   <p>Indicates whether the Elasticsearch domain is being deleted.</p>
    #   @return [Boolean]
    class OptionStatus < Struct.new(
      :creation_date,
      :update_date,
      :update_version,
      :state,
      :pending_deletion,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:update_version] = 0 unless options.key?(:update_version)
        super
      end
    end

    # <p>Specifies details of an outbound connection.</p>
    # @!attribute source_domain_info
    #   <p>Specifies the <code><a>DomainInformation</a></code> for the source Elasticsearch domain.</p>
    #   @return [Types::DomainInformation]
    # @!attribute destination_domain_info
    #   <p>Specifies the <code><a>DomainInformation</a></code> for the destination Elasticsearch domain.</p>
    #   @return [Types::DomainInformation]
    # @!attribute cross_cluster_search_connection_id
    #   <p>Specifies the connection id for the outbound cross-cluster search connection.</p>
    #   @return [String]
    # @!attribute connection_alias
    #   <p>Specifies the connection alias for the outbound cross-cluster search connection.</p>
    #   @return [String]
    # @!attribute connection_status
    #   <p>Specifies the <code><a>OutboundCrossClusterSearchConnectionStatus</a></code> for the outbound connection.</p>
    #   @return [Types::OutboundCrossClusterSearchConnectionStatus]
    class OutboundCrossClusterSearchConnection < Struct.new(
      :source_domain_info,
      :destination_domain_info,
      :cross_cluster_search_connection_id,
      :connection_alias,
      :connection_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the connection status of an outbound cross-cluster search connection.</p>
    # @!attribute status_code
    #   <p>The state code for outbound connection. This can be one of the following:</p>
    #       <ul>
    #         <li>VALIDATING: The outbound connection request is being validated.</li>
    #         <li>VALIDATION_FAILED: Validation failed for the connection request.</li>
    #         <li>PENDING_ACCEPTANCE: Outbound connection request is validated and is not yet accepted by destination domain owner.</li>
    #         <li>PROVISIONING: Outbound connection request is in process.</li>
    #         <li>ACTIVE: Outbound connection is active and ready to use.</li>
    #         <li>REJECTED: Outbound connection request is rejected by destination domain owner.</li>
    #         <li>DELETING: Outbound connection deletion is in progress.</li>
    #         <li>DELETED: Outbound connection is deleted and cannot be used further.</li>
    #       </ul>
    #   @return [String]
    # @!attribute message
    #   <p>Specifies verbose information for the outbound connection status.</p>
    #   @return [String]
    class OutboundCrossClusterSearchConnectionStatus < Struct.new(
      :status_code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Basic information about a package.</p>
    # @!attribute package_id
    #   <p>Internal ID of the package.</p>
    #   @return [String]
    # @!attribute package_name
    #   <p>User specified name of the package.</p>
    #   @return [String]
    # @!attribute package_type
    #   <p>Currently supports only TXT-DICTIONARY.</p>
    #   @return [String]
    # @!attribute package_description
    #   <p>User-specified description of the package.</p>
    #   @return [String]
    # @!attribute package_status
    #   <p>Current state of the package. Values are COPYING/COPY_FAILED/AVAILABLE/DELETING/DELETE_FAILED</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Timestamp which tells creation date of the package.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   @return [Time]
    # @!attribute available_package_version
    #   @return [String]
    # @!attribute error_details
    #   <p>Additional information if the package is in an error state. Null otherwise.</p>
    #   @return [Types::ErrorDetails]
    class PackageDetails < Struct.new(
      :package_id,
      :package_name,
      :package_type,
      :package_description,
      :package_status,
      :created_at,
      :last_updated_at,
      :available_package_version,
      :error_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The S3 location for importing the package specified as <code>S3BucketName</code> and <code>S3Key</code></p>
    # @!attribute s3_bucket_name
    #   <p>Name of the bucket containing the package.</p>
    #   @return [String]
    # @!attribute s3_key
    #   <p>Key (file name) of the package.</p>
    #   @return [String]
    class PackageSource < Struct.new(
      :s3_bucket_name,
      :s3_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of a package version.</p>
    # @!attribute package_version
    #   <p>Version of the package.</p>
    #   @return [String]
    # @!attribute commit_message
    #   <p>A message associated with the version.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Timestamp which tells creation time of the package version.</p>
    #   @return [Time]
    class PackageVersionHistory < Struct.new(
      :package_version,
      :commit_message,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for parameters to <code>PurchaseReservedElasticsearchInstanceOffering</code></p>
    # @!attribute reserved_elasticsearch_instance_offering_id
    #   <p>The ID of the reserved Elasticsearch instance offering to purchase.</p>
    #   @return [String]
    # @!attribute reservation_name
    #   <p>A customer-specified identifier to track this reservation.</p>
    #   @return [String]
    # @!attribute instance_count
    #   <p>The number of Elasticsearch instances to reserve.</p>
    #   @return [Integer]
    class PurchaseReservedElasticsearchInstanceOfferingRequest < Struct.new(
      :reserved_elasticsearch_instance_offering_id,
      :reservation_name,
      :instance_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>PurchaseReservedElasticsearchInstanceOffering</code> operation.</p>
    # @!attribute reserved_elasticsearch_instance_id
    #   <p>Details of the reserved Elasticsearch instance which was purchased.</p>
    #   @return [String]
    # @!attribute reservation_name
    #   <p>The customer-specified identifier used to track this reservation.</p>
    #   @return [String]
    class PurchaseReservedElasticsearchInstanceOfferingResponse < Struct.new(
      :reserved_elasticsearch_instance_id,
      :reservation_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the specific price and frequency of a recurring charges for a reserved Elasticsearch instance, or for a reserved Elasticsearch instance offering.</p>
    # @!attribute recurring_charge_amount
    #   <p>The monetary amount of the recurring charge.</p>
    #   @return [Float]
    # @!attribute recurring_charge_frequency
    #   <p>The frequency of the recurring charge.</p>
    #   @return [String]
    class RecurringCharge < Struct.new(
      :recurring_charge_amount,
      :recurring_charge_frequency,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code><a>RejectInboundCrossClusterSearchConnection</a></code> operation.</p>
    # @!attribute cross_cluster_search_connection_id
    #   <p>The id of the inbound connection that you want to reject.</p>
    #   @return [String]
    class RejectInboundCrossClusterSearchConnectionRequest < Struct.new(
      :cross_cluster_search_connection_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a <code><a>RejectInboundCrossClusterSearchConnection</a></code> operation. Contains details of rejected inbound connection.</p>
    # @!attribute cross_cluster_search_connection
    #   <p>Specifies the <code><a>InboundCrossClusterSearchConnection</a></code> of rejected inbound connection. </p>
    #   @return [Types::InboundCrossClusterSearchConnection]
    class RejectInboundCrossClusterSearchConnectionResponse < Struct.new(
      :cross_cluster_search_connection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code><a>RemoveTags</a></code> operation. Specify the <code>ARN</code> for the Elasticsearch domain from which you want to remove the specified <code>TagKey</code>.</p>
    # @!attribute arn
    #   <p>Specifies the <code>ARN</code> for the Elasticsearch domain from which you want to delete the specified tags.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Specifies the <code>TagKey</code> list which you want to remove from the Elasticsearch domain.</p>
    #   @return [Array<String>]
    class RemoveTagsRequest < Struct.new(
      :arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of a reserved Elasticsearch instance.</p>
    # @!attribute reservation_name
    #   <p>The customer-specified identifier to track this reservation.</p>
    #   @return [String]
    # @!attribute reserved_elasticsearch_instance_id
    #   <p>The unique identifier for the reservation.</p>
    #   @return [String]
    # @!attribute reserved_elasticsearch_instance_offering_id
    #   <p>The offering identifier.</p>
    #   @return [String]
    # @!attribute elasticsearch_instance_type
    #   <p>The Elasticsearch instance type offered by the reserved instance offering.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time the reservation started.</p>
    #   @return [Time]
    # @!attribute duration
    #   <p>The duration, in seconds, for which the Elasticsearch instance is reserved.</p>
    #   @return [Integer]
    # @!attribute fixed_price
    #   <p>The upfront fixed charge you will paid to purchase the specific reserved Elasticsearch instance offering. </p>
    #   @return [Float]
    # @!attribute usage_price
    #   <p>The rate you are charged for each hour for the domain that is using this reserved instance.</p>
    #   @return [Float]
    # @!attribute currency_code
    #   <p>The currency code for the reserved Elasticsearch instance offering.</p>
    #   @return [String]
    # @!attribute elasticsearch_instance_count
    #   <p>The number of Elasticsearch instances that have been reserved.</p>
    #   @return [Integer]
    # @!attribute state
    #   <p>The state of the reserved Elasticsearch instance.</p>
    #   @return [String]
    # @!attribute payment_option
    #   <p>The payment option as defined in the reserved Elasticsearch instance offering.</p>
    #   @return [String]
    # @!attribute recurring_charges
    #   <p>The charge to your account regardless of whether you are creating any domains using the instance offering.</p>
    #   @return [Array<Types::RecurringCharge>]
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
      :recurring_charges,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:duration] = 0 unless options.key?(:duration)
        options[:elasticsearch_instance_count] = 0 unless options.key?(:elasticsearch_instance_count)
        super
      end
    end

    # <p>Details of a reserved Elasticsearch instance offering.</p>
    # @!attribute reserved_elasticsearch_instance_offering_id
    #   <p>The Elasticsearch reserved instance offering identifier.</p>
    #   @return [String]
    # @!attribute elasticsearch_instance_type
    #   <p>The Elasticsearch instance type offered by the reserved instance offering.</p>
    #   @return [String]
    # @!attribute duration
    #   <p>The duration, in seconds, for which the offering will reserve the Elasticsearch instance.</p>
    #   @return [Integer]
    # @!attribute fixed_price
    #   <p>The upfront fixed charge you will pay to purchase the specific reserved Elasticsearch instance offering. </p>
    #   @return [Float]
    # @!attribute usage_price
    #   <p>The rate you are charged for each hour the domain that is using the offering is running.</p>
    #   @return [Float]
    # @!attribute currency_code
    #   <p>The currency code for the reserved Elasticsearch instance offering.</p>
    #   @return [String]
    # @!attribute payment_option
    #   <p>Payment option for the reserved Elasticsearch instance offering</p>
    #   @return [String]
    # @!attribute recurring_charges
    #   <p>The charge to your account regardless of whether you are creating any domains using the instance offering.</p>
    #   @return [Array<Types::RecurringCharge>]
    class ReservedElasticsearchInstanceOffering < Struct.new(
      :reserved_elasticsearch_instance_offering_id,
      :elasticsearch_instance_type,
      :duration,
      :fixed_price,
      :usage_price,
      :currency_code,
      :payment_option,
      :recurring_charges,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:duration] = 0 unless options.key?(:duration)
        super
      end
    end

    # <p>An exception for creating a resource that already exists. Gives http status code of 400.</p>
    # @!attribute message
    #   <p>A description of the error.</p>
    #   @return [String]
    class ResourceAlreadyExistsException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An exception for accessing or deleting a resource that does not exist. Gives http status code of 400.</p>
    # @!attribute message
    #   <p>A description of the error.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Revokes access to an Amazon OpenSearch Service domain that was provided through an interface
    #    VPC endpoint.</p>
    # @!attribute domain_name
    #   <p>The name of the OpenSearch Service domain.</p>
    #   @return [String]
    # @!attribute account
    #   <p>The account ID to revoke access from.</p>
    #   @return [String]
    class RevokeVpcEndpointAccessRequest < Struct.new(
      :domain_name,
      :account,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for response parameters to the <code><a>RevokeVpcEndpointAccess</a></code> operation. The response body for this operation is empty.</p>
    class RevokeVpcEndpointAccessResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the SAML Identity Provider's information.</p>
    # @!attribute metadata_content
    #   <p>The Metadata of the SAML application in xml format.</p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>The unique Entity ID of the application in SAML Identity Provider.</p>
    #   @return [String]
    class SAMLIdp < Struct.new(
      :metadata_content,
      :entity_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the SAML application configuration for the domain.</p>
    # @!attribute enabled
    #   <p>True if SAML is enabled.</p>
    #   @return [Boolean]
    # @!attribute idp
    #   <p>Specifies the SAML Identity Provider's information.</p>
    #   @return [Types::SAMLIdp]
    # @!attribute master_user_name
    #   <p>The SAML master username, which is stored in the Amazon Elasticsearch Service domain's internal database.</p>
    #   @return [String]
    # @!attribute master_backend_role
    #   <p>The backend role to which the SAML master user is mapped to.</p>
    #   @return [String]
    # @!attribute subject_key
    #   <p>The key to use for matching the SAML Subject attribute.</p>
    #   @return [String]
    # @!attribute roles_key
    #   <p>The key to use for matching the SAML Roles attribute.</p>
    #   @return [String]
    # @!attribute session_timeout_minutes
    #   <p>The duration, in minutes, after which a user session becomes inactive. Acceptable values are between 1 and 1440, and the default value is 60.</p>
    #   @return [Integer]
    class SAMLOptionsInput < Struct.new(
      :enabled,
      :idp,
      :master_user_name,
      :master_backend_role,
      :subject_key,
      :roles_key,
      :session_timeout_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the SAML application configured for the domain.</p>
    # @!attribute enabled
    #   <p>True if SAML is enabled.</p>
    #   @return [Boolean]
    # @!attribute idp
    #   <p>Describes the SAML Identity Provider's information.</p>
    #   @return [Types::SAMLIdp]
    # @!attribute subject_key
    #   <p>The key used for matching the SAML Subject attribute.</p>
    #   @return [String]
    # @!attribute roles_key
    #   <p>The key used for matching the SAML Roles attribute.</p>
    #   @return [String]
    # @!attribute session_timeout_minutes
    #   <p>The duration, in minutes, after which a user session becomes inactive.</p>
    #   @return [Integer]
    class SAMLOptionsOutput < Struct.new(
      :enabled,
      :idp,
      :subject_key,
      :roles_key,
      :session_timeout_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies details of the scheduled Auto-Tune action. See the <a href="https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html" target="_blank">Developer Guide</a> for more information. </p>
    # @!attribute date
    #   <p>Specifies timestamp for the Auto-Tune action scheduled for the domain. </p>
    #   @return [Time]
    # @!attribute action_type
    #   <p>Specifies Auto-Tune action type. Valid values are JVM_HEAP_SIZE_TUNING and JVM_YOUNG_GEN_TUNING. </p>
    #   @return [String]
    # @!attribute action
    #   <p>Specifies Auto-Tune action description. </p>
    #   @return [String]
    # @!attribute severity
    #   <p>Specifies Auto-Tune action severity. Valid values are LOW, MEDIUM and HIGH. </p>
    #   @return [String]
    class ScheduledAutoTuneDetails < Struct.new(
      :date,
      :action_type,
      :action,
      :severity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The current options of an Elasticsearch domain service software options.</p>
    # @!attribute current_version
    #   <p>The current service software version that is present on the domain.</p>
    #   @return [String]
    # @!attribute new_version
    #   <p>The new service software version if one is available.</p>
    #   @return [String]
    # @!attribute update_available
    #   <p><code>True</code> if you are able to update you service software version. <code>False</code> if you are not able to update your service software version. </p>
    #   @return [Boolean]
    # @!attribute cancellable
    #   <p><code>True</code> if you are able to cancel your service software version update. <code>False</code> if you are not able to cancel your service software version. </p>
    #   @return [Boolean]
    # @!attribute update_status
    #   <p>The status of your service software update. This field can take the following values: <code>ELIGIBLE</code>, <code>PENDING_UPDATE</code>, <code>IN_PROGRESS</code>, <code>COMPLETED</code>, and <code>NOT_ELIGIBLE</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the <code>UpdateStatus</code>.</p>
    #   @return [String]
    # @!attribute automated_update_date
    #   <p>Timestamp, in Epoch time, until which you can manually request a service software update. After this date, we automatically update your service software.</p>
    #   @return [Time]
    # @!attribute optional_deployment
    #   <p><code>True</code> if a service software is never automatically updated. <code>False</code> if a service software is automatically updated after <code>AutomatedUpdateDate</code>.  </p>
    #   @return [Boolean]
    class ServiceSoftwareOptions < Struct.new(
      :current_version,
      :new_version,
      :update_available,
      :cancellable,
      :update_status,
      :description,
      :automated_update_date,
      :optional_deployment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the time, in UTC format, when the service takes a daily automated snapshot of the specified Elasticsearch domain. Default value is <code>0</code> hours.</p>
    # @!attribute automated_snapshot_start_hour
    #   <p>Specifies the time, in UTC format, when the service takes a daily automated snapshot of the specified Elasticsearch domain. Default value is <code>0</code> hours.</p>
    #   @return [Integer]
    class SnapshotOptions < Struct.new(
      :automated_snapshot_start_hour,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Status of a daily automated snapshot.</p>
    # @!attribute options
    #   <p>Specifies the daily snapshot options specified for the Elasticsearch domain.</p>
    #   @return [Types::SnapshotOptions]
    # @!attribute status
    #   <p>Specifies the status of a daily automated snapshot.</p>
    #   @return [Types::OptionStatus]
    class SnapshotOptionsStatus < Struct.new(
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code><a>StartElasticsearchServiceSoftwareUpdate</a></code> operation. Specifies the name of the Elasticsearch domain that you wish to schedule a service software update on.</p>
    # @!attribute domain_name
    #   <p>The name of the domain that you want to update to the latest service software.</p>
    #   @return [String]
    class StartElasticsearchServiceSoftwareUpdateRequest < Struct.new(
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a <code>StartElasticsearchServiceSoftwareUpdate</code> operation. Contains the status of the update.</p>
    # @!attribute service_software_options
    #   <p>The current status of the Elasticsearch service software update.</p>
    #   @return [Types::ServiceSoftwareOptions]
    class StartElasticsearchServiceSoftwareUpdateResponse < Struct.new(
      :service_software_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>StorageTypes represents the list of storage related types and their attributes
    #       that are available for given InstanceType.
    #     </p>
    # @!attribute storage_type_name
    #   <p>
    #     Type of the storage.
    #     List of available storage options:
    #     <ol>
    #       <li>instance</li> Inbuilt storage available for the given Instance
    #       <li>ebs</li> Elastic block storage that would be attached to the given Instance
    #     </ol>
    #       </p>
    #   @return [String]
    # @!attribute storage_sub_type_name
    #   <p>
    #         SubType of the given storage type.
    #         List of available sub-storage options:
    #         For "instance" storageType we wont have any storageSubType,
    #         in case of "ebs" storageType we will have following valid storageSubTypes
    #         <ol>
    #           <li>standard</li>
    #           <li>gp2</li>
    #           <li>gp3</li>
    #           <li>io1</li>
    #         </ol>
    #         Refer <code><a>VolumeType</a></code> for more information regarding above EBS storage options.
    #       </p>
    #   @return [String]
    # @!attribute storage_type_limits
    #   <p>List of limits that are applicable for given storage type.
    #       </p>
    #   @return [Array<Types::StorageTypeLimit>]
    class StorageType < Struct.new(
      :storage_type_name,
      :storage_sub_type_name,
      :storage_type_limits,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Limits that are applicable for given storage type.
    #     </p>
    # @!attribute limit_name
    #   <p>
    #       Name of storage limits that are applicable for given storage type.
    #       If
    #       <code>
    #         <a>StorageType</a>
    #       </code>
    #       is ebs, following storage options are applicable
    #       <ol>
    #         <li>MinimumVolumeSize</li>
    #         Minimum amount of volume size that is applicable for given storage type.It can be empty if it is not applicable.
    #         <li>MaximumVolumeSize</li>
    #         Maximum amount of volume size that is applicable for given storage type.It can be empty if it is not applicable.
    #         <li>MaximumIops</li>
    #         Maximum amount of Iops that is applicable for given storage type.It can be empty if it is not applicable.
    #         <li>MinimumIops</li>
    #         Minimum amount of Iops that is applicable for given storage type.It can be empty if it is not applicable.
    #         <li>MaximumThroughput</li>
    #         Maximum amount of Throughput that is applicable for given storage type.It can be empty if it is not applicable.
    #         <li>MinimumThroughput</li>
    #         Minimum amount of Throughput that is applicable for given storage type.It can be empty if it is not applicable.
    #       </ol>
    #     </p>
    #   @return [String]
    # @!attribute limit_values
    #   <p>
    #         Values for the
    #         <code>
    #           <a>StorageTypeLimit$LimitName</a>
    #         </code>
    #         .
    #       </p>
    #   @return [Array<String>]
    class StorageTypeLimit < Struct.new(
      :limit_name,
      :limit_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a key value pair for a resource tag.</p>
    # @!attribute key
    #   <p>Specifies the <code>TagKey</code>, the name of the tag.  Tag keys must be unique for the Elasticsearch domain to which they are attached.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Specifies the <code>TagValue</code>, the value assigned to the corresponding tag key.  Tag values can be null and do not have to be unique in a tag set.  For example, you can have a key value
    #          pair in a tag set of <code>project : Trinity</code> and <code>cost-center : Trinity</code></p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the parameters to the <code><a>UpdateElasticsearchDomain</a></code> operation. Specifies the type and number of instances in the domain cluster.</p>
    # @!attribute domain_name
    #   <p>The name of the Elasticsearch domain that you are updating. </p>
    #   @return [String]
    # @!attribute elasticsearch_cluster_config
    #   <p>The type and number of instances to instantiate for the domain cluster.</p>
    #   @return [Types::ElasticsearchClusterConfig]
    # @!attribute ebs_options
    #   <p>Specify the type and size of the EBS volume that you want to use. </p>
    #   @return [Types::EBSOptions]
    # @!attribute snapshot_options
    #   <p>Option to set the time, in UTC format, for the daily automated snapshot. Default value is <code>0</code> hours. </p>
    #   @return [Types::SnapshotOptions]
    # @!attribute vpc_options
    #   <p>Options to specify the subnets and security groups for VPC endpoint. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-creating-vpc" target="_blank">Creating a VPC</a> in <i>VPC Endpoints for Amazon Elasticsearch Service Domains</i></p>
    #   @return [Types::VPCOptions]
    # @!attribute cognito_options
    #   <p>Options to specify the Cognito user and identity pools for Kibana authentication. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html" target="_blank">Amazon Cognito Authentication for Kibana</a>.</p>
    #   @return [Types::CognitoOptions]
    # @!attribute advanced_options
    #   <p>Modifies the advanced option to allow references to indices in an HTTP request body.  Must be <code>false</code> when configuring access to individual sub-resources.  By default, the value is <code>true</code>.
    #          See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options" target="_blank">Configuration Advanced Options</a> for more information.</p>
    #   @return [Hash<String, String>]
    # @!attribute access_policies
    #   <p>IAM access policy as a JSON-formatted string.</p>
    #   @return [String]
    # @!attribute log_publishing_options
    #   <p>Map of <code>LogType</code> and <code>LogPublishingOption</code>, each containing options to publish a given type of Elasticsearch log.</p>
    #   @return [Hash<String, Types::LogPublishingOption>]
    # @!attribute domain_endpoint_options
    #   <p>Options to specify configuration that will be applied to the domain endpoint.</p>
    #   @return [Types::DomainEndpointOptions]
    # @!attribute advanced_security_options
    #   <p>Specifies advanced security options.</p>
    #   @return [Types::AdvancedSecurityOptionsInput]
    # @!attribute node_to_node_encryption_options
    #   <p>Specifies the NodeToNodeEncryptionOptions.</p>
    #   @return [Types::NodeToNodeEncryptionOptions]
    # @!attribute encryption_at_rest_options
    #   <p>Specifies the Encryption At Rest Options.</p>
    #   @return [Types::EncryptionAtRestOptions]
    # @!attribute auto_tune_options
    #   <p>Specifies Auto-Tune options.</p>
    #   @return [Types::AutoTuneOptions]
    # @!attribute dry_run
    #   <p>
    #              This flag, when set to True, specifies whether the <code>UpdateElasticsearchDomain</code> request should return the results of validation checks without actually applying the change.
    #              This flag, when set to True, specifies the deployment mechanism through which the update shall be applied on the domain.
    #              This will not actually perform the Update.
    #          </p>
    #   @return [Boolean]
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
      :dry_run,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of an <code>UpdateElasticsearchDomain</code> request. Contains the status of the Elasticsearch domain being updated.</p>
    # @!attribute domain_config
    #   <p>The status of the updated Elasticsearch domain. </p>
    #   @return [Types::ElasticsearchDomainConfig]
    # @!attribute dry_run_results
    #   <p>Contains result of DryRun. </p>
    #   @return [Types::DryRunResults]
    class UpdateElasticsearchDomainConfigResponse < Struct.new(
      :domain_config,
      :dry_run_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Container for request parameters to
    #       <code>
    #         <a>UpdatePackage</a>
    #       </code>
    #       operation.
    #     </p>
    # @!attribute package_id
    #   <p>Unique identifier for the package.</p>
    #   @return [String]
    # @!attribute package_source
    #   <p>The S3 location for importing the package specified as <code>S3BucketName</code> and <code>S3Key</code></p>
    #   @return [Types::PackageSource]
    # @!attribute package_description
    #   <p>New description of the package.</p>
    #   @return [String]
    # @!attribute commit_message
    #   <p>An info message for the new version which will be shown as part of <code>GetPackageVersionHistoryResponse</code>.</p>
    #   @return [String]
    class UpdatePackageRequest < Struct.new(
      :package_id,
      :package_source,
      :package_description,
      :commit_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Container for response returned by
    #       <code>
    #         <a>UpdatePackage</a>
    #       </code>
    #       operation.
    #     </p>
    # @!attribute package_details
    #   <p>Information about the package <code>PackageDetails</code>.</p>
    #   @return [Types::PackageDetails]
    class UpdatePackageResponse < Struct.new(
      :package_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Modifies an Amazon OpenSearch Service-managed interface VPC endpoint.</p>
    # @!attribute vpc_endpoint_id
    #   <p>Unique identifier of the VPC endpoint to be updated.</p>
    #   @return [String]
    # @!attribute vpc_options
    #   <p>The security groups and/or subnets to add, remove, or modify.</p>
    #   @return [Types::VPCOptions]
    class UpdateVpcEndpointRequest < Struct.new(
      :vpc_endpoint_id,
      :vpc_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration and status of the VPC endpoint being updated.</p>
    # @!attribute vpc_endpoint
    #   <p>The endpoint to be updated.</p>
    #   @return [Types::VpcEndpoint]
    class UpdateVpcEndpointResponse < Struct.new(
      :vpc_endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Container for request parameters to
    #       <code>
    #         <a>UpgradeElasticsearchDomain</a>
    #       </code>
    #       operation.
    #     </p>
    # @!attribute domain_name
    #   <p>The name of an Elasticsearch domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #   @return [String]
    # @!attribute target_version
    #   <p>The version of Elasticsearch that you intend to upgrade the domain to.</p>
    #   @return [String]
    # @!attribute perform_check_only
    #   <p>
    #         This flag, when set to True, indicates that an Upgrade Eligibility Check needs to be performed.
    #         This will not actually perform the Upgrade.
    #       </p>
    #   @return [Boolean]
    class UpgradeElasticsearchDomainRequest < Struct.new(
      :domain_name,
      :target_version,
      :perform_check_only,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Container for response returned by
    #       <code>
    #         <a>UpgradeElasticsearchDomain</a>
    #       </code>
    #       operation.
    #     </p>
    # @!attribute domain_name
    #   <p>The name of an Elasticsearch domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #   @return [String]
    # @!attribute target_version
    #   <p>The version of Elasticsearch that you intend to upgrade the domain to.</p>
    #   @return [String]
    # @!attribute perform_check_only
    #   <p>
    #         This flag, when set to True, indicates that an Upgrade Eligibility Check needs to be performed.
    #         This will not actually perform the Upgrade.
    #       </p>
    #   @return [Boolean]
    # @!attribute change_progress_details
    #   <p>Specifies change details of the domain configuration change.</p>
    #   @return [Types::ChangeProgressDetails]
    class UpgradeElasticsearchDomainResponse < Struct.new(
      :domain_name,
      :target_version,
      :perform_check_only,
      :change_progress_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>History of the last 10 Upgrades and Upgrade Eligibility Checks.</p>
    # @!attribute upgrade_name
    #   <p>A string that describes the update briefly</p>
    #   @return [String]
    # @!attribute start_timestamp
    #   <p>UTC Timestamp at which the Upgrade API call was made in "yyyy-MM-ddTHH:mm:ssZ" format.</p>
    #   @return [Time]
    # @!attribute upgrade_status
    #   <p>
    #         The overall status of the update. The status can take one of the following values:
    #         <ul>
    #           <li>In Progress</li>
    #           <li>Succeeded</li>
    #           <li>Succeeded with Issues</li>
    #           <li>Failed</li>
    #         </ul>
    #       </p>
    #   @return [String]
    # @!attribute steps_list
    #   <p>
    #         A list of
    #         <code>
    #           <a>UpgradeStepItem</a>
    #         </code>
    #         s representing information about each step performed as pard of a specific Upgrade or Upgrade Eligibility Check.
    #       </p>
    #   @return [Array<Types::UpgradeStepItem>]
    class UpgradeHistory < Struct.new(
      :upgrade_name,
      :start_timestamp,
      :upgrade_status,
      :steps_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a single step of the Upgrade or Upgrade Eligibility Check workflow.</p>
    # @!attribute upgrade_step
    #   <p>
    #         Represents one of 3 steps that an Upgrade or Upgrade Eligibility Check does through:
    #         <ul>
    #           <li>PreUpgradeCheck</li>
    #           <li>Snapshot</li>
    #           <li>Upgrade</li>
    #         </ul>
    #       </p>
    #   @return [String]
    # @!attribute upgrade_step_status
    #   <p>
    #         The status of a particular step during an upgrade. The status can take one of the following values:
    #         <ul>
    #           <li>In Progress</li>
    #           <li>Succeeded</li>
    #           <li>Succeeded with Issues</li>
    #           <li>Failed</li>
    #         </ul>
    #       </p>
    #   @return [String]
    # @!attribute issues
    #   <p>A list of strings containing detailed information about the errors encountered in a particular step.</p>
    #   @return [Array<String>]
    # @!attribute progress_percent
    #   <p>The Floating point value representing progress percentage of a particular step.</p>
    #   @return [Float]
    class UpgradeStepItem < Struct.new(
      :upgrade_step,
      :upgrade_step_status,
      :issues,
      :progress_percent,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Options to specify the subnets and security groups for VPC endpoint. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html" target="_blank"> VPC Endpoints for Amazon Elasticsearch Service Domains</a>.</p>
    # @!attribute vpc_id
    #   <p>The VPC Id for the Elasticsearch domain. Exists only if the domain was created with VPCOptions.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>Specifies the subnets for VPC endpoint.</p>
    #   @return [Array<String>]
    # @!attribute availability_zones
    #   <p>The availability zones for the Elasticsearch domain. Exists only if the domain was created with VPCOptions.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>Specifies the security groups for VPC endpoint.</p>
    #   @return [Array<String>]
    class VPCDerivedInfo < Struct.new(
      :vpc_id,
      :subnet_ids,
      :availability_zones,
      :security_group_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Status of the VPC options for the specified Elasticsearch domain.</p>
    # @!attribute options
    #   <p> Specifies the VPC options for the specified Elasticsearch domain.</p>
    #   @return [Types::VPCDerivedInfo]
    # @!attribute status
    #   <p> Specifies the status of the VPC options for the specified Elasticsearch domain.</p>
    #   @return [Types::OptionStatus]
    class VPCDerivedInfoStatus < Struct.new(
      :options,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Options to specify the subnets and security groups for VPC endpoint. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html" target="_blank"> VPC Endpoints for Amazon Elasticsearch Service Domains</a>.</p>
    # @!attribute subnet_ids
    #   <p>Specifies the subnets for VPC endpoint.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>Specifies the security groups for VPC endpoint.</p>
    #   @return [Array<String>]
    class VPCOptions < Struct.new(
      :subnet_ids,
      :security_group_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An exception for missing / invalid input fields. Gives http status code of 400.</p>
    # @!attribute message
    #   <p>A description of the error.</p>
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The connection endpoint for connecting to an Amazon OpenSearch Service domain through a
    #    proxy.</p>
    # @!attribute vpc_endpoint_id
    #   <p>The unique identifier of the endpoint.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_owner
    #   <p>The creator of the endpoint.</p>
    #   @return [String]
    # @!attribute domain_arn
    #   <p>The Amazon Resource Name (ARN) of the domain associated with the endpoint.</p>
    #   @return [String]
    # @!attribute vpc_options
    #   <p>Options to specify the subnets and security groups for an Amazon OpenSearch Service VPC
    #      endpoint.</p>
    #   @return [Types::VPCDerivedInfo]
    # @!attribute status
    #   <p>The current status of the endpoint.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>The connection endpoint ID for connecting to the domain.</p>
    #   @return [String]
    class VpcEndpoint < Struct.new(
      :vpc_endpoint_id,
      :vpc_endpoint_owner,
      :domain_arn,
      :vpc_options,
      :status,
      :endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Error information when attempting to describe an Amazon OpenSearch Service-managed VPC
    #    endpoint.</p>
    # @!attribute vpc_endpoint_id
    #   <p>The unique identifier of the endpoint. </p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The code associated with the error.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>A message describing the error.</p>
    #   @return [String]
    class VpcEndpointError < Struct.new(
      :vpc_endpoint_id,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information for an Amazon OpenSearch Service-managed VPC endpoint.</p>
    # @!attribute vpc_endpoint_id
    #   <p>The unique identifier of the endpoint.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_owner
    #   <p>The creator of the endpoint.</p>
    #   @return [String]
    # @!attribute domain_arn
    #   <p>The Amazon Resource Name (ARN) of the domain associated with the endpoint.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the endpoint.</p>
    #   @return [String]
    class VpcEndpointSummary < Struct.new(
      :vpc_endpoint_id,
      :vpc_endpoint_owner,
      :domain_arn,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the zone awareness configuration for the domain cluster, such as the number of availability zones.</p>
    # @!attribute availability_zone_count
    #   <p>An integer value to indicate the number of availability zones for a domain when zone awareness is enabled. This should be equal to number of subnets if VPC endpoints is enabled</p>
    #   @return [Integer]
    class ZoneAwarenessConfig < Struct.new(
      :availability_zone_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
