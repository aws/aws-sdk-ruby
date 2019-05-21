# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ApiGatewayV2
  module Types

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
    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] api_key_selection_expression
    #   An API key selection expression. See [API Key Selection
    #   Expressions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
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
    #   Avoid validating models when creating a deployment.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   The name of the API.
    #   @return [String]
    #
    # @!attribute [rw] protocol_type
    #   The API protocol: Currently only WEBSOCKET is supported.
    #   @return [String]
    #
    # @!attribute [rw] route_selection_expression
    #   The route selection expression for the API.
    #   @return [String]
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
      :api_id,
      :api_key_selection_expression,
      :created_date,
      :description,
      :disable_schema_validation,
      :name,
      :protocol_type,
      :route_selection_expression,
      :version,
      :warnings)
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
      include Aws::Structure
    end

    # Represents an authorizer.
    #
    # @!attribute [rw] authorizer_credentials_arn
    #   Specifies the required credentials as an IAM role for API Gateway to
    #   invoke the authorizer. To specify an IAM role for API Gateway to
    #   assume, use the role's Amazon Resource Name (ARN). To use
    #   resource-based permissions on the Lambda function, specify null.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_id
    #   The authorizer identifier.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_result_ttl_in_seconds
    #   The time to live (TTL), in seconds, of cached authorizer results. If
    #   it equals 0, authorization caching is disabled. If it is greater
    #   than 0, API Gateway will cache authorizer responses. If this field
    #   is not set, the default value is 300. The maximum value is 3600, or
    #   1 hour.
    #   @return [Integer]
    #
    # @!attribute [rw] authorizer_type
    #   The authorizer type. Currently the only valid value is REQUEST, for
    #   a Lambda function using incoming request parameters.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_uri
    #   The authorizer's Uniform Resource Identifier (URI). ForREQUEST
    #   authorizers, this must be a well-formed Lambda function URI, for
    #   example,
    #   arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:\\\{account\_id\\}:function:\\\{lambda\_function\_name\\}/invocations.
    #   In general, the URI has this form:
    #   arn:aws:apigateway:\\\{region\\}:lambda:path/\\\{service\_api\\} ,
    #   where \\\{region\\} is the same as the region hosting the Lambda
    #   function, path indicates that the remaining substring in the URI
    #   should be treated as the path to the resource, including the initial
    #   /. For Lambda functions, this is usually of the form
    #   /2015-03-31/functions/\[FunctionARN\]/invocations.
    #   @return [String]
    #
    # @!attribute [rw] identity_source
    #   The identity source for which authorization is requested.
    #
    #   For the REQUEST authorizer, this is required when authorization
    #   caching is enabled. The value is a comma-separated string of one or
    #   more mapping expressions of the specified request parameters. For
    #   example, if an Auth header and a Name query string parameters are
    #   defined as identity sources, this value is
    #   method.request.header.Auth, method.request.querystring.Name. These
    #   parameters will be used to derive the authorization caching key and
    #   to perform runtime validation of the REQUEST authorizer by verifying
    #   all of the identity-related request parameters are present, not
    #   null, and non-empty. Only when this is true does the authorizer
    #   invoke the authorizer Lambda function, otherwise, it returns a 401
    #   Unauthorized response without calling the Lambda function. The valid
    #   value is a string of comma-separated mapping expressions of the
    #   specified request parameters. When the authorization caching is not
    #   enabled, this property is optional.
    #   @return [Array<String>]
    #
    # @!attribute [rw] identity_validation_expression
    #   The validation expression does not apply to the REQUEST authorizer.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the authorizer.
    #   @return [String]
    #
    # @!attribute [rw] provider_arns
    #   For REQUEST authorizer, this is not defined.
    #   @return [Array<String>]
    #
    class Authorizer < Struct.new(
      :authorizer_credentials_arn,
      :authorizer_id,
      :authorizer_result_ttl_in_seconds,
      :authorizer_type,
      :authorizer_uri,
      :identity_source,
      :identity_validation_expression,
      :name,
      :provider_arns)
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
      include Aws::Structure
    end

    # Represents the input parameters for a CreateApi request.
    #
    # @!attribute [rw] api_key_selection_expression
    #   An API key selection expression. See [API Key Selection
    #   Expressions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the API.
    #   @return [String]
    #
    # @!attribute [rw] disable_schema_validation
    #   Avoid validating models when creating a deployment.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   The name of the API.
    #   @return [String]
    #
    # @!attribute [rw] protocol_type
    #   The API protocol: Currently only WEBSOCKET is supported.
    #   @return [String]
    #
    # @!attribute [rw] route_selection_expression
    #   The route selection expression for the API.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   A version identifier for the API.
    #   @return [String]
    #
    class CreateApiInput < Struct.new(
      :api_key_selection_expression,
      :description,
      :disable_schema_validation,
      :name,
      :protocol_type,
      :route_selection_expression,
      :version)
      include Aws::Structure
    end

    # Represents the input parameters for a CreateApiMapping request.
    #
    # @!attribute [rw] api_id
    #   The API identifier.
    #   @return [String]
    #
    # @!attribute [rw] api_mapping_key
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
    #   After evaulating a selection expression, the result is compared
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
    #   After evaulating a selection expression, the result is compared
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateApiRequest
    #   data as a hash:
    #
    #       {
    #         api_key_selection_expression: "SelectionExpression",
    #         description: "StringWithLengthBetween0And1024",
    #         disable_schema_validation: false,
    #         name: "StringWithLengthBetween1And128", # required
    #         protocol_type: "WEBSOCKET", # required, accepts WEBSOCKET
    #         route_selection_expression: "SelectionExpression", # required
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
    # @!attribute [rw] description
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    # @!attribute [rw] disable_schema_validation
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] protocol_type
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
    # @!attribute [rw] version
    #   A string with a length between \[1-64\].
    #   @return [String]
    #
    class CreateApiRequest < Struct.new(
      :api_key_selection_expression,
      :description,
      :disable_schema_validation,
      :name,
      :protocol_type,
      :route_selection_expression,
      :version)
      include Aws::Structure
    end

    # @!attribute [rw] api_endpoint
    #   @return [String]
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
    # @!attribute [rw] name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] protocol_type
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
    # @!attribute [rw] version
    #   A string with a length between \[1-64\].
    #   @return [String]
    #
    # @!attribute [rw] warnings
    #   @return [Array<String>]
    #
    class CreateApiResponse < Struct.new(
      :api_endpoint,
      :api_id,
      :api_key_selection_expression,
      :created_date,
      :description,
      :disable_schema_validation,
      :name,
      :protocol_type,
      :route_selection_expression,
      :version,
      :warnings)
      include Aws::Structure
    end

    # Represents the input parameters for a CreateAuthorizer request.
    #
    # @!attribute [rw] authorizer_credentials_arn
    #   Specifies the required credentials as an IAM role for API Gateway to
    #   invoke the authorizer. To specify an IAM role for API Gateway to
    #   assume, use the role's Amazon Resource Name (ARN). To use
    #   resource-based permissions on the Lambda function, specify null.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_result_ttl_in_seconds
    #   The time to live (TTL), in seconds, of cached authorizer results. If
    #   it equals 0, authorization caching is disabled. If it is greater
    #   than 0, API Gateway will cache authorizer responses. If this field
    #   is not set, the default value is 300. The maximum value is 3600, or
    #   1 hour.
    #   @return [Integer]
    #
    # @!attribute [rw] authorizer_type
    #   The authorizer type. Currently the only valid value is REQUEST, for
    #   a Lambda function using incoming request parameters.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_uri
    #   The authorizer's Uniform Resource Identifier (URI). For REQUEST
    #   authorizers, this must be a well-formed Lambda function URI, for
    #   example,
    #   arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:\\\{account\_id\\}:function:\\\{lambda\_function\_name\\}/invocations.
    #   In general, the URI has this form:
    #   arn:aws:apigateway:\\\{region\\}:lambda:path/\\\{service\_api\\} ,
    #   where \\\{region\\} is the same as the region hosting the Lambda
    #   function, path indicates that the remaining substring in the URI
    #   should be treated as the path to the resource, including the initial
    #   /. For Lambda functions, this is usually of the form
    #   /2015-03-31/functions/\[FunctionARN\]/invocations.
    #   @return [String]
    #
    # @!attribute [rw] identity_source
    #   The identity source for which authorization is requested.
    #
    #   For the REQUEST authorizer, this is required when authorization
    #   caching is enabled. The value is a comma-separated string of one or
    #   more mapping expressions of the specified request parameters. For
    #   example, if an Auth header and a Name query string parameters are
    #   defined as identity sources, this value is
    #   method.request.header.Auth, method.request.querystring.Name. These
    #   parameters will be used to derive the authorization caching key and
    #   to perform runtime validation of the REQUEST authorizer by verifying
    #   all of the identity-related request parameters are present, not
    #   null, and non-empty. Only when this is true does the authorizer
    #   invoke the authorizer Lambda function, otherwise, it returns a 401
    #   Unauthorized response without calling the Lambda function. The valid
    #   value is a string of comma-separated mapping expressions of the
    #   specified request parameters. When the authorization caching is not
    #   enabled, this property is optional.
    #   @return [Array<String>]
    #
    # @!attribute [rw] identity_validation_expression
    #   The validation expression does not apply to the REQUEST authorizer.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the authorizer.
    #   @return [String]
    #
    # @!attribute [rw] provider_arns
    #   For REQUEST authorizer, this is not defined.
    #   @return [Array<String>]
    #
    class CreateAuthorizerInput < Struct.new(
      :authorizer_credentials_arn,
      :authorizer_result_ttl_in_seconds,
      :authorizer_type,
      :authorizer_uri,
      :identity_source,
      :identity_validation_expression,
      :name,
      :provider_arns)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAuthorizerRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         authorizer_credentials_arn: "Arn",
    #         authorizer_result_ttl_in_seconds: 1,
    #         authorizer_type: "REQUEST", # required, accepts REQUEST
    #         authorizer_uri: "UriWithLengthBetween1And2048", # required
    #         identity_source: ["__string"], # required
    #         identity_validation_expression: "StringWithLengthBetween0And1024",
    #         name: "StringWithLengthBetween1And128", # required
    #         provider_arns: ["Arn"],
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
    #   The authorizer type. Currently the only valid value is REQUEST, for
    #   a Lambda function using incoming request parameters.
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
    # @!attribute [rw] name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] provider_arns
    #   For REQUEST authorizer, this is not defined.
    #   @return [Array<String>]
    #
    class CreateAuthorizerRequest < Struct.new(
      :api_id,
      :authorizer_credentials_arn,
      :authorizer_result_ttl_in_seconds,
      :authorizer_type,
      :authorizer_uri,
      :identity_source,
      :identity_validation_expression,
      :name,
      :provider_arns)
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
    #   The authorizer type. Currently the only valid value is REQUEST, for
    #   a Lambda function using incoming request parameters.
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
    # @!attribute [rw] name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] provider_arns
    #   For REQUEST authorizer, this is not defined.
    #   @return [Array<String>]
    #
    class CreateAuthorizerResponse < Struct.new(
      :authorizer_credentials_arn,
      :authorizer_id,
      :authorizer_result_ttl_in_seconds,
      :authorizer_type,
      :authorizer_uri,
      :identity_source,
      :identity_validation_expression,
      :name,
      :provider_arns)
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
      include Aws::Structure
    end

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
      :created_date,
      :deployment_id,
      :deployment_status,
      :deployment_status_message,
      :description)
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
    class CreateDomainNameInput < Struct.new(
      :domain_name,
      :domain_name_configurations)
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
    #             endpoint_type: "REGIONAL", # accepts REGIONAL, EDGE
    #             hosted_zone_id: "__string",
    #           },
    #         ],
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
    class CreateDomainNameRequest < Struct.new(
      :domain_name,
      :domain_name_configurations)
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
    class CreateDomainNameResponse < Struct.new(
      :api_mapping_selection_expression,
      :domain_name,
      :domain_name_configurations)
      include Aws::Structure
    end

    # Represents the input parameters for a CreateIntegration request.
    #
    # @!attribute [rw] connection_id
    #   The connection ID.
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   The type of the network connection to the integration endpoint.
    #   Currently the only valid value is INTERNET, for connections through
    #   the public routable internet.
    #   @return [String]
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
    # @!attribute [rw] integration_type
    #   The integration type of an integration. One of the following:
    #
    #   AWS: for integrating the route or method request with an AWS service
    #   action, including the Lambda function-invoking action. With the
    #   Lambda function-invoking action, this is referred to as the Lambda
    #   custom integration. With any other AWS service action, this is known
    #   as AWS integration.
    #
    #   AWS\_PROXY: for integrating the route or method request with the
    #   Lambda function-invoking action with the client request passed
    #   through as-is. This integration is also referred to as Lambda proxy
    #   integration.
    #
    #   HTTP: for integrating the route or method request with an HTTP
    #   endpoint. This integration is also referred to as HTTP custom
    #   integration.
    #
    #   HTTP\_PROXY: for integrating route or method request with an HTTP
    #   endpoint, with the client request passed through as-is. This is also
    #   referred to as HTTP proxy integration.
    #
    #   MOCK: for integrating the route or method request with API Gateway
    #   as a "loopback" endpoint without invoking any backend.
    #   @return [String]
    #
    # @!attribute [rw] integration_uri
    #   For a Lambda proxy integration, this is the URI of the Lambda
    #   function.
    #   @return [String]
    #
    # @!attribute [rw] passthrough_behavior
    #   Specifies the pass-through behavior for incoming requests based on
    #   the Content-Type header in the request, and the available mapping
    #   templates specified as the requestTemplates property on the
    #   Integration resource. There are three valid values: WHEN\_NO\_MATCH,
    #   WHEN\_NO\_TEMPLATES, and NEVER.
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
    # @!attribute [rw] request_parameters
    #   A key-value map specifying request parameters that are passed from
    #   the method request to the backend. The key is an integration request
    #   parameter name and the associated value is a method request
    #   parameter value or static value that must be enclosed within single
    #   quotes and pre-encoded as required by the backend. The method
    #   request parameter value must match the pattern of
    #   method.request.\\\{location\\}.\\\{name\\} , where \\\{location\\}
    #   is querystring, path, or header; and \\\{name\\} must be a valid and
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
    # @!attribute [rw] template_selection_expression
    #   The template selection expression for the integration.
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_millis
    #   Custom timeout between 50 and 29,000 milliseconds. The default value
    #   is 29,000 milliseconds or 29 seconds.
    #   @return [Integer]
    #
    class CreateIntegrationInput < Struct.new(
      :connection_id,
      :connection_type,
      :content_handling_strategy,
      :credentials_arn,
      :description,
      :integration_method,
      :integration_type,
      :integration_uri,
      :passthrough_behavior,
      :request_parameters,
      :request_templates,
      :template_selection_expression,
      :timeout_in_millis)
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
    #         integration_type: "AWS", # required, accepts AWS, HTTP, MOCK, HTTP_PROXY, AWS_PROXY
    #         integration_uri: "UriWithLengthBetween1And2048",
    #         passthrough_behavior: "WHEN_NO_MATCH", # accepts WHEN_NO_MATCH, NEVER, WHEN_NO_TEMPLATES
    #         request_parameters: {
    #           "__string" => "StringWithLengthBetween1And512",
    #         },
    #         request_templates: {
    #           "__string" => "StringWithLengthBetween0And32K",
    #         },
    #         template_selection_expression: "SelectionExpression",
    #         timeout_in_millis: 1,
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
    #   An integer with a value between \[50-29000\].
    #   @return [Integer]
    #
    class CreateIntegrationRequest < Struct.new(
      :api_id,
      :connection_id,
      :connection_type,
      :content_handling_strategy,
      :credentials_arn,
      :description,
      :integration_method,
      :integration_type,
      :integration_uri,
      :passthrough_behavior,
      :request_parameters,
      :request_templates,
      :template_selection_expression,
      :timeout_in_millis)
      include Aws::Structure
    end

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
    #   An integer with a value between \[50-29000\].
    #   @return [Integer]
    #
    class CreateIntegrationResult < Struct.new(
      :connection_id,
      :connection_type,
      :content_handling_strategy,
      :credentials_arn,
      :description,
      :integration_id,
      :integration_method,
      :integration_response_selection_expression,
      :integration_type,
      :integration_uri,
      :passthrough_behavior,
      :request_parameters,
      :request_templates,
      :template_selection_expression,
      :timeout_in_millis)
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
    #   @return [String]
    #
    class CreateIntegrationResponseInput < Struct.new(
      :content_handling_strategy,
      :integration_response_key,
      :response_parameters,
      :response_templates,
      :template_selection_expression)
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
    #   @return [String]
    #
    # @!attribute [rw] integration_id
    #   @return [String]
    #
    # @!attribute [rw] integration_response_key
    #   After evaulating a selection expression, the result is compared
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
      include Aws::Structure
    end

    # @!attribute [rw] content_handling_strategy
    #   Specifies how to handle response payload content type conversions.
    #   @return [String]
    #
    # @!attribute [rw] integration_response_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] integration_response_key
    #   After evaulating a selection expression, the result is compared
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
      include Aws::Structure
    end

    # Represents the input parameters for a CreateRoute request.
    #
    # @!attribute [rw] api_key_required
    #   Specifies whether an API key is required for the route.
    #   @return [Boolean]
    #
    # @!attribute [rw] authorization_scopes
    #   The authorization scopes supported by this route.
    #   @return [Array<String>]
    #
    # @!attribute [rw] authorization_type
    #   The authorization type for the route. Valid values are NONE for open
    #   access, AWS\_IAM for using AWS IAM permissions, and CUSTOM for using
    #   a Lambda authorizer.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_id
    #   The identifier of the Authorizer resource to be associated with this
    #   route, if the authorizationType is CUSTOM . The authorizer
    #   identifier is generated by API Gateway when you created the
    #   authorizer.
    #   @return [String]
    #
    # @!attribute [rw] model_selection_expression
    #   The model selection expression for the route.
    #   @return [String]
    #
    # @!attribute [rw] operation_name
    #   The operation name for the route.
    #   @return [String]
    #
    # @!attribute [rw] request_models
    #   The request models for the route.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] request_parameters
    #   The request parameters for the route.
    #   @return [Hash<String,Types::ParameterConstraints>]
    #
    # @!attribute [rw] route_key
    #   The route key for the route.
    #   @return [String]
    #
    # @!attribute [rw] route_response_selection_expression
    #   The route response selection expression for the route.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRouteRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         api_key_required: false,
    #         authorization_scopes: ["StringWithLengthBetween1And64"],
    #         authorization_type: "NONE", # accepts NONE, AWS_IAM, CUSTOM
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
    #   used with a COGNITO\_USER\_POOLS authorizer to authorize the method
    #   invocation. The authorization works by matching the route scopes
    #   against the scopes parsed from the access token in the incoming
    #   request. The method invocation is authorized if any route scope
    #   matches a claimed scope in the access token. Otherwise, the
    #   invocation is not authorized. When the route scope is configured,
    #   the client must provide an access token instead of an identity token
    #   for authorization purposes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] authorization_type
    #   The authorization type. Valid values are NONE for open access,
    #   AWS\_IAM for using AWS IAM permissions, and CUSTOM for using a
    #   Lambda authorizer.
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
    #   After evaulating a selection expression, the result is compared
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
      include Aws::Structure
    end

    # @!attribute [rw] api_key_required
    #   @return [Boolean]
    #
    # @!attribute [rw] authorization_scopes
    #   A list of authorization scopes configured on a route. The scopes are
    #   used with a COGNITO\_USER\_POOLS authorizer to authorize the method
    #   invocation. The authorization works by matching the route scopes
    #   against the scopes parsed from the access token in the incoming
    #   request. The method invocation is authorized if any route scope
    #   matches a claimed scope in the access token. Otherwise, the
    #   invocation is not authorized. When the route scope is configured,
    #   the client must provide an access token instead of an identity token
    #   for authorization purposes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] authorization_type
    #   The authorization type. Valid values are NONE for open access,
    #   AWS\_IAM for using AWS IAM permissions, and CUSTOM for using a
    #   Lambda authorizer.
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
    #   After evaulating a selection expression, the result is compared
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
      include Aws::Structure
    end

    # Represents the input parameters for an CreateRouteResponse request.
    #
    # @!attribute [rw] model_selection_expression
    #   The model selection expression for the route response.
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
    #   After evaulating a selection expression, the result is compared
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
    #   After evaulating a selection expression, the result is compared
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
      include Aws::Structure
    end

    # Represents the input parameters for a CreateStage request.
    #
    # @!attribute [rw] access_log_settings
    #   Settings for logging access in this stage.
    #   @return [Types::AccessLogSettings]
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
    #   The deployment identifier of the API stage.
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
    # @!attribute [rw] stage_name
    #   The name of the stage.
    #   @return [String]
    #
    # @!attribute [rw] stage_variables
    #   A map that defines the stage variables for a Stage. Variable names
    #   can have alphanumeric and underscore characters, and the values must
    #   match \[A-Za-z0-9-.\_~:/?#&=,\]+.
    #   @return [Hash<String,String>]
    #
    class CreateStageInput < Struct.new(
      :access_log_settings,
      :client_certificate_id,
      :default_route_settings,
      :deployment_id,
      :description,
      :route_settings,
      :stage_name,
      :stage_variables)
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
    #         client_certificate_id: "Id",
    #         default_route_settings: {
    #           data_trace_enabled: false,
    #           detailed_metrics_enabled: false,
    #           logging_level: "ERROR", # accepts ERROR, INFO, false
    #           throttling_burst_limit: 1,
    #           throttling_rate_limit: 1.0,
    #         },
    #         deployment_id: "Id",
    #         description: "StringWithLengthBetween0And1024",
    #         route_settings: {
    #           "__string" => {
    #             data_trace_enabled: false,
    #             detailed_metrics_enabled: false,
    #             logging_level: "ERROR", # accepts ERROR, INFO, false
    #             throttling_burst_limit: 1,
    #             throttling_rate_limit: 1.0,
    #           },
    #         },
    #         stage_name: "StringWithLengthBetween1And128", # required
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
    class CreateStageRequest < Struct.new(
      :access_log_settings,
      :api_id,
      :client_certificate_id,
      :default_route_settings,
      :deployment_id,
      :description,
      :route_settings,
      :stage_name,
      :stage_variables)
      include Aws::Structure
    end

    # @!attribute [rw] access_log_settings
    #   Settings for logging access in a stage.
    #   @return [Types::AccessLogSettings]
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
    class CreateStageResponse < Struct.new(
      :access_log_settings,
      :client_certificate_id,
      :created_date,
      :default_route_settings,
      :deployment_id,
      :description,
      :last_updated_date,
      :route_settings,
      :stage_name,
      :stage_variables)
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
      include Aws::Structure
    end

    # An immutable representation of an API that can be called by users. A
    # Deployment must be associated with a Stage for it to be callable over
    # the internet.
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
      :created_date,
      :deployment_id,
      :deployment_status,
      :deployment_status_message,
      :description)
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
    class DomainName < Struct.new(
      :api_mapping_selection_expression,
      :domain_name,
      :domain_name_configurations)
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
    #         endpoint_type: "REGIONAL", # accepts REGIONAL, EDGE
    #         hosted_zone_id: "__string",
    #       }
    #
    # @!attribute [rw] api_gateway_domain_name
    #   A domain name for the WebSocket API.
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
    # @!attribute [rw] endpoint_type
    #   The endpoint type.
    #   @return [String]
    #
    # @!attribute [rw] hosted_zone_id
    #   The Amazon Route 53 Hosted Zone ID of the endpoint.
    #   @return [String]
    #
    class DomainNameConfiguration < Struct.new(
      :api_gateway_domain_name,
      :certificate_arn,
      :certificate_name,
      :certificate_upload_date,
      :endpoint_type,
      :hosted_zone_id)
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
    #   After evaulating a selection expression, the result is compared
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
      include Aws::Structure
    end

    # @!attribute [rw] api_endpoint
    #   @return [String]
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
    # @!attribute [rw] name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] protocol_type
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
    # @!attribute [rw] version
    #   A string with a length between \[1-64\].
    #   @return [String]
    #
    # @!attribute [rw] warnings
    #   @return [Array<String>]
    #
    class GetApiResponse < Struct.new(
      :api_endpoint,
      :api_id,
      :api_key_selection_expression,
      :created_date,
      :description,
      :disable_schema_validation,
      :name,
      :protocol_type,
      :route_selection_expression,
      :version,
      :warnings)
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
    #   The authorizer type. Currently the only valid value is REQUEST, for
    #   a Lambda function using incoming request parameters.
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
    # @!attribute [rw] name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] provider_arns
    #   For REQUEST authorizer, this is not defined.
    #   @return [Array<String>]
    #
    class GetAuthorizerResponse < Struct.new(
      :authorizer_credentials_arn,
      :authorizer_id,
      :authorizer_result_ttl_in_seconds,
      :authorizer_type,
      :authorizer_uri,
      :identity_source,
      :identity_validation_expression,
      :name,
      :provider_arns)
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
      include Aws::Structure
    end

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
      :created_date,
      :deployment_id,
      :deployment_status,
      :deployment_status_message,
      :description)
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
    class GetDomainNameResponse < Struct.new(
      :api_mapping_selection_expression,
      :domain_name,
      :domain_name_configurations)
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
      include Aws::Structure
    end

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
    #   An integer with a value between \[50-29000\].
    #   @return [Integer]
    #
    class GetIntegrationResult < Struct.new(
      :connection_id,
      :connection_type,
      :content_handling_strategy,
      :credentials_arn,
      :description,
      :integration_id,
      :integration_method,
      :integration_response_selection_expression,
      :integration_type,
      :integration_uri,
      :passthrough_behavior,
      :request_parameters,
      :request_templates,
      :template_selection_expression,
      :timeout_in_millis)
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
      include Aws::Structure
    end

    # @!attribute [rw] content_handling_strategy
    #   Specifies how to handle response payload content type conversions.
    #   @return [String]
    #
    # @!attribute [rw] integration_response_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] integration_response_key
    #   After evaulating a selection expression, the result is compared
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
      include Aws::Structure
    end

    # @!attribute [rw] value
    #   @return [String]
    #
    class GetModelTemplateResponse < Struct.new(
      :value)
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
      include Aws::Structure
    end

    # @!attribute [rw] api_key_required
    #   @return [Boolean]
    #
    # @!attribute [rw] authorization_scopes
    #   A list of authorization scopes configured on a route. The scopes are
    #   used with a COGNITO\_USER\_POOLS authorizer to authorize the method
    #   invocation. The authorization works by matching the route scopes
    #   against the scopes parsed from the access token in the incoming
    #   request. The method invocation is authorized if any route scope
    #   matches a claimed scope in the access token. Otherwise, the
    #   invocation is not authorized. When the route scope is configured,
    #   the client must provide an access token instead of an identity token
    #   for authorization purposes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] authorization_type
    #   The authorization type. Valid values are NONE for open access,
    #   AWS\_IAM for using AWS IAM permissions, and CUSTOM for using a
    #   Lambda authorizer.
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
    #   After evaulating a selection expression, the result is compared
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
    #   After evaulating a selection expression, the result is compared
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
      include Aws::Structure
    end

    # @!attribute [rw] access_log_settings
    #   Settings for logging access in a stage.
    #   @return [Types::AccessLogSettings]
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
    class GetStageResponse < Struct.new(
      :access_log_settings,
      :client_certificate_id,
      :created_date,
      :default_route_settings,
      :deployment_id,
      :description,
      :last_updated_date,
      :route_settings,
      :stage_name,
      :stage_variables)
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
      include Aws::Structure
    end

    # Represents an integration.
    #
    # @!attribute [rw] connection_id
    #   The connection ID.
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   The type of the network connection to the integration endpoint.
    #   Currently the only valid value is INTERNET, for connections through
    #   the public routable internet.
    #   @return [String]
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
    #   See [Integration Response Selection Expressions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-integration-response-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] integration_type
    #   The integration type of an integration. One of the following:
    #
    #   AWS: for integrating the route or method request with an AWS service
    #   action, including the Lambda function-invoking action. With the
    #   Lambda function-invoking action, this is referred to as the Lambda
    #   custom integration. With any other AWS service action, this is known
    #   as AWS integration.
    #
    #   AWS\_PROXY: for integrating the route or method request with the
    #   Lambda function-invoking action with the client request passed
    #   through as-is. This integration is also referred to as Lambda proxy
    #   integration.
    #
    #   HTTP: for integrating the route or method request with an HTTP
    #   endpoint. This integration is also referred to as the HTTP custom
    #   integration.
    #
    #   HTTP\_PROXY: for integrating route or method request with an HTTP
    #   endpoint, with the client request passed through as-is. This is also
    #   referred to as HTTP proxy integration.
    #
    #   MOCK: for integrating the route or method request with API Gateway
    #   as a "loopback" endpoint without invoking any backend.
    #   @return [String]
    #
    # @!attribute [rw] integration_uri
    #   For a Lambda proxy integration, this is the URI of the Lambda
    #   function.
    #   @return [String]
    #
    # @!attribute [rw] passthrough_behavior
    #   Specifies the pass-through behavior for incoming requests based on
    #   the Content-Type header in the request, and the available mapping
    #   templates specified as the requestTemplates property on the
    #   Integration resource. There are three valid values: WHEN\_NO\_MATCH,
    #   WHEN\_NO\_TEMPLATES, and NEVER.
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
    # @!attribute [rw] request_parameters
    #   A key-value map specifying request parameters that are passed from
    #   the method request to the backend. The key is an integration request
    #   parameter name and the associated value is a method request
    #   parameter value or static value that must be enclosed within single
    #   quotes and pre-encoded as required by the backend. The method
    #   request parameter value must match the pattern of
    #   method.request.\\\{location\\}.\\\{name\\} , where \\\{location\\}
    #   is querystring, path, or header; and \\\{name\\} must be a valid and
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
    # @!attribute [rw] template_selection_expression
    #   The template selection expression for the integration.
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_millis
    #   Custom timeout between 50 and 29,000 milliseconds. The default value
    #   is 29,000 milliseconds or 29 seconds.
    #   @return [Integer]
    #
    class Integration < Struct.new(
      :connection_id,
      :connection_type,
      :content_handling_strategy,
      :credentials_arn,
      :description,
      :integration_id,
      :integration_method,
      :integration_response_selection_expression,
      :integration_type,
      :integration_uri,
      :passthrough_behavior,
      :request_parameters,
      :request_templates,
      :template_selection_expression,
      :timeout_in_millis)
      include Aws::Structure
    end

    # Represents an integration response.
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
      include Aws::Structure
    end

    # Represents a data model for an API. See [Create Models and Mapping
    # Templates for Request and Response Mappings][1].
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
      include Aws::Structure
    end

    # Represents a route.
    #
    # @!attribute [rw] api_key_required
    #   Specifies whether an API key is required for this route.
    #   @return [Boolean]
    #
    # @!attribute [rw] authorization_scopes
    #   A list of authorization scopes configured on a route. The scopes are
    #   used with a COGNITO\_USER\_POOLS authorizer to authorize the method
    #   invocation. The authorization works by matching the route scopes
    #   against the scopes parsed from the access token in the incoming
    #   request. The method invocation is authorized if any route scope
    #   matches a claimed scope in the access token. Otherwise, the
    #   invocation is not authorized. When the route scope is configured,
    #   the client must provide an access token instead of an identity token
    #   for authorization purposes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] authorization_type
    #   The authorization type for the route. Valid values are NONE for open
    #   access, AWS\_IAM for using AWS IAM permissions, and CUSTOM for using
    #   a Lambda authorizer
    #   @return [String]
    #
    # @!attribute [rw] authorizer_id
    #   The identifier of the Authorizer resource to be associated with this
    #   route, if the authorizationType is CUSTOM . The authorizer
    #   identifier is generated by API Gateway when you created the
    #   authorizer.
    #   @return [String]
    #
    # @!attribute [rw] model_selection_expression
    #   The model selection expression for the route.
    #   @return [String]
    #
    # @!attribute [rw] operation_name
    #   The operation name for the route.
    #   @return [String]
    #
    # @!attribute [rw] request_models
    #   The request models for the route.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] request_parameters
    #   The request parameters for the route.
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
    #   The route response selection expression for the route.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The target for the route.
    #   @return [String]
    #
    class Route < Struct.new(
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
      include Aws::Structure
    end

    # Represents a route response.
    #
    # @!attribute [rw] model_selection_expression
    #   Represents the model selection expression of a route response.
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
    #         logging_level: "ERROR", # accepts ERROR, INFO, false
    #         throttling_burst_limit: 1,
    #         throttling_rate_limit: 1.0,
    #       }
    #
    # @!attribute [rw] data_trace_enabled
    #   Specifies whether (true) or not (false) data trace logging is
    #   enabled for this route. This property affects the log entries pushed
    #   to Amazon CloudWatch Logs.
    #   @return [Boolean]
    #
    # @!attribute [rw] detailed_metrics_enabled
    #   Specifies whether detailed metrics are enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] logging_level
    #   Specifies the logging level for this route: DEBUG, INFO, or WARN.
    #   This property affects the log entries pushed to Amazon CloudWatch
    #   Logs.
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
      include Aws::Structure
    end

    # Represents an API stage.
    #
    # @!attribute [rw] access_log_settings
    #   Settings for logging access in this stage.
    #   @return [Types::AccessLogSettings]
    #
    # @!attribute [rw] client_certificate_id
    #   The identifier of a client certificate for a Stage.
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
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the stage.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date
    #   The timestamp when the stage was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] route_settings
    #   Route settings for the stage.
    #   @return [Hash<String,Types::RouteSettings>]
    #
    # @!attribute [rw] stage_name
    #   The name of the stage.
    #   @return [String]
    #
    # @!attribute [rw] stage_variables
    #   A map that defines the stage variables for a stage resource.
    #   Variable names can have alphanumeric and underscore characters, and
    #   the values must match \[A-Za-z0-9-.\_~:/?#&=,\]+.
    #   @return [Hash<String,String>]
    #
    class Stage < Struct.new(
      :access_log_settings,
      :client_certificate_id,
      :created_date,
      :default_route_settings,
      :deployment_id,
      :description,
      :last_updated_date,
      :route_settings,
      :stage_name,
      :stage_variables)
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
      include Aws::Structure
    end

    # Represents a template.
    #
    # @!attribute [rw] value
    #   The template value.
    #   @return [String]
    #
    class Template < Struct.new(
      :value)
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
      include Aws::Structure
    end

    # Represents the input parameters for an UpdateApi request.
    #
    # @!attribute [rw] api_key_selection_expression
    #   An API key selection expression. See [API Key Selection
    #   Expressions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the API.
    #   @return [String]
    #
    # @!attribute [rw] disable_schema_validation
    #   Avoid validating models when creating a deployment.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   The name of the API.
    #   @return [String]
    #
    # @!attribute [rw] route_selection_expression
    #   The route selection expression for the API.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   A version identifier for the API.
    #   @return [String]
    #
    class UpdateApiInput < Struct.new(
      :api_key_selection_expression,
      :description,
      :disable_schema_validation,
      :name,
      :route_selection_expression,
      :version)
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
    #   After evaulating a selection expression, the result is compared
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
    #   After evaulating a selection expression, the result is compared
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateApiRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         api_key_selection_expression: "SelectionExpression",
    #         description: "StringWithLengthBetween0And1024",
    #         disable_schema_validation: false,
    #         name: "StringWithLengthBetween1And128",
    #         route_selection_expression: "SelectionExpression",
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
    # @!attribute [rw] description
    #   A string with a length between \[0-1024\].
    #   @return [String]
    #
    # @!attribute [rw] disable_schema_validation
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   A string with a length between \[1-128\].
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
    # @!attribute [rw] version
    #   A string with a length between \[1-64\].
    #   @return [String]
    #
    class UpdateApiRequest < Struct.new(
      :api_id,
      :api_key_selection_expression,
      :description,
      :disable_schema_validation,
      :name,
      :route_selection_expression,
      :version)
      include Aws::Structure
    end

    # @!attribute [rw] api_endpoint
    #   @return [String]
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
    # @!attribute [rw] name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] protocol_type
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
    # @!attribute [rw] version
    #   A string with a length between \[1-64\].
    #   @return [String]
    #
    # @!attribute [rw] warnings
    #   @return [Array<String>]
    #
    class UpdateApiResponse < Struct.new(
      :api_endpoint,
      :api_id,
      :api_key_selection_expression,
      :created_date,
      :description,
      :disable_schema_validation,
      :name,
      :protocol_type,
      :route_selection_expression,
      :version,
      :warnings)
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
    #   The time to live (TTL), in seconds, of cached authorizer results. If
    #   it is zero, authorization caching is disabled. If it is greater than
    #   zero, API Gateway will cache authorizer responses. If this field is
    #   not set, the default value is 300. The maximum value is 3600, or 1
    #   hour.
    #   @return [Integer]
    #
    # @!attribute [rw] authorizer_type
    #   The authorizer type. Currently the only valid value is REQUEST, for
    #   a Lambda function using incoming request parameters.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_uri
    #   The authorizer's Uniform Resource Identifier (URI). For REQUEST
    #   authorizers, this must be a well-formed Lambda function URI, for
    #   example,
    #   arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:\\\{account\_id\\}:function:\\\{lambda\_function\_name\\}/invocations.
    #   In general, the URI has this form:
    #   arn:aws:apigateway:\\\{region\\}:lambda:path/\\\{service\_api\\} ,
    #   where \\\{region\\} is the same as the region hosting the Lambda
    #   function, path indicates that the remaining substring in the URI
    #   should be treated as the path to the resource, including the initial
    #   /. For Lambda functions, this is usually of the form
    #   /2015-03-31/functions/\[FunctionARN\]/invocations.
    #   @return [String]
    #
    # @!attribute [rw] identity_source
    #   The identity source for which authorization is requested.
    #
    #   For the REQUEST authorizer, this is required when authorization
    #   caching is enabled. The value is a comma-separated string of one or
    #   more mapping expressions of the specified request parameters. For
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
    #   The validation expression does not apply to the REQUEST authorizer.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the authorizer.
    #   @return [String]
    #
    # @!attribute [rw] provider_arns
    #   For REQUEST authorizer, this is not defined.
    #   @return [Array<String>]
    #
    class UpdateAuthorizerInput < Struct.new(
      :authorizer_credentials_arn,
      :authorizer_result_ttl_in_seconds,
      :authorizer_type,
      :authorizer_uri,
      :identity_source,
      :identity_validation_expression,
      :name,
      :provider_arns)
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
    #         authorizer_type: "REQUEST", # accepts REQUEST
    #         authorizer_uri: "UriWithLengthBetween1And2048",
    #         identity_source: ["__string"],
    #         identity_validation_expression: "StringWithLengthBetween0And1024",
    #         name: "StringWithLengthBetween1And128",
    #         provider_arns: ["Arn"],
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
    #   The authorizer type. Currently the only valid value is REQUEST, for
    #   a Lambda function using incoming request parameters.
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
    # @!attribute [rw] name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] provider_arns
    #   For REQUEST authorizer, this is not defined.
    #   @return [Array<String>]
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
      :name,
      :provider_arns)
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
    #   The authorizer type. Currently the only valid value is REQUEST, for
    #   a Lambda function using incoming request parameters.
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
    # @!attribute [rw] name
    #   A string with a length between \[1-128\].
    #   @return [String]
    #
    # @!attribute [rw] provider_arns
    #   For REQUEST authorizer, this is not defined.
    #   @return [Array<String>]
    #
    class UpdateAuthorizerResponse < Struct.new(
      :authorizer_credentials_arn,
      :authorizer_id,
      :authorizer_result_ttl_in_seconds,
      :authorizer_type,
      :authorizer_uri,
      :identity_source,
      :identity_validation_expression,
      :name,
      :provider_arns)
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
      include Aws::Structure
    end

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
      :created_date,
      :deployment_id,
      :deployment_status,
      :deployment_status_message,
      :description)
      include Aws::Structure
    end

    # Represents the input parameters for an UpdateDomainName request.
    #
    # @!attribute [rw] domain_name_configurations
    #   The domain name configurations.
    #   @return [Array<Types::DomainNameConfiguration>]
    #
    class UpdateDomainNameInput < Struct.new(
      :domain_name_configurations)
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
    #             endpoint_type: "REGIONAL", # accepts REGIONAL, EDGE
    #             hosted_zone_id: "__string",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] domain_name
    #   @return [String]
    #
    # @!attribute [rw] domain_name_configurations
    #   The domain name configurations.
    #   @return [Array<Types::DomainNameConfiguration>]
    #
    class UpdateDomainNameRequest < Struct.new(
      :domain_name,
      :domain_name_configurations)
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
    class UpdateDomainNameResponse < Struct.new(
      :api_mapping_selection_expression,
      :domain_name,
      :domain_name_configurations)
      include Aws::Structure
    end

    # Represents the input parameters for an UpdateIntegration request.
    #
    # @!attribute [rw] connection_id
    #   The connection ID.
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   The type of the network connection to the integration endpoint.
    #   Currently the only valid value is INTERNET, for connections through
    #   the public routable internet.
    #   @return [String]
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
    # @!attribute [rw] integration_type
    #   The integration type of an integration. One of the following:
    #
    #   AWS: for integrating the route or method request with an AWS service
    #   action, including the Lambda function-invoking action. With the
    #   Lambda function-invoking action, this is referred to as the Lambda
    #   custom integration. With any other AWS service action, this is known
    #   as AWS integration.
    #
    #   AWS\_PROXY: for integrating the route or method request with the
    #   Lambda function-invoking action with the client request passed
    #   through as-is. This integration is also referred to as Lambda proxy
    #   integration.
    #
    #   HTTP: for integrating the route or method request with an HTTP
    #   endpoint. This integration is also referred to as the HTTP custom
    #   integration.
    #
    #   HTTP\_PROXY: for integrating route or method request with an HTTP
    #   endpoint, with the client request passed through as-is. This is also
    #   referred to as HTTP proxy integration.
    #
    #   MOCK: for integrating the route or method request with API Gateway
    #   as a "loopback" endpoint without invoking any backend.
    #   @return [String]
    #
    # @!attribute [rw] integration_uri
    #   For a Lambda proxy integration, this is the URI of the Lambda
    #   function.
    #   @return [String]
    #
    # @!attribute [rw] passthrough_behavior
    #   Specifies the pass-through behavior for incoming requests based on
    #   the Content-Type header in the request, and the available mapping
    #   templates specified as the requestTemplates property on the
    #   Integration resource. There are three valid values: WHEN\_NO\_MATCH,
    #   WHEN\_NO\_TEMPLATES, and NEVER.
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
    # @!attribute [rw] request_parameters
    #   A key-value map specifying request parameters that are passed from
    #   the method request to the backend. The key is an integration request
    #   parameter name and the associated value is a method request
    #   parameter value or static value that must be enclosed within single
    #   quotes and pre-encoded as required by the backend. The method
    #   request parameter value must match the pattern of
    #   method.request.\\\{location\\}.\\\{name\\} , where \\\{location\\}
    #   is querystring, path, or header; and \\\{name\\} must be a valid and
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
    # @!attribute [rw] template_selection_expression
    #   The template selection expression for the integration.
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_millis
    #   Custom timeout between 50 and 29,000 milliseconds. The default value
    #   is 29,000 milliseconds or 29 seconds.
    #   @return [Integer]
    #
    class UpdateIntegrationInput < Struct.new(
      :connection_id,
      :connection_type,
      :content_handling_strategy,
      :credentials_arn,
      :description,
      :integration_method,
      :integration_type,
      :integration_uri,
      :passthrough_behavior,
      :request_parameters,
      :request_templates,
      :template_selection_expression,
      :timeout_in_millis)
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
    #         integration_type: "AWS", # accepts AWS, HTTP, MOCK, HTTP_PROXY, AWS_PROXY
    #         integration_uri: "UriWithLengthBetween1And2048",
    #         passthrough_behavior: "WHEN_NO_MATCH", # accepts WHEN_NO_MATCH, NEVER, WHEN_NO_TEMPLATES
    #         request_parameters: {
    #           "__string" => "StringWithLengthBetween1And512",
    #         },
    #         request_templates: {
    #           "__string" => "StringWithLengthBetween0And32K",
    #         },
    #         template_selection_expression: "SelectionExpression",
    #         timeout_in_millis: 1,
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
    #   An integer with a value between \[50-29000\].
    #   @return [Integer]
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
      :integration_type,
      :integration_uri,
      :passthrough_behavior,
      :request_parameters,
      :request_templates,
      :template_selection_expression,
      :timeout_in_millis)
      include Aws::Structure
    end

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
    #   An integer with a value between \[50-29000\].
    #   @return [Integer]
    #
    class UpdateIntegrationResult < Struct.new(
      :connection_id,
      :connection_type,
      :content_handling_strategy,
      :credentials_arn,
      :description,
      :integration_id,
      :integration_method,
      :integration_response_selection_expression,
      :integration_type,
      :integration_uri,
      :passthrough_behavior,
      :request_parameters,
      :request_templates,
      :template_selection_expression,
      :timeout_in_millis)
      include Aws::Structure
    end

    # Represents the input parameters for an UpdateIntegrationResponse
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
    #   method.response.header.\\\{name\\} , where name is a valid and
    #   unique header name. The mapped non-static value must match the
    #   pattern of integration.response.header.\\\{name\\} or
    #   integration.response.body.\\\{JSON-expression\\} , where \\\{name\\}
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
    #   @return [String]
    #
    class UpdateIntegrationResponseInput < Struct.new(
      :content_handling_strategy,
      :integration_response_key,
      :response_parameters,
      :response_templates,
      :template_selection_expression)
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
    #   @return [String]
    #
    # @!attribute [rw] integration_id
    #   @return [String]
    #
    # @!attribute [rw] integration_response_id
    #   @return [String]
    #
    # @!attribute [rw] integration_response_key
    #   After evaulating a selection expression, the result is compared
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
      include Aws::Structure
    end

    # @!attribute [rw] content_handling_strategy
    #   Specifies how to handle response payload content type conversions.
    #   @return [String]
    #
    # @!attribute [rw] integration_response_id
    #   The identifier.
    #   @return [String]
    #
    # @!attribute [rw] integration_response_key
    #   After evaulating a selection expression, the result is compared
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
      include Aws::Structure
    end

    # Represents the input parameters for an UpdateModel request.
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
      include Aws::Structure
    end

    # Represents the input parameters for an UpdateRoute request.
    #
    # @!attribute [rw] api_key_required
    #   Specifies whether an API key is required for the route.
    #   @return [Boolean]
    #
    # @!attribute [rw] authorization_scopes
    #   The authorization scopes supported by this route.
    #   @return [Array<String>]
    #
    # @!attribute [rw] authorization_type
    #   The authorization type for the route. Valid values are NONE for open
    #   access, AWS\_IAM for using AWS IAM permissions, and CUSTOM for using
    #   a Lambda authorizer.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_id
    #   The identifier of the Authorizer resource to be associated with this
    #   route, if the authorizationType is CUSTOM . The authorizer
    #   identifier is generated by API Gateway when you created the
    #   authorizer.
    #   @return [String]
    #
    # @!attribute [rw] model_selection_expression
    #   The model selection expression for the route.
    #   @return [String]
    #
    # @!attribute [rw] operation_name
    #   The operation name for the route.
    #   @return [String]
    #
    # @!attribute [rw] request_models
    #   The request models for the route.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] request_parameters
    #   The request parameters for the route.
    #   @return [Hash<String,Types::ParameterConstraints>]
    #
    # @!attribute [rw] route_key
    #   The route key for the route.
    #   @return [String]
    #
    # @!attribute [rw] route_response_selection_expression
    #   The route response selection expression for the route.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateRouteRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "__string", # required
    #         api_key_required: false,
    #         authorization_scopes: ["StringWithLengthBetween1And64"],
    #         authorization_type: "NONE", # accepts NONE, AWS_IAM, CUSTOM
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
    #   used with a COGNITO\_USER\_POOLS authorizer to authorize the method
    #   invocation. The authorization works by matching the route scopes
    #   against the scopes parsed from the access token in the incoming
    #   request. The method invocation is authorized if any route scope
    #   matches a claimed scope in the access token. Otherwise, the
    #   invocation is not authorized. When the route scope is configured,
    #   the client must provide an access token instead of an identity token
    #   for authorization purposes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] authorization_type
    #   The authorization type. Valid values are NONE for open access,
    #   AWS\_IAM for using AWS IAM permissions, and CUSTOM for using a
    #   Lambda authorizer.
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
    #   After evaulating a selection expression, the result is compared
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
      include Aws::Structure
    end

    # @!attribute [rw] api_key_required
    #   @return [Boolean]
    #
    # @!attribute [rw] authorization_scopes
    #   A list of authorization scopes configured on a route. The scopes are
    #   used with a COGNITO\_USER\_POOLS authorizer to authorize the method
    #   invocation. The authorization works by matching the route scopes
    #   against the scopes parsed from the access token in the incoming
    #   request. The method invocation is authorized if any route scope
    #   matches a claimed scope in the access token. Otherwise, the
    #   invocation is not authorized. When the route scope is configured,
    #   the client must provide an access token instead of an identity token
    #   for authorization purposes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] authorization_type
    #   The authorization type. Valid values are NONE for open access,
    #   AWS\_IAM for using AWS IAM permissions, and CUSTOM for using a
    #   Lambda authorizer.
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
    #   After evaulating a selection expression, the result is compared
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
      include Aws::Structure
    end

    # Represents the input parameters for an UpdateRouteResponse request.
    #
    # @!attribute [rw] model_selection_expression
    #   The model selection expression for the route response.
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
    #   After evaulating a selection expression, the result is compared
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
    #   After evaulating a selection expression, the result is compared
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
      include Aws::Structure
    end

    # Represents the input parameters for an UpdateStage request.
    #
    # @!attribute [rw] access_log_settings
    #   Settings for logging access in this stage.
    #   @return [Types::AccessLogSettings]
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
    #   The deployment identifier for the API stage.
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
    #   match \[A-Za-z0-9-.\_~:/?#&=,\]+.
    #   @return [Hash<String,String>]
    #
    class UpdateStageInput < Struct.new(
      :access_log_settings,
      :client_certificate_id,
      :default_route_settings,
      :deployment_id,
      :description,
      :route_settings,
      :stage_variables)
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
    #         client_certificate_id: "Id",
    #         default_route_settings: {
    #           data_trace_enabled: false,
    #           detailed_metrics_enabled: false,
    #           logging_level: "ERROR", # accepts ERROR, INFO, false
    #           throttling_burst_limit: 1,
    #           throttling_rate_limit: 1.0,
    #         },
    #         deployment_id: "Id",
    #         description: "StringWithLengthBetween0And1024",
    #         route_settings: {
    #           "__string" => {
    #             data_trace_enabled: false,
    #             detailed_metrics_enabled: false,
    #             logging_level: "ERROR", # accepts ERROR, INFO, false
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
      :client_certificate_id,
      :default_route_settings,
      :deployment_id,
      :description,
      :route_settings,
      :stage_name,
      :stage_variables)
      include Aws::Structure
    end

    # @!attribute [rw] access_log_settings
    #   Settings for logging access in a stage.
    #   @return [Types::AccessLogSettings]
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
    class UpdateStageResponse < Struct.new(
      :access_log_settings,
      :client_certificate_id,
      :created_date,
      :default_route_settings,
      :deployment_id,
      :description,
      :last_updated_date,
      :route_settings,
      :stage_name,
      :stage_variables)
      include Aws::Structure
    end

  end
end
