# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ApiGatewayV2
  module Types

    # @!attribute [rw] message
    #   @return [String]
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for logging access in a stage.
    #
    # @note When making an API call, you may pass AccessLogSettings
    #   data as a hash:
    #
    #       {
    #         destination_arn: "Arn",
    #         format: "StringWithLengthBetween1And1024",
    #       }
    #
    # @!attribute [rw] destination_arn
    #   The ARN of the CloudWatch Logs log group to receive access logs.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   A single line format of the access logs of data, as specified by
    #   selected $context variables. The format must include at least
    #   $context.requestId.
    #   @return [String]
    #
    class AccessLogSettings < Struct.new(
      :destination_arn,
      :format)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an API.
    #
    # @!attribute [rw] api_endpoint
    #   The URI of the API, of the form
    #   \\\{api-id\\}.execute-api.\\\{region\\}.amazonaws.com. The stage
    #   name is typically appended to this URI to form a complete path to a
    #   deployed API stage.
    #   @return [String]
    #
    # @!attribute [rw] api_gateway_managed
    #   Specifies whether an API is managed by API Gateway. You can't
    #   update or delete a managed API by using API Gateway. A managed API
    #   can be deleted only through the tooling or service that created it.
    #   @return [Boolean]
    #
    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] api_key_selection_expression
    #   An API key selection expression. Supported only for WebSocket APIs.
    #   See [API Key Selection Expressions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] cors_configuration
    #   A CORS configuration. Supported only for HTTP APIs.
    #   @return [Types::Cors]
    #
    # @!attribute [rw] created_date
    #   The timestamp when the API was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the API.
    #   @return [String]
    #
    # @!attribute [rw] disable_schema_validation
    #   Avoid validating models when creating a deployment. Supported only
    #   for WebSocket APIs.
    #   @return [Boolean]
    #
    # @!attribute [rw] disable_execute_api_endpoint
    #   Specifies whether clients can invoke your API by using the default
    #   execute-api endpoint. By default, clients can invoke your API with
    #   the default
    #   https://\\\{api\_id\\}.execute-api.\\\{region\\}.amazonaws.com
    #   endpoint. To require that clients use a custom domain name to invoke
    #   your API, disable the default endpoint.
    #   @return [Boolean]
    #
    # @!attribute [rw] import_info
    #   The validation information during API import. This may include
    #   particular properties of your OpenAPI definition which are ignored
    #   during import. Supported only for HTTP APIs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The name of the API.
    #   @return [String]
    #
    # @!attribute [rw] protocol_type
    #   The API protocol.
    #   @return [String]
    #
    # @!attribute [rw] route_selection_expression
    #   The route selection expression for the API. For HTTP APIs, the
    #   routeSelectionExpression must be $\\\{request.method\\}
    #   $\\\{request.path\\}. If not provided, this will be the default for
    #   HTTP APIs. This property is required for WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of tags associated with the API.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] version
    #   A version identifier for the API.
    #   @return [String]
    #
    # @!attribute [rw] warnings
    #   The warning messages reported when failonwarnings is turned on
    #   during API import.
    #   @return [Array<String>]
    #
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
      :name,
      :protocol_type,
      :route_selection_expression,
      :tags,
      :version,
      :warnings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an API mapping.
    #
    # @!attribute [rw] api_id
    #   The API identifier.
    #   @return [String]
    #
    # @!attribute [rw] api_mapping_id
    #   The API mapping identifier.
    #   @return [String]
    #
    # @!attribute [rw] api_mapping_key
    #   The API mapping key.
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   The API stage.
    #   @return [String]
    #
    class ApiMapping < Struct.new(
      :api_id,
      :api_mapping_id,
      :api_mapping_key,
      :stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a collection of ApiMappings resources.
    #
    # @!attribute [rw] items
    #   The elements from this collection.
    #   @return [Array<Types::ApiMapping>]
    #
    # @!attribute [rw] next_token
    #   The next page of elements from this collection. Not valid for the
    #   last element of the collection.
    #   @return [String]
    #
    class ApiMappings < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a collection of APIs.
    #
    # @!attribute [rw] items
    #   The elements from this collection.
    #   @return [Array<Types::Api>]
    #
    # @!attribute [rw] next_token
    #   The next page of elements from this collection. Not valid for the
    #   last element of the collection.
    #   @return [String]
    #
    class Apis < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an authorizer.
    #
    # @!attribute [rw] authorizer_credentials_arn
    #   Specifies the required credentials as an IAM role for API Gateway to
    #   invoke the authorizer. To specify an IAM role for API Gateway to
    #   assume, use the role's Amazon Resource Name (ARN). To use
    #   resource-based permissions on the Lambda function, don't specify
    #   this parameter. Supported only for REQUEST authorizers.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_id
    #   The authorizer identifier.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_result_ttl_in_seconds
    #   The time to live (TTL) for cached authorizer results, in seconds. If
    #   it equals 0, authorization caching is disabled. If it is greater
    #   than 0, API Gateway caches authorizer responses. The maximum value
    #   is 3600, or 1 hour. Supported only for HTTP API Lambda authorizers.
    #   @return [Integer]
    #
    # @!attribute [rw] authorizer_type
    #   The authorizer type. Specify REQUEST for a Lambda function using
    #   incoming request parameters. Specify JWT to use JSON Web Tokens
    #   (supported only for HTTP APIs).
    #   @return [String]
    #
    # @!attribute [rw] authorizer_uri
    #   The authorizer's Uniform Resource Identifier (URI). For REQUEST
    #   authorizers, this must be a well-formed Lambda function URI, for
    #   example,
    #   arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:*\\\{account\_id\\}*\:function:*\\\{lambda\_function\_name\\}*/invocations.
    #   In general, the URI has this form:
    #   arn:aws:apigateway:*\\\{region\\}*\:lambda:path/*\\\{service\_api\\}*
    #   , where <replaceable />
    #
    #   \\\{region\\} is the same as the region hosting the Lambda function,
    #   path indicates that the remaining substring in the URI should be
    #   treated as the path to the resource, including the initial /. For
    #   Lambda functions, this is usually of the form
    #   /2015-03-31/functions/\[FunctionARN\]/invocations. Supported only
    #   for REQUEST authorizers.
    #   @return [String]
    #
    # @!attribute [rw] identity_source
    #   The identity source for which authorization is requested.
    #
    #   For a REQUEST authorizer, this is optional. The value is a set of
    #   one or more mapping expressions of the specified request parameters.
    #   The identity source can be headers, query string parameters, stage
    #   variables, and context parameters. For example, if an Auth header
    #   and a Name query string parameter are defined as identity sources,
    #   this value is route.request.header.Auth,
    #   route.request.querystring.Name for WebSocket APIs. For HTTP APIs,
    #   use selection expressions prefixed with $, for example,
    #   $request.header.Auth, $request.querystring.Name. These parameters
    #   are used to perform runtime validation for Lambda-based authorizers
    #   by verifying all of the identity-related request parameters are
    #   present in the request, not null, and non-empty. Only when this is
    #   true does the authorizer invoke the authorizer Lambda function.
    #   Otherwise, it returns a 401 Unauthorized response without calling
    #   the Lambda function. For HTTP APIs, identity sources are also used
    #   as the cache key when caching is enabled. To learn more, see
    #   [Working with AWS Lambda authorizers for HTTP APIs][1].
    #
    #   For JWT, a single entry that specifies where to extract the JSON Web
    #   Token (JWT) from inbound requests. Currently only header-based and
    #   query parameter-based selections are supported, for example
    #   $request.header.Authorization.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] identity_validation_expression
    #   The validation expression does not apply to the REQUEST authorizer.
    #   @return [String]
    #
    # @!attribute [rw] jwt_configuration
    #   Represents the configuration of a JWT authorizer. Required for the
    #   JWT authorizer type. Supported only for HTTP APIs.
    #   @return [Types::JWTConfiguration]
    #
    # @!attribute [rw] name
    #   The name of the authorizer.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_payload_format_version
    #   Specifies the format of the payload sent to an HTTP API Lambda
    #   authorizer. Required for HTTP API Lambda authorizers. Supported
    #   values are 1.0 and 2.0. To learn more, see [Working with AWS Lambda
    #   authorizers for HTTP APIs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html
    #   @return [String]
    #
    # @!attribute [rw] enable_simple_responses
    #   Specifies whether a Lambda authorizer returns a response in a simple
    #   format. If enabled, the Lambda authorizer can return a boolean value
    #   instead of an IAM policy. Supported only for HTTP APIs. To learn
    #   more, see [Working with AWS Lambda authorizers for HTTP APIs][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html
    #   @return [Boolean]
    #
    class Authorizer < Struct.new(
      :authorizer_credentials_arn,
      :authorizer_id,
      :authorizer_result_ttl_in_seconds,
      :authorizer_type,
      :authorizer_uri,
      :identity_source,
      :identity_validation_expression,
      :jwt_configuration,
      :name,
      :authorizer_payload_format_version,
      :enable_simple_responses)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a collection of authorizers.
    #
    # @!attribute [rw] items
    #   The elements from this collection.
    #   @return [Array<Types::Authorizer>]
    #
    # @!attribute [rw] next_token
    #   The next page of elements from this collection. Not valid for the
    #   last element of the collection.
    #   @return [String]
    #
    class Authorizers < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request is not valid, for example, the input is incomplete or
    # incorrect. See the accompanying error message for details.
    #
    # @!attribute [rw] message
    #   Describes the error encountered.
    #   @return [String]
    #
    class BadRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested operation would cause a conflict with the current state
    # of a service resource associated with the request. Resolve the
    # conflict before retrying this request. See the accompanying error
    # message for details.
    #
    # @!attribute [rw] message
    #   Describes the error encountered.
    #   @return [String]
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a CORS configuration. Supported only for HTTP APIs. See
    # [Configuring CORS][1] for more information.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html
    #
    # @note When making an API call, you may pass Cors
    #   data as a hash:
    #
    #       {
    #         allow_credentials: false,
    #         allow_headers: ["__string"],
    #         allow_methods: ["StringWithLengthBetween1And64"],
    #         allow_origins: ["__string"],
    #         expose_headers: ["__string"],
    #         max_age: 1,
    #       }
    #
    # @!attribute [rw] allow_credentials
    #   Specifies whether credentials are included in the CORS request.
    #   Supported only for HTTP APIs.
    #   @return [Boolean]
    #
    # @!attribute [rw] allow_headers
    #   Represents a collection of allowed headers. Supported only for HTTP
    #   APIs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allow_methods
    #   Represents a collection of allowed HTTP methods. Supported only for
    #   HTTP APIs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allow_origins
    #   Represents a collection of allowed origins. Supported only for HTTP
    #   APIs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] expose_headers
    #   Represents a collection of exposed headers. Supported only for HTTP
    #   APIs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_age
    #   The number of seconds that the browser should cache preflight
    #   request results. Supported only for HTTP APIs.
    #   @return [Integer]
    #
    class Cors < Struct.new(
      :allow_credentials,
      :allow_headers,
      :allow_methods,
      :allow_origins,
      :expose_headers,
      :max_age)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input parameters for a CreateApi request.
    #
    # @!attribute [rw] api_key_selection_expression
    #   An API key selection expression. Supported only for WebSocket APIs.
    #   See [API Key Selection Expressions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] cors_configuration
    #   A CORS configuration. Supported only for HTTP APIs. See [Configuring
    #   CORS][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html
    #   @return [Types::Cors]
    #
    # @!attribute [rw] credentials_arn
    #   This property is part of quick create. It specifies the credentials
    #   required for the integration, if any. For a Lambda integration,
    #   three options are available. To specify an IAM Role for API Gateway
    #   to assume, use the role's Amazon Resource Name (ARN). To require
    #   that the caller's identity be passed through from the request,
    #   specify arn:aws:iam::*:user/*. To use resource-based permissions
    #   on supported AWS services, specify null. Currently, this property is
    #   not used for HTTP integrations. Supported only for HTTP APIs.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the API.
    #   @return [String]
    #
    # @!attribute [rw] disable_schema_validation
    #   Avoid validating models when creating a deployment. Supported only
    #   for WebSocket APIs.
    #   @return [Boolean]
    #
    # @!attribute [rw] disable_execute_api_endpoint
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   The name of the API.
    #   @return [String]
    #
    # @!attribute [rw] protocol_type
    #   The API protocol.
    #   @return [String]
    #
    # @!attribute [rw] route_key
    #   This property is part of quick create. If you don't specify a
    #   routeKey, a default route of $default is created. The $default route
    #   acts as a catch-all for any request made to your API, for a
    #   particular stage. The $default route key can't be modified. You can
    #   add routes after creating the API, and you can update the route keys
    #   of additional routes. Supported only for HTTP APIs.
    #   @return [String]
    #
    # @!attribute [rw] route_selection_expression
    #   The route selection expression for the API. For HTTP APIs, the
    #   routeSelectionExpression must be $\\\{request.method\\}
    #   $\\\{request.path\\}. If not provided, this will be the default for
    #   HTTP APIs. This property is required for WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The collection of tags. Each tag element is associated with a given
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] target
    #   This property is part of quick create. Quick create produces an API
    #   with an integration, a default catch-all route, and a default stage
    #   which is configured to automatically deploy changes. For HTTP
    #   integrations, specify a fully qualified URL. For Lambda
    #   integrations, specify a function ARN. The type of the integration
    #   will be HTTP\_PROXY or AWS\_PROXY, respectively. Supported only for
    #   HTTP APIs.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   A version identifier for the API.
    #   @return [String]
    #
    class CreateApiInput < Struct.new(
      :api_key_selection_expression,
      :cors_configuration,
      :credentials_arn,
      :description,
      :disable_schema_validation,
      :disable_execute_api_endpoint,
      :name,
      :protocol_type,
      :route_key,
      :route_selection_expression,
      :tags,
      :target,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input parameters for a CreateApiMapping request.
    #
    # @!attribute [rw] api_id
    #   The API identifier.
    #   @return [String]
    #
    # @!attribute [rw] api_mapping_key
    #   The API mapping key.
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   The API stage.
    #   @return [String]
    #
    class CreateApiMappingInput < Struct.new(
      :api_id,
      :api_mapping_key,
      :stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateApiMappingRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "Id", # required
    #         api_mapping_key: "SelectionKey",
    #         domain_name: "__string", # required
    #         stage: "StringWithLengthBetween1And128", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] api_mapping_key
    #   After evaluating a selection expression, the result is compared
    #   against one or more selection keys to find a matching key. See
    #   [Selection Expressions][1] for a list of expressions and each
    #   expression's associated selection key type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    class CreateApiMappingRequest < Struct.new(
      :api_id,
      :api_mapping_key,
      :domain_name,
      :stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] api_mapping_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] api_mapping_key
    #   After evaluating a selection expression, the result is compared
    #   against one or more selection keys to find a matching key. See
    #   [Selection Expressions][1] for a list of expressions and each
    #   expression's associated selection key type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    class CreateApiMappingResponse < Struct.new(
      :api_id,
      :api_mapping_id,
      :api_mapping_key,
      :stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateApiRequest
    #   data as a hash:
    #
    #       {
    #         api_key_selection_expression: "SelectionExpression",
    #         cors_configuration: {
    #           allow_credentials: false,
    #           allow_headers: ["__string"],
    #           allow_methods: ["StringWithLengthBetween1And64"],
    #           allow_origins: ["__string"],
    #           expose_headers: ["__string"],
    #           max_age: 1,
    #         },
    #         credentials_arn: "Arn",
    #         description: "StringWithLengthBetween0And1024",
    #         disable_schema_validation: false,
    #         disable_execute_api_endpoint: false,
    #         name: "StringWithLengthBetween1And128", # required
    #         protocol_type: "WEBSOCKET", # required, accepts WEBSOCKET, HTTP
    #         route_key: "SelectionKey",
    #         route_selection_expression: "SelectionExpression",
    #         tags: {
    #           "__string" => "StringWithLengthBetween1And1600",
    #         },
    #         target: "UriWithLengthBetween1And2048",
    #         version: "StringWithLengthBetween1And64",
    #       }
    #
    # @!attribute [rw] api_key_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] cors_configuration
    #   Represents a CORS configuration. Supported only for HTTP APIs. See
    #   [Configuring CORS][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html
    #   @return [Types::Cors]
    #
    # @!attribute [rw] credentials_arn
    #   Represents an Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    # @!attribute [rw] disable_schema_validation
    #   @return [Boolean]
    #
    # @!attribute [rw] disable_execute_api_endpoint
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] protocol_type
    #   Represents a protocol type.
    #   @return [String]
    #
    # @!attribute [rw] route_key
    #   After evaluating a selection expression, the result is compared
    #   against one or more selection keys to find a matching key. See
    #   [Selection Expressions][1] for a list of expressions and each
    #   expression's associated selection key type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] route_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Represents a collection of tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] target
    #   A string representation of a URI with a length between \[1-2048\].
    #   @return [String]
    #
    # @!attribute [rw] version
    #   A string with a length between \[1-64\].
    #   @return [String]
    #
    class CreateApiRequest < Struct.new(
      :api_key_selection_expression,
      :cors_configuration,
      :credentials_arn,
      :description,
      :disable_schema_validation,
      :disable_execute_api_endpoint,
      :name,
      :protocol_type,
      :route_key,
      :route_selection_expression,
      :tags,
      :target,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_endpoint
    #   @return [String]
    #
    # @!attribute [rw] api_gateway_managed
    #   @return [Boolean]
    #
    # @!attribute [rw] api_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] api_key_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] cors_configuration
    #   Represents a CORS configuration. Supported only for HTTP APIs. See
    #   [Configuring CORS][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html
    #   @return [Types::Cors]
    #
    # @!attribute [rw] created_date
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    # @!attribute [rw] disable_schema_validation
    #   @return [Boolean]
    #
    # @!attribute [rw] disable_execute_api_endpoint
    #   @return [Boolean]
    #
    # @!attribute [rw] import_info
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] protocol_type
    #   Represents a protocol type.
    #   @return [String]
    #
    # @!attribute [rw] route_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Represents a collection of tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] version
    #   A string with a length between \[1-64\].
    #   @return [String]
    #
    # @!attribute [rw] warnings
    #   @return [Array<String>]
    #
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
      :name,
      :protocol_type,
      :route_selection_expression,
      :tags,
      :version,
      :warnings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input parameters for a CreateAuthorizer request.
    #
    # @!attribute [rw] authorizer_credentials_arn
    #   Specifies the required credentials as an IAM role for API Gateway to
    #   invoke the authorizer. To specify an IAM role for API Gateway to
    #   assume, use the role's Amazon Resource Name (ARN). To use
    #   resource-based permissions on the Lambda function, don't specify
    #   this parameter. Supported only for REQUEST authorizers.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_result_ttl_in_seconds
    #   The time to live (TTL) for cached authorizer results, in seconds. If
    #   it equals 0, authorization caching is disabled. If it is greater
    #   than 0, API Gateway caches authorizer responses. The maximum value
    #   is 3600, or 1 hour. Supported only for HTTP API Lambda authorizers.
    #   @return [Integer]
    #
    # @!attribute [rw] authorizer_type
    #   The authorizer type. Specify REQUEST for a Lambda function using
    #   incoming request parameters. Specify JWT to use JSON Web Tokens
    #   (supported only for HTTP APIs).
    #   @return [String]
    #
    # @!attribute [rw] authorizer_uri
    #   The authorizer's Uniform Resource Identifier (URI). For REQUEST
    #   authorizers, this must be a well-formed Lambda function URI, for
    #   example,
    #   arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:*\\\{account\_id\\}*\:function:*\\\{lambda\_function\_name\\}*/invocations.
    #   In general, the URI has this form:
    #   arn:aws:apigateway:*\\\{region\\}*\:lambda:path/*\\\{service\_api\\}*
    #   , where <replaceable />
    #
    #   \\\{region\\} is the same as the region hosting the Lambda function,
    #   path indicates that the remaining substring in the URI should be
    #   treated as the path to the resource, including the initial /. For
    #   Lambda functions, this is usually of the form
    #   /2015-03-31/functions/\[FunctionARN\]/invocations. Supported only
    #   for REQUEST authorizers.
    #   @return [String]
    #
    # @!attribute [rw] identity_source
    #   The identity source for which authorization is requested.
    #
    #   For a REQUEST authorizer, this is optional. The value is a set of
    #   one or more mapping expressions of the specified request parameters.
    #   The identity source can be headers, query string parameters, stage
    #   variables, and context parameters. For example, if an Auth header
    #   and a Name query string parameter are defined as identity sources,
    #   this value is route.request.header.Auth,
    #   route.request.querystring.Name for WebSocket APIs. For HTTP APIs,
    #   use selection expressions prefixed with $, for example,
    #   $request.header.Auth, $request.querystring.Name. These parameters
    #   are used to perform runtime validation for Lambda-based authorizers
    #   by verifying all of the identity-related request parameters are
    #   present in the request, not null, and non-empty. Only when this is
    #   true does the authorizer invoke the authorizer Lambda function.
    #   Otherwise, it returns a 401 Unauthorized response without calling
    #   the Lambda function. For HTTP APIs, identity sources are also used
    #   as the cache key when caching is enabled. To learn more, see
    #   [Working with AWS Lambda authorizers for HTTP APIs][1].
    #
    #   For JWT, a single entry that specifies where to extract the JSON Web
    #   Token (JWT) from inbound requests. Currently only header-based and
    #   query parameter-based selections are supported, for example
    #   $request.header.Authorization.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] identity_validation_expression
    #   This parameter is not used.
    #   @return [String]
    #
    # @!attribute [rw] jwt_configuration
    #   Represents the configuration of a JWT authorizer. Required for the
    #   JWT authorizer type. Supported only for HTTP APIs.
    #   @return [Types::JWTConfiguration]
    #
    # @!attribute [rw] name
    #   The name of the authorizer.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_payload_format_version
    #   Specifies the format of the payload sent to an HTTP API Lambda
    #   authorizer. Required for HTTP API Lambda authorizers. Supported
    #   values are 1.0 and 2.0. To learn more, see [Working with AWS Lambda
    #   authorizers for HTTP APIs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html
    #   @return [String]
    #
    # @!attribute [rw] enable_simple_responses
    #   Specifies whether a Lambda authorizer returns a response in a simple
    #   format. By default, a Lambda authorizer must return an IAM policy.
    #   If enabled, the Lambda authorizer can return a boolean value instead
    #   of an IAM policy. Supported only for HTTP APIs. To learn more, see
    #   [Working with AWS Lambda authorizers for HTTP APIs][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html
    #   @return [Boolean]
    #
    class CreateAuthorizerInput < Struct.new(
      :authorizer_credentials_arn,
      :authorizer_result_ttl_in_seconds,
      :authorizer_type,
      :authorizer_uri,
      :identity_source,
      :identity_validation_expression,
      :jwt_configuration,
      :name,
      :authorizer_payload_format_version,
      :enable_simple_responses)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAuthorizerRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         authorizer_credentials_arn: "Arn",
    #         authorizer_result_ttl_in_seconds: 1,
    #         authorizer_type: "REQUEST", # required, accepts REQUEST, JWT
    #         authorizer_uri: "UriWithLengthBetween1And2048",
    #         identity_source: ["__string"], # required
    #         identity_validation_expression: "StringWithLengthBetween0And1024",
    #         jwt_configuration: {
    #           audience: ["__string"],
    #           issuer: "UriWithLengthBetween1And2048",
    #         },
    #         name: "StringWithLengthBetween1And128", # required
    #         authorizer_payload_format_version: "StringWithLengthBetween1And64",
    #         enable_simple_responses: false,
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] authorizer_credentials_arn
    #   Represents an Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] authorizer_result_ttl_in_seconds
    #   An integer with a value between \[0-3600\].
    #   @return [Integer]
    #
    # @!attribute [rw] authorizer_type
    #   The authorizer type. Specify REQUEST for a Lambda function using
    #   incoming request parameters. Specify JWT to use JSON Web Tokens
    #   (supported only for HTTP APIs).
    #   @return [String]
    #
    # @!attribute [rw] authorizer_uri
    #   A string representation of a URI with a length between \[1-2048\].
    #   @return [String]
    #
    # @!attribute [rw] identity_source
    #   The identity source for which authorization is requested. For the
    #   REQUEST authorizer, this is required when authorization caching is
    #   enabled. The value is a comma-separated string of one or more
    #   mapping expressions of the specified request parameters. For
    #   example, if an Auth header, a Name query string parameter are
    #   defined as identity sources, this value is
    #   $method.request.header.Auth, $method.request.querystring.Name. These
    #   parameters will be used to derive the authorization caching key and
    #   to perform runtime validation of the REQUEST authorizer by verifying
    #   all of the identity-related request parameters are present, not null
    #   and non-empty. Only when this is true does the authorizer invoke the
    #   authorizer Lambda function, otherwise, it returns a 401 Unauthorized
    #   response without calling the Lambda function. The valid value is a
    #   string of comma-separated mapping expressions of the specified
    #   request parameters. When the authorization caching is not enabled,
    #   this property is optional.
    #   @return [Array<String>]
    #
    # @!attribute [rw] identity_validation_expression
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    # @!attribute [rw] jwt_configuration
    #   Represents the configuration of a JWT authorizer. Required for the
    #   JWT authorizer type. Supported only for HTTP APIs.
    #   @return [Types::JWTConfiguration]
    #
    # @!attribute [rw] name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] authorizer_payload_format_version
    #   A string with a length between \[1-64\].
    #   @return [String]
    #
    # @!attribute [rw] enable_simple_responses
    #   @return [Boolean]
    #
    class CreateAuthorizerRequest < Struct.new(
      :api_id,
      :authorizer_credentials_arn,
      :authorizer_result_ttl_in_seconds,
      :authorizer_type,
      :authorizer_uri,
      :identity_source,
      :identity_validation_expression,
      :jwt_configuration,
      :name,
      :authorizer_payload_format_version,
      :enable_simple_responses)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authorizer_credentials_arn
    #   Represents an Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] authorizer_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_result_ttl_in_seconds
    #   An integer with a value between \[0-3600\].
    #   @return [Integer]
    #
    # @!attribute [rw] authorizer_type
    #   The authorizer type. Specify REQUEST for a Lambda function using
    #   incoming request parameters. Specify JWT to use JSON Web Tokens
    #   (supported only for HTTP APIs).
    #   @return [String]
    #
    # @!attribute [rw] authorizer_uri
    #   A string representation of a URI with a length between \[1-2048\].
    #   @return [String]
    #
    # @!attribute [rw] identity_source
    #   The identity source for which authorization is requested. For the
    #   REQUEST authorizer, this is required when authorization caching is
    #   enabled. The value is a comma-separated string of one or more
    #   mapping expressions of the specified request parameters. For
    #   example, if an Auth header, a Name query string parameter are
    #   defined as identity sources, this value is
    #   $method.request.header.Auth, $method.request.querystring.Name. These
    #   parameters will be used to derive the authorization caching key and
    #   to perform runtime validation of the REQUEST authorizer by verifying
    #   all of the identity-related request parameters are present, not null
    #   and non-empty. Only when this is true does the authorizer invoke the
    #   authorizer Lambda function, otherwise, it returns a 401 Unauthorized
    #   response without calling the Lambda function. The valid value is a
    #   string of comma-separated mapping expressions of the specified
    #   request parameters. When the authorization caching is not enabled,
    #   this property is optional.
    #   @return [Array<String>]
    #
    # @!attribute [rw] identity_validation_expression
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    # @!attribute [rw] jwt_configuration
    #   Represents the configuration of a JWT authorizer. Required for the
    #   JWT authorizer type. Supported only for HTTP APIs.
    #   @return [Types::JWTConfiguration]
    #
    # @!attribute [rw] name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] authorizer_payload_format_version
    #   A string with a length between \[1-64\].
    #   @return [String]
    #
    # @!attribute [rw] enable_simple_responses
    #   @return [Boolean]
    #
    class CreateAuthorizerResponse < Struct.new(
      :authorizer_credentials_arn,
      :authorizer_id,
      :authorizer_result_ttl_in_seconds,
      :authorizer_type,
      :authorizer_uri,
      :identity_source,
      :identity_validation_expression,
      :jwt_configuration,
      :name,
      :authorizer_payload_format_version,
      :enable_simple_responses)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input parameters for a CreateDeployment request.
    #
    # @!attribute [rw] description
    #   The description for the deployment resource.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the Stage resource for the Deployment resource to
    #   create.
    #   @return [String]
    #
    class CreateDeploymentInput < Struct.new(
      :description,
      :stage_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDeploymentRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         description: "StringWithLengthBetween0And1024",
    #         stage_name: "StringWithLengthBetween1And128",
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    class CreateDeploymentRequest < Struct.new(
      :api_id,
      :description,
      :stage_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_deployed
    #   @return [Boolean]
    #
    # @!attribute [rw] created_date
    #   @return [Time]
    #
    # @!attribute [rw] deployment_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] deployment_status
    #   Represents a deployment status.
    #   @return [String]
    #
    # @!attribute [rw] deployment_status_message
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    class CreateDeploymentResponse < Struct.new(
      :auto_deployed,
      :created_date,
      :deployment_id,
      :deployment_status,
      :deployment_status_message,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input parameters for a CreateDomainName request.
    #
    # @!attribute [rw] domain_name
    #   The domain name.
    #   @return [String]
    #
    # @!attribute [rw] domain_name_configurations
    #   The domain name configurations.
    #   @return [Array<Types::DomainNameConfiguration>]
    #
    # @!attribute [rw] mutual_tls_authentication
    #   The mutual TLS authentication configuration for a custom domain
    #   name.
    #   @return [Types::MutualTlsAuthenticationInput]
    #
    # @!attribute [rw] tags
    #   The collection of tags associated with a domain name.
    #   @return [Hash<String,String>]
    #
    class CreateDomainNameInput < Struct.new(
      :domain_name,
      :domain_name_configurations,
      :mutual_tls_authentication,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDomainNameRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "StringWithLengthBetween1And512", # required
    #         domain_name_configurations: [
    #           {
    #             api_gateway_domain_name: "__string",
    #             certificate_arn: "Arn",
    #             certificate_name: "StringWithLengthBetween1And128",
    #             certificate_upload_date: Time.now,
    #             domain_name_status: "AVAILABLE", # accepts AVAILABLE, UPDATING
    #             domain_name_status_message: "__string",
    #             endpoint_type: "REGIONAL", # accepts REGIONAL, EDGE
    #             hosted_zone_id: "__string",
    #             security_policy: "TLS_1_0", # accepts TLS_1_0, TLS_1_2
    #           },
    #         ],
    #         mutual_tls_authentication: {
    #           truststore_uri: "UriWithLengthBetween1And2048",
    #           truststore_version: "StringWithLengthBetween1And64",
    #         },
    #         tags: {
    #           "__string" => "StringWithLengthBetween1And1600",
    #         },
    #       }
    #
    # @!attribute [rw] domain_name
    #   A string with a length between \[1-512\].
    #   @return [String]
    #
    # @!attribute [rw] domain_name_configurations
    #   The domain name configurations.
    #   @return [Array<Types::DomainNameConfiguration>]
    #
    # @!attribute [rw] mutual_tls_authentication
    #   If specified, API Gateway performs two-way authentication between
    #   the client and the server. Clients must present a trusted
    #   certificate to access your API.
    #   @return [Types::MutualTlsAuthenticationInput]
    #
    # @!attribute [rw] tags
    #   Represents a collection of tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    class CreateDomainNameRequest < Struct.new(
      :domain_name,
      :domain_name_configurations,
      :mutual_tls_authentication,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_mapping_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   A string with a length between \[1-512\].
    #   @return [String]
    #
    # @!attribute [rw] domain_name_configurations
    #   The domain name configurations.
    #   @return [Array<Types::DomainNameConfiguration>]
    #
    # @!attribute [rw] mutual_tls_authentication
    #   If specified, API Gateway performs two-way authentication between
    #   the client and the server. Clients must present a trusted
    #   certificate to access your API.
    #   @return [Types::MutualTlsAuthentication]
    #
    # @!attribute [rw] tags
    #   Represents a collection of tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    class CreateDomainNameResponse < Struct.new(
      :api_mapping_selection_expression,
      :domain_name,
      :domain_name_configurations,
      :mutual_tls_authentication,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input parameters for a CreateIntegration request.
    #
    # @!attribute [rw] connection_id
    #   The ID of the VPC link for a private integration. Supported only for
    #   HTTP APIs.
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   The type of the network connection to the integration endpoint.
    #   Specify INTERNET for connections through the public routable
    #   internet or VPC\_LINK for private connections between API Gateway
    #   and resources in a VPC. The default value is INTERNET.
    #   @return [String]
    #
    # @!attribute [rw] content_handling_strategy
    #   Supported only for WebSocket APIs. Specifies how to handle response
    #   payload content type conversions. Supported values are
    #   CONVERT\_TO\_BINARY and CONVERT\_TO\_TEXT, with the following
    #   behaviors:
    #
    #   CONVERT\_TO\_BINARY: Converts a response payload from a
    #   Base64-encoded string to the corresponding binary blob.
    #
    #   CONVERT\_TO\_TEXT: Converts a response payload from a binary blob to
    #   a Base64-encoded string.
    #
    #   If this property is not defined, the response payload will be passed
    #   through from the integration response to the route response or
    #   method response without modification.
    #   @return [String]
    #
    # @!attribute [rw] credentials_arn
    #   Specifies the credentials required for the integration, if any. For
    #   AWS integrations, three options are available. To specify an IAM
    #   Role for API Gateway to assume, use the role's Amazon Resource Name
    #   (ARN). To require that the caller's identity be passed through from
    #   the request, specify the string arn:aws:iam::*:user/*. To use
    #   resource-based permissions on supported AWS services, specify null.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the integration.
    #   @return [String]
    #
    # @!attribute [rw] integration_method
    #   Specifies the integration's HTTP method type.
    #   @return [String]
    #
    # @!attribute [rw] integration_subtype
    #   Supported only for HTTP API AWS\_PROXY integrations. Specifies the
    #   AWS service action to invoke. To learn more, see [Integration
    #   subtype reference][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html
    #   @return [String]
    #
    # @!attribute [rw] integration_type
    #   The integration type of an integration. One of the following:
    #
    #   AWS: for integrating the route or method request with an AWS service
    #   action, including the Lambda function-invoking action. With the
    #   Lambda function-invoking action, this is referred to as the Lambda
    #   custom integration. With any other AWS service action, this is known
    #   as AWS integration. Supported only for WebSocket APIs.
    #
    #   AWS\_PROXY: for integrating the route or method request with a
    #   Lambda function or other AWS service action. This integration is
    #   also referred to as a Lambda proxy integration.
    #
    #   HTTP: for integrating the route or method request with an HTTP
    #   endpoint. This integration is also referred to as the HTTP custom
    #   integration. Supported only for WebSocket APIs.
    #
    #   HTTP\_PROXY: for integrating the route or method request with an
    #   HTTP endpoint, with the client request passed through as-is. This is
    #   also referred to as HTTP proxy integration. For HTTP API private
    #   integrations, use an HTTP\_PROXY integration.
    #
    #   MOCK: for integrating the route or method request with API Gateway
    #   as a "loopback" endpoint without invoking any backend. Supported
    #   only for WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] integration_uri
    #   For a Lambda integration, specify the URI of a Lambda function.
    #
    #   For an HTTP integration, specify a fully-qualified URL.
    #
    #   For an HTTP API private integration, specify the ARN of an
    #   Application Load Balancer listener, Network Load Balancer listener,
    #   or AWS Cloud Map service. If you specify the ARN of an AWS Cloud Map
    #   service, API Gateway uses DiscoverInstances to identify resources.
    #   You can use query parameters to target specific resources. To learn
    #   more, see [DiscoverInstances][1]. For private integrations, all
    #   resources must be owned by the same AWS account.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html
    #   @return [String]
    #
    # @!attribute [rw] passthrough_behavior
    #   Specifies the pass-through behavior for incoming requests based on
    #   the Content-Type header in the request, and the available mapping
    #   templates specified as the requestTemplates property on the
    #   Integration resource. There are three valid values: WHEN\_NO\_MATCH,
    #   WHEN\_NO\_TEMPLATES, and NEVER. Supported only for WebSocket APIs.
    #
    #   WHEN\_NO\_MATCH passes the request body for unmapped content types
    #   through to the integration backend without transformation.
    #
    #   NEVER rejects unmapped content types with an HTTP 415 Unsupported
    #   Media Type response.
    #
    #   WHEN\_NO\_TEMPLATES allows pass-through when the integration has no
    #   content types mapped to templates. However, if there is at least one
    #   content type defined, unmapped content types will be rejected with
    #   the same HTTP 415 Unsupported Media Type response.
    #   @return [String]
    #
    # @!attribute [rw] payload_format_version
    #   Specifies the format of the payload sent to an integration. Required
    #   for HTTP APIs.
    #   @return [String]
    #
    # @!attribute [rw] request_parameters
    #   For WebSocket APIs, a key-value map specifying request parameters
    #   that are passed from the method request to the backend. The key is
    #   an integration request parameter name and the associated value is a
    #   method request parameter value or static value that must be enclosed
    #   within single quotes and pre-encoded as required by the backend. The
    #   method request parameter value must match the pattern of
    #   method.request.*\\\{location\\}*.*\\\{name\\}* , where
    #   *\\\{location\\}* is querystring, path, or header; and *\\\{name\\}*
    #   must be a valid and unique method request parameter name.
    #
    #   For HTTP APIs, request parameters are a key-value map specifying
    #   parameters that are passed to AWS\_PROXY integrations with a
    #   specified integrationSubtype. You can provide static values, or map
    #   request data, stage variables, or context variables that are
    #   evaluated at runtime. To learn more, see [Working with AWS service
    #   integrations for HTTP APIs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] request_templates
    #   Represents a map of Velocity templates that are applied on the
    #   request payload based on the value of the Content-Type header sent
    #   by the client. The content type value is the key in this map, and
    #   the template (as a String) is the value. Supported only for
    #   WebSocket APIs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] template_selection_expression
    #   The template selection expression for the integration.
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_millis
    #   Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs
    #   and between 50 and 30,000 milliseconds for HTTP APIs. The default
    #   timeout is 29 seconds for WebSocket APIs and 30 seconds for HTTP
    #   APIs.
    #   @return [Integer]
    #
    # @!attribute [rw] tls_config
    #   The TLS configuration for a private integration. If you specify a
    #   TLS configuration, private integration traffic uses the HTTPS
    #   protocol. Supported only for HTTP APIs.
    #   @return [Types::TlsConfigInput]
    #
    class CreateIntegrationInput < Struct.new(
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
      :template_selection_expression,
      :timeout_in_millis,
      :tls_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateIntegrationRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         connection_id: "StringWithLengthBetween1And1024",
    #         connection_type: "INTERNET", # accepts INTERNET, VPC_LINK
    #         content_handling_strategy: "CONVERT_TO_BINARY", # accepts CONVERT_TO_BINARY, CONVERT_TO_TEXT
    #         credentials_arn: "Arn",
    #         description: "StringWithLengthBetween0And1024",
    #         integration_method: "StringWithLengthBetween1And64",
    #         integration_subtype: "StringWithLengthBetween1And128",
    #         integration_type: "AWS", # required, accepts AWS, HTTP, MOCK, HTTP_PROXY, AWS_PROXY
    #         integration_uri: "UriWithLengthBetween1And2048",
    #         passthrough_behavior: "WHEN_NO_MATCH", # accepts WHEN_NO_MATCH, NEVER, WHEN_NO_TEMPLATES
    #         payload_format_version: "StringWithLengthBetween1And64",
    #         request_parameters: {
    #           "__string" => "StringWithLengthBetween1And512",
    #         },
    #         request_templates: {
    #           "__string" => "StringWithLengthBetween0And32K",
    #         },
    #         template_selection_expression: "SelectionExpression",
    #         timeout_in_millis: 1,
    #         tls_config: {
    #           server_name_to_verify: "StringWithLengthBetween1And512",
    #         },
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] connection_id
    #   A string with a length between \[1-1024\].
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   Represents a connection type.
    #   @return [String]
    #
    # @!attribute [rw] content_handling_strategy
    #   Specifies how to handle response payload content type conversions.
    #   Supported only for WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] credentials_arn
    #   Represents an Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    # @!attribute [rw] integration_method
    #   A string with a length between \[1-64\].
    #   @return [String]
    #
    # @!attribute [rw] integration_subtype
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] integration_type
    #   Represents an API method integration type.
    #   @return [String]
    #
    # @!attribute [rw] integration_uri
    #   A string representation of a URI with a length between \[1-2048\].
    #   @return [String]
    #
    # @!attribute [rw] passthrough_behavior
    #   Represents passthrough behavior for an integration response.
    #   Supported only for WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] payload_format_version
    #   A string with a length between \[1-64\].
    #   @return [String]
    #
    # @!attribute [rw] request_parameters
    #   A key-value map specifying response parameters that are passed to
    #   the method response from the backend. The key is a method response
    #   header parameter name and the mapped value is an integration
    #   response header value, a static value enclosed within a pair of
    #   single quotes, or a JSON expression from the integration response
    #   body. The mapping key must match the pattern of
    #   method.response.header.\\\{name\\}, where name is a valid and unique
    #   header name. The mapped non-static value must match the pattern of
    #   integration.response.header.\\\{name\\} or
    #   integration.response.body.\\\{JSON-expression\\}, where name is a
    #   valid and unique response header name and JSON-expression is a valid
    #   JSON expression without the $ prefix.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] request_templates
    #   A mapping of identifier keys to templates. The value is an actual
    #   template script. The key is typically a SelectionKey which is chosen
    #   based on evaluating a selection expression.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] template_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_millis
    #   An integer with a value between \[50-30000\].
    #   @return [Integer]
    #
    # @!attribute [rw] tls_config
    #   The TLS configuration for a private integration. If you specify a
    #   TLS configuration, private integration traffic uses the HTTPS
    #   protocol. Supported only for HTTP APIs.
    #   @return [Types::TlsConfigInput]
    #
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
      :template_selection_expression,
      :timeout_in_millis,
      :tls_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_gateway_managed
    #   @return [Boolean]
    #
    # @!attribute [rw] connection_id
    #   A string with a length between \[1-1024\].
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   Represents a connection type.
    #   @return [String]
    #
    # @!attribute [rw] content_handling_strategy
    #   Specifies how to handle response payload content type conversions.
    #   Supported only for WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] credentials_arn
    #   Represents an Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    # @!attribute [rw] integration_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] integration_method
    #   A string with a length between \[1-64\].
    #   @return [String]
    #
    # @!attribute [rw] integration_response_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] integration_subtype
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] integration_type
    #   Represents an API method integration type.
    #   @return [String]
    #
    # @!attribute [rw] integration_uri
    #   A string representation of a URI with a length between \[1-2048\].
    #   @return [String]
    #
    # @!attribute [rw] passthrough_behavior
    #   Represents passthrough behavior for an integration response.
    #   Supported only for WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] payload_format_version
    #   A string with a length between \[1-64\].
    #   @return [String]
    #
    # @!attribute [rw] request_parameters
    #   A key-value map specifying response parameters that are passed to
    #   the method response from the backend. The key is a method response
    #   header parameter name and the mapped value is an integration
    #   response header value, a static value enclosed within a pair of
    #   single quotes, or a JSON expression from the integration response
    #   body. The mapping key must match the pattern of
    #   method.response.header.\\\{name\\}, where name is a valid and unique
    #   header name. The mapped non-static value must match the pattern of
    #   integration.response.header.\\\{name\\} or
    #   integration.response.body.\\\{JSON-expression\\}, where name is a
    #   valid and unique response header name and JSON-expression is a valid
    #   JSON expression without the $ prefix.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] request_templates
    #   A mapping of identifier keys to templates. The value is an actual
    #   template script. The key is typically a SelectionKey which is chosen
    #   based on evaluating a selection expression.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] template_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_millis
    #   An integer with a value between \[50-30000\].
    #   @return [Integer]
    #
    # @!attribute [rw] tls_config
    #   The TLS configuration for a private integration. If you specify a
    #   TLS configuration, private integration traffic uses the HTTPS
    #   protocol. Supported only for HTTP APIs.
    #   @return [Types::TlsConfig]
    #
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
      :template_selection_expression,
      :timeout_in_millis,
      :tls_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input parameters for a CreateIntegrationResponse
    # request.
    #
    # @!attribute [rw] content_handling_strategy
    #   Specifies how to handle response payload content type conversions.
    #   Supported values are CONVERT\_TO\_BINARY and CONVERT\_TO\_TEXT, with
    #   the following behaviors:
    #
    #   CONVERT\_TO\_BINARY: Converts a response payload from a
    #   Base64-encoded string to the corresponding binary blob.
    #
    #   CONVERT\_TO\_TEXT: Converts a response payload from a binary blob to
    #   a Base64-encoded string.
    #
    #   If this property is not defined, the response payload will be passed
    #   through from the integration response to the route response or
    #   method response without modification.
    #   @return [String]
    #
    # @!attribute [rw] integration_response_key
    #   The integration response key.
    #   @return [String]
    #
    # @!attribute [rw] response_parameters
    #   A key-value map specifying response parameters that are passed to
    #   the method response from the backend. The key is a method response
    #   header parameter name and the mapped value is an integration
    #   response header value, a static value enclosed within a pair of
    #   single quotes, or a JSON expression from the integration response
    #   body. The mapping key must match the pattern of
    #   method.response.header.\\\{name\\}, where \\\{name\\} is a valid and
    #   unique header name. The mapped non-static value must match the
    #   pattern of integration.response.header.\\\{name\\} or
    #   integration.response.body.\\\{JSON-expression\\}, where \\\{name\\}
    #   is a valid and unique response header name and
    #   \\\{JSON-expression\\} is a valid JSON expression without the $
    #   prefix.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] response_templates
    #   The collection of response templates for the integration response as
    #   a string-to-string map of key-value pairs. Response templates are
    #   represented as a key/value map, with a content-type as the key and a
    #   template as the value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] template_selection_expression
    #   The template selection expression for the integration response.
    #   Supported only for WebSocket APIs.
    #   @return [String]
    #
    class CreateIntegrationResponseInput < Struct.new(
      :content_handling_strategy,
      :integration_response_key,
      :response_parameters,
      :response_templates,
      :template_selection_expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateIntegrationResponseRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         content_handling_strategy: "CONVERT_TO_BINARY", # accepts CONVERT_TO_BINARY, CONVERT_TO_TEXT
    #         integration_id: "__string", # required
    #         integration_response_key: "SelectionKey", # required
    #         response_parameters: {
    #           "__string" => "StringWithLengthBetween1And512",
    #         },
    #         response_templates: {
    #           "__string" => "StringWithLengthBetween0And32K",
    #         },
    #         template_selection_expression: "SelectionExpression",
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] content_handling_strategy
    #   Specifies how to handle response payload content type conversions.
    #   Supported only for WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] integration_id
    #   @return [String]
    #
    # @!attribute [rw] integration_response_key
    #   After evaluating a selection expression, the result is compared
    #   against one or more selection keys to find a matching key. See
    #   [Selection Expressions][1] for a list of expressions and each
    #   expression's associated selection key type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] response_parameters
    #   A key-value map specifying response parameters that are passed to
    #   the method response from the backend. The key is a method response
    #   header parameter name and the mapped value is an integration
    #   response header value, a static value enclosed within a pair of
    #   single quotes, or a JSON expression from the integration response
    #   body. The mapping key must match the pattern of
    #   method.response.header.\\\{name\\}, where name is a valid and unique
    #   header name. The mapped non-static value must match the pattern of
    #   integration.response.header.\\\{name\\} or
    #   integration.response.body.\\\{JSON-expression\\}, where name is a
    #   valid and unique response header name and JSON-expression is a valid
    #   JSON expression without the $ prefix.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] response_templates
    #   A mapping of identifier keys to templates. The value is an actual
    #   template script. The key is typically a SelectionKey which is chosen
    #   based on evaluating a selection expression.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] template_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    class CreateIntegrationResponseRequest < Struct.new(
      :api_id,
      :content_handling_strategy,
      :integration_id,
      :integration_response_key,
      :response_parameters,
      :response_templates,
      :template_selection_expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_handling_strategy
    #   Specifies how to handle response payload content type conversions.
    #   Supported only for WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] integration_response_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] integration_response_key
    #   After evaluating a selection expression, the result is compared
    #   against one or more selection keys to find a matching key. See
    #   [Selection Expressions][1] for a list of expressions and each
    #   expression's associated selection key type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] response_parameters
    #   A key-value map specifying response parameters that are passed to
    #   the method response from the backend. The key is a method response
    #   header parameter name and the mapped value is an integration
    #   response header value, a static value enclosed within a pair of
    #   single quotes, or a JSON expression from the integration response
    #   body. The mapping key must match the pattern of
    #   method.response.header.\\\{name\\}, where name is a valid and unique
    #   header name. The mapped non-static value must match the pattern of
    #   integration.response.header.\\\{name\\} or
    #   integration.response.body.\\\{JSON-expression\\}, where name is a
    #   valid and unique response header name and JSON-expression is a valid
    #   JSON expression without the $ prefix.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] response_templates
    #   A mapping of identifier keys to templates. The value is an actual
    #   template script. The key is typically a SelectionKey which is chosen
    #   based on evaluating a selection expression.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] template_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    class CreateIntegrationResponseResponse < Struct.new(
      :content_handling_strategy,
      :integration_response_id,
      :integration_response_key,
      :response_parameters,
      :response_templates,
      :template_selection_expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input parameters for a CreateModel request.
    #
    # @!attribute [rw] content_type
    #   The content-type for the model, for example, "application/json".
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the model.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the model. Must be alphanumeric.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The schema for the model. For application/json models, this should
    #   be JSON schema draft 4 model.
    #   @return [String]
    #
    class CreateModelInput < Struct.new(
      :content_type,
      :description,
      :name,
      :schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateModelRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         content_type: "StringWithLengthBetween1And256",
    #         description: "StringWithLengthBetween0And1024",
    #         name: "StringWithLengthBetween1And128", # required
    #         schema: "StringWithLengthBetween0And32K", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   A string with a length between \[1-256\].
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   A string with a length between \[0-32768\].
    #   @return [String]
    #
    class CreateModelRequest < Struct.new(
      :api_id,
      :content_type,
      :description,
      :name,
      :schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_type
    #   A string with a length between \[1-256\].
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   A string with a length between \[0-32768\].
    #   @return [String]
    #
    class CreateModelResponse < Struct.new(
      :content_type,
      :description,
      :model_id,
      :name,
      :schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input parameters for a CreateRoute request.
    #
    # @!attribute [rw] api_key_required
    #   Specifies whether an API key is required for the route. Supported
    #   only for WebSocket APIs.
    #   @return [Boolean]
    #
    # @!attribute [rw] authorization_scopes
    #   The authorization scopes supported by this route.
    #   @return [Array<String>]
    #
    # @!attribute [rw] authorization_type
    #   The authorization type for the route. For WebSocket APIs, valid
    #   values are NONE for open access, AWS\_IAM for using AWS IAM
    #   permissions, and CUSTOM for using a Lambda authorizer For HTTP APIs,
    #   valid values are NONE for open access, JWT for using JSON Web
    #   Tokens, AWS\_IAM for using AWS IAM permissions, and CUSTOM for using
    #   a Lambda authorizer.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_id
    #   The identifier of the Authorizer resource to be associated with this
    #   route. The authorizer identifier is generated by API Gateway when
    #   you created the authorizer.
    #   @return [String]
    #
    # @!attribute [rw] model_selection_expression
    #   The model selection expression for the route. Supported only for
    #   WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] operation_name
    #   The operation name for the route.
    #   @return [String]
    #
    # @!attribute [rw] request_models
    #   The request models for the route. Supported only for WebSocket APIs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] request_parameters
    #   The request parameters for the route. Supported only for WebSocket
    #   APIs.
    #   @return [Hash<String,Types::ParameterConstraints>]
    #
    # @!attribute [rw] route_key
    #   The route key for the route.
    #   @return [String]
    #
    # @!attribute [rw] route_response_selection_expression
    #   The route response selection expression for the route. Supported
    #   only for WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The target for the route.
    #   @return [String]
    #
    class CreateRouteInput < Struct.new(
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
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRouteRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         api_key_required: false,
    #         authorization_scopes: ["StringWithLengthBetween1And64"],
    #         authorization_type: "NONE", # accepts NONE, AWS_IAM, CUSTOM, JWT
    #         authorizer_id: "Id",
    #         model_selection_expression: "SelectionExpression",
    #         operation_name: "StringWithLengthBetween1And64",
    #         request_models: {
    #           "__string" => "StringWithLengthBetween1And128",
    #         },
    #         request_parameters: {
    #           "__string" => {
    #             required: false,
    #           },
    #         },
    #         route_key: "SelectionKey", # required
    #         route_response_selection_expression: "SelectionExpression",
    #         target: "StringWithLengthBetween1And128",
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] api_key_required
    #   @return [Boolean]
    #
    # @!attribute [rw] authorization_scopes
    #   A list of authorization scopes configured on a route. The scopes are
    #   used with a JWT authorizer to authorize the method invocation. The
    #   authorization works by matching the route scopes against the scopes
    #   parsed from the access token in the incoming request. The method
    #   invocation is authorized if any route scope matches a claimed scope
    #   in the access token. Otherwise, the invocation is not authorized.
    #   When the route scope is configured, the client must provide an
    #   access token instead of an identity token for authorization
    #   purposes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] authorization_type
    #   The authorization type. For WebSocket APIs, valid values are NONE
    #   for open access, AWS\_IAM for using AWS IAM permissions, and CUSTOM
    #   for using a Lambda authorizer. For HTTP APIs, valid values are NONE
    #   for open access, JWT for using JSON Web Tokens, AWS\_IAM for using
    #   AWS IAM permissions, and CUSTOM for using a Lambda authorizer.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] model_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] operation_name
    #   A string with a length between \[1-64\].
    #   @return [String]
    #
    # @!attribute [rw] request_models
    #   The route models.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] request_parameters
    #   The route parameters.
    #   @return [Hash<String,Types::ParameterConstraints>]
    #
    # @!attribute [rw] route_key
    #   After evaluating a selection expression, the result is compared
    #   against one or more selection keys to find a matching key. See
    #   [Selection Expressions][1] for a list of expressions and each
    #   expression's associated selection key type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] route_response_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] target
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
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
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_gateway_managed
    #   @return [Boolean]
    #
    # @!attribute [rw] api_key_required
    #   @return [Boolean]
    #
    # @!attribute [rw] authorization_scopes
    #   A list of authorization scopes configured on a route. The scopes are
    #   used with a JWT authorizer to authorize the method invocation. The
    #   authorization works by matching the route scopes against the scopes
    #   parsed from the access token in the incoming request. The method
    #   invocation is authorized if any route scope matches a claimed scope
    #   in the access token. Otherwise, the invocation is not authorized.
    #   When the route scope is configured, the client must provide an
    #   access token instead of an identity token for authorization
    #   purposes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] authorization_type
    #   The authorization type. For WebSocket APIs, valid values are NONE
    #   for open access, AWS\_IAM for using AWS IAM permissions, and CUSTOM
    #   for using a Lambda authorizer. For HTTP APIs, valid values are NONE
    #   for open access, JWT for using JSON Web Tokens, AWS\_IAM for using
    #   AWS IAM permissions, and CUSTOM for using a Lambda authorizer.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] model_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] operation_name
    #   A string with a length between \[1-64\].
    #   @return [String]
    #
    # @!attribute [rw] request_models
    #   The route models.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] request_parameters
    #   The route parameters.
    #   @return [Hash<String,Types::ParameterConstraints>]
    #
    # @!attribute [rw] route_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] route_key
    #   After evaluating a selection expression, the result is compared
    #   against one or more selection keys to find a matching key. See
    #   [Selection Expressions][1] for a list of expressions and each
    #   expression's associated selection key type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] route_response_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] target
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
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
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input parameters for an CreateRouteResponse request.
    #
    # @!attribute [rw] model_selection_expression
    #   The model selection expression for the route response. Supported
    #   only for WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] response_models
    #   The response models for the route response.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] response_parameters
    #   The route response parameters.
    #   @return [Hash<String,Types::ParameterConstraints>]
    #
    # @!attribute [rw] route_response_key
    #   The route response key.
    #   @return [String]
    #
    class CreateRouteResponseInput < Struct.new(
      :model_selection_expression,
      :response_models,
      :response_parameters,
      :route_response_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRouteResponseRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         model_selection_expression: "SelectionExpression",
    #         response_models: {
    #           "__string" => "StringWithLengthBetween1And128",
    #         },
    #         response_parameters: {
    #           "__string" => {
    #             required: false,
    #           },
    #         },
    #         route_id: "__string", # required
    #         route_response_key: "SelectionKey", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] model_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] response_models
    #   The route models.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] response_parameters
    #   The route parameters.
    #   @return [Hash<String,Types::ParameterConstraints>]
    #
    # @!attribute [rw] route_id
    #   @return [String]
    #
    # @!attribute [rw] route_response_key
    #   After evaluating a selection expression, the result is compared
    #   against one or more selection keys to find a matching key. See
    #   [Selection Expressions][1] for a list of expressions and each
    #   expression's associated selection key type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    class CreateRouteResponseRequest < Struct.new(
      :api_id,
      :model_selection_expression,
      :response_models,
      :response_parameters,
      :route_id,
      :route_response_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] response_models
    #   The route models.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] response_parameters
    #   The route parameters.
    #   @return [Hash<String,Types::ParameterConstraints>]
    #
    # @!attribute [rw] route_response_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] route_response_key
    #   After evaluating a selection expression, the result is compared
    #   against one or more selection keys to find a matching key. See
    #   [Selection Expressions][1] for a list of expressions and each
    #   expression's associated selection key type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    class CreateRouteResponseResponse < Struct.new(
      :model_selection_expression,
      :response_models,
      :response_parameters,
      :route_response_id,
      :route_response_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input parameters for a CreateStage request.
    #
    # @!attribute [rw] access_log_settings
    #   Settings for logging access in this stage.
    #   @return [Types::AccessLogSettings]
    #
    # @!attribute [rw] auto_deploy
    #   Specifies whether updates to an API automatically trigger a new
    #   deployment. The default value is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_certificate_id
    #   The identifier of a client certificate for a Stage. Supported only
    #   for WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] default_route_settings
    #   The default route settings for the stage.
    #   @return [Types::RouteSettings]
    #
    # @!attribute [rw] deployment_id
    #   The deployment identifier of the API stage.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the API stage.
    #   @return [String]
    #
    # @!attribute [rw] route_settings
    #   Route settings for the stage, by routeKey.
    #   @return [Hash<String,Types::RouteSettings>]
    #
    # @!attribute [rw] stage_name
    #   The name of the stage.
    #   @return [String]
    #
    # @!attribute [rw] stage_variables
    #   A map that defines the stage variables for a Stage. Variable names
    #   can have alphanumeric and underscore characters, and the values must
    #   match \[A-Za-z0-9-.\_~:/?#&amp;=,\]+.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   The collection of tags. Each tag element is associated with a given
    #   resource.
    #   @return [Hash<String,String>]
    #
    class CreateStageInput < Struct.new(
      :access_log_settings,
      :auto_deploy,
      :client_certificate_id,
      :default_route_settings,
      :deployment_id,
      :description,
      :route_settings,
      :stage_name,
      :stage_variables,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateStageRequest
    #   data as a hash:
    #
    #       {
    #         access_log_settings: {
    #           destination_arn: "Arn",
    #           format: "StringWithLengthBetween1And1024",
    #         },
    #         api_id: "__string", # required
    #         auto_deploy: false,
    #         client_certificate_id: "Id",
    #         default_route_settings: {
    #           data_trace_enabled: false,
    #           detailed_metrics_enabled: false,
    #           logging_level: "ERROR", # accepts ERROR, INFO, OFF
    #           throttling_burst_limit: 1,
    #           throttling_rate_limit: 1.0,
    #         },
    #         deployment_id: "Id",
    #         description: "StringWithLengthBetween0And1024",
    #         route_settings: {
    #           "__string" => {
    #             data_trace_enabled: false,
    #             detailed_metrics_enabled: false,
    #             logging_level: "ERROR", # accepts ERROR, INFO, OFF
    #             throttling_burst_limit: 1,
    #             throttling_rate_limit: 1.0,
    #           },
    #         },
    #         stage_name: "StringWithLengthBetween1And128", # required
    #         stage_variables: {
    #           "__string" => "StringWithLengthBetween0And2048",
    #         },
    #         tags: {
    #           "__string" => "StringWithLengthBetween1And1600",
    #         },
    #       }
    #
    # @!attribute [rw] access_log_settings
    #   Settings for logging access in a stage.
    #   @return [Types::AccessLogSettings]
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] auto_deploy
    #   @return [Boolean]
    #
    # @!attribute [rw] client_certificate_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] default_route_settings
    #   Represents a collection of route settings.
    #   @return [Types::RouteSettings]
    #
    # @!attribute [rw] deployment_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    # @!attribute [rw] route_settings
    #   The route settings map.
    #   @return [Hash<String,Types::RouteSettings>]
    #
    # @!attribute [rw] stage_name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] stage_variables
    #   The stage variable map.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   Represents a collection of tags associated with the resource.
    #   @return [Hash<String,String>]
    #
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
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_log_settings
    #   Settings for logging access in a stage.
    #   @return [Types::AccessLogSettings]
    #
    # @!attribute [rw] api_gateway_managed
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_deploy
    #   @return [Boolean]
    #
    # @!attribute [rw] client_certificate_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   @return [Time]
    #
    # @!attribute [rw] default_route_settings
    #   Represents a collection of route settings.
    #   @return [Types::RouteSettings]
    #
    # @!attribute [rw] deployment_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    # @!attribute [rw] last_deployment_status_message
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date
    #   @return [Time]
    #
    # @!attribute [rw] route_settings
    #   The route settings map.
    #   @return [Hash<String,Types::RouteSettings>]
    #
    # @!attribute [rw] stage_name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] stage_variables
    #   The stage variable map.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   Represents a collection of tags associated with the resource.
    #   @return [Hash<String,String>]
    #
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
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input parameters for a CreateVpcLink request.
    #
    # @!attribute [rw] name
    #   The name of the VPC link.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   A list of security group IDs for the VPC link.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_ids
    #   A list of subnet IDs to include in the VPC link.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A list of tags.
    #   @return [Hash<String,String>]
    #
    class CreateVpcLinkInput < Struct.new(
      :name,
      :security_group_ids,
      :subnet_ids,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateVpcLinkRequest
    #   data as a hash:
    #
    #       {
    #         name: "StringWithLengthBetween1And128", # required
    #         security_group_ids: ["__string"],
    #         subnet_ids: ["__string"], # required
    #         tags: {
    #           "__string" => "StringWithLengthBetween1And1600",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   A list of security group IDs for the VPC link.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_ids
    #   A list of subnet IDs to include in the VPC link.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Represents a collection of tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    class CreateVpcLinkRequest < Struct.new(
      :name,
      :security_group_ids,
      :subnet_ids,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_date
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   A list of security group IDs for the VPC link.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_ids
    #   A list of subnet IDs to include in the VPC link.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Represents a collection of tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vpc_link_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] vpc_link_status
    #   The status of the VPC link.
    #   @return [String]
    #
    # @!attribute [rw] vpc_link_status_message
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    # @!attribute [rw] vpc_link_version
    #   The version of the VPC link.
    #   @return [String]
    #
    class CreateVpcLinkResponse < Struct.new(
      :created_date,
      :name,
      :security_group_ids,
      :subnet_ids,
      :tags,
      :vpc_link_id,
      :vpc_link_status,
      :vpc_link_status_message,
      :vpc_link_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAccessLogSettingsRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         stage_name: "__string", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   @return [String]
    #
    class DeleteAccessLogSettingsRequest < Struct.new(
      :api_id,
      :stage_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteApiMappingRequest
    #   data as a hash:
    #
    #       {
    #         api_mapping_id: "__string", # required
    #         domain_name: "__string", # required
    #       }
    #
    # @!attribute [rw] api_mapping_id
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   @return [String]
    #
    class DeleteApiMappingRequest < Struct.new(
      :api_mapping_id,
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteApiRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    class DeleteApiRequest < Struct.new(
      :api_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAuthorizerRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         authorizer_id: "__string", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] authorizer_id
    #   @return [String]
    #
    class DeleteAuthorizerRequest < Struct.new(
      :api_id,
      :authorizer_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteCorsConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    class DeleteCorsConfigurationRequest < Struct.new(
      :api_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDeploymentRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         deployment_id: "__string", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] deployment_id
    #   @return [String]
    #
    class DeleteDeploymentRequest < Struct.new(
      :api_id,
      :deployment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDomainNameRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "__string", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   @return [String]
    #
    class DeleteDomainNameRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteIntegrationRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         integration_id: "__string", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] integration_id
    #   @return [String]
    #
    class DeleteIntegrationRequest < Struct.new(
      :api_id,
      :integration_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteIntegrationResponseRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         integration_id: "__string", # required
    #         integration_response_id: "__string", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] integration_id
    #   @return [String]
    #
    # @!attribute [rw] integration_response_id
    #   @return [String]
    #
    class DeleteIntegrationResponseRequest < Struct.new(
      :api_id,
      :integration_id,
      :integration_response_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteModelRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         model_id: "__string", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   @return [String]
    #
    class DeleteModelRequest < Struct.new(
      :api_id,
      :model_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteRouteRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         route_id: "__string", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] route_id
    #   @return [String]
    #
    class DeleteRouteRequest < Struct.new(
      :api_id,
      :route_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteRouteRequestParameterRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         request_parameter_key: "__string", # required
    #         route_id: "__string", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] request_parameter_key
    #   @return [String]
    #
    # @!attribute [rw] route_id
    #   @return [String]
    #
    class DeleteRouteRequestParameterRequest < Struct.new(
      :api_id,
      :request_parameter_key,
      :route_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteRouteResponseRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         route_id: "__string", # required
    #         route_response_id: "__string", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] route_id
    #   @return [String]
    #
    # @!attribute [rw] route_response_id
    #   @return [String]
    #
    class DeleteRouteResponseRequest < Struct.new(
      :api_id,
      :route_id,
      :route_response_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteRouteSettingsRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         route_key: "__string", # required
    #         stage_name: "__string", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] route_key
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   @return [String]
    #
    class DeleteRouteSettingsRequest < Struct.new(
      :api_id,
      :route_key,
      :stage_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteStageRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         stage_name: "__string", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   @return [String]
    #
    class DeleteStageRequest < Struct.new(
      :api_id,
      :stage_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteVpcLinkRequest
    #   data as a hash:
    #
    #       {
    #         vpc_link_id: "__string", # required
    #       }
    #
    # @!attribute [rw] vpc_link_id
    #   @return [String]
    #
    class DeleteVpcLinkRequest < Struct.new(
      :vpc_link_id)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteVpcLinkResponse < Aws::EmptyStructure; end

    # An immutable representation of an API that can be called by users. A
    # Deployment must be associated with a Stage for it to be callable over
    # the internet.
    #
    # @!attribute [rw] auto_deployed
    #   Specifies whether a deployment was automatically released.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_date
    #   The date and time when the Deployment resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] deployment_id
    #   The identifier for the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_status
    #   The status of the deployment: PENDING, FAILED, or SUCCEEDED.
    #   @return [String]
    #
    # @!attribute [rw] deployment_status_message
    #   May contain additional feedback on the status of an API deployment.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the deployment.
    #   @return [String]
    #
    class Deployment < Struct.new(
      :auto_deployed,
      :created_date,
      :deployment_id,
      :deployment_status,
      :deployment_status_message,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection resource that contains zero or more references to your
    # existing deployments, and links that guide you on how to interact with
    # your collection. The collection offers a paginated view of the
    # contained deployments.
    #
    # @!attribute [rw] items
    #   The elements from this collection.
    #   @return [Array<Types::Deployment>]
    #
    # @!attribute [rw] next_token
    #   The next page of elements from this collection. Not valid for the
    #   last element of the collection.
    #   @return [String]
    #
    class Deployments < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a domain name.
    #
    # @!attribute [rw] api_mapping_selection_expression
    #   The API mapping selection expression.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The name of the DomainName resource.
    #   @return [String]
    #
    # @!attribute [rw] domain_name_configurations
    #   The domain name configurations.
    #   @return [Array<Types::DomainNameConfiguration>]
    #
    # @!attribute [rw] mutual_tls_authentication
    #   The mutual TLS authentication configuration for a custom domain
    #   name.
    #   @return [Types::MutualTlsAuthentication]
    #
    # @!attribute [rw] tags
    #   The collection of tags associated with a domain name.
    #   @return [Hash<String,String>]
    #
    class DomainName < Struct.new(
      :api_mapping_selection_expression,
      :domain_name,
      :domain_name_configurations,
      :mutual_tls_authentication,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The domain name configuration.
    #
    # @note When making an API call, you may pass DomainNameConfiguration
    #   data as a hash:
    #
    #       {
    #         api_gateway_domain_name: "__string",
    #         certificate_arn: "Arn",
    #         certificate_name: "StringWithLengthBetween1And128",
    #         certificate_upload_date: Time.now,
    #         domain_name_status: "AVAILABLE", # accepts AVAILABLE, UPDATING
    #         domain_name_status_message: "__string",
    #         endpoint_type: "REGIONAL", # accepts REGIONAL, EDGE
    #         hosted_zone_id: "__string",
    #         security_policy: "TLS_1_0", # accepts TLS_1_0, TLS_1_2
    #       }
    #
    # @!attribute [rw] api_gateway_domain_name
    #   A domain name for the API.
    #   @return [String]
    #
    # @!attribute [rw] certificate_arn
    #   An AWS-managed certificate that will be used by the edge-optimized
    #   endpoint for this domain name. AWS Certificate Manager is the only
    #   supported source.
    #   @return [String]
    #
    # @!attribute [rw] certificate_name
    #   The user-friendly name of the certificate that will be used by the
    #   edge-optimized endpoint for this domain name.
    #   @return [String]
    #
    # @!attribute [rw] certificate_upload_date
    #   The timestamp when the certificate that was used by edge-optimized
    #   endpoint for this domain name was uploaded.
    #   @return [Time]
    #
    # @!attribute [rw] domain_name_status
    #   The status of the domain name migration. The valid values are
    #   AVAILABLE and UPDATING. If the status is UPDATING, the domain cannot
    #   be modified further until the existing operation is complete. If it
    #   is AVAILABLE, the domain can be updated.
    #   @return [String]
    #
    # @!attribute [rw] domain_name_status_message
    #   An optional text message containing detailed information about
    #   status of the domain name migration.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   The endpoint type.
    #   @return [String]
    #
    # @!attribute [rw] hosted_zone_id
    #   The Amazon Route 53 Hosted Zone ID of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] security_policy
    #   The Transport Layer Security (TLS) version of the security policy
    #   for this domain name. The valid values are TLS\_1\_0 and TLS\_1\_2.
    #   @return [String]
    #
    class DomainNameConfiguration < Struct.new(
      :api_gateway_domain_name,
      :certificate_arn,
      :certificate_name,
      :certificate_upload_date,
      :domain_name_status,
      :domain_name_status_message,
      :endpoint_type,
      :hosted_zone_id,
      :security_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a collection of domain names.
    #
    # @!attribute [rw] items
    #   The elements from this collection.
    #   @return [Array<Types::DomainName>]
    #
    # @!attribute [rw] next_token
    #   The next page of elements from this collection. Not valid for the
    #   last element of the collection.
    #   @return [String]
    #
    class DomainNames < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ExportApiRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         export_version: "__string",
    #         include_extensions: false,
    #         output_type: "__string", # required
    #         specification: "__string", # required
    #         stage_name: "__string",
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] export_version
    #   @return [String]
    #
    # @!attribute [rw] include_extensions
    #   @return [Boolean]
    #
    # @!attribute [rw] output_type
    #   @return [String]
    #
    # @!attribute [rw] specification
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   @return [String]
    #
    class ExportApiRequest < Struct.new(
      :api_id,
      :export_version,
      :include_extensions,
      :output_type,
      :specification,
      :stage_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] body
    #   Represents an exported definition of an API in a particular output
    #   format, for example, YAML. The API is serialized to the requested
    #   specification, for example, OpenAPI 3.0.
    #   @return [String]
    #
    class ExportApiResponse < Struct.new(
      :body)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ResetAuthorizersCacheRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         stage_name: "__string", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   @return [String]
    #
    class ResetAuthorizersCacheRequest < Struct.new(
      :api_id,
      :stage_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetApiMappingRequest
    #   data as a hash:
    #
    #       {
    #         api_mapping_id: "__string", # required
    #         domain_name: "__string", # required
    #       }
    #
    # @!attribute [rw] api_mapping_id
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   @return [String]
    #
    class GetApiMappingRequest < Struct.new(
      :api_mapping_id,
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] api_mapping_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] api_mapping_key
    #   After evaluating a selection expression, the result is compared
    #   against one or more selection keys to find a matching key. See
    #   [Selection Expressions][1] for a list of expressions and each
    #   expression's associated selection key type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    class GetApiMappingResponse < Struct.new(
      :api_id,
      :api_mapping_id,
      :api_mapping_key,
      :stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetApiMappingsRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "__string", # required
    #         max_results: "__string",
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] domain_name
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    class GetApiMappingsRequest < Struct.new(
      :domain_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   @return [Array<Types::ApiMapping>]
    #
    # @!attribute [rw] next_token
    #   The next page of elements from this collection. Not valid for the
    #   last element of the collection.
    #   @return [String]
    #
    class GetApiMappingsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetApiRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    class GetApiRequest < Struct.new(
      :api_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_endpoint
    #   @return [String]
    #
    # @!attribute [rw] api_gateway_managed
    #   @return [Boolean]
    #
    # @!attribute [rw] api_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] api_key_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] cors_configuration
    #   Represents a CORS configuration. Supported only for HTTP APIs. See
    #   [Configuring CORS][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html
    #   @return [Types::Cors]
    #
    # @!attribute [rw] created_date
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    # @!attribute [rw] disable_schema_validation
    #   @return [Boolean]
    #
    # @!attribute [rw] disable_execute_api_endpoint
    #   @return [Boolean]
    #
    # @!attribute [rw] import_info
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] protocol_type
    #   Represents a protocol type.
    #   @return [String]
    #
    # @!attribute [rw] route_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Represents a collection of tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] version
    #   A string with a length between \[1-64\].
    #   @return [String]
    #
    # @!attribute [rw] warnings
    #   @return [Array<String>]
    #
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
      :name,
      :protocol_type,
      :route_selection_expression,
      :tags,
      :version,
      :warnings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetApisRequest
    #   data as a hash:
    #
    #       {
    #         max_results: "__string",
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    class GetApisRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   @return [Array<Types::Api>]
    #
    # @!attribute [rw] next_token
    #   The next page of elements from this collection. Not valid for the
    #   last element of the collection.
    #   @return [String]
    #
    class GetApisResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAuthorizerRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         authorizer_id: "__string", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] authorizer_id
    #   @return [String]
    #
    class GetAuthorizerRequest < Struct.new(
      :api_id,
      :authorizer_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authorizer_credentials_arn
    #   Represents an Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] authorizer_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_result_ttl_in_seconds
    #   An integer with a value between \[0-3600\].
    #   @return [Integer]
    #
    # @!attribute [rw] authorizer_type
    #   The authorizer type. Specify REQUEST for a Lambda function using
    #   incoming request parameters. Specify JWT to use JSON Web Tokens
    #   (supported only for HTTP APIs).
    #   @return [String]
    #
    # @!attribute [rw] authorizer_uri
    #   A string representation of a URI with a length between \[1-2048\].
    #   @return [String]
    #
    # @!attribute [rw] identity_source
    #   The identity source for which authorization is requested. For the
    #   REQUEST authorizer, this is required when authorization caching is
    #   enabled. The value is a comma-separated string of one or more
    #   mapping expressions of the specified request parameters. For
    #   example, if an Auth header, a Name query string parameter are
    #   defined as identity sources, this value is
    #   $method.request.header.Auth, $method.request.querystring.Name. These
    #   parameters will be used to derive the authorization caching key and
    #   to perform runtime validation of the REQUEST authorizer by verifying
    #   all of the identity-related request parameters are present, not null
    #   and non-empty. Only when this is true does the authorizer invoke the
    #   authorizer Lambda function, otherwise, it returns a 401 Unauthorized
    #   response without calling the Lambda function. The valid value is a
    #   string of comma-separated mapping expressions of the specified
    #   request parameters. When the authorization caching is not enabled,
    #   this property is optional.
    #   @return [Array<String>]
    #
    # @!attribute [rw] identity_validation_expression
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    # @!attribute [rw] jwt_configuration
    #   Represents the configuration of a JWT authorizer. Required for the
    #   JWT authorizer type. Supported only for HTTP APIs.
    #   @return [Types::JWTConfiguration]
    #
    # @!attribute [rw] name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] authorizer_payload_format_version
    #   A string with a length between \[1-64\].
    #   @return [String]
    #
    # @!attribute [rw] enable_simple_responses
    #   @return [Boolean]
    #
    class GetAuthorizerResponse < Struct.new(
      :authorizer_credentials_arn,
      :authorizer_id,
      :authorizer_result_ttl_in_seconds,
      :authorizer_type,
      :authorizer_uri,
      :identity_source,
      :identity_validation_expression,
      :jwt_configuration,
      :name,
      :authorizer_payload_format_version,
      :enable_simple_responses)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAuthorizersRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         max_results: "__string",
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    class GetAuthorizersRequest < Struct.new(
      :api_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   @return [Array<Types::Authorizer>]
    #
    # @!attribute [rw] next_token
    #   The next page of elements from this collection. Not valid for the
    #   last element of the collection.
    #   @return [String]
    #
    class GetAuthorizersResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDeploymentRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         deployment_id: "__string", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] deployment_id
    #   @return [String]
    #
    class GetDeploymentRequest < Struct.new(
      :api_id,
      :deployment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_deployed
    #   @return [Boolean]
    #
    # @!attribute [rw] created_date
    #   @return [Time]
    #
    # @!attribute [rw] deployment_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] deployment_status
    #   Represents a deployment status.
    #   @return [String]
    #
    # @!attribute [rw] deployment_status_message
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    class GetDeploymentResponse < Struct.new(
      :auto_deployed,
      :created_date,
      :deployment_id,
      :deployment_status,
      :deployment_status_message,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDeploymentsRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         max_results: "__string",
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    class GetDeploymentsRequest < Struct.new(
      :api_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   @return [Array<Types::Deployment>]
    #
    # @!attribute [rw] next_token
    #   The next page of elements from this collection. Not valid for the
    #   last element of the collection.
    #   @return [String]
    #
    class GetDeploymentsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDomainNameRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "__string", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   @return [String]
    #
    class GetDomainNameRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_mapping_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   A string with a length between \[1-512\].
    #   @return [String]
    #
    # @!attribute [rw] domain_name_configurations
    #   The domain name configurations.
    #   @return [Array<Types::DomainNameConfiguration>]
    #
    # @!attribute [rw] mutual_tls_authentication
    #   If specified, API Gateway performs two-way authentication between
    #   the client and the server. Clients must present a trusted
    #   certificate to access your API.
    #   @return [Types::MutualTlsAuthentication]
    #
    # @!attribute [rw] tags
    #   Represents a collection of tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    class GetDomainNameResponse < Struct.new(
      :api_mapping_selection_expression,
      :domain_name,
      :domain_name_configurations,
      :mutual_tls_authentication,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDomainNamesRequest
    #   data as a hash:
    #
    #       {
    #         max_results: "__string",
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    class GetDomainNamesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   @return [Array<Types::DomainName>]
    #
    # @!attribute [rw] next_token
    #   The next page of elements from this collection. Not valid for the
    #   last element of the collection.
    #   @return [String]
    #
    class GetDomainNamesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetIntegrationRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         integration_id: "__string", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] integration_id
    #   @return [String]
    #
    class GetIntegrationRequest < Struct.new(
      :api_id,
      :integration_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_gateway_managed
    #   @return [Boolean]
    #
    # @!attribute [rw] connection_id
    #   A string with a length between \[1-1024\].
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   Represents a connection type.
    #   @return [String]
    #
    # @!attribute [rw] content_handling_strategy
    #   Specifies how to handle response payload content type conversions.
    #   Supported only for WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] credentials_arn
    #   Represents an Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    # @!attribute [rw] integration_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] integration_method
    #   A string with a length between \[1-64\].
    #   @return [String]
    #
    # @!attribute [rw] integration_response_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] integration_subtype
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] integration_type
    #   Represents an API method integration type.
    #   @return [String]
    #
    # @!attribute [rw] integration_uri
    #   A string representation of a URI with a length between \[1-2048\].
    #   @return [String]
    #
    # @!attribute [rw] passthrough_behavior
    #   Represents passthrough behavior for an integration response.
    #   Supported only for WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] payload_format_version
    #   A string with a length between \[1-64\].
    #   @return [String]
    #
    # @!attribute [rw] request_parameters
    #   A key-value map specifying response parameters that are passed to
    #   the method response from the backend. The key is a method response
    #   header parameter name and the mapped value is an integration
    #   response header value, a static value enclosed within a pair of
    #   single quotes, or a JSON expression from the integration response
    #   body. The mapping key must match the pattern of
    #   method.response.header.\\\{name\\}, where name is a valid and unique
    #   header name. The mapped non-static value must match the pattern of
    #   integration.response.header.\\\{name\\} or
    #   integration.response.body.\\\{JSON-expression\\}, where name is a
    #   valid and unique response header name and JSON-expression is a valid
    #   JSON expression without the $ prefix.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] request_templates
    #   A mapping of identifier keys to templates. The value is an actual
    #   template script. The key is typically a SelectionKey which is chosen
    #   based on evaluating a selection expression.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] template_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_millis
    #   An integer with a value between \[50-30000\].
    #   @return [Integer]
    #
    # @!attribute [rw] tls_config
    #   The TLS configuration for a private integration. If you specify a
    #   TLS configuration, private integration traffic uses the HTTPS
    #   protocol. Supported only for HTTP APIs.
    #   @return [Types::TlsConfig]
    #
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
      :template_selection_expression,
      :timeout_in_millis,
      :tls_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetIntegrationResponseRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         integration_id: "__string", # required
    #         integration_response_id: "__string", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] integration_id
    #   @return [String]
    #
    # @!attribute [rw] integration_response_id
    #   @return [String]
    #
    class GetIntegrationResponseRequest < Struct.new(
      :api_id,
      :integration_id,
      :integration_response_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_handling_strategy
    #   Specifies how to handle response payload content type conversions.
    #   Supported only for WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] integration_response_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] integration_response_key
    #   After evaluating a selection expression, the result is compared
    #   against one or more selection keys to find a matching key. See
    #   [Selection Expressions][1] for a list of expressions and each
    #   expression's associated selection key type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] response_parameters
    #   A key-value map specifying response parameters that are passed to
    #   the method response from the backend. The key is a method response
    #   header parameter name and the mapped value is an integration
    #   response header value, a static value enclosed within a pair of
    #   single quotes, or a JSON expression from the integration response
    #   body. The mapping key must match the pattern of
    #   method.response.header.\\\{name\\}, where name is a valid and unique
    #   header name. The mapped non-static value must match the pattern of
    #   integration.response.header.\\\{name\\} or
    #   integration.response.body.\\\{JSON-expression\\}, where name is a
    #   valid and unique response header name and JSON-expression is a valid
    #   JSON expression without the $ prefix.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] response_templates
    #   A mapping of identifier keys to templates. The value is an actual
    #   template script. The key is typically a SelectionKey which is chosen
    #   based on evaluating a selection expression.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] template_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    class GetIntegrationResponseResponse < Struct.new(
      :content_handling_strategy,
      :integration_response_id,
      :integration_response_key,
      :response_parameters,
      :response_templates,
      :template_selection_expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetIntegrationResponsesRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         integration_id: "__string", # required
    #         max_results: "__string",
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] integration_id
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    class GetIntegrationResponsesRequest < Struct.new(
      :api_id,
      :integration_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   @return [Array<Types::IntegrationResponse>]
    #
    # @!attribute [rw] next_token
    #   The next page of elements from this collection. Not valid for the
    #   last element of the collection.
    #   @return [String]
    #
    class GetIntegrationResponsesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetIntegrationsRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         max_results: "__string",
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    class GetIntegrationsRequest < Struct.new(
      :api_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   @return [Array<Types::Integration>]
    #
    # @!attribute [rw] next_token
    #   The next page of elements from this collection. Not valid for the
    #   last element of the collection.
    #   @return [String]
    #
    class GetIntegrationsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetModelRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         model_id: "__string", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   @return [String]
    #
    class GetModelRequest < Struct.new(
      :api_id,
      :model_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_type
    #   A string with a length between \[1-256\].
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   A string with a length between \[0-32768\].
    #   @return [String]
    #
    class GetModelResponse < Struct.new(
      :content_type,
      :description,
      :model_id,
      :name,
      :schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetModelTemplateRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         model_id: "__string", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   @return [String]
    #
    class GetModelTemplateRequest < Struct.new(
      :api_id,
      :model_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] value
    #   @return [String]
    #
    class GetModelTemplateResponse < Struct.new(
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetModelsRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         max_results: "__string",
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    class GetModelsRequest < Struct.new(
      :api_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   @return [Array<Types::Model>]
    #
    # @!attribute [rw] next_token
    #   The next page of elements from this collection. Not valid for the
    #   last element of the collection.
    #   @return [String]
    #
    class GetModelsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRouteRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         route_id: "__string", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] route_id
    #   @return [String]
    #
    class GetRouteRequest < Struct.new(
      :api_id,
      :route_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_gateway_managed
    #   @return [Boolean]
    #
    # @!attribute [rw] api_key_required
    #   @return [Boolean]
    #
    # @!attribute [rw] authorization_scopes
    #   A list of authorization scopes configured on a route. The scopes are
    #   used with a JWT authorizer to authorize the method invocation. The
    #   authorization works by matching the route scopes against the scopes
    #   parsed from the access token in the incoming request. The method
    #   invocation is authorized if any route scope matches a claimed scope
    #   in the access token. Otherwise, the invocation is not authorized.
    #   When the route scope is configured, the client must provide an
    #   access token instead of an identity token for authorization
    #   purposes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] authorization_type
    #   The authorization type. For WebSocket APIs, valid values are NONE
    #   for open access, AWS\_IAM for using AWS IAM permissions, and CUSTOM
    #   for using a Lambda authorizer. For HTTP APIs, valid values are NONE
    #   for open access, JWT for using JSON Web Tokens, AWS\_IAM for using
    #   AWS IAM permissions, and CUSTOM for using a Lambda authorizer.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] model_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] operation_name
    #   A string with a length between \[1-64\].
    #   @return [String]
    #
    # @!attribute [rw] request_models
    #   The route models.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] request_parameters
    #   The route parameters.
    #   @return [Hash<String,Types::ParameterConstraints>]
    #
    # @!attribute [rw] route_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] route_key
    #   After evaluating a selection expression, the result is compared
    #   against one or more selection keys to find a matching key. See
    #   [Selection Expressions][1] for a list of expressions and each
    #   expression's associated selection key type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] route_response_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] target
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
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
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRouteResponseRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         route_id: "__string", # required
    #         route_response_id: "__string", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] route_id
    #   @return [String]
    #
    # @!attribute [rw] route_response_id
    #   @return [String]
    #
    class GetRouteResponseRequest < Struct.new(
      :api_id,
      :route_id,
      :route_response_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] response_models
    #   The route models.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] response_parameters
    #   The route parameters.
    #   @return [Hash<String,Types::ParameterConstraints>]
    #
    # @!attribute [rw] route_response_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] route_response_key
    #   After evaluating a selection expression, the result is compared
    #   against one or more selection keys to find a matching key. See
    #   [Selection Expressions][1] for a list of expressions and each
    #   expression's associated selection key type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    class GetRouteResponseResponse < Struct.new(
      :model_selection_expression,
      :response_models,
      :response_parameters,
      :route_response_id,
      :route_response_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRouteResponsesRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         max_results: "__string",
    #         next_token: "__string",
    #         route_id: "__string", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] route_id
    #   @return [String]
    #
    class GetRouteResponsesRequest < Struct.new(
      :api_id,
      :max_results,
      :next_token,
      :route_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   @return [Array<Types::RouteResponse>]
    #
    # @!attribute [rw] next_token
    #   The next page of elements from this collection. Not valid for the
    #   last element of the collection.
    #   @return [String]
    #
    class GetRouteResponsesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRoutesRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         max_results: "__string",
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    class GetRoutesRequest < Struct.new(
      :api_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   @return [Array<Types::Route>]
    #
    # @!attribute [rw] next_token
    #   The next page of elements from this collection. Not valid for the
    #   last element of the collection.
    #   @return [String]
    #
    class GetRoutesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetStageRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         stage_name: "__string", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   @return [String]
    #
    class GetStageRequest < Struct.new(
      :api_id,
      :stage_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_log_settings
    #   Settings for logging access in a stage.
    #   @return [Types::AccessLogSettings]
    #
    # @!attribute [rw] api_gateway_managed
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_deploy
    #   @return [Boolean]
    #
    # @!attribute [rw] client_certificate_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   @return [Time]
    #
    # @!attribute [rw] default_route_settings
    #   Represents a collection of route settings.
    #   @return [Types::RouteSettings]
    #
    # @!attribute [rw] deployment_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    # @!attribute [rw] last_deployment_status_message
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date
    #   @return [Time]
    #
    # @!attribute [rw] route_settings
    #   The route settings map.
    #   @return [Hash<String,Types::RouteSettings>]
    #
    # @!attribute [rw] stage_name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] stage_variables
    #   The stage variable map.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   Represents a collection of tags associated with the resource.
    #   @return [Hash<String,String>]
    #
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
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetStagesRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         max_results: "__string",
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    class GetStagesRequest < Struct.new(
      :api_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   @return [Array<Types::Stage>]
    #
    # @!attribute [rw] next_token
    #   The next page of elements from this collection. Not valid for the
    #   last element of the collection.
    #   @return [String]
    #
    class GetStagesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTagsRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    class GetTagsRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Represents a collection of tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    class GetTagsResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetVpcLinkRequest
    #   data as a hash:
    #
    #       {
    #         vpc_link_id: "__string", # required
    #       }
    #
    # @!attribute [rw] vpc_link_id
    #   @return [String]
    #
    class GetVpcLinkRequest < Struct.new(
      :vpc_link_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_date
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   A list of security group IDs for the VPC link.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_ids
    #   A list of subnet IDs to include in the VPC link.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Represents a collection of tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vpc_link_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] vpc_link_status
    #   The status of the VPC link.
    #   @return [String]
    #
    # @!attribute [rw] vpc_link_status_message
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    # @!attribute [rw] vpc_link_version
    #   The version of the VPC link.
    #   @return [String]
    #
    class GetVpcLinkResponse < Struct.new(
      :created_date,
      :name,
      :security_group_ids,
      :subnet_ids,
      :tags,
      :vpc_link_id,
      :vpc_link_status,
      :vpc_link_status_message,
      :vpc_link_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetVpcLinksRequest
    #   data as a hash:
    #
    #       {
    #         max_results: "__string",
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    class GetVpcLinksRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   @return [Array<Types::VpcLink>]
    #
    # @!attribute [rw] next_token
    #   The next page of elements from this collection. Not valid for the
    #   last element of the collection.
    #   @return [String]
    #
    class GetVpcLinksResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input to ImportAPI. Supported only for HTTP APIs.
    #
    # @!attribute [rw] body
    #   The OpenAPI definition. Supported only for HTTP APIs.
    #   @return [String]
    #
    class ImportApiInput < Struct.new(
      :body)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ImportApiRequest
    #   data as a hash:
    #
    #       {
    #         basepath: "__string",
    #         body: "__string", # required
    #         fail_on_warnings: false,
    #       }
    #
    # @!attribute [rw] basepath
    #   @return [String]
    #
    # @!attribute [rw] body
    #   @return [String]
    #
    # @!attribute [rw] fail_on_warnings
    #   @return [Boolean]
    #
    class ImportApiRequest < Struct.new(
      :basepath,
      :body,
      :fail_on_warnings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_endpoint
    #   @return [String]
    #
    # @!attribute [rw] api_gateway_managed
    #   @return [Boolean]
    #
    # @!attribute [rw] api_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] api_key_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] cors_configuration
    #   Represents a CORS configuration. Supported only for HTTP APIs. See
    #   [Configuring CORS][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html
    #   @return [Types::Cors]
    #
    # @!attribute [rw] created_date
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    # @!attribute [rw] disable_schema_validation
    #   @return [Boolean]
    #
    # @!attribute [rw] disable_execute_api_endpoint
    #   @return [Boolean]
    #
    # @!attribute [rw] import_info
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] protocol_type
    #   Represents a protocol type.
    #   @return [String]
    #
    # @!attribute [rw] route_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Represents a collection of tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] version
    #   A string with a length between \[1-64\].
    #   @return [String]
    #
    # @!attribute [rw] warnings
    #   @return [Array<String>]
    #
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
      :name,
      :protocol_type,
      :route_selection_expression,
      :tags,
      :version,
      :warnings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an integration.
    #
    # @!attribute [rw] api_gateway_managed
    #   Specifies whether an integration is managed by API Gateway. If you
    #   created an API using using quick create, the resulting integration
    #   is managed by API Gateway. You can update a managed integration, but
    #   you can't delete it.
    #   @return [Boolean]
    #
    # @!attribute [rw] connection_id
    #   The ID of the VPC link for a private integration. Supported only for
    #   HTTP APIs.
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   The type of the network connection to the integration endpoint.
    #   Specify INTERNET for connections through the public routable
    #   internet or VPC\_LINK for private connections between API Gateway
    #   and resources in a VPC. The default value is INTERNET.
    #   @return [String]
    #
    # @!attribute [rw] content_handling_strategy
    #   Supported only for WebSocket APIs. Specifies how to handle response
    #   payload content type conversions. Supported values are
    #   CONVERT\_TO\_BINARY and CONVERT\_TO\_TEXT, with the following
    #   behaviors:
    #
    #   CONVERT\_TO\_BINARY: Converts a response payload from a
    #   Base64-encoded string to the corresponding binary blob.
    #
    #   CONVERT\_TO\_TEXT: Converts a response payload from a binary blob to
    #   a Base64-encoded string.
    #
    #   If this property is not defined, the response payload will be passed
    #   through from the integration response to the route response or
    #   method response without modification.
    #   @return [String]
    #
    # @!attribute [rw] credentials_arn
    #   Specifies the credentials required for the integration, if any. For
    #   AWS integrations, three options are available. To specify an IAM
    #   Role for API Gateway to assume, use the role's Amazon Resource Name
    #   (ARN). To require that the caller's identity be passed through from
    #   the request, specify the string arn:aws:iam::*:user/*. To use
    #   resource-based permissions on supported AWS services, specify null.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Represents the description of an integration.
    #   @return [String]
    #
    # @!attribute [rw] integration_id
    #   Represents the identifier of an integration.
    #   @return [String]
    #
    # @!attribute [rw] integration_method
    #   Specifies the integration's HTTP method type.
    #   @return [String]
    #
    # @!attribute [rw] integration_response_selection_expression
    #   The integration response selection expression for the integration.
    #   Supported only for WebSocket APIs. See [Integration Response
    #   Selection Expressions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-integration-response-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] integration_subtype
    #   Supported only for HTTP API AWS\_PROXY integrations. Specifies the
    #   AWS service action to invoke. To learn more, see [Integration
    #   subtype reference][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html
    #   @return [String]
    #
    # @!attribute [rw] integration_type
    #   The integration type of an integration. One of the following:
    #
    #   AWS: for integrating the route or method request with an AWS service
    #   action, including the Lambda function-invoking action. With the
    #   Lambda function-invoking action, this is referred to as the Lambda
    #   custom integration. With any other AWS service action, this is known
    #   as AWS integration. Supported only for WebSocket APIs.
    #
    #   AWS\_PROXY: for integrating the route or method request with a
    #   Lambda function or other AWS service action. This integration is
    #   also referred to as a Lambda proxy integration.
    #
    #   HTTP: for integrating the route or method request with an HTTP
    #   endpoint. This integration is also referred to as the HTTP custom
    #   integration. Supported only for WebSocket APIs.
    #
    #   HTTP\_PROXY: for integrating the route or method request with an
    #   HTTP endpoint, with the client request passed through as-is. This is
    #   also referred to as HTTP proxy integration.
    #
    #   MOCK: for integrating the route or method request with API Gateway
    #   as a "loopback" endpoint without invoking any backend. Supported
    #   only for WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] integration_uri
    #   For a Lambda integration, specify the URI of a Lambda function.
    #
    #   For an HTTP integration, specify a fully-qualified URL.
    #
    #   For an HTTP API private integration, specify the ARN of an
    #   Application Load Balancer listener, Network Load Balancer listener,
    #   or AWS Cloud Map service. If you specify the ARN of an AWS Cloud Map
    #   service, API Gateway uses DiscoverInstances to identify resources.
    #   You can use query parameters to target specific resources. To learn
    #   more, see [DiscoverInstances][1]. For private integrations, all
    #   resources must be owned by the same AWS account.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html
    #   @return [String]
    #
    # @!attribute [rw] passthrough_behavior
    #   Specifies the pass-through behavior for incoming requests based on
    #   the Content-Type header in the request, and the available mapping
    #   templates specified as the requestTemplates property on the
    #   Integration resource. There are three valid values: WHEN\_NO\_MATCH,
    #   WHEN\_NO\_TEMPLATES, and NEVER. Supported only for WebSocket APIs.
    #
    #   WHEN\_NO\_MATCH passes the request body for unmapped content types
    #   through to the integration backend without transformation.
    #
    #   NEVER rejects unmapped content types with an HTTP 415 Unsupported
    #   Media Type response.
    #
    #   WHEN\_NO\_TEMPLATES allows pass-through when the integration has no
    #   content types mapped to templates. However, if there is at least one
    #   content type defined, unmapped content types will be rejected with
    #   the same HTTP 415 Unsupported Media Type response.
    #   @return [String]
    #
    # @!attribute [rw] payload_format_version
    #   Specifies the format of the payload sent to an integration. Required
    #   for HTTP APIs.
    #   @return [String]
    #
    # @!attribute [rw] request_parameters
    #   For WebSocket APIs, a key-value map specifying request parameters
    #   that are passed from the method request to the backend. The key is
    #   an integration request parameter name and the associated value is a
    #   method request parameter value or static value that must be enclosed
    #   within single quotes and pre-encoded as required by the backend. The
    #   method request parameter value must match the pattern of
    #   method.request.*\\\{location\\}*.*\\\{name\\}* , where
    #   *\\\{location\\}* is querystring, path, or header; and *\\\{name\\}*
    #   must be a valid and unique method request parameter name.
    #
    #   For HTTP APIs, request parameters are a key-value map specifying
    #   parameters that are passed to AWS\_PROXY integrations with a
    #   specified integrationSubtype. You can provide static values, or map
    #   request data, stage variables, or context variables that are
    #   evaluated at runtime. To learn more, see [Working with AWS service
    #   integrations for HTTP APIs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] request_templates
    #   Represents a map of Velocity templates that are applied on the
    #   request payload based on the value of the Content-Type header sent
    #   by the client. The content type value is the key in this map, and
    #   the template (as a String) is the value. Supported only for
    #   WebSocket APIs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] template_selection_expression
    #   The template selection expression for the integration. Supported
    #   only for WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_millis
    #   Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs
    #   and between 50 and 30,000 milliseconds for HTTP APIs. The default
    #   timeout is 29 seconds for WebSocket APIs and 30 seconds for HTTP
    #   APIs.
    #   @return [Integer]
    #
    # @!attribute [rw] tls_config
    #   The TLS configuration for a private integration. If you specify a
    #   TLS configuration, private integration traffic uses the HTTPS
    #   protocol. Supported only for HTTP APIs.
    #   @return [Types::TlsConfig]
    #
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
      :template_selection_expression,
      :timeout_in_millis,
      :tls_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an integration response.
    #
    # @!attribute [rw] content_handling_strategy
    #   Supported only for WebSocket APIs. Specifies how to handle response
    #   payload content type conversions. Supported values are
    #   CONVERT\_TO\_BINARY and CONVERT\_TO\_TEXT, with the following
    #   behaviors:
    #
    #   CONVERT\_TO\_BINARY: Converts a response payload from a
    #   Base64-encoded string to the corresponding binary blob.
    #
    #   CONVERT\_TO\_TEXT: Converts a response payload from a binary blob to
    #   a Base64-encoded string.
    #
    #   If this property is not defined, the response payload will be passed
    #   through from the integration response to the route response or
    #   method response without modification.
    #   @return [String]
    #
    # @!attribute [rw] integration_response_id
    #   The integration response ID.
    #   @return [String]
    #
    # @!attribute [rw] integration_response_key
    #   The integration response key.
    #   @return [String]
    #
    # @!attribute [rw] response_parameters
    #   A key-value map specifying response parameters that are passed to
    #   the method response from the backend. The key is a method response
    #   header parameter name and the mapped value is an integration
    #   response header value, a static value enclosed within a pair of
    #   single quotes, or a JSON expression from the integration response
    #   body. The mapping key must match the pattern of
    #   method.response.header.\\\{name\\}, where name is a valid and unique
    #   header name. The mapped non-static value must match the pattern of
    #   integration.response.header.\\\{name\\} or
    #   integration.response.body.\\\{JSON-expression\\}, where name is a
    #   valid and unique response header name and JSON-expression is a valid
    #   JSON expression without the $ prefix.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] response_templates
    #   The collection of response templates for the integration response as
    #   a string-to-string map of key-value pairs. Response templates are
    #   represented as a key/value map, with a content-type as the key and a
    #   template as the value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] template_selection_expression
    #   The template selection expressions for the integration response.
    #   @return [String]
    #
    class IntegrationResponse < Struct.new(
      :content_handling_strategy,
      :integration_response_id,
      :integration_response_key,
      :response_parameters,
      :response_templates,
      :template_selection_expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a collection of integration responses.
    #
    # @!attribute [rw] items
    #   The elements from this collection.
    #   @return [Array<Types::IntegrationResponse>]
    #
    # @!attribute [rw] next_token
    #   The next page of elements from this collection. Not valid for the
    #   last element of the collection.
    #   @return [String]
    #
    class IntegrationResponses < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a collection of integrations.
    #
    # @!attribute [rw] items
    #   The elements from this collection.
    #   @return [Array<Types::Integration>]
    #
    # @!attribute [rw] next_token
    #   The next page of elements from this collection. Not valid for the
    #   last element of the collection.
    #   @return [String]
    #
    class Integrations < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the configuration of a JWT authorizer. Required for the JWT
    # authorizer type. Supported only for HTTP APIs.
    #
    # @note When making an API call, you may pass JWTConfiguration
    #   data as a hash:
    #
    #       {
    #         audience: ["__string"],
    #         issuer: "UriWithLengthBetween1And2048",
    #       }
    #
    # @!attribute [rw] audience
    #   A list of the intended recipients of the JWT. A valid JWT must
    #   provide an aud that matches at least one entry in this list. See
    #   [RFC 7519][1]. Supported only for HTTP APIs.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc7519#section-4.1.3
    #   @return [Array<String>]
    #
    # @!attribute [rw] issuer
    #   The base domain of the identity provider that issues JSON Web
    #   Tokens. For example, an Amazon Cognito user pool has the following
    #   format:
    #   https://cognito-idp.*\\\{region\\}*.amazonaws.com/*\\\{userPoolId\\}*
    #   . Required for the JWT authorizer type. Supported only for HTTP
    #   APIs.
    #   @return [String]
    #
    class JWTConfiguration < Struct.new(
      :audience,
      :issuer)
      SENSITIVE = []
      include Aws::Structure
    end

    # A limit has been exceeded. See the accompanying error message for
    # details.
    #
    # @!attribute [rw] limit_type
    #   The limit type.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Describes the error encountered.
    #   @return [String]
    #
    class LimitExceededException < Struct.new(
      :limit_type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a data model for an API. Supported only for WebSocket APIs.
    # See [Create Models and Mapping Templates for Request and Response
    # Mappings][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/models-mappings.html
    #
    # @!attribute [rw] content_type
    #   The content-type for the model, for example, "application/json".
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the model.
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   The model identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the model. Must be alphanumeric.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The schema for the model. For application/json models, this should
    #   be JSON schema draft 4 model.
    #   @return [String]
    #
    class Model < Struct.new(
      :content_type,
      :description,
      :model_id,
      :name,
      :schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a collection of data models. See [Create Models and Mapping
    # Templates for Request and Response Mappings][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/models-mappings.html
    #
    # @!attribute [rw] items
    #   The elements from this collection.
    #   @return [Array<Types::Model>]
    #
    # @!attribute [rw] next_token
    #   The next page of elements from this collection. Not valid for the
    #   last element of the collection.
    #   @return [String]
    #
    class Models < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # If specified, API Gateway performs two-way authentication between the
    # client and the server. Clients must present a trusted certificate to
    # access your API.
    #
    # @!attribute [rw] truststore_uri
    #   An Amazon S3 URL that specifies the truststore for mutual TLS
    #   authentication, for example, s3://*bucket-name*/*key-name*. The
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

    # If specified, API Gateway performs two-way authentication between the
    # client and the server. Clients must present a trusted certificate to
    # access your API.
    #
    # @note When making an API call, you may pass MutualTlsAuthenticationInput
    #   data as a hash:
    #
    #       {
    #         truststore_uri: "UriWithLengthBetween1And2048",
    #         truststore_version: "StringWithLengthBetween1And64",
    #       }
    #
    # @!attribute [rw] truststore_uri
    #   An Amazon S3 URL that specifies the truststore for mutual TLS
    #   authentication, for example, s3://*bucket-name*/*key-name*. The
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
    class MutualTlsAuthenticationInput < Struct.new(
      :truststore_uri,
      :truststore_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource specified in the request was not found. See the message
    # field for more information.
    #
    # @!attribute [rw] message
    #   Describes the error encountered.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    class NotFoundException < Struct.new(
      :message,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Validation constraints imposed on parameters of a request (path, query
    # string, headers).
    #
    # @note When making an API call, you may pass ParameterConstraints
    #   data as a hash:
    #
    #       {
    #         required: false,
    #       }
    #
    # @!attribute [rw] required
    #   Whether or not the parameter is required.
    #   @return [Boolean]
    #
    class ParameterConstraints < Struct.new(
      :required)
      SENSITIVE = []
      include Aws::Structure
    end

    # Overwrites the configuration of an existing API using the provided
    # definition. Supported only for HTTP APIs.
    #
    # @!attribute [rw] body
    #   The OpenAPI definition. Supported only for HTTP APIs.
    #   @return [String]
    #
    class ReimportApiInput < Struct.new(
      :body)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ReimportApiRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         basepath: "__string",
    #         body: "__string", # required
    #         fail_on_warnings: false,
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] basepath
    #   @return [String]
    #
    # @!attribute [rw] body
    #   @return [String]
    #
    # @!attribute [rw] fail_on_warnings
    #   @return [Boolean]
    #
    class ReimportApiRequest < Struct.new(
      :api_id,
      :basepath,
      :body,
      :fail_on_warnings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_endpoint
    #   @return [String]
    #
    # @!attribute [rw] api_gateway_managed
    #   @return [Boolean]
    #
    # @!attribute [rw] api_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] api_key_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] cors_configuration
    #   Represents a CORS configuration. Supported only for HTTP APIs. See
    #   [Configuring CORS][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html
    #   @return [Types::Cors]
    #
    # @!attribute [rw] created_date
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    # @!attribute [rw] disable_schema_validation
    #   @return [Boolean]
    #
    # @!attribute [rw] disable_execute_api_endpoint
    #   @return [Boolean]
    #
    # @!attribute [rw] import_info
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] protocol_type
    #   Represents a protocol type.
    #   @return [String]
    #
    # @!attribute [rw] route_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Represents a collection of tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] version
    #   A string with a length between \[1-64\].
    #   @return [String]
    #
    # @!attribute [rw] warnings
    #   @return [Array<String>]
    #
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
      :name,
      :protocol_type,
      :route_selection_expression,
      :tags,
      :version,
      :warnings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a route.
    #
    # @!attribute [rw] api_gateway_managed
    #   Specifies whether a route is managed by API Gateway. If you created
    #   an API using quick create, the $default route is managed by API
    #   Gateway. You can't modify the $default route key.
    #   @return [Boolean]
    #
    # @!attribute [rw] api_key_required
    #   Specifies whether an API key is required for this route. Supported
    #   only for WebSocket APIs.
    #   @return [Boolean]
    #
    # @!attribute [rw] authorization_scopes
    #   A list of authorization scopes configured on a route. The scopes are
    #   used with a JWT authorizer to authorize the method invocation. The
    #   authorization works by matching the route scopes against the scopes
    #   parsed from the access token in the incoming request. The method
    #   invocation is authorized if any route scope matches a claimed scope
    #   in the access token. Otherwise, the invocation is not authorized.
    #   When the route scope is configured, the client must provide an
    #   access token instead of an identity token for authorization
    #   purposes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] authorization_type
    #   The authorization type for the route. For WebSocket APIs, valid
    #   values are NONE for open access, AWS\_IAM for using AWS IAM
    #   permissions, and CUSTOM for using a Lambda authorizer For HTTP APIs,
    #   valid values are NONE for open access, JWT for using JSON Web
    #   Tokens, AWS\_IAM for using AWS IAM permissions, and CUSTOM for using
    #   a Lambda authorizer.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_id
    #   The identifier of the Authorizer resource to be associated with this
    #   route. The authorizer identifier is generated by API Gateway when
    #   you created the authorizer.
    #   @return [String]
    #
    # @!attribute [rw] model_selection_expression
    #   The model selection expression for the route. Supported only for
    #   WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] operation_name
    #   The operation name for the route.
    #   @return [String]
    #
    # @!attribute [rw] request_models
    #   The request models for the route. Supported only for WebSocket APIs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] request_parameters
    #   The request parameters for the route. Supported only for WebSocket
    #   APIs.
    #   @return [Hash<String,Types::ParameterConstraints>]
    #
    # @!attribute [rw] route_id
    #   The route ID.
    #   @return [String]
    #
    # @!attribute [rw] route_key
    #   The route key for the route.
    #   @return [String]
    #
    # @!attribute [rw] route_response_selection_expression
    #   The route response selection expression for the route. Supported
    #   only for WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The target for the route.
    #   @return [String]
    #
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
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a route response.
    #
    # @!attribute [rw] model_selection_expression
    #   Represents the model selection expression of a route response.
    #   Supported only for WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] response_models
    #   Represents the response models of a route response.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] response_parameters
    #   Represents the response parameters of a route response.
    #   @return [Hash<String,Types::ParameterConstraints>]
    #
    # @!attribute [rw] route_response_id
    #   Represents the identifier of a route response.
    #   @return [String]
    #
    # @!attribute [rw] route_response_key
    #   Represents the route response key of a route response.
    #   @return [String]
    #
    class RouteResponse < Struct.new(
      :model_selection_expression,
      :response_models,
      :response_parameters,
      :route_response_id,
      :route_response_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a collection of route responses.
    #
    # @!attribute [rw] items
    #   The elements from this collection.
    #   @return [Array<Types::RouteResponse>]
    #
    # @!attribute [rw] next_token
    #   The next page of elements from this collection. Not valid for the
    #   last element of the collection.
    #   @return [String]
    #
    class RouteResponses < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a collection of route settings.
    #
    # @note When making an API call, you may pass RouteSettings
    #   data as a hash:
    #
    #       {
    #         data_trace_enabled: false,
    #         detailed_metrics_enabled: false,
    #         logging_level: "ERROR", # accepts ERROR, INFO, OFF
    #         throttling_burst_limit: 1,
    #         throttling_rate_limit: 1.0,
    #       }
    #
    # @!attribute [rw] data_trace_enabled
    #   Specifies whether (true) or not (false) data trace logging is
    #   enabled for this route. This property affects the log entries pushed
    #   to Amazon CloudWatch Logs. Supported only for WebSocket APIs.
    #   @return [Boolean]
    #
    # @!attribute [rw] detailed_metrics_enabled
    #   Specifies whether detailed metrics are enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] logging_level
    #   Specifies the logging level for this route: INFO, ERROR, or OFF.
    #   This property affects the log entries pushed to Amazon CloudWatch
    #   Logs. Supported only for WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] throttling_burst_limit
    #   Specifies the throttling burst limit.
    #   @return [Integer]
    #
    # @!attribute [rw] throttling_rate_limit
    #   Specifies the throttling rate limit.
    #   @return [Float]
    #
    class RouteSettings < Struct.new(
      :data_trace_enabled,
      :detailed_metrics_enabled,
      :logging_level,
      :throttling_burst_limit,
      :throttling_rate_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a collection of routes.
    #
    # @!attribute [rw] items
    #   The elements from this collection.
    #   @return [Array<Types::Route>]
    #
    # @!attribute [rw] next_token
    #   The next page of elements from this collection. Not valid for the
    #   last element of the collection.
    #   @return [String]
    #
    class Routes < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an API stage.
    #
    # @!attribute [rw] access_log_settings
    #   Settings for logging access in this stage.
    #   @return [Types::AccessLogSettings]
    #
    # @!attribute [rw] api_gateway_managed
    #   Specifies whether a stage is managed by API Gateway. If you created
    #   an API using quick create, the $default stage is managed by API
    #   Gateway. You can't modify the $default stage.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_deploy
    #   Specifies whether updates to an API automatically trigger a new
    #   deployment. The default value is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_certificate_id
    #   The identifier of a client certificate for a Stage. Supported only
    #   for WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The timestamp when the stage was created.
    #   @return [Time]
    #
    # @!attribute [rw] default_route_settings
    #   Default route settings for the stage.
    #   @return [Types::RouteSettings]
    #
    # @!attribute [rw] deployment_id
    #   The identifier of the Deployment that the Stage is associated with.
    #   Can't be updated if autoDeploy is enabled.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the stage.
    #   @return [String]
    #
    # @!attribute [rw] last_deployment_status_message
    #   Describes the status of the last deployment of a stage. Supported
    #   only for stages with autoDeploy enabled.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date
    #   The timestamp when the stage was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] route_settings
    #   Route settings for the stage, by routeKey.
    #   @return [Hash<String,Types::RouteSettings>]
    #
    # @!attribute [rw] stage_name
    #   The name of the stage.
    #   @return [String]
    #
    # @!attribute [rw] stage_variables
    #   A map that defines the stage variables for a stage resource.
    #   Variable names can have alphanumeric and underscore characters, and
    #   the values must match \[A-Za-z0-9-.\_~:/?#&amp;=,\]+.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   The collection of tags. Each tag element is associated with a given
    #   resource.
    #   @return [Hash<String,String>]
    #
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
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of Stage resources that are associated with the ApiKey
    # resource.
    #
    # @!attribute [rw] items
    #   The elements from this collection.
    #   @return [Array<Types::Stage>]
    #
    # @!attribute [rw] next_token
    #   The next page of elements from this collection. Not valid for the
    #   last element of the collection.
    #   @return [String]
    #
    class Stages < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input parameters for a TagResource request.
    #
    # @!attribute [rw] tags
    #   The collection of tags. Each tag element is associated with a given
    #   resource.
    #   @return [Hash<String,String>]
    #
    class TagResourceInput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #         tags: {
    #           "__string" => "StringWithLengthBetween1And1600",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Represents a collection of tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    class TagResourceResponse < Aws::EmptyStructure; end

    # Represents a template.
    #
    # @!attribute [rw] value
    #   The template value.
    #   @return [String]
    #
    class Template < Struct.new(
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The TLS configuration for a private integration. If you specify a TLS
    # configuration, private integration traffic uses the HTTPS protocol.
    # Supported only for HTTP APIs.
    #
    # @!attribute [rw] server_name_to_verify
    #   If you specify a server name, API Gateway uses it to verify the
    #   hostname on the integration's certificate. The server name is also
    #   included in the TLS handshake to support Server Name Indication
    #   (SNI) or virtual hosting.
    #   @return [String]
    #
    class TlsConfig < Struct.new(
      :server_name_to_verify)
      SENSITIVE = []
      include Aws::Structure
    end

    # The TLS configuration for a private integration. If you specify a TLS
    # configuration, private integration traffic uses the HTTPS protocol.
    # Supported only for HTTP APIs.
    #
    # @note When making an API call, you may pass TlsConfigInput
    #   data as a hash:
    #
    #       {
    #         server_name_to_verify: "StringWithLengthBetween1And512",
    #       }
    #
    # @!attribute [rw] server_name_to_verify
    #   If you specify a server name, API Gateway uses it to verify the
    #   hostname on the integration's certificate. The server name is also
    #   included in the TLS handshake to support Server Name Indication
    #   (SNI) or virtual hosting.
    #   @return [String]
    #
    class TlsConfigInput < Struct.new(
      :server_name_to_verify)
      SENSITIVE = []
      include Aws::Structure
    end

    # A limit has been exceeded. See the accompanying error message for
    # details.
    #
    # @!attribute [rw] limit_type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class TooManyRequestsException < Struct.new(
      :limit_type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #         tag_keys: ["__string"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   @return [Array<String>]
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input parameters for an UpdateApi request.
    #
    # @!attribute [rw] api_key_selection_expression
    #   An API key selection expression. Supported only for WebSocket APIs.
    #   See [API Key Selection Expressions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] cors_configuration
    #   A CORS configuration. Supported only for HTTP APIs.
    #   @return [Types::Cors]
    #
    # @!attribute [rw] credentials_arn
    #   This property is part of quick create. It specifies the credentials
    #   required for the integration, if any. For a Lambda integration,
    #   three options are available. To specify an IAM Role for API Gateway
    #   to assume, use the role's Amazon Resource Name (ARN). To require
    #   that the caller's identity be passed through from the request,
    #   specify arn:aws:iam::*:user/*. To use resource-based permissions
    #   on supported AWS services, specify null. Currently, this property is
    #   not used for HTTP integrations. If provided, this value replaces the
    #   credentials associated with the quick create integration. Supported
    #   only for HTTP APIs.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the API.
    #   @return [String]
    #
    # @!attribute [rw] disable_schema_validation
    #   Avoid validating models when creating a deployment. Supported only
    #   for WebSocket APIs.
    #   @return [Boolean]
    #
    # @!attribute [rw] disable_execute_api_endpoint
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   The name of the API.
    #   @return [String]
    #
    # @!attribute [rw] route_key
    #   This property is part of quick create. If not specified, the route
    #   created using quick create is kept. Otherwise, this value replaces
    #   the route key of the quick create route. Additional routes may still
    #   be added after the API is updated. Supported only for HTTP APIs.
    #   @return [String]
    #
    # @!attribute [rw] route_selection_expression
    #   The route selection expression for the API. For HTTP APIs, the
    #   routeSelectionExpression must be $\\\{request.method\\}
    #   $\\\{request.path\\}. If not provided, this will be the default for
    #   HTTP APIs. This property is required for WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   This property is part of quick create. For HTTP integrations,
    #   specify a fully qualified URL. For Lambda integrations, specify a
    #   function ARN. The type of the integration will be HTTP\_PROXY or
    #   AWS\_PROXY, respectively. The value provided updates the integration
    #   URI and integration type. You can update a quick-created target, but
    #   you can't remove it from an API. Supported only for HTTP APIs.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   A version identifier for the API.
    #   @return [String]
    #
    class UpdateApiInput < Struct.new(
      :api_key_selection_expression,
      :cors_configuration,
      :credentials_arn,
      :description,
      :disable_schema_validation,
      :disable_execute_api_endpoint,
      :name,
      :route_key,
      :route_selection_expression,
      :target,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input parameters for an UpdateApiMapping request.
    #
    # @!attribute [rw] api_id
    #   The API identifier.
    #   @return [String]
    #
    # @!attribute [rw] api_mapping_key
    #   The API mapping key.
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   The API stage.
    #   @return [String]
    #
    class UpdateApiMappingInput < Struct.new(
      :api_id,
      :api_mapping_key,
      :stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateApiMappingRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "Id", # required
    #         api_mapping_id: "__string", # required
    #         api_mapping_key: "SelectionKey",
    #         domain_name: "__string", # required
    #         stage: "StringWithLengthBetween1And128",
    #       }
    #
    # @!attribute [rw] api_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] api_mapping_id
    #   @return [String]
    #
    # @!attribute [rw] api_mapping_key
    #   After evaluating a selection expression, the result is compared
    #   against one or more selection keys to find a matching key. See
    #   [Selection Expressions][1] for a list of expressions and each
    #   expression's associated selection key type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    class UpdateApiMappingRequest < Struct.new(
      :api_id,
      :api_mapping_id,
      :api_mapping_key,
      :domain_name,
      :stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] api_mapping_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] api_mapping_key
    #   After evaluating a selection expression, the result is compared
    #   against one or more selection keys to find a matching key. See
    #   [Selection Expressions][1] for a list of expressions and each
    #   expression's associated selection key type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    class UpdateApiMappingResponse < Struct.new(
      :api_id,
      :api_mapping_id,
      :api_mapping_key,
      :stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateApiRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         api_key_selection_expression: "SelectionExpression",
    #         cors_configuration: {
    #           allow_credentials: false,
    #           allow_headers: ["__string"],
    #           allow_methods: ["StringWithLengthBetween1And64"],
    #           allow_origins: ["__string"],
    #           expose_headers: ["__string"],
    #           max_age: 1,
    #         },
    #         credentials_arn: "Arn",
    #         description: "StringWithLengthBetween0And1024",
    #         disable_schema_validation: false,
    #         disable_execute_api_endpoint: false,
    #         name: "StringWithLengthBetween1And128",
    #         route_key: "SelectionKey",
    #         route_selection_expression: "SelectionExpression",
    #         target: "UriWithLengthBetween1And2048",
    #         version: "StringWithLengthBetween1And64",
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] api_key_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] cors_configuration
    #   Represents a CORS configuration. Supported only for HTTP APIs. See
    #   [Configuring CORS][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html
    #   @return [Types::Cors]
    #
    # @!attribute [rw] credentials_arn
    #   Represents an Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    # @!attribute [rw] disable_schema_validation
    #   @return [Boolean]
    #
    # @!attribute [rw] disable_execute_api_endpoint
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] route_key
    #   After evaluating a selection expression, the result is compared
    #   against one or more selection keys to find a matching key. See
    #   [Selection Expressions][1] for a list of expressions and each
    #   expression's associated selection key type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] route_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] target
    #   A string representation of a URI with a length between \[1-2048\].
    #   @return [String]
    #
    # @!attribute [rw] version
    #   A string with a length between \[1-64\].
    #   @return [String]
    #
    class UpdateApiRequest < Struct.new(
      :api_id,
      :api_key_selection_expression,
      :cors_configuration,
      :credentials_arn,
      :description,
      :disable_schema_validation,
      :disable_execute_api_endpoint,
      :name,
      :route_key,
      :route_selection_expression,
      :target,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_endpoint
    #   @return [String]
    #
    # @!attribute [rw] api_gateway_managed
    #   @return [Boolean]
    #
    # @!attribute [rw] api_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] api_key_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] cors_configuration
    #   Represents a CORS configuration. Supported only for HTTP APIs. See
    #   [Configuring CORS][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html
    #   @return [Types::Cors]
    #
    # @!attribute [rw] created_date
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    # @!attribute [rw] disable_schema_validation
    #   @return [Boolean]
    #
    # @!attribute [rw] disable_execute_api_endpoint
    #   @return [Boolean]
    #
    # @!attribute [rw] import_info
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] protocol_type
    #   Represents a protocol type.
    #   @return [String]
    #
    # @!attribute [rw] route_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Represents a collection of tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] version
    #   A string with a length between \[1-64\].
    #   @return [String]
    #
    # @!attribute [rw] warnings
    #   @return [Array<String>]
    #
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
      :name,
      :protocol_type,
      :route_selection_expression,
      :tags,
      :version,
      :warnings)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input parameters for an UpdateAuthorizer request.
    #
    # @!attribute [rw] authorizer_credentials_arn
    #   Specifies the required credentials as an IAM role for API Gateway to
    #   invoke the authorizer. To specify an IAM role for API Gateway to
    #   assume, use the role's Amazon Resource Name (ARN). To use
    #   resource-based permissions on the Lambda function, specify null.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_result_ttl_in_seconds
    #   The time to live (TTL) for cached authorizer results, in seconds. If
    #   it equals 0, authorization caching is disabled. If it is greater
    #   than 0, API Gateway caches authorizer responses. The maximum value
    #   is 3600, or 1 hour. Supported only for HTTP API Lambda authorizers.
    #   @return [Integer]
    #
    # @!attribute [rw] authorizer_type
    #   The authorizer type. Specify REQUEST for a Lambda function using
    #   incoming request parameters. Specify JWT to use JSON Web Tokens
    #   (supported only for HTTP APIs).
    #   @return [String]
    #
    # @!attribute [rw] authorizer_uri
    #   The authorizer's Uniform Resource Identifier (URI). For REQUEST
    #   authorizers, this must be a well-formed Lambda function URI, for
    #   example,
    #   arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:*\\\{account\_id\\}*\:function:*\\\{lambda\_function\_name\\}*/invocations.
    #   In general, the URI has this form:
    #   arn:aws:apigateway:*\\\{region\\}*\:lambda:path/*\\\{service\_api\\}*
    #   , where <replaceable />
    #
    #   \\\{region\\} is the same as the region hosting the Lambda function,
    #   path indicates that the remaining substring in the URI should be
    #   treated as the path to the resource, including the initial /. For
    #   Lambda functions, this is usually of the form
    #   /2015-03-31/functions/\[FunctionARN\]/invocations. Supported only
    #   for REQUEST authorizers.
    #   @return [String]
    #
    # @!attribute [rw] identity_source
    #   The identity source for which authorization is requested.
    #
    #   For a REQUEST authorizer, this is optional. The value is a set of
    #   one or more mapping expressions of the specified request parameters.
    #   The identity source can be headers, query string parameters, stage
    #   variables, and context parameters. For example, if an Auth header
    #   and a Name query string parameter are defined as identity sources,
    #   this value is route.request.header.Auth,
    #   route.request.querystring.Name for WebSocket APIs. For HTTP APIs,
    #   use selection expressions prefixed with $, for example,
    #   $request.header.Auth, $request.querystring.Name. These parameters
    #   are used to perform runtime validation for Lambda-based authorizers
    #   by verifying all of the identity-related request parameters are
    #   present in the request, not null, and non-empty. Only when this is
    #   true does the authorizer invoke the authorizer Lambda function.
    #   Otherwise, it returns a 401 Unauthorized response without calling
    #   the Lambda function. For HTTP APIs, identity sources are also used
    #   as the cache key when caching is enabled. To learn more, see
    #   [Working with AWS Lambda authorizers for HTTP APIs][1].
    #
    #   For JWT, a single entry that specifies where to extract the JSON Web
    #   Token (JWT) from inbound requests. Currently only header-based and
    #   query parameter-based selections are supported, for example
    #   $request.header.Authorization.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] identity_validation_expression
    #   This parameter is not used.
    #   @return [String]
    #
    # @!attribute [rw] jwt_configuration
    #   Represents the configuration of a JWT authorizer. Required for the
    #   JWT authorizer type. Supported only for HTTP APIs.
    #   @return [Types::JWTConfiguration]
    #
    # @!attribute [rw] name
    #   The name of the authorizer.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_payload_format_version
    #   Specifies the format of the payload sent to an HTTP API Lambda
    #   authorizer. Required for HTTP API Lambda authorizers. Supported
    #   values are 1.0 and 2.0. To learn more, see [Working with AWS Lambda
    #   authorizers for HTTP APIs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html
    #   @return [String]
    #
    # @!attribute [rw] enable_simple_responses
    #   Specifies whether a Lambda authorizer returns a response in a simple
    #   format. By default, a Lambda authorizer must return an IAM policy.
    #   If enabled, the Lambda authorizer can return a boolean value instead
    #   of an IAM policy. Supported only for HTTP APIs. To learn more, see
    #   [Working with AWS Lambda authorizers for HTTP APIs][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html
    #   @return [Boolean]
    #
    class UpdateAuthorizerInput < Struct.new(
      :authorizer_credentials_arn,
      :authorizer_result_ttl_in_seconds,
      :authorizer_type,
      :authorizer_uri,
      :identity_source,
      :identity_validation_expression,
      :jwt_configuration,
      :name,
      :authorizer_payload_format_version,
      :enable_simple_responses)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateAuthorizerRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         authorizer_credentials_arn: "Arn",
    #         authorizer_id: "__string", # required
    #         authorizer_result_ttl_in_seconds: 1,
    #         authorizer_type: "REQUEST", # accepts REQUEST, JWT
    #         authorizer_uri: "UriWithLengthBetween1And2048",
    #         identity_source: ["__string"],
    #         identity_validation_expression: "StringWithLengthBetween0And1024",
    #         jwt_configuration: {
    #           audience: ["__string"],
    #           issuer: "UriWithLengthBetween1And2048",
    #         },
    #         name: "StringWithLengthBetween1And128",
    #         authorizer_payload_format_version: "StringWithLengthBetween1And64",
    #         enable_simple_responses: false,
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] authorizer_credentials_arn
    #   Represents an Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] authorizer_id
    #   @return [String]
    #
    # @!attribute [rw] authorizer_result_ttl_in_seconds
    #   An integer with a value between \[0-3600\].
    #   @return [Integer]
    #
    # @!attribute [rw] authorizer_type
    #   The authorizer type. Specify REQUEST for a Lambda function using
    #   incoming request parameters. Specify JWT to use JSON Web Tokens
    #   (supported only for HTTP APIs).
    #   @return [String]
    #
    # @!attribute [rw] authorizer_uri
    #   A string representation of a URI with a length between \[1-2048\].
    #   @return [String]
    #
    # @!attribute [rw] identity_source
    #   The identity source for which authorization is requested. For the
    #   REQUEST authorizer, this is required when authorization caching is
    #   enabled. The value is a comma-separated string of one or more
    #   mapping expressions of the specified request parameters. For
    #   example, if an Auth header, a Name query string parameter are
    #   defined as identity sources, this value is
    #   $method.request.header.Auth, $method.request.querystring.Name. These
    #   parameters will be used to derive the authorization caching key and
    #   to perform runtime validation of the REQUEST authorizer by verifying
    #   all of the identity-related request parameters are present, not null
    #   and non-empty. Only when this is true does the authorizer invoke the
    #   authorizer Lambda function, otherwise, it returns a 401 Unauthorized
    #   response without calling the Lambda function. The valid value is a
    #   string of comma-separated mapping expressions of the specified
    #   request parameters. When the authorization caching is not enabled,
    #   this property is optional.
    #   @return [Array<String>]
    #
    # @!attribute [rw] identity_validation_expression
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    # @!attribute [rw] jwt_configuration
    #   Represents the configuration of a JWT authorizer. Required for the
    #   JWT authorizer type. Supported only for HTTP APIs.
    #   @return [Types::JWTConfiguration]
    #
    # @!attribute [rw] name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] authorizer_payload_format_version
    #   A string with a length between \[1-64\].
    #   @return [String]
    #
    # @!attribute [rw] enable_simple_responses
    #   @return [Boolean]
    #
    class UpdateAuthorizerRequest < Struct.new(
      :api_id,
      :authorizer_credentials_arn,
      :authorizer_id,
      :authorizer_result_ttl_in_seconds,
      :authorizer_type,
      :authorizer_uri,
      :identity_source,
      :identity_validation_expression,
      :jwt_configuration,
      :name,
      :authorizer_payload_format_version,
      :enable_simple_responses)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authorizer_credentials_arn
    #   Represents an Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] authorizer_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_result_ttl_in_seconds
    #   An integer with a value between \[0-3600\].
    #   @return [Integer]
    #
    # @!attribute [rw] authorizer_type
    #   The authorizer type. Specify REQUEST for a Lambda function using
    #   incoming request parameters. Specify JWT to use JSON Web Tokens
    #   (supported only for HTTP APIs).
    #   @return [String]
    #
    # @!attribute [rw] authorizer_uri
    #   A string representation of a URI with a length between \[1-2048\].
    #   @return [String]
    #
    # @!attribute [rw] identity_source
    #   The identity source for which authorization is requested. For the
    #   REQUEST authorizer, this is required when authorization caching is
    #   enabled. The value is a comma-separated string of one or more
    #   mapping expressions of the specified request parameters. For
    #   example, if an Auth header, a Name query string parameter are
    #   defined as identity sources, this value is
    #   $method.request.header.Auth, $method.request.querystring.Name. These
    #   parameters will be used to derive the authorization caching key and
    #   to perform runtime validation of the REQUEST authorizer by verifying
    #   all of the identity-related request parameters are present, not null
    #   and non-empty. Only when this is true does the authorizer invoke the
    #   authorizer Lambda function, otherwise, it returns a 401 Unauthorized
    #   response without calling the Lambda function. The valid value is a
    #   string of comma-separated mapping expressions of the specified
    #   request parameters. When the authorization caching is not enabled,
    #   this property is optional.
    #   @return [Array<String>]
    #
    # @!attribute [rw] identity_validation_expression
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    # @!attribute [rw] jwt_configuration
    #   Represents the configuration of a JWT authorizer. Required for the
    #   JWT authorizer type. Supported only for HTTP APIs.
    #   @return [Types::JWTConfiguration]
    #
    # @!attribute [rw] name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] authorizer_payload_format_version
    #   A string with a length between \[1-64\].
    #   @return [String]
    #
    # @!attribute [rw] enable_simple_responses
    #   @return [Boolean]
    #
    class UpdateAuthorizerResponse < Struct.new(
      :authorizer_credentials_arn,
      :authorizer_id,
      :authorizer_result_ttl_in_seconds,
      :authorizer_type,
      :authorizer_uri,
      :identity_source,
      :identity_validation_expression,
      :jwt_configuration,
      :name,
      :authorizer_payload_format_version,
      :enable_simple_responses)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input parameters for an UpdateDeployment request.
    #
    # @!attribute [rw] description
    #   The description for the deployment resource.
    #   @return [String]
    #
    class UpdateDeploymentInput < Struct.new(
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateDeploymentRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         deployment_id: "__string", # required
    #         description: "StringWithLengthBetween0And1024",
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] deployment_id
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    class UpdateDeploymentRequest < Struct.new(
      :api_id,
      :deployment_id,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_deployed
    #   @return [Boolean]
    #
    # @!attribute [rw] created_date
    #   @return [Time]
    #
    # @!attribute [rw] deployment_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] deployment_status
    #   Represents a deployment status.
    #   @return [String]
    #
    # @!attribute [rw] deployment_status_message
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    class UpdateDeploymentResponse < Struct.new(
      :auto_deployed,
      :created_date,
      :deployment_id,
      :deployment_status,
      :deployment_status_message,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input parameters for an UpdateDomainName request.
    #
    # @!attribute [rw] domain_name_configurations
    #   The domain name configurations.
    #   @return [Array<Types::DomainNameConfiguration>]
    #
    # @!attribute [rw] mutual_tls_authentication
    #   The mutual TLS authentication configuration for a custom domain
    #   name.
    #   @return [Types::MutualTlsAuthenticationInput]
    #
    class UpdateDomainNameInput < Struct.new(
      :domain_name_configurations,
      :mutual_tls_authentication)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateDomainNameRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "__string", # required
    #         domain_name_configurations: [
    #           {
    #             api_gateway_domain_name: "__string",
    #             certificate_arn: "Arn",
    #             certificate_name: "StringWithLengthBetween1And128",
    #             certificate_upload_date: Time.now,
    #             domain_name_status: "AVAILABLE", # accepts AVAILABLE, UPDATING
    #             domain_name_status_message: "__string",
    #             endpoint_type: "REGIONAL", # accepts REGIONAL, EDGE
    #             hosted_zone_id: "__string",
    #             security_policy: "TLS_1_0", # accepts TLS_1_0, TLS_1_2
    #           },
    #         ],
    #         mutual_tls_authentication: {
    #           truststore_uri: "UriWithLengthBetween1And2048",
    #           truststore_version: "StringWithLengthBetween1And64",
    #         },
    #       }
    #
    # @!attribute [rw] domain_name
    #   @return [String]
    #
    # @!attribute [rw] domain_name_configurations
    #   The domain name configurations.
    #   @return [Array<Types::DomainNameConfiguration>]
    #
    # @!attribute [rw] mutual_tls_authentication
    #   If specified, API Gateway performs two-way authentication between
    #   the client and the server. Clients must present a trusted
    #   certificate to access your API.
    #   @return [Types::MutualTlsAuthenticationInput]
    #
    class UpdateDomainNameRequest < Struct.new(
      :domain_name,
      :domain_name_configurations,
      :mutual_tls_authentication)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_mapping_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   A string with a length between \[1-512\].
    #   @return [String]
    #
    # @!attribute [rw] domain_name_configurations
    #   The domain name configurations.
    #   @return [Array<Types::DomainNameConfiguration>]
    #
    # @!attribute [rw] mutual_tls_authentication
    #   If specified, API Gateway performs two-way authentication between
    #   the client and the server. Clients must present a trusted
    #   certificate to access your API.
    #   @return [Types::MutualTlsAuthentication]
    #
    # @!attribute [rw] tags
    #   Represents a collection of tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    class UpdateDomainNameResponse < Struct.new(
      :api_mapping_selection_expression,
      :domain_name,
      :domain_name_configurations,
      :mutual_tls_authentication,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input parameters for an UpdateIntegration request.
    #
    # @!attribute [rw] connection_id
    #   The ID of the VPC link for a private integration. Supported only for
    #   HTTP APIs.
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   The type of the network connection to the integration endpoint.
    #   Specify INTERNET for connections through the public routable
    #   internet or VPC\_LINK for private connections between API Gateway
    #   and resources in a VPC. The default value is INTERNET.
    #   @return [String]
    #
    # @!attribute [rw] content_handling_strategy
    #   Supported only for WebSocket APIs. Specifies how to handle response
    #   payload content type conversions. Supported values are
    #   CONVERT\_TO\_BINARY and CONVERT\_TO\_TEXT, with the following
    #   behaviors:
    #
    #   CONVERT\_TO\_BINARY: Converts a response payload from a
    #   Base64-encoded string to the corresponding binary blob.
    #
    #   CONVERT\_TO\_TEXT: Converts a response payload from a binary blob to
    #   a Base64-encoded string.
    #
    #   If this property is not defined, the response payload will be passed
    #   through from the integration response to the route response or
    #   method response without modification.
    #   @return [String]
    #
    # @!attribute [rw] credentials_arn
    #   Specifies the credentials required for the integration, if any. For
    #   AWS integrations, three options are available. To specify an IAM
    #   Role for API Gateway to assume, use the role's Amazon Resource Name
    #   (ARN). To require that the caller's identity be passed through from
    #   the request, specify the string arn:aws:iam::*:user/*. To use
    #   resource-based permissions on supported AWS services, specify null.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the integration
    #   @return [String]
    #
    # @!attribute [rw] integration_method
    #   Specifies the integration's HTTP method type.
    #   @return [String]
    #
    # @!attribute [rw] integration_subtype
    #   Supported only for HTTP API AWS\_PROXY integrations. Specifies the
    #   AWS service action to invoke. To learn more, see [Integration
    #   subtype reference][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html
    #   @return [String]
    #
    # @!attribute [rw] integration_type
    #   The integration type of an integration. One of the following:
    #
    #   AWS: for integrating the route or method request with an AWS service
    #   action, including the Lambda function-invoking action. With the
    #   Lambda function-invoking action, this is referred to as the Lambda
    #   custom integration. With any other AWS service action, this is known
    #   as AWS integration. Supported only for WebSocket APIs.
    #
    #   AWS\_PROXY: for integrating the route or method request with a
    #   Lambda function or other AWS service action. This integration is
    #   also referred to as a Lambda proxy integration.
    #
    #   HTTP: for integrating the route or method request with an HTTP
    #   endpoint. This integration is also referred to as the HTTP custom
    #   integration. Supported only for WebSocket APIs.
    #
    #   HTTP\_PROXY: for integrating the route or method request with an
    #   HTTP endpoint, with the client request passed through as-is. This is
    #   also referred to as HTTP proxy integration. For HTTP API private
    #   integrations, use an HTTP\_PROXY integration.
    #
    #   MOCK: for integrating the route or method request with API Gateway
    #   as a "loopback" endpoint without invoking any backend. Supported
    #   only for WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] integration_uri
    #   For a Lambda integration, specify the URI of a Lambda function.
    #
    #   For an HTTP integration, specify a fully-qualified URL.
    #
    #   For an HTTP API private integration, specify the ARN of an
    #   Application Load Balancer listener, Network Load Balancer listener,
    #   or AWS Cloud Map service. If you specify the ARN of an AWS Cloud Map
    #   service, API Gateway uses DiscoverInstances to identify resources.
    #   You can use query parameters to target specific resources. To learn
    #   more, see [DiscoverInstances][1]. For private integrations, all
    #   resources must be owned by the same AWS account.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html
    #   @return [String]
    #
    # @!attribute [rw] passthrough_behavior
    #   Specifies the pass-through behavior for incoming requests based on
    #   the Content-Type header in the request, and the available mapping
    #   templates specified as the requestTemplates property on the
    #   Integration resource. There are three valid values: WHEN\_NO\_MATCH,
    #   WHEN\_NO\_TEMPLATES, and NEVER. Supported only for WebSocket APIs.
    #
    #   WHEN\_NO\_MATCH passes the request body for unmapped content types
    #   through to the integration backend without transformation.
    #
    #   NEVER rejects unmapped content types with an HTTP 415 Unsupported
    #   Media Type response.
    #
    #   WHEN\_NO\_TEMPLATES allows pass-through when the integration has no
    #   content types mapped to templates. However, if there is at least one
    #   content type defined, unmapped content types will be rejected with
    #   the same HTTP 415 Unsupported Media Type response.
    #   @return [String]
    #
    # @!attribute [rw] payload_format_version
    #   Specifies the format of the payload sent to an integration. Required
    #   for HTTP APIs.
    #   @return [String]
    #
    # @!attribute [rw] request_parameters
    #   For WebSocket APIs, a key-value map specifying request parameters
    #   that are passed from the method request to the backend. The key is
    #   an integration request parameter name and the associated value is a
    #   method request parameter value or static value that must be enclosed
    #   within single quotes and pre-encoded as required by the backend. The
    #   method request parameter value must match the pattern of
    #   method.request.*\\\{location\\}*.*\\\{name\\}* , where
    #   *\\\{location\\}* is querystring, path, or header; and *\\\{name\\}*
    #   must be a valid and unique method request parameter name.
    #
    #   For HTTP APIs, request parameters are a key-value map specifying
    #   parameters that are passed to AWS\_PROXY integrations with a
    #   specified integrationSubtype. You can provide static values, or map
    #   request data, stage variables, or context variables that are
    #   evaluated at runtime. To learn more, see [Working with AWS service
    #   integrations for HTTP APIs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] request_templates
    #   Represents a map of Velocity templates that are applied on the
    #   request payload based on the value of the Content-Type header sent
    #   by the client. The content type value is the key in this map, and
    #   the template (as a String) is the value. Supported only for
    #   WebSocket APIs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] template_selection_expression
    #   The template selection expression for the integration.
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_millis
    #   Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs
    #   and between 50 and 30,000 milliseconds for HTTP APIs. The default
    #   timeout is 29 seconds for WebSocket APIs and 30 seconds for HTTP
    #   APIs.
    #   @return [Integer]
    #
    # @!attribute [rw] tls_config
    #   The TLS configuration for a private integration. If you specify a
    #   TLS configuration, private integration traffic uses the HTTPS
    #   protocol. Supported only for HTTP APIs.
    #   @return [Types::TlsConfigInput]
    #
    class UpdateIntegrationInput < Struct.new(
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
      :template_selection_expression,
      :timeout_in_millis,
      :tls_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateIntegrationRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         connection_id: "StringWithLengthBetween1And1024",
    #         connection_type: "INTERNET", # accepts INTERNET, VPC_LINK
    #         content_handling_strategy: "CONVERT_TO_BINARY", # accepts CONVERT_TO_BINARY, CONVERT_TO_TEXT
    #         credentials_arn: "Arn",
    #         description: "StringWithLengthBetween0And1024",
    #         integration_id: "__string", # required
    #         integration_method: "StringWithLengthBetween1And64",
    #         integration_subtype: "StringWithLengthBetween1And128",
    #         integration_type: "AWS", # accepts AWS, HTTP, MOCK, HTTP_PROXY, AWS_PROXY
    #         integration_uri: "UriWithLengthBetween1And2048",
    #         passthrough_behavior: "WHEN_NO_MATCH", # accepts WHEN_NO_MATCH, NEVER, WHEN_NO_TEMPLATES
    #         payload_format_version: "StringWithLengthBetween1And64",
    #         request_parameters: {
    #           "__string" => "StringWithLengthBetween1And512",
    #         },
    #         request_templates: {
    #           "__string" => "StringWithLengthBetween0And32K",
    #         },
    #         template_selection_expression: "SelectionExpression",
    #         timeout_in_millis: 1,
    #         tls_config: {
    #           server_name_to_verify: "StringWithLengthBetween1And512",
    #         },
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] connection_id
    #   A string with a length between \[1-1024\].
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   Represents a connection type.
    #   @return [String]
    #
    # @!attribute [rw] content_handling_strategy
    #   Specifies how to handle response payload content type conversions.
    #   Supported only for WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] credentials_arn
    #   Represents an Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    # @!attribute [rw] integration_id
    #   @return [String]
    #
    # @!attribute [rw] integration_method
    #   A string with a length between \[1-64\].
    #   @return [String]
    #
    # @!attribute [rw] integration_subtype
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] integration_type
    #   Represents an API method integration type.
    #   @return [String]
    #
    # @!attribute [rw] integration_uri
    #   A string representation of a URI with a length between \[1-2048\].
    #   @return [String]
    #
    # @!attribute [rw] passthrough_behavior
    #   Represents passthrough behavior for an integration response.
    #   Supported only for WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] payload_format_version
    #   A string with a length between \[1-64\].
    #   @return [String]
    #
    # @!attribute [rw] request_parameters
    #   A key-value map specifying response parameters that are passed to
    #   the method response from the backend. The key is a method response
    #   header parameter name and the mapped value is an integration
    #   response header value, a static value enclosed within a pair of
    #   single quotes, or a JSON expression from the integration response
    #   body. The mapping key must match the pattern of
    #   method.response.header.\\\{name\\}, where name is a valid and unique
    #   header name. The mapped non-static value must match the pattern of
    #   integration.response.header.\\\{name\\} or
    #   integration.response.body.\\\{JSON-expression\\}, where name is a
    #   valid and unique response header name and JSON-expression is a valid
    #   JSON expression without the $ prefix.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] request_templates
    #   A mapping of identifier keys to templates. The value is an actual
    #   template script. The key is typically a SelectionKey which is chosen
    #   based on evaluating a selection expression.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] template_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_millis
    #   An integer with a value between \[50-30000\].
    #   @return [Integer]
    #
    # @!attribute [rw] tls_config
    #   The TLS configuration for a private integration. If you specify a
    #   TLS configuration, private integration traffic uses the HTTPS
    #   protocol. Supported only for HTTP APIs.
    #   @return [Types::TlsConfigInput]
    #
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
      :template_selection_expression,
      :timeout_in_millis,
      :tls_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_gateway_managed
    #   @return [Boolean]
    #
    # @!attribute [rw] connection_id
    #   A string with a length between \[1-1024\].
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   Represents a connection type.
    #   @return [String]
    #
    # @!attribute [rw] content_handling_strategy
    #   Specifies how to handle response payload content type conversions.
    #   Supported only for WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] credentials_arn
    #   Represents an Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    # @!attribute [rw] integration_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] integration_method
    #   A string with a length between \[1-64\].
    #   @return [String]
    #
    # @!attribute [rw] integration_response_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] integration_subtype
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] integration_type
    #   Represents an API method integration type.
    #   @return [String]
    #
    # @!attribute [rw] integration_uri
    #   A string representation of a URI with a length between \[1-2048\].
    #   @return [String]
    #
    # @!attribute [rw] passthrough_behavior
    #   Represents passthrough behavior for an integration response.
    #   Supported only for WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] payload_format_version
    #   A string with a length between \[1-64\].
    #   @return [String]
    #
    # @!attribute [rw] request_parameters
    #   A key-value map specifying response parameters that are passed to
    #   the method response from the backend. The key is a method response
    #   header parameter name and the mapped value is an integration
    #   response header value, a static value enclosed within a pair of
    #   single quotes, or a JSON expression from the integration response
    #   body. The mapping key must match the pattern of
    #   method.response.header.\\\{name\\}, where name is a valid and unique
    #   header name. The mapped non-static value must match the pattern of
    #   integration.response.header.\\\{name\\} or
    #   integration.response.body.\\\{JSON-expression\\}, where name is a
    #   valid and unique response header name and JSON-expression is a valid
    #   JSON expression without the $ prefix.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] request_templates
    #   A mapping of identifier keys to templates. The value is an actual
    #   template script. The key is typically a SelectionKey which is chosen
    #   based on evaluating a selection expression.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] template_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_millis
    #   An integer with a value between \[50-30000\].
    #   @return [Integer]
    #
    # @!attribute [rw] tls_config
    #   The TLS configuration for a private integration. If you specify a
    #   TLS configuration, private integration traffic uses the HTTPS
    #   protocol. Supported only for HTTP APIs.
    #   @return [Types::TlsConfig]
    #
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
      :template_selection_expression,
      :timeout_in_millis,
      :tls_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input parameters for an UpdateIntegrationResponse
    # request.
    #
    # @!attribute [rw] content_handling_strategy
    #   Supported only for WebSocket APIs. Specifies how to handle response
    #   payload content type conversions. Supported values are
    #   CONVERT\_TO\_BINARY and CONVERT\_TO\_TEXT, with the following
    #   behaviors:
    #
    #   CONVERT\_TO\_BINARY: Converts a response payload from a
    #   Base64-encoded string to the corresponding binary blob.
    #
    #   CONVERT\_TO\_TEXT: Converts a response payload from a binary blob to
    #   a Base64-encoded string.
    #
    #   If this property is not defined, the response payload will be passed
    #   through from the integration response to the route response or
    #   method response without modification.
    #   @return [String]
    #
    # @!attribute [rw] integration_response_key
    #   The integration response key.
    #   @return [String]
    #
    # @!attribute [rw] response_parameters
    #   A key-value map specifying response parameters that are passed to
    #   the method response from the backend. The key is a method response
    #   header parameter name and the mapped value is an integration
    #   response header value, a static value enclosed within a pair of
    #   single quotes, or a JSON expression from the integration response
    #   body. The mapping key must match the pattern of
    #   method.response.header.*\\\{name\\}* , where name is a valid and
    #   unique header name. The mapped non-static value must match the
    #   pattern of integration.response.header.*\\\{name\\}* or
    #   integration.response.body.*\\\{JSON-expression\\}* , where
    #   *\\\{name\\}* is a valid and unique response header name and
    #   *\\\{JSON-expression\\}* is a valid JSON expression without the $
    #   prefix.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] response_templates
    #   The collection of response templates for the integration response as
    #   a string-to-string map of key-value pairs. Response templates are
    #   represented as a key/value map, with a content-type as the key and a
    #   template as the value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] template_selection_expression
    #   The template selection expression for the integration response.
    #   Supported only for WebSocket APIs.
    #   @return [String]
    #
    class UpdateIntegrationResponseInput < Struct.new(
      :content_handling_strategy,
      :integration_response_key,
      :response_parameters,
      :response_templates,
      :template_selection_expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateIntegrationResponseRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         content_handling_strategy: "CONVERT_TO_BINARY", # accepts CONVERT_TO_BINARY, CONVERT_TO_TEXT
    #         integration_id: "__string", # required
    #         integration_response_id: "__string", # required
    #         integration_response_key: "SelectionKey",
    #         response_parameters: {
    #           "__string" => "StringWithLengthBetween1And512",
    #         },
    #         response_templates: {
    #           "__string" => "StringWithLengthBetween0And32K",
    #         },
    #         template_selection_expression: "SelectionExpression",
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] content_handling_strategy
    #   Specifies how to handle response payload content type conversions.
    #   Supported only for WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] integration_id
    #   @return [String]
    #
    # @!attribute [rw] integration_response_id
    #   @return [String]
    #
    # @!attribute [rw] integration_response_key
    #   After evaluating a selection expression, the result is compared
    #   against one or more selection keys to find a matching key. See
    #   [Selection Expressions][1] for a list of expressions and each
    #   expression's associated selection key type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] response_parameters
    #   A key-value map specifying response parameters that are passed to
    #   the method response from the backend. The key is a method response
    #   header parameter name and the mapped value is an integration
    #   response header value, a static value enclosed within a pair of
    #   single quotes, or a JSON expression from the integration response
    #   body. The mapping key must match the pattern of
    #   method.response.header.\\\{name\\}, where name is a valid and unique
    #   header name. The mapped non-static value must match the pattern of
    #   integration.response.header.\\\{name\\} or
    #   integration.response.body.\\\{JSON-expression\\}, where name is a
    #   valid and unique response header name and JSON-expression is a valid
    #   JSON expression without the $ prefix.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] response_templates
    #   A mapping of identifier keys to templates. The value is an actual
    #   template script. The key is typically a SelectionKey which is chosen
    #   based on evaluating a selection expression.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] template_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    class UpdateIntegrationResponseRequest < Struct.new(
      :api_id,
      :content_handling_strategy,
      :integration_id,
      :integration_response_id,
      :integration_response_key,
      :response_parameters,
      :response_templates,
      :template_selection_expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_handling_strategy
    #   Specifies how to handle response payload content type conversions.
    #   Supported only for WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] integration_response_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] integration_response_key
    #   After evaluating a selection expression, the result is compared
    #   against one or more selection keys to find a matching key. See
    #   [Selection Expressions][1] for a list of expressions and each
    #   expression's associated selection key type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] response_parameters
    #   A key-value map specifying response parameters that are passed to
    #   the method response from the backend. The key is a method response
    #   header parameter name and the mapped value is an integration
    #   response header value, a static value enclosed within a pair of
    #   single quotes, or a JSON expression from the integration response
    #   body. The mapping key must match the pattern of
    #   method.response.header.\\\{name\\}, where name is a valid and unique
    #   header name. The mapped non-static value must match the pattern of
    #   integration.response.header.\\\{name\\} or
    #   integration.response.body.\\\{JSON-expression\\}, where name is a
    #   valid and unique response header name and JSON-expression is a valid
    #   JSON expression without the $ prefix.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] response_templates
    #   A mapping of identifier keys to templates. The value is an actual
    #   template script. The key is typically a SelectionKey which is chosen
    #   based on evaluating a selection expression.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] template_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    class UpdateIntegrationResponseResponse < Struct.new(
      :content_handling_strategy,
      :integration_response_id,
      :integration_response_key,
      :response_parameters,
      :response_templates,
      :template_selection_expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input parameters for an UpdateModel request. Supported
    # only for WebSocket APIs.
    #
    # @!attribute [rw] content_type
    #   The content-type for the model, for example, "application/json".
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the model.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the model.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The schema for the model. For application/json models, this should
    #   be JSON schema draft 4 model.
    #   @return [String]
    #
    class UpdateModelInput < Struct.new(
      :content_type,
      :description,
      :name,
      :schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateModelRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         content_type: "StringWithLengthBetween1And256",
    #         description: "StringWithLengthBetween0And1024",
    #         model_id: "__string", # required
    #         name: "StringWithLengthBetween1And128",
    #         schema: "StringWithLengthBetween0And32K",
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   A string with a length between \[1-256\].
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   A string with a length between \[0-32768\].
    #   @return [String]
    #
    class UpdateModelRequest < Struct.new(
      :api_id,
      :content_type,
      :description,
      :model_id,
      :name,
      :schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_type
    #   A string with a length between \[1-256\].
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   A string with a length between \[0-32768\].
    #   @return [String]
    #
    class UpdateModelResponse < Struct.new(
      :content_type,
      :description,
      :model_id,
      :name,
      :schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input parameters for an UpdateRoute request.
    #
    # @!attribute [rw] api_key_required
    #   Specifies whether an API key is required for the route. Supported
    #   only for WebSocket APIs.
    #   @return [Boolean]
    #
    # @!attribute [rw] authorization_scopes
    #   The authorization scopes supported by this route.
    #   @return [Array<String>]
    #
    # @!attribute [rw] authorization_type
    #   The authorization type for the route. For WebSocket APIs, valid
    #   values are NONE for open access, AWS\_IAM for using AWS IAM
    #   permissions, and CUSTOM for using a Lambda authorizer For HTTP APIs,
    #   valid values are NONE for open access, JWT for using JSON Web
    #   Tokens, AWS\_IAM for using AWS IAM permissions, and CUSTOM for using
    #   a Lambda authorizer.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_id
    #   The identifier of the Authorizer resource to be associated with this
    #   route. The authorizer identifier is generated by API Gateway when
    #   you created the authorizer.
    #   @return [String]
    #
    # @!attribute [rw] model_selection_expression
    #   The model selection expression for the route. Supported only for
    #   WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] operation_name
    #   The operation name for the route.
    #   @return [String]
    #
    # @!attribute [rw] request_models
    #   The request models for the route. Supported only for WebSocket APIs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] request_parameters
    #   The request parameters for the route. Supported only for WebSocket
    #   APIs.
    #   @return [Hash<String,Types::ParameterConstraints>]
    #
    # @!attribute [rw] route_key
    #   The route key for the route.
    #   @return [String]
    #
    # @!attribute [rw] route_response_selection_expression
    #   The route response selection expression for the route. Supported
    #   only for WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The target for the route.
    #   @return [String]
    #
    class UpdateRouteInput < Struct.new(
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
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateRouteRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         api_key_required: false,
    #         authorization_scopes: ["StringWithLengthBetween1And64"],
    #         authorization_type: "NONE", # accepts NONE, AWS_IAM, CUSTOM, JWT
    #         authorizer_id: "Id",
    #         model_selection_expression: "SelectionExpression",
    #         operation_name: "StringWithLengthBetween1And64",
    #         request_models: {
    #           "__string" => "StringWithLengthBetween1And128",
    #         },
    #         request_parameters: {
    #           "__string" => {
    #             required: false,
    #           },
    #         },
    #         route_id: "__string", # required
    #         route_key: "SelectionKey",
    #         route_response_selection_expression: "SelectionExpression",
    #         target: "StringWithLengthBetween1And128",
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] api_key_required
    #   @return [Boolean]
    #
    # @!attribute [rw] authorization_scopes
    #   A list of authorization scopes configured on a route. The scopes are
    #   used with a JWT authorizer to authorize the method invocation. The
    #   authorization works by matching the route scopes against the scopes
    #   parsed from the access token in the incoming request. The method
    #   invocation is authorized if any route scope matches a claimed scope
    #   in the access token. Otherwise, the invocation is not authorized.
    #   When the route scope is configured, the client must provide an
    #   access token instead of an identity token for authorization
    #   purposes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] authorization_type
    #   The authorization type. For WebSocket APIs, valid values are NONE
    #   for open access, AWS\_IAM for using AWS IAM permissions, and CUSTOM
    #   for using a Lambda authorizer. For HTTP APIs, valid values are NONE
    #   for open access, JWT for using JSON Web Tokens, AWS\_IAM for using
    #   AWS IAM permissions, and CUSTOM for using a Lambda authorizer.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] model_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] operation_name
    #   A string with a length between \[1-64\].
    #   @return [String]
    #
    # @!attribute [rw] request_models
    #   The route models.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] request_parameters
    #   The route parameters.
    #   @return [Hash<String,Types::ParameterConstraints>]
    #
    # @!attribute [rw] route_id
    #   @return [String]
    #
    # @!attribute [rw] route_key
    #   After evaluating a selection expression, the result is compared
    #   against one or more selection keys to find a matching key. See
    #   [Selection Expressions][1] for a list of expressions and each
    #   expression's associated selection key type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] route_response_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] target
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
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
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_gateway_managed
    #   @return [Boolean]
    #
    # @!attribute [rw] api_key_required
    #   @return [Boolean]
    #
    # @!attribute [rw] authorization_scopes
    #   A list of authorization scopes configured on a route. The scopes are
    #   used with a JWT authorizer to authorize the method invocation. The
    #   authorization works by matching the route scopes against the scopes
    #   parsed from the access token in the incoming request. The method
    #   invocation is authorized if any route scope matches a claimed scope
    #   in the access token. Otherwise, the invocation is not authorized.
    #   When the route scope is configured, the client must provide an
    #   access token instead of an identity token for authorization
    #   purposes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] authorization_type
    #   The authorization type. For WebSocket APIs, valid values are NONE
    #   for open access, AWS\_IAM for using AWS IAM permissions, and CUSTOM
    #   for using a Lambda authorizer. For HTTP APIs, valid values are NONE
    #   for open access, JWT for using JSON Web Tokens, AWS\_IAM for using
    #   AWS IAM permissions, and CUSTOM for using a Lambda authorizer.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] model_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] operation_name
    #   A string with a length between \[1-64\].
    #   @return [String]
    #
    # @!attribute [rw] request_models
    #   The route models.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] request_parameters
    #   The route parameters.
    #   @return [Hash<String,Types::ParameterConstraints>]
    #
    # @!attribute [rw] route_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] route_key
    #   After evaluating a selection expression, the result is compared
    #   against one or more selection keys to find a matching key. See
    #   [Selection Expressions][1] for a list of expressions and each
    #   expression's associated selection key type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] route_response_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] target
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
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
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input parameters for an UpdateRouteResponse request.
    #
    # @!attribute [rw] model_selection_expression
    #   The model selection expression for the route response. Supported
    #   only for WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] response_models
    #   The response models for the route response.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] response_parameters
    #   The route response parameters.
    #   @return [Hash<String,Types::ParameterConstraints>]
    #
    # @!attribute [rw] route_response_key
    #   The route response key.
    #   @return [String]
    #
    class UpdateRouteResponseInput < Struct.new(
      :model_selection_expression,
      :response_models,
      :response_parameters,
      :route_response_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateRouteResponseRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         model_selection_expression: "SelectionExpression",
    #         response_models: {
    #           "__string" => "StringWithLengthBetween1And128",
    #         },
    #         response_parameters: {
    #           "__string" => {
    #             required: false,
    #           },
    #         },
    #         route_id: "__string", # required
    #         route_response_id: "__string", # required
    #         route_response_key: "SelectionKey",
    #       }
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] model_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] response_models
    #   The route models.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] response_parameters
    #   The route parameters.
    #   @return [Hash<String,Types::ParameterConstraints>]
    #
    # @!attribute [rw] route_id
    #   @return [String]
    #
    # @!attribute [rw] route_response_id
    #   @return [String]
    #
    # @!attribute [rw] route_response_key
    #   After evaluating a selection expression, the result is compared
    #   against one or more selection keys to find a matching key. See
    #   [Selection Expressions][1] for a list of expressions and each
    #   expression's associated selection key type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    class UpdateRouteResponseRequest < Struct.new(
      :api_id,
      :model_selection_expression,
      :response_models,
      :response_parameters,
      :route_id,
      :route_response_id,
      :route_response_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] response_models
    #   The route models.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] response_parameters
    #   The route parameters.
    #   @return [Hash<String,Types::ParameterConstraints>]
    #
    # @!attribute [rw] route_response_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] route_response_key
    #   After evaluating a selection expression, the result is compared
    #   against one or more selection keys to find a matching key. See
    #   [Selection Expressions][1] for a list of expressions and each
    #   expression's associated selection key type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    class UpdateRouteResponseResponse < Struct.new(
      :model_selection_expression,
      :response_models,
      :response_parameters,
      :route_response_id,
      :route_response_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input parameters for an UpdateStage request.
    #
    # @!attribute [rw] access_log_settings
    #   Settings for logging access in this stage.
    #   @return [Types::AccessLogSettings]
    #
    # @!attribute [rw] auto_deploy
    #   Specifies whether updates to an API automatically trigger a new
    #   deployment. The default value is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_certificate_id
    #   The identifier of a client certificate for a Stage.
    #   @return [String]
    #
    # @!attribute [rw] default_route_settings
    #   The default route settings for the stage.
    #   @return [Types::RouteSettings]
    #
    # @!attribute [rw] deployment_id
    #   The deployment identifier for the API stage. Can't be updated if
    #   autoDeploy is enabled.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the API stage.
    #   @return [String]
    #
    # @!attribute [rw] route_settings
    #   Route settings for the stage.
    #   @return [Hash<String,Types::RouteSettings>]
    #
    # @!attribute [rw] stage_variables
    #   A map that defines the stage variables for a Stage. Variable names
    #   can have alphanumeric and underscore characters, and the values must
    #   match \[A-Za-z0-9-.\_~:/?#&amp;=,\]+.
    #   @return [Hash<String,String>]
    #
    class UpdateStageInput < Struct.new(
      :access_log_settings,
      :auto_deploy,
      :client_certificate_id,
      :default_route_settings,
      :deployment_id,
      :description,
      :route_settings,
      :stage_variables)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateStageRequest
    #   data as a hash:
    #
    #       {
    #         access_log_settings: {
    #           destination_arn: "Arn",
    #           format: "StringWithLengthBetween1And1024",
    #         },
    #         api_id: "__string", # required
    #         auto_deploy: false,
    #         client_certificate_id: "Id",
    #         default_route_settings: {
    #           data_trace_enabled: false,
    #           detailed_metrics_enabled: false,
    #           logging_level: "ERROR", # accepts ERROR, INFO, OFF
    #           throttling_burst_limit: 1,
    #           throttling_rate_limit: 1.0,
    #         },
    #         deployment_id: "Id",
    #         description: "StringWithLengthBetween0And1024",
    #         route_settings: {
    #           "__string" => {
    #             data_trace_enabled: false,
    #             detailed_metrics_enabled: false,
    #             logging_level: "ERROR", # accepts ERROR, INFO, OFF
    #             throttling_burst_limit: 1,
    #             throttling_rate_limit: 1.0,
    #           },
    #         },
    #         stage_name: "__string", # required
    #         stage_variables: {
    #           "__string" => "StringWithLengthBetween0And2048",
    #         },
    #       }
    #
    # @!attribute [rw] access_log_settings
    #   Settings for logging access in a stage.
    #   @return [Types::AccessLogSettings]
    #
    # @!attribute [rw] api_id
    #   @return [String]
    #
    # @!attribute [rw] auto_deploy
    #   @return [Boolean]
    #
    # @!attribute [rw] client_certificate_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] default_route_settings
    #   Represents a collection of route settings.
    #   @return [Types::RouteSettings]
    #
    # @!attribute [rw] deployment_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    # @!attribute [rw] route_settings
    #   The route settings map.
    #   @return [Hash<String,Types::RouteSettings>]
    #
    # @!attribute [rw] stage_name
    #   @return [String]
    #
    # @!attribute [rw] stage_variables
    #   The stage variable map.
    #   @return [Hash<String,String>]
    #
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
      :stage_variables)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_log_settings
    #   Settings for logging access in a stage.
    #   @return [Types::AccessLogSettings]
    #
    # @!attribute [rw] api_gateway_managed
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_deploy
    #   @return [Boolean]
    #
    # @!attribute [rw] client_certificate_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   @return [Time]
    #
    # @!attribute [rw] default_route_settings
    #   Represents a collection of route settings.
    #   @return [Types::RouteSettings]
    #
    # @!attribute [rw] deployment_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    # @!attribute [rw] last_deployment_status_message
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date
    #   @return [Time]
    #
    # @!attribute [rw] route_settings
    #   The route settings map.
    #   @return [Hash<String,Types::RouteSettings>]
    #
    # @!attribute [rw] stage_name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] stage_variables
    #   The stage variable map.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   Represents a collection of tags associated with the resource.
    #   @return [Hash<String,String>]
    #
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
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input parameters for an UpdateVpcLink request.
    #
    # @!attribute [rw] name
    #   The name of the VPC link.
    #   @return [String]
    #
    class UpdateVpcLinkInput < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateVpcLinkRequest
    #   data as a hash:
    #
    #       {
    #         name: "StringWithLengthBetween1And128",
    #         vpc_link_id: "__string", # required
    #       }
    #
    # @!attribute [rw] name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] vpc_link_id
    #   @return [String]
    #
    class UpdateVpcLinkRequest < Struct.new(
      :name,
      :vpc_link_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_date
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   A list of security group IDs for the VPC link.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_ids
    #   A list of subnet IDs to include in the VPC link.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Represents a collection of tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vpc_link_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] vpc_link_status
    #   The status of the VPC link.
    #   @return [String]
    #
    # @!attribute [rw] vpc_link_status_message
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    # @!attribute [rw] vpc_link_version
    #   The version of the VPC link.
    #   @return [String]
    #
    class UpdateVpcLinkResponse < Struct.new(
      :created_date,
      :name,
      :security_group_ids,
      :subnet_ids,
      :tags,
      :vpc_link_id,
      :vpc_link_status,
      :vpc_link_status_message,
      :vpc_link_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a VPC link.
    #
    # @!attribute [rw] created_date
    #   The timestamp when the VPC link was created.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the VPC link.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   A list of security group IDs for the VPC link.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_ids
    #   A list of subnet IDs to include in the VPC link.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Tags for the VPC link.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vpc_link_id
    #   The ID of the VPC link.
    #   @return [String]
    #
    # @!attribute [rw] vpc_link_status
    #   The status of the VPC link.
    #   @return [String]
    #
    # @!attribute [rw] vpc_link_status_message
    #   A message summarizing the cause of the status of the VPC link.
    #   @return [String]
    #
    # @!attribute [rw] vpc_link_version
    #   The version of the VPC link.
    #   @return [String]
    #
    class VpcLink < Struct.new(
      :created_date,
      :name,
      :security_group_ids,
      :subnet_ids,
      :tags,
      :vpc_link_id,
      :vpc_link_status,
      :vpc_link_status_message,
      :vpc_link_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a collection of VPCLinks.
    #
    # @!attribute [rw] items
    #   A collection of VPC links.
    #   @return [Array<Types::VpcLink>]
    #
    # @!attribute [rw] next_token
    #   The next page of elements from this collection. Not valid for the
    #   last element of the collection.
    #   @return [String]
    #
    class VpcLinks < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
