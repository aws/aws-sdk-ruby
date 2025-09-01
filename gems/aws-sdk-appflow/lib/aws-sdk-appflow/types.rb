# frozen_string_literal: true

# This is generated code!

module Aws::Appflow
  # This module contains the types returned by client operations.
  module Types

    # <p>AppFlow/Requester has invalid or missing permissions.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The aggregation settings that you can use to customize the output format of your flow
    #       data. </p>
    # @!attribute aggregation_type
    #   <p> Specifies whether Amazon AppFlow aggregates the flow records into a single file, or
    #         leave them unaggregated. </p>
    #   @return [String]
    # @!attribute target_file_size
    #   <p>The desired file size, in MB, for each output file that Amazon AppFlow writes to the
    #         flow destination. For each file, Amazon AppFlow attempts to achieve the size that you
    #         specify. The actual file sizes might differ from this target based on the number and size of
    #         the records that each file contains.</p>
    #   @return [Integer]
    class AggregationConfig < Struct.new(
      :aggregation_type,
      :target_file_size,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AggregationType
      NONE = 'None'
      SINGLE_FILE = 'SingleFile'
    end

    module AmplitudeConnectorOperator
      BETWEEN = 'BETWEEN'
    end

    # <p> The connector-specific credentials required when using Amplitude. </p>
    # @!attribute api_key
    #   <p> A unique alphanumeric identifier used to authenticate a user, developer, or calling
    #         program to your API. </p>
    #   @return [String]
    # @!attribute secret_key
    #   <p> The Secret Access Key portion of the credentials. </p>
    #   @return [String]
    class AmplitudeConnectorProfileCredentials < Struct.new(
      :api_key,
      :secret_key,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector-specific profile properties required when using Amplitude. </p>
    class AmplitudeConnectorProfileProperties < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector metadata specific to Amplitude. </p>
    class AmplitudeMetadata < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The properties that are applied when Amplitude is being used as a source. </p>
    # @!attribute object
    #   <p> The object specified in the Amplitude flow source. </p>
    #   @return [String]
    class AmplitudeSourceProperties < Struct.new(
      :object,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The API key credentials required for API key authentication.</p>
    # @!attribute api_key
    #   <p>The API key required for API key authentication.</p>
    #   @return [String]
    # @!attribute api_secret_key
    #   <p>The API secret key required for API key authentication.</p>
    #   @return [String]
    class ApiKeyCredentials < Struct.new(
      :api_key,
      :api_secret_key,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about required authentication parameters.</p>
    # @!attribute key
    #   <p>The authentication key required to authenticate with the connector.</p>
    #   @return [String]
    # @!attribute is_required
    #   <p>Indicates whether this authentication parameter is required.</p>
    #   @return [Boolean]
    # @!attribute label
    #   <p>Label used for authentication parameter.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description about the authentication parameter.</p>
    #   @return [String]
    # @!attribute is_sensitive_field
    #   <p>Indicates whether this authentication parameter is a sensitive field.</p>
    #   @return [Boolean]
    # @!attribute connector_supplied_values
    #   <p>Contains default values for this authentication parameter that are supplied by the
    #         connector.</p>
    #   @return [Array<String>]
    class AuthParameter < Struct.new(
      :key,
      :is_required,
      :label,
      :description,
      :is_sensitive_field,
      :connector_supplied_values,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_required] = false unless options.key?(:is_required)
        options[:is_sensitive_field] = false unless options.key?(:is_sensitive_field)
        super
      end
    end

    # <p>Contains information about the authentication config that the connector supports.</p>
    # @!attribute is_basic_auth_supported
    #   <p>Indicates whether basic authentication is supported by the connector.</p>
    #   @return [Boolean]
    # @!attribute is_api_key_auth_supported
    #   <p>Indicates whether API key authentication is supported by the connector</p>
    #   @return [Boolean]
    # @!attribute is_o_auth2_supported
    #   <p>Indicates whether OAuth 2.0 authentication is supported by the connector.</p>
    #   @return [Boolean]
    # @!attribute is_custom_auth_supported
    #   <p>Indicates whether custom authentication is supported by the connector</p>
    #   @return [Boolean]
    # @!attribute o_auth2_defaults
    #   <p>Contains the default values required for OAuth 2.0 authentication.</p>
    #   @return [Types::OAuth2Defaults]
    # @!attribute custom_auth_configs
    #   <p>Contains information required for custom authentication.</p>
    #   @return [Array<Types::CustomAuthConfig>]
    class AuthenticationConfig < Struct.new(
      :is_basic_auth_supported,
      :is_api_key_auth_supported,
      :is_o_auth2_supported,
      :is_custom_auth_supported,
      :o_auth2_defaults,
      :custom_auth_configs,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_basic_auth_supported] = false unless options.key?(:is_basic_auth_supported)
        options[:is_api_key_auth_supported] = false unless options.key?(:is_api_key_auth_supported)
        options[:is_o_auth2_supported] = false unless options.key?(:is_o_auth2_supported)
        options[:is_custom_auth_supported] = false unless options.key?(:is_custom_auth_supported)
        super
      end
    end

    module AuthenticationType
      OAUTH2 = 'OAUTH2'
      APIKEY = 'APIKEY'
      BASIC = 'BASIC'
      CUSTOM = 'CUSTOM'
    end

    # <p> The basic auth credentials required for basic authentication. </p>
    # @!attribute username
    #   <p> The username to use to connect to a resource. </p>
    #   @return [String]
    # @!attribute password
    #   <p> The password to use to connect to a resource.</p>
    #   @return [String]
    class BasicAuthCredentials < Struct.new(
      :username,
      :password,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_name
    #   <p>The name of a flow with active runs that you want to cancel.</p>
    #   @return [String]
    # @!attribute execution_ids
    #   <p>The ID of each active run to cancel. These runs must belong to the flow you specify in
    #         your request.</p>
    #            <p>If you omit this parameter, your request ends all active runs that belong to the
    #         flow.</p>
    #   @return [Array<String>]
    class CancelFlowExecutionsRequest < Struct.new(
      :flow_name,
      :execution_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute invalid_executions
    #   <p>The IDs of runs that Amazon AppFlow couldn't cancel. These runs might be ineligible
    #         for canceling because they haven't started yet or have already completed.</p>
    #   @return [Array<String>]
    class CancelFlowExecutionsResponse < Struct.new(
      :invalid_executions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module CatalogType
      GLUE = 'GLUE'
    end

    # <p> There was a conflict when processing the request (for example, a flow with the given name
    #       already exists within the account. Check for conflicting resource names and try again. </p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ConnectionMode
      PUBLIC = 'Public'
      PRIVATE = 'Private'
    end

    # <p> An error occurred when authenticating with the connector endpoint. </p>
    # @!attribute message
    #   @return [String]
    class ConnectorAuthenticationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The configuration settings related to a given connector. </p>
    # @!attribute can_use_as_source
    #   <p> Specifies whether the connector can be used as a source. </p>
    #   @return [Boolean]
    # @!attribute can_use_as_destination
    #   <p> Specifies whether the connector can be used as a destination. </p>
    #   @return [Boolean]
    # @!attribute supported_destination_connectors
    #   <p> Lists the connectors that are available for use as destinations. </p>
    #   @return [Array<String>]
    # @!attribute supported_scheduling_frequencies
    #   <p> Specifies the supported flow frequency for that connector. </p>
    #   @return [Array<String>]
    # @!attribute is_private_link_enabled
    #   <p> Specifies if PrivateLink is enabled for that connector. </p>
    #   @return [Boolean]
    # @!attribute is_private_link_endpoint_url_required
    #   <p> Specifies if a PrivateLink endpoint URL is required. </p>
    #   @return [Boolean]
    # @!attribute supported_trigger_types
    #   <p> Specifies the supported trigger types for the flow. </p>
    #   @return [Array<String>]
    # @!attribute connector_metadata
    #   <p> Specifies connector-specific metadata such as <code>oAuthScopes</code>,
    #           <code>supportedRegions</code>, <code>privateLinkServiceUrl</code>, and so on. </p>
    #   @return [Types::ConnectorMetadata]
    # @!attribute connector_type
    #   <p>The connector type.</p>
    #   @return [String]
    # @!attribute connector_label
    #   <p>The label used for registering the connector.</p>
    #   @return [String]
    # @!attribute connector_description
    #   <p>A description about the connector.</p>
    #   @return [String]
    # @!attribute connector_owner
    #   <p>The owner who developed the connector.</p>
    #   @return [String]
    # @!attribute connector_name
    #   <p>The connector name.</p>
    #   @return [String]
    # @!attribute connector_version
    #   <p>The connector version.</p>
    #   @return [String]
    # @!attribute connector_arn
    #   <p>The Amazon Resource Name (ARN) for the registered connector.</p>
    #   @return [String]
    # @!attribute connector_modes
    #   <p>The connection modes that the connector supports.</p>
    #   @return [Array<String>]
    # @!attribute authentication_config
    #   <p>The authentication config required for the connector.</p>
    #   @return [Types::AuthenticationConfig]
    # @!attribute connector_runtime_settings
    #   <p>The required connector runtime settings.</p>
    #   @return [Array<Types::ConnectorRuntimeSetting>]
    # @!attribute supported_api_versions
    #   <p>A list of API versions that are supported by the connector.</p>
    #   @return [Array<String>]
    # @!attribute supported_operators
    #   <p>A list of operators supported by the connector.</p>
    #   @return [Array<String>]
    # @!attribute supported_write_operations
    #   <p>A list of write operations supported by the connector.</p>
    #   @return [Array<String>]
    # @!attribute connector_provisioning_type
    #   <p>The provisioning type used to register the connector.</p>
    #   @return [String]
    # @!attribute connector_provisioning_config
    #   <p>The configuration required for registering the connector.</p>
    #   @return [Types::ConnectorProvisioningConfig]
    # @!attribute logo_url
    #   <p>Logo URL of the connector.</p>
    #   @return [String]
    # @!attribute registered_at
    #   <p>The date on which the connector was registered.</p>
    #   @return [Time]
    # @!attribute registered_by
    #   <p>Information about who registered the connector.</p>
    #   @return [String]
    # @!attribute supported_data_transfer_types
    #   <p>The data transfer types that the connector supports.</p>
    #            <dl>
    #               <dt>RECORD</dt>
    #               <dd>
    #                  <p>Structured records.</p>
    #               </dd>
    #               <dt>FILE</dt>
    #               <dd>
    #                  <p>Files or binary data.</p>
    #               </dd>
    #            </dl>
    #   @return [Array<String>]
    # @!attribute supported_data_transfer_apis
    #   <p>The APIs of the connector application that Amazon AppFlow can use to transfer your
    #         data.</p>
    #   @return [Array<Types::DataTransferApi>]
    class ConnectorConfiguration < Struct.new(
      :can_use_as_source,
      :can_use_as_destination,
      :supported_destination_connectors,
      :supported_scheduling_frequencies,
      :is_private_link_enabled,
      :is_private_link_endpoint_url_required,
      :supported_trigger_types,
      :connector_metadata,
      :connector_type,
      :connector_label,
      :connector_description,
      :connector_owner,
      :connector_name,
      :connector_version,
      :connector_arn,
      :connector_modes,
      :authentication_config,
      :connector_runtime_settings,
      :supported_api_versions,
      :supported_operators,
      :supported_write_operations,
      :connector_provisioning_type,
      :connector_provisioning_config,
      :logo_url,
      :registered_at,
      :registered_by,
      :supported_data_transfer_types,
      :supported_data_transfer_apis,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:can_use_as_source] = false unless options.key?(:can_use_as_source)
        options[:can_use_as_destination] = false unless options.key?(:can_use_as_destination)
        options[:is_private_link_enabled] = false unless options.key?(:is_private_link_enabled)
        options[:is_private_link_endpoint_url_required] = false unless options.key?(:is_private_link_endpoint_url_required)
        super
      end
    end

    # <p>Information about the registered connector.</p>
    # @!attribute connector_description
    #   <p>A description about the registered connector.</p>
    #   @return [String]
    # @!attribute connector_name
    #   <p>The name of the connector.</p>
    #   @return [String]
    # @!attribute connector_owner
    #   <p>The owner of the connector.</p>
    #   @return [String]
    # @!attribute connector_version
    #   <p>The connector version.</p>
    #   @return [String]
    # @!attribute application_type
    #   <p>The application type of the connector.</p>
    #   @return [String]
    # @!attribute connector_type
    #   <p>The connector type.</p>
    #   @return [String]
    # @!attribute connector_label
    #   <p>A label used for the connector.</p>
    #   @return [String]
    # @!attribute registered_at
    #   <p>The time at which the connector was registered.</p>
    #   @return [Time]
    # @!attribute registered_by
    #   <p>The user who registered the connector.</p>
    #   @return [String]
    # @!attribute connector_provisioning_type
    #   <p>The provisioning type that the connector uses.</p>
    #   @return [String]
    # @!attribute connector_modes
    #   <p>The connection mode that the connector supports.</p>
    #   @return [Array<String>]
    # @!attribute supported_data_transfer_types
    #   <p>The data transfer types that the connector supports.</p>
    #            <dl>
    #               <dt>RECORD</dt>
    #               <dd>
    #                  <p>Structured records.</p>
    #               </dd>
    #               <dt>FILE</dt>
    #               <dd>
    #                  <p>Files or binary data.</p>
    #               </dd>
    #            </dl>
    #   @return [Array<String>]
    class ConnectorDetail < Struct.new(
      :connector_description,
      :connector_name,
      :connector_owner,
      :connector_version,
      :application_type,
      :connector_type,
      :connector_label,
      :registered_at,
      :registered_by,
      :connector_provisioning_type,
      :connector_modes,
      :supported_data_transfer_types,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The high-level entity that can be queried in Amazon AppFlow. For example, a
    #       Salesforce entity might be an <i>Account</i> or
    #       <i>Opportunity</i>, whereas a ServiceNow entity might be an
    #         <i>Incident</i>. </p>
    # @!attribute name
    #   <p> The name of the connector entity. </p>
    #   @return [String]
    # @!attribute label
    #   <p> The label applied to the connector entity. </p>
    #   @return [String]
    # @!attribute has_nested_entities
    #   <p> Specifies whether the connector entity is a parent or a category and has more entities
    #         nested underneath it. If another call is made with <code>entitiesPath =
    #           "the_current_entity_name_with_hasNestedEntities_true"</code>, then it returns the nested
    #         entities underneath it. This provides a way to retrieve all supported entities in a recursive
    #         fashion. </p>
    #   @return [Boolean]
    class ConnectorEntity < Struct.new(
      :name,
      :label,
      :has_nested_entities,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:has_nested_entities] = false unless options.key?(:has_nested_entities)
        super
      end
    end

    # <p> Describes the data model of a connector field. For example, for an
    #         <i>account</i> entity, the fields would be <i>account name</i>,
    #         <i>account ID</i>, and so on. </p>
    # @!attribute identifier
    #   <p> The unique identifier of the connector field. </p>
    #   @return [String]
    # @!attribute parent_identifier
    #   <p>The parent identifier of the connector field.</p>
    #   @return [String]
    # @!attribute label
    #   <p> The label applied to a connector entity field. </p>
    #   @return [String]
    # @!attribute is_primary_key
    #   <p>Booelan value that indicates whether this field can be used as a primary key.</p>
    #   @return [Boolean]
    # @!attribute default_value
    #   <p>Default value that can be assigned to this field.</p>
    #   @return [String]
    # @!attribute is_deprecated
    #   <p>Booelan value that indicates whether this field is deprecated or not.</p>
    #   @return [Boolean]
    # @!attribute supported_field_type_details
    #   <p> Contains details regarding the supported <code>FieldType</code>, including the
    #         corresponding <code>filterOperators</code> and <code>supportedValues</code>. </p>
    #   @return [Types::SupportedFieldTypeDetails]
    # @!attribute description
    #   <p> A description of the connector entity field. </p>
    #   @return [String]
    # @!attribute source_properties
    #   <p> The properties that can be applied to a field when the connector is being used as a
    #         source. </p>
    #   @return [Types::SourceFieldProperties]
    # @!attribute destination_properties
    #   <p> The properties applied to a field when the connector is being used as a destination.
    #       </p>
    #   @return [Types::DestinationFieldProperties]
    # @!attribute custom_properties
    #   <p>A map that has specific properties related to the ConnectorEntityField.</p>
    #   @return [Hash<String, String>]
    class ConnectorEntityField < Struct.new(
      :identifier,
      :parent_identifier,
      :label,
      :is_primary_key,
      :default_value,
      :is_deprecated,
      :supported_field_type_details,
      :description,
      :source_properties,
      :destination_properties,
      :custom_properties,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_primary_key] = false unless options.key?(:is_primary_key)
        options[:is_deprecated] = false unless options.key?(:is_deprecated)
        super
      end
    end

    # <p> A structure to specify connector-specific metadata such as <code>oAuthScopes</code>,
    #         <code>supportedRegions</code>, <code>privateLinkServiceUrl</code>, and so on. </p>
    # @!attribute amplitude
    #   <p> The connector metadata specific to Amplitude. </p>
    #   @return [Types::AmplitudeMetadata]
    # @!attribute datadog
    #   <p> The connector metadata specific to Datadog. </p>
    #   @return [Types::DatadogMetadata]
    # @!attribute dynatrace
    #   <p> The connector metadata specific to Dynatrace. </p>
    #   @return [Types::DynatraceMetadata]
    # @!attribute google_analytics
    #   <p> The connector metadata specific to Google Analytics. </p>
    #   @return [Types::GoogleAnalyticsMetadata]
    # @!attribute infor_nexus
    #   <p> The connector metadata specific to Infor Nexus. </p>
    #   @return [Types::InforNexusMetadata]
    # @!attribute marketo
    #   <p> The connector metadata specific to Marketo. </p>
    #   @return [Types::MarketoMetadata]
    # @!attribute redshift
    #   <p> The connector metadata specific to Amazon Redshift. </p>
    #   @return [Types::RedshiftMetadata]
    # @!attribute s3
    #   <p> The connector metadata specific to Amazon S3. </p>
    #   @return [Types::S3Metadata]
    # @!attribute salesforce
    #   <p> The connector metadata specific to Salesforce. </p>
    #   @return [Types::SalesforceMetadata]
    # @!attribute service_now
    #   <p> The connector metadata specific to ServiceNow. </p>
    #   @return [Types::ServiceNowMetadata]
    # @!attribute singular
    #   <p> The connector metadata specific to Singular. </p>
    #   @return [Types::SingularMetadata]
    # @!attribute slack
    #   <p> The connector metadata specific to Slack. </p>
    #   @return [Types::SlackMetadata]
    # @!attribute snowflake
    #   <p> The connector metadata specific to Snowflake. </p>
    #   @return [Types::SnowflakeMetadata]
    # @!attribute trendmicro
    #   <p> The connector metadata specific to Trend Micro. </p>
    #   @return [Types::TrendmicroMetadata]
    # @!attribute veeva
    #   <p> The connector metadata specific to Veeva. </p>
    #   @return [Types::VeevaMetadata]
    # @!attribute zendesk
    #   <p> The connector metadata specific to Zendesk. </p>
    #   @return [Types::ZendeskMetadata]
    # @!attribute event_bridge
    #   <p> The connector metadata specific to Amazon EventBridge. </p>
    #   @return [Types::EventBridgeMetadata]
    # @!attribute upsolver
    #   <p> The connector metadata specific to Upsolver. </p>
    #   @return [Types::UpsolverMetadata]
    # @!attribute customer_profiles
    #   <p> The connector metadata specific to Amazon Connect Customer Profiles. </p>
    #   @return [Types::CustomerProfilesMetadata]
    # @!attribute honeycode
    #   <p> The connector metadata specific to Amazon Honeycode. </p>
    #   @return [Types::HoneycodeMetadata]
    # @!attribute sapo_data
    #   <p> The connector metadata specific to SAPOData. </p>
    #   @return [Types::SAPODataMetadata]
    # @!attribute pardot
    #   <p>The connector metadata specific to Salesforce Pardot.</p>
    #   @return [Types::PardotMetadata]
    class ConnectorMetadata < Struct.new(
      :amplitude,
      :datadog,
      :dynatrace,
      :google_analytics,
      :infor_nexus,
      :marketo,
      :redshift,
      :s3,
      :salesforce,
      :service_now,
      :singular,
      :slack,
      :snowflake,
      :trendmicro,
      :veeva,
      :zendesk,
      :event_bridge,
      :upsolver,
      :customer_profiles,
      :honeycode,
      :sapo_data,
      :pardot,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Used by select connectors for which the OAuth workflow is supported, such as Salesforce,
    #       Google Analytics, Marketo, Zendesk, and Slack. </p>
    # @!attribute auth_code
    #   <p> The code provided by the connector when it has been authenticated via the connected app.
    #       </p>
    #   @return [String]
    # @!attribute redirect_uri
    #   <p> The URL to which the authentication server redirects the browser after authorization has
    #         been granted. </p>
    #   @return [String]
    class ConnectorOAuthRequest < Struct.new(
      :auth_code,
      :redirect_uri,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The operation to be performed on the provided source fields. </p>
    # @!attribute amplitude
    #   <p> The operation to be performed on the provided Amplitude source fields. </p>
    #   @return [String]
    # @!attribute datadog
    #   <p> The operation to be performed on the provided Datadog source fields. </p>
    #   @return [String]
    # @!attribute dynatrace
    #   <p> The operation to be performed on the provided Dynatrace source fields. </p>
    #   @return [String]
    # @!attribute google_analytics
    #   <p> The operation to be performed on the provided Google Analytics source fields. </p>
    #   @return [String]
    # @!attribute infor_nexus
    #   <p> The operation to be performed on the provided Infor Nexus source fields. </p>
    #   @return [String]
    # @!attribute marketo
    #   <p> The operation to be performed on the provided Marketo source fields. </p>
    #   @return [String]
    # @!attribute s3
    #   <p> The operation to be performed on the provided Amazon S3 source fields. </p>
    #   @return [String]
    # @!attribute salesforce
    #   <p> The operation to be performed on the provided Salesforce source fields. </p>
    #   @return [String]
    # @!attribute service_now
    #   <p> The operation to be performed on the provided ServiceNow source fields. </p>
    #   @return [String]
    # @!attribute singular
    #   <p> The operation to be performed on the provided Singular source fields. </p>
    #   @return [String]
    # @!attribute slack
    #   <p> The operation to be performed on the provided Slack source fields. </p>
    #   @return [String]
    # @!attribute trendmicro
    #   <p> The operation to be performed on the provided Trend Micro source fields. </p>
    #   @return [String]
    # @!attribute veeva
    #   <p> The operation to be performed on the provided Veeva source fields. </p>
    #   @return [String]
    # @!attribute zendesk
    #   <p> The operation to be performed on the provided Zendesk source fields. </p>
    #   @return [String]
    # @!attribute sapo_data
    #   <p> The operation to be performed on the provided SAPOData source fields. </p>
    #   @return [String]
    # @!attribute custom_connector
    #   <p>Operators supported by the custom connector.</p>
    #   @return [String]
    # @!attribute pardot
    #   <p>The operation to be performed on the provided Salesforce Pardot source fields.</p>
    #   @return [String]
    class ConnectorOperator < Struct.new(
      :amplitude,
      :datadog,
      :dynatrace,
      :google_analytics,
      :infor_nexus,
      :marketo,
      :s3,
      :salesforce,
      :service_now,
      :singular,
      :slack,
      :trendmicro,
      :veeva,
      :zendesk,
      :sapo_data,
      :custom_connector,
      :pardot,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Describes an instance of a connector. This includes the provided name, credentials ARN,
    #       connection-mode, and so on. To keep the API intuitive and extensible, the fields that are
    #       common to all types of connector profiles are explicitly specified at the top level. The rest
    #       of the connector-specific properties are available via the
    #         <code>connectorProfileProperties</code> field. </p>
    # @!attribute connector_profile_arn
    #   <p> The Amazon Resource Name (ARN) of the connector profile. </p>
    #   @return [String]
    # @!attribute connector_profile_name
    #   <p> The name of the connector profile. The name is unique for each
    #           <code>ConnectorProfile</code> in the Amazon Web Services account. </p>
    #   @return [String]
    # @!attribute connector_type
    #   <p> The type of connector, such as Salesforce, Amplitude, and so on. </p>
    #   @return [String]
    # @!attribute connector_label
    #   <p>The label for the connector profile being created.</p>
    #   @return [String]
    # @!attribute connection_mode
    #   <p> Indicates the connection mode and if it is public or private. </p>
    #   @return [String]
    # @!attribute credentials_arn
    #   <p> The Amazon Resource Name (ARN) of the connector profile credentials. </p>
    #   @return [String]
    # @!attribute connector_profile_properties
    #   <p> The connector-specific properties of the profile configuration. </p>
    #   @return [Types::ConnectorProfileProperties]
    # @!attribute created_at
    #   <p> Specifies when the connector profile was created. </p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p> Specifies when the connector profile was last updated. </p>
    #   @return [Time]
    # @!attribute private_connection_provisioning_state
    #   <p> Specifies the private connection provisioning state. </p>
    #   @return [Types::PrivateConnectionProvisioningState]
    class ConnectorProfile < Struct.new(
      :connector_profile_arn,
      :connector_profile_name,
      :connector_type,
      :connector_label,
      :connection_mode,
      :credentials_arn,
      :connector_profile_properties,
      :created_at,
      :last_updated_at,
      :private_connection_provisioning_state,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Defines the connector-specific configuration and credentials for the connector profile.
    #     </p>
    # @!attribute connector_profile_properties
    #   <p> The connector-specific properties of the profile configuration. </p>
    #   @return [Types::ConnectorProfileProperties]
    # @!attribute connector_profile_credentials
    #   <p> The connector-specific credentials required by each connector. </p>
    #   @return [Types::ConnectorProfileCredentials]
    class ConnectorProfileConfig < Struct.new(
      :connector_profile_properties,
      :connector_profile_credentials,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector-specific credentials required by a connector. </p>
    # @!attribute amplitude
    #   <p> The connector-specific credentials required when using Amplitude. </p>
    #   @return [Types::AmplitudeConnectorProfileCredentials]
    # @!attribute datadog
    #   <p> The connector-specific credentials required when using Datadog. </p>
    #   @return [Types::DatadogConnectorProfileCredentials]
    # @!attribute dynatrace
    #   <p> The connector-specific credentials required when using Dynatrace. </p>
    #   @return [Types::DynatraceConnectorProfileCredentials]
    # @!attribute google_analytics
    #   <p> The connector-specific credentials required when using Google Analytics. </p>
    #   @return [Types::GoogleAnalyticsConnectorProfileCredentials]
    # @!attribute honeycode
    #   <p> The connector-specific credentials required when using Amazon Honeycode. </p>
    #   @return [Types::HoneycodeConnectorProfileCredentials]
    # @!attribute infor_nexus
    #   <p> The connector-specific credentials required when using Infor Nexus. </p>
    #   @return [Types::InforNexusConnectorProfileCredentials]
    # @!attribute marketo
    #   <p> The connector-specific credentials required when using Marketo. </p>
    #   @return [Types::MarketoConnectorProfileCredentials]
    # @!attribute redshift
    #   <p> The connector-specific credentials required when using Amazon Redshift. </p>
    #   @return [Types::RedshiftConnectorProfileCredentials]
    # @!attribute salesforce
    #   <p> The connector-specific credentials required when using Salesforce. </p>
    #   @return [Types::SalesforceConnectorProfileCredentials]
    # @!attribute service_now
    #   <p> The connector-specific credentials required when using ServiceNow. </p>
    #   @return [Types::ServiceNowConnectorProfileCredentials]
    # @!attribute singular
    #   <p> The connector-specific credentials required when using Singular. </p>
    #   @return [Types::SingularConnectorProfileCredentials]
    # @!attribute slack
    #   <p> The connector-specific credentials required when using Slack. </p>
    #   @return [Types::SlackConnectorProfileCredentials]
    # @!attribute snowflake
    #   <p> The connector-specific credentials required when using Snowflake. </p>
    #   @return [Types::SnowflakeConnectorProfileCredentials]
    # @!attribute trendmicro
    #   <p> The connector-specific credentials required when using Trend Micro. </p>
    #   @return [Types::TrendmicroConnectorProfileCredentials]
    # @!attribute veeva
    #   <p> The connector-specific credentials required when using Veeva. </p>
    #   @return [Types::VeevaConnectorProfileCredentials]
    # @!attribute zendesk
    #   <p> The connector-specific credentials required when using Zendesk. </p>
    #   @return [Types::ZendeskConnectorProfileCredentials]
    # @!attribute sapo_data
    #   <p> The connector-specific profile credentials required when using SAPOData. </p>
    #   @return [Types::SAPODataConnectorProfileCredentials]
    # @!attribute custom_connector
    #   <p>The connector-specific profile credentials that are required when using the custom
    #         connector.</p>
    #   @return [Types::CustomConnectorProfileCredentials]
    # @!attribute pardot
    #   <p>The connector-specific credentials required when using Salesforce Pardot.</p>
    #   @return [Types::PardotConnectorProfileCredentials]
    class ConnectorProfileCredentials < Struct.new(
      :amplitude,
      :datadog,
      :dynatrace,
      :google_analytics,
      :honeycode,
      :infor_nexus,
      :marketo,
      :redshift,
      :salesforce,
      :service_now,
      :singular,
      :slack,
      :snowflake,
      :trendmicro,
      :veeva,
      :zendesk,
      :sapo_data,
      :custom_connector,
      :pardot,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector-specific profile properties required by each connector. </p>
    # @!attribute amplitude
    #   <p> The connector-specific properties required by Amplitude. </p>
    #   @return [Types::AmplitudeConnectorProfileProperties]
    # @!attribute datadog
    #   <p> The connector-specific properties required by Datadog. </p>
    #   @return [Types::DatadogConnectorProfileProperties]
    # @!attribute dynatrace
    #   <p> The connector-specific properties required by Dynatrace. </p>
    #   @return [Types::DynatraceConnectorProfileProperties]
    # @!attribute google_analytics
    #   <p> The connector-specific properties required Google Analytics. </p>
    #   @return [Types::GoogleAnalyticsConnectorProfileProperties]
    # @!attribute honeycode
    #   <p> The connector-specific properties required by Amazon Honeycode. </p>
    #   @return [Types::HoneycodeConnectorProfileProperties]
    # @!attribute infor_nexus
    #   <p> The connector-specific properties required by Infor Nexus. </p>
    #   @return [Types::InforNexusConnectorProfileProperties]
    # @!attribute marketo
    #   <p> The connector-specific properties required by Marketo. </p>
    #   @return [Types::MarketoConnectorProfileProperties]
    # @!attribute redshift
    #   <p> The connector-specific properties required by Amazon Redshift. </p>
    #   @return [Types::RedshiftConnectorProfileProperties]
    # @!attribute salesforce
    #   <p> The connector-specific properties required by Salesforce. </p>
    #   @return [Types::SalesforceConnectorProfileProperties]
    # @!attribute service_now
    #   <p> The connector-specific properties required by serviceNow. </p>
    #   @return [Types::ServiceNowConnectorProfileProperties]
    # @!attribute singular
    #   <p> The connector-specific properties required by Singular. </p>
    #   @return [Types::SingularConnectorProfileProperties]
    # @!attribute slack
    #   <p> The connector-specific properties required by Slack. </p>
    #   @return [Types::SlackConnectorProfileProperties]
    # @!attribute snowflake
    #   <p> The connector-specific properties required by Snowflake. </p>
    #   @return [Types::SnowflakeConnectorProfileProperties]
    # @!attribute trendmicro
    #   <p> The connector-specific properties required by Trend Micro. </p>
    #   @return [Types::TrendmicroConnectorProfileProperties]
    # @!attribute veeva
    #   <p> The connector-specific properties required by Veeva. </p>
    #   @return [Types::VeevaConnectorProfileProperties]
    # @!attribute zendesk
    #   <p> The connector-specific properties required by Zendesk. </p>
    #   @return [Types::ZendeskConnectorProfileProperties]
    # @!attribute sapo_data
    #   <p> The connector-specific profile properties required when using SAPOData. </p>
    #   @return [Types::SAPODataConnectorProfileProperties]
    # @!attribute custom_connector
    #   <p>The properties required by the custom connector.</p>
    #   @return [Types::CustomConnectorProfileProperties]
    # @!attribute pardot
    #   <p>The connector-specific properties required by Salesforce Pardot.</p>
    #   @return [Types::PardotConnectorProfileProperties]
    class ConnectorProfileProperties < Struct.new(
      :amplitude,
      :datadog,
      :dynatrace,
      :google_analytics,
      :honeycode,
      :infor_nexus,
      :marketo,
      :redshift,
      :salesforce,
      :service_now,
      :singular,
      :slack,
      :snowflake,
      :trendmicro,
      :veeva,
      :zendesk,
      :sapo_data,
      :custom_connector,
      :pardot,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about the configuration of the connector being registered.</p>
    # @!attribute lambda
    #   <p>Contains information about the configuration of the lambda which is being registered as
    #         the connector.</p>
    #   @return [Types::LambdaConnectorProvisioningConfig]
    class ConnectorProvisioningConfig < Struct.new(
      :lambda,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The type of provisioning that the connector supports, such as Lambda.</p>
    module ConnectorProvisioningType
      LAMBDA = 'LAMBDA'
    end

    # <p>Contains information about the connector runtime settings that are required for flow
    #       execution.</p>
    # @!attribute key
    #   <p>Contains value information about the connector runtime setting.</p>
    #   @return [String]
    # @!attribute data_type
    #   <p>Data type of the connector runtime setting.</p>
    #   @return [String]
    # @!attribute is_required
    #   <p>Indicates whether this connector runtime setting is required.</p>
    #   @return [Boolean]
    # @!attribute label
    #   <p>A label used for connector runtime setting.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description about the connector runtime setting.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>Indicates the scope of the connector runtime setting.</p>
    #   @return [String]
    # @!attribute connector_supplied_value_options
    #   <p>Contains default values for the connector runtime setting that are supplied by the
    #         connector.</p>
    #   @return [Array<String>]
    class ConnectorRuntimeSetting < Struct.new(
      :key,
      :data_type,
      :is_required,
      :label,
      :description,
      :scope,
      :connector_supplied_value_options,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_required] = false unless options.key?(:is_required)
        super
      end
    end

    # <p> An error occurred when retrieving data from the connector endpoint. </p>
    # @!attribute message
    #   @return [String]
    class ConnectorServerException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ConnectorType
      SALESFORCE = 'Salesforce'
      SINGULAR = 'Singular'
      SLACK = 'Slack'
      REDSHIFT = 'Redshift'
      S3 = 'S3'
      MARKETO = 'Marketo'
      GOOGLEANALYTICS = 'Googleanalytics'
      ZENDESK = 'Zendesk'
      SERVICENOW = 'Servicenow'
      DATADOG = 'Datadog'
      TRENDMICRO = 'Trendmicro'
      SNOWFLAKE = 'Snowflake'
      DYNATRACE = 'Dynatrace'
      INFORNEXUS = 'Infornexus'
      AMPLITUDE = 'Amplitude'
      VEEVA = 'Veeva'
      EVENTBRIDGE = 'EventBridge'
      LOOKOUTMETRICS = 'LookoutMetrics'
      UPSOLVER = 'Upsolver'
      HONEYCODE = 'Honeycode'
      CUSTOMERPROFILES = 'CustomerProfiles'
      SAPODATA = 'SAPOData'
      CUSTOMCONNECTOR = 'CustomConnector'
      PARDOT = 'Pardot'
    end

    # @!attribute connector_profile_name
    #   <p> The name of the connector profile. The name is unique for each
    #           <code>ConnectorProfile</code> in your Amazon Web Services account. </p>
    #   @return [String]
    # @!attribute kms_arn
    #   <p> The ARN (Amazon Resource Name) of the Key Management Service (KMS) key you provide for
    #         encryption. This is required if you do not want to use the Amazon AppFlow-managed KMS
    #         key. If you don't provide anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS key. </p>
    #   @return [String]
    # @!attribute connector_type
    #   <p> The type of connector, such as Salesforce, Amplitude, and so on. </p>
    #   @return [String]
    # @!attribute connector_label
    #   <p>The label of the connector. The label is unique for each
    #           <code>ConnectorRegistration</code> in your Amazon Web Services account. Only needed if
    #         calling for CUSTOMCONNECTOR connector type/.</p>
    #   @return [String]
    # @!attribute connection_mode
    #   <p> Indicates the connection mode and specifies whether it is public or private. Private
    #         flows use Amazon Web Services PrivateLink to route data over Amazon Web Services infrastructure
    #         without exposing it to the public internet. </p>
    #   @return [String]
    # @!attribute connector_profile_config
    #   <p> Defines the connector-specific configuration and credentials. </p>
    #   @return [Types::ConnectorProfileConfig]
    # @!attribute client_token
    #   <p>The <code>clientToken</code> parameter is an idempotency token. It ensures that your
    #           <code>CreateConnectorProfile</code> request completes only once. You choose the value to
    #         pass. For example, if you don't receive a response from your request, you can safely retry the
    #         request with the same <code>clientToken</code> parameter value.</p>
    #            <p>If you omit a <code>clientToken</code> value, the Amazon Web Services SDK that you are
    #         using inserts a value for you. This way, the SDK can safely retry requests multiple times
    #         after a network error. You must provide your own value for other use cases.</p>
    #            <p>If you specify input parameters that differ from your first request, an error occurs. If
    #         you use a different value for <code>clientToken</code>, Amazon AppFlow considers it a new
    #         call to <code>CreateConnectorProfile</code>. The token is active for 8 hours.</p>
    #   @return [String]
    class CreateConnectorProfileRequest < Struct.new(
      :connector_profile_name,
      :kms_arn,
      :connector_type,
      :connector_label,
      :connection_mode,
      :connector_profile_config,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_profile_arn
    #   <p> The Amazon Resource Name (ARN) of the connector profile. </p>
    #   @return [String]
    class CreateConnectorProfileResponse < Struct.new(
      :connector_profile_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_name
    #   <p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens
    #         (-) only. </p>
    #   @return [String]
    # @!attribute description
    #   <p> A description of the flow you want to create. </p>
    #   @return [String]
    # @!attribute kms_arn
    #   <p> The ARN (Amazon Resource Name) of the Key Management Service (KMS) key you provide for
    #         encryption. This is required if you do not want to use the Amazon AppFlow-managed KMS
    #         key. If you don't provide anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS key. </p>
    #   @return [String]
    # @!attribute trigger_config
    #   <p> The trigger settings that determine how and when the flow runs. </p>
    #   @return [Types::TriggerConfig]
    # @!attribute source_flow_config
    #   <p> The configuration that controls how Amazon AppFlow retrieves data from the source
    #         connector. </p>
    #   @return [Types::SourceFlowConfig]
    # @!attribute destination_flow_config_list
    #   <p> The configuration that controls how Amazon AppFlow places data in the destination
    #         connector. </p>
    #   @return [Array<Types::DestinationFlowConfig>]
    # @!attribute tasks
    #   <p> A list of tasks that Amazon AppFlow performs while transferring the data in the flow
    #         run. </p>
    #   @return [Array<Types::Task>]
    # @!attribute tags
    #   <p> The tags used to organize, track, or control access for your flow. </p>
    #   @return [Hash<String, String>]
    # @!attribute metadata_catalog_config
    #   <p>Specifies the configuration that Amazon AppFlow uses when it catalogs the data that's
    #         transferred by the associated flow. When Amazon AppFlow catalogs the data from a flow, it
    #         stores metadata in a data catalog.</p>
    #   @return [Types::MetadataCatalogConfig]
    # @!attribute client_token
    #   <p>The <code>clientToken</code> parameter is an idempotency token. It ensures that your
    #           <code>CreateFlow</code> request completes only once. You choose the value to pass. For
    #         example, if you don't receive a response from your request, you can safely retry the request
    #         with the same <code>clientToken</code> parameter value.</p>
    #            <p>If you omit a <code>clientToken</code> value, the Amazon Web Services SDK that you are
    #         using inserts a value for you. This way, the SDK can safely retry requests multiple times
    #         after a network error. You must provide your own value for other use cases.</p>
    #            <p>If you specify input parameters that differ from your first request, an error occurs. If
    #         you use a different value for <code>clientToken</code>, Amazon AppFlow considers it a new
    #         call to <code>CreateFlow</code>. The token is active for 8 hours.</p>
    #   @return [String]
    class CreateFlowRequest < Struct.new(
      :flow_name,
      :description,
      :kms_arn,
      :trigger_config,
      :source_flow_config,
      :destination_flow_config_list,
      :tasks,
      :tags,
      :metadata_catalog_config,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The flow's Amazon Resource Name (ARN). </p>
    #   @return [String]
    # @!attribute flow_status
    #   <p> Indicates the current status of the flow. </p>
    #   @return [String]
    class CreateFlowResponse < Struct.new(
      :flow_arn,
      :flow_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration information required for custom authentication.</p>
    # @!attribute custom_authentication_type
    #   <p>The authentication type that the custom connector uses.</p>
    #   @return [String]
    # @!attribute auth_parameters
    #   <p>Information about authentication parameters required for authentication.</p>
    #   @return [Array<Types::AuthParameter>]
    class CustomAuthConfig < Struct.new(
      :custom_authentication_type,
      :auth_parameters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The custom credentials required for custom authentication.</p>
    # @!attribute custom_authentication_type
    #   <p>The custom authentication type that the connector uses.</p>
    #   @return [String]
    # @!attribute credentials_map
    #   <p>A map that holds custom authentication credentials.</p>
    #   @return [Hash<String, String>]
    class CustomAuthCredentials < Struct.new(
      :custom_authentication_type,
      :credentials_map,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The properties that are applied when the custom connector is being used as a
    #       destination.</p>
    # @!attribute entity_name
    #   <p>The entity specified in the custom connector as a destination in the flow.</p>
    #   @return [String]
    # @!attribute error_handling_config
    #   <p>The settings that determine how Amazon AppFlow handles an error when placing data in
    #         the custom connector as destination.</p>
    #   @return [Types::ErrorHandlingConfig]
    # @!attribute write_operation_type
    #   <p>Specifies the type of write operation to be performed in the custom connector when it's
    #         used as destination.</p>
    #   @return [String]
    # @!attribute id_field_names
    #   <p>The name of the field that Amazon AppFlow uses as an ID when performing a write
    #         operation such as update, delete, or upsert.</p>
    #   @return [Array<String>]
    # @!attribute custom_properties
    #   <p>The custom properties that are specific to the connector when it's used as a destination
    #         in the flow.</p>
    #   @return [Hash<String, String>]
    class CustomConnectorDestinationProperties < Struct.new(
      :entity_name,
      :error_handling_config,
      :write_operation_type,
      :id_field_names,
      :custom_properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The connector-specific profile credentials that are required when using the custom
    #       connector.</p>
    # @!attribute authentication_type
    #   <p>The authentication type that the custom connector uses for authenticating while creating a
    #         connector profile.</p>
    #   @return [String]
    # @!attribute basic
    #   <p>The basic credentials that are required for the authentication of the user.</p>
    #   @return [Types::BasicAuthCredentials]
    # @!attribute oauth2
    #   <p>The OAuth 2.0 credentials required for the authentication of the user.</p>
    #   @return [Types::OAuth2Credentials]
    # @!attribute api_key
    #   <p>The API keys required for the authentication of the user.</p>
    #   @return [Types::ApiKeyCredentials]
    # @!attribute custom
    #   <p>If the connector uses the custom authentication mechanism, this holds the required
    #         credentials.</p>
    #   @return [Types::CustomAuthCredentials]
    class CustomConnectorProfileCredentials < Struct.new(
      :authentication_type,
      :basic,
      :oauth2,
      :api_key,
      :custom,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The profile properties required by the custom connector.</p>
    # @!attribute profile_properties
    #   <p>A map of properties that are required to create a profile for the custom connector.</p>
    #   @return [Hash<String, String>]
    # @!attribute o_auth2_properties
    #   <p>The OAuth 2.0 properties required for OAuth 2.0 authentication.</p>
    #   @return [Types::OAuth2Properties]
    class CustomConnectorProfileProperties < Struct.new(
      :profile_properties,
      :o_auth2_properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The properties that are applied when the custom connector is being used as a
    #       source.</p>
    # @!attribute entity_name
    #   <p>The entity specified in the custom connector as a source in the flow.</p>
    #   @return [String]
    # @!attribute custom_properties
    #   <p>Custom properties that are required to use the custom connector as a source.</p>
    #   @return [Hash<String, String>]
    # @!attribute data_transfer_api
    #   <p>The API of the connector application that Amazon AppFlow uses to transfer your
    #         data.</p>
    #   @return [Types::DataTransferApi]
    class CustomConnectorSourceProperties < Struct.new(
      :entity_name,
      :custom_properties,
      :data_transfer_api,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The properties that are applied when Amazon Connect Customer Profiles is used as a
    #       destination. </p>
    # @!attribute domain_name
    #   <p> The unique name of the Amazon Connect Customer Profiles domain. </p>
    #   @return [String]
    # @!attribute object_type_name
    #   <p> The object specified in the Amazon Connect Customer Profiles flow destination.
    #       </p>
    #   @return [String]
    class CustomerProfilesDestinationProperties < Struct.new(
      :domain_name,
      :object_type_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector metadata specific to Amazon Connect Customer Profiles. </p>
    class CustomerProfilesMetadata < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DataPullMode
      INCREMENTAL = 'Incremental'
      COMPLETE = 'Complete'
    end

    # <p>The API of the connector application that Amazon AppFlow uses to transfer your
    #       data.</p>
    # @!attribute name
    #   <p>The name of the connector application API.</p>
    #   @return [String]
    # @!attribute type
    #   <p>You can specify one of the following types:</p>
    #            <dl>
    #               <dt>AUTOMATIC</dt>
    #               <dd>
    #                  <p>The default. Optimizes a flow for datasets that fluctuate in size from small to
    #               large. For each flow run, Amazon AppFlow chooses to use the SYNC or ASYNC API type
    #               based on the amount of data that the run transfers.</p>
    #               </dd>
    #               <dt>SYNC</dt>
    #               <dd>
    #                  <p>A synchronous API. This type of API optimizes a flow for small to medium-sized
    #               datasets.</p>
    #               </dd>
    #               <dt>ASYNC</dt>
    #               <dd>
    #                  <p>An asynchronous API. This type of API optimizes a flow for large datasets.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    class DataTransferApi < Struct.new(
      :name,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DataTransferApiType
      SYNC = 'SYNC'
      ASYNC = 'ASYNC'
      AUTOMATIC = 'AUTOMATIC'
    end

    module DatadogConnectorOperator
      PROJECTION = 'PROJECTION'
      BETWEEN = 'BETWEEN'
      EQUAL_TO = 'EQUAL_TO'
      ADDITION = 'ADDITION'
      MULTIPLICATION = 'MULTIPLICATION'
      DIVISION = 'DIVISION'
      SUBTRACTION = 'SUBTRACTION'
      MASK_ALL = 'MASK_ALL'
      MASK_FIRST_N = 'MASK_FIRST_N'
      MASK_LAST_N = 'MASK_LAST_N'
      VALIDATE_NON_NULL = 'VALIDATE_NON_NULL'
      VALIDATE_NON_ZERO = 'VALIDATE_NON_ZERO'
      VALIDATE_NON_NEGATIVE = 'VALIDATE_NON_NEGATIVE'
      VALIDATE_NUMERIC = 'VALIDATE_NUMERIC'
      NO_OP = 'NO_OP'
    end

    # <p> The connector-specific credentials required by Datadog. </p>
    # @!attribute api_key
    #   <p> A unique alphanumeric identifier used to authenticate a user, developer, or calling
    #         program to your API. </p>
    #   @return [String]
    # @!attribute application_key
    #   <p> Application keys, in conjunction with your API key, give you full access to Datadog’s
    #         programmatic API. Application keys are associated with the user account that created them. The
    #         application key is used to log all requests made to the API. </p>
    #   @return [String]
    class DatadogConnectorProfileCredentials < Struct.new(
      :api_key,
      :application_key,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector-specific profile properties required by Datadog. </p>
    # @!attribute instance_url
    #   <p> The location of the Datadog resource. </p>
    #   @return [String]
    class DatadogConnectorProfileProperties < Struct.new(
      :instance_url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector metadata specific to Datadog. </p>
    class DatadogMetadata < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The properties that are applied when Datadog is being used as a source. </p>
    # @!attribute object
    #   <p> The object specified in the Datadog flow source. </p>
    #   @return [String]
    class DatadogSourceProperties < Struct.new(
      :object,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_profile_name
    #   <p> The name of the connector profile. The name is unique for each
    #           <code>ConnectorProfile</code> in your account. </p>
    #   @return [String]
    # @!attribute force_delete
    #   <p> Indicates whether Amazon AppFlow should delete the profile, even if it is currently
    #         in use in one or more flows. </p>
    #   @return [Boolean]
    class DeleteConnectorProfileRequest < Struct.new(
      :connector_profile_name,
      :force_delete,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteConnectorProfileResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_name
    #   <p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens
    #         (-) only. </p>
    #   @return [String]
    # @!attribute force_delete
    #   <p> Indicates whether Amazon AppFlow should delete the flow, even if it is currently in
    #         use. </p>
    #   @return [Boolean]
    class DeleteFlowRequest < Struct.new(
      :flow_name,
      :force_delete,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteFlowResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_entity_name
    #   <p> The entity name for that connector. </p>
    #   @return [String]
    # @!attribute connector_type
    #   <p> The type of connector application, such as Salesforce, Amplitude, and so on. </p>
    #   @return [String]
    # @!attribute connector_profile_name
    #   <p> The name of the connector profile. The name is unique for each
    #           <code>ConnectorProfile</code> in the Amazon Web Services account. </p>
    #   @return [String]
    # @!attribute api_version
    #   <p>The version of the API that's used by the connector.</p>
    #   @return [String]
    class DescribeConnectorEntityRequest < Struct.new(
      :connector_entity_name,
      :connector_type,
      :connector_profile_name,
      :api_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_entity_fields
    #   <p> Describes the fields for that connector entity. For example, for an
    #           <i>account</i> entity, the fields would be <i>account name</i>,
    #           <i>account ID</i>, and so on. </p>
    #   @return [Array<Types::ConnectorEntityField>]
    class DescribeConnectorEntityResponse < Struct.new(
      :connector_entity_fields,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_profile_names
    #   <p> The name of the connector profile. The name is unique for each
    #           <code>ConnectorProfile</code> in the Amazon Web Services account. </p>
    #   @return [Array<String>]
    # @!attribute connector_type
    #   <p> The type of connector, such as Salesforce, Amplitude, and so on. </p>
    #   @return [String]
    # @!attribute connector_label
    #   <p>The name of the connector. The name is unique for each <code>ConnectorRegistration</code>
    #         in your Amazon Web Services account. Only needed if calling for CUSTOMCONNECTOR connector
    #         type/.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p> Specifies the maximum number of items that should be returned in the result set. The
    #         default for <code>maxResults</code> is 20 (for all paginated API operations). </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The pagination token for the next page of data. </p>
    #   @return [String]
    class DescribeConnectorProfilesRequest < Struct.new(
      :connector_profile_names,
      :connector_type,
      :connector_label,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_profile_details
    #   <p> Returns information about the connector profiles associated with the flow. </p>
    #   @return [Array<Types::ConnectorProfile>]
    # @!attribute next_token
    #   <p> The pagination token for the next page of data. If <code>nextToken=null</code>, this
    #         means that all records have been fetched. </p>
    #   @return [String]
    class DescribeConnectorProfilesResponse < Struct.new(
      :connector_profile_details,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_type
    #   <p>The connector type, such as CUSTOMCONNECTOR, Saleforce, Marketo. Please choose
    #         CUSTOMCONNECTOR for Lambda based custom connectors.</p>
    #   @return [String]
    # @!attribute connector_label
    #   <p>The label of the connector. The label is unique for each
    #           <code>ConnectorRegistration</code> in your Amazon Web Services account. Only needed if
    #         calling for CUSTOMCONNECTOR connector type/.</p>
    #   @return [String]
    class DescribeConnectorRequest < Struct.new(
      :connector_type,
      :connector_label,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_configuration
    #   <p>Configuration info of all the connectors that the user requested.</p>
    #   @return [Types::ConnectorConfiguration]
    class DescribeConnectorResponse < Struct.new(
      :connector_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_types
    #   <p> The type of connector, such as Salesforce, Amplitude, and so on. </p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum number of items that should be returned in the result set. The default is
    #         20.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The pagination token for the next page of data. </p>
    #   @return [String]
    class DescribeConnectorsRequest < Struct.new(
      :connector_types,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_configurations
    #   <p> The configuration that is applied to the connectors used in the flow. </p>
    #   @return [Hash<String, Types::ConnectorConfiguration>]
    # @!attribute connectors
    #   <p>Information about the connectors supported in Amazon AppFlow.</p>
    #   @return [Array<Types::ConnectorDetail>]
    # @!attribute next_token
    #   <p> The pagination token for the next page of data. </p>
    #   @return [String]
    class DescribeConnectorsResponse < Struct.new(
      :connector_configurations,
      :connectors,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_name
    #   <p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens
    #         (-) only. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> Specifies the maximum number of items that should be returned in the result set. The
    #         default for <code>maxResults</code> is 20 (for all paginated API operations). </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The pagination token for the next page of data. </p>
    #   @return [String]
    class DescribeFlowExecutionRecordsRequest < Struct.new(
      :flow_name,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_executions
    #   <p> Returns a list of all instances when this flow was run. </p>
    #   @return [Array<Types::ExecutionRecord>]
    # @!attribute next_token
    #   <p> The pagination token for the next page of data. </p>
    #   @return [String]
    class DescribeFlowExecutionRecordsResponse < Struct.new(
      :flow_executions,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_name
    #   <p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens
    #         (-) only. </p>
    #   @return [String]
    class DescribeFlowRequest < Struct.new(
      :flow_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The flow's Amazon Resource Name (ARN). </p>
    #   @return [String]
    # @!attribute description
    #   <p> A description of the flow. </p>
    #   @return [String]
    # @!attribute flow_name
    #   <p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens
    #         (-) only. </p>
    #   @return [String]
    # @!attribute kms_arn
    #   <p> The ARN (Amazon Resource Name) of the Key Management Service (KMS) key you provide for
    #         encryption. This is required if you do not want to use the Amazon AppFlow-managed KMS
    #         key. If you don't provide anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS key. </p>
    #   @return [String]
    # @!attribute flow_status
    #   <p> Indicates the current status of the flow. </p>
    #   @return [String]
    # @!attribute flow_status_message
    #   <p> Contains an error message if the flow status is in a suspended or error state. This
    #         applies only to scheduled or event-triggered flows. </p>
    #   @return [String]
    # @!attribute source_flow_config
    #   <p> The configuration that controls how Amazon AppFlow retrieves data from the source
    #         connector. </p>
    #   @return [Types::SourceFlowConfig]
    # @!attribute destination_flow_config_list
    #   <p> The configuration that controls how Amazon AppFlow transfers data to the destination
    #         connector. </p>
    #   @return [Array<Types::DestinationFlowConfig>]
    # @!attribute last_run_execution_details
    #   <p> Describes the details of the most recent flow run. </p>
    #   @return [Types::ExecutionDetails]
    # @!attribute trigger_config
    #   <p> The trigger settings that determine how and when the flow runs. </p>
    #   @return [Types::TriggerConfig]
    # @!attribute tasks
    #   <p> A list of tasks that Amazon AppFlow performs while transferring the data in the flow
    #         run. </p>
    #   @return [Array<Types::Task>]
    # @!attribute created_at
    #   <p> Specifies when the flow was created. </p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p> Specifies when the flow was last updated. </p>
    #   @return [Time]
    # @!attribute created_by
    #   <p> The ARN of the user who created the flow. </p>
    #   @return [String]
    # @!attribute last_updated_by
    #   <p> Specifies the user name of the account that performed the most recent update. </p>
    #   @return [String]
    # @!attribute tags
    #   <p> The tags used to organize, track, or control access for your flow. </p>
    #   @return [Hash<String, String>]
    # @!attribute metadata_catalog_config
    #   <p>Specifies the configuration that Amazon AppFlow uses when it catalogs the data that's
    #         transferred by the associated flow. When Amazon AppFlow catalogs the data from a flow, it
    #         stores metadata in a data catalog.</p>
    #   @return [Types::MetadataCatalogConfig]
    # @!attribute last_run_metadata_catalog_details
    #   <p>Describes the metadata catalog, metadata table, and data partitions that Amazon AppFlow used for the associated flow run.</p>
    #   @return [Array<Types::MetadataCatalogDetail>]
    # @!attribute schema_version
    #   <p>The version number of your data schema. Amazon AppFlow assigns this version number.
    #         The version number increases by one when you change any of the following settings in your flow
    #         configuration:</p>
    #            <ul>
    #               <li>
    #                  <p>Source-to-destination field mappings</p>
    #               </li>
    #               <li>
    #                  <p>Field data types</p>
    #               </li>
    #               <li>
    #                  <p>Partition keys</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    class DescribeFlowResponse < Struct.new(
      :flow_arn,
      :description,
      :flow_name,
      :kms_arn,
      :flow_status,
      :flow_status_message,
      :source_flow_config,
      :destination_flow_config_list,
      :last_run_execution_details,
      :trigger_config,
      :tasks,
      :created_at,
      :last_updated_at,
      :created_by,
      :last_updated_by,
      :tags,
      :metadata_catalog_config,
      :last_run_metadata_catalog_details,
      :schema_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> This stores the information that is required to query a particular connector. </p>
    # @!attribute redshift
    #   <p> The properties required to query Amazon Redshift. </p>
    #   @return [Types::RedshiftDestinationProperties]
    # @!attribute s3
    #   <p> The properties required to query Amazon S3. </p>
    #   @return [Types::S3DestinationProperties]
    # @!attribute salesforce
    #   <p> The properties required to query Salesforce. </p>
    #   @return [Types::SalesforceDestinationProperties]
    # @!attribute snowflake
    #   <p> The properties required to query Snowflake. </p>
    #   @return [Types::SnowflakeDestinationProperties]
    # @!attribute event_bridge
    #   <p> The properties required to query Amazon EventBridge. </p>
    #   @return [Types::EventBridgeDestinationProperties]
    # @!attribute lookout_metrics
    #   <p> The properties required to query Amazon Lookout for Metrics. </p>
    #   @return [Types::LookoutMetricsDestinationProperties]
    # @!attribute upsolver
    #   <p> The properties required to query Upsolver. </p>
    #   @return [Types::UpsolverDestinationProperties]
    # @!attribute honeycode
    #   <p> The properties required to query Amazon Honeycode. </p>
    #   @return [Types::HoneycodeDestinationProperties]
    # @!attribute customer_profiles
    #   <p> The properties required to query Amazon Connect Customer Profiles. </p>
    #   @return [Types::CustomerProfilesDestinationProperties]
    # @!attribute zendesk
    #   <p>The properties required to query Zendesk.</p>
    #   @return [Types::ZendeskDestinationProperties]
    # @!attribute marketo
    #   <p>The properties required to query Marketo.</p>
    #   @return [Types::MarketoDestinationProperties]
    # @!attribute custom_connector
    #   <p>The properties that are required to query the custom Connector.</p>
    #   @return [Types::CustomConnectorDestinationProperties]
    # @!attribute sapo_data
    #   <p>The properties required to query SAPOData.</p>
    #   @return [Types::SAPODataDestinationProperties]
    class DestinationConnectorProperties < Struct.new(
      :redshift,
      :s3,
      :salesforce,
      :snowflake,
      :event_bridge,
      :lookout_metrics,
      :upsolver,
      :honeycode,
      :customer_profiles,
      :zendesk,
      :marketo,
      :custom_connector,
      :sapo_data,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The properties that can be applied to a field when connector is being used as a
    #       destination. </p>
    # @!attribute is_creatable
    #   <p> Specifies if the destination field can be created by the current user. </p>
    #   @return [Boolean]
    # @!attribute is_nullable
    #   <p> Specifies if the destination field can have a null value. </p>
    #   @return [Boolean]
    # @!attribute is_upsertable
    #   <p> Specifies if the flow run can either insert new rows in the destination field if they do
    #         not already exist, or update them if they do. </p>
    #   @return [Boolean]
    # @!attribute is_updatable
    #   <p> Specifies whether the field can be updated during an <code>UPDATE</code> or
    #           <code>UPSERT</code> write operation. </p>
    #   @return [Boolean]
    # @!attribute is_defaulted_on_create
    #   <p>Specifies whether the field can use the default value during a Create operation.</p>
    #   @return [Boolean]
    # @!attribute supported_write_operations
    #   <p> A list of supported write operations. For each write operation listed, this field can be
    #         used in <code>idFieldNames</code> when that write operation is present as a destination
    #         option. </p>
    #   @return [Array<String>]
    class DestinationFieldProperties < Struct.new(
      :is_creatable,
      :is_nullable,
      :is_upsertable,
      :is_updatable,
      :is_defaulted_on_create,
      :supported_write_operations,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_creatable] = false unless options.key?(:is_creatable)
        options[:is_nullable] = false unless options.key?(:is_nullable)
        options[:is_upsertable] = false unless options.key?(:is_upsertable)
        options[:is_updatable] = false unless options.key?(:is_updatable)
        options[:is_defaulted_on_create] = false unless options.key?(:is_defaulted_on_create)
        super
      end
    end

    # <p> Contains information about the configuration of destination connectors present in the
    #       flow. </p>
    # @!attribute connector_type
    #   <p> The type of connector, such as Salesforce, Amplitude, and so on. </p>
    #   @return [String]
    # @!attribute api_version
    #   <p>The API version that the destination connector uses.</p>
    #   @return [String]
    # @!attribute connector_profile_name
    #   <p> The name of the connector profile. This name must be unique for each connector profile in
    #         the Amazon Web Services account. </p>
    #   @return [String]
    # @!attribute destination_connector_properties
    #   <p> This stores the information that is required to query a particular connector. </p>
    #   @return [Types::DestinationConnectorProperties]
    class DestinationFlowConfig < Struct.new(
      :connector_type,
      :api_version,
      :connector_profile_name,
      :destination_connector_properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DynatraceConnectorOperator
      PROJECTION = 'PROJECTION'
      BETWEEN = 'BETWEEN'
      EQUAL_TO = 'EQUAL_TO'
      ADDITION = 'ADDITION'
      MULTIPLICATION = 'MULTIPLICATION'
      DIVISION = 'DIVISION'
      SUBTRACTION = 'SUBTRACTION'
      MASK_ALL = 'MASK_ALL'
      MASK_FIRST_N = 'MASK_FIRST_N'
      MASK_LAST_N = 'MASK_LAST_N'
      VALIDATE_NON_NULL = 'VALIDATE_NON_NULL'
      VALIDATE_NON_ZERO = 'VALIDATE_NON_ZERO'
      VALIDATE_NON_NEGATIVE = 'VALIDATE_NON_NEGATIVE'
      VALIDATE_NUMERIC = 'VALIDATE_NUMERIC'
      NO_OP = 'NO_OP'
    end

    # <p> The connector-specific profile credentials required by Dynatrace. </p>
    # @!attribute api_token
    #   <p> The API tokens used by Dynatrace API to authenticate various API calls. </p>
    #   @return [String]
    class DynatraceConnectorProfileCredentials < Struct.new(
      :api_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector-specific profile properties required by Dynatrace. </p>
    # @!attribute instance_url
    #   <p> The location of the Dynatrace resource. </p>
    #   @return [String]
    class DynatraceConnectorProfileProperties < Struct.new(
      :instance_url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector metadata specific to Dynatrace. </p>
    class DynatraceMetadata < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The properties that are applied when Dynatrace is being used as a source. </p>
    # @!attribute object
    #   <p> The object specified in the Dynatrace flow source. </p>
    #   @return [String]
    class DynatraceSourceProperties < Struct.new(
      :object,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The settings that determine how Amazon AppFlow handles an error when placing data in
    #       the destination. For example, this setting would determine if the flow should fail after one
    #       insertion error, or continue and attempt to insert every record regardless of the initial
    #       failure. <code>ErrorHandlingConfig</code> is a part of the destination connector details.
    #     </p>
    # @!attribute fail_on_first_destination_error
    #   <p> Specifies if the flow should fail after the first instance of a failure when attempting
    #         to place data in the destination. </p>
    #   @return [Boolean]
    # @!attribute bucket_prefix
    #   <p> Specifies the Amazon S3 bucket prefix. </p>
    #   @return [String]
    # @!attribute bucket_name
    #   <p> Specifies the name of the Amazon S3 bucket. </p>
    #   @return [String]
    class ErrorHandlingConfig < Struct.new(
      :fail_on_first_destination_error,
      :bucket_prefix,
      :bucket_name,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:fail_on_first_destination_error] = false unless options.key?(:fail_on_first_destination_error)
        super
      end
    end

    # <p> Provides details in the event of a failed flow, including the failure count and the
    #       related error messages. </p>
    # @!attribute put_failures_count
    #   <p> Specifies the failure count for the attempted flow. </p>
    #   @return [Integer]
    # @!attribute execution_message
    #   <p> Specifies the error message that appears if a flow fails. </p>
    #   @return [String]
    class ErrorInfo < Struct.new(
      :put_failures_count,
      :execution_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The properties that are applied when Amazon EventBridge is being used as a
    #       destination. </p>
    # @!attribute object
    #   <p> The object specified in the Amazon EventBridge flow destination. </p>
    #   @return [String]
    # @!attribute error_handling_config
    #   <p> The settings that determine how Amazon AppFlow handles an error when placing data in
    #         the destination. For example, this setting would determine if the flow should fail after one
    #         insertion error, or continue and attempt to insert every record regardless of the initial
    #         failure. <code>ErrorHandlingConfig</code> is a part of the destination connector details.
    #       </p>
    #   @return [Types::ErrorHandlingConfig]
    class EventBridgeDestinationProperties < Struct.new(
      :object,
      :error_handling_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector metadata specific to Amazon EventBridge. </p>
    class EventBridgeMetadata < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Describes the details of the flow run, including the timestamp, status, and message.
    #     </p>
    # @!attribute most_recent_execution_message
    #   <p> Describes the details of the most recent flow run. </p>
    #   @return [String]
    # @!attribute most_recent_execution_time
    #   <p> Specifies the time of the most recent flow run. </p>
    #   @return [Time]
    # @!attribute most_recent_execution_status
    #   <p> Specifies the status of the most recent flow run. </p>
    #   @return [String]
    class ExecutionDetails < Struct.new(
      :most_recent_execution_message,
      :most_recent_execution_time,
      :most_recent_execution_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Specifies information about the past flow run instances for a given flow. </p>
    # @!attribute execution_id
    #   <p> Specifies the identifier of the given flow run. </p>
    #   @return [String]
    # @!attribute execution_status
    #   <p> Specifies the flow run status and whether it is in progress, has completed successfully,
    #         or has failed. </p>
    #   @return [String]
    # @!attribute execution_result
    #   <p> Describes the result of the given flow run. </p>
    #   @return [Types::ExecutionResult]
    # @!attribute started_at
    #   <p> Specifies the start time of the flow run. </p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p> Specifies the time of the most recent update. </p>
    #   @return [Time]
    # @!attribute data_pull_start_time
    #   <p> The timestamp that determines the first new or updated record to be transferred in the
    #         flow run. </p>
    #   @return [Time]
    # @!attribute data_pull_end_time
    #   <p> The timestamp that indicates the last new or updated record to be transferred in the flow
    #         run. </p>
    #   @return [Time]
    # @!attribute metadata_catalog_details
    #   <p>Describes the metadata catalog, metadata table, and data partitions that Amazon AppFlow used for the associated flow run.</p>
    #   @return [Array<Types::MetadataCatalogDetail>]
    class ExecutionRecord < Struct.new(
      :execution_id,
      :execution_status,
      :execution_result,
      :started_at,
      :last_updated_at,
      :data_pull_start_time,
      :data_pull_end_time,
      :metadata_catalog_details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Specifies the end result of the flow run. </p>
    # @!attribute error_info
    #   <p> Provides any error message information related to the flow run. </p>
    #   @return [Types::ErrorInfo]
    # @!attribute bytes_processed
    #   <p> The total number of bytes processed by the flow run. </p>
    #   @return [Integer]
    # @!attribute bytes_written
    #   <p> The total number of bytes written as a result of the flow run. </p>
    #   @return [Integer]
    # @!attribute records_processed
    #   <p> The number of records processed in the flow run. </p>
    #   @return [Integer]
    # @!attribute num_parallel_processes
    #   <p>The number of processes that Amazon AppFlow ran at the same time when it retrieved
    #         your data.</p>
    #   @return [Integer]
    # @!attribute max_page_size
    #   <p>The maximum number of records that Amazon AppFlow receives in each page of the
    #         response from your SAP application.</p>
    #   @return [Integer]
    class ExecutionResult < Struct.new(
      :error_info,
      :bytes_processed,
      :bytes_written,
      :records_processed,
      :num_parallel_processes,
      :max_page_size,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ExecutionStatus
      INPROGRESS = 'InProgress'
      SUCCESSFUL = 'Successful'
      ERROR = 'Error'
      CANCELSTARTED = 'CancelStarted'
      CANCELED = 'Canceled'
    end

    # <p> Contains details regarding the supported field type and the operators that can be applied
    #       for filtering. </p>
    # @!attribute field_type
    #   <p> The type of field, such as string, integer, date, and so on. </p>
    #   @return [String]
    # @!attribute filter_operators
    #   <p> The list of operators supported by a field. </p>
    #   @return [Array<String>]
    # @!attribute supported_values
    #   <p> The list of values that a field can contain. For example, a Boolean
    #           <code>fieldType</code> can have two values: "true" and "false". </p>
    #   @return [Array<String>]
    # @!attribute value_regex_pattern
    #   <p>The regular expression pattern for the field name.</p>
    #   @return [String]
    # @!attribute supported_date_format
    #   <p>The date format that the field supports.</p>
    #   @return [String]
    # @!attribute field_value_range
    #   <p>The range of values this field can hold.</p>
    #   @return [Types::Range]
    # @!attribute field_length_range
    #   <p>This is the allowable length range for this field's value.</p>
    #   @return [Types::Range]
    class FieldTypeDetails < Struct.new(
      :field_type,
      :filter_operators,
      :supported_values,
      :value_regex_pattern,
      :supported_date_format,
      :field_value_range,
      :field_length_range,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module FileType
      CSV = 'CSV'
      JSON = 'JSON'
      PARQUET = 'PARQUET'
    end

    # <p> The properties of the flow, such as its source, destination, trigger type, and so on.
    #     </p>
    # @!attribute flow_arn
    #   <p> The flow's Amazon Resource Name (ARN). </p>
    #   @return [String]
    # @!attribute description
    #   <p> A user-entered description of the flow. </p>
    #   @return [String]
    # @!attribute flow_name
    #   <p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens
    #         (-) only. </p>
    #   @return [String]
    # @!attribute flow_status
    #   <p> Indicates the current status of the flow. </p>
    #   @return [String]
    # @!attribute source_connector_type
    #   <p> Specifies the source connector type, such as Salesforce, Amazon S3, Amplitude,
    #         and so on. </p>
    #   @return [String]
    # @!attribute source_connector_label
    #   <p>The label of the source connector in the flow.</p>
    #   @return [String]
    # @!attribute destination_connector_type
    #   <p> Specifies the destination connector type, such as Salesforce, Amazon S3,
    #         Amplitude, and so on. </p>
    #   @return [String]
    # @!attribute destination_connector_label
    #   <p>The label of the destination connector in the flow.</p>
    #   @return [String]
    # @!attribute trigger_type
    #   <p> Specifies the type of flow trigger. This can be <code>OnDemand</code>,
    #           <code>Scheduled</code>, or <code>Event</code>. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p> Specifies when the flow was created. </p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p> Specifies when the flow was last updated. </p>
    #   @return [Time]
    # @!attribute created_by
    #   <p> The ARN of the user who created the flow. </p>
    #   @return [String]
    # @!attribute last_updated_by
    #   <p> Specifies the account user name that most recently updated the flow. </p>
    #   @return [String]
    # @!attribute tags
    #   <p> The tags used to organize, track, or control access for your flow. </p>
    #   @return [Hash<String, String>]
    # @!attribute last_run_execution_details
    #   <p> Describes the details of the most recent flow run. </p>
    #   @return [Types::ExecutionDetails]
    class FlowDefinition < Struct.new(
      :flow_arn,
      :description,
      :flow_name,
      :flow_status,
      :source_connector_type,
      :source_connector_label,
      :destination_connector_type,
      :destination_connector_label,
      :trigger_type,
      :created_at,
      :last_updated_at,
      :created_by,
      :last_updated_by,
      :tags,
      :last_run_execution_details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module FlowStatus
      ACTIVE = 'Active'
      DEPRECATED = 'Deprecated'
      DELETED = 'Deleted'
      DRAFT = 'Draft'
      ERRORED = 'Errored'
      SUSPENDED = 'Suspended'
    end

    # <p>Specifies the configuration that Amazon AppFlow uses when it catalogs your data with
    #       the Glue Data Catalog. When Amazon AppFlow catalogs your data, it stores metadata
    #       in Data Catalog tables. This metadata represents the data that's transferred by the
    #       flow that you configure with these settings.</p>
    #          <note>
    #             <p>You can configure a flow with these settings only when the flow destination is Amazon S3.</p>
    #          </note>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that grants Amazon AppFlow the permissions it needs to create Data Catalog tables, databases, and
    #         partitions.</p>
    #            <p>For an example IAM policy that has the required permissions, see <a href="https://docs.aws.amazon.com/appflow/latest/userguide/security_iam_id-based-policy-examples.html">Identity-based
    #           policy examples for Amazon AppFlow</a>.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the Data Catalog database that stores the metadata tables that Amazon AppFlow creates in your Amazon Web Services account. These tables contain metadata for
    #         the data that's transferred by the flow that you configure with this parameter.</p>
    #            <note>
    #               <p>When you configure a new flow with this parameter, you must specify an existing
    #           database.</p>
    #            </note>
    #   @return [String]
    # @!attribute table_prefix
    #   <p>A naming prefix for each Data Catalog table that Amazon AppFlow creates for
    #         the flow that you configure with this setting. Amazon AppFlow adds the prefix to the
    #         beginning of the each table name.</p>
    #   @return [String]
    class GlueDataCatalogConfig < Struct.new(
      :role_arn,
      :database_name,
      :table_prefix,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GoogleAnalyticsConnectorOperator
      PROJECTION = 'PROJECTION'
      BETWEEN = 'BETWEEN'
    end

    # <p> The connector-specific profile credentials required by Google Analytics. </p>
    # @!attribute client_id
    #   <p> The identifier for the desired client. </p>
    #   @return [String]
    # @!attribute client_secret
    #   <p> The client secret used by the OAuth client to authenticate to the authorization server.
    #       </p>
    #   @return [String]
    # @!attribute access_token
    #   <p> The credentials used to access protected Google Analytics resources. </p>
    #   @return [String]
    # @!attribute refresh_token
    #   <p> The credentials used to acquire new access tokens. This is required only for OAuth2
    #         access tokens, and is not required for OAuth1 access tokens. </p>
    #   @return [String]
    # @!attribute o_auth_request
    #   <p> The OAuth requirement needed to request security tokens from the connector endpoint.
    #       </p>
    #   @return [Types::ConnectorOAuthRequest]
    class GoogleAnalyticsConnectorProfileCredentials < Struct.new(
      :client_id,
      :client_secret,
      :access_token,
      :refresh_token,
      :o_auth_request,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector-specific profile properties required by Google Analytics. </p>
    class GoogleAnalyticsConnectorProfileProperties < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector metadata specific to Google Analytics. </p>
    # @!attribute o_auth_scopes
    #   <p> The desired authorization scope for the Google Analytics account. </p>
    #   @return [Array<String>]
    class GoogleAnalyticsMetadata < Struct.new(
      :o_auth_scopes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The properties that are applied when Google Analytics is being used as a source. </p>
    # @!attribute object
    #   <p> The object specified in the Google Analytics flow source. </p>
    #   @return [String]
    class GoogleAnalyticsSourceProperties < Struct.new(
      :object,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector-specific credentials required when using Amazon Honeycode. </p>
    # @!attribute access_token
    #   <p> The credentials used to access protected Amazon Honeycode resources. </p>
    #   @return [String]
    # @!attribute refresh_token
    #   <p> The credentials used to acquire new access tokens. </p>
    #   @return [String]
    # @!attribute o_auth_request
    #   <p> Used by select connectors for which the OAuth workflow is supported, such as Salesforce,
    #         Google Analytics, Marketo, Zendesk, and Slack. </p>
    #   @return [Types::ConnectorOAuthRequest]
    class HoneycodeConnectorProfileCredentials < Struct.new(
      :access_token,
      :refresh_token,
      :o_auth_request,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector-specific properties required when using Amazon Honeycode. </p>
    class HoneycodeConnectorProfileProperties < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The properties that are applied when Amazon Honeycode is used as a destination. </p>
    # @!attribute object
    #   <p> The object specified in the Amazon Honeycode flow destination. </p>
    #   @return [String]
    # @!attribute error_handling_config
    #   <p> The settings that determine how Amazon AppFlow handles an error when placing data in
    #         the destination. For example, this setting would determine if the flow should fail after one
    #         insertion error, or continue and attempt to insert every record regardless of the initial
    #         failure. <code>ErrorHandlingConfig</code> is a part of the destination connector details.
    #       </p>
    #   @return [Types::ErrorHandlingConfig]
    class HoneycodeDestinationProperties < Struct.new(
      :object,
      :error_handling_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector metadata specific to Amazon Honeycode. </p>
    # @!attribute o_auth_scopes
    #   <p> The desired authorization scope for the Amazon Honeycode account. </p>
    #   @return [Array<String>]
    class HoneycodeMetadata < Struct.new(
      :o_auth_scopes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Specifies the configuration used when importing incremental records from the source.
    #     </p>
    # @!attribute datetime_type_field_name
    #   <p> A field that specifies the date time or timestamp field as the criteria to use when
    #         importing incremental records from the source. </p>
    #   @return [String]
    class IncrementalPullConfig < Struct.new(
      :datetime_type_field_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module InforNexusConnectorOperator
      PROJECTION = 'PROJECTION'
      BETWEEN = 'BETWEEN'
      EQUAL_TO = 'EQUAL_TO'
      ADDITION = 'ADDITION'
      MULTIPLICATION = 'MULTIPLICATION'
      DIVISION = 'DIVISION'
      SUBTRACTION = 'SUBTRACTION'
      MASK_ALL = 'MASK_ALL'
      MASK_FIRST_N = 'MASK_FIRST_N'
      MASK_LAST_N = 'MASK_LAST_N'
      VALIDATE_NON_NULL = 'VALIDATE_NON_NULL'
      VALIDATE_NON_ZERO = 'VALIDATE_NON_ZERO'
      VALIDATE_NON_NEGATIVE = 'VALIDATE_NON_NEGATIVE'
      VALIDATE_NUMERIC = 'VALIDATE_NUMERIC'
      NO_OP = 'NO_OP'
    end

    # <p> The connector-specific profile credentials required by Infor Nexus. </p>
    # @!attribute access_key_id
    #   <p> The Access Key portion of the credentials. </p>
    #   @return [String]
    # @!attribute user_id
    #   <p> The identifier for the user. </p>
    #   @return [String]
    # @!attribute secret_access_key
    #   <p> The secret key used to sign requests. </p>
    #   @return [String]
    # @!attribute datakey
    #   <p> The encryption keys used to encrypt data. </p>
    #   @return [String]
    class InforNexusConnectorProfileCredentials < Struct.new(
      :access_key_id,
      :user_id,
      :secret_access_key,
      :datakey,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector-specific profile properties required by Infor Nexus. </p>
    # @!attribute instance_url
    #   <p> The location of the Infor Nexus resource. </p>
    #   @return [String]
    class InforNexusConnectorProfileProperties < Struct.new(
      :instance_url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector metadata specific to Infor Nexus. </p>
    class InforNexusMetadata < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The properties that are applied when Infor Nexus is being used as a source. </p>
    # @!attribute object
    #   <p> The object specified in the Infor Nexus flow source. </p>
    #   @return [String]
    class InforNexusSourceProperties < Struct.new(
      :object,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> An internal service error occurred during the processing of your request. Try again
    #       later. </p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about the configuration of the lambda which is being registered as
    #       the connector.</p>
    # @!attribute lambda_arn
    #   <p>Lambda ARN of the connector being registered.</p>
    #   @return [String]
    class LambdaConnectorProvisioningConfig < Struct.new(
      :lambda_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_profile_name
    #   <p> The name of the connector profile. The name is unique for each
    #           <code>ConnectorProfile</code> in the Amazon Web Services account, and is used to query the
    #         downstream connector. </p>
    #   @return [String]
    # @!attribute connector_type
    #   <p> The type of connector, such as Salesforce, Amplitude, and so on. </p>
    #   @return [String]
    # @!attribute entities_path
    #   <p> This optional parameter is specific to connector implementation. Some connectors support
    #         multiple levels or categories of entities. You can find out the list of roots for such
    #         providers by sending a request without the <code>entitiesPath</code> parameter. If the
    #         connector supports entities at different roots, this initial request returns the list of
    #         roots. Otherwise, this request returns all entities supported by the provider. </p>
    #   @return [String]
    # @!attribute api_version
    #   <p>The version of the API that's used by the connector.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items that the operation returns in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that was provided by your prior <code>ListConnectorEntities</code> operation if
    #         the response was too big for the page size. You specify this token to get the next page of
    #         results in paginated response.</p>
    #   @return [String]
    class ListConnectorEntitiesRequest < Struct.new(
      :connector_profile_name,
      :connector_type,
      :entities_path,
      :api_version,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_entity_map
    #   <p> The response of <code>ListConnectorEntities</code> lists entities grouped by category.
    #         This map's key represents the group name, and its value contains the list of entities
    #         belonging to that group. </p>
    #   @return [Hash<String, Array<Types::ConnectorEntity>>]
    # @!attribute next_token
    #   <p>A token that you specify in your next <code>ListConnectorEntities</code> operation to get
    #         the next page of results in paginated response. The <code>ListConnectorEntities</code>
    #         operation provides this token if the response is too big for the page size.</p>
    #   @return [String]
    class ListConnectorEntitiesResponse < Struct.new(
      :connector_entity_map,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>Specifies the maximum number of items that should be returned in the result set. The
    #         default for <code>maxResults</code> is 20 (for all paginated API operations).</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token for the next page of data.</p>
    #   @return [String]
    class ListConnectorsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connectors
    #   <p>Contains information about the connectors supported by Amazon AppFlow.</p>
    #   @return [Array<Types::ConnectorDetail>]
    # @!attribute next_token
    #   <p>The pagination token for the next page of data. If nextToken=null, this means that all
    #         records have been fetched.</p>
    #   @return [String]
    class ListConnectorsResponse < Struct.new(
      :connectors,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p> Specifies the maximum number of items that should be returned in the result set. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The pagination token for next page of data. </p>
    #   @return [String]
    class ListFlowsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flows
    #   <p> The list of flows associated with your account. </p>
    #   @return [Array<Types::FlowDefinition>]
    # @!attribute next_token
    #   <p> The pagination token for next page of data. </p>
    #   @return [String]
    class ListFlowsResponse < Struct.new(
      :flows,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) of the specified flow. </p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p> The tags used to organize, track, or control access for your flow. </p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The properties that are applied when Amazon Lookout for Metrics is used as a destination.
    #     </p>
    class LookoutMetricsDestinationProperties < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module MarketoConnectorOperator
      PROJECTION = 'PROJECTION'
      LESS_THAN = 'LESS_THAN'
      GREATER_THAN = 'GREATER_THAN'
      BETWEEN = 'BETWEEN'
      ADDITION = 'ADDITION'
      MULTIPLICATION = 'MULTIPLICATION'
      DIVISION = 'DIVISION'
      SUBTRACTION = 'SUBTRACTION'
      MASK_ALL = 'MASK_ALL'
      MASK_FIRST_N = 'MASK_FIRST_N'
      MASK_LAST_N = 'MASK_LAST_N'
      VALIDATE_NON_NULL = 'VALIDATE_NON_NULL'
      VALIDATE_NON_ZERO = 'VALIDATE_NON_ZERO'
      VALIDATE_NON_NEGATIVE = 'VALIDATE_NON_NEGATIVE'
      VALIDATE_NUMERIC = 'VALIDATE_NUMERIC'
      NO_OP = 'NO_OP'
    end

    # <p> The connector-specific profile credentials required by Marketo. </p>
    # @!attribute client_id
    #   <p> The identifier for the desired client. </p>
    #   @return [String]
    # @!attribute client_secret
    #   <p> The client secret used by the OAuth client to authenticate to the authorization server.
    #       </p>
    #   @return [String]
    # @!attribute access_token
    #   <p> The credentials used to access protected Marketo resources. </p>
    #   @return [String]
    # @!attribute o_auth_request
    #   <p> The OAuth requirement needed to request security tokens from the connector endpoint.
    #       </p>
    #   @return [Types::ConnectorOAuthRequest]
    class MarketoConnectorProfileCredentials < Struct.new(
      :client_id,
      :client_secret,
      :access_token,
      :o_auth_request,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector-specific profile properties required when using Marketo. </p>
    # @!attribute instance_url
    #   <p> The location of the Marketo resource. </p>
    #   @return [String]
    class MarketoConnectorProfileProperties < Struct.new(
      :instance_url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The properties that Amazon AppFlow applies when you use Marketo as a flow
    #       destination.</p>
    # @!attribute object
    #   <p>The object specified in the Marketo flow destination.</p>
    #   @return [String]
    # @!attribute error_handling_config
    #   <p> The settings that determine how Amazon AppFlow handles an error when placing data in
    #         the destination. For example, this setting would determine if the flow should fail after one
    #         insertion error, or continue and attempt to insert every record regardless of the initial
    #         failure. <code>ErrorHandlingConfig</code> is a part of the destination connector details.
    #       </p>
    #   @return [Types::ErrorHandlingConfig]
    class MarketoDestinationProperties < Struct.new(
      :object,
      :error_handling_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector metadata specific to Marketo. </p>
    class MarketoMetadata < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The properties that are applied when Marketo is being used as a source. </p>
    # @!attribute object
    #   <p> The object specified in the Marketo flow source. </p>
    #   @return [String]
    class MarketoSourceProperties < Struct.new(
      :object,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the configuration that Amazon AppFlow uses when it catalogs your data. When
    #         Amazon AppFlow catalogs your data, it stores metadata in a data catalog.</p>
    # @!attribute glue_data_catalog
    #   <p>Specifies the configuration that Amazon AppFlow uses when it catalogs your data with
    #         the Glue Data Catalog.</p>
    #   @return [Types::GlueDataCatalogConfig]
    class MetadataCatalogConfig < Struct.new(
      :glue_data_catalog,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the metadata catalog, metadata table, and data partitions that Amazon AppFlow used for the associated flow run.</p>
    # @!attribute catalog_type
    #   <p>The type of metadata catalog that Amazon AppFlow used for the associated flow run.
    #         This parameter returns the following value:</p>
    #            <dl>
    #               <dt>GLUE</dt>
    #               <dd>
    #                  <p>The metadata catalog is provided by the Glue Data Catalog. Glue
    #               includes the Glue Data Catalog as a component.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table that stores the metadata for the associated flow run. The table
    #         stores metadata that represents the data that the flow transferred. Amazon AppFlow stores
    #         the table in the metadata catalog.</p>
    #   @return [String]
    # @!attribute table_registration_output
    #   <p>Describes the status of the attempt from Amazon AppFlow to register the metadata
    #         table with the metadata catalog. Amazon AppFlow creates or updates this table for the
    #         associated flow run.</p>
    #   @return [Types::RegistrationOutput]
    # @!attribute partition_registration_output
    #   <p>Describes the status of the attempt from Amazon AppFlow to register the data
    #         partitions with the metadata catalog. The data partitions organize the flow output into a
    #         hierarchical path, such as a folder path in an S3 bucket. Amazon AppFlow creates the
    #         partitions (if they don't already exist) based on your flow configuration.</p>
    #   @return [Types::RegistrationOutput]
    class MetadataCatalogDetail < Struct.new(
      :catalog_type,
      :table_name,
      :table_registration_output,
      :partition_registration_output,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The OAuth 2.0 credentials required for OAuth 2.0 authentication.</p>
    # @!attribute client_id
    #   <p>The identifier for the desired client.</p>
    #   @return [String]
    # @!attribute client_secret
    #   <p>The client secret used by the OAuth client to authenticate to the authorization
    #         server.</p>
    #   @return [String]
    # @!attribute access_token
    #   <p>The access token used to access the connector on your behalf.</p>
    #   @return [String]
    # @!attribute refresh_token
    #   <p>The refresh token used to refresh an expired access token.</p>
    #   @return [String]
    # @!attribute o_auth_request
    #   <p> Used by select connectors for which the OAuth workflow is supported, such as Salesforce,
    #         Google Analytics, Marketo, Zendesk, and Slack. </p>
    #   @return [Types::ConnectorOAuthRequest]
    class OAuth2Credentials < Struct.new(
      :client_id,
      :client_secret,
      :access_token,
      :refresh_token,
      :o_auth_request,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Custom parameter required for OAuth 2.0 authentication.</p>
    # @!attribute key
    #   <p>The key of the custom parameter required for OAuth 2.0 authentication.</p>
    #   @return [String]
    # @!attribute is_required
    #   <p>Indicates whether the custom parameter for OAuth 2.0 authentication is required.</p>
    #   @return [Boolean]
    # @!attribute label
    #   <p>The label of the custom parameter used for OAuth 2.0 authentication.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description about the custom parameter used for OAuth 2.0 authentication.</p>
    #   @return [String]
    # @!attribute is_sensitive_field
    #   <p>Indicates whether this authentication custom parameter is a sensitive field.</p>
    #   @return [Boolean]
    # @!attribute connector_supplied_values
    #   <p>Contains default values for this authentication parameter that are supplied by the
    #         connector.</p>
    #   @return [Array<String>]
    # @!attribute type
    #   <p>Indicates whether custom parameter is used with TokenUrl or AuthUrl.</p>
    #   @return [String]
    class OAuth2CustomParameter < Struct.new(
      :key,
      :is_required,
      :label,
      :description,
      :is_sensitive_field,
      :connector_supplied_values,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_required] = false unless options.key?(:is_required)
        options[:is_sensitive_field] = false unless options.key?(:is_sensitive_field)
        super
      end
    end

    module OAuth2CustomPropType
      TOKEN_URL = 'TOKEN_URL'
      AUTH_URL = 'AUTH_URL'
    end

    # <p>Contains the default values required for OAuth 2.0 authentication.</p>
    # @!attribute oauth_scopes
    #   <p>OAuth 2.0 scopes that the connector supports.</p>
    #   @return [Array<String>]
    # @!attribute token_urls
    #   <p>Token URLs that can be used for OAuth 2.0 authentication.</p>
    #   @return [Array<String>]
    # @!attribute auth_code_urls
    #   <p>Auth code URLs that can be used for OAuth 2.0 authentication.</p>
    #   @return [Array<String>]
    # @!attribute oauth2_grant_types_supported
    #   <p>OAuth 2.0 grant types supported by the connector.</p>
    #   @return [Array<String>]
    # @!attribute oauth2_custom_properties
    #   <p>List of custom parameters required for OAuth 2.0 authentication.</p>
    #   @return [Array<Types::OAuth2CustomParameter>]
    class OAuth2Defaults < Struct.new(
      :oauth_scopes,
      :token_urls,
      :auth_code_urls,
      :oauth2_grant_types_supported,
      :oauth2_custom_properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module OAuth2GrantType
      CLIENT_CREDENTIALS = 'CLIENT_CREDENTIALS'
      AUTHORIZATION_CODE = 'AUTHORIZATION_CODE'
      JWT_BEARER = 'JWT_BEARER'
    end

    # <p>The OAuth 2.0 properties required for OAuth 2.0 authentication.</p>
    # @!attribute token_url
    #   <p>The token URL required for OAuth 2.0 authentication.</p>
    #   @return [String]
    # @!attribute o_auth2_grant_type
    #   <p>The OAuth 2.0 grant type used by connector for OAuth 2.0 authentication.</p>
    #   @return [String]
    # @!attribute token_url_custom_properties
    #   <p>Associates your token URL with a map of properties that you define. Use this parameter to
    #         provide any additional details that the connector requires to authenticate your
    #         request.</p>
    #   @return [Hash<String, String>]
    class OAuth2Properties < Struct.new(
      :token_url,
      :o_auth2_grant_type,
      :token_url_custom_properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The OAuth credentials required for OAuth type authentication. </p>
    # @!attribute client_id
    #   <p> The identifier for the desired client. </p>
    #   @return [String]
    # @!attribute client_secret
    #   <p> The client secret used by the OAuth client to authenticate to the authorization server.
    #       </p>
    #   @return [String]
    # @!attribute access_token
    #   <p> The access token used to access protected SAPOData resources. </p>
    #   @return [String]
    # @!attribute refresh_token
    #   <p> The refresh token used to refresh expired access token. </p>
    #   @return [String]
    # @!attribute o_auth_request
    #   <p> The OAuth requirement needed to request security tokens from the connector endpoint.
    #       </p>
    #   @return [Types::ConnectorOAuthRequest]
    class OAuthCredentials < Struct.new(
      :client_id,
      :client_secret,
      :access_token,
      :refresh_token,
      :o_auth_request,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The OAuth properties required for OAuth type authentication. </p>
    # @!attribute token_url
    #   <p> The token url required to fetch access/refresh tokens using authorization code and also
    #         to refresh expired access token using refresh token.</p>
    #   @return [String]
    # @!attribute auth_code_url
    #   <p> The authorization code url required to redirect to SAP Login Page to fetch authorization
    #         code for OAuth type authentication. </p>
    #   @return [String]
    # @!attribute o_auth_scopes
    #   <p> The OAuth scopes required for OAuth type authentication. </p>
    #   @return [Array<String>]
    class OAuthProperties < Struct.new(
      :token_url,
      :auth_code_url,
      :o_auth_scopes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module Operator
      PROJECTION = 'PROJECTION'
      LESS_THAN = 'LESS_THAN'
      GREATER_THAN = 'GREATER_THAN'
      CONTAINS = 'CONTAINS'
      BETWEEN = 'BETWEEN'
      LESS_THAN_OR_EQUAL_TO = 'LESS_THAN_OR_EQUAL_TO'
      GREATER_THAN_OR_EQUAL_TO = 'GREATER_THAN_OR_EQUAL_TO'
      EQUAL_TO = 'EQUAL_TO'
      NOT_EQUAL_TO = 'NOT_EQUAL_TO'
      ADDITION = 'ADDITION'
      MULTIPLICATION = 'MULTIPLICATION'
      DIVISION = 'DIVISION'
      SUBTRACTION = 'SUBTRACTION'
      MASK_ALL = 'MASK_ALL'
      MASK_FIRST_N = 'MASK_FIRST_N'
      MASK_LAST_N = 'MASK_LAST_N'
      VALIDATE_NON_NULL = 'VALIDATE_NON_NULL'
      VALIDATE_NON_ZERO = 'VALIDATE_NON_ZERO'
      VALIDATE_NON_NEGATIVE = 'VALIDATE_NON_NEGATIVE'
      VALIDATE_NUMERIC = 'VALIDATE_NUMERIC'
      NO_OP = 'NO_OP'
    end

    module OperatorPropertiesKeys
      VALUE = 'VALUE'
      VALUES = 'VALUES'
      DATA_TYPE = 'DATA_TYPE'
      UPPER_BOUND = 'UPPER_BOUND'
      LOWER_BOUND = 'LOWER_BOUND'
      SOURCE_DATA_TYPE = 'SOURCE_DATA_TYPE'
      DESTINATION_DATA_TYPE = 'DESTINATION_DATA_TYPE'
      VALIDATION_ACTION = 'VALIDATION_ACTION'
      MASK_VALUE = 'MASK_VALUE'
      MASK_LENGTH = 'MASK_LENGTH'
      TRUNCATE_LENGTH = 'TRUNCATE_LENGTH'
      MATH_OPERATION_FIELDS_ORDER = 'MATH_OPERATION_FIELDS_ORDER'
      CONCAT_FORMAT = 'CONCAT_FORMAT'
      SUBFIELD_CATEGORY_MAP = 'SUBFIELD_CATEGORY_MAP'
      EXCLUDE_SOURCE_FIELDS_LIST = 'EXCLUDE_SOURCE_FIELDS_LIST'
      INCLUDE_NEW_FIELDS = 'INCLUDE_NEW_FIELDS'
      ORDERED_PARTITION_KEYS_LIST = 'ORDERED_PARTITION_KEYS_LIST'
    end

    module Operators
      PROJECTION = 'PROJECTION'
      LESS_THAN = 'LESS_THAN'
      GREATER_THAN = 'GREATER_THAN'
      CONTAINS = 'CONTAINS'
      BETWEEN = 'BETWEEN'
      LESS_THAN_OR_EQUAL_TO = 'LESS_THAN_OR_EQUAL_TO'
      GREATER_THAN_OR_EQUAL_TO = 'GREATER_THAN_OR_EQUAL_TO'
      EQUAL_TO = 'EQUAL_TO'
      NOT_EQUAL_TO = 'NOT_EQUAL_TO'
      ADDITION = 'ADDITION'
      MULTIPLICATION = 'MULTIPLICATION'
      DIVISION = 'DIVISION'
      SUBTRACTION = 'SUBTRACTION'
      MASK_ALL = 'MASK_ALL'
      MASK_FIRST_N = 'MASK_FIRST_N'
      MASK_LAST_N = 'MASK_LAST_N'
      VALIDATE_NON_NULL = 'VALIDATE_NON_NULL'
      VALIDATE_NON_ZERO = 'VALIDATE_NON_ZERO'
      VALIDATE_NON_NEGATIVE = 'VALIDATE_NON_NEGATIVE'
      VALIDATE_NUMERIC = 'VALIDATE_NUMERIC'
      NO_OP = 'NO_OP'
    end

    module PardotConnectorOperator
      PROJECTION = 'PROJECTION'
      EQUAL_TO = 'EQUAL_TO'
      NO_OP = 'NO_OP'
      ADDITION = 'ADDITION'
      MULTIPLICATION = 'MULTIPLICATION'
      DIVISION = 'DIVISION'
      SUBTRACTION = 'SUBTRACTION'
      MASK_ALL = 'MASK_ALL'
      MASK_FIRST_N = 'MASK_FIRST_N'
      MASK_LAST_N = 'MASK_LAST_N'
      VALIDATE_NON_NULL = 'VALIDATE_NON_NULL'
      VALIDATE_NON_ZERO = 'VALIDATE_NON_ZERO'
      VALIDATE_NON_NEGATIVE = 'VALIDATE_NON_NEGATIVE'
      VALIDATE_NUMERIC = 'VALIDATE_NUMERIC'
    end

    # <p>The connector-specific profile credentials required when using Salesforce Pardot.</p>
    # @!attribute access_token
    #   <p>The credentials used to access protected Salesforce Pardot resources.</p>
    #   @return [String]
    # @!attribute refresh_token
    #   <p>The credentials used to acquire new access tokens.</p>
    #   @return [String]
    # @!attribute o_auth_request
    #   <p> Used by select connectors for which the OAuth workflow is supported, such as Salesforce,
    #         Google Analytics, Marketo, Zendesk, and Slack. </p>
    #   @return [Types::ConnectorOAuthRequest]
    # @!attribute client_credentials_arn
    #   <p>The secret manager ARN, which contains the client ID and client secret of the connected
    #         app.</p>
    #   @return [String]
    class PardotConnectorProfileCredentials < Struct.new(
      :access_token,
      :refresh_token,
      :o_auth_request,
      :client_credentials_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The connector-specific profile properties required when using Salesforce Pardot.</p>
    # @!attribute instance_url
    #   <p>The location of the Salesforce Pardot resource.</p>
    #   @return [String]
    # @!attribute is_sandbox_environment
    #   <p>Indicates whether the connector profile applies to a sandbox or production
    #         environment.</p>
    #   @return [Boolean]
    # @!attribute business_unit_id
    #   <p>The business unit id of Salesforce Pardot instance.</p>
    #   @return [String]
    class PardotConnectorProfileProperties < Struct.new(
      :instance_url,
      :is_sandbox_environment,
      :business_unit_id,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_sandbox_environment] = false unless options.key?(:is_sandbox_environment)
        super
      end
    end

    # <p>The connector metadata specific to Salesforce Pardot.</p>
    class PardotMetadata < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The properties that are applied when Salesforce Pardot is being used as a source.</p>
    # @!attribute object
    #   <p>The object specified in the Salesforce Pardot flow source.</p>
    #   @return [String]
    class PardotSourceProperties < Struct.new(
      :object,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module PathPrefix
      EXECUTION_ID = 'EXECUTION_ID'
      SCHEMA_VERSION = 'SCHEMA_VERSION'
    end

    # <p>Specifies elements that Amazon AppFlow includes in the file and folder names in the flow
    #       destination.</p>
    # @!attribute prefix_type
    #   <p>Determines the format of the prefix, and whether it applies to the file name, file path,
    #         or both. </p>
    #   @return [String]
    # @!attribute prefix_format
    #   <p>Determines the level of granularity for the date and time that's included in the prefix.
    #       </p>
    #   @return [String]
    # @!attribute path_prefix_hierarchy
    #   <p>Specifies whether the destination file path includes either or both of the following
    #         elements:</p>
    #            <dl>
    #               <dt>EXECUTION_ID</dt>
    #               <dd>
    #                  <p>The ID that Amazon AppFlow assigns to the flow run.</p>
    #               </dd>
    #               <dt>SCHEMA_VERSION</dt>
    #               <dd>
    #                  <p>The version number of your data schema. Amazon AppFlow assigns this version
    #               number. The version number increases by one when you change any of the following
    #               settings in your flow configuration:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Source-to-destination field mappings</p>
    #                     </li>
    #                     <li>
    #                        <p>Field data types</p>
    #                     </li>
    #                     <li>
    #                        <p>Partition keys</p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #            </dl>
    #   @return [Array<String>]
    class PrefixConfig < Struct.new(
      :prefix_type,
      :prefix_format,
      :path_prefix_hierarchy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module PrefixFormat
      YEAR = 'YEAR'
      MONTH = 'MONTH'
      DAY = 'DAY'
      HOUR = 'HOUR'
      MINUTE = 'MINUTE'
    end

    module PrefixType
      FILENAME = 'FILENAME'
      PATH = 'PATH'
      PATH_AND_FILENAME = 'PATH_AND_FILENAME'
    end

    module PrivateConnectionProvisioningFailureCause
      CONNECTOR_AUTHENTICATION = 'CONNECTOR_AUTHENTICATION'
      CONNECTOR_SERVER = 'CONNECTOR_SERVER'
      INTERNAL_SERVER = 'INTERNAL_SERVER'
      ACCESS_DENIED = 'ACCESS_DENIED'
      VALIDATION = 'VALIDATION'
    end

    # <p> Specifies the private connection provisioning state. </p>
    # @!attribute status
    #   <p> Specifies the private connection provisioning status. </p>
    #   @return [String]
    # @!attribute failure_message
    #   <p> Specifies the private connection provisioning failure reason. </p>
    #   @return [String]
    # @!attribute failure_cause
    #   <p> Specifies the private connection provisioning failure cause. </p>
    #   @return [String]
    class PrivateConnectionProvisioningState < Struct.new(
      :status,
      :failure_message,
      :failure_cause,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module PrivateConnectionProvisioningStatus
      FAILED = 'FAILED'
      PENDING = 'PENDING'
      CREATED = 'CREATED'
    end

    # <p>The range of values that the property supports.</p>
    # @!attribute maximum
    #   <p>Maximum value supported by the field.</p>
    #   @return [Float]
    # @!attribute minimum
    #   <p>Minimum value supported by the field.</p>
    #   @return [Float]
    class Range < Struct.new(
      :maximum,
      :minimum,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:maximum] = 0 unless options.key?(:maximum)
        options[:minimum] = 0 unless options.key?(:minimum)
        super
      end
    end

    # <p> The connector-specific profile credentials required when using Amazon Redshift. </p>
    # @!attribute username
    #   <p> The name of the user. </p>
    #   @return [String]
    # @!attribute password
    #   <p> The password that corresponds to the user name. </p>
    #   @return [String]
    class RedshiftConnectorProfileCredentials < Struct.new(
      :username,
      :password,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector-specific profile properties when using Amazon Redshift. </p>
    # @!attribute database_url
    #   <p> The JDBC URL of the Amazon Redshift cluster. </p>
    #   @return [String]
    # @!attribute bucket_name
    #   <p> A name for the associated Amazon S3 bucket. </p>
    #   @return [String]
    # @!attribute bucket_prefix
    #   <p> The object key for the destination bucket in which Amazon AppFlow places the files.
    #       </p>
    #   @return [String]
    # @!attribute role_arn
    #   <p> The Amazon Resource Name (ARN) of IAM role that grants Amazon Redshift
    #         read-only access to Amazon S3. For more information, and for the polices that you
    #         attach to this role, see <a href="https://docs.aws.amazon.com/appflow/latest/userguide/security_iam_service-role-policies.html#redshift-access-s3">Allow Amazon Redshift to access your Amazon AppFlow data in Amazon S3</a>.</p>
    #   @return [String]
    # @!attribute data_api_role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that permits Amazon AppFlow to access your Amazon Redshift database through the Data API. For more
    #         information, and for the polices that you attach to this role, see <a href="https://docs.aws.amazon.com/appflow/latest/userguide/security_iam_service-role-policies.html#access-redshift">Allow Amazon AppFlow to access Amazon Redshift databases with the Data
    #           API</a>.</p>
    #   @return [String]
    # @!attribute is_redshift_serverless
    #   <p>Indicates whether the connector profile defines a connection to an Amazon Redshift
    #         Serverless data warehouse.</p>
    #   @return [Boolean]
    # @!attribute cluster_identifier
    #   <p>The unique ID that's assigned to an Amazon Redshift cluster.</p>
    #   @return [String]
    # @!attribute workgroup_name
    #   <p>The name of an Amazon Redshift workgroup.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of an Amazon Redshift database.</p>
    #   @return [String]
    class RedshiftConnectorProfileProperties < Struct.new(
      :database_url,
      :bucket_name,
      :bucket_prefix,
      :role_arn,
      :data_api_role_arn,
      :is_redshift_serverless,
      :cluster_identifier,
      :workgroup_name,
      :database_name,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_redshift_serverless] = false unless options.key?(:is_redshift_serverless)
        super
      end
    end

    # <p> The properties that are applied when Amazon Redshift is being used as a destination.
    #     </p>
    # @!attribute object
    #   <p> The object specified in the Amazon Redshift flow destination. </p>
    #   @return [String]
    # @!attribute intermediate_bucket_name
    #   <p> The intermediate bucket that Amazon AppFlow uses when moving data into Amazon Redshift. </p>
    #   @return [String]
    # @!attribute bucket_prefix
    #   <p> The object key for the bucket in which Amazon AppFlow places the destination files.
    #       </p>
    #   @return [String]
    # @!attribute error_handling_config
    #   <p> The settings that determine how Amazon AppFlow handles an error when placing data in
    #         the Amazon Redshift destination. For example, this setting would determine if the flow
    #         should fail after one insertion error, or continue and attempt to insert every record
    #         regardless of the initial failure. <code>ErrorHandlingConfig</code> is a part of the
    #         destination connector details. </p>
    #   @return [Types::ErrorHandlingConfig]
    class RedshiftDestinationProperties < Struct.new(
      :object,
      :intermediate_bucket_name,
      :bucket_prefix,
      :error_handling_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector metadata specific to Amazon Redshift. </p>
    class RedshiftMetadata < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_label
    #   <p> The name of the connector. The name is unique for each <code>ConnectorRegistration</code>
    #         in your Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description about the connector that's being registered.</p>
    #   @return [String]
    # @!attribute connector_provisioning_type
    #   <p>The provisioning type of the connector. Currently the only supported value is LAMBDA.
    #       </p>
    #   @return [String]
    # @!attribute connector_provisioning_config
    #   <p>The provisioning type of the connector. Currently the only supported value is
    #         LAMBDA.</p>
    #   @return [Types::ConnectorProvisioningConfig]
    # @!attribute client_token
    #   <p>The <code>clientToken</code> parameter is an idempotency token. It ensures that your
    #           <code>RegisterConnector</code> request completes only once. You choose the value to pass.
    #         For example, if you don't receive a response from your request, you can safely retry the
    #         request with the same <code>clientToken</code> parameter value.</p>
    #            <p>If you omit a <code>clientToken</code> value, the Amazon Web Services SDK that you are
    #         using inserts a value for you. This way, the SDK can safely retry requests multiple times
    #         after a network error. You must provide your own value for other use cases.</p>
    #            <p>If you specify input parameters that differ from your first request, an error occurs. If
    #         you use a different value for <code>clientToken</code>, Amazon AppFlow considers it a new
    #         call to <code>RegisterConnector</code>. The token is active for 8 hours.</p>
    #   @return [String]
    class RegisterConnectorRequest < Struct.new(
      :connector_label,
      :description,
      :connector_provisioning_type,
      :connector_provisioning_config,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_arn
    #   <p>The ARN of the connector being registered.</p>
    #   @return [String]
    class RegisterConnectorResponse < Struct.new(
      :connector_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the status of an attempt from Amazon AppFlow to register a resource.</p>
    #          <p>When you run a flow that you've configured to use a metadata catalog, Amazon AppFlow
    #       registers a metadata table and data partitions with that catalog. This operation provides the
    #       status of that registration attempt. The operation also indicates how many related resources
    #         Amazon AppFlow created or updated.</p>
    # @!attribute message
    #   <p>Explains the status of the registration attempt from Amazon AppFlow. If the attempt
    #         fails, the message explains why.</p>
    #   @return [String]
    # @!attribute result
    #   <p>Indicates the number of resources that Amazon AppFlow created or updated. Possible
    #         resources include metadata tables and data partitions.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates the status of the registration attempt from Amazon AppFlow.</p>
    #   @return [String]
    class RegistrationOutput < Struct.new(
      :message,
      :result,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_profile_name
    #   <p>The name of the connector profile that you want to reset cached metadata for.</p>
    #            <p>You can omit this parameter if you're resetting the cache for any of the following
    #         connectors: Amazon Connect, Amazon EventBridge, Amazon Lookout for Metrics, Amazon S3, or Upsolver. If you're resetting the cache for any other connector, you must include this
    #         parameter in your request.</p>
    #   @return [String]
    # @!attribute connector_type
    #   <p>The type of connector to reset cached metadata for.</p>
    #            <p>You must include this parameter in your request if you're resetting the cache for any of
    #         the following connectors: Amazon Connect, Amazon EventBridge, Amazon Lookout for Metrics,
    #           Amazon S3, or Upsolver. If you're resetting the cache for any other connector, you
    #         can omit this parameter from your request. </p>
    #   @return [String]
    # @!attribute connector_entity_name
    #   <p>Use this parameter if you want to reset cached metadata about the details for an
    #         individual entity.</p>
    #            <p>If you don't include this parameter in your request, Amazon AppFlow only resets
    #         cached metadata about entity names, not entity details.</p>
    #   @return [String]
    # @!attribute entities_path
    #   <p>Use this parameter only if you’re resetting the cached metadata about a nested entity.
    #         Only some connectors support nested entities. A nested entity is one that has another entity
    #         as a parent. To use this parameter, specify the name of the parent entity.</p>
    #            <p>To look up the parent-child relationship of entities, you can send a ListConnectorEntities
    #         request that omits the entitiesPath parameter. Amazon AppFlow will return a list of
    #         top-level entities. For each one, it indicates whether the entity has nested entities. Then,
    #         in a subsequent ListConnectorEntities request, you can specify a parent entity name for the
    #         entitiesPath parameter. Amazon AppFlow will return a list of the child entities for that
    #         parent.</p>
    #   @return [String]
    # @!attribute api_version
    #   <p>The API version that you specified in the connector profile that you’re resetting cached
    #         metadata for. You must use this parameter only if the connector supports multiple API versions
    #         or if the connector type is CustomConnector.</p>
    #            <p>To look up how many versions a connector supports, use the DescribeConnectors action. In
    #         the response, find the value that Amazon AppFlow returns for the connectorVersion
    #         parameter.</p>
    #            <p>To look up the connector type, use the DescribeConnectorProfiles action. In the response,
    #         find the value that Amazon AppFlow returns for the connectorType parameter.</p>
    #            <p>To look up the API version that you specified in a connector profile, use the
    #         DescribeConnectorProfiles action.</p>
    #   @return [String]
    class ResetConnectorMetadataCacheRequest < Struct.new(
      :connector_profile_name,
      :connector_type,
      :connector_entity_name,
      :entities_path,
      :api_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class ResetConnectorMetadataCacheResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The resource specified in the request (such as the source or destination connector
    #       profile) is not found. </p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module S3ConnectorOperator
      PROJECTION = 'PROJECTION'
      LESS_THAN = 'LESS_THAN'
      GREATER_THAN = 'GREATER_THAN'
      BETWEEN = 'BETWEEN'
      LESS_THAN_OR_EQUAL_TO = 'LESS_THAN_OR_EQUAL_TO'
      GREATER_THAN_OR_EQUAL_TO = 'GREATER_THAN_OR_EQUAL_TO'
      EQUAL_TO = 'EQUAL_TO'
      NOT_EQUAL_TO = 'NOT_EQUAL_TO'
      ADDITION = 'ADDITION'
      MULTIPLICATION = 'MULTIPLICATION'
      DIVISION = 'DIVISION'
      SUBTRACTION = 'SUBTRACTION'
      MASK_ALL = 'MASK_ALL'
      MASK_FIRST_N = 'MASK_FIRST_N'
      MASK_LAST_N = 'MASK_LAST_N'
      VALIDATE_NON_NULL = 'VALIDATE_NON_NULL'
      VALIDATE_NON_ZERO = 'VALIDATE_NON_ZERO'
      VALIDATE_NON_NEGATIVE = 'VALIDATE_NON_NEGATIVE'
      VALIDATE_NUMERIC = 'VALIDATE_NUMERIC'
      NO_OP = 'NO_OP'
    end

    # <p> The properties that are applied when Amazon S3 is used as a destination. </p>
    # @!attribute bucket_name
    #   <p> The Amazon S3 bucket name in which Amazon AppFlow places the transferred
    #         data. </p>
    #   @return [String]
    # @!attribute bucket_prefix
    #   <p> The object key for the destination bucket in which Amazon AppFlow places the files.
    #       </p>
    #   @return [String]
    # @!attribute s3_output_format_config
    #   <p> The configuration that determines how Amazon AppFlow should format the flow output
    #         data when Amazon S3 is used as the destination. </p>
    #   @return [Types::S3OutputFormatConfig]
    class S3DestinationProperties < Struct.new(
      :bucket_name,
      :bucket_prefix,
      :s3_output_format_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module S3InputFileType
      CSV = 'CSV'
      JSON = 'JSON'
    end

    # <p> When you use Amazon S3 as the source, the configuration format that you provide
    #       the flow input data. </p>
    # @!attribute s3_input_file_type
    #   <p> The file type that Amazon AppFlow gets from your Amazon S3 bucket. </p>
    #   @return [String]
    class S3InputFormatConfig < Struct.new(
      :s3_input_file_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector metadata specific to Amazon S3. </p>
    class S3Metadata < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The configuration that determines how Amazon AppFlow should format the flow output
    #       data when Amazon S3 is used as the destination. </p>
    # @!attribute file_type
    #   <p> Indicates the file type that Amazon AppFlow places in the Amazon S3 bucket.
    #       </p>
    #   @return [String]
    # @!attribute prefix_config
    #   <p> Determines the prefix that Amazon AppFlow applies to the folder name in the Amazon S3 bucket. You can name folders according to the flow frequency and date. </p>
    #   @return [Types::PrefixConfig]
    # @!attribute aggregation_config
    #   <p> The aggregation settings that you can use to customize the output format of your flow
    #         data. </p>
    #   @return [Types::AggregationConfig]
    # @!attribute preserve_source_data_typing
    #   <p>If your file output format is Parquet, use this parameter to set whether Amazon AppFlow preserves the data types in your source data when it writes the output to Amazon S3. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>true</code>: Amazon AppFlow preserves the data types when it writes to
    #               Amazon S3. For example, an integer or <code>1</code> in your source data is
    #             still an integer in your output.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>false</code>: Amazon AppFlow converts all of the source data into strings
    #             when it writes to Amazon S3. For example, an integer of <code>1</code> in your
    #             source data becomes the string <code>"1"</code> in the output.</p>
    #               </li>
    #            </ul>
    #   @return [Boolean]
    class S3OutputFormatConfig < Struct.new(
      :file_type,
      :prefix_config,
      :aggregation_config,
      :preserve_source_data_typing,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The properties that are applied when Amazon S3 is being used as the flow source.
    #     </p>
    # @!attribute bucket_name
    #   <p> The Amazon S3 bucket name where the source files are stored. </p>
    #   @return [String]
    # @!attribute bucket_prefix
    #   <p> The object key for the Amazon S3 bucket in which the source files are stored.
    #       </p>
    #   @return [String]
    # @!attribute s3_input_format_config
    #   <p> When you use Amazon S3 as the source, the configuration format that you provide
    #         the flow input data. </p>
    #   @return [Types::S3InputFormatConfig]
    class S3SourceProperties < Struct.new(
      :bucket_name,
      :bucket_prefix,
      :s3_input_format_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SAPODataConnectorOperator
      PROJECTION = 'PROJECTION'
      LESS_THAN = 'LESS_THAN'
      CONTAINS = 'CONTAINS'
      GREATER_THAN = 'GREATER_THAN'
      BETWEEN = 'BETWEEN'
      LESS_THAN_OR_EQUAL_TO = 'LESS_THAN_OR_EQUAL_TO'
      GREATER_THAN_OR_EQUAL_TO = 'GREATER_THAN_OR_EQUAL_TO'
      EQUAL_TO = 'EQUAL_TO'
      NOT_EQUAL_TO = 'NOT_EQUAL_TO'
      ADDITION = 'ADDITION'
      MULTIPLICATION = 'MULTIPLICATION'
      DIVISION = 'DIVISION'
      SUBTRACTION = 'SUBTRACTION'
      MASK_ALL = 'MASK_ALL'
      MASK_FIRST_N = 'MASK_FIRST_N'
      MASK_LAST_N = 'MASK_LAST_N'
      VALIDATE_NON_NULL = 'VALIDATE_NON_NULL'
      VALIDATE_NON_ZERO = 'VALIDATE_NON_ZERO'
      VALIDATE_NON_NEGATIVE = 'VALIDATE_NON_NEGATIVE'
      VALIDATE_NUMERIC = 'VALIDATE_NUMERIC'
      NO_OP = 'NO_OP'
    end

    # <p> The connector-specific profile credentials required when using SAPOData. </p>
    # @!attribute basic_auth_credentials
    #   <p> The SAPOData basic authentication credentials. </p>
    #   @return [Types::BasicAuthCredentials]
    # @!attribute o_auth_credentials
    #   <p> The SAPOData OAuth type authentication credentials. </p>
    #   @return [Types::OAuthCredentials]
    class SAPODataConnectorProfileCredentials < Struct.new(
      :basic_auth_credentials,
      :o_auth_credentials,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector-specific profile properties required when using SAPOData. </p>
    # @!attribute application_host_url
    #   <p> The location of the SAPOData resource. </p>
    #   @return [String]
    # @!attribute application_service_path
    #   <p> The application path to catalog service. </p>
    #   @return [String]
    # @!attribute port_number
    #   <p> The port number of the SAPOData instance. </p>
    #   @return [Integer]
    # @!attribute client_number
    #   <p> The client number for the client creating the connection. </p>
    #   @return [String]
    # @!attribute logon_language
    #   <p> The logon language of SAPOData instance. </p>
    #   @return [String]
    # @!attribute private_link_service_name
    #   <p> The SAPOData Private Link service name to be used for private data transfers. </p>
    #   @return [String]
    # @!attribute o_auth_properties
    #   <p> The SAPOData OAuth properties required for OAuth type authentication. </p>
    #   @return [Types::OAuthProperties]
    # @!attribute disable_sso
    #   <p>If you set this parameter to <code>true</code>, Amazon AppFlow bypasses the single
    #         sign-on (SSO) settings in your SAP account when it accesses your SAP OData instance.</p>
    #            <p>Whether you need this option depends on the types of credentials that you applied to your
    #         SAP OData connection profile. If your profile uses basic authentication credentials, SAP SSO
    #         can prevent Amazon AppFlow from connecting to your account with your username and
    #         password. In this case, bypassing SSO makes it possible for Amazon AppFlow to connect
    #         successfully. However, if your profile uses OAuth credentials, this parameter has no
    #         affect.</p>
    #   @return [Boolean]
    class SAPODataConnectorProfileProperties < Struct.new(
      :application_host_url,
      :application_service_path,
      :port_number,
      :client_number,
      :logon_language,
      :private_link_service_name,
      :o_auth_properties,
      :disable_sso,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:disable_sso] = false unless options.key?(:disable_sso)
        super
      end
    end

    # <p>The properties that are applied when using SAPOData as a flow destination</p>
    # @!attribute object_path
    #   <p>The object path specified in the SAPOData flow destination.</p>
    #   @return [String]
    # @!attribute success_response_handling_config
    #   <p>Determines how Amazon AppFlow handles the success response that it gets from the
    #         connector after placing data.</p>
    #            <p>For example, this setting would determine where to write the response from a destination
    #         connector upon a successful insert operation.</p>
    #   @return [Types::SuccessResponseHandlingConfig]
    # @!attribute id_field_names
    #   <p> A list of field names that can be used as an ID field when performing a write operation.
    #       </p>
    #   @return [Array<String>]
    # @!attribute error_handling_config
    #   <p> The settings that determine how Amazon AppFlow handles an error when placing data in
    #         the destination. For example, this setting would determine if the flow should fail after one
    #         insertion error, or continue and attempt to insert every record regardless of the initial
    #         failure. <code>ErrorHandlingConfig</code> is a part of the destination connector details.
    #       </p>
    #   @return [Types::ErrorHandlingConfig]
    # @!attribute write_operation_type
    #   <p> The possible write operations in the destination connector. When this value is not
    #         provided, this defaults to the <code>INSERT</code> operation. </p>
    #   @return [String]
    class SAPODataDestinationProperties < Struct.new(
      :object_path,
      :success_response_handling_config,
      :id_field_names,
      :error_handling_config,
      :write_operation_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector metadata specific to SAPOData. </p>
    class SAPODataMetadata < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Sets the page size for each <i>concurrent process</i> that transfers OData
    #       records from your SAP instance. A concurrent process is query that retrieves a batch of
    #       records as part of a flow run. Amazon AppFlow can run multiple concurrent processes in
    #       parallel to transfer data faster.</p>
    # @!attribute max_page_size
    #   <p>The maximum number of records that Amazon AppFlow receives in each page of the
    #         response from your SAP application. For transfers of OData records, the maximum page size is
    #         3,000. For transfers of data that comes from an ODP provider, the maximum page size
    #         is 10,000.</p>
    #   @return [Integer]
    class SAPODataPaginationConfig < Struct.new(
      :max_page_size,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Sets the number of <i>concurrent processes</i> that transfer OData records
    #       from your SAP instance. A concurrent process is query that retrieves a batch of records as
    #       part of a flow run. Amazon AppFlow can run multiple concurrent processes in parallel to
    #       transfer data faster.</p>
    # @!attribute max_parallelism
    #   <p>The maximum number of processes that Amazon AppFlow runs at the same time when it
    #         retrieves your data from your SAP application.</p>
    #   @return [Integer]
    class SAPODataParallelismConfig < Struct.new(
      :max_parallelism,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The properties that are applied when using SAPOData as a flow source. </p>
    # @!attribute object_path
    #   <p> The object path specified in the SAPOData flow source. </p>
    #   @return [String]
    # @!attribute parallelism_config
    #   <p>Sets the number of concurrent processes that transfers OData records from your SAP
    #         instance.</p>
    #   @return [Types::SAPODataParallelismConfig]
    # @!attribute pagination_config
    #   <p>Sets the page size for each concurrent process that transfers OData records from your SAP
    #         instance.</p>
    #   @return [Types::SAPODataPaginationConfig]
    class SAPODataSourceProperties < Struct.new(
      :object_path,
      :parallelism_config,
      :pagination_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SalesforceConnectorOperator
      PROJECTION = 'PROJECTION'
      LESS_THAN = 'LESS_THAN'
      CONTAINS = 'CONTAINS'
      GREATER_THAN = 'GREATER_THAN'
      BETWEEN = 'BETWEEN'
      LESS_THAN_OR_EQUAL_TO = 'LESS_THAN_OR_EQUAL_TO'
      GREATER_THAN_OR_EQUAL_TO = 'GREATER_THAN_OR_EQUAL_TO'
      EQUAL_TO = 'EQUAL_TO'
      NOT_EQUAL_TO = 'NOT_EQUAL_TO'
      ADDITION = 'ADDITION'
      MULTIPLICATION = 'MULTIPLICATION'
      DIVISION = 'DIVISION'
      SUBTRACTION = 'SUBTRACTION'
      MASK_ALL = 'MASK_ALL'
      MASK_FIRST_N = 'MASK_FIRST_N'
      MASK_LAST_N = 'MASK_LAST_N'
      VALIDATE_NON_NULL = 'VALIDATE_NON_NULL'
      VALIDATE_NON_ZERO = 'VALIDATE_NON_ZERO'
      VALIDATE_NON_NEGATIVE = 'VALIDATE_NON_NEGATIVE'
      VALIDATE_NUMERIC = 'VALIDATE_NUMERIC'
      NO_OP = 'NO_OP'
    end

    # <p> The connector-specific profile credentials required when using Salesforce. </p>
    # @!attribute access_token
    #   <p> The credentials used to access protected Salesforce resources. </p>
    #   @return [String]
    # @!attribute refresh_token
    #   <p> The credentials used to acquire new access tokens. </p>
    #   @return [String]
    # @!attribute o_auth_request
    #   <p> The OAuth requirement needed to request security tokens from the connector endpoint.
    #       </p>
    #   @return [Types::ConnectorOAuthRequest]
    # @!attribute client_credentials_arn
    #   <p> The secret manager ARN, which contains the client ID and client secret of the connected
    #         app. </p>
    #   @return [String]
    # @!attribute o_auth2_grant_type
    #   <p>Specifies the OAuth 2.0 grant type that Amazon AppFlow uses when it requests an
    #         access token from Salesforce. Amazon AppFlow requires an access token each time it
    #         attempts to access your Salesforce records.</p>
    #            <p>You can specify one of the following values:</p>
    #            <dl>
    #               <dt>AUTHORIZATION_CODE</dt>
    #               <dd>
    #                  <p>Amazon AppFlow passes an authorization code when it requests the access token
    #               from Salesforce. Amazon AppFlow receives the authorization code from Salesforce
    #               after you log in to your Salesforce account and authorize Amazon AppFlow to access
    #               your records.</p>
    #               </dd>
    #               <dt>JWT_BEARER</dt>
    #               <dd>
    #                  <p>Amazon AppFlow passes a JSON web token (JWT) when it requests the access token
    #               from Salesforce. You provide the JWT to Amazon AppFlow when you define the
    #               connection to your Salesforce account. When you use this grant type, you don't need to
    #               log in to your Salesforce account to authorize Amazon AppFlow to access your
    #               records.</p>
    #               </dd>
    #            </dl>
    #            <note>
    #               <p>The CLIENT_CREDENTIALS value is not supported for Salesforce.</p>
    #            </note>
    #   @return [String]
    # @!attribute jwt_token
    #   <p>A JSON web token (JWT) that authorizes Amazon AppFlow to access your Salesforce
    #         records.</p>
    #   @return [String]
    class SalesforceConnectorProfileCredentials < Struct.new(
      :access_token,
      :refresh_token,
      :o_auth_request,
      :client_credentials_arn,
      :o_auth2_grant_type,
      :jwt_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector-specific profile properties required when using Salesforce. </p>
    # @!attribute instance_url
    #   <p> The location of the Salesforce resource. </p>
    #   @return [String]
    # @!attribute is_sandbox_environment
    #   <p> Indicates whether the connector profile applies to a sandbox or production environment.
    #       </p>
    #   @return [Boolean]
    # @!attribute use_private_link_for_metadata_and_authorization
    #   <p>If the connection mode for the connector profile is private, this parameter sets whether
    #           Amazon AppFlow uses the private network to send metadata and authorization calls to
    #         Salesforce. Amazon AppFlow sends private calls through Amazon Web Services PrivateLink. These
    #         calls travel through Amazon Web Services infrastructure without being exposed to the public
    #         internet.</p>
    #            <p>Set either of the following values:</p>
    #            <dl>
    #               <dt>true</dt>
    #               <dd>
    #                  <p>Amazon AppFlow sends all calls to Salesforce over the private network.</p>
    #                  <p>These private calls are:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Calls to get metadata about your Salesforce records. This metadata describes
    #                   your Salesforce objects and their fields.</p>
    #                     </li>
    #                     <li>
    #                        <p>Calls to get or refresh access tokens that allow Amazon AppFlow to access
    #                   your Salesforce records.</p>
    #                     </li>
    #                     <li>
    #                        <p>Calls to transfer your Salesforce records as part of a flow run.</p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>false</dt>
    #               <dd>
    #                  <p>The default value. Amazon AppFlow sends some calls to Salesforce privately and
    #               other calls over the public internet.</p>
    #                  <p>The public calls are: </p>
    #                  <ul>
    #                     <li>
    #                        <p>Calls to get metadata about your Salesforce records.</p>
    #                     </li>
    #                     <li>
    #                        <p>Calls to get or refresh access tokens.</p>
    #                     </li>
    #                  </ul>
    #                  <p>The private calls are:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Calls to transfer your Salesforce records as part of a flow run.</p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #            </dl>
    #   @return [Boolean]
    class SalesforceConnectorProfileProperties < Struct.new(
      :instance_url,
      :is_sandbox_environment,
      :use_private_link_for_metadata_and_authorization,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_sandbox_environment] = false unless options.key?(:is_sandbox_environment)
        options[:use_private_link_for_metadata_and_authorization] = false unless options.key?(:use_private_link_for_metadata_and_authorization)
        super
      end
    end

    module SalesforceDataTransferApi
      AUTOMATIC = 'AUTOMATIC'
      BULKV2 = 'BULKV2'
      REST_SYNC = 'REST_SYNC'
    end

    # <p> The properties that are applied when Salesforce is being used as a destination. </p>
    # @!attribute object
    #   <p> The object specified in the Salesforce flow destination. </p>
    #   @return [String]
    # @!attribute id_field_names
    #   <p> The name of the field that Amazon AppFlow uses as an ID when performing a write
    #         operation such as update or delete. </p>
    #   @return [Array<String>]
    # @!attribute error_handling_config
    #   <p> The settings that determine how Amazon AppFlow handles an error when placing data in
    #         the Salesforce destination. For example, this setting would determine if the flow should fail
    #         after one insertion error, or continue and attempt to insert every record regardless of the
    #         initial failure. <code>ErrorHandlingConfig</code> is a part of the destination connector
    #         details. </p>
    #   @return [Types::ErrorHandlingConfig]
    # @!attribute write_operation_type
    #   <p> This specifies the type of write operation to be performed in Salesforce. When the value
    #         is <code>UPSERT</code>, then <code>idFieldNames</code> is required. </p>
    #   @return [String]
    # @!attribute data_transfer_api
    #   <p>Specifies which Salesforce API is used by Amazon AppFlow when your flow transfers
    #         data to Salesforce.</p>
    #            <dl>
    #               <dt>AUTOMATIC</dt>
    #               <dd>
    #                  <p>The default. Amazon AppFlow selects which API to use based on the number of
    #               records that your flow transfers to Salesforce. If your flow transfers fewer than 1,000
    #               records, Amazon AppFlow uses Salesforce REST API. If your flow transfers 1,000
    #               records or more, Amazon AppFlow uses Salesforce Bulk API 2.0.</p>
    #                  <p>Each of these Salesforce APIs structures data differently. If Amazon AppFlow
    #               selects the API automatically, be aware that, for recurring flows, the data output might
    #               vary from one flow run to the next. For example, if a flow runs daily, it might use REST
    #               API on one day to transfer 900 records, and it might use Bulk API 2.0 on the next day to
    #               transfer 1,100 records. For each of these flow runs, the respective Salesforce API
    #               formats the data differently. Some of the differences include how dates are formatted
    #               and null values are represented. Also, Bulk API 2.0 doesn't transfer Salesforce compound
    #               fields.</p>
    #                  <p>By choosing this option, you optimize flow performance for both small and large data
    #               transfers, but the tradeoff is inconsistent formatting in the output.</p>
    #               </dd>
    #               <dt>BULKV2</dt>
    #               <dd>
    #                  <p>Amazon AppFlow uses only Salesforce Bulk API 2.0. This API runs asynchronous
    #               data transfers, and it's optimal for large sets of data. By choosing this option, you
    #               ensure that your flow writes consistent output, but you optimize performance only for
    #               large data transfers.</p>
    #                  <p>Note that Bulk API 2.0 does not transfer Salesforce compound fields.</p>
    #               </dd>
    #               <dt>REST_SYNC</dt>
    #               <dd>
    #                  <p>Amazon AppFlow uses only Salesforce REST API. By choosing this option, you
    #               ensure that your flow writes consistent output, but you decrease performance for large
    #               data transfers that are better suited for Bulk API 2.0. In some cases, if your flow
    #               attempts to transfer a vary large set of data, it might fail with a timed out
    #               error.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    class SalesforceDestinationProperties < Struct.new(
      :object,
      :id_field_names,
      :error_handling_config,
      :write_operation_type,
      :data_transfer_api,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector metadata specific to Salesforce. </p>
    # @!attribute o_auth_scopes
    #   <p> The desired authorization scope for the Salesforce account. </p>
    #   @return [Array<String>]
    # @!attribute data_transfer_apis
    #   <p>The Salesforce APIs that you can have Amazon AppFlow use when your flows transfers
    #         data to or from Salesforce.</p>
    #   @return [Array<String>]
    # @!attribute oauth2_grant_types_supported
    #   <p>The OAuth 2.0 grant types that Amazon AppFlow can use when it requests an access
    #         token from Salesforce. Amazon AppFlow requires an access token each time it attempts to
    #         access your Salesforce records.</p>
    #            <dl>
    #               <dt>AUTHORIZATION_CODE</dt>
    #               <dd>
    #                  <p>Amazon AppFlow passes an authorization code when it requests the access token
    #               from Salesforce. Amazon AppFlow receives the authorization code from Salesforce
    #               after you log in to your Salesforce account and authorize Amazon AppFlow to access
    #               your records.</p>
    #               </dd>
    #               <dt>JWT_BEARER</dt>
    #               <dd>
    #                  <p>Amazon AppFlow passes a JSON web token (JWT) when it requests the access token
    #               from Salesforce. You provide the JWT to Amazon AppFlow when you define the
    #               connection to your Salesforce account. When you use this grant type, you don't need to
    #               log in to your Salesforce account to authorize Amazon AppFlow to access your
    #               records.</p>
    #               </dd>
    #            </dl>
    #            <note>
    #               <p>The CLIENT_CREDENTIALS value is not supported for Salesforce.</p>
    #            </note>
    #   @return [Array<String>]
    class SalesforceMetadata < Struct.new(
      :o_auth_scopes,
      :data_transfer_apis,
      :oauth2_grant_types_supported,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The properties that are applied when Salesforce is being used as a source. </p>
    # @!attribute object
    #   <p> The object specified in the Salesforce flow source. </p>
    #   @return [String]
    # @!attribute enable_dynamic_field_update
    #   <p> The flag that enables dynamic fetching of new (recently added) fields in the Salesforce
    #         objects while running a flow. </p>
    #   @return [Boolean]
    # @!attribute include_deleted_records
    #   <p> Indicates whether Amazon AppFlow includes deleted files in the flow run. </p>
    #   @return [Boolean]
    # @!attribute data_transfer_api
    #   <p>Specifies which Salesforce API is used by Amazon AppFlow when your flow transfers
    #         data from Salesforce.</p>
    #            <dl>
    #               <dt>AUTOMATIC</dt>
    #               <dd>
    #                  <p>The default. Amazon AppFlow selects which API to use based on the number of
    #               records that your flow transfers from Salesforce. If your flow transfers fewer than
    #               1,000,000 records, Amazon AppFlow uses Salesforce REST API. If your flow transfers
    #               1,000,000 records or more, Amazon AppFlow uses Salesforce Bulk API 2.0.</p>
    #                  <p>Each of these Salesforce APIs structures data differently. If Amazon AppFlow
    #               selects the API automatically, be aware that, for recurring flows, the data output might
    #               vary from one flow run to the next. For example, if a flow runs daily, it might use REST
    #               API on one day to transfer 900,000 records, and it might use Bulk API 2.0 on the next
    #               day to transfer 1,100,000 records. For each of these flow runs, the respective
    #               Salesforce API formats the data differently. Some of the differences include how dates
    #               are formatted and null values are represented. Also, Bulk API 2.0 doesn't transfer
    #               Salesforce compound fields.</p>
    #                  <p>By choosing this option, you optimize flow performance for both small and large data
    #               transfers, but the tradeoff is inconsistent formatting in the output.</p>
    #               </dd>
    #               <dt>BULKV2</dt>
    #               <dd>
    #                  <p>Amazon AppFlow uses only Salesforce Bulk API 2.0. This API runs asynchronous
    #               data transfers, and it's optimal for large sets of data. By choosing this option, you
    #               ensure that your flow writes consistent output, but you optimize performance only for
    #               large data transfers.</p>
    #                  <p>Note that Bulk API 2.0 does not transfer Salesforce compound fields.</p>
    #               </dd>
    #               <dt>REST_SYNC</dt>
    #               <dd>
    #                  <p>Amazon AppFlow uses only Salesforce REST API. By choosing this option, you
    #               ensure that your flow writes consistent output, but you decrease performance for large
    #               data transfers that are better suited for Bulk API 2.0. In some cases, if your flow
    #               attempts to transfer a vary large set of data, it might fail wituh a timed out
    #               error.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    class SalesforceSourceProperties < Struct.new(
      :object,
      :enable_dynamic_field_update,
      :include_deleted_records,
      :data_transfer_api,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:enable_dynamic_field_update] = false unless options.key?(:enable_dynamic_field_update)
        options[:include_deleted_records] = false unless options.key?(:include_deleted_records)
        super
      end
    end

    module ScheduleFrequencyType
      BYMINUTE = 'BYMINUTE'
      HOURLY = 'HOURLY'
      DAILY = 'DAILY'
      WEEKLY = 'WEEKLY'
      MONTHLY = 'MONTHLY'
      ONCE = 'ONCE'
    end

    # <p> Specifies the configuration details of a schedule-triggered flow as defined by the user.
    #       Currently, these settings only apply to the <code>Scheduled</code> trigger type. </p>
    # @!attribute schedule_expression
    #   <p> The scheduling expression that determines the rate at which the schedule will run, for
    #         example <code>rate(5minutes)</code>. </p>
    #   @return [String]
    # @!attribute data_pull_mode
    #   <p> Specifies whether a scheduled flow has an incremental data transfer or a complete data
    #         transfer for each flow run. </p>
    #   @return [String]
    # @!attribute schedule_start_time
    #   <p>The time at which the scheduled flow starts. The time is formatted as a timestamp that
    #         follows the ISO 8601 standard, such as <code>2022-04-26T13:00:00-07:00</code>.</p>
    #   @return [Time]
    # @!attribute schedule_end_time
    #   <p>The time at which the scheduled flow ends. The time is formatted as a timestamp that
    #         follows the ISO 8601 standard, such as <code>2022-04-27T13:00:00-07:00</code>.</p>
    #   @return [Time]
    # @!attribute timezone
    #   <p>Specifies the time zone used when referring to the dates and times of a scheduled flow,
    #         such as <code>America/New_York</code>. This time zone is only a descriptive label. It doesn't
    #         affect how Amazon AppFlow interprets the timestamps that you specify to schedule the
    #         flow.</p>
    #            <p>If you want to schedule a flow by using times in a particular time zone, indicate the time
    #         zone as a UTC offset in your timestamps. For example, the UTC offsets for the
    #           <code>America/New_York</code> timezone are <code>-04:00</code> EDT and <code>-05:00
    #           EST</code>.</p>
    #   @return [String]
    # @!attribute schedule_offset
    #   <p> Specifies the optional offset that is added to the time interval for a schedule-triggered
    #         flow. </p>
    #   @return [Integer]
    # @!attribute first_execution_from
    #   <p> Specifies the date range for the records to import from the connector in the first flow
    #         run. </p>
    #   @return [Time]
    # @!attribute flow_error_deactivation_threshold
    #   <p>Defines how many times a scheduled flow fails consecutively before Amazon AppFlow
    #         deactivates it.</p>
    #   @return [Integer]
    class ScheduledTriggerProperties < Struct.new(
      :schedule_expression,
      :data_pull_mode,
      :schedule_start_time,
      :schedule_end_time,
      :timezone,
      :schedule_offset,
      :first_execution_from,
      :flow_error_deactivation_threshold,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:schedule_offset] =  unless options.key?(:schedule_offset)
        super
      end
    end

    module ServiceNowConnectorOperator
      PROJECTION = 'PROJECTION'
      CONTAINS = 'CONTAINS'
      LESS_THAN = 'LESS_THAN'
      GREATER_THAN = 'GREATER_THAN'
      BETWEEN = 'BETWEEN'
      LESS_THAN_OR_EQUAL_TO = 'LESS_THAN_OR_EQUAL_TO'
      GREATER_THAN_OR_EQUAL_TO = 'GREATER_THAN_OR_EQUAL_TO'
      EQUAL_TO = 'EQUAL_TO'
      NOT_EQUAL_TO = 'NOT_EQUAL_TO'
      ADDITION = 'ADDITION'
      MULTIPLICATION = 'MULTIPLICATION'
      DIVISION = 'DIVISION'
      SUBTRACTION = 'SUBTRACTION'
      MASK_ALL = 'MASK_ALL'
      MASK_FIRST_N = 'MASK_FIRST_N'
      MASK_LAST_N = 'MASK_LAST_N'
      VALIDATE_NON_NULL = 'VALIDATE_NON_NULL'
      VALIDATE_NON_ZERO = 'VALIDATE_NON_ZERO'
      VALIDATE_NON_NEGATIVE = 'VALIDATE_NON_NEGATIVE'
      VALIDATE_NUMERIC = 'VALIDATE_NUMERIC'
      NO_OP = 'NO_OP'
    end

    # <p> The connector-specific profile credentials required when using ServiceNow. </p>
    # @!attribute username
    #   <p> The name of the user. </p>
    #   @return [String]
    # @!attribute password
    #   <p> The password that corresponds to the user name. </p>
    #   @return [String]
    # @!attribute o_auth2_credentials
    #   <p> The OAuth 2.0 credentials required to authenticate the user. </p>
    #   @return [Types::OAuth2Credentials]
    class ServiceNowConnectorProfileCredentials < Struct.new(
      :username,
      :password,
      :o_auth2_credentials,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector-specific profile properties required when using ServiceNow. </p>
    # @!attribute instance_url
    #   <p> The location of the ServiceNow resource. </p>
    #   @return [String]
    class ServiceNowConnectorProfileProperties < Struct.new(
      :instance_url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector metadata specific to ServiceNow. </p>
    class ServiceNowMetadata < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The properties that are applied when ServiceNow is being used as a source. </p>
    # @!attribute object
    #   <p> The object specified in the ServiceNow flow source. </p>
    #   @return [String]
    class ServiceNowSourceProperties < Struct.new(
      :object,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The request would cause a service quota (such as the number of flows) to be exceeded.
    #     </p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SingularConnectorOperator
      PROJECTION = 'PROJECTION'
      EQUAL_TO = 'EQUAL_TO'
      ADDITION = 'ADDITION'
      MULTIPLICATION = 'MULTIPLICATION'
      DIVISION = 'DIVISION'
      SUBTRACTION = 'SUBTRACTION'
      MASK_ALL = 'MASK_ALL'
      MASK_FIRST_N = 'MASK_FIRST_N'
      MASK_LAST_N = 'MASK_LAST_N'
      VALIDATE_NON_NULL = 'VALIDATE_NON_NULL'
      VALIDATE_NON_ZERO = 'VALIDATE_NON_ZERO'
      VALIDATE_NON_NEGATIVE = 'VALIDATE_NON_NEGATIVE'
      VALIDATE_NUMERIC = 'VALIDATE_NUMERIC'
      NO_OP = 'NO_OP'
    end

    # <p> The connector-specific profile credentials required when using Singular. </p>
    # @!attribute api_key
    #   <p> A unique alphanumeric identifier used to authenticate a user, developer, or calling
    #         program to your API. </p>
    #   @return [String]
    class SingularConnectorProfileCredentials < Struct.new(
      :api_key,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector-specific profile properties required when using Singular. </p>
    class SingularConnectorProfileProperties < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector metadata specific to Singular. </p>
    class SingularMetadata < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The properties that are applied when Singular is being used as a source. </p>
    # @!attribute object
    #   <p> The object specified in the Singular flow source. </p>
    #   @return [String]
    class SingularSourceProperties < Struct.new(
      :object,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SlackConnectorOperator
      PROJECTION = 'PROJECTION'
      LESS_THAN = 'LESS_THAN'
      GREATER_THAN = 'GREATER_THAN'
      BETWEEN = 'BETWEEN'
      LESS_THAN_OR_EQUAL_TO = 'LESS_THAN_OR_EQUAL_TO'
      GREATER_THAN_OR_EQUAL_TO = 'GREATER_THAN_OR_EQUAL_TO'
      EQUAL_TO = 'EQUAL_TO'
      ADDITION = 'ADDITION'
      MULTIPLICATION = 'MULTIPLICATION'
      DIVISION = 'DIVISION'
      SUBTRACTION = 'SUBTRACTION'
      MASK_ALL = 'MASK_ALL'
      MASK_FIRST_N = 'MASK_FIRST_N'
      MASK_LAST_N = 'MASK_LAST_N'
      VALIDATE_NON_NULL = 'VALIDATE_NON_NULL'
      VALIDATE_NON_ZERO = 'VALIDATE_NON_ZERO'
      VALIDATE_NON_NEGATIVE = 'VALIDATE_NON_NEGATIVE'
      VALIDATE_NUMERIC = 'VALIDATE_NUMERIC'
      NO_OP = 'NO_OP'
    end

    # <p> The connector-specific profile credentials required when using Slack. </p>
    # @!attribute client_id
    #   <p> The identifier for the client. </p>
    #   @return [String]
    # @!attribute client_secret
    #   <p> The client secret used by the OAuth client to authenticate to the authorization server.
    #       </p>
    #   @return [String]
    # @!attribute access_token
    #   <p> The credentials used to access protected Slack resources. </p>
    #   @return [String]
    # @!attribute o_auth_request
    #   <p> The OAuth requirement needed to request security tokens from the connector endpoint.
    #       </p>
    #   @return [Types::ConnectorOAuthRequest]
    class SlackConnectorProfileCredentials < Struct.new(
      :client_id,
      :client_secret,
      :access_token,
      :o_auth_request,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector-specific profile properties required when using Slack. </p>
    # @!attribute instance_url
    #   <p> The location of the Slack resource. </p>
    #   @return [String]
    class SlackConnectorProfileProperties < Struct.new(
      :instance_url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector metadata specific to Slack. </p>
    # @!attribute o_auth_scopes
    #   <p> The desired authorization scope for the Slack account. </p>
    #   @return [Array<String>]
    class SlackMetadata < Struct.new(
      :o_auth_scopes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The properties that are applied when Slack is being used as a source. </p>
    # @!attribute object
    #   <p> The object specified in the Slack flow source. </p>
    #   @return [String]
    class SlackSourceProperties < Struct.new(
      :object,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector-specific profile credentials required when using Snowflake. </p>
    # @!attribute username
    #   <p> The name of the user. </p>
    #   @return [String]
    # @!attribute password
    #   <p> The password that corresponds to the user name. </p>
    #   @return [String]
    class SnowflakeConnectorProfileCredentials < Struct.new(
      :username,
      :password,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector-specific profile properties required when using Snowflake. </p>
    # @!attribute warehouse
    #   <p> The name of the Snowflake warehouse. </p>
    #   @return [String]
    # @!attribute stage
    #   <p> The name of the Amazon S3 stage that was created while setting up an Amazon S3 stage in the Snowflake account. This is written in the following format: <
    #         Database>< Schema><Stage Name>. </p>
    #   @return [String]
    # @!attribute bucket_name
    #   <p> The name of the Amazon S3 bucket associated with Snowflake. </p>
    #   @return [String]
    # @!attribute bucket_prefix
    #   <p> The bucket path that refers to the Amazon S3 bucket associated with Snowflake.
    #       </p>
    #   @return [String]
    # @!attribute private_link_service_name
    #   <p> The Snowflake Private Link service name to be used for private data transfers. </p>
    #   @return [String]
    # @!attribute account_name
    #   <p> The name of the account. </p>
    #   @return [String]
    # @!attribute region
    #   <p> The Amazon Web Services Region of the Snowflake account. </p>
    #   @return [String]
    class SnowflakeConnectorProfileProperties < Struct.new(
      :warehouse,
      :stage,
      :bucket_name,
      :bucket_prefix,
      :private_link_service_name,
      :account_name,
      :region,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The properties that are applied when Snowflake is being used as a destination. </p>
    # @!attribute object
    #   <p> The object specified in the Snowflake flow destination. </p>
    #   @return [String]
    # @!attribute intermediate_bucket_name
    #   <p> The intermediate bucket that Amazon AppFlow uses when moving data into Snowflake.
    #       </p>
    #   @return [String]
    # @!attribute bucket_prefix
    #   <p> The object key for the destination bucket in which Amazon AppFlow places the files.
    #       </p>
    #   @return [String]
    # @!attribute error_handling_config
    #   <p> The settings that determine how Amazon AppFlow handles an error when placing data in
    #         the Snowflake destination. For example, this setting would determine if the flow should fail
    #         after one insertion error, or continue and attempt to insert every record regardless of the
    #         initial failure. <code>ErrorHandlingConfig</code> is a part of the destination connector
    #         details. </p>
    #   @return [Types::ErrorHandlingConfig]
    class SnowflakeDestinationProperties < Struct.new(
      :object,
      :intermediate_bucket_name,
      :bucket_prefix,
      :error_handling_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector metadata specific to Snowflake. </p>
    # @!attribute supported_regions
    #   <p> Specifies the supported Amazon Web Services Regions when using Snowflake. </p>
    #   @return [Array<String>]
    class SnowflakeMetadata < Struct.new(
      :supported_regions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Specifies the information that is required to query a particular connector. </p>
    # @!attribute amplitude
    #   <p> Specifies the information that is required for querying Amplitude. </p>
    #   @return [Types::AmplitudeSourceProperties]
    # @!attribute datadog
    #   <p> Specifies the information that is required for querying Datadog. </p>
    #   @return [Types::DatadogSourceProperties]
    # @!attribute dynatrace
    #   <p> Specifies the information that is required for querying Dynatrace. </p>
    #   @return [Types::DynatraceSourceProperties]
    # @!attribute google_analytics
    #   <p> Specifies the information that is required for querying Google Analytics. </p>
    #   @return [Types::GoogleAnalyticsSourceProperties]
    # @!attribute infor_nexus
    #   <p> Specifies the information that is required for querying Infor Nexus. </p>
    #   @return [Types::InforNexusSourceProperties]
    # @!attribute marketo
    #   <p> Specifies the information that is required for querying Marketo. </p>
    #   @return [Types::MarketoSourceProperties]
    # @!attribute s3
    #   <p> Specifies the information that is required for querying Amazon S3. </p>
    #   @return [Types::S3SourceProperties]
    # @!attribute salesforce
    #   <p> Specifies the information that is required for querying Salesforce. </p>
    #   @return [Types::SalesforceSourceProperties]
    # @!attribute service_now
    #   <p> Specifies the information that is required for querying ServiceNow. </p>
    #   @return [Types::ServiceNowSourceProperties]
    # @!attribute singular
    #   <p> Specifies the information that is required for querying Singular. </p>
    #   @return [Types::SingularSourceProperties]
    # @!attribute slack
    #   <p> Specifies the information that is required for querying Slack. </p>
    #   @return [Types::SlackSourceProperties]
    # @!attribute trendmicro
    #   <p> Specifies the information that is required for querying Trend Micro. </p>
    #   @return [Types::TrendmicroSourceProperties]
    # @!attribute veeva
    #   <p> Specifies the information that is required for querying Veeva. </p>
    #   @return [Types::VeevaSourceProperties]
    # @!attribute zendesk
    #   <p> Specifies the information that is required for querying Zendesk. </p>
    #   @return [Types::ZendeskSourceProperties]
    # @!attribute sapo_data
    #   <p> The properties that are applied when using SAPOData as a flow source. </p>
    #   @return [Types::SAPODataSourceProperties]
    # @!attribute custom_connector
    #   <p>The properties that are applied when the custom connector is being used as a
    #         source.</p>
    #   @return [Types::CustomConnectorSourceProperties]
    # @!attribute pardot
    #   <p>Specifies the information that is required for querying Salesforce Pardot.</p>
    #   @return [Types::PardotSourceProperties]
    class SourceConnectorProperties < Struct.new(
      :amplitude,
      :datadog,
      :dynatrace,
      :google_analytics,
      :infor_nexus,
      :marketo,
      :s3,
      :salesforce,
      :service_now,
      :singular,
      :slack,
      :trendmicro,
      :veeva,
      :zendesk,
      :sapo_data,
      :custom_connector,
      :pardot,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The properties that can be applied to a field when the connector is being used as a
    #       source. </p>
    # @!attribute is_retrievable
    #   <p> Indicates whether the field can be returned in a search result. </p>
    #   @return [Boolean]
    # @!attribute is_queryable
    #   <p> Indicates if the field can be queried. </p>
    #   @return [Boolean]
    # @!attribute is_timestamp_field_for_incremental_queries
    #   <p>Indicates if this timestamp field can be used for incremental queries.</p>
    #   @return [Boolean]
    class SourceFieldProperties < Struct.new(
      :is_retrievable,
      :is_queryable,
      :is_timestamp_field_for_incremental_queries,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_retrievable] = false unless options.key?(:is_retrievable)
        options[:is_queryable] = false unless options.key?(:is_queryable)
        options[:is_timestamp_field_for_incremental_queries] = false unless options.key?(:is_timestamp_field_for_incremental_queries)
        super
      end
    end

    # <p> Contains information about the configuration of the source connector used in the flow.
    #     </p>
    # @!attribute connector_type
    #   <p> The type of connector, such as Salesforce, Amplitude, and so on. </p>
    #   @return [String]
    # @!attribute api_version
    #   <p>The API version of the connector when it's used as a source in the flow.</p>
    #   @return [String]
    # @!attribute connector_profile_name
    #   <p> The name of the connector profile. This name must be unique for each connector profile in
    #         the Amazon Web Services account. </p>
    #   @return [String]
    # @!attribute source_connector_properties
    #   <p> Specifies the information that is required to query a particular source connector.
    #       </p>
    #   @return [Types::SourceConnectorProperties]
    # @!attribute incremental_pull_config
    #   <p> Defines the configuration for a scheduled incremental data pull. If a valid configuration
    #         is provided, the fields specified in the configuration are used when querying for the
    #         incremental data pull. </p>
    #   @return [Types::IncrementalPullConfig]
    class SourceFlowConfig < Struct.new(
      :connector_type,
      :api_version,
      :connector_profile_name,
      :source_connector_properties,
      :incremental_pull_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_name
    #   <p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens
    #         (-) only. </p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The <code>clientToken</code> parameter is an idempotency token. It ensures that your
    #           <code>StartFlow</code> request completes only once. You choose the value to pass. For
    #         example, if you don't receive a response from your request, you can safely retry the request
    #         with the same <code>clientToken</code> parameter value.</p>
    #            <p>If you omit a <code>clientToken</code> value, the Amazon Web Services SDK that you are
    #         using inserts a value for you. This way, the SDK can safely retry requests multiple times
    #         after a network error. You must provide your own value for other use cases.</p>
    #            <p>If you specify input parameters that differ from your first request, an error occurs for
    #         flows that run on a schedule or based on an event. However, the error doesn't occur for flows
    #         that run on demand. You set the conditions that initiate your flow for the
    #           <code>triggerConfig</code> parameter.</p>
    #            <p>If you use a different value for <code>clientToken</code>, Amazon AppFlow considers
    #         it a new call to <code>StartFlow</code>. The token is active for 8 hours.</p>
    #   @return [String]
    class StartFlowRequest < Struct.new(
      :flow_name,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The flow's Amazon Resource Name (ARN). </p>
    #   @return [String]
    # @!attribute flow_status
    #   <p> Indicates the current status of the flow. </p>
    #   @return [String]
    # @!attribute execution_id
    #   <p> Returns the internal execution ID of an on-demand flow when the flow is started. For
    #         scheduled or event-triggered flows, this value is null. </p>
    #   @return [String]
    class StartFlowResponse < Struct.new(
      :flow_arn,
      :flow_status,
      :execution_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_name
    #   <p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens
    #         (-) only. </p>
    #   @return [String]
    class StopFlowRequest < Struct.new(
      :flow_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The flow's Amazon Resource Name (ARN). </p>
    #   @return [String]
    # @!attribute flow_status
    #   <p> Indicates the current status of the flow. </p>
    #   @return [String]
    class StopFlowResponse < Struct.new(
      :flow_arn,
      :flow_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Determines how Amazon AppFlow handles the success response that it gets from the
    #       connector after placing data.</p>
    #          <p>For example, this setting would determine where to write the response from the destination
    #       connector upon a successful insert operation.</p>
    # @!attribute bucket_prefix
    #   <p>The Amazon S3 bucket prefix.</p>
    #   @return [String]
    # @!attribute bucket_name
    #   <p>The name of the Amazon S3 bucket.</p>
    #   @return [String]
    class SuccessResponseHandlingConfig < Struct.new(
      :bucket_prefix,
      :bucket_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SupportedDataTransferType
      RECORD = 'RECORD'
      FILE = 'FILE'
    end

    # <p> Contains details regarding all the supported <code>FieldTypes</code> and their
    #       corresponding <code>filterOperators</code> and <code>supportedValues</code>. </p>
    # @!attribute v1
    #   <p> The initial supported version for <code>fieldType</code>. If this is later changed to a
    #         different version, v2 will be introduced. </p>
    #   @return [Types::FieldTypeDetails]
    class SupportedFieldTypeDetails < Struct.new(
      :v1,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to tag. </p>
    #   @return [String]
    # @!attribute tags
    #   <p> The tags used to organize, track, or control access for your flow. </p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> A class for modeling different type of tasks. Task implementation varies based on the
    #         <code>TaskType</code>. </p>
    # @!attribute source_fields
    #   <p> The source fields to which a particular task is applied. </p>
    #   @return [Array<String>]
    # @!attribute connector_operator
    #   <p> The operation to be performed on the provided source fields. </p>
    #   @return [Types::ConnectorOperator]
    # @!attribute destination_field
    #   <p> A field in a destination connector, or a field value against which Amazon AppFlow
    #         validates a source field. </p>
    #   @return [String]
    # @!attribute task_type
    #   <p> Specifies the particular task implementation that Amazon AppFlow performs. </p>
    #   @return [String]
    # @!attribute task_properties
    #   <p> A map used to store task-related information. The execution service looks for particular
    #         information based on the <code>TaskType</code>. </p>
    #   @return [Hash<String, String>]
    class Task < Struct.new(
      :source_fields,
      :connector_operator,
      :destination_field,
      :task_type,
      :task_properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module TaskType
      ARITHMETIC = 'Arithmetic'
      FILTER = 'Filter'
      MAP = 'Map'
      MAP_ALL = 'Map_all'
      MASK = 'Mask'
      MERGE = 'Merge'
      PASSTHROUGH = 'Passthrough'
      TRUNCATE = 'Truncate'
      VALIDATE = 'Validate'
      PARTITION = 'Partition'
    end

    # <p>API calls have exceeded the maximum allowed API request rate per account and per Region.
    #     </p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module TrendmicroConnectorOperator
      PROJECTION = 'PROJECTION'
      EQUAL_TO = 'EQUAL_TO'
      ADDITION = 'ADDITION'
      MULTIPLICATION = 'MULTIPLICATION'
      DIVISION = 'DIVISION'
      SUBTRACTION = 'SUBTRACTION'
      MASK_ALL = 'MASK_ALL'
      MASK_FIRST_N = 'MASK_FIRST_N'
      MASK_LAST_N = 'MASK_LAST_N'
      VALIDATE_NON_NULL = 'VALIDATE_NON_NULL'
      VALIDATE_NON_ZERO = 'VALIDATE_NON_ZERO'
      VALIDATE_NON_NEGATIVE = 'VALIDATE_NON_NEGATIVE'
      VALIDATE_NUMERIC = 'VALIDATE_NUMERIC'
      NO_OP = 'NO_OP'
    end

    # <p> The connector-specific profile credentials required when using Trend Micro. </p>
    # @!attribute api_secret_key
    #   <p> The Secret Access Key portion of the credentials. </p>
    #   @return [String]
    class TrendmicroConnectorProfileCredentials < Struct.new(
      :api_secret_key,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector-specific profile properties required when using Trend Micro. </p>
    class TrendmicroConnectorProfileProperties < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector metadata specific to Trend Micro. </p>
    class TrendmicroMetadata < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The properties that are applied when using Trend Micro as a flow source. </p>
    # @!attribute object
    #   <p> The object specified in the Trend Micro flow source. </p>
    #   @return [String]
    class TrendmicroSourceProperties < Struct.new(
      :object,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The trigger settings that determine how and when Amazon AppFlow runs the specified
    #       flow. </p>
    # @!attribute trigger_type
    #   <p> Specifies the type of flow trigger. This can be <code>OnDemand</code>,
    #           <code>Scheduled</code>, or <code>Event</code>. </p>
    #   @return [String]
    # @!attribute trigger_properties
    #   <p> Specifies the configuration details of a schedule-triggered flow as defined by the user.
    #         Currently, these settings only apply to the <code>Scheduled</code> trigger type. </p>
    #   @return [Types::TriggerProperties]
    class TriggerConfig < Struct.new(
      :trigger_type,
      :trigger_properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Specifies the configuration details that control the trigger for a flow. Currently, these
    #       settings only apply to the <code>Scheduled</code> trigger type. </p>
    # @!attribute scheduled
    #   <p> Specifies the configuration details of a schedule-triggered flow as defined by the user.
    #       </p>
    #   @return [Types::ScheduledTriggerProperties]
    class TriggerProperties < Struct.new(
      :scheduled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module TriggerType
      SCHEDULED = 'Scheduled'
      EVENT = 'Event'
      ONDEMAND = 'OnDemand'
    end

    # @!attribute connector_label
    #   <p>The label of the connector. The label is unique for each
    #           <code>ConnectorRegistration</code> in your Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute force_delete
    #   <p>Indicates whether Amazon AppFlow should unregister the connector, even if it is
    #         currently in use in one or more connector profiles. The default value is false.</p>
    #   @return [Boolean]
    class UnregisterConnectorRequest < Struct.new(
      :connector_label,
      :force_delete,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UnregisterConnectorResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The requested operation is not supported for the current flow. </p>
    # @!attribute message
    #   @return [String]
    class UnsupportedOperationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to untag. </p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p> The tag keys associated with the tag that you want to remove from your flow. </p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_profile_name
    #   <p> The name of the connector profile and is unique for each <code>ConnectorProfile</code> in
    #         the Amazon Web Services account. </p>
    #   @return [String]
    # @!attribute connection_mode
    #   <p> Indicates the connection mode and if it is public or private. </p>
    #   @return [String]
    # @!attribute connector_profile_config
    #   <p> Defines the connector-specific profile configuration and credentials. </p>
    #   @return [Types::ConnectorProfileConfig]
    # @!attribute client_token
    #   <p>The <code>clientToken</code> parameter is an idempotency token. It ensures that your
    #           <code>UpdateConnectorProfile</code> request completes only once. You choose the value to
    #         pass. For example, if you don't receive a response from your request, you can safely retry the
    #         request with the same <code>clientToken</code> parameter value.</p>
    #            <p>If you omit a <code>clientToken</code> value, the Amazon Web Services SDK that you are
    #         using inserts a value for you. This way, the SDK can safely retry requests multiple times
    #         after a network error. You must provide your own value for other use cases.</p>
    #            <p>If you specify input parameters that differ from your first request, an error occurs. If
    #         you use a different value for <code>clientToken</code>, Amazon AppFlow considers it a new
    #         call to <code>UpdateConnectorProfile</code>. The token is active for 8 hours.</p>
    #   @return [String]
    class UpdateConnectorProfileRequest < Struct.new(
      :connector_profile_name,
      :connection_mode,
      :connector_profile_config,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_profile_arn
    #   <p> The Amazon Resource Name (ARN) of the connector profile. </p>
    #   @return [String]
    class UpdateConnectorProfileResponse < Struct.new(
      :connector_profile_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_label
    #   <p>The name of the connector. The name is unique for each connector registration in your AWS
    #         account.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description about the update that you're applying to the connector.</p>
    #   @return [String]
    # @!attribute connector_provisioning_config
    #   <p>Contains information about the configuration of the connector being registered.</p>
    #   @return [Types::ConnectorProvisioningConfig]
    # @!attribute client_token
    #   <p>The <code>clientToken</code> parameter is an idempotency token. It ensures that your
    #           <code>UpdateConnectorRegistration</code> request completes only once. You choose the value
    #         to pass. For example, if you don't receive a response from your request, you can safely retry
    #         the request with the same <code>clientToken</code> parameter value.</p>
    #            <p>If you omit a <code>clientToken</code> value, the Amazon Web Services SDK that you are
    #         using inserts a value for you. This way, the SDK can safely retry requests multiple times
    #         after a network error. You must provide your own value for other use cases.</p>
    #            <p>If you specify input parameters that differ from your first request, an error occurs. If
    #         you use a different value for <code>clientToken</code>, Amazon AppFlow considers it a new
    #         call to <code>UpdateConnectorRegistration</code>. The token is active for 8 hours.</p>
    #   @return [String]
    class UpdateConnectorRegistrationRequest < Struct.new(
      :connector_label,
      :description,
      :connector_provisioning_config,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_arn
    #   <p>The ARN of the connector being updated.</p>
    #   @return [String]
    class UpdateConnectorRegistrationResponse < Struct.new(
      :connector_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_name
    #   <p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens
    #         (-) only. </p>
    #   @return [String]
    # @!attribute description
    #   <p> A description of the flow. </p>
    #   @return [String]
    # @!attribute trigger_config
    #   <p> The trigger settings that determine how and when the flow runs. </p>
    #   @return [Types::TriggerConfig]
    # @!attribute source_flow_config
    #   <p> Contains information about the configuration of the source connector used in the flow.
    #       </p>
    #   @return [Types::SourceFlowConfig]
    # @!attribute destination_flow_config_list
    #   <p> The configuration that controls how Amazon AppFlow transfers data to the destination
    #         connector. </p>
    #   @return [Array<Types::DestinationFlowConfig>]
    # @!attribute tasks
    #   <p> A list of tasks that Amazon AppFlow performs while transferring the data in the flow
    #         run. </p>
    #   @return [Array<Types::Task>]
    # @!attribute metadata_catalog_config
    #   <p>Specifies the configuration that Amazon AppFlow uses when it catalogs the data that's
    #         transferred by the associated flow. When Amazon AppFlow catalogs the data from a flow, it
    #         stores metadata in a data catalog.</p>
    #   @return [Types::MetadataCatalogConfig]
    # @!attribute client_token
    #   <p>The <code>clientToken</code> parameter is an idempotency token. It ensures that your
    #           <code>UpdateFlow</code> request completes only once. You choose the value to pass. For
    #         example, if you don't receive a response from your request, you can safely retry the request
    #         with the same <code>clientToken</code> parameter value.</p>
    #            <p>If you omit a <code>clientToken</code> value, the Amazon Web Services SDK that you are
    #         using inserts a value for you. This way, the SDK can safely retry requests multiple times
    #         after a network error. You must provide your own value for other use cases.</p>
    #            <p>If you specify input parameters that differ from your first request, an error occurs. If
    #         you use a different value for <code>clientToken</code>, Amazon AppFlow considers it a new
    #         call to <code>UpdateFlow</code>. The token is active for 8 hours.</p>
    #   @return [String]
    class UpdateFlowRequest < Struct.new(
      :flow_name,
      :description,
      :trigger_config,
      :source_flow_config,
      :destination_flow_config_list,
      :tasks,
      :metadata_catalog_config,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_status
    #   <p>Indicates the current status of the flow. </p>
    #   @return [String]
    class UpdateFlowResponse < Struct.new(
      :flow_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The properties that are applied when Upsolver is used as a destination. </p>
    # @!attribute bucket_name
    #   <p> The Upsolver Amazon S3 bucket name in which Amazon AppFlow places the
    #         transferred data. </p>
    #   @return [String]
    # @!attribute bucket_prefix
    #   <p> The object key for the destination Upsolver Amazon S3 bucket in which Amazon AppFlow places the files. </p>
    #   @return [String]
    # @!attribute s3_output_format_config
    #   <p> The configuration that determines how data is formatted when Upsolver is used as the flow
    #         destination. </p>
    #   @return [Types::UpsolverS3OutputFormatConfig]
    class UpsolverDestinationProperties < Struct.new(
      :bucket_name,
      :bucket_prefix,
      :s3_output_format_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector metadata specific to Upsolver. </p>
    class UpsolverMetadata < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The configuration that determines how Amazon AppFlow formats the flow output data
    #       when Upsolver is used as the destination. </p>
    # @!attribute file_type
    #   <p> Indicates the file type that Amazon AppFlow places in the Upsolver Amazon S3
    #         bucket. </p>
    #   @return [String]
    # @!attribute prefix_config
    #   <p>Specifies elements that Amazon AppFlow includes in the file and folder names in the flow
    #         destination.</p>
    #   @return [Types::PrefixConfig]
    # @!attribute aggregation_config
    #   <p> The aggregation settings that you can use to customize the output format of your flow
    #         data. </p>
    #   @return [Types::AggregationConfig]
    class UpsolverS3OutputFormatConfig < Struct.new(
      :file_type,
      :prefix_config,
      :aggregation_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The request has invalid or missing parameters. </p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module VeevaConnectorOperator
      PROJECTION = 'PROJECTION'
      LESS_THAN = 'LESS_THAN'
      GREATER_THAN = 'GREATER_THAN'
      CONTAINS = 'CONTAINS'
      BETWEEN = 'BETWEEN'
      LESS_THAN_OR_EQUAL_TO = 'LESS_THAN_OR_EQUAL_TO'
      GREATER_THAN_OR_EQUAL_TO = 'GREATER_THAN_OR_EQUAL_TO'
      EQUAL_TO = 'EQUAL_TO'
      NOT_EQUAL_TO = 'NOT_EQUAL_TO'
      ADDITION = 'ADDITION'
      MULTIPLICATION = 'MULTIPLICATION'
      DIVISION = 'DIVISION'
      SUBTRACTION = 'SUBTRACTION'
      MASK_ALL = 'MASK_ALL'
      MASK_FIRST_N = 'MASK_FIRST_N'
      MASK_LAST_N = 'MASK_LAST_N'
      VALIDATE_NON_NULL = 'VALIDATE_NON_NULL'
      VALIDATE_NON_ZERO = 'VALIDATE_NON_ZERO'
      VALIDATE_NON_NEGATIVE = 'VALIDATE_NON_NEGATIVE'
      VALIDATE_NUMERIC = 'VALIDATE_NUMERIC'
      NO_OP = 'NO_OP'
    end

    # <p> The connector-specific profile credentials required when using Veeva. </p>
    # @!attribute username
    #   <p> The name of the user. </p>
    #   @return [String]
    # @!attribute password
    #   <p> The password that corresponds to the user name. </p>
    #   @return [String]
    class VeevaConnectorProfileCredentials < Struct.new(
      :username,
      :password,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector-specific profile properties required when using Veeva. </p>
    # @!attribute instance_url
    #   <p> The location of the Veeva resource. </p>
    #   @return [String]
    class VeevaConnectorProfileProperties < Struct.new(
      :instance_url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector metadata specific to Veeva. </p>
    class VeevaMetadata < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The properties that are applied when using Veeva as a flow source. </p>
    # @!attribute object
    #   <p> The object specified in the Veeva flow source. </p>
    #   @return [String]
    # @!attribute document_type
    #   <p>The document type specified in the Veeva document extract flow.</p>
    #   @return [String]
    # @!attribute include_source_files
    #   <p>Boolean value to include source files in Veeva document extract flow.</p>
    #   @return [Boolean]
    # @!attribute include_renditions
    #   <p>Boolean value to include file renditions in Veeva document extract flow.</p>
    #   @return [Boolean]
    # @!attribute include_all_versions
    #   <p>Boolean value to include All Versions of files in Veeva document extract flow.</p>
    #   @return [Boolean]
    class VeevaSourceProperties < Struct.new(
      :object,
      :document_type,
      :include_source_files,
      :include_renditions,
      :include_all_versions,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:include_source_files] = false unless options.key?(:include_source_files)
        options[:include_renditions] = false unless options.key?(:include_renditions)
        options[:include_all_versions] = false unless options.key?(:include_all_versions)
        super
      end
    end

    # <p> The possible write operations in the destination connector. When this value is not
    #       provided, this defaults to the <code>INSERT</code> operation. </p>
    module WriteOperationType
      INSERT = 'INSERT'
      UPSERT = 'UPSERT'
      UPDATE = 'UPDATE'
      DELETE = 'DELETE'
    end

    module ZendeskConnectorOperator
      PROJECTION = 'PROJECTION'
      GREATER_THAN = 'GREATER_THAN'
      ADDITION = 'ADDITION'
      MULTIPLICATION = 'MULTIPLICATION'
      DIVISION = 'DIVISION'
      SUBTRACTION = 'SUBTRACTION'
      MASK_ALL = 'MASK_ALL'
      MASK_FIRST_N = 'MASK_FIRST_N'
      MASK_LAST_N = 'MASK_LAST_N'
      VALIDATE_NON_NULL = 'VALIDATE_NON_NULL'
      VALIDATE_NON_ZERO = 'VALIDATE_NON_ZERO'
      VALIDATE_NON_NEGATIVE = 'VALIDATE_NON_NEGATIVE'
      VALIDATE_NUMERIC = 'VALIDATE_NUMERIC'
      NO_OP = 'NO_OP'
    end

    # <p> The connector-specific profile credentials required when using Zendesk. </p>
    # @!attribute client_id
    #   <p> The identifier for the desired client. </p>
    #   @return [String]
    # @!attribute client_secret
    #   <p> The client secret used by the OAuth client to authenticate to the authorization server.
    #       </p>
    #   @return [String]
    # @!attribute access_token
    #   <p> The credentials used to access protected Zendesk resources. </p>
    #   @return [String]
    # @!attribute o_auth_request
    #   <p> The OAuth requirement needed to request security tokens from the connector endpoint.
    #       </p>
    #   @return [Types::ConnectorOAuthRequest]
    class ZendeskConnectorProfileCredentials < Struct.new(
      :client_id,
      :client_secret,
      :access_token,
      :o_auth_request,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector-specific profile properties required when using Zendesk. </p>
    # @!attribute instance_url
    #   <p> The location of the Zendesk resource. </p>
    #   @return [String]
    class ZendeskConnectorProfileProperties < Struct.new(
      :instance_url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The properties that are applied when Zendesk is used as a destination.</p>
    # @!attribute object
    #   <p>The object specified in the Zendesk flow destination.</p>
    #   @return [String]
    # @!attribute id_field_names
    #   <p> A list of field names that can be used as an ID field when performing a write operation.
    #       </p>
    #   @return [Array<String>]
    # @!attribute error_handling_config
    #   <p> The settings that determine how Amazon AppFlow handles an error when placing data in
    #         the destination. For example, this setting would determine if the flow should fail after one
    #         insertion error, or continue and attempt to insert every record regardless of the initial
    #         failure. <code>ErrorHandlingConfig</code> is a part of the destination connector details.
    #       </p>
    #   @return [Types::ErrorHandlingConfig]
    # @!attribute write_operation_type
    #   <p> The possible write operations in the destination connector. When this value is not
    #         provided, this defaults to the <code>INSERT</code> operation. </p>
    #   @return [String]
    class ZendeskDestinationProperties < Struct.new(
      :object,
      :id_field_names,
      :error_handling_config,
      :write_operation_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The connector metadata specific to Zendesk. </p>
    # @!attribute o_auth_scopes
    #   <p> The desired authorization scope for the Zendesk account. </p>
    #   @return [Array<String>]
    class ZendeskMetadata < Struct.new(
      :o_auth_scopes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The properties that are applied when using Zendesk as a flow source. </p>
    # @!attribute object
    #   <p> The object specified in the Zendesk flow source. </p>
    #   @return [String]
    class ZendeskSourceProperties < Struct.new(
      :object,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
