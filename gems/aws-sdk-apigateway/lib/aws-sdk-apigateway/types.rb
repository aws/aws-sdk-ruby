# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::APIGateway
  module Types

    # Access log settings, including the access log format and access log
    # destination ARN.
    #
    # @!attribute [rw] format
    #   A single line format of the access logs of data, as specified by
    #   selected $context variables. The format must include at least
    #   `$context.requestId`.
    #   @return [String]
    #
    # @!attribute [rw] destination_arn
    #   The Amazon Resource Name (ARN) of the CloudWatch Logs log group or
    #   Kinesis Data Firehose delivery stream to receive access logs. If you
    #   specify a Kinesis Data Firehose delivery stream, the stream name
    #   must begin with `amazon-apigateway-`.
    #   @return [String]
    #
    class AccessLogSettings < Struct.new(
      :format,
      :destination_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an AWS account that is associated with API Gateway.
    #
    # @!attribute [rw] cloudwatch_role_arn
    #   The ARN of an Amazon CloudWatch role for the current Account.
    #   @return [String]
    #
    # @!attribute [rw] throttle_settings
    #   Specifies the API request limits configured for the current Account.
    #   @return [Types::ThrottleSettings]
    #
    # @!attribute [rw] features
    #   A list of features supported for the account. When usage plans are
    #   enabled, the features list will include an entry of `"UsagePlans"`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] api_key_version
    #   The version of the API keys used for the account.
    #   @return [String]
    #
    class Account < Struct.new(
      :cloudwatch_role_arn,
      :throttle_settings,
      :features,
      :api_key_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource that can be distributed to callers for executing Method
    # resources that require an API key. API keys can be mapped to any Stage
    # on any RestApi, which indicates that the callers with the API key can
    # make requests to that stage.
    #
    # @!attribute [rw] id
    #   The identifier of the API Key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the API Key.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the API Key.
    #   @return [String]
    #
    # @!attribute [rw] customer_id
    #   An AWS Marketplace customer identifier , when integrating with the
    #   AWS SaaS Marketplace.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the API Key.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether the API Key can be used by callers.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_date
    #   The timestamp when the API Key was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date
    #   The timestamp when the API Key was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] stage_keys
    #   A list of Stage resources that are associated with the ApiKey
    #   resource.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The collection of tags. Each tag element is associated with a given
    #   resource.
    #   @return [Hash<String,String>]
    #
    class ApiKey < Struct.new(
      :id,
      :value,
      :name,
      :customer_id,
      :description,
      :enabled,
      :created_date,
      :last_updated_date,
      :stage_keys,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The identifier of an ApiKey used in a UsagePlan.
    #
    # @!attribute [rw] ids
    #   A list of all the ApiKey identifiers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] warnings
    #   A list of warning messages.
    #   @return [Array<String>]
    #
    class ApiKeyIds < Struct.new(
      :ids,
      :warnings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a collection of API keys as represented by an ApiKeys
    # resource.
    #
    # @!attribute [rw] warnings
    #   A list of warning messages logged during the import of API keys when
    #   the `failOnWarnings` option is set to true.
    #   @return [Array<String>]
    #
    # @!attribute [rw] position
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The current page of elements from this collection.
    #   @return [Array<Types::ApiKey>]
    #
    class ApiKeys < Struct.new(
      :warnings,
      :position,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # API stage name of the associated API stage in a usage plan.
    #
    # @!attribute [rw] api_id
    #   API Id of the associated API stage in a usage plan.
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   API stage name of the associated API stage in a usage plan.
    #   @return [String]
    #
    # @!attribute [rw] throttle
    #   Map containing method level throttling information for API stage in
    #   a usage plan.
    #   @return [Hash<String,Types::ThrottleSettings>]
    #
    class ApiStage < Struct.new(
      :api_id,
      :stage,
      :throttle)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an authorization layer for methods. If enabled on a method,
    # API Gateway will activate the authorizer when a client calls the
    # method.
    #
    # @!attribute [rw] id
    #   The identifier for the authorizer resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the authorizer.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The authorizer type. Valid values are `TOKEN` for a Lambda function
    #   using a single authorization token submitted in a custom header,
    #   `REQUEST` for a Lambda function using incoming request parameters,
    #   and `COGNITO_USER_POOLS` for using an Amazon Cognito user pool.
    #   @return [String]
    #
    # @!attribute [rw] provider_arns
    #   A list of the Amazon Cognito user pool ARNs for the
    #   `COGNITO_USER_POOLS` authorizer. Each element is of this format:
    #   `arn:aws:cognito-idp:\{region\}:\{account_id\}:userpool/\{user_pool_id\}`.
    #   For a `TOKEN` or `REQUEST` authorizer, this is not defined.
    #   @return [Array<String>]
    #
    # @!attribute [rw] auth_type
    #   Optional customer-defined field, used in OpenAPI imports and exports
    #   without functional impact.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_uri
    #   Specifies the authorizer's Uniform Resource Identifier (URI). For
    #   `TOKEN` or `REQUEST` authorizers, this must be a well-formed Lambda
    #   function URI, for example,
    #   `arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:\{account_id\}:function:\{lambda_function_name\}/invocations`.
    #   In general, the URI has this form
    #   `arn:aws:apigateway:\{region\}:lambda:path/\{service_api\}`, where
    #   `\{region\}` is the same as the region hosting the Lambda function,
    #   `path` indicates that the remaining substring in the URI should be
    #   treated as the path to the resource, including the initial `/`. For
    #   Lambda functions, this is usually of the form
    #   `/2015-03-31/functions/[FunctionARN]/invocations`.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_credentials
    #   Specifies the required credentials as an IAM role for API Gateway to
    #   invoke the authorizer. To specify an IAM role for API Gateway to
    #   assume, use the role's Amazon Resource Name (ARN). To use
    #   resource-based permissions on the Lambda function, specify null.
    #   @return [String]
    #
    # @!attribute [rw] identity_source
    #   The identity source for which authorization is requested. For a
    #   `TOKEN` or `COGNITO_USER_POOLS` authorizer, this is required and
    #   specifies the request header mapping expression for the custom
    #   header holding the authorization token submitted by the client. For
    #   example, if the token header name is `Auth`, the header mapping
    #   expression is `method.request.header.Auth`. For the `REQUEST`
    #   authorizer, this is required when authorization caching is enabled.
    #   The value is a comma-separated string of one or more mapping
    #   expressions of the specified request parameters. For example, if an
    #   `Auth` header, a `Name` query string parameter are defined as
    #   identity sources, this value is `method.request.header.Auth`,
    #   `method.request.querystring.Name`. These parameters will be used to
    #   derive the authorization caching key and to perform runtime
    #   validation of the `REQUEST` authorizer by verifying all of the
    #   identity-related request parameters are present, not null and
    #   non-empty. Only when this is true does the authorizer invoke the
    #   authorizer Lambda function, otherwise, it returns a 401 Unauthorized
    #   response without calling the Lambda function. The valid value is a
    #   string of comma-separated mapping expressions of the specified
    #   request parameters. When the authorization caching is not enabled,
    #   this property is optional.
    #   @return [String]
    #
    # @!attribute [rw] identity_validation_expression
    #   A validation expression for the incoming identity token. For `TOKEN`
    #   authorizers, this value is a regular expression. For
    #   `COGNITO_USER_POOLS` authorizers, API Gateway will match the `aud`
    #   field of the incoming token from the client against the specified
    #   regular expression. It will invoke the authorizer's Lambda function
    #   when there is a match. Otherwise, it will return a 401 Unauthorized
    #   response without calling the Lambda function. The validation
    #   expression does not apply to the `REQUEST` authorizer.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_result_ttl_in_seconds
    #   The TTL in seconds of cached authorizer results. If it equals 0,
    #   authorization caching is disabled. If it is greater than 0, API
    #   Gateway will cache authorizer responses. If this field is not set,
    #   the default value is 300. The maximum value is 3600, or 1 hour.
    #   @return [Integer]
    #
    class Authorizer < Struct.new(
      :id,
      :name,
      :type,
      :provider_arns,
      :auth_type,
      :authorizer_uri,
      :authorizer_credentials,
      :identity_source,
      :identity_validation_expression,
      :authorizer_result_ttl_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a collection of Authorizer resources.
    #
    # @!attribute [rw] position
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The current page of elements from this collection.
    #   @return [Array<Types::Authorizer>]
    #
    class Authorizers < Struct.new(
      :position,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # The submitted request is not valid, for example, the input is
    # incomplete or incorrect. See the accompanying error message for
    # details.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class BadRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the base path that callers of the API must provide as part
    # of the URL after the domain name.
    #
    # @!attribute [rw] base_path
    #   The base path name that callers of the API must provide as part of
    #   the URL after the domain name.
    #   @return [String]
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   The name of the associated stage.
    #   @return [String]
    #
    class BasePathMapping < Struct.new(
      :base_path,
      :rest_api_id,
      :stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a collection of BasePathMapping resources.
    #
    # @!attribute [rw] position
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The current page of elements from this collection.
    #   @return [Array<Types::BasePathMapping>]
    #
    class BasePathMappings < Struct.new(
      :position,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration settings of a canary deployment.
    #
    # @!attribute [rw] percent_traffic
    #   The percent (0-100) of traffic diverted to a canary deployment.
    #   @return [Float]
    #
    # @!attribute [rw] deployment_id
    #   The ID of the canary deployment.
    #   @return [String]
    #
    # @!attribute [rw] stage_variable_overrides
    #   Stage variables overridden for a canary release deployment,
    #   including new stage variables introduced in the canary. These stage
    #   variables are represented as a string-to-string map between stage
    #   variable names and their values.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] use_stage_cache
    #   A Boolean flag to indicate whether the canary deployment uses the
    #   stage cache or not.
    #   @return [Boolean]
    #
    class CanarySettings < Struct.new(
      :percent_traffic,
      :deployment_id,
      :stage_variable_overrides,
      :use_stage_cache)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a client certificate used to configure client-side SSL
    # authentication while sending requests to the integration endpoint.
    #
    # @!attribute [rw] client_certificate_id
    #   The identifier of the client certificate.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the client certificate.
    #   @return [String]
    #
    # @!attribute [rw] pem_encoded_certificate
    #   The PEM-encoded public key of the client certificate, which can be
    #   used to configure certificate authentication in the integration
    #   endpoint .
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The timestamp when the client certificate was created.
    #   @return [Time]
    #
    # @!attribute [rw] expiration_date
    #   The timestamp when the client certificate will expire.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The collection of tags. Each tag element is associated with a given
    #   resource.
    #   @return [Hash<String,String>]
    #
    class ClientCertificate < Struct.new(
      :client_certificate_id,
      :description,
      :pem_encoded_certificate,
      :created_date,
      :expiration_date,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a collection of ClientCertificate resources.
    #
    # @!attribute [rw] position
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The current page of elements from this collection.
    #   @return [Array<Types::ClientCertificate>]
    #
    class ClientCertificates < Struct.new(
      :position,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request configuration has conflicts. For details, see the
    # accompanying error message.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to create an ApiKey resource.
    #
    # @!attribute [rw] name
    #   The name of the ApiKey.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the ApiKey.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether the ApiKey can be used by callers.
    #   @return [Boolean]
    #
    # @!attribute [rw] generate_distinct_id
    #   Specifies whether (`true`) or not (`false`) the key identifier is
    #   distinct from the created API key value. This parameter is
    #   deprecated and should not be used.
    #   @return [Boolean]
    #
    # @!attribute [rw] value
    #   Specifies a value of the API key.
    #   @return [String]
    #
    # @!attribute [rw] stage_keys
    #   DEPRECATED FOR USAGE PLANS - Specifies stages associated with the
    #   API key.
    #   @return [Array<Types::StageKey>]
    #
    # @!attribute [rw] customer_id
    #   An AWS Marketplace customer identifier , when integrating with the
    #   AWS SaaS Marketplace.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value map of strings. The valid character set is
    #   \[a-zA-Z+-=.\_:/\]. The tag key can be up to 128 characters and must
    #   not start with `aws:`. The tag value can be up to 256 characters.
    #   @return [Hash<String,String>]
    #
    class CreateApiKeyRequest < Struct.new(
      :name,
      :description,
      :enabled,
      :generate_distinct_id,
      :value,
      :stage_keys,
      :customer_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to add a new Authorizer to an existing RestApi resource.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the authorizer.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The authorizer type. Valid values are `TOKEN` for a Lambda function
    #   using a single authorization token submitted in a custom header,
    #   `REQUEST` for a Lambda function using incoming request parameters,
    #   and `COGNITO_USER_POOLS` for using an Amazon Cognito user pool.
    #   @return [String]
    #
    # @!attribute [rw] provider_arns
    #   A list of the Amazon Cognito user pool ARNs for the
    #   `COGNITO_USER_POOLS` authorizer. Each element is of this format:
    #   `arn:aws:cognito-idp:\{region\}:\{account_id\}:userpool/\{user_pool_id\}`.
    #   For a `TOKEN` or `REQUEST` authorizer, this is not defined.
    #   @return [Array<String>]
    #
    # @!attribute [rw] auth_type
    #   Optional customer-defined field, used in OpenAPI imports and exports
    #   without functional impact.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_uri
    #   Specifies the authorizer's Uniform Resource Identifier (URI). For
    #   `TOKEN` or `REQUEST` authorizers, this must be a well-formed Lambda
    #   function URI, for example,
    #   `arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:\{account_id\}:function:\{lambda_function_name\}/invocations`.
    #   In general, the URI has this form
    #   `arn:aws:apigateway:\{region\}:lambda:path/\{service_api\}`, where
    #   `\{region\}` is the same as the region hosting the Lambda function,
    #   `path` indicates that the remaining substring in the URI should be
    #   treated as the path to the resource, including the initial `/`. For
    #   Lambda functions, this is usually of the form
    #   `/2015-03-31/functions/[FunctionARN]/invocations`.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_credentials
    #   Specifies the required credentials as an IAM role for API Gateway to
    #   invoke the authorizer. To specify an IAM role for API Gateway to
    #   assume, use the role's Amazon Resource Name (ARN). To use
    #   resource-based permissions on the Lambda function, specify null.
    #   @return [String]
    #
    # @!attribute [rw] identity_source
    #   The identity source for which authorization is requested. For a
    #   `TOKEN` or `COGNITO_USER_POOLS` authorizer, this is required and
    #   specifies the request header mapping expression for the custom
    #   header holding the authorization token submitted by the client. For
    #   example, if the token header name is `Auth`, the header mapping
    #   expression is `method.request.header.Auth`. For the `REQUEST`
    #   authorizer, this is required when authorization caching is enabled.
    #   The value is a comma-separated string of one or more mapping
    #   expressions of the specified request parameters. For example, if an
    #   `Auth` header, a `Name` query string parameter are defined as
    #   identity sources, this value is `method.request.header.Auth,
    #   method.request.querystring.Name`. These parameters will be used to
    #   derive the authorization caching key and to perform runtime
    #   validation of the `REQUEST` authorizer by verifying all of the
    #   identity-related request parameters are present, not null and
    #   non-empty. Only when this is true does the authorizer invoke the
    #   authorizer Lambda function, otherwise, it returns a 401 Unauthorized
    #   response without calling the Lambda function. The valid value is a
    #   string of comma-separated mapping expressions of the specified
    #   request parameters. When the authorization caching is not enabled,
    #   this property is optional.
    #   @return [String]
    #
    # @!attribute [rw] identity_validation_expression
    #   A validation expression for the incoming identity token. For `TOKEN`
    #   authorizers, this value is a regular expression. For
    #   `COGNITO_USER_POOLS` authorizers, API Gateway will match the `aud`
    #   field of the incoming token from the client against the specified
    #   regular expression. It will invoke the authorizer's Lambda function
    #   when there is a match. Otherwise, it will return a 401 Unauthorized
    #   response without calling the Lambda function. The validation
    #   expression does not apply to the `REQUEST` authorizer.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_result_ttl_in_seconds
    #   The TTL in seconds of cached authorizer results. If it equals 0,
    #   authorization caching is disabled. If it is greater than 0, API
    #   Gateway will cache authorizer responses. If this field is not set,
    #   the default value is 300. The maximum value is 3600, or 1 hour.
    #   @return [Integer]
    #
    class CreateAuthorizerRequest < Struct.new(
      :rest_api_id,
      :name,
      :type,
      :provider_arns,
      :auth_type,
      :authorizer_uri,
      :authorizer_credentials,
      :identity_source,
      :identity_validation_expression,
      :authorizer_result_ttl_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Requests API Gateway to create a new BasePathMapping resource.
    #
    # @!attribute [rw] domain_name
    #   The domain name of the BasePathMapping resource to create.
    #   @return [String]
    #
    # @!attribute [rw] base_path
    #   The base path name that callers of the API must provide as part of
    #   the URL after the domain name. This value must be unique for all of
    #   the mappings across a single API. Specify '(none)' if you do not
    #   want callers to specify a base path name after the domain name.
    #   @return [String]
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   The name of the API's stage that you want to use for this mapping.
    #   Specify '(none)' if you want callers to explicitly specify the
    #   stage name after any base path name.
    #   @return [String]
    #
    class CreateBasePathMappingRequest < Struct.new(
      :domain_name,
      :base_path,
      :rest_api_id,
      :stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Requests API Gateway to create a Deployment resource.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the Stage resource for the Deployment resource to
    #   create.
    #   @return [String]
    #
    # @!attribute [rw] stage_description
    #   The description of the Stage resource for the Deployment resource to
    #   create.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the Deployment resource to create.
    #   @return [String]
    #
    # @!attribute [rw] cache_cluster_enabled
    #   Enables a cache cluster for the Stage resource specified in the
    #   input.
    #   @return [Boolean]
    #
    # @!attribute [rw] cache_cluster_size
    #   The stage's cache capacity in GB. For more information about
    #   choosing a cache size, see [Enabling API caching to enhance
    #   responsiveness][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-caching.html
    #   @return [String]
    #
    # @!attribute [rw] variables
    #   A map that defines the stage variables for the Stage resource that
    #   is associated with the new deployment. Variable names can have
    #   alphanumeric and underscore characters, and the values must match
    #   `[A-Za-z0-9-._~:/?#&=,]+`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] canary_settings
    #   The input configuration for the canary deployment when the
    #   deployment is a canary release deployment.
    #   @return [Types::DeploymentCanarySettings]
    #
    # @!attribute [rw] tracing_enabled
    #   Specifies whether active tracing with X-ray is enabled for the
    #   Stage.
    #   @return [Boolean]
    #
    class CreateDeploymentRequest < Struct.new(
      :rest_api_id,
      :stage_name,
      :stage_description,
      :description,
      :cache_cluster_enabled,
      :cache_cluster_size,
      :variables,
      :canary_settings,
      :tracing_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Creates a new documentation part of a given API.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The location of the targeted API entity of the to-be-created
    #   documentation part.
    #   @return [Types::DocumentationPartLocation]
    #
    # @!attribute [rw] properties
    #   The new documentation content map of the targeted API entity.
    #   Enclosed key-value pairs are API-specific, but only
    #   OpenAPI-compliant key-value pairs can be exported and, hence,
    #   published.
    #   @return [String]
    #
    class CreateDocumentationPartRequest < Struct.new(
      :rest_api_id,
      :location,
      :properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # Creates a new documentation version of a given API.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] documentation_version
    #   The version identifier of the new snapshot.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The stage name to be associated with the new documentation snapshot.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description about the new documentation snapshot.
    #   @return [String]
    #
    class CreateDocumentationVersionRequest < Struct.new(
      :rest_api_id,
      :documentation_version,
      :stage_name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to create a new domain name.
    #
    # @!attribute [rw] domain_name
    #   The name of the DomainName resource.
    #   @return [String]
    #
    # @!attribute [rw] certificate_name
    #   The user-friendly name of the certificate that will be used by
    #   edge-optimized endpoint for this domain name.
    #   @return [String]
    #
    # @!attribute [rw] certificate_body
    #   \[Deprecated\] The body of the server certificate that will be used
    #   by edge-optimized endpoint for this domain name provided by your
    #   certificate authority.
    #   @return [String]
    #
    # @!attribute [rw] certificate_private_key
    #   \[Deprecated\] Your edge-optimized endpoint's domain name
    #   certificate's private key.
    #   @return [String]
    #
    # @!attribute [rw] certificate_chain
    #   \[Deprecated\] The intermediate certificates and optionally the root
    #   certificate, one after the other without any blank lines, used by an
    #   edge-optimized endpoint for this domain name. If you include the
    #   root certificate, your certificate chain must start with
    #   intermediate certificates and end with the root certificate. Use the
    #   intermediate certificates that were provided by your certificate
    #   authority. Do not include any intermediaries that are not in the
    #   chain of trust path.
    #   @return [String]
    #
    # @!attribute [rw] certificate_arn
    #   The reference to an AWS-managed certificate that will be used by
    #   edge-optimized endpoint for this domain name. AWS Certificate
    #   Manager is the only supported source.
    #   @return [String]
    #
    # @!attribute [rw] regional_certificate_name
    #   The user-friendly name of the certificate that will be used by
    #   regional endpoint for this domain name.
    #   @return [String]
    #
    # @!attribute [rw] regional_certificate_arn
    #   The reference to an AWS-managed certificate that will be used by
    #   regional endpoint for this domain name. AWS Certificate Manager is
    #   the only supported source.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_configuration
    #   The endpoint configuration of this DomainName showing the endpoint
    #   types of the domain name.
    #   @return [Types::EndpointConfiguration]
    #
    # @!attribute [rw] tags
    #   The key-value map of strings. The valid character set is
    #   \[a-zA-Z+-=.\_:/\]. The tag key can be up to 128 characters and must
    #   not start with `aws:`. The tag value can be up to 256 characters.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] security_policy
    #   The Transport Layer Security (TLS) version + cipher suite for this
    #   DomainName. The valid values are `TLS_1_0` and `TLS_1_2`.
    #   @return [String]
    #
    # @!attribute [rw] mutual_tls_authentication
    #   The mutual TLS authentication configuration for a custom domain
    #   name. If specified, API Gateway performs two-way authentication
    #   between the client and the server. Clients must present a trusted
    #   certificate to access your API.
    #   @return [Types::MutualTlsAuthenticationInput]
    #
    # @!attribute [rw] ownership_verification_certificate_arn
    #   The ARN of the public certificate issued by ACM to validate
    #   ownership of your custom domain. Only required when configuring
    #   mutual TLS and using an ACM imported or private CA certificate ARN
    #   as the regionalCertificateArn.
    #   @return [String]
    #
    class CreateDomainNameRequest < Struct.new(
      :domain_name,
      :certificate_name,
      :certificate_body,
      :certificate_private_key,
      :certificate_chain,
      :certificate_arn,
      :regional_certificate_name,
      :regional_certificate_arn,
      :endpoint_configuration,
      :tags,
      :security_policy,
      :mutual_tls_authentication,
      :ownership_verification_certificate_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to add a new Model to an existing RestApi resource.
    #
    # @!attribute [rw] rest_api_id
    #   The RestApi identifier under which the Model will be created.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the model. Must be alphanumeric.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the model.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The schema for the model. For `application/json` models, this should
    #   be JSON schema draft 4 model.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The content-type for the model.
    #   @return [String]
    #
    class CreateModelRequest < Struct.new(
      :rest_api_id,
      :name,
      :description,
      :schema,
      :content_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Creates a RequestValidator of a given RestApi.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the to-be-created RequestValidator.
    #   @return [String]
    #
    # @!attribute [rw] validate_request_body
    #   A Boolean flag to indicate whether to validate request body
    #   according to the configured model schema for the method (`true`) or
    #   not (`false`).
    #   @return [Boolean]
    #
    # @!attribute [rw] validate_request_parameters
    #   A Boolean flag to indicate whether to validate request parameters,
    #   `true`, or not `false`.
    #   @return [Boolean]
    #
    class CreateRequestValidatorRequest < Struct.new(
      :rest_api_id,
      :name,
      :validate_request_body,
      :validate_request_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Requests API Gateway to create a Resource resource.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] parent_id
    #   The parent resource's identifier.
    #   @return [String]
    #
    # @!attribute [rw] path_part
    #   The last path segment for this resource.
    #   @return [String]
    #
    class CreateResourceRequest < Struct.new(
      :rest_api_id,
      :parent_id,
      :path_part)
      SENSITIVE = []
      include Aws::Structure
    end

    # The POST Request to add a new RestApi resource to your collection.
    #
    # @!attribute [rw] name
    #   The name of the RestApi.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the RestApi.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   A version identifier for the API.
    #   @return [String]
    #
    # @!attribute [rw] clone_from
    #   The ID of the RestApi that you want to clone from.
    #   @return [String]
    #
    # @!attribute [rw] binary_media_types
    #   The list of binary media types supported by the RestApi. By default,
    #   the RestApi supports only UTF-8-encoded text payloads.
    #   @return [Array<String>]
    #
    # @!attribute [rw] minimum_compression_size
    #   A nullable integer that is used to enable compression (with
    #   non-negative between 0 and 10485760 (10M) bytes, inclusive) or
    #   disable compression (with a null value) on an API. When compression
    #   is enabled, compression or decompression is not applied on the
    #   payload if the payload size is smaller than this value. Setting it
    #   to zero allows compression for any payload size.
    #   @return [Integer]
    #
    # @!attribute [rw] api_key_source
    #   The source of the API key for metering requests according to a usage
    #   plan. Valid values are: &gt;`HEADER` to read the API key from the
    #   `X-API-Key` header of a request. `AUTHORIZER` to read the API key
    #   from the `UsageIdentifierKey` from a custom authorizer.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_configuration
    #   The endpoint configuration of this RestApi showing the endpoint
    #   types of the API.
    #   @return [Types::EndpointConfiguration]
    #
    # @!attribute [rw] policy
    #   A stringified JSON policy document that applies to this RestApi
    #   regardless of the caller and Method configuration.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value map of strings. The valid character set is
    #   \[a-zA-Z+-=.\_:/\]. The tag key can be up to 128 characters and must
    #   not start with `aws:`. The tag value can be up to 256 characters.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] disable_execute_api_endpoint
    #   Specifies whether clients can invoke your API by using the default
    #   `execute-api` endpoint. By default, clients can invoke your API with
    #   the default
    #   `https://\{api_id\}.execute-api.\{region\}.amazonaws.com` endpoint.
    #   To require that clients use a custom domain name to invoke your API,
    #   disable the default endpoint
    #   @return [Boolean]
    #
    class CreateRestApiRequest < Struct.new(
      :name,
      :description,
      :version,
      :clone_from,
      :binary_media_types,
      :minimum_compression_size,
      :api_key_source,
      :endpoint_configuration,
      :policy,
      :tags,
      :disable_execute_api_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # Requests API Gateway to create a Stage resource.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name for the Stage resource. Stage names can only contain
    #   alphanumeric characters, hyphens, and underscores. Maximum length is
    #   128 characters.
    #   @return [String]
    #
    # @!attribute [rw] deployment_id
    #   The identifier of the Deployment resource for the Stage resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the Stage resource.
    #   @return [String]
    #
    # @!attribute [rw] cache_cluster_enabled
    #   Whether cache clustering is enabled for the stage.
    #   @return [Boolean]
    #
    # @!attribute [rw] cache_cluster_size
    #   The stage's cache capacity in GB. For more information about
    #   choosing a cache size, see [Enabling API caching to enhance
    #   responsiveness][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-caching.html
    #   @return [String]
    #
    # @!attribute [rw] variables
    #   A map that defines the stage variables for the new Stage resource.
    #   Variable names can have alphanumeric and underscore characters, and
    #   the values must match `[A-Za-z0-9-._~:/?#&=,]+`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] documentation_version
    #   The version of the associated API documentation.
    #   @return [String]
    #
    # @!attribute [rw] canary_settings
    #   The canary deployment settings of this stage.
    #   @return [Types::CanarySettings]
    #
    # @!attribute [rw] tracing_enabled
    #   Specifies whether active tracing with X-ray is enabled for the
    #   Stage.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   The key-value map of strings. The valid character set is
    #   \[a-zA-Z+-=.\_:/\]. The tag key can be up to 128 characters and must
    #   not start with `aws:`. The tag value can be up to 256 characters.
    #   @return [Hash<String,String>]
    #
    class CreateStageRequest < Struct.new(
      :rest_api_id,
      :stage_name,
      :deployment_id,
      :description,
      :cache_cluster_enabled,
      :cache_cluster_size,
      :variables,
      :documentation_version,
      :canary_settings,
      :tracing_enabled,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The POST request to create a usage plan key for adding an existing API
    # key to a usage plan.
    #
    # @!attribute [rw] usage_plan_id
    #   The Id of the UsagePlan resource representing the usage plan
    #   containing the to-be-created UsagePlanKey resource representing a
    #   plan customer.
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The identifier of a UsagePlanKey resource for a plan customer.
    #   @return [String]
    #
    # @!attribute [rw] key_type
    #   The type of a UsagePlanKey resource for a plan customer.
    #   @return [String]
    #
    class CreateUsagePlanKeyRequest < Struct.new(
      :usage_plan_id,
      :key_id,
      :key_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The POST request to create a usage plan with the name, description,
    # throttle limits and quota limits, as well as the associated API
    # stages, specified in the payload.
    #
    # @!attribute [rw] name
    #   The name of the usage plan.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the usage plan.
    #   @return [String]
    #
    # @!attribute [rw] api_stages
    #   The associated API stages of the usage plan.
    #   @return [Array<Types::ApiStage>]
    #
    # @!attribute [rw] throttle
    #   The throttling limits of the usage plan.
    #   @return [Types::ThrottleSettings]
    #
    # @!attribute [rw] quota
    #   The quota of the usage plan.
    #   @return [Types::QuotaSettings]
    #
    # @!attribute [rw] tags
    #   The key-value map of strings. The valid character set is
    #   \[a-zA-Z+-=.\_:/\]. The tag key can be up to 128 characters and must
    #   not start with `aws:`. The tag value can be up to 256 characters.
    #   @return [Hash<String,String>]
    #
    class CreateUsagePlanRequest < Struct.new(
      :name,
      :description,
      :api_stages,
      :throttle,
      :quota,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Creates a VPC link, under the caller's account in a selected region,
    # in an asynchronous operation that typically takes 2-4 minutes to
    # complete and become operational. The caller must have permissions to
    # create and update VPC Endpoint services.
    #
    # @!attribute [rw] name
    #   The name used to label and identify the VPC link.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the VPC link.
    #   @return [String]
    #
    # @!attribute [rw] target_arns
    #   The ARN of the network load balancer of the VPC targeted by the VPC
    #   link. The network load balancer must be owned by the same AWS
    #   account of the API owner.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The key-value map of strings. The valid character set is
    #   \[a-zA-Z+-=.\_:/\]. The tag key can be up to 128 characters and must
    #   not start with `aws:`. The tag value can be up to 256 characters.
    #   @return [Hash<String,String>]
    #
    class CreateVpcLinkRequest < Struct.new(
      :name,
      :description,
      :target_arns,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to delete the ApiKey resource.
    #
    # @!attribute [rw] api_key
    #   The identifier of the ApiKey resource to be deleted.
    #   @return [String]
    #
    class DeleteApiKeyRequest < Struct.new(
      :api_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to delete an existing Authorizer resource.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_id
    #   The identifier of the Authorizer resource.
    #   @return [String]
    #
    class DeleteAuthorizerRequest < Struct.new(
      :rest_api_id,
      :authorizer_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to delete the BasePathMapping resource.
    #
    # @!attribute [rw] domain_name
    #   The domain name of the BasePathMapping resource to delete.
    #   @return [String]
    #
    # @!attribute [rw] base_path
    #   The base path name of the BasePathMapping resource to delete.
    #
    #   To specify an empty base path, set this parameter to `'(none)'`.
    #   @return [String]
    #
    class DeleteBasePathMappingRequest < Struct.new(
      :domain_name,
      :base_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to delete the ClientCertificate resource.
    #
    # @!attribute [rw] client_certificate_id
    #   The identifier of the ClientCertificate resource to be deleted.
    #   @return [String]
    #
    class DeleteClientCertificateRequest < Struct.new(
      :client_certificate_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Requests API Gateway to delete a Deployment resource.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] deployment_id
    #   The identifier of the Deployment resource to delete.
    #   @return [String]
    #
    class DeleteDeploymentRequest < Struct.new(
      :rest_api_id,
      :deployment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Deletes an existing documentation part of an API.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] documentation_part_id
    #   The identifier of the to-be-deleted documentation part.
    #   @return [String]
    #
    class DeleteDocumentationPartRequest < Struct.new(
      :rest_api_id,
      :documentation_part_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Deletes an existing documentation version of an API.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] documentation_version
    #   The version identifier of a to-be-deleted documentation snapshot.
    #   @return [String]
    #
    class DeleteDocumentationVersionRequest < Struct.new(
      :rest_api_id,
      :documentation_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to delete the DomainName resource.
    #
    # @!attribute [rw] domain_name
    #   The name of the DomainName resource to be deleted.
    #   @return [String]
    #
    class DeleteDomainNameRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Clears any customization of a GatewayResponse of a specified response
    # type on the given RestApi and resets it with the default settings.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] response_type
    #   The response type of the associated GatewayResponse.
    #   @return [String]
    #
    class DeleteGatewayResponseRequest < Struct.new(
      :rest_api_id,
      :response_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a delete integration request.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Specifies a delete integration request's resource identifier.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   Specifies a delete integration request's HTTP method.
    #   @return [String]
    #
    class DeleteIntegrationRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a delete integration response request.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Specifies a delete integration response request's resource
    #   identifier.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   Specifies a delete integration response request's HTTP method.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   Specifies a delete integration response request's status code.
    #   @return [String]
    #
    class DeleteIntegrationResponseRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :status_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to delete an existing Method resource.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The Resource identifier for the Method resource.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   The HTTP verb of the Method resource.
    #   @return [String]
    #
    class DeleteMethodRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to delete an existing MethodResponse resource.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The Resource identifier for the MethodResponse resource.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   The HTTP verb of the Method resource.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The status code identifier for the MethodResponse resource.
    #   @return [String]
    #
    class DeleteMethodResponseRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :status_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to delete an existing model in an existing RestApi resource.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] model_name
    #   The name of the model to delete.
    #   @return [String]
    #
    class DeleteModelRequest < Struct.new(
      :rest_api_id,
      :model_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Deletes a specified RequestValidator of a given RestApi.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] request_validator_id
    #   The identifier of the RequestValidator to be deleted.
    #   @return [String]
    #
    class DeleteRequestValidatorRequest < Struct.new(
      :rest_api_id,
      :request_validator_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to delete a Resource.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the Resource resource.
    #   @return [String]
    #
    class DeleteResourceRequest < Struct.new(
      :rest_api_id,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to delete the specified API from your collection.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    class DeleteRestApiRequest < Struct.new(
      :rest_api_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Requests API Gateway to delete a Stage resource.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the Stage resource to delete.
    #   @return [String]
    #
    class DeleteStageRequest < Struct.new(
      :rest_api_id,
      :stage_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The DELETE request to delete a usage plan key and remove the
    # underlying API key from the associated usage plan.
    #
    # @!attribute [rw] usage_plan_id
    #   The Id of the UsagePlan resource representing the usage plan
    #   containing the to-be-deleted UsagePlanKey resource representing a
    #   plan customer.
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The Id of the UsagePlanKey resource to be deleted.
    #   @return [String]
    #
    class DeleteUsagePlanKeyRequest < Struct.new(
      :usage_plan_id,
      :key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The DELETE request to delete a usage plan of a given plan Id.
    #
    # @!attribute [rw] usage_plan_id
    #   The Id of the to-be-deleted usage plan.
    #   @return [String]
    #
    class DeleteUsagePlanRequest < Struct.new(
      :usage_plan_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Deletes an existing VpcLink of a specified identifier.
    #
    # @!attribute [rw] vpc_link_id
    #   The identifier of the VpcLink. It is used in an Integration to
    #   reference this VpcLink.
    #   @return [String]
    #
    class DeleteVpcLinkRequest < Struct.new(
      :vpc_link_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An immutable representation of a RestApi resource that can be called
    # by users using Stages. A deployment must be associated with a Stage
    # for it to be callable over the Internet.
    #
    # @!attribute [rw] id
    #   The identifier for the deployment resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the deployment resource.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date and time that the deployment resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] api_summary
    #   A summary of the RestApi at the date and time that the deployment
    #   resource was created.
    #   @return [Hash<String,Hash<String,Types::MethodSnapshot>>]
    #
    class Deployment < Struct.new(
      :id,
      :description,
      :created_date,
      :api_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input configuration for a canary deployment.
    #
    # @!attribute [rw] percent_traffic
    #   The percentage (0.0-100.0) of traffic routed to the canary
    #   deployment.
    #   @return [Float]
    #
    # @!attribute [rw] stage_variable_overrides
    #   A stage variable overrides used for the canary release deployment.
    #   They can override existing stage variables or add new stage
    #   variables for the canary release deployment. These stage variables
    #   are represented as a string-to-string map between stage variable
    #   names and their values.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] use_stage_cache
    #   A Boolean flag to indicate whether the canary release deployment
    #   uses the stage cache or not.
    #   @return [Boolean]
    #
    class DeploymentCanarySettings < Struct.new(
      :percent_traffic,
      :stage_variable_overrides,
      :use_stage_cache)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a collection resource that contains zero or more references
    # to your existing deployments, and links that guide you on how to
    # interact with your collection. The collection offers a paginated view
    # of the contained deployments.
    #
    # @!attribute [rw] position
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The current page of elements from this collection.
    #   @return [Array<Types::Deployment>]
    #
    class Deployments < Struct.new(
      :position,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # A documentation part for a targeted API entity.
    #
    # @!attribute [rw] id
    #   The DocumentationPart identifier, generated by API Gateway when the
    #   `DocumentationPart` is created.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The location of the API entity to which the documentation applies.
    #   Valid fields depend on the targeted API entity type. All the valid
    #   location fields are not required. If not explicitly specified, a
    #   valid location field is treated as a wildcard and associated
    #   documentation content may be inherited by matching entities, unless
    #   overridden.
    #   @return [Types::DocumentationPartLocation]
    #
    # @!attribute [rw] properties
    #   A content map of API-specific key-value pairs describing the
    #   targeted API entity. The map must be encoded as a JSON string, e.g.,
    #   `"\{ "description": "The API does ..." \}"`. Only
    #   OpenAPI-compliant documentation-related fields from the properties
    #   map are exported and, hence, published as part of the API entity
    #   definitions, while the original documentation parts are exported in
    #   a OpenAPI extension of `x-amazon-apigateway-documentation`.
    #   @return [String]
    #
    class DocumentationPart < Struct.new(
      :id,
      :location,
      :properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of the imported DocumentationPart identifiers.
    #
    # @!attribute [rw] ids
    #   A list of the returned documentation part identifiers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] warnings
    #   A list of warning messages reported during import of documentation
    #   parts.
    #   @return [Array<String>]
    #
    class DocumentationPartIds < Struct.new(
      :ids,
      :warnings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the target API entity to which the documentation applies.
    #
    # @!attribute [rw] type
    #   The type of API entity to which the documentation content applies.
    #   Valid values are `API`, `AUTHORIZER`, `MODEL`, `RESOURCE`, `METHOD`,
    #   `PATH_PARAMETER`, `QUERY_PARAMETER`, `REQUEST_HEADER`,
    #   `REQUEST_BODY`, `RESPONSE`, `RESPONSE_HEADER`, and `RESPONSE_BODY`.
    #   Content inheritance does not apply to any entity of the `API`,
    #   `AUTHORIZER`, `METHOD`, `MODEL`, `REQUEST_BODY`, or `RESOURCE` type.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The URL path of the target. It is a valid field for the API entity
    #   types of `RESOURCE`, `METHOD`, `PATH_PARAMETER`, `QUERY_PARAMETER`,
    #   `REQUEST_HEADER`, `REQUEST_BODY`, `RESPONSE`, `RESPONSE_HEADER`, and
    #   `RESPONSE_BODY`. The default value is `/` for the root resource.
    #   When an applicable child entity inherits the content of another
    #   entity of the same type with more general specifications of the
    #   other `location` attributes, the child entity's `path` attribute
    #   must match that of the parent entity as a prefix.
    #   @return [String]
    #
    # @!attribute [rw] method
    #   The HTTP verb of a method. It is a valid field for the API entity
    #   types of `METHOD`, `PATH_PARAMETER`, `QUERY_PARAMETER`,
    #   `REQUEST_HEADER`, `REQUEST_BODY`, `RESPONSE`, `RESPONSE_HEADER`, and
    #   `RESPONSE_BODY`. The default value is `*` for any method. When an
    #   applicable child entity inherits the content of an entity of the
    #   same type with more general specifications of the other `location`
    #   attributes, the child entity's `method` attribute must match that
    #   of the parent entity exactly.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The HTTP status code of a response. It is a valid field for the API
    #   entity types of `RESPONSE`, `RESPONSE_HEADER`, and `RESPONSE_BODY`.
    #   The default value is `*` for any status code. When an applicable
    #   child entity inherits the content of an entity of the same type with
    #   more general specifications of the other `location` attributes, the
    #   child entity's `statusCode` attribute must match that of the parent
    #   entity exactly.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the targeted API entity. It is a valid and required
    #   field for the API entity types of `AUTHORIZER`, `MODEL`,
    #   `PATH_PARAMETER`, `QUERY_PARAMETER`, `REQUEST_HEADER`,
    #   `REQUEST_BODY` and `RESPONSE_HEADER`. It is an invalid field for any
    #   other entity type.
    #   @return [String]
    #
    class DocumentationPartLocation < Struct.new(
      :type,
      :path,
      :method,
      :status_code,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The collection of documentation parts of an API.
    #
    # @!attribute [rw] position
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The current page of elements from this collection.
    #   @return [Array<Types::DocumentationPart>]
    #
    class DocumentationParts < Struct.new(
      :position,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # A snapshot of the documentation of an API.
    #
    # @!attribute [rw] version
    #   The version identifier of the API documentation snapshot.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date when the API documentation snapshot is created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the API documentation snapshot.
    #   @return [String]
    #
    class DocumentationVersion < Struct.new(
      :version,
      :created_date,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The collection of documentation snapshots of an API.
    #
    # @!attribute [rw] position
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The current page of elements from this collection.
    #   @return [Array<Types::DocumentationVersion>]
    #
    class DocumentationVersions < Struct.new(
      :position,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a custom domain name as a user-friendly host name of an API
    # (RestApi).
    #
    # @!attribute [rw] domain_name
    #   The custom domain name as an API host name, for example,
    #   `my-api.example.com`.
    #   @return [String]
    #
    # @!attribute [rw] certificate_name
    #   The name of the certificate that will be used by edge-optimized
    #   endpoint for this domain name.
    #   @return [String]
    #
    # @!attribute [rw] certificate_arn
    #   The reference to an AWS-managed certificate that will be used by
    #   edge-optimized endpoint for this domain name. AWS Certificate
    #   Manager is the only supported source.
    #   @return [String]
    #
    # @!attribute [rw] certificate_upload_date
    #   The timestamp when the certificate that was used by edge-optimized
    #   endpoint for this domain name was uploaded.
    #   @return [Time]
    #
    # @!attribute [rw] regional_domain_name
    #   The domain name associated with the regional endpoint for this
    #   custom domain name. You set up this association by adding a DNS
    #   record that points the custom domain name to this regional domain
    #   name. The regional domain name is returned by API Gateway when you
    #   create a regional endpoint.
    #   @return [String]
    #
    # @!attribute [rw] regional_hosted_zone_id
    #   The region-specific Amazon Route 53 Hosted Zone ID of the regional
    #   endpoint. For more information, see Set up a Regional Custom Domain
    #   Name and AWS Regions and Endpoints for API Gateway.
    #   @return [String]
    #
    # @!attribute [rw] regional_certificate_name
    #   The name of the certificate that will be used for validating the
    #   regional domain name.
    #   @return [String]
    #
    # @!attribute [rw] regional_certificate_arn
    #   The reference to an AWS-managed certificate that will be used for
    #   validating the regional domain name. AWS Certificate Manager is the
    #   only supported source.
    #   @return [String]
    #
    # @!attribute [rw] distribution_domain_name
    #   The domain name of the Amazon CloudFront distribution associated
    #   with this custom domain name for an edge-optimized endpoint. You set
    #   up this association when adding a DNS record pointing the custom
    #   domain name to this distribution name. For more information about
    #   CloudFront distributions, see the Amazon CloudFront documentation.
    #   @return [String]
    #
    # @!attribute [rw] distribution_hosted_zone_id
    #   The region-agnostic Amazon Route 53 Hosted Zone ID of the
    #   edge-optimized endpoint. The valid value is `Z2FDTNDATAQYW2` for all
    #   the regions. For more information, see Set up a Regional Custom
    #   Domain Name and AWS Regions and Endpoints for API Gateway.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_configuration
    #   The endpoint configuration of this DomainName showing the endpoint
    #   types of the domain name.
    #   @return [Types::EndpointConfiguration]
    #
    # @!attribute [rw] domain_name_status
    #   The status of the DomainName migration. The valid values are
    #   `AVAILABLE` and `UPDATING`. If the status is `UPDATING`, the domain
    #   cannot be modified further until the existing operation is complete.
    #   If it is `AVAILABLE`, the domain can be updated.
    #   @return [String]
    #
    # @!attribute [rw] domain_name_status_message
    #   An optional text message containing detailed information about
    #   status of the DomainName migration.
    #   @return [String]
    #
    # @!attribute [rw] security_policy
    #   The Transport Layer Security (TLS) version + cipher suite for this
    #   DomainName. The valid values are `TLS_1_0` and `TLS_1_2`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The collection of tags. Each tag element is associated with a given
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] mutual_tls_authentication
    #   The mutual TLS authentication configuration for a custom domain
    #   name. If specified, API Gateway performs two-way authentication
    #   between the client and the server. Clients must present a trusted
    #   certificate to access your API.
    #   @return [Types::MutualTlsAuthentication]
    #
    # @!attribute [rw] ownership_verification_certificate_arn
    #   The ARN of the public certificate issued by ACM to validate
    #   ownership of your custom domain. Only required when configuring
    #   mutual TLS and using an ACM imported or private CA certificate ARN
    #   as the regionalCertificateArn.
    #   @return [String]
    #
    class DomainName < Struct.new(
      :domain_name,
      :certificate_name,
      :certificate_arn,
      :certificate_upload_date,
      :regional_domain_name,
      :regional_hosted_zone_id,
      :regional_certificate_name,
      :regional_certificate_arn,
      :distribution_domain_name,
      :distribution_hosted_zone_id,
      :endpoint_configuration,
      :domain_name_status,
      :domain_name_status_message,
      :security_policy,
      :tags,
      :mutual_tls_authentication,
      :ownership_verification_certificate_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a collection of DomainName resources.
    #
    # @!attribute [rw] position
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The current page of elements from this collection.
    #   @return [Array<Types::DomainName>]
    #
    class DomainNames < Struct.new(
      :position,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # The endpoint configuration to indicate the types of endpoints an API
    # (RestApi) or its custom domain name (DomainName) has.
    #
    # @!attribute [rw] types
    #   A list of endpoint types of an API (RestApi) or its custom domain
    #   name (DomainName). For an edge-optimized API and its custom domain
    #   name, the endpoint type is `"EDGE"`. For a regional API and its
    #   custom domain name, the endpoint type is `REGIONAL`. For a private
    #   API, the endpoint type is `PRIVATE`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_endpoint_ids
    #   A list of VpcEndpointIds of an API (RestApi) against which to create
    #   Route53 ALIASes. It is only supported for `PRIVATE` endpoint type.
    #   @return [Array<String>]
    #
    class EndpointConfiguration < Struct.new(
      :types,
      :vpc_endpoint_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # The binary blob response to GetExport, which contains the generated
    # SDK.
    #
    # @!attribute [rw] content_type
    #   The content-type header value in the HTTP response. This will
    #   correspond to a valid 'accept' type in the request.
    #   @return [String]
    #
    # @!attribute [rw] content_disposition
    #   The content-disposition header value in the HTTP response.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The binary blob response to GetExport, which contains the export.
    #   @return [String]
    #
    class ExportResponse < Struct.new(
      :content_type,
      :content_disposition,
      :body)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to flush authorizer cache entries on a specified stage.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the stage to flush.
    #   @return [String]
    #
    class FlushStageAuthorizersCacheRequest < Struct.new(
      :rest_api_id,
      :stage_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Requests API Gateway to flush a stage's cache.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the stage to flush its cache.
    #   @return [String]
    #
    class FlushStageCacheRequest < Struct.new(
      :rest_api_id,
      :stage_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A gateway response of a given response type and status code, with
    # optional response parameters and mapping templates.
    #
    # @!attribute [rw] response_type
    #   The response type of the associated GatewayResponse.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The HTTP status code for this GatewayResponse.
    #   @return [String]
    #
    # @!attribute [rw] response_parameters
    #   Response parameters (paths, query strings and headers) of the
    #   GatewayResponse as a string-to-string map of key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] response_templates
    #   Response templates of the GatewayResponse as a string-to-string map
    #   of key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] default_response
    #   A Boolean flag to indicate whether this GatewayResponse is the
    #   default gateway response (`true`) or not (`false`). A default
    #   gateway response is one generated by API Gateway without any
    #   customization by an API developer.
    #   @return [Boolean]
    #
    class GatewayResponse < Struct.new(
      :response_type,
      :status_code,
      :response_parameters,
      :response_templates,
      :default_response)
      SENSITIVE = []
      include Aws::Structure
    end

    # The collection of the GatewayResponse instances of a RestApi as a
    # `responseType`-to-GatewayResponse object map of key-value pairs. As
    # such, pagination is not supported for querying this collection.
    #
    # @!attribute [rw] position
    #   @return [String]
    #
    # @!attribute [rw] items
    #   Returns the entire collection, because of no pagination support.
    #   @return [Array<Types::GatewayResponse>]
    #
    class GatewayResponses < Struct.new(
      :position,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to generate a ClientCertificate resource.
    #
    # @!attribute [rw] description
    #   The description of the ClientCertificate.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value map of strings. The valid character set is
    #   \[a-zA-Z+-=.\_:/\]. The tag key can be up to 128 characters and must
    #   not start with `aws:`. The tag value can be up to 256 characters.
    #   @return [Hash<String,String>]
    #
    class GenerateClientCertificateRequest < Struct.new(
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Requests API Gateway to get information about the current Account
    # resource.
    #
    # @api private
    #
    class GetAccountRequest < Aws::EmptyStructure; end

    # A request to get information about the current ApiKey resource.
    #
    # @!attribute [rw] api_key
    #   The identifier of the ApiKey resource.
    #   @return [String]
    #
    # @!attribute [rw] include_value
    #   A boolean flag to specify whether (`true`) or not (`false`) the
    #   result contains the key value.
    #   @return [Boolean]
    #
    class GetApiKeyRequest < Struct.new(
      :api_key,
      :include_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to get information about the current ApiKeys resource.
    #
    # @!attribute [rw] position
    #   The current pagination position in the paged result set.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of returned results per page. The default value
    #   is 25 and the maximum value is 500.
    #   @return [Integer]
    #
    # @!attribute [rw] name_query
    #   The name of queried API keys.
    #   @return [String]
    #
    # @!attribute [rw] customer_id
    #   The identifier of a customer in AWS Marketplace or an external
    #   system, such as a developer portal.
    #   @return [String]
    #
    # @!attribute [rw] include_values
    #   A boolean flag to specify whether (`true`) or not (`false`) the
    #   result contains key values.
    #   @return [Boolean]
    #
    class GetApiKeysRequest < Struct.new(
      :position,
      :limit,
      :name_query,
      :customer_id,
      :include_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to describe an existing Authorizer resource.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_id
    #   The identifier of the Authorizer resource.
    #   @return [String]
    #
    class GetAuthorizerRequest < Struct.new(
      :rest_api_id,
      :authorizer_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to describe an existing Authorizers resource.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   The current pagination position in the paged result set.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of returned results per page. The default value
    #   is 25 and the maximum value is 500.
    #   @return [Integer]
    #
    class GetAuthorizersRequest < Struct.new(
      :rest_api_id,
      :position,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to describe a BasePathMapping resource.
    #
    # @!attribute [rw] domain_name
    #   The domain name of the BasePathMapping resource to be described.
    #   @return [String]
    #
    # @!attribute [rw] base_path
    #   The base path name that callers of the API must provide as part of
    #   the URL after the domain name. This value must be unique for all of
    #   the mappings across a single API. Specify '(none)' if you do not
    #   want callers to specify any base path name after the domain name.
    #   @return [String]
    #
    class GetBasePathMappingRequest < Struct.new(
      :domain_name,
      :base_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to get information about a collection of BasePathMapping
    # resources.
    #
    # @!attribute [rw] domain_name
    #   The domain name of a BasePathMapping resource.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   The current pagination position in the paged result set.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of returned results per page. The default value
    #   is 25 and the maximum value is 500.
    #   @return [Integer]
    #
    class GetBasePathMappingsRequest < Struct.new(
      :domain_name,
      :position,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to get information about the current ClientCertificate
    # resource.
    #
    # @!attribute [rw] client_certificate_id
    #   The identifier of the ClientCertificate resource to be described.
    #   @return [String]
    #
    class GetClientCertificateRequest < Struct.new(
      :client_certificate_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to get information about a collection of ClientCertificate
    # resources.
    #
    # @!attribute [rw] position
    #   The current pagination position in the paged result set.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of returned results per page. The default value
    #   is 25 and the maximum value is 500.
    #   @return [Integer]
    #
    class GetClientCertificatesRequest < Struct.new(
      :position,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Requests API Gateway to get information about a Deployment resource.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] deployment_id
    #   The identifier of the Deployment resource to get information about.
    #   @return [String]
    #
    # @!attribute [rw] embed
    #   A query parameter to retrieve the specified embedded resources of
    #   the returned Deployment resource in the response. In a REST API
    #   call, this `embed` parameter value is a list of comma-separated
    #   strings, as in `GET
    #   /restapis/\{restapi_id\}/deployments/\{deployment_id\}?embed=var1,var2`.
    #   The SDK and other platform-dependent libraries might use a different
    #   format for the list. Currently, this request supports only retrieval
    #   of the embedded API summary this way. Hence, the parameter value
    #   must be a single-valued list containing only the `"apisummary"`
    #   string. For example, `GET
    #   /restapis/\{restapi_id\}/deployments/\{deployment_id\}?embed=apisummary`.
    #   @return [Array<String>]
    #
    class GetDeploymentRequest < Struct.new(
      :rest_api_id,
      :deployment_id,
      :embed)
      SENSITIVE = []
      include Aws::Structure
    end

    # Requests API Gateway to get information about a Deployments
    # collection.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   The current pagination position in the paged result set.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of returned results per page. The default value
    #   is 25 and the maximum value is 500.
    #   @return [Integer]
    #
    class GetDeploymentsRequest < Struct.new(
      :rest_api_id,
      :position,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Gets a specified documentation part of a given API.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] documentation_part_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    class GetDocumentationPartRequest < Struct.new(
      :rest_api_id,
      :documentation_part_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Gets the documentation parts of an API. The result may be filtered by
    # the type, name, or path of API entities (targets).
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of API entities of the to-be-retrieved documentation parts.
    #   @return [String]
    #
    # @!attribute [rw] name_query
    #   The name of API entities of the to-be-retrieved documentation parts.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path of API entities of the to-be-retrieved documentation parts.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   The current pagination position in the paged result set.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of returned results per page. The default value
    #   is 25 and the maximum value is 500.
    #   @return [Integer]
    #
    # @!attribute [rw] location_status
    #   The status of the API documentation parts to retrieve. Valid values
    #   are `DOCUMENTED` for retrieving DocumentationPart resources with
    #   content and `UNDOCUMENTED` for DocumentationPart resources without
    #   content.
    #   @return [String]
    #
    class GetDocumentationPartsRequest < Struct.new(
      :rest_api_id,
      :type,
      :name_query,
      :path,
      :position,
      :limit,
      :location_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Gets a documentation snapshot of an API.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] documentation_version
    #   The version identifier of the to-be-retrieved documentation
    #   snapshot.
    #   @return [String]
    #
    class GetDocumentationVersionRequest < Struct.new(
      :rest_api_id,
      :documentation_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Gets the documentation versions of an API.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   The current pagination position in the paged result set.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of returned results per page. The default value
    #   is 25 and the maximum value is 500.
    #   @return [Integer]
    #
    class GetDocumentationVersionsRequest < Struct.new(
      :rest_api_id,
      :position,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to get the name of a DomainName resource.
    #
    # @!attribute [rw] domain_name
    #   The name of the DomainName resource.
    #   @return [String]
    #
    class GetDomainNameRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to describe a collection of DomainName resources.
    #
    # @!attribute [rw] position
    #   The current pagination position in the paged result set.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of returned results per page. The default value
    #   is 25 and the maximum value is 500.
    #   @return [Integer]
    #
    class GetDomainNamesRequest < Struct.new(
      :position,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request a new export of a RestApi for a particular Stage.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the Stage that will be exported.
    #   @return [String]
    #
    # @!attribute [rw] export_type
    #   The type of export. Acceptable values are 'oas30' for OpenAPI
    #   3.0.x and 'swagger' for Swagger/OpenAPI 2.0.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A key-value map of query string parameters that specify properties
    #   of the export, depending on the requested `exportType`. For
    #   `exportType` `oas30` and `swagger`, any combination of the following
    #   parameters are supported: `extensions='integrations'` or
    #   `extensions='apigateway'` will export the API with
    #   x-amazon-apigateway-integration extensions.
    #   `extensions='authorizers'` will export the API with
    #   x-amazon-apigateway-authorizer extensions. `postman` will export the
    #   API with Postman extensions, allowing for import to the Postman tool
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] accepts
    #   The content-type of the export, for example `application/json`.
    #   Currently `application/json` and `application/yaml` are supported
    #   for `exportType` of`oas30` and `swagger`. This should be specified
    #   in the `Accept` header for direct API requests.
    #   @return [String]
    #
    class GetExportRequest < Struct.new(
      :rest_api_id,
      :stage_name,
      :export_type,
      :parameters,
      :accepts)
      SENSITIVE = []
      include Aws::Structure
    end

    # Gets a GatewayResponse of a specified response type on the given
    # RestApi.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] response_type
    #   The response type of the associated GatewayResponse.
    #   @return [String]
    #
    class GetGatewayResponseRequest < Struct.new(
      :rest_api_id,
      :response_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Gets the GatewayResponses collection on the given RestApi. If an API
    # developer has not added any definitions for gateway responses, the
    # result will be the API Gateway-generated default GatewayResponses
    # collection for the supported response types.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   The current pagination position in the paged result set. The
    #   GatewayResponse collection does not support pagination and the
    #   position does not apply here.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of returned results per page. The default value
    #   is 25 and the maximum value is 500. The GatewayResponses collection
    #   does not support pagination and the limit does not apply here.
    #   @return [Integer]
    #
    class GetGatewayResponsesRequest < Struct.new(
      :rest_api_id,
      :position,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a request to get the integration configuration.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Specifies a get integration request's resource identifier
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   Specifies a get integration request's HTTP method.
    #   @return [String]
    #
    class GetIntegrationRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a get integration response request.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Specifies a get integration response request's resource identifier.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   Specifies a get integration response request's HTTP method.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   Specifies a get integration response request's status code.
    #   @return [String]
    #
    class GetIntegrationResponseRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :status_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to describe an existing Method resource.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The Resource identifier for the Method resource.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   Specifies the method request's HTTP method type.
    #   @return [String]
    #
    class GetMethodRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to describe a MethodResponse resource.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The Resource identifier for the MethodResponse resource.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   The HTTP verb of the Method resource.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The status code for the MethodResponse resource.
    #   @return [String]
    #
    class GetMethodResponseRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :status_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to list information about a model in an existing RestApi
    # resource.
    #
    # @!attribute [rw] rest_api_id
    #   The RestApi identifier under which the Model exists.
    #   @return [String]
    #
    # @!attribute [rw] model_name
    #   The name of the model as an identifier.
    #   @return [String]
    #
    # @!attribute [rw] flatten
    #   A query parameter of a Boolean value to resolve (`true`) all
    #   external model references and returns a flattened model schema or
    #   not (`false`) The default is `false`.
    #   @return [Boolean]
    #
    class GetModelRequest < Struct.new(
      :rest_api_id,
      :model_name,
      :flatten)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to generate a sample mapping template used to transform the
    # payload.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] model_name
    #   The name of the model for which to generate a template.
    #   @return [String]
    #
    class GetModelTemplateRequest < Struct.new(
      :rest_api_id,
      :model_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to list existing Models defined for a RestApi resource.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   The current pagination position in the paged result set.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of returned results per page. The default value
    #   is 25 and the maximum value is 500.
    #   @return [Integer]
    #
    class GetModelsRequest < Struct.new(
      :rest_api_id,
      :position,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Gets a RequestValidator of a given RestApi.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] request_validator_id
    #   The identifier of the RequestValidator to be retrieved.
    #   @return [String]
    #
    class GetRequestValidatorRequest < Struct.new(
      :rest_api_id,
      :request_validator_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Gets the RequestValidators collection of a given RestApi.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   The current pagination position in the paged result set.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of returned results per page. The default value
    #   is 25 and the maximum value is 500.
    #   @return [Integer]
    #
    class GetRequestValidatorsRequest < Struct.new(
      :rest_api_id,
      :position,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to list information about a resource.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier for the Resource resource.
    #   @return [String]
    #
    # @!attribute [rw] embed
    #   A query parameter to retrieve the specified resources embedded in
    #   the returned Resource representation in the response. This `embed`
    #   parameter value is a list of comma-separated strings. Currently, the
    #   request supports only retrieval of the embedded Method resources
    #   this way. The query parameter value must be a single-valued list and
    #   contain the `"methods"` string. For example, `GET
    #   /restapis/\{restapi_id\}/resources/\{resource_id\}?embed=methods`.
    #   @return [Array<String>]
    #
    class GetResourceRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :embed)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to list information about a collection of resources.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   The current pagination position in the paged result set.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of returned results per page. The default value
    #   is 25 and the maximum value is 500.
    #   @return [Integer]
    #
    # @!attribute [rw] embed
    #   A query parameter used to retrieve the specified resources embedded
    #   in the returned Resources resource in the response. This `embed`
    #   parameter value is a list of comma-separated strings. Currently, the
    #   request supports only retrieval of the embedded Method resources
    #   this way. The query parameter value must be a single-valued list and
    #   contain the `"methods"` string. For example, `GET
    #   /restapis/\{restapi_id\}/resources?embed=methods`.
    #   @return [Array<String>]
    #
    class GetResourcesRequest < Struct.new(
      :rest_api_id,
      :position,
      :limit,
      :embed)
      SENSITIVE = []
      include Aws::Structure
    end

    # The GET request to list an existing RestApi defined for your
    # collection.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    class GetRestApiRequest < Struct.new(
      :rest_api_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The GET request to list existing RestApis defined for your collection.
    #
    # @!attribute [rw] position
    #   The current pagination position in the paged result set.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of returned results per page. The default value
    #   is 25 and the maximum value is 500.
    #   @return [Integer]
    #
    class GetRestApisRequest < Struct.new(
      :position,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request a new generated client SDK for a RestApi and Stage.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the Stage that the SDK will use.
    #   @return [String]
    #
    # @!attribute [rw] sdk_type
    #   The language for the generated SDK. Currently `java`, `javascript`,
    #   `android`, `objectivec` (for iOS), `swift` (for iOS), and `ruby` are
    #   supported.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A string-to-string key-value map of query parameters
    #   `sdkType`-dependent properties of the SDK. For `sdkType` of
    #   `objectivec` or `swift`, a parameter named `classPrefix` is
    #   required. For `sdkType` of `android`, parameters named `groupId`,
    #   `artifactId`, `artifactVersion`, and `invokerPackage` are required.
    #   For `sdkType` of `java`, parameters named `serviceName` and
    #   `javaPackageName` are required.
    #   @return [Hash<String,String>]
    #
    class GetSdkRequest < Struct.new(
      :rest_api_id,
      :stage_name,
      :sdk_type,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Get an SdkType instance.
    #
    # @!attribute [rw] id
    #   The identifier of the queried SdkType instance.
    #   @return [String]
    #
    class GetSdkTypeRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Get the SdkTypes collection.
    #
    # @!attribute [rw] position
    #   The current pagination position in the paged result set.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of returned results per page. The default value
    #   is 25 and the maximum value is 500.
    #   @return [Integer]
    #
    class GetSdkTypesRequest < Struct.new(
      :position,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Requests API Gateway to get information about a Stage resource.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the Stage resource to get information about.
    #   @return [String]
    #
    class GetStageRequest < Struct.new(
      :rest_api_id,
      :stage_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Requests API Gateway to get information about one or more Stage
    # resources.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] deployment_id
    #   The stages' deployment identifiers.
    #   @return [String]
    #
    class GetStagesRequest < Struct.new(
      :rest_api_id,
      :deployment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Gets the Tags collection for a given resource.
    #
    # @!attribute [rw] resource_arn
    #   The ARN of a resource that can be tagged.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   (Not currently supported) The current pagination position in the
    #   paged result set.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   (Not currently supported) The maximum number of returned results per
    #   page. The default value is 25 and the maximum value is 500.
    #   @return [Integer]
    #
    class GetTagsRequest < Struct.new(
      :resource_arn,
      :position,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # The GET request to get a usage plan key of a given key identifier.
    #
    # @!attribute [rw] usage_plan_id
    #   The Id of the UsagePlan resource representing the usage plan
    #   containing the to-be-retrieved UsagePlanKey resource representing a
    #   plan customer.
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The key Id of the to-be-retrieved UsagePlanKey resource representing
    #   a plan customer.
    #   @return [String]
    #
    class GetUsagePlanKeyRequest < Struct.new(
      :usage_plan_id,
      :key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The GET request to get all the usage plan keys representing the API
    # keys added to a specified usage plan.
    #
    # @!attribute [rw] usage_plan_id
    #   The Id of the UsagePlan resource representing the usage plan
    #   containing the to-be-retrieved UsagePlanKey resource representing a
    #   plan customer.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   The current pagination position in the paged result set.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of returned results per page. The default value
    #   is 25 and the maximum value is 500.
    #   @return [Integer]
    #
    # @!attribute [rw] name_query
    #   A query parameter specifying the name of the to-be-returned usage
    #   plan keys.
    #   @return [String]
    #
    class GetUsagePlanKeysRequest < Struct.new(
      :usage_plan_id,
      :position,
      :limit,
      :name_query)
      SENSITIVE = []
      include Aws::Structure
    end

    # The GET request to get a usage plan of a given plan identifier.
    #
    # @!attribute [rw] usage_plan_id
    #   The identifier of the UsagePlan resource to be retrieved.
    #   @return [String]
    #
    class GetUsagePlanRequest < Struct.new(
      :usage_plan_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The GET request to get all the usage plans of the caller's account.
    #
    # @!attribute [rw] position
    #   The current pagination position in the paged result set.
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The identifier of the API key associated with the usage plans.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of returned results per page. The default value
    #   is 25 and the maximum value is 500.
    #   @return [Integer]
    #
    class GetUsagePlansRequest < Struct.new(
      :position,
      :key_id,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # The GET request to get the usage data of a usage plan in a specified
    # time interval.
    #
    # @!attribute [rw] usage_plan_id
    #   The Id of the usage plan associated with the usage data.
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The Id of the API key associated with the resultant usage data.
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The starting date (e.g., 2016-01-01) of the usage data.
    #   @return [String]
    #
    # @!attribute [rw] end_date
    #   The ending date (e.g., 2016-12-31) of the usage data.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   The current pagination position in the paged result set.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of returned results per page. The default value
    #   is 25 and the maximum value is 500.
    #   @return [Integer]
    #
    class GetUsageRequest < Struct.new(
      :usage_plan_id,
      :key_id,
      :start_date,
      :end_date,
      :position,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Gets a specified VPC link under the caller's account in a region.
    #
    # @!attribute [rw] vpc_link_id
    #   The identifier of the VpcLink. It is used in an Integration to
    #   reference this VpcLink.
    #   @return [String]
    #
    class GetVpcLinkRequest < Struct.new(
      :vpc_link_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Gets the VpcLinks collection under the caller's account in a selected
    # region.
    #
    # @!attribute [rw] position
    #   The current pagination position in the paged result set.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of returned results per page. The default value
    #   is 25 and the maximum value is 500.
    #   @return [Integer]
    #
    class GetVpcLinksRequest < Struct.new(
      :position,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # The POST request to import API keys from an external source, such as a
    # CSV-formatted file.
    #
    # @!attribute [rw] body
    #   The payload of the POST request to import API keys. For the payload
    #   format, see API Key File Format.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   A query parameter to specify the input format to imported API keys.
    #   Currently, only the `csv` format is supported.
    #   @return [String]
    #
    # @!attribute [rw] fail_on_warnings
    #   A query parameter to indicate whether to rollback ApiKey importation
    #   (`true`) or not (`false`) when error is encountered.
    #   @return [Boolean]
    #
    class ImportApiKeysRequest < Struct.new(
      :body,
      :format,
      :fail_on_warnings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Import documentation parts from an external (e.g., OpenAPI) definition
    # file.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] mode
    #   A query parameter to indicate whether to overwrite (`OVERWRITE`) any
    #   existing DocumentationParts definition or to merge (`MERGE`) the new
    #   definition into the existing one. The default value is `MERGE`.
    #   @return [String]
    #
    # @!attribute [rw] fail_on_warnings
    #   A query parameter to specify whether to rollback the documentation
    #   importation (`true`) or not (`false`) when a warning is encountered.
    #   The default value is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] body
    #   Raw byte array representing the to-be-imported documentation parts.
    #   To import from an OpenAPI file, this is a JSON object.
    #   @return [String]
    #
    class ImportDocumentationPartsRequest < Struct.new(
      :rest_api_id,
      :mode,
      :fail_on_warnings,
      :body)
      SENSITIVE = []
      include Aws::Structure
    end

    # A POST request to import an API to API Gateway using an input of an
    # API definition file.
    #
    # @!attribute [rw] fail_on_warnings
    #   A query parameter to indicate whether to rollback the API creation
    #   (`true`) or not (`false`) when a warning is encountered. The default
    #   value is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] parameters
    #   A key-value map of context-specific query string parameters
    #   specifying the behavior of different API importing operations. The
    #   following shows operation-specific parameters and their supported
    #   values.
    #
    #   To exclude DocumentationParts from the import, set `parameters` as
    #   `ignore=documentation`.
    #
    #   To configure the endpoint type, set `parameters` as
    #   `endpointConfigurationTypes=EDGE`,
    #   `endpointConfigurationTypes=REGIONAL`, or
    #   `endpointConfigurationTypes=PRIVATE`. The default endpoint type is
    #   `EDGE`.
    #
    #   To handle imported `basepath`, set `parameters` as
    #   `basepath=ignore`, `basepath=prepend` or `basepath=split`.
    #
    #   For example, the AWS CLI command to exclude documentation from the
    #   imported API is:
    #
    #   The AWS CLI command to set the regional endpoint on the imported API
    #   is:
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] body
    #   The POST request body containing external API definitions.
    #   Currently, only OpenAPI definition JSON/YAML files are supported.
    #   The maximum size of the API definition file is 6MB.
    #   @return [String]
    #
    class ImportRestApiRequest < Struct.new(
      :fail_on_warnings,
      :parameters,
      :body)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an HTTP, HTTP\_PROXY, AWS, AWS\_PROXY, or Mock integration.
    #
    # @!attribute [rw] type
    #   Specifies an API method integration type. The valid value is one of
    #   the following:
    #
    #   For the HTTP and HTTP proxy integrations, each integration can
    #   specify a protocol (`http/https`), port and path. Standard 80 and
    #   443 ports are supported as well as custom ports above 1024. An HTTP
    #   or HTTP proxy integration with a `connectionType` of `VPC_LINK` is
    #   referred to as a private integration and uses a VpcLink to connect
    #   API Gateway to a network load balancer of a VPC.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   Specifies the integration's HTTP method type.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   Specifies Uniform Resource Identifier (URI) of the integration
    #   endpoint.
    #
    #   For `HTTP` or `HTTP_PROXY` integrations, the URI must be a fully
    #   formed, encoded HTTP(S) URL according to the RFC-3986 specification,
    #   for either standard integration, where `connectionType` is not
    #   `VPC_LINK`, or private integration, where `connectionType` is
    #   `VPC_LINK`. For a private HTTP integration, the URI is not used for
    #   routing. For `AWS` or `AWS_PROXY` integrations, the URI is of the
    #   form
    #   `arn:aws:apigateway:\{region\}:\{subdomain.service|service\}:path|action/\{service_api\}`.
    #   Here, \\\{Region\\} is the API Gateway region (e.g., us-east-1);
    #   \\\{service\\} is the name of the integrated Amazon Web Services
    #   service (e.g., s3); and \\\{subdomain\\} is a designated subdomain
    #   supported by certain Amazon Web Services service for fast host-name
    #   lookup. action can be used for an Amazon Web Services service
    #   action-based API, using an
    #   Action=\\\{name\\}&amp;\\\{p1\\}=\\\{v1\\}&amp;p2=\\\{v2\\}... query
    #   string. The ensuing \\\{service\_api\\} refers to a supported action
    #   \\\{name\\} plus any required input parameters. Alternatively, path
    #   can be used for an AWS service path-based API. The ensuing
    #   service\_api refers to the path to an Amazon Web Services service
    #   resource, including the region of the integrated Amazon Web Services
    #   service, if applicable. For example, for integration with the S3 API
    #   of GetObject, the uri can be either
    #   `arn:aws:apigateway:us-west-2:s3:action/GetObject&Bucket=\{bucket\}&Key=\{key\}`
    #   or `arn:aws:apigateway:us-west-2:s3:path/\{bucket\}/\{key\}`
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   The type of the network connection to the integration endpoint. The
    #   valid value is `INTERNET` for connections through the public
    #   routable internet or `VPC_LINK` for private connections between API
    #   Gateway and a network load balancer in a VPC. The default value is
    #   `INTERNET`.
    #   @return [String]
    #
    # @!attribute [rw] connection_id
    #   The ID of the VpcLink used for the integration when
    #   `connectionType=VPC_LINK` and undefined, otherwise.
    #   @return [String]
    #
    # @!attribute [rw] credentials
    #   Specifies the credentials required for the integration, if any. For
    #   AWS integrations, three options are available. To specify an IAM
    #   Role for API Gateway to assume, use the role's Amazon Resource Name
    #   (ARN). To require that the caller's identity be passed through from
    #   the request, specify the string `arn:aws:iam::*:user/*`. To use
    #   resource-based permissions on supported AWS services, specify null.
    #   @return [String]
    #
    # @!attribute [rw] request_parameters
    #   A key-value map specifying request parameters that are passed from
    #   the method request to the back end. The key is an integration
    #   request parameter name and the associated value is a method request
    #   parameter value or static value that must be enclosed within single
    #   quotes and pre-encoded as required by the back end. The method
    #   request parameter value must match the pattern of
    #   `method.request.\{location\}.\{name\}`, where `location` is
    #   `querystring`, `path`, or `header` and `name` must be a valid and
    #   unique method request parameter name.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] request_templates
    #   Represents a map of Velocity templates that are applied on the
    #   request payload based on the value of the Content-Type header sent
    #   by the client. The content type value is the key in this map, and
    #   the template (as a String) is the value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] passthrough_behavior
    #   Specifies how the method request body of an unmapped content type
    #   will be passed through the integration request to the back end
    #   without transformation. A content type is unmapped if no mapping
    #   template is defined in the integration or the content type does not
    #   match any of the mapped content types, as specified in
    #   `requestTemplates`. The valid value is one of the following:
    #   `WHEN_NO_MATCH`: passes the method request body through the
    #   integration request to the back end without transformation when the
    #   method request content type does not match any content type
    #   associated with the mapping templates defined in the integration
    #   request. `WHEN_NO_TEMPLATES`: passes the method request body through
    #   the integration request to the back end without transformation when
    #   no mapping template is defined in the integration request. If a
    #   template is defined when this option is selected, the method request
    #   of an unmapped content-type will be rejected with an HTTP 415
    #   Unsupported Media Type response. `NEVER`: rejects the method request
    #   with an HTTP 415 Unsupported Media Type response when either the
    #   method request content type does not match any content type
    #   associated with the mapping templates defined in the integration
    #   request or no mapping template is defined in the integration
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] content_handling
    #   Specifies how to handle request payload content type conversions.
    #   Supported values are `CONVERT_TO_BINARY` and `CONVERT_TO_TEXT`, with
    #   the following behaviors:
    #
    #   If this property is not defined, the request payload will be passed
    #   through from the method request to integration request without
    #   modification, provided that the `passthroughBehavior` is configured
    #   to support payload pass-through.
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_millis
    #   Custom timeout between 50 and 29,000 milliseconds. The default value
    #   is 29,000 milliseconds or 29 seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] cache_namespace
    #   Specifies a group of related cached parameters. By default, API
    #   Gateway uses the resource ID as the `cacheNamespace`. You can
    #   specify the same `cacheNamespace` across resources to return the
    #   same cached data for requests to different resources.
    #   @return [String]
    #
    # @!attribute [rw] cache_key_parameters
    #   A list of request parameters whose values API Gateway caches. To be
    #   valid values for `cacheKeyParameters`, these parameters must also be
    #   specified for Method `requestParameters`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] integration_responses
    #   Specifies the integration's responses.
    #   @return [Hash<String,Types::IntegrationResponse>]
    #
    # @!attribute [rw] tls_config
    #   Specifies the TLS configuration for an integration.
    #   @return [Types::TlsConfig]
    #
    class Integration < Struct.new(
      :type,
      :http_method,
      :uri,
      :connection_type,
      :connection_id,
      :credentials,
      :request_parameters,
      :request_templates,
      :passthrough_behavior,
      :content_handling,
      :timeout_in_millis,
      :cache_namespace,
      :cache_key_parameters,
      :integration_responses,
      :tls_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an integration response. The status code must map to an
    # existing MethodResponse, and parameters and templates can be used to
    # transform the back-end response.
    #
    # @!attribute [rw] status_code
    #   Specifies the status code that is used to map the integration
    #   response to an existing MethodResponse.
    #   @return [String]
    #
    # @!attribute [rw] selection_pattern
    #   Specifies the regular expression (regex) pattern used to choose an
    #   integration response based on the response from the back end. For
    #   example, if the success response returns nothing and the error
    #   response returns some string, you could use the `.+` regex to match
    #   error response. However, make sure that the error response does not
    #   contain any newline (`\n`) character in such cases. If the back end
    #   is an AWS Lambda function, the AWS Lambda function error header is
    #   matched. For all other HTTP and AWS back ends, the HTTP status code
    #   is matched.
    #   @return [String]
    #
    # @!attribute [rw] response_parameters
    #   A key-value map specifying response parameters that are passed to
    #   the method response from the back end. The key is a method response
    #   header parameter name and the mapped value is an integration
    #   response header value, a static value enclosed within a pair of
    #   single quotes, or a JSON expression from the integration response
    #   body. The mapping key must match the pattern of
    #   `method.response.header.\{name\}`, where `name` is a valid and
    #   unique header name. The mapped non-static value must match the
    #   pattern of `integration.response.header.\{name\}` or
    #   `integration.response.body.\{JSON-expression\}`, where `name` is a
    #   valid and unique response header name and `JSON-expression` is a
    #   valid JSON expression without the `$` prefix.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] response_templates
    #   Specifies the templates used to transform the integration response
    #   body. Response templates are represented as a key/value map, with a
    #   content-type as the key and a template as the value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] content_handling
    #   Specifies how to handle response payload content type conversions.
    #   Supported values are `CONVERT_TO_BINARY` and `CONVERT_TO_TEXT`, with
    #   the following behaviors:
    #
    #   If this property is not defined, the response payload will be passed
    #   through from the integration response to the method response without
    #   modification.
    #   @return [String]
    #
    class IntegrationResponse < Struct.new(
      :status_code,
      :selection_pattern,
      :response_parameters,
      :response_templates,
      :content_handling)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request exceeded the rate limit. Retry after the specified time
    # period.
    #
    # @!attribute [rw] retry_after_seconds
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class LimitExceededException < Struct.new(
      :retry_after_seconds,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a client-facing interface by which the client calls the API
    # to access back-end resources. A Method resource is integrated with an
    # Integration resource. Both consist of a request and one or more
    # responses. The method request takes the client input that is passed to
    # the back end through the integration request. A method response
    # returns the output from the back end to the client through an
    # integration response. A method request is embodied in a Method
    # resource, whereas an integration request is embodied in an Integration
    # resource. On the other hand, a method response is represented by a
    # MethodResponse resource, whereas an integration response is
    # represented by an IntegrationResponse resource.
    #
    # @!attribute [rw] http_method
    #   The method's HTTP verb.
    #   @return [String]
    #
    # @!attribute [rw] authorization_type
    #   The method's authorization type. Valid values are `NONE` for open
    #   access, `AWS_IAM` for using AWS IAM permissions, `CUSTOM` for using
    #   a custom authorizer, or `COGNITO_USER_POOLS` for using a Cognito
    #   user pool.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_id
    #   The identifier of an Authorizer to use on this method. The
    #   `authorizationType` must be `CUSTOM`.
    #   @return [String]
    #
    # @!attribute [rw] api_key_required
    #   A boolean flag specifying whether a valid ApiKey is required to
    #   invoke this method.
    #   @return [Boolean]
    #
    # @!attribute [rw] request_validator_id
    #   The identifier of a RequestValidator for request validation.
    #   @return [String]
    #
    # @!attribute [rw] operation_name
    #   A human-friendly operation identifier for the method. For example,
    #   you can assign the `operationName` of `ListPets` for the `GET /pets`
    #   method in the `PetStore` example.
    #   @return [String]
    #
    # @!attribute [rw] request_parameters
    #   A key-value map defining required or optional method request
    #   parameters that can be accepted by API Gateway. A key is a method
    #   request parameter name matching the pattern of
    #   `method.request.\{location\}.\{name\}`, where `location` is
    #   `querystring`, `path`, or `header` and `name` is a valid and unique
    #   parameter name. The value associated with the key is a Boolean flag
    #   indicating whether the parameter is required (`true`) or optional
    #   (`false`). The method request parameter names defined here are
    #   available in Integration to be mapped to integration request
    #   parameters or templates.
    #   @return [Hash<String,Boolean>]
    #
    # @!attribute [rw] request_models
    #   A key-value map specifying data schemas, represented by Model
    #   resources, (as the mapped value) of the request payloads of given
    #   content types (as the mapping key).
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] method_responses
    #   Gets a method response associated with a given HTTP status code.
    #   @return [Hash<String,Types::MethodResponse>]
    #
    # @!attribute [rw] method_integration
    #   Gets the method's integration responsible for passing the
    #   client-submitted request to the back end and performing necessary
    #   transformations to make the request compliant with the back end.
    #   @return [Types::Integration]
    #
    # @!attribute [rw] authorization_scopes
    #   A list of authorization scopes configured on the method. The scopes
    #   are used with a `COGNITO_USER_POOLS` authorizer to authorize the
    #   method invocation. The authorization works by matching the method
    #   scopes against the scopes parsed from the access token in the
    #   incoming request. The method invocation is authorized if any method
    #   scopes matches a claimed scope in the access token. Otherwise, the
    #   invocation is not authorized. When the method scope is configured,
    #   the client must provide an access token instead of an identity token
    #   for authorization purposes.
    #   @return [Array<String>]
    #
    class Method < Struct.new(
      :http_method,
      :authorization_type,
      :authorizer_id,
      :api_key_required,
      :request_validator_id,
      :operation_name,
      :request_parameters,
      :request_models,
      :method_responses,
      :method_integration,
      :authorization_scopes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a method response of a given HTTP status code returned to
    # the client. The method response is passed from the back end through
    # the associated integration response that can be transformed using a
    # mapping template.
    #
    # @!attribute [rw] status_code
    #   The method response's status code.
    #   @return [String]
    #
    # @!attribute [rw] response_parameters
    #   A key-value map specifying required or optional response parameters
    #   that API Gateway can send back to the caller. A key defines a method
    #   response header and the value specifies whether the associated
    #   method response header is required or not. The expression of the key
    #   must match the pattern `method.response.header.\{name\}`, where
    #   `name` is a valid and unique header name. API Gateway passes certain
    #   integration response data to the method response headers specified
    #   here according to the mapping you prescribe in the API's
    #   IntegrationResponse. The integration response data that can be
    #   mapped include an integration response header expressed in
    #   `integration.response.header.\{name\}`, a static value enclosed
    #   within a pair of single quotes (e.g., `'application/json'`), or a
    #   JSON expression from the back-end response payload in the form of
    #   `integration.response.body.\{JSON-expression\}`, where
    #   `JSON-expression` is a valid JSON expression without the `$`
    #   prefix.)
    #   @return [Hash<String,Boolean>]
    #
    # @!attribute [rw] response_models
    #   Specifies the Model resources used for the response's content-type.
    #   Response models are represented as a key/value map, with a
    #   content-type as the key and a Model name as the value.
    #   @return [Hash<String,String>]
    #
    class MethodResponse < Struct.new(
      :status_code,
      :response_parameters,
      :response_models)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the method setting properties.
    #
    # @!attribute [rw] metrics_enabled
    #   Specifies whether Amazon CloudWatch metrics are enabled for this
    #   method. The PATCH path for this setting is
    #   `/\{method_setting_key\}/metrics/enabled`, and the value is a
    #   Boolean.
    #   @return [Boolean]
    #
    # @!attribute [rw] logging_level
    #   Specifies the logging level for this method, which affects the log
    #   entries pushed to Amazon CloudWatch Logs. The PATCH path for this
    #   setting is `/\{method_setting_key\}/logging/loglevel`, and the
    #   available levels are `OFF`, `ERROR`, and `INFO`. Choose `ERROR` to
    #   write only error-level entries to CloudWatch Logs, or choose `INFO`
    #   to include all `ERROR` events as well as extra informational events.
    #   @return [String]
    #
    # @!attribute [rw] data_trace_enabled
    #   Specifies whether data trace logging is enabled for this method,
    #   which affects the log entries pushed to Amazon CloudWatch Logs. The
    #   PATCH path for this setting is
    #   `/\{method_setting_key\}/logging/dataTrace`, and the value is a
    #   Boolean.
    #   @return [Boolean]
    #
    # @!attribute [rw] throttling_burst_limit
    #   Specifies the throttling burst limit. The PATCH path for this
    #   setting is `/\{method_setting_key\}/throttling/burstLimit`, and the
    #   value is an integer.
    #   @return [Integer]
    #
    # @!attribute [rw] throttling_rate_limit
    #   Specifies the throttling rate limit. The PATCH path for this setting
    #   is `/\{method_setting_key\}/throttling/rateLimit`, and the value is
    #   a double.
    #   @return [Float]
    #
    # @!attribute [rw] caching_enabled
    #   Specifies whether responses should be cached and returned for
    #   requests. A cache cluster must be enabled on the stage for responses
    #   to be cached. The PATCH path for this setting is
    #   `/\{method_setting_key\}/caching/enabled`, and the value is a
    #   Boolean.
    #   @return [Boolean]
    #
    # @!attribute [rw] cache_ttl_in_seconds
    #   Specifies the time to live (TTL), in seconds, for cached responses.
    #   The higher the TTL, the longer the response will be cached. The
    #   PATCH path for this setting is
    #   `/\{method_setting_key\}/caching/ttlInSeconds`, and the value is an
    #   integer.
    #   @return [Integer]
    #
    # @!attribute [rw] cache_data_encrypted
    #   Specifies whether the cached responses are encrypted. The PATCH path
    #   for this setting is `/\{method_setting_key\}/caching/dataEncrypted`,
    #   and the value is a Boolean.
    #   @return [Boolean]
    #
    # @!attribute [rw] require_authorization_for_cache_control
    #   Specifies whether authorization is required for a cache invalidation
    #   request. The PATCH path for this setting is
    #   `/\{method_setting_key\}/caching/requireAuthorizationForCacheControl`,
    #   and the value is a Boolean.
    #   @return [Boolean]
    #
    # @!attribute [rw] unauthorized_cache_control_header_strategy
    #   Specifies how to handle unauthorized requests for cache
    #   invalidation. The PATCH path for this setting is
    #   `/\{method_setting_key\}/caching/unauthorizedCacheControlHeaderStrategy`,
    #   and the available values are `FAIL_WITH_403`,
    #   `SUCCEED_WITH_RESPONSE_HEADER`, `SUCCEED_WITHOUT_RESPONSE_HEADER`.
    #   @return [String]
    #
    class MethodSetting < Struct.new(
      :metrics_enabled,
      :logging_level,
      :data_trace_enabled,
      :throttling_burst_limit,
      :throttling_rate_limit,
      :caching_enabled,
      :cache_ttl_in_seconds,
      :cache_data_encrypted,
      :require_authorization_for_cache_control,
      :unauthorized_cache_control_header_strategy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a summary of a Method resource, given a particular date and
    # time.
    #
    # @!attribute [rw] authorization_type
    #   The method's authorization type. Valid values are `NONE` for open
    #   access, `AWS_IAM` for using AWS IAM permissions, `CUSTOM` for using
    #   a custom authorizer, or `COGNITO_USER_POOLS` for using a Cognito
    #   user pool.
    #   @return [String]
    #
    # @!attribute [rw] api_key_required
    #   Specifies whether the method requires a valid ApiKey.
    #   @return [Boolean]
    #
    class MethodSnapshot < Struct.new(
      :authorization_type,
      :api_key_required)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the data structure of a method's request or response
    # payload.
    #
    # @!attribute [rw] id
    #   The identifier for the model resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the model. Must be an alphanumeric string.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the model.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The schema for the model. For `application/json` models, this should
    #   be JSON schema draft 4 model. Do not include "\\*/" characters in
    #   the description of any properties because such "\\*/" characters
    #   may be interpreted as the closing marker for comments in some
    #   languages, such as Java or JavaScript, causing the installation of
    #   your API's SDK generated by API Gateway to fail.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The content-type for the model.
    #   @return [String]
    #
    class Model < Struct.new(
      :id,
      :name,
      :description,
      :schema,
      :content_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a collection of Model resources.
    #
    # @!attribute [rw] position
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The current page of elements from this collection.
    #   @return [Array<Types::Model>]
    #
    class Models < Struct.new(
      :position,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # The mutual TLS authentication configuration for a custom domain name.
    # If specified, API Gateway performs two-way authentication between the
    # client and the server. Clients must present a trusted certificate to
    # access your API.
    #
    # @!attribute [rw] truststore_uri
    #   An Amazon S3 URL that specifies the truststore for mutual TLS
    #   authentication, for example `s3://bucket-name/key-name`. The
    #   truststore can contain certificates from public or private
    #   certificate authorities. To update the truststore, upload a new
    #   version to S3, and then update your custom domain name to use the
    #   new version. To update the truststore, you must have permissions to
    #   access the S3 object.
    #   @return [String]
    #
    # @!attribute [rw] truststore_version
    #   The version of the S3 object that contains your truststore. To
    #   specify a version, you must have versioning enabled for the S3
    #   bucket.
    #   @return [String]
    #
    # @!attribute [rw] truststore_warnings
    #   A list of warnings that API Gateway returns while processing your
    #   truststore. Invalid certificates produce warnings. Mutual TLS is
    #   still enabled, but some clients might not be able to access your
    #   API. To resolve warnings, upload a new truststore to S3, and then
    #   update you domain name to use the new version.
    #   @return [Array<String>]
    #
    class MutualTlsAuthentication < Struct.new(
      :truststore_uri,
      :truststore_version,
      :truststore_warnings)
      SENSITIVE = []
      include Aws::Structure
    end

    # The mutual TLS authentication configuration for a custom domain name.
    # If specified, API Gateway performs two-way authentication between the
    # client and the server. Clients must present a trusted certificate to
    # access your API.
    #
    # @!attribute [rw] truststore_uri
    #   An Amazon S3 URL that specifies the truststore for mutual TLS
    #   authentication, for example `s3://bucket-name/key-name`. The
    #   truststore can contain certificates from public or private
    #   certificate authorities. To update the truststore, upload a new
    #   version to S3, and then update your custom domain name to use the
    #   new version. To update the truststore, you must have permissions to
    #   access the S3 object.
    #   @return [String]
    #
    # @!attribute [rw] truststore_version
    #   The version of the S3 object that contains your truststore. To
    #   specify a version, you must have versioning enabled for the S3
    #   bucket
    #   @return [String]
    #
    class MutualTlsAuthenticationInput < Struct.new(
      :truststore_uri,
      :truststore_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested resource is not found. Make sure that the request URI is
    # correct.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class NotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # For more information about supported patch operations, see [Patch
    # Operations][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html
    #
    # @!attribute [rw] op
    #   An update operation to be performed with this PATCH request. The
    #   valid value can be add, remove, replace or copy. Not all valid
    #   operations are supported for a given resource. Support of the
    #   operations depends on specific operational contexts. Attempts to
    #   apply an unsupported operation on a resource will return an error
    #   message..
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The op operation's target, as identified by a JSON Pointer value
    #   that references a location within the targeted resource. For
    #   example, if the target resource has an updateable property of
    #   \\\{"name":"value"\\}, the path for this property is /name. If
    #   the name property value is a JSON object (e.g., \\\{"name":
    #   \\\{"child/name": "child-value"\\}\\}), the path for the
    #   child/name property will be /name/child~1name. Any slash ("/")
    #   character appearing in path names must be escaped with "~1", as
    #   shown in the example above. Each op operation can have only one path
    #   associated with it.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The new target value of the update operation. It is applicable for
    #   the add or replace operation. When using AWS CLI to update a
    #   property of a JSON value, enclose the JSON object with a pair of
    #   single quotes in a Linux shell, e.g., '\\\{"a": ...\\}'.
    #   @return [String]
    #
    # @!attribute [rw] from
    #   The copy update operation's source as identified by a JSON-Pointer
    #   value referencing the location within the targeted resource to copy
    #   the value from. For example, to promote a canary deployment, you
    #   copy the canary deployment ID to the affiliated deployment ID by
    #   calling a PATCH request on a Stage resource with "op":"copy",
    #   "from":"/canarySettings/deploymentId" and
    #   "path":"/deploymentId".
    #   @return [String]
    #
    class PatchOperation < Struct.new(
      :op,
      :path,
      :value,
      :from)
      SENSITIVE = []
      include Aws::Structure
    end

    # Creates a customization of a GatewayResponse of a specified response
    # type and status code on the given RestApi.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] response_type
    #   The response type of the associated GatewayResponse
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The HTTP status code of the GatewayResponse.
    #   @return [String]
    #
    # @!attribute [rw] response_parameters
    #   Response parameters (paths, query strings and headers) of the
    #   GatewayResponse as a string-to-string map of key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] response_templates
    #   Response templates of the GatewayResponse as a string-to-string map
    #   of key-value pairs.
    #   @return [Hash<String,String>]
    #
    class PutGatewayResponseRequest < Struct.new(
      :rest_api_id,
      :response_type,
      :status_code,
      :response_parameters,
      :response_templates)
      SENSITIVE = []
      include Aws::Structure
    end

    # Sets up a method's integration.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Specifies a put integration request's resource ID.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   Specifies the HTTP method for the integration.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Specifies a put integration input's type.
    #   @return [String]
    #
    # @!attribute [rw] integration_http_method
    #   The HTTP method for the integration.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   Specifies Uniform Resource Identifier (URI) of the integration
    #   endpoint. For HTTP or `HTTP_PROXY` integrations, the URI must be a
    #   fully formed, encoded HTTP(S) URL according to the RFC-3986
    #   specification, for either standard integration, where
    #   `connectionType` is not `VPC_LINK`, or private integration, where
    #   `connectionType` is `VPC_LINK`. For a private HTTP integration, the
    #   URI is not used for routing. For `AWS` or `AWS_PROXY` integrations,
    #   the URI is of the form
    #   `arn:aws:apigateway:\{region\}:\{subdomain.service|service\}:path|action/\{service_api`\\}.
    #   Here, \\\{Region\\} is the API Gateway region (e.g., us-east-1);
    #   \\\{service\\} is the name of the integrated Amazon Web Services
    #   service (e.g., s3); and \\\{subdomain\\} is a designated subdomain
    #   supported by certain Amazon Web Services service for fast host-name
    #   lookup. action can be used for an Amazon Web Services service
    #   action-based API, using an
    #   Action=\\\{name\\}&amp;\\\{p1\\}=\\\{v1\\}&amp;p2=\\\{v2\\}... query
    #   string. The ensuing \\\{service\_api\\} refers to a supported action
    #   \\\{name\\} plus any required input parameters. Alternatively, path
    #   can be used for an Amazon Web Services service path-based API. The
    #   ensuing service\_api refers to the path to an Amazon Web Services
    #   service resource, including the region of the integrated Amazon Web
    #   Services service, if applicable. For example, for integration with
    #   the S3 API of `GetObject`, the `uri` can be either
    #   `arn:aws:apigateway:us-west-2:s3:action/GetObject&Bucket=\{bucket\}&Key=\{key\}`
    #   or `arn:aws:apigateway:us-west-2:s3:path/\{bucket\}/\{key\}`.
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   The type of the network connection to the integration endpoint. The
    #   valid value is `INTERNET` for connections through the public
    #   routable internet or `VPC_LINK` for private connections between API
    #   Gateway and a network load balancer in a VPC. The default value is
    #   `INTERNET`.
    #   @return [String]
    #
    # @!attribute [rw] connection_id
    #   The ID of the VpcLink used for the integration. Specify this value
    #   only if you specify `VPC_LINK` as the connection type.
    #   @return [String]
    #
    # @!attribute [rw] credentials
    #   Specifies whether credentials are required for a put integration.
    #   @return [String]
    #
    # @!attribute [rw] request_parameters
    #   A key-value map specifying request parameters that are passed from
    #   the method request to the back end. The key is an integration
    #   request parameter name and the associated value is a method request
    #   parameter value or static value that must be enclosed within single
    #   quotes and pre-encoded as required by the back end. The method
    #   request parameter value must match the pattern of
    #   `method.request.\{location\}.\{name\}`, where `location` is
    #   `querystring`, `path`, or `header` and `name` must be a valid and
    #   unique method request parameter name.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] request_templates
    #   Represents a map of Velocity templates that are applied on the
    #   request payload based on the value of the Content-Type header sent
    #   by the client. The content type value is the key in this map, and
    #   the template (as a String) is the value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] passthrough_behavior
    #   Specifies the pass-through behavior for incoming requests based on
    #   the Content-Type header in the request, and the available mapping
    #   templates specified as the `requestTemplates` property on the
    #   Integration resource. There are three valid values: `WHEN_NO_MATCH`,
    #   `WHEN_NO_TEMPLATES`, and `NEVER`.
    #   @return [String]
    #
    # @!attribute [rw] cache_namespace
    #   Specifies a group of related cached parameters. By default, API
    #   Gateway uses the resource ID as the `cacheNamespace`. You can
    #   specify the same `cacheNamespace` across resources to return the
    #   same cached data for requests to different resources.
    #   @return [String]
    #
    # @!attribute [rw] cache_key_parameters
    #   A list of request parameters whose values API Gateway caches. To be
    #   valid values for `cacheKeyParameters`, these parameters must also be
    #   specified for Method `requestParameters`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] content_handling
    #   Specifies how to handle request payload content type conversions.
    #   Supported values are `CONVERT_TO_BINARY` and `CONVERT_TO_TEXT`, with
    #   the following behaviors:
    #
    #   If this property is not defined, the request payload will be passed
    #   through from the method request to integration request without
    #   modification, provided that the `passthroughBehavior` is configured
    #   to support payload pass-through.
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_millis
    #   Custom timeout between 50 and 29,000 milliseconds. The default value
    #   is 29,000 milliseconds or 29 seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] tls_config
    #   Specifies the TLS configuration for an integration.
    #   @return [Types::TlsConfig]
    #
    class PutIntegrationRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :type,
      :integration_http_method,
      :uri,
      :connection_type,
      :connection_id,
      :credentials,
      :request_parameters,
      :request_templates,
      :passthrough_behavior,
      :cache_namespace,
      :cache_key_parameters,
      :content_handling,
      :timeout_in_millis,
      :tls_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a put integration response request.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Specifies a put integration response request's resource identifier.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   Specifies a put integration response request's HTTP method.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   Specifies the status code that is used to map the integration
    #   response to an existing MethodResponse.
    #   @return [String]
    #
    # @!attribute [rw] selection_pattern
    #   Specifies the selection pattern of a put integration response.
    #   @return [String]
    #
    # @!attribute [rw] response_parameters
    #   A key-value map specifying response parameters that are passed to
    #   the method response from the back end. The key is a method response
    #   header parameter name and the mapped value is an integration
    #   response header value, a static value enclosed within a pair of
    #   single quotes, or a JSON expression from the integration response
    #   body. The mapping key must match the pattern of
    #   `method.response.header.\{name\}`, where `name` is a valid and
    #   unique header name. The mapped non-static value must match the
    #   pattern of `integration.response.header.\{name\}` or
    #   `integration.response.body.\{JSON-expression\}`, where `name` must
    #   be a valid and unique response header name and `JSON-expression` a
    #   valid JSON expression without the `$` prefix.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] response_templates
    #   Specifies a put integration response's templates.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] content_handling
    #   Specifies how to handle response payload content type conversions.
    #   Supported values are `CONVERT_TO_BINARY` and `CONVERT_TO_TEXT`, with
    #   the following behaviors:
    #
    #   If this property is not defined, the response payload will be passed
    #   through from the integration response to the method response without
    #   modification.
    #   @return [String]
    #
    class PutIntegrationResponseRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :status_code,
      :selection_pattern,
      :response_parameters,
      :response_templates,
      :content_handling)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to add a method to an existing Resource resource.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The Resource identifier for the new Method resource.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   Specifies the method request's HTTP method type.
    #   @return [String]
    #
    # @!attribute [rw] authorization_type
    #   The method's authorization type. Valid values are `NONE` for open
    #   access, `AWS_IAM` for using AWS IAM permissions, `CUSTOM` for using
    #   a custom authorizer, or `COGNITO_USER_POOLS` for using a Cognito
    #   user pool.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_id
    #   Specifies the identifier of an Authorizer to use on this Method, if
    #   the type is CUSTOM or COGNITO\_USER\_POOLS. The authorizer
    #   identifier is generated by API Gateway when you created the
    #   authorizer.
    #   @return [String]
    #
    # @!attribute [rw] api_key_required
    #   Specifies whether the method required a valid ApiKey.
    #   @return [Boolean]
    #
    # @!attribute [rw] operation_name
    #   A human-friendly operation identifier for the method. For example,
    #   you can assign the `operationName` of `ListPets` for the `GET /pets`
    #   method in the `PetStore` example.
    #   @return [String]
    #
    # @!attribute [rw] request_parameters
    #   A key-value map defining required or optional method request
    #   parameters that can be accepted by API Gateway. A key defines a
    #   method request parameter name matching the pattern of
    #   `method.request.\{location\}.\{name\}`, where `location` is
    #   `querystring`, `path`, or `header` and `name` is a valid and unique
    #   parameter name. The value associated with the key is a Boolean flag
    #   indicating whether the parameter is required (`true`) or optional
    #   (`false`). The method request parameter names defined here are
    #   available in Integration to be mapped to integration request
    #   parameters or body-mapping templates.
    #   @return [Hash<String,Boolean>]
    #
    # @!attribute [rw] request_models
    #   Specifies the Model resources used for the request's content type.
    #   Request models are represented as a key/value map, with a content
    #   type as the key and a Model name as the value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] request_validator_id
    #   The identifier of a RequestValidator for validating the method
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] authorization_scopes
    #   A list of authorization scopes configured on the method. The scopes
    #   are used with a `COGNITO_USER_POOLS` authorizer to authorize the
    #   method invocation. The authorization works by matching the method
    #   scopes against the scopes parsed from the access token in the
    #   incoming request. The method invocation is authorized if any method
    #   scopes matches a claimed scope in the access token. Otherwise, the
    #   invocation is not authorized. When the method scope is configured,
    #   the client must provide an access token instead of an identity token
    #   for authorization purposes.
    #   @return [Array<String>]
    #
    class PutMethodRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :authorization_type,
      :authorizer_id,
      :api_key_required,
      :operation_name,
      :request_parameters,
      :request_models,
      :request_validator_id,
      :authorization_scopes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to add a MethodResponse to an existing Method resource.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The Resource identifier for the Method resource.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   The HTTP verb of the Method resource.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The method response's status code.
    #   @return [String]
    #
    # @!attribute [rw] response_parameters
    #   A key-value map specifying required or optional response parameters
    #   that API Gateway can send back to the caller. A key defines a method
    #   response header name and the associated value is a Boolean flag
    #   indicating whether the method response parameter is required or not.
    #   The method response header names must match the pattern of
    #   `method.response.header.\{name\}`, where `name` is a valid and
    #   unique header name. The response parameter names defined here are
    #   available in the integration response to be mapped from an
    #   integration response header expressed in
    #   `integration.response.header.\{name\}`, a static value enclosed
    #   within a pair of single quotes (e.g., `'application/json'`), or a
    #   JSON expression from the back-end response payload in the form of
    #   `integration.response.body.\{JSON-expression\}`, where
    #   `JSON-expression` is a valid JSON expression without the `$`
    #   prefix.)
    #   @return [Hash<String,Boolean>]
    #
    # @!attribute [rw] response_models
    #   Specifies the Model resources used for the response's content type.
    #   Response models are represented as a key/value map, with a content
    #   type as the key and a Model name as the value.
    #   @return [Hash<String,String>]
    #
    class PutMethodResponseRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :status_code,
      :response_parameters,
      :response_models)
      SENSITIVE = []
      include Aws::Structure
    end

    # A PUT request to update an existing API, with external API definitions
    # specified as the request body.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] mode
    #   The `mode` query parameter to specify the update mode. Valid values
    #   are "merge" and "overwrite". By default, the update mode is
    #   "merge".
    #   @return [String]
    #
    # @!attribute [rw] fail_on_warnings
    #   A query parameter to indicate whether to rollback the API update
    #   (`true`) or not (`false`) when a warning is encountered. The default
    #   value is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] parameters
    #   Custom header parameters as part of the request. For example, to
    #   exclude DocumentationParts from an imported API, set
    #   `ignore=documentation` as a `parameters` value, as in the AWS CLI
    #   command of `aws apigateway import-rest-api --parameters
    #   ignore=documentation --body
    #   'file:///path/to/imported-api-body.json'`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] body
    #   The PUT request body containing external API definitions. Currently,
    #   only OpenAPI definition JSON/YAML files are supported. The maximum
    #   size of the API definition file is 6MB.
    #   @return [String]
    #
    class PutRestApiRequest < Struct.new(
      :rest_api_id,
      :mode,
      :fail_on_warnings,
      :parameters,
      :body)
      SENSITIVE = []
      include Aws::Structure
    end

    # Quotas configured for a usage plan.
    #
    # @!attribute [rw] limit
    #   The target maximum number of requests that can be made in a given
    #   time period.
    #   @return [Integer]
    #
    # @!attribute [rw] offset
    #   The number of requests subtracted from the given limit in the
    #   initial time period.
    #   @return [Integer]
    #
    # @!attribute [rw] period
    #   The time period in which the limit applies. Valid values are
    #   "DAY", "WEEK" or "MONTH".
    #   @return [String]
    #
    class QuotaSettings < Struct.new(
      :limit,
      :offset,
      :period)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of validation rules for incoming Method requests.
    #
    # @!attribute [rw] id
    #   The identifier of this RequestValidator.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of this RequestValidator
    #   @return [String]
    #
    # @!attribute [rw] validate_request_body
    #   A Boolean flag to indicate whether to validate a request body
    #   according to the configured Model schema.
    #   @return [Boolean]
    #
    # @!attribute [rw] validate_request_parameters
    #   A Boolean flag to indicate whether to validate request parameters
    #   (`true`) or not (`false`).
    #   @return [Boolean]
    #
    class RequestValidator < Struct.new(
      :id,
      :name,
      :validate_request_body,
      :validate_request_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of RequestValidator resources of a given RestApi.
    #
    # @!attribute [rw] position
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The current page of elements from this collection.
    #   @return [Array<Types::RequestValidator>]
    #
    class RequestValidators < Struct.new(
      :position,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an API resource.
    #
    # @!attribute [rw] id
    #   The resource's identifier.
    #   @return [String]
    #
    # @!attribute [rw] parent_id
    #   The parent resource's identifier.
    #   @return [String]
    #
    # @!attribute [rw] path_part
    #   The last path segment for this resource.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The full path for this resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_methods
    #   Gets an API resource's method of a given HTTP verb.
    #   @return [Hash<String,Types::Method>]
    #
    class Resource < Struct.new(
      :id,
      :parent_id,
      :path_part,
      :path,
      :resource_methods)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a collection of Resource resources.
    #
    # @!attribute [rw] position
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The current page of elements from this collection.
    #   @return [Array<Types::Resource>]
    #
    class Resources < Struct.new(
      :position,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a REST API.
    #
    # @!attribute [rw] id
    #   The API's identifier. This identifier is unique across all of your
    #   APIs in API Gateway.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The API's name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The API's description.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The timestamp when the API was created.
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   A version identifier for the API.
    #   @return [String]
    #
    # @!attribute [rw] warnings
    #   The warning messages reported when `failonwarnings` is turned on
    #   during API import.
    #   @return [Array<String>]
    #
    # @!attribute [rw] binary_media_types
    #   The list of binary media types supported by the RestApi. By default,
    #   the RestApi supports only UTF-8-encoded text payloads.
    #   @return [Array<String>]
    #
    # @!attribute [rw] minimum_compression_size
    #   A nullable integer that is used to enable compression (with
    #   non-negative between 0 and 10485760 (10M) bytes, inclusive) or
    #   disable compression (with a null value) on an API. When compression
    #   is enabled, compression or decompression is not applied on the
    #   payload if the payload size is smaller than this value. Setting it
    #   to zero allows compression for any payload size.
    #   @return [Integer]
    #
    # @!attribute [rw] api_key_source
    #   The source of the API key for metering requests according to a usage
    #   plan. Valid values are: &gt;`HEADER` to read the API key from the
    #   `X-API-Key` header of a request. `AUTHORIZER` to read the API key
    #   from the `UsageIdentifierKey` from a custom authorizer.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_configuration
    #   The endpoint configuration of this RestApi showing the endpoint
    #   types of the API.
    #   @return [Types::EndpointConfiguration]
    #
    # @!attribute [rw] policy
    #   A stringified JSON policy document that applies to this RestApi
    #   regardless of the caller and Method configuration.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The collection of tags. Each tag element is associated with a given
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] disable_execute_api_endpoint
    #   Specifies whether clients can invoke your API by using the default
    #   `execute-api` endpoint. By default, clients can invoke your API with
    #   the default
    #   `https://\{api_id\}.execute-api.\{region\}.amazonaws.com` endpoint.
    #   To require that clients use a custom domain name to invoke your API,
    #   disable the default endpoint.
    #   @return [Boolean]
    #
    class RestApi < Struct.new(
      :id,
      :name,
      :description,
      :created_date,
      :version,
      :warnings,
      :binary_media_types,
      :minimum_compression_size,
      :api_key_source,
      :endpoint_configuration,
      :policy,
      :tags,
      :disable_execute_api_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains references to your APIs and links that guide you in how to
    # interact with your collection. A collection offers a paginated view of
    # your APIs.
    #
    # @!attribute [rw] position
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The current page of elements from this collection.
    #   @return [Array<Types::RestApi>]
    #
    class RestApis < Struct.new(
      :position,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # A configuration property of an SDK type.
    #
    # @!attribute [rw] name
    #   The name of a an SdkType configuration property.
    #   @return [String]
    #
    # @!attribute [rw] friendly_name
    #   The user-friendly name of an SdkType configuration property.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of an SdkType configuration property.
    #   @return [String]
    #
    # @!attribute [rw] required
    #   A boolean flag of an SdkType configuration property to indicate if
    #   the associated SDK configuration property is required (`true`) or
    #   not (`false`).
    #   @return [Boolean]
    #
    # @!attribute [rw] default_value
    #   The default value of an SdkType configuration property.
    #   @return [String]
    #
    class SdkConfigurationProperty < Struct.new(
      :name,
      :friendly_name,
      :description,
      :required,
      :default_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The binary blob response to GetSdk, which contains the generated SDK.
    #
    # @!attribute [rw] content_type
    #   The content-type header value in the HTTP response.
    #   @return [String]
    #
    # @!attribute [rw] content_disposition
    #   The content-disposition header value in the HTTP response.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The binary blob response to GetSdk, which contains the generated
    #   SDK.
    #   @return [String]
    #
    class SdkResponse < Struct.new(
      :content_type,
      :content_disposition,
      :body)
      SENSITIVE = []
      include Aws::Structure
    end

    # A type of SDK that API Gateway can generate.
    #
    # @!attribute [rw] id
    #   The identifier of an SdkType instance.
    #   @return [String]
    #
    # @!attribute [rw] friendly_name
    #   The user-friendly name of an SdkType instance.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of an SdkType.
    #   @return [String]
    #
    # @!attribute [rw] configuration_properties
    #   A list of configuration properties of an SdkType.
    #   @return [Array<Types::SdkConfigurationProperty>]
    #
    class SdkType < Struct.new(
      :id,
      :friendly_name,
      :description,
      :configuration_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # The collection of SdkType instances.
    #
    # @!attribute [rw] position
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The current page of elements from this collection.
    #   @return [Array<Types::SdkType>]
    #
    class SdkTypes < Struct.new(
      :position,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested service is not available. For details see the
    # accompanying error message. Retry after the specified time period.
    #
    # @!attribute [rw] retry_after_seconds
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ServiceUnavailableException < Struct.new(
      :retry_after_seconds,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a unique identifier for a version of a deployed RestApi
    # that is callable by users.
    #
    # @!attribute [rw] deployment_id
    #   The identifier of the Deployment that the stage points to.
    #   @return [String]
    #
    # @!attribute [rw] client_certificate_id
    #   The identifier of a client certificate for an API stage.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the stage is the first path segment in the Uniform
    #   Resource Identifier (URI) of a call to API Gateway. Stage names can
    #   only contain alphanumeric characters, hyphens, and underscores.
    #   Maximum length is 128 characters.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The stage's description.
    #   @return [String]
    #
    # @!attribute [rw] cache_cluster_enabled
    #   Specifies whether a cache cluster is enabled for the stage.
    #   @return [Boolean]
    #
    # @!attribute [rw] cache_cluster_size
    #   The stage's cache capacity in GB. For more information about
    #   choosing a cache size, see [Enabling API caching to enhance
    #   responsiveness][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-caching.html
    #   @return [String]
    #
    # @!attribute [rw] cache_cluster_status
    #   The status of the cache cluster for the stage, if enabled.
    #   @return [String]
    #
    # @!attribute [rw] method_settings
    #   A map that defines the method settings for a Stage resource. Keys
    #   (designated as `/\{method_setting_key` below) are method paths
    #   defined as `\{resource_path\}/\{http_method\}` for an individual
    #   method override, or `/*/*` for overriding all methods in the
    #   stage.
    #   @return [Hash<String,Types::MethodSetting>]
    #
    # @!attribute [rw] variables
    #   A map that defines the stage variables for a Stage resource.
    #   Variable names can have alphanumeric and underscore characters, and
    #   the values must match `[A-Za-z0-9-._~:/?#&=,]+`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] documentation_version
    #   The version of the associated API documentation.
    #   @return [String]
    #
    # @!attribute [rw] access_log_settings
    #   Settings for logging access in this stage.
    #   @return [Types::AccessLogSettings]
    #
    # @!attribute [rw] canary_settings
    #   Settings for the canary deployment in this stage.
    #   @return [Types::CanarySettings]
    #
    # @!attribute [rw] tracing_enabled
    #   Specifies whether active tracing with X-ray is enabled for the
    #   Stage.
    #   @return [Boolean]
    #
    # @!attribute [rw] web_acl_arn
    #   The ARN of the WebAcl associated with the Stage.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The collection of tags. Each tag element is associated with a given
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] created_date
    #   The timestamp when the stage was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date
    #   The timestamp when the stage last updated.
    #   @return [Time]
    #
    class Stage < Struct.new(
      :deployment_id,
      :client_certificate_id,
      :stage_name,
      :description,
      :cache_cluster_enabled,
      :cache_cluster_size,
      :cache_cluster_status,
      :method_settings,
      :variables,
      :documentation_version,
      :access_log_settings,
      :canary_settings,
      :tracing_enabled,
      :web_acl_arn,
      :tags,
      :created_date,
      :last_updated_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # A reference to a unique stage identified in the format
    # `\{restApiId\}/\{stage\}`.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The stage name associated with the stage key.
    #   @return [String]
    #
    class StageKey < Struct.new(
      :rest_api_id,
      :stage_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of Stage resources that are associated with the ApiKey
    # resource.
    #
    # @!attribute [rw] item
    #   The current page of elements from this collection.
    #   @return [Array<Types::Stage>]
    #
    class Stages < Struct.new(
      :item)
      SENSITIVE = []
      include Aws::Structure
    end

    # Adds or updates a tag on a given resource.
    #
    # @!attribute [rw] resource_arn
    #   The ARN of a resource that can be tagged.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value map of strings. The valid character set is
    #   \[a-zA-Z+-=.\_:/\]. The tag key can be up to 128 characters and must
    #   not start with `aws:`. The tag value can be up to 256 characters.
    #   @return [Hash<String,String>]
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The collection of tags. Each tag element is associated with a given
    # resource.
    #
    # @!attribute [rw] tags
    #   The collection of tags. Each tag element is associated with a given
    #   resource.
    #   @return [Hash<String,String>]
    #
    class Tags < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a mapping template used to transform a payload.
    #
    # @!attribute [rw] value
    #   The Apache Velocity Template Language (VTL) template content used
    #   for the template resource.
    #   @return [String]
    #
    class Template < Struct.new(
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Make a request to simulate the invocation of an Authorizer.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_id
    #   Specifies a test invoke authorizer request's Authorizer ID.
    #   @return [String]
    #
    # @!attribute [rw] headers
    #   A key-value map of headers to simulate an incoming invocation
    #   request. This is where the incoming authorization token, or identity
    #   source, should be specified.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] multi_value_headers
    #   The headers as a map from string to list of values to simulate an
    #   incoming invocation request. This is where the incoming
    #   authorization token, or identity source, may be specified.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] path_with_query_string
    #   The URI path, including query string, of the simulated invocation
    #   request. Use this to specify path parameters and query string
    #   parameters.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The simulated request body of an incoming invocation request.
    #   @return [String]
    #
    # @!attribute [rw] stage_variables
    #   A key-value map of stage variables to simulate an invocation on a
    #   deployed Stage.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] additional_context
    #   A key-value map of additional context variables.
    #   @return [Hash<String,String>]
    #
    class TestInvokeAuthorizerRequest < Struct.new(
      :rest_api_id,
      :authorizer_id,
      :headers,
      :multi_value_headers,
      :path_with_query_string,
      :body,
      :stage_variables,
      :additional_context)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the response of the test invoke request for a custom
    # Authorizer
    #
    # @!attribute [rw] client_status
    #   The HTTP status code that the client would have received. Value is 0
    #   if the authorizer succeeded.
    #   @return [Integer]
    #
    # @!attribute [rw] log
    #   The API Gateway execution log for the test authorizer request.
    #   @return [String]
    #
    # @!attribute [rw] latency
    #   The execution latency of the test authorizer request.
    #   @return [Integer]
    #
    # @!attribute [rw] principal_id
    #   The principal identity returned by the Authorizer
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The JSON policy document returned by the Authorizer
    #   @return [String]
    #
    # @!attribute [rw] authorization
    #   The authorization response.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] claims
    #   The open identity claims, with any supported custom attributes,
    #   returned from the Cognito Your User Pool configured for the API.
    #   @return [Hash<String,String>]
    #
    class TestInvokeAuthorizerResponse < Struct.new(
      :client_status,
      :log,
      :latency,
      :principal_id,
      :policy,
      :authorization,
      :claims)
      SENSITIVE = []
      include Aws::Structure
    end

    # Make a request to simulate the invocation of a Method.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Specifies a test invoke method request's resource ID.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   Specifies a test invoke method request's HTTP method.
    #   @return [String]
    #
    # @!attribute [rw] path_with_query_string
    #   The URI path, including query string, of the simulated invocation
    #   request. Use this to specify path parameters and query string
    #   parameters.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The simulated request body of an incoming invocation request.
    #   @return [String]
    #
    # @!attribute [rw] headers
    #   A key-value map of headers to simulate an incoming invocation
    #   request.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] multi_value_headers
    #   The headers as a map from string to list of values to simulate an
    #   incoming invocation request.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] client_certificate_id
    #   A ClientCertificate identifier to use in the test invocation. API
    #   Gateway will use the certificate when making the HTTPS request to
    #   the defined back-end endpoint.
    #   @return [String]
    #
    # @!attribute [rw] stage_variables
    #   A key-value map of stage variables to simulate an invocation on a
    #   deployed Stage.
    #   @return [Hash<String,String>]
    #
    class TestInvokeMethodRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :path_with_query_string,
      :body,
      :headers,
      :multi_value_headers,
      :client_certificate_id,
      :stage_variables)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the response of the test invoke request in the HTTP method.
    #
    # @!attribute [rw] status
    #   The HTTP status code.
    #   @return [Integer]
    #
    # @!attribute [rw] body
    #   The body of the HTTP response.
    #   @return [String]
    #
    # @!attribute [rw] headers
    #   The headers of the HTTP response.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] multi_value_headers
    #   The headers of the HTTP response as a map from string to list of
    #   values.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] log
    #   The API Gateway execution log for the test invoke request.
    #   @return [String]
    #
    # @!attribute [rw] latency
    #   The execution latency of the test invoke request.
    #   @return [Integer]
    #
    class TestInvokeMethodResponse < Struct.new(
      :status,
      :body,
      :headers,
      :multi_value_headers,
      :log,
      :latency)
      SENSITIVE = []
      include Aws::Structure
    end

    # The API request rate limits.
    #
    # @!attribute [rw] burst_limit
    #   The API target request burst rate limit. This allows more requests
    #   through for a period of time than the target rate limit.
    #   @return [Integer]
    #
    # @!attribute [rw] rate_limit
    #   The API target request rate limit.
    #   @return [Float]
    #
    class ThrottleSettings < Struct.new(
      :burst_limit,
      :rate_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the TLS configuration for an integration.
    #
    # @!attribute [rw] insecure_skip_verification
    #   Specifies whether or not API Gateway skips verification that the
    #   certificate for an integration endpoint is issued by a supported
    #   certificate authority. This isn’t recommended, but it enables you to
    #   use certificates that are signed by private certificate authorities,
    #   or certificates that are self-signed. If enabled, API Gateway still
    #   performs basic certificate validation, which includes checking the
    #   certificate's expiration date, hostname, and presence of a root
    #   certificate authority. Supported only for `HTTP` and `HTTP_PROXY`
    #   integrations.
    #
    #   Enabling `insecureSkipVerification` isn't recommended, especially
    #   for integrations with public HTTPS endpoints. If you enable
    #   `insecureSkipVerification`, you increase the risk of
    #   man-in-the-middle attacks.
    #   @return [Boolean]
    #
    class TlsConfig < Struct.new(
      :insecure_skip_verification)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request has reached its throttling limit. Retry after the
    # specified time period.
    #
    # @!attribute [rw] retry_after_seconds
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class TooManyRequestsException < Struct.new(
      :retry_after_seconds,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request is denied because the caller has insufficient permissions.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class UnauthorizedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Removes a tag from a given resource.
    #
    # @!attribute [rw] resource_arn
    #   The ARN of a resource that can be tagged.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The Tag keys to delete.
    #   @return [Array<String>]
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # Requests API Gateway to change information about the current Account
    # resource.
    #
    # @!attribute [rw] patch_operations
    #   For more information about supported patch operations, see [Patch
    #   Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateAccountRequest < Struct.new(
      :patch_operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to change information about an ApiKey resource.
    #
    # @!attribute [rw] api_key
    #   The identifier of the ApiKey resource to be updated.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   For more information about supported patch operations, see [Patch
    #   Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateApiKeyRequest < Struct.new(
      :api_key,
      :patch_operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to update an existing Authorizer resource.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_id
    #   The identifier of the Authorizer resource.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   For more information about supported patch operations, see [Patch
    #   Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateAuthorizerRequest < Struct.new(
      :rest_api_id,
      :authorizer_id,
      :patch_operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to change information about the BasePathMapping resource.
    #
    # @!attribute [rw] domain_name
    #   The domain name of the BasePathMapping resource to change.
    #   @return [String]
    #
    # @!attribute [rw] base_path
    #   The base path of the BasePathMapping resource to change.
    #
    #   To specify an empty base path, set this parameter to `'(none)'`.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   For more information about supported patch operations, see [Patch
    #   Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateBasePathMappingRequest < Struct.new(
      :domain_name,
      :base_path,
      :patch_operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to change information about an ClientCertificate resource.
    #
    # @!attribute [rw] client_certificate_id
    #   The identifier of the ClientCertificate resource to be updated.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   For more information about supported patch operations, see [Patch
    #   Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateClientCertificateRequest < Struct.new(
      :client_certificate_id,
      :patch_operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Requests API Gateway to change information about a Deployment
    # resource.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] deployment_id
    #   The replacement identifier for the Deployment resource to change
    #   information about.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   For more information about supported patch operations, see [Patch
    #   Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateDeploymentRequest < Struct.new(
      :rest_api_id,
      :deployment_id,
      :patch_operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updates an existing documentation part of a given API.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] documentation_part_id
    #   The identifier of the to-be-updated documentation part.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   For more information about supported patch operations, see [Patch
    #   Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateDocumentationPartRequest < Struct.new(
      :rest_api_id,
      :documentation_part_id,
      :patch_operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updates an existing documentation version of an API.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi..
    #   @return [String]
    #
    # @!attribute [rw] documentation_version
    #   The version identifier of the to-be-updated documentation version.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   For more information about supported patch operations, see [Patch
    #   Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateDocumentationVersionRequest < Struct.new(
      :rest_api_id,
      :documentation_version,
      :patch_operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to change information about the DomainName resource.
    #
    # @!attribute [rw] domain_name
    #   The name of the DomainName resource to be changed.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   For more information about supported patch operations, see [Patch
    #   Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateDomainNameRequest < Struct.new(
      :domain_name,
      :patch_operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updates a GatewayResponse of a specified response type on the given
    # RestApi.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] response_type
    #   The response type of the associated GatewayResponse.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   For more information about supported patch operations, see [Patch
    #   Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateGatewayResponseRequest < Struct.new(
      :rest_api_id,
      :response_type,
      :patch_operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an update integration request.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Represents an update integration request's resource identifier.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   Represents an update integration request's HTTP method.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   For more information about supported patch operations, see [Patch
    #   Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateIntegrationRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :patch_operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an update integration response request.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Specifies an update integration response request's resource
    #   identifier.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   Specifies an update integration response request's HTTP method.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   Specifies an update integration response request's status code.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   For more information about supported patch operations, see [Patch
    #   Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateIntegrationResponseRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :status_code,
      :patch_operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to update an existing Method resource.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The Resource identifier for the Method resource.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   The HTTP verb of the Method resource.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   For more information about supported patch operations, see [Patch
    #   Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateMethodRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :patch_operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to update an existing MethodResponse resource.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The Resource identifier for the MethodResponse resource.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   The HTTP verb of the Method resource.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The status code for the MethodResponse resource.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   For more information about supported patch operations, see [Patch
    #   Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateMethodResponseRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :status_code,
      :patch_operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to update an existing model in an existing RestApi resource.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] model_name
    #   The name of the model to update.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   For more information about supported patch operations, see [Patch
    #   Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateModelRequest < Struct.new(
      :rest_api_id,
      :model_name,
      :patch_operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updates a RequestValidator of a given RestApi.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] request_validator_id
    #   The identifier of RequestValidator to be updated.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   For more information about supported patch operations, see [Patch
    #   Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateRequestValidatorRequest < Struct.new(
      :rest_api_id,
      :request_validator_id,
      :patch_operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to change information about a Resource resource.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the Resource resource.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   For more information about supported patch operations, see [Patch
    #   Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateResourceRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :patch_operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to update an existing RestApi resource in your collection.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   For more information about supported patch operations, see [Patch
    #   Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateRestApiRequest < Struct.new(
      :rest_api_id,
      :patch_operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Requests API Gateway to change information about a Stage resource.
    #
    # @!attribute [rw] rest_api_id
    #   The string identifier of the associated RestApi.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the Stage resource to change information about.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   For more information about supported patch operations, see [Patch
    #   Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateStageRequest < Struct.new(
      :rest_api_id,
      :stage_name,
      :patch_operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # The PATCH request to update a usage plan of a given plan Id.
    #
    # @!attribute [rw] usage_plan_id
    #   The Id of the to-be-updated usage plan.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   For more information about supported patch operations, see [Patch
    #   Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateUsagePlanRequest < Struct.new(
      :usage_plan_id,
      :patch_operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # The PATCH request to grant a temporary extension to the remaining
    # quota of a usage plan associated with a specified API key.
    #
    # @!attribute [rw] usage_plan_id
    #   The Id of the usage plan associated with the usage data.
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The identifier of the API key associated with the usage plan in
    #   which a temporary extension is granted to the remaining quota.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   For more information about supported patch operations, see [Patch
    #   Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateUsageRequest < Struct.new(
      :usage_plan_id,
      :key_id,
      :patch_operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updates an existing VpcLink of a specified identifier.
    #
    # @!attribute [rw] vpc_link_id
    #   The identifier of the VpcLink. It is used in an Integration to
    #   reference this VpcLink.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   For more information about supported patch operations, see [Patch
    #   Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateVpcLinkRequest < Struct.new(
      :vpc_link_id,
      :patch_operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the usage data of a usage plan.
    #
    # @!attribute [rw] usage_plan_id
    #   The plan Id associated with this usage data.
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The starting date of the usage data.
    #   @return [String]
    #
    # @!attribute [rw] end_date
    #   The ending date of the usage data.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The usage data, as daily logs of used and remaining quotas, over the
    #   specified time interval indexed over the API keys in a usage plan.
    #   For example, `\{..., "values" : \{ "\{api_key\}" : [ [0, 100], [10,
    #   90], [100, 10]]\}`, where `\{api_key\}` stands for an API key value
    #   and the daily log entry is of the format `[used quota, remaining
    #   quota]`.
    #   @return [Hash<String,Array<Array<Integer>>>]
    #
    class Usage < Struct.new(
      :usage_plan_id,
      :start_date,
      :end_date,
      :position,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a usage plan used to specify who can assess associated API
    # stages. Optionally, target request rate and quota limits can be set.
    # In some cases clients can exceed the targets that you set. Don’t rely
    # on usage plans to control costs. Consider using [Amazon Web Services
    # Budgets][1] to monitor costs and [WAF][2] to manage API requests.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cost-management/latest/userguide/budgets-managing-costs.html
    # [2]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #
    # @!attribute [rw] id
    #   The identifier of a UsagePlan resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a usage plan.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of a usage plan.
    #   @return [String]
    #
    # @!attribute [rw] api_stages
    #   The associated API stages of a usage plan.
    #   @return [Array<Types::ApiStage>]
    #
    # @!attribute [rw] throttle
    #   A map containing method level throttling information for API stage
    #   in a usage plan.
    #   @return [Types::ThrottleSettings]
    #
    # @!attribute [rw] quota
    #   The target maximum number of permitted requests per a given unit
    #   time interval.
    #   @return [Types::QuotaSettings]
    #
    # @!attribute [rw] product_code
    #   The AWS Markeplace product identifier to associate with the usage
    #   plan as a SaaS product on AWS Marketplace.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The collection of tags. Each tag element is associated with a given
    #   resource.
    #   @return [Hash<String,String>]
    #
    class UsagePlan < Struct.new(
      :id,
      :name,
      :description,
      :api_stages,
      :throttle,
      :quota,
      :product_code,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a usage plan key to identify a plan customer.
    #
    # @!attribute [rw] id
    #   The Id of a usage plan key.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of a usage plan key. Currently, the valid key type is
    #   `API_KEY`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of a usage plan key.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a usage plan key.
    #   @return [String]
    #
    class UsagePlanKey < Struct.new(
      :id,
      :type,
      :value,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the collection of usage plan keys added to usage plans for
    # the associated API keys and, possibly, other types of keys.
    #
    # @!attribute [rw] position
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The current page of elements from this collection.
    #   @return [Array<Types::UsagePlanKey>]
    #
    class UsagePlanKeys < Struct.new(
      :position,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a collection of usage plans for an AWS account.
    #
    # @!attribute [rw] position
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The current page of elements from this collection.
    #   @return [Array<Types::UsagePlan>]
    #
    class UsagePlans < Struct.new(
      :position,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # An API Gateway VPC link for a RestApi to access resources in an Amazon
    # Virtual Private Cloud (VPC).
    #
    # @!attribute [rw] id
    #   The identifier of the VpcLink. It is used in an Integration to
    #   reference this VpcLink.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name used to label and identify the VPC link.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the VPC link.
    #   @return [String]
    #
    # @!attribute [rw] target_arns
    #   The ARN of the network load balancer of the VPC targeted by the VPC
    #   link. The network load balancer must be owned by the same AWS
    #   account of the API owner.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The status of the VPC link. The valid values are `AVAILABLE`,
    #   `PENDING`, `DELETING`, or `FAILED`. Deploying an API will wait if
    #   the status is `PENDING` and will fail if the status is `DELETING`.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A description about the VPC link status.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The collection of tags. Each tag element is associated with a given
    #   resource.
    #   @return [Hash<String,String>]
    #
    class VpcLink < Struct.new(
      :id,
      :name,
      :description,
      :target_arns,
      :status,
      :status_message,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The collection of VPC links under the caller's account in a region.
    #
    # @!attribute [rw] position
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The current page of elements from this collection.
    #   @return [Array<Types::VpcLink>]
    #
    class VpcLinks < Struct.new(
      :position,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
