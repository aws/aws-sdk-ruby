# frozen_string_literal: true

# This is generated code!

module Aws::ApiGatewayV2
  # This module contains the types returned by client operations.
  module Types

    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Settings for logging access in a stage.</p>
    # @!attribute destination_arn
    #   <p>The ARN of the CloudWatch Logs log group to receive access logs.</p>
    #   @return [String]
    # @!attribute format
    #   <p>A single line format of the access logs of data, as specified by selected $context variables. The format must include at least $context.requestId.</p>
    #   @return [String]
    class AccessLogSettings < Struct.new(
      :destination_arn,
      :format,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents an API.</p>
    # @!attribute api_endpoint
    #   <p>The URI of the API, of the form {api-id}.execute-api.{region}.amazonaws.com. The stage name is typically appended to this URI to form a complete path to a deployed API stage.</p>
    #   @return [String]
    # @!attribute api_gateway_managed
    #   <p>Specifies whether an API is managed by API Gateway. You can't update or delete a managed API by using API Gateway. A managed API can be deleted only through the tooling or service that created it.</p>
    #   @return [Boolean]
    # @!attribute api_id
    #   <p>The API ID.</p>
    #   @return [String]
    # @!attribute api_key_selection_expression
    #   <p>An API key selection expression. Supported only for WebSocket APIs. See <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions">API Key Selection Expressions</a>.</p>
    #   @return [String]
    # @!attribute cors_configuration
    #   <p>A CORS configuration. Supported only for HTTP APIs.</p>
    #   @return [Types::Cors]
    # @!attribute created_date
    #   <p>The timestamp when the API was created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the API.</p>
    #   @return [String]
    # @!attribute disable_schema_validation
    #   <p>Avoid validating models when creating a deployment. Supported only for WebSocket APIs.</p>
    #   @return [Boolean]
    # @!attribute disable_execute_api_endpoint
    #   <p>Specifies whether clients can invoke your API by using the default execute-api endpoint. By default, clients can invoke your API with the default https://{api_id}.execute-api.{region}.amazonaws.com endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint.</p>
    #   @return [Boolean]
    # @!attribute import_info
    #   <p>The validation information during API import. This may include particular properties of your OpenAPI definition which are ignored during import. Supported only for HTTP APIs.</p>
    #   @return [Array<String>]
    # @!attribute ip_address_type
    #   <p>The IP address types that can invoke the API.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the API.</p>
    #   @return [String]
    # @!attribute protocol_type
    #   <p>The API protocol.</p>
    #   @return [String]
    # @!attribute route_selection_expression
    #   <p>The route selection expression for the API. For HTTP APIs, the routeSelectionExpression must be ${request.method} ${request.path}. If not provided, this will be the default for HTTP APIs. This property is required for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A collection of tags associated with the API.</p>
    #   @return [Hash<String, String>]
    # @!attribute version
    #   <p>A version identifier for the API.</p>
    #   @return [String]
    # @!attribute warnings
    #   <p>The warning messages reported when failonwarnings is turned on during API import.</p>
    #   @return [Array<String>]
    class Api < Struct.new(
      :api_endpoint,
      :api_gateway_managed,
      :api_id,
      :api_key_selection_expression,
      :cors_configuration,
      :created_date,
      :description,
      :disable_schema_validation,
      :disable_execute_api_endpoint,
      :import_info,
      :ip_address_type,
      :name,
      :protocol_type,
      :route_selection_expression,
      :tags,
      :version,
      :warnings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents an API mapping.</p>
    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute api_mapping_id
    #   <p>The API mapping identifier.</p>
    #   @return [String]
    # @!attribute api_mapping_key
    #   <p>The API mapping key.</p>
    #   @return [String]
    # @!attribute stage
    #   <p>The API stage.</p>
    #   @return [String]
    class ApiMapping < Struct.new(
      :api_id,
      :api_mapping_id,
      :api_mapping_key,
      :stage,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The authorization type. For WebSocket APIs, valid values are NONE for open access, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer. For HTTP APIs, valid values are NONE for open access, JWT for using JSON Web Tokens, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer.</p>
    module AuthorizationType
      NONE = 'NONE'
      AWS_IAM = 'AWS_IAM'
      CUSTOM = 'CUSTOM'
      JWT = 'JWT'
    end

    # <p>Represents an authorizer.</p>
    # @!attribute authorizer_credentials_arn
    #   <p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, don't specify this parameter. Supported only for REQUEST authorizers.</p>
    #   @return [String]
    # @!attribute authorizer_id
    #   <p>The authorizer identifier.</p>
    #   @return [String]
    # @!attribute authorizer_payload_format_version
    #   <p>Specifies the format of the payload sent to an HTTP API Lambda authorizer. Required for HTTP API Lambda authorizers. Supported values are 1.0 and 2.0. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html">Working with AWS Lambda authorizers for HTTP APIs</a>.</p>
    #   @return [String]
    # @!attribute authorizer_result_ttl_in_seconds
    #   <p>The time to live (TTL) for cached authorizer results, in seconds. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway caches authorizer responses. The maximum value is 3600, or 1 hour. Supported only for HTTP API Lambda authorizers.</p>
    #   @return [Integer]
    # @!attribute authorizer_type
    #   <p>The authorizer type. Specify REQUEST for a Lambda function using incoming request parameters. Specify JWT to use JSON Web Tokens (supported only for HTTP APIs).</p>
    #   @return [String]
    # @!attribute authorizer_uri
    #   <p>The authorizer's Uniform Resource Identifier (URI). For REQUEST authorizers, this must be a well-formed Lambda function URI, for example, arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:<replaceable>{account_id}</replaceable>:function:<replaceable>{lambda_function_name}</replaceable>/invocations. In general, the URI has this form: arn:aws:apigateway:<replaceable>{region}</replaceable>:lambda:path/<replaceable>{service_api}</replaceable>
    #                  , where <replaceable></replaceable>{region} is the same as the region hosting the Lambda function, path indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial /. For Lambda functions, this is usually of the form /2015-03-31/functions/[FunctionARN]/invocations. Supported only for REQUEST authorizers.</p>
    #   @return [String]
    # @!attribute enable_simple_responses
    #   <p>Specifies whether a Lambda authorizer returns a response in a simple format. If enabled, the Lambda authorizer can return a boolean value instead of an IAM policy. Supported only for HTTP APIs. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html">Working with AWS Lambda authorizers for HTTP APIs</a></p>
    #   @return [Boolean]
    # @!attribute identity_source
    #   <p>The identity source for which authorization is requested.</p> <p>For a REQUEST authorizer, this is optional. The value is a set of one or more mapping expressions of the specified request parameters. The identity source can be headers, query string parameters, stage variables, and context parameters. For example, if an Auth header and a Name query string parameter are defined as identity sources, this value is route.request.header.Auth, route.request.querystring.Name for WebSocket APIs. For HTTP APIs, use selection expressions prefixed with $, for example, $request.header.Auth, $request.querystring.Name. These parameters are used to perform runtime validation for Lambda-based authorizers by verifying all of the identity-related request parameters are present in the request, not null, and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda function. Otherwise, it returns a 401 Unauthorized response without calling the Lambda function. For HTTP APIs, identity sources are also used as the cache key when caching is enabled. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html">Working with AWS Lambda authorizers for HTTP APIs</a>.</p> <p>For JWT, a single entry that specifies where to extract the JSON Web Token (JWT) from inbound requests. Currently only header-based and query parameter-based selections are supported, for example $request.header.Authorization.</p>
    #   @return [Array<String>]
    # @!attribute identity_validation_expression
    #   <p>The validation expression does not apply to the REQUEST authorizer.</p>
    #   @return [String]
    # @!attribute jwt_configuration
    #   <p>Represents the configuration of a JWT authorizer. Required for the JWT authorizer type. Supported only for HTTP APIs.</p>
    #   @return [Types::JWTConfiguration]
    # @!attribute name
    #   <p>The name of the authorizer.</p>
    #   @return [String]
    class Authorizer < Struct.new(
      :authorizer_credentials_arn,
      :authorizer_id,
      :authorizer_payload_format_version,
      :authorizer_result_ttl_in_seconds,
      :authorizer_type,
      :authorizer_uri,
      :enable_simple_responses,
      :identity_source,
      :identity_validation_expression,
      :jwt_configuration,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The authorizer type. Specify REQUEST for a Lambda function using incoming request parameters. Specify JWT to use JSON Web Tokens (supported only for HTTP APIs).</p>
    module AuthorizerType
      REQUEST = 'REQUEST'
      JWT = 'JWT'
    end

    # <p>The request is not valid, for example, the input is incomplete or incorrect. See the accompanying error message for details.</p>
    # @!attribute message
    #   <p>Describes the error encountered.</p>
    #   @return [String]
    class BadRequestException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The requested operation would cause a conflict with the current state of a service resource associated with the request. Resolve the conflict before retrying this request. See the accompanying error message for details.</p>
    # @!attribute message
    #   <p>Describes the error encountered.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a connection type.</p>
    module ConnectionType
      INTERNET = 'INTERNET'
      VPC_LINK = 'VPC_LINK'
    end

    # <p>Specifies how to handle response payload content type conversions. Supported only for WebSocket APIs.</p>
    module ContentHandlingStrategy
      CONVERT_TO_BINARY = 'CONVERT_TO_BINARY'
      CONVERT_TO_TEXT = 'CONVERT_TO_TEXT'
    end

    # <p>Represents a CORS configuration. Supported only for HTTP APIs. See <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html">Configuring CORS</a> for more information.</p>
    # @!attribute allow_credentials
    #   <p>Specifies whether credentials are included in the CORS request. Supported only for HTTP APIs.</p>
    #   @return [Boolean]
    # @!attribute allow_headers
    #   <p>Represents a collection of allowed headers. Supported only for HTTP APIs.</p>
    #   @return [Array<String>]
    # @!attribute allow_methods
    #   <p>Represents a collection of allowed HTTP methods. Supported only for HTTP APIs.</p>
    #   @return [Array<String>]
    # @!attribute allow_origins
    #   <p>Represents a collection of allowed origins. Supported only for HTTP APIs.</p>
    #   @return [Array<String>]
    # @!attribute expose_headers
    #   <p>Represents a collection of exposed headers. Supported only for HTTP APIs.</p>
    #   @return [Array<String>]
    # @!attribute max_age
    #   <p>The number of seconds that the browser should cache preflight request results. Supported only for HTTP APIs.</p>
    #   @return [Integer]
    class Cors < Struct.new(
      :allow_credentials,
      :allow_headers,
      :allow_methods,
      :allow_origins,
      :expose_headers,
      :max_age,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Creates a new ApiMapping resource to represent an API mapping.</p>
    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute api_mapping_key
    #   The API mapping key.
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain name.</p>
    #   @return [String]
    # @!attribute stage
    #   <p>The API stage.</p>
    #   @return [String]
    class CreateApiMappingRequest < Struct.new(
      :api_id,
      :api_mapping_key,
      :domain_name,
      :stage,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute api_mapping_id
    #   <p>The API mapping identifier.</p>
    #   @return [String]
    # @!attribute api_mapping_key
    #   <p>The API mapping key.</p>
    #   @return [String]
    # @!attribute stage
    #   <p>The API stage.</p>
    #   @return [String]
    class CreateApiMappingResponse < Struct.new(
      :api_id,
      :api_mapping_id,
      :api_mapping_key,
      :stage,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Creates a new Api resource to represent an API.</p>
    # @!attribute api_key_selection_expression
    #   <p>An API key selection expression. Supported only for WebSocket APIs. See <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions">API Key Selection Expressions</a>.</p>
    #   @return [String]
    # @!attribute cors_configuration
    #   <p>A CORS configuration. Supported only for HTTP APIs. See <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html">Configuring CORS</a> for more information.</p>
    #   @return [Types::Cors]
    # @!attribute credentials_arn
    #   <p>This property is part of quick create. It specifies the credentials required for the integration, if any. For a Lambda integration, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null. Currently, this property is not used for HTTP integrations. Supported only for HTTP APIs.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the API.</p>
    #   @return [String]
    # @!attribute disable_schema_validation
    #   <p>Avoid validating models when creating a deployment. Supported only for WebSocket APIs.</p>
    #   @return [Boolean]
    # @!attribute disable_execute_api_endpoint
    #   <p>Specifies whether clients can invoke your API by using the default execute-api endpoint. By default, clients can invoke your API with the default https://{api_id}.execute-api.{region}.amazonaws.com endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint.</p>
    #   @return [Boolean]
    # @!attribute ip_address_type
    #   <p>The IP address types that can invoke the API.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the API.</p>
    #   @return [String]
    # @!attribute protocol_type
    #   <p>The API protocol.</p>
    #   @return [String]
    # @!attribute route_key
    #   <p>This property is part of quick create. If you don't specify a routeKey, a default route of $default is created. The $default route acts as a catch-all for any request made to your API, for a particular stage. The $default route key can't be modified. You can add routes after creating the API, and you can update the route keys of additional routes. Supported only for HTTP APIs.</p>
    #   @return [String]
    # @!attribute route_selection_expression
    #   <p>The route selection expression for the API. For HTTP APIs, the routeSelectionExpression must be ${request.method} ${request.path}. If not provided, this will be the default for HTTP APIs. This property is required for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute target
    #   <p>This property is part of quick create. Quick create produces an API with an integration, a default catch-all route, and a default stage which is configured to automatically deploy changes. For HTTP integrations, specify a fully qualified URL. For Lambda integrations, specify a function ARN. The type of the integration will be HTTP_PROXY or AWS_PROXY, respectively. Supported only for HTTP APIs.</p>
    #   @return [String]
    # @!attribute version
    #   <p>A version identifier for the API.</p>
    #   @return [String]
    class CreateApiRequest < Struct.new(
      :api_key_selection_expression,
      :cors_configuration,
      :credentials_arn,
      :description,
      :disable_schema_validation,
      :disable_execute_api_endpoint,
      :ip_address_type,
      :name,
      :protocol_type,
      :route_key,
      :route_selection_expression,
      :tags,
      :target,
      :version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_endpoint
    #   <p>The URI of the API, of the form {api-id}.execute-api.{region}.amazonaws.com. The stage name is typically appended to this URI to form a complete path to a deployed API stage.</p>
    #   @return [String]
    # @!attribute api_gateway_managed
    #   <p>Specifies whether an API is managed by API Gateway. You can't update or delete a managed API by using API Gateway. A managed API can be deleted only through the tooling or service that created it.</p>
    #   @return [Boolean]
    # @!attribute api_id
    #   <p>The API ID.</p>
    #   @return [String]
    # @!attribute api_key_selection_expression
    #   <p>An API key selection expression. Supported only for WebSocket APIs. See <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions">API Key Selection Expressions</a>.</p>
    #   @return [String]
    # @!attribute cors_configuration
    #   <p>A CORS configuration. Supported only for HTTP APIs.</p>
    #   @return [Types::Cors]
    # @!attribute created_date
    #   <p>The timestamp when the API was created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the API.</p>
    #   @return [String]
    # @!attribute disable_schema_validation
    #   <p>Avoid validating models when creating a deployment. Supported only for WebSocket APIs.</p>
    #   @return [Boolean]
    # @!attribute disable_execute_api_endpoint
    #   <p>Specifies whether clients can invoke your API by using the default execute-api endpoint. By default, clients can invoke your API with the default https://{api_id}.execute-api.{region}.amazonaws.com endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint.</p>
    #   @return [Boolean]
    # @!attribute import_info
    #   <p>The validation information during API import. This may include particular properties of your OpenAPI definition which are ignored during import. Supported only for HTTP APIs.</p>
    #   @return [Array<String>]
    # @!attribute ip_address_type
    #   <p>The IP address types that can invoke the API.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the API.</p>
    #   @return [String]
    # @!attribute protocol_type
    #   <p>The API protocol.</p>
    #   @return [String]
    # @!attribute route_selection_expression
    #   <p>The route selection expression for the API. For HTTP APIs, the routeSelectionExpression must be ${request.method} ${request.path}. If not provided, this will be the default for HTTP APIs. This property is required for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A collection of tags associated with the API.</p>
    #   @return [Hash<String, String>]
    # @!attribute version
    #   <p>A version identifier for the API.</p>
    #   @return [String]
    # @!attribute warnings
    #   <p>The warning messages reported when failonwarnings is turned on during API import.</p>
    #   @return [Array<String>]
    class CreateApiResponse < Struct.new(
      :api_endpoint,
      :api_gateway_managed,
      :api_id,
      :api_key_selection_expression,
      :cors_configuration,
      :created_date,
      :description,
      :disable_schema_validation,
      :disable_execute_api_endpoint,
      :import_info,
      :ip_address_type,
      :name,
      :protocol_type,
      :route_selection_expression,
      :tags,
      :version,
      :warnings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Creates a new Authorizer resource to represent an authorizer.</p>
    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute authorizer_credentials_arn
    #   <p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, don't specify this parameter. Supported only for REQUEST authorizers.</p>
    #   @return [String]
    # @!attribute authorizer_payload_format_version
    #   <p>Specifies the format of the payload sent to an HTTP API Lambda authorizer. Required for HTTP API Lambda authorizers. Supported values are 1.0 and 2.0. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html">Working with AWS Lambda authorizers for HTTP APIs</a>.</p>
    #   @return [String]
    # @!attribute authorizer_result_ttl_in_seconds
    #   <p>The time to live (TTL) for cached authorizer results, in seconds. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway caches authorizer responses. The maximum value is 3600, or 1 hour. Supported only for HTTP API Lambda authorizers.</p>
    #   @return [Integer]
    # @!attribute authorizer_type
    #   <p>The authorizer type. Specify REQUEST for a Lambda function using incoming request parameters. Specify JWT to use JSON Web Tokens (supported only for HTTP APIs).</p>
    #   @return [String]
    # @!attribute authorizer_uri
    #   <p>The authorizer's Uniform Resource Identifier (URI). For REQUEST authorizers, this must be a well-formed Lambda function URI, for example, arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:<replaceable>{account_id}</replaceable>:function:<replaceable>{lambda_function_name}</replaceable>/invocations. In general, the URI has this form: arn:aws:apigateway:<replaceable>{region}</replaceable>:lambda:path/<replaceable>{service_api}</replaceable>
    #                  , where <replaceable></replaceable>{region} is the same as the region hosting the Lambda function, path indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial /. For Lambda functions, this is usually of the form /2015-03-31/functions/[FunctionARN]/invocations. Supported only for REQUEST authorizers.</p>
    #   @return [String]
    # @!attribute enable_simple_responses
    #   <p>Specifies whether a Lambda authorizer returns a response in a simple format. By default, a Lambda authorizer must return an IAM policy. If enabled, the Lambda authorizer can return a boolean value instead of an IAM policy. Supported only for HTTP APIs. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html">Working with AWS Lambda authorizers for HTTP APIs</a></p>
    #   @return [Boolean]
    # @!attribute identity_source
    #   <p>The identity source for which authorization is requested.</p> <p>For a REQUEST authorizer, this is optional. The value is a set of one or more mapping expressions of the specified request parameters. The identity source can be headers, query string parameters, stage variables, and context parameters. For example, if an Auth header and a Name query string parameter are defined as identity sources, this value is route.request.header.Auth, route.request.querystring.Name for WebSocket APIs. For HTTP APIs, use selection expressions prefixed with $, for example, $request.header.Auth, $request.querystring.Name. These parameters are used to perform runtime validation for Lambda-based authorizers by verifying all of the identity-related request parameters are present in the request, not null, and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda function. Otherwise, it returns a 401 Unauthorized response without calling the Lambda function. For HTTP APIs, identity sources are also used as the cache key when caching is enabled. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html">Working with AWS Lambda authorizers for HTTP APIs</a>.</p> <p>For JWT, a single entry that specifies where to extract the JSON Web Token (JWT) from inbound requests. Currently only header-based and query parameter-based selections are supported, for example $request.header.Authorization.</p>
    #   @return [Array<String>]
    # @!attribute identity_validation_expression
    #   <p>This parameter is not used.</p>
    #   @return [String]
    # @!attribute jwt_configuration
    #   <p>Represents the configuration of a JWT authorizer. Required for the JWT authorizer type. Supported only for HTTP APIs.</p>
    #   @return [Types::JWTConfiguration]
    # @!attribute name
    #   <p>The name of the authorizer.</p>
    #   @return [String]
    class CreateAuthorizerRequest < Struct.new(
      :api_id,
      :authorizer_credentials_arn,
      :authorizer_payload_format_version,
      :authorizer_result_ttl_in_seconds,
      :authorizer_type,
      :authorizer_uri,
      :enable_simple_responses,
      :identity_source,
      :identity_validation_expression,
      :jwt_configuration,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute authorizer_credentials_arn
    #   <p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, don't specify this parameter. Supported only for REQUEST authorizers.</p>
    #   @return [String]
    # @!attribute authorizer_id
    #   <p>The authorizer identifier.</p>
    #   @return [String]
    # @!attribute authorizer_payload_format_version
    #   <p>Specifies the format of the payload sent to an HTTP API Lambda authorizer. Required for HTTP API Lambda authorizers. Supported values are 1.0 and 2.0. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html">Working with AWS Lambda authorizers for HTTP APIs</a>.</p>
    #   @return [String]
    # @!attribute authorizer_result_ttl_in_seconds
    #   <p>The time to live (TTL) for cached authorizer results, in seconds. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway caches authorizer responses. The maximum value is 3600, or 1 hour. Supported only for HTTP API Lambda authorizers.</p>
    #   @return [Integer]
    # @!attribute authorizer_type
    #   <p>The authorizer type. Specify REQUEST for a Lambda function using incoming request parameters. Specify JWT to use JSON Web Tokens (supported only for HTTP APIs).</p>
    #   @return [String]
    # @!attribute authorizer_uri
    #   <p>The authorizer's Uniform Resource Identifier (URI). For REQUEST authorizers, this must be a well-formed Lambda function URI, for example, arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:<replaceable>{account_id}</replaceable>:function:<replaceable>{lambda_function_name}</replaceable>/invocations. In general, the URI has this form: arn:aws:apigateway:<replaceable>{region}</replaceable>:lambda:path/<replaceable>{service_api}</replaceable>
    #                  , where <replaceable></replaceable>{region} is the same as the region hosting the Lambda function, path indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial /. For Lambda functions, this is usually of the form /2015-03-31/functions/[FunctionARN]/invocations. Supported only for REQUEST authorizers.</p>
    #   @return [String]
    # @!attribute enable_simple_responses
    #   <p>Specifies whether a Lambda authorizer returns a response in a simple format. If enabled, the Lambda authorizer can return a boolean value instead of an IAM policy. Supported only for HTTP APIs. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html">Working with AWS Lambda authorizers for HTTP APIs</a></p>
    #   @return [Boolean]
    # @!attribute identity_source
    #   <p>The identity source for which authorization is requested.</p> <p>For a REQUEST authorizer, this is optional. The value is a set of one or more mapping expressions of the specified request parameters. The identity source can be headers, query string parameters, stage variables, and context parameters. For example, if an Auth header and a Name query string parameter are defined as identity sources, this value is route.request.header.Auth, route.request.querystring.Name for WebSocket APIs. For HTTP APIs, use selection expressions prefixed with $, for example, $request.header.Auth, $request.querystring.Name. These parameters are used to perform runtime validation for Lambda-based authorizers by verifying all of the identity-related request parameters are present in the request, not null, and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda function. Otherwise, it returns a 401 Unauthorized response without calling the Lambda function. For HTTP APIs, identity sources are also used as the cache key when caching is enabled. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html">Working with AWS Lambda authorizers for HTTP APIs</a>.</p> <p>For JWT, a single entry that specifies where to extract the JSON Web Token (JWT) from inbound requests. Currently only header-based and query parameter-based selections are supported, for example $request.header.Authorization.</p>
    #   @return [Array<String>]
    # @!attribute identity_validation_expression
    #   <p>The validation expression does not apply to the REQUEST authorizer.</p>
    #   @return [String]
    # @!attribute jwt_configuration
    #   <p>Represents the configuration of a JWT authorizer. Required for the JWT authorizer type. Supported only for HTTP APIs.</p>
    #   @return [Types::JWTConfiguration]
    # @!attribute name
    #   <p>The name of the authorizer.</p>
    #   @return [String]
    class CreateAuthorizerResponse < Struct.new(
      :authorizer_credentials_arn,
      :authorizer_id,
      :authorizer_payload_format_version,
      :authorizer_result_ttl_in_seconds,
      :authorizer_type,
      :authorizer_uri,
      :enable_simple_responses,
      :identity_source,
      :identity_validation_expression,
      :jwt_configuration,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Creates a new Deployment resource to represent a deployment.</p>
    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the deployment resource.</p>
    #   @return [String]
    # @!attribute stage_name
    #   <p>The name of the Stage resource for the Deployment resource to create.</p>
    #   @return [String]
    class CreateDeploymentRequest < Struct.new(
      :api_id,
      :description,
      :stage_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute auto_deployed
    #   <p>Specifies whether a deployment was automatically released.</p>
    #   @return [Boolean]
    # @!attribute created_date
    #   <p>The date and time when the Deployment resource was created.</p>
    #   @return [Time]
    # @!attribute deployment_id
    #   <p>The identifier for the deployment.</p>
    #   @return [String]
    # @!attribute deployment_status
    #   <p>The status of the deployment: PENDING, FAILED, or SUCCEEDED.</p>
    #   @return [String]
    # @!attribute deployment_status_message
    #   <p>May contain additional feedback on the status of an API deployment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the deployment.</p>
    #   @return [String]
    class CreateDeploymentResponse < Struct.new(
      :auto_deployed,
      :created_date,
      :deployment_id,
      :deployment_status,
      :deployment_status_message,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Creates a new DomainName resource to represent a domain name.</p>
    # @!attribute domain_name
    #   <p>The domain name.</p>
    #   @return [String]
    # @!attribute domain_name_configurations
    #   <p>The domain name configurations.</p>
    #   @return [Array<Types::DomainNameConfiguration>]
    # @!attribute mutual_tls_authentication
    #   <p>The mutual TLS authentication configuration for a custom domain name.</p>
    #   @return [Types::MutualTlsAuthenticationInput]
    # @!attribute routing_mode
    #   <p>The routing mode.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The collection of tags associated with a domain name.</p>
    #   @return [Hash<String, String>]
    class CreateDomainNameRequest < Struct.new(
      :domain_name,
      :domain_name_configurations,
      :mutual_tls_authentication,
      :routing_mode,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_mapping_selection_expression
    #   <p>The API mapping selection expression.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The name of the DomainName resource.</p>
    #   @return [String]
    # @!attribute domain_name_arn
    #   <p>Represents an Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute domain_name_configurations
    #   <p>The domain name configurations.</p>
    #   @return [Array<Types::DomainNameConfiguration>]
    # @!attribute mutual_tls_authentication
    #   <p>The mutual TLS authentication configuration for a custom domain name.</p>
    #   @return [Types::MutualTlsAuthentication]
    # @!attribute routing_mode
    #   <p>The routing mode.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The collection of tags associated with a domain name.</p>
    #   @return [Hash<String, String>]
    class CreateDomainNameResponse < Struct.new(
      :api_mapping_selection_expression,
      :domain_name,
      :domain_name_arn,
      :domain_name_configurations,
      :mutual_tls_authentication,
      :routing_mode,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Creates a new Integration resource to represent an integration.</p>
    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The ID of the VPC link for a private integration. Supported only for HTTP APIs.</p>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The type of the network connection to the integration endpoint. Specify INTERNET for connections through the public routable internet or VPC_LINK for private connections between API Gateway and resources in a VPC. The default value is INTERNET.</p>
    #   @return [String]
    # @!attribute content_handling_strategy
    #   <p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>
    #   @return [String]
    # @!attribute credentials_arn
    #   <p>Specifies the credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the integration.</p>
    #   @return [String]
    # @!attribute integration_method
    #   <p>Specifies the integration's HTTP method type.</p>
    #   @return [String]
    # @!attribute integration_subtype
    #   <p>Supported only for HTTP API AWS_PROXY integrations. Specifies the AWS service action to invoke. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html">Integration subtype reference</a>.</p>
    #   @return [String]
    # @!attribute integration_type
    #   <p>The integration type of an integration. One of the following:</p> <p>AWS: for integrating the route or method request with an AWS service action, including the Lambda function-invoking action. With the Lambda function-invoking action, this is referred to as the Lambda custom integration. With any other AWS service action, this is known as AWS integration. Supported only for WebSocket APIs.</p> <p>AWS_PROXY: for integrating the route or method request with a Lambda function or other AWS service action. This integration is also referred to as a Lambda proxy integration.</p> <p>HTTP: for integrating the route or method request with an HTTP endpoint. This integration is also referred to as the HTTP custom integration. Supported only for WebSocket APIs.</p> <p>HTTP_PROXY: for integrating the route or method request with an HTTP endpoint, with the client request passed through as-is. This is also referred to as HTTP proxy integration. For HTTP API private integrations, use an HTTP_PROXY integration.</p> <p>MOCK: for integrating the route or method request with API Gateway as a "loopback" endpoint without invoking any backend. Supported only for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute integration_uri
    #   <p>For a Lambda integration, specify the URI of a Lambda function.</p> <p>For an HTTP integration, specify a fully-qualified URL.</p> <p>For an HTTP API private integration, specify the ARN of an Application Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map service. If you specify the ARN of an AWS Cloud Map service, API Gateway uses DiscoverInstances to identify resources. You can use query parameters to target specific resources. To learn more, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html">DiscoverInstances</a>. For private integrations, all resources must be owned by the same AWS account.</p>
    #   @return [String]
    # @!attribute passthrough_behavior
    #   <p>Specifies the pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the requestTemplates property on the Integration resource. There are three valid values: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, and NEVER. Supported only for WebSocket APIs.</p> <p>WHEN_NO_MATCH passes the request body for unmapped content types through to the integration backend without transformation.</p> <p>NEVER rejects unmapped content types with an HTTP 415 Unsupported Media Type response.</p> <p>WHEN_NO_TEMPLATES allows pass-through when the integration has no content types mapped to templates. However, if there is at least one content type defined, unmapped content types will be rejected with the same HTTP 415 Unsupported Media Type response.</p>
    #   @return [String]
    # @!attribute payload_format_version
    #   <p>Specifies the format of the payload sent to an integration. Required for HTTP APIs. Supported values for Lambda proxy integrations are 1.0 and 2.0. For all other integrations, 1.0 is the only supported value. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-lambda.html">Working with AWS Lambda proxy integrations for HTTP APIs</a>.</p>
    #   @return [String]
    # @!attribute request_parameters
    #   <p>For WebSocket APIs, a key-value map specifying request parameters that are passed from the method request to the backend. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the backend. The method request parameter value must match the pattern of method.request.<replaceable>{location}</replaceable>.<replaceable>{name}</replaceable>
    #                  , where 
    #                     <replaceable>{location}</replaceable>
    #                   is querystring, path, or header; and 
    #                     <replaceable>{name}</replaceable>
    #                   must be a valid and unique method request parameter name.</p> <p>For HTTP API integrations with a specified integrationSubtype, request parameters are a key-value map specifying parameters that are passed to AWS_PROXY integrations. You can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services.html">Working with AWS service integrations for HTTP APIs</a>.</p> <p>For HTTP API integrations without a specified integrationSubtype request parameters are a key-value map specifying how to transform HTTP requests before sending them to the backend. The key should follow the pattern &lt;action&gt;:&lt;header|querystring|path&gt;.&lt;location&gt; where action can be append, overwrite or remove. For values, you can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html">Transforming API requests and responses</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute request_templates
    #   <p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value. Supported only for WebSocket APIs.</p>
    #   @return [Hash<String, String>]
    # @!attribute response_parameters
    #   <p>Supported only for HTTP APIs. You use response parameters to transform the HTTP response from a backend integration before returning the response to clients. Specify a key-value map from a selection key to response parameters. The selection key must be a valid HTTP status code within the range of 200-599. Response parameters are a key-value map. The key must match pattern &lt;action&gt;:&lt;header&gt;.&lt;location&gt; or overwrite.statuscode. The action can be append, overwrite or remove. The value can be a static value, or map to response data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html">Transforming API requests and responses</a>.</p>
    #   @return [Hash<String, Hash<String, String>>]
    # @!attribute template_selection_expression
    #   <p>The template selection expression for the integration.</p>
    #   @return [String]
    # @!attribute timeout_in_millis
    #   <p>Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and between 50 and 30,000 milliseconds for HTTP APIs. The default timeout is 29 seconds for WebSocket APIs and 30 seconds for HTTP APIs.</p>
    #   @return [Integer]
    # @!attribute tls_config
    #   <p>The TLS configuration for a private integration. If you specify a TLS configuration, private integration traffic uses the HTTPS protocol. Supported only for HTTP APIs.</p>
    #   @return [Types::TlsConfigInput]
    class CreateIntegrationRequest < Struct.new(
      :api_id,
      :connection_id,
      :connection_type,
      :content_handling_strategy,
      :credentials_arn,
      :description,
      :integration_method,
      :integration_subtype,
      :integration_type,
      :integration_uri,
      :passthrough_behavior,
      :payload_format_version,
      :request_parameters,
      :request_templates,
      :response_parameters,
      :template_selection_expression,
      :timeout_in_millis,
      :tls_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Creates a new IntegrationResponse resource to represent an integration response.</p>
    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute content_handling_strategy
    #   <p>Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>
    #   @return [String]
    # @!attribute integration_id
    #   <p>The integration ID.</p>
    #   @return [String]
    # @!attribute integration_response_key
    #   <p>The integration response key.</p>
    #   @return [String]
    # @!attribute response_parameters
    #   <p>A key-value map specifying response parameters that are passed to the method response from the backend. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of method.response.header.{name}, where {name} is a valid and unique header name. The mapped non-static value must match the pattern of integration.response.header.{name} or integration.response.body.{JSON-expression}, where {name} is a valid and unique response header name and {JSON-expression} is a valid JSON expression without the $ prefix.</p>
    #   @return [Hash<String, String>]
    # @!attribute response_templates
    #   <p>The collection of response templates for the integration response as a string-to-string map of key-value pairs. Response templates are represented as a key/value map, with a content-type as the key and a template as the value.</p>
    #   @return [Hash<String, String>]
    # @!attribute template_selection_expression
    #   <p>The template selection expression for the integration response. Supported only for WebSocket APIs.</p>
    #   @return [String]
    class CreateIntegrationResponseRequest < Struct.new(
      :api_id,
      :content_handling_strategy,
      :integration_id,
      :integration_response_key,
      :response_parameters,
      :response_templates,
      :template_selection_expression,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute content_handling_strategy
    #   <p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>
    #   @return [String]
    # @!attribute integration_response_id
    #   <p>The integration response ID.</p>
    #   @return [String]
    # @!attribute integration_response_key
    #   <p>The integration response key.</p>
    #   @return [String]
    # @!attribute response_parameters
    #   <p>A key-value map specifying response parameters that are passed to the method response from the backend. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of method.response.header.{name}, where name is a valid and unique header name. The mapped non-static value must match the pattern of integration.response.header.{name} or integration.response.body.{JSON-expression}, where name is a valid and unique response header name and JSON-expression is a valid JSON expression without the $ prefix.</p>
    #   @return [Hash<String, String>]
    # @!attribute response_templates
    #   <p>The collection of response templates for the integration response as a string-to-string map of key-value pairs. Response templates are represented as a key/value map, with a content-type as the key and a template as the value.</p>
    #   @return [Hash<String, String>]
    # @!attribute template_selection_expression
    #   <p>The template selection expressions for the integration response.</p>
    #   @return [String]
    class CreateIntegrationResponseResponse < Struct.new(
      :content_handling_strategy,
      :integration_response_id,
      :integration_response_key,
      :response_parameters,
      :response_templates,
      :template_selection_expression,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_gateway_managed
    #   <p>Specifies whether an integration is managed by API Gateway. If you created an API using using quick create, the resulting integration is managed by API Gateway. You can update a managed integration, but you can't delete it.</p>
    #   @return [Boolean]
    # @!attribute connection_id
    #   <p>The ID of the VPC link for a private integration. Supported only for HTTP APIs.</p>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The type of the network connection to the integration endpoint. Specify INTERNET for connections through the public routable internet or VPC_LINK for private connections between API Gateway and resources in a VPC. The default value is INTERNET.</p>
    #   @return [String]
    # @!attribute content_handling_strategy
    #   <p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>
    #   @return [String]
    # @!attribute credentials_arn
    #   <p>Specifies the credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Represents the description of an integration.</p>
    #   @return [String]
    # @!attribute integration_id
    #   <p>Represents the identifier of an integration.</p>
    #   @return [String]
    # @!attribute integration_method
    #   <p>Specifies the integration's HTTP method type.</p>
    #   @return [String]
    # @!attribute integration_response_selection_expression
    #   <p>The integration response selection expression for the integration. Supported only for WebSocket APIs. See <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-integration-response-selection-expressions">Integration Response Selection Expressions</a>.</p>
    #   @return [String]
    # @!attribute integration_subtype
    #   <p>Supported only for HTTP API AWS_PROXY integrations. Specifies the AWS service action to invoke. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html">Integration subtype reference</a>.</p>
    #   @return [String]
    # @!attribute integration_type
    #   <p>The integration type of an integration. One of the following:</p> <p>AWS: for integrating the route or method request with an AWS service action, including the Lambda function-invoking action. With the Lambda function-invoking action, this is referred to as the Lambda custom integration. With any other AWS service action, this is known as AWS integration. Supported only for WebSocket APIs.</p> <p>AWS_PROXY: for integrating the route or method request with a Lambda function or other AWS service action. This integration is also referred to as a Lambda proxy integration.</p> <p>HTTP: for integrating the route or method request with an HTTP endpoint. This integration is also referred to as the HTTP custom integration. Supported only for WebSocket APIs.</p> <p>HTTP_PROXY: for integrating the route or method request with an HTTP endpoint, with the client request passed through as-is. This is also referred to as HTTP proxy integration.</p> <p>MOCK: for integrating the route or method request with API Gateway as a "loopback" endpoint without invoking any backend. Supported only for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute integration_uri
    #   <p>For a Lambda integration, specify the URI of a Lambda function.</p> <p>For an HTTP integration, specify a fully-qualified URL.</p> <p>For an HTTP API private integration, specify the ARN of an Application Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map service. If you specify the ARN of an AWS Cloud Map service, API Gateway uses DiscoverInstances to identify resources. You can use query parameters to target specific resources. To learn more, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html">DiscoverInstances</a>. For private integrations, all resources must be owned by the same AWS account.</p>
    #   @return [String]
    # @!attribute passthrough_behavior
    #   <p>Specifies the pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the requestTemplates property on the Integration resource. There are three valid values: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, and NEVER. Supported only for WebSocket APIs.</p> <p>WHEN_NO_MATCH passes the request body for unmapped content types through to the integration backend without transformation.</p> <p>NEVER rejects unmapped content types with an HTTP 415 Unsupported Media Type response.</p> <p>WHEN_NO_TEMPLATES allows pass-through when the integration has no content types mapped to templates. However, if there is at least one content type defined, unmapped content types will be rejected with the same HTTP 415 Unsupported Media Type response.</p>
    #   @return [String]
    # @!attribute payload_format_version
    #   <p>Specifies the format of the payload sent to an integration. Required for HTTP APIs. Supported values for Lambda proxy integrations are 1.0 and 2.0. For all other integrations, 1.0 is the only supported value. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-lambda.html">Working with AWS Lambda proxy integrations for HTTP APIs</a>.</p>
    #   @return [String]
    # @!attribute request_parameters
    #   <p>For WebSocket APIs, a key-value map specifying request parameters that are passed from the method request to the backend. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the backend. The method request parameter value must match the pattern of method.request.<replaceable>{location}</replaceable>.<replaceable>{name}</replaceable>
    #             , where 
    #               <replaceable>{location}</replaceable>
    #              is querystring, path, or header; and 
    #               <replaceable>{name}</replaceable>
    #              must be a valid and unique method request parameter name.</p> <p>For HTTP API integrations with a specified integrationSubtype, request parameters are a key-value map specifying parameters that are passed to AWS_PROXY integrations. You can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services.html">Working with AWS service integrations for HTTP APIs</a>.</p> <p>For HTTP API integrations, without a specified integrationSubtype request parameters are a key-value map specifying how to transform HTTP requests before sending them to backend integrations. The key should follow the pattern &lt;action&gt;:&lt;header|querystring|path&gt;.&lt;location&gt;. The action can be append, overwrite or remove. For values, you can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html">Transforming API requests and responses</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute request_templates
    #   <p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value. Supported only for WebSocket APIs.</p>
    #   @return [Hash<String, String>]
    # @!attribute response_parameters
    #   <p>Supported only for HTTP APIs. You use response parameters to transform the HTTP response from a backend integration before returning the response to clients. Specify a key-value map from a selection key to response parameters. The selection key must be a valid HTTP status code within the range of 200-599. Response parameters are a key-value map. The key must match pattern &lt;action&gt;:&lt;header&gt;.&lt;location&gt; or overwrite.statuscode. The action can be append, overwrite or remove. The value can be a static value, or map to response data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html">Transforming API requests and responses</a>.</p>
    #   @return [Hash<String, Hash<String, String>>]
    # @!attribute template_selection_expression
    #   <p>The template selection expression for the integration. Supported only for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute timeout_in_millis
    #   <p>Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and between 50 and 30,000 milliseconds for HTTP APIs. The default timeout is 29 seconds for WebSocket APIs and 30 seconds for HTTP APIs.</p>
    #   @return [Integer]
    # @!attribute tls_config
    #   <p>The TLS configuration for a private integration. If you specify a TLS configuration, private integration traffic uses the HTTPS protocol. Supported only for HTTP APIs.</p>
    #   @return [Types::TlsConfig]
    class CreateIntegrationResult < Struct.new(
      :api_gateway_managed,
      :connection_id,
      :connection_type,
      :content_handling_strategy,
      :credentials_arn,
      :description,
      :integration_id,
      :integration_method,
      :integration_response_selection_expression,
      :integration_subtype,
      :integration_type,
      :integration_uri,
      :passthrough_behavior,
      :payload_format_version,
      :request_parameters,
      :request_templates,
      :response_parameters,
      :template_selection_expression,
      :timeout_in_millis,
      :tls_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Creates a new Model.</p>
    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The content-type for the model, for example, "application/json".</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the model.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the model. Must be alphanumeric.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>The schema for the model. For application/json models, this should be JSON schema draft 4 model.</p>
    #   @return [String]
    class CreateModelRequest < Struct.new(
      :api_id,
      :content_type,
      :description,
      :name,
      :schema,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute content_type
    #   <p>The content-type for the model, for example, "application/json".</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the model.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The model identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the model. Must be alphanumeric.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>The schema for the model. For application/json models, this should be JSON schema draft 4 model.</p>
    #   @return [String]
    class CreateModelResponse < Struct.new(
      :content_type,
      :description,
      :model_id,
      :name,
      :schema,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Creates a new Route resource to represent a route.</p>
    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute api_key_required
    #   <p>Specifies whether an API key is required for the route. Supported only for WebSocket APIs.</p>
    #   @return [Boolean]
    # @!attribute authorization_scopes
    #   <p>The authorization scopes supported by this route.</p>
    #   @return [Array<String>]
    # @!attribute authorization_type
    #   <p>The authorization type for the route. For WebSocket APIs, valid values are NONE for open access, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer For HTTP APIs, valid values are NONE for open access, JWT for using JSON Web Tokens, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer.</p>
    #   @return [String]
    # @!attribute authorizer_id
    #   <p>The identifier of the Authorizer resource to be associated with this route. The authorizer identifier is generated by API Gateway when you created the authorizer.</p>
    #   @return [String]
    # @!attribute model_selection_expression
    #   <p>The model selection expression for the route. Supported only for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute operation_name
    #   <p>The operation name for the route.</p>
    #   @return [String]
    # @!attribute request_models
    #   <p>The request models for the route. Supported only for WebSocket APIs.</p>
    #   @return [Hash<String, String>]
    # @!attribute request_parameters
    #   <p>The request parameters for the route. Supported only for WebSocket APIs.</p>
    #   @return [Hash<String, Types::ParameterConstraints>]
    # @!attribute route_key
    #   <p>The route key for the route.</p>
    #   @return [String]
    # @!attribute route_response_selection_expression
    #   <p>The route response selection expression for the route. Supported only for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The target for the route.</p>
    #   @return [String]
    class CreateRouteRequest < Struct.new(
      :api_id,
      :api_key_required,
      :authorization_scopes,
      :authorization_type,
      :authorizer_id,
      :model_selection_expression,
      :operation_name,
      :request_models,
      :request_parameters,
      :route_key,
      :route_response_selection_expression,
      :target,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Creates a new RouteResponse resource to represent a route response.</p>
    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute model_selection_expression
    #   <p>The model selection expression for the route response. Supported only for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute response_models
    #   <p>The response models for the route response.</p>
    #   @return [Hash<String, String>]
    # @!attribute response_parameters
    #   <p>The route response parameters.</p>
    #   @return [Hash<String, Types::ParameterConstraints>]
    # @!attribute route_id
    #   <p>The route ID.</p>
    #   @return [String]
    # @!attribute route_response_key
    #   <p>The route response key.</p>
    #   @return [String]
    class CreateRouteResponseRequest < Struct.new(
      :api_id,
      :model_selection_expression,
      :response_models,
      :response_parameters,
      :route_id,
      :route_response_key,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_selection_expression
    #   <p>Represents the model selection expression of a route response. Supported only for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute response_models
    #   <p>Represents the response models of a route response.</p>
    #   @return [Hash<String, String>]
    # @!attribute response_parameters
    #   <p>Represents the response parameters of a route response.</p>
    #   @return [Hash<String, Types::ParameterConstraints>]
    # @!attribute route_response_id
    #   <p>Represents the identifier of a route response.</p>
    #   @return [String]
    # @!attribute route_response_key
    #   <p>Represents the route response key of a route response.</p>
    #   @return [String]
    class CreateRouteResponseResponse < Struct.new(
      :model_selection_expression,
      :response_models,
      :response_parameters,
      :route_response_id,
      :route_response_key,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_gateway_managed
    #   <p>Specifies whether a route is managed by API Gateway. If you created an API using quick create, the $default route is managed by API Gateway. You can't modify the $default route key.</p>
    #   @return [Boolean]
    # @!attribute api_key_required
    #   <p>Specifies whether an API key is required for this route. Supported only for WebSocket APIs.</p>
    #   @return [Boolean]
    # @!attribute authorization_scopes
    #   <p>A list of authorization scopes configured on a route. The scopes are used with a JWT authorizer to authorize the method invocation. The authorization works by matching the route scopes against the scopes parsed from the access token in the incoming request. The method invocation is authorized if any route scope matches a claimed scope in the access token. Otherwise, the invocation is not authorized. When the route scope is configured, the client must provide an access token instead of an identity token for authorization purposes.</p>
    #   @return [Array<String>]
    # @!attribute authorization_type
    #   <p>The authorization type for the route. For WebSocket APIs, valid values are NONE for open access, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer For HTTP APIs, valid values are NONE for open access, JWT for using JSON Web Tokens, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer.</p>
    #   @return [String]
    # @!attribute authorizer_id
    #   <p>The identifier of the Authorizer resource to be associated with this route. The authorizer identifier is generated by API Gateway when you created the authorizer.</p>
    #   @return [String]
    # @!attribute model_selection_expression
    #   <p>The model selection expression for the route. Supported only for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute operation_name
    #   <p>The operation name for the route.</p>
    #   @return [String]
    # @!attribute request_models
    #   <p>The request models for the route. Supported only for WebSocket APIs.</p>
    #   @return [Hash<String, String>]
    # @!attribute request_parameters
    #   <p>The request parameters for the route. Supported only for WebSocket APIs.</p>
    #   @return [Hash<String, Types::ParameterConstraints>]
    # @!attribute route_id
    #   <p>The route ID.</p>
    #   @return [String]
    # @!attribute route_key
    #   <p>The route key for the route.</p>
    #   @return [String]
    # @!attribute route_response_selection_expression
    #   <p>The route response selection expression for the route. Supported only for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The target for the route.</p>
    #   @return [String]
    class CreateRouteResult < Struct.new(
      :api_gateway_managed,
      :api_key_required,
      :authorization_scopes,
      :authorization_type,
      :authorizer_id,
      :model_selection_expression,
      :operation_name,
      :request_models,
      :request_parameters,
      :route_id,
      :route_key,
      :route_response_selection_expression,
      :target,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute actions
    #   <p>Represents a routing rule action. The only supported action is invokeApi.</p>
    #   @return [Array<Types::RoutingRuleAction>]
    # @!attribute conditions
    #   <p>Represents a condition. Conditions can contain up to two matchHeaders conditions and one matchBasePaths conditions. API Gateway evaluates header conditions and base path conditions together. You can only use AND between header and base path conditions.</p>
    #   @return [Array<Types::RoutingRuleCondition>]
    # @!attribute domain_name
    #   <p>The domain name.</p>
    #   @return [String]
    # @!attribute domain_name_id
    #   <p>The domain name ID.</p>
    #   @return [String]
    # @!attribute priority
    #   Represents the priority of the routing rule.
    #   @return [Integer]
    class CreateRoutingRuleRequest < Struct.new(
      :actions,
      :conditions,
      :domain_name,
      :domain_name_id,
      :priority,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute actions
    #   <p>Represents a routing rule action. The only supported action is invokeApi.</p>
    #   @return [Array<Types::RoutingRuleAction>]
    # @!attribute conditions
    #   <p>Represents a condition. Conditions can contain up to two matchHeaders conditions and one matchBasePaths conditions. API Gateway evaluates header conditions and base path conditions together. You can only use AND between header and base path conditions.</p>
    #   @return [Array<Types::RoutingRuleCondition>]
    # @!attribute priority
    #   <p>Represents the priority of the routing rule.<p>
    #   @return [Integer]
    # @!attribute routing_rule_arn
    #   <p>The ARN of the domain name.<p>
    #   @return [String]
    # @!attribute routing_rule_id
    #   <p>The routing rule ID.</p>
    #   @return [String]
    class CreateRoutingRuleResponse < Struct.new(
      :actions,
      :conditions,
      :priority,
      :routing_rule_arn,
      :routing_rule_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Creates a new Stage resource to represent a stage.</p>
    # @!attribute access_log_settings
    #   <p>Settings for logging access in this stage.</p>
    #   @return [Types::AccessLogSettings]
    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute auto_deploy
    #   <p>Specifies whether updates to an API automatically trigger a new deployment. The default value is false.</p>
    #   @return [Boolean]
    # @!attribute client_certificate_id
    #   <p>The identifier of a client certificate for a Stage. Supported only for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute default_route_settings
    #   <p>The default route settings for the stage.</p>
    #   @return [Types::RouteSettings]
    # @!attribute deployment_id
    #   <p>The deployment identifier of the API stage.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the API stage.</p>
    #   @return [String]
    # @!attribute route_settings
    #   <p>Route settings for the stage, by routeKey.</p>
    #   @return [Hash<String, Types::RouteSettings>]
    # @!attribute stage_name
    #   <p>The name of the stage.</p>
    #   @return [String]
    # @!attribute stage_variables
    #   <p>A map that defines the stage variables for a Stage. Variable names can have alphanumeric and underscore characters, and the values must match [A-Za-z0-9-._~:/?#&amp;=,]+.</p>
    #   @return [Hash<String, String>]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    class CreateStageRequest < Struct.new(
      :access_log_settings,
      :api_id,
      :auto_deploy,
      :client_certificate_id,
      :default_route_settings,
      :deployment_id,
      :description,
      :route_settings,
      :stage_name,
      :stage_variables,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute access_log_settings
    #   <p>Settings for logging access in this stage.</p>
    #   @return [Types::AccessLogSettings]
    # @!attribute api_gateway_managed
    #   <p>Specifies whether a stage is managed by API Gateway. If you created an API using quick create, the $default stage is managed by API Gateway. You can't modify the $default stage.</p>
    #   @return [Boolean]
    # @!attribute auto_deploy
    #   <p>Specifies whether updates to an API automatically trigger a new deployment. The default value is false.</p>
    #   @return [Boolean]
    # @!attribute client_certificate_id
    #   <p>The identifier of a client certificate for a Stage. Supported only for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The timestamp when the stage was created.</p>
    #   @return [Time]
    # @!attribute default_route_settings
    #   <p>Default route settings for the stage.</p>
    #   @return [Types::RouteSettings]
    # @!attribute deployment_id
    #   <p>The identifier of the Deployment that the Stage is associated with. Can't be updated if autoDeploy is enabled.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the stage.</p>
    #   @return [String]
    # @!attribute last_deployment_status_message
    #   <p>Describes the status of the last deployment of a stage. Supported only for stages with autoDeploy enabled.</p>
    #   @return [String]
    # @!attribute last_updated_date
    #   <p>The timestamp when the stage was last updated.</p>
    #   @return [Time]
    # @!attribute route_settings
    #   <p>Route settings for the stage, by routeKey.</p>
    #   @return [Hash<String, Types::RouteSettings>]
    # @!attribute stage_name
    #   <p>The name of the stage.</p>
    #   @return [String]
    # @!attribute stage_variables
    #   <p>A map that defines the stage variables for a stage resource. Variable names can have alphanumeric and underscore characters, and the values must match [A-Za-z0-9-._~:/?#&amp;=,]+.</p>
    #   @return [Hash<String, String>]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    class CreateStageResponse < Struct.new(
      :access_log_settings,
      :api_gateway_managed,
      :auto_deploy,
      :client_certificate_id,
      :created_date,
      :default_route_settings,
      :deployment_id,
      :description,
      :last_deployment_status_message,
      :last_updated_date,
      :route_settings,
      :stage_name,
      :stage_variables,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Creates a VPC link</p>
    # @!attribute name
    #   <p>The name of the VPC link.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>A list of security group IDs for the VPC link.</p>
    #   @return [Array<String>]
    # @!attribute subnet_ids
    #   <p>A list of subnet IDs to include in the VPC link.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>A list of tags.</p>
    #   @return [Hash<String, String>]
    class CreateVpcLinkRequest < Struct.new(
      :name,
      :security_group_ids,
      :subnet_ids,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute created_date
    #   <p>The timestamp when the VPC link was created.</p>
    #   @return [Time]
    # @!attribute name
    #   <p>The name of the VPC link.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>A list of security group IDs for the VPC link.</p>
    #   @return [Array<String>]
    # @!attribute subnet_ids
    #   <p>A list of subnet IDs to include in the VPC link.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>Tags for the VPC link.</p>
    #   @return [Hash<String, String>]
    # @!attribute vpc_link_id
    #   <p>The ID of the VPC link.</p>
    #   @return [String]
    # @!attribute vpc_link_status
    #   <p>The status of the VPC link.</p>
    #   @return [String]
    # @!attribute vpc_link_status_message
    #   <p>A message summarizing the cause of the status of the VPC link.</p>
    #   @return [String]
    # @!attribute vpc_link_version
    #   <p>The version of the VPC link.</p>
    #   @return [String]
    class CreateVpcLinkResponse < Struct.new(
      :created_date,
      :name,
      :security_group_ids,
      :subnet_ids,
      :tags,
      :vpc_link_id,
      :vpc_link_status,
      :vpc_link_status_message,
      :vpc_link_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute stage_name
    #   <p>The stage name. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.</p>
    #   @return [String]
    class DeleteAccessLogSettingsRequest < Struct.new(
      :api_id,
      :stage_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_mapping_id
    #   <p>The API mapping identifier.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain name.</p>
    #   @return [String]
    class DeleteApiMappingRequest < Struct.new(
      :api_mapping_id,
      :domain_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    class DeleteApiRequest < Struct.new(
      :api_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute authorizer_id
    #   <p>The authorizer identifier.</p>
    #   @return [String]
    class DeleteAuthorizerRequest < Struct.new(
      :api_id,
      :authorizer_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    class DeleteCorsConfigurationRequest < Struct.new(
      :api_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute deployment_id
    #   <p>The deployment ID.</p>
    #   @return [String]
    class DeleteDeploymentRequest < Struct.new(
      :api_id,
      :deployment_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The domain name.</p>
    #   @return [String]
    class DeleteDomainNameRequest < Struct.new(
      :domain_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute integration_id
    #   <p>The integration ID.</p>
    #   @return [String]
    class DeleteIntegrationRequest < Struct.new(
      :api_id,
      :integration_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute integration_id
    #   <p>The integration ID.</p>
    #   @return [String]
    # @!attribute integration_response_id
    #   <p>The integration response ID.</p>
    #   @return [String]
    class DeleteIntegrationResponseRequest < Struct.new(
      :api_id,
      :integration_id,
      :integration_response_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The model ID.</p>
    #   @return [String]
    class DeleteModelRequest < Struct.new(
      :api_id,
      :model_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute route_id
    #   <p>The route ID.</p>
    #   @return [String]
    class DeleteRouteRequest < Struct.new(
      :api_id,
      :route_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute request_parameter_key
    #   <p>The route request parameter key.</p>
    #   @return [String]
    # @!attribute route_id
    #   <p>The route ID.</p>
    #   @return [String]
    class DeleteRouteRequestParameterRequest < Struct.new(
      :api_id,
      :request_parameter_key,
      :route_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute route_id
    #   <p>The route ID.</p>
    #   @return [String]
    # @!attribute route_response_id
    #   <p>The route response ID.</p>
    #   @return [String]
    class DeleteRouteResponseRequest < Struct.new(
      :api_id,
      :route_id,
      :route_response_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute route_key
    #   <p>The route key.</p>
    #   @return [String]
    # @!attribute stage_name
    #   <p>The stage name. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.</p>
    #   @return [String]
    class DeleteRouteSettingsRequest < Struct.new(
      :api_id,
      :route_key,
      :stage_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The domain name.</p>
    #   @return [String]
    # @!attribute domain_name_id
    #   <p>The domain name ID.</p>
    #   @return [String]
    # @!attribute routing_rule_id
    #   <p>The routing rule ID.</p>
    #   @return [String]
    class DeleteRoutingRuleRequest < Struct.new(
      :domain_name,
      :domain_name_id,
      :routing_rule_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute stage_name
    #   <p>The stage name. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.</p>
    #   @return [String]
    class DeleteStageRequest < Struct.new(
      :api_id,
      :stage_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute vpc_link_id
    #   <p>The ID of the VPC link.</p>
    #   @return [String]
    class DeleteVpcLinkRequest < Struct.new(
      :vpc_link_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteVpcLinkResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An immutable representation of an API that can be called by users. A Deployment must be associated with a Stage for it to be callable over the internet.</p>
    # @!attribute auto_deployed
    #   <p>Specifies whether a deployment was automatically released.</p>
    #   @return [Boolean]
    # @!attribute created_date
    #   <p>The date and time when the Deployment resource was created.</p>
    #   @return [Time]
    # @!attribute deployment_id
    #   <p>The identifier for the deployment.</p>
    #   @return [String]
    # @!attribute deployment_status
    #   <p>The status of the deployment: PENDING, FAILED, or SUCCEEDED.</p>
    #   @return [String]
    # @!attribute deployment_status_message
    #   <p>May contain additional feedback on the status of an API deployment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the deployment.</p>
    #   @return [String]
    class Deployment < Struct.new(
      :auto_deployed,
      :created_date,
      :deployment_id,
      :deployment_status,
      :deployment_status_message,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a deployment status.</p>
    module DeploymentStatus
      PENDING = 'PENDING'
      FAILED = 'FAILED'
      DEPLOYED = 'DEPLOYED'
    end

    # <p>Represents a domain name.</p>
    # @!attribute api_mapping_selection_expression
    #   <p>The API mapping selection expression.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The name of the DomainName resource.</p>
    #   @return [String]
    # @!attribute domain_name_arn
    #   <p>Represents an Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute domain_name_configurations
    #   <p>The domain name configurations.</p>
    #   @return [Array<Types::DomainNameConfiguration>]
    # @!attribute mutual_tls_authentication
    #   <p>The mutual TLS authentication configuration for a custom domain name.</p>
    #   @return [Types::MutualTlsAuthentication]
    # @!attribute routing_mode
    #   <p>The routing mode.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The collection of tags associated with a domain name.</p>
    #   @return [Hash<String, String>]
    class DomainName < Struct.new(
      :api_mapping_selection_expression,
      :domain_name,
      :domain_name_arn,
      :domain_name_configurations,
      :mutual_tls_authentication,
      :routing_mode,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The domain name configuration.</p>
    # @!attribute api_gateway_domain_name
    #   <p>A domain name for the API.</p>
    #   @return [String]
    # @!attribute certificate_arn
    #   <p>An AWS-managed certificate that will be used by the edge-optimized endpoint for this domain name. AWS Certificate Manager is the only supported source.</p>
    #   @return [String]
    # @!attribute certificate_name
    #   <p>The user-friendly name of the certificate that will be used by the edge-optimized endpoint for this domain name.</p>
    #   @return [String]
    # @!attribute certificate_upload_date
    #   <p>The timestamp when the certificate that was used by edge-optimized endpoint for this domain name was uploaded.</p>
    #   @return [Time]
    # @!attribute domain_name_status
    #   <p>The status of the domain name migration. The valid values are AVAILABLE, UPDATING, PENDING_CERTIFICATE_REIMPORT, and PENDING_OWNERSHIP_VERIFICATION. If the status is UPDATING, the domain cannot be modified further until the existing operation is complete. If it is AVAILABLE, the domain can be updated.</p>
    #   @return [String]
    # @!attribute domain_name_status_message
    #   <p>An optional text message containing detailed information about status of the domain name migration.</p>
    #   @return [String]
    # @!attribute endpoint_type
    #   <p>The endpoint type.</p>
    #   @return [String]
    # @!attribute hosted_zone_id
    #   <p>The Amazon Route 53 Hosted Zone ID of the endpoint.</p>
    #   @return [String]
    # @!attribute ip_address_type
    #   <p>The IP address types that can invoke the domain name. Use ipv4 to allow only IPv4 addresses to invoke your domain name, or use dualstack to allow both IPv4 and IPv6 addresses to invoke your domain name.</p>
    #   @return [String]
    # @!attribute security_policy
    #   <p>The Transport Layer Security (TLS) version of the security policy for this domain name. The valid values are TLS_1_0 and TLS_1_2.</p>
    #   @return [String]
    # @!attribute ownership_verification_certificate_arn
    #   <p>The ARN of the public certificate issued by ACM to validate ownership of your custom domain. Only required when configuring mutual TLS and using an ACM imported or private CA certificate ARN as the regionalCertificateArn</p>
    #   @return [String]
    class DomainNameConfiguration < Struct.new(
      :api_gateway_domain_name,
      :certificate_arn,
      :certificate_name,
      :certificate_upload_date,
      :domain_name_status,
      :domain_name_status_message,
      :endpoint_type,
      :hosted_zone_id,
      :ip_address_type,
      :security_policy,
      :ownership_verification_certificate_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The status of the domain name migration. The valid values are AVAILABLE, UPDATING, PENDING_CERTIFICATE_REIMPORT, and PENDING_OWNERSHIP_VERIFICATION. If the status is UPDATING, the domain cannot be modified further until the existing operation is complete. If it is AVAILABLE, the domain can be updated.</p>
    module DomainNameStatus
      AVAILABLE = 'AVAILABLE'
      UPDATING = 'UPDATING'
      PENDING_CERTIFICATE_REIMPORT = 'PENDING_CERTIFICATE_REIMPORT'
      PENDING_OWNERSHIP_VERIFICATION = 'PENDING_OWNERSHIP_VERIFICATION'
    end

    # <p>Represents an endpoint type.</p>
    module EndpointType
      REGIONAL = 'REGIONAL'
      EDGE = 'EDGE'
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute export_version
    #   <p>The version of the API Gateway export algorithm. API Gateway uses the latest version by default. Currently, the only supported version is 1.0.</p>
    #   @return [String]
    # @!attribute include_extensions
    #   <p>Specifies whether to include <a href="https://docs.aws.amazon.com//apigateway/latest/developerguide/api-gateway-swagger-extensions.html">API Gateway extensions</a> in the exported API definition. API Gateway extensions are included by default.</p>
    #   @return [Boolean]
    # @!attribute output_type
    #   <p>The output type of the exported definition file. Valid values are JSON and YAML.</p>
    #   @return [String]
    # @!attribute specification
    #   <p>The version of the API specification to use. OAS30, for OpenAPI 3.0, is the only supported value.</p>
    #   @return [String]
    # @!attribute stage_name
    #   <p>The name of the API stage to export. If you don't specify this property, a representation of the latest API configuration is exported.</p>
    #   @return [String]
    class ExportApiRequest < Struct.new(
      :api_id,
      :export_version,
      :include_extensions,
      :output_type,
      :specification,
      :stage_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute body
    #   <p>Represents an exported definition of an API in a particular output format, for example, YAML. The API is serialized to the requested specification, for example, OpenAPI 3.0.</p>
    #   @return [String]
    class ExportApiResponse < Struct.new(
      :body,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_mapping_id
    #   <p>The API mapping identifier.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain name.</p>
    #   @return [String]
    class GetApiMappingRequest < Struct.new(
      :api_mapping_id,
      :domain_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute api_mapping_id
    #   <p>The API mapping identifier.</p>
    #   @return [String]
    # @!attribute api_mapping_key
    #   <p>The API mapping key.</p>
    #   @return [String]
    # @!attribute stage
    #   <p>The API stage.</p>
    #   @return [String]
    class GetApiMappingResponse < Struct.new(
      :api_id,
      :api_mapping_id,
      :api_mapping_key,
      :stage,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The domain name.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #   @return [String]
    class GetApiMappingsRequest < Struct.new(
      :domain_name,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The elements from this collection.</p>
    #   @return [Array<Types::ApiMapping>]
    # @!attribute next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #   @return [String]
    class GetApiMappingsResponse < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    class GetApiRequest < Struct.new(
      :api_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_endpoint
    #   <p>The URI of the API, of the form {api-id}.execute-api.{region}.amazonaws.com. The stage name is typically appended to this URI to form a complete path to a deployed API stage.</p>
    #   @return [String]
    # @!attribute api_gateway_managed
    #   <p>Specifies whether an API is managed by API Gateway. You can't update or delete a managed API by using API Gateway. A managed API can be deleted only through the tooling or service that created it.</p>
    #   @return [Boolean]
    # @!attribute api_id
    #   <p>The API ID.</p>
    #   @return [String]
    # @!attribute api_key_selection_expression
    #   <p>An API key selection expression. Supported only for WebSocket APIs. See <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions">API Key Selection Expressions</a>.</p>
    #   @return [String]
    # @!attribute cors_configuration
    #   <p>A CORS configuration. Supported only for HTTP APIs.</p>
    #   @return [Types::Cors]
    # @!attribute created_date
    #   <p>The timestamp when the API was created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the API.</p>
    #   @return [String]
    # @!attribute disable_schema_validation
    #   <p>Avoid validating models when creating a deployment. Supported only for WebSocket APIs.</p>
    #   @return [Boolean]
    # @!attribute disable_execute_api_endpoint
    #   <p>Specifies whether clients can invoke your API by using the default execute-api endpoint. By default, clients can invoke your API with the default https://{api_id}.execute-api.{region}.amazonaws.com endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint.</p>
    #   @return [Boolean]
    # @!attribute import_info
    #   <p>The validation information during API import. This may include particular properties of your OpenAPI definition which are ignored during import. Supported only for HTTP APIs.</p>
    #   @return [Array<String>]
    # @!attribute ip_address_type
    #   <p>The IP address types that can invoke the API.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the API.</p>
    #   @return [String]
    # @!attribute protocol_type
    #   <p>The API protocol.</p>
    #   @return [String]
    # @!attribute route_selection_expression
    #   <p>The route selection expression for the API. For HTTP APIs, the routeSelectionExpression must be ${request.method} ${request.path}. If not provided, this will be the default for HTTP APIs. This property is required for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A collection of tags associated with the API.</p>
    #   @return [Hash<String, String>]
    # @!attribute version
    #   <p>A version identifier for the API.</p>
    #   @return [String]
    # @!attribute warnings
    #   <p>The warning messages reported when failonwarnings is turned on during API import.</p>
    #   @return [Array<String>]
    class GetApiResponse < Struct.new(
      :api_endpoint,
      :api_gateway_managed,
      :api_id,
      :api_key_selection_expression,
      :cors_configuration,
      :created_date,
      :description,
      :disable_schema_validation,
      :disable_execute_api_endpoint,
      :import_info,
      :ip_address_type,
      :name,
      :protocol_type,
      :route_selection_expression,
      :tags,
      :version,
      :warnings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #   @return [String]
    class GetApisRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The elements from this collection.</p>
    #   @return [Array<Types::Api>]
    # @!attribute next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #   @return [String]
    class GetApisResponse < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute authorizer_id
    #   <p>The authorizer identifier.</p>
    #   @return [String]
    class GetAuthorizerRequest < Struct.new(
      :api_id,
      :authorizer_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute authorizer_credentials_arn
    #   <p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, don't specify this parameter. Supported only for REQUEST authorizers.</p>
    #   @return [String]
    # @!attribute authorizer_id
    #   <p>The authorizer identifier.</p>
    #   @return [String]
    # @!attribute authorizer_payload_format_version
    #   <p>Specifies the format of the payload sent to an HTTP API Lambda authorizer. Required for HTTP API Lambda authorizers. Supported values are 1.0 and 2.0. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html">Working with AWS Lambda authorizers for HTTP APIs</a>.</p>
    #   @return [String]
    # @!attribute authorizer_result_ttl_in_seconds
    #   <p>The time to live (TTL) for cached authorizer results, in seconds. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway caches authorizer responses. The maximum value is 3600, or 1 hour. Supported only for HTTP API Lambda authorizers.</p>
    #   @return [Integer]
    # @!attribute authorizer_type
    #   <p>The authorizer type. Specify REQUEST for a Lambda function using incoming request parameters. Specify JWT to use JSON Web Tokens (supported only for HTTP APIs).</p>
    #   @return [String]
    # @!attribute authorizer_uri
    #   <p>The authorizer's Uniform Resource Identifier (URI). For REQUEST authorizers, this must be a well-formed Lambda function URI, for example, arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:<replaceable>{account_id}</replaceable>:function:<replaceable>{lambda_function_name}</replaceable>/invocations. In general, the URI has this form: arn:aws:apigateway:<replaceable>{region}</replaceable>:lambda:path/<replaceable>{service_api}</replaceable>
    #                  , where <replaceable></replaceable>{region} is the same as the region hosting the Lambda function, path indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial /. For Lambda functions, this is usually of the form /2015-03-31/functions/[FunctionARN]/invocations. Supported only for REQUEST authorizers.</p>
    #   @return [String]
    # @!attribute enable_simple_responses
    #   <p>Specifies whether a Lambda authorizer returns a response in a simple format. If enabled, the Lambda authorizer can return a boolean value instead of an IAM policy. Supported only for HTTP APIs. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html">Working with AWS Lambda authorizers for HTTP APIs</a></p>
    #   @return [Boolean]
    # @!attribute identity_source
    #   <p>The identity source for which authorization is requested.</p> <p>For a REQUEST authorizer, this is optional. The value is a set of one or more mapping expressions of the specified request parameters. The identity source can be headers, query string parameters, stage variables, and context parameters. For example, if an Auth header and a Name query string parameter are defined as identity sources, this value is route.request.header.Auth, route.request.querystring.Name for WebSocket APIs. For HTTP APIs, use selection expressions prefixed with $, for example, $request.header.Auth, $request.querystring.Name. These parameters are used to perform runtime validation for Lambda-based authorizers by verifying all of the identity-related request parameters are present in the request, not null, and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda function. Otherwise, it returns a 401 Unauthorized response without calling the Lambda function. For HTTP APIs, identity sources are also used as the cache key when caching is enabled. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html">Working with AWS Lambda authorizers for HTTP APIs</a>.</p> <p>For JWT, a single entry that specifies where to extract the JSON Web Token (JWT) from inbound requests. Currently only header-based and query parameter-based selections are supported, for example $request.header.Authorization.</p>
    #   @return [Array<String>]
    # @!attribute identity_validation_expression
    #   <p>The validation expression does not apply to the REQUEST authorizer.</p>
    #   @return [String]
    # @!attribute jwt_configuration
    #   <p>Represents the configuration of a JWT authorizer. Required for the JWT authorizer type. Supported only for HTTP APIs.</p>
    #   @return [Types::JWTConfiguration]
    # @!attribute name
    #   <p>The name of the authorizer.</p>
    #   @return [String]
    class GetAuthorizerResponse < Struct.new(
      :authorizer_credentials_arn,
      :authorizer_id,
      :authorizer_payload_format_version,
      :authorizer_result_ttl_in_seconds,
      :authorizer_type,
      :authorizer_uri,
      :enable_simple_responses,
      :identity_source,
      :identity_validation_expression,
      :jwt_configuration,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #   @return [String]
    class GetAuthorizersRequest < Struct.new(
      :api_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The elements from this collection.</p>
    #   @return [Array<Types::Authorizer>]
    # @!attribute next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #   @return [String]
    class GetAuthorizersResponse < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute deployment_id
    #   <p>The deployment ID.</p>
    #   @return [String]
    class GetDeploymentRequest < Struct.new(
      :api_id,
      :deployment_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute auto_deployed
    #   <p>Specifies whether a deployment was automatically released.</p>
    #   @return [Boolean]
    # @!attribute created_date
    #   <p>The date and time when the Deployment resource was created.</p>
    #   @return [Time]
    # @!attribute deployment_id
    #   <p>The identifier for the deployment.</p>
    #   @return [String]
    # @!attribute deployment_status
    #   <p>The status of the deployment: PENDING, FAILED, or SUCCEEDED.</p>
    #   @return [String]
    # @!attribute deployment_status_message
    #   <p>May contain additional feedback on the status of an API deployment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the deployment.</p>
    #   @return [String]
    class GetDeploymentResponse < Struct.new(
      :auto_deployed,
      :created_date,
      :deployment_id,
      :deployment_status,
      :deployment_status_message,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #   @return [String]
    class GetDeploymentsRequest < Struct.new(
      :api_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The elements from this collection.</p>
    #   @return [Array<Types::Deployment>]
    # @!attribute next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #   @return [String]
    class GetDeploymentsResponse < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The domain name.</p>
    #   @return [String]
    class GetDomainNameRequest < Struct.new(
      :domain_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_mapping_selection_expression
    #   <p>The API mapping selection expression.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The name of the DomainName resource.</p>
    #   @return [String]
    # @!attribute domain_name_arn
    #   <p>Represents an Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute domain_name_configurations
    #   <p>The domain name configurations.</p>
    #   @return [Array<Types::DomainNameConfiguration>]
    # @!attribute mutual_tls_authentication
    #   <p>The mutual TLS authentication configuration for a custom domain name.</p>
    #   @return [Types::MutualTlsAuthentication]
    # @!attribute routing_mode
    #   <p>The routing mode.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The collection of tags associated with a domain name.</p>
    #   @return [Hash<String, String>]
    class GetDomainNameResponse < Struct.new(
      :api_mapping_selection_expression,
      :domain_name,
      :domain_name_arn,
      :domain_name_configurations,
      :mutual_tls_authentication,
      :routing_mode,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #   @return [String]
    class GetDomainNamesRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The elements from this collection.</p>
    #   @return [Array<Types::DomainName>]
    # @!attribute next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #   @return [String]
    class GetDomainNamesResponse < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute integration_id
    #   <p>The integration ID.</p>
    #   @return [String]
    class GetIntegrationRequest < Struct.new(
      :api_id,
      :integration_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute integration_id
    #   <p>The integration ID.</p>
    #   @return [String]
    # @!attribute integration_response_id
    #   <p>The integration response ID.</p>
    #   @return [String]
    class GetIntegrationResponseRequest < Struct.new(
      :api_id,
      :integration_id,
      :integration_response_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute content_handling_strategy
    #   <p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>
    #   @return [String]
    # @!attribute integration_response_id
    #   <p>The integration response ID.</p>
    #   @return [String]
    # @!attribute integration_response_key
    #   <p>The integration response key.</p>
    #   @return [String]
    # @!attribute response_parameters
    #   <p>A key-value map specifying response parameters that are passed to the method response from the backend. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of method.response.header.{name}, where name is a valid and unique header name. The mapped non-static value must match the pattern of integration.response.header.{name} or integration.response.body.{JSON-expression}, where name is a valid and unique response header name and JSON-expression is a valid JSON expression without the $ prefix.</p>
    #   @return [Hash<String, String>]
    # @!attribute response_templates
    #   <p>The collection of response templates for the integration response as a string-to-string map of key-value pairs. Response templates are represented as a key/value map, with a content-type as the key and a template as the value.</p>
    #   @return [Hash<String, String>]
    # @!attribute template_selection_expression
    #   <p>The template selection expressions for the integration response.</p>
    #   @return [String]
    class GetIntegrationResponseResponse < Struct.new(
      :content_handling_strategy,
      :integration_response_id,
      :integration_response_key,
      :response_parameters,
      :response_templates,
      :template_selection_expression,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute integration_id
    #   <p>The integration ID.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #   @return [String]
    class GetIntegrationResponsesRequest < Struct.new(
      :api_id,
      :integration_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The elements from this collection.</p>
    #   @return [Array<Types::IntegrationResponse>]
    # @!attribute next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #   @return [String]
    class GetIntegrationResponsesResponse < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_gateway_managed
    #   <p>Specifies whether an integration is managed by API Gateway. If you created an API using using quick create, the resulting integration is managed by API Gateway. You can update a managed integration, but you can't delete it.</p>
    #   @return [Boolean]
    # @!attribute connection_id
    #   <p>The ID of the VPC link for a private integration. Supported only for HTTP APIs.</p>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The type of the network connection to the integration endpoint. Specify INTERNET for connections through the public routable internet or VPC_LINK for private connections between API Gateway and resources in a VPC. The default value is INTERNET.</p>
    #   @return [String]
    # @!attribute content_handling_strategy
    #   <p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>
    #   @return [String]
    # @!attribute credentials_arn
    #   <p>Specifies the credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Represents the description of an integration.</p>
    #   @return [String]
    # @!attribute integration_id
    #   <p>Represents the identifier of an integration.</p>
    #   @return [String]
    # @!attribute integration_method
    #   <p>Specifies the integration's HTTP method type.</p>
    #   @return [String]
    # @!attribute integration_response_selection_expression
    #   <p>The integration response selection expression for the integration. Supported only for WebSocket APIs. See <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-integration-response-selection-expressions">Integration Response Selection Expressions</a>.</p>
    #   @return [String]
    # @!attribute integration_subtype
    #   <p>Supported only for HTTP API AWS_PROXY integrations. Specifies the AWS service action to invoke. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html">Integration subtype reference</a>.</p>
    #   @return [String]
    # @!attribute integration_type
    #   <p>The integration type of an integration. One of the following:</p> <p>AWS: for integrating the route or method request with an AWS service action, including the Lambda function-invoking action. With the Lambda function-invoking action, this is referred to as the Lambda custom integration. With any other AWS service action, this is known as AWS integration. Supported only for WebSocket APIs.</p> <p>AWS_PROXY: for integrating the route or method request with a Lambda function or other AWS service action. This integration is also referred to as a Lambda proxy integration.</p> <p>HTTP: for integrating the route or method request with an HTTP endpoint. This integration is also referred to as the HTTP custom integration. Supported only for WebSocket APIs.</p> <p>HTTP_PROXY: for integrating the route or method request with an HTTP endpoint, with the client request passed through as-is. This is also referred to as HTTP proxy integration.</p> <p>MOCK: for integrating the route or method request with API Gateway as a "loopback" endpoint without invoking any backend. Supported only for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute integration_uri
    #   <p>For a Lambda integration, specify the URI of a Lambda function.</p> <p>For an HTTP integration, specify a fully-qualified URL.</p> <p>For an HTTP API private integration, specify the ARN of an Application Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map service. If you specify the ARN of an AWS Cloud Map service, API Gateway uses DiscoverInstances to identify resources. You can use query parameters to target specific resources. To learn more, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html">DiscoverInstances</a>. For private integrations, all resources must be owned by the same AWS account.</p>
    #   @return [String]
    # @!attribute passthrough_behavior
    #   <p>Specifies the pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the requestTemplates property on the Integration resource. There are three valid values: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, and NEVER. Supported only for WebSocket APIs.</p> <p>WHEN_NO_MATCH passes the request body for unmapped content types through to the integration backend without transformation.</p> <p>NEVER rejects unmapped content types with an HTTP 415 Unsupported Media Type response.</p> <p>WHEN_NO_TEMPLATES allows pass-through when the integration has no content types mapped to templates. However, if there is at least one content type defined, unmapped content types will be rejected with the same HTTP 415 Unsupported Media Type response.</p>
    #   @return [String]
    # @!attribute payload_format_version
    #   <p>Specifies the format of the payload sent to an integration. Required for HTTP APIs. Supported values for Lambda proxy integrations are 1.0 and 2.0. For all other integrations, 1.0 is the only supported value. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-lambda.html">Working with AWS Lambda proxy integrations for HTTP APIs</a>.</p>
    #   @return [String]
    # @!attribute request_parameters
    #   <p>For WebSocket APIs, a key-value map specifying request parameters that are passed from the method request to the backend. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the backend. The method request parameter value must match the pattern of method.request.<replaceable>{location}</replaceable>.<replaceable>{name}</replaceable>
    #             , where 
    #               <replaceable>{location}</replaceable>
    #              is querystring, path, or header; and 
    #               <replaceable>{name}</replaceable>
    #              must be a valid and unique method request parameter name.</p> <p>For HTTP API integrations with a specified integrationSubtype, request parameters are a key-value map specifying parameters that are passed to AWS_PROXY integrations. You can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services.html">Working with AWS service integrations for HTTP APIs</a>.</p> <p>For HTTP API integrations, without a specified integrationSubtype request parameters are a key-value map specifying how to transform HTTP requests before sending them to backend integrations. The key should follow the pattern &lt;action&gt;:&lt;header|querystring|path&gt;.&lt;location&gt;. The action can be append, overwrite or remove. For values, you can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html">Transforming API requests and responses</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute request_templates
    #   <p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value. Supported only for WebSocket APIs.</p>
    #   @return [Hash<String, String>]
    # @!attribute response_parameters
    #   <p>Supported only for HTTP APIs. You use response parameters to transform the HTTP response from a backend integration before returning the response to clients. Specify a key-value map from a selection key to response parameters. The selection key must be a valid HTTP status code within the range of 200-599. Response parameters are a key-value map. The key must match pattern &lt;action&gt;:&lt;header&gt;.&lt;location&gt; or overwrite.statuscode. The action can be append, overwrite or remove. The value can be a static value, or map to response data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html">Transforming API requests and responses</a>.</p>
    #   @return [Hash<String, Hash<String, String>>]
    # @!attribute template_selection_expression
    #   <p>The template selection expression for the integration. Supported only for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute timeout_in_millis
    #   <p>Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and between 50 and 30,000 milliseconds for HTTP APIs. The default timeout is 29 seconds for WebSocket APIs and 30 seconds for HTTP APIs.</p>
    #   @return [Integer]
    # @!attribute tls_config
    #   <p>The TLS configuration for a private integration. If you specify a TLS configuration, private integration traffic uses the HTTPS protocol. Supported only for HTTP APIs.</p>
    #   @return [Types::TlsConfig]
    class GetIntegrationResult < Struct.new(
      :api_gateway_managed,
      :connection_id,
      :connection_type,
      :content_handling_strategy,
      :credentials_arn,
      :description,
      :integration_id,
      :integration_method,
      :integration_response_selection_expression,
      :integration_subtype,
      :integration_type,
      :integration_uri,
      :passthrough_behavior,
      :payload_format_version,
      :request_parameters,
      :request_templates,
      :response_parameters,
      :template_selection_expression,
      :timeout_in_millis,
      :tls_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #   @return [String]
    class GetIntegrationsRequest < Struct.new(
      :api_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The elements from this collection.</p>
    #   @return [Array<Types::Integration>]
    # @!attribute next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #   @return [String]
    class GetIntegrationsResponse < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The model ID.</p>
    #   @return [String]
    class GetModelRequest < Struct.new(
      :api_id,
      :model_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute content_type
    #   <p>The content-type for the model, for example, "application/json".</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the model.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The model identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the model. Must be alphanumeric.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>The schema for the model. For application/json models, this should be JSON schema draft 4 model.</p>
    #   @return [String]
    class GetModelResponse < Struct.new(
      :content_type,
      :description,
      :model_id,
      :name,
      :schema,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The model ID.</p>
    #   @return [String]
    class GetModelTemplateRequest < Struct.new(
      :api_id,
      :model_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute value
    #   <p>The template value.</p>
    #   @return [String]
    class GetModelTemplateResponse < Struct.new(
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #   @return [String]
    class GetModelsRequest < Struct.new(
      :api_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The elements from this collection.</p>
    #   @return [Array<Types::Model>]
    # @!attribute next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #   @return [String]
    class GetModelsResponse < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute route_id
    #   <p>The route ID.</p>
    #   @return [String]
    class GetRouteRequest < Struct.new(
      :api_id,
      :route_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute route_id
    #   <p>The route ID.</p>
    #   @return [String]
    # @!attribute route_response_id
    #   <p>The route response ID.</p>
    #   @return [String]
    class GetRouteResponseRequest < Struct.new(
      :api_id,
      :route_id,
      :route_response_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_selection_expression
    #   <p>Represents the model selection expression of a route response. Supported only for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute response_models
    #   <p>Represents the response models of a route response.</p>
    #   @return [Hash<String, String>]
    # @!attribute response_parameters
    #   <p>Represents the response parameters of a route response.</p>
    #   @return [Hash<String, Types::ParameterConstraints>]
    # @!attribute route_response_id
    #   <p>Represents the identifier of a route response.</p>
    #   @return [String]
    # @!attribute route_response_key
    #   <p>Represents the route response key of a route response.</p>
    #   @return [String]
    class GetRouteResponseResponse < Struct.new(
      :model_selection_expression,
      :response_models,
      :response_parameters,
      :route_response_id,
      :route_response_key,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #   @return [String]
    # @!attribute route_id
    #   <p>The route ID.</p>
    #   @return [String]
    class GetRouteResponsesRequest < Struct.new(
      :api_id,
      :max_results,
      :next_token,
      :route_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The elements from this collection.</p>
    #   @return [Array<Types::RouteResponse>]
    # @!attribute next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #   @return [String]
    class GetRouteResponsesResponse < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_gateway_managed
    #   <p>Specifies whether a route is managed by API Gateway. If you created an API using quick create, the $default route is managed by API Gateway. You can't modify the $default route key.</p>
    #   @return [Boolean]
    # @!attribute api_key_required
    #   <p>Specifies whether an API key is required for this route. Supported only for WebSocket APIs.</p>
    #   @return [Boolean]
    # @!attribute authorization_scopes
    #   <p>A list of authorization scopes configured on a route. The scopes are used with a JWT authorizer to authorize the method invocation. The authorization works by matching the route scopes against the scopes parsed from the access token in the incoming request. The method invocation is authorized if any route scope matches a claimed scope in the access token. Otherwise, the invocation is not authorized. When the route scope is configured, the client must provide an access token instead of an identity token for authorization purposes.</p>
    #   @return [Array<String>]
    # @!attribute authorization_type
    #   <p>The authorization type for the route. For WebSocket APIs, valid values are NONE for open access, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer For HTTP APIs, valid values are NONE for open access, JWT for using JSON Web Tokens, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer.</p>
    #   @return [String]
    # @!attribute authorizer_id
    #   <p>The identifier of the Authorizer resource to be associated with this route. The authorizer identifier is generated by API Gateway when you created the authorizer.</p>
    #   @return [String]
    # @!attribute model_selection_expression
    #   <p>The model selection expression for the route. Supported only for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute operation_name
    #   <p>The operation name for the route.</p>
    #   @return [String]
    # @!attribute request_models
    #   <p>The request models for the route. Supported only for WebSocket APIs.</p>
    #   @return [Hash<String, String>]
    # @!attribute request_parameters
    #   <p>The request parameters for the route. Supported only for WebSocket APIs.</p>
    #   @return [Hash<String, Types::ParameterConstraints>]
    # @!attribute route_id
    #   <p>The route ID.</p>
    #   @return [String]
    # @!attribute route_key
    #   <p>The route key for the route.</p>
    #   @return [String]
    # @!attribute route_response_selection_expression
    #   <p>The route response selection expression for the route. Supported only for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The target for the route.</p>
    #   @return [String]
    class GetRouteResult < Struct.new(
      :api_gateway_managed,
      :api_key_required,
      :authorization_scopes,
      :authorization_type,
      :authorizer_id,
      :model_selection_expression,
      :operation_name,
      :request_models,
      :request_parameters,
      :route_id,
      :route_key,
      :route_response_selection_expression,
      :target,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #   @return [String]
    class GetRoutesRequest < Struct.new(
      :api_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The elements from this collection.</p>
    #   @return [Array<Types::Route>]
    # @!attribute next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #   @return [String]
    class GetRoutesResponse < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The domain name.</p>
    #   @return [String]
    # @!attribute domain_name_id
    #   <p>The domain name ID.</p>
    #   @return [String]
    # @!attribute routing_rule_id
    #   <p>The routing rule ID.</p>
    #   @return [String]
    class GetRoutingRuleRequest < Struct.new(
      :domain_name,
      :domain_name_id,
      :routing_rule_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute actions
    #   <p>The resulting action based on matching a routing rules condition. Only InvokeApi is supported.</p>
    #   @return [Array<Types::RoutingRuleAction>]
    # @!attribute conditions
    #   <p>The conditions of the routing rule.</p>
    #   @return [Array<Types::RoutingRuleCondition>]
    # @!attribute priority
    #   <p>The order in which API Gateway evaluates a rule. Priority is evaluated from the lowest value to the highest value.</p>
    #   @return [Integer]
    # @!attribute routing_rule_arn
    #   <p>The routing rule ARN.</p>
    #   @return [String]
    # @!attribute routing_rule_id
    #   <p>The routing rule ID.</p>
    #   @return [String]
    class GetRoutingRuleResponse < Struct.new(
      :actions,
      :conditions,
      :priority,
      :routing_rule_arn,
      :routing_rule_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute stage_name
    #   <p>The stage name. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.</p>
    #   @return [String]
    class GetStageRequest < Struct.new(
      :api_id,
      :stage_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute access_log_settings
    #   <p>Settings for logging access in this stage.</p>
    #   @return [Types::AccessLogSettings]
    # @!attribute api_gateway_managed
    #   <p>Specifies whether a stage is managed by API Gateway. If you created an API using quick create, the $default stage is managed by API Gateway. You can't modify the $default stage.</p>
    #   @return [Boolean]
    # @!attribute auto_deploy
    #   <p>Specifies whether updates to an API automatically trigger a new deployment. The default value is false.</p>
    #   @return [Boolean]
    # @!attribute client_certificate_id
    #   <p>The identifier of a client certificate for a Stage. Supported only for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The timestamp when the stage was created.</p>
    #   @return [Time]
    # @!attribute default_route_settings
    #   <p>Default route settings for the stage.</p>
    #   @return [Types::RouteSettings]
    # @!attribute deployment_id
    #   <p>The identifier of the Deployment that the Stage is associated with. Can't be updated if autoDeploy is enabled.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the stage.</p>
    #   @return [String]
    # @!attribute last_deployment_status_message
    #   <p>Describes the status of the last deployment of a stage. Supported only for stages with autoDeploy enabled.</p>
    #   @return [String]
    # @!attribute last_updated_date
    #   <p>The timestamp when the stage was last updated.</p>
    #   @return [Time]
    # @!attribute route_settings
    #   <p>Route settings for the stage, by routeKey.</p>
    #   @return [Hash<String, Types::RouteSettings>]
    # @!attribute stage_name
    #   <p>The name of the stage.</p>
    #   @return [String]
    # @!attribute stage_variables
    #   <p>A map that defines the stage variables for a stage resource. Variable names can have alphanumeric and underscore characters, and the values must match [A-Za-z0-9-._~:/?#&amp;=,]+.</p>
    #   @return [Hash<String, String>]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    class GetStageResponse < Struct.new(
      :access_log_settings,
      :api_gateway_managed,
      :auto_deploy,
      :client_certificate_id,
      :created_date,
      :default_route_settings,
      :deployment_id,
      :description,
      :last_deployment_status_message,
      :last_updated_date,
      :route_settings,
      :stage_name,
      :stage_variables,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #   @return [String]
    class GetStagesRequest < Struct.new(
      :api_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The elements from this collection.</p>
    #   @return [Array<Types::Stage>]
    # @!attribute next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #   @return [String]
    class GetStagesResponse < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource ARN for the tag.</p>
    #   @return [String]
    class GetTagsRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Represents a collection of tags associated with the resource.</p>
    #   @return [Hash<String, String>]
    class GetTagsResponse < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute vpc_link_id
    #   <p>The ID of the VPC link.</p>
    #   @return [String]
    class GetVpcLinkRequest < Struct.new(
      :vpc_link_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute created_date
    #   <p>The timestamp when the VPC link was created.</p>
    #   @return [Time]
    # @!attribute name
    #   <p>The name of the VPC link.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>A list of security group IDs for the VPC link.</p>
    #   @return [Array<String>]
    # @!attribute subnet_ids
    #   <p>A list of subnet IDs to include in the VPC link.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>Tags for the VPC link.</p>
    #   @return [Hash<String, String>]
    # @!attribute vpc_link_id
    #   <p>The ID of the VPC link.</p>
    #   @return [String]
    # @!attribute vpc_link_status
    #   <p>The status of the VPC link.</p>
    #   @return [String]
    # @!attribute vpc_link_status_message
    #   <p>A message summarizing the cause of the status of the VPC link.</p>
    #   @return [String]
    # @!attribute vpc_link_version
    #   <p>The version of the VPC link.</p>
    #   @return [String]
    class GetVpcLinkResponse < Struct.new(
      :created_date,
      :name,
      :security_group_ids,
      :subnet_ids,
      :tags,
      :vpc_link_id,
      :vpc_link_status,
      :vpc_link_status_message,
      :vpc_link_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #   @return [String]
    class GetVpcLinksRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>A collection of VPC links.</p>
    #   @return [Array<Types::VpcLink>]
    # @!attribute next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #   @return [String]
    class GetVpcLinksResponse < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute basepath
    #   <p>Specifies how to interpret the base path of the API during import. Valid values are ignore, prepend, and split. The default value is ignore. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-import-api-basePath.html">Set the OpenAPI basePath Property</a>. Supported only for HTTP APIs.</p>
    #   @return [String]
    # @!attribute body
    #   <p>The OpenAPI definition. Supported only for HTTP APIs.</p>
    #   @return [String]
    # @!attribute fail_on_warnings
    #   <p>Specifies whether to rollback the API creation when a warning is encountered. By default, API creation continues if a warning is encountered.</p>
    #   @return [Boolean]
    class ImportApiRequest < Struct.new(
      :basepath,
      :body,
      :fail_on_warnings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_endpoint
    #   <p>The URI of the API, of the form {api-id}.execute-api.{region}.amazonaws.com. The stage name is typically appended to this URI to form a complete path to a deployed API stage.</p>
    #   @return [String]
    # @!attribute api_gateway_managed
    #   <p>Specifies whether an API is managed by API Gateway. You can't update or delete a managed API by using API Gateway. A managed API can be deleted only through the tooling or service that created it.</p>
    #   @return [Boolean]
    # @!attribute api_id
    #   <p>The API ID.</p>
    #   @return [String]
    # @!attribute api_key_selection_expression
    #   <p>An API key selection expression. Supported only for WebSocket APIs. See <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions">API Key Selection Expressions</a>.</p>
    #   @return [String]
    # @!attribute cors_configuration
    #   <p>A CORS configuration. Supported only for HTTP APIs.</p>
    #   @return [Types::Cors]
    # @!attribute created_date
    #   <p>The timestamp when the API was created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the API.</p>
    #   @return [String]
    # @!attribute disable_schema_validation
    #   <p>Avoid validating models when creating a deployment. Supported only for WebSocket APIs.</p>
    #   @return [Boolean]
    # @!attribute disable_execute_api_endpoint
    #   <p>Specifies whether clients can invoke your API by using the default execute-api endpoint. By default, clients can invoke your API with the default https://{api_id}.execute-api.{region}.amazonaws.com endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint.</p>
    #   @return [Boolean]
    # @!attribute import_info
    #   <p>The validation information during API import. This may include particular properties of your OpenAPI definition which are ignored during import. Supported only for HTTP APIs.</p>
    #   @return [Array<String>]
    # @!attribute ip_address_type
    #   <p>The IP address types that can invoke the API.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the API.</p>
    #   @return [String]
    # @!attribute protocol_type
    #   <p>The API protocol.</p>
    #   @return [String]
    # @!attribute route_selection_expression
    #   <p>The route selection expression for the API. For HTTP APIs, the routeSelectionExpression must be ${request.method} ${request.path}. If not provided, this will be the default for HTTP APIs. This property is required for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A collection of tags associated with the API.</p>
    #   @return [Hash<String, String>]
    # @!attribute version
    #   <p>A version identifier for the API.</p>
    #   @return [String]
    # @!attribute warnings
    #   <p>The warning messages reported when failonwarnings is turned on during API import.</p>
    #   @return [Array<String>]
    class ImportApiResponse < Struct.new(
      :api_endpoint,
      :api_gateway_managed,
      :api_id,
      :api_key_selection_expression,
      :cors_configuration,
      :created_date,
      :description,
      :disable_schema_validation,
      :disable_execute_api_endpoint,
      :import_info,
      :ip_address_type,
      :name,
      :protocol_type,
      :route_selection_expression,
      :tags,
      :version,
      :warnings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents an integration.</p>
    # @!attribute api_gateway_managed
    #   <p>Specifies whether an integration is managed by API Gateway. If you created an API using using quick create, the resulting integration is managed by API Gateway. You can update a managed integration, but you can't delete it.</p>
    #   @return [Boolean]
    # @!attribute connection_id
    #   <p>The ID of the VPC link for a private integration. Supported only for HTTP APIs.</p>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The type of the network connection to the integration endpoint. Specify INTERNET for connections through the public routable internet or VPC_LINK for private connections between API Gateway and resources in a VPC. The default value is INTERNET.</p>
    #   @return [String]
    # @!attribute content_handling_strategy
    #   <p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>
    #   @return [String]
    # @!attribute credentials_arn
    #   <p>Specifies the credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Represents the description of an integration.</p>
    #   @return [String]
    # @!attribute integration_id
    #   <p>Represents the identifier of an integration.</p>
    #   @return [String]
    # @!attribute integration_method
    #   <p>Specifies the integration's HTTP method type.</p>
    #   @return [String]
    # @!attribute integration_response_selection_expression
    #   <p>The integration response selection expression for the integration. Supported only for WebSocket APIs. See <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-integration-response-selection-expressions">Integration Response Selection Expressions</a>.</p>
    #   @return [String]
    # @!attribute integration_subtype
    #   <p>Supported only for HTTP API AWS_PROXY integrations. Specifies the AWS service action to invoke. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html">Integration subtype reference</a>.</p>
    #   @return [String]
    # @!attribute integration_type
    #   <p>The integration type of an integration. One of the following:</p> <p>AWS: for integrating the route or method request with an AWS service action, including the Lambda function-invoking action. With the Lambda function-invoking action, this is referred to as the Lambda custom integration. With any other AWS service action, this is known as AWS integration. Supported only for WebSocket APIs.</p> <p>AWS_PROXY: for integrating the route or method request with a Lambda function or other AWS service action. This integration is also referred to as a Lambda proxy integration.</p> <p>HTTP: for integrating the route or method request with an HTTP endpoint. This integration is also referred to as the HTTP custom integration. Supported only for WebSocket APIs.</p> <p>HTTP_PROXY: for integrating the route or method request with an HTTP endpoint, with the client request passed through as-is. This is also referred to as HTTP proxy integration.</p> <p>MOCK: for integrating the route or method request with API Gateway as a "loopback" endpoint without invoking any backend. Supported only for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute integration_uri
    #   <p>For a Lambda integration, specify the URI of a Lambda function.</p> <p>For an HTTP integration, specify a fully-qualified URL.</p> <p>For an HTTP API private integration, specify the ARN of an Application Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map service. If you specify the ARN of an AWS Cloud Map service, API Gateway uses DiscoverInstances to identify resources. You can use query parameters to target specific resources. To learn more, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html">DiscoverInstances</a>. For private integrations, all resources must be owned by the same AWS account.</p>
    #   @return [String]
    # @!attribute passthrough_behavior
    #   <p>Specifies the pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the requestTemplates property on the Integration resource. There are three valid values: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, and NEVER. Supported only for WebSocket APIs.</p> <p>WHEN_NO_MATCH passes the request body for unmapped content types through to the integration backend without transformation.</p> <p>NEVER rejects unmapped content types with an HTTP 415 Unsupported Media Type response.</p> <p>WHEN_NO_TEMPLATES allows pass-through when the integration has no content types mapped to templates. However, if there is at least one content type defined, unmapped content types will be rejected with the same HTTP 415 Unsupported Media Type response.</p>
    #   @return [String]
    # @!attribute payload_format_version
    #   <p>Specifies the format of the payload sent to an integration. Required for HTTP APIs. Supported values for Lambda proxy integrations are 1.0 and 2.0. For all other integrations, 1.0 is the only supported value. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-lambda.html">Working with AWS Lambda proxy integrations for HTTP APIs</a>.</p>
    #   @return [String]
    # @!attribute request_parameters
    #   <p>For WebSocket APIs, a key-value map specifying request parameters that are passed from the method request to the backend. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the backend. The method request parameter value must match the pattern of method.request.<replaceable>{location}</replaceable>.<replaceable>{name}</replaceable>
    #             , where 
    #               <replaceable>{location}</replaceable>
    #              is querystring, path, or header; and 
    #               <replaceable>{name}</replaceable>
    #              must be a valid and unique method request parameter name.</p> <p>For HTTP API integrations with a specified integrationSubtype, request parameters are a key-value map specifying parameters that are passed to AWS_PROXY integrations. You can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services.html">Working with AWS service integrations for HTTP APIs</a>.</p> <p>For HTTP API integrations, without a specified integrationSubtype request parameters are a key-value map specifying how to transform HTTP requests before sending them to backend integrations. The key should follow the pattern &lt;action&gt;:&lt;header|querystring|path&gt;.&lt;location&gt;. The action can be append, overwrite or remove. For values, you can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html">Transforming API requests and responses</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute request_templates
    #   <p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value. Supported only for WebSocket APIs.</p>
    #   @return [Hash<String, String>]
    # @!attribute response_parameters
    #   <p>Supported only for HTTP APIs. You use response parameters to transform the HTTP response from a backend integration before returning the response to clients. Specify a key-value map from a selection key to response parameters. The selection key must be a valid HTTP status code within the range of 200-599. Response parameters are a key-value map. The key must match pattern &lt;action&gt;:&lt;header&gt;.&lt;location&gt; or overwrite.statuscode. The action can be append, overwrite or remove. The value can be a static value, or map to response data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html">Transforming API requests and responses</a>.</p>
    #   @return [Hash<String, Hash<String, String>>]
    # @!attribute template_selection_expression
    #   <p>The template selection expression for the integration. Supported only for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute timeout_in_millis
    #   <p>Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and between 50 and 30,000 milliseconds for HTTP APIs. The default timeout is 29 seconds for WebSocket APIs and 30 seconds for HTTP APIs.</p>
    #   @return [Integer]
    # @!attribute tls_config
    #   <p>The TLS configuration for a private integration. If you specify a TLS configuration, private integration traffic uses the HTTPS protocol. Supported only for HTTP APIs.</p>
    #   @return [Types::TlsConfig]
    class Integration < Struct.new(
      :api_gateway_managed,
      :connection_id,
      :connection_type,
      :content_handling_strategy,
      :credentials_arn,
      :description,
      :integration_id,
      :integration_method,
      :integration_response_selection_expression,
      :integration_subtype,
      :integration_type,
      :integration_uri,
      :passthrough_behavior,
      :payload_format_version,
      :request_parameters,
      :request_templates,
      :response_parameters,
      :template_selection_expression,
      :timeout_in_millis,
      :tls_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents an integration response.</p>
    # @!attribute content_handling_strategy
    #   <p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>
    #   @return [String]
    # @!attribute integration_response_id
    #   <p>The integration response ID.</p>
    #   @return [String]
    # @!attribute integration_response_key
    #   <p>The integration response key.</p>
    #   @return [String]
    # @!attribute response_parameters
    #   <p>A key-value map specifying response parameters that are passed to the method response from the backend. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of method.response.header.{name}, where name is a valid and unique header name. The mapped non-static value must match the pattern of integration.response.header.{name} or integration.response.body.{JSON-expression}, where name is a valid and unique response header name and JSON-expression is a valid JSON expression without the $ prefix.</p>
    #   @return [Hash<String, String>]
    # @!attribute response_templates
    #   <p>The collection of response templates for the integration response as a string-to-string map of key-value pairs. Response templates are represented as a key/value map, with a content-type as the key and a template as the value.</p>
    #   @return [Hash<String, String>]
    # @!attribute template_selection_expression
    #   <p>The template selection expressions for the integration response.</p>
    #   @return [String]
    class IntegrationResponse < Struct.new(
      :content_handling_strategy,
      :integration_response_id,
      :integration_response_key,
      :response_parameters,
      :response_templates,
      :template_selection_expression,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents an API method integration type.</p>
    module IntegrationType
      AWS = 'AWS'
      HTTP = 'HTTP'
      MOCK = 'MOCK'
      HTTP_PROXY = 'HTTP_PROXY'
      AWS_PROXY = 'AWS_PROXY'
    end

    # <p>The IP address types that can invoke your API or domain name.</p>
    module IpAddressType
      ipv4 = 'ipv4'
      dualstack = 'dualstack'
    end

    # <p>Represents the configuration of a JWT authorizer. Required for the JWT authorizer type. Supported only for HTTP APIs.</p>
    # @!attribute audience
    #   <p>A list of the intended recipients of the JWT. A valid JWT must provide an aud that matches at least one entry in this list. See <a href="https://tools.ietf.org/html/rfc7519#section-4.1.3">RFC 7519</a>. Supported only for HTTP APIs.</p>
    #   @return [Array<String>]
    # @!attribute issuer
    #   <p>The base domain of the identity provider that issues JSON Web Tokens. For example, an Amazon Cognito user pool has the following format: https://cognito-idp.<replaceable>{region}</replaceable>.amazonaws.com/<replaceable>{userPoolId}</replaceable>
    #                  . Required for the JWT authorizer type. Supported only for HTTP APIs.</p>
    #   @return [String]
    class JWTConfiguration < Struct.new(
      :audience,
      :issuer,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The domain name.</p>
    #   @return [String]
    # @!attribute domain_name_id
    #   <p>The domain name ID.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #   @return [String]
    class ListRoutingRulesRequest < Struct.new(
      :domain_name,
      :domain_name_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #   @return [String]
    # @!attribute routing_rules
    #   <p>The routing rules.<p>
    #   @return [Array<Types::RoutingRule>]
    class ListRoutingRulesResponse < Struct.new(
      :next_token,
      :routing_rules,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The logging level.</p>
    module LoggingLevel
      ERROR = 'ERROR'
      INFO = 'INFO'
      OFF = 'OFF'
    end

    # <p>Represents a data model for an API. Supported only for WebSocket APIs. See <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/models-mappings.html">Create Models and Mapping Templates for Request and Response Mappings</a>.</p>
    # @!attribute content_type
    #   <p>The content-type for the model, for example, "application/json".</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the model.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The model identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the model. Must be alphanumeric.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>The schema for the model. For application/json models, this should be JSON schema draft 4 model.</p>
    #   @return [String]
    class Model < Struct.new(
      :content_type,
      :description,
      :model_id,
      :name,
      :schema,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute truststore_uri
    #   <p>An Amazon S3 URL that specifies the truststore for mutual TLS authentication, for example, s3://<replaceable>bucket-name</replaceable>/<replaceable>key-name</replaceable>. The truststore can contain certificates from public or private certificate authorities. To update the truststore, upload a new version to S3, and then update your custom domain name to use the new version. To update the truststore, you must have permissions to access the S3 object.</p>
    #   @return [String]
    # @!attribute truststore_version
    #   <p>The version of the S3 object that contains your truststore. To specify a version, you must have versioning enabled for the S3 bucket.</p>
    #   @return [String]
    # @!attribute truststore_warnings
    #   <p>A list of warnings that API Gateway returns while processing your truststore. Invalid certificates produce warnings. Mutual TLS is still enabled, but some clients might not be able to access your API. To resolve warnings, upload a new truststore to S3, and then update you domain name to use the new version.</p>
    #   @return [Array<String>]
    class MutualTlsAuthentication < Struct.new(
      :truststore_uri,
      :truststore_version,
      :truststore_warnings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute truststore_uri
    #   <p>An Amazon S3 URL that specifies the truststore for mutual TLS authentication, for example, s3://<replaceable>bucket-name</replaceable>/<replaceable>key-name</replaceable>. The truststore can contain certificates from public or private certificate authorities. To update the truststore, upload a new version to S3, and then update your custom domain name to use the new version. To update the truststore, you must have permissions to access the S3 object.</p>
    #   @return [String]
    # @!attribute truststore_version
    #   <p>The version of the S3 object that contains your truststore. To specify a version, you must have versioning enabled for the S3 bucket.</p>
    #   @return [String]
    class MutualTlsAuthenticationInput < Struct.new(
      :truststore_uri,
      :truststore_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The resource specified in the request was not found. See the message field for more information.</p>
    # @!attribute message
    #   <p>Describes the error encountered.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #   @return [String]
    class NotFoundException < Struct.new(
      :message,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Validation constraints imposed on parameters of a request (path, query string, headers).</p>
    # @!attribute required
    #   <p>Whether or not the parameter is required.</p>
    #   @return [Boolean]
    class ParameterConstraints < Struct.new(
      :required,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents passthrough behavior for an integration response. Supported only for WebSocket APIs.</p>
    module PassthroughBehavior
      WHEN_NO_MATCH = 'WHEN_NO_MATCH'
      NEVER = 'NEVER'
      WHEN_NO_TEMPLATES = 'WHEN_NO_TEMPLATES'
    end

    # Represents a protocol type.
    module ProtocolType
      WEBSOCKET = 'WEBSOCKET'
      HTTP = 'HTTP'
    end

    # @!attribute actions
    #   <p>The routing rule action.</p>
    #   @return [Array<Types::RoutingRuleAction>]
    # @!attribute conditions
    #   <p>The routing rule condition.</p>
    #   @return [Array<Types::RoutingRuleCondition>]
    # @!attribute domain_name
    #   <p>The domain name.</p>
    #   @return [String]
    # @!attribute domain_name_id
    #   <p>The domain name ID.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The routing rule priority.</p>
    #   @return [Integer]
    # @!attribute routing_rule_id
    #   <p>The routing rule ID.</p>
    #   @return [String]
    class PutRoutingRuleRequest < Struct.new(
      :actions,
      :conditions,
      :domain_name,
      :domain_name_id,
      :priority,
      :routing_rule_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute actions
    #   <p>The routing rule action.</p>
    #   @return [Array<Types::RoutingRuleAction>]
    # @!attribute conditions
    #   <p>The conditions of the routing rule.</p>
    #   @return [Array<Types::RoutingRuleCondition>]
    # @!attribute priority
    #   <p>The routing rule priority.</p>
    #   @return [Integer]
    # @!attribute routing_rule_arn
    #   <p>The routing rule ARN.</p>
    #   @return [String]
    # @!attribute routing_rule_id
    #   <p>The routing rule ID.</p>
    #   @return [String]
    class PutRoutingRuleResponse < Struct.new(
      :actions,
      :conditions,
      :priority,
      :routing_rule_arn,
      :routing_rule_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute basepath
    #   <p>Specifies how to interpret the base path of the API during import. Valid values are ignore, prepend, and split. The default value is ignore. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-import-api-basePath.html">Set the OpenAPI basePath Property</a>. Supported only for HTTP APIs.</p>
    #   @return [String]
    # @!attribute body
    #   <p>The OpenAPI definition. Supported only for HTTP APIs.</p>
    #   @return [String]
    # @!attribute fail_on_warnings
    #   <p>Specifies whether to rollback the API creation when a warning is encountered. By default, API creation continues if a warning is encountered.</p>
    #   @return [Boolean]
    class ReimportApiRequest < Struct.new(
      :api_id,
      :basepath,
      :body,
      :fail_on_warnings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_endpoint
    #   <p>The URI of the API, of the form {api-id}.execute-api.{region}.amazonaws.com. The stage name is typically appended to this URI to form a complete path to a deployed API stage.</p>
    #   @return [String]
    # @!attribute api_gateway_managed
    #   <p>Specifies whether an API is managed by API Gateway. You can't update or delete a managed API by using API Gateway. A managed API can be deleted only through the tooling or service that created it.</p>
    #   @return [Boolean]
    # @!attribute api_id
    #   <p>The API ID.</p>
    #   @return [String]
    # @!attribute api_key_selection_expression
    #   <p>An API key selection expression. Supported only for WebSocket APIs. See <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions">API Key Selection Expressions</a>.</p>
    #   @return [String]
    # @!attribute cors_configuration
    #   <p>A CORS configuration. Supported only for HTTP APIs.</p>
    #   @return [Types::Cors]
    # @!attribute created_date
    #   <p>The timestamp when the API was created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the API.</p>
    #   @return [String]
    # @!attribute disable_schema_validation
    #   <p>Avoid validating models when creating a deployment. Supported only for WebSocket APIs.</p>
    #   @return [Boolean]
    # @!attribute disable_execute_api_endpoint
    #   <p>Specifies whether clients can invoke your API by using the default execute-api endpoint. By default, clients can invoke your API with the default https://{api_id}.execute-api.{region}.amazonaws.com endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint.</p>
    #   @return [Boolean]
    # @!attribute import_info
    #   <p>The validation information during API import. This may include particular properties of your OpenAPI definition which are ignored during import. Supported only for HTTP APIs.</p>
    #   @return [Array<String>]
    # @!attribute ip_address_type
    #   <p>The IP address types that can invoke the API.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the API.</p>
    #   @return [String]
    # @!attribute protocol_type
    #   <p>The API protocol.</p>
    #   @return [String]
    # @!attribute route_selection_expression
    #   <p>The route selection expression for the API. For HTTP APIs, the routeSelectionExpression must be ${request.method} ${request.path}. If not provided, this will be the default for HTTP APIs. This property is required for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A collection of tags associated with the API.</p>
    #   @return [Hash<String, String>]
    # @!attribute version
    #   <p>A version identifier for the API.</p>
    #   @return [String]
    # @!attribute warnings
    #   <p>The warning messages reported when failonwarnings is turned on during API import.</p>
    #   @return [Array<String>]
    class ReimportApiResponse < Struct.new(
      :api_endpoint,
      :api_gateway_managed,
      :api_id,
      :api_key_selection_expression,
      :cors_configuration,
      :created_date,
      :description,
      :disable_schema_validation,
      :disable_execute_api_endpoint,
      :import_info,
      :ip_address_type,
      :name,
      :protocol_type,
      :route_selection_expression,
      :tags,
      :version,
      :warnings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute stage_name
    #   <p>The stage name. Stage names can contain only alphanumeric characters, hyphens, and underscores, or be $default. Maximum length is 128 characters.</p>
    #   @return [String]
    class ResetAuthorizersCacheRequest < Struct.new(
      :api_id,
      :stage_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a route.</p>
    # @!attribute api_gateway_managed
    #   <p>Specifies whether a route is managed by API Gateway. If you created an API using quick create, the $default route is managed by API Gateway. You can't modify the $default route key.</p>
    #   @return [Boolean]
    # @!attribute api_key_required
    #   <p>Specifies whether an API key is required for this route. Supported only for WebSocket APIs.</p>
    #   @return [Boolean]
    # @!attribute authorization_scopes
    #   <p>A list of authorization scopes configured on a route. The scopes are used with a JWT authorizer to authorize the method invocation. The authorization works by matching the route scopes against the scopes parsed from the access token in the incoming request. The method invocation is authorized if any route scope matches a claimed scope in the access token. Otherwise, the invocation is not authorized. When the route scope is configured, the client must provide an access token instead of an identity token for authorization purposes.</p>
    #   @return [Array<String>]
    # @!attribute authorization_type
    #   <p>The authorization type for the route. For WebSocket APIs, valid values are NONE for open access, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer For HTTP APIs, valid values are NONE for open access, JWT for using JSON Web Tokens, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer.</p>
    #   @return [String]
    # @!attribute authorizer_id
    #   <p>The identifier of the Authorizer resource to be associated with this route. The authorizer identifier is generated by API Gateway when you created the authorizer.</p>
    #   @return [String]
    # @!attribute model_selection_expression
    #   <p>The model selection expression for the route. Supported only for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute operation_name
    #   <p>The operation name for the route.</p>
    #   @return [String]
    # @!attribute request_models
    #   <p>The request models for the route. Supported only for WebSocket APIs.</p>
    #   @return [Hash<String, String>]
    # @!attribute request_parameters
    #   <p>The request parameters for the route. Supported only for WebSocket APIs.</p>
    #   @return [Hash<String, Types::ParameterConstraints>]
    # @!attribute route_id
    #   <p>The route ID.</p>
    #   @return [String]
    # @!attribute route_key
    #   <p>The route key for the route.</p>
    #   @return [String]
    # @!attribute route_response_selection_expression
    #   <p>The route response selection expression for the route. Supported only for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The target for the route.</p>
    #   @return [String]
    class Route < Struct.new(
      :api_gateway_managed,
      :api_key_required,
      :authorization_scopes,
      :authorization_type,
      :authorizer_id,
      :model_selection_expression,
      :operation_name,
      :request_models,
      :request_parameters,
      :route_id,
      :route_key,
      :route_response_selection_expression,
      :target,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a route response.</p>
    # @!attribute model_selection_expression
    #   <p>Represents the model selection expression of a route response. Supported only for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute response_models
    #   <p>Represents the response models of a route response.</p>
    #   @return [Hash<String, String>]
    # @!attribute response_parameters
    #   <p>Represents the response parameters of a route response.</p>
    #   @return [Hash<String, Types::ParameterConstraints>]
    # @!attribute route_response_id
    #   <p>Represents the identifier of a route response.</p>
    #   @return [String]
    # @!attribute route_response_key
    #   <p>Represents the route response key of a route response.</p>
    #   @return [String]
    class RouteResponse < Struct.new(
      :model_selection_expression,
      :response_models,
      :response_parameters,
      :route_response_id,
      :route_response_key,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a collection of route settings.</p>
    # @!attribute data_trace_enabled
    #   <p>Specifies whether (true) or not (false) data trace logging is enabled for this route. This property affects the log entries pushed to Amazon CloudWatch Logs. Supported only for WebSocket APIs.</p>
    #   @return [Boolean]
    # @!attribute detailed_metrics_enabled
    #   <p>Specifies whether detailed metrics are enabled.</p>
    #   @return [Boolean]
    # @!attribute logging_level
    #   <p>Specifies the logging level for this route: INFO, ERROR, or OFF. This property affects the log entries pushed to Amazon CloudWatch Logs. Supported only for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute throttling_burst_limit
    #   <p>Specifies the throttling burst limit.</p>
    #   @return [Integer]
    # @!attribute throttling_rate_limit
    #   <p>Specifies the throttling rate limit.</p>
    #   @return [Float]
    class RouteSettings < Struct.new(
      :data_trace_enabled,
      :detailed_metrics_enabled,
      :logging_level,
      :throttling_burst_limit,
      :throttling_rate_limit,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module RoutingMode
      API_MAPPING_ONLY = 'API_MAPPING_ONLY'
      ROUTING_RULE_ONLY = 'ROUTING_RULE_ONLY'
      ROUTING_RULE_THEN_API_MAPPING = 'ROUTING_RULE_THEN_API_MAPPING'
    end

    # <p>Represents a routing rule.</p>
    # @!attribute actions
    #   <p>The routing rule action.</p>
    #   @return [Array<Types::RoutingRuleAction>]
    # @!attribute conditions
    #   <p>The routing rule condition.</p>
    #   @return [Array<Types::RoutingRuleCondition>]
    # @!attribute priority
    #   <p>The routing rule priority.</p>
    #   @return [Integer]
    # @!attribute routing_rule_arn
    #   <p>The routing rule ARN.</p>
    #   @return [String]
    # @!attribute routing_rule_id
    #   <p>The routing rule ID.</p>
    #   @return [String]
    class RoutingRule < Struct.new(
      :actions,
      :conditions,
      :priority,
      :routing_rule_arn,
      :routing_rule_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The routing rule action.</p>
    # @!attribute invoke_api
    #   <p>Represents an InvokeApi action.</p>
    #   @return [Types::RoutingRuleActionInvokeApi]
    class RoutingRuleAction < Struct.new(
      :invoke_api,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents an InvokeApi action.</p>
    # @!attribute api_id
    #   <p>The identifier.</p>
    #   @return [String]
    # @!attribute stage
    #   <p>A string with a length between [1-128].</p>
    #   @return [String]
    # @!attribute strip_base_path
    #   <p>The strip base path setting.</p>
    #   @return [Boolean]
    class RoutingRuleActionInvokeApi < Struct.new(
      :api_id,
      :stage,
      :strip_base_path,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a routing rule condition.</p>
    # @!attribute match_base_paths
    #   <p>The base path to be matched.</p>
    #   @return [Types::RoutingRuleMatchBasePaths]
    # @!attribute match_headers
    #   <p>The headers to be matched.</p>
    #   @return [Types::RoutingRuleMatchHeaders]
    class RoutingRuleCondition < Struct.new(
      :match_base_paths,
      :match_headers,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a MatchBasePaths condition.</p>
    # @!attribute any_of
    #   The string of the case sensitive base path to be matched.
    #   @return [Array<String>]
    class RoutingRuleMatchBasePaths < Struct.new(
      :any_of,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a MatchHeaderValue.</p>
    # @!attribute header
    #   <p>After evaluating a selection expression, the result is compared against one or more selection keys to find a matching key. See <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions">Selection Expressions</a> for a list of expressions and each expression's associated selection key type.</p>
    #   @return [String]
    # @!attribute value_glob
    #   <p>An expression used to extract information at runtime. See <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions">Selection Expressions</a> for more information.</p>
    #   @return [String]
    class RoutingRuleMatchHeaderValue < Struct.new(
      :header,
      :value_glob,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a MatchHeaders condition.</p>
    # @!attribute any_of
    #   <p>The header name and header value glob to be matched. The matchHeaders condition is matched if any of the header name and header value globs are matched.</p>
    #   @return [Array<Types::RoutingRuleMatchHeaderValue>]
    class RoutingRuleMatchHeaders < Struct.new(
      :any_of,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Transport Layer Security (TLS) version of the security policy for this domain name. The valid values are TLS_1_0 and TLS_1_2.</p>
    module SecurityPolicy
      TLS_1_0 = 'TLS_1_0'
      TLS_1_2 = 'TLS_1_2'
    end

    # <p>Represents an API stage.</p>
    # @!attribute access_log_settings
    #   <p>Settings for logging access in this stage.</p>
    #   @return [Types::AccessLogSettings]
    # @!attribute api_gateway_managed
    #   <p>Specifies whether a stage is managed by API Gateway. If you created an API using quick create, the $default stage is managed by API Gateway. You can't modify the $default stage.</p>
    #   @return [Boolean]
    # @!attribute auto_deploy
    #   <p>Specifies whether updates to an API automatically trigger a new deployment. The default value is false.</p>
    #   @return [Boolean]
    # @!attribute client_certificate_id
    #   <p>The identifier of a client certificate for a Stage. Supported only for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The timestamp when the stage was created.</p>
    #   @return [Time]
    # @!attribute default_route_settings
    #   <p>Default route settings for the stage.</p>
    #   @return [Types::RouteSettings]
    # @!attribute deployment_id
    #   <p>The identifier of the Deployment that the Stage is associated with. Can't be updated if autoDeploy is enabled.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the stage.</p>
    #   @return [String]
    # @!attribute last_deployment_status_message
    #   <p>Describes the status of the last deployment of a stage. Supported only for stages with autoDeploy enabled.</p>
    #   @return [String]
    # @!attribute last_updated_date
    #   <p>The timestamp when the stage was last updated.</p>
    #   @return [Time]
    # @!attribute route_settings
    #   <p>Route settings for the stage, by routeKey.</p>
    #   @return [Hash<String, Types::RouteSettings>]
    # @!attribute stage_name
    #   <p>The name of the stage.</p>
    #   @return [String]
    # @!attribute stage_variables
    #   <p>A map that defines the stage variables for a stage resource. Variable names can have alphanumeric and underscore characters, and the values must match [A-Za-z0-9-._~:/?#&amp;=,]+.</p>
    #   @return [Hash<String, String>]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    class Stage < Struct.new(
      :access_log_settings,
      :api_gateway_managed,
      :auto_deploy,
      :client_certificate_id,
      :created_date,
      :default_route_settings,
      :deployment_id,
      :description,
      :last_deployment_status_message,
      :last_updated_date,
      :route_settings,
      :stage_name,
      :stage_variables,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Creates a new Tag resource to represent a tag.</p>
    # @!attribute resource_arn
    #   <p>The resource ARN for the tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
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

    # <p>The TLS configuration for a private integration. If you specify a TLS configuration, private integration traffic uses the HTTPS protocol. Supported only for HTTP APIs.</p>
    # @!attribute server_name_to_verify
    #   <p>If you specify a server name, API Gateway uses it to verify the hostname on the integration's certificate. The server name is also included in the TLS handshake to support Server Name Indication (SNI) or virtual hosting.</p>
    #   @return [String]
    class TlsConfig < Struct.new(
      :server_name_to_verify,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The TLS configuration for a private integration. If you specify a TLS configuration, private integration traffic uses the HTTPS protocol. Supported only for HTTP APIs.</p>
    # @!attribute server_name_to_verify
    #   <p>If you specify a server name, API Gateway uses it to verify the hostname on the integration's certificate. The server name is also included in the TLS handshake to support Server Name Indication (SNI) or virtual hosting.</p>
    #   @return [String]
    class TlsConfigInput < Struct.new(
      :server_name_to_verify,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A limit has been exceeded. See the accompanying error message for details.</p>
    # @!attribute limit_type
    #   <p>The limit type.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Describes the error encountered.</p>
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      :limit_type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource ARN for the tag.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The Tag keys to delete</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Updates an ApiMapping.</p>
    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute api_mapping_id
    #   <p>The API mapping identifier.</p>
    #   @return [String]
    # @!attribute api_mapping_key
    #   <p>The API mapping key.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain name.</p>
    #   @return [String]
    # @!attribute stage
    #   <p>The API stage.</p>
    #   @return [String]
    class UpdateApiMappingRequest < Struct.new(
      :api_id,
      :api_mapping_id,
      :api_mapping_key,
      :domain_name,
      :stage,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute api_mapping_id
    #   <p>The API mapping identifier.</p>
    #   @return [String]
    # @!attribute api_mapping_key
    #   <p>The API mapping key.</p>
    #   @return [String]
    # @!attribute stage
    #   <p>The API stage.</p>
    #   @return [String]
    class UpdateApiMappingResponse < Struct.new(
      :api_id,
      :api_mapping_id,
      :api_mapping_key,
      :stage,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Updates an Api.</p>
    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute api_key_selection_expression
    #   <p>An API key selection expression. Supported only for WebSocket APIs. See <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions">API Key Selection Expressions</a>.</p>
    #   @return [String]
    # @!attribute cors_configuration
    #   <p>A CORS configuration. Supported only for HTTP APIs.</p>
    #   @return [Types::Cors]
    # @!attribute credentials_arn
    #   <p>This property is part of quick create. It specifies the credentials required for the integration, if any. For a Lambda integration, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, don't specify this parameter. Currently, this property is not used for HTTP integrations. If provided, this value replaces the credentials associated with the quick create integration. Supported only for HTTP APIs.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the API.</p>
    #   @return [String]
    # @!attribute disable_schema_validation
    #   <p>Avoid validating models when creating a deployment. Supported only for WebSocket APIs.</p>
    #   @return [Boolean]
    # @!attribute disable_execute_api_endpoint
    #   <p>Specifies whether clients can invoke your API by using the default execute-api endpoint. By default, clients can invoke your API with the default https://{api_id}.execute-api.{region}.amazonaws.com endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint.</p>
    #   @return [Boolean]
    # @!attribute ip_address_type
    #   <p>The IP address types that can invoke your API or domain name.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the API.</p>
    #   @return [String]
    # @!attribute route_key
    #   <p>This property is part of quick create. If not specified, the route created using quick create is kept. Otherwise, this value replaces the route key of the quick create route. Additional routes may still be added after the API is updated. Supported only for HTTP APIs.</p>
    #   @return [String]
    # @!attribute route_selection_expression
    #   <p>The route selection expression for the API. For HTTP APIs, the routeSelectionExpression must be ${request.method} ${request.path}. If not provided, this will be the default for HTTP APIs. This property is required for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute target
    #   <p>This property is part of quick create. For HTTP integrations, specify a fully qualified URL. For Lambda integrations, specify a function ARN. The type of the integration will be HTTP_PROXY or AWS_PROXY, respectively. The value provided updates the integration URI and integration type. You can update a quick-created target, but you can't remove it from an API. Supported only for HTTP APIs.</p>
    #   @return [String]
    # @!attribute version
    #   <p>A version identifier for the API.</p>
    #   @return [String]
    class UpdateApiRequest < Struct.new(
      :api_id,
      :api_key_selection_expression,
      :cors_configuration,
      :credentials_arn,
      :description,
      :disable_schema_validation,
      :disable_execute_api_endpoint,
      :ip_address_type,
      :name,
      :route_key,
      :route_selection_expression,
      :target,
      :version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_endpoint
    #   <p>The URI of the API, of the form {api-id}.execute-api.{region}.amazonaws.com. The stage name is typically appended to this URI to form a complete path to a deployed API stage.</p>
    #   @return [String]
    # @!attribute api_gateway_managed
    #   <p>Specifies whether an API is managed by API Gateway. You can't update or delete a managed API by using API Gateway. A managed API can be deleted only through the tooling or service that created it.</p>
    #   @return [Boolean]
    # @!attribute api_id
    #   <p>The API ID.</p>
    #   @return [String]
    # @!attribute api_key_selection_expression
    #   <p>An API key selection expression. Supported only for WebSocket APIs. See <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions">API Key Selection Expressions</a>.</p>
    #   @return [String]
    # @!attribute cors_configuration
    #   <p>A CORS configuration. Supported only for HTTP APIs.</p>
    #   @return [Types::Cors]
    # @!attribute created_date
    #   <p>The timestamp when the API was created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the API.</p>
    #   @return [String]
    # @!attribute disable_schema_validation
    #   <p>Avoid validating models when creating a deployment. Supported only for WebSocket APIs.</p>
    #   @return [Boolean]
    # @!attribute disable_execute_api_endpoint
    #   <p>Specifies whether clients can invoke your API by using the default execute-api endpoint. By default, clients can invoke your API with the default https://{api_id}.execute-api.{region}.amazonaws.com endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint.</p>
    #   @return [Boolean]
    # @!attribute import_info
    #   <p>The validation information during API import. This may include particular properties of your OpenAPI definition which are ignored during import. Supported only for HTTP APIs.</p>
    #   @return [Array<String>]
    # @!attribute ip_address_type
    #   <p>The IP address types that can invoke the API.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the API.</p>
    #   @return [String]
    # @!attribute protocol_type
    #   <p>The API protocol.</p>
    #   @return [String]
    # @!attribute route_selection_expression
    #   <p>The route selection expression for the API. For HTTP APIs, the routeSelectionExpression must be ${request.method} ${request.path}. If not provided, this will be the default for HTTP APIs. This property is required for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A collection of tags associated with the API.</p>
    #   @return [Hash<String, String>]
    # @!attribute version
    #   <p>A version identifier for the API.</p>
    #   @return [String]
    # @!attribute warnings
    #   <p>The warning messages reported when failonwarnings is turned on during API import.</p>
    #   @return [Array<String>]
    class UpdateApiResponse < Struct.new(
      :api_endpoint,
      :api_gateway_managed,
      :api_id,
      :api_key_selection_expression,
      :cors_configuration,
      :created_date,
      :description,
      :disable_schema_validation,
      :disable_execute_api_endpoint,
      :import_info,
      :ip_address_type,
      :name,
      :protocol_type,
      :route_selection_expression,
      :tags,
      :version,
      :warnings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Updates an Authorizer.</p>
    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute authorizer_credentials_arn
    #   <p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, don't specify this parameter.</p>
    #   @return [String]
    # @!attribute authorizer_id
    #   <p>The authorizer identifier.</p>
    #   @return [String]
    # @!attribute authorizer_payload_format_version
    #   <p>Specifies the format of the payload sent to an HTTP API Lambda authorizer. Required for HTTP API Lambda authorizers. Supported values are 1.0 and 2.0. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html">Working with AWS Lambda authorizers for HTTP APIs</a>.</p>
    #   @return [String]
    # @!attribute authorizer_result_ttl_in_seconds
    #   <p>The time to live (TTL) for cached authorizer results, in seconds. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway caches authorizer responses. The maximum value is 3600, or 1 hour. Supported only for HTTP API Lambda authorizers.</p>
    #   @return [Integer]
    # @!attribute authorizer_type
    #   <p>The authorizer type. Specify REQUEST for a Lambda function using incoming request parameters. Specify JWT to use JSON Web Tokens (supported only for HTTP APIs).</p>
    #   @return [String]
    # @!attribute authorizer_uri
    #   <p>The authorizer's Uniform Resource Identifier (URI). For REQUEST authorizers, this must be a well-formed Lambda function URI, for example, arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:<replaceable>{account_id}</replaceable>:function:<replaceable>{lambda_function_name}</replaceable>/invocations. In general, the URI has this form: arn:aws:apigateway:<replaceable>{region}</replaceable>:lambda:path/<replaceable>{service_api}</replaceable>
    #                  , where <replaceable></replaceable>{region} is the same as the region hosting the Lambda function, path indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial /. For Lambda functions, this is usually of the form /2015-03-31/functions/[FunctionARN]/invocations. Supported only for REQUEST authorizers.</p>
    #   @return [String]
    # @!attribute enable_simple_responses
    #   <p>Specifies whether a Lambda authorizer returns a response in a simple format. By default, a Lambda authorizer must return an IAM policy. If enabled, the Lambda authorizer can return a boolean value instead of an IAM policy. Supported only for HTTP APIs. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html">Working with AWS Lambda authorizers for HTTP APIs</a></p>
    #   @return [Boolean]
    # @!attribute identity_source
    #   <p>The identity source for which authorization is requested.</p> <p>For a REQUEST authorizer, this is optional. The value is a set of one or more mapping expressions of the specified request parameters. The identity source can be headers, query string parameters, stage variables, and context parameters. For example, if an Auth header and a Name query string parameter are defined as identity sources, this value is route.request.header.Auth, route.request.querystring.Name for WebSocket APIs. For HTTP APIs, use selection expressions prefixed with $, for example, $request.header.Auth, $request.querystring.Name. These parameters are used to perform runtime validation for Lambda-based authorizers by verifying all of the identity-related request parameters are present in the request, not null, and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda function. Otherwise, it returns a 401 Unauthorized response without calling the Lambda function. For HTTP APIs, identity sources are also used as the cache key when caching is enabled. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html">Working with AWS Lambda authorizers for HTTP APIs</a>.</p> <p>For JWT, a single entry that specifies where to extract the JSON Web Token (JWT) from inbound requests. Currently only header-based and query parameter-based selections are supported, for example $request.header.Authorization.</p>
    #   @return [Array<String>]
    # @!attribute identity_validation_expression
    #   <p>This parameter is not used.</p>
    #   @return [String]
    # @!attribute jwt_configuration
    #   <p>Represents the configuration of a JWT authorizer. Required for the JWT authorizer type. Supported only for HTTP APIs.</p>
    #   @return [Types::JWTConfiguration]
    # @!attribute name
    #   <p>The name of the authorizer.</p>
    #   @return [String]
    class UpdateAuthorizerRequest < Struct.new(
      :api_id,
      :authorizer_credentials_arn,
      :authorizer_id,
      :authorizer_payload_format_version,
      :authorizer_result_ttl_in_seconds,
      :authorizer_type,
      :authorizer_uri,
      :enable_simple_responses,
      :identity_source,
      :identity_validation_expression,
      :jwt_configuration,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute authorizer_credentials_arn
    #   <p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, don't specify this parameter. Supported only for REQUEST authorizers.</p>
    #   @return [String]
    # @!attribute authorizer_id
    #   <p>The authorizer identifier.</p>
    #   @return [String]
    # @!attribute authorizer_payload_format_version
    #   <p>Specifies the format of the payload sent to an HTTP API Lambda authorizer. Required for HTTP API Lambda authorizers. Supported values are 1.0 and 2.0. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html">Working with AWS Lambda authorizers for HTTP APIs</a>.</p>
    #   @return [String]
    # @!attribute authorizer_result_ttl_in_seconds
    #   <p>The time to live (TTL) for cached authorizer results, in seconds. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway caches authorizer responses. The maximum value is 3600, or 1 hour. Supported only for HTTP API Lambda authorizers.</p>
    #   @return [Integer]
    # @!attribute authorizer_type
    #   <p>The authorizer type. Specify REQUEST for a Lambda function using incoming request parameters. Specify JWT to use JSON Web Tokens (supported only for HTTP APIs).</p>
    #   @return [String]
    # @!attribute authorizer_uri
    #   <p>The authorizer's Uniform Resource Identifier (URI). For REQUEST authorizers, this must be a well-formed Lambda function URI, for example, arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:<replaceable>{account_id}</replaceable>:function:<replaceable>{lambda_function_name}</replaceable>/invocations. In general, the URI has this form: arn:aws:apigateway:<replaceable>{region}</replaceable>:lambda:path/<replaceable>{service_api}</replaceable>
    #                  , where <replaceable></replaceable>{region} is the same as the region hosting the Lambda function, path indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial /. For Lambda functions, this is usually of the form /2015-03-31/functions/[FunctionARN]/invocations. Supported only for REQUEST authorizers.</p>
    #   @return [String]
    # @!attribute enable_simple_responses
    #   <p>Specifies whether a Lambda authorizer returns a response in a simple format. If enabled, the Lambda authorizer can return a boolean value instead of an IAM policy. Supported only for HTTP APIs. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html">Working with AWS Lambda authorizers for HTTP APIs</a></p>
    #   @return [Boolean]
    # @!attribute identity_source
    #   <p>The identity source for which authorization is requested.</p> <p>For a REQUEST authorizer, this is optional. The value is a set of one or more mapping expressions of the specified request parameters. The identity source can be headers, query string parameters, stage variables, and context parameters. For example, if an Auth header and a Name query string parameter are defined as identity sources, this value is route.request.header.Auth, route.request.querystring.Name for WebSocket APIs. For HTTP APIs, use selection expressions prefixed with $, for example, $request.header.Auth, $request.querystring.Name. These parameters are used to perform runtime validation for Lambda-based authorizers by verifying all of the identity-related request parameters are present in the request, not null, and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda function. Otherwise, it returns a 401 Unauthorized response without calling the Lambda function. For HTTP APIs, identity sources are also used as the cache key when caching is enabled. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html">Working with AWS Lambda authorizers for HTTP APIs</a>.</p> <p>For JWT, a single entry that specifies where to extract the JSON Web Token (JWT) from inbound requests. Currently only header-based and query parameter-based selections are supported, for example $request.header.Authorization.</p>
    #   @return [Array<String>]
    # @!attribute identity_validation_expression
    #   <p>The validation expression does not apply to the REQUEST authorizer.</p>
    #   @return [String]
    # @!attribute jwt_configuration
    #   <p>Represents the configuration of a JWT authorizer. Required for the JWT authorizer type. Supported only for HTTP APIs.</p>
    #   @return [Types::JWTConfiguration]
    # @!attribute name
    #   <p>The name of the authorizer.</p>
    #   @return [String]
    class UpdateAuthorizerResponse < Struct.new(
      :authorizer_credentials_arn,
      :authorizer_id,
      :authorizer_payload_format_version,
      :authorizer_result_ttl_in_seconds,
      :authorizer_type,
      :authorizer_uri,
      :enable_simple_responses,
      :identity_source,
      :identity_validation_expression,
      :jwt_configuration,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Updates a Deployment.</p>
    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute deployment_id
    #   <p>The deployment ID.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the deployment resource.</p>
    #   @return [String]
    class UpdateDeploymentRequest < Struct.new(
      :api_id,
      :deployment_id,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute auto_deployed
    #   <p>Specifies whether a deployment was automatically released.</p>
    #   @return [Boolean]
    # @!attribute created_date
    #   <p>The date and time when the Deployment resource was created.</p>
    #   @return [Time]
    # @!attribute deployment_id
    #   <p>The identifier for the deployment.</p>
    #   @return [String]
    # @!attribute deployment_status
    #   <p>The status of the deployment: PENDING, FAILED, or SUCCEEDED.</p>
    #   @return [String]
    # @!attribute deployment_status_message
    #   <p>May contain additional feedback on the status of an API deployment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the deployment.</p>
    #   @return [String]
    class UpdateDeploymentResponse < Struct.new(
      :auto_deployed,
      :created_date,
      :deployment_id,
      :deployment_status,
      :deployment_status_message,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Updates a DomainName.</p>
    # @!attribute domain_name
    #   <p>The domain name.</p>
    #   @return [String]
    # @!attribute domain_name_configurations
    #   <p>The domain name configurations.</p>
    #   @return [Array<Types::DomainNameConfiguration>]
    # @!attribute mutual_tls_authentication
    #   <p>The mutual TLS authentication configuration for a custom domain name.</p>
    #   @return [Types::MutualTlsAuthenticationInput]
    # @!attribute routing_mode
    #   <p>The routing mode.</p>
    #   @return [String]
    class UpdateDomainNameRequest < Struct.new(
      :domain_name,
      :domain_name_configurations,
      :mutual_tls_authentication,
      :routing_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_mapping_selection_expression
    #   <p>The API mapping selection expression.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The name of the DomainName resource.</p>
    #   @return [String]
    # @!attribute domain_name_arn
    #   <p>Represents an Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute domain_name_configurations
    #   <p>The domain name configurations.</p>
    #   @return [Array<Types::DomainNameConfiguration>]
    # @!attribute mutual_tls_authentication
    #   <p>The mutual TLS authentication configuration for a custom domain name.</p>
    #   @return [Types::MutualTlsAuthentication]
    # @!attribute routing_mode
    #   <p>The routing mode.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The collection of tags associated with a domain name.</p>
    #   @return [Hash<String, String>]
    class UpdateDomainNameResponse < Struct.new(
      :api_mapping_selection_expression,
      :domain_name,
      :domain_name_arn,
      :domain_name_configurations,
      :mutual_tls_authentication,
      :routing_mode,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Updates an Integration.</p>
    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The ID of the VPC link for a private integration. Supported only for HTTP APIs.</p>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The type of the network connection to the integration endpoint. Specify INTERNET for connections through the public routable internet or VPC_LINK for private connections between API Gateway and resources in a VPC. The default value is INTERNET.</p>
    #   @return [String]
    # @!attribute content_handling_strategy
    #   <p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>
    #   @return [String]
    # @!attribute credentials_arn
    #   <p>Specifies the credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the integration</p>
    #   @return [String]
    # @!attribute integration_id
    #   <p>The integration ID.</p>
    #   @return [String]
    # @!attribute integration_method
    #   <p>Specifies the integration's HTTP method type.</p>
    #   @return [String]
    # @!attribute integration_subtype
    #   <p>Supported only for HTTP API AWS_PROXY integrations. Specifies the AWS service action to invoke. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html">Integration subtype reference</a>.</p>
    #   @return [String]
    # @!attribute integration_type
    #   <p>The integration type of an integration. One of the following:</p> <p>AWS: for integrating the route or method request with an AWS service action, including the Lambda function-invoking action. With the Lambda function-invoking action, this is referred to as the Lambda custom integration. With any other AWS service action, this is known as AWS integration. Supported only for WebSocket APIs.</p> <p>AWS_PROXY: for integrating the route or method request with a Lambda function or other AWS service action. This integration is also referred to as a Lambda proxy integration.</p> <p>HTTP: for integrating the route or method request with an HTTP endpoint. This integration is also referred to as the HTTP custom integration. Supported only for WebSocket APIs.</p> <p>HTTP_PROXY: for integrating the route or method request with an HTTP endpoint, with the client request passed through as-is. This is also referred to as HTTP proxy integration. For HTTP API private integrations, use an HTTP_PROXY integration.</p> <p>MOCK: for integrating the route or method request with API Gateway as a "loopback" endpoint without invoking any backend. Supported only for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute integration_uri
    #   <p>For a Lambda integration, specify the URI of a Lambda function.</p> <p>For an HTTP integration, specify a fully-qualified URL.</p> <p>For an HTTP API private integration, specify the ARN of an Application Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map service. If you specify the ARN of an AWS Cloud Map service, API Gateway uses DiscoverInstances to identify resources. You can use query parameters to target specific resources. To learn more, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html">DiscoverInstances</a>. For private integrations, all resources must be owned by the same AWS account.</p>
    #   @return [String]
    # @!attribute passthrough_behavior
    #   <p>Specifies the pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the requestTemplates property on the Integration resource. There are three valid values: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, and NEVER. Supported only for WebSocket APIs.</p> <p>WHEN_NO_MATCH passes the request body for unmapped content types through to the integration backend without transformation.</p> <p>NEVER rejects unmapped content types with an HTTP 415 Unsupported Media Type response.</p> <p>WHEN_NO_TEMPLATES allows pass-through when the integration has no content types mapped to templates. However, if there is at least one content type defined, unmapped content types will be rejected with the same HTTP 415 Unsupported Media Type response.</p>
    #   @return [String]
    # @!attribute payload_format_version
    #   <p>Specifies the format of the payload sent to an integration. Required for HTTP APIs. Supported values for Lambda proxy integrations are 1.0 and 2.0. For all other integrations, 1.0 is the only supported value. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-lambda.html">Working with AWS Lambda proxy integrations for HTTP APIs</a>.</p>
    #   @return [String]
    # @!attribute request_parameters
    #   <p>For WebSocket APIs, a key-value map specifying request parameters that are passed from the method request to the backend. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the backend. The method request parameter value must match the pattern of method.request.<replaceable>{location}</replaceable>.<replaceable>{name}</replaceable>
    #             , where 
    #               <replaceable>{location}</replaceable>
    #              is querystring, path, or header; and 
    #               <replaceable>{name}</replaceable>
    #              must be a valid and unique method request parameter name.</p> <p>For HTTP API integrations with a specified integrationSubtype, request parameters are a key-value map specifying parameters that are passed to AWS_PROXY integrations. You can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services.html">Working with AWS service integrations for HTTP APIs</a>.</p> <p>For HTTP API integrations, without a specified integrationSubtype request parameters are a key-value map specifying how to transform HTTP requests before sending them to the backend. The key should follow the pattern &lt;action&gt;:&lt;header|querystring|path&gt;.&lt;location&gt; where action can be append, overwrite or remove. For values, you can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html">Transforming API requests and responses</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute request_templates
    #   <p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value. Supported only for WebSocket APIs.</p>
    #   @return [Hash<String, String>]
    # @!attribute response_parameters
    #   <p>Supported only for HTTP APIs. You use response parameters to transform the HTTP response from a backend integration before returning the response to clients. Specify a key-value map from a selection key to response parameters. The selection key must be a valid HTTP status code within the range of 200-599. Response parameters are a key-value map. The key must match pattern &lt;action&gt;:&lt;header&gt;.&lt;location&gt; or overwrite.statuscode. The action can be append, overwrite or remove. The value can be a static value, or map to response data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html">Transforming API requests and responses</a>.</p>
    #   @return [Hash<String, Hash<String, String>>]
    # @!attribute template_selection_expression
    #   <p>The template selection expression for the integration.</p>
    #   @return [String]
    # @!attribute timeout_in_millis
    #   <p>Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and between 50 and 30,000 milliseconds for HTTP APIs. The default timeout is 29 seconds for WebSocket APIs and 30 seconds for HTTP APIs.</p>
    #   @return [Integer]
    # @!attribute tls_config
    #   <p>The TLS configuration for a private integration. If you specify a TLS configuration, private integration traffic uses the HTTPS protocol. Supported only for HTTP APIs.</p>
    #   @return [Types::TlsConfigInput]
    class UpdateIntegrationRequest < Struct.new(
      :api_id,
      :connection_id,
      :connection_type,
      :content_handling_strategy,
      :credentials_arn,
      :description,
      :integration_id,
      :integration_method,
      :integration_subtype,
      :integration_type,
      :integration_uri,
      :passthrough_behavior,
      :payload_format_version,
      :request_parameters,
      :request_templates,
      :response_parameters,
      :template_selection_expression,
      :timeout_in_millis,
      :tls_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Updates an IntegrationResponses.</p>
    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute content_handling_strategy
    #   <p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>
    #   @return [String]
    # @!attribute integration_id
    #   <p>The integration ID.</p>
    #   @return [String]
    # @!attribute integration_response_id
    #   <p>The integration response ID.</p>
    #   @return [String]
    # @!attribute integration_response_key
    #   <p>The integration response key.</p>
    #   @return [String]
    # @!attribute response_parameters
    #   <p>A key-value map specifying response parameters that are passed to the method response from the backend. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of method.response.header.<replaceable>{name}</replaceable>
    #                  , where name is a valid and unique header name. The mapped non-static value must match the pattern of integration.response.header.<replaceable>{name}</replaceable>
    #                   or integration.response.body.<replaceable>{JSON-expression}</replaceable>
    #                  , where 
    #                     <replaceable>{name}</replaceable>
    #                   is a valid and unique response header name and 
    #                     <replaceable>{JSON-expression}</replaceable>
    #                   is a valid JSON expression without the $ prefix.</p>
    #   @return [Hash<String, String>]
    # @!attribute response_templates
    #   <p>The collection of response templates for the integration response as a string-to-string map of key-value pairs. Response templates are represented as a key/value map, with a content-type as the key and a template as the value.</p>
    #   @return [Hash<String, String>]
    # @!attribute template_selection_expression
    #   <p>The template selection expression for the integration response. Supported only for WebSocket APIs.</p>
    #   @return [String]
    class UpdateIntegrationResponseRequest < Struct.new(
      :api_id,
      :content_handling_strategy,
      :integration_id,
      :integration_response_id,
      :integration_response_key,
      :response_parameters,
      :response_templates,
      :template_selection_expression,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute content_handling_strategy
    #   <p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>
    #   @return [String]
    # @!attribute integration_response_id
    #   <p>The integration response ID.</p>
    #   @return [String]
    # @!attribute integration_response_key
    #   <p>The integration response key.</p>
    #   @return [String]
    # @!attribute response_parameters
    #   <p>A key-value map specifying response parameters that are passed to the method response from the backend. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of method.response.header.{name}, where name is a valid and unique header name. The mapped non-static value must match the pattern of integration.response.header.{name} or integration.response.body.{JSON-expression}, where name is a valid and unique response header name and JSON-expression is a valid JSON expression without the $ prefix.</p>
    #   @return [Hash<String, String>]
    # @!attribute response_templates
    #   <p>The collection of response templates for the integration response as a string-to-string map of key-value pairs. Response templates are represented as a key/value map, with a content-type as the key and a template as the value.</p>
    #   @return [Hash<String, String>]
    # @!attribute template_selection_expression
    #   <p>The template selection expressions for the integration response.</p>
    #   @return [String]
    class UpdateIntegrationResponseResponse < Struct.new(
      :content_handling_strategy,
      :integration_response_id,
      :integration_response_key,
      :response_parameters,
      :response_templates,
      :template_selection_expression,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_gateway_managed
    #   <p>Specifies whether an integration is managed by API Gateway. If you created an API using using quick create, the resulting integration is managed by API Gateway. You can update a managed integration, but you can't delete it.</p>
    #   @return [Boolean]
    # @!attribute connection_id
    #   <p>The ID of the VPC link for a private integration. Supported only for HTTP APIs.</p>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The type of the network connection to the integration endpoint. Specify INTERNET for connections through the public routable internet or VPC_LINK for private connections between API Gateway and resources in a VPC. The default value is INTERNET.</p>
    #   @return [String]
    # @!attribute content_handling_strategy
    #   <p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>
    #   @return [String]
    # @!attribute credentials_arn
    #   <p>Specifies the credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Represents the description of an integration.</p>
    #   @return [String]
    # @!attribute integration_id
    #   <p>Represents the identifier of an integration.</p>
    #   @return [String]
    # @!attribute integration_method
    #   <p>Specifies the integration's HTTP method type.</p>
    #   @return [String]
    # @!attribute integration_response_selection_expression
    #   <p>The integration response selection expression for the integration. Supported only for WebSocket APIs. See <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-integration-response-selection-expressions">Integration Response Selection Expressions</a>.</p>
    #   @return [String]
    # @!attribute integration_subtype
    #   <p>Supported only for HTTP API AWS_PROXY integrations. Specifies the AWS service action to invoke. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html">Integration subtype reference</a>.</p>
    #   @return [String]
    # @!attribute integration_type
    #   <p>The integration type of an integration. One of the following:</p> <p>AWS: for integrating the route or method request with an AWS service action, including the Lambda function-invoking action. With the Lambda function-invoking action, this is referred to as the Lambda custom integration. With any other AWS service action, this is known as AWS integration. Supported only for WebSocket APIs.</p> <p>AWS_PROXY: for integrating the route or method request with a Lambda function or other AWS service action. This integration is also referred to as a Lambda proxy integration.</p> <p>HTTP: for integrating the route or method request with an HTTP endpoint. This integration is also referred to as the HTTP custom integration. Supported only for WebSocket APIs.</p> <p>HTTP_PROXY: for integrating the route or method request with an HTTP endpoint, with the client request passed through as-is. This is also referred to as HTTP proxy integration.</p> <p>MOCK: for integrating the route or method request with API Gateway as a "loopback" endpoint without invoking any backend. Supported only for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute integration_uri
    #   <p>For a Lambda integration, specify the URI of a Lambda function.</p> <p>For an HTTP integration, specify a fully-qualified URL.</p> <p>For an HTTP API private integration, specify the ARN of an Application Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map service. If you specify the ARN of an AWS Cloud Map service, API Gateway uses DiscoverInstances to identify resources. You can use query parameters to target specific resources. To learn more, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html">DiscoverInstances</a>. For private integrations, all resources must be owned by the same AWS account.</p>
    #   @return [String]
    # @!attribute passthrough_behavior
    #   <p>Specifies the pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the requestTemplates property on the Integration resource. There are three valid values: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, and NEVER. Supported only for WebSocket APIs.</p> <p>WHEN_NO_MATCH passes the request body for unmapped content types through to the integration backend without transformation.</p> <p>NEVER rejects unmapped content types with an HTTP 415 Unsupported Media Type response.</p> <p>WHEN_NO_TEMPLATES allows pass-through when the integration has no content types mapped to templates. However, if there is at least one content type defined, unmapped content types will be rejected with the same HTTP 415 Unsupported Media Type response.</p>
    #   @return [String]
    # @!attribute payload_format_version
    #   <p>Specifies the format of the payload sent to an integration. Required for HTTP APIs. Supported values for Lambda proxy integrations are 1.0 and 2.0. For all other integrations, 1.0 is the only supported value. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-lambda.html">Working with AWS Lambda proxy integrations for HTTP APIs</a>.</p>
    #   @return [String]
    # @!attribute request_parameters
    #   <p>For WebSocket APIs, a key-value map specifying request parameters that are passed from the method request to the backend. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the backend. The method request parameter value must match the pattern of method.request.<replaceable>{location}</replaceable>.<replaceable>{name}</replaceable>
    #             , where 
    #               <replaceable>{location}</replaceable>
    #              is querystring, path, or header; and 
    #               <replaceable>{name}</replaceable>
    #              must be a valid and unique method request parameter name.</p> <p>For HTTP API integrations with a specified integrationSubtype, request parameters are a key-value map specifying parameters that are passed to AWS_PROXY integrations. You can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services.html">Working with AWS service integrations for HTTP APIs</a>.</p> <p>For HTTP API integrations, without a specified integrationSubtype request parameters are a key-value map specifying how to transform HTTP requests before sending them to backend integrations. The key should follow the pattern &lt;action&gt;:&lt;header|querystring|path&gt;.&lt;location&gt;. The action can be append, overwrite or remove. For values, you can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html">Transforming API requests and responses</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute request_templates
    #   <p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value. Supported only for WebSocket APIs.</p>
    #   @return [Hash<String, String>]
    # @!attribute response_parameters
    #   <p>Supported only for HTTP APIs. You use response parameters to transform the HTTP response from a backend integration before returning the response to clients. Specify a key-value map from a selection key to response parameters. The selection key must be a valid HTTP status code within the range of 200-599. Response parameters are a key-value map. The key must match pattern &lt;action&gt;:&lt;header&gt;.&lt;location&gt; or overwrite.statuscode. The action can be append, overwrite or remove. The value can be a static value, or map to response data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html">Transforming API requests and responses</a>.</p>
    #   @return [Hash<String, Hash<String, String>>]
    # @!attribute template_selection_expression
    #   <p>The template selection expression for the integration. Supported only for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute timeout_in_millis
    #   <p>Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and between 50 and 30,000 milliseconds for HTTP APIs. The default timeout is 29 seconds for WebSocket APIs and 30 seconds for HTTP APIs.</p>
    #   @return [Integer]
    # @!attribute tls_config
    #   <p>The TLS configuration for a private integration. If you specify a TLS configuration, private integration traffic uses the HTTPS protocol. Supported only for HTTP APIs.</p>
    #   @return [Types::TlsConfig]
    class UpdateIntegrationResult < Struct.new(
      :api_gateway_managed,
      :connection_id,
      :connection_type,
      :content_handling_strategy,
      :credentials_arn,
      :description,
      :integration_id,
      :integration_method,
      :integration_response_selection_expression,
      :integration_subtype,
      :integration_type,
      :integration_uri,
      :passthrough_behavior,
      :payload_format_version,
      :request_parameters,
      :request_templates,
      :response_parameters,
      :template_selection_expression,
      :timeout_in_millis,
      :tls_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Updates a Model.</p>
    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The content-type for the model, for example, "application/json".</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the model.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The model ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the model.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>The schema for the model. For application/json models, this should be JSON schema draft 4 model.</p>
    #   @return [String]
    class UpdateModelRequest < Struct.new(
      :api_id,
      :content_type,
      :description,
      :model_id,
      :name,
      :schema,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute content_type
    #   <p>The content-type for the model, for example, "application/json".</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the model.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The model identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the model. Must be alphanumeric.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>The schema for the model. For application/json models, this should be JSON schema draft 4 model.</p>
    #   @return [String]
    class UpdateModelResponse < Struct.new(
      :content_type,
      :description,
      :model_id,
      :name,
      :schema,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Updates a Route.</p>
    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute api_key_required
    #   <p>Specifies whether an API key is required for the route. Supported only for WebSocket APIs.</p>
    #   @return [Boolean]
    # @!attribute authorization_scopes
    #   <p>The authorization scopes supported by this route.</p>
    #   @return [Array<String>]
    # @!attribute authorization_type
    #   <p>The authorization type for the route. For WebSocket APIs, valid values are NONE for open access, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer For HTTP APIs, valid values are NONE for open access, JWT for using JSON Web Tokens, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer.</p>
    #   @return [String]
    # @!attribute authorizer_id
    #   <p>The identifier of the Authorizer resource to be associated with this route. The authorizer identifier is generated by API Gateway when you created the authorizer.</p>
    #   @return [String]
    # @!attribute model_selection_expression
    #   <p>The model selection expression for the route. Supported only for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute operation_name
    #   <p>The operation name for the route.</p>
    #   @return [String]
    # @!attribute request_models
    #   <p>The request models for the route. Supported only for WebSocket APIs.</p>
    #   @return [Hash<String, String>]
    # @!attribute request_parameters
    #   <p>The request parameters for the route. Supported only for WebSocket APIs.</p>
    #   @return [Hash<String, Types::ParameterConstraints>]
    # @!attribute route_id
    #   <p>The route ID.</p>
    #   @return [String]
    # @!attribute route_key
    #   <p>The route key for the route.</p>
    #   @return [String]
    # @!attribute route_response_selection_expression
    #   <p>The route response selection expression for the route. Supported only for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The target for the route.</p>
    #   @return [String]
    class UpdateRouteRequest < Struct.new(
      :api_id,
      :api_key_required,
      :authorization_scopes,
      :authorization_type,
      :authorizer_id,
      :model_selection_expression,
      :operation_name,
      :request_models,
      :request_parameters,
      :route_id,
      :route_key,
      :route_response_selection_expression,
      :target,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Updates a RouteResponse.</p>
    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute model_selection_expression
    #   <p>The model selection expression for the route response. Supported only for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute response_models
    #   <p>The response models for the route response.</p>
    #   @return [Hash<String, String>]
    # @!attribute response_parameters
    #   <p>The route response parameters.</p>
    #   @return [Hash<String, Types::ParameterConstraints>]
    # @!attribute route_id
    #   <p>The route ID.</p>
    #   @return [String]
    # @!attribute route_response_id
    #   <p>The route response ID.</p>
    #   @return [String]
    # @!attribute route_response_key
    #   <p>The route response key.</p>
    #   @return [String]
    class UpdateRouteResponseRequest < Struct.new(
      :api_id,
      :model_selection_expression,
      :response_models,
      :response_parameters,
      :route_id,
      :route_response_id,
      :route_response_key,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_selection_expression
    #   <p>Represents the model selection expression of a route response. Supported only for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute response_models
    #   <p>Represents the response models of a route response.</p>
    #   @return [Hash<String, String>]
    # @!attribute response_parameters
    #   <p>Represents the response parameters of a route response.</p>
    #   @return [Hash<String, Types::ParameterConstraints>]
    # @!attribute route_response_id
    #   <p>Represents the identifier of a route response.</p>
    #   @return [String]
    # @!attribute route_response_key
    #   <p>Represents the route response key of a route response.</p>
    #   @return [String]
    class UpdateRouteResponseResponse < Struct.new(
      :model_selection_expression,
      :response_models,
      :response_parameters,
      :route_response_id,
      :route_response_key,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_gateway_managed
    #   <p>Specifies whether a route is managed by API Gateway. If you created an API using quick create, the $default route is managed by API Gateway. You can't modify the $default route key.</p>
    #   @return [Boolean]
    # @!attribute api_key_required
    #   <p>Specifies whether an API key is required for this route. Supported only for WebSocket APIs.</p>
    #   @return [Boolean]
    # @!attribute authorization_scopes
    #   <p>A list of authorization scopes configured on a route. The scopes are used with a JWT authorizer to authorize the method invocation. The authorization works by matching the route scopes against the scopes parsed from the access token in the incoming request. The method invocation is authorized if any route scope matches a claimed scope in the access token. Otherwise, the invocation is not authorized. When the route scope is configured, the client must provide an access token instead of an identity token for authorization purposes.</p>
    #   @return [Array<String>]
    # @!attribute authorization_type
    #   <p>The authorization type for the route. For WebSocket APIs, valid values are NONE for open access, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer For HTTP APIs, valid values are NONE for open access, JWT for using JSON Web Tokens, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer.</p>
    #   @return [String]
    # @!attribute authorizer_id
    #   <p>The identifier of the Authorizer resource to be associated with this route. The authorizer identifier is generated by API Gateway when you created the authorizer.</p>
    #   @return [String]
    # @!attribute model_selection_expression
    #   <p>The model selection expression for the route. Supported only for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute operation_name
    #   <p>The operation name for the route.</p>
    #   @return [String]
    # @!attribute request_models
    #   <p>The request models for the route. Supported only for WebSocket APIs.</p>
    #   @return [Hash<String, String>]
    # @!attribute request_parameters
    #   <p>The request parameters for the route. Supported only for WebSocket APIs.</p>
    #   @return [Hash<String, Types::ParameterConstraints>]
    # @!attribute route_id
    #   <p>The route ID.</p>
    #   @return [String]
    # @!attribute route_key
    #   <p>The route key for the route.</p>
    #   @return [String]
    # @!attribute route_response_selection_expression
    #   <p>The route response selection expression for the route. Supported only for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The target for the route.</p>
    #   @return [String]
    class UpdateRouteResult < Struct.new(
      :api_gateway_managed,
      :api_key_required,
      :authorization_scopes,
      :authorization_type,
      :authorizer_id,
      :model_selection_expression,
      :operation_name,
      :request_models,
      :request_parameters,
      :route_id,
      :route_key,
      :route_response_selection_expression,
      :target,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Updates a Stage.</p>
    # @!attribute access_log_settings
    #   <p>Settings for logging access in this stage.</p>
    #   @return [Types::AccessLogSettings]
    # @!attribute api_id
    #   <p>The API identifier.</p>
    #   @return [String]
    # @!attribute auto_deploy
    #   <p>Specifies whether updates to an API automatically trigger a new deployment. The default value is false.</p>
    #   @return [Boolean]
    # @!attribute client_certificate_id
    #   <p>The identifier of a client certificate for a Stage.</p>
    #   @return [String]
    # @!attribute default_route_settings
    #   <p>The default route settings for the stage.</p>
    #   @return [Types::RouteSettings]
    # @!attribute deployment_id
    #   <p>The deployment identifier for the API stage. Can't be updated if autoDeploy is enabled.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the API stage.</p>
    #   @return [String]
    # @!attribute route_settings
    #   <p>Route settings for the stage.</p>
    #   @return [Hash<String, Types::RouteSettings>]
    # @!attribute stage_name
    #   <p>The stage name. Stage names can contain only alphanumeric characters, hyphens, and underscores, or be $default. Maximum length is 128 characters.</p>
    #   @return [String]
    # @!attribute stage_variables
    #   <p>A map that defines the stage variables for a Stage. Variable names can have alphanumeric and underscore characters, and the values must match [A-Za-z0-9-._~:/?#&amp;=,]+.</p>
    #   @return [Hash<String, String>]
    class UpdateStageRequest < Struct.new(
      :access_log_settings,
      :api_id,
      :auto_deploy,
      :client_certificate_id,
      :default_route_settings,
      :deployment_id,
      :description,
      :route_settings,
      :stage_name,
      :stage_variables,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute access_log_settings
    #   <p>Settings for logging access in this stage.</p>
    #   @return [Types::AccessLogSettings]
    # @!attribute api_gateway_managed
    #   <p>Specifies whether a stage is managed by API Gateway. If you created an API using quick create, the $default stage is managed by API Gateway. You can't modify the $default stage.</p>
    #   @return [Boolean]
    # @!attribute auto_deploy
    #   <p>Specifies whether updates to an API automatically trigger a new deployment. The default value is false.</p>
    #   @return [Boolean]
    # @!attribute client_certificate_id
    #   <p>The identifier of a client certificate for a Stage. Supported only for WebSocket APIs.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The timestamp when the stage was created.</p>
    #   @return [Time]
    # @!attribute default_route_settings
    #   <p>Default route settings for the stage.</p>
    #   @return [Types::RouteSettings]
    # @!attribute deployment_id
    #   <p>The identifier of the Deployment that the Stage is associated with. Can't be updated if autoDeploy is enabled.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the stage.</p>
    #   @return [String]
    # @!attribute last_deployment_status_message
    #   <p>Describes the status of the last deployment of a stage. Supported only for stages with autoDeploy enabled.</p>
    #   @return [String]
    # @!attribute last_updated_date
    #   <p>The timestamp when the stage was last updated.</p>
    #   @return [Time]
    # @!attribute route_settings
    #   <p>Route settings for the stage, by routeKey.</p>
    #   @return [Hash<String, Types::RouteSettings>]
    # @!attribute stage_name
    #   <p>The name of the stage.</p>
    #   @return [String]
    # @!attribute stage_variables
    #   <p>A map that defines the stage variables for a stage resource. Variable names can have alphanumeric and underscore characters, and the values must match [A-Za-z0-9-._~:/?#&amp;=,]+.</p>
    #   @return [Hash<String, String>]
    # @!attribute tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #   @return [Hash<String, String>]
    class UpdateStageResponse < Struct.new(
      :access_log_settings,
      :api_gateway_managed,
      :auto_deploy,
      :client_certificate_id,
      :created_date,
      :default_route_settings,
      :deployment_id,
      :description,
      :last_deployment_status_message,
      :last_updated_date,
      :route_settings,
      :stage_name,
      :stage_variables,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Updates a VPC link.</p>
    # @!attribute name
    #   <p>The name of the VPC link.</p>
    #   @return [String]
    # @!attribute vpc_link_id
    #   <p>The ID of the VPC link.</p>
    #   @return [String]
    class UpdateVpcLinkRequest < Struct.new(
      :name,
      :vpc_link_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute created_date
    #   <p>The timestamp when the VPC link was created.</p>
    #   @return [Time]
    # @!attribute name
    #   <p>The name of the VPC link.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>A list of security group IDs for the VPC link.</p>
    #   @return [Array<String>]
    # @!attribute subnet_ids
    #   <p>A list of subnet IDs to include in the VPC link.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>Tags for the VPC link.</p>
    #   @return [Hash<String, String>]
    # @!attribute vpc_link_id
    #   <p>The ID of the VPC link.</p>
    #   @return [String]
    # @!attribute vpc_link_status
    #   <p>The status of the VPC link.</p>
    #   @return [String]
    # @!attribute vpc_link_status_message
    #   <p>A message summarizing the cause of the status of the VPC link.</p>
    #   @return [String]
    # @!attribute vpc_link_version
    #   <p>The version of the VPC link.</p>
    #   @return [String]
    class UpdateVpcLinkResponse < Struct.new(
      :created_date,
      :name,
      :security_group_ids,
      :subnet_ids,
      :tags,
      :vpc_link_id,
      :vpc_link_status,
      :vpc_link_status_message,
      :vpc_link_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a VPC link.</p>
    # @!attribute created_date
    #   <p>The timestamp when the VPC link was created.</p>
    #   @return [Time]
    # @!attribute name
    #   <p>The name of the VPC link.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>A list of security group IDs for the VPC link.</p>
    #   @return [Array<String>]
    # @!attribute subnet_ids
    #   <p>A list of subnet IDs to include in the VPC link.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>Tags for the VPC link.</p>
    #   @return [Hash<String, String>]
    # @!attribute vpc_link_id
    #   <p>The ID of the VPC link.</p>
    #   @return [String]
    # @!attribute vpc_link_status
    #   <p>The status of the VPC link.</p>
    #   @return [String]
    # @!attribute vpc_link_status_message
    #   <p>A message summarizing the cause of the status of the VPC link.</p>
    #   @return [String]
    # @!attribute vpc_link_version
    #   <p>The version of the VPC link.</p>
    #   @return [String]
    class VpcLink < Struct.new(
      :created_date,
      :name,
      :security_group_ids,
      :subnet_ids,
      :tags,
      :vpc_link_id,
      :vpc_link_status,
      :vpc_link_status_message,
      :vpc_link_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The status of the VPC link.</p>
    module VpcLinkStatus
      PENDING = 'PENDING'
      AVAILABLE = 'AVAILABLE'
      DELETING = 'DELETING'
      FAILED = 'FAILED'
      INACTIVE = 'INACTIVE'
    end

    # <p>The version of the VPC link.</p>
    module VpcLinkVersion
      V2 = 'V2'
    end

  end
end
