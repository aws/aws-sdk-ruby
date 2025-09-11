# frozen_string_literal: true

# This is generated code!

module Aws::APIGateway
  # This module contains the types returned by client operations.
  module Types

    # <p>Access log settings, including the access log format and access log destination ARN.</p>
    # @!attribute format
    #   <p>A single line format of the access logs of data, as specified by selected $context variables. The format must include at least <code>$context.requestId</code>.</p>
    #   @return [String]
    # @!attribute destination_arn
    #   <p>The Amazon Resource Name (ARN) of the CloudWatch Logs log group or Kinesis Data Firehose delivery stream to receive access logs. If you specify a Kinesis Data Firehose delivery stream, the stream name must begin with <code>amazon-apigateway-</code>.</p>
    #   @return [String]
    class AccessLogSettings < Struct.new(
      :format,
      :destination_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A resource that can be distributed to callers for executing Method resources that require an API key. API keys can be mapped to any Stage on any RestApi, which indicates that the callers with the API key can make requests to that stage.</p>
    # @!attribute id
    #   <p>The identifier of the API Key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the API Key.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the API Key.</p>
    #   @return [String]
    # @!attribute customer_id
    #   <p>An Amazon Web Services Marketplace customer identifier, when integrating with the Amazon Web Services SaaS Marketplace.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the API Key.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Specifies whether the API Key can be used by callers.</p>
    #   @return [Boolean]
    # @!attribute created_date
    #   <p>The timestamp when the API Key was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date
    #   <p>The timestamp when the API Key was last updated.</p>
    #   @return [Time]
    # @!attribute stage_keys
    #   <p>A list of Stage resources that are associated with the ApiKey resource.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>API stage name of the associated API stage in a usage plan.</p>
    # @!attribute api_id
    #   <p>API Id of the associated API stage in a usage plan.</p>
    #   @return [String]
    # @!attribute stage
    #   <p>API stage name of the associated API stage in a usage plan.</p>
    #   @return [String]
    # @!attribute throttle
    #   <p>Map containing method level throttling information for API stage in a usage plan.</p>
    #   @return [Hash<String, Types::ThrottleSettings>]
    class ApiStage < Struct.new(
      :api_id,
      :stage,
      :throttle,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an authorization layer for methods. If enabled on a method, API Gateway will activate the authorizer when a client calls the method.</p>
    # @!attribute id
    #   <p>The identifier for the authorizer resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the authorizer.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The authorizer type. Valid values are <code>TOKEN</code> for a Lambda function using a single authorization token submitted in a custom header, <code>REQUEST</code> for a Lambda function using incoming request parameters, and <code>COGNITO_USER_POOLS</code> for using an Amazon Cognito user pool.</p>
    #   @return [String]
    # @!attribute provider_ar_ns
    #   <p>A list of the Amazon Cognito user pool ARNs for the <code>COGNITO_USER_POOLS</code> authorizer. Each element is of this format: <code>arn:aws:cognito-idp:{region}:{account_id}:userpool/{user_pool_id}</code>. For a <code>TOKEN</code> or <code>REQUEST</code> authorizer, this is not defined. </p>
    #   @return [Array<String>]
    # @!attribute auth_type
    #   <p>Optional customer-defined field, used in OpenAPI imports and exports without functional impact.</p>
    #   @return [String]
    # @!attribute authorizer_uri
    #   <p>Specifies the authorizer's Uniform Resource Identifier (URI). For <code>TOKEN</code> or <code>REQUEST</code> authorizers, this must be a well-formed Lambda function URI, for example, <code>arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:{account_id}:function:{lambda_function_name}/invocations</code>. In general, the URI has this form  <code>arn:aws:apigateway:{region}:lambda:path/{service_api}</code>, where <code>{region}</code> is the same as the region hosting the Lambda function, <code>path</code> indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial <code>/</code>. For Lambda functions, this is usually of the form <code>/2015-03-31/functions/[FunctionARN]/invocations</code>.</p>
    #   @return [String]
    # @!attribute authorizer_credentials
    #   <p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, specify null.</p>
    #   @return [String]
    # @!attribute identity_source
    #   <p>The identity source for which authorization is requested. For a <code>TOKEN</code> or
    #           <code>COGNITO_USER_POOLS</code> authorizer, this is required and specifies the request
    #         header mapping expression for the custom header holding the authorization token submitted by
    #         the client. For example, if the token header name is <code>Auth</code>, the header mapping expression is
    #         <code>method.request.header.Auth</code>. For the <code>REQUEST</code> authorizer, this is required when authorization
    #         caching is enabled. The value is a comma-separated string of one or more mapping expressions
    #         of the specified request parameters. For example, if an <code>Auth</code> header, a <code>Name</code> query string
    #         parameter are defined as identity sources, this value is <code>method.request.header.Auth</code>,
    #         <code>method.request.querystring.Name</code>. These parameters will be used to derive the authorization
    #         caching key and to perform runtime validation of the <code>REQUEST</code> authorizer by verifying all of
    #         the identity-related request parameters are present, not null and non-empty. Only when this is
    #         true does the authorizer invoke the authorizer Lambda function, otherwise, it returns a 401
    #         Unauthorized response without calling the Lambda function. The valid value is a string of
    #         comma-separated mapping expressions of the specified request parameters. When the
    #         authorization caching is not enabled, this property is optional. </p>
    #   @return [String]
    # @!attribute identity_validation_expression
    #   <p>A validation expression for the incoming identity token. For <code>TOKEN</code> authorizers, this value is a regular expression. For <code>COGNITO_USER_POOLS</code> authorizers, API Gateway will match the <code>aud</code> field of the incoming token from the client against the specified regular expression. It will invoke the authorizer's Lambda function when there is a match. Otherwise, it will return a 401 Unauthorized response without calling the Lambda function. The validation expression does not apply to the <code>REQUEST</code> authorizer.</p>
    #   @return [String]
    # @!attribute authorizer_result_ttl_in_seconds
    #   <p>The TTL in seconds of cached authorizer results. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway will cache authorizer responses. If this field is not set, the default value is 300. The maximum value is 3600, or 1 hour.</p>
    #   @return [Integer]
    class Authorizer < Struct.new(
      :id,
      :name,
      :type,
      :provider_ar_ns,
      :auth_type,
      :authorizer_uri,
      :authorizer_credentials,
      :identity_source,
      :identity_validation_expression,
      :authorizer_result_ttl_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The submitted request is not valid, for example, the input is incomplete or incorrect. See the accompanying error message for details.</p>
    # @!attribute message
    #   @return [String]
    class BadRequestException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the base path that callers of the API must provide as part of the URL after the domain name.</p>
    # @!attribute base_path
    #   <p>The base path name that callers of the API must provide as part of the URL after the domain name.</p>
    #   @return [String]
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute stage
    #   <p>The name of the associated stage.</p>
    #   @return [String]
    class BasePathMapping < Struct.new(
      :base_path,
      :rest_api_id,
      :stage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings of a canary deployment.</p>
    # @!attribute percent_traffic
    #   <p>The percent (0-100) of traffic diverted to a canary deployment.</p>
    #   @return [Float]
    # @!attribute deployment_id
    #   <p>The ID of the canary deployment.</p>
    #   @return [String]
    # @!attribute stage_variable_overrides
    #   <p>Stage variables overridden for a canary release deployment, including new stage variables introduced in the canary. These stage variables are represented as a string-to-string map between stage variable names and their values.</p>
    #   @return [Hash<String, String>]
    # @!attribute use_stage_cache
    #   <p>A Boolean flag to indicate whether the canary deployment uses the stage cache or not.</p>
    #   @return [Boolean]
    class CanarySettings < Struct.new(
      :percent_traffic,
      :deployment_id,
      :stage_variable_overrides,
      :use_stage_cache,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:percent_traffic] = 0 unless options.key?(:percent_traffic)
        options[:use_stage_cache] = false unless options.key?(:use_stage_cache)
        super
      end
    end

    # <p>Represents a client certificate used to configure client-side SSL authentication while sending requests to the integration endpoint.</p>
    # @!attribute client_certificate_id
    #   <p>The identifier of the client certificate.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the client certificate.</p>
    #   @return [String]
    # @!attribute pem_encoded_certificate
    #   <p>The PEM-encoded public key of the client certificate, which can be used to configure certificate authentication in the integration endpoint .</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The timestamp when the client certificate was created.</p>
    #   @return [Time]
    # @!attribute expiration_date
    #   <p>The timestamp when the client certificate will expire.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    class ClientCertificate < Struct.new(
      :client_certificate_id,
      :description,
      :pem_encoded_certificate,
      :created_date,
      :expiration_date,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request configuration has conflicts. For details, see the accompanying error message.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A resource that can be distributed to callers for executing Method resources that require an API key. API keys can be mapped to any Stage on any RestApi, which indicates that the callers with the API key can make requests to that stage.</p>
    # @!attribute id
    #   <p>The identifier of the API Key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the API Key.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the API Key.</p>
    #   @return [String]
    # @!attribute customer_id
    #   <p>An Amazon Web Services Marketplace customer identifier, when integrating with the Amazon Web Services SaaS Marketplace.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the API Key.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Specifies whether the API Key can be used by callers.</p>
    #   @return [Boolean]
    # @!attribute created_date
    #   <p>The timestamp when the API Key was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date
    #   <p>The timestamp when the API Key was last updated.</p>
    #   @return [Time]
    # @!attribute stage_keys
    #   <p>A list of Stage resources that are associated with the ApiKey resource.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    class CreateApiKeyOutput < Struct.new(
      :id,
      :value,
      :name,
      :customer_id,
      :description,
      :enabled,
      :created_date,
      :last_updated_date,
      :stage_keys,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>Request to create an ApiKey resource.</p>
    # @!attribute name
    #   <p>The name of the ApiKey.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the ApiKey.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Specifies whether the ApiKey can be used by callers.</p>
    #   @return [Boolean]
    # @!attribute generate_distinct_id
    #   <p>Specifies whether (<code>true</code>) or not (<code>false</code>) the key identifier is distinct from the created API key value. This parameter is deprecated and should not be used.</p>
    #   @return [Boolean]
    # @!attribute value
    #   <p>Specifies a value of the API key.</p>
    #   @return [String]
    # @!attribute stage_keys
    #   <p>DEPRECATED FOR USAGE PLANS - Specifies stages associated with the API key.</p>
    #   @return [Array<Types::StageKey>]
    # @!attribute customer_id
    #   <p>An Amazon Web Services Marketplace customer identifier, when integrating with the Amazon Web Services SaaS Marketplace.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>
    #   @return [Hash<String, String>]
    class CreateApiKeyRequest < Struct.new(
      :name,
      :description,
      :enabled,
      :generate_distinct_id,
      :value,
      :stage_keys,
      :customer_id,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an authorization layer for methods. If enabled on a method, API Gateway will activate the authorizer when a client calls the method.</p>
    # @!attribute id
    #   <p>The identifier for the authorizer resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the authorizer.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The authorizer type. Valid values are <code>TOKEN</code> for a Lambda function using a single authorization token submitted in a custom header, <code>REQUEST</code> for a Lambda function using incoming request parameters, and <code>COGNITO_USER_POOLS</code> for using an Amazon Cognito user pool.</p>
    #   @return [String]
    # @!attribute provider_ar_ns
    #   <p>A list of the Amazon Cognito user pool ARNs for the <code>COGNITO_USER_POOLS</code> authorizer. Each element is of this format: <code>arn:aws:cognito-idp:{region}:{account_id}:userpool/{user_pool_id}</code>. For a <code>TOKEN</code> or <code>REQUEST</code> authorizer, this is not defined. </p>
    #   @return [Array<String>]
    # @!attribute auth_type
    #   <p>Optional customer-defined field, used in OpenAPI imports and exports without functional impact.</p>
    #   @return [String]
    # @!attribute authorizer_uri
    #   <p>Specifies the authorizer's Uniform Resource Identifier (URI). For <code>TOKEN</code> or <code>REQUEST</code> authorizers, this must be a well-formed Lambda function URI, for example, <code>arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:{account_id}:function:{lambda_function_name}/invocations</code>. In general, the URI has this form  <code>arn:aws:apigateway:{region}:lambda:path/{service_api}</code>, where <code>{region}</code> is the same as the region hosting the Lambda function, <code>path</code> indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial <code>/</code>. For Lambda functions, this is usually of the form <code>/2015-03-31/functions/[FunctionARN]/invocations</code>.</p>
    #   @return [String]
    # @!attribute authorizer_credentials
    #   <p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, specify null.</p>
    #   @return [String]
    # @!attribute identity_source
    #   <p>The identity source for which authorization is requested. For a <code>TOKEN</code> or
    #           <code>COGNITO_USER_POOLS</code> authorizer, this is required and specifies the request
    #         header mapping expression for the custom header holding the authorization token submitted by
    #         the client. For example, if the token header name is <code>Auth</code>, the header mapping expression is
    #         <code>method.request.header.Auth</code>. For the <code>REQUEST</code> authorizer, this is required when authorization
    #         caching is enabled. The value is a comma-separated string of one or more mapping expressions
    #         of the specified request parameters. For example, if an <code>Auth</code> header, a <code>Name</code> query string
    #         parameter are defined as identity sources, this value is <code>method.request.header.Auth</code>,
    #         <code>method.request.querystring.Name</code>. These parameters will be used to derive the authorization
    #         caching key and to perform runtime validation of the <code>REQUEST</code> authorizer by verifying all of
    #         the identity-related request parameters are present, not null and non-empty. Only when this is
    #         true does the authorizer invoke the authorizer Lambda function, otherwise, it returns a 401
    #         Unauthorized response without calling the Lambda function. The valid value is a string of
    #         comma-separated mapping expressions of the specified request parameters. When the
    #         authorization caching is not enabled, this property is optional. </p>
    #   @return [String]
    # @!attribute identity_validation_expression
    #   <p>A validation expression for the incoming identity token. For <code>TOKEN</code> authorizers, this value is a regular expression. For <code>COGNITO_USER_POOLS</code> authorizers, API Gateway will match the <code>aud</code> field of the incoming token from the client against the specified regular expression. It will invoke the authorizer's Lambda function when there is a match. Otherwise, it will return a 401 Unauthorized response without calling the Lambda function. The validation expression does not apply to the <code>REQUEST</code> authorizer.</p>
    #   @return [String]
    # @!attribute authorizer_result_ttl_in_seconds
    #   <p>The TTL in seconds of cached authorizer results. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway will cache authorizer responses. If this field is not set, the default value is 300. The maximum value is 3600, or 1 hour.</p>
    #   @return [Integer]
    class CreateAuthorizerOutput < Struct.new(
      :id,
      :name,
      :type,
      :provider_ar_ns,
      :auth_type,
      :authorizer_uri,
      :authorizer_credentials,
      :identity_source,
      :identity_validation_expression,
      :authorizer_result_ttl_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to add a new Authorizer to an existing RestApi resource.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the authorizer.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The authorizer type. Valid values are <code>TOKEN</code> for a Lambda function using a single authorization token submitted in a custom header, <code>REQUEST</code> for a Lambda function using incoming request parameters, and <code>COGNITO_USER_POOLS</code> for using an Amazon Cognito user pool.</p>
    #   @return [String]
    # @!attribute provider_ar_ns
    #   <p>A list of the Amazon Cognito user pool ARNs for the <code>COGNITO_USER_POOLS</code> authorizer. Each element is of this format: <code>arn:aws:cognito-idp:{region}:{account_id}:userpool/{user_pool_id}</code>. For a <code>TOKEN</code> or <code>REQUEST</code> authorizer, this is not defined. </p>
    #   @return [Array<String>]
    # @!attribute auth_type
    #   <p>Optional customer-defined field, used in OpenAPI imports and exports without functional impact.</p>
    #   @return [String]
    # @!attribute authorizer_uri
    #   <p>Specifies the authorizer's Uniform Resource Identifier (URI). For <code>TOKEN</code> or <code>REQUEST</code> authorizers, this must be a well-formed Lambda function URI, for example, <code>arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:{account_id}:function:{lambda_function_name}/invocations</code>. In general, the URI has this form  <code>arn:aws:apigateway:{region}:lambda:path/{service_api}</code>, where <code>{region}</code> is the same as the region hosting the Lambda function, <code>path</code> indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial <code>/</code>. For Lambda functions, this is usually of the form <code>/2015-03-31/functions/[FunctionARN]/invocations</code>.</p>
    #   @return [String]
    # @!attribute authorizer_credentials
    #   <p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, specify null.</p>
    #   @return [String]
    # @!attribute identity_source
    #   <p>The identity source for which authorization is requested. For a <code>TOKEN</code> or
    #           <code>COGNITO_USER_POOLS</code> authorizer, this is required and specifies the request
    #         header mapping expression for the custom header holding the authorization token submitted by
    #         the client. For example, if the token header name is <code>Auth</code>, the header mapping
    #         expression is <code>method.request.header.Auth</code>. For the <code>REQUEST</code>
    #         authorizer, this is required when authorization caching is enabled. The value is a
    #         comma-separated string of one or more mapping expressions of the specified request parameters.
    #         For example, if an <code>Auth</code> header, a <code>Name</code> query string parameter are
    #         defined as identity sources, this value is <code>method.request.header.Auth,
    #           method.request.querystring.Name</code>. These parameters will be used to derive the
    #         authorization caching key and to perform runtime validation of the <code>REQUEST</code>
    #         authorizer by verifying all of the identity-related request parameters are present, not null
    #         and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda
    #         function, otherwise, it returns a 401 Unauthorized response without calling the Lambda
    #         function. The valid value is a string of comma-separated mapping expressions of the specified
    #         request parameters. When the authorization caching is not enabled, this property is
    #         optional.</p>
    #   @return [String]
    # @!attribute identity_validation_expression
    #   <p>A validation expression for the incoming identity token. For <code>TOKEN</code> authorizers, this value is a regular expression. For <code>COGNITO_USER_POOLS</code> authorizers, API Gateway will match the <code>aud</code> field of the incoming token from the client against the specified regular expression. It will invoke the authorizer's Lambda function when there is a match. Otherwise, it will return a 401 Unauthorized response without calling the Lambda function. The validation expression does not apply to the <code>REQUEST</code> authorizer.</p>
    #   @return [String]
    # @!attribute authorizer_result_ttl_in_seconds
    #   <p>The TTL in seconds of cached authorizer results. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway will cache authorizer responses. If this field is not set, the default value is 300. The maximum value is 3600, or 1 hour.</p>
    #   @return [Integer]
    class CreateAuthorizerRequest < Struct.new(
      :rest_api_id,
      :name,
      :type,
      :provider_ar_ns,
      :auth_type,
      :authorizer_uri,
      :authorizer_credentials,
      :identity_source,
      :identity_validation_expression,
      :authorizer_result_ttl_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the base path that callers of the API must provide as part of the URL after the domain name.</p>
    # @!attribute base_path
    #   <p>The base path name that callers of the API must provide as part of the URL after the domain name.</p>
    #   @return [String]
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute stage
    #   <p>The name of the associated stage.</p>
    #   @return [String]
    class CreateBasePathMappingOutput < Struct.new(
      :base_path,
      :rest_api_id,
      :stage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Requests API Gateway to create a new BasePathMapping resource.</p>
    # @!attribute domain_name
    #   <p>The domain name of the BasePathMapping resource to create.</p>
    #   @return [String]
    # @!attribute domain_name_id
    #   <p>The identifier for the domain name resource. Required for private custom domain names.</p>
    #   @return [String]
    # @!attribute base_path
    #   <p>The base path name that callers of the API must provide as part of the URL after the domain name. This value must be unique for all of the mappings across a single API. Specify '(none)' if you do not want callers to specify a base path name after the domain name.</p>
    #   @return [String]
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute stage
    #   <p>The name of the API's stage that you want to use for this mapping. Specify '(none)' if you want callers to explicitly specify the stage name after any base path name.</p>
    #   @return [String]
    class CreateBasePathMappingRequest < Struct.new(
      :domain_name,
      :domain_name_id,
      :base_path,
      :rest_api_id,
      :stage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An immutable representation of a RestApi resource that can be called by users using Stages. A deployment must be associated with a Stage for it to be callable over the Internet.</p>
    # @!attribute id
    #   <p>The identifier for the deployment resource.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the deployment resource.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The date and time that the deployment resource was created.</p>
    #   @return [Time]
    # @!attribute api_summary
    #   <p>A summary of the RestApi at the date and time that the deployment resource was created.</p>
    #   @return [Hash<String, Hash<String, Types::MethodSnapshot>>]
    class CreateDeploymentOutput < Struct.new(
      :id,
      :description,
      :created_date,
      :api_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Requests API Gateway to create a Deployment resource.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute stage_name
    #   <p>The name of the Stage resource for the Deployment resource to create.</p>
    #   @return [String]
    # @!attribute stage_description
    #   <p>The description of the Stage resource for the Deployment resource to create.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the Deployment resource to create.</p>
    #   @return [String]
    # @!attribute cache_cluster_enabled
    #   <p>Enables a cache cluster for the Stage resource specified in the input.</p>
    #   @return [Boolean]
    # @!attribute cache_cluster_size
    #   <p>The stage's cache capacity in GB. For more information about choosing a cache size, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-caching.html">Enabling API caching to enhance responsiveness</a>.</p>
    #   @return [String]
    # @!attribute variables
    #   <p>A map that defines the stage variables for the Stage resource that is associated
    #             with the new deployment. Variable names can have alphanumeric and underscore characters, and the values
    #             must match <code>[A-Za-z0-9-._~:/?#&=,]+</code>.</p>
    #   @return [Hash<String, String>]
    # @!attribute canary_settings
    #   <p>The input configuration for the canary deployment when the deployment is a canary release deployment. </p>
    #   @return [Types::DeploymentCanarySettings]
    # @!attribute tracing_enabled
    #   <p>Specifies whether active tracing with X-ray is enabled for the Stage.</p>
    #   @return [Boolean]
    class CreateDeploymentRequest < Struct.new(
      :rest_api_id,
      :stage_name,
      :stage_description,
      :description,
      :cache_cluster_enabled,
      :cache_cluster_size,
      :variables,
      :canary_settings,
      :tracing_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A documentation part for a targeted API entity.</p>
    # @!attribute id
    #   <p>The DocumentationPart identifier, generated by API Gateway when the <code>DocumentationPart</code> is created.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the API entity to which the documentation applies. Valid fields depend on the targeted API entity type. All the valid location fields are not required. If not explicitly specified, a valid location field is treated as a wildcard and associated documentation content may be inherited by matching entities, unless overridden.</p>
    #   @return [Types::DocumentationPartLocation]
    # @!attribute properties
    #   <p>A content map of API-specific key-value pairs describing the targeted API entity. The map must be encoded as a JSON string, e.g., <code>"{ \"description\": \"The API does ...\" }"</code>.  Only OpenAPI-compliant documentation-related fields from the properties map are exported and, hence, published as part of the API entity definitions, while the original documentation parts are exported in a OpenAPI extension of <code>x-amazon-apigateway-documentation</code>.</p>
    #   @return [String]
    class CreateDocumentationPartOutput < Struct.new(
      :id,
      :location,
      :properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Creates a new documentation part of a given API.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the targeted API entity of the to-be-created documentation part.</p>
    #   @return [Types::DocumentationPartLocation]
    # @!attribute properties
    #   <p>The new documentation content map of the targeted API entity. Enclosed key-value pairs are API-specific, but only OpenAPI-compliant key-value pairs can be exported and, hence, published.</p>
    #   @return [String]
    class CreateDocumentationPartRequest < Struct.new(
      :rest_api_id,
      :location,
      :properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A snapshot of the documentation of an API.</p>
    # @!attribute version
    #   <p>The version identifier of the API documentation snapshot.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The date when the API documentation snapshot is created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the API documentation snapshot.</p>
    #   @return [String]
    class CreateDocumentationVersionOutput < Struct.new(
      :version,
      :created_date,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Creates a new documentation version of a given API.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute documentation_version
    #   <p>The version identifier of the new snapshot.</p>
    #   @return [String]
    # @!attribute stage_name
    #   <p>The stage name to be associated with the new documentation snapshot.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description about the new documentation snapshot.</p>
    #   @return [String]
    class CreateDocumentationVersionRequest < Struct.new(
      :rest_api_id,
      :documentation_version,
      :stage_name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a domain name access association between an access association source and a private custom domain name. With a domain name access association, an access association source can invoke a private custom domain name while isolated from the public internet.</p>
    # @!attribute domain_name_access_association_arn
    #   <p>The ARN of the domain name access association resource.
    #   </p>
    #   @return [String]
    # @!attribute domain_name_arn
    #   <p>The ARN of the domain name.
    #   </p>
    #   @return [String]
    # @!attribute access_association_source_type
    #   <p>
    #     The type of the domain name access association source.
    #   </p>
    #   @return [String]
    # @!attribute access_association_source
    #   <p>
    #     The ARN of the domain name access association source. For a VPCE, the ARN must be a VPC endpoint. 
    #   </p>
    #   @return [String]
    # @!attribute tags
    #   <p>
    #   The collection of tags. Each tag element is associated with a given resource.
    #   </p>
    #   @return [Hash<String, String>]
    class CreateDomainNameAccessAssociationOutput < Struct.new(
      :domain_name_access_association_arn,
      :domain_name_arn,
      :access_association_source_type,
      :access_association_source,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name_arn
    #   <p>
    #     The ARN of the domain name.
    #   </p>
    #   @return [String]
    # @!attribute access_association_source_type
    #   <p>
    #   The type of the domain name access association source.
    #   </p>
    #   @return [String]
    # @!attribute access_association_source
    #   <p>
    #   The identifier of the domain name access association source. For a VPCE, the value is the VPC endpoint ID.
    #   </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>
    #   @return [Hash<String, String>]
    class CreateDomainNameAccessAssociationRequest < Struct.new(
      :domain_name_arn,
      :access_association_source_type,
      :access_association_source,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a custom domain name as a user-friendly host name of an API (RestApi).</p>
    # @!attribute domain_name
    #   <p>The custom domain name as an API host name, for example, <code>my-api.example.com</code>.</p>
    #   @return [String]
    # @!attribute domain_name_id
    #   <p>The identifier for the domain name resource. Supported only for private custom domain names.</p>
    #   @return [String]
    # @!attribute domain_name_arn
    #   <p>The ARN of the domain name.
    #   </p>
    #   @return [String]
    # @!attribute certificate_name
    #   <p>The name of the certificate that will be used by edge-optimized endpoint or private endpoint for this domain name.</p>
    #   @return [String]
    # @!attribute certificate_arn
    #   <p>The reference to an Amazon Web Services-managed certificate that will be used by edge-optimized endpoint or private endpoint for this domain name. Certificate Manager is the only supported source.</p>
    #   @return [String]
    # @!attribute certificate_upload_date
    #   <p>The timestamp when the certificate that was used by edge-optimized endpoint or private endpoint for this domain name was uploaded.</p>
    #   @return [Time]
    # @!attribute regional_domain_name
    #   <p>The domain name associated with the regional endpoint for this custom domain name. You set up this association by adding a DNS record that points the custom domain name to this regional domain name. The regional domain name is returned by API Gateway when you create a regional endpoint.</p>
    #   @return [String]
    # @!attribute regional_hosted_zone_id
    #   <p>The region-specific Amazon Route 53 Hosted Zone ID of the regional endpoint. For more information, see Set up a Regional Custom Domain Name and AWS Regions and Endpoints for API Gateway. </p>
    #   @return [String]
    # @!attribute regional_certificate_name
    #   <p>The name of the certificate that will be used for validating the regional domain name.</p>
    #   @return [String]
    # @!attribute regional_certificate_arn
    #   <p>The reference to an Amazon Web Services-managed certificate that will be used for validating the regional domain name. Certificate Manager is the only supported source.</p>
    #   @return [String]
    # @!attribute distribution_domain_name
    #   <p>The domain name of the Amazon CloudFront distribution associated with this custom domain name for an edge-optimized endpoint. You set up this association when adding a DNS record pointing the custom domain name to this distribution name. For more information about CloudFront distributions, see the Amazon CloudFront documentation.</p>
    #   @return [String]
    # @!attribute distribution_hosted_zone_id
    #   <p>The region-agnostic Amazon Route 53 Hosted Zone ID of the edge-optimized endpoint. The valid value is <code>Z2FDTNDATAQYW2</code> for all the regions. For more information, see Set up a Regional Custom Domain Name and AWS Regions and Endpoints for API Gateway. </p>
    #   @return [String]
    # @!attribute endpoint_configuration
    #   <p>The endpoint configuration of this DomainName showing the endpoint types and IP address types of the domain name. </p>
    #   @return [Types::EndpointConfiguration]
    # @!attribute domain_name_status
    #   <p>The status of the DomainName migration. The valid values are <code>AVAILABLE</code> and <code>UPDATING</code>. If the status is <code>UPDATING</code>, the domain cannot be modified further until the existing operation is complete. If it is <code>AVAILABLE</code>, the domain can be updated.</p>
    #   @return [String]
    # @!attribute domain_name_status_message
    #   <p>An optional text message containing detailed information about status of the DomainName migration.</p>
    #   @return [String]
    # @!attribute security_policy
    #   <p>The Transport Layer Security (TLS) version + cipher suite for this DomainName. The valid values are <code>TLS_1_0</code> and <code>TLS_1_2</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute mutual_tls_authentication
    #   <p>The mutual TLS authentication configuration for a custom domain name. If specified, API Gateway
    #         performs two-way authentication between the client and the server. Clients must present a
    #         trusted certificate to access your API.</p>
    #   @return [Types::MutualTlsAuthentication]
    # @!attribute ownership_verification_certificate_arn
    #   <p>The ARN of the public certificate issued by ACM to validate ownership of your custom
    #         domain. Only required when configuring mutual TLS and using an ACM imported or private CA
    #         certificate ARN as the regionalCertificateArn.</p>
    #   @return [String]
    # @!attribute management_policy
    #   <p>A stringified JSON policy document that applies to the API Gateway Management service for this DomainName. This policy document controls access for access association sources to create domain name access associations with this DomainName. Supported only for private custom domain names.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>A stringified JSON policy document that applies to the <code>execute-api</code> service for this DomainName regardless of the caller and Method
    #         configuration. Supported only for private custom
    #         domain names.</p>
    #   @return [String]
    # @!attribute routing_mode
    #   <p>The routing mode for this domain name. The routing mode determines how API Gateway sends traffic from your custom domain name to your private APIs.</p>
    #   @return [String]
    class CreateDomainNameOutput < Struct.new(
      :domain_name,
      :domain_name_id,
      :domain_name_arn,
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
      :ownership_verification_certificate_arn,
      :management_policy,
      :policy,
      :routing_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to create a new domain name.</p>
    # @!attribute domain_name
    #   <p>The name of the DomainName resource.</p>
    #   @return [String]
    # @!attribute certificate_name
    #   <p>The user-friendly name of the certificate that will be used by edge-optimized endpoint or private endpoint for this domain name.</p>
    #   @return [String]
    # @!attribute certificate_body
    #   <p>[Deprecated] The body of the server certificate that will be used by edge-optimized endpoint or private endpoint for this domain name provided by your certificate authority.</p>
    #   @return [String]
    # @!attribute certificate_private_key
    #   <p>[Deprecated] Your edge-optimized endpoint's domain name certificate's private key.</p>
    #   @return [String]
    # @!attribute certificate_chain
    #   <p>[Deprecated] The intermediate certificates and optionally the root certificate, one after the other without any blank lines, used by an edge-optimized endpoint for this domain name. If you include the root certificate, your certificate chain must start with intermediate certificates and end with the root certificate. Use the intermediate certificates that were provided by your certificate authority. Do not include any intermediaries that are not in the chain of trust path.</p>
    #   @return [String]
    # @!attribute certificate_arn
    #   <p>The reference to an Amazon Web Services-managed certificate that will be used by edge-optimized endpoint or private endpoint for this domain name. Certificate Manager is the only supported source.</p>
    #   @return [String]
    # @!attribute regional_certificate_name
    #   <p>The user-friendly name of the certificate that will be used by regional endpoint for this domain name.</p>
    #   @return [String]
    # @!attribute regional_certificate_arn
    #   <p>The reference to an Amazon Web Services-managed certificate that will be used by regional endpoint for this domain name. Certificate Manager is the only supported source.</p>
    #   @return [String]
    # @!attribute endpoint_configuration
    #   <p>The endpoint configuration of this DomainName showing the endpoint types and IP address types of the domain name. </p>
    #   @return [Types::EndpointConfiguration]
    # @!attribute tags
    #   <p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>
    #   @return [Hash<String, String>]
    # @!attribute security_policy
    #   <p>The Transport Layer Security (TLS) version + cipher suite for this DomainName. The valid values are <code>TLS_1_0</code> and <code>TLS_1_2</code>.</p>
    #   @return [String]
    # @!attribute mutual_tls_authentication
    #   <p>The mutual TLS authentication configuration for a custom domain name. If specified, API Gateway
    #         performs two-way authentication between the client and the server. Clients must present a
    #         trusted certificate to access your API.</p>
    #   @return [Types::MutualTlsAuthenticationInput]
    # @!attribute ownership_verification_certificate_arn
    #   <p>The ARN of the public certificate issued by ACM to validate ownership of your custom
    #         domain. Only required when configuring mutual TLS and using an ACM imported or private CA
    #         certificate ARN as the regionalCertificateArn.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>A stringified JSON policy document that applies to the <code>execute-api</code> service for this DomainName regardless of the caller and Method
    #         configuration. Supported only for private custom
    #         domain names.</p>
    #   @return [String]
    # @!attribute routing_mode
    #   <p>
    #   The routing mode for this domain name. The routing mode determines how API Gateway sends traffic from your custom domain name to your private APIs.
    #   </p>
    #   @return [String]
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
      :ownership_verification_certificate_arn,
      :policy,
      :routing_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the data structure of a method's request or response payload.</p>
    # @!attribute id
    #   <p>The identifier for the model resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the model. Must be an alphanumeric string.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the model.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>The schema for the model. For <code>application/json</code> models, this should be JSON schema draft 4 model. Do not include "\*/" characters in the description of any properties because such "\*/" characters may be interpreted as the closing marker for comments in some languages, such as Java or JavaScript, causing the installation of your API's SDK generated by API Gateway to fail.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The content-type for the model.</p>
    #   @return [String]
    class CreateModelOutput < Struct.new(
      :id,
      :name,
      :description,
      :schema,
      :content_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to add a new Model to an existing RestApi resource.</p>
    # @!attribute rest_api_id
    #   <p>The RestApi identifier under which the Model will be created.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the model. Must be alphanumeric.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the model.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>The schema for the model. For <code>application/json</code> models, this should be JSON schema draft 4 model. The maximum size of the model is 400 KB.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The content-type for the model.</p>
    #   @return [String]
    class CreateModelRequest < Struct.new(
      :rest_api_id,
      :name,
      :description,
      :schema,
      :content_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A set of validation rules for incoming Method requests.</p>
    # @!attribute id
    #   <p>The identifier of this RequestValidator.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of this RequestValidator</p>
    #   @return [String]
    # @!attribute validate_request_body
    #   <p>A Boolean flag to indicate whether to validate a request body according to the configured Model schema.</p>
    #   @return [Boolean]
    # @!attribute validate_request_parameters
    #   <p>A Boolean flag to indicate whether to validate request parameters (<code>true</code>) or not (<code>false</code>).</p>
    #   @return [Boolean]
    class CreateRequestValidatorOutput < Struct.new(
      :id,
      :name,
      :validate_request_body,
      :validate_request_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:validate_request_body] = false unless options.key?(:validate_request_body)
        options[:validate_request_parameters] = false unless options.key?(:validate_request_parameters)
        super
      end
    end

    # <p>Creates a RequestValidator of a given RestApi.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the to-be-created RequestValidator.</p>
    #   @return [String]
    # @!attribute validate_request_body
    #   <p>A Boolean flag to indicate whether to validate request body according to the configured model schema for the method (<code>true</code>) or not (<code>false</code>).</p>
    #   @return [Boolean]
    # @!attribute validate_request_parameters
    #   <p>A Boolean flag to indicate whether to validate request parameters, <code>true</code>, or not <code>false</code>.</p>
    #   @return [Boolean]
    class CreateRequestValidatorRequest < Struct.new(
      :rest_api_id,
      :name,
      :validate_request_body,
      :validate_request_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an API resource.</p>
    # @!attribute id
    #   <p>The resource's identifier.</p>
    #   @return [String]
    # @!attribute parent_id
    #   <p>The parent resource's identifier.</p>
    #   @return [String]
    # @!attribute path_part
    #   <p>The last path segment for this resource.</p>
    #   @return [String]
    # @!attribute path
    #   <p>The full path for this resource.</p>
    #   @return [String]
    # @!attribute resource_methods
    #   <p>Gets an API resource's method of a given HTTP verb.</p>
    #   @return [Hash<String, Types::Method>]
    class CreateResourceOutput < Struct.new(
      :id,
      :parent_id,
      :path_part,
      :path,
      :resource_methods,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Requests API Gateway to create a Resource resource.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute parent_id
    #   <p>The parent resource's identifier.</p>
    #   @return [String]
    # @!attribute path_part
    #   <p>The last path segment for this resource.</p>
    #   @return [String]
    class CreateResourceRequest < Struct.new(
      :rest_api_id,
      :parent_id,
      :path_part,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a REST API.</p>
    # @!attribute id
    #   <p>The API's identifier. This identifier is unique across all of your APIs in API Gateway.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The API's name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The API's description.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The timestamp when the API was created.</p>
    #   @return [Time]
    # @!attribute version
    #   <p>A version identifier for the API.</p>
    #   @return [String]
    # @!attribute warnings
    #   <p>The warning messages reported when <code>failonwarnings</code> is turned on during API import.</p>
    #   @return [Array<String>]
    # @!attribute binary_media_types
    #   <p>The list of binary media types supported by the RestApi. By default, the RestApi supports only UTF-8-encoded text payloads.</p>
    #   @return [Array<String>]
    # @!attribute minimum_compression_size
    #   <p>A nullable integer that is used to enable compression (with non-negative between 0 and 10485760 (10M) bytes, inclusive) or disable compression (with a null value) on an API. When compression is enabled, compression or decompression is not applied on the payload if the payload size is smaller than this value. Setting it to zero allows compression for any payload size.</p>
    #   @return [Integer]
    # @!attribute api_key_source
    #   <p>The source of the API key for metering requests according to a usage plan. Valid values
    #         are: ><code>HEADER</code> to read the API key from the <code>X-API-Key</code> header of a
    #         request. <code>AUTHORIZER</code> to read the API key from the <code>UsageIdentifierKey</code>
    #         from a custom authorizer.</p>
    #   @return [String]
    # @!attribute endpoint_configuration
    #   <p>The endpoint configuration of this RestApi showing the endpoint types and IP address types of the API. </p>
    #   @return [Types::EndpointConfiguration]
    # @!attribute policy
    #   <p>A stringified JSON policy document that applies to this RestApi regardless of the caller and Method configuration.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute disable_execute_api_endpoint
    #   <p>Specifies whether clients can invoke your API by using the default <code>execute-api</code> endpoint.
    #         By default, clients can invoke your API with the default
    #         <code>https://{api_id}.execute-api.{region}.amazonaws.com</code> endpoint. To require that clients use a
    #         custom domain name to invoke your API, disable the default endpoint.</p>
    #   @return [Boolean]
    # @!attribute root_resource_id
    #   <p>The API's root resource ID.</p>
    #   @return [String]
    class CreateRestApiOutput < Struct.new(
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
      :disable_execute_api_endpoint,
      :root_resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:disable_execute_api_endpoint] = false unless options.key?(:disable_execute_api_endpoint)
        super
      end
    end

    # <p>The POST Request to add a new RestApi resource to your collection.</p>
    # @!attribute name
    #   <p>The name of the RestApi.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the RestApi.</p>
    #   @return [String]
    # @!attribute version
    #   <p>A version identifier for the API.</p>
    #   @return [String]
    # @!attribute clone_from
    #   <p>The ID of the RestApi that you want to clone from.</p>
    #   @return [String]
    # @!attribute binary_media_types
    #   <p>The list of binary media types supported by the RestApi. By default, the RestApi supports only UTF-8-encoded text payloads.</p>
    #   @return [Array<String>]
    # @!attribute minimum_compression_size
    #   <p>A nullable integer that is used to enable compression (with non-negative between 0 and 10485760 (10M) bytes, inclusive) or disable compression (with a null value) on an API. When compression is enabled, compression or decompression is not applied on the payload if the payload size is smaller than this value. Setting it to zero allows compression for any payload size.</p>
    #   @return [Integer]
    # @!attribute api_key_source
    #   <p>The source of the API key for metering requests according to a usage plan. Valid values
    #         are: <code>HEADER</code> to read the API key from the <code>X-API-Key</code> header of a
    #         request. <code>AUTHORIZER</code> to read the API key from the <code>UsageIdentifierKey</code>
    #         from a custom authorizer.</p>
    #   @return [String]
    # @!attribute endpoint_configuration
    #   <p>The endpoint configuration of this RestApi showing the endpoint types and IP address types of the API. </p>
    #   @return [Types::EndpointConfiguration]
    # @!attribute policy
    #   <p>A stringified JSON policy document that applies to this RestApi regardless of the caller and Method configuration.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>
    #   @return [Hash<String, String>]
    # @!attribute disable_execute_api_endpoint
    #   <p>Specifies whether clients can invoke your API by using the default <code>execute-api</code> endpoint.
    #         By default, clients can invoke your API with the default
    #         <code>https://{api_id}.execute-api.{region}.amazonaws.com</code> endpoint. To require that clients use a
    #         custom domain name to invoke your API, disable the default endpoint</p>
    #   @return [Boolean]
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
      :disable_execute_api_endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a unique identifier for a version of a deployed RestApi that is callable by users.</p>
    # @!attribute deployment_id
    #   <p>The identifier of the Deployment that the stage points to.</p>
    #   @return [String]
    # @!attribute client_certificate_id
    #   <p>The identifier of a client certificate for an API stage.</p>
    #   @return [String]
    # @!attribute stage_name
    #   <p>The name of the stage is the first path segment in the Uniform Resource Identifier (URI) of a call to API Gateway. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The stage's description.</p>
    #   @return [String]
    # @!attribute cache_cluster_enabled
    #   <p>Specifies whether a cache cluster is enabled for the stage. To activate a method-level cache, set <code>CachingEnabled</code> to <code>true</code> for a method. </p>
    #   @return [Boolean]
    # @!attribute cache_cluster_size
    #   <p>The stage's cache capacity in GB. For more information about choosing a cache size, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-caching.html">Enabling API caching to enhance responsiveness</a>.</p>
    #   @return [String]
    # @!attribute cache_cluster_status
    #   <p>The status of the cache cluster for the stage, if enabled.</p>
    #   @return [String]
    # @!attribute method_settings
    #   <p>A map that defines the method settings for a Stage resource. Keys (designated as <code>/{method_setting_key</code> below) are method paths defined as <code>{resource_path}/{http_method}</code> for an individual method override, or <code>/\*/\*</code> for overriding all methods in the stage.  </p>
    #   @return [Hash<String, Types::MethodSetting>]
    # @!attribute variables
    #   <p>A map that defines the stage variables for a Stage resource. Variable names can
    #             have alphanumeric and underscore characters, and the values must match <code>[A-Za-z0-9-._~:/?#&=,]+</code>.</p>
    #   @return [Hash<String, String>]
    # @!attribute documentation_version
    #   <p>The version of the associated API documentation.</p>
    #   @return [String]
    # @!attribute access_log_settings
    #   <p>Settings for logging access in this stage.</p>
    #   @return [Types::AccessLogSettings]
    # @!attribute canary_settings
    #   <p>Settings for the canary deployment in this stage.</p>
    #   @return [Types::CanarySettings]
    # @!attribute tracing_enabled
    #   <p>Specifies whether active tracing with X-ray is enabled for the Stage.</p>
    #   @return [Boolean]
    # @!attribute web_acl_arn
    #   <p>The ARN of the WebAcl associated with the Stage.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute created_date
    #   <p>The timestamp when the stage was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date
    #   <p>The timestamp when the stage last updated.</p>
    #   @return [Time]
    class CreateStageOutput < Struct.new(
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
      :last_updated_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:cache_cluster_enabled] = false unless options.key?(:cache_cluster_enabled)
        options[:tracing_enabled] = false unless options.key?(:tracing_enabled)
        super
      end
    end

    # <p>Requests API Gateway to create a Stage resource.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute stage_name
    #   <p>The name for the Stage resource. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.</p>
    #   @return [String]
    # @!attribute deployment_id
    #   <p>The identifier of the Deployment resource for the Stage resource.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the Stage resource.</p>
    #   @return [String]
    # @!attribute cache_cluster_enabled
    #   <p>Whether cache clustering is enabled for the stage.</p>
    #   @return [Boolean]
    # @!attribute cache_cluster_size
    #   <p>The stage's cache capacity in GB. For more information about choosing a cache size, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-caching.html">Enabling API caching to enhance responsiveness</a>.</p>
    #   @return [String]
    # @!attribute variables
    #   <p>A map that defines the stage variables for the new Stage resource. Variable names
    #             can have alphanumeric and underscore characters, and the values must match
    #             <code>[A-Za-z0-9-._~:/?#&=,]+</code>.</p>
    #   @return [Hash<String, String>]
    # @!attribute documentation_version
    #   <p>The version of the associated API documentation.</p>
    #   @return [String]
    # @!attribute canary_settings
    #   <p>The canary deployment settings of this stage.</p>
    #   @return [Types::CanarySettings]
    # @!attribute tracing_enabled
    #   <p>Specifies whether active tracing with X-ray is enabled for the Stage.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>
    #   @return [Hash<String, String>]
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a usage plan key to identify a plan customer.</p>
    # @!attribute id
    #   <p>The Id of a usage plan key.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of a usage plan key. Currently, the valid key type is <code>API_KEY</code>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of a usage plan key.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of a usage plan key.</p>
    #   @return [String]
    class CreateUsagePlanKeyOutput < Struct.new(
      :id,
      :type,
      :value,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The POST request to create a usage plan key for adding an existing API key to a usage plan.</p>
    # @!attribute usage_plan_id
    #   <p>The Id of the UsagePlan resource representing the usage plan containing the to-be-created UsagePlanKey resource representing a plan customer.</p>
    #   @return [String]
    # @!attribute key_id
    #   <p>The identifier of a UsagePlanKey resource for a plan customer.</p>
    #   @return [String]
    # @!attribute key_type
    #   <p>The type of a UsagePlanKey resource for a plan customer.</p>
    #   @return [String]
    class CreateUsagePlanKeyRequest < Struct.new(
      :usage_plan_id,
      :key_id,
      :key_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a usage plan used to specify who can assess associated API stages. Optionally, target request rate and quota limits can be set. 
    #         In some cases clients can exceed the targets that you set. Don’t rely on usage plans to control costs. 
    #         Consider using <a href="https://docs.aws.amazon.com/cost-management/latest/userguide/budgets-managing-costs.html">Amazon Web Services Budgets</a> to monitor costs 
    #         and <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF</a> to manage API requests.</p>
    # @!attribute id
    #   <p>The identifier of a UsagePlan resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of a usage plan.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of a usage plan.</p>
    #   @return [String]
    # @!attribute api_stages
    #   <p>The associated API stages of a usage plan.</p>
    #   @return [Array<Types::ApiStage>]
    # @!attribute throttle
    #   <p>A map containing method level throttling information for API stage in a usage plan.</p>
    #   @return [Types::ThrottleSettings]
    # @!attribute quota
    #   <p>The target maximum number of permitted requests per a given unit time interval.</p>
    #   @return [Types::QuotaSettings]
    # @!attribute product_code
    #   <p>The Amazon Web Services Marketplace product identifier to associate with the usage plan as a SaaS product on the Amazon Web Services Marketplace.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    class CreateUsagePlanOutput < Struct.new(
      :id,
      :name,
      :description,
      :api_stages,
      :throttle,
      :quota,
      :product_code,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The POST request to create a usage plan with the name, description, throttle limits and quota limits, as well as the associated API stages, specified in the payload.</p>
    # @!attribute name
    #   <p>The name of the usage plan.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the usage plan.</p>
    #   @return [String]
    # @!attribute api_stages
    #   <p>The associated API stages of the usage plan.</p>
    #   @return [Array<Types::ApiStage>]
    # @!attribute throttle
    #   <p>The throttling limits of the usage plan.</p>
    #   @return [Types::ThrottleSettings]
    # @!attribute quota
    #   <p>The quota of the usage plan.</p>
    #   @return [Types::QuotaSettings]
    # @!attribute tags
    #   <p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>
    #   @return [Hash<String, String>]
    class CreateUsagePlanRequest < Struct.new(
      :name,
      :description,
      :api_stages,
      :throttle,
      :quota,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An API Gateway VPC link for a RestApi to access resources in an Amazon Virtual Private Cloud (VPC).</p>
    # @!attribute id
    #   <p>The identifier of the  VpcLink. It is used in an Integration to reference this VpcLink.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name used to label and identify the VPC link.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the VPC link.</p>
    #   @return [String]
    # @!attribute target_arns
    #   <p>The ARN of the network load balancer of the VPC targeted by the VPC link. The network load balancer must be owned by the same Amazon Web Services account of the API owner.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The status of the VPC link. The valid values are <code>AVAILABLE</code>, <code>PENDING</code>, <code>DELETING</code>, or <code>FAILED</code>. Deploying an API will wait if the status is <code>PENDING</code> and will fail if the status is <code>DELETING</code>.  </p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A description about the VPC link status.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    class CreateVpcLinkOutput < Struct.new(
      :id,
      :name,
      :description,
      :target_arns,
      :status,
      :status_message,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Creates a VPC link, under the caller's account in a selected region, in an asynchronous operation that typically takes 2-4 minutes to complete and become operational. The caller must have permissions to create and update VPC Endpoint services.</p>
    # @!attribute name
    #   <p>The name used to label and identify the VPC link.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the VPC link.</p>
    #   @return [String]
    # @!attribute target_arns
    #   <p>The ARN of the network load balancer of the VPC targeted by the VPC link. The network load balancer must be owned by the same Amazon Web Services account of the API owner.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>
    #   @return [Hash<String, String>]
    class CreateVpcLinkRequest < Struct.new(
      :name,
      :description,
      :target_arns,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to delete the ApiKey resource.</p>
    # @!attribute api_key
    #   <p>The identifier of the ApiKey resource to be deleted.</p>
    #   @return [String]
    class DeleteApiKeyRequest < Struct.new(
      :api_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to delete an existing Authorizer resource.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute authorizer_id
    #   <p>The identifier of the Authorizer resource.</p>
    #   @return [String]
    class DeleteAuthorizerRequest < Struct.new(
      :rest_api_id,
      :authorizer_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to delete the BasePathMapping resource.</p>
    # @!attribute domain_name
    #   <p>The domain name of the BasePathMapping resource to delete.</p>
    #   @return [String]
    # @!attribute domain_name_id
    #   <p>
    #     The identifier for the domain name resource. Supported only for private custom domain names.
    #   </p>
    #   @return [String]
    # @!attribute base_path
    #   <p>The base path name of the BasePathMapping resource to delete.</p>
    #            <p>To specify an empty base path, set this parameter to <code>'(none)'</code>.</p>
    #   @return [String]
    class DeleteBasePathMappingRequest < Struct.new(
      :domain_name,
      :domain_name_id,
      :base_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to delete the ClientCertificate resource.</p>
    # @!attribute client_certificate_id
    #   <p>The identifier of the ClientCertificate resource to be deleted.</p>
    #   @return [String]
    class DeleteClientCertificateRequest < Struct.new(
      :client_certificate_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Requests API Gateway to delete a Deployment resource.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute deployment_id
    #   <p>The identifier of the Deployment resource to delete.</p>
    #   @return [String]
    class DeleteDeploymentRequest < Struct.new(
      :rest_api_id,
      :deployment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Deletes an existing documentation part of an API.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute documentation_part_id
    #   <p>The identifier of the to-be-deleted documentation part.</p>
    #   @return [String]
    class DeleteDocumentationPartRequest < Struct.new(
      :rest_api_id,
      :documentation_part_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Deletes an existing documentation version of an API.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute documentation_version
    #   <p>The version identifier of a to-be-deleted documentation snapshot.</p>
    #   @return [String]
    class DeleteDocumentationVersionRequest < Struct.new(
      :rest_api_id,
      :documentation_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name_access_association_arn
    #   <p>
    #     The ARN of the domain name access association resource.</p>
    #   @return [String]
    class DeleteDomainNameAccessAssociationRequest < Struct.new(
      :domain_name_access_association_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to delete the DomainName resource.</p>
    # @!attribute domain_name
    #   <p>The name of the DomainName resource to be deleted.</p>
    #   @return [String]
    # @!attribute domain_name_id
    #   <p>
    #     The identifier for the domain name resource. Supported only for private custom domain names.
    #   </p>
    #   @return [String]
    class DeleteDomainNameRequest < Struct.new(
      :domain_name,
      :domain_name_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Clears any customization of a GatewayResponse of a specified response type on the given RestApi and resets it with the default settings.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute response_type
    #   <p>The response type of the associated GatewayResponse.</p>
    #   @return [String]
    class DeleteGatewayResponseRequest < Struct.new(
      :rest_api_id,
      :response_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a delete integration request.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>Specifies a delete integration request's resource identifier.</p>
    #   @return [String]
    # @!attribute http_method
    #   <p>Specifies a delete integration request's HTTP method.</p>
    #   @return [String]
    class DeleteIntegrationRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a delete integration response request.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>Specifies a delete integration response request's resource identifier.</p>
    #   @return [String]
    # @!attribute http_method
    #   <p>Specifies a delete integration response request's HTTP method.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>Specifies a delete integration response request's status code.</p>
    #   @return [String]
    class DeleteIntegrationResponseRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :status_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to delete an existing Method resource.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The Resource identifier for the Method resource.</p>
    #   @return [String]
    # @!attribute http_method
    #   <p>The HTTP verb of the Method resource.</p>
    #   @return [String]
    class DeleteMethodRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to delete an existing MethodResponse resource.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The Resource identifier for the MethodResponse resource.</p>
    #   @return [String]
    # @!attribute http_method
    #   <p>The HTTP verb of the Method resource.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>The status code identifier for the MethodResponse resource.</p>
    #   @return [String]
    class DeleteMethodResponseRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :status_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to delete an existing model in an existing RestApi resource.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute model_name
    #   <p>The name of the model to delete.</p>
    #   @return [String]
    class DeleteModelRequest < Struct.new(
      :rest_api_id,
      :model_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Deletes a specified RequestValidator of a given RestApi.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute request_validator_id
    #   <p>The identifier of the RequestValidator to be deleted.</p>
    #   @return [String]
    class DeleteRequestValidatorRequest < Struct.new(
      :rest_api_id,
      :request_validator_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to delete a Resource.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the Resource resource.</p>
    #   @return [String]
    class DeleteResourceRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to delete the specified API from your collection.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    class DeleteRestApiRequest < Struct.new(
      :rest_api_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Requests API Gateway to delete a Stage resource.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute stage_name
    #   <p>The name of the Stage resource to delete.</p>
    #   @return [String]
    class DeleteStageRequest < Struct.new(
      :rest_api_id,
      :stage_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The DELETE request to delete a usage plan key and remove the underlying API key from the associated usage plan.</p>
    # @!attribute usage_plan_id
    #   <p>The Id of the UsagePlan resource representing the usage plan containing the to-be-deleted UsagePlanKey resource representing a plan customer.</p>
    #   @return [String]
    # @!attribute key_id
    #   <p>The Id of the UsagePlanKey resource to be deleted.</p>
    #   @return [String]
    class DeleteUsagePlanKeyRequest < Struct.new(
      :usage_plan_id,
      :key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The DELETE request to delete a usage plan of a given plan Id.</p>
    # @!attribute usage_plan_id
    #   <p>The Id of the to-be-deleted usage plan.</p>
    #   @return [String]
    class DeleteUsagePlanRequest < Struct.new(
      :usage_plan_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Deletes an existing VpcLink of a specified identifier.</p>
    # @!attribute vpc_link_id
    #   <p>The identifier of the  VpcLink. It is used in an Integration to reference this VpcLink.</p>
    #   @return [String]
    class DeleteVpcLinkRequest < Struct.new(
      :vpc_link_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An immutable representation of a RestApi resource that can be called by users using Stages. A deployment must be associated with a Stage for it to be callable over the Internet.</p>
    # @!attribute id
    #   <p>The identifier for the deployment resource.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the deployment resource.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The date and time that the deployment resource was created.</p>
    #   @return [Time]
    # @!attribute api_summary
    #   <p>A summary of the RestApi at the date and time that the deployment resource was created.</p>
    #   @return [Hash<String, Hash<String, Types::MethodSnapshot>>]
    class Deployment < Struct.new(
      :id,
      :description,
      :created_date,
      :api_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input configuration for a canary deployment.</p>
    # @!attribute percent_traffic
    #   <p>The percentage (0.0-100.0) of traffic routed to the canary deployment.</p>
    #   @return [Float]
    # @!attribute stage_variable_overrides
    #   <p>A stage variable overrides used for the canary release deployment. They can override existing stage variables or add new stage variables for the canary release deployment. These stage variables are represented as a string-to-string map between stage variable names and their values.</p>
    #   @return [Hash<String, String>]
    # @!attribute use_stage_cache
    #   <p>A Boolean flag to indicate whether the canary release deployment uses the stage cache or not.</p>
    #   @return [Boolean]
    class DeploymentCanarySettings < Struct.new(
      :percent_traffic,
      :stage_variable_overrides,
      :use_stage_cache,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:percent_traffic] = 0 unless options.key?(:percent_traffic)
        options[:use_stage_cache] = false unless options.key?(:use_stage_cache)
        super
      end
    end

    # <p>A documentation part for a targeted API entity.</p>
    # @!attribute id
    #   <p>The DocumentationPart identifier, generated by API Gateway when the <code>DocumentationPart</code> is created.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the API entity to which the documentation applies. Valid fields depend on the targeted API entity type. All the valid location fields are not required. If not explicitly specified, a valid location field is treated as a wildcard and associated documentation content may be inherited by matching entities, unless overridden.</p>
    #   @return [Types::DocumentationPartLocation]
    # @!attribute properties
    #   <p>A content map of API-specific key-value pairs describing the targeted API entity. The map must be encoded as a JSON string, e.g., <code>"{ \"description\": \"The API does ...\" }"</code>.  Only OpenAPI-compliant documentation-related fields from the properties map are exported and, hence, published as part of the API entity definitions, while the original documentation parts are exported in a OpenAPI extension of <code>x-amazon-apigateway-documentation</code>.</p>
    #   @return [String]
    class DocumentationPart < Struct.new(
      :id,
      :location,
      :properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the target API entity to which the documentation applies.</p>
    # @!attribute type
    #   <p>The type of API entity to which the documentation content applies. Valid values are <code>API</code>, <code>AUTHORIZER</code>, <code>MODEL</code>, <code>RESOURCE</code>, <code>METHOD</code>, <code>PATH_PARAMETER</code>, <code>QUERY_PARAMETER</code>, <code>REQUEST_HEADER</code>,  <code>REQUEST_BODY</code>, <code>RESPONSE</code>, <code>RESPONSE_HEADER</code>, and <code>RESPONSE_BODY</code>. Content inheritance does not apply to any entity of the <code>API</code>, <code>AUTHORIZER</code>, <code>METHOD</code>,  <code>MODEL</code>, <code>REQUEST_BODY</code>, or <code>RESOURCE</code> type.</p>
    #   @return [String]
    # @!attribute path
    #   <p>The URL path of the target. It is a valid field for the API entity types of <code>RESOURCE</code>, <code>METHOD</code>, <code>PATH_PARAMETER</code>, <code>QUERY_PARAMETER</code>, <code>REQUEST_HEADER</code>, <code>REQUEST_BODY</code>, <code>RESPONSE</code>, <code>RESPONSE_HEADER</code>, and <code>RESPONSE_BODY</code>. The default value is <code>/</code> for the root resource. When an applicable child entity inherits the content of another entity of the same type with more general specifications of the other <code>location</code> attributes,  the child entity's <code>path</code> attribute must match that of the parent entity as a prefix.</p>
    #   @return [String]
    # @!attribute method
    #   <p>The HTTP verb of a method. It is a valid field for the API entity types of  <code>METHOD</code>, <code>PATH_PARAMETER</code>, <code>QUERY_PARAMETER</code>, <code>REQUEST_HEADER</code>,  <code>REQUEST_BODY</code>, <code>RESPONSE</code>, <code>RESPONSE_HEADER</code>, and <code>RESPONSE_BODY</code>. The default value is <code>*</code> for any method.  When an applicable child entity inherits the content of an entity of the same type with more general specifications of the other <code>location</code> attributes,  the child entity's <code>method</code> attribute must match that of the parent entity exactly.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>The HTTP status code of a response. It is a valid field for the API entity types of <code>RESPONSE</code>, <code>RESPONSE_HEADER</code>, and <code>RESPONSE_BODY</code>. The default value is <code>*</code> for any status code. When an applicable child  entity inherits the content of an entity of the same type with more general specifications of the other <code>location</code> attributes, the child entity's <code>statusCode</code> attribute must match that of the parent entity exactly.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the targeted API entity. It is a valid and required field for the API entity types of <code>AUTHORIZER</code>, <code>MODEL</code>, <code>PATH_PARAMETER</code>, <code>QUERY_PARAMETER</code>, <code>REQUEST_HEADER</code>, <code>REQUEST_BODY</code> and <code>RESPONSE_HEADER</code>. It is an invalid field for any other entity type.</p>
    #   @return [String]
    class DocumentationPartLocation < Struct.new(
      :type,
      :path,
      :method,
      :status_code,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A snapshot of the documentation of an API.</p>
    # @!attribute version
    #   <p>The version identifier of the API documentation snapshot.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The date when the API documentation snapshot is created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the API documentation snapshot.</p>
    #   @return [String]
    class DocumentationVersion < Struct.new(
      :version,
      :created_date,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a custom domain name as a user-friendly host name of an API (RestApi).</p>
    # @!attribute domain_name
    #   <p>The custom domain name as an API host name, for example, <code>my-api.example.com</code>.</p>
    #   @return [String]
    # @!attribute domain_name_id
    #   <p>The identifier for the domain name resource. Supported only for private custom domain names.</p>
    #   @return [String]
    # @!attribute domain_name_arn
    #   <p>The ARN of the domain name.
    #   </p>
    #   @return [String]
    # @!attribute certificate_name
    #   <p>The name of the certificate that will be used by edge-optimized endpoint or private endpoint for this domain name.</p>
    #   @return [String]
    # @!attribute certificate_arn
    #   <p>The reference to an Amazon Web Services-managed certificate that will be used by edge-optimized endpoint or private endpoint for this domain name. Certificate Manager is the only supported source.</p>
    #   @return [String]
    # @!attribute certificate_upload_date
    #   <p>The timestamp when the certificate that was used by edge-optimized endpoint or private endpoint for this domain name was uploaded.</p>
    #   @return [Time]
    # @!attribute regional_domain_name
    #   <p>The domain name associated with the regional endpoint for this custom domain name. You set up this association by adding a DNS record that points the custom domain name to this regional domain name. The regional domain name is returned by API Gateway when you create a regional endpoint.</p>
    #   @return [String]
    # @!attribute regional_hosted_zone_id
    #   <p>The region-specific Amazon Route 53 Hosted Zone ID of the regional endpoint. For more information, see Set up a Regional Custom Domain Name and AWS Regions and Endpoints for API Gateway. </p>
    #   @return [String]
    # @!attribute regional_certificate_name
    #   <p>The name of the certificate that will be used for validating the regional domain name.</p>
    #   @return [String]
    # @!attribute regional_certificate_arn
    #   <p>The reference to an Amazon Web Services-managed certificate that will be used for validating the regional domain name. Certificate Manager is the only supported source.</p>
    #   @return [String]
    # @!attribute distribution_domain_name
    #   <p>The domain name of the Amazon CloudFront distribution associated with this custom domain name for an edge-optimized endpoint. You set up this association when adding a DNS record pointing the custom domain name to this distribution name. For more information about CloudFront distributions, see the Amazon CloudFront documentation.</p>
    #   @return [String]
    # @!attribute distribution_hosted_zone_id
    #   <p>The region-agnostic Amazon Route 53 Hosted Zone ID of the edge-optimized endpoint. The valid value is <code>Z2FDTNDATAQYW2</code> for all the regions. For more information, see Set up a Regional Custom Domain Name and AWS Regions and Endpoints for API Gateway. </p>
    #   @return [String]
    # @!attribute endpoint_configuration
    #   <p>The endpoint configuration of this DomainName showing the endpoint types and IP address types of the domain name. </p>
    #   @return [Types::EndpointConfiguration]
    # @!attribute domain_name_status
    #   <p>The status of the DomainName migration. The valid values are <code>AVAILABLE</code> and <code>UPDATING</code>. If the status is <code>UPDATING</code>, the domain cannot be modified further until the existing operation is complete. If it is <code>AVAILABLE</code>, the domain can be updated.</p>
    #   @return [String]
    # @!attribute domain_name_status_message
    #   <p>An optional text message containing detailed information about status of the DomainName migration.</p>
    #   @return [String]
    # @!attribute security_policy
    #   <p>The Transport Layer Security (TLS) version + cipher suite for this DomainName. The valid values are <code>TLS_1_0</code> and <code>TLS_1_2</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute mutual_tls_authentication
    #   <p>The mutual TLS authentication configuration for a custom domain name. If specified, API Gateway
    #         performs two-way authentication between the client and the server. Clients must present a
    #         trusted certificate to access your API.</p>
    #   @return [Types::MutualTlsAuthentication]
    # @!attribute ownership_verification_certificate_arn
    #   <p>The ARN of the public certificate issued by ACM to validate ownership of your custom
    #         domain. Only required when configuring mutual TLS and using an ACM imported or private CA
    #         certificate ARN as the regionalCertificateArn.</p>
    #   @return [String]
    # @!attribute management_policy
    #   <p>A stringified JSON policy document that applies to the API Gateway Management service for this DomainName. This policy document controls access for access association sources to create domain name access associations with this DomainName. Supported only for private custom domain names.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>A stringified JSON policy document that applies to the <code>execute-api</code> service for this DomainName regardless of the caller and Method
    #         configuration. Supported only for private custom
    #         domain names.</p>
    #   @return [String]
    # @!attribute routing_mode
    #   <p>The routing mode for this domain name. The routing mode determines how API Gateway sends traffic from your custom domain name to your private APIs.</p>
    #   @return [String]
    class DomainName < Struct.new(
      :domain_name,
      :domain_name_id,
      :domain_name_arn,
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
      :ownership_verification_certificate_arn,
      :management_policy,
      :policy,
      :routing_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a domain name access association between an access association source and a private custom domain name. With a domain name access association, an access association source can invoke a private custom domain name while isolated from the public internet.</p>
    # @!attribute domain_name_access_association_arn
    #   <p>The ARN of the domain name access association resource.
    #   </p>
    #   @return [String]
    # @!attribute domain_name_arn
    #   <p>The ARN of the domain name.
    #   </p>
    #   @return [String]
    # @!attribute access_association_source_type
    #   <p>
    #     The type of the domain name access association source.
    #   </p>
    #   @return [String]
    # @!attribute access_association_source
    #   <p>
    #     The ARN of the domain name access association source. For a VPCE, the ARN must be a VPC endpoint. 
    #   </p>
    #   @return [String]
    # @!attribute tags
    #   <p>
    #   The collection of tags. Each tag element is associated with a given resource.
    #   </p>
    #   @return [Hash<String, String>]
    class DomainNameAccessAssociation < Struct.new(
      :domain_name_access_association_arn,
      :domain_name_arn,
      :access_association_source_type,
      :access_association_source,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The endpoint configuration to indicate the types of endpoints an API (RestApi) or its custom domain name (DomainName) has and the IP address types that can invoke it. </p>
    # @!attribute types
    #   <p>A list of endpoint types of an API (RestApi) or its custom domain name (DomainName). For an edge-optimized API and its custom domain name, the endpoint type is <code>"EDGE"</code>. For a regional API and its custom domain name, the endpoint type is <code>REGIONAL</code>. For a private API, the endpoint type is <code>PRIVATE</code>.</p>
    #   @return [Array<String>]
    # @!attribute ip_address_type
    #   <p>The IP address types that can invoke an API (RestApi) or a DomainName. Use <code>ipv4</code> to allow only IPv4 addresses to
    #       invoke an API or DomainName, or use <code>dualstack</code> to allow both IPv4 and IPv6 addresses to invoke an API or a DomainName. For the
    #         <code>PRIVATE</code> endpoint type, only <code>dualstack</code> is supported.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_ids
    #   <p>A list of VpcEndpointIds of an API (RestApi) against which to create Route53 ALIASes. It is only supported for <code>PRIVATE</code> endpoint type.</p>
    #   @return [Array<String>]
    class EndpointConfiguration < Struct.new(
      :types,
      :ip_address_type,
      :vpc_endpoint_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The binary blob response to GetExport, which contains the generated SDK.</p>
    # @!attribute content_type
    #   <p>The content-type header value in the HTTP response. This will correspond to a valid 'accept' type in the request.</p>
    #   @return [String]
    # @!attribute content_disposition
    #   <p>The content-disposition header value in the HTTP response.</p>
    #   @return [String]
    # @!attribute body
    #   <p>The binary blob response to GetExport, which contains the export.</p>
    #   @return [String]
    class ExportResponse < Struct.new(
      :content_type,
      :content_disposition,
      :body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to flush authorizer cache entries on a specified stage.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute stage_name
    #   <p>The name of the stage to flush.</p>
    #   @return [String]
    class FlushStageAuthorizersCacheRequest < Struct.new(
      :rest_api_id,
      :stage_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Requests API Gateway to flush a stage's cache.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute stage_name
    #   <p>The name of the stage to flush its cache.</p>
    #   @return [String]
    class FlushStageCacheRequest < Struct.new(
      :rest_api_id,
      :stage_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A gateway response of a given response type and status code, with optional response parameters and mapping templates.</p>
    # @!attribute response_type
    #   <p>The response type of the associated GatewayResponse.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>The HTTP status code for this GatewayResponse.</p>
    #   @return [String]
    # @!attribute response_parameters
    #   <p>Response parameters (paths, query strings and headers) of the GatewayResponse as a
    #         string-to-string map of key-value pairs.</p>
    #   @return [Hash<String, String>]
    # @!attribute response_templates
    #   <p>Response templates of the GatewayResponse as a string-to-string map of key-value pairs.</p>
    #   @return [Hash<String, String>]
    # @!attribute default_response
    #   <p>A Boolean flag to indicate whether this GatewayResponse is the default gateway response (<code>true</code>) or not (<code>false</code>). A default gateway response is one generated by API Gateway without any customization by an API developer. </p>
    #   @return [Boolean]
    class GatewayResponse < Struct.new(
      :response_type,
      :status_code,
      :response_parameters,
      :response_templates,
      :default_response,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:default_response] = false unless options.key?(:default_response)
        super
      end
    end

    # <p>Represents a client certificate used to configure client-side SSL authentication while sending requests to the integration endpoint.</p>
    # @!attribute client_certificate_id
    #   <p>The identifier of the client certificate.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the client certificate.</p>
    #   @return [String]
    # @!attribute pem_encoded_certificate
    #   <p>The PEM-encoded public key of the client certificate, which can be used to configure certificate authentication in the integration endpoint .</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The timestamp when the client certificate was created.</p>
    #   @return [Time]
    # @!attribute expiration_date
    #   <p>The timestamp when the client certificate will expire.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    class GenerateClientCertificateOutput < Struct.new(
      :client_certificate_id,
      :description,
      :pem_encoded_certificate,
      :created_date,
      :expiration_date,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to generate a ClientCertificate resource.</p>
    # @!attribute description
    #   <p>The description of the ClientCertificate.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>
    #   @return [Hash<String, String>]
    class GenerateClientCertificateRequest < Struct.new(
      :description,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an AWS account that is associated with API Gateway.</p>
    # @!attribute cloudwatch_role_arn
    #   <p>The ARN of an Amazon CloudWatch role for the current Account. </p>
    #   @return [String]
    # @!attribute throttle_settings
    #   <p>Specifies the API request limits configured for the current Account.</p>
    #   @return [Types::ThrottleSettings]
    # @!attribute features
    #   <p>A list of features supported for the account. When usage plans are enabled, the features list will include an entry of <code>"UsagePlans"</code>.</p>
    #   @return [Array<String>]
    # @!attribute api_key_version
    #   <p>The version of the API keys used for the account.</p>
    #   @return [String]
    class GetAccountOutput < Struct.new(
      :cloudwatch_role_arn,
      :throttle_settings,
      :features,
      :api_key_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Requests API Gateway to get information about the current Account resource.</p>
    class GetAccountRequest < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A resource that can be distributed to callers for executing Method resources that require an API key. API keys can be mapped to any Stage on any RestApi, which indicates that the callers with the API key can make requests to that stage.</p>
    # @!attribute id
    #   <p>The identifier of the API Key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the API Key.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the API Key.</p>
    #   @return [String]
    # @!attribute customer_id
    #   <p>An Amazon Web Services Marketplace customer identifier, when integrating with the Amazon Web Services SaaS Marketplace.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the API Key.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Specifies whether the API Key can be used by callers.</p>
    #   @return [Boolean]
    # @!attribute created_date
    #   <p>The timestamp when the API Key was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date
    #   <p>The timestamp when the API Key was last updated.</p>
    #   @return [Time]
    # @!attribute stage_keys
    #   <p>A list of Stage resources that are associated with the ApiKey resource.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    class GetApiKeyOutput < Struct.new(
      :id,
      :value,
      :name,
      :customer_id,
      :description,
      :enabled,
      :created_date,
      :last_updated_date,
      :stage_keys,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>A request to get information about the current ApiKey resource.</p>
    # @!attribute api_key
    #   <p>The identifier of the ApiKey resource.</p>
    #   @return [String]
    # @!attribute include_value
    #   <p>A boolean flag to specify whether (<code>true</code>) or not (<code>false</code>) the result contains the key value.</p>
    #   @return [Boolean]
    class GetApiKeyRequest < Struct.new(
      :api_key,
      :include_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a collection of API keys as represented by an ApiKeys resource.</p>
    # @!attribute warnings
    #   <p>A list of warning messages logged during the import of API keys when the <code>failOnWarnings</code> option is set to true.</p>
    #   @return [Array<String>]
    # @!attribute items
    #   <p>The current page of elements from this collection.</p>
    #   @return [Array<Types::ApiKey>]
    # @!attribute position
    #   <p>The current pagination position in the paged result set.</p>
    #   @return [String]
    class GetApiKeysOutput < Struct.new(
      :warnings,
      :items,
      :position,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to get information about the current ApiKeys resource.</p>
    # @!attribute position
    #   <p>The current pagination position in the paged result set.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #   @return [Integer]
    # @!attribute name_query
    #   <p>The name of queried API keys.</p>
    #   @return [String]
    # @!attribute customer_id
    #   <p>The identifier of a customer in Amazon Web Services Marketplace or an external system, such as a developer portal.</p>
    #   @return [String]
    # @!attribute include_values
    #   <p>A boolean flag to specify whether (<code>true</code>) or not (<code>false</code>) the result contains key values.</p>
    #   @return [Boolean]
    class GetApiKeysRequest < Struct.new(
      :position,
      :limit,
      :name_query,
      :customer_id,
      :include_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an authorization layer for methods. If enabled on a method, API Gateway will activate the authorizer when a client calls the method.</p>
    # @!attribute id
    #   <p>The identifier for the authorizer resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the authorizer.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The authorizer type. Valid values are <code>TOKEN</code> for a Lambda function using a single authorization token submitted in a custom header, <code>REQUEST</code> for a Lambda function using incoming request parameters, and <code>COGNITO_USER_POOLS</code> for using an Amazon Cognito user pool.</p>
    #   @return [String]
    # @!attribute provider_ar_ns
    #   <p>A list of the Amazon Cognito user pool ARNs for the <code>COGNITO_USER_POOLS</code> authorizer. Each element is of this format: <code>arn:aws:cognito-idp:{region}:{account_id}:userpool/{user_pool_id}</code>. For a <code>TOKEN</code> or <code>REQUEST</code> authorizer, this is not defined. </p>
    #   @return [Array<String>]
    # @!attribute auth_type
    #   <p>Optional customer-defined field, used in OpenAPI imports and exports without functional impact.</p>
    #   @return [String]
    # @!attribute authorizer_uri
    #   <p>Specifies the authorizer's Uniform Resource Identifier (URI). For <code>TOKEN</code> or <code>REQUEST</code> authorizers, this must be a well-formed Lambda function URI, for example, <code>arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:{account_id}:function:{lambda_function_name}/invocations</code>. In general, the URI has this form  <code>arn:aws:apigateway:{region}:lambda:path/{service_api}</code>, where <code>{region}</code> is the same as the region hosting the Lambda function, <code>path</code> indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial <code>/</code>. For Lambda functions, this is usually of the form <code>/2015-03-31/functions/[FunctionARN]/invocations</code>.</p>
    #   @return [String]
    # @!attribute authorizer_credentials
    #   <p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, specify null.</p>
    #   @return [String]
    # @!attribute identity_source
    #   <p>The identity source for which authorization is requested. For a <code>TOKEN</code> or
    #           <code>COGNITO_USER_POOLS</code> authorizer, this is required and specifies the request
    #         header mapping expression for the custom header holding the authorization token submitted by
    #         the client. For example, if the token header name is <code>Auth</code>, the header mapping expression is
    #         <code>method.request.header.Auth</code>. For the <code>REQUEST</code> authorizer, this is required when authorization
    #         caching is enabled. The value is a comma-separated string of one or more mapping expressions
    #         of the specified request parameters. For example, if an <code>Auth</code> header, a <code>Name</code> query string
    #         parameter are defined as identity sources, this value is <code>method.request.header.Auth</code>,
    #         <code>method.request.querystring.Name</code>. These parameters will be used to derive the authorization
    #         caching key and to perform runtime validation of the <code>REQUEST</code> authorizer by verifying all of
    #         the identity-related request parameters are present, not null and non-empty. Only when this is
    #         true does the authorizer invoke the authorizer Lambda function, otherwise, it returns a 401
    #         Unauthorized response without calling the Lambda function. The valid value is a string of
    #         comma-separated mapping expressions of the specified request parameters. When the
    #         authorization caching is not enabled, this property is optional. </p>
    #   @return [String]
    # @!attribute identity_validation_expression
    #   <p>A validation expression for the incoming identity token. For <code>TOKEN</code> authorizers, this value is a regular expression. For <code>COGNITO_USER_POOLS</code> authorizers, API Gateway will match the <code>aud</code> field of the incoming token from the client against the specified regular expression. It will invoke the authorizer's Lambda function when there is a match. Otherwise, it will return a 401 Unauthorized response without calling the Lambda function. The validation expression does not apply to the <code>REQUEST</code> authorizer.</p>
    #   @return [String]
    # @!attribute authorizer_result_ttl_in_seconds
    #   <p>The TTL in seconds of cached authorizer results. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway will cache authorizer responses. If this field is not set, the default value is 300. The maximum value is 3600, or 1 hour.</p>
    #   @return [Integer]
    class GetAuthorizerOutput < Struct.new(
      :id,
      :name,
      :type,
      :provider_ar_ns,
      :auth_type,
      :authorizer_uri,
      :authorizer_credentials,
      :identity_source,
      :identity_validation_expression,
      :authorizer_result_ttl_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to describe an existing Authorizer resource.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute authorizer_id
    #   <p>The identifier of the Authorizer resource.</p>
    #   @return [String]
    class GetAuthorizerRequest < Struct.new(
      :rest_api_id,
      :authorizer_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a collection of Authorizer resources.</p>
    # @!attribute items
    #   <p>The current page of elements from this collection.</p>
    #   @return [Array<Types::Authorizer>]
    # @!attribute position
    #   <p>The current pagination position in the paged result set.</p>
    #   @return [String]
    class GetAuthorizersOutput < Struct.new(
      :items,
      :position,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to describe an existing Authorizers resource.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute position
    #   <p>The current pagination position in the paged result set.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #   @return [Integer]
    class GetAuthorizersRequest < Struct.new(
      :rest_api_id,
      :position,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the base path that callers of the API must provide as part of the URL after the domain name.</p>
    # @!attribute base_path
    #   <p>The base path name that callers of the API must provide as part of the URL after the domain name.</p>
    #   @return [String]
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute stage
    #   <p>The name of the associated stage.</p>
    #   @return [String]
    class GetBasePathMappingOutput < Struct.new(
      :base_path,
      :rest_api_id,
      :stage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to describe a BasePathMapping resource.</p>
    # @!attribute domain_name
    #   <p>The domain name of the BasePathMapping resource to be described.</p>
    #   @return [String]
    # @!attribute domain_name_id
    #   <p>The identifier for the domain name resource. Supported only for private custom domain names.
    #   </p>
    #   @return [String]
    # @!attribute base_path
    #   <p>The base path name that callers of the API must provide as part of the URL after the domain name. This value must be unique for all of the mappings across a single API. Specify '(none)' if you do not want callers to specify any base path name after the domain name.</p>
    #   @return [String]
    class GetBasePathMappingRequest < Struct.new(
      :domain_name,
      :domain_name_id,
      :base_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a collection of BasePathMapping resources.</p>
    # @!attribute items
    #   <p>The current page of elements from this collection.</p>
    #   @return [Array<Types::BasePathMapping>]
    # @!attribute position
    #   <p>The current pagination position in the paged result set.</p>
    #   @return [String]
    class GetBasePathMappingsOutput < Struct.new(
      :items,
      :position,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to get information about a collection of BasePathMapping resources.</p>
    # @!attribute domain_name
    #   <p>The domain name of a BasePathMapping resource.</p>
    #   @return [String]
    # @!attribute domain_name_id
    #   <p>
    #     The identifier for the domain name resource. Supported only for private custom domain names.
    #   </p>
    #   @return [String]
    # @!attribute position
    #   <p>The current pagination position in the paged result set.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #   @return [Integer]
    class GetBasePathMappingsRequest < Struct.new(
      :domain_name,
      :domain_name_id,
      :position,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a client certificate used to configure client-side SSL authentication while sending requests to the integration endpoint.</p>
    # @!attribute client_certificate_id
    #   <p>The identifier of the client certificate.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the client certificate.</p>
    #   @return [String]
    # @!attribute pem_encoded_certificate
    #   <p>The PEM-encoded public key of the client certificate, which can be used to configure certificate authentication in the integration endpoint .</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The timestamp when the client certificate was created.</p>
    #   @return [Time]
    # @!attribute expiration_date
    #   <p>The timestamp when the client certificate will expire.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    class GetClientCertificateOutput < Struct.new(
      :client_certificate_id,
      :description,
      :pem_encoded_certificate,
      :created_date,
      :expiration_date,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to get information about the current ClientCertificate resource.</p>
    # @!attribute client_certificate_id
    #   <p>The identifier of the ClientCertificate resource to be described.</p>
    #   @return [String]
    class GetClientCertificateRequest < Struct.new(
      :client_certificate_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a collection of ClientCertificate resources.</p>
    # @!attribute items
    #   <p>The current page of elements from this collection.</p>
    #   @return [Array<Types::ClientCertificate>]
    # @!attribute position
    #   <p>The current pagination position in the paged result set.</p>
    #   @return [String]
    class GetClientCertificatesOutput < Struct.new(
      :items,
      :position,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to get information about a collection of ClientCertificate resources.</p>
    # @!attribute position
    #   <p>The current pagination position in the paged result set.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #   @return [Integer]
    class GetClientCertificatesRequest < Struct.new(
      :position,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An immutable representation of a RestApi resource that can be called by users using Stages. A deployment must be associated with a Stage for it to be callable over the Internet.</p>
    # @!attribute id
    #   <p>The identifier for the deployment resource.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the deployment resource.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The date and time that the deployment resource was created.</p>
    #   @return [Time]
    # @!attribute api_summary
    #   <p>A summary of the RestApi at the date and time that the deployment resource was created.</p>
    #   @return [Hash<String, Hash<String, Types::MethodSnapshot>>]
    class GetDeploymentOutput < Struct.new(
      :id,
      :description,
      :created_date,
      :api_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Requests API Gateway to get information about a Deployment resource.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute deployment_id
    #   <p>The identifier of the Deployment resource to get information about.</p>
    #   @return [String]
    # @!attribute embed
    #   <p>A query parameter to retrieve the specified embedded resources of the returned Deployment resource in the response. In a REST API call, this <code>embed</code> parameter value is a list of comma-separated strings, as in  <code>GET /restapis/{restapi_id}/deployments/{deployment_id}?embed=var1,var2</code>. The SDK and other platform-dependent libraries might use a different format for the list. Currently, this request supports only retrieval of the embedded API summary this way. Hence, the parameter value must be a single-valued list containing only the <code>"apisummary"</code> string.  For example, <code>GET /restapis/{restapi_id}/deployments/{deployment_id}?embed=apisummary</code>.</p>
    #   @return [Array<String>]
    class GetDeploymentRequest < Struct.new(
      :rest_api_id,
      :deployment_id,
      :embed,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a collection resource that contains zero or more references to your existing deployments, and links that guide you on how to interact with your collection. The collection offers a paginated view of the contained deployments.</p>
    # @!attribute items
    #   <p>The current page of elements from this collection.</p>
    #   @return [Array<Types::Deployment>]
    # @!attribute position
    #   <p>The current pagination position in the paged result set.</p>
    #   @return [String]
    class GetDeploymentsOutput < Struct.new(
      :items,
      :position,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Requests API Gateway to get information about a Deployments collection.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute position
    #   <p>The current pagination position in the paged result set.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #   @return [Integer]
    class GetDeploymentsRequest < Struct.new(
      :rest_api_id,
      :position,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A documentation part for a targeted API entity.</p>
    # @!attribute id
    #   <p>The DocumentationPart identifier, generated by API Gateway when the <code>DocumentationPart</code> is created.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the API entity to which the documentation applies. Valid fields depend on the targeted API entity type. All the valid location fields are not required. If not explicitly specified, a valid location field is treated as a wildcard and associated documentation content may be inherited by matching entities, unless overridden.</p>
    #   @return [Types::DocumentationPartLocation]
    # @!attribute properties
    #   <p>A content map of API-specific key-value pairs describing the targeted API entity. The map must be encoded as a JSON string, e.g., <code>"{ \"description\": \"The API does ...\" }"</code>.  Only OpenAPI-compliant documentation-related fields from the properties map are exported and, hence, published as part of the API entity definitions, while the original documentation parts are exported in a OpenAPI extension of <code>x-amazon-apigateway-documentation</code>.</p>
    #   @return [String]
    class GetDocumentationPartOutput < Struct.new(
      :id,
      :location,
      :properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Gets a specified documentation part of a given API.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute documentation_part_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    class GetDocumentationPartRequest < Struct.new(
      :rest_api_id,
      :documentation_part_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The collection of documentation parts of an API.</p>
    # @!attribute items
    #   <p>The current page of elements from this collection.</p>
    #   @return [Array<Types::DocumentationPart>]
    # @!attribute position
    #   <p>The current pagination position in the paged result set.</p>
    #   @return [String]
    class GetDocumentationPartsOutput < Struct.new(
      :items,
      :position,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Gets the documentation parts of an API. The result may be filtered by the type, name, or path of API entities (targets).</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of API entities of the to-be-retrieved documentation parts. </p>
    #   @return [String]
    # @!attribute name_query
    #   <p>The name of API entities of the to-be-retrieved documentation parts.</p>
    #   @return [String]
    # @!attribute path
    #   <p>The path of API entities of the to-be-retrieved documentation parts.</p>
    #   @return [String]
    # @!attribute position
    #   <p>The current pagination position in the paged result set.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #   @return [Integer]
    # @!attribute location_status
    #   <p>The status of the API documentation parts to retrieve. Valid values are <code>DOCUMENTED</code> for retrieving DocumentationPart resources with content and <code>UNDOCUMENTED</code> for DocumentationPart resources without content.</p>
    #   @return [String]
    class GetDocumentationPartsRequest < Struct.new(
      :rest_api_id,
      :type,
      :name_query,
      :path,
      :position,
      :limit,
      :location_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A snapshot of the documentation of an API.</p>
    # @!attribute version
    #   <p>The version identifier of the API documentation snapshot.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The date when the API documentation snapshot is created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the API documentation snapshot.</p>
    #   @return [String]
    class GetDocumentationVersionOutput < Struct.new(
      :version,
      :created_date,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Gets a documentation snapshot of an API.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute documentation_version
    #   <p>The version identifier of the to-be-retrieved documentation snapshot.</p>
    #   @return [String]
    class GetDocumentationVersionRequest < Struct.new(
      :rest_api_id,
      :documentation_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The collection of documentation snapshots of an API. </p>
    # @!attribute items
    #   <p>The current page of elements from this collection.</p>
    #   @return [Array<Types::DocumentationVersion>]
    # @!attribute position
    #   <p>The current pagination position in the paged result set.</p>
    #   @return [String]
    class GetDocumentationVersionsOutput < Struct.new(
      :items,
      :position,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Gets the documentation versions of an API.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute position
    #   <p>The current pagination position in the paged result set.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #   @return [Integer]
    class GetDocumentationVersionsRequest < Struct.new(
      :rest_api_id,
      :position,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>
    #   The current page of elements from this collection.
    #   </p>
    #   @return [Array<Types::DomainNameAccessAssociation>]
    # @!attribute position
    #   <p>The current pagination position in the paged result set.
    #   </p>
    #   @return [String]
    class GetDomainNameAccessAssociationsOutput < Struct.new(
      :items,
      :position,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute position
    #   <p>The current pagination position in the paged result set.
    #   </p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
    #   </p>
    #   @return [Integer]
    # @!attribute resource_owner
    #   <p> The owner of the domain name access association. Use <code>SELF</code> to only list the domain name access associations owned by your own account.
    #         Use <code>OTHER_ACCOUNTS</code> to list the domain name access associations with your private custom domain names that are owned by other AWS
    #         accounts.</p>
    #   @return [String]
    class GetDomainNameAccessAssociationsRequest < Struct.new(
      :position,
      :limit,
      :resource_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a custom domain name as a user-friendly host name of an API (RestApi).</p>
    # @!attribute domain_name
    #   <p>The custom domain name as an API host name, for example, <code>my-api.example.com</code>.</p>
    #   @return [String]
    # @!attribute domain_name_id
    #   <p>The identifier for the domain name resource. Supported only for private custom domain names.</p>
    #   @return [String]
    # @!attribute domain_name_arn
    #   <p>The ARN of the domain name.
    #   </p>
    #   @return [String]
    # @!attribute certificate_name
    #   <p>The name of the certificate that will be used by edge-optimized endpoint or private endpoint for this domain name.</p>
    #   @return [String]
    # @!attribute certificate_arn
    #   <p>The reference to an Amazon Web Services-managed certificate that will be used by edge-optimized endpoint or private endpoint for this domain name. Certificate Manager is the only supported source.</p>
    #   @return [String]
    # @!attribute certificate_upload_date
    #   <p>The timestamp when the certificate that was used by edge-optimized endpoint or private endpoint for this domain name was uploaded.</p>
    #   @return [Time]
    # @!attribute regional_domain_name
    #   <p>The domain name associated with the regional endpoint for this custom domain name. You set up this association by adding a DNS record that points the custom domain name to this regional domain name. The regional domain name is returned by API Gateway when you create a regional endpoint.</p>
    #   @return [String]
    # @!attribute regional_hosted_zone_id
    #   <p>The region-specific Amazon Route 53 Hosted Zone ID of the regional endpoint. For more information, see Set up a Regional Custom Domain Name and AWS Regions and Endpoints for API Gateway. </p>
    #   @return [String]
    # @!attribute regional_certificate_name
    #   <p>The name of the certificate that will be used for validating the regional domain name.</p>
    #   @return [String]
    # @!attribute regional_certificate_arn
    #   <p>The reference to an Amazon Web Services-managed certificate that will be used for validating the regional domain name. Certificate Manager is the only supported source.</p>
    #   @return [String]
    # @!attribute distribution_domain_name
    #   <p>The domain name of the Amazon CloudFront distribution associated with this custom domain name for an edge-optimized endpoint. You set up this association when adding a DNS record pointing the custom domain name to this distribution name. For more information about CloudFront distributions, see the Amazon CloudFront documentation.</p>
    #   @return [String]
    # @!attribute distribution_hosted_zone_id
    #   <p>The region-agnostic Amazon Route 53 Hosted Zone ID of the edge-optimized endpoint. The valid value is <code>Z2FDTNDATAQYW2</code> for all the regions. For more information, see Set up a Regional Custom Domain Name and AWS Regions and Endpoints for API Gateway. </p>
    #   @return [String]
    # @!attribute endpoint_configuration
    #   <p>The endpoint configuration of this DomainName showing the endpoint types and IP address types of the domain name. </p>
    #   @return [Types::EndpointConfiguration]
    # @!attribute domain_name_status
    #   <p>The status of the DomainName migration. The valid values are <code>AVAILABLE</code> and <code>UPDATING</code>. If the status is <code>UPDATING</code>, the domain cannot be modified further until the existing operation is complete. If it is <code>AVAILABLE</code>, the domain can be updated.</p>
    #   @return [String]
    # @!attribute domain_name_status_message
    #   <p>An optional text message containing detailed information about status of the DomainName migration.</p>
    #   @return [String]
    # @!attribute security_policy
    #   <p>The Transport Layer Security (TLS) version + cipher suite for this DomainName. The valid values are <code>TLS_1_0</code> and <code>TLS_1_2</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute mutual_tls_authentication
    #   <p>The mutual TLS authentication configuration for a custom domain name. If specified, API Gateway
    #         performs two-way authentication between the client and the server. Clients must present a
    #         trusted certificate to access your API.</p>
    #   @return [Types::MutualTlsAuthentication]
    # @!attribute ownership_verification_certificate_arn
    #   <p>The ARN of the public certificate issued by ACM to validate ownership of your custom
    #         domain. Only required when configuring mutual TLS and using an ACM imported or private CA
    #         certificate ARN as the regionalCertificateArn.</p>
    #   @return [String]
    # @!attribute management_policy
    #   <p>A stringified JSON policy document that applies to the API Gateway Management service for this DomainName. This policy document controls access for access association sources to create domain name access associations with this DomainName. Supported only for private custom domain names.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>A stringified JSON policy document that applies to the <code>execute-api</code> service for this DomainName regardless of the caller and Method
    #         configuration. Supported only for private custom
    #         domain names.</p>
    #   @return [String]
    # @!attribute routing_mode
    #   <p>The routing mode for this domain name. The routing mode determines how API Gateway sends traffic from your custom domain name to your private APIs.</p>
    #   @return [String]
    class GetDomainNameOutput < Struct.new(
      :domain_name,
      :domain_name_id,
      :domain_name_arn,
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
      :ownership_verification_certificate_arn,
      :management_policy,
      :policy,
      :routing_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to get the name of a DomainName resource.</p>
    # @!attribute domain_name
    #   <p>The name of the DomainName resource.</p>
    #   @return [String]
    # @!attribute domain_name_id
    #   <p>
    #     The identifier for the domain name resource. Required for private custom domain names.
    #   </p>
    #   @return [String]
    class GetDomainNameRequest < Struct.new(
      :domain_name,
      :domain_name_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a collection of DomainName resources.</p>
    # @!attribute items
    #   <p>The current page of elements from this collection.</p>
    #   @return [Array<Types::DomainName>]
    # @!attribute position
    #   <p>The current pagination position in the paged result set.</p>
    #   @return [String]
    class GetDomainNamesOutput < Struct.new(
      :items,
      :position,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to describe a collection of DomainName resources.</p>
    # @!attribute position
    #   <p>The current pagination position in the paged result set.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #   @return [Integer]
    # @!attribute resource_owner
    #   <p>The owner of the domain name access association.
    #   </p>
    #   @return [String]
    class GetDomainNamesRequest < Struct.new(
      :position,
      :limit,
      :resource_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request a new export of a RestApi for a particular Stage.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute stage_name
    #   <p>The name of the Stage that will be exported.</p>
    #   @return [String]
    # @!attribute export_type
    #   <p>The type of export. Acceptable values are 'oas30' for OpenAPI 3.0.x and 'swagger' for Swagger/OpenAPI 2.0.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>A key-value map of query string parameters that specify properties of the export, depending on the requested <code>exportType</code>. For <code>exportType</code>
    #               <code>oas30</code> and <code>swagger</code>, any combination of the following parameters are supported: <code>extensions='integrations'</code> or <code>extensions='apigateway'</code> will export the API with x-amazon-apigateway-integration extensions. <code>extensions='authorizers'</code> will export the API with  x-amazon-apigateway-authorizer extensions. <code>postman</code> will export the API with Postman extensions, allowing for import to the Postman tool</p>
    #   @return [Hash<String, String>]
    # @!attribute accepts
    #   <p>The content-type of the export, for example <code>application/json</code>. Currently <code>application/json</code> and <code>application/yaml</code> are supported for <code>exportType</code> of<code>oas30</code> and <code>swagger</code>. This should be specified in the <code>Accept</code> header for direct API requests.</p>
    #   @return [String]
    class GetExportRequest < Struct.new(
      :rest_api_id,
      :stage_name,
      :export_type,
      :parameters,
      :accepts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A gateway response of a given response type and status code, with optional response parameters and mapping templates.</p>
    # @!attribute response_type
    #   <p>The response type of the associated GatewayResponse.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>The HTTP status code for this GatewayResponse.</p>
    #   @return [String]
    # @!attribute response_parameters
    #   <p>Response parameters (paths, query strings and headers) of the GatewayResponse as a
    #         string-to-string map of key-value pairs.</p>
    #   @return [Hash<String, String>]
    # @!attribute response_templates
    #   <p>Response templates of the GatewayResponse as a string-to-string map of key-value pairs.</p>
    #   @return [Hash<String, String>]
    # @!attribute default_response
    #   <p>A Boolean flag to indicate whether this GatewayResponse is the default gateway response (<code>true</code>) or not (<code>false</code>). A default gateway response is one generated by API Gateway without any customization by an API developer. </p>
    #   @return [Boolean]
    class GetGatewayResponseOutput < Struct.new(
      :response_type,
      :status_code,
      :response_parameters,
      :response_templates,
      :default_response,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:default_response] = false unless options.key?(:default_response)
        super
      end
    end

    # <p>Gets a GatewayResponse of a specified response type on the given RestApi.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute response_type
    #   <p>The response type of the associated GatewayResponse.</p>
    #   @return [String]
    class GetGatewayResponseRequest < Struct.new(
      :rest_api_id,
      :response_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The collection of the GatewayResponse instances of a RestApi as a <code>responseType</code>-to-GatewayResponse object map of key-value pairs. As such, pagination is not supported for querying this collection.</p>
    # @!attribute items
    #   <p>Returns the entire collection, because of no pagination support.</p>
    #   @return [Array<Types::GatewayResponse>]
    # @!attribute position
    #   <p>The current pagination position in the paged result set. The GatewayResponse collection does not support pagination and the position does not apply here.</p>
    #   @return [String]
    class GetGatewayResponsesOutput < Struct.new(
      :items,
      :position,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Gets the GatewayResponses collection on the given RestApi. If an API developer has not added any definitions for gateway responses, the result will be the API Gateway-generated default GatewayResponses collection for the supported response types.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute position
    #   <p>The current pagination position in the paged result set. The GatewayResponse collection does not support pagination and the position does not apply here.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500. The GatewayResponses collection does not support pagination and the limit does not apply here.</p>
    #   @return [Integer]
    class GetGatewayResponsesRequest < Struct.new(
      :rest_api_id,
      :position,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an <code>HTTP</code>, <code>HTTP_PROXY</code>, <code>AWS</code>, <code>AWS_PROXY</code>, or Mock integration.</p>
    # @!attribute type
    #   <p>Specifies an API method integration type. The valid value is one of the following:</p>
    #            <p>For the HTTP and HTTP proxy integrations, each integration can specify a protocol (<code>http/https</code>), port and path. Standard 80 and 443 ports are supported as well as custom ports above 1024. An HTTP or HTTP proxy integration with a <code>connectionType</code> of <code>VPC_LINK</code> is referred to as a private integration and uses a VpcLink to connect API Gateway to a network load balancer of a VPC.</p>
    #   @return [String]
    # @!attribute http_method
    #   <p>Specifies the integration's HTTP method type. For the Type property, if you specify <code>MOCK</code>, this property is optional. For Lambda integrations, you must set the integration method to <code>POST</code>. For all other types, you must specify this property.</p>
    #   @return [String]
    # @!attribute uri
    #   <p>Specifies Uniform Resource Identifier (URI) of the integration endpoint.</p>
    #            <p>For <code>HTTP</code> or <code>HTTP_PROXY</code> integrations, the URI must be a fully formed, encoded HTTP(S) URL
    #   	    according to the RFC-3986 specification for standard integrations. If <code>connectionType</code> is <code>VPC_LINK</code> specify the Network Load Balancer DNS name.
    #         For <code>AWS</code> or <code>AWS_PROXY</code> integrations, the URI is of
    #         the form <code>arn:aws:apigateway:{region}:{subdomain.service|service}:path|action/{service_api}</code>.
    #         Here, {Region} is the API Gateway region (e.g., us-east-1); {service} is the name of the
    #         integrated Amazon Web Services service (e.g., s3); and {subdomain} is a designated subdomain supported by
    #         certain Amazon Web Services  service for fast host-name lookup. action can be used for an Amazon Web Services  service
    #         action-based API, using an Action={name}&{p1}={v1}&p2={v2}... query string. The ensuing
    #         {service_api} refers to a supported action {name} plus any required input parameters.
    #         Alternatively, path can be used for an Amazon Web Services service path-based API. The ensuing service_api
    #         refers to the path to an Amazon Web Services  service resource, including the region of the integrated Amazon Web Services 
    #         service, if applicable. For example, for integration with the S3 API of GetObject, the uri can
    #         be either <code>arn:aws:apigateway:us-west-2:s3:action/GetObject&Bucket={bucket}&Key={key}</code> or
    #         <code>arn:aws:apigateway:us-west-2:s3:path/{bucket}/{key}</code>
    #            </p>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The type of the network connection to the integration endpoint. The valid value is <code>INTERNET</code> for connections through the public routable internet or <code>VPC_LINK</code> for private connections between API Gateway and a network load balancer in a VPC. The default value is <code>INTERNET</code>.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The ID of the VpcLink used for the integration when <code>connectionType=VPC_LINK</code> and undefined, otherwise.</p>
    #   @return [String]
    # @!attribute credentials
    #   <p>Specifies the credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string <code>arn:aws:iam::\*:user/\*</code>. To use resource-based permissions on supported Amazon Web Services services, specify null.</p>
    #   @return [String]
    # @!attribute request_parameters
    #   <p>A key-value map specifying request parameters that are passed from the method request to the back end. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the back end. The method request parameter value must match the pattern of  <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> must be a valid and unique method request parameter name.</p>
    #   @return [Hash<String, String>]
    # @!attribute request_templates
    #   <p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value.</p>
    #   @return [Hash<String, String>]
    # @!attribute passthrough_behavior
    #   <p>Specifies how the method request body of an unmapped content type will be passed through
    #         the integration request to the back end without transformation. A content type is unmapped if
    #         no mapping template is defined in the integration or the content type does not match any of
    #         the mapped content types, as specified in <code>requestTemplates</code>. The valid value is one of the
    #         following: <code>WHEN_NO_MATCH</code>: passes the method request body through the integration request to
    #         the back end without transformation when the method request content type does not match any
    #         content type associated with the mapping templates defined in the integration request.
    #         <code>WHEN_NO_TEMPLATES</code>: passes the method request body through the integration request to the back
    #         end without transformation when no mapping template is defined in the integration request. If
    #         a template is defined when this option is selected, the method request of an unmapped
    #         content-type will be rejected with an HTTP 415 Unsupported Media Type response. <code>NEVER</code>: rejects
    #         the method request with an HTTP 415 Unsupported Media Type response when either the method
    #         request content type does not match any content type associated with the mapping templates
    #         defined in the integration request or no mapping template is defined in the integration
    #         request.</p>
    #   @return [String]
    # @!attribute content_handling
    #   <p>Specifies how to handle request payload content type conversions. Supported values are <code>CONVERT_TO_BINARY</code> and <code>CONVERT_TO_TEXT</code>, with the following behaviors:</p>
    #            <p>If this property is not defined, the request payload will be passed through from the method request to integration request without modification, provided that the <code>passthroughBehavior</code> is configured to support payload pass-through.</p>
    #   @return [String]
    # @!attribute timeout_in_millis
    #   <p>Custom timeout between 50 and 29,000 milliseconds. The default value is 29,000 milliseconds or 29 seconds. You can increase the default value to longer than 29 seconds for Regional or private APIs only.</p>
    #   @return [Integer]
    # @!attribute cache_namespace
    #   <p>Specifies a group of related cached parameters. By default, API Gateway uses the resource ID as the <code>cacheNamespace</code>. You can specify the same <code>cacheNamespace</code> across resources to return the same cached data for requests to different resources.</p>
    #   @return [String]
    # @!attribute cache_key_parameters
    #   <p>A list of request parameters whose values API Gateway caches. To be valid values for <code>cacheKeyParameters</code>, these parameters must also be specified for Method <code>requestParameters</code>.</p>
    #   @return [Array<String>]
    # @!attribute integration_responses
    #   <p>Specifies the integration's responses.</p>
    #   @return [Hash<String, Types::IntegrationResponse>]
    # @!attribute tls_config
    #   <p>Specifies the TLS configuration for an integration.</p>
    #   @return [Types::TlsConfig]
    class GetIntegrationOutput < Struct.new(
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
      :tls_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:timeout_in_millis] = 0 unless options.key?(:timeout_in_millis)
        super
      end
    end

    # <p>Represents a request to get the integration configuration.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>Specifies a get integration request's resource identifier</p>
    #   @return [String]
    # @!attribute http_method
    #   <p>Specifies a get integration request's HTTP method.</p>
    #   @return [String]
    class GetIntegrationRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an integration response. The status code must map to an existing MethodResponse, and parameters and templates can be used to transform the back-end response.</p>
    # @!attribute status_code
    #   <p>Specifies the status code that is used to map the integration response to an existing MethodResponse.</p>
    #   @return [String]
    # @!attribute selection_pattern
    #   <p>Specifies the regular expression (regex) pattern used to choose an integration response based on the response from the back end. For example, if the success response returns nothing and the error response returns some string, you could use the <code>.+</code> regex to match error response. However, make sure that the error response does not contain any newline (<code>\n</code>) character in such cases. If the back end is an Lambda function, the Lambda function error header is matched. For all other HTTP and Amazon Web Services back ends, the HTTP status code is matched.</p>
    #   @return [String]
    # @!attribute response_parameters
    #   <p>A key-value map specifying response parameters that are passed to the method response from the back end.
    #               The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. The mapped non-static value must match the pattern of <code>integration.response.header.{name}</code> or <code>integration.response.body.{JSON-expression}</code>, where <code>name</code> is a valid and unique response header name and <code>JSON-expression</code> is a valid JSON expression without the <code>$</code> prefix.</p>
    #   @return [Hash<String, String>]
    # @!attribute response_templates
    #   <p>Specifies the templates used to transform the integration response body. Response templates are represented as a key/value map, with a content-type as the key and a template as the value.</p>
    #   @return [Hash<String, String>]
    # @!attribute content_handling
    #   <p>Specifies how to handle response payload content type conversions. Supported values are <code>CONVERT_TO_BINARY</code> and <code>CONVERT_TO_TEXT</code>, with the following behaviors:</p>
    #            <p>If this property is not defined, the response payload will be passed through from the integration response to the method response without modification.</p>
    #   @return [String]
    class GetIntegrationResponseOutput < Struct.new(
      :status_code,
      :selection_pattern,
      :response_parameters,
      :response_templates,
      :content_handling,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a get integration response request.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>Specifies a get integration response request's resource identifier.</p>
    #   @return [String]
    # @!attribute http_method
    #   <p>Specifies a get integration response request's HTTP method.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>Specifies a get integration response request's status code.</p>
    #   @return [String]
    class GetIntegrationResponseRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :status_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Represents a client-facing interface by which the client calls the API to access back-end resources. A Method resource is
    #             integrated with an Integration resource. Both consist of a request and one or more responses. The method request takes
    #             the client input that is passed to the back end through the integration request. A method response returns the output from
    #             the back end to the client through an integration response. A method request is embodied in a Method resource, whereas
    #             an integration request is embodied in an Integration resource.  On the other hand, a method response is represented
    #             by a MethodResponse resource, whereas an integration response is represented by an IntegrationResponse resource.
    #         </p>
    # @!attribute http_method
    #   <p>The method's HTTP verb.</p>
    #   @return [String]
    # @!attribute authorization_type
    #   <p>The method's authorization type. Valid values are <code>NONE</code> for open access, <code>AWS_IAM</code> for using AWS IAM permissions, <code>CUSTOM</code> for using a custom authorizer, or <code>COGNITO_USER_POOLS</code> for using a Cognito user pool.</p>
    #   @return [String]
    # @!attribute authorizer_id
    #   <p>The identifier of an Authorizer to use on this method. The <code>authorizationType</code> must be <code>CUSTOM</code>.</p>
    #   @return [String]
    # @!attribute api_key_required
    #   <p>A boolean flag specifying whether a valid ApiKey is required to invoke this method.</p>
    #   @return [Boolean]
    # @!attribute request_validator_id
    #   <p>The identifier of a RequestValidator for request validation.</p>
    #   @return [String]
    # @!attribute operation_name
    #   <p>A human-friendly operation identifier for the method. For example, you can assign the <code>operationName</code> of <code>ListPets</code> for the <code>GET /pets</code> method in the <code>PetStore</code> example.</p>
    #   @return [String]
    # @!attribute request_parameters
    #   <p>A key-value map defining required or optional method request parameters that can be accepted by API Gateway. A key is a method request parameter name matching the pattern of  <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> is a valid and unique parameter name. The value associated with the key is a Boolean flag indicating whether the parameter is required (<code>true</code>) or optional (<code>false</code>).  The method request parameter names defined here are available in Integration to be mapped to integration request parameters or templates.</p>
    #   @return [Hash<String, Boolean>]
    # @!attribute request_models
    #   <p>A key-value map specifying data schemas, represented by Model resources, (as the mapped value) of the request payloads of given content types (as the mapping key).</p>
    #   @return [Hash<String, String>]
    # @!attribute method_responses
    #   <p>Gets a method response associated with a given HTTP status code. </p>
    #   @return [Hash<String, Types::MethodResponse>]
    # @!attribute method_integration
    #   <p>Gets the method's integration responsible for passing the client-submitted request to the back end and performing necessary transformations to make the request compliant with the back end.</p>
    #   @return [Types::Integration]
    # @!attribute authorization_scopes
    #   <p>A list of authorization scopes configured on the method. The scopes are used with a <code>COGNITO_USER_POOLS</code> authorizer to authorize the method invocation. The authorization works by matching the method scopes against the scopes parsed from the access token in the incoming request. The method invocation is authorized if any method scopes matches a claimed scope in the access token. Otherwise, the invocation is not authorized. When the method scope is configured, the client must provide an access token instead of an identity token for authorization purposes.</p>
    #   @return [Array<String>]
    class GetMethodOutput < Struct.new(
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
      :authorization_scopes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to describe an existing Method resource.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The Resource identifier for the Method resource.</p>
    #   @return [String]
    # @!attribute http_method
    #   <p>Specifies the method request's HTTP method type.</p>
    #   @return [String]
    class GetMethodRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a method response of a given HTTP status code returned to the client. The method response is passed from the back end through the associated integration response that can be transformed using a mapping template. </p>
    # @!attribute status_code
    #   <p>The method response's status code.</p>
    #   @return [String]
    # @!attribute response_parameters
    #   <p>A key-value map specifying required or optional response parameters that API Gateway can send back to the caller. A key defines a method response header and the value specifies whether the associated method response header is required or not. The expression of the key must match the pattern <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. API Gateway passes certain integration response data to the method response headers specified here according to the mapping you prescribe in the API's IntegrationResponse. The integration response data that can be mapped include an integration response header expressed in <code>integration.response.header.{name}</code>, a static value enclosed within a pair of single quotes (e.g., <code>'application/json'</code>), or a JSON expression from the back-end response payload in the form of <code>integration.response.body.{JSON-expression}</code>, where <code>JSON-expression</code> is a valid JSON expression without the <code>$</code> prefix.)</p>
    #   @return [Hash<String, Boolean>]
    # @!attribute response_models
    #   <p>Specifies the Model resources used for the response's content-type. Response models are represented as a key/value map, with a content-type as the key and a Model name as the value.</p>
    #   @return [Hash<String, String>]
    class GetMethodResponseOutput < Struct.new(
      :status_code,
      :response_parameters,
      :response_models,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to describe a MethodResponse resource.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The Resource identifier for the MethodResponse resource.</p>
    #   @return [String]
    # @!attribute http_method
    #   <p>The HTTP verb of the Method resource.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>The status code for the MethodResponse resource.</p>
    #   @return [String]
    class GetMethodResponseRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :status_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the data structure of a method's request or response payload.</p>
    # @!attribute id
    #   <p>The identifier for the model resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the model. Must be an alphanumeric string.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the model.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>The schema for the model. For <code>application/json</code> models, this should be JSON schema draft 4 model. Do not include "\*/" characters in the description of any properties because such "\*/" characters may be interpreted as the closing marker for comments in some languages, such as Java or JavaScript, causing the installation of your API's SDK generated by API Gateway to fail.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The content-type for the model.</p>
    #   @return [String]
    class GetModelOutput < Struct.new(
      :id,
      :name,
      :description,
      :schema,
      :content_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to list information about a model in an existing RestApi resource.</p>
    # @!attribute rest_api_id
    #   <p>The RestApi identifier under which the Model exists.</p>
    #   @return [String]
    # @!attribute model_name
    #   <p>The name of the model as an identifier.</p>
    #   @return [String]
    # @!attribute flatten
    #   <p>A query parameter of a Boolean value to resolve (<code>true</code>) all external model references and returns a flattened model schema or not (<code>false</code>) The default is <code>false</code>.</p>
    #   @return [Boolean]
    class GetModelRequest < Struct.new(
      :rest_api_id,
      :model_name,
      :flatten,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a mapping template used to transform a payload.</p>
    # @!attribute value
    #   <p>The Apache Velocity Template Language (VTL) template content used for the template resource.</p>
    #   @return [String]
    class GetModelTemplateOutput < Struct.new(
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to generate a sample mapping template used to transform the payload.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute model_name
    #   <p>The name of the model for which to generate a template.</p>
    #   @return [String]
    class GetModelTemplateRequest < Struct.new(
      :rest_api_id,
      :model_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a collection of Model resources.</p>
    # @!attribute items
    #   <p>The current page of elements from this collection.</p>
    #   @return [Array<Types::Model>]
    # @!attribute position
    #   <p>The current pagination position in the paged result set.</p>
    #   @return [String]
    class GetModelsOutput < Struct.new(
      :items,
      :position,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to list existing Models defined for a RestApi resource.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute position
    #   <p>The current pagination position in the paged result set.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #   @return [Integer]
    class GetModelsRequest < Struct.new(
      :rest_api_id,
      :position,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A set of validation rules for incoming Method requests.</p>
    # @!attribute id
    #   <p>The identifier of this RequestValidator.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of this RequestValidator</p>
    #   @return [String]
    # @!attribute validate_request_body
    #   <p>A Boolean flag to indicate whether to validate a request body according to the configured Model schema.</p>
    #   @return [Boolean]
    # @!attribute validate_request_parameters
    #   <p>A Boolean flag to indicate whether to validate request parameters (<code>true</code>) or not (<code>false</code>).</p>
    #   @return [Boolean]
    class GetRequestValidatorOutput < Struct.new(
      :id,
      :name,
      :validate_request_body,
      :validate_request_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:validate_request_body] = false unless options.key?(:validate_request_body)
        options[:validate_request_parameters] = false unless options.key?(:validate_request_parameters)
        super
      end
    end

    # <p>Gets a RequestValidator of a given RestApi.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute request_validator_id
    #   <p>The identifier of the RequestValidator to be retrieved.</p>
    #   @return [String]
    class GetRequestValidatorRequest < Struct.new(
      :rest_api_id,
      :request_validator_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A collection of RequestValidator resources of a given RestApi.</p>
    # @!attribute items
    #   <p>The current page of elements from this collection.</p>
    #   @return [Array<Types::RequestValidator>]
    # @!attribute position
    #   <p>The current pagination position in the paged result set.</p>
    #   @return [String]
    class GetRequestValidatorsOutput < Struct.new(
      :items,
      :position,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Gets the RequestValidators collection of a given RestApi.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute position
    #   <p>The current pagination position in the paged result set.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #   @return [Integer]
    class GetRequestValidatorsRequest < Struct.new(
      :rest_api_id,
      :position,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an API resource.</p>
    # @!attribute id
    #   <p>The resource's identifier.</p>
    #   @return [String]
    # @!attribute parent_id
    #   <p>The parent resource's identifier.</p>
    #   @return [String]
    # @!attribute path_part
    #   <p>The last path segment for this resource.</p>
    #   @return [String]
    # @!attribute path
    #   <p>The full path for this resource.</p>
    #   @return [String]
    # @!attribute resource_methods
    #   <p>Gets an API resource's method of a given HTTP verb.</p>
    #   @return [Hash<String, Types::Method>]
    class GetResourceOutput < Struct.new(
      :id,
      :parent_id,
      :path_part,
      :path,
      :resource_methods,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to list information about a resource.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier for the Resource resource.</p>
    #   @return [String]
    # @!attribute embed
    #   <p>A query parameter to retrieve the specified resources embedded in the returned Resource representation in the response. This <code>embed</code> parameter value is a list of comma-separated strings. Currently, the request supports only retrieval of the embedded Method resources this way. The query parameter value must be a single-valued list and contain the <code>"methods"</code> string. For example, <code>GET /restapis/{restapi_id}/resources/{resource_id}?embed=methods</code>.</p>
    #   @return [Array<String>]
    class GetResourceRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :embed,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a collection of Resource resources.</p>
    # @!attribute items
    #   <p>The current page of elements from this collection.</p>
    #   @return [Array<Types::Resource>]
    # @!attribute position
    #   <p>The current pagination position in the paged result set.</p>
    #   @return [String]
    class GetResourcesOutput < Struct.new(
      :items,
      :position,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to list information about a collection of resources.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute position
    #   <p>The current pagination position in the paged result set.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #   @return [Integer]
    # @!attribute embed
    #   <p>A query parameter used to retrieve the specified resources embedded in the returned Resources resource in the response.  This <code>embed</code> parameter value is a list of comma-separated strings. Currently, the request supports only retrieval of the embedded Method resources this way. The query parameter value must be a single-valued list and contain the <code>"methods"</code> string. For example, <code>GET /restapis/{restapi_id}/resources?embed=methods</code>.</p>
    #   @return [Array<String>]
    class GetResourcesRequest < Struct.new(
      :rest_api_id,
      :position,
      :limit,
      :embed,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a REST API.</p>
    # @!attribute id
    #   <p>The API's identifier. This identifier is unique across all of your APIs in API Gateway.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The API's name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The API's description.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The timestamp when the API was created.</p>
    #   @return [Time]
    # @!attribute version
    #   <p>A version identifier for the API.</p>
    #   @return [String]
    # @!attribute warnings
    #   <p>The warning messages reported when <code>failonwarnings</code> is turned on during API import.</p>
    #   @return [Array<String>]
    # @!attribute binary_media_types
    #   <p>The list of binary media types supported by the RestApi. By default, the RestApi supports only UTF-8-encoded text payloads.</p>
    #   @return [Array<String>]
    # @!attribute minimum_compression_size
    #   <p>A nullable integer that is used to enable compression (with non-negative between 0 and 10485760 (10M) bytes, inclusive) or disable compression (with a null value) on an API. When compression is enabled, compression or decompression is not applied on the payload if the payload size is smaller than this value. Setting it to zero allows compression for any payload size.</p>
    #   @return [Integer]
    # @!attribute api_key_source
    #   <p>The source of the API key for metering requests according to a usage plan. Valid values
    #         are: ><code>HEADER</code> to read the API key from the <code>X-API-Key</code> header of a
    #         request. <code>AUTHORIZER</code> to read the API key from the <code>UsageIdentifierKey</code>
    #         from a custom authorizer.</p>
    #   @return [String]
    # @!attribute endpoint_configuration
    #   <p>The endpoint configuration of this RestApi showing the endpoint types and IP address types of the API. </p>
    #   @return [Types::EndpointConfiguration]
    # @!attribute policy
    #   <p>A stringified JSON policy document that applies to this RestApi regardless of the caller and Method configuration.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute disable_execute_api_endpoint
    #   <p>Specifies whether clients can invoke your API by using the default <code>execute-api</code> endpoint.
    #         By default, clients can invoke your API with the default
    #         <code>https://{api_id}.execute-api.{region}.amazonaws.com</code> endpoint. To require that clients use a
    #         custom domain name to invoke your API, disable the default endpoint.</p>
    #   @return [Boolean]
    # @!attribute root_resource_id
    #   <p>The API's root resource ID.</p>
    #   @return [String]
    class GetRestApiOutput < Struct.new(
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
      :disable_execute_api_endpoint,
      :root_resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:disable_execute_api_endpoint] = false unless options.key?(:disable_execute_api_endpoint)
        super
      end
    end

    # <p>The GET request to list an existing RestApi defined for your collection. </p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    class GetRestApiRequest < Struct.new(
      :rest_api_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains references to your APIs and links that guide you in how to interact with your collection. A collection offers a paginated view of your APIs.</p>
    # @!attribute items
    #   <p>The current page of elements from this collection.</p>
    #   @return [Array<Types::RestApi>]
    # @!attribute position
    #   <p>The current pagination position in the paged result set.</p>
    #   @return [String]
    class GetRestApisOutput < Struct.new(
      :items,
      :position,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The GET request to list existing RestApis defined for your collection.</p>
    # @!attribute position
    #   <p>The current pagination position in the paged result set.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #   @return [Integer]
    class GetRestApisRequest < Struct.new(
      :position,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request a new generated client SDK for a RestApi and Stage.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute stage_name
    #   <p>The name of the Stage that the SDK will use.</p>
    #   @return [String]
    # @!attribute sdk_type
    #   <p>The language for the generated SDK. Currently <code>java</code>, <code>javascript</code>, <code>android</code>, <code>objectivec</code> (for iOS), <code>swift</code> (for iOS), and <code>ruby</code>  are supported.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>A string-to-string key-value map of query parameters <code>sdkType</code>-dependent properties of the SDK. For <code>sdkType</code> of <code>objectivec</code> or <code>swift</code>,  a parameter named <code>classPrefix</code> is required. For <code>sdkType</code> of <code>android</code>, parameters named <code>groupId</code>, <code>artifactId</code>, <code>artifactVersion</code>, and <code>invokerPackage</code> are required. For <code>sdkType</code> of <code>java</code>, parameters named <code>serviceName</code> and <code>javaPackageName</code> are required. </p>
    #   @return [Hash<String, String>]
    class GetSdkRequest < Struct.new(
      :rest_api_id,
      :stage_name,
      :sdk_type,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A type of SDK that API Gateway can generate.</p>
    # @!attribute id
    #   <p>The identifier of an SdkType instance.</p>
    #   @return [String]
    # @!attribute friendly_name
    #   <p>The user-friendly name of an SdkType instance.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of an SdkType.</p>
    #   @return [String]
    # @!attribute configuration_properties
    #   <p>A list of configuration properties of an SdkType.</p>
    #   @return [Array<Types::SdkConfigurationProperty>]
    class GetSdkTypeOutput < Struct.new(
      :id,
      :friendly_name,
      :description,
      :configuration_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Get an SdkType instance.</p>
    # @!attribute id
    #   <p>The identifier of the queried SdkType instance.</p>
    #   @return [String]
    class GetSdkTypeRequest < Struct.new(
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The collection of SdkType instances.</p>
    # @!attribute items
    #   <p>The current page of elements from this collection.</p>
    #   @return [Array<Types::SdkType>]
    class GetSdkTypesOutput < Struct.new(
      :items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Get the SdkTypes collection.</p>
    # @!attribute position
    #   <p>The current pagination position in the paged result set.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #   @return [Integer]
    class GetSdkTypesRequest < Struct.new(
      :position,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a unique identifier for a version of a deployed RestApi that is callable by users.</p>
    # @!attribute deployment_id
    #   <p>The identifier of the Deployment that the stage points to.</p>
    #   @return [String]
    # @!attribute client_certificate_id
    #   <p>The identifier of a client certificate for an API stage.</p>
    #   @return [String]
    # @!attribute stage_name
    #   <p>The name of the stage is the first path segment in the Uniform Resource Identifier (URI) of a call to API Gateway. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The stage's description.</p>
    #   @return [String]
    # @!attribute cache_cluster_enabled
    #   <p>Specifies whether a cache cluster is enabled for the stage. To activate a method-level cache, set <code>CachingEnabled</code> to <code>true</code> for a method. </p>
    #   @return [Boolean]
    # @!attribute cache_cluster_size
    #   <p>The stage's cache capacity in GB. For more information about choosing a cache size, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-caching.html">Enabling API caching to enhance responsiveness</a>.</p>
    #   @return [String]
    # @!attribute cache_cluster_status
    #   <p>The status of the cache cluster for the stage, if enabled.</p>
    #   @return [String]
    # @!attribute method_settings
    #   <p>A map that defines the method settings for a Stage resource. Keys (designated as <code>/{method_setting_key</code> below) are method paths defined as <code>{resource_path}/{http_method}</code> for an individual method override, or <code>/\*/\*</code> for overriding all methods in the stage.  </p>
    #   @return [Hash<String, Types::MethodSetting>]
    # @!attribute variables
    #   <p>A map that defines the stage variables for a Stage resource. Variable names can
    #             have alphanumeric and underscore characters, and the values must match <code>[A-Za-z0-9-._~:/?#&=,]+</code>.</p>
    #   @return [Hash<String, String>]
    # @!attribute documentation_version
    #   <p>The version of the associated API documentation.</p>
    #   @return [String]
    # @!attribute access_log_settings
    #   <p>Settings for logging access in this stage.</p>
    #   @return [Types::AccessLogSettings]
    # @!attribute canary_settings
    #   <p>Settings for the canary deployment in this stage.</p>
    #   @return [Types::CanarySettings]
    # @!attribute tracing_enabled
    #   <p>Specifies whether active tracing with X-ray is enabled for the Stage.</p>
    #   @return [Boolean]
    # @!attribute web_acl_arn
    #   <p>The ARN of the WebAcl associated with the Stage.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute created_date
    #   <p>The timestamp when the stage was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date
    #   <p>The timestamp when the stage last updated.</p>
    #   @return [Time]
    class GetStageOutput < Struct.new(
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
      :last_updated_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:cache_cluster_enabled] = false unless options.key?(:cache_cluster_enabled)
        options[:tracing_enabled] = false unless options.key?(:tracing_enabled)
        super
      end
    end

    # <p>Requests API Gateway to get information about a Stage resource.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute stage_name
    #   <p>The name of the Stage resource to get information about.</p>
    #   @return [String]
    class GetStageRequest < Struct.new(
      :rest_api_id,
      :stage_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of Stage resources that are associated with the ApiKey resource.</p>
    # @!attribute item
    #   <p>The current page of elements from this collection.</p>
    #   @return [Array<Types::Stage>]
    class GetStagesOutput < Struct.new(
      :item,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Requests API Gateway to get information about one or more Stage resources.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute deployment_id
    #   <p>The stages' deployment identifiers.</p>
    #   @return [String]
    class GetStagesRequest < Struct.new(
      :rest_api_id,
      :deployment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The collection of tags. Each tag element is associated with a given resource.</p>
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    class GetTagsOutput < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Gets the Tags collection for a given resource.</p>
    # @!attribute resource_arn
    #   <p>The ARN of a resource that can be tagged.</p>
    #   @return [String]
    # @!attribute position
    #   <p>(Not currently supported) The current pagination position in the paged result set.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>(Not currently supported) The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #   @return [Integer]
    class GetTagsRequest < Struct.new(
      :resource_arn,
      :position,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the usage data of a usage plan.</p>
    # @!attribute usage_plan_id
    #   <p>The plan Id associated with this usage data.</p>
    #   @return [String]
    # @!attribute start_date
    #   <p>The starting date of the usage data.</p>
    #   @return [String]
    # @!attribute end_date
    #   <p>The ending date of the usage data.</p>
    #   @return [String]
    # @!attribute items
    #   <p>The usage data, as daily logs of used and remaining quotas, over the specified time interval indexed over the API keys in a usage plan. For example, <code>{..., "values" : { "{api_key}" : [ [0, 100], [10, 90], [100, 10]]}</code>, where <code>{api_key}</code> stands for an API key value and the daily log entry is of the format <code>[used quota, remaining quota]</code>.</p>
    #   @return [Hash<String, Array<Array<Integer>>>]
    # @!attribute position
    #   <p>The current pagination position in the paged result set.</p>
    #   @return [String]
    class GetUsageOutput < Struct.new(
      :usage_plan_id,
      :start_date,
      :end_date,
      :items,
      :position,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a usage plan key to identify a plan customer.</p>
    # @!attribute id
    #   <p>The Id of a usage plan key.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of a usage plan key. Currently, the valid key type is <code>API_KEY</code>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of a usage plan key.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of a usage plan key.</p>
    #   @return [String]
    class GetUsagePlanKeyOutput < Struct.new(
      :id,
      :type,
      :value,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The GET request to get a usage plan key of a given key identifier.</p>
    # @!attribute usage_plan_id
    #   <p>The Id of the UsagePlan resource representing the usage plan containing the to-be-retrieved UsagePlanKey resource representing a plan customer.</p>
    #   @return [String]
    # @!attribute key_id
    #   <p>The key Id of the to-be-retrieved UsagePlanKey resource representing a plan customer.</p>
    #   @return [String]
    class GetUsagePlanKeyRequest < Struct.new(
      :usage_plan_id,
      :key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the collection of usage plan keys added to usage plans for the associated API keys and, possibly, other types of keys.</p>
    # @!attribute items
    #   <p>The current page of elements from this collection.</p>
    #   @return [Array<Types::UsagePlanKey>]
    # @!attribute position
    #   <p>The current pagination position in the paged result set.</p>
    #   @return [String]
    class GetUsagePlanKeysOutput < Struct.new(
      :items,
      :position,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The GET request to get all the usage plan keys representing the API keys added to a specified usage plan.</p>
    # @!attribute usage_plan_id
    #   <p>The Id of the UsagePlan resource representing the usage plan containing the to-be-retrieved UsagePlanKey resource representing a plan customer.</p>
    #   @return [String]
    # @!attribute position
    #   <p>The current pagination position in the paged result set.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #   @return [Integer]
    # @!attribute name_query
    #   <p>A query parameter specifying the name of the to-be-returned usage plan keys.</p>
    #   @return [String]
    class GetUsagePlanKeysRequest < Struct.new(
      :usage_plan_id,
      :position,
      :limit,
      :name_query,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a usage plan used to specify who can assess associated API stages. Optionally, target request rate and quota limits can be set. 
    #         In some cases clients can exceed the targets that you set. Don’t rely on usage plans to control costs. 
    #         Consider using <a href="https://docs.aws.amazon.com/cost-management/latest/userguide/budgets-managing-costs.html">Amazon Web Services Budgets</a> to monitor costs 
    #         and <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF</a> to manage API requests.</p>
    # @!attribute id
    #   <p>The identifier of a UsagePlan resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of a usage plan.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of a usage plan.</p>
    #   @return [String]
    # @!attribute api_stages
    #   <p>The associated API stages of a usage plan.</p>
    #   @return [Array<Types::ApiStage>]
    # @!attribute throttle
    #   <p>A map containing method level throttling information for API stage in a usage plan.</p>
    #   @return [Types::ThrottleSettings]
    # @!attribute quota
    #   <p>The target maximum number of permitted requests per a given unit time interval.</p>
    #   @return [Types::QuotaSettings]
    # @!attribute product_code
    #   <p>The Amazon Web Services Marketplace product identifier to associate with the usage plan as a SaaS product on the Amazon Web Services Marketplace.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    class GetUsagePlanOutput < Struct.new(
      :id,
      :name,
      :description,
      :api_stages,
      :throttle,
      :quota,
      :product_code,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The GET request to get a usage plan of a given plan identifier.</p>
    # @!attribute usage_plan_id
    #   <p>The identifier of the UsagePlan resource to be retrieved.</p>
    #   @return [String]
    class GetUsagePlanRequest < Struct.new(
      :usage_plan_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a collection of usage plans for an AWS account.</p>
    # @!attribute items
    #   <p>The current page of elements from this collection.</p>
    #   @return [Array<Types::UsagePlan>]
    # @!attribute position
    #   <p>The current pagination position in the paged result set.</p>
    #   @return [String]
    class GetUsagePlansOutput < Struct.new(
      :items,
      :position,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The GET request to get all the usage plans of the caller's account.</p>
    # @!attribute position
    #   <p>The current pagination position in the paged result set.</p>
    #   @return [String]
    # @!attribute key_id
    #   <p>The identifier of the API key associated with the usage plans.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #   @return [Integer]
    class GetUsagePlansRequest < Struct.new(
      :position,
      :key_id,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The GET request to get the usage data of a usage plan in a specified time interval.</p>
    # @!attribute usage_plan_id
    #   <p>The Id of the usage plan associated with the usage data.</p>
    #   @return [String]
    # @!attribute key_id
    #   <p>The Id of the API key associated with the resultant usage data.</p>
    #   @return [String]
    # @!attribute start_date
    #   <p>The starting date (e.g., 2016-01-01) of the usage data.</p>
    #   @return [String]
    # @!attribute end_date
    #   <p>The ending date (e.g., 2016-12-31) of the usage data.</p>
    #   @return [String]
    # @!attribute position
    #   <p>The current pagination position in the paged result set.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #   @return [Integer]
    class GetUsageRequest < Struct.new(
      :usage_plan_id,
      :key_id,
      :start_date,
      :end_date,
      :position,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An API Gateway VPC link for a RestApi to access resources in an Amazon Virtual Private Cloud (VPC).</p>
    # @!attribute id
    #   <p>The identifier of the  VpcLink. It is used in an Integration to reference this VpcLink.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name used to label and identify the VPC link.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the VPC link.</p>
    #   @return [String]
    # @!attribute target_arns
    #   <p>The ARN of the network load balancer of the VPC targeted by the VPC link. The network load balancer must be owned by the same Amazon Web Services account of the API owner.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The status of the VPC link. The valid values are <code>AVAILABLE</code>, <code>PENDING</code>, <code>DELETING</code>, or <code>FAILED</code>. Deploying an API will wait if the status is <code>PENDING</code> and will fail if the status is <code>DELETING</code>.  </p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A description about the VPC link status.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    class GetVpcLinkOutput < Struct.new(
      :id,
      :name,
      :description,
      :target_arns,
      :status,
      :status_message,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Gets a specified VPC link under the caller's account in a region.</p>
    # @!attribute vpc_link_id
    #   <p>The identifier of the  VpcLink. It is used in an Integration to reference this VpcLink.</p>
    #   @return [String]
    class GetVpcLinkRequest < Struct.new(
      :vpc_link_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The collection of VPC links under the caller's account in a region.</p>
    # @!attribute items
    #   <p>The current page of elements from this collection.</p>
    #   @return [Array<Types::VpcLink>]
    # @!attribute position
    #   <p>The current pagination position in the paged result set.</p>
    #   @return [String]
    class GetVpcLinksOutput < Struct.new(
      :items,
      :position,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Gets the VpcLinks collection under the caller's account in a selected region.</p>
    # @!attribute position
    #   <p>The current pagination position in the paged result set.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #   @return [Integer]
    class GetVpcLinksRequest < Struct.new(
      :position,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The identifier of an ApiKey used in a UsagePlan.</p>
    # @!attribute ids
    #   <p>A list of all the ApiKey identifiers.</p>
    #   @return [Array<String>]
    # @!attribute warnings
    #   <p>A list of warning messages.</p>
    #   @return [Array<String>]
    class ImportApiKeysOutput < Struct.new(
      :ids,
      :warnings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The POST request to import API keys from an external source, such as a CSV-formatted file.</p>
    # @!attribute body
    #   <p>The payload of the POST request to import API keys. For the payload format, see API Key File Format.</p>
    #   @return [String]
    # @!attribute format
    #   <p>A query parameter to specify the input format to imported API keys. Currently, only the <code>csv</code> format is supported.</p>
    #   @return [String]
    # @!attribute fail_on_warnings
    #   <p>A query parameter to indicate whether to rollback ApiKey importation (<code>true</code>) or not (<code>false</code>) when error is encountered.</p>
    #   @return [Boolean]
    class ImportApiKeysRequest < Struct.new(
      :body,
      :format,
      :fail_on_warnings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A collection of the imported  DocumentationPart identifiers.</p>
    # @!attribute ids
    #   <p>A list of the returned documentation part identifiers.</p>
    #   @return [Array<String>]
    # @!attribute warnings
    #   <p>A list of warning messages reported during import of documentation parts.</p>
    #   @return [Array<String>]
    class ImportDocumentationPartsOutput < Struct.new(
      :ids,
      :warnings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Import documentation parts from an external (e.g., OpenAPI) definition file. </p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute mode
    #   <p>A query parameter to indicate whether to overwrite (<code>overwrite</code>) any existing DocumentationParts definition or to merge (<code>merge</code>) the new definition into the existing one. The default value is <code>merge</code>.</p>
    #   @return [String]
    # @!attribute fail_on_warnings
    #   <p>A query parameter to specify whether to rollback the documentation importation (<code>true</code>) or not (<code>false</code>) when a warning is encountered. The default value is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute body
    #   <p>Raw byte array representing the to-be-imported documentation parts. To import from an OpenAPI file, this is a JSON object.</p>
    #   @return [String]
    class ImportDocumentationPartsRequest < Struct.new(
      :rest_api_id,
      :mode,
      :fail_on_warnings,
      :body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a REST API.</p>
    # @!attribute id
    #   <p>The API's identifier. This identifier is unique across all of your APIs in API Gateway.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The API's name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The API's description.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The timestamp when the API was created.</p>
    #   @return [Time]
    # @!attribute version
    #   <p>A version identifier for the API.</p>
    #   @return [String]
    # @!attribute warnings
    #   <p>The warning messages reported when <code>failonwarnings</code> is turned on during API import.</p>
    #   @return [Array<String>]
    # @!attribute binary_media_types
    #   <p>The list of binary media types supported by the RestApi. By default, the RestApi supports only UTF-8-encoded text payloads.</p>
    #   @return [Array<String>]
    # @!attribute minimum_compression_size
    #   <p>A nullable integer that is used to enable compression (with non-negative between 0 and 10485760 (10M) bytes, inclusive) or disable compression (with a null value) on an API. When compression is enabled, compression or decompression is not applied on the payload if the payload size is smaller than this value. Setting it to zero allows compression for any payload size.</p>
    #   @return [Integer]
    # @!attribute api_key_source
    #   <p>The source of the API key for metering requests according to a usage plan. Valid values
    #         are: ><code>HEADER</code> to read the API key from the <code>X-API-Key</code> header of a
    #         request. <code>AUTHORIZER</code> to read the API key from the <code>UsageIdentifierKey</code>
    #         from a custom authorizer.</p>
    #   @return [String]
    # @!attribute endpoint_configuration
    #   <p>The endpoint configuration of this RestApi showing the endpoint types and IP address types of the API. </p>
    #   @return [Types::EndpointConfiguration]
    # @!attribute policy
    #   <p>A stringified JSON policy document that applies to this RestApi regardless of the caller and Method configuration.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute disable_execute_api_endpoint
    #   <p>Specifies whether clients can invoke your API by using the default <code>execute-api</code> endpoint.
    #         By default, clients can invoke your API with the default
    #         <code>https://{api_id}.execute-api.{region}.amazonaws.com</code> endpoint. To require that clients use a
    #         custom domain name to invoke your API, disable the default endpoint.</p>
    #   @return [Boolean]
    # @!attribute root_resource_id
    #   <p>The API's root resource ID.</p>
    #   @return [String]
    class ImportRestApiOutput < Struct.new(
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
      :disable_execute_api_endpoint,
      :root_resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:disable_execute_api_endpoint] = false unless options.key?(:disable_execute_api_endpoint)
        super
      end
    end

    # <p>A POST request to import an API to API Gateway using an input of an API definition file.</p>
    # @!attribute fail_on_warnings
    #   <p>A query parameter to indicate whether to rollback the API creation (<code>true</code>) or not (<code>false</code>)
    #               when a warning is encountered. The default value is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute parameters
    #   <p>A key-value map of context-specific query string parameters specifying the behavior of different API importing operations. The following shows operation-specific parameters and their supported values.</p>
    #            <p> To exclude DocumentationParts from the import, set <code>parameters</code> as <code>ignore=documentation</code>.</p>
    #            <p> To configure the endpoint type, set <code>parameters</code> as <code>endpointConfigurationTypes=EDGE</code>, <code>endpointConfigurationTypes=REGIONAL</code>, or <code>endpointConfigurationTypes=PRIVATE</code>. The default endpoint type is <code>EDGE</code>.</p>
    #            <p> To handle imported <code>basepath</code>, set <code>parameters</code> as <code>basepath=ignore</code>, <code>basepath=prepend</code> or <code>basepath=split</code>.</p>
    #   @return [Hash<String, String>]
    # @!attribute body
    #   <p>The POST request body containing external API definitions. Currently, only OpenAPI definition JSON/YAML files are supported. The maximum size of the API definition file is 6MB.</p>
    #   @return [String]
    class ImportRestApiRequest < Struct.new(
      :fail_on_warnings,
      :parameters,
      :body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an <code>HTTP</code>, <code>HTTP_PROXY</code>, <code>AWS</code>, <code>AWS_PROXY</code>, or Mock integration.</p>
    # @!attribute type
    #   <p>Specifies an API method integration type. The valid value is one of the following:</p>
    #            <p>For the HTTP and HTTP proxy integrations, each integration can specify a protocol (<code>http/https</code>), port and path. Standard 80 and 443 ports are supported as well as custom ports above 1024. An HTTP or HTTP proxy integration with a <code>connectionType</code> of <code>VPC_LINK</code> is referred to as a private integration and uses a VpcLink to connect API Gateway to a network load balancer of a VPC.</p>
    #   @return [String]
    # @!attribute http_method
    #   <p>Specifies the integration's HTTP method type. For the Type property, if you specify <code>MOCK</code>, this property is optional. For Lambda integrations, you must set the integration method to <code>POST</code>. For all other types, you must specify this property.</p>
    #   @return [String]
    # @!attribute uri
    #   <p>Specifies Uniform Resource Identifier (URI) of the integration endpoint.</p>
    #            <p>For <code>HTTP</code> or <code>HTTP_PROXY</code> integrations, the URI must be a fully formed, encoded HTTP(S) URL
    #   	    according to the RFC-3986 specification for standard integrations. If <code>connectionType</code> is <code>VPC_LINK</code> specify the Network Load Balancer DNS name.
    #         For <code>AWS</code> or <code>AWS_PROXY</code> integrations, the URI is of
    #         the form <code>arn:aws:apigateway:{region}:{subdomain.service|service}:path|action/{service_api}</code>.
    #         Here, {Region} is the API Gateway region (e.g., us-east-1); {service} is the name of the
    #         integrated Amazon Web Services service (e.g., s3); and {subdomain} is a designated subdomain supported by
    #         certain Amazon Web Services  service for fast host-name lookup. action can be used for an Amazon Web Services  service
    #         action-based API, using an Action={name}&{p1}={v1}&p2={v2}... query string. The ensuing
    #         {service_api} refers to a supported action {name} plus any required input parameters.
    #         Alternatively, path can be used for an Amazon Web Services service path-based API. The ensuing service_api
    #         refers to the path to an Amazon Web Services  service resource, including the region of the integrated Amazon Web Services 
    #         service, if applicable. For example, for integration with the S3 API of GetObject, the uri can
    #         be either <code>arn:aws:apigateway:us-west-2:s3:action/GetObject&Bucket={bucket}&Key={key}</code> or
    #         <code>arn:aws:apigateway:us-west-2:s3:path/{bucket}/{key}</code>
    #            </p>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The type of the network connection to the integration endpoint. The valid value is <code>INTERNET</code> for connections through the public routable internet or <code>VPC_LINK</code> for private connections between API Gateway and a network load balancer in a VPC. The default value is <code>INTERNET</code>.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The ID of the VpcLink used for the integration when <code>connectionType=VPC_LINK</code> and undefined, otherwise.</p>
    #   @return [String]
    # @!attribute credentials
    #   <p>Specifies the credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string <code>arn:aws:iam::\*:user/\*</code>. To use resource-based permissions on supported Amazon Web Services services, specify null.</p>
    #   @return [String]
    # @!attribute request_parameters
    #   <p>A key-value map specifying request parameters that are passed from the method request to the back end. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the back end. The method request parameter value must match the pattern of  <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> must be a valid and unique method request parameter name.</p>
    #   @return [Hash<String, String>]
    # @!attribute request_templates
    #   <p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value.</p>
    #   @return [Hash<String, String>]
    # @!attribute passthrough_behavior
    #   <p>Specifies how the method request body of an unmapped content type will be passed through
    #         the integration request to the back end without transformation. A content type is unmapped if
    #         no mapping template is defined in the integration or the content type does not match any of
    #         the mapped content types, as specified in <code>requestTemplates</code>. The valid value is one of the
    #         following: <code>WHEN_NO_MATCH</code>: passes the method request body through the integration request to
    #         the back end without transformation when the method request content type does not match any
    #         content type associated with the mapping templates defined in the integration request.
    #         <code>WHEN_NO_TEMPLATES</code>: passes the method request body through the integration request to the back
    #         end without transformation when no mapping template is defined in the integration request. If
    #         a template is defined when this option is selected, the method request of an unmapped
    #         content-type will be rejected with an HTTP 415 Unsupported Media Type response. <code>NEVER</code>: rejects
    #         the method request with an HTTP 415 Unsupported Media Type response when either the method
    #         request content type does not match any content type associated with the mapping templates
    #         defined in the integration request or no mapping template is defined in the integration
    #         request.</p>
    #   @return [String]
    # @!attribute content_handling
    #   <p>Specifies how to handle request payload content type conversions. Supported values are <code>CONVERT_TO_BINARY</code> and <code>CONVERT_TO_TEXT</code>, with the following behaviors:</p>
    #            <p>If this property is not defined, the request payload will be passed through from the method request to integration request without modification, provided that the <code>passthroughBehavior</code> is configured to support payload pass-through.</p>
    #   @return [String]
    # @!attribute timeout_in_millis
    #   <p>Custom timeout between 50 and 29,000 milliseconds. The default value is 29,000 milliseconds or 29 seconds. You can increase the default value to longer than 29 seconds for Regional or private APIs only.</p>
    #   @return [Integer]
    # @!attribute cache_namespace
    #   <p>Specifies a group of related cached parameters. By default, API Gateway uses the resource ID as the <code>cacheNamespace</code>. You can specify the same <code>cacheNamespace</code> across resources to return the same cached data for requests to different resources.</p>
    #   @return [String]
    # @!attribute cache_key_parameters
    #   <p>A list of request parameters whose values API Gateway caches. To be valid values for <code>cacheKeyParameters</code>, these parameters must also be specified for Method <code>requestParameters</code>.</p>
    #   @return [Array<String>]
    # @!attribute integration_responses
    #   <p>Specifies the integration's responses.</p>
    #   @return [Hash<String, Types::IntegrationResponse>]
    # @!attribute tls_config
    #   <p>Specifies the TLS configuration for an integration.</p>
    #   @return [Types::TlsConfig]
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
      :tls_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:timeout_in_millis] = 0 unless options.key?(:timeout_in_millis)
        super
      end
    end

    # <p>Represents an integration response. The status code must map to an existing MethodResponse, and parameters and templates can be used to transform the back-end response.</p>
    # @!attribute status_code
    #   <p>Specifies the status code that is used to map the integration response to an existing MethodResponse.</p>
    #   @return [String]
    # @!attribute selection_pattern
    #   <p>Specifies the regular expression (regex) pattern used to choose an integration response based on the response from the back end. For example, if the success response returns nothing and the error response returns some string, you could use the <code>.+</code> regex to match error response. However, make sure that the error response does not contain any newline (<code>\n</code>) character in such cases. If the back end is an Lambda function, the Lambda function error header is matched. For all other HTTP and Amazon Web Services back ends, the HTTP status code is matched.</p>
    #   @return [String]
    # @!attribute response_parameters
    #   <p>A key-value map specifying response parameters that are passed to the method response from the back end.
    #               The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. The mapped non-static value must match the pattern of <code>integration.response.header.{name}</code> or <code>integration.response.body.{JSON-expression}</code>, where <code>name</code> is a valid and unique response header name and <code>JSON-expression</code> is a valid JSON expression without the <code>$</code> prefix.</p>
    #   @return [Hash<String, String>]
    # @!attribute response_templates
    #   <p>Specifies the templates used to transform the integration response body. Response templates are represented as a key/value map, with a content-type as the key and a template as the value.</p>
    #   @return [Hash<String, String>]
    # @!attribute content_handling
    #   <p>Specifies how to handle response payload content type conversions. Supported values are <code>CONVERT_TO_BINARY</code> and <code>CONVERT_TO_TEXT</code>, with the following behaviors:</p>
    #            <p>If this property is not defined, the response payload will be passed through from the integration response to the method response without modification.</p>
    #   @return [String]
    class IntegrationResponse < Struct.new(
      :status_code,
      :selection_pattern,
      :response_parameters,
      :response_templates,
      :content_handling,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request exceeded the rate limit. Retry after the specified time period.</p>
    # @!attribute retry_after_seconds
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      :retry_after_seconds,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Represents a client-facing interface by which the client calls the API to access back-end resources. A Method resource is
    #             integrated with an Integration resource. Both consist of a request and one or more responses. The method request takes
    #             the client input that is passed to the back end through the integration request. A method response returns the output from
    #             the back end to the client through an integration response. A method request is embodied in a Method resource, whereas
    #             an integration request is embodied in an Integration resource.  On the other hand, a method response is represented
    #             by a MethodResponse resource, whereas an integration response is represented by an IntegrationResponse resource.
    #         </p>
    # @!attribute http_method
    #   <p>The method's HTTP verb.</p>
    #   @return [String]
    # @!attribute authorization_type
    #   <p>The method's authorization type. Valid values are <code>NONE</code> for open access, <code>AWS_IAM</code> for using AWS IAM permissions, <code>CUSTOM</code> for using a custom authorizer, or <code>COGNITO_USER_POOLS</code> for using a Cognito user pool.</p>
    #   @return [String]
    # @!attribute authorizer_id
    #   <p>The identifier of an Authorizer to use on this method. The <code>authorizationType</code> must be <code>CUSTOM</code>.</p>
    #   @return [String]
    # @!attribute api_key_required
    #   <p>A boolean flag specifying whether a valid ApiKey is required to invoke this method.</p>
    #   @return [Boolean]
    # @!attribute request_validator_id
    #   <p>The identifier of a RequestValidator for request validation.</p>
    #   @return [String]
    # @!attribute operation_name
    #   <p>A human-friendly operation identifier for the method. For example, you can assign the <code>operationName</code> of <code>ListPets</code> for the <code>GET /pets</code> method in the <code>PetStore</code> example.</p>
    #   @return [String]
    # @!attribute request_parameters
    #   <p>A key-value map defining required or optional method request parameters that can be accepted by API Gateway. A key is a method request parameter name matching the pattern of  <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> is a valid and unique parameter name. The value associated with the key is a Boolean flag indicating whether the parameter is required (<code>true</code>) or optional (<code>false</code>).  The method request parameter names defined here are available in Integration to be mapped to integration request parameters or templates.</p>
    #   @return [Hash<String, Boolean>]
    # @!attribute request_models
    #   <p>A key-value map specifying data schemas, represented by Model resources, (as the mapped value) of the request payloads of given content types (as the mapping key).</p>
    #   @return [Hash<String, String>]
    # @!attribute method_responses
    #   <p>Gets a method response associated with a given HTTP status code. </p>
    #   @return [Hash<String, Types::MethodResponse>]
    # @!attribute method_integration
    #   <p>Gets the method's integration responsible for passing the client-submitted request to the back end and performing necessary transformations to make the request compliant with the back end.</p>
    #   @return [Types::Integration]
    # @!attribute authorization_scopes
    #   <p>A list of authorization scopes configured on the method. The scopes are used with a <code>COGNITO_USER_POOLS</code> authorizer to authorize the method invocation. The authorization works by matching the method scopes against the scopes parsed from the access token in the incoming request. The method invocation is authorized if any method scopes matches a claimed scope in the access token. Otherwise, the invocation is not authorized. When the method scope is configured, the client must provide an access token instead of an identity token for authorization purposes.</p>
    #   @return [Array<String>]
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
      :authorization_scopes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a method response of a given HTTP status code returned to the client. The method response is passed from the back end through the associated integration response that can be transformed using a mapping template. </p>
    # @!attribute status_code
    #   <p>The method response's status code.</p>
    #   @return [String]
    # @!attribute response_parameters
    #   <p>A key-value map specifying required or optional response parameters that API Gateway can send back to the caller. A key defines a method response header and the value specifies whether the associated method response header is required or not. The expression of the key must match the pattern <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. API Gateway passes certain integration response data to the method response headers specified here according to the mapping you prescribe in the API's IntegrationResponse. The integration response data that can be mapped include an integration response header expressed in <code>integration.response.header.{name}</code>, a static value enclosed within a pair of single quotes (e.g., <code>'application/json'</code>), or a JSON expression from the back-end response payload in the form of <code>integration.response.body.{JSON-expression}</code>, where <code>JSON-expression</code> is a valid JSON expression without the <code>$</code> prefix.)</p>
    #   @return [Hash<String, Boolean>]
    # @!attribute response_models
    #   <p>Specifies the Model resources used for the response's content-type. Response models are represented as a key/value map, with a content-type as the key and a Model name as the value.</p>
    #   @return [Hash<String, String>]
    class MethodResponse < Struct.new(
      :status_code,
      :response_parameters,
      :response_models,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the method setting properties.</p>
    # @!attribute metrics_enabled
    #   <p>Specifies whether Amazon CloudWatch metrics are enabled for this method.</p>
    #   @return [Boolean]
    # @!attribute logging_level
    #   <p>Specifies the logging level for this method, which affects the log entries pushed to Amazon CloudWatch Logs. Valid values are <code>OFF</code>, <code>ERROR</code>, and <code>INFO</code>. Choose <code>ERROR</code> to write only error-level entries to CloudWatch Logs, or choose <code>INFO</code> to include all <code>ERROR</code> events as well as extra informational events.</p>
    #   @return [String]
    # @!attribute data_trace_enabled
    #   <p>Specifies whether data trace logging is enabled for this method, which affects the log entries pushed to Amazon CloudWatch Logs. This can be useful to troubleshoot APIs, but can result in logging sensitive data. We recommend that you don't enable this option for production APIs.</p>
    #   @return [Boolean]
    # @!attribute throttling_burst_limit
    #   <p>Specifies the throttling burst limit.</p>
    #   @return [Integer]
    # @!attribute throttling_rate_limit
    #   <p>Specifies the throttling rate limit.</p>
    #   @return [Float]
    # @!attribute caching_enabled
    #   <p>Specifies whether responses should be cached and returned for requests. A cache cluster must be enabled on the stage for responses to be cached.</p>
    #   @return [Boolean]
    # @!attribute cache_ttl_in_seconds
    #   <p>Specifies the time to live (TTL), in seconds, for cached responses. The higher the TTL, the longer the response will be cached.</p>
    #   @return [Integer]
    # @!attribute cache_data_encrypted
    #   <p>Specifies whether the cached responses are encrypted.</p>
    #   @return [Boolean]
    # @!attribute require_authorization_for_cache_control
    #   <p>Specifies whether authorization is required for a cache invalidation request.</p>
    #   @return [Boolean]
    # @!attribute unauthorized_cache_control_header_strategy
    #   <p>Specifies how to handle unauthorized requests for cache invalidation.</p>
    #   @return [String]
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
      :unauthorized_cache_control_header_strategy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:metrics_enabled] = false unless options.key?(:metrics_enabled)
        options[:data_trace_enabled] = false unless options.key?(:data_trace_enabled)
        options[:throttling_burst_limit] = 0 unless options.key?(:throttling_burst_limit)
        options[:throttling_rate_limit] = 0 unless options.key?(:throttling_rate_limit)
        options[:caching_enabled] = false unless options.key?(:caching_enabled)
        options[:cache_ttl_in_seconds] = 0 unless options.key?(:cache_ttl_in_seconds)
        options[:cache_data_encrypted] = false unless options.key?(:cache_data_encrypted)
        options[:require_authorization_for_cache_control] = false unless options.key?(:require_authorization_for_cache_control)
        super
      end
    end

    # <p>Represents a summary of a Method resource, given a particular date and time.</p>
    # @!attribute authorization_type
    #   <p>The method's authorization type. Valid values are <code>NONE</code> for open access, <code>AWS_IAM</code> for using AWS IAM permissions, <code>CUSTOM</code> for using a custom authorizer, or <code>COGNITO_USER_POOLS</code> for using a Cognito user pool.</p>
    #   @return [String]
    # @!attribute api_key_required
    #   <p>Specifies whether the method requires a valid ApiKey.</p>
    #   @return [Boolean]
    class MethodSnapshot < Struct.new(
      :authorization_type,
      :api_key_required,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:api_key_required] = false unless options.key?(:api_key_required)
        super
      end
    end

    # <p>Represents the data structure of a method's request or response payload.</p>
    # @!attribute id
    #   <p>The identifier for the model resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the model. Must be an alphanumeric string.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the model.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>The schema for the model. For <code>application/json</code> models, this should be JSON schema draft 4 model. Do not include "\*/" characters in the description of any properties because such "\*/" characters may be interpreted as the closing marker for comments in some languages, such as Java or JavaScript, causing the installation of your API's SDK generated by API Gateway to fail.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The content-type for the model.</p>
    #   @return [String]
    class Model < Struct.new(
      :id,
      :name,
      :description,
      :schema,
      :content_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The mutual TLS authentication configuration for a custom domain name. If specified, API Gateway
    #       performs two-way authentication between the client and the server. Clients must present a
    #       trusted certificate to access your API.</p>
    # @!attribute truststore_uri
    #   <p>An Amazon S3 URL that specifies the truststore for mutual TLS authentication, for example
    #         <code>s3://bucket-name/key-name</code>. The truststore can contain certificates from public or private
    #         certificate authorities. To update the truststore, upload a new version to S3, and then update
    #         your custom domain name to use the new version. To update the truststore, you must have
    #         permissions to access the S3 object.</p>
    #   @return [String]
    # @!attribute truststore_version
    #   <p>The version of the S3 object that contains your truststore. To specify a version, you must have versioning enabled for the S3 bucket.</p>
    #   @return [String]
    # @!attribute truststore_warnings
    #   <p>A list of warnings that API Gateway returns while processing your truststore. Invalid
    #         certificates produce warnings. Mutual TLS is still enabled, but some clients might not be able
    #         to access your API. To resolve warnings, upload a new truststore to S3, and then update you
    #         domain name to use the new version.</p>
    #   @return [Array<String>]
    class MutualTlsAuthentication < Struct.new(
      :truststore_uri,
      :truststore_version,
      :truststore_warnings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The mutual TLS authentication configuration for a custom domain name. If specified, API Gateway
    #       performs two-way authentication between the client and the server. Clients must present a
    #       trusted certificate to access your API.</p>
    # @!attribute truststore_uri
    #   <p>An Amazon S3 URL that specifies the truststore for mutual TLS authentication, for example
    #         <code>s3://bucket-name/key-name</code>. The truststore can contain certificates from public or private
    #         certificate authorities. To update the truststore, upload a new version to S3, and then update
    #         your custom domain name to use the new version. To update the truststore, you must have
    #         permissions to access the S3 object.</p>
    #   @return [String]
    # @!attribute truststore_version
    #   <p>The version of the S3 object that contains your truststore. To specify a version, you must have versioning enabled for the S3 bucket</p>
    #   @return [String]
    class MutualTlsAuthenticationInput < Struct.new(
      :truststore_uri,
      :truststore_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested resource is not found. Make sure that the request URI is correct.</p>
    # @!attribute message
    #   @return [String]
    class NotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    # @!attribute op
    #   <p>An update operation to be performed with this PATCH request. The valid value can be
    #               add, remove, replace or copy. Not all valid operations are supported for a given
    #               resource. Support of the operations depends on specific operational contexts. Attempts
    #               to apply an unsupported operation on a resource will return an error message..</p>
    #   @return [String]
    # @!attribute path
    #   <p>The op operation's target, as identified by a JSON Pointer value that references a
    #               location within the targeted resource. For example, if the target resource has an
    #               updateable property of {"name":"value"}, the path for this property is /name. If the
    #               name property value is a JSON object (e.g., {"name": {"child/name": "child-value"}}),
    #               the path for the child/name property will be /name/child~1name. Any slash ("/")
    #               character appearing in path names must be escaped with "~1", as shown in the example
    #               above. Each op operation can have only one path associated with it.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The new target value of the update operation. It is applicable for the add or replace
    #               operation. When using AWS CLI to update a property of a JSON value, enclose the JSON
    #               object with a pair of single quotes in a Linux shell, e.g., '{"a": ...}'.</p>
    #   @return [String]
    # @!attribute from
    #   <p>The copy update operation's source as identified by a JSON-Pointer value referencing
    #               the location within the targeted resource to copy the value from. For example, to
    #               promote a canary deployment, you copy the canary deployment ID to the affiliated
    #               deployment ID by calling a PATCH request on a Stage resource with "op":"copy",
    #               "from":"/canarySettings/deploymentId" and "path":"/deploymentId".</p>
    #   @return [String]
    class PatchOperation < Struct.new(
      :op,
      :path,
      :value,
      :from,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A gateway response of a given response type and status code, with optional response parameters and mapping templates.</p>
    # @!attribute response_type
    #   <p>The response type of the associated GatewayResponse.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>The HTTP status code for this GatewayResponse.</p>
    #   @return [String]
    # @!attribute response_parameters
    #   <p>Response parameters (paths, query strings and headers) of the GatewayResponse as a
    #         string-to-string map of key-value pairs.</p>
    #   @return [Hash<String, String>]
    # @!attribute response_templates
    #   <p>Response templates of the GatewayResponse as a string-to-string map of key-value pairs.</p>
    #   @return [Hash<String, String>]
    # @!attribute default_response
    #   <p>A Boolean flag to indicate whether this GatewayResponse is the default gateway response (<code>true</code>) or not (<code>false</code>). A default gateway response is one generated by API Gateway without any customization by an API developer. </p>
    #   @return [Boolean]
    class PutGatewayResponseOutput < Struct.new(
      :response_type,
      :status_code,
      :response_parameters,
      :response_templates,
      :default_response,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:default_response] = false unless options.key?(:default_response)
        super
      end
    end

    # <p>Creates a customization of a GatewayResponse of a specified response type and status code on the given RestApi.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute response_type
    #   <p>The response type of the associated GatewayResponse</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>The HTTP status code of the GatewayResponse.</p>
    #   @return [String]
    # @!attribute response_parameters
    #   <p>Response parameters (paths, query strings and headers) of the GatewayResponse as a string-to-string map of key-value  pairs.</p>
    #   @return [Hash<String, String>]
    # @!attribute response_templates
    #   <p>Response templates of the GatewayResponse as a string-to-string map of key-value pairs.</p>
    #   @return [Hash<String, String>]
    class PutGatewayResponseRequest < Struct.new(
      :rest_api_id,
      :response_type,
      :status_code,
      :response_parameters,
      :response_templates,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an <code>HTTP</code>, <code>HTTP_PROXY</code>, <code>AWS</code>, <code>AWS_PROXY</code>, or Mock integration.</p>
    # @!attribute type
    #   <p>Specifies an API method integration type. The valid value is one of the following:</p>
    #            <p>For the HTTP and HTTP proxy integrations, each integration can specify a protocol (<code>http/https</code>), port and path. Standard 80 and 443 ports are supported as well as custom ports above 1024. An HTTP or HTTP proxy integration with a <code>connectionType</code> of <code>VPC_LINK</code> is referred to as a private integration and uses a VpcLink to connect API Gateway to a network load balancer of a VPC.</p>
    #   @return [String]
    # @!attribute http_method
    #   <p>Specifies the integration's HTTP method type. For the Type property, if you specify <code>MOCK</code>, this property is optional. For Lambda integrations, you must set the integration method to <code>POST</code>. For all other types, you must specify this property.</p>
    #   @return [String]
    # @!attribute uri
    #   <p>Specifies Uniform Resource Identifier (URI) of the integration endpoint.</p>
    #            <p>For <code>HTTP</code> or <code>HTTP_PROXY</code> integrations, the URI must be a fully formed, encoded HTTP(S) URL
    #   	    according to the RFC-3986 specification for standard integrations. If <code>connectionType</code> is <code>VPC_LINK</code> specify the Network Load Balancer DNS name.
    #         For <code>AWS</code> or <code>AWS_PROXY</code> integrations, the URI is of
    #         the form <code>arn:aws:apigateway:{region}:{subdomain.service|service}:path|action/{service_api}</code>.
    #         Here, {Region} is the API Gateway region (e.g., us-east-1); {service} is the name of the
    #         integrated Amazon Web Services service (e.g., s3); and {subdomain} is a designated subdomain supported by
    #         certain Amazon Web Services  service for fast host-name lookup. action can be used for an Amazon Web Services  service
    #         action-based API, using an Action={name}&{p1}={v1}&p2={v2}... query string. The ensuing
    #         {service_api} refers to a supported action {name} plus any required input parameters.
    #         Alternatively, path can be used for an Amazon Web Services service path-based API. The ensuing service_api
    #         refers to the path to an Amazon Web Services  service resource, including the region of the integrated Amazon Web Services 
    #         service, if applicable. For example, for integration with the S3 API of GetObject, the uri can
    #         be either <code>arn:aws:apigateway:us-west-2:s3:action/GetObject&Bucket={bucket}&Key={key}</code> or
    #         <code>arn:aws:apigateway:us-west-2:s3:path/{bucket}/{key}</code>
    #            </p>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The type of the network connection to the integration endpoint. The valid value is <code>INTERNET</code> for connections through the public routable internet or <code>VPC_LINK</code> for private connections between API Gateway and a network load balancer in a VPC. The default value is <code>INTERNET</code>.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The ID of the VpcLink used for the integration when <code>connectionType=VPC_LINK</code> and undefined, otherwise.</p>
    #   @return [String]
    # @!attribute credentials
    #   <p>Specifies the credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string <code>arn:aws:iam::\*:user/\*</code>. To use resource-based permissions on supported Amazon Web Services services, specify null.</p>
    #   @return [String]
    # @!attribute request_parameters
    #   <p>A key-value map specifying request parameters that are passed from the method request to the back end. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the back end. The method request parameter value must match the pattern of  <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> must be a valid and unique method request parameter name.</p>
    #   @return [Hash<String, String>]
    # @!attribute request_templates
    #   <p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value.</p>
    #   @return [Hash<String, String>]
    # @!attribute passthrough_behavior
    #   <p>Specifies how the method request body of an unmapped content type will be passed through
    #         the integration request to the back end without transformation. A content type is unmapped if
    #         no mapping template is defined in the integration or the content type does not match any of
    #         the mapped content types, as specified in <code>requestTemplates</code>. The valid value is one of the
    #         following: <code>WHEN_NO_MATCH</code>: passes the method request body through the integration request to
    #         the back end without transformation when the method request content type does not match any
    #         content type associated with the mapping templates defined in the integration request.
    #         <code>WHEN_NO_TEMPLATES</code>: passes the method request body through the integration request to the back
    #         end without transformation when no mapping template is defined in the integration request. If
    #         a template is defined when this option is selected, the method request of an unmapped
    #         content-type will be rejected with an HTTP 415 Unsupported Media Type response. <code>NEVER</code>: rejects
    #         the method request with an HTTP 415 Unsupported Media Type response when either the method
    #         request content type does not match any content type associated with the mapping templates
    #         defined in the integration request or no mapping template is defined in the integration
    #         request.</p>
    #   @return [String]
    # @!attribute content_handling
    #   <p>Specifies how to handle request payload content type conversions. Supported values are <code>CONVERT_TO_BINARY</code> and <code>CONVERT_TO_TEXT</code>, with the following behaviors:</p>
    #            <p>If this property is not defined, the request payload will be passed through from the method request to integration request without modification, provided that the <code>passthroughBehavior</code> is configured to support payload pass-through.</p>
    #   @return [String]
    # @!attribute timeout_in_millis
    #   <p>Custom timeout between 50 and 29,000 milliseconds. The default value is 29,000 milliseconds or 29 seconds. You can increase the default value to longer than 29 seconds for Regional or private APIs only.</p>
    #   @return [Integer]
    # @!attribute cache_namespace
    #   <p>Specifies a group of related cached parameters. By default, API Gateway uses the resource ID as the <code>cacheNamespace</code>. You can specify the same <code>cacheNamespace</code> across resources to return the same cached data for requests to different resources.</p>
    #   @return [String]
    # @!attribute cache_key_parameters
    #   <p>A list of request parameters whose values API Gateway caches. To be valid values for <code>cacheKeyParameters</code>, these parameters must also be specified for Method <code>requestParameters</code>.</p>
    #   @return [Array<String>]
    # @!attribute integration_responses
    #   <p>Specifies the integration's responses.</p>
    #   @return [Hash<String, Types::IntegrationResponse>]
    # @!attribute tls_config
    #   <p>Specifies the TLS configuration for an integration.</p>
    #   @return [Types::TlsConfig]
    class PutIntegrationOutput < Struct.new(
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
      :tls_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:timeout_in_millis] = 0 unless options.key?(:timeout_in_millis)
        super
      end
    end

    # <p>Sets up a method's integration.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>Specifies a put integration request's resource ID.</p>
    #   @return [String]
    # @!attribute http_method
    #   <p>Specifies the HTTP method for the integration.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Specifies a put integration input's type.</p>
    #   @return [String]
    # @!attribute integration_http_method
    #   <p>The HTTP method for the integration.</p>
    #   @return [String]
    # @!attribute uri
    #   <p>Specifies Uniform Resource Identifier (URI) of the integration endpoint. For HTTP or
    #         <code>HTTP_PROXY</code> integrations, the URI must be a fully formed, encoded HTTP(S) URL according to the
    #         RFC-3986 specification, for either standard integration, where <code>connectionType</code> is not <code>VPC_LINK</code>,
    #         or private integration, where <code>connectionType</code> is <code>VPC_LINK</code>. For a private HTTP integration, the
    #         URI is not used for routing. For <code>AWS</code> or <code>AWS_PROXY</code> integrations, the URI is of the form
    #         <code>arn:aws:apigateway:{region}:{subdomain.service|service}:path|action/{service_api</code>}. Here,
    #         {Region} is the API Gateway region (e.g., us-east-1); {service} is the name of the integrated
    #         Amazon Web Services service (e.g., s3); and {subdomain} is a designated subdomain supported by certain Amazon Web Services
    #         service for fast host-name lookup. action can be used for an Amazon Web Services service action-based API,
    #         using an Action={name}&{p1}={v1}&p2={v2}... query string. The ensuing {service_api} refers to
    #         a supported action {name} plus any required input parameters. Alternatively, path can be used
    #         for an Amazon Web Services service path-based API. The ensuing service_api refers to the path to an Amazon Web Services
    #         service resource, including the region of the integrated Amazon Web Services service, if applicable. For
    #         example, for integration with the S3 API of <code>GetObject</code>, the <code>uri</code> can be either
    #         <code>arn:aws:apigateway:us-west-2:s3:action/GetObject&Bucket={bucket}&Key={key}</code> or
    #         <code>arn:aws:apigateway:us-west-2:s3:path/{bucket}/{key}</code>.</p>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The type of the network connection to the integration endpoint. The valid value is <code>INTERNET</code> for connections through the public routable internet or <code>VPC_LINK</code> for private connections between API Gateway and a network load balancer in a VPC. The default value is <code>INTERNET</code>.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The ID of the VpcLink used for the integration. Specify this value only if you specify <code>VPC_LINK</code> as the connection type.</p>
    #   @return [String]
    # @!attribute credentials
    #   <p>Specifies whether credentials are required for a put integration.</p>
    #   @return [String]
    # @!attribute request_parameters
    #   <p>A key-value map specifying request parameters that are passed from the method request to the back end. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the back end. The method request parameter value must match the pattern of  <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> must be a valid and unique method request parameter name.</p>
    #   @return [Hash<String, String>]
    # @!attribute request_templates
    #   <p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value.</p>
    #   @return [Hash<String, String>]
    # @!attribute passthrough_behavior
    #   <p>Specifies the pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the <code>requestTemplates</code> property on the Integration resource. There are three valid values:  <code>WHEN_NO_MATCH</code>, <code>WHEN_NO_TEMPLATES</code>, and <code>NEVER</code>.
    #           </p>
    #   @return [String]
    # @!attribute cache_namespace
    #   <p>Specifies a group of related cached parameters. By default, API Gateway uses the resource ID as the <code>cacheNamespace</code>. You can specify the same <code>cacheNamespace</code> across resources to return the same cached data for requests to different resources.</p>
    #   @return [String]
    # @!attribute cache_key_parameters
    #   <p>A list of request parameters whose values API Gateway caches. To be valid values for <code>cacheKeyParameters</code>, these parameters must also be specified for Method <code>requestParameters</code>.</p>
    #   @return [Array<String>]
    # @!attribute content_handling
    #   <p>Specifies how to handle request payload content type conversions. Supported values are <code>CONVERT_TO_BINARY</code> and <code>CONVERT_TO_TEXT</code>, with the following behaviors:</p>
    #            <p>If this property is not defined, the request payload will be passed through from the method request to integration request without modification, provided that the <code>passthroughBehavior</code> is configured to support payload pass-through.</p>
    #   @return [String]
    # @!attribute timeout_in_millis
    #   <p>Custom timeout between 50 and 29,000 milliseconds. The default value is 29,000 milliseconds or 29 seconds.  You can increase the default value to longer than 29 seconds for Regional or private APIs only.</p>
    #   @return [Integer]
    # @!attribute tls_config
    #   <p>Specifies the TLS configuration for an integration.</p>
    #   @return [Types::TlsConfig]
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
      :tls_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an integration response. The status code must map to an existing MethodResponse, and parameters and templates can be used to transform the back-end response.</p>
    # @!attribute status_code
    #   <p>Specifies the status code that is used to map the integration response to an existing MethodResponse.</p>
    #   @return [String]
    # @!attribute selection_pattern
    #   <p>Specifies the regular expression (regex) pattern used to choose an integration response based on the response from the back end. For example, if the success response returns nothing and the error response returns some string, you could use the <code>.+</code> regex to match error response. However, make sure that the error response does not contain any newline (<code>\n</code>) character in such cases. If the back end is an Lambda function, the Lambda function error header is matched. For all other HTTP and Amazon Web Services back ends, the HTTP status code is matched.</p>
    #   @return [String]
    # @!attribute response_parameters
    #   <p>A key-value map specifying response parameters that are passed to the method response from the back end.
    #               The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. The mapped non-static value must match the pattern of <code>integration.response.header.{name}</code> or <code>integration.response.body.{JSON-expression}</code>, where <code>name</code> is a valid and unique response header name and <code>JSON-expression</code> is a valid JSON expression without the <code>$</code> prefix.</p>
    #   @return [Hash<String, String>]
    # @!attribute response_templates
    #   <p>Specifies the templates used to transform the integration response body. Response templates are represented as a key/value map, with a content-type as the key and a template as the value.</p>
    #   @return [Hash<String, String>]
    # @!attribute content_handling
    #   <p>Specifies how to handle response payload content type conversions. Supported values are <code>CONVERT_TO_BINARY</code> and <code>CONVERT_TO_TEXT</code>, with the following behaviors:</p>
    #            <p>If this property is not defined, the response payload will be passed through from the integration response to the method response without modification.</p>
    #   @return [String]
    class PutIntegrationResponseOutput < Struct.new(
      :status_code,
      :selection_pattern,
      :response_parameters,
      :response_templates,
      :content_handling,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a put integration response request.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>Specifies a put integration response request's resource identifier.</p>
    #   @return [String]
    # @!attribute http_method
    #   <p>Specifies a put integration response request's HTTP method.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>Specifies the status code that is used to map the integration response to an existing MethodResponse.</p>
    #   @return [String]
    # @!attribute selection_pattern
    #   <p>Specifies the selection pattern of a put integration response.</p>
    #   @return [String]
    # @!attribute response_parameters
    #   <p>A key-value map specifying response parameters that are passed to the method response from the back end.
    #               The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. The mapped non-static value must match the pattern of <code>integration.response.header.{name}</code> or <code>integration.response.body.{JSON-expression}</code>, where <code>name</code> must be a valid and unique response header name and <code>JSON-expression</code> a valid JSON expression without the <code>$</code> prefix.</p>
    #   @return [Hash<String, String>]
    # @!attribute response_templates
    #   <p>Specifies a put integration response's templates.</p>
    #   @return [Hash<String, String>]
    # @!attribute content_handling
    #   <p>Specifies how to handle response payload content type conversions. Supported values are <code>CONVERT_TO_BINARY</code> and <code>CONVERT_TO_TEXT</code>, with the following behaviors:</p>
    #            <p>If this property is not defined, the response payload will be passed through from the integration response to the method response without modification.</p>
    #   @return [String]
    class PutIntegrationResponseRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :status_code,
      :selection_pattern,
      :response_parameters,
      :response_templates,
      :content_handling,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Represents a client-facing interface by which the client calls the API to access back-end resources. A Method resource is
    #             integrated with an Integration resource. Both consist of a request and one or more responses. The method request takes
    #             the client input that is passed to the back end through the integration request. A method response returns the output from
    #             the back end to the client through an integration response. A method request is embodied in a Method resource, whereas
    #             an integration request is embodied in an Integration resource.  On the other hand, a method response is represented
    #             by a MethodResponse resource, whereas an integration response is represented by an IntegrationResponse resource.
    #         </p>
    # @!attribute http_method
    #   <p>The method's HTTP verb.</p>
    #   @return [String]
    # @!attribute authorization_type
    #   <p>The method's authorization type. Valid values are <code>NONE</code> for open access, <code>AWS_IAM</code> for using AWS IAM permissions, <code>CUSTOM</code> for using a custom authorizer, or <code>COGNITO_USER_POOLS</code> for using a Cognito user pool.</p>
    #   @return [String]
    # @!attribute authorizer_id
    #   <p>The identifier of an Authorizer to use on this method. The <code>authorizationType</code> must be <code>CUSTOM</code>.</p>
    #   @return [String]
    # @!attribute api_key_required
    #   <p>A boolean flag specifying whether a valid ApiKey is required to invoke this method.</p>
    #   @return [Boolean]
    # @!attribute request_validator_id
    #   <p>The identifier of a RequestValidator for request validation.</p>
    #   @return [String]
    # @!attribute operation_name
    #   <p>A human-friendly operation identifier for the method. For example, you can assign the <code>operationName</code> of <code>ListPets</code> for the <code>GET /pets</code> method in the <code>PetStore</code> example.</p>
    #   @return [String]
    # @!attribute request_parameters
    #   <p>A key-value map defining required or optional method request parameters that can be accepted by API Gateway. A key is a method request parameter name matching the pattern of  <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> is a valid and unique parameter name. The value associated with the key is a Boolean flag indicating whether the parameter is required (<code>true</code>) or optional (<code>false</code>).  The method request parameter names defined here are available in Integration to be mapped to integration request parameters or templates.</p>
    #   @return [Hash<String, Boolean>]
    # @!attribute request_models
    #   <p>A key-value map specifying data schemas, represented by Model resources, (as the mapped value) of the request payloads of given content types (as the mapping key).</p>
    #   @return [Hash<String, String>]
    # @!attribute method_responses
    #   <p>Gets a method response associated with a given HTTP status code. </p>
    #   @return [Hash<String, Types::MethodResponse>]
    # @!attribute method_integration
    #   <p>Gets the method's integration responsible for passing the client-submitted request to the back end and performing necessary transformations to make the request compliant with the back end.</p>
    #   @return [Types::Integration]
    # @!attribute authorization_scopes
    #   <p>A list of authorization scopes configured on the method. The scopes are used with a <code>COGNITO_USER_POOLS</code> authorizer to authorize the method invocation. The authorization works by matching the method scopes against the scopes parsed from the access token in the incoming request. The method invocation is authorized if any method scopes matches a claimed scope in the access token. Otherwise, the invocation is not authorized. When the method scope is configured, the client must provide an access token instead of an identity token for authorization purposes.</p>
    #   @return [Array<String>]
    class PutMethodOutput < Struct.new(
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
      :authorization_scopes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to add a method to an existing Resource resource.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The Resource identifier for the new Method resource.</p>
    #   @return [String]
    # @!attribute http_method
    #   <p>Specifies the method request's HTTP method type.</p>
    #   @return [String]
    # @!attribute authorization_type
    #   <p>The method's authorization type. Valid values are <code>NONE</code> for open access, <code>AWS_IAM</code> for using AWS IAM permissions, <code>CUSTOM</code> for using a custom authorizer, or <code>COGNITO_USER_POOLS</code> for using a Cognito user pool.</p>
    #   @return [String]
    # @!attribute authorizer_id
    #   <p>Specifies the identifier of an Authorizer to use on this Method, if the type is CUSTOM or COGNITO_USER_POOLS. The authorizer identifier is generated by API Gateway when you created the authorizer.</p>
    #   @return [String]
    # @!attribute api_key_required
    #   <p>Specifies whether the method required a valid ApiKey.</p>
    #   @return [Boolean]
    # @!attribute operation_name
    #   <p>A human-friendly operation identifier for the method. For example, you can assign the <code>operationName</code> of <code>ListPets</code> for the <code>GET /pets</code> method in the <code>PetStore</code> example.</p>
    #   @return [String]
    # @!attribute request_parameters
    #   <p>A key-value map defining required or optional method request parameters that can be accepted by API Gateway. A key defines a method request parameter name matching the pattern of  <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> is a valid and unique parameter name. The value associated with the key is a Boolean flag indicating whether the parameter is required (<code>true</code>) or optional (<code>false</code>).  The method request parameter names defined here are available in Integration to be mapped to integration request parameters or body-mapping templates.</p>
    #   @return [Hash<String, Boolean>]
    # @!attribute request_models
    #   <p>Specifies the Model resources used for the request's content type. Request models are represented as a key/value map, with a content type as the key and a Model name as the value.</p>
    #   @return [Hash<String, String>]
    # @!attribute request_validator_id
    #   <p>The identifier of a RequestValidator for validating the method request.</p>
    #   @return [String]
    # @!attribute authorization_scopes
    #   <p>A list of authorization scopes configured on the method. The scopes are used with a <code>COGNITO_USER_POOLS</code> authorizer to authorize the method invocation. The authorization works by matching the method scopes against the scopes parsed from the access token in the incoming request. The method invocation is authorized if any method scopes matches a claimed scope in the access token. Otherwise, the invocation is not authorized. When the method scope is configured, the client must provide an access token instead of an identity token for authorization purposes.</p>
    #   @return [Array<String>]
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
      :authorization_scopes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a method response of a given HTTP status code returned to the client. The method response is passed from the back end through the associated integration response that can be transformed using a mapping template. </p>
    # @!attribute status_code
    #   <p>The method response's status code.</p>
    #   @return [String]
    # @!attribute response_parameters
    #   <p>A key-value map specifying required or optional response parameters that API Gateway can send back to the caller. A key defines a method response header and the value specifies whether the associated method response header is required or not. The expression of the key must match the pattern <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. API Gateway passes certain integration response data to the method response headers specified here according to the mapping you prescribe in the API's IntegrationResponse. The integration response data that can be mapped include an integration response header expressed in <code>integration.response.header.{name}</code>, a static value enclosed within a pair of single quotes (e.g., <code>'application/json'</code>), or a JSON expression from the back-end response payload in the form of <code>integration.response.body.{JSON-expression}</code>, where <code>JSON-expression</code> is a valid JSON expression without the <code>$</code> prefix.)</p>
    #   @return [Hash<String, Boolean>]
    # @!attribute response_models
    #   <p>Specifies the Model resources used for the response's content-type. Response models are represented as a key/value map, with a content-type as the key and a Model name as the value.</p>
    #   @return [Hash<String, String>]
    class PutMethodResponseOutput < Struct.new(
      :status_code,
      :response_parameters,
      :response_models,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to add a MethodResponse to an existing Method resource.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The Resource identifier for the Method resource.</p>
    #   @return [String]
    # @!attribute http_method
    #   <p>The HTTP verb of the Method resource.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>The method response's status code.</p>
    #   @return [String]
    # @!attribute response_parameters
    #   <p>A key-value map specifying required or optional response parameters that API Gateway can send back to the caller. A key defines a method response header name and the associated value is a Boolean flag indicating whether the method response parameter is required or not. The method response header names must match the pattern of <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. The response parameter names defined here are available in the integration response to be mapped from an integration response header expressed in <code>integration.response.header.{name}</code>, a static value enclosed within a pair of single quotes (e.g., <code>'application/json'</code>), or a JSON expression from the back-end response payload in the form of <code>integration.response.body.{JSON-expression}</code>, where <code>JSON-expression</code> is a valid JSON expression without the <code>$</code> prefix.)</p>
    #   @return [Hash<String, Boolean>]
    # @!attribute response_models
    #   <p>Specifies the Model resources used for the response's content type. Response models are represented as a key/value map, with a content type as the key and a Model name as the value.</p>
    #   @return [Hash<String, String>]
    class PutMethodResponseRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :status_code,
      :response_parameters,
      :response_models,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a REST API.</p>
    # @!attribute id
    #   <p>The API's identifier. This identifier is unique across all of your APIs in API Gateway.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The API's name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The API's description.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The timestamp when the API was created.</p>
    #   @return [Time]
    # @!attribute version
    #   <p>A version identifier for the API.</p>
    #   @return [String]
    # @!attribute warnings
    #   <p>The warning messages reported when <code>failonwarnings</code> is turned on during API import.</p>
    #   @return [Array<String>]
    # @!attribute binary_media_types
    #   <p>The list of binary media types supported by the RestApi. By default, the RestApi supports only UTF-8-encoded text payloads.</p>
    #   @return [Array<String>]
    # @!attribute minimum_compression_size
    #   <p>A nullable integer that is used to enable compression (with non-negative between 0 and 10485760 (10M) bytes, inclusive) or disable compression (with a null value) on an API. When compression is enabled, compression or decompression is not applied on the payload if the payload size is smaller than this value. Setting it to zero allows compression for any payload size.</p>
    #   @return [Integer]
    # @!attribute api_key_source
    #   <p>The source of the API key for metering requests according to a usage plan. Valid values
    #         are: ><code>HEADER</code> to read the API key from the <code>X-API-Key</code> header of a
    #         request. <code>AUTHORIZER</code> to read the API key from the <code>UsageIdentifierKey</code>
    #         from a custom authorizer.</p>
    #   @return [String]
    # @!attribute endpoint_configuration
    #   <p>The endpoint configuration of this RestApi showing the endpoint types and IP address types of the API. </p>
    #   @return [Types::EndpointConfiguration]
    # @!attribute policy
    #   <p>A stringified JSON policy document that applies to this RestApi regardless of the caller and Method configuration.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute disable_execute_api_endpoint
    #   <p>Specifies whether clients can invoke your API by using the default <code>execute-api</code> endpoint.
    #         By default, clients can invoke your API with the default
    #         <code>https://{api_id}.execute-api.{region}.amazonaws.com</code> endpoint. To require that clients use a
    #         custom domain name to invoke your API, disable the default endpoint.</p>
    #   @return [Boolean]
    # @!attribute root_resource_id
    #   <p>The API's root resource ID.</p>
    #   @return [String]
    class PutRestApiOutput < Struct.new(
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
      :disable_execute_api_endpoint,
      :root_resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:disable_execute_api_endpoint] = false unless options.key?(:disable_execute_api_endpoint)
        super
      end
    end

    # <p>A PUT request to update an existing API, with external API definitions specified as the request body.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute mode
    #   <p>The <code>mode</code> query parameter to specify the update mode. Valid values are "merge" and "overwrite". By default,
    #           the update mode is "merge".</p>
    #   @return [String]
    # @!attribute fail_on_warnings
    #   <p>A query parameter to indicate whether to rollback the API update (<code>true</code>) or not (<code>false</code>)
    #               when a warning is encountered. The default value is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute parameters
    #   <p>Custom header parameters as part of the request. For example, to exclude DocumentationParts from an imported API, set <code>ignore=documentation</code> as a <code>parameters</code> value, as in the AWS CLI command of <code>aws apigateway import-rest-api --parameters ignore=documentation --body 'file:///path/to/imported-api-body.json'</code>.</p>
    #   @return [Hash<String, String>]
    # @!attribute body
    #   <p>The PUT request body containing external API definitions. Currently, only OpenAPI definition JSON/YAML files are supported. The maximum size of the API definition file is 6MB.</p>
    #   @return [String]
    class PutRestApiRequest < Struct.new(
      :rest_api_id,
      :mode,
      :fail_on_warnings,
      :parameters,
      :body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Quotas configured for a usage plan.</p>
    # @!attribute limit
    #   <p>The target maximum number of requests that can be made in a given time period.</p>
    #   @return [Integer]
    # @!attribute offset
    #   <p>The number of requests subtracted from the given limit in the initial time period.</p>
    #   @return [Integer]
    # @!attribute period
    #   <p>The time period in which the limit applies. Valid values are "DAY", "WEEK" or "MONTH".</p>
    #   @return [String]
    class QuotaSettings < Struct.new(
      :limit,
      :offset,
      :period,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:limit] = 0 unless options.key?(:limit)
        options[:offset] = 0 unless options.key?(:offset)
        super
      end
    end

    # @!attribute domain_name_access_association_arn
    #   <p>The ARN of the domain name access association resource.
    #   </p>
    #   @return [String]
    # @!attribute domain_name_arn
    #   <p>
    #   The ARN of the domain name.
    #   </p>
    #   @return [String]
    class RejectDomainNameAccessAssociationRequest < Struct.new(
      :domain_name_access_association_arn,
      :domain_name_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A set of validation rules for incoming Method requests.</p>
    # @!attribute id
    #   <p>The identifier of this RequestValidator.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of this RequestValidator</p>
    #   @return [String]
    # @!attribute validate_request_body
    #   <p>A Boolean flag to indicate whether to validate a request body according to the configured Model schema.</p>
    #   @return [Boolean]
    # @!attribute validate_request_parameters
    #   <p>A Boolean flag to indicate whether to validate request parameters (<code>true</code>) or not (<code>false</code>).</p>
    #   @return [Boolean]
    class RequestValidator < Struct.new(
      :id,
      :name,
      :validate_request_body,
      :validate_request_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:validate_request_body] = false unless options.key?(:validate_request_body)
        options[:validate_request_parameters] = false unless options.key?(:validate_request_parameters)
        super
      end
    end

    # <p>Represents an API resource.</p>
    # @!attribute id
    #   <p>The resource's identifier.</p>
    #   @return [String]
    # @!attribute parent_id
    #   <p>The parent resource's identifier.</p>
    #   @return [String]
    # @!attribute path_part
    #   <p>The last path segment for this resource.</p>
    #   @return [String]
    # @!attribute path
    #   <p>The full path for this resource.</p>
    #   @return [String]
    # @!attribute resource_methods
    #   <p>Gets an API resource's method of a given HTTP verb.</p>
    #   @return [Hash<String, Types::Method>]
    class Resource < Struct.new(
      :id,
      :parent_id,
      :path_part,
      :path,
      :resource_methods,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a REST API.</p>
    # @!attribute id
    #   <p>The API's identifier. This identifier is unique across all of your APIs in API Gateway.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The API's name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The API's description.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The timestamp when the API was created.</p>
    #   @return [Time]
    # @!attribute version
    #   <p>A version identifier for the API.</p>
    #   @return [String]
    # @!attribute warnings
    #   <p>The warning messages reported when <code>failonwarnings</code> is turned on during API import.</p>
    #   @return [Array<String>]
    # @!attribute binary_media_types
    #   <p>The list of binary media types supported by the RestApi. By default, the RestApi supports only UTF-8-encoded text payloads.</p>
    #   @return [Array<String>]
    # @!attribute minimum_compression_size
    #   <p>A nullable integer that is used to enable compression (with non-negative between 0 and 10485760 (10M) bytes, inclusive) or disable compression (with a null value) on an API. When compression is enabled, compression or decompression is not applied on the payload if the payload size is smaller than this value. Setting it to zero allows compression for any payload size.</p>
    #   @return [Integer]
    # @!attribute api_key_source
    #   <p>The source of the API key for metering requests according to a usage plan. Valid values
    #         are: ><code>HEADER</code> to read the API key from the <code>X-API-Key</code> header of a
    #         request. <code>AUTHORIZER</code> to read the API key from the <code>UsageIdentifierKey</code>
    #         from a custom authorizer.</p>
    #   @return [String]
    # @!attribute endpoint_configuration
    #   <p>The endpoint configuration of this RestApi showing the endpoint types and IP address types of the API. </p>
    #   @return [Types::EndpointConfiguration]
    # @!attribute policy
    #   <p>A stringified JSON policy document that applies to this RestApi regardless of the caller and Method configuration.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute disable_execute_api_endpoint
    #   <p>Specifies whether clients can invoke your API by using the default <code>execute-api</code> endpoint.
    #         By default, clients can invoke your API with the default
    #         <code>https://{api_id}.execute-api.{region}.amazonaws.com</code> endpoint. To require that clients use a
    #         custom domain name to invoke your API, disable the default endpoint.</p>
    #   @return [Boolean]
    # @!attribute root_resource_id
    #   <p>The API's root resource ID.</p>
    #   @return [String]
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
      :disable_execute_api_endpoint,
      :root_resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:disable_execute_api_endpoint] = false unless options.key?(:disable_execute_api_endpoint)
        super
      end
    end

    # <p>A configuration property of an SDK type.</p>
    # @!attribute name
    #   <p>The name of a an SdkType configuration property.</p>
    #   @return [String]
    # @!attribute friendly_name
    #   <p>The user-friendly name of an SdkType configuration property.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of an SdkType configuration property.</p>
    #   @return [String]
    # @!attribute required
    #   <p>A boolean flag of an SdkType configuration property to indicate if the associated SDK configuration property is required (<code>true</code>) or not (<code>false</code>).</p>
    #   @return [Boolean]
    # @!attribute default_value
    #   <p>The default value of an SdkType configuration property.</p>
    #   @return [String]
    class SdkConfigurationProperty < Struct.new(
      :name,
      :friendly_name,
      :description,
      :required,
      :default_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:required] = false unless options.key?(:required)
        super
      end
    end

    # <p>The binary blob response to GetSdk, which contains the generated SDK.</p>
    # @!attribute content_type
    #   <p>The content-type header value in the HTTP response.</p>
    #   @return [String]
    # @!attribute content_disposition
    #   <p>The content-disposition header value in the HTTP response.</p>
    #   @return [String]
    # @!attribute body
    #   <p>The binary blob response to GetSdk, which contains the generated SDK.</p>
    #   @return [String]
    class SdkResponse < Struct.new(
      :content_type,
      :content_disposition,
      :body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A type of SDK that API Gateway can generate.</p>
    # @!attribute id
    #   <p>The identifier of an SdkType instance.</p>
    #   @return [String]
    # @!attribute friendly_name
    #   <p>The user-friendly name of an SdkType instance.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of an SdkType.</p>
    #   @return [String]
    # @!attribute configuration_properties
    #   <p>A list of configuration properties of an SdkType.</p>
    #   @return [Array<Types::SdkConfigurationProperty>]
    class SdkType < Struct.new(
      :id,
      :friendly_name,
      :description,
      :configuration_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested service is not available. For details see the accompanying error message. Retry after the specified time period.</p>
    # @!attribute retry_after_seconds
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      :retry_after_seconds,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a unique identifier for a version of a deployed RestApi that is callable by users.</p>
    # @!attribute deployment_id
    #   <p>The identifier of the Deployment that the stage points to.</p>
    #   @return [String]
    # @!attribute client_certificate_id
    #   <p>The identifier of a client certificate for an API stage.</p>
    #   @return [String]
    # @!attribute stage_name
    #   <p>The name of the stage is the first path segment in the Uniform Resource Identifier (URI) of a call to API Gateway. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The stage's description.</p>
    #   @return [String]
    # @!attribute cache_cluster_enabled
    #   <p>Specifies whether a cache cluster is enabled for the stage. To activate a method-level cache, set <code>CachingEnabled</code> to <code>true</code> for a method. </p>
    #   @return [Boolean]
    # @!attribute cache_cluster_size
    #   <p>The stage's cache capacity in GB. For more information about choosing a cache size, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-caching.html">Enabling API caching to enhance responsiveness</a>.</p>
    #   @return [String]
    # @!attribute cache_cluster_status
    #   <p>The status of the cache cluster for the stage, if enabled.</p>
    #   @return [String]
    # @!attribute method_settings
    #   <p>A map that defines the method settings for a Stage resource. Keys (designated as <code>/{method_setting_key</code> below) are method paths defined as <code>{resource_path}/{http_method}</code> for an individual method override, or <code>/\*/\*</code> for overriding all methods in the stage.  </p>
    #   @return [Hash<String, Types::MethodSetting>]
    # @!attribute variables
    #   <p>A map that defines the stage variables for a Stage resource. Variable names can
    #             have alphanumeric and underscore characters, and the values must match <code>[A-Za-z0-9-._~:/?#&=,]+</code>.</p>
    #   @return [Hash<String, String>]
    # @!attribute documentation_version
    #   <p>The version of the associated API documentation.</p>
    #   @return [String]
    # @!attribute access_log_settings
    #   <p>Settings for logging access in this stage.</p>
    #   @return [Types::AccessLogSettings]
    # @!attribute canary_settings
    #   <p>Settings for the canary deployment in this stage.</p>
    #   @return [Types::CanarySettings]
    # @!attribute tracing_enabled
    #   <p>Specifies whether active tracing with X-ray is enabled for the Stage.</p>
    #   @return [Boolean]
    # @!attribute web_acl_arn
    #   <p>The ARN of the WebAcl associated with the Stage.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute created_date
    #   <p>The timestamp when the stage was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date
    #   <p>The timestamp when the stage last updated.</p>
    #   @return [Time]
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
      :last_updated_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:cache_cluster_enabled] = false unless options.key?(:cache_cluster_enabled)
        options[:tracing_enabled] = false unless options.key?(:tracing_enabled)
        super
      end
    end

    # <p>A reference to a unique stage identified in the format <code>{restApiId}/{stage}</code>.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute stage_name
    #   <p>The stage name associated with the stage key.</p>
    #   @return [String]
    class StageKey < Struct.new(
      :rest_api_id,
      :stage_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Adds or updates a tag on a given resource.</p>
    # @!attribute resource_arn
    #   <p>The ARN of a resource that can be tagged.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Make a request to simulate the invocation of an Authorizer.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute authorizer_id
    #   <p>Specifies a test invoke authorizer request's Authorizer ID.</p>
    #   @return [String]
    # @!attribute headers
    #   <p>A key-value map of headers to simulate an incoming invocation request. This is where the incoming authorization token, or identity source, should be specified.</p>
    #   @return [Hash<String, String>]
    # @!attribute multi_value_headers
    #   <p>The headers as a map from string to list of values to simulate an incoming invocation request. This is where the incoming authorization token, or identity source, may be specified.</p>
    #   @return [Hash<String, Array<String>>]
    # @!attribute path_with_query_string
    #   <p>The URI path, including query string, of the simulated invocation request. Use this to specify path parameters and query string parameters.</p>
    #   @return [String]
    # @!attribute body
    #   <p>The simulated request body of an incoming invocation request.</p>
    #   @return [String]
    # @!attribute stage_variables
    #   <p>A key-value map of stage variables to simulate an invocation on a deployed Stage.</p>
    #   @return [Hash<String, String>]
    # @!attribute additional_context
    #   <p>A key-value map of additional context variables.</p>
    #   @return [Hash<String, String>]
    class TestInvokeAuthorizerRequest < Struct.new(
      :rest_api_id,
      :authorizer_id,
      :headers,
      :multi_value_headers,
      :path_with_query_string,
      :body,
      :stage_variables,
      :additional_context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the response of the test invoke request for a custom Authorizer</p>
    # @!attribute client_status
    #   <p>The HTTP status code that the client would have received. Value is 0 if the authorizer succeeded.</p>
    #   @return [Integer]
    # @!attribute log
    #   <p>The API Gateway execution log for the test authorizer request.</p>
    #   @return [String]
    # @!attribute latency
    #   <p>The execution latency, in ms, of the test authorizer request.</p>
    #   @return [Integer]
    # @!attribute principal_id
    #   <p>The principal identity returned by the Authorizer</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The JSON policy document returned by the Authorizer</p>
    #   @return [String]
    # @!attribute authorization
    #   <p>The authorization response.</p>
    #   @return [Hash<String, Array<String>>]
    # @!attribute claims
    #   <p>The open identity claims, with any supported custom attributes, returned from the Cognito Your User Pool configured for the API.</p>
    #   @return [Hash<String, String>]
    class TestInvokeAuthorizerResponse < Struct.new(
      :client_status,
      :log,
      :latency,
      :principal_id,
      :policy,
      :authorization,
      :claims,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:client_status] = 0 unless options.key?(:client_status)
        options[:latency] = 0 unless options.key?(:latency)
        super
      end
    end

    # <p>Make a request to simulate the invocation of a Method.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>Specifies a test invoke method request's resource ID.</p>
    #   @return [String]
    # @!attribute http_method
    #   <p>Specifies a test invoke method request's HTTP method.</p>
    #   @return [String]
    # @!attribute path_with_query_string
    #   <p>The URI path, including query string, of the simulated invocation request. Use this to specify path parameters and query string parameters.</p>
    #   @return [String]
    # @!attribute body
    #   <p>The simulated request body of an incoming invocation request.</p>
    #   @return [String]
    # @!attribute headers
    #   <p>A key-value map of headers to simulate an incoming invocation request.</p>
    #   @return [Hash<String, String>]
    # @!attribute multi_value_headers
    #   <p>The headers as a map from string to list of values to simulate an incoming invocation request.</p>
    #   @return [Hash<String, Array<String>>]
    # @!attribute client_certificate_id
    #   <p>A ClientCertificate identifier to use in the test invocation. API Gateway will use the certificate when making the HTTPS request to the defined back-end endpoint.</p>
    #   @return [String]
    # @!attribute stage_variables
    #   <p>A key-value map of stage variables to simulate an invocation on a deployed Stage.</p>
    #   @return [Hash<String, String>]
    class TestInvokeMethodRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :path_with_query_string,
      :body,
      :headers,
      :multi_value_headers,
      :client_certificate_id,
      :stage_variables,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the response of the test invoke request in the HTTP method.</p>
    # @!attribute status
    #   <p>The HTTP status code.</p>
    #   @return [Integer]
    # @!attribute body
    #   <p>The body of the HTTP response.</p>
    #   @return [String]
    # @!attribute headers
    #   <p>The headers of the HTTP response.</p>
    #   @return [Hash<String, String>]
    # @!attribute multi_value_headers
    #   <p>The headers of the HTTP response as a map from string to list of values.</p>
    #   @return [Hash<String, Array<String>>]
    # @!attribute log
    #   <p>The API Gateway execution log for the test invoke request.</p>
    #   @return [String]
    # @!attribute latency
    #   <p>The execution latency, in ms, of the test invoke request.</p>
    #   @return [Integer]
    class TestInvokeMethodResponse < Struct.new(
      :status,
      :body,
      :headers,
      :multi_value_headers,
      :log,
      :latency,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:status] = 0 unless options.key?(:status)
        options[:latency] = 0 unless options.key?(:latency)
        super
      end
    end

    # <p> The API request rate limits.</p>
    # @!attribute burst_limit
    #   <p>The API target request burst rate limit. This allows more requests through for a period of time than the target rate limit.</p>
    #   @return [Integer]
    # @!attribute rate_limit
    #   <p>The API target request rate limit.</p>
    #   @return [Float]
    class ThrottleSettings < Struct.new(
      :burst_limit,
      :rate_limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:burst_limit] = 0 unless options.key?(:burst_limit)
        options[:rate_limit] = 0 unless options.key?(:rate_limit)
        super
      end
    end

    # <p>Specifies the TLS configuration for an integration.</p>
    # @!attribute insecure_skip_verification
    #   <p>Specifies whether or not API Gateway skips verification that the certificate for an integration endpoint is
    #               issued by a supported certificate authority. This isn’t recommended, but it enables you to
    #               use certificates that are signed by private certificate authorities, or certificates
    #               that are self-signed. If enabled, API Gateway still performs basic certificate
    #               validation, which includes checking the certificate's expiration date, hostname, and
    #               presence of a root certificate authority. Supported only for <code>HTTP</code> and
    #               <code>HTTP_PROXY</code> integrations.</p>
    #            <important>
    #               <p>Enabling <code>insecureSkipVerification</code> isn't recommended, especially for integrations with public
    #             HTTPS endpoints. If you enable <code>insecureSkipVerification</code>, you increase the risk of man-in-the-middle attacks.</p>
    #            </important>
    #   @return [Boolean]
    class TlsConfig < Struct.new(
      :insecure_skip_verification,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:insecure_skip_verification] = false unless options.key?(:insecure_skip_verification)
        super
      end
    end

    # <p>The request has reached its throttling limit. Retry after the specified time period.</p>
    # @!attribute retry_after_seconds
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      :retry_after_seconds,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request is denied because the caller has insufficient permissions.</p>
    # @!attribute message
    #   @return [String]
    class UnauthorizedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Removes a tag from a given resource.</p>
    # @!attribute resource_arn
    #   <p>The ARN of a resource that can be tagged.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The Tag keys to delete.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an AWS account that is associated with API Gateway.</p>
    # @!attribute cloudwatch_role_arn
    #   <p>The ARN of an Amazon CloudWatch role for the current Account. </p>
    #   @return [String]
    # @!attribute throttle_settings
    #   <p>Specifies the API request limits configured for the current Account.</p>
    #   @return [Types::ThrottleSettings]
    # @!attribute features
    #   <p>A list of features supported for the account. When usage plans are enabled, the features list will include an entry of <code>"UsagePlans"</code>.</p>
    #   @return [Array<String>]
    # @!attribute api_key_version
    #   <p>The version of the API keys used for the account.</p>
    #   @return [String]
    class UpdateAccountOutput < Struct.new(
      :cloudwatch_role_arn,
      :throttle_settings,
      :features,
      :api_key_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Requests API Gateway to change information about the current Account resource.</p>
    # @!attribute patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #   @return [Array<Types::PatchOperation>]
    class UpdateAccountRequest < Struct.new(
      :patch_operations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A resource that can be distributed to callers for executing Method resources that require an API key. API keys can be mapped to any Stage on any RestApi, which indicates that the callers with the API key can make requests to that stage.</p>
    # @!attribute id
    #   <p>The identifier of the API Key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the API Key.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the API Key.</p>
    #   @return [String]
    # @!attribute customer_id
    #   <p>An Amazon Web Services Marketplace customer identifier, when integrating with the Amazon Web Services SaaS Marketplace.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the API Key.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Specifies whether the API Key can be used by callers.</p>
    #   @return [Boolean]
    # @!attribute created_date
    #   <p>The timestamp when the API Key was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date
    #   <p>The timestamp when the API Key was last updated.</p>
    #   @return [Time]
    # @!attribute stage_keys
    #   <p>A list of Stage resources that are associated with the ApiKey resource.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    class UpdateApiKeyOutput < Struct.new(
      :id,
      :value,
      :name,
      :customer_id,
      :description,
      :enabled,
      :created_date,
      :last_updated_date,
      :stage_keys,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>A request to change information about an ApiKey resource.</p>
    # @!attribute api_key
    #   <p>The identifier of the ApiKey resource to be updated.</p>
    #   @return [String]
    # @!attribute patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #   @return [Array<Types::PatchOperation>]
    class UpdateApiKeyRequest < Struct.new(
      :api_key,
      :patch_operations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an authorization layer for methods. If enabled on a method, API Gateway will activate the authorizer when a client calls the method.</p>
    # @!attribute id
    #   <p>The identifier for the authorizer resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the authorizer.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The authorizer type. Valid values are <code>TOKEN</code> for a Lambda function using a single authorization token submitted in a custom header, <code>REQUEST</code> for a Lambda function using incoming request parameters, and <code>COGNITO_USER_POOLS</code> for using an Amazon Cognito user pool.</p>
    #   @return [String]
    # @!attribute provider_ar_ns
    #   <p>A list of the Amazon Cognito user pool ARNs for the <code>COGNITO_USER_POOLS</code> authorizer. Each element is of this format: <code>arn:aws:cognito-idp:{region}:{account_id}:userpool/{user_pool_id}</code>. For a <code>TOKEN</code> or <code>REQUEST</code> authorizer, this is not defined. </p>
    #   @return [Array<String>]
    # @!attribute auth_type
    #   <p>Optional customer-defined field, used in OpenAPI imports and exports without functional impact.</p>
    #   @return [String]
    # @!attribute authorizer_uri
    #   <p>Specifies the authorizer's Uniform Resource Identifier (URI). For <code>TOKEN</code> or <code>REQUEST</code> authorizers, this must be a well-formed Lambda function URI, for example, <code>arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:{account_id}:function:{lambda_function_name}/invocations</code>. In general, the URI has this form  <code>arn:aws:apigateway:{region}:lambda:path/{service_api}</code>, where <code>{region}</code> is the same as the region hosting the Lambda function, <code>path</code> indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial <code>/</code>. For Lambda functions, this is usually of the form <code>/2015-03-31/functions/[FunctionARN]/invocations</code>.</p>
    #   @return [String]
    # @!attribute authorizer_credentials
    #   <p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, specify null.</p>
    #   @return [String]
    # @!attribute identity_source
    #   <p>The identity source for which authorization is requested. For a <code>TOKEN</code> or
    #           <code>COGNITO_USER_POOLS</code> authorizer, this is required and specifies the request
    #         header mapping expression for the custom header holding the authorization token submitted by
    #         the client. For example, if the token header name is <code>Auth</code>, the header mapping expression is
    #         <code>method.request.header.Auth</code>. For the <code>REQUEST</code> authorizer, this is required when authorization
    #         caching is enabled. The value is a comma-separated string of one or more mapping expressions
    #         of the specified request parameters. For example, if an <code>Auth</code> header, a <code>Name</code> query string
    #         parameter are defined as identity sources, this value is <code>method.request.header.Auth</code>,
    #         <code>method.request.querystring.Name</code>. These parameters will be used to derive the authorization
    #         caching key and to perform runtime validation of the <code>REQUEST</code> authorizer by verifying all of
    #         the identity-related request parameters are present, not null and non-empty. Only when this is
    #         true does the authorizer invoke the authorizer Lambda function, otherwise, it returns a 401
    #         Unauthorized response without calling the Lambda function. The valid value is a string of
    #         comma-separated mapping expressions of the specified request parameters. When the
    #         authorization caching is not enabled, this property is optional. </p>
    #   @return [String]
    # @!attribute identity_validation_expression
    #   <p>A validation expression for the incoming identity token. For <code>TOKEN</code> authorizers, this value is a regular expression. For <code>COGNITO_USER_POOLS</code> authorizers, API Gateway will match the <code>aud</code> field of the incoming token from the client against the specified regular expression. It will invoke the authorizer's Lambda function when there is a match. Otherwise, it will return a 401 Unauthorized response without calling the Lambda function. The validation expression does not apply to the <code>REQUEST</code> authorizer.</p>
    #   @return [String]
    # @!attribute authorizer_result_ttl_in_seconds
    #   <p>The TTL in seconds of cached authorizer results. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway will cache authorizer responses. If this field is not set, the default value is 300. The maximum value is 3600, or 1 hour.</p>
    #   @return [Integer]
    class UpdateAuthorizerOutput < Struct.new(
      :id,
      :name,
      :type,
      :provider_ar_ns,
      :auth_type,
      :authorizer_uri,
      :authorizer_credentials,
      :identity_source,
      :identity_validation_expression,
      :authorizer_result_ttl_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to update an existing Authorizer resource.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute authorizer_id
    #   <p>The identifier of the Authorizer resource.</p>
    #   @return [String]
    # @!attribute patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #   @return [Array<Types::PatchOperation>]
    class UpdateAuthorizerRequest < Struct.new(
      :rest_api_id,
      :authorizer_id,
      :patch_operations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the base path that callers of the API must provide as part of the URL after the domain name.</p>
    # @!attribute base_path
    #   <p>The base path name that callers of the API must provide as part of the URL after the domain name.</p>
    #   @return [String]
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute stage
    #   <p>The name of the associated stage.</p>
    #   @return [String]
    class UpdateBasePathMappingOutput < Struct.new(
      :base_path,
      :rest_api_id,
      :stage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to change information about the BasePathMapping resource.</p>
    # @!attribute domain_name
    #   <p>The domain name of the BasePathMapping resource to change.</p>
    #   @return [String]
    # @!attribute domain_name_id
    #   <p>
    #     The identifier for the domain name resource. Supported only for private custom domain names.
    #   </p>
    #   @return [String]
    # @!attribute base_path
    #   <p>The base path of the BasePathMapping resource to change.</p>
    #            <p>To specify an empty base path, set this parameter to <code>'(none)'</code>.</p>
    #   @return [String]
    # @!attribute patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #   @return [Array<Types::PatchOperation>]
    class UpdateBasePathMappingRequest < Struct.new(
      :domain_name,
      :domain_name_id,
      :base_path,
      :patch_operations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a client certificate used to configure client-side SSL authentication while sending requests to the integration endpoint.</p>
    # @!attribute client_certificate_id
    #   <p>The identifier of the client certificate.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the client certificate.</p>
    #   @return [String]
    # @!attribute pem_encoded_certificate
    #   <p>The PEM-encoded public key of the client certificate, which can be used to configure certificate authentication in the integration endpoint .</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The timestamp when the client certificate was created.</p>
    #   @return [Time]
    # @!attribute expiration_date
    #   <p>The timestamp when the client certificate will expire.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    class UpdateClientCertificateOutput < Struct.new(
      :client_certificate_id,
      :description,
      :pem_encoded_certificate,
      :created_date,
      :expiration_date,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to change information about an ClientCertificate resource.</p>
    # @!attribute client_certificate_id
    #   <p>The identifier of the ClientCertificate resource to be updated.</p>
    #   @return [String]
    # @!attribute patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #   @return [Array<Types::PatchOperation>]
    class UpdateClientCertificateRequest < Struct.new(
      :client_certificate_id,
      :patch_operations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An immutable representation of a RestApi resource that can be called by users using Stages. A deployment must be associated with a Stage for it to be callable over the Internet.</p>
    # @!attribute id
    #   <p>The identifier for the deployment resource.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the deployment resource.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The date and time that the deployment resource was created.</p>
    #   @return [Time]
    # @!attribute api_summary
    #   <p>A summary of the RestApi at the date and time that the deployment resource was created.</p>
    #   @return [Hash<String, Hash<String, Types::MethodSnapshot>>]
    class UpdateDeploymentOutput < Struct.new(
      :id,
      :description,
      :created_date,
      :api_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Requests API Gateway to change information about a Deployment resource.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute deployment_id
    #   <p>The replacement identifier for the Deployment resource to change information about.</p>
    #   @return [String]
    # @!attribute patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #   @return [Array<Types::PatchOperation>]
    class UpdateDeploymentRequest < Struct.new(
      :rest_api_id,
      :deployment_id,
      :patch_operations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A documentation part for a targeted API entity.</p>
    # @!attribute id
    #   <p>The DocumentationPart identifier, generated by API Gateway when the <code>DocumentationPart</code> is created.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the API entity to which the documentation applies. Valid fields depend on the targeted API entity type. All the valid location fields are not required. If not explicitly specified, a valid location field is treated as a wildcard and associated documentation content may be inherited by matching entities, unless overridden.</p>
    #   @return [Types::DocumentationPartLocation]
    # @!attribute properties
    #   <p>A content map of API-specific key-value pairs describing the targeted API entity. The map must be encoded as a JSON string, e.g., <code>"{ \"description\": \"The API does ...\" }"</code>.  Only OpenAPI-compliant documentation-related fields from the properties map are exported and, hence, published as part of the API entity definitions, while the original documentation parts are exported in a OpenAPI extension of <code>x-amazon-apigateway-documentation</code>.</p>
    #   @return [String]
    class UpdateDocumentationPartOutput < Struct.new(
      :id,
      :location,
      :properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Updates an existing documentation part of a given API.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute documentation_part_id
    #   <p>The identifier of the to-be-updated documentation part.</p>
    #   @return [String]
    # @!attribute patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #   @return [Array<Types::PatchOperation>]
    class UpdateDocumentationPartRequest < Struct.new(
      :rest_api_id,
      :documentation_part_id,
      :patch_operations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A snapshot of the documentation of an API.</p>
    # @!attribute version
    #   <p>The version identifier of the API documentation snapshot.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The date when the API documentation snapshot is created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the API documentation snapshot.</p>
    #   @return [String]
    class UpdateDocumentationVersionOutput < Struct.new(
      :version,
      :created_date,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Updates an existing documentation version of an API.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute documentation_version
    #   <p>The version identifier of the to-be-updated documentation version.</p>
    #   @return [String]
    # @!attribute patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #   @return [Array<Types::PatchOperation>]
    class UpdateDocumentationVersionRequest < Struct.new(
      :rest_api_id,
      :documentation_version,
      :patch_operations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a custom domain name as a user-friendly host name of an API (RestApi).</p>
    # @!attribute domain_name
    #   <p>The custom domain name as an API host name, for example, <code>my-api.example.com</code>.</p>
    #   @return [String]
    # @!attribute domain_name_id
    #   <p>The identifier for the domain name resource. Supported only for private custom domain names.</p>
    #   @return [String]
    # @!attribute domain_name_arn
    #   <p>The ARN of the domain name.
    #   </p>
    #   @return [String]
    # @!attribute certificate_name
    #   <p>The name of the certificate that will be used by edge-optimized endpoint or private endpoint for this domain name.</p>
    #   @return [String]
    # @!attribute certificate_arn
    #   <p>The reference to an Amazon Web Services-managed certificate that will be used by edge-optimized endpoint or private endpoint for this domain name. Certificate Manager is the only supported source.</p>
    #   @return [String]
    # @!attribute certificate_upload_date
    #   <p>The timestamp when the certificate that was used by edge-optimized endpoint or private endpoint for this domain name was uploaded.</p>
    #   @return [Time]
    # @!attribute regional_domain_name
    #   <p>The domain name associated with the regional endpoint for this custom domain name. You set up this association by adding a DNS record that points the custom domain name to this regional domain name. The regional domain name is returned by API Gateway when you create a regional endpoint.</p>
    #   @return [String]
    # @!attribute regional_hosted_zone_id
    #   <p>The region-specific Amazon Route 53 Hosted Zone ID of the regional endpoint. For more information, see Set up a Regional Custom Domain Name and AWS Regions and Endpoints for API Gateway. </p>
    #   @return [String]
    # @!attribute regional_certificate_name
    #   <p>The name of the certificate that will be used for validating the regional domain name.</p>
    #   @return [String]
    # @!attribute regional_certificate_arn
    #   <p>The reference to an Amazon Web Services-managed certificate that will be used for validating the regional domain name. Certificate Manager is the only supported source.</p>
    #   @return [String]
    # @!attribute distribution_domain_name
    #   <p>The domain name of the Amazon CloudFront distribution associated with this custom domain name for an edge-optimized endpoint. You set up this association when adding a DNS record pointing the custom domain name to this distribution name. For more information about CloudFront distributions, see the Amazon CloudFront documentation.</p>
    #   @return [String]
    # @!attribute distribution_hosted_zone_id
    #   <p>The region-agnostic Amazon Route 53 Hosted Zone ID of the edge-optimized endpoint. The valid value is <code>Z2FDTNDATAQYW2</code> for all the regions. For more information, see Set up a Regional Custom Domain Name and AWS Regions and Endpoints for API Gateway. </p>
    #   @return [String]
    # @!attribute endpoint_configuration
    #   <p>The endpoint configuration of this DomainName showing the endpoint types and IP address types of the domain name. </p>
    #   @return [Types::EndpointConfiguration]
    # @!attribute domain_name_status
    #   <p>The status of the DomainName migration. The valid values are <code>AVAILABLE</code> and <code>UPDATING</code>. If the status is <code>UPDATING</code>, the domain cannot be modified further until the existing operation is complete. If it is <code>AVAILABLE</code>, the domain can be updated.</p>
    #   @return [String]
    # @!attribute domain_name_status_message
    #   <p>An optional text message containing detailed information about status of the DomainName migration.</p>
    #   @return [String]
    # @!attribute security_policy
    #   <p>The Transport Layer Security (TLS) version + cipher suite for this DomainName. The valid values are <code>TLS_1_0</code> and <code>TLS_1_2</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute mutual_tls_authentication
    #   <p>The mutual TLS authentication configuration for a custom domain name. If specified, API Gateway
    #         performs two-way authentication between the client and the server. Clients must present a
    #         trusted certificate to access your API.</p>
    #   @return [Types::MutualTlsAuthentication]
    # @!attribute ownership_verification_certificate_arn
    #   <p>The ARN of the public certificate issued by ACM to validate ownership of your custom
    #         domain. Only required when configuring mutual TLS and using an ACM imported or private CA
    #         certificate ARN as the regionalCertificateArn.</p>
    #   @return [String]
    # @!attribute management_policy
    #   <p>A stringified JSON policy document that applies to the API Gateway Management service for this DomainName. This policy document controls access for access association sources to create domain name access associations with this DomainName. Supported only for private custom domain names.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>A stringified JSON policy document that applies to the <code>execute-api</code> service for this DomainName regardless of the caller and Method
    #         configuration. Supported only for private custom
    #         domain names.</p>
    #   @return [String]
    # @!attribute routing_mode
    #   <p>The routing mode for this domain name. The routing mode determines how API Gateway sends traffic from your custom domain name to your private APIs.</p>
    #   @return [String]
    class UpdateDomainNameOutput < Struct.new(
      :domain_name,
      :domain_name_id,
      :domain_name_arn,
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
      :ownership_verification_certificate_arn,
      :management_policy,
      :policy,
      :routing_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to change information about the DomainName resource.</p>
    # @!attribute domain_name
    #   <p>The name of the DomainName resource to be changed.</p>
    #   @return [String]
    # @!attribute domain_name_id
    #   <p>
    #     The identifier for the domain name resource. Supported only for private custom domain names.
    #   </p>
    #   @return [String]
    # @!attribute patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #   @return [Array<Types::PatchOperation>]
    class UpdateDomainNameRequest < Struct.new(
      :domain_name,
      :domain_name_id,
      :patch_operations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A gateway response of a given response type and status code, with optional response parameters and mapping templates.</p>
    # @!attribute response_type
    #   <p>The response type of the associated GatewayResponse.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>The HTTP status code for this GatewayResponse.</p>
    #   @return [String]
    # @!attribute response_parameters
    #   <p>Response parameters (paths, query strings and headers) of the GatewayResponse as a
    #         string-to-string map of key-value pairs.</p>
    #   @return [Hash<String, String>]
    # @!attribute response_templates
    #   <p>Response templates of the GatewayResponse as a string-to-string map of key-value pairs.</p>
    #   @return [Hash<String, String>]
    # @!attribute default_response
    #   <p>A Boolean flag to indicate whether this GatewayResponse is the default gateway response (<code>true</code>) or not (<code>false</code>). A default gateway response is one generated by API Gateway without any customization by an API developer. </p>
    #   @return [Boolean]
    class UpdateGatewayResponseOutput < Struct.new(
      :response_type,
      :status_code,
      :response_parameters,
      :response_templates,
      :default_response,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:default_response] = false unless options.key?(:default_response)
        super
      end
    end

    # <p>Updates a GatewayResponse of a specified response type on the given RestApi.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute response_type
    #   <p>The response type of the associated GatewayResponse.</p>
    #   @return [String]
    # @!attribute patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #   @return [Array<Types::PatchOperation>]
    class UpdateGatewayResponseRequest < Struct.new(
      :rest_api_id,
      :response_type,
      :patch_operations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an <code>HTTP</code>, <code>HTTP_PROXY</code>, <code>AWS</code>, <code>AWS_PROXY</code>, or Mock integration.</p>
    # @!attribute type
    #   <p>Specifies an API method integration type. The valid value is one of the following:</p>
    #            <p>For the HTTP and HTTP proxy integrations, each integration can specify a protocol (<code>http/https</code>), port and path. Standard 80 and 443 ports are supported as well as custom ports above 1024. An HTTP or HTTP proxy integration with a <code>connectionType</code> of <code>VPC_LINK</code> is referred to as a private integration and uses a VpcLink to connect API Gateway to a network load balancer of a VPC.</p>
    #   @return [String]
    # @!attribute http_method
    #   <p>Specifies the integration's HTTP method type. For the Type property, if you specify <code>MOCK</code>, this property is optional. For Lambda integrations, you must set the integration method to <code>POST</code>. For all other types, you must specify this property.</p>
    #   @return [String]
    # @!attribute uri
    #   <p>Specifies Uniform Resource Identifier (URI) of the integration endpoint.</p>
    #            <p>For <code>HTTP</code> or <code>HTTP_PROXY</code> integrations, the URI must be a fully formed, encoded HTTP(S) URL
    #   	    according to the RFC-3986 specification for standard integrations. If <code>connectionType</code> is <code>VPC_LINK</code> specify the Network Load Balancer DNS name.
    #         For <code>AWS</code> or <code>AWS_PROXY</code> integrations, the URI is of
    #         the form <code>arn:aws:apigateway:{region}:{subdomain.service|service}:path|action/{service_api}</code>.
    #         Here, {Region} is the API Gateway region (e.g., us-east-1); {service} is the name of the
    #         integrated Amazon Web Services service (e.g., s3); and {subdomain} is a designated subdomain supported by
    #         certain Amazon Web Services  service for fast host-name lookup. action can be used for an Amazon Web Services  service
    #         action-based API, using an Action={name}&{p1}={v1}&p2={v2}... query string. The ensuing
    #         {service_api} refers to a supported action {name} plus any required input parameters.
    #         Alternatively, path can be used for an Amazon Web Services service path-based API. The ensuing service_api
    #         refers to the path to an Amazon Web Services  service resource, including the region of the integrated Amazon Web Services 
    #         service, if applicable. For example, for integration with the S3 API of GetObject, the uri can
    #         be either <code>arn:aws:apigateway:us-west-2:s3:action/GetObject&Bucket={bucket}&Key={key}</code> or
    #         <code>arn:aws:apigateway:us-west-2:s3:path/{bucket}/{key}</code>
    #            </p>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The type of the network connection to the integration endpoint. The valid value is <code>INTERNET</code> for connections through the public routable internet or <code>VPC_LINK</code> for private connections between API Gateway and a network load balancer in a VPC. The default value is <code>INTERNET</code>.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The ID of the VpcLink used for the integration when <code>connectionType=VPC_LINK</code> and undefined, otherwise.</p>
    #   @return [String]
    # @!attribute credentials
    #   <p>Specifies the credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string <code>arn:aws:iam::\*:user/\*</code>. To use resource-based permissions on supported Amazon Web Services services, specify null.</p>
    #   @return [String]
    # @!attribute request_parameters
    #   <p>A key-value map specifying request parameters that are passed from the method request to the back end. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the back end. The method request parameter value must match the pattern of  <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> must be a valid and unique method request parameter name.</p>
    #   @return [Hash<String, String>]
    # @!attribute request_templates
    #   <p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value.</p>
    #   @return [Hash<String, String>]
    # @!attribute passthrough_behavior
    #   <p>Specifies how the method request body of an unmapped content type will be passed through
    #         the integration request to the back end without transformation. A content type is unmapped if
    #         no mapping template is defined in the integration or the content type does not match any of
    #         the mapped content types, as specified in <code>requestTemplates</code>. The valid value is one of the
    #         following: <code>WHEN_NO_MATCH</code>: passes the method request body through the integration request to
    #         the back end without transformation when the method request content type does not match any
    #         content type associated with the mapping templates defined in the integration request.
    #         <code>WHEN_NO_TEMPLATES</code>: passes the method request body through the integration request to the back
    #         end without transformation when no mapping template is defined in the integration request. If
    #         a template is defined when this option is selected, the method request of an unmapped
    #         content-type will be rejected with an HTTP 415 Unsupported Media Type response. <code>NEVER</code>: rejects
    #         the method request with an HTTP 415 Unsupported Media Type response when either the method
    #         request content type does not match any content type associated with the mapping templates
    #         defined in the integration request or no mapping template is defined in the integration
    #         request.</p>
    #   @return [String]
    # @!attribute content_handling
    #   <p>Specifies how to handle request payload content type conversions. Supported values are <code>CONVERT_TO_BINARY</code> and <code>CONVERT_TO_TEXT</code>, with the following behaviors:</p>
    #            <p>If this property is not defined, the request payload will be passed through from the method request to integration request without modification, provided that the <code>passthroughBehavior</code> is configured to support payload pass-through.</p>
    #   @return [String]
    # @!attribute timeout_in_millis
    #   <p>Custom timeout between 50 and 29,000 milliseconds. The default value is 29,000 milliseconds or 29 seconds. You can increase the default value to longer than 29 seconds for Regional or private APIs only.</p>
    #   @return [Integer]
    # @!attribute cache_namespace
    #   <p>Specifies a group of related cached parameters. By default, API Gateway uses the resource ID as the <code>cacheNamespace</code>. You can specify the same <code>cacheNamespace</code> across resources to return the same cached data for requests to different resources.</p>
    #   @return [String]
    # @!attribute cache_key_parameters
    #   <p>A list of request parameters whose values API Gateway caches. To be valid values for <code>cacheKeyParameters</code>, these parameters must also be specified for Method <code>requestParameters</code>.</p>
    #   @return [Array<String>]
    # @!attribute integration_responses
    #   <p>Specifies the integration's responses.</p>
    #   @return [Hash<String, Types::IntegrationResponse>]
    # @!attribute tls_config
    #   <p>Specifies the TLS configuration for an integration.</p>
    #   @return [Types::TlsConfig]
    class UpdateIntegrationOutput < Struct.new(
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
      :tls_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:timeout_in_millis] = 0 unless options.key?(:timeout_in_millis)
        super
      end
    end

    # <p>Represents an update integration request.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>Represents an update integration request's resource identifier.</p>
    #   @return [String]
    # @!attribute http_method
    #   <p>Represents an update integration request's HTTP method.</p>
    #   @return [String]
    # @!attribute patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #   @return [Array<Types::PatchOperation>]
    class UpdateIntegrationRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :patch_operations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an integration response. The status code must map to an existing MethodResponse, and parameters and templates can be used to transform the back-end response.</p>
    # @!attribute status_code
    #   <p>Specifies the status code that is used to map the integration response to an existing MethodResponse.</p>
    #   @return [String]
    # @!attribute selection_pattern
    #   <p>Specifies the regular expression (regex) pattern used to choose an integration response based on the response from the back end. For example, if the success response returns nothing and the error response returns some string, you could use the <code>.+</code> regex to match error response. However, make sure that the error response does not contain any newline (<code>\n</code>) character in such cases. If the back end is an Lambda function, the Lambda function error header is matched. For all other HTTP and Amazon Web Services back ends, the HTTP status code is matched.</p>
    #   @return [String]
    # @!attribute response_parameters
    #   <p>A key-value map specifying response parameters that are passed to the method response from the back end.
    #               The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. The mapped non-static value must match the pattern of <code>integration.response.header.{name}</code> or <code>integration.response.body.{JSON-expression}</code>, where <code>name</code> is a valid and unique response header name and <code>JSON-expression</code> is a valid JSON expression without the <code>$</code> prefix.</p>
    #   @return [Hash<String, String>]
    # @!attribute response_templates
    #   <p>Specifies the templates used to transform the integration response body. Response templates are represented as a key/value map, with a content-type as the key and a template as the value.</p>
    #   @return [Hash<String, String>]
    # @!attribute content_handling
    #   <p>Specifies how to handle response payload content type conversions. Supported values are <code>CONVERT_TO_BINARY</code> and <code>CONVERT_TO_TEXT</code>, with the following behaviors:</p>
    #            <p>If this property is not defined, the response payload will be passed through from the integration response to the method response without modification.</p>
    #   @return [String]
    class UpdateIntegrationResponseOutput < Struct.new(
      :status_code,
      :selection_pattern,
      :response_parameters,
      :response_templates,
      :content_handling,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an update integration response request.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>Specifies an update integration response request's resource identifier.</p>
    #   @return [String]
    # @!attribute http_method
    #   <p>Specifies an update integration response request's HTTP method.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>Specifies an update integration response request's status code.</p>
    #   @return [String]
    # @!attribute patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #   @return [Array<Types::PatchOperation>]
    class UpdateIntegrationResponseRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :status_code,
      :patch_operations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Represents a client-facing interface by which the client calls the API to access back-end resources. A Method resource is
    #             integrated with an Integration resource. Both consist of a request and one or more responses. The method request takes
    #             the client input that is passed to the back end through the integration request. A method response returns the output from
    #             the back end to the client through an integration response. A method request is embodied in a Method resource, whereas
    #             an integration request is embodied in an Integration resource.  On the other hand, a method response is represented
    #             by a MethodResponse resource, whereas an integration response is represented by an IntegrationResponse resource.
    #         </p>
    # @!attribute http_method
    #   <p>The method's HTTP verb.</p>
    #   @return [String]
    # @!attribute authorization_type
    #   <p>The method's authorization type. Valid values are <code>NONE</code> for open access, <code>AWS_IAM</code> for using AWS IAM permissions, <code>CUSTOM</code> for using a custom authorizer, or <code>COGNITO_USER_POOLS</code> for using a Cognito user pool.</p>
    #   @return [String]
    # @!attribute authorizer_id
    #   <p>The identifier of an Authorizer to use on this method. The <code>authorizationType</code> must be <code>CUSTOM</code>.</p>
    #   @return [String]
    # @!attribute api_key_required
    #   <p>A boolean flag specifying whether a valid ApiKey is required to invoke this method.</p>
    #   @return [Boolean]
    # @!attribute request_validator_id
    #   <p>The identifier of a RequestValidator for request validation.</p>
    #   @return [String]
    # @!attribute operation_name
    #   <p>A human-friendly operation identifier for the method. For example, you can assign the <code>operationName</code> of <code>ListPets</code> for the <code>GET /pets</code> method in the <code>PetStore</code> example.</p>
    #   @return [String]
    # @!attribute request_parameters
    #   <p>A key-value map defining required or optional method request parameters that can be accepted by API Gateway. A key is a method request parameter name matching the pattern of  <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> is a valid and unique parameter name. The value associated with the key is a Boolean flag indicating whether the parameter is required (<code>true</code>) or optional (<code>false</code>).  The method request parameter names defined here are available in Integration to be mapped to integration request parameters or templates.</p>
    #   @return [Hash<String, Boolean>]
    # @!attribute request_models
    #   <p>A key-value map specifying data schemas, represented by Model resources, (as the mapped value) of the request payloads of given content types (as the mapping key).</p>
    #   @return [Hash<String, String>]
    # @!attribute method_responses
    #   <p>Gets a method response associated with a given HTTP status code. </p>
    #   @return [Hash<String, Types::MethodResponse>]
    # @!attribute method_integration
    #   <p>Gets the method's integration responsible for passing the client-submitted request to the back end and performing necessary transformations to make the request compliant with the back end.</p>
    #   @return [Types::Integration]
    # @!attribute authorization_scopes
    #   <p>A list of authorization scopes configured on the method. The scopes are used with a <code>COGNITO_USER_POOLS</code> authorizer to authorize the method invocation. The authorization works by matching the method scopes against the scopes parsed from the access token in the incoming request. The method invocation is authorized if any method scopes matches a claimed scope in the access token. Otherwise, the invocation is not authorized. When the method scope is configured, the client must provide an access token instead of an identity token for authorization purposes.</p>
    #   @return [Array<String>]
    class UpdateMethodOutput < Struct.new(
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
      :authorization_scopes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to update an existing Method resource.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The Resource identifier for the Method resource.</p>
    #   @return [String]
    # @!attribute http_method
    #   <p>The HTTP verb of the Method resource.</p>
    #   @return [String]
    # @!attribute patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #   @return [Array<Types::PatchOperation>]
    class UpdateMethodRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :patch_operations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a method response of a given HTTP status code returned to the client. The method response is passed from the back end through the associated integration response that can be transformed using a mapping template. </p>
    # @!attribute status_code
    #   <p>The method response's status code.</p>
    #   @return [String]
    # @!attribute response_parameters
    #   <p>A key-value map specifying required or optional response parameters that API Gateway can send back to the caller. A key defines a method response header and the value specifies whether the associated method response header is required or not. The expression of the key must match the pattern <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. API Gateway passes certain integration response data to the method response headers specified here according to the mapping you prescribe in the API's IntegrationResponse. The integration response data that can be mapped include an integration response header expressed in <code>integration.response.header.{name}</code>, a static value enclosed within a pair of single quotes (e.g., <code>'application/json'</code>), or a JSON expression from the back-end response payload in the form of <code>integration.response.body.{JSON-expression}</code>, where <code>JSON-expression</code> is a valid JSON expression without the <code>$</code> prefix.)</p>
    #   @return [Hash<String, Boolean>]
    # @!attribute response_models
    #   <p>Specifies the Model resources used for the response's content-type. Response models are represented as a key/value map, with a content-type as the key and a Model name as the value.</p>
    #   @return [Hash<String, String>]
    class UpdateMethodResponseOutput < Struct.new(
      :status_code,
      :response_parameters,
      :response_models,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to update an existing MethodResponse resource.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The Resource identifier for the MethodResponse resource.</p>
    #   @return [String]
    # @!attribute http_method
    #   <p>The HTTP verb of the Method resource.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>The status code for the MethodResponse resource.</p>
    #   @return [String]
    # @!attribute patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #   @return [Array<Types::PatchOperation>]
    class UpdateMethodResponseRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :status_code,
      :patch_operations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the data structure of a method's request or response payload.</p>
    # @!attribute id
    #   <p>The identifier for the model resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the model. Must be an alphanumeric string.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the model.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>The schema for the model. For <code>application/json</code> models, this should be JSON schema draft 4 model. Do not include "\*/" characters in the description of any properties because such "\*/" characters may be interpreted as the closing marker for comments in some languages, such as Java or JavaScript, causing the installation of your API's SDK generated by API Gateway to fail.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The content-type for the model.</p>
    #   @return [String]
    class UpdateModelOutput < Struct.new(
      :id,
      :name,
      :description,
      :schema,
      :content_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to update an existing model in an existing RestApi resource.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute model_name
    #   <p>The name of the model to update.</p>
    #   @return [String]
    # @!attribute patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #   @return [Array<Types::PatchOperation>]
    class UpdateModelRequest < Struct.new(
      :rest_api_id,
      :model_name,
      :patch_operations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A set of validation rules for incoming Method requests.</p>
    # @!attribute id
    #   <p>The identifier of this RequestValidator.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of this RequestValidator</p>
    #   @return [String]
    # @!attribute validate_request_body
    #   <p>A Boolean flag to indicate whether to validate a request body according to the configured Model schema.</p>
    #   @return [Boolean]
    # @!attribute validate_request_parameters
    #   <p>A Boolean flag to indicate whether to validate request parameters (<code>true</code>) or not (<code>false</code>).</p>
    #   @return [Boolean]
    class UpdateRequestValidatorOutput < Struct.new(
      :id,
      :name,
      :validate_request_body,
      :validate_request_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:validate_request_body] = false unless options.key?(:validate_request_body)
        options[:validate_request_parameters] = false unless options.key?(:validate_request_parameters)
        super
      end
    end

    # <p>Updates a RequestValidator of a given RestApi.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute request_validator_id
    #   <p>The identifier of RequestValidator to be updated.</p>
    #   @return [String]
    # @!attribute patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #   @return [Array<Types::PatchOperation>]
    class UpdateRequestValidatorRequest < Struct.new(
      :rest_api_id,
      :request_validator_id,
      :patch_operations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an API resource.</p>
    # @!attribute id
    #   <p>The resource's identifier.</p>
    #   @return [String]
    # @!attribute parent_id
    #   <p>The parent resource's identifier.</p>
    #   @return [String]
    # @!attribute path_part
    #   <p>The last path segment for this resource.</p>
    #   @return [String]
    # @!attribute path
    #   <p>The full path for this resource.</p>
    #   @return [String]
    # @!attribute resource_methods
    #   <p>Gets an API resource's method of a given HTTP verb.</p>
    #   @return [Hash<String, Types::Method>]
    class UpdateResourceOutput < Struct.new(
      :id,
      :parent_id,
      :path_part,
      :path,
      :resource_methods,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to change information about a Resource resource.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the Resource resource.</p>
    #   @return [String]
    # @!attribute patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #   @return [Array<Types::PatchOperation>]
    class UpdateResourceRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :patch_operations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a REST API.</p>
    # @!attribute id
    #   <p>The API's identifier. This identifier is unique across all of your APIs in API Gateway.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The API's name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The API's description.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The timestamp when the API was created.</p>
    #   @return [Time]
    # @!attribute version
    #   <p>A version identifier for the API.</p>
    #   @return [String]
    # @!attribute warnings
    #   <p>The warning messages reported when <code>failonwarnings</code> is turned on during API import.</p>
    #   @return [Array<String>]
    # @!attribute binary_media_types
    #   <p>The list of binary media types supported by the RestApi. By default, the RestApi supports only UTF-8-encoded text payloads.</p>
    #   @return [Array<String>]
    # @!attribute minimum_compression_size
    #   <p>A nullable integer that is used to enable compression (with non-negative between 0 and 10485760 (10M) bytes, inclusive) or disable compression (with a null value) on an API. When compression is enabled, compression or decompression is not applied on the payload if the payload size is smaller than this value. Setting it to zero allows compression for any payload size.</p>
    #   @return [Integer]
    # @!attribute api_key_source
    #   <p>The source of the API key for metering requests according to a usage plan. Valid values
    #         are: ><code>HEADER</code> to read the API key from the <code>X-API-Key</code> header of a
    #         request. <code>AUTHORIZER</code> to read the API key from the <code>UsageIdentifierKey</code>
    #         from a custom authorizer.</p>
    #   @return [String]
    # @!attribute endpoint_configuration
    #   <p>The endpoint configuration of this RestApi showing the endpoint types and IP address types of the API. </p>
    #   @return [Types::EndpointConfiguration]
    # @!attribute policy
    #   <p>A stringified JSON policy document that applies to this RestApi regardless of the caller and Method configuration.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute disable_execute_api_endpoint
    #   <p>Specifies whether clients can invoke your API by using the default <code>execute-api</code> endpoint.
    #         By default, clients can invoke your API with the default
    #         <code>https://{api_id}.execute-api.{region}.amazonaws.com</code> endpoint. To require that clients use a
    #         custom domain name to invoke your API, disable the default endpoint.</p>
    #   @return [Boolean]
    # @!attribute root_resource_id
    #   <p>The API's root resource ID.</p>
    #   @return [String]
    class UpdateRestApiOutput < Struct.new(
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
      :disable_execute_api_endpoint,
      :root_resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:disable_execute_api_endpoint] = false unless options.key?(:disable_execute_api_endpoint)
        super
      end
    end

    # <p>Request to update an existing RestApi resource in your collection.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #   @return [Array<Types::PatchOperation>]
    class UpdateRestApiRequest < Struct.new(
      :rest_api_id,
      :patch_operations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a unique identifier for a version of a deployed RestApi that is callable by users.</p>
    # @!attribute deployment_id
    #   <p>The identifier of the Deployment that the stage points to.</p>
    #   @return [String]
    # @!attribute client_certificate_id
    #   <p>The identifier of a client certificate for an API stage.</p>
    #   @return [String]
    # @!attribute stage_name
    #   <p>The name of the stage is the first path segment in the Uniform Resource Identifier (URI) of a call to API Gateway. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The stage's description.</p>
    #   @return [String]
    # @!attribute cache_cluster_enabled
    #   <p>Specifies whether a cache cluster is enabled for the stage. To activate a method-level cache, set <code>CachingEnabled</code> to <code>true</code> for a method. </p>
    #   @return [Boolean]
    # @!attribute cache_cluster_size
    #   <p>The stage's cache capacity in GB. For more information about choosing a cache size, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-caching.html">Enabling API caching to enhance responsiveness</a>.</p>
    #   @return [String]
    # @!attribute cache_cluster_status
    #   <p>The status of the cache cluster for the stage, if enabled.</p>
    #   @return [String]
    # @!attribute method_settings
    #   <p>A map that defines the method settings for a Stage resource. Keys (designated as <code>/{method_setting_key</code> below) are method paths defined as <code>{resource_path}/{http_method}</code> for an individual method override, or <code>/\*/\*</code> for overriding all methods in the stage.  </p>
    #   @return [Hash<String, Types::MethodSetting>]
    # @!attribute variables
    #   <p>A map that defines the stage variables for a Stage resource. Variable names can
    #             have alphanumeric and underscore characters, and the values must match <code>[A-Za-z0-9-._~:/?#&=,]+</code>.</p>
    #   @return [Hash<String, String>]
    # @!attribute documentation_version
    #   <p>The version of the associated API documentation.</p>
    #   @return [String]
    # @!attribute access_log_settings
    #   <p>Settings for logging access in this stage.</p>
    #   @return [Types::AccessLogSettings]
    # @!attribute canary_settings
    #   <p>Settings for the canary deployment in this stage.</p>
    #   @return [Types::CanarySettings]
    # @!attribute tracing_enabled
    #   <p>Specifies whether active tracing with X-ray is enabled for the Stage.</p>
    #   @return [Boolean]
    # @!attribute web_acl_arn
    #   <p>The ARN of the WebAcl associated with the Stage.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute created_date
    #   <p>The timestamp when the stage was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date
    #   <p>The timestamp when the stage last updated.</p>
    #   @return [Time]
    class UpdateStageOutput < Struct.new(
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
      :last_updated_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:cache_cluster_enabled] = false unless options.key?(:cache_cluster_enabled)
        options[:tracing_enabled] = false unless options.key?(:tracing_enabled)
        super
      end
    end

    # <p>Requests API Gateway to change information about a Stage resource.</p>
    # @!attribute rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #   @return [String]
    # @!attribute stage_name
    #   <p>The name of the Stage resource to change information about.</p>
    #   @return [String]
    # @!attribute patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #   @return [Array<Types::PatchOperation>]
    class UpdateStageRequest < Struct.new(
      :rest_api_id,
      :stage_name,
      :patch_operations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the usage data of a usage plan.</p>
    # @!attribute usage_plan_id
    #   <p>The plan Id associated with this usage data.</p>
    #   @return [String]
    # @!attribute start_date
    #   <p>The starting date of the usage data.</p>
    #   @return [String]
    # @!attribute end_date
    #   <p>The ending date of the usage data.</p>
    #   @return [String]
    # @!attribute items
    #   <p>The usage data, as daily logs of used and remaining quotas, over the specified time interval indexed over the API keys in a usage plan. For example, <code>{..., "values" : { "{api_key}" : [ [0, 100], [10, 90], [100, 10]]}</code>, where <code>{api_key}</code> stands for an API key value and the daily log entry is of the format <code>[used quota, remaining quota]</code>.</p>
    #   @return [Hash<String, Array<Array<Integer>>>]
    # @!attribute position
    #   <p>The current pagination position in the paged result set.</p>
    #   @return [String]
    class UpdateUsageOutput < Struct.new(
      :usage_plan_id,
      :start_date,
      :end_date,
      :items,
      :position,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a usage plan used to specify who can assess associated API stages. Optionally, target request rate and quota limits can be set. 
    #         In some cases clients can exceed the targets that you set. Don’t rely on usage plans to control costs. 
    #         Consider using <a href="https://docs.aws.amazon.com/cost-management/latest/userguide/budgets-managing-costs.html">Amazon Web Services Budgets</a> to monitor costs 
    #         and <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF</a> to manage API requests.</p>
    # @!attribute id
    #   <p>The identifier of a UsagePlan resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of a usage plan.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of a usage plan.</p>
    #   @return [String]
    # @!attribute api_stages
    #   <p>The associated API stages of a usage plan.</p>
    #   @return [Array<Types::ApiStage>]
    # @!attribute throttle
    #   <p>A map containing method level throttling information for API stage in a usage plan.</p>
    #   @return [Types::ThrottleSettings]
    # @!attribute quota
    #   <p>The target maximum number of permitted requests per a given unit time interval.</p>
    #   @return [Types::QuotaSettings]
    # @!attribute product_code
    #   <p>The Amazon Web Services Marketplace product identifier to associate with the usage plan as a SaaS product on the Amazon Web Services Marketplace.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    class UpdateUsagePlanOutput < Struct.new(
      :id,
      :name,
      :description,
      :api_stages,
      :throttle,
      :quota,
      :product_code,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The PATCH request to update a usage plan of a given plan Id.</p>
    # @!attribute usage_plan_id
    #   <p>The Id of the to-be-updated usage plan.</p>
    #   @return [String]
    # @!attribute patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #   @return [Array<Types::PatchOperation>]
    class UpdateUsagePlanRequest < Struct.new(
      :usage_plan_id,
      :patch_operations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The PATCH request to grant a temporary extension to the remaining quota of a usage plan associated with a specified API key.</p>
    # @!attribute usage_plan_id
    #   <p>The Id of the usage plan associated with the usage data.</p>
    #   @return [String]
    # @!attribute key_id
    #   <p>The identifier of the API key associated with the usage plan in which a temporary extension is granted to the remaining quota.</p>
    #   @return [String]
    # @!attribute patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #   @return [Array<Types::PatchOperation>]
    class UpdateUsageRequest < Struct.new(
      :usage_plan_id,
      :key_id,
      :patch_operations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An API Gateway VPC link for a RestApi to access resources in an Amazon Virtual Private Cloud (VPC).</p>
    # @!attribute id
    #   <p>The identifier of the  VpcLink. It is used in an Integration to reference this VpcLink.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name used to label and identify the VPC link.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the VPC link.</p>
    #   @return [String]
    # @!attribute target_arns
    #   <p>The ARN of the network load balancer of the VPC targeted by the VPC link. The network load balancer must be owned by the same Amazon Web Services account of the API owner.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The status of the VPC link. The valid values are <code>AVAILABLE</code>, <code>PENDING</code>, <code>DELETING</code>, or <code>FAILED</code>. Deploying an API will wait if the status is <code>PENDING</code> and will fail if the status is <code>DELETING</code>.  </p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A description about the VPC link status.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    class UpdateVpcLinkOutput < Struct.new(
      :id,
      :name,
      :description,
      :target_arns,
      :status,
      :status_message,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Updates an existing VpcLink of a specified identifier.</p>
    # @!attribute vpc_link_id
    #   <p>The identifier of the  VpcLink. It is used in an Integration to reference this VpcLink.</p>
    #   @return [String]
    # @!attribute patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #   @return [Array<Types::PatchOperation>]
    class UpdateVpcLinkRequest < Struct.new(
      :vpc_link_id,
      :patch_operations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a usage plan used to specify who can assess associated API stages. Optionally, target request rate and quota limits can be set. 
    #         In some cases clients can exceed the targets that you set. Don’t rely on usage plans to control costs. 
    #         Consider using <a href="https://docs.aws.amazon.com/cost-management/latest/userguide/budgets-managing-costs.html">Amazon Web Services Budgets</a> to monitor costs 
    #         and <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF</a> to manage API requests.</p>
    # @!attribute id
    #   <p>The identifier of a UsagePlan resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of a usage plan.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of a usage plan.</p>
    #   @return [String]
    # @!attribute api_stages
    #   <p>The associated API stages of a usage plan.</p>
    #   @return [Array<Types::ApiStage>]
    # @!attribute throttle
    #   <p>A map containing method level throttling information for API stage in a usage plan.</p>
    #   @return [Types::ThrottleSettings]
    # @!attribute quota
    #   <p>The target maximum number of permitted requests per a given unit time interval.</p>
    #   @return [Types::QuotaSettings]
    # @!attribute product_code
    #   <p>The Amazon Web Services Marketplace product identifier to associate with the usage plan as a SaaS product on the Amazon Web Services Marketplace.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    class UsagePlan < Struct.new(
      :id,
      :name,
      :description,
      :api_stages,
      :throttle,
      :quota,
      :product_code,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a usage plan key to identify a plan customer.</p>
    # @!attribute id
    #   <p>The Id of a usage plan key.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of a usage plan key. Currently, the valid key type is <code>API_KEY</code>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of a usage plan key.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of a usage plan key.</p>
    #   @return [String]
    class UsagePlanKey < Struct.new(
      :id,
      :type,
      :value,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An API Gateway VPC link for a RestApi to access resources in an Amazon Virtual Private Cloud (VPC).</p>
    # @!attribute id
    #   <p>The identifier of the  VpcLink. It is used in an Integration to reference this VpcLink.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name used to label and identify the VPC link.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the VPC link.</p>
    #   @return [String]
    # @!attribute target_arns
    #   <p>The ARN of the network load balancer of the VPC targeted by the VPC link. The network load balancer must be owned by the same Amazon Web Services account of the API owner.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The status of the VPC link. The valid values are <code>AVAILABLE</code>, <code>PENDING</code>, <code>DELETING</code>, or <code>FAILED</code>. Deploying an API will wait if the status is <code>PENDING</code> and will fail if the status is <code>DELETING</code>.  </p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A description about the VPC link status.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    class VpcLink < Struct.new(
      :id,
      :name,
      :description,
      :target_arns,
      :status,
      :status_message,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
