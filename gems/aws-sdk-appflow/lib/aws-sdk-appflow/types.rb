# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Appflow
  module Types

    # The aggregation settings that you can use to customize the output
    # format of your flow data.
    #
    # @note When making an API call, you may pass AggregationConfig
    #   data as a hash:
    #
    #       {
    #         aggregation_type: "None", # accepts None, SingleFile
    #       }
    #
    # @!attribute [rw] aggregation_type
    #   Specifies whether Amazon AppFlow aggregates the flow records into a
    #   single file, or leave them unaggregated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/AggregationConfig AWS API Documentation
    #
    class AggregationConfig < Struct.new(
      :aggregation_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector-specific credentials required when using Amplitude.
    #
    # @note When making an API call, you may pass AmplitudeConnectorProfileCredentials
    #   data as a hash:
    #
    #       {
    #         api_key: "ApiKey", # required
    #         secret_key: "SecretKey", # required
    #       }
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
      SENSITIVE = [:secret_key]
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
    # @note When making an API call, you may pass AmplitudeSourceProperties
    #   data as a hash:
    #
    #       {
    #         object: "Object", # required
    #       }
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
      :connector_metadata)
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
    # @!attribute [rw] label
    #   The label applied to a connector entity field.
    #   @return [String]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ConnectorEntityField AWS API Documentation
    #
    class ConnectorEntityField < Struct.new(
      :identifier,
      :label,
      :supported_field_type_details,
      :description,
      :source_properties,
      :destination_properties)
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
      :event_bridge)
      SENSITIVE = []
      include Aws::Structure
    end

    # Used by select connectors for which the OAuth workflow is supported,
    # such as Salesforce, Google Analytics, Marketo, Zendesk, and Slack.
    #
    # @note When making an API call, you may pass ConnectorOAuthRequest
    #   data as a hash:
    #
    #       {
    #         auth_code: "AuthCode",
    #         redirect_uri: "RedirectUri",
    #       }
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
    # @note When making an API call, you may pass ConnectorOperator
    #   data as a hash:
    #
    #       {
    #         amplitude: "BETWEEN", # accepts BETWEEN
    #         datadog: "PROJECTION", # accepts PROJECTION, BETWEEN, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #         dynatrace: "PROJECTION", # accepts PROJECTION, BETWEEN, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #         google_analytics: "PROJECTION", # accepts PROJECTION, BETWEEN
    #         infor_nexus: "PROJECTION", # accepts PROJECTION, BETWEEN, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #         marketo: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #         s3: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #         salesforce: "PROJECTION", # accepts PROJECTION, LESS_THAN, CONTAINS, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #         service_now: "PROJECTION", # accepts PROJECTION, CONTAINS, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #         singular: "PROJECTION", # accepts PROJECTION, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #         slack: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #         trendmicro: "PROJECTION", # accepts PROJECTION, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #         veeva: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, CONTAINS, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #         zendesk: "PROJECTION", # accepts PROJECTION, GREATER_THAN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #       }
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
      :zendesk)
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
    #   `ConnectorProfile` in the AWS account.
    #   @return [String]
    #
    # @!attribute [rw] connector_type
    #   The type of connector, such as Salesforce, Amplitude, and so on.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ConnectorProfile AWS API Documentation
    #
    class ConnectorProfile < Struct.new(
      :connector_profile_arn,
      :connector_profile_name,
      :connector_type,
      :connection_mode,
      :credentials_arn,
      :connector_profile_properties,
      :created_at,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the connector-specific configuration and credentials for the
    # connector profile.
    #
    # @note When making an API call, you may pass ConnectorProfileConfig
    #   data as a hash:
    #
    #       {
    #         connector_profile_properties: { # required
    #           amplitude: {
    #           },
    #           datadog: {
    #             instance_url: "InstanceUrl", # required
    #           },
    #           dynatrace: {
    #             instance_url: "InstanceUrl", # required
    #           },
    #           google_analytics: {
    #           },
    #           infor_nexus: {
    #             instance_url: "InstanceUrl", # required
    #           },
    #           marketo: {
    #             instance_url: "InstanceUrl", # required
    #           },
    #           redshift: {
    #             database_url: "DatabaseUrl", # required
    #             bucket_name: "BucketName", # required
    #             bucket_prefix: "BucketPrefix",
    #             role_arn: "RoleArn", # required
    #           },
    #           salesforce: {
    #             instance_url: "InstanceUrl",
    #             is_sandbox_environment: false,
    #           },
    #           service_now: {
    #             instance_url: "InstanceUrl", # required
    #           },
    #           singular: {
    #           },
    #           slack: {
    #             instance_url: "InstanceUrl", # required
    #           },
    #           snowflake: {
    #             warehouse: "Warehouse", # required
    #             stage: "Stage", # required
    #             bucket_name: "BucketName", # required
    #             bucket_prefix: "BucketPrefix",
    #             private_link_service_name: "PrivateLinkServiceName",
    #             account_name: "AccountName",
    #             region: "Region",
    #           },
    #           trendmicro: {
    #           },
    #           veeva: {
    #             instance_url: "InstanceUrl", # required
    #           },
    #           zendesk: {
    #             instance_url: "InstanceUrl", # required
    #           },
    #         },
    #         connector_profile_credentials: { # required
    #           amplitude: {
    #             api_key: "ApiKey", # required
    #             secret_key: "SecretKey", # required
    #           },
    #           datadog: {
    #             api_key: "ApiKey", # required
    #             application_key: "ApplicationKey", # required
    #           },
    #           dynatrace: {
    #             api_token: "ApiToken", # required
    #           },
    #           google_analytics: {
    #             client_id: "ClientId", # required
    #             client_secret: "ClientSecret", # required
    #             access_token: "AccessToken",
    #             refresh_token: "RefreshToken",
    #             o_auth_request: {
    #               auth_code: "AuthCode",
    #               redirect_uri: "RedirectUri",
    #             },
    #           },
    #           infor_nexus: {
    #             access_key_id: "AccessKeyId", # required
    #             user_id: "Username", # required
    #             secret_access_key: "Key", # required
    #             datakey: "Key", # required
    #           },
    #           marketo: {
    #             client_id: "ClientId", # required
    #             client_secret: "ClientSecret", # required
    #             access_token: "AccessToken",
    #             o_auth_request: {
    #               auth_code: "AuthCode",
    #               redirect_uri: "RedirectUri",
    #             },
    #           },
    #           redshift: {
    #             username: "Username", # required
    #             password: "Password", # required
    #           },
    #           salesforce: {
    #             access_token: "AccessToken",
    #             refresh_token: "RefreshToken",
    #             o_auth_request: {
    #               auth_code: "AuthCode",
    #               redirect_uri: "RedirectUri",
    #             },
    #           },
    #           service_now: {
    #             username: "Username", # required
    #             password: "Password", # required
    #           },
    #           singular: {
    #             api_key: "ApiKey", # required
    #           },
    #           slack: {
    #             client_id: "ClientId", # required
    #             client_secret: "ClientSecret", # required
    #             access_token: "AccessToken",
    #             o_auth_request: {
    #               auth_code: "AuthCode",
    #               redirect_uri: "RedirectUri",
    #             },
    #           },
    #           snowflake: {
    #             username: "Username", # required
    #             password: "Password", # required
    #           },
    #           trendmicro: {
    #             api_secret_key: "ApiSecretKey", # required
    #           },
    #           veeva: {
    #             username: "Username", # required
    #             password: "Password", # required
    #           },
    #           zendesk: {
    #             client_id: "ClientId", # required
    #             client_secret: "ClientSecret", # required
    #             access_token: "AccessToken",
    #             o_auth_request: {
    #               auth_code: "AuthCode",
    #               redirect_uri: "RedirectUri",
    #             },
    #           },
    #         },
    #       }
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
    # @note When making an API call, you may pass ConnectorProfileCredentials
    #   data as a hash:
    #
    #       {
    #         amplitude: {
    #           api_key: "ApiKey", # required
    #           secret_key: "SecretKey", # required
    #         },
    #         datadog: {
    #           api_key: "ApiKey", # required
    #           application_key: "ApplicationKey", # required
    #         },
    #         dynatrace: {
    #           api_token: "ApiToken", # required
    #         },
    #         google_analytics: {
    #           client_id: "ClientId", # required
    #           client_secret: "ClientSecret", # required
    #           access_token: "AccessToken",
    #           refresh_token: "RefreshToken",
    #           o_auth_request: {
    #             auth_code: "AuthCode",
    #             redirect_uri: "RedirectUri",
    #           },
    #         },
    #         infor_nexus: {
    #           access_key_id: "AccessKeyId", # required
    #           user_id: "Username", # required
    #           secret_access_key: "Key", # required
    #           datakey: "Key", # required
    #         },
    #         marketo: {
    #           client_id: "ClientId", # required
    #           client_secret: "ClientSecret", # required
    #           access_token: "AccessToken",
    #           o_auth_request: {
    #             auth_code: "AuthCode",
    #             redirect_uri: "RedirectUri",
    #           },
    #         },
    #         redshift: {
    #           username: "Username", # required
    #           password: "Password", # required
    #         },
    #         salesforce: {
    #           access_token: "AccessToken",
    #           refresh_token: "RefreshToken",
    #           o_auth_request: {
    #             auth_code: "AuthCode",
    #             redirect_uri: "RedirectUri",
    #           },
    #         },
    #         service_now: {
    #           username: "Username", # required
    #           password: "Password", # required
    #         },
    #         singular: {
    #           api_key: "ApiKey", # required
    #         },
    #         slack: {
    #           client_id: "ClientId", # required
    #           client_secret: "ClientSecret", # required
    #           access_token: "AccessToken",
    #           o_auth_request: {
    #             auth_code: "AuthCode",
    #             redirect_uri: "RedirectUri",
    #           },
    #         },
    #         snowflake: {
    #           username: "Username", # required
    #           password: "Password", # required
    #         },
    #         trendmicro: {
    #           api_secret_key: "ApiSecretKey", # required
    #         },
    #         veeva: {
    #           username: "Username", # required
    #           password: "Password", # required
    #         },
    #         zendesk: {
    #           client_id: "ClientId", # required
    #           client_secret: "ClientSecret", # required
    #           access_token: "AccessToken",
    #           o_auth_request: {
    #             auth_code: "AuthCode",
    #             redirect_uri: "RedirectUri",
    #           },
    #         },
    #       }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ConnectorProfileCredentials AWS API Documentation
    #
    class ConnectorProfileCredentials < Struct.new(
      :amplitude,
      :datadog,
      :dynatrace,
      :google_analytics,
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
      :zendesk)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector-specific profile properties required by each connector.
    #
    # @note When making an API call, you may pass ConnectorProfileProperties
    #   data as a hash:
    #
    #       {
    #         amplitude: {
    #         },
    #         datadog: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         dynatrace: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         google_analytics: {
    #         },
    #         infor_nexus: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         marketo: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         redshift: {
    #           database_url: "DatabaseUrl", # required
    #           bucket_name: "BucketName", # required
    #           bucket_prefix: "BucketPrefix",
    #           role_arn: "RoleArn", # required
    #         },
    #         salesforce: {
    #           instance_url: "InstanceUrl",
    #           is_sandbox_environment: false,
    #         },
    #         service_now: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         singular: {
    #         },
    #         slack: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         snowflake: {
    #           warehouse: "Warehouse", # required
    #           stage: "Stage", # required
    #           bucket_name: "BucketName", # required
    #           bucket_prefix: "BucketPrefix",
    #           private_link_service_name: "PrivateLinkServiceName",
    #           account_name: "AccountName",
    #           region: "Region",
    #         },
    #         trendmicro: {
    #         },
    #         veeva: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         zendesk: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #       }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ConnectorProfileProperties AWS API Documentation
    #
    class ConnectorProfileProperties < Struct.new(
      :amplitude,
      :datadog,
      :dynatrace,
      :google_analytics,
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
      :zendesk)
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

    # @note When making an API call, you may pass CreateConnectorProfileRequest
    #   data as a hash:
    #
    #       {
    #         connector_profile_name: "ConnectorProfileName", # required
    #         kms_arn: "KMSArn",
    #         connector_type: "Salesforce", # required, accepts Salesforce, Singular, Slack, Redshift, S3, Marketo, Googleanalytics, Zendesk, Servicenow, Datadog, Trendmicro, Snowflake, Dynatrace, Infornexus, Amplitude, Veeva, EventBridge
    #         connection_mode: "Public", # required, accepts Public, Private
    #         connector_profile_config: { # required
    #           connector_profile_properties: { # required
    #             amplitude: {
    #             },
    #             datadog: {
    #               instance_url: "InstanceUrl", # required
    #             },
    #             dynatrace: {
    #               instance_url: "InstanceUrl", # required
    #             },
    #             google_analytics: {
    #             },
    #             infor_nexus: {
    #               instance_url: "InstanceUrl", # required
    #             },
    #             marketo: {
    #               instance_url: "InstanceUrl", # required
    #             },
    #             redshift: {
    #               database_url: "DatabaseUrl", # required
    #               bucket_name: "BucketName", # required
    #               bucket_prefix: "BucketPrefix",
    #               role_arn: "RoleArn", # required
    #             },
    #             salesforce: {
    #               instance_url: "InstanceUrl",
    #               is_sandbox_environment: false,
    #             },
    #             service_now: {
    #               instance_url: "InstanceUrl", # required
    #             },
    #             singular: {
    #             },
    #             slack: {
    #               instance_url: "InstanceUrl", # required
    #             },
    #             snowflake: {
    #               warehouse: "Warehouse", # required
    #               stage: "Stage", # required
    #               bucket_name: "BucketName", # required
    #               bucket_prefix: "BucketPrefix",
    #               private_link_service_name: "PrivateLinkServiceName",
    #               account_name: "AccountName",
    #               region: "Region",
    #             },
    #             trendmicro: {
    #             },
    #             veeva: {
    #               instance_url: "InstanceUrl", # required
    #             },
    #             zendesk: {
    #               instance_url: "InstanceUrl", # required
    #             },
    #           },
    #           connector_profile_credentials: { # required
    #             amplitude: {
    #               api_key: "ApiKey", # required
    #               secret_key: "SecretKey", # required
    #             },
    #             datadog: {
    #               api_key: "ApiKey", # required
    #               application_key: "ApplicationKey", # required
    #             },
    #             dynatrace: {
    #               api_token: "ApiToken", # required
    #             },
    #             google_analytics: {
    #               client_id: "ClientId", # required
    #               client_secret: "ClientSecret", # required
    #               access_token: "AccessToken",
    #               refresh_token: "RefreshToken",
    #               o_auth_request: {
    #                 auth_code: "AuthCode",
    #                 redirect_uri: "RedirectUri",
    #               },
    #             },
    #             infor_nexus: {
    #               access_key_id: "AccessKeyId", # required
    #               user_id: "Username", # required
    #               secret_access_key: "Key", # required
    #               datakey: "Key", # required
    #             },
    #             marketo: {
    #               client_id: "ClientId", # required
    #               client_secret: "ClientSecret", # required
    #               access_token: "AccessToken",
    #               o_auth_request: {
    #                 auth_code: "AuthCode",
    #                 redirect_uri: "RedirectUri",
    #               },
    #             },
    #             redshift: {
    #               username: "Username", # required
    #               password: "Password", # required
    #             },
    #             salesforce: {
    #               access_token: "AccessToken",
    #               refresh_token: "RefreshToken",
    #               o_auth_request: {
    #                 auth_code: "AuthCode",
    #                 redirect_uri: "RedirectUri",
    #               },
    #             },
    #             service_now: {
    #               username: "Username", # required
    #               password: "Password", # required
    #             },
    #             singular: {
    #               api_key: "ApiKey", # required
    #             },
    #             slack: {
    #               client_id: "ClientId", # required
    #               client_secret: "ClientSecret", # required
    #               access_token: "AccessToken",
    #               o_auth_request: {
    #                 auth_code: "AuthCode",
    #                 redirect_uri: "RedirectUri",
    #               },
    #             },
    #             snowflake: {
    #               username: "Username", # required
    #               password: "Password", # required
    #             },
    #             trendmicro: {
    #               api_secret_key: "ApiSecretKey", # required
    #             },
    #             veeva: {
    #               username: "Username", # required
    #               password: "Password", # required
    #             },
    #             zendesk: {
    #               client_id: "ClientId", # required
    #               client_secret: "ClientSecret", # required
    #               access_token: "AccessToken",
    #               o_auth_request: {
    #                 auth_code: "AuthCode",
    #                 redirect_uri: "RedirectUri",
    #               },
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] connector_profile_name
    #   The name of the connector profile. The name is unique for each
    #   `ConnectorProfile` in your AWS account.
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
    # @!attribute [rw] connection_mode
    #   Indicates the connection mode and specifies whether it is public or
    #   private. Private flows use AWS PrivateLink to route data over AWS
    #   infrastructure without exposing it to the public internet.
    #   @return [String]
    #
    # @!attribute [rw] connector_profile_config
    #   Defines the connector-specific configuration and credentials.
    #   @return [Types::ConnectorProfileConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/CreateConnectorProfileRequest AWS API Documentation
    #
    class CreateConnectorProfileRequest < Struct.new(
      :connector_profile_name,
      :kms_arn,
      :connector_type,
      :connection_mode,
      :connector_profile_config)
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

    # @note When making an API call, you may pass CreateFlowRequest
    #   data as a hash:
    #
    #       {
    #         flow_name: "FlowName", # required
    #         description: "FlowDescription",
    #         kms_arn: "KMSArn",
    #         trigger_config: { # required
    #           trigger_type: "Scheduled", # required, accepts Scheduled, Event, OnDemand
    #           trigger_properties: {
    #             scheduled: {
    #               schedule_expression: "ScheduleExpression", # required
    #               data_pull_mode: "Incremental", # accepts Incremental, Complete
    #               schedule_start_time: Time.now,
    #               schedule_end_time: Time.now,
    #               timezone: "Timezone",
    #             },
    #           },
    #         },
    #         source_flow_config: { # required
    #           connector_type: "Salesforce", # required, accepts Salesforce, Singular, Slack, Redshift, S3, Marketo, Googleanalytics, Zendesk, Servicenow, Datadog, Trendmicro, Snowflake, Dynatrace, Infornexus, Amplitude, Veeva, EventBridge
    #           connector_profile_name: "ConnectorProfileName",
    #           source_connector_properties: { # required
    #             amplitude: {
    #               object: "Object", # required
    #             },
    #             datadog: {
    #               object: "Object", # required
    #             },
    #             dynatrace: {
    #               object: "Object", # required
    #             },
    #             google_analytics: {
    #               object: "Object", # required
    #             },
    #             infor_nexus: {
    #               object: "Object", # required
    #             },
    #             marketo: {
    #               object: "Object", # required
    #             },
    #             s3: {
    #               bucket_name: "BucketName", # required
    #               bucket_prefix: "BucketPrefix",
    #             },
    #             salesforce: {
    #               object: "Object", # required
    #               enable_dynamic_field_update: false,
    #               include_deleted_records: false,
    #             },
    #             service_now: {
    #               object: "Object", # required
    #             },
    #             singular: {
    #               object: "Object", # required
    #             },
    #             slack: {
    #               object: "Object", # required
    #             },
    #             trendmicro: {
    #               object: "Object", # required
    #             },
    #             veeva: {
    #               object: "Object", # required
    #             },
    #             zendesk: {
    #               object: "Object", # required
    #             },
    #           },
    #         },
    #         destination_flow_config_list: [ # required
    #           {
    #             connector_type: "Salesforce", # required, accepts Salesforce, Singular, Slack, Redshift, S3, Marketo, Googleanalytics, Zendesk, Servicenow, Datadog, Trendmicro, Snowflake, Dynatrace, Infornexus, Amplitude, Veeva, EventBridge
    #             connector_profile_name: "ConnectorProfileName",
    #             destination_connector_properties: { # required
    #               redshift: {
    #                 object: "Object", # required
    #                 intermediate_bucket_name: "BucketName", # required
    #                 bucket_prefix: "BucketPrefix",
    #                 error_handling_config: {
    #                   fail_on_first_destination_error: false,
    #                   bucket_prefix: "BucketPrefix",
    #                   bucket_name: "BucketName",
    #                 },
    #               },
    #               s3: {
    #                 bucket_name: "BucketName", # required
    #                 bucket_prefix: "BucketPrefix",
    #                 s3_output_format_config: {
    #                   file_type: "CSV", # accepts CSV, JSON, PARQUET
    #                   prefix_config: {
    #                     prefix_type: "FILENAME", # accepts FILENAME, PATH, PATH_AND_FILENAME
    #                     prefix_format: "YEAR", # accepts YEAR, MONTH, DAY, HOUR, MINUTE
    #                   },
    #                   aggregation_config: {
    #                     aggregation_type: "None", # accepts None, SingleFile
    #                   },
    #                 },
    #               },
    #               salesforce: {
    #                 object: "Object", # required
    #                 error_handling_config: {
    #                   fail_on_first_destination_error: false,
    #                   bucket_prefix: "BucketPrefix",
    #                   bucket_name: "BucketName",
    #                 },
    #               },
    #               snowflake: {
    #                 object: "Object", # required
    #                 intermediate_bucket_name: "BucketName", # required
    #                 bucket_prefix: "BucketPrefix",
    #                 error_handling_config: {
    #                   fail_on_first_destination_error: false,
    #                   bucket_prefix: "BucketPrefix",
    #                   bucket_name: "BucketName",
    #                 },
    #               },
    #               event_bridge: {
    #                 object: "Object", # required
    #                 error_handling_config: {
    #                   fail_on_first_destination_error: false,
    #                   bucket_prefix: "BucketPrefix",
    #                   bucket_name: "BucketName",
    #                 },
    #               },
    #             },
    #           },
    #         ],
    #         tasks: [ # required
    #           {
    #             source_fields: ["String"], # required
    #             connector_operator: {
    #               amplitude: "BETWEEN", # accepts BETWEEN
    #               datadog: "PROJECTION", # accepts PROJECTION, BETWEEN, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #               dynatrace: "PROJECTION", # accepts PROJECTION, BETWEEN, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #               google_analytics: "PROJECTION", # accepts PROJECTION, BETWEEN
    #               infor_nexus: "PROJECTION", # accepts PROJECTION, BETWEEN, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #               marketo: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #               s3: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #               salesforce: "PROJECTION", # accepts PROJECTION, LESS_THAN, CONTAINS, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #               service_now: "PROJECTION", # accepts PROJECTION, CONTAINS, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #               singular: "PROJECTION", # accepts PROJECTION, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #               slack: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #               trendmicro: "PROJECTION", # accepts PROJECTION, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #               veeva: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, CONTAINS, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #               zendesk: "PROJECTION", # accepts PROJECTION, GREATER_THAN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #             },
    #             destination_field: "DestinationField",
    #             task_type: "Arithmetic", # required, accepts Arithmetic, Filter, Map, Mask, Merge, Truncate, Validate
    #             task_properties: {
    #               "VALUE" => "Property",
    #             },
    #           },
    #         ],
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
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
      :tags)
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

    # The connector-specific credentials required by Datadog.
    #
    # @note When making an API call, you may pass DatadogConnectorProfileCredentials
    #   data as a hash:
    #
    #       {
    #         api_key: "ApiKey", # required
    #         application_key: "ApplicationKey", # required
    #       }
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector-specific profile properties required by Datadog.
    #
    # @note When making an API call, you may pass DatadogConnectorProfileProperties
    #   data as a hash:
    #
    #       {
    #         instance_url: "InstanceUrl", # required
    #       }
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
    # @note When making an API call, you may pass DatadogSourceProperties
    #   data as a hash:
    #
    #       {
    #         object: "Object", # required
    #       }
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

    # @note When making an API call, you may pass DeleteConnectorProfileRequest
    #   data as a hash:
    #
    #       {
    #         connector_profile_name: "ConnectorProfileName", # required
    #         force_delete: false,
    #       }
    #
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

    # @note When making an API call, you may pass DeleteFlowRequest
    #   data as a hash:
    #
    #       {
    #         flow_name: "FlowName", # required
    #         force_delete: false,
    #       }
    #
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

    # @note When making an API call, you may pass DescribeConnectorEntityRequest
    #   data as a hash:
    #
    #       {
    #         connector_entity_name: "Name", # required
    #         connector_type: "Salesforce", # accepts Salesforce, Singular, Slack, Redshift, S3, Marketo, Googleanalytics, Zendesk, Servicenow, Datadog, Trendmicro, Snowflake, Dynatrace, Infornexus, Amplitude, Veeva, EventBridge
    #         connector_profile_name: "ConnectorProfileName",
    #       }
    #
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
    #   `ConnectorProfile` in the AWS account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DescribeConnectorEntityRequest AWS API Documentation
    #
    class DescribeConnectorEntityRequest < Struct.new(
      :connector_entity_name,
      :connector_type,
      :connector_profile_name)
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

    # @note When making an API call, you may pass DescribeConnectorProfilesRequest
    #   data as a hash:
    #
    #       {
    #         connector_profile_names: ["ConnectorProfileName"],
    #         connector_type: "Salesforce", # accepts Salesforce, Singular, Slack, Redshift, S3, Marketo, Googleanalytics, Zendesk, Servicenow, Datadog, Trendmicro, Snowflake, Dynatrace, Infornexus, Amplitude, Veeva, EventBridge
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] connector_profile_names
    #   The name of the connector profile. The name is unique for each
    #   `ConnectorProfile` in the AWS account.
    #   @return [Array<String>]
    #
    # @!attribute [rw] connector_type
    #   The type of connector, such as Salesforce, Amplitude, and so on.
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

    # @note When making an API call, you may pass DescribeConnectorsRequest
    #   data as a hash:
    #
    #       {
    #         connector_types: ["Salesforce"], # accepts Salesforce, Singular, Slack, Redshift, S3, Marketo, Googleanalytics, Zendesk, Servicenow, Datadog, Trendmicro, Snowflake, Dynatrace, Infornexus, Amplitude, Veeva, EventBridge
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] connector_types
    #   The type of connector, such as Salesforce, Amplitude, and so on.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the next page of data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DescribeConnectorsRequest AWS API Documentation
    #
    class DescribeConnectorsRequest < Struct.new(
      :connector_types,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_configurations
    #   The configuration that is applied to the connectors used in the
    #   flow.
    #   @return [Hash<String,Types::ConnectorConfiguration>]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the next page of data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DescribeConnectorsResponse AWS API Documentation
    #
    class DescribeConnectorsResponse < Struct.new(
      :connector_configurations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeFlowExecutionRecordsRequest
    #   data as a hash:
    #
    #       {
    #         flow_name: "FlowName", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
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

    # @note When making an API call, you may pass DescribeFlowRequest
    #   data as a hash:
    #
    #       {
    #         flow_name: "FlowName", # required
    #       }
    #
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
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # This stores the information that is required to query a particular
    # connector.
    #
    # @note When making an API call, you may pass DestinationConnectorProperties
    #   data as a hash:
    #
    #       {
    #         redshift: {
    #           object: "Object", # required
    #           intermediate_bucket_name: "BucketName", # required
    #           bucket_prefix: "BucketPrefix",
    #           error_handling_config: {
    #             fail_on_first_destination_error: false,
    #             bucket_prefix: "BucketPrefix",
    #             bucket_name: "BucketName",
    #           },
    #         },
    #         s3: {
    #           bucket_name: "BucketName", # required
    #           bucket_prefix: "BucketPrefix",
    #           s3_output_format_config: {
    #             file_type: "CSV", # accepts CSV, JSON, PARQUET
    #             prefix_config: {
    #               prefix_type: "FILENAME", # accepts FILENAME, PATH, PATH_AND_FILENAME
    #               prefix_format: "YEAR", # accepts YEAR, MONTH, DAY, HOUR, MINUTE
    #             },
    #             aggregation_config: {
    #               aggregation_type: "None", # accepts None, SingleFile
    #             },
    #           },
    #         },
    #         salesforce: {
    #           object: "Object", # required
    #           error_handling_config: {
    #             fail_on_first_destination_error: false,
    #             bucket_prefix: "BucketPrefix",
    #             bucket_name: "BucketName",
    #           },
    #         },
    #         snowflake: {
    #           object: "Object", # required
    #           intermediate_bucket_name: "BucketName", # required
    #           bucket_prefix: "BucketPrefix",
    #           error_handling_config: {
    #             fail_on_first_destination_error: false,
    #             bucket_prefix: "BucketPrefix",
    #             bucket_name: "BucketName",
    #           },
    #         },
    #         event_bridge: {
    #           object: "Object", # required
    #           error_handling_config: {
    #             fail_on_first_destination_error: false,
    #             bucket_prefix: "BucketPrefix",
    #             bucket_name: "BucketName",
    #           },
    #         },
    #       }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DestinationConnectorProperties AWS API Documentation
    #
    class DestinationConnectorProperties < Struct.new(
      :redshift,
      :s3,
      :salesforce,
      :snowflake,
      :event_bridge)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/DestinationFieldProperties AWS API Documentation
    #
    class DestinationFieldProperties < Struct.new(
      :is_creatable,
      :is_nullable,
      :is_upsertable)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the configuration of destination connectors
    # present in the flow.
    #
    # @note When making an API call, you may pass DestinationFlowConfig
    #   data as a hash:
    #
    #       {
    #         connector_type: "Salesforce", # required, accepts Salesforce, Singular, Slack, Redshift, S3, Marketo, Googleanalytics, Zendesk, Servicenow, Datadog, Trendmicro, Snowflake, Dynatrace, Infornexus, Amplitude, Veeva, EventBridge
    #         connector_profile_name: "ConnectorProfileName",
    #         destination_connector_properties: { # required
    #           redshift: {
    #             object: "Object", # required
    #             intermediate_bucket_name: "BucketName", # required
    #             bucket_prefix: "BucketPrefix",
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName",
    #             },
    #           },
    #           s3: {
    #             bucket_name: "BucketName", # required
    #             bucket_prefix: "BucketPrefix",
    #             s3_output_format_config: {
    #               file_type: "CSV", # accepts CSV, JSON, PARQUET
    #               prefix_config: {
    #                 prefix_type: "FILENAME", # accepts FILENAME, PATH, PATH_AND_FILENAME
    #                 prefix_format: "YEAR", # accepts YEAR, MONTH, DAY, HOUR, MINUTE
    #               },
    #               aggregation_config: {
    #                 aggregation_type: "None", # accepts None, SingleFile
    #               },
    #             },
    #           },
    #           salesforce: {
    #             object: "Object", # required
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName",
    #             },
    #           },
    #           snowflake: {
    #             object: "Object", # required
    #             intermediate_bucket_name: "BucketName", # required
    #             bucket_prefix: "BucketPrefix",
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName",
    #             },
    #           },
    #           event_bridge: {
    #             object: "Object", # required
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName",
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] connector_type
    #   The type of connector, such as Salesforce, Amplitude, and so on.
    #   @return [String]
    #
    # @!attribute [rw] connector_profile_name
    #   The name of the connector profile. This name must be unique for each
    #   connector profile in the AWS account.
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
      :connector_profile_name,
      :destination_connector_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector-specific profile credentials required by Dynatrace.
    #
    # @note When making an API call, you may pass DynatraceConnectorProfileCredentials
    #   data as a hash:
    #
    #       {
    #         api_token: "ApiToken", # required
    #       }
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
    # @note When making an API call, you may pass DynatraceConnectorProfileProperties
    #   data as a hash:
    #
    #       {
    #         instance_url: "InstanceUrl", # required
    #       }
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
    # @note When making an API call, you may pass DynatraceSourceProperties
    #   data as a hash:
    #
    #       {
    #         object: "Object", # required
    #       }
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
    # @note When making an API call, you may pass ErrorHandlingConfig
    #   data as a hash:
    #
    #       {
    #         fail_on_first_destination_error: false,
    #         bucket_prefix: "BucketPrefix",
    #         bucket_name: "BucketName",
    #       }
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
    # @note When making an API call, you may pass EventBridgeDestinationProperties
    #   data as a hash:
    #
    #       {
    #         object: "Object", # required
    #         error_handling_config: {
    #           fail_on_first_destination_error: false,
    #           bucket_prefix: "BucketPrefix",
    #           bucket_name: "BucketName",
    #         },
    #       }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ExecutionRecord AWS API Documentation
    #
    class ExecutionRecord < Struct.new(
      :execution_id,
      :execution_status,
      :execution_result,
      :started_at,
      :last_updated_at)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/FieldTypeDetails AWS API Documentation
    #
    class FieldTypeDetails < Struct.new(
      :field_type,
      :filter_operators,
      :supported_values)
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
    # @!attribute [rw] destination_connector_type
    #   Specifies the destination connector type, such as Salesforce, Amazon
    #   S3, Amplitude, and so on.
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
      :destination_connector_type,
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

    # The connector-specific profile credentials required by Google
    # Analytics.
    #
    # @note When making an API call, you may pass GoogleAnalyticsConnectorProfileCredentials
    #   data as a hash:
    #
    #       {
    #         client_id: "ClientId", # required
    #         client_secret: "ClientSecret", # required
    #         access_token: "AccessToken",
    #         refresh_token: "RefreshToken",
    #         o_auth_request: {
    #           auth_code: "AuthCode",
    #           redirect_uri: "RedirectUri",
    #         },
    #       }
    #
    # @!attribute [rw] client_id
    #   The identifier for the desired client.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The client secret used by the oauth client to authenticate to the
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
    #   The oauth requirement needed to request security tokens from the
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
    # @note When making an API call, you may pass GoogleAnalyticsSourceProperties
    #   data as a hash:
    #
    #       {
    #         object: "Object", # required
    #       }
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

    # The connector-specific profile credentials required by Infor Nexus.
    #
    # @note When making an API call, you may pass InforNexusConnectorProfileCredentials
    #   data as a hash:
    #
    #       {
    #         access_key_id: "AccessKeyId", # required
    #         user_id: "Username", # required
    #         secret_access_key: "Key", # required
    #         datakey: "Key", # required
    #       }
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
    # @note When making an API call, you may pass InforNexusConnectorProfileProperties
    #   data as a hash:
    #
    #       {
    #         instance_url: "InstanceUrl", # required
    #       }
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
    # @note When making an API call, you may pass InforNexusSourceProperties
    #   data as a hash:
    #
    #       {
    #         object: "Object", # required
    #       }
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

    # @note When making an API call, you may pass ListConnectorEntitiesRequest
    #   data as a hash:
    #
    #       {
    #         connector_profile_name: "ConnectorProfileName",
    #         connector_type: "Salesforce", # accepts Salesforce, Singular, Slack, Redshift, S3, Marketo, Googleanalytics, Zendesk, Servicenow, Datadog, Trendmicro, Snowflake, Dynatrace, Infornexus, Amplitude, Veeva, EventBridge
    #         entities_path: "EntitiesPath",
    #       }
    #
    # @!attribute [rw] connector_profile_name
    #   The name of the connector profile. The name is unique for each
    #   `ConnectorProfile` in the AWS account, and is used to query the
    #   downstream connector.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ListConnectorEntitiesRequest AWS API Documentation
    #
    class ListConnectorEntitiesRequest < Struct.new(
      :connector_profile_name,
      :connector_type,
      :entities_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_entity_map
    #   The response of `ListConnectorEntities` lists entities grouped by
    #   category. This map's key represents the group name, and its value
    #   contains the list of entities belonging to that group.
    #   @return [Hash<String,Array<Types::ConnectorEntity>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ListConnectorEntitiesResponse AWS API Documentation
    #
    class ListConnectorEntitiesResponse < Struct.new(
      :connector_entity_map)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListFlowsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
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

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ARN", # required
    #       }
    #
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

    # The connector-specific profile credentials required by Marketo.
    #
    # @note When making an API call, you may pass MarketoConnectorProfileCredentials
    #   data as a hash:
    #
    #       {
    #         client_id: "ClientId", # required
    #         client_secret: "ClientSecret", # required
    #         access_token: "AccessToken",
    #         o_auth_request: {
    #           auth_code: "AuthCode",
    #           redirect_uri: "RedirectUri",
    #         },
    #       }
    #
    # @!attribute [rw] client_id
    #   The identifier for the desired client.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The client secret used by the oauth client to authenticate to the
    #   authorization server.
    #   @return [String]
    #
    # @!attribute [rw] access_token
    #   The credentials used to access protected Marketo resources.
    #   @return [String]
    #
    # @!attribute [rw] o_auth_request
    #   The oauth requirement needed to request security tokens from the
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
    # @note When making an API call, you may pass MarketoConnectorProfileProperties
    #   data as a hash:
    #
    #       {
    #         instance_url: "InstanceUrl", # required
    #       }
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

    # The connector metadata specific to Marketo.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/MarketoMetadata AWS API Documentation
    #
    class MarketoMetadata < Aws::EmptyStructure; end

    # The properties that are applied when Marketo is being used as a
    # source.
    #
    # @note When making an API call, you may pass MarketoSourceProperties
    #   data as a hash:
    #
    #       {
    #         object: "Object", # required
    #       }
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

    # Determines the prefix that Amazon AppFlow applies to the destination
    # folder name. You can name your destination folders according to the
    # flow frequency and date.
    #
    # @note When making an API call, you may pass PrefixConfig
    #   data as a hash:
    #
    #       {
    #         prefix_type: "FILENAME", # accepts FILENAME, PATH, PATH_AND_FILENAME
    #         prefix_format: "YEAR", # accepts YEAR, MONTH, DAY, HOUR, MINUTE
    #       }
    #
    # @!attribute [rw] prefix_type
    #   Determines the level of granularity that's included in the prefix.
    #   @return [String]
    #
    # @!attribute [rw] prefix_format
    #   Determines the format of the prefix, and whether it applies to the
    #   file name, file path, or both.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/PrefixConfig AWS API Documentation
    #
    class PrefixConfig < Struct.new(
      :prefix_type,
      :prefix_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector-specific profile credentials required when using Amazon
    # Redshift.
    #
    # @note When making an API call, you may pass RedshiftConnectorProfileCredentials
    #   data as a hash:
    #
    #       {
    #         username: "Username", # required
    #         password: "Password", # required
    #       }
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
    # @note When making an API call, you may pass RedshiftConnectorProfileProperties
    #   data as a hash:
    #
    #       {
    #         database_url: "DatabaseUrl", # required
    #         bucket_name: "BucketName", # required
    #         bucket_prefix: "BucketPrefix",
    #         role_arn: "RoleArn", # required
    #       }
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
    #   The Amazon Resource Name (ARN) of the IAM role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/RedshiftConnectorProfileProperties AWS API Documentation
    #
    class RedshiftConnectorProfileProperties < Struct.new(
      :database_url,
      :bucket_name,
      :bucket_prefix,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties that are applied when Amazon Redshift is being used as
    # a destination.
    #
    # @note When making an API call, you may pass RedshiftDestinationProperties
    #   data as a hash:
    #
    #       {
    #         object: "Object", # required
    #         intermediate_bucket_name: "BucketName", # required
    #         bucket_prefix: "BucketPrefix",
    #         error_handling_config: {
    #           fail_on_first_destination_error: false,
    #           bucket_prefix: "BucketPrefix",
    #           bucket_name: "BucketName",
    #         },
    #       }
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
    # @note When making an API call, you may pass S3DestinationProperties
    #   data as a hash:
    #
    #       {
    #         bucket_name: "BucketName", # required
    #         bucket_prefix: "BucketPrefix",
    #         s3_output_format_config: {
    #           file_type: "CSV", # accepts CSV, JSON, PARQUET
    #           prefix_config: {
    #             prefix_type: "FILENAME", # accepts FILENAME, PATH, PATH_AND_FILENAME
    #             prefix_format: "YEAR", # accepts YEAR, MONTH, DAY, HOUR, MINUTE
    #           },
    #           aggregation_config: {
    #             aggregation_type: "None", # accepts None, SingleFile
    #           },
    #         },
    #       }
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

    # The connector metadata specific to Amazon S3.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/S3Metadata AWS API Documentation
    #
    class S3Metadata < Aws::EmptyStructure; end

    # The configuration that determines how Amazon AppFlow should format the
    # flow output data when Amazon S3 is used as the destination.
    #
    # @note When making an API call, you may pass S3OutputFormatConfig
    #   data as a hash:
    #
    #       {
    #         file_type: "CSV", # accepts CSV, JSON, PARQUET
    #         prefix_config: {
    #           prefix_type: "FILENAME", # accepts FILENAME, PATH, PATH_AND_FILENAME
    #           prefix_format: "YEAR", # accepts YEAR, MONTH, DAY, HOUR, MINUTE
    #         },
    #         aggregation_config: {
    #           aggregation_type: "None", # accepts None, SingleFile
    #         },
    #       }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/S3OutputFormatConfig AWS API Documentation
    #
    class S3OutputFormatConfig < Struct.new(
      :file_type,
      :prefix_config,
      :aggregation_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties that are applied when Amazon S3 is being used as the
    # flow source.
    #
    # @note When making an API call, you may pass S3SourceProperties
    #   data as a hash:
    #
    #       {
    #         bucket_name: "BucketName", # required
    #         bucket_prefix: "BucketPrefix",
    #       }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/S3SourceProperties AWS API Documentation
    #
    class S3SourceProperties < Struct.new(
      :bucket_name,
      :bucket_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector-specific profile credentials required when using
    # Salesforce.
    #
    # @note When making an API call, you may pass SalesforceConnectorProfileCredentials
    #   data as a hash:
    #
    #       {
    #         access_token: "AccessToken",
    #         refresh_token: "RefreshToken",
    #         o_auth_request: {
    #           auth_code: "AuthCode",
    #           redirect_uri: "RedirectUri",
    #         },
    #       }
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
    #   The oauth requirement needed to request security tokens from the
    #   connector endpoint.
    #   @return [Types::ConnectorOAuthRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/SalesforceConnectorProfileCredentials AWS API Documentation
    #
    class SalesforceConnectorProfileCredentials < Struct.new(
      :access_token,
      :refresh_token,
      :o_auth_request)
      SENSITIVE = [:access_token]
      include Aws::Structure
    end

    # The connector-specific profile properties required when using
    # Salesforce.
    #
    # @note When making an API call, you may pass SalesforceConnectorProfileProperties
    #   data as a hash:
    #
    #       {
    #         instance_url: "InstanceUrl",
    #         is_sandbox_environment: false,
    #       }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/SalesforceConnectorProfileProperties AWS API Documentation
    #
    class SalesforceConnectorProfileProperties < Struct.new(
      :instance_url,
      :is_sandbox_environment)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties that are applied when Salesforce is being used as a
    # destination.
    #
    # @note When making an API call, you may pass SalesforceDestinationProperties
    #   data as a hash:
    #
    #       {
    #         object: "Object", # required
    #         error_handling_config: {
    #           fail_on_first_destination_error: false,
    #           bucket_prefix: "BucketPrefix",
    #           bucket_name: "BucketName",
    #         },
    #       }
    #
    # @!attribute [rw] object
    #   The object specified in the Salesforce flow destination.
    #   @return [String]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/SalesforceDestinationProperties AWS API Documentation
    #
    class SalesforceDestinationProperties < Struct.new(
      :object,
      :error_handling_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector metadata specific to Salesforce.
    #
    # @!attribute [rw] o_auth_scopes
    #   The desired authorization scope for the Salesforce account.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/SalesforceMetadata AWS API Documentation
    #
    class SalesforceMetadata < Struct.new(
      :o_auth_scopes)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties that are applied when Salesforce is being used as a
    # source.
    #
    # @note When making an API call, you may pass SalesforceSourceProperties
    #   data as a hash:
    #
    #       {
    #         object: "Object", # required
    #         enable_dynamic_field_update: false,
    #         include_deleted_records: false,
    #       }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/SalesforceSourceProperties AWS API Documentation
    #
    class SalesforceSourceProperties < Struct.new(
      :object,
      :enable_dynamic_field_update,
      :include_deleted_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configuration details of a schedule-triggered flow as
    # defined by the user. Currently, these settings only apply to the
    # `Scheduled` trigger type.
    #
    # @note When making an API call, you may pass ScheduledTriggerProperties
    #   data as a hash:
    #
    #       {
    #         schedule_expression: "ScheduleExpression", # required
    #         data_pull_mode: "Incremental", # accepts Incremental, Complete
    #         schedule_start_time: Time.now,
    #         schedule_end_time: Time.now,
    #         timezone: "Timezone",
    #       }
    #
    # @!attribute [rw] schedule_expression
    #   The scheduling expression that determines when and how often the
    #   rule runs.
    #   @return [String]
    #
    # @!attribute [rw] data_pull_mode
    #   Specifies whether a scheduled flow has an incremental data transfer
    #   or a complete data transfer for each flow run.
    #   @return [String]
    #
    # @!attribute [rw] schedule_start_time
    #   Specifies the scheduled start time for a schedule-triggered flow.
    #   @return [Time]
    #
    # @!attribute [rw] schedule_end_time
    #   Specifies the scheduled end time for a schedule-triggered flow.
    #   @return [Time]
    #
    # @!attribute [rw] timezone
    #   Specifies the time zone used when referring to the date and time of
    #   a scheduled-triggered flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/ScheduledTriggerProperties AWS API Documentation
    #
    class ScheduledTriggerProperties < Struct.new(
      :schedule_expression,
      :data_pull_mode,
      :schedule_start_time,
      :schedule_end_time,
      :timezone)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector-specific profile credentials required when using
    # ServiceNow.
    #
    # @note When making an API call, you may pass ServiceNowConnectorProfileCredentials
    #   data as a hash:
    #
    #       {
    #         username: "Username", # required
    #         password: "Password", # required
    #       }
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
    # @note When making an API call, you may pass ServiceNowConnectorProfileProperties
    #   data as a hash:
    #
    #       {
    #         instance_url: "InstanceUrl", # required
    #       }
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
    # @note When making an API call, you may pass ServiceNowSourceProperties
    #   data as a hash:
    #
    #       {
    #         object: "Object", # required
    #       }
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
    # @note When making an API call, you may pass SingularConnectorProfileCredentials
    #   data as a hash:
    #
    #       {
    #         api_key: "ApiKey", # required
    #       }
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
      SENSITIVE = []
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
    # @note When making an API call, you may pass SingularSourceProperties
    #   data as a hash:
    #
    #       {
    #         object: "Object", # required
    #       }
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
    # @note When making an API call, you may pass SlackConnectorProfileCredentials
    #   data as a hash:
    #
    #       {
    #         client_id: "ClientId", # required
    #         client_secret: "ClientSecret", # required
    #         access_token: "AccessToken",
    #         o_auth_request: {
    #           auth_code: "AuthCode",
    #           redirect_uri: "RedirectUri",
    #         },
    #       }
    #
    # @!attribute [rw] client_id
    #   The identifier for the client.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The client secret used by the oauth client to authenticate to the
    #   authorization server.
    #   @return [String]
    #
    # @!attribute [rw] access_token
    #   The credentials used to access protected Slack resources.
    #   @return [String]
    #
    # @!attribute [rw] o_auth_request
    #   The oauth requirement needed to request security tokens from the
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
    # @note When making an API call, you may pass SlackConnectorProfileProperties
    #   data as a hash:
    #
    #       {
    #         instance_url: "InstanceUrl", # required
    #       }
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
    # @note When making an API call, you may pass SlackSourceProperties
    #   data as a hash:
    #
    #       {
    #         object: "Object", # required
    #       }
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
    # @note When making an API call, you may pass SnowflakeConnectorProfileCredentials
    #   data as a hash:
    #
    #       {
    #         username: "Username", # required
    #         password: "Password", # required
    #       }
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
    # @note When making an API call, you may pass SnowflakeConnectorProfileProperties
    #   data as a hash:
    #
    #       {
    #         warehouse: "Warehouse", # required
    #         stage: "Stage", # required
    #         bucket_name: "BucketName", # required
    #         bucket_prefix: "BucketPrefix",
    #         private_link_service_name: "PrivateLinkServiceName",
    #         account_name: "AccountName",
    #         region: "Region",
    #       }
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
    #   The AWS Region of the Snowflake account.
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
    # @note When making an API call, you may pass SnowflakeDestinationProperties
    #   data as a hash:
    #
    #       {
    #         object: "Object", # required
    #         intermediate_bucket_name: "BucketName", # required
    #         bucket_prefix: "BucketPrefix",
    #         error_handling_config: {
    #           fail_on_first_destination_error: false,
    #           bucket_prefix: "BucketPrefix",
    #           bucket_name: "BucketName",
    #         },
    #       }
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
    #   Specifies the supported AWS Regions when using Snowflake.
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
    # @note When making an API call, you may pass SourceConnectorProperties
    #   data as a hash:
    #
    #       {
    #         amplitude: {
    #           object: "Object", # required
    #         },
    #         datadog: {
    #           object: "Object", # required
    #         },
    #         dynatrace: {
    #           object: "Object", # required
    #         },
    #         google_analytics: {
    #           object: "Object", # required
    #         },
    #         infor_nexus: {
    #           object: "Object", # required
    #         },
    #         marketo: {
    #           object: "Object", # required
    #         },
    #         s3: {
    #           bucket_name: "BucketName", # required
    #           bucket_prefix: "BucketPrefix",
    #         },
    #         salesforce: {
    #           object: "Object", # required
    #           enable_dynamic_field_update: false,
    #           include_deleted_records: false,
    #         },
    #         service_now: {
    #           object: "Object", # required
    #         },
    #         singular: {
    #           object: "Object", # required
    #         },
    #         slack: {
    #           object: "Object", # required
    #         },
    #         trendmicro: {
    #           object: "Object", # required
    #         },
    #         veeva: {
    #           object: "Object", # required
    #         },
    #         zendesk: {
    #           object: "Object", # required
    #         },
    #       }
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
      :zendesk)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/SourceFieldProperties AWS API Documentation
    #
    class SourceFieldProperties < Struct.new(
      :is_retrievable,
      :is_queryable)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the configuration of the source connector
    # used in the flow.
    #
    # @note When making an API call, you may pass SourceFlowConfig
    #   data as a hash:
    #
    #       {
    #         connector_type: "Salesforce", # required, accepts Salesforce, Singular, Slack, Redshift, S3, Marketo, Googleanalytics, Zendesk, Servicenow, Datadog, Trendmicro, Snowflake, Dynatrace, Infornexus, Amplitude, Veeva, EventBridge
    #         connector_profile_name: "ConnectorProfileName",
    #         source_connector_properties: { # required
    #           amplitude: {
    #             object: "Object", # required
    #           },
    #           datadog: {
    #             object: "Object", # required
    #           },
    #           dynatrace: {
    #             object: "Object", # required
    #           },
    #           google_analytics: {
    #             object: "Object", # required
    #           },
    #           infor_nexus: {
    #             object: "Object", # required
    #           },
    #           marketo: {
    #             object: "Object", # required
    #           },
    #           s3: {
    #             bucket_name: "BucketName", # required
    #             bucket_prefix: "BucketPrefix",
    #           },
    #           salesforce: {
    #             object: "Object", # required
    #             enable_dynamic_field_update: false,
    #             include_deleted_records: false,
    #           },
    #           service_now: {
    #             object: "Object", # required
    #           },
    #           singular: {
    #             object: "Object", # required
    #           },
    #           slack: {
    #             object: "Object", # required
    #           },
    #           trendmicro: {
    #             object: "Object", # required
    #           },
    #           veeva: {
    #             object: "Object", # required
    #           },
    #           zendesk: {
    #             object: "Object", # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] connector_type
    #   The type of connector, such as Salesforce, Amplitude, and so on.
    #   @return [String]
    #
    # @!attribute [rw] connector_profile_name
    #   The name of the connector profile. This name must be unique for each
    #   connector profile in the AWS account.
    #   @return [String]
    #
    # @!attribute [rw] source_connector_properties
    #   Specifies the information that is required to query a particular
    #   source connector.
    #   @return [Types::SourceConnectorProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/SourceFlowConfig AWS API Documentation
    #
    class SourceFlowConfig < Struct.new(
      :connector_type,
      :connector_profile_name,
      :source_connector_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartFlowRequest
    #   data as a hash:
    #
    #       {
    #         flow_name: "FlowName", # required
    #       }
    #
    # @!attribute [rw] flow_name
    #   The specified name of the flow. Spaces are not allowed. Use
    #   underscores (\_) or hyphens (-) only.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/StartFlowRequest AWS API Documentation
    #
    class StartFlowRequest < Struct.new(
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/StartFlowResponse AWS API Documentation
    #
    class StartFlowResponse < Struct.new(
      :flow_arn,
      :flow_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopFlowRequest
    #   data as a hash:
    #
    #       {
    #         flow_name: "FlowName", # required
    #       }
    #
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

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ARN", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
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
    # @note When making an API call, you may pass Task
    #   data as a hash:
    #
    #       {
    #         source_fields: ["String"], # required
    #         connector_operator: {
    #           amplitude: "BETWEEN", # accepts BETWEEN
    #           datadog: "PROJECTION", # accepts PROJECTION, BETWEEN, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           dynatrace: "PROJECTION", # accepts PROJECTION, BETWEEN, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           google_analytics: "PROJECTION", # accepts PROJECTION, BETWEEN
    #           infor_nexus: "PROJECTION", # accepts PROJECTION, BETWEEN, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           marketo: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           s3: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           salesforce: "PROJECTION", # accepts PROJECTION, LESS_THAN, CONTAINS, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           service_now: "PROJECTION", # accepts PROJECTION, CONTAINS, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           singular: "PROJECTION", # accepts PROJECTION, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           slack: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           trendmicro: "PROJECTION", # accepts PROJECTION, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           veeva: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, CONTAINS, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           zendesk: "PROJECTION", # accepts PROJECTION, GREATER_THAN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #         },
    #         destination_field: "DestinationField",
    #         task_type: "Arithmetic", # required, accepts Arithmetic, Filter, Map, Mask, Merge, Truncate, Validate
    #         task_properties: {
    #           "VALUE" => "Property",
    #         },
    #       }
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

    # The connector-specific profile credentials required when using Trend
    # Micro.
    #
    # @note When making an API call, you may pass TrendmicroConnectorProfileCredentials
    #   data as a hash:
    #
    #       {
    #         api_secret_key: "ApiSecretKey", # required
    #       }
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
    # @note When making an API call, you may pass TrendmicroSourceProperties
    #   data as a hash:
    #
    #       {
    #         object: "Object", # required
    #       }
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
    # @note When making an API call, you may pass TriggerConfig
    #   data as a hash:
    #
    #       {
    #         trigger_type: "Scheduled", # required, accepts Scheduled, Event, OnDemand
    #         trigger_properties: {
    #           scheduled: {
    #             schedule_expression: "ScheduleExpression", # required
    #             data_pull_mode: "Incremental", # accepts Incremental, Complete
    #             schedule_start_time: Time.now,
    #             schedule_end_time: Time.now,
    #             timezone: "Timezone",
    #           },
    #         },
    #       }
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
    # @note When making an API call, you may pass TriggerProperties
    #   data as a hash:
    #
    #       {
    #         scheduled: {
    #           schedule_expression: "ScheduleExpression", # required
    #           data_pull_mode: "Incremental", # accepts Incremental, Complete
    #           schedule_start_time: Time.now,
    #           schedule_end_time: Time.now,
    #           timezone: "Timezone",
    #         },
    #       }
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

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ARN", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
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

    # @note When making an API call, you may pass UpdateConnectorProfileRequest
    #   data as a hash:
    #
    #       {
    #         connector_profile_name: "ConnectorProfileName", # required
    #         connection_mode: "Public", # required, accepts Public, Private
    #         connector_profile_config: { # required
    #           connector_profile_properties: { # required
    #             amplitude: {
    #             },
    #             datadog: {
    #               instance_url: "InstanceUrl", # required
    #             },
    #             dynatrace: {
    #               instance_url: "InstanceUrl", # required
    #             },
    #             google_analytics: {
    #             },
    #             infor_nexus: {
    #               instance_url: "InstanceUrl", # required
    #             },
    #             marketo: {
    #               instance_url: "InstanceUrl", # required
    #             },
    #             redshift: {
    #               database_url: "DatabaseUrl", # required
    #               bucket_name: "BucketName", # required
    #               bucket_prefix: "BucketPrefix",
    #               role_arn: "RoleArn", # required
    #             },
    #             salesforce: {
    #               instance_url: "InstanceUrl",
    #               is_sandbox_environment: false,
    #             },
    #             service_now: {
    #               instance_url: "InstanceUrl", # required
    #             },
    #             singular: {
    #             },
    #             slack: {
    #               instance_url: "InstanceUrl", # required
    #             },
    #             snowflake: {
    #               warehouse: "Warehouse", # required
    #               stage: "Stage", # required
    #               bucket_name: "BucketName", # required
    #               bucket_prefix: "BucketPrefix",
    #               private_link_service_name: "PrivateLinkServiceName",
    #               account_name: "AccountName",
    #               region: "Region",
    #             },
    #             trendmicro: {
    #             },
    #             veeva: {
    #               instance_url: "InstanceUrl", # required
    #             },
    #             zendesk: {
    #               instance_url: "InstanceUrl", # required
    #             },
    #           },
    #           connector_profile_credentials: { # required
    #             amplitude: {
    #               api_key: "ApiKey", # required
    #               secret_key: "SecretKey", # required
    #             },
    #             datadog: {
    #               api_key: "ApiKey", # required
    #               application_key: "ApplicationKey", # required
    #             },
    #             dynatrace: {
    #               api_token: "ApiToken", # required
    #             },
    #             google_analytics: {
    #               client_id: "ClientId", # required
    #               client_secret: "ClientSecret", # required
    #               access_token: "AccessToken",
    #               refresh_token: "RefreshToken",
    #               o_auth_request: {
    #                 auth_code: "AuthCode",
    #                 redirect_uri: "RedirectUri",
    #               },
    #             },
    #             infor_nexus: {
    #               access_key_id: "AccessKeyId", # required
    #               user_id: "Username", # required
    #               secret_access_key: "Key", # required
    #               datakey: "Key", # required
    #             },
    #             marketo: {
    #               client_id: "ClientId", # required
    #               client_secret: "ClientSecret", # required
    #               access_token: "AccessToken",
    #               o_auth_request: {
    #                 auth_code: "AuthCode",
    #                 redirect_uri: "RedirectUri",
    #               },
    #             },
    #             redshift: {
    #               username: "Username", # required
    #               password: "Password", # required
    #             },
    #             salesforce: {
    #               access_token: "AccessToken",
    #               refresh_token: "RefreshToken",
    #               o_auth_request: {
    #                 auth_code: "AuthCode",
    #                 redirect_uri: "RedirectUri",
    #               },
    #             },
    #             service_now: {
    #               username: "Username", # required
    #               password: "Password", # required
    #             },
    #             singular: {
    #               api_key: "ApiKey", # required
    #             },
    #             slack: {
    #               client_id: "ClientId", # required
    #               client_secret: "ClientSecret", # required
    #               access_token: "AccessToken",
    #               o_auth_request: {
    #                 auth_code: "AuthCode",
    #                 redirect_uri: "RedirectUri",
    #               },
    #             },
    #             snowflake: {
    #               username: "Username", # required
    #               password: "Password", # required
    #             },
    #             trendmicro: {
    #               api_secret_key: "ApiSecretKey", # required
    #             },
    #             veeva: {
    #               username: "Username", # required
    #               password: "Password", # required
    #             },
    #             zendesk: {
    #               client_id: "ClientId", # required
    #               client_secret: "ClientSecret", # required
    #               access_token: "AccessToken",
    #               o_auth_request: {
    #                 auth_code: "AuthCode",
    #                 redirect_uri: "RedirectUri",
    #               },
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] connector_profile_name
    #   The name of the connector profile and is unique for each
    #   `ConnectorProfile` in the AWS Account.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/UpdateConnectorProfileRequest AWS API Documentation
    #
    class UpdateConnectorProfileRequest < Struct.new(
      :connector_profile_name,
      :connection_mode,
      :connector_profile_config)
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

    # @note When making an API call, you may pass UpdateFlowRequest
    #   data as a hash:
    #
    #       {
    #         flow_name: "FlowName", # required
    #         description: "FlowDescription",
    #         trigger_config: { # required
    #           trigger_type: "Scheduled", # required, accepts Scheduled, Event, OnDemand
    #           trigger_properties: {
    #             scheduled: {
    #               schedule_expression: "ScheduleExpression", # required
    #               data_pull_mode: "Incremental", # accepts Incremental, Complete
    #               schedule_start_time: Time.now,
    #               schedule_end_time: Time.now,
    #               timezone: "Timezone",
    #             },
    #           },
    #         },
    #         source_flow_config: {
    #           connector_type: "Salesforce", # required, accepts Salesforce, Singular, Slack, Redshift, S3, Marketo, Googleanalytics, Zendesk, Servicenow, Datadog, Trendmicro, Snowflake, Dynatrace, Infornexus, Amplitude, Veeva, EventBridge
    #           connector_profile_name: "ConnectorProfileName",
    #           source_connector_properties: { # required
    #             amplitude: {
    #               object: "Object", # required
    #             },
    #             datadog: {
    #               object: "Object", # required
    #             },
    #             dynatrace: {
    #               object: "Object", # required
    #             },
    #             google_analytics: {
    #               object: "Object", # required
    #             },
    #             infor_nexus: {
    #               object: "Object", # required
    #             },
    #             marketo: {
    #               object: "Object", # required
    #             },
    #             s3: {
    #               bucket_name: "BucketName", # required
    #               bucket_prefix: "BucketPrefix",
    #             },
    #             salesforce: {
    #               object: "Object", # required
    #               enable_dynamic_field_update: false,
    #               include_deleted_records: false,
    #             },
    #             service_now: {
    #               object: "Object", # required
    #             },
    #             singular: {
    #               object: "Object", # required
    #             },
    #             slack: {
    #               object: "Object", # required
    #             },
    #             trendmicro: {
    #               object: "Object", # required
    #             },
    #             veeva: {
    #               object: "Object", # required
    #             },
    #             zendesk: {
    #               object: "Object", # required
    #             },
    #           },
    #         },
    #         destination_flow_config_list: [ # required
    #           {
    #             connector_type: "Salesforce", # required, accepts Salesforce, Singular, Slack, Redshift, S3, Marketo, Googleanalytics, Zendesk, Servicenow, Datadog, Trendmicro, Snowflake, Dynatrace, Infornexus, Amplitude, Veeva, EventBridge
    #             connector_profile_name: "ConnectorProfileName",
    #             destination_connector_properties: { # required
    #               redshift: {
    #                 object: "Object", # required
    #                 intermediate_bucket_name: "BucketName", # required
    #                 bucket_prefix: "BucketPrefix",
    #                 error_handling_config: {
    #                   fail_on_first_destination_error: false,
    #                   bucket_prefix: "BucketPrefix",
    #                   bucket_name: "BucketName",
    #                 },
    #               },
    #               s3: {
    #                 bucket_name: "BucketName", # required
    #                 bucket_prefix: "BucketPrefix",
    #                 s3_output_format_config: {
    #                   file_type: "CSV", # accepts CSV, JSON, PARQUET
    #                   prefix_config: {
    #                     prefix_type: "FILENAME", # accepts FILENAME, PATH, PATH_AND_FILENAME
    #                     prefix_format: "YEAR", # accepts YEAR, MONTH, DAY, HOUR, MINUTE
    #                   },
    #                   aggregation_config: {
    #                     aggregation_type: "None", # accepts None, SingleFile
    #                   },
    #                 },
    #               },
    #               salesforce: {
    #                 object: "Object", # required
    #                 error_handling_config: {
    #                   fail_on_first_destination_error: false,
    #                   bucket_prefix: "BucketPrefix",
    #                   bucket_name: "BucketName",
    #                 },
    #               },
    #               snowflake: {
    #                 object: "Object", # required
    #                 intermediate_bucket_name: "BucketName", # required
    #                 bucket_prefix: "BucketPrefix",
    #                 error_handling_config: {
    #                   fail_on_first_destination_error: false,
    #                   bucket_prefix: "BucketPrefix",
    #                   bucket_name: "BucketName",
    #                 },
    #               },
    #               event_bridge: {
    #                 object: "Object", # required
    #                 error_handling_config: {
    #                   fail_on_first_destination_error: false,
    #                   bucket_prefix: "BucketPrefix",
    #                   bucket_name: "BucketName",
    #                 },
    #               },
    #             },
    #           },
    #         ],
    #         tasks: [ # required
    #           {
    #             source_fields: ["String"], # required
    #             connector_operator: {
    #               amplitude: "BETWEEN", # accepts BETWEEN
    #               datadog: "PROJECTION", # accepts PROJECTION, BETWEEN, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #               dynatrace: "PROJECTION", # accepts PROJECTION, BETWEEN, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #               google_analytics: "PROJECTION", # accepts PROJECTION, BETWEEN
    #               infor_nexus: "PROJECTION", # accepts PROJECTION, BETWEEN, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #               marketo: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #               s3: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #               salesforce: "PROJECTION", # accepts PROJECTION, LESS_THAN, CONTAINS, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #               service_now: "PROJECTION", # accepts PROJECTION, CONTAINS, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #               singular: "PROJECTION", # accepts PROJECTION, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #               slack: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #               trendmicro: "PROJECTION", # accepts PROJECTION, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #               veeva: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, CONTAINS, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #               zendesk: "PROJECTION", # accepts PROJECTION, GREATER_THAN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #             },
    #             destination_field: "DestinationField",
    #             task_type: "Arithmetic", # required, accepts Arithmetic, Filter, Map, Mask, Merge, Truncate, Validate
    #             task_properties: {
    #               "VALUE" => "Property",
    #             },
    #           },
    #         ],
    #       }
    #
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/UpdateFlowRequest AWS API Documentation
    #
    class UpdateFlowRequest < Struct.new(
      :flow_name,
      :description,
      :trigger_config,
      :source_flow_config,
      :destination_flow_config_list,
      :tasks)
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
    # @note When making an API call, you may pass VeevaConnectorProfileCredentials
    #   data as a hash:
    #
    #       {
    #         username: "Username", # required
    #         password: "Password", # required
    #       }
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
    # @note When making an API call, you may pass VeevaConnectorProfileProperties
    #   data as a hash:
    #
    #       {
    #         instance_url: "InstanceUrl", # required
    #       }
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
    # @note When making an API call, you may pass VeevaSourceProperties
    #   data as a hash:
    #
    #       {
    #         object: "Object", # required
    #       }
    #
    # @!attribute [rw] object
    #   The object specified in the Veeva flow source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appflow-2020-08-23/VeevaSourceProperties AWS API Documentation
    #
    class VeevaSourceProperties < Struct.new(
      :object)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector-specific profile credentials required when using
    # Zendesk.
    #
    # @note When making an API call, you may pass ZendeskConnectorProfileCredentials
    #   data as a hash:
    #
    #       {
    #         client_id: "ClientId", # required
    #         client_secret: "ClientSecret", # required
    #         access_token: "AccessToken",
    #         o_auth_request: {
    #           auth_code: "AuthCode",
    #           redirect_uri: "RedirectUri",
    #         },
    #       }
    #
    # @!attribute [rw] client_id
    #   The identifier for the desired client.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The client secret used by the oauth client to authenticate to the
    #   authorization server.
    #   @return [String]
    #
    # @!attribute [rw] access_token
    #   The credentials used to access protected Zendesk resources.
    #   @return [String]
    #
    # @!attribute [rw] o_auth_request
    #   The oauth requirement needed to request security tokens from the
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
    # @note When making an API call, you may pass ZendeskConnectorProfileProperties
    #   data as a hash:
    #
    #       {
    #         instance_url: "InstanceUrl", # required
    #       }
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
    # @note When making an API call, you may pass ZendeskSourceProperties
    #   data as a hash:
    #
    #       {
    #         object: "Object", # required
    #       }
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
