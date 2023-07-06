# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Appflow
  module Types

    # AppFlow/Requester has invalid or missing permissions.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The aggregation settings that you can use to customize the output
    # format of your flow data.
    #
    # @!attribute [rw] aggregation_type
    #   Specifies whether Amazon AppFlow aggregates the flow records into a
    #   single file, or leave them unaggregated.
    #   @return [String]
    #
    # @!attribute [rw] target_file_size
    #   The desired file size, in MB, for each output file that Amazon
    #   AppFlow writes to the flow destination. For each file, Amazon
    #   AppFlow attempts to achieve the size that you specify. The actual
    #   file sizes might differ from this target based on the number and
    #   size of the records that each file contains.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/AggregationConfig AWS API Documentation
    #
    class AggregationConfig < Struct.new(
      :aggregation_type,
      :target_file_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector-specific credentials required when using Amplitude.
    #
    # @!attribute [rw] api_key
    #   A unique alphanumeric identifier used to authenticate a user,
    #   developer, or calling program to your API.
    #   @return [String]
    #
    # @!attribute [rw] secret_key
    #   The Secret Access Key portion of the credentials.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/AmplitudeConnectorProfileCredentials AWS API Documentation
    #
    class AmplitudeConnectorProfileCredentials < Struct.new(
      :api_key,
      :secret_key)
      SENSITIVE = [:api_key, :secret_key]
      include Aws::Structure
    end

    # The connector-specific profile properties required when using
    # Amplitude.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/AmplitudeConnectorProfileProperties AWS API Documentation
    #
    class AmplitudeConnectorProfileProperties < Aws::EmptyStructure; end

    # The connector metadata specific to Amplitude.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/AmplitudeMetadata AWS API Documentation
    #
    class AmplitudeMetadata < Aws::EmptyStructure; end

    # The properties that are applied when Amplitude is being used as a
    # source.
    #
    # @!attribute [rw] object
    #   The object specified in the Amplitude flow source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/AmplitudeSourceProperties AWS API Documentation
    #
    class AmplitudeSourceProperties < Struct.new(
      :object)
      SENSITIVE = []
      include Aws::Structure
    end

    # The API key credentials required for API key authentication.
    #
    # @!attribute [rw] api_key
    #   The API key required for API key authentication.
    #   @return [String]
    #
    # @!attribute [rw] api_secret_key
    #   The API secret key required for API key authentication.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ApiKeyCredentials AWS API Documentation
    #
    class ApiKeyCredentials < Struct.new(
      :api_key,
      :api_secret_key)
      SENSITIVE = [:api_key, :api_secret_key]
      include Aws::Structure
    end

    # Information about required authentication parameters.
    #
    # @!attribute [rw] key
    #   The authentication key required to authenticate with the connector.
    #   @return [String]
    #
    # @!attribute [rw] is_required
    #   Indicates whether this authentication parameter is required.
    #   @return [Boolean]
    #
    # @!attribute [rw] label
    #   Label used for authentication parameter.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description about the authentication parameter.
    #   @return [String]
    #
    # @!attribute [rw] is_sensitive_field
    #   Indicates whether this authentication parameter is a sensitive
    #   field.
    #   @return [Boolean]
    #
    # @!attribute [rw] connector_supplied_values
    #   Contains default values for this authentication parameter that are
    #   supplied by the connector.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/AuthParameter AWS API Documentation
    #
    class AuthParameter < Struct.new(
      :key,
      :is_required,
      :label,
      :description,
      :is_sensitive_field,
      :connector_supplied_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the authentication config that the
    # connector supports.
    #
    # @!attribute [rw] is_basic_auth_supported
    #   Indicates whether basic authentication is supported by the
    #   connector.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_api_key_auth_supported
    #   Indicates whether API key authentication is supported by the
    #   connector
    #   @return [Boolean]
    #
    # @!attribute [rw] is_o_auth_2_supported
    #   Indicates whether OAuth 2.0 authentication is supported by the
    #   connector.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_custom_auth_supported
    #   Indicates whether custom authentication is supported by the
    #   connector
    #   @return [Boolean]
    #
    # @!attribute [rw] o_auth_2_defaults
    #   Contains the default values required for OAuth 2.0 authentication.
    #   @return [Types::OAuth2Defaults]
    #
    # @!attribute [rw] custom_auth_configs
    #   Contains information required for custom authentication.
    #   @return [Array<Types::CustomAuthConfig>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/AuthenticationConfig AWS API Documentation
    #
    class AuthenticationConfig < Struct.new(
      :is_basic_auth_supported,
      :is_api_key_auth_supported,
      :is_o_auth_2_supported,
      :is_custom_auth_supported,
      :o_auth_2_defaults,
      :custom_auth_configs)
      SENSITIVE = []
      include Aws::Structure
    end

    # The basic auth credentials required for basic authentication.
    #
    # @!attribute [rw] username
    #   The username to use to connect to a resource.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password to use to connect to a resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/BasicAuthCredentials AWS API Documentation
    #
    class BasicAuthCredentials < Struct.new(
      :username,
      :password)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # @!attribute [rw] flow_name
    #   The name of a flow with active runs that you want to cancel.
    #   @return [String]
    #
    # @!attribute [rw] execution_ids
    #   The ID of each active run to cancel. These runs must belong to the
    #   flow you specify in your request.
    #
    #   If you omit this parameter, your request ends all active runs that
    #   belong to the flow.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/CancelFlowExecutionsRequest AWS API Documentation
    #
    class CancelFlowExecutionsRequest < Struct.new(
      :flow_name,
      :execution_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] invalid_executions
    #   The IDs of runs that Amazon AppFlow couldn't cancel. These runs
    #   might be ineligible for canceling because they haven't started yet
    #   or have already completed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/CancelFlowExecutionsResponse AWS API Documentation
    #
    class CancelFlowExecutionsResponse < Struct.new(
      :invalid_executions)
      SENSITIVE = []
      include Aws::Structure
    end

    # There was a conflict when processing the request (for example, a flow
    # with the given name already exists within the account. Check for
    # conflicting resource names and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error occurred when authenticating with the connector endpoint.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ConnectorAuthenticationException AWS API Documentation
    #
    class ConnectorAuthenticationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration settings related to a given connector.
    #
    # @!attribute [rw] can_use_as_source
    #   Specifies whether the connector can be used as a source.
    #   @return [Boolean]
    #
    # @!attribute [rw] can_use_as_destination
    #   Specifies whether the connector can be used as a destination.
    #   @return [Boolean]
    #
    # @!attribute [rw] supported_destination_connectors
    #   Lists the connectors that are available for use as destinations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] supported_scheduling_frequencies
    #   Specifies the supported flow frequency for that connector.
    #   @return [Array<String>]
    #
    # @!attribute [rw] is_private_link_enabled
    #   Specifies if PrivateLink is enabled for that connector.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_private_link_endpoint_url_required
    #   Specifies if a PrivateLink endpoint URL is required.
    #   @return [Boolean]
    #
    # @!attribute [rw] supported_trigger_types
    #   Specifies the supported trigger types for the flow.
    #   @return [Array<String>]
    #
    # @!attribute [rw] connector_metadata
    #   Specifies connector-specific metadata such as `oAuthScopes`,
    #   `supportedRegions`, `privateLinkServiceUrl`, and so on.
    #   @return [Types::ConnectorMetadata]
    #
    # @!attribute [rw] connector_type
    #   The connector type.
    #   @return [String]
    #
    # @!attribute [rw] connector_label
    #   The label used for registering the connector.
    #   @return [String]
    #
    # @!attribute [rw] connector_description
    #   A description about the connector.
    #   @return [String]
    #
    # @!attribute [rw] connector_owner
    #   The owner who developed the connector.
    #   @return [String]
    #
    # @!attribute [rw] connector_name
    #   The connector name.
    #   @return [String]
    #
    # @!attribute [rw] connector_version
    #   The connector version.
    #   @return [String]
    #
    # @!attribute [rw] connector_arn
    #   The Amazon Resource Name (ARN) for the registered connector.
    #   @return [String]
    #
    # @!attribute [rw] connector_modes
    #   The connection modes that the connector supports.
    #   @return [Array<String>]
    #
    # @!attribute [rw] authentication_config
    #   The authentication config required for the connector.
    #   @return [Types::AuthenticationConfig]
    #
    # @!attribute [rw] connector_runtime_settings
    #   The required connector runtime settings.
    #   @return [Array<Types::ConnectorRuntimeSetting>]
    #
    # @!attribute [rw] supported_api_versions
    #   A list of API versions that are supported by the connector.
    #   @return [Array<String>]
    #
    # @!attribute [rw] supported_operators
    #   A list of operators supported by the connector.
    #   @return [Array<String>]
    #
    # @!attribute [rw] supported_write_operations
    #   A list of write operations supported by the connector.
    #   @return [Array<String>]
    #
    # @!attribute [rw] connector_provisioning_type
    #   The provisioning type used to register the connector.
    #   @return [String]
    #
    # @!attribute [rw] connector_provisioning_config
    #   The configuration required for registering the connector.
    #   @return [Types::ConnectorProvisioningConfig]
    #
    # @!attribute [rw] logo_url
    #   Logo URL of the connector.
    #   @return [String]
    #
    # @!attribute [rw] registered_at
    #   The date on which the connector was registered.
    #   @return [Time]
    #
    # @!attribute [rw] registered_by
    #   Information about who registered the connector.
    #   @return [String]
    #
    # @!attribute [rw] supported_data_transfer_types
    #   The data transfer types that the connector supports.
    #
    #   RECORD
    #
    #   : Structured records.
    #
    #   FILE
    #
    #   : Files or binary data.
    #   @return [Array<String>]
    #
    # @!attribute [rw] supported_data_transfer_apis
    #   The APIs of the connector application that Amazon AppFlow can use to
    #   transfer your data.
    #   @return [Array<Types::DataTransferApi>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ConnectorConfiguration AWS API Documentation
    #
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
      :supported_data_transfer_apis)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the registered connector.
    #
    # @!attribute [rw] connector_description
    #   A description about the registered connector.
    #   @return [String]
    #
    # @!attribute [rw] connector_name
    #   The name of the connector.
    #   @return [String]
    #
    # @!attribute [rw] connector_owner
    #   The owner of the connector.
    #   @return [String]
    #
    # @!attribute [rw] connector_version
    #   The connector version.
    #   @return [String]
    #
    # @!attribute [rw] application_type
    #   The application type of the connector.
    #   @return [String]
    #
    # @!attribute [rw] connector_type
    #   The connector type.
    #   @return [String]
    #
    # @!attribute [rw] connector_label
    #   A label used for the connector.
    #   @return [String]
    #
    # @!attribute [rw] registered_at
    #   The time at which the connector was registered.
    #   @return [Time]
    #
    # @!attribute [rw] registered_by
    #   The user who registered the connector.
    #   @return [String]
    #
    # @!attribute [rw] connector_provisioning_type
    #   The provisioning type that the connector uses.
    #   @return [String]
    #
    # @!attribute [rw] connector_modes
    #   The connection mode that the connector supports.
    #   @return [Array<String>]
    #
    # @!attribute [rw] supported_data_transfer_types
    #   The data transfer types that the connector supports.
    #
    #   RECORD
    #
    #   : Structured records.
    #
    #   FILE
    #
    #   : Files or binary data.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ConnectorDetail AWS API Documentation
    #
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
      :supported_data_transfer_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # The high-level entity that can be queried in Amazon AppFlow. For
    # example, a Salesforce entity might be an *Account* or *Opportunity*,
    # whereas a ServiceNow entity might be an *Incident*.
    #
    # @!attribute [rw] name
    #   The name of the connector entity.
    #   @return [String]
    #
    # @!attribute [rw] label
    #   The label applied to the connector entity.
    #   @return [String]
    #
    # @!attribute [rw] has_nested_entities
    #   Specifies whether the connector entity is a parent or a category and
    #   has more entities nested underneath it. If another call is made with
    #   `entitiesPath =
    #   "the_current_entity_name_with_hasNestedEntities_true"`, then it
    #   returns the nested entities underneath it. This provides a way to
    #   retrieve all supported entities in a recursive fashion.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ConnectorEntity AWS API Documentation
    #
    class ConnectorEntity < Struct.new(
      :name,
      :label,
      :has_nested_entities)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the data model of a connector field. For example, for an
    # *account* entity, the fields would be *account name*, *account ID*,
    # and so on.
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the connector field.
    #   @return [String]
    #
    # @!attribute [rw] parent_identifier
    #   The parent identifier of the connector field.
    #   @return [String]
    #
    # @!attribute [rw] label
    #   The label applied to a connector entity field.
    #   @return [String]
    #
    # @!attribute [rw] is_primary_key
    #   Booelan value that indicates whether this field can be used as a
    #   primary key.
    #   @return [Boolean]
    #
    # @!attribute [rw] default_value
    #   Default value that can be assigned to this field.
    #   @return [String]
    #
    # @!attribute [rw] is_deprecated
    #   Booelan value that indicates whether this field is deprecated or
    #   not.
    #   @return [Boolean]
    #
    # @!attribute [rw] supported_field_type_details
    #   Contains details regarding the supported `FieldType`, including the
    #   corresponding `filterOperators` and `supportedValues`.
    #   @return [Types::SupportedFieldTypeDetails]
    #
    # @!attribute [rw] description
    #   A description of the connector entity field.
    #   @return [String]
    #
    # @!attribute [rw] source_properties
    #   The properties that can be applied to a field when the connector is
    #   being used as a source.
    #   @return [Types::SourceFieldProperties]
    #
    # @!attribute [rw] destination_properties
    #   The properties applied to a field when the connector is being used
    #   as a destination.
    #   @return [Types::DestinationFieldProperties]
    #
    # @!attribute [rw] custom_properties
    #   A map that has specific properties related to the
    #   ConnectorEntityField.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ConnectorEntityField AWS API Documentation
    #
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
      :custom_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure to specify connector-specific metadata such as
    # `oAuthScopes`, `supportedRegions`, `privateLinkServiceUrl`, and so on.
    #
    # @!attribute [rw] amplitude
    #   The connector metadata specific to Amplitude.
    #   @return [Types::AmplitudeMetadata]
    #
    # @!attribute [rw] datadog
    #   The connector metadata specific to Datadog.
    #   @return [Types::DatadogMetadata]
    #
    # @!attribute [rw] dynatrace
    #   The connector metadata specific to Dynatrace.
    #   @return [Types::DynatraceMetadata]
    #
    # @!attribute [rw] google_analytics
    #   The connector metadata specific to Google Analytics.
    #   @return [Types::GoogleAnalyticsMetadata]
    #
    # @!attribute [rw] infor_nexus
    #   The connector metadata specific to Infor Nexus.
    #   @return [Types::InforNexusMetadata]
    #
    # @!attribute [rw] marketo
    #   The connector metadata specific to Marketo.
    #   @return [Types::MarketoMetadata]
    #
    # @!attribute [rw] redshift
    #   The connector metadata specific to Amazon Redshift.
    #   @return [Types::RedshiftMetadata]
    #
    # @!attribute [rw] s3
    #   The connector metadata specific to Amazon S3.
    #   @return [Types::S3Metadata]
    #
    # @!attribute [rw] salesforce
    #   The connector metadata specific to Salesforce.
    #   @return [Types::SalesforceMetadata]
    #
    # @!attribute [rw] service_now
    #   The connector metadata specific to ServiceNow.
    #   @return [Types::ServiceNowMetadata]
    #
    # @!attribute [rw] singular
    #   The connector metadata specific to Singular.
    #   @return [Types::SingularMetadata]
    #
    # @!attribute [rw] slack
    #   The connector metadata specific to Slack.
    #   @return [Types::SlackMetadata]
    #
    # @!attribute [rw] snowflake
    #   The connector metadata specific to Snowflake.
    #   @return [Types::SnowflakeMetadata]
    #
    # @!attribute [rw] trendmicro
    #   The connector metadata specific to Trend Micro.
    #   @return [Types::TrendmicroMetadata]
    #
    # @!attribute [rw] veeva
    #   The connector metadata specific to Veeva.
    #   @return [Types::VeevaMetadata]
    #
    # @!attribute [rw] zendesk
    #   The connector metadata specific to Zendesk.
    #   @return [Types::ZendeskMetadata]
    #
    # @!attribute [rw] event_bridge
    #   The connector metadata specific to Amazon EventBridge.
    #   @return [Types::EventBridgeMetadata]
    #
    # @!attribute [rw] upsolver
    #   The connector metadata specific to Upsolver.
    #   @return [Types::UpsolverMetadata]
    #
    # @!attribute [rw] customer_profiles
    #   The connector metadata specific to Amazon Connect Customer Profiles.
    #   @return [Types::CustomerProfilesMetadata]
    #
    # @!attribute [rw] honeycode
    #   The connector metadata specific to Amazon Honeycode.
    #   @return [Types::HoneycodeMetadata]
    #
    # @!attribute [rw] sapo_data
    #   The connector metadata specific to SAPOData.
    #   @return [Types::SAPODataMetadata]
    #
    # @!attribute [rw] pardot
    #   The connector metadata specific to Salesforce Pardot.
    #   @return [Types::PardotMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ConnectorMetadata AWS API Documentation
    #
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
      :pardot)
      SENSITIVE = []
      include Aws::Structure
    end

    # Used by select connectors for which the OAuth workflow is supported,
    # such as Salesforce, Google Analytics, Marketo, Zendesk, and Slack.
    #
    # @!attribute [rw] auth_code
    #   The code provided by the connector when it has been authenticated
    #   via the connected app.
    #   @return [String]
    #
    # @!attribute [rw] redirect_uri
    #   The URL to which the authentication server redirects the browser
    #   after authorization has been granted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ConnectorOAuthRequest AWS API Documentation
    #
    class ConnectorOAuthRequest < Struct.new(
      :auth_code,
      :redirect_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation to be performed on the provided source fields.
    #
    # @!attribute [rw] amplitude
    #   The operation to be performed on the provided Amplitude source
    #   fields.
    #   @return [String]
    #
    # @!attribute [rw] datadog
    #   The operation to be performed on the provided Datadog source fields.
    #   @return [String]
    #
    # @!attribute [rw] dynatrace
    #   The operation to be performed on the provided Dynatrace source
    #   fields.
    #   @return [String]
    #
    # @!attribute [rw] google_analytics
    #   The operation to be performed on the provided Google Analytics
    #   source fields.
    #   @return [String]
    #
    # @!attribute [rw] infor_nexus
    #   The operation to be performed on the provided Infor Nexus source
    #   fields.
    #   @return [String]
    #
    # @!attribute [rw] marketo
    #   The operation to be performed on the provided Marketo source fields.
    #   @return [String]
    #
    # @!attribute [rw] s3
    #   The operation to be performed on the provided Amazon S3 source
    #   fields.
    #   @return [String]
    #
    # @!attribute [rw] salesforce
    #   The operation to be performed on the provided Salesforce source
    #   fields.
    #   @return [String]
    #
    # @!attribute [rw] service_now
    #   The operation to be performed on the provided ServiceNow source
    #   fields.
    #   @return [String]
    #
    # @!attribute [rw] singular
    #   The operation to be performed on the provided Singular source
    #   fields.
    #   @return [String]
    #
    # @!attribute [rw] slack
    #   The operation to be performed on the provided Slack source fields.
    #   @return [String]
    #
    # @!attribute [rw] trendmicro
    #   The operation to be performed on the provided Trend Micro source
    #   fields.
    #   @return [String]
    #
    # @!attribute [rw] veeva
    #   The operation to be performed on the provided Veeva source fields.
    #   @return [String]
    #
    # @!attribute [rw] zendesk
    #   The operation to be performed on the provided Zendesk source fields.
    #   @return [String]
    #
    # @!attribute [rw] sapo_data
    #   The operation to be performed on the provided SAPOData source
    #   fields.
    #   @return [String]
    #
    # @!attribute [rw] custom_connector
    #   Operators supported by the custom connector.
    #   @return [String]
    #
    # @!attribute [rw] pardot
    #   The operation to be performed on the provided Salesforce Pardot
    #   source fields.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ConnectorOperator AWS API Documentation
    #
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
      :pardot)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an instance of a connector. This includes the provided name,
    # credentials ARN, connection-mode, and so on. To keep the API intuitive
    # and extensible, the fields that are common to all types of connector
    # profiles are explicitly specified at the top level. The rest of the
    # connector-specific properties are available via the
    # `connectorProfileProperties` field.
    #
    # @!attribute [rw] connector_profile_arn
    #   The Amazon Resource Name (ARN) of the connector profile.
    #   @return [String]
    #
    # @!attribute [rw] connector_profile_name
    #   The name of the connector profile. The name is unique for each
    #   `ConnectorProfile` in the Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] connector_type
    #   The type of connector, such as Salesforce, Amplitude, and so on.
    #   @return [String]
    #
    # @!attribute [rw] connector_label
    #   The label for the connector profile being created.
    #   @return [String]
    #
    # @!attribute [rw] connection_mode
    #   Indicates the connection mode and if it is public or private.
    #   @return [String]
    #
    # @!attribute [rw] credentials_arn
    #   The Amazon Resource Name (ARN) of the connector profile credentials.
    #   @return [String]
    #
    # @!attribute [rw] connector_profile_properties
    #   The connector-specific properties of the profile configuration.
    #   @return [Types::ConnectorProfileProperties]
    #
    # @!attribute [rw] created_at
    #   Specifies when the connector profile was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   Specifies when the connector profile was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] private_connection_provisioning_state
    #   Specifies the private connection provisioning state.
    #   @return [Types::PrivateConnectionProvisioningState]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ConnectorProfile AWS API Documentation
    #
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
      :private_connection_provisioning_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the connector-specific configuration and credentials for the
    # connector profile.
    #
    # @!attribute [rw] connector_profile_properties
    #   The connector-specific properties of the profile configuration.
    #   @return [Types::ConnectorProfileProperties]
    #
    # @!attribute [rw] connector_profile_credentials
    #   The connector-specific credentials required by each connector.
    #   @return [Types::ConnectorProfileCredentials]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ConnectorProfileConfig AWS API Documentation
    #
    class ConnectorProfileConfig < Struct.new(
      :connector_profile_properties,
      :connector_profile_credentials)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector-specific credentials required by a connector.
    #
    # @!attribute [rw] amplitude
    #   The connector-specific credentials required when using Amplitude.
    #   @return [Types::AmplitudeConnectorProfileCredentials]
    #
    # @!attribute [rw] datadog
    #   The connector-specific credentials required when using Datadog.
    #   @return [Types::DatadogConnectorProfileCredentials]
    #
    # @!attribute [rw] dynatrace
    #   The connector-specific credentials required when using Dynatrace.
    #   @return [Types::DynatraceConnectorProfileCredentials]
    #
    # @!attribute [rw] google_analytics
    #   The connector-specific credentials required when using Google
    #   Analytics.
    #   @return [Types::GoogleAnalyticsConnectorProfileCredentials]
    #
    # @!attribute [rw] honeycode
    #   The connector-specific credentials required when using Amazon
    #   Honeycode.
    #   @return [Types::HoneycodeConnectorProfileCredentials]
    #
    # @!attribute [rw] infor_nexus
    #   The connector-specific credentials required when using Infor Nexus.
    #   @return [Types::InforNexusConnectorProfileCredentials]
    #
    # @!attribute [rw] marketo
    #   The connector-specific credentials required when using Marketo.
    #   @return [Types::MarketoConnectorProfileCredentials]
    #
    # @!attribute [rw] redshift
    #   The connector-specific credentials required when using Amazon
    #   Redshift.
    #   @return [Types::RedshiftConnectorProfileCredentials]
    #
    # @!attribute [rw] salesforce
    #   The connector-specific credentials required when using Salesforce.
    #   @return [Types::SalesforceConnectorProfileCredentials]
    #
    # @!attribute [rw] service_now
    #   The connector-specific credentials required when using ServiceNow.
    #   @return [Types::ServiceNowConnectorProfileCredentials]
    #
    # @!attribute [rw] singular
    #   The connector-specific credentials required when using Singular.
    #   @return [Types::SingularConnectorProfileCredentials]
    #
    # @!attribute [rw] slack
    #   The connector-specific credentials required when using Slack.
    #   @return [Types::SlackConnectorProfileCredentials]
    #
    # @!attribute [rw] snowflake
    #   The connector-specific credentials required when using Snowflake.
    #   @return [Types::SnowflakeConnectorProfileCredentials]
    #
    # @!attribute [rw] trendmicro
    #   The connector-specific credentials required when using Trend Micro.
    #   @return [Types::TrendmicroConnectorProfileCredentials]
    #
    # @!attribute [rw] veeva
    #   The connector-specific credentials required when using Veeva.
    #   @return [Types::VeevaConnectorProfileCredentials]
    #
    # @!attribute [rw] zendesk
    #   The connector-specific credentials required when using Zendesk.
    #   @return [Types::ZendeskConnectorProfileCredentials]
    #
    # @!attribute [rw] sapo_data
    #   The connector-specific profile credentials required when using
    #   SAPOData.
    #   @return [Types::SAPODataConnectorProfileCredentials]
    #
    # @!attribute [rw] custom_connector
    #   The connector-specific profile credentials that are required when
    #   using the custom connector.
    #   @return [Types::CustomConnectorProfileCredentials]
    #
    # @!attribute [rw] pardot
    #   The connector-specific credentials required when using Salesforce
    #   Pardot.
    #   @return [Types::PardotConnectorProfileCredentials]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ConnectorProfileCredentials AWS API Documentation
    #
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
      :pardot)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector-specific profile properties required by each connector.
    #
    # @!attribute [rw] amplitude
    #   The connector-specific properties required by Amplitude.
    #   @return [Types::AmplitudeConnectorProfileProperties]
    #
    # @!attribute [rw] datadog
    #   The connector-specific properties required by Datadog.
    #   @return [Types::DatadogConnectorProfileProperties]
    #
    # @!attribute [rw] dynatrace
    #   The connector-specific properties required by Dynatrace.
    #   @return [Types::DynatraceConnectorProfileProperties]
    #
    # @!attribute [rw] google_analytics
    #   The connector-specific properties required Google Analytics.
    #   @return [Types::GoogleAnalyticsConnectorProfileProperties]
    #
    # @!attribute [rw] honeycode
    #   The connector-specific properties required by Amazon Honeycode.
    #   @return [Types::HoneycodeConnectorProfileProperties]
    #
    # @!attribute [rw] infor_nexus
    #   The connector-specific properties required by Infor Nexus.
    #   @return [Types::InforNexusConnectorProfileProperties]
    #
    # @!attribute [rw] marketo
    #   The connector-specific properties required by Marketo.
    #   @return [Types::MarketoConnectorProfileProperties]
    #
    # @!attribute [rw] redshift
    #   The connector-specific properties required by Amazon Redshift.
    #   @return [Types::RedshiftConnectorProfileProperties]
    #
    # @!attribute [rw] salesforce
    #   The connector-specific properties required by Salesforce.
    #   @return [Types::SalesforceConnectorProfileProperties]
    #
    # @!attribute [rw] service_now
    #   The connector-specific properties required by serviceNow.
    #   @return [Types::ServiceNowConnectorProfileProperties]
    #
    # @!attribute [rw] singular
    #   The connector-specific properties required by Singular.
    #   @return [Types::SingularConnectorProfileProperties]
    #
    # @!attribute [rw] slack
    #   The connector-specific properties required by Slack.
    #   @return [Types::SlackConnectorProfileProperties]
    #
    # @!attribute [rw] snowflake
    #   The connector-specific properties required by Snowflake.
    #   @return [Types::SnowflakeConnectorProfileProperties]
    #
    # @!attribute [rw] trendmicro
    #   The connector-specific properties required by Trend Micro.
    #   @return [Types::TrendmicroConnectorProfileProperties]
    #
    # @!attribute [rw] veeva
    #   The connector-specific properties required by Veeva.
    #   @return [Types::VeevaConnectorProfileProperties]
    #
    # @!attribute [rw] zendesk
    #   The connector-specific properties required by Zendesk.
    #   @return [Types::ZendeskConnectorProfileProperties]
    #
    # @!attribute [rw] sapo_data
    #   The connector-specific profile properties required when using
    #   SAPOData.
    #   @return [Types::SAPODataConnectorProfileProperties]
    #
    # @!attribute [rw] custom_connector
    #   The properties required by the custom connector.
    #   @return [Types::CustomConnectorProfileProperties]
    #
    # @!attribute [rw] pardot
    #   The connector-specific properties required by Salesforce Pardot.
    #   @return [Types::PardotConnectorProfileProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ConnectorProfileProperties AWS API Documentation
    #
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
      :pardot)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the configuration of the connector being
    # registered.
    #
    # @!attribute [rw] lambda
    #   Contains information about the configuration of the lambda which is
    #   being registered as the connector.
    #   @return [Types::LambdaConnectorProvisioningConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ConnectorProvisioningConfig AWS API Documentation
    #
    class ConnectorProvisioningConfig < Struct.new(
      :lambda)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the connector runtime settings that are
    # required for flow execution.
    #
    # @!attribute [rw] key
    #   Contains value information about the connector runtime setting.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   Data type of the connector runtime setting.
    #   @return [String]
    #
    # @!attribute [rw] is_required
    #   Indicates whether this connector runtime setting is required.
    #   @return [Boolean]
    #
    # @!attribute [rw] label
    #   A label used for connector runtime setting.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description about the connector runtime setting.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Indicates the scope of the connector runtime setting.
    #   @return [String]
    #
    # @!attribute [rw] connector_supplied_value_options
    #   Contains default values for the connector runtime setting that are
    #   supplied by the connector.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ConnectorRuntimeSetting AWS API Documentation
    #
    class ConnectorRuntimeSetting < Struct.new(
      :key,
      :data_type,
      :is_required,
      :label,
      :description,
      :scope,
      :connector_supplied_value_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error occurred when retrieving data from the connector endpoint.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ConnectorServerException AWS API Documentation
    #
    class ConnectorServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_profile_name
    #   The name of the connector profile. The name is unique for each
    #   `ConnectorProfile` in your Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] kms_arn
    #   The ARN (Amazon Resource Name) of the Key Management Service (KMS)
    #   key you provide for encryption. This is required if you do not want
    #   to use the Amazon AppFlow-managed KMS key. If you don't provide
    #   anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS
    #   key.
    #   @return [String]
    #
    # @!attribute [rw] connector_type
    #   The type of connector, such as Salesforce, Amplitude, and so on.
    #   @return [String]
    #
    # @!attribute [rw] connector_label
    #   The label of the connector. The label is unique for each
    #   `ConnectorRegistration` in your Amazon Web Services account. Only
    #   needed if calling for CUSTOMCONNECTOR connector type/.
    #   @return [String]
    #
    # @!attribute [rw] connection_mode
    #   Indicates the connection mode and specifies whether it is public or
    #   private. Private flows use Amazon Web Services PrivateLink to route
    #   data over Amazon Web Services infrastructure without exposing it to
    #   the public internet.
    #   @return [String]
    #
    # @!attribute [rw] connector_profile_config
    #   Defines the connector-specific configuration and credentials.
    #   @return [Types::ConnectorProfileConfig]
    #
    # @!attribute [rw] client_token
    #   The `clientToken` parameter is an idempotency token. It ensures that
    #   your `CreateConnectorProfile` request completes only once. You
    #   choose the value to pass. For example, if you don't receive a
    #   response from your request, you can safely retry the request with
    #   the same `clientToken` parameter value.
    #
    #   If you omit a `clientToken` value, the Amazon Web Services SDK that
    #   you are using inserts a value for you. This way, the SDK can safely
    #   retry requests multiple times after a network error. You must
    #   provide your own value for other use cases.
    #
    #   If you specify input parameters that differ from your first request,
    #   an error occurs. If you use a different value for `clientToken`,
    #   Amazon AppFlow considers it a new call to `CreateConnectorProfile`.
    #   The token is active for 8 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/CreateConnectorProfileRequest AWS API Documentation
    #
    class CreateConnectorProfileRequest < Struct.new(
      :connector_profile_name,
      :kms_arn,
      :connector_type,
      :connector_label,
      :connection_mode,
      :connector_profile_config,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_profile_arn
    #   The Amazon Resource Name (ARN) of the connector profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/CreateConnectorProfileResponse AWS API Documentation
    #
    class CreateConnectorProfileResponse < Struct.new(
      :connector_profile_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_name
    #   The specified name of the flow. Spaces are not allowed. Use
    #   underscores (\_) or hyphens (-) only.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the flow you want to create.
    #   @return [String]
    #
    # @!attribute [rw] kms_arn
    #   The ARN (Amazon Resource Name) of the Key Management Service (KMS)
    #   key you provide for encryption. This is required if you do not want
    #   to use the Amazon AppFlow-managed KMS key. If you don't provide
    #   anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS
    #   key.
    #   @return [String]
    #
    # @!attribute [rw] trigger_config
    #   The trigger settings that determine how and when the flow runs.
    #   @return [Types::TriggerConfig]
    #
    # @!attribute [rw] source_flow_config
    #   The configuration that controls how Amazon AppFlow retrieves data
    #   from the source connector.
    #   @return [Types::SourceFlowConfig]
    #
    # @!attribute [rw] destination_flow_config_list
    #   The configuration that controls how Amazon AppFlow places data in
    #   the destination connector.
    #   @return [Array<Types::DestinationFlowConfig>]
    #
    # @!attribute [rw] tasks
    #   A list of tasks that Amazon AppFlow performs while transferring the
    #   data in the flow run.
    #   @return [Array<Types::Task>]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for your flow.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] metadata_catalog_config
    #   Specifies the configuration that Amazon AppFlow uses when it
    #   catalogs the data that's transferred by the associated flow. When
    #   Amazon AppFlow catalogs the data from a flow, it stores metadata in
    #   a data catalog.
    #   @return [Types::MetadataCatalogConfig]
    #
    # @!attribute [rw] client_token
    #   The `clientToken` parameter is an idempotency token. It ensures that
    #   your `CreateFlow` request completes only once. You choose the value
    #   to pass. For example, if you don't receive a response from your
    #   request, you can safely retry the request with the same
    #   `clientToken` parameter value.
    #
    #   If you omit a `clientToken` value, the Amazon Web Services SDK that
    #   you are using inserts a value for you. This way, the SDK can safely
    #   retry requests multiple times after a network error. You must
    #   provide your own value for other use cases.
    #
    #   If you specify input parameters that differ from your first request,
    #   an error occurs. If you use a different value for `clientToken`,
    #   Amazon AppFlow considers it a new call to `CreateFlow`. The token is
    #   active for 8 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/CreateFlowRequest AWS API Documentation
    #
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
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_arn
    #   The flow's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] flow_status
    #   Indicates the current status of the flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/CreateFlowResponse AWS API Documentation
    #
    class CreateFlowResponse < Struct.new(
      :flow_arn,
      :flow_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information required for custom authentication.
    #
    # @!attribute [rw] custom_authentication_type
    #   The authentication type that the custom connector uses.
    #   @return [String]
    #
    # @!attribute [rw] auth_parameters
    #   Information about authentication parameters required for
    #   authentication.
    #   @return [Array<Types::AuthParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/CustomAuthConfig AWS API Documentation
    #
    class CustomAuthConfig < Struct.new(
      :custom_authentication_type,
      :auth_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The custom credentials required for custom authentication.
    #
    # @!attribute [rw] custom_authentication_type
    #   The custom authentication type that the connector uses.
    #   @return [String]
    #
    # @!attribute [rw] credentials_map
    #   A map that holds custom authentication credentials.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/CustomAuthCredentials AWS API Documentation
    #
    class CustomAuthCredentials < Struct.new(
      :custom_authentication_type,
      :credentials_map)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties that are applied when the custom connector is being
    # used as a destination.
    #
    # @!attribute [rw] entity_name
    #   The entity specified in the custom connector as a destination in the
    #   flow.
    #   @return [String]
    #
    # @!attribute [rw] error_handling_config
    #   The settings that determine how Amazon AppFlow handles an error when
    #   placing data in the custom connector as destination.
    #   @return [Types::ErrorHandlingConfig]
    #
    # @!attribute [rw] write_operation_type
    #   Specifies the type of write operation to be performed in the custom
    #   connector when it's used as destination.
    #   @return [String]
    #
    # @!attribute [rw] id_field_names
    #   The name of the field that Amazon AppFlow uses as an ID when
    #   performing a write operation such as update, delete, or upsert.
    #   @return [Array<String>]
    #
    # @!attribute [rw] custom_properties
    #   The custom properties that are specific to the connector when it's
    #   used as a destination in the flow.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/CustomConnectorDestinationProperties AWS API Documentation
    #
    class CustomConnectorDestinationProperties < Struct.new(
      :entity_name,
      :error_handling_config,
      :write_operation_type,
      :id_field_names,
      :custom_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector-specific profile credentials that are required when
    # using the custom connector.
    #
    # @!attribute [rw] authentication_type
    #   The authentication type that the custom connector uses for
    #   authenticating while creating a connector profile.
    #   @return [String]
    #
    # @!attribute [rw] basic
    #   The basic credentials that are required for the authentication of
    #   the user.
    #   @return [Types::BasicAuthCredentials]
    #
    # @!attribute [rw] oauth2
    #   The OAuth 2.0 credentials required for the authentication of the
    #   user.
    #   @return [Types::OAuth2Credentials]
    #
    # @!attribute [rw] api_key
    #   The API keys required for the authentication of the user.
    #   @return [Types::ApiKeyCredentials]
    #
    # @!attribute [rw] custom
    #   If the connector uses the custom authentication mechanism, this
    #   holds the required credentials.
    #   @return [Types::CustomAuthCredentials]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/CustomConnectorProfileCredentials AWS API Documentation
    #
    class CustomConnectorProfileCredentials < Struct.new(
      :authentication_type,
      :basic,
      :oauth2,
      :api_key,
      :custom)
      SENSITIVE = []
      include Aws::Structure
    end

    # The profile properties required by the custom connector.
    #
    # @!attribute [rw] profile_properties
    #   A map of properties that are required to create a profile for the
    #   custom connector.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] o_auth_2_properties
    #   The OAuth 2.0 properties required for OAuth 2.0 authentication.
    #   @return [Types::OAuth2Properties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/CustomConnectorProfileProperties AWS API Documentation
    #
    class CustomConnectorProfileProperties < Struct.new(
      :profile_properties,
      :o_auth_2_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties that are applied when the custom connector is being
    # used as a source.
    #
    # @!attribute [rw] entity_name
    #   The entity specified in the custom connector as a source in the
    #   flow.
    #   @return [String]
    #
    # @!attribute [rw] custom_properties
    #   Custom properties that are required to use the custom connector as a
    #   source.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] data_transfer_api
    #   The API of the connector application that Amazon AppFlow uses to
    #   transfer your data.
    #   @return [Types::DataTransferApi]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/CustomConnectorSourceProperties AWS API Documentation
    #
    class CustomConnectorSourceProperties < Struct.new(
      :entity_name,
      :custom_properties,
      :data_transfer_api)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties that are applied when Amazon Connect Customer Profiles
    # is used as a destination.
    #
    # @!attribute [rw] domain_name
    #   The unique name of the Amazon Connect Customer Profiles domain.
    #   @return [String]
    #
    # @!attribute [rw] object_type_name
    #   The object specified in the Amazon Connect Customer Profiles flow
    #   destination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/CustomerProfilesDestinationProperties AWS API Documentation
    #
    class CustomerProfilesDestinationProperties < Struct.new(
      :domain_name,
      :object_type_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector metadata specific to Amazon Connect Customer Profiles.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/CustomerProfilesMetadata AWS API Documentation
    #
    class CustomerProfilesMetadata < Aws::EmptyStructure; end

    # The API of the connector application that Amazon AppFlow uses to
    # transfer your data.
    #
    # @!attribute [rw] name
    #   The name of the connector application API.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   You can specify one of the following types:
    #
    #   AUTOMATIC
    #
    #   : The default. Optimizes a flow for datasets that fluctuate in size
    #     from small to large. For each flow run, Amazon AppFlow chooses to
    #     use the SYNC or ASYNC API type based on the amount of data that
    #     the run transfers.
    #
    #   SYNC
    #
    #   : A synchronous API. This type of API optimizes a flow for small to
    #     medium-sized datasets.
    #
    #   ASYNC
    #
    #   : An asynchronous API. This type of API optimizes a flow for large
    #     datasets.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DataTransferApi AWS API Documentation
    #
    class DataTransferApi < Struct.new(
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector-specific credentials required by Datadog.
    #
    # @!attribute [rw] api_key
    #   A unique alphanumeric identifier used to authenticate a user,
    #   developer, or calling program to your API.
    #   @return [String]
    #
    # @!attribute [rw] application_key
    #   Application keys, in conjunction with your API key, give you full
    #   access to Datadog’s programmatic API. Application keys are
    #   associated with the user account that created them. The application
    #   key is used to log all requests made to the API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DatadogConnectorProfileCredentials AWS API Documentation
    #
    class DatadogConnectorProfileCredentials < Struct.new(
      :api_key,
      :application_key)
      SENSITIVE = [:api_key]
      include Aws::Structure
    end

    # The connector-specific profile properties required by Datadog.
    #
    # @!attribute [rw] instance_url
    #   The location of the Datadog resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DatadogConnectorProfileProperties AWS API Documentation
    #
    class DatadogConnectorProfileProperties < Struct.new(
      :instance_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector metadata specific to Datadog.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DatadogMetadata AWS API Documentation
    #
    class DatadogMetadata < Aws::EmptyStructure; end

    # The properties that are applied when Datadog is being used as a
    # source.
    #
    # @!attribute [rw] object
    #   The object specified in the Datadog flow source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DatadogSourceProperties AWS API Documentation
    #
    class DatadogSourceProperties < Struct.new(
      :object)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_profile_name
    #   The name of the connector profile. The name is unique for each
    #   `ConnectorProfile` in your account.
    #   @return [String]
    #
    # @!attribute [rw] force_delete
    #   Indicates whether Amazon AppFlow should delete the profile, even if
    #   it is currently in use in one or more flows.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DeleteConnectorProfileRequest AWS API Documentation
    #
    class DeleteConnectorProfileRequest < Struct.new(
      :connector_profile_name,
      :force_delete)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DeleteConnectorProfileResponse AWS API Documentation
    #
    class DeleteConnectorProfileResponse < Aws::EmptyStructure; end

    # @!attribute [rw] flow_name
    #   The specified name of the flow. Spaces are not allowed. Use
    #   underscores (\_) or hyphens (-) only.
    #   @return [String]
    #
    # @!attribute [rw] force_delete
    #   Indicates whether Amazon AppFlow should delete the flow, even if it
    #   is currently in use.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DeleteFlowRequest AWS API Documentation
    #
    class DeleteFlowRequest < Struct.new(
      :flow_name,
      :force_delete)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DeleteFlowResponse AWS API Documentation
    #
    class DeleteFlowResponse < Aws::EmptyStructure; end

    # @!attribute [rw] connector_entity_name
    #   The entity name for that connector.
    #   @return [String]
    #
    # @!attribute [rw] connector_type
    #   The type of connector application, such as Salesforce, Amplitude,
    #   and so on.
    #   @return [String]
    #
    # @!attribute [rw] connector_profile_name
    #   The name of the connector profile. The name is unique for each
    #   `ConnectorProfile` in the Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] api_version
    #   The version of the API that's used by the connector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DescribeConnectorEntityRequest AWS API Documentation
    #
    class DescribeConnectorEntityRequest < Struct.new(
      :connector_entity_name,
      :connector_type,
      :connector_profile_name,
      :api_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_entity_fields
    #   Describes the fields for that connector entity. For example, for an
    #   *account* entity, the fields would be *account name*, *account ID*,
    #   and so on.
    #   @return [Array<Types::ConnectorEntityField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DescribeConnectorEntityResponse AWS API Documentation
    #
    class DescribeConnectorEntityResponse < Struct.new(
      :connector_entity_fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_profile_names
    #   The name of the connector profile. The name is unique for each
    #   `ConnectorProfile` in the Amazon Web Services account.
    #   @return [Array<String>]
    #
    # @!attribute [rw] connector_type
    #   The type of connector, such as Salesforce, Amplitude, and so on.
    #   @return [String]
    #
    # @!attribute [rw] connector_label
    #   The name of the connector. The name is unique for each
    #   `ConnectorRegistration` in your Amazon Web Services account. Only
    #   needed if calling for CUSTOMCONNECTOR connector type/.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of items that should be returned in the
    #   result set. The default for `maxResults` is 20 (for all paginated
    #   API operations).
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the next page of data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DescribeConnectorProfilesRequest AWS API Documentation
    #
    class DescribeConnectorProfilesRequest < Struct.new(
      :connector_profile_names,
      :connector_type,
      :connector_label,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_profile_details
    #   Returns information about the connector profiles associated with the
    #   flow.
    #   @return [Array<Types::ConnectorProfile>]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the next page of data. If `nextToken=null`,
    #   this means that all records have been fetched.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DescribeConnectorProfilesResponse AWS API Documentation
    #
    class DescribeConnectorProfilesResponse < Struct.new(
      :connector_profile_details,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_type
    #   The connector type, such as CUSTOMCONNECTOR, Saleforce, Marketo.
    #   Please choose CUSTOMCONNECTOR for Lambda based custom connectors.
    #   @return [String]
    #
    # @!attribute [rw] connector_label
    #   The label of the connector. The label is unique for each
    #   `ConnectorRegistration` in your Amazon Web Services account. Only
    #   needed if calling for CUSTOMCONNECTOR connector type/.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DescribeConnectorRequest AWS API Documentation
    #
    class DescribeConnectorRequest < Struct.new(
      :connector_type,
      :connector_label)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_configuration
    #   Configuration info of all the connectors that the user requested.
    #   @return [Types::ConnectorConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DescribeConnectorResponse AWS API Documentation
    #
    class DescribeConnectorResponse < Struct.new(
      :connector_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_types
    #   The type of connector, such as Salesforce, Amplitude, and so on.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items that should be returned in the result
    #   set. The default is 20.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the next page of data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DescribeConnectorsRequest AWS API Documentation
    #
    class DescribeConnectorsRequest < Struct.new(
      :connector_types,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_configurations
    #   The configuration that is applied to the connectors used in the
    #   flow.
    #   @return [Hash<String,Types::ConnectorConfiguration>]
    #
    # @!attribute [rw] connectors
    #   Information about the connectors supported in Amazon AppFlow.
    #   @return [Array<Types::ConnectorDetail>]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the next page of data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DescribeConnectorsResponse AWS API Documentation
    #
    class DescribeConnectorsResponse < Struct.new(
      :connector_configurations,
      :connectors,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_name
    #   The specified name of the flow. Spaces are not allowed. Use
    #   underscores (\_) or hyphens (-) only.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of items that should be returned in the
    #   result set. The default for `maxResults` is 20 (for all paginated
    #   API operations).
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the next page of data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DescribeFlowExecutionRecordsRequest AWS API Documentation
    #
    class DescribeFlowExecutionRecordsRequest < Struct.new(
      :flow_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_executions
    #   Returns a list of all instances when this flow was run.
    #   @return [Array<Types::ExecutionRecord>]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the next page of data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DescribeFlowExecutionRecordsResponse AWS API Documentation
    #
    class DescribeFlowExecutionRecordsResponse < Struct.new(
      :flow_executions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_name
    #   The specified name of the flow. Spaces are not allowed. Use
    #   underscores (\_) or hyphens (-) only.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DescribeFlowRequest AWS API Documentation
    #
    class DescribeFlowRequest < Struct.new(
      :flow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_arn
    #   The flow's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the flow.
    #   @return [String]
    #
    # @!attribute [rw] flow_name
    #   The specified name of the flow. Spaces are not allowed. Use
    #   underscores (\_) or hyphens (-) only.
    #   @return [String]
    #
    # @!attribute [rw] kms_arn
    #   The ARN (Amazon Resource Name) of the Key Management Service (KMS)
    #   key you provide for encryption. This is required if you do not want
    #   to use the Amazon AppFlow-managed KMS key. If you don't provide
    #   anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS
    #   key.
    #   @return [String]
    #
    # @!attribute [rw] flow_status
    #   Indicates the current status of the flow.
    #   @return [String]
    #
    # @!attribute [rw] flow_status_message
    #   Contains an error message if the flow status is in a suspended or
    #   error state. This applies only to scheduled or event-triggered
    #   flows.
    #   @return [String]
    #
    # @!attribute [rw] source_flow_config
    #   The configuration that controls how Amazon AppFlow retrieves data
    #   from the source connector.
    #   @return [Types::SourceFlowConfig]
    #
    # @!attribute [rw] destination_flow_config_list
    #   The configuration that controls how Amazon AppFlow transfers data to
    #   the destination connector.
    #   @return [Array<Types::DestinationFlowConfig>]
    #
    # @!attribute [rw] last_run_execution_details
    #   Describes the details of the most recent flow run.
    #   @return [Types::ExecutionDetails]
    #
    # @!attribute [rw] trigger_config
    #   The trigger settings that determine how and when the flow runs.
    #   @return [Types::TriggerConfig]
    #
    # @!attribute [rw] tasks
    #   A list of tasks that Amazon AppFlow performs while transferring the
    #   data in the flow run.
    #   @return [Array<Types::Task>]
    #
    # @!attribute [rw] created_at
    #   Specifies when the flow was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   Specifies when the flow was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The ARN of the user who created the flow.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_by
    #   Specifies the user name of the account that performed the most
    #   recent update.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for your flow.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] metadata_catalog_config
    #   Specifies the configuration that Amazon AppFlow uses when it
    #   catalogs the data that's transferred by the associated flow. When
    #   Amazon AppFlow catalogs the data from a flow, it stores metadata in
    #   a data catalog.
    #   @return [Types::MetadataCatalogConfig]
    #
    # @!attribute [rw] last_run_metadata_catalog_details
    #   Describes the metadata catalog, metadata table, and data partitions
    #   that Amazon AppFlow used for the associated flow run.
    #   @return [Array<Types::MetadataCatalogDetail>]
    #
    # @!attribute [rw] schema_version
    #   The version number of your data schema. Amazon AppFlow assigns this
    #   version number. The version number increases by one when you change
    #   any of the following settings in your flow configuration:
    #
    #   * Source-to-destination field mappings
    #
    #   * Field data types
    #
    #   * Partition keys
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DescribeFlowResponse AWS API Documentation
    #
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
      :schema_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # This stores the information that is required to query a particular
    # connector.
    #
    # @!attribute [rw] redshift
    #   The properties required to query Amazon Redshift.
    #   @return [Types::RedshiftDestinationProperties]
    #
    # @!attribute [rw] s3
    #   The properties required to query Amazon S3.
    #   @return [Types::S3DestinationProperties]
    #
    # @!attribute [rw] salesforce
    #   The properties required to query Salesforce.
    #   @return [Types::SalesforceDestinationProperties]
    #
    # @!attribute [rw] snowflake
    #   The properties required to query Snowflake.
    #   @return [Types::SnowflakeDestinationProperties]
    #
    # @!attribute [rw] event_bridge
    #   The properties required to query Amazon EventBridge.
    #   @return [Types::EventBridgeDestinationProperties]
    #
    # @!attribute [rw] lookout_metrics
    #   The properties required to query Amazon Lookout for Metrics.
    #   @return [Types::LookoutMetricsDestinationProperties]
    #
    # @!attribute [rw] upsolver
    #   The properties required to query Upsolver.
    #   @return [Types::UpsolverDestinationProperties]
    #
    # @!attribute [rw] honeycode
    #   The properties required to query Amazon Honeycode.
    #   @return [Types::HoneycodeDestinationProperties]
    #
    # @!attribute [rw] customer_profiles
    #   The properties required to query Amazon Connect Customer Profiles.
    #   @return [Types::CustomerProfilesDestinationProperties]
    #
    # @!attribute [rw] zendesk
    #   The properties required to query Zendesk.
    #   @return [Types::ZendeskDestinationProperties]
    #
    # @!attribute [rw] marketo
    #   The properties required to query Marketo.
    #   @return [Types::MarketoDestinationProperties]
    #
    # @!attribute [rw] custom_connector
    #   The properties that are required to query the custom Connector.
    #   @return [Types::CustomConnectorDestinationProperties]
    #
    # @!attribute [rw] sapo_data
    #   The properties required to query SAPOData.
    #   @return [Types::SAPODataDestinationProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DestinationConnectorProperties AWS API Documentation
    #
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
      :sapo_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties that can be applied to a field when connector is being
    # used as a destination.
    #
    # @!attribute [rw] is_creatable
    #   Specifies if the destination field can be created by the current
    #   user.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_nullable
    #   Specifies if the destination field can have a null value.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_upsertable
    #   Specifies if the flow run can either insert new rows in the
    #   destination field if they do not already exist, or update them if
    #   they do.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_updatable
    #   Specifies whether the field can be updated during an `UPDATE` or
    #   `UPSERT` write operation.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_defaulted_on_create
    #   Specifies whether the field can use the default value during a
    #   Create operation.
    #   @return [Boolean]
    #
    # @!attribute [rw] supported_write_operations
    #   A list of supported write operations. For each write operation
    #   listed, this field can be used in `idFieldNames` when that write
    #   operation is present as a destination option.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DestinationFieldProperties AWS API Documentation
    #
    class DestinationFieldProperties < Struct.new(
      :is_creatable,
      :is_nullable,
      :is_upsertable,
      :is_updatable,
      :is_defaulted_on_create,
      :supported_write_operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the configuration of destination connectors
    # present in the flow.
    #
    # @!attribute [rw] connector_type
    #   The type of connector, such as Salesforce, Amplitude, and so on.
    #   @return [String]
    #
    # @!attribute [rw] api_version
    #   The API version that the destination connector uses.
    #   @return [String]
    #
    # @!attribute [rw] connector_profile_name
    #   The name of the connector profile. This name must be unique for each
    #   connector profile in the Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] destination_connector_properties
    #   This stores the information that is required to query a particular
    #   connector.
    #   @return [Types::DestinationConnectorProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DestinationFlowConfig AWS API Documentation
    #
    class DestinationFlowConfig < Struct.new(
      :connector_type,
      :api_version,
      :connector_profile_name,
      :destination_connector_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector-specific profile credentials required by Dynatrace.
    #
    # @!attribute [rw] api_token
    #   The API tokens used by Dynatrace API to authenticate various API
    #   calls.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DynatraceConnectorProfileCredentials AWS API Documentation
    #
    class DynatraceConnectorProfileCredentials < Struct.new(
      :api_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector-specific profile properties required by Dynatrace.
    #
    # @!attribute [rw] instance_url
    #   The location of the Dynatrace resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DynatraceConnectorProfileProperties AWS API Documentation
    #
    class DynatraceConnectorProfileProperties < Struct.new(
      :instance_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector metadata specific to Dynatrace.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DynatraceMetadata AWS API Documentation
    #
    class DynatraceMetadata < Aws::EmptyStructure; end

    # The properties that are applied when Dynatrace is being used as a
    # source.
    #
    # @!attribute [rw] object
    #   The object specified in the Dynatrace flow source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DynatraceSourceProperties AWS API Documentation
    #
    class DynatraceSourceProperties < Struct.new(
      :object)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings that determine how Amazon AppFlow handles an error when
    # placing data in the destination. For example, this setting would
    # determine if the flow should fail after one insertion error, or
    # continue and attempt to insert every record regardless of the initial
    # failure. `ErrorHandlingConfig` is a part of the destination connector
    # details.
    #
    # @!attribute [rw] fail_on_first_destination_error
    #   Specifies if the flow should fail after the first instance of a
    #   failure when attempting to place data in the destination.
    #   @return [Boolean]
    #
    # @!attribute [rw] bucket_prefix
    #   Specifies the Amazon S3 bucket prefix.
    #   @return [String]
    #
    # @!attribute [rw] bucket_name
    #   Specifies the name of the Amazon S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ErrorHandlingConfig AWS API Documentation
    #
    class ErrorHandlingConfig < Struct.new(
      :fail_on_first_destination_error,
      :bucket_prefix,
      :bucket_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details in the event of a failed flow, including the failure
    # count and the related error messages.
    #
    # @!attribute [rw] put_failures_count
    #   Specifies the failure count for the attempted flow.
    #   @return [Integer]
    #
    # @!attribute [rw] execution_message
    #   Specifies the error message that appears if a flow fails.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ErrorInfo AWS API Documentation
    #
    class ErrorInfo < Struct.new(
      :put_failures_count,
      :execution_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties that are applied when Amazon EventBridge is being used
    # as a destination.
    #
    # @!attribute [rw] object
    #   The object specified in the Amazon EventBridge flow destination.
    #   @return [String]
    #
    # @!attribute [rw] error_handling_config
    #   The settings that determine how Amazon AppFlow handles an error when
    #   placing data in the destination. For example, this setting would
    #   determine if the flow should fail after one insertion error, or
    #   continue and attempt to insert every record regardless of the
    #   initial failure. `ErrorHandlingConfig` is a part of the destination
    #   connector details.
    #   @return [Types::ErrorHandlingConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/EventBridgeDestinationProperties AWS API Documentation
    #
    class EventBridgeDestinationProperties < Struct.new(
      :object,
      :error_handling_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector metadata specific to Amazon EventBridge.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/EventBridgeMetadata AWS API Documentation
    #
    class EventBridgeMetadata < Aws::EmptyStructure; end

    # Describes the details of the flow run, including the timestamp,
    # status, and message.
    #
    # @!attribute [rw] most_recent_execution_message
    #   Describes the details of the most recent flow run.
    #   @return [String]
    #
    # @!attribute [rw] most_recent_execution_time
    #   Specifies the time of the most recent flow run.
    #   @return [Time]
    #
    # @!attribute [rw] most_recent_execution_status
    #   Specifies the status of the most recent flow run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ExecutionDetails AWS API Documentation
    #
    class ExecutionDetails < Struct.new(
      :most_recent_execution_message,
      :most_recent_execution_time,
      :most_recent_execution_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies information about the past flow run instances for a given
    # flow.
    #
    # @!attribute [rw] execution_id
    #   Specifies the identifier of the given flow run.
    #   @return [String]
    #
    # @!attribute [rw] execution_status
    #   Specifies the flow run status and whether it is in progress, has
    #   completed successfully, or has failed.
    #   @return [String]
    #
    # @!attribute [rw] execution_result
    #   Describes the result of the given flow run.
    #   @return [Types::ExecutionResult]
    #
    # @!attribute [rw] started_at
    #   Specifies the start time of the flow run.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   Specifies the time of the most recent update.
    #   @return [Time]
    #
    # @!attribute [rw] data_pull_start_time
    #   The timestamp that determines the first new or updated record to be
    #   transferred in the flow run.
    #   @return [Time]
    #
    # @!attribute [rw] data_pull_end_time
    #   The timestamp that indicates the last new or updated record to be
    #   transferred in the flow run.
    #   @return [Time]
    #
    # @!attribute [rw] metadata_catalog_details
    #   Describes the metadata catalog, metadata table, and data partitions
    #   that Amazon AppFlow used for the associated flow run.
    #   @return [Array<Types::MetadataCatalogDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ExecutionRecord AWS API Documentation
    #
    class ExecutionRecord < Struct.new(
      :execution_id,
      :execution_status,
      :execution_result,
      :started_at,
      :last_updated_at,
      :data_pull_start_time,
      :data_pull_end_time,
      :metadata_catalog_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the end result of the flow run.
    #
    # @!attribute [rw] error_info
    #   Provides any error message information related to the flow run.
    #   @return [Types::ErrorInfo]
    #
    # @!attribute [rw] bytes_processed
    #   The total number of bytes processed by the flow run.
    #   @return [Integer]
    #
    # @!attribute [rw] bytes_written
    #   The total number of bytes written as a result of the flow run.
    #   @return [Integer]
    #
    # @!attribute [rw] records_processed
    #   The number of records processed in the flow run.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ExecutionResult AWS API Documentation
    #
    class ExecutionResult < Struct.new(
      :error_info,
      :bytes_processed,
      :bytes_written,
      :records_processed)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details regarding the supported field type and the operators
    # that can be applied for filtering.
    #
    # @!attribute [rw] field_type
    #   The type of field, such as string, integer, date, and so on.
    #   @return [String]
    #
    # @!attribute [rw] filter_operators
    #   The list of operators supported by a field.
    #   @return [Array<String>]
    #
    # @!attribute [rw] supported_values
    #   The list of values that a field can contain. For example, a Boolean
    #   `fieldType` can have two values: "true" and "false".
    #   @return [Array<String>]
    #
    # @!attribute [rw] value_regex_pattern
    #   The regular expression pattern for the field name.
    #   @return [String]
    #
    # @!attribute [rw] supported_date_format
    #   The date format that the field supports.
    #   @return [String]
    #
    # @!attribute [rw] field_value_range
    #   The range of values this field can hold.
    #   @return [Types::Range]
    #
    # @!attribute [rw] field_length_range
    #   This is the allowable length range for this field's value.
    #   @return [Types::Range]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/FieldTypeDetails AWS API Documentation
    #
    class FieldTypeDetails < Struct.new(
      :field_type,
      :filter_operators,
      :supported_values,
      :value_regex_pattern,
      :supported_date_format,
      :field_value_range,
      :field_length_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties of the flow, such as its source, destination, trigger
    # type, and so on.
    #
    # @!attribute [rw] flow_arn
    #   The flow's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A user-entered description of the flow.
    #   @return [String]
    #
    # @!attribute [rw] flow_name
    #   The specified name of the flow. Spaces are not allowed. Use
    #   underscores (\_) or hyphens (-) only.
    #   @return [String]
    #
    # @!attribute [rw] flow_status
    #   Indicates the current status of the flow.
    #   @return [String]
    #
    # @!attribute [rw] source_connector_type
    #   Specifies the source connector type, such as Salesforce, Amazon S3,
    #   Amplitude, and so on.
    #   @return [String]
    #
    # @!attribute [rw] source_connector_label
    #   The label of the source connector in the flow.
    #   @return [String]
    #
    # @!attribute [rw] destination_connector_type
    #   Specifies the destination connector type, such as Salesforce, Amazon
    #   S3, Amplitude, and so on.
    #   @return [String]
    #
    # @!attribute [rw] destination_connector_label
    #   The label of the destination connector in the flow.
    #   @return [String]
    #
    # @!attribute [rw] trigger_type
    #   Specifies the type of flow trigger. This can be `OnDemand`,
    #   `Scheduled`, or `Event`.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Specifies when the flow was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   Specifies when the flow was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The ARN of the user who created the flow.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_by
    #   Specifies the account user name that most recently updated the flow.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for your flow.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] last_run_execution_details
    #   Describes the details of the most recent flow run.
    #   @return [Types::ExecutionDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/FlowDefinition AWS API Documentation
    #
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
      :last_run_execution_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configuration that Amazon AppFlow uses when it catalogs
    # your data with the Glue Data Catalog. When Amazon AppFlow catalogs
    # your data, it stores metadata in Data Catalog tables. This metadata
    # represents the data that's transferred by the flow that you configure
    # with these settings.
    #
    # <note markdown="1"> You can configure a flow with these settings only when the flow
    # destination is Amazon S3.
    #
    #  </note>
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that grants Amazon
    #   AppFlow the permissions it needs to create Data Catalog tables,
    #   databases, and partitions.
    #
    #   For an example IAM policy that has the required permissions, see
    #   [Identity-based policy examples for Amazon AppFlow][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/appflow/latest/userguide/security_iam_id-based-policy-examples.html
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the Data Catalog database that stores the metadata
    #   tables that Amazon AppFlow creates in your Amazon Web Services
    #   account. These tables contain metadata for the data that's
    #   transferred by the flow that you configure with this parameter.
    #
    #   <note markdown="1"> When you configure a new flow with this parameter, you must specify
    #   an existing database.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] table_prefix
    #   A naming prefix for each Data Catalog table that Amazon AppFlow
    #   creates for the flow that you configure with this setting. Amazon
    #   AppFlow adds the prefix to the beginning of the each table name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/GlueDataCatalogConfig AWS API Documentation
    #
    class GlueDataCatalogConfig < Struct.new(
      :role_arn,
      :database_name,
      :table_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector-specific profile credentials required by Google
    # Analytics.
    #
    # @!attribute [rw] client_id
    #   The identifier for the desired client.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The client secret used by the OAuth client to authenticate to the
    #   authorization server.
    #   @return [String]
    #
    # @!attribute [rw] access_token
    #   The credentials used to access protected Google Analytics resources.
    #   @return [String]
    #
    # @!attribute [rw] refresh_token
    #   The credentials used to acquire new access tokens. This is required
    #   only for OAuth2 access tokens, and is not required for OAuth1 access
    #   tokens.
    #   @return [String]
    #
    # @!attribute [rw] o_auth_request
    #   The OAuth requirement needed to request security tokens from the
    #   connector endpoint.
    #   @return [Types::ConnectorOAuthRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/GoogleAnalyticsConnectorProfileCredentials AWS API Documentation
    #
    class GoogleAnalyticsConnectorProfileCredentials < Struct.new(
      :client_id,
      :client_secret,
      :access_token,
      :refresh_token,
      :o_auth_request)
      SENSITIVE = [:client_secret, :access_token]
      include Aws::Structure
    end

    # The connector-specific profile properties required by Google
    # Analytics.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/GoogleAnalyticsConnectorProfileProperties AWS API Documentation
    #
    class GoogleAnalyticsConnectorProfileProperties < Aws::EmptyStructure; end

    # The connector metadata specific to Google Analytics.
    #
    # @!attribute [rw] o_auth_scopes
    #   The desired authorization scope for the Google Analytics account.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/GoogleAnalyticsMetadata AWS API Documentation
    #
    class GoogleAnalyticsMetadata < Struct.new(
      :o_auth_scopes)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties that are applied when Google Analytics is being used as
    # a source.
    #
    # @!attribute [rw] object
    #   The object specified in the Google Analytics flow source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/GoogleAnalyticsSourceProperties AWS API Documentation
    #
    class GoogleAnalyticsSourceProperties < Struct.new(
      :object)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector-specific credentials required when using Amazon
    # Honeycode.
    #
    # @!attribute [rw] access_token
    #   The credentials used to access protected Amazon Honeycode resources.
    #   @return [String]
    #
    # @!attribute [rw] refresh_token
    #   The credentials used to acquire new access tokens.
    #   @return [String]
    #
    # @!attribute [rw] o_auth_request
    #   Used by select connectors for which the OAuth workflow is supported,
    #   such as Salesforce, Google Analytics, Marketo, Zendesk, and Slack.
    #   @return [Types::ConnectorOAuthRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/HoneycodeConnectorProfileCredentials AWS API Documentation
    #
    class HoneycodeConnectorProfileCredentials < Struct.new(
      :access_token,
      :refresh_token,
      :o_auth_request)
      SENSITIVE = [:access_token]
      include Aws::Structure
    end

    # The connector-specific properties required when using Amazon
    # Honeycode.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/HoneycodeConnectorProfileProperties AWS API Documentation
    #
    class HoneycodeConnectorProfileProperties < Aws::EmptyStructure; end

    # The properties that are applied when Amazon Honeycode is used as a
    # destination.
    #
    # @!attribute [rw] object
    #   The object specified in the Amazon Honeycode flow destination.
    #   @return [String]
    #
    # @!attribute [rw] error_handling_config
    #   The settings that determine how Amazon AppFlow handles an error when
    #   placing data in the destination. For example, this setting would
    #   determine if the flow should fail after one insertion error, or
    #   continue and attempt to insert every record regardless of the
    #   initial failure. `ErrorHandlingConfig` is a part of the destination
    #   connector details.
    #   @return [Types::ErrorHandlingConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/HoneycodeDestinationProperties AWS API Documentation
    #
    class HoneycodeDestinationProperties < Struct.new(
      :object,
      :error_handling_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector metadata specific to Amazon Honeycode.
    #
    # @!attribute [rw] o_auth_scopes
    #   The desired authorization scope for the Amazon Honeycode account.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/HoneycodeMetadata AWS API Documentation
    #
    class HoneycodeMetadata < Struct.new(
      :o_auth_scopes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configuration used when importing incremental records
    # from the source.
    #
    # @!attribute [rw] datetime_type_field_name
    #   A field that specifies the date time or timestamp field as the
    #   criteria to use when importing incremental records from the source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/IncrementalPullConfig AWS API Documentation
    #
    class IncrementalPullConfig < Struct.new(
      :datetime_type_field_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector-specific profile credentials required by Infor Nexus.
    #
    # @!attribute [rw] access_key_id
    #   The Access Key portion of the credentials.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier for the user.
    #   @return [String]
    #
    # @!attribute [rw] secret_access_key
    #   The secret key used to sign requests.
    #   @return [String]
    #
    # @!attribute [rw] datakey
    #   The encryption keys used to encrypt data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/InforNexusConnectorProfileCredentials AWS API Documentation
    #
    class InforNexusConnectorProfileCredentials < Struct.new(
      :access_key_id,
      :user_id,
      :secret_access_key,
      :datakey)
      SENSITIVE = [:access_key_id]
      include Aws::Structure
    end

    # The connector-specific profile properties required by Infor Nexus.
    #
    # @!attribute [rw] instance_url
    #   The location of the Infor Nexus resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/InforNexusConnectorProfileProperties AWS API Documentation
    #
    class InforNexusConnectorProfileProperties < Struct.new(
      :instance_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector metadata specific to Infor Nexus.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/InforNexusMetadata AWS API Documentation
    #
    class InforNexusMetadata < Aws::EmptyStructure; end

    # The properties that are applied when Infor Nexus is being used as a
    # source.
    #
    # @!attribute [rw] object
    #   The object specified in the Infor Nexus flow source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/InforNexusSourceProperties AWS API Documentation
    #
    class InforNexusSourceProperties < Struct.new(
      :object)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal service error occurred during the processing of your
    # request. Try again later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the configuration of the lambda which is
    # being registered as the connector.
    #
    # @!attribute [rw] lambda_arn
    #   Lambda ARN of the connector being registered.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/LambdaConnectorProvisioningConfig AWS API Documentation
    #
    class LambdaConnectorProvisioningConfig < Struct.new(
      :lambda_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_profile_name
    #   The name of the connector profile. The name is unique for each
    #   `ConnectorProfile` in the Amazon Web Services account, and is used
    #   to query the downstream connector.
    #   @return [String]
    #
    # @!attribute [rw] connector_type
    #   The type of connector, such as Salesforce, Amplitude, and so on.
    #   @return [String]
    #
    # @!attribute [rw] entities_path
    #   This optional parameter is specific to connector implementation.
    #   Some connectors support multiple levels or categories of entities.
    #   You can find out the list of roots for such providers by sending a
    #   request without the `entitiesPath` parameter. If the connector
    #   supports entities at different roots, this initial request returns
    #   the list of roots. Otherwise, this request returns all entities
    #   supported by the provider.
    #   @return [String]
    #
    # @!attribute [rw] api_version
    #   The version of the API that's used by the connector.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items that the operation returns in the
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that was provided by your prior `ListConnectorEntities`
    #   operation if the response was too big for the page size. You specify
    #   this token to get the next page of results in paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ListConnectorEntitiesRequest AWS API Documentation
    #
    class ListConnectorEntitiesRequest < Struct.new(
      :connector_profile_name,
      :connector_type,
      :entities_path,
      :api_version,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_entity_map
    #   The response of `ListConnectorEntities` lists entities grouped by
    #   category. This map's key represents the group name, and its value
    #   contains the list of entities belonging to that group.
    #   @return [Hash<String,Array<Types::ConnectorEntity>>]
    #
    # @!attribute [rw] next_token
    #   A token that you specify in your next `ListConnectorEntities`
    #   operation to get the next page of results in paginated response. The
    #   `ListConnectorEntities` operation provides this token if the
    #   response is too big for the page size.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ListConnectorEntitiesResponse AWS API Documentation
    #
    class ListConnectorEntitiesResponse < Struct.new(
      :connector_entity_map,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Specifies the maximum number of items that should be returned in the
    #   result set. The default for `maxResults` is 20 (for all paginated
    #   API operations).
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the next page of data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ListConnectorsRequest AWS API Documentation
    #
    class ListConnectorsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connectors
    #   Contains information about the connectors supported by Amazon
    #   AppFlow.
    #   @return [Array<Types::ConnectorDetail>]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the next page of data. If nextToken=null,
    #   this means that all records have been fetched.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ListConnectorsResponse AWS API Documentation
    #
    class ListConnectorsResponse < Struct.new(
      :connectors,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Specifies the maximum number of items that should be returned in the
    #   result set.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token for next page of data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ListFlowsRequest AWS API Documentation
    #
    class ListFlowsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flows
    #   The list of flows associated with your account.
    #   @return [Array<Types::FlowDefinition>]
    #
    # @!attribute [rw] next_token
    #   The pagination token for next page of data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ListFlowsResponse AWS API Documentation
    #
    class ListFlowsResponse < Struct.new(
      :flows,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the specified flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for your flow.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties that are applied when Amazon Lookout for Metrics is
    # used as a destination.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/LookoutMetricsDestinationProperties AWS API Documentation
    #
    class LookoutMetricsDestinationProperties < Aws::EmptyStructure; end

    # The connector-specific profile credentials required by Marketo.
    #
    # @!attribute [rw] client_id
    #   The identifier for the desired client.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The client secret used by the OAuth client to authenticate to the
    #   authorization server.
    #   @return [String]
    #
    # @!attribute [rw] access_token
    #   The credentials used to access protected Marketo resources.
    #   @return [String]
    #
    # @!attribute [rw] o_auth_request
    #   The OAuth requirement needed to request security tokens from the
    #   connector endpoint.
    #   @return [Types::ConnectorOAuthRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/MarketoConnectorProfileCredentials AWS API Documentation
    #
    class MarketoConnectorProfileCredentials < Struct.new(
      :client_id,
      :client_secret,
      :access_token,
      :o_auth_request)
      SENSITIVE = [:client_secret, :access_token]
      include Aws::Structure
    end

    # The connector-specific profile properties required when using Marketo.
    #
    # @!attribute [rw] instance_url
    #   The location of the Marketo resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/MarketoConnectorProfileProperties AWS API Documentation
    #
    class MarketoConnectorProfileProperties < Struct.new(
      :instance_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties that Amazon AppFlow applies when you use Marketo as a
    # flow destination.
    #
    # @!attribute [rw] object
    #   The object specified in the Marketo flow destination.
    #   @return [String]
    #
    # @!attribute [rw] error_handling_config
    #   The settings that determine how Amazon AppFlow handles an error when
    #   placing data in the destination. For example, this setting would
    #   determine if the flow should fail after one insertion error, or
    #   continue and attempt to insert every record regardless of the
    #   initial failure. `ErrorHandlingConfig` is a part of the destination
    #   connector details.
    #   @return [Types::ErrorHandlingConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/MarketoDestinationProperties AWS API Documentation
    #
    class MarketoDestinationProperties < Struct.new(
      :object,
      :error_handling_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector metadata specific to Marketo.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/MarketoMetadata AWS API Documentation
    #
    class MarketoMetadata < Aws::EmptyStructure; end

    # The properties that are applied when Marketo is being used as a
    # source.
    #
    # @!attribute [rw] object
    #   The object specified in the Marketo flow source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/MarketoSourceProperties AWS API Documentation
    #
    class MarketoSourceProperties < Struct.new(
      :object)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configuration that Amazon AppFlow uses when it catalogs
    # your data. When Amazon AppFlow catalogs your data, it stores metadata
    # in a data catalog.
    #
    # @!attribute [rw] glue_data_catalog
    #   Specifies the configuration that Amazon AppFlow uses when it
    #   catalogs your data with the Glue Data Catalog.
    #   @return [Types::GlueDataCatalogConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/MetadataCatalogConfig AWS API Documentation
    #
    class MetadataCatalogConfig < Struct.new(
      :glue_data_catalog)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the metadata catalog, metadata table, and data partitions
    # that Amazon AppFlow used for the associated flow run.
    #
    # @!attribute [rw] catalog_type
    #   The type of metadata catalog that Amazon AppFlow used for the
    #   associated flow run. This parameter returns the following value:
    #
    #   GLUE
    #
    #   : The metadata catalog is provided by the Glue Data Catalog. Glue
    #     includes the Glue Data Catalog as a component.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table that stores the metadata for the associated
    #   flow run. The table stores metadata that represents the data that
    #   the flow transferred. Amazon AppFlow stores the table in the
    #   metadata catalog.
    #   @return [String]
    #
    # @!attribute [rw] table_registration_output
    #   Describes the status of the attempt from Amazon AppFlow to register
    #   the metadata table with the metadata catalog. Amazon AppFlow creates
    #   or updates this table for the associated flow run.
    #   @return [Types::RegistrationOutput]
    #
    # @!attribute [rw] partition_registration_output
    #   Describes the status of the attempt from Amazon AppFlow to register
    #   the data partitions with the metadata catalog. The data partitions
    #   organize the flow output into a hierarchical path, such as a folder
    #   path in an S3 bucket. Amazon AppFlow creates the partitions (if they
    #   don't already exist) based on your flow configuration.
    #   @return [Types::RegistrationOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/MetadataCatalogDetail AWS API Documentation
    #
    class MetadataCatalogDetail < Struct.new(
      :catalog_type,
      :table_name,
      :table_registration_output,
      :partition_registration_output)
      SENSITIVE = []
      include Aws::Structure
    end

    # The OAuth 2.0 credentials required for OAuth 2.0 authentication.
    #
    # @!attribute [rw] client_id
    #   The identifier for the desired client.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The client secret used by the OAuth client to authenticate to the
    #   authorization server.
    #   @return [String]
    #
    # @!attribute [rw] access_token
    #   The access token used to access the connector on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] refresh_token
    #   The refresh token used to refresh an expired access token.
    #   @return [String]
    #
    # @!attribute [rw] o_auth_request
    #   Used by select connectors for which the OAuth workflow is supported,
    #   such as Salesforce, Google Analytics, Marketo, Zendesk, and Slack.
    #   @return [Types::ConnectorOAuthRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/OAuth2Credentials AWS API Documentation
    #
    class OAuth2Credentials < Struct.new(
      :client_id,
      :client_secret,
      :access_token,
      :refresh_token,
      :o_auth_request)
      SENSITIVE = [:client_secret, :access_token]
      include Aws::Structure
    end

    # Custom parameter required for OAuth 2.0 authentication.
    #
    # @!attribute [rw] key
    #   The key of the custom parameter required for OAuth 2.0
    #   authentication.
    #   @return [String]
    #
    # @!attribute [rw] is_required
    #   Indicates whether the custom parameter for OAuth 2.0 authentication
    #   is required.
    #   @return [Boolean]
    #
    # @!attribute [rw] label
    #   The label of the custom parameter used for OAuth 2.0 authentication.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description about the custom parameter used for OAuth 2.0
    #   authentication.
    #   @return [String]
    #
    # @!attribute [rw] is_sensitive_field
    #   Indicates whether this authentication custom parameter is a
    #   sensitive field.
    #   @return [Boolean]
    #
    # @!attribute [rw] connector_supplied_values
    #   Contains default values for this authentication parameter that are
    #   supplied by the connector.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   Indicates whether custom parameter is used with TokenUrl or AuthUrl.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/OAuth2CustomParameter AWS API Documentation
    #
    class OAuth2CustomParameter < Struct.new(
      :key,
      :is_required,
      :label,
      :description,
      :is_sensitive_field,
      :connector_supplied_values,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the default values required for OAuth 2.0 authentication.
    #
    # @!attribute [rw] oauth_scopes
    #   OAuth 2.0 scopes that the connector supports.
    #   @return [Array<String>]
    #
    # @!attribute [rw] token_urls
    #   Token URLs that can be used for OAuth 2.0 authentication.
    #   @return [Array<String>]
    #
    # @!attribute [rw] auth_code_urls
    #   Auth code URLs that can be used for OAuth 2.0 authentication.
    #   @return [Array<String>]
    #
    # @!attribute [rw] oauth2_grant_types_supported
    #   OAuth 2.0 grant types supported by the connector.
    #   @return [Array<String>]
    #
    # @!attribute [rw] oauth2_custom_properties
    #   List of custom parameters required for OAuth 2.0 authentication.
    #   @return [Array<Types::OAuth2CustomParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/OAuth2Defaults AWS API Documentation
    #
    class OAuth2Defaults < Struct.new(
      :oauth_scopes,
      :token_urls,
      :auth_code_urls,
      :oauth2_grant_types_supported,
      :oauth2_custom_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # The OAuth 2.0 properties required for OAuth 2.0 authentication.
    #
    # @!attribute [rw] token_url
    #   The token URL required for OAuth 2.0 authentication.
    #   @return [String]
    #
    # @!attribute [rw] o_auth_2_grant_type
    #   The OAuth 2.0 grant type used by connector for OAuth 2.0
    #   authentication.
    #   @return [String]
    #
    # @!attribute [rw] token_url_custom_properties
    #   Associates your token URL with a map of properties that you define.
    #   Use this parameter to provide any additional details that the
    #   connector requires to authenticate your request.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/OAuth2Properties AWS API Documentation
    #
    class OAuth2Properties < Struct.new(
      :token_url,
      :o_auth_2_grant_type,
      :token_url_custom_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # The OAuth credentials required for OAuth type authentication.
    #
    # @!attribute [rw] client_id
    #   The identifier for the desired client.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The client secret used by the OAuth client to authenticate to the
    #   authorization server.
    #   @return [String]
    #
    # @!attribute [rw] access_token
    #   The access token used to access protected SAPOData resources.
    #   @return [String]
    #
    # @!attribute [rw] refresh_token
    #   The refresh token used to refresh expired access token.
    #   @return [String]
    #
    # @!attribute [rw] o_auth_request
    #   The OAuth requirement needed to request security tokens from the
    #   connector endpoint.
    #   @return [Types::ConnectorOAuthRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/OAuthCredentials AWS API Documentation
    #
    class OAuthCredentials < Struct.new(
      :client_id,
      :client_secret,
      :access_token,
      :refresh_token,
      :o_auth_request)
      SENSITIVE = [:client_secret, :access_token]
      include Aws::Structure
    end

    # The OAuth properties required for OAuth type authentication.
    #
    # @!attribute [rw] token_url
    #   The token url required to fetch access/refresh tokens using
    #   authorization code and also to refresh expired access token using
    #   refresh token.
    #   @return [String]
    #
    # @!attribute [rw] auth_code_url
    #   The authorization code url required to redirect to SAP Login Page to
    #   fetch authorization code for OAuth type authentication.
    #   @return [String]
    #
    # @!attribute [rw] o_auth_scopes
    #   The OAuth scopes required for OAuth type authentication.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/OAuthProperties AWS API Documentation
    #
    class OAuthProperties < Struct.new(
      :token_url,
      :auth_code_url,
      :o_auth_scopes)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector-specific profile credentials required when using
    # Salesforce Pardot.
    #
    # @!attribute [rw] access_token
    #   The credentials used to access protected Salesforce Pardot
    #   resources.
    #   @return [String]
    #
    # @!attribute [rw] refresh_token
    #   The credentials used to acquire new access tokens.
    #   @return [String]
    #
    # @!attribute [rw] o_auth_request
    #   Used by select connectors for which the OAuth workflow is supported,
    #   such as Salesforce, Google Analytics, Marketo, Zendesk, and Slack.
    #   @return [Types::ConnectorOAuthRequest]
    #
    # @!attribute [rw] client_credentials_arn
    #   The secret manager ARN, which contains the client ID and client
    #   secret of the connected app.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/PardotConnectorProfileCredentials AWS API Documentation
    #
    class PardotConnectorProfileCredentials < Struct.new(
      :access_token,
      :refresh_token,
      :o_auth_request,
      :client_credentials_arn)
      SENSITIVE = [:access_token, :client_credentials_arn]
      include Aws::Structure
    end

    # The connector-specific profile properties required when using
    # Salesforce Pardot.
    #
    # @!attribute [rw] instance_url
    #   The location of the Salesforce Pardot resource.
    #   @return [String]
    #
    # @!attribute [rw] is_sandbox_environment
    #   Indicates whether the connector profile applies to a sandbox or
    #   production environment.
    #   @return [Boolean]
    #
    # @!attribute [rw] business_unit_id
    #   The business unit id of Salesforce Pardot instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/PardotConnectorProfileProperties AWS API Documentation
    #
    class PardotConnectorProfileProperties < Struct.new(
      :instance_url,
      :is_sandbox_environment,
      :business_unit_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector metadata specific to Salesforce Pardot.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/PardotMetadata AWS API Documentation
    #
    class PardotMetadata < Aws::EmptyStructure; end

    # The properties that are applied when Salesforce Pardot is being used
    # as a source.
    #
    # @!attribute [rw] object
    #   The object specified in the Salesforce Pardot flow source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/PardotSourceProperties AWS API Documentation
    #
    class PardotSourceProperties < Struct.new(
      :object)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies elements that Amazon AppFlow includes in the file and folder
    # names in the flow destination.
    #
    # @!attribute [rw] prefix_type
    #   Determines the format of the prefix, and whether it applies to the
    #   file name, file path, or both.
    #   @return [String]
    #
    # @!attribute [rw] prefix_format
    #   Determines the level of granularity for the date and time that's
    #   included in the prefix.
    #   @return [String]
    #
    # @!attribute [rw] path_prefix_hierarchy
    #   Specifies whether the destination file path includes either or both
    #   of the following elements:
    #
    #   EXECUTION\_ID
    #
    #   : The ID that Amazon AppFlow assigns to the flow run.
    #
    #   SCHEMA\_VERSION
    #
    #   : The version number of your data schema. Amazon AppFlow assigns
    #     this version number. The version number increases by one when you
    #     change any of the following settings in your flow configuration:
    #
    #     * Source-to-destination field mappings
    #
    #     * Field data types
    #
    #     * Partition keys
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/PrefixConfig AWS API Documentation
    #
    class PrefixConfig < Struct.new(
      :prefix_type,
      :prefix_format,
      :path_prefix_hierarchy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the private connection provisioning state.
    #
    # @!attribute [rw] status
    #   Specifies the private connection provisioning status.
    #   @return [String]
    #
    # @!attribute [rw] failure_message
    #   Specifies the private connection provisioning failure reason.
    #   @return [String]
    #
    # @!attribute [rw] failure_cause
    #   Specifies the private connection provisioning failure cause.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/PrivateConnectionProvisioningState AWS API Documentation
    #
    class PrivateConnectionProvisioningState < Struct.new(
      :status,
      :failure_message,
      :failure_cause)
      SENSITIVE = []
      include Aws::Structure
    end

    # The range of values that the property supports.
    #
    # @!attribute [rw] maximum
    #   Maximum value supported by the field.
    #   @return [Float]
    #
    # @!attribute [rw] minimum
    #   Minimum value supported by the field.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/Range AWS API Documentation
    #
    class Range < Struct.new(
      :maximum,
      :minimum)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector-specific profile credentials required when using Amazon
    # Redshift.
    #
    # @!attribute [rw] username
    #   The name of the user.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password that corresponds to the user name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/RedshiftConnectorProfileCredentials AWS API Documentation
    #
    class RedshiftConnectorProfileCredentials < Struct.new(
      :username,
      :password)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # The connector-specific profile properties when using Amazon Redshift.
    #
    # @!attribute [rw] database_url
    #   The JDBC URL of the Amazon Redshift cluster.
    #   @return [String]
    #
    # @!attribute [rw] bucket_name
    #   A name for the associated Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] bucket_prefix
    #   The object key for the destination bucket in which Amazon AppFlow
    #   places the files.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of IAM role that grants Amazon
    #   Redshift read-only access to Amazon S3. For more information, and
    #   for the polices that you attach to this role, see [Allow Amazon
    #   Redshift to access your Amazon AppFlow data in Amazon S3][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/appflow/latest/userguide/security_iam_service-role-policies.html#redshift-access-s3
    #   @return [String]
    #
    # @!attribute [rw] data_api_role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that permits Amazon
    #   AppFlow to access your Amazon Redshift database through the Data
    #   API. For more information, and for the polices that you attach to
    #   this role, see [Allow Amazon AppFlow to access Amazon Redshift
    #   databases with the Data API][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/appflow/latest/userguide/security_iam_service-role-policies.html#access-redshift
    #   @return [String]
    #
    # @!attribute [rw] is_redshift_serverless
    #   Indicates whether the connector profile defines a connection to an
    #   Amazon Redshift Serverless data warehouse.
    #   @return [Boolean]
    #
    # @!attribute [rw] cluster_identifier
    #   The unique ID that's assigned to an Amazon Redshift cluster.
    #   @return [String]
    #
    # @!attribute [rw] workgroup_name
    #   The name of an Amazon Redshift workgroup.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of an Amazon Redshift database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/RedshiftConnectorProfileProperties AWS API Documentation
    #
    class RedshiftConnectorProfileProperties < Struct.new(
      :database_url,
      :bucket_name,
      :bucket_prefix,
      :role_arn,
      :data_api_role_arn,
      :is_redshift_serverless,
      :cluster_identifier,
      :workgroup_name,
      :database_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties that are applied when Amazon Redshift is being used as
    # a destination.
    #
    # @!attribute [rw] object
    #   The object specified in the Amazon Redshift flow destination.
    #   @return [String]
    #
    # @!attribute [rw] intermediate_bucket_name
    #   The intermediate bucket that Amazon AppFlow uses when moving data
    #   into Amazon Redshift.
    #   @return [String]
    #
    # @!attribute [rw] bucket_prefix
    #   The object key for the bucket in which Amazon AppFlow places the
    #   destination files.
    #   @return [String]
    #
    # @!attribute [rw] error_handling_config
    #   The settings that determine how Amazon AppFlow handles an error when
    #   placing data in the Amazon Redshift destination. For example, this
    #   setting would determine if the flow should fail after one insertion
    #   error, or continue and attempt to insert every record regardless of
    #   the initial failure. `ErrorHandlingConfig` is a part of the
    #   destination connector details.
    #   @return [Types::ErrorHandlingConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/RedshiftDestinationProperties AWS API Documentation
    #
    class RedshiftDestinationProperties < Struct.new(
      :object,
      :intermediate_bucket_name,
      :bucket_prefix,
      :error_handling_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector metadata specific to Amazon Redshift.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/RedshiftMetadata AWS API Documentation
    #
    class RedshiftMetadata < Aws::EmptyStructure; end

    # @!attribute [rw] connector_label
    #   The name of the connector. The name is unique for each
    #   `ConnectorRegistration` in your Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description about the connector that's being registered.
    #   @return [String]
    #
    # @!attribute [rw] connector_provisioning_type
    #   The provisioning type of the connector. Currently the only supported
    #   value is LAMBDA.
    #   @return [String]
    #
    # @!attribute [rw] connector_provisioning_config
    #   The provisioning type of the connector. Currently the only supported
    #   value is LAMBDA.
    #   @return [Types::ConnectorProvisioningConfig]
    #
    # @!attribute [rw] client_token
    #   The `clientToken` parameter is an idempotency token. It ensures that
    #   your `RegisterConnector` request completes only once. You choose the
    #   value to pass. For example, if you don't receive a response from
    #   your request, you can safely retry the request with the same
    #   `clientToken` parameter value.
    #
    #   If you omit a `clientToken` value, the Amazon Web Services SDK that
    #   you are using inserts a value for you. This way, the SDK can safely
    #   retry requests multiple times after a network error. You must
    #   provide your own value for other use cases.
    #
    #   If you specify input parameters that differ from your first request,
    #   an error occurs. If you use a different value for `clientToken`,
    #   Amazon AppFlow considers it a new call to `RegisterConnector`. The
    #   token is active for 8 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/RegisterConnectorRequest AWS API Documentation
    #
    class RegisterConnectorRequest < Struct.new(
      :connector_label,
      :description,
      :connector_provisioning_type,
      :connector_provisioning_config,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_arn
    #   The ARN of the connector being registered.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/RegisterConnectorResponse AWS API Documentation
    #
    class RegisterConnectorResponse < Struct.new(
      :connector_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the status of an attempt from Amazon AppFlow to register a
    # resource.
    #
    # When you run a flow that you've configured to use a metadata catalog,
    # Amazon AppFlow registers a metadata table and data partitions with
    # that catalog. This operation provides the status of that registration
    # attempt. The operation also indicates how many related resources
    # Amazon AppFlow created or updated.
    #
    # @!attribute [rw] message
    #   Explains the status of the registration attempt from Amazon AppFlow.
    #   If the attempt fails, the message explains why.
    #   @return [String]
    #
    # @!attribute [rw] result
    #   Indicates the number of resources that Amazon AppFlow created or
    #   updated. Possible resources include metadata tables and data
    #   partitions.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates the status of the registration attempt from Amazon
    #   AppFlow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/RegistrationOutput AWS API Documentation
    #
    class RegistrationOutput < Struct.new(
      :message,
      :result,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_profile_name
    #   The name of the connector profile that you want to reset cached
    #   metadata for.
    #
    #   You can omit this parameter if you're resetting the cache for any
    #   of the following connectors: Amazon Connect, Amazon EventBridge,
    #   Amazon Lookout for Metrics, Amazon S3, or Upsolver. If you're
    #   resetting the cache for any other connector, you must include this
    #   parameter in your request.
    #   @return [String]
    #
    # @!attribute [rw] connector_type
    #   The type of connector to reset cached metadata for.
    #
    #   You must include this parameter in your request if you're resetting
    #   the cache for any of the following connectors: Amazon Connect,
    #   Amazon EventBridge, Amazon Lookout for Metrics, Amazon S3, or
    #   Upsolver. If you're resetting the cache for any other connector,
    #   you can omit this parameter from your request.
    #   @return [String]
    #
    # @!attribute [rw] connector_entity_name
    #   Use this parameter if you want to reset cached metadata about the
    #   details for an individual entity.
    #
    #   If you don't include this parameter in your request, Amazon AppFlow
    #   only resets cached metadata about entity names, not entity details.
    #   @return [String]
    #
    # @!attribute [rw] entities_path
    #   Use this parameter only if you’re resetting the cached metadata
    #   about a nested entity. Only some connectors support nested entities.
    #   A nested entity is one that has another entity as a parent. To use
    #   this parameter, specify the name of the parent entity.
    #
    #   To look up the parent-child relationship of entities, you can send a
    #   ListConnectorEntities request that omits the entitiesPath parameter.
    #   Amazon AppFlow will return a list of top-level entities. For each
    #   one, it indicates whether the entity has nested entities. Then, in a
    #   subsequent ListConnectorEntities request, you can specify a parent
    #   entity name for the entitiesPath parameter. Amazon AppFlow will
    #   return a list of the child entities for that parent.
    #   @return [String]
    #
    # @!attribute [rw] api_version
    #   The API version that you specified in the connector profile that
    #   you’re resetting cached metadata for. You must use this parameter
    #   only if the connector supports multiple API versions or if the
    #   connector type is CustomConnector.
    #
    #   To look up how many versions a connector supports, use the
    #   DescribeConnectors action. In the response, find the value that
    #   Amazon AppFlow returns for the connectorVersion parameter.
    #
    #   To look up the connector type, use the DescribeConnectorProfiles
    #   action. In the response, find the value that Amazon AppFlow returns
    #   for the connectorType parameter.
    #
    #   To look up the API version that you specified in a connector
    #   profile, use the DescribeConnectorProfiles action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ResetConnectorMetadataCacheRequest AWS API Documentation
    #
    class ResetConnectorMetadataCacheRequest < Struct.new(
      :connector_profile_name,
      :connector_type,
      :connector_entity_name,
      :entities_path,
      :api_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ResetConnectorMetadataCacheResponse AWS API Documentation
    #
    class ResetConnectorMetadataCacheResponse < Aws::EmptyStructure; end

    # The resource specified in the request (such as the source or
    # destination connector profile) is not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties that are applied when Amazon S3 is used as a
    # destination.
    #
    # @!attribute [rw] bucket_name
    #   The Amazon S3 bucket name in which Amazon AppFlow places the
    #   transferred data.
    #   @return [String]
    #
    # @!attribute [rw] bucket_prefix
    #   The object key for the destination bucket in which Amazon AppFlow
    #   places the files.
    #   @return [String]
    #
    # @!attribute [rw] s3_output_format_config
    #   The configuration that determines how Amazon AppFlow should format
    #   the flow output data when Amazon S3 is used as the destination.
    #   @return [Types::S3OutputFormatConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/S3DestinationProperties AWS API Documentation
    #
    class S3DestinationProperties < Struct.new(
      :bucket_name,
      :bucket_prefix,
      :s3_output_format_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # When you use Amazon S3 as the source, the configuration format that
    # you provide the flow input data.
    #
    # @!attribute [rw] s3_input_file_type
    #   The file type that Amazon AppFlow gets from your Amazon S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/S3InputFormatConfig AWS API Documentation
    #
    class S3InputFormatConfig < Struct.new(
      :s3_input_file_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector metadata specific to Amazon S3.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/S3Metadata AWS API Documentation
    #
    class S3Metadata < Aws::EmptyStructure; end

    # The configuration that determines how Amazon AppFlow should format the
    # flow output data when Amazon S3 is used as the destination.
    #
    # @!attribute [rw] file_type
    #   Indicates the file type that Amazon AppFlow places in the Amazon S3
    #   bucket.
    #   @return [String]
    #
    # @!attribute [rw] prefix_config
    #   Determines the prefix that Amazon AppFlow applies to the folder name
    #   in the Amazon S3 bucket. You can name folders according to the flow
    #   frequency and date.
    #   @return [Types::PrefixConfig]
    #
    # @!attribute [rw] aggregation_config
    #   The aggregation settings that you can use to customize the output
    #   format of your flow data.
    #   @return [Types::AggregationConfig]
    #
    # @!attribute [rw] preserve_source_data_typing
    #   If your file output format is Parquet, use this parameter to set
    #   whether Amazon AppFlow preserves the data types in your source data
    #   when it writes the output to Amazon S3.
    #
    #   * `true`: Amazon AppFlow preserves the data types when it writes to
    #     Amazon S3. For example, an integer or `1` in your source data is
    #     still an integer in your output.
    #
    #   * `false`: Amazon AppFlow converts all of the source data into
    #     strings when it writes to Amazon S3. For example, an integer of
    #     `1` in your source data becomes the string `"1"` in the output.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/S3OutputFormatConfig AWS API Documentation
    #
    class S3OutputFormatConfig < Struct.new(
      :file_type,
      :prefix_config,
      :aggregation_config,
      :preserve_source_data_typing)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties that are applied when Amazon S3 is being used as the
    # flow source.
    #
    # @!attribute [rw] bucket_name
    #   The Amazon S3 bucket name where the source files are stored.
    #   @return [String]
    #
    # @!attribute [rw] bucket_prefix
    #   The object key for the Amazon S3 bucket in which the source files
    #   are stored.
    #   @return [String]
    #
    # @!attribute [rw] s3_input_format_config
    #   When you use Amazon S3 as the source, the configuration format that
    #   you provide the flow input data.
    #   @return [Types::S3InputFormatConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/S3SourceProperties AWS API Documentation
    #
    class S3SourceProperties < Struct.new(
      :bucket_name,
      :bucket_prefix,
      :s3_input_format_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector-specific profile credentials required when using
    # SAPOData.
    #
    # @!attribute [rw] basic_auth_credentials
    #   The SAPOData basic authentication credentials.
    #   @return [Types::BasicAuthCredentials]
    #
    # @!attribute [rw] o_auth_credentials
    #   The SAPOData OAuth type authentication credentials.
    #   @return [Types::OAuthCredentials]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/SAPODataConnectorProfileCredentials AWS API Documentation
    #
    class SAPODataConnectorProfileCredentials < Struct.new(
      :basic_auth_credentials,
      :o_auth_credentials)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector-specific profile properties required when using
    # SAPOData.
    #
    # @!attribute [rw] application_host_url
    #   The location of the SAPOData resource.
    #   @return [String]
    #
    # @!attribute [rw] application_service_path
    #   The application path to catalog service.
    #   @return [String]
    #
    # @!attribute [rw] port_number
    #   The port number of the SAPOData instance.
    #   @return [Integer]
    #
    # @!attribute [rw] client_number
    #   The client number for the client creating the connection.
    #   @return [String]
    #
    # @!attribute [rw] logon_language
    #   The logon language of SAPOData instance.
    #   @return [String]
    #
    # @!attribute [rw] private_link_service_name
    #   The SAPOData Private Link service name to be used for private data
    #   transfers.
    #   @return [String]
    #
    # @!attribute [rw] o_auth_properties
    #   The SAPOData OAuth properties required for OAuth type
    #   authentication.
    #   @return [Types::OAuthProperties]
    #
    # @!attribute [rw] disable_sso
    #   If you set this parameter to `true`, Amazon AppFlow bypasses the
    #   single sign-on (SSO) settings in your SAP account when it accesses
    #   your SAP OData instance.
    #
    #   Whether you need this option depends on the types of credentials
    #   that you applied to your SAP OData connection profile. If your
    #   profile uses basic authentication credentials, SAP SSO can prevent
    #   Amazon AppFlow from connecting to your account with your username
    #   and password. In this case, bypassing SSO makes it possible for
    #   Amazon AppFlow to connect successfully. However, if your profile
    #   uses OAuth credentials, this parameter has no affect.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/SAPODataConnectorProfileProperties AWS API Documentation
    #
    class SAPODataConnectorProfileProperties < Struct.new(
      :application_host_url,
      :application_service_path,
      :port_number,
      :client_number,
      :logon_language,
      :private_link_service_name,
      :o_auth_properties,
      :disable_sso)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties that are applied when using SAPOData as a flow
    # destination
    #
    # @!attribute [rw] object_path
    #   The object path specified in the SAPOData flow destination.
    #   @return [String]
    #
    # @!attribute [rw] success_response_handling_config
    #   Determines how Amazon AppFlow handles the success response that it
    #   gets from the connector after placing data.
    #
    #   For example, this setting would determine where to write the
    #   response from a destination connector upon a successful insert
    #   operation.
    #   @return [Types::SuccessResponseHandlingConfig]
    #
    # @!attribute [rw] id_field_names
    #   A list of field names that can be used as an ID field when
    #   performing a write operation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] error_handling_config
    #   The settings that determine how Amazon AppFlow handles an error when
    #   placing data in the destination. For example, this setting would
    #   determine if the flow should fail after one insertion error, or
    #   continue and attempt to insert every record regardless of the
    #   initial failure. `ErrorHandlingConfig` is a part of the destination
    #   connector details.
    #   @return [Types::ErrorHandlingConfig]
    #
    # @!attribute [rw] write_operation_type
    #   The possible write operations in the destination connector. When
    #   this value is not provided, this defaults to the `INSERT` operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/SAPODataDestinationProperties AWS API Documentation
    #
    class SAPODataDestinationProperties < Struct.new(
      :object_path,
      :success_response_handling_config,
      :id_field_names,
      :error_handling_config,
      :write_operation_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector metadata specific to SAPOData.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/SAPODataMetadata AWS API Documentation
    #
    class SAPODataMetadata < Aws::EmptyStructure; end

    # The properties that are applied when using SAPOData as a flow source.
    #
    # @!attribute [rw] object_path
    #   The object path specified in the SAPOData flow source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/SAPODataSourceProperties AWS API Documentation
    #
    class SAPODataSourceProperties < Struct.new(
      :object_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector-specific profile credentials required when using
    # Salesforce.
    #
    # @!attribute [rw] access_token
    #   The credentials used to access protected Salesforce resources.
    #   @return [String]
    #
    # @!attribute [rw] refresh_token
    #   The credentials used to acquire new access tokens.
    #   @return [String]
    #
    # @!attribute [rw] o_auth_request
    #   The OAuth requirement needed to request security tokens from the
    #   connector endpoint.
    #   @return [Types::ConnectorOAuthRequest]
    #
    # @!attribute [rw] client_credentials_arn
    #   The secret manager ARN, which contains the client ID and client
    #   secret of the connected app.
    #   @return [String]
    #
    # @!attribute [rw] o_auth_2_grant_type
    #   Specifies the OAuth 2.0 grant type that Amazon AppFlow uses when it
    #   requests an access token from Salesforce. Amazon AppFlow requires an
    #   access token each time it attempts to access your Salesforce
    #   records.
    #
    #   You can specify one of the following values:
    #
    #   AUTHORIZATION\_CODE
    #
    #   : Amazon AppFlow passes an authorization code when it requests the
    #     access token from Salesforce. Amazon AppFlow receives the
    #     authorization code from Salesforce after you log in to your
    #     Salesforce account and authorize Amazon AppFlow to access your
    #     records.
    #
    #   CLIENT\_CREDENTIALS
    #
    #   : Amazon AppFlow passes client credentials (a client ID and client
    #     secret) when it requests the access token from Salesforce. You
    #     provide these credentials to Amazon AppFlow when you define the
    #     connection to your Salesforce account.
    #
    #   JWT\_BEARER
    #
    #   : Amazon AppFlow passes a JSON web token (JWT) when it requests the
    #     access token from Salesforce. You provide the JWT to Amazon
    #     AppFlow when you define the connection to your Salesforce account.
    #     When you use this grant type, you don't need to log in to your
    #     Salesforce account to authorize Amazon AppFlow to access your
    #     records.
    #   @return [String]
    #
    # @!attribute [rw] jwt_token
    #   A JSON web token (JWT) that authorizes Amazon AppFlow to access your
    #   Salesforce records.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/SalesforceConnectorProfileCredentials AWS API Documentation
    #
    class SalesforceConnectorProfileCredentials < Struct.new(
      :access_token,
      :refresh_token,
      :o_auth_request,
      :client_credentials_arn,
      :o_auth_2_grant_type,
      :jwt_token)
      SENSITIVE = [:access_token, :client_credentials_arn, :jwt_token]
      include Aws::Structure
    end

    # The connector-specific profile properties required when using
    # Salesforce.
    #
    # @!attribute [rw] instance_url
    #   The location of the Salesforce resource.
    #   @return [String]
    #
    # @!attribute [rw] is_sandbox_environment
    #   Indicates whether the connector profile applies to a sandbox or
    #   production environment.
    #   @return [Boolean]
    #
    # @!attribute [rw] use_private_link_for_metadata_and_authorization
    #   If the connection mode for the connector profile is private, this
    #   parameter sets whether Amazon AppFlow uses the private network to
    #   send metadata and authorization calls to Salesforce. Amazon AppFlow
    #   sends private calls through Amazon Web Services PrivateLink. These
    #   calls travel through Amazon Web Services infrastructure without
    #   being exposed to the public internet.
    #
    #   Set either of the following values:
    #
    #   true
    #
    #   : Amazon AppFlow sends all calls to Salesforce over the private
    #     network.
    #
    #     These private calls are:
    #
    #     * Calls to get metadata about your Salesforce records. This
    #       metadata describes your Salesforce objects and their fields.
    #
    #     * Calls to get or refresh access tokens that allow Amazon AppFlow
    #       to access your Salesforce records.
    #
    #     * Calls to transfer your Salesforce records as part of a flow run.
    #
    #   false
    #
    #   : The default value. Amazon AppFlow sends some calls to Salesforce
    #     privately and other calls over the public internet.
    #
    #     The public calls are:
    #
    #     * Calls to get metadata about your Salesforce records.
    #
    #     * Calls to get or refresh access tokens.
    #
    #     The private calls are:
    #
    #     * Calls to transfer your Salesforce records as part of a flow run.
    #
    #     ^
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/SalesforceConnectorProfileProperties AWS API Documentation
    #
    class SalesforceConnectorProfileProperties < Struct.new(
      :instance_url,
      :is_sandbox_environment,
      :use_private_link_for_metadata_and_authorization)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties that are applied when Salesforce is being used as a
    # destination.
    #
    # @!attribute [rw] object
    #   The object specified in the Salesforce flow destination.
    #   @return [String]
    #
    # @!attribute [rw] id_field_names
    #   The name of the field that Amazon AppFlow uses as an ID when
    #   performing a write operation such as update or delete.
    #   @return [Array<String>]
    #
    # @!attribute [rw] error_handling_config
    #   The settings that determine how Amazon AppFlow handles an error when
    #   placing data in the Salesforce destination. For example, this
    #   setting would determine if the flow should fail after one insertion
    #   error, or continue and attempt to insert every record regardless of
    #   the initial failure. `ErrorHandlingConfig` is a part of the
    #   destination connector details.
    #   @return [Types::ErrorHandlingConfig]
    #
    # @!attribute [rw] write_operation_type
    #   This specifies the type of write operation to be performed in
    #   Salesforce. When the value is `UPSERT`, then `idFieldNames` is
    #   required.
    #   @return [String]
    #
    # @!attribute [rw] data_transfer_api
    #   Specifies which Salesforce API is used by Amazon AppFlow when your
    #   flow transfers data to Salesforce.
    #
    #   AUTOMATIC
    #
    #   : The default. Amazon AppFlow selects which API to use based on the
    #     number of records that your flow transfers to Salesforce. If your
    #     flow transfers fewer than 1,000 records, Amazon AppFlow uses
    #     Salesforce REST API. If your flow transfers 1,000 records or more,
    #     Amazon AppFlow uses Salesforce Bulk API 2.0.
    #
    #     Each of these Salesforce APIs structures data differently. If
    #     Amazon AppFlow selects the API automatically, be aware that, for
    #     recurring flows, the data output might vary from one flow run to
    #     the next. For example, if a flow runs daily, it might use REST API
    #     on one day to transfer 900 records, and it might use Bulk API 2.0
    #     on the next day to transfer 1,100 records. For each of these flow
    #     runs, the respective Salesforce API formats the data differently.
    #     Some of the differences include how dates are formatted and null
    #     values are represented. Also, Bulk API 2.0 doesn't transfer
    #     Salesforce compound fields.
    #
    #     By choosing this option, you optimize flow performance for both
    #     small and large data transfers, but the tradeoff is inconsistent
    #     formatting in the output.
    #
    #   BULKV2
    #
    #   : Amazon AppFlow uses only Salesforce Bulk API 2.0. This API runs
    #     asynchronous data transfers, and it's optimal for large sets of
    #     data. By choosing this option, you ensure that your flow writes
    #     consistent output, but you optimize performance only for large
    #     data transfers.
    #
    #     Note that Bulk API 2.0 does not transfer Salesforce compound
    #     fields.
    #
    #   REST\_SYNC
    #
    #   : Amazon AppFlow uses only Salesforce REST API. By choosing this
    #     option, you ensure that your flow writes consistent output, but
    #     you decrease performance for large data transfers that are better
    #     suited for Bulk API 2.0. In some cases, if your flow attempts to
    #     transfer a vary large set of data, it might fail with a timed out
    #     error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/SalesforceDestinationProperties AWS API Documentation
    #
    class SalesforceDestinationProperties < Struct.new(
      :object,
      :id_field_names,
      :error_handling_config,
      :write_operation_type,
      :data_transfer_api)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector metadata specific to Salesforce.
    #
    # @!attribute [rw] o_auth_scopes
    #   The desired authorization scope for the Salesforce account.
    #   @return [Array<String>]
    #
    # @!attribute [rw] data_transfer_apis
    #   The Salesforce APIs that you can have Amazon AppFlow use when your
    #   flows transfers data to or from Salesforce.
    #   @return [Array<String>]
    #
    # @!attribute [rw] oauth2_grant_types_supported
    #   The OAuth 2.0 grant types that Amazon AppFlow can use when it
    #   requests an access token from Salesforce. Amazon AppFlow requires an
    #   access token each time it attempts to access your Salesforce
    #   records.
    #
    #   AUTHORIZATION\_CODE
    #
    #   : Amazon AppFlow passes an authorization code when it requests the
    #     access token from Salesforce. Amazon AppFlow receives the
    #     authorization code from Salesforce after you log in to your
    #     Salesforce account and authorize Amazon AppFlow to access your
    #     records.
    #
    #   CLIENT\_CREDENTIALS
    #
    #   : Amazon AppFlow passes client credentials (a client ID and client
    #     secret) when it requests the access token from Salesforce. You
    #     provide these credentials to Amazon AppFlow when you define the
    #     connection to your Salesforce account.
    #
    #   JWT\_BEARER
    #
    #   : Amazon AppFlow passes a JSON web token (JWT) when it requests the
    #     access token from Salesforce. You provide the JWT to Amazon
    #     AppFlow when you define the connection to your Salesforce account.
    #     When you use this grant type, you don't need to log in to your
    #     Salesforce account to authorize Amazon AppFlow to access your
    #     records.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/SalesforceMetadata AWS API Documentation
    #
    class SalesforceMetadata < Struct.new(
      :o_auth_scopes,
      :data_transfer_apis,
      :oauth2_grant_types_supported)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties that are applied when Salesforce is being used as a
    # source.
    #
    # @!attribute [rw] object
    #   The object specified in the Salesforce flow source.
    #   @return [String]
    #
    # @!attribute [rw] enable_dynamic_field_update
    #   The flag that enables dynamic fetching of new (recently added)
    #   fields in the Salesforce objects while running a flow.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_deleted_records
    #   Indicates whether Amazon AppFlow includes deleted files in the flow
    #   run.
    #   @return [Boolean]
    #
    # @!attribute [rw] data_transfer_api
    #   Specifies which Salesforce API is used by Amazon AppFlow when your
    #   flow transfers data from Salesforce.
    #
    #   AUTOMATIC
    #
    #   : The default. Amazon AppFlow selects which API to use based on the
    #     number of records that your flow transfers from Salesforce. If
    #     your flow transfers fewer than 1,000,000 records, Amazon AppFlow
    #     uses Salesforce REST API. If your flow transfers 1,000,000 records
    #     or more, Amazon AppFlow uses Salesforce Bulk API 2.0.
    #
    #     Each of these Salesforce APIs structures data differently. If
    #     Amazon AppFlow selects the API automatically, be aware that, for
    #     recurring flows, the data output might vary from one flow run to
    #     the next. For example, if a flow runs daily, it might use REST API
    #     on one day to transfer 900,000 records, and it might use Bulk API
    #     2.0 on the next day to transfer 1,100,000 records. For each of
    #     these flow runs, the respective Salesforce API formats the data
    #     differently. Some of the differences include how dates are
    #     formatted and null values are represented. Also, Bulk API 2.0
    #     doesn't transfer Salesforce compound fields.
    #
    #     By choosing this option, you optimize flow performance for both
    #     small and large data transfers, but the tradeoff is inconsistent
    #     formatting in the output.
    #
    #   BULKV2
    #
    #   : Amazon AppFlow uses only Salesforce Bulk API 2.0. This API runs
    #     asynchronous data transfers, and it's optimal for large sets of
    #     data. By choosing this option, you ensure that your flow writes
    #     consistent output, but you optimize performance only for large
    #     data transfers.
    #
    #     Note that Bulk API 2.0 does not transfer Salesforce compound
    #     fields.
    #
    #   REST\_SYNC
    #
    #   : Amazon AppFlow uses only Salesforce REST API. By choosing this
    #     option, you ensure that your flow writes consistent output, but
    #     you decrease performance for large data transfers that are better
    #     suited for Bulk API 2.0. In some cases, if your flow attempts to
    #     transfer a vary large set of data, it might fail wituh a timed out
    #     error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/SalesforceSourceProperties AWS API Documentation
    #
    class SalesforceSourceProperties < Struct.new(
      :object,
      :enable_dynamic_field_update,
      :include_deleted_records,
      :data_transfer_api)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configuration details of a schedule-triggered flow as
    # defined by the user. Currently, these settings only apply to the
    # `Scheduled` trigger type.
    #
    # @!attribute [rw] schedule_expression
    #   The scheduling expression that determines the rate at which the
    #   schedule will run, for example `rate(5minutes)`.
    #   @return [String]
    #
    # @!attribute [rw] data_pull_mode
    #   Specifies whether a scheduled flow has an incremental data transfer
    #   or a complete data transfer for each flow run.
    #   @return [String]
    #
    # @!attribute [rw] schedule_start_time
    #   The time at which the scheduled flow starts. The time is formatted
    #   as a timestamp that follows the ISO 8601 standard, such as
    #   `2022-04-26T13:00:00-07:00`.
    #   @return [Time]
    #
    # @!attribute [rw] schedule_end_time
    #   The time at which the scheduled flow ends. The time is formatted as
    #   a timestamp that follows the ISO 8601 standard, such as
    #   `2022-04-27T13:00:00-07:00`.
    #   @return [Time]
    #
    # @!attribute [rw] timezone
    #   Specifies the time zone used when referring to the dates and times
    #   of a scheduled flow, such as `America/New_York`. This time zone is
    #   only a descriptive label. It doesn't affect how Amazon AppFlow
    #   interprets the timestamps that you specify to schedule the flow.
    #
    #   If you want to schedule a flow by using times in a particular time
    #   zone, indicate the time zone as a UTC offset in your timestamps. For
    #   example, the UTC offsets for the `America/New_York` timezone are
    #   `-04:00` EDT and `-05:00 EST`.
    #   @return [String]
    #
    # @!attribute [rw] schedule_offset
    #   Specifies the optional offset that is added to the time interval for
    #   a schedule-triggered flow.
    #   @return [Integer]
    #
    # @!attribute [rw] first_execution_from
    #   Specifies the date range for the records to import from the
    #   connector in the first flow run.
    #   @return [Time]
    #
    # @!attribute [rw] flow_error_deactivation_threshold
    #   Defines how many times a scheduled flow fails consecutively before
    #   Amazon AppFlow deactivates it.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ScheduledTriggerProperties AWS API Documentation
    #
    class ScheduledTriggerProperties < Struct.new(
      :schedule_expression,
      :data_pull_mode,
      :schedule_start_time,
      :schedule_end_time,
      :timezone,
      :schedule_offset,
      :first_execution_from,
      :flow_error_deactivation_threshold)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector-specific profile credentials required when using
    # ServiceNow.
    #
    # @!attribute [rw] username
    #   The name of the user.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password that corresponds to the user name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ServiceNowConnectorProfileCredentials AWS API Documentation
    #
    class ServiceNowConnectorProfileCredentials < Struct.new(
      :username,
      :password)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # The connector-specific profile properties required when using
    # ServiceNow.
    #
    # @!attribute [rw] instance_url
    #   The location of the ServiceNow resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ServiceNowConnectorProfileProperties AWS API Documentation
    #
    class ServiceNowConnectorProfileProperties < Struct.new(
      :instance_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector metadata specific to ServiceNow.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ServiceNowMetadata AWS API Documentation
    #
    class ServiceNowMetadata < Aws::EmptyStructure; end

    # The properties that are applied when ServiceNow is being used as a
    # source.
    #
    # @!attribute [rw] object
    #   The object specified in the ServiceNow flow source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ServiceNowSourceProperties AWS API Documentation
    #
    class ServiceNowSourceProperties < Struct.new(
      :object)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would cause a service quota (such as the number of flows)
    # to be exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector-specific profile credentials required when using
    # Singular.
    #
    # @!attribute [rw] api_key
    #   A unique alphanumeric identifier used to authenticate a user,
    #   developer, or calling program to your API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/SingularConnectorProfileCredentials AWS API Documentation
    #
    class SingularConnectorProfileCredentials < Struct.new(
      :api_key)
      SENSITIVE = [:api_key]
      include Aws::Structure
    end

    # The connector-specific profile properties required when using
    # Singular.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/SingularConnectorProfileProperties AWS API Documentation
    #
    class SingularConnectorProfileProperties < Aws::EmptyStructure; end

    # The connector metadata specific to Singular.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/SingularMetadata AWS API Documentation
    #
    class SingularMetadata < Aws::EmptyStructure; end

    # The properties that are applied when Singular is being used as a
    # source.
    #
    # @!attribute [rw] object
    #   The object specified in the Singular flow source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/SingularSourceProperties AWS API Documentation
    #
    class SingularSourceProperties < Struct.new(
      :object)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector-specific profile credentials required when using Slack.
    #
    # @!attribute [rw] client_id
    #   The identifier for the client.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The client secret used by the OAuth client to authenticate to the
    #   authorization server.
    #   @return [String]
    #
    # @!attribute [rw] access_token
    #   The credentials used to access protected Slack resources.
    #   @return [String]
    #
    # @!attribute [rw] o_auth_request
    #   The OAuth requirement needed to request security tokens from the
    #   connector endpoint.
    #   @return [Types::ConnectorOAuthRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/SlackConnectorProfileCredentials AWS API Documentation
    #
    class SlackConnectorProfileCredentials < Struct.new(
      :client_id,
      :client_secret,
      :access_token,
      :o_auth_request)
      SENSITIVE = [:client_secret, :access_token]
      include Aws::Structure
    end

    # The connector-specific profile properties required when using Slack.
    #
    # @!attribute [rw] instance_url
    #   The location of the Slack resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/SlackConnectorProfileProperties AWS API Documentation
    #
    class SlackConnectorProfileProperties < Struct.new(
      :instance_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector metadata specific to Slack.
    #
    # @!attribute [rw] o_auth_scopes
    #   The desired authorization scope for the Slack account.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/SlackMetadata AWS API Documentation
    #
    class SlackMetadata < Struct.new(
      :o_auth_scopes)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties that are applied when Slack is being used as a source.
    #
    # @!attribute [rw] object
    #   The object specified in the Slack flow source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/SlackSourceProperties AWS API Documentation
    #
    class SlackSourceProperties < Struct.new(
      :object)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector-specific profile credentials required when using
    # Snowflake.
    #
    # @!attribute [rw] username
    #   The name of the user.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password that corresponds to the user name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/SnowflakeConnectorProfileCredentials AWS API Documentation
    #
    class SnowflakeConnectorProfileCredentials < Struct.new(
      :username,
      :password)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # The connector-specific profile properties required when using
    # Snowflake.
    #
    # @!attribute [rw] warehouse
    #   The name of the Snowflake warehouse.
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   The name of the Amazon S3 stage that was created while setting up an
    #   Amazon S3 stage in the Snowflake account. This is written in the
    #   following format: &lt; Database&gt;&lt; Schema&gt;&lt;Stage
    #   Name&gt;.
    #   @return [String]
    #
    # @!attribute [rw] bucket_name
    #   The name of the Amazon S3 bucket associated with Snowflake.
    #   @return [String]
    #
    # @!attribute [rw] bucket_prefix
    #   The bucket path that refers to the Amazon S3 bucket associated with
    #   Snowflake.
    #   @return [String]
    #
    # @!attribute [rw] private_link_service_name
    #   The Snowflake Private Link service name to be used for private data
    #   transfers.
    #   @return [String]
    #
    # @!attribute [rw] account_name
    #   The name of the account.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region of the Snowflake account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/SnowflakeConnectorProfileProperties AWS API Documentation
    #
    class SnowflakeConnectorProfileProperties < Struct.new(
      :warehouse,
      :stage,
      :bucket_name,
      :bucket_prefix,
      :private_link_service_name,
      :account_name,
      :region)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties that are applied when Snowflake is being used as a
    # destination.
    #
    # @!attribute [rw] object
    #   The object specified in the Snowflake flow destination.
    #   @return [String]
    #
    # @!attribute [rw] intermediate_bucket_name
    #   The intermediate bucket that Amazon AppFlow uses when moving data
    #   into Snowflake.
    #   @return [String]
    #
    # @!attribute [rw] bucket_prefix
    #   The object key for the destination bucket in which Amazon AppFlow
    #   places the files.
    #   @return [String]
    #
    # @!attribute [rw] error_handling_config
    #   The settings that determine how Amazon AppFlow handles an error when
    #   placing data in the Snowflake destination. For example, this setting
    #   would determine if the flow should fail after one insertion error,
    #   or continue and attempt to insert every record regardless of the
    #   initial failure. `ErrorHandlingConfig` is a part of the destination
    #   connector details.
    #   @return [Types::ErrorHandlingConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/SnowflakeDestinationProperties AWS API Documentation
    #
    class SnowflakeDestinationProperties < Struct.new(
      :object,
      :intermediate_bucket_name,
      :bucket_prefix,
      :error_handling_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector metadata specific to Snowflake.
    #
    # @!attribute [rw] supported_regions
    #   Specifies the supported Amazon Web Services Regions when using
    #   Snowflake.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/SnowflakeMetadata AWS API Documentation
    #
    class SnowflakeMetadata < Struct.new(
      :supported_regions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the information that is required to query a particular
    # connector.
    #
    # @!attribute [rw] amplitude
    #   Specifies the information that is required for querying Amplitude.
    #   @return [Types::AmplitudeSourceProperties]
    #
    # @!attribute [rw] datadog
    #   Specifies the information that is required for querying Datadog.
    #   @return [Types::DatadogSourceProperties]
    #
    # @!attribute [rw] dynatrace
    #   Specifies the information that is required for querying Dynatrace.
    #   @return [Types::DynatraceSourceProperties]
    #
    # @!attribute [rw] google_analytics
    #   Specifies the information that is required for querying Google
    #   Analytics.
    #   @return [Types::GoogleAnalyticsSourceProperties]
    #
    # @!attribute [rw] infor_nexus
    #   Specifies the information that is required for querying Infor Nexus.
    #   @return [Types::InforNexusSourceProperties]
    #
    # @!attribute [rw] marketo
    #   Specifies the information that is required for querying Marketo.
    #   @return [Types::MarketoSourceProperties]
    #
    # @!attribute [rw] s3
    #   Specifies the information that is required for querying Amazon S3.
    #   @return [Types::S3SourceProperties]
    #
    # @!attribute [rw] salesforce
    #   Specifies the information that is required for querying Salesforce.
    #   @return [Types::SalesforceSourceProperties]
    #
    # @!attribute [rw] service_now
    #   Specifies the information that is required for querying ServiceNow.
    #   @return [Types::ServiceNowSourceProperties]
    #
    # @!attribute [rw] singular
    #   Specifies the information that is required for querying Singular.
    #   @return [Types::SingularSourceProperties]
    #
    # @!attribute [rw] slack
    #   Specifies the information that is required for querying Slack.
    #   @return [Types::SlackSourceProperties]
    #
    # @!attribute [rw] trendmicro
    #   Specifies the information that is required for querying Trend Micro.
    #   @return [Types::TrendmicroSourceProperties]
    #
    # @!attribute [rw] veeva
    #   Specifies the information that is required for querying Veeva.
    #   @return [Types::VeevaSourceProperties]
    #
    # @!attribute [rw] zendesk
    #   Specifies the information that is required for querying Zendesk.
    #   @return [Types::ZendeskSourceProperties]
    #
    # @!attribute [rw] sapo_data
    #   The properties that are applied when using SAPOData as a flow
    #   source.
    #   @return [Types::SAPODataSourceProperties]
    #
    # @!attribute [rw] custom_connector
    #   The properties that are applied when the custom connector is being
    #   used as a source.
    #   @return [Types::CustomConnectorSourceProperties]
    #
    # @!attribute [rw] pardot
    #   Specifies the information that is required for querying Salesforce
    #   Pardot.
    #   @return [Types::PardotSourceProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/SourceConnectorProperties AWS API Documentation
    #
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
      :pardot)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties that can be applied to a field when the connector is
    # being used as a source.
    #
    # @!attribute [rw] is_retrievable
    #   Indicates whether the field can be returned in a search result.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_queryable
    #   Indicates if the field can be queried.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_timestamp_field_for_incremental_queries
    #   Indicates if this timestamp field can be used for incremental
    #   queries.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/SourceFieldProperties AWS API Documentation
    #
    class SourceFieldProperties < Struct.new(
      :is_retrievable,
      :is_queryable,
      :is_timestamp_field_for_incremental_queries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the configuration of the source connector
    # used in the flow.
    #
    # @!attribute [rw] connector_type
    #   The type of connector, such as Salesforce, Amplitude, and so on.
    #   @return [String]
    #
    # @!attribute [rw] api_version
    #   The API version of the connector when it's used as a source in the
    #   flow.
    #   @return [String]
    #
    # @!attribute [rw] connector_profile_name
    #   The name of the connector profile. This name must be unique for each
    #   connector profile in the Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] source_connector_properties
    #   Specifies the information that is required to query a particular
    #   source connector.
    #   @return [Types::SourceConnectorProperties]
    #
    # @!attribute [rw] incremental_pull_config
    #   Defines the configuration for a scheduled incremental data pull. If
    #   a valid configuration is provided, the fields specified in the
    #   configuration are used when querying for the incremental data pull.
    #   @return [Types::IncrementalPullConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/SourceFlowConfig AWS API Documentation
    #
    class SourceFlowConfig < Struct.new(
      :connector_type,
      :api_version,
      :connector_profile_name,
      :source_connector_properties,
      :incremental_pull_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_name
    #   The specified name of the flow. Spaces are not allowed. Use
    #   underscores (\_) or hyphens (-) only.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The `clientToken` parameter is an idempotency token. It ensures that
    #   your `StartFlow` request completes only once. You choose the value
    #   to pass. For example, if you don't receive a response from your
    #   request, you can safely retry the request with the same
    #   `clientToken` parameter value.
    #
    #   If you omit a `clientToken` value, the Amazon Web Services SDK that
    #   you are using inserts a value for you. This way, the SDK can safely
    #   retry requests multiple times after a network error. You must
    #   provide your own value for other use cases.
    #
    #   If you specify input parameters that differ from your first request,
    #   an error occurs for flows that run on a schedule or based on an
    #   event. However, the error doesn't occur for flows that run on
    #   demand. You set the conditions that initiate your flow for the
    #   `triggerConfig` parameter.
    #
    #   If you use a different value for `clientToken`, Amazon AppFlow
    #   considers it a new call to `StartFlow`. The token is active for 8
    #   hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/StartFlowRequest AWS API Documentation
    #
    class StartFlowRequest < Struct.new(
      :flow_name,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_arn
    #   The flow's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] flow_status
    #   Indicates the current status of the flow.
    #   @return [String]
    #
    # @!attribute [rw] execution_id
    #   Returns the internal execution ID of an on-demand flow when the flow
    #   is started. For scheduled or event-triggered flows, this value is
    #   null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/StartFlowResponse AWS API Documentation
    #
    class StartFlowResponse < Struct.new(
      :flow_arn,
      :flow_status,
      :execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_name
    #   The specified name of the flow. Spaces are not allowed. Use
    #   underscores (\_) or hyphens (-) only.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/StopFlowRequest AWS API Documentation
    #
    class StopFlowRequest < Struct.new(
      :flow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_arn
    #   The flow's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] flow_status
    #   Indicates the current status of the flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/StopFlowResponse AWS API Documentation
    #
    class StopFlowResponse < Struct.new(
      :flow_arn,
      :flow_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Determines how Amazon AppFlow handles the success response that it
    # gets from the connector after placing data.
    #
    # For example, this setting would determine where to write the response
    # from the destination connector upon a successful insert operation.
    #
    # @!attribute [rw] bucket_prefix
    #   The Amazon S3 bucket prefix.
    #   @return [String]
    #
    # @!attribute [rw] bucket_name
    #   The name of the Amazon S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/SuccessResponseHandlingConfig AWS API Documentation
    #
    class SuccessResponseHandlingConfig < Struct.new(
      :bucket_prefix,
      :bucket_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details regarding all the supported `FieldTypes` and their
    # corresponding `filterOperators` and `supportedValues`.
    #
    # @!attribute [rw] v1
    #   The initial supported version for `fieldType`. If this is later
    #   changed to a different version, v2 will be introduced.
    #   @return [Types::FieldTypeDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/SupportedFieldTypeDetails AWS API Documentation
    #
    class SupportedFieldTypeDetails < Struct.new(
      :v1)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the flow that you want to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for your flow.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # A class for modeling different type of tasks. Task implementation
    # varies based on the `TaskType`.
    #
    # @!attribute [rw] source_fields
    #   The source fields to which a particular task is applied.
    #   @return [Array<String>]
    #
    # @!attribute [rw] connector_operator
    #   The operation to be performed on the provided source fields.
    #   @return [Types::ConnectorOperator]
    #
    # @!attribute [rw] destination_field
    #   A field in a destination connector, or a field value against which
    #   Amazon AppFlow validates a source field.
    #   @return [String]
    #
    # @!attribute [rw] task_type
    #   Specifies the particular task implementation that Amazon AppFlow
    #   performs.
    #   @return [String]
    #
    # @!attribute [rw] task_properties
    #   A map used to store task-related information. The execution service
    #   looks for particular information based on the `TaskType`.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/Task AWS API Documentation
    #
    class Task < Struct.new(
      :source_fields,
      :connector_operator,
      :destination_field,
      :task_type,
      :task_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # API calls have exceeded the maximum allowed API request rate per
    # account and per Region.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector-specific profile credentials required when using Trend
    # Micro.
    #
    # @!attribute [rw] api_secret_key
    #   The Secret Access Key portion of the credentials.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/TrendmicroConnectorProfileCredentials AWS API Documentation
    #
    class TrendmicroConnectorProfileCredentials < Struct.new(
      :api_secret_key)
      SENSITIVE = [:api_secret_key]
      include Aws::Structure
    end

    # The connector-specific profile properties required when using Trend
    # Micro.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/TrendmicroConnectorProfileProperties AWS API Documentation
    #
    class TrendmicroConnectorProfileProperties < Aws::EmptyStructure; end

    # The connector metadata specific to Trend Micro.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/TrendmicroMetadata AWS API Documentation
    #
    class TrendmicroMetadata < Aws::EmptyStructure; end

    # The properties that are applied when using Trend Micro as a flow
    # source.
    #
    # @!attribute [rw] object
    #   The object specified in the Trend Micro flow source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/TrendmicroSourceProperties AWS API Documentation
    #
    class TrendmicroSourceProperties < Struct.new(
      :object)
      SENSITIVE = []
      include Aws::Structure
    end

    # The trigger settings that determine how and when Amazon AppFlow runs
    # the specified flow.
    #
    # @!attribute [rw] trigger_type
    #   Specifies the type of flow trigger. This can be `OnDemand`,
    #   `Scheduled`, or `Event`.
    #   @return [String]
    #
    # @!attribute [rw] trigger_properties
    #   Specifies the configuration details of a schedule-triggered flow as
    #   defined by the user. Currently, these settings only apply to the
    #   `Scheduled` trigger type.
    #   @return [Types::TriggerProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/TriggerConfig AWS API Documentation
    #
    class TriggerConfig < Struct.new(
      :trigger_type,
      :trigger_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configuration details that control the trigger for a
    # flow. Currently, these settings only apply to the `Scheduled` trigger
    # type.
    #
    # @!attribute [rw] scheduled
    #   Specifies the configuration details of a schedule-triggered flow as
    #   defined by the user.
    #   @return [Types::ScheduledTriggerProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/TriggerProperties AWS API Documentation
    #
    class TriggerProperties < Struct.new(
      :scheduled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_label
    #   The label of the connector. The label is unique for each
    #   `ConnectorRegistration` in your Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] force_delete
    #   Indicates whether Amazon AppFlow should unregister the connector,
    #   even if it is currently in use in one or more connector profiles.
    #   The default value is false.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/UnregisterConnectorRequest AWS API Documentation
    #
    class UnregisterConnectorRequest < Struct.new(
      :connector_label,
      :force_delete)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/UnregisterConnectorResponse AWS API Documentation
    #
    class UnregisterConnectorResponse < Aws::EmptyStructure; end

    # The requested operation is not supported for the current flow.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/UnsupportedOperationException AWS API Documentation
    #
    class UnsupportedOperationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the flow that you want to untag.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys associated with the tag that you want to remove from
    #   your flow.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] connector_profile_name
    #   The name of the connector profile and is unique for each
    #   `ConnectorProfile` in the Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] connection_mode
    #   Indicates the connection mode and if it is public or private.
    #   @return [String]
    #
    # @!attribute [rw] connector_profile_config
    #   Defines the connector-specific profile configuration and
    #   credentials.
    #   @return [Types::ConnectorProfileConfig]
    #
    # @!attribute [rw] client_token
    #   The `clientToken` parameter is an idempotency token. It ensures that
    #   your `UpdateConnectorProfile` request completes only once. You
    #   choose the value to pass. For example, if you don't receive a
    #   response from your request, you can safely retry the request with
    #   the same `clientToken` parameter value.
    #
    #   If you omit a `clientToken` value, the Amazon Web Services SDK that
    #   you are using inserts a value for you. This way, the SDK can safely
    #   retry requests multiple times after a network error. You must
    #   provide your own value for other use cases.
    #
    #   If you specify input parameters that differ from your first request,
    #   an error occurs. If you use a different value for `clientToken`,
    #   Amazon AppFlow considers it a new call to `UpdateConnectorProfile`.
    #   The token is active for 8 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/UpdateConnectorProfileRequest AWS API Documentation
    #
    class UpdateConnectorProfileRequest < Struct.new(
      :connector_profile_name,
      :connection_mode,
      :connector_profile_config,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_profile_arn
    #   The Amazon Resource Name (ARN) of the connector profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/UpdateConnectorProfileResponse AWS API Documentation
    #
    class UpdateConnectorProfileResponse < Struct.new(
      :connector_profile_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_label
    #   The name of the connector. The name is unique for each connector
    #   registration in your AWS account.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description about the update that you're applying to the
    #   connector.
    #   @return [String]
    #
    # @!attribute [rw] connector_provisioning_config
    #   Contains information about the configuration of the connector being
    #   registered.
    #   @return [Types::ConnectorProvisioningConfig]
    #
    # @!attribute [rw] client_token
    #   The `clientToken` parameter is an idempotency token. It ensures that
    #   your `UpdateConnectorRegistration` request completes only once. You
    #   choose the value to pass. For example, if you don't receive a
    #   response from your request, you can safely retry the request with
    #   the same `clientToken` parameter value.
    #
    #   If you omit a `clientToken` value, the Amazon Web Services SDK that
    #   you are using inserts a value for you. This way, the SDK can safely
    #   retry requests multiple times after a network error. You must
    #   provide your own value for other use cases.
    #
    #   If you specify input parameters that differ from your first request,
    #   an error occurs. If you use a different value for `clientToken`,
    #   Amazon AppFlow considers it a new call to
    #   `UpdateConnectorRegistration`. The token is active for 8 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/UpdateConnectorRegistrationRequest AWS API Documentation
    #
    class UpdateConnectorRegistrationRequest < Struct.new(
      :connector_label,
      :description,
      :connector_provisioning_config,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_arn
    #   The ARN of the connector being updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/UpdateConnectorRegistrationResponse AWS API Documentation
    #
    class UpdateConnectorRegistrationResponse < Struct.new(
      :connector_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_name
    #   The specified name of the flow. Spaces are not allowed. Use
    #   underscores (\_) or hyphens (-) only.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the flow.
    #   @return [String]
    #
    # @!attribute [rw] trigger_config
    #   The trigger settings that determine how and when the flow runs.
    #   @return [Types::TriggerConfig]
    #
    # @!attribute [rw] source_flow_config
    #   Contains information about the configuration of the source connector
    #   used in the flow.
    #   @return [Types::SourceFlowConfig]
    #
    # @!attribute [rw] destination_flow_config_list
    #   The configuration that controls how Amazon AppFlow transfers data to
    #   the destination connector.
    #   @return [Array<Types::DestinationFlowConfig>]
    #
    # @!attribute [rw] tasks
    #   A list of tasks that Amazon AppFlow performs while transferring the
    #   data in the flow run.
    #   @return [Array<Types::Task>]
    #
    # @!attribute [rw] metadata_catalog_config
    #   Specifies the configuration that Amazon AppFlow uses when it
    #   catalogs the data that's transferred by the associated flow. When
    #   Amazon AppFlow catalogs the data from a flow, it stores metadata in
    #   a data catalog.
    #   @return [Types::MetadataCatalogConfig]
    #
    # @!attribute [rw] client_token
    #   The `clientToken` parameter is an idempotency token. It ensures that
    #   your `UpdateFlow` request completes only once. You choose the value
    #   to pass. For example, if you don't receive a response from your
    #   request, you can safely retry the request with the same
    #   `clientToken` parameter value.
    #
    #   If you omit a `clientToken` value, the Amazon Web Services SDK that
    #   you are using inserts a value for you. This way, the SDK can safely
    #   retry requests multiple times after a network error. You must
    #   provide your own value for other use cases.
    #
    #   If you specify input parameters that differ from your first request,
    #   an error occurs. If you use a different value for `clientToken`,
    #   Amazon AppFlow considers it a new call to `UpdateFlow`. The token is
    #   active for 8 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/UpdateFlowRequest AWS API Documentation
    #
    class UpdateFlowRequest < Struct.new(
      :flow_name,
      :description,
      :trigger_config,
      :source_flow_config,
      :destination_flow_config_list,
      :tasks,
      :metadata_catalog_config,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_status
    #   Indicates the current status of the flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/UpdateFlowResponse AWS API Documentation
    #
    class UpdateFlowResponse < Struct.new(
      :flow_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties that are applied when Upsolver is used as a
    # destination.
    #
    # @!attribute [rw] bucket_name
    #   The Upsolver Amazon S3 bucket name in which Amazon AppFlow places
    #   the transferred data.
    #   @return [String]
    #
    # @!attribute [rw] bucket_prefix
    #   The object key for the destination Upsolver Amazon S3 bucket in
    #   which Amazon AppFlow places the files.
    #   @return [String]
    #
    # @!attribute [rw] s3_output_format_config
    #   The configuration that determines how data is formatted when
    #   Upsolver is used as the flow destination.
    #   @return [Types::UpsolverS3OutputFormatConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/UpsolverDestinationProperties AWS API Documentation
    #
    class UpsolverDestinationProperties < Struct.new(
      :bucket_name,
      :bucket_prefix,
      :s3_output_format_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector metadata specific to Upsolver.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/UpsolverMetadata AWS API Documentation
    #
    class UpsolverMetadata < Aws::EmptyStructure; end

    # The configuration that determines how Amazon AppFlow formats the flow
    # output data when Upsolver is used as the destination.
    #
    # @!attribute [rw] file_type
    #   Indicates the file type that Amazon AppFlow places in the Upsolver
    #   Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] prefix_config
    #   Specifies elements that Amazon AppFlow includes in the file and
    #   folder names in the flow destination.
    #   @return [Types::PrefixConfig]
    #
    # @!attribute [rw] aggregation_config
    #   The aggregation settings that you can use to customize the output
    #   format of your flow data.
    #   @return [Types::AggregationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/UpsolverS3OutputFormatConfig AWS API Documentation
    #
    class UpsolverS3OutputFormatConfig < Struct.new(
      :file_type,
      :prefix_config,
      :aggregation_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request has invalid or missing parameters.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector-specific profile credentials required when using Veeva.
    #
    # @!attribute [rw] username
    #   The name of the user.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password that corresponds to the user name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/VeevaConnectorProfileCredentials AWS API Documentation
    #
    class VeevaConnectorProfileCredentials < Struct.new(
      :username,
      :password)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # The connector-specific profile properties required when using Veeva.
    #
    # @!attribute [rw] instance_url
    #   The location of the Veeva resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/VeevaConnectorProfileProperties AWS API Documentation
    #
    class VeevaConnectorProfileProperties < Struct.new(
      :instance_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector metadata specific to Veeva.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/VeevaMetadata AWS API Documentation
    #
    class VeevaMetadata < Aws::EmptyStructure; end

    # The properties that are applied when using Veeva as a flow source.
    #
    # @!attribute [rw] object
    #   The object specified in the Veeva flow source.
    #   @return [String]
    #
    # @!attribute [rw] document_type
    #   The document type specified in the Veeva document extract flow.
    #   @return [String]
    #
    # @!attribute [rw] include_source_files
    #   Boolean value to include source files in Veeva document extract
    #   flow.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_renditions
    #   Boolean value to include file renditions in Veeva document extract
    #   flow.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_all_versions
    #   Boolean value to include All Versions of files in Veeva document
    #   extract flow.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/VeevaSourceProperties AWS API Documentation
    #
    class VeevaSourceProperties < Struct.new(
      :object,
      :document_type,
      :include_source_files,
      :include_renditions,
      :include_all_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector-specific profile credentials required when using
    # Zendesk.
    #
    # @!attribute [rw] client_id
    #   The identifier for the desired client.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The client secret used by the OAuth client to authenticate to the
    #   authorization server.
    #   @return [String]
    #
    # @!attribute [rw] access_token
    #   The credentials used to access protected Zendesk resources.
    #   @return [String]
    #
    # @!attribute [rw] o_auth_request
    #   The OAuth requirement needed to request security tokens from the
    #   connector endpoint.
    #   @return [Types::ConnectorOAuthRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ZendeskConnectorProfileCredentials AWS API Documentation
    #
    class ZendeskConnectorProfileCredentials < Struct.new(
      :client_id,
      :client_secret,
      :access_token,
      :o_auth_request)
      SENSITIVE = [:client_secret, :access_token]
      include Aws::Structure
    end

    # The connector-specific profile properties required when using Zendesk.
    #
    # @!attribute [rw] instance_url
    #   The location of the Zendesk resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ZendeskConnectorProfileProperties AWS API Documentation
    #
    class ZendeskConnectorProfileProperties < Struct.new(
      :instance_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties that are applied when Zendesk is used as a destination.
    #
    # @!attribute [rw] object
    #   The object specified in the Zendesk flow destination.
    #   @return [String]
    #
    # @!attribute [rw] id_field_names
    #   A list of field names that can be used as an ID field when
    #   performing a write operation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] error_handling_config
    #   The settings that determine how Amazon AppFlow handles an error when
    #   placing data in the destination. For example, this setting would
    #   determine if the flow should fail after one insertion error, or
    #   continue and attempt to insert every record regardless of the
    #   initial failure. `ErrorHandlingConfig` is a part of the destination
    #   connector details.
    #   @return [Types::ErrorHandlingConfig]
    #
    # @!attribute [rw] write_operation_type
    #   The possible write operations in the destination connector. When
    #   this value is not provided, this defaults to the `INSERT` operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ZendeskDestinationProperties AWS API Documentation
    #
    class ZendeskDestinationProperties < Struct.new(
      :object,
      :id_field_names,
      :error_handling_config,
      :write_operation_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector metadata specific to Zendesk.
    #
    # @!attribute [rw] o_auth_scopes
    #   The desired authorization scope for the Zendesk account.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ZendeskMetadata AWS API Documentation
    #
    class ZendeskMetadata < Struct.new(
      :o_auth_scopes)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties that are applied when using Zendesk as a flow source.
    #
    # @!attribute [rw] object
    #   The object specified in the Zendesk flow source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ZendeskSourceProperties AWS API Documentation
    #
    class ZendeskSourceProperties < Struct.new(
      :object)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
