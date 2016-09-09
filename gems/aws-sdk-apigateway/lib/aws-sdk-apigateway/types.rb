# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
module Aws
  module APIGateway
    module Types

      # Represents an AWS account that is associated with Amazon API Gateway.
      #
      # <div class="remarks" markdown="1">
      # To view the account info, call `GET` on this resource.
      #
      # #### Error Codes
      #
      # The following exception may be thrown when the request fails.
      #
      # * UnauthorizedException
      # * NotFoundException
      # * TooManyRequestsException
      #
      # For detailed error code information, including the corresponding HTTP
      # Status Codes, see [API Gateway Error Codes][1]
      #
      # #### Example: Get the information about an account.
      #
      # ##### Request
      #
      #     GET /account HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com X-Amz-Date: 20160531T184618Z Authorization: AWS4-HMAC-SHA256 Credential=\{access_key_ID\}/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature=\{sig4_hash\}
      #
      # ##### Response
      #
      # The successful response returns a `200 OK` status code and a payload
      # similar to the following:
      #
      #     \{ "_links": \{ "curies": \{ "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/account-apigateway-\{rel\}.html", "name": "account", "templated": true \}, "self": \{ "href": "/account" \}, "account:update": \{ "href": "/account" \} \}, "cloudwatchRoleArn": "arn:aws:iam::123456789012:role/apigAwsProxyRole", "throttleSettings": \{ "rateLimit": 500, "burstLimit": 1000 \} \}
      #
      # In addition to making the REST API call directly, you can use the AWS
      # CLI and an AWS SDK to access this resource.
      #
      # </div>
      #
      # <div class="seeAlso">
      # [API Gateway Limits][2] [Developer Guide][3], [AWS CLI][4]
      # </div>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/apigateway/api-reference/handling-errors/#api-error-codes
      # [2]: http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-limits.html
      # [3]: http://docs.aws.amazon.com/apigateway/latest/developerguide/welcome.html
      # [4]: http://docs.aws.amazon.com/cli/latest/reference/apigateway/get-account.html
      class Account < Aws::Structure.new(
        :cloudwatch_role_arn,
        :throttle_settings,
        :features,
        :api_key_version)

        # @!attribute [rw] cloudwatch_role_arn
        #   The ARN of an Amazon CloudWatch role for the current Account.
        #   @return [String]

        # @!attribute [rw] throttle_settings
        #   Specifies the API request limits configured for the current Account.
        #   @return [Types::ThrottleSettings]

        # @!attribute [rw] features
        #   A list of features supported for the account. When usage plans are
        #   enabled, the features list will include an entry of `"UsagePlans"`.
        #   @return [Array<String>]

        # @!attribute [rw] api_key_version
        #   The version of the API keys used for the account.
        #   @return [String]

      end

      # A resource that can be distributed to callers for executing Method
      # resources that require an API key. API keys can be mapped to any Stage
      # on any RestApi, which indicates that the callers with the API key can
      # make requests to that stage.
      #
      # <div class="seeAlso">
      # [Use API Keys][1]
      # </div>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-api-keys.html
      class ApiKey < Aws::Structure.new(
        :id,
        :value,
        :name,
        :description,
        :enabled,
        :created_date,
        :last_updated_date,
        :stage_keys)

        # @!attribute [rw] id
        #   The identifier of the API Key.
        #   @return [String]

        # @!attribute [rw] value
        #   The value of the API Key.
        #   @return [String]

        # @!attribute [rw] name
        #   The name of the API Key.
        #   @return [String]

        # @!attribute [rw] description
        #   The description of the API Key.
        #   @return [String]

        # @!attribute [rw] enabled
        #   Specifies whether the API Key can be used by callers.
        #   @return [Boolean]

        # @!attribute [rw] created_date
        #   The date when the API Key was created, in [ISO 8601 format][1].
        #
        #
        #
        #   [1]: http://www.iso.org/iso/home/standards/iso8601.htm
        #   @return [Time]

        # @!attribute [rw] last_updated_date
        #   When the API Key was last updated, in ISO 8601 format.
        #   @return [Time]

        # @!attribute [rw] stage_keys
        #   A list of Stage resources that are associated with the ApiKey
        #   resource.
        #   @return [Array<String>]

      end

      # The identifier of an API key used to reference an API key in a usage
      # plan.
      class ApiKeyIds < Aws::Structure.new(
        :ids,
        :warnings)

        # @!attribute [rw] ids
        #   A list of all the ApiKey identifiers.
        #   @return [Array<String>]

        # @!attribute [rw] warnings
        #   A list of warning messages.
        #   @return [Array<String>]

      end

      # Represents a collection of API keys as represented by an ApiKeys
      # resource.
      #
      # <div class="seeAlso">
      # [Use API Keys][1]
      # </div>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-api-keys.html
      class ApiKeys < Aws::Structure.new(
        :warnings,
        :position,
        :items)

        # @!attribute [rw] warnings
        #   A list of warning messages logged during the import of API keys when
        #   the `failOnWarnings` option is set to true.
        #   @return [Array<String>]

        # @!attribute [rw] position
        #   @return [String]

        # @!attribute [rw] items
        #   The current page of any ApiKey resources in the collection of ApiKey
        #   resources.
        #   @return [Array<Types::ApiKey>]

      end

      # API stage name of the associated API stage in a usage plan.
      # @note When making an API call, pass ApiStage
      #   data as a hash:
      #
      #       {
      #         api_id: "String",
      #         stage: "String",
      #       }
      class ApiStage < Aws::Structure.new(
        :api_id,
        :stage)

        # @!attribute [rw] api_id
        #   API Id of the associated API stage in a usage plan.
        #   @return [String]

        # @!attribute [rw] stage
        #   API stage name of the associated API stage in a usage plan.
        #   @return [String]

      end

      # Represents an authorization layer for methods. If enabled on a method,
      # API Gateway will activate the authorizer when a client calls the
      # method.
      #
      # <div class="seeAlso">
      # [Enable custom authorization][1]
      # </div>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/use-custom-authorizer.html
      class Authorizer < Aws::Structure.new(
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

        # @!attribute [rw] id
        #   The identifier for the authorizer resource.
        #   @return [String]

        # @!attribute [rw] name
        #   \[Required\] The name of the authorizer.
        #   @return [String]

        # @!attribute [rw] type
        #   \[Required\] The type of the authorizer. Currently, the only valid
        #   type is TOKEN.
        #   @return [String]

        # @!attribute [rw] provider_arns
        #   A list of the provider ARNs of the authorizer.
        #   @return [Array<String>]

        # @!attribute [rw] auth_type
        #   Optional customer-defined field, used in Swagger imports/exports.
        #   Has no functional impact.
        #   @return [String]

        # @!attribute [rw] authorizer_uri
        #   \[Required\] Specifies the authorizer\'s Uniform Resource Identifier
        #   (URI). For TOKEN authorizers, this must be a well-formed Lambda
        #   function URI. The URI should be of the form
        #   `arn:aws:apigateway:\{region\}:lambda:path/\{service_api\}`.
        #   `Region` is used to determine the right endpoint. In this case,
        #   `path` is used to indicate that the remaining substring in the URI
        #   should be treated as the path to the resource, including the initial
        #   `/`. For Lambda functions, this is usually of the form
        #   /2015-03-31/functions/\[FunctionARN\]/invocations
        #   @return [String]

        # @!attribute [rw] authorizer_credentials
        #   Specifies the credentials required for the authorizer, if any. Two
        #   options are available. To specify an IAM role for Amazon API Gateway
        #   to assume, use the role\'s Amazon Resource Name (ARN). To use
        #   resource-based permissions on the Lambda function, specify null.
        #   @return [String]

        # @!attribute [rw] identity_source
        #   \[Required\] The source of the identity in an incoming request. For
        #   TOKEN authorizers, this value is a mapping expression with the same
        #   syntax as integration parameter mappings. The only valid source for
        #   tokens is \'header\', so the expression should match
        #   \'method.request.header.\[headerName\]\'. The value of the header
        #   \'\[headerName\]\' will be interpreted as the incoming token.
        #   @return [String]

        # @!attribute [rw] identity_validation_expression
        #   A validation expression for the incoming identity. For TOKEN
        #   authorizers, this value should be a regular expression. The incoming
        #   token from the client is matched against this expression, and will
        #   proceed if the token matches. If the token doesn\'t match, the
        #   client receives a 401 Unauthorized response.
        #   @return [String]

        # @!attribute [rw] authorizer_result_ttl_in_seconds
        #   The TTL in seconds of cached authorizer results. If greater than 0,
        #   API Gateway will cache authorizer responses. If this field is not
        #   set, the default value is 300. The maximum value is 3600, or 1 hour.
        #   @return [Integer]

      end

      # Represents a collection of Authorizer resources.
      #
      # <div class="seeAlso">
      # [Enable custom authorization][1]
      # </div>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/use-custom-authorizer.html
      class Authorizers < Aws::Structure.new(
        :position,
        :items)

        # @!attribute [rw] position
        #   @return [String]

        # @!attribute [rw] items
        #   Gets the current list of Authorizer resources in the collection.
        #   @return [Array<Types::Authorizer>]

      end

      # Represents the base path that callers of the API must provide as part
      # of the URL after the domain name.
      #
      # <div class="remarks">
      # A custom domain name plus a `BasePathMapping` specification identifies
      # a deployed RestApi in a given stage of the owner Account.
      # </div>
      #
      # <div class="seeAlso">
      # [Use Custom Domain Names][1]
      # </div>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html
      class BasePathMapping < Aws::Structure.new(
        :base_path,
        :rest_api_id,
        :stage)

        # @!attribute [rw] base_path
        #   The base path name that callers of the API must provide as part of
        #   the URL after the domain name.
        #   @return [String]

        # @!attribute [rw] rest_api_id
        #   The name of the API.
        #   @return [String]

        # @!attribute [rw] stage
        #   The name of the API\'s stage.
        #   @return [String]

      end

      # Represents a collection of BasePathMapping resources.
      #
      # <div class="seeAlso">
      # [Use Custom Domain Names][1]
      # </div>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html
      class BasePathMappings < Aws::Structure.new(
        :position,
        :items)

        # @!attribute [rw] position
        #   @return [String]

        # @!attribute [rw] items
        #   The current page of any BasePathMapping resources in the collection
        #   of base path mapping resources.
        #   @return [Array<Types::BasePathMapping>]

      end

      # Represents a client certificate used to configure client-side SSL
      # authentication while sending requests to the integration endpoint.
      #
      # <div class="remarks">
      # Client certificates are used authenticate an API by the back-end
      # server. To authenticate an API client (or user), use a custom
      # Authorizer.
      # </div>
      #
      # <div class="seeAlso">
      # [Use Client-Side Certificate][1]
      # </div>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/getting-started-client-side-ssl-authentication.html
      class ClientCertificate < Aws::Structure.new(
        :client_certificate_id,
        :description,
        :pem_encoded_certificate,
        :created_date,
        :expiration_date)

        # @!attribute [rw] client_certificate_id
        #   The identifier of the client certificate.
        #   @return [String]

        # @!attribute [rw] description
        #   The description of the client certificate.
        #   @return [String]

        # @!attribute [rw] pem_encoded_certificate
        #   The PEM-encoded public key of the client certificate, which can be
        #   used to configure certificate authentication in the integration
        #   endpoint .
        #   @return [String]

        # @!attribute [rw] created_date
        #   The date when the client certificate was created, in [ISO 8601
        #   format][1].
        #
        #
        #
        #   [1]: http://www.iso.org/iso/home/standards/iso8601.htm
        #   @return [Time]

        # @!attribute [rw] expiration_date
        #   The date when the client certificate will expire, in [ISO 8601
        #   format][1].
        #
        #
        #
        #   [1]: http://www.iso.org/iso/home/standards/iso8601.htm
        #   @return [Time]

      end

      # Represents a collection of ClientCertificate resources.
      #
      # <div class="seeAlso">
      # [Use Client-Side Certificate][1]
      # </div>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/getting-started-client-side-ssl-authentication.html
      class ClientCertificates < Aws::Structure.new(
        :position,
        :items)

        # @!attribute [rw] position
        #   @return [String]

        # @!attribute [rw] items
        #   The current page of any ClientCertificate resources in the
        #   collection of ClientCertificate resources.
        #   @return [Array<Types::ClientCertificate>]

      end

      # Request to create an ApiKey resource.
      # @note When making an API call, pass CreateApiKeyRequest
      #   data as a hash:
      #
      #       {
      #         name: "String",
      #         description: "String",
      #         enabled: false,
      #         generate_distinct_id: false,
      #         value: "String",
      #         stage_keys: [
      #           {
      #             rest_api_id: "String",
      #             stage_name: "String",
      #           },
      #         ],
      #       }
      class CreateApiKeyRequest < Aws::Structure.new(
        :name,
        :description,
        :enabled,
        :generate_distinct_id,
        :value,
        :stage_keys)

        # @!attribute [rw] name
        #   The name of the ApiKey.
        #   @return [String]

        # @!attribute [rw] description
        #   The description of the ApiKey.
        #   @return [String]

        # @!attribute [rw] enabled
        #   Specifies whether the ApiKey can be used by callers.
        #   @return [Boolean]

        # @!attribute [rw] generate_distinct_id
        #   Specifies whether (`true`) or not (`false`) the key identifier is
        #   distinct from the created API key value.
        #   @return [Boolean]

        # @!attribute [rw] value
        #   Specifies a value of the API key.
        #   @return [String]

        # @!attribute [rw] stage_keys
        #   DEPRECATED FOR USAGE PLANS - Specifies stages associated with the
        #   API key.
        #   @return [Array<Types::StageKey>]

      end

      # Request to add a new Authorizer to an existing RestApi resource.
      # @note When making an API call, pass CreateAuthorizerRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         name: "String", # required
      #         type: "TOKEN", # required, accepts TOKEN, COGNITO_USER_POOLS
      #         provider_arns: ["ProviderARN"],
      #         auth_type: "String",
      #         authorizer_uri: "String",
      #         authorizer_credentials: "String",
      #         identity_source: "String", # required
      #         identity_validation_expression: "String",
      #         authorizer_result_ttl_in_seconds: 1,
      #       }
      class CreateAuthorizerRequest < Aws::Structure.new(
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

        # @!attribute [rw] rest_api_id
        #   The RestApi identifier under which the Authorizer will be created.
        #   @return [String]

        # @!attribute [rw] name
        #   \[Required\] The name of the authorizer.
        #   @return [String]

        # @!attribute [rw] type
        #   \[Required\] The type of the authorizer.
        #   @return [String]

        # @!attribute [rw] provider_arns
        #   A list of the Cognito Your User Pool authorizer\'s provider ARNs.
        #   @return [Array<String>]

        # @!attribute [rw] auth_type
        #   Optional customer-defined field, used in Swagger imports/exports.
        #   Has no functional impact.
        #   @return [String]

        # @!attribute [rw] authorizer_uri
        #   \[Required\] Specifies the authorizer\'s Uniform Resource Identifier
        #   (URI).
        #   @return [String]

        # @!attribute [rw] authorizer_credentials
        #   Specifies the credentials required for the authorizer, if any.
        #   @return [String]

        # @!attribute [rw] identity_source
        #   \[Required\] The source of the identity in an incoming request.
        #   @return [String]

        # @!attribute [rw] identity_validation_expression
        #   A validation expression for the incoming identity.
        #   @return [String]

        # @!attribute [rw] authorizer_result_ttl_in_seconds
        #   The TTL of cached authorizer results.
        #   @return [Integer]

      end

      # Requests Amazon API Gateway to create a new BasePathMapping resource.
      # @note When making an API call, pass CreateBasePathMappingRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "String", # required
      #         base_path: "String",
      #         rest_api_id: "String", # required
      #         stage: "String",
      #       }
      class CreateBasePathMappingRequest < Aws::Structure.new(
        :domain_name,
        :base_path,
        :rest_api_id,
        :stage)

        # @!attribute [rw] domain_name
        #   The domain name of the BasePathMapping resource to create.
        #   @return [String]

        # @!attribute [rw] base_path
        #   The base path name that callers of the API must provide as part of
        #   the URL after the domain name. This value must be unique for all of
        #   the mappings across a single API. Leave this blank if you do not
        #   want callers to specify a base path name after the domain name.
        #   @return [String]

        # @!attribute [rw] rest_api_id
        #   The name of the API that you want to apply this mapping to.
        #   @return [String]

        # @!attribute [rw] stage
        #   The name of the API\'s stage that you want to use for this mapping.
        #   Leave this blank if you do not want callers to explicitly specify
        #   the stage name after any base path name.
        #   @return [String]

      end

      # Requests Amazon API Gateway to create a Deployment resource.
      # @note When making an API call, pass CreateDeploymentRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         stage_name: "String", # required
      #         stage_description: "String",
      #         description: "String",
      #         cache_cluster_enabled: false,
      #         cache_cluster_size: "0.5", # accepts 0.5, 1.6, 6.1, 13.5, 28.4, 58.2, 118, 237
      #         variables: {
      #           "String" => "String",
      #         },
      #       }
      class CreateDeploymentRequest < Aws::Structure.new(
        :rest_api_id,
        :stage_name,
        :stage_description,
        :description,
        :cache_cluster_enabled,
        :cache_cluster_size,
        :variables)

        # @!attribute [rw] rest_api_id
        #   The RestApi resource identifier for the Deployment resource to
        #   create.
        #   @return [String]

        # @!attribute [rw] stage_name
        #   The name of the Stage resource for the Deployment resource to
        #   create.
        #   @return [String]

        # @!attribute [rw] stage_description
        #   The description of the Stage resource for the Deployment resource to
        #   create.
        #   @return [String]

        # @!attribute [rw] description
        #   The description for the Deployment resource to create.
        #   @return [String]

        # @!attribute [rw] cache_cluster_enabled
        #   Enables a cache cluster for the Stage resource specified in the
        #   input.
        #   @return [Boolean]

        # @!attribute [rw] cache_cluster_size
        #   Specifies the cache cluster size for the Stage resource specified in
        #   the input, if a cache cluster is enabled.
        #   @return [String]

        # @!attribute [rw] variables
        #   A map that defines the stage variables for the Stage resource that
        #   is associated with the new deployment. Variable names can have
        #   alphanumeric and underscore characters, and the values must match
        #   `[A-Za-z0-9-._~:/?#&=,]+`.
        #   @return [Hash<String,String>]

      end

      # A request to create a new domain name.
      # @note When making an API call, pass CreateDomainNameRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "String", # required
      #         certificate_name: "String", # required
      #         certificate_body: "String", # required
      #         certificate_private_key: "String", # required
      #         certificate_chain: "String", # required
      #       }
      class CreateDomainNameRequest < Aws::Structure.new(
        :domain_name,
        :certificate_name,
        :certificate_body,
        :certificate_private_key,
        :certificate_chain)

        # @!attribute [rw] domain_name
        #   The name of the DomainName resource.
        #   @return [String]

        # @!attribute [rw] certificate_name
        #   The name of the certificate.
        #   @return [String]

        # @!attribute [rw] certificate_body
        #   The body of the server certificate provided by your certificate
        #   authority.
        #   @return [String]

        # @!attribute [rw] certificate_private_key
        #   Your certificate\'s private key.
        #   @return [String]

        # @!attribute [rw] certificate_chain
        #   The intermediate certificates and optionally the root certificate,
        #   one after the other without any blank lines. If you include the root
        #   certificate, your certificate chain must start with intermediate
        #   certificates and end with the root certificate. Use the intermediate
        #   certificates that were provided by your certificate authority. Do
        #   not include any intermediaries that are not in the chain of trust
        #   path.
        #   @return [String]

      end

      # Request to add a new Model to an existing RestApi resource.
      # @note When making an API call, pass CreateModelRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         name: "String", # required
      #         description: "String",
      #         schema: "String",
      #         content_type: "String", # required
      #       }
      class CreateModelRequest < Aws::Structure.new(
        :rest_api_id,
        :name,
        :description,
        :schema,
        :content_type)

        # @!attribute [rw] rest_api_id
        #   The RestApi identifier under which the Model will be created.
        #   @return [String]

        # @!attribute [rw] name
        #   The name of the model.
        #   @return [String]

        # @!attribute [rw] description
        #   The description of the model.
        #   @return [String]

        # @!attribute [rw] schema
        #   The schema for the model. For `application/json` models, this should
        #   be [JSON-schema draft v4][1] model.
        #
        #
        #
        #   [1]: http://json-schema.org/documentation.html
        #   @return [String]

        # @!attribute [rw] content_type
        #   The content-type for the model.
        #   @return [String]

      end

      # Requests Amazon API Gateway to create a Resource resource.
      # @note When making an API call, pass CreateResourceRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         parent_id: "String", # required
      #         path_part: "String", # required
      #       }
      class CreateResourceRequest < Aws::Structure.new(
        :rest_api_id,
        :parent_id,
        :path_part)

        # @!attribute [rw] rest_api_id
        #   The identifier of the RestApi for the resource.
        #   @return [String]

        # @!attribute [rw] parent_id
        #   The parent resource\'s identifier.
        #   @return [String]

        # @!attribute [rw] path_part
        #   The last path segment for this resource.
        #   @return [String]

      end

      # The POST Request to add a new RestApi resource to your collection.
      # @note When making an API call, pass CreateRestApiRequest
      #   data as a hash:
      #
      #       {
      #         name: "String", # required
      #         description: "String",
      #         clone_from: "String",
      #       }
      class CreateRestApiRequest < Aws::Structure.new(
        :name,
        :description,
        :clone_from)

        # @!attribute [rw] name
        #   The name of the RestApi.
        #   @return [String]

        # @!attribute [rw] description
        #   The description of the RestApi.
        #   @return [String]

        # @!attribute [rw] clone_from
        #   The ID of the RestApi that you want to clone from.
        #   @return [String]

      end

      # Requests Amazon API Gateway to create a Stage resource.
      # @note When making an API call, pass CreateStageRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         stage_name: "String", # required
      #         deployment_id: "String", # required
      #         description: "String",
      #         cache_cluster_enabled: false,
      #         cache_cluster_size: "0.5", # accepts 0.5, 1.6, 6.1, 13.5, 28.4, 58.2, 118, 237
      #         variables: {
      #           "String" => "String",
      #         },
      #       }
      class CreateStageRequest < Aws::Structure.new(
        :rest_api_id,
        :stage_name,
        :deployment_id,
        :description,
        :cache_cluster_enabled,
        :cache_cluster_size,
        :variables)

        # @!attribute [rw] rest_api_id
        #   The identifier of the RestApi resource for the Stage resource to
        #   create.
        #   @return [String]

        # @!attribute [rw] stage_name
        #   The name for the Stage resource.
        #   @return [String]

        # @!attribute [rw] deployment_id
        #   The identifier of the Deployment resource for the Stage resource.
        #   @return [String]

        # @!attribute [rw] description
        #   The description of the Stage resource.
        #   @return [String]

        # @!attribute [rw] cache_cluster_enabled
        #   Whether cache clustering is enabled for the stage.
        #   @return [Boolean]

        # @!attribute [rw] cache_cluster_size
        #   The stage\'s cache cluster size.
        #   @return [String]

        # @!attribute [rw] variables
        #   A map that defines the stage variables for the new Stage resource.
        #   Variable names can have alphanumeric and underscore characters, and
        #   the values must match `[A-Za-z0-9-._~:/?#&=,]+`.
        #   @return [Hash<String,String>]

      end

      # The POST request to create a usage plan key for adding an existing API
      # key to a usage plan.
      # @note When making an API call, pass CreateUsagePlanKeyRequest
      #   data as a hash:
      #
      #       {
      #         usage_plan_id: "String", # required
      #         key_id: "String", # required
      #         key_type: "String", # required
      #       }
      class CreateUsagePlanKeyRequest < Aws::Structure.new(
        :usage_plan_id,
        :key_id,
        :key_type)

        # @!attribute [rw] usage_plan_id
        #   The Id of the UsagePlan resource representing the usage plan
        #   containing the to-be-created UsagePlanKey resource representing a
        #   plan customer.
        #   @return [String]

        # @!attribute [rw] key_id
        #   The identifier of a UsagePlanKey resource for a plan customer.
        #   @return [String]

        # @!attribute [rw] key_type
        #   The type of a UsagePlanKey resource for a plan customer.
        #   @return [String]

      end

      # The POST request to create a usage plan with the name, description,
      # throttle limits and quota limits, as well as the associated API
      # stages, specified in the payload.
      # @note When making an API call, pass CreateUsagePlanRequest
      #   data as a hash:
      #
      #       {
      #         name: "String", # required
      #         description: "String",
      #         api_stages: [
      #           {
      #             api_id: "String",
      #             stage: "String",
      #           },
      #         ],
      #         throttle: {
      #           burst_limit: 1,
      #           rate_limit: 1.0,
      #         },
      #         quota: {
      #           limit: 1,
      #           offset: 1,
      #           period: "DAY", # accepts DAY, WEEK, MONTH
      #         },
      #       }
      class CreateUsagePlanRequest < Aws::Structure.new(
        :name,
        :description,
        :api_stages,
        :throttle,
        :quota)

        # @!attribute [rw] name
        #   The name of the usage plan.
        #   @return [String]

        # @!attribute [rw] description
        #   The description of the usage plan.
        #   @return [String]

        # @!attribute [rw] api_stages
        #   The associated API stages of the usage plan.
        #   @return [Array<Types::ApiStage>]

        # @!attribute [rw] throttle
        #   The throttling limits of the usage plan.
        #   @return [Types::ThrottleSettings]

        # @!attribute [rw] quota
        #   The quota of the usage plan.
        #   @return [Types::QuotaSettings]

      end

      # A request to delete the ApiKey resource.
      # @note When making an API call, pass DeleteApiKeyRequest
      #   data as a hash:
      #
      #       {
      #         api_key: "String", # required
      #       }
      class DeleteApiKeyRequest < Aws::Structure.new(
        :api_key)

        # @!attribute [rw] api_key
        #   The identifier of the ApiKey resource to be deleted.
        #   @return [String]

      end

      # Request to delete an existing Authorizer resource.
      # @note When making an API call, pass DeleteAuthorizerRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         authorizer_id: "String", # required
      #       }
      class DeleteAuthorizerRequest < Aws::Structure.new(
        :rest_api_id,
        :authorizer_id)

        # @!attribute [rw] rest_api_id
        #   The RestApi identifier for the Authorizer resource.
        #   @return [String]

        # @!attribute [rw] authorizer_id
        #   The identifier of the Authorizer resource.
        #   @return [String]

      end

      # A request to delete the BasePathMapping resource.
      # @note When making an API call, pass DeleteBasePathMappingRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "String", # required
      #         base_path: "String", # required
      #       }
      class DeleteBasePathMappingRequest < Aws::Structure.new(
        :domain_name,
        :base_path)

        # @!attribute [rw] domain_name
        #   The domain name of the BasePathMapping resource to delete.
        #   @return [String]

        # @!attribute [rw] base_path
        #   The base path name of the BasePathMapping resource to delete.
        #   @return [String]

      end

      # A request to delete the ClientCertificate resource.
      # @note When making an API call, pass DeleteClientCertificateRequest
      #   data as a hash:
      #
      #       {
      #         client_certificate_id: "String", # required
      #       }
      class DeleteClientCertificateRequest < Aws::Structure.new(
        :client_certificate_id)

        # @!attribute [rw] client_certificate_id
        #   The identifier of the ClientCertificate resource to be deleted.
        #   @return [String]

      end

      # Requests Amazon API Gateway to delete a Deployment resource.
      # @note When making an API call, pass DeleteDeploymentRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         deployment_id: "String", # required
      #       }
      class DeleteDeploymentRequest < Aws::Structure.new(
        :rest_api_id,
        :deployment_id)

        # @!attribute [rw] rest_api_id
        #   The identifier of the RestApi resource for the Deployment resource
        #   to delete.
        #   @return [String]

        # @!attribute [rw] deployment_id
        #   The identifier of the Deployment resource to delete.
        #   @return [String]

      end

      # A request to delete the DomainName resource.
      # @note When making an API call, pass DeleteDomainNameRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "String", # required
      #       }
      class DeleteDomainNameRequest < Aws::Structure.new(
        :domain_name)

        # @!attribute [rw] domain_name
        #   The name of the DomainName resource to be deleted.
        #   @return [String]

      end

      # Represents a delete integration request.
      # @note When making an API call, pass DeleteIntegrationRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         resource_id: "String", # required
      #         http_method: "String", # required
      #       }
      class DeleteIntegrationRequest < Aws::Structure.new(
        :rest_api_id,
        :resource_id,
        :http_method)

        # @!attribute [rw] rest_api_id
        #   Specifies a delete integration request\'s API identifier.
        #   @return [String]

        # @!attribute [rw] resource_id
        #   Specifies a delete integration request\'s resource identifier.
        #   @return [String]

        # @!attribute [rw] http_method
        #   Specifies a delete integration request\'s HTTP method.
        #   @return [String]

      end

      # Represents a delete integration response request.
      # @note When making an API call, pass DeleteIntegrationResponseRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         resource_id: "String", # required
      #         http_method: "String", # required
      #         status_code: "StatusCode", # required
      #       }
      class DeleteIntegrationResponseRequest < Aws::Structure.new(
        :rest_api_id,
        :resource_id,
        :http_method,
        :status_code)

        # @!attribute [rw] rest_api_id
        #   Specifies a delete integration response request\'s API identifier.
        #   @return [String]

        # @!attribute [rw] resource_id
        #   Specifies a delete integration response request\'s resource
        #   identifier.
        #   @return [String]

        # @!attribute [rw] http_method
        #   Specifies a delete integration response request\'s HTTP method.
        #   @return [String]

        # @!attribute [rw] status_code
        #   Specifies a delete integration response request\'s status code.
        #   @return [String]

      end

      # Request to delete an existing Method resource.
      # @note When making an API call, pass DeleteMethodRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         resource_id: "String", # required
      #         http_method: "String", # required
      #       }
      class DeleteMethodRequest < Aws::Structure.new(
        :rest_api_id,
        :resource_id,
        :http_method)

        # @!attribute [rw] rest_api_id
        #   The RestApi identifier for the Method resource.
        #   @return [String]

        # @!attribute [rw] resource_id
        #   The Resource identifier for the Method resource.
        #   @return [String]

        # @!attribute [rw] http_method
        #   The HTTP verb of the Method resource.
        #   @return [String]

      end

      # A request to delete an existing MethodResponse resource.
      # @note When making an API call, pass DeleteMethodResponseRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         resource_id: "String", # required
      #         http_method: "String", # required
      #         status_code: "StatusCode", # required
      #       }
      class DeleteMethodResponseRequest < Aws::Structure.new(
        :rest_api_id,
        :resource_id,
        :http_method,
        :status_code)

        # @!attribute [rw] rest_api_id
        #   The RestApi identifier for the MethodResponse resource.
        #   @return [String]

        # @!attribute [rw] resource_id
        #   The Resource identifier for the MethodResponse resource.
        #   @return [String]

        # @!attribute [rw] http_method
        #   The HTTP verb of the Method resource.
        #   @return [String]

        # @!attribute [rw] status_code
        #   The status code identifier for the MethodResponse resource.
        #   @return [String]

      end

      # Request to delete an existing model in an existing RestApi resource.
      # @note When making an API call, pass DeleteModelRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         model_name: "String", # required
      #       }
      class DeleteModelRequest < Aws::Structure.new(
        :rest_api_id,
        :model_name)

        # @!attribute [rw] rest_api_id
        #   The RestApi under which the model will be deleted.
        #   @return [String]

        # @!attribute [rw] model_name
        #   The name of the model to delete.
        #   @return [String]

      end

      # Request to delete a Resource.
      # @note When making an API call, pass DeleteResourceRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         resource_id: "String", # required
      #       }
      class DeleteResourceRequest < Aws::Structure.new(
        :rest_api_id,
        :resource_id)

        # @!attribute [rw] rest_api_id
        #   The RestApi identifier for the Resource resource.
        #   @return [String]

        # @!attribute [rw] resource_id
        #   The identifier of the Resource resource.
        #   @return [String]

      end

      # Request to delete the specified API from your collection.
      # @note When making an API call, pass DeleteRestApiRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #       }
      class DeleteRestApiRequest < Aws::Structure.new(
        :rest_api_id)

        # @!attribute [rw] rest_api_id
        #   The ID of the RestApi you want to delete.
        #   @return [String]

      end

      # Requests Amazon API Gateway to delete a Stage resource.
      # @note When making an API call, pass DeleteStageRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         stage_name: "String", # required
      #       }
      class DeleteStageRequest < Aws::Structure.new(
        :rest_api_id,
        :stage_name)

        # @!attribute [rw] rest_api_id
        #   The identifier of the RestApi resource for the Stage resource to
        #   delete.
        #   @return [String]

        # @!attribute [rw] stage_name
        #   The name of the Stage resource to delete.
        #   @return [String]

      end

      # The DELETE request to delete a usage plan key and remove the
      # underlying API key from the associated usage plan.
      # @note When making an API call, pass DeleteUsagePlanKeyRequest
      #   data as a hash:
      #
      #       {
      #         usage_plan_id: "String", # required
      #         key_id: "String", # required
      #       }
      class DeleteUsagePlanKeyRequest < Aws::Structure.new(
        :usage_plan_id,
        :key_id)

        # @!attribute [rw] usage_plan_id
        #   The Id of the UsagePlan resource representing the usage plan
        #   containing the to-be-deleted UsagePlanKey resource representing a
        #   plan customer.
        #   @return [String]

        # @!attribute [rw] key_id
        #   The Id of the UsagePlanKey resource to be deleted.
        #   @return [String]

      end

      # The DELETE request to delete a uasge plan of a given plan Id.
      # @note When making an API call, pass DeleteUsagePlanRequest
      #   data as a hash:
      #
      #       {
      #         usage_plan_id: "String", # required
      #       }
      class DeleteUsagePlanRequest < Aws::Structure.new(
        :usage_plan_id)

        # @!attribute [rw] usage_plan_id
        #   The Id of the to-be-deleted usage plan.
        #   @return [String]

      end

      # An immutable representation of a RestApi resource that can be called
      # by users using Stages. A deployment must be associated with a Stage
      # for it to be callable over the Internet.
      #
      # <div class="remarks">
      # To create a deployment, call `POST` on the Deployments resource of a
      # RestApi. To view, update, or delete a deployment, call `GET`, `PATCH`,
      # or `DELETE` on the specified deployment resource
      # (`/restapis/\{restapi_id\}/deployments/\{deployment_id\}`).
      # </div>
      #
      # <div class="seeAlso">
      # RestApi, Deployments, Stage, [AWS CLI][1], [AWS SDKs][2]
      # </div>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/cli/latest/reference/apigateway/get-deployment.html
      # [2]: https://aws.amazon.com/tools/
      class Deployment < Aws::Structure.new(
        :id,
        :description,
        :created_date,
        :api_summary)

        # @!attribute [rw] id
        #   The identifier for the deployment resource.
        #   @return [String]

        # @!attribute [rw] description
        #   The description for the deployment resource.
        #   @return [String]

        # @!attribute [rw] created_date
        #   The date and time that the deployment resource was created.
        #   @return [Time]

        # @!attribute [rw] api_summary
        #   A summary of the RestApi at the date and time that the deployment
        #   resource was created.
        #   @return [Hash<String,Hash<String,Types::MethodSnapshot>>]

      end

      # Represents a collection resource that contains zero or more references
      # to your existing deployments, and links that guide you on how to
      # interact with your collection. The collection offers a paginated view
      # of the contained deployments.
      #
      # <div class="remarks">
      # To create a new deployment of a RestApi, make a `POST` request against
      # this resource. To view, update, or delete an existing deployment, make
      # a `GET`, `PATCH`, or `DELETE` request, respectively, on a specified
      # Deployment resource.
      # </div>
      #
      # <div class="seeAlso">
      # [Deploying an API][1], [AWS CLI][2], [AWS SDKs][3]
      # </div>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-deploy-api.html
      # [2]: http://docs.aws.amazon.com/cli/latest/reference/apigateway/get-deployment.html
      # [3]: https://aws.amazon.com/tools/
      class Deployments < Aws::Structure.new(
        :position,
        :items)

        # @!attribute [rw] position
        #   @return [String]

        # @!attribute [rw] items
        #   The current page of any Deployment resources in the collection of
        #   deployment resources.
        #   @return [Array<Types::Deployment>]

      end

      # Represents a domain name that is contained in a simpler, more
      # intuitive URL that can be called.
      #
      # <div class="seeAlso">
      # [Use Client-Side Certificate][1]
      # </div>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html
      class DomainName < Aws::Structure.new(
        :domain_name,
        :certificate_name,
        :certificate_upload_date,
        :distribution_domain_name)

        # @!attribute [rw] domain_name
        #   The name of the DomainName resource.
        #   @return [String]

        # @!attribute [rw] certificate_name
        #   The name of the certificate.
        #   @return [String]

        # @!attribute [rw] certificate_upload_date
        #   The date when the certificate was uploaded, in [ISO 8601 format][1].
        #
        #
        #
        #   [1]: http://www.iso.org/iso/home/standards/iso8601.htm
        #   @return [Time]

        # @!attribute [rw] distribution_domain_name
        #   The domain name of the Amazon CloudFront distribution. For more
        #   information, see the [Amazon CloudFront documentation][1].
        #
        #
        #
        #   [1]: http://aws.amazon.com/documentation/cloudfront/
        #   @return [String]

      end

      # Represents a collection of DomainName resources.
      #
      # <div class="seeAlso">
      # [Use Client-Side Certificate][1]
      # </div>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html
      class DomainNames < Aws::Structure.new(
        :position,
        :items)

        # @!attribute [rw] position
        #   @return [String]

        # @!attribute [rw] items
        #   The current page of any DomainName resources in the collection of
        #   DomainName resources.
        #   @return [Array<Types::DomainName>]

      end

      # The binary blob response to GetExport, which contains the generated
      # SDK.
      class ExportResponse < Aws::Structure.new(
        :content_type,
        :content_disposition,
        :body)

        # @!attribute [rw] content_type
        #   The content-type header value in the HTTP response. This will
        #   correspond to a valid \'accept\' type in the request.
        #   @return [String]

        # @!attribute [rw] content_disposition
        #   The content-disposition header value in the HTTP response.
        #   @return [String]

        # @!attribute [rw] body
        #   The binary blob response to GetExport, which contains the export.
        #   @return [String]

      end

      # Request to flush authorizer cache entries on a specified stage.
      # @note When making an API call, pass FlushStageAuthorizersCacheRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         stage_name: "String", # required
      #       }
      class FlushStageAuthorizersCacheRequest < Aws::Structure.new(
        :rest_api_id,
        :stage_name)

        # @!attribute [rw] rest_api_id
        #   The API identifier of the stage to flush.
        #   @return [String]

        # @!attribute [rw] stage_name
        #   The name of the stage to flush.
        #   @return [String]

      end

      # Requests Amazon API Gateway to flush a stage\'s cache.
      # @note When making an API call, pass FlushStageCacheRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         stage_name: "String", # required
      #       }
      class FlushStageCacheRequest < Aws::Structure.new(
        :rest_api_id,
        :stage_name)

        # @!attribute [rw] rest_api_id
        #   The API identifier of the stage to flush its cache.
        #   @return [String]

        # @!attribute [rw] stage_name
        #   The name of the stage to flush its cache.
        #   @return [String]

      end

      # A request to generate a ClientCertificate resource.
      # @note When making an API call, pass GenerateClientCertificateRequest
      #   data as a hash:
      #
      #       {
      #         description: "String",
      #       }
      class GenerateClientCertificateRequest < Aws::Structure.new(
        :description)

        # @!attribute [rw] description
        #   The description of the ClientCertificate.
        #   @return [String]

      end

      # Requests Amazon API Gateway to get information about the current
      # Account resource.
      # @api private
      class GetAccountRequest < Aws::EmptyStructure; end

      # A request to get information about the current ApiKey resource.
      # @note When making an API call, pass GetApiKeyRequest
      #   data as a hash:
      #
      #       {
      #         api_key: "String", # required
      #         include_value: false,
      #       }
      class GetApiKeyRequest < Aws::Structure.new(
        :api_key,
        :include_value)

        # @!attribute [rw] api_key
        #   The identifier of the ApiKey resource.
        #   @return [String]

        # @!attribute [rw] include_value
        #   A boolean flag to specify whether (`true`) or not (`false`) the
        #   result contains the key value.
        #   @return [Boolean]

      end

      # A request to get information about the current ApiKeys resource.
      # @note When making an API call, pass GetApiKeysRequest
      #   data as a hash:
      #
      #       {
      #         position: "String",
      #         limit: 1,
      #         name_query: "String",
      #         include_values: false,
      #       }
      class GetApiKeysRequest < Aws::Structure.new(
        :position,
        :limit,
        :name_query,
        :include_values)

        # @!attribute [rw] position
        #   The position of the current ApiKeys resource to get information
        #   about.
        #   @return [String]

        # @!attribute [rw] limit
        #   The maximum number of ApiKeys to get information about.
        #   @return [Integer]

        # @!attribute [rw] name_query
        #   The name of queried API keys.
        #   @return [String]

        # @!attribute [rw] include_values
        #   A boolean flag to specify whether (`true`) or not (`false`) the
        #   result contains key values.
        #   @return [Boolean]

      end

      # Request to describe an existing Authorizer resource.
      # @note When making an API call, pass GetAuthorizerRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         authorizer_id: "String", # required
      #       }
      class GetAuthorizerRequest < Aws::Structure.new(
        :rest_api_id,
        :authorizer_id)

        # @!attribute [rw] rest_api_id
        #   The RestApi identifier for the Authorizer resource.
        #   @return [String]

        # @!attribute [rw] authorizer_id
        #   The identifier of the Authorizer resource.
        #   @return [String]

      end

      # Request to describe an existing Authorizers resource.
      # @note When making an API call, pass GetAuthorizersRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         position: "String",
      #         limit: 1,
      #       }
      class GetAuthorizersRequest < Aws::Structure.new(
        :rest_api_id,
        :position,
        :limit)

        # @!attribute [rw] rest_api_id
        #   The RestApi identifier for the Authorizers resource.
        #   @return [String]

        # @!attribute [rw] position
        #   If not all Authorizer resources in the response were present, the
        #   position will specify where to start the next page of results.
        #   @return [String]

        # @!attribute [rw] limit
        #   Limit the number of Authorizer resources in the response.
        #   @return [Integer]

      end

      # Request to describe a BasePathMapping resource.
      # @note When making an API call, pass GetBasePathMappingRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "String", # required
      #         base_path: "String", # required
      #       }
      class GetBasePathMappingRequest < Aws::Structure.new(
        :domain_name,
        :base_path)

        # @!attribute [rw] domain_name
        #   The domain name of the BasePathMapping resource to be described.
        #   @return [String]

        # @!attribute [rw] base_path
        #   The base path name that callers of the API must provide as part of
        #   the URL after the domain name. This value must be unique for all of
        #   the mappings across a single API. Leave this blank if you do not
        #   want callers to specify any base path name after the domain name.
        #   @return [String]

      end

      # A request to get information about a collection of BasePathMapping
      # resources.
      # @note When making an API call, pass GetBasePathMappingsRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "String", # required
      #         position: "String",
      #         limit: 1,
      #       }
      class GetBasePathMappingsRequest < Aws::Structure.new(
        :domain_name,
        :position,
        :limit)

        # @!attribute [rw] domain_name
        #   The domain name of a BasePathMapping resource.
        #   @return [String]

        # @!attribute [rw] position
        #   The position of the current BasePathMapping resource in the
        #   collection to get information about.
        #   @return [String]

        # @!attribute [rw] limit
        #   The maximum number of BasePathMapping resources in the collection to
        #   get information about. The default limit is 25. It should be an
        #   integer between 1 - 500.
        #   @return [Integer]

      end

      # A request to get information about the current ClientCertificate
      # resource.
      # @note When making an API call, pass GetClientCertificateRequest
      #   data as a hash:
      #
      #       {
      #         client_certificate_id: "String", # required
      #       }
      class GetClientCertificateRequest < Aws::Structure.new(
        :client_certificate_id)

        # @!attribute [rw] client_certificate_id
        #   The identifier of the ClientCertificate resource to be described.
        #   @return [String]

      end

      # A request to get information about a collection of ClientCertificate
      # resources.
      # @note When making an API call, pass GetClientCertificatesRequest
      #   data as a hash:
      #
      #       {
      #         position: "String",
      #         limit: 1,
      #       }
      class GetClientCertificatesRequest < Aws::Structure.new(
        :position,
        :limit)

        # @!attribute [rw] position
        #   The position of the current ClientCertificate resource in the
        #   collection to get information about.
        #   @return [String]

        # @!attribute [rw] limit
        #   The maximum number of ClientCertificate resources in the collection
        #   to get information about. The default limit is 25. It should be an
        #   integer between 1 - 500.
        #   @return [Integer]

      end

      # Requests Amazon API Gateway to get information about a Deployment
      # resource.
      # @note When making an API call, pass GetDeploymentRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         deployment_id: "String", # required
      #       }
      class GetDeploymentRequest < Aws::Structure.new(
        :rest_api_id,
        :deployment_id)

        # @!attribute [rw] rest_api_id
        #   The identifier of the RestApi resource for the Deployment resource
        #   to get information about.
        #   @return [String]

        # @!attribute [rw] deployment_id
        #   The identifier of the Deployment resource to get information about.
        #   @return [String]

      end

      # Requests Amazon API Gateway to get information about a Deployments
      # collection.
      # @note When making an API call, pass GetDeploymentsRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         position: "String",
      #         limit: 1,
      #       }
      class GetDeploymentsRequest < Aws::Structure.new(
        :rest_api_id,
        :position,
        :limit)

        # @!attribute [rw] rest_api_id
        #   The identifier of the RestApi resource for the collection of
        #   Deployment resources to get information about.
        #   @return [String]

        # @!attribute [rw] position
        #   The position of the current Deployment resource in the collection to
        #   get information about.
        #   @return [String]

        # @!attribute [rw] limit
        #   The maximum number of Deployment resources in the collection to get
        #   information about. The default limit is 25. It should be an integer
        #   between 1 - 500.
        #   @return [Integer]

      end

      # Request to get the name of a DomainName resource.
      # @note When making an API call, pass GetDomainNameRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "String", # required
      #       }
      class GetDomainNameRequest < Aws::Structure.new(
        :domain_name)

        # @!attribute [rw] domain_name
        #   The name of the DomainName resource.
        #   @return [String]

      end

      # Request to describe a collection of DomainName resources.
      # @note When making an API call, pass GetDomainNamesRequest
      #   data as a hash:
      #
      #       {
      #         position: "String",
      #         limit: 1,
      #       }
      class GetDomainNamesRequest < Aws::Structure.new(
        :position,
        :limit)

        # @!attribute [rw] position
        #   The position of the current domain names to get information about.
        #   @return [String]

        # @!attribute [rw] limit
        #   The maximum number of DomainName resources in the collection to get
        #   information about. The default limit is 25. It should be an integer
        #   between 1 - 500.
        #   @return [Integer]

      end

      # Request a new export of a RestApi for a particular Stage.
      # @note When making an API call, pass GetExportRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         stage_name: "String", # required
      #         export_type: "String", # required
      #         parameters: {
      #           "String" => "String",
      #         },
      #         accepts: "String",
      #       }
      class GetExportRequest < Aws::Structure.new(
        :rest_api_id,
        :stage_name,
        :export_type,
        :parameters,
        :accepts)

        # @!attribute [rw] rest_api_id
        #   The identifier of the RestApi to be exported.
        #   @return [String]

        # @!attribute [rw] stage_name
        #   The name of the Stage that will be exported.
        #   @return [String]

        # @!attribute [rw] export_type
        #   The type of export. Currently only \'swagger\' is supported.
        #   @return [String]

        # @!attribute [rw] parameters
        #   A key-value map of query string parameters that specify properties
        #   of the export, depending on the requested `exportType`. For
        #   `exportType` `swagger`, any combination of the following parameters
        #   are supported: `integrations` will export the API with
        #   x-amazon-apigateway-integration extensions. `authorizers` will
        #   export the API with x-amazon-apigateway-authorizer extensions.
        #   `postman` will export the API with Postman extensions, allowing for
        #   import to the Postman tool
        #   @return [Hash<String,String>]

        # @!attribute [rw] accepts
        #   The content-type of the export, for example `application/json`.
        #   Currently `application/json` and `application/yaml` are supported
        #   for `exportType` of `swagger`. This should be specified in the
        #   `Accept` header for direct API requests.
        #   @return [String]

      end

      # Represents a get integration request.
      # @note When making an API call, pass GetIntegrationRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         resource_id: "String", # required
      #         http_method: "String", # required
      #       }
      class GetIntegrationRequest < Aws::Structure.new(
        :rest_api_id,
        :resource_id,
        :http_method)

        # @!attribute [rw] rest_api_id
        #   Specifies a get integration request\'s API identifier.
        #   @return [String]

        # @!attribute [rw] resource_id
        #   Specifies a get integration request\'s resource identifier
        #   @return [String]

        # @!attribute [rw] http_method
        #   Specifies a get integration request\'s HTTP method.
        #   @return [String]

      end

      # Represents a get integration response request.
      # @note When making an API call, pass GetIntegrationResponseRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         resource_id: "String", # required
      #         http_method: "String", # required
      #         status_code: "StatusCode", # required
      #       }
      class GetIntegrationResponseRequest < Aws::Structure.new(
        :rest_api_id,
        :resource_id,
        :http_method,
        :status_code)

        # @!attribute [rw] rest_api_id
        #   Specifies a get integration response request\'s API identifier.
        #   @return [String]

        # @!attribute [rw] resource_id
        #   Specifies a get integration response request\'s resource identifier.
        #   @return [String]

        # @!attribute [rw] http_method
        #   Specifies a get integration response request\'s HTTP method.
        #   @return [String]

        # @!attribute [rw] status_code
        #   Specifies a get integration response request\'s status code.
        #   @return [String]

      end

      # Request to describe an existing Method resource.
      # @note When making an API call, pass GetMethodRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         resource_id: "String", # required
      #         http_method: "String", # required
      #       }
      class GetMethodRequest < Aws::Structure.new(
        :rest_api_id,
        :resource_id,
        :http_method)

        # @!attribute [rw] rest_api_id
        #   The RestApi identifier for the Method resource.
        #   @return [String]

        # @!attribute [rw] resource_id
        #   The Resource identifier for the Method resource.
        #   @return [String]

        # @!attribute [rw] http_method
        #   Specifies the method request\'s HTTP method type.
        #   @return [String]

      end

      # Request to describe a MethodResponse resource.
      # @note When making an API call, pass GetMethodResponseRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         resource_id: "String", # required
      #         http_method: "String", # required
      #         status_code: "StatusCode", # required
      #       }
      class GetMethodResponseRequest < Aws::Structure.new(
        :rest_api_id,
        :resource_id,
        :http_method,
        :status_code)

        # @!attribute [rw] rest_api_id
        #   The RestApi identifier for the MethodResponse resource.
        #   @return [String]

        # @!attribute [rw] resource_id
        #   The Resource identifier for the MethodResponse resource.
        #   @return [String]

        # @!attribute [rw] http_method
        #   The HTTP verb of the Method resource.
        #   @return [String]

        # @!attribute [rw] status_code
        #   The status code for the MethodResponse resource.
        #   @return [String]

      end

      # Request to list information about a model in an existing RestApi
      # resource.
      # @note When making an API call, pass GetModelRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         model_name: "String", # required
      #         flatten: false,
      #       }
      class GetModelRequest < Aws::Structure.new(
        :rest_api_id,
        :model_name,
        :flatten)

        # @!attribute [rw] rest_api_id
        #   The RestApi identifier under which the Model exists.
        #   @return [String]

        # @!attribute [rw] model_name
        #   The name of the model as an identifier.
        #   @return [String]

        # @!attribute [rw] flatten
        #   A query parameter of a Boolean value to resolve (`true`) all
        #   external model references and returns a flattened model schema or
        #   not (`false`) The default is `false`.
        #   @return [Boolean]

      end

      # Request to generate a sample mapping template used to transform the
      # payload.
      # @note When making an API call, pass GetModelTemplateRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         model_name: "String", # required
      #       }
      class GetModelTemplateRequest < Aws::Structure.new(
        :rest_api_id,
        :model_name)

        # @!attribute [rw] rest_api_id
        #   The ID of the RestApi under which the model exists.
        #   @return [String]

        # @!attribute [rw] model_name
        #   The name of the model for which to generate a template.
        #   @return [String]

      end

      # Request to list existing Models defined for a RestApi resource.
      # @note When making an API call, pass GetModelsRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         position: "String",
      #         limit: 1,
      #       }
      class GetModelsRequest < Aws::Structure.new(
        :rest_api_id,
        :position,
        :limit)

        # @!attribute [rw] rest_api_id
        #   The RestApi identifier.
        #   @return [String]

        # @!attribute [rw] position
        #   The position of the next set of results in the Models resource to
        #   get information about.
        #   @return [String]

        # @!attribute [rw] limit
        #   The maximum number of models in the collection to get information
        #   about. The default limit is 25. It should be an integer between 1 -
        #   500.
        #   @return [Integer]

      end

      # Request to list information about a resource.
      # @note When making an API call, pass GetResourceRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         resource_id: "String", # required
      #       }
      class GetResourceRequest < Aws::Structure.new(
        :rest_api_id,
        :resource_id)

        # @!attribute [rw] rest_api_id
        #   The RestApi identifier for the resource.
        #   @return [String]

        # @!attribute [rw] resource_id
        #   The identifier for the Resource resource.
        #   @return [String]

      end

      # Request to list information about a collection of resources.
      # @note When making an API call, pass GetResourcesRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         position: "String",
      #         limit: 1,
      #       }
      class GetResourcesRequest < Aws::Structure.new(
        :rest_api_id,
        :position,
        :limit)

        # @!attribute [rw] rest_api_id
        #   The RestApi identifier for the Resource.
        #   @return [String]

        # @!attribute [rw] position
        #   The position of the next set of results in the current Resources
        #   resource to get information about.
        #   @return [String]

        # @!attribute [rw] limit
        #   The maximum number of Resource resources in the collection to get
        #   information about. The default limit is 25. It should be an integer
        #   between 1 - 500.
        #   @return [Integer]

      end

      # The GET request to list an existing RestApi defined for your
      # collection.
      # @note When making an API call, pass GetRestApiRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #       }
      class GetRestApiRequest < Aws::Structure.new(
        :rest_api_id)

        # @!attribute [rw] rest_api_id
        #   The identifier of the RestApi resource.
        #   @return [String]

      end

      # The GET request to list existing RestApis defined for your collection.
      # @note When making an API call, pass GetRestApisRequest
      #   data as a hash:
      #
      #       {
      #         position: "String",
      #         limit: 1,
      #       }
      class GetRestApisRequest < Aws::Structure.new(
        :position,
        :limit)

        # @!attribute [rw] position
        #   The position of the current RestApis resource in the collection to
        #   get information about.
        #   @return [String]

        # @!attribute [rw] limit
        #   The maximum number of RestApi resources in the collection to get
        #   information about. The default limit is 25. It should be an integer
        #   between 1 - 500.
        #   @return [Integer]

      end

      # Request a new generated client SDK for a RestApi and Stage.
      # @note When making an API call, pass GetSdkRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         stage_name: "String", # required
      #         sdk_type: "String", # required
      #         parameters: {
      #           "String" => "String",
      #         },
      #       }
      class GetSdkRequest < Aws::Structure.new(
        :rest_api_id,
        :stage_name,
        :sdk_type,
        :parameters)

        # @!attribute [rw] rest_api_id
        #   The identifier of the RestApi that the SDK will use.
        #   @return [String]

        # @!attribute [rw] stage_name
        #   The name of the Stage that the SDK will use.
        #   @return [String]

        # @!attribute [rw] sdk_type
        #   The language for the generated SDK. Currently `javascript`,
        #   `android`, and `objectivec` (for iOS) are supported.
        #   @return [String]

        # @!attribute [rw] parameters
        #   A key-value map of query string parameters that specify properties
        #   of the SDK, depending on the requested `sdkType`. For `sdkType` of
        #   `objectivec`, a parameter named `classPrefix` is required. For
        #   `sdkType` of `android`, parameters named `groupId`, `artifactId`,
        #   `artifactVersion`, and `invokerPackage` are required.
        #   @return [Hash<String,String>]

      end

      # Requests Amazon API Gateway to get information about a Stage resource.
      # @note When making an API call, pass GetStageRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         stage_name: "String", # required
      #       }
      class GetStageRequest < Aws::Structure.new(
        :rest_api_id,
        :stage_name)

        # @!attribute [rw] rest_api_id
        #   The identifier of the RestApi resource for the Stage resource to get
        #   information about.
        #   @return [String]

        # @!attribute [rw] stage_name
        #   The name of the Stage resource to get information about.
        #   @return [String]

      end

      # Requests Amazon API Gateway to get information about one or more Stage
      # resources.
      # @note When making an API call, pass GetStagesRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         deployment_id: "String",
      #       }
      class GetStagesRequest < Aws::Structure.new(
        :rest_api_id,
        :deployment_id)

        # @!attribute [rw] rest_api_id
        #   The stages\' API identifiers.
        #   @return [String]

        # @!attribute [rw] deployment_id
        #   The stages\' deployment identifiers.
        #   @return [String]

      end

      # The GET request to get a usage plan key of a given key identifier.
      # @note When making an API call, pass GetUsagePlanKeyRequest
      #   data as a hash:
      #
      #       {
      #         usage_plan_id: "String", # required
      #         key_id: "String", # required
      #       }
      class GetUsagePlanKeyRequest < Aws::Structure.new(
        :usage_plan_id,
        :key_id)

        # @!attribute [rw] usage_plan_id
        #   The Id of the UsagePlan resource representing the usage plan
        #   containing the to-be-retrieved UsagePlanKey resource representing a
        #   plan customer.
        #   @return [String]

        # @!attribute [rw] key_id
        #   The key Id of the to-be-retrieved UsagePlanKey resource representing
        #   a plan customer.
        #   @return [String]

      end

      # The GET request to get all the usage plan keys representing the API
      # keys added to a specified usage plan.
      # @note When making an API call, pass GetUsagePlanKeysRequest
      #   data as a hash:
      #
      #       {
      #         usage_plan_id: "String", # required
      #         position: "String",
      #         limit: 1,
      #         name_query: "String",
      #       }
      class GetUsagePlanKeysRequest < Aws::Structure.new(
        :usage_plan_id,
        :position,
        :limit,
        :name_query)

        # @!attribute [rw] usage_plan_id
        #   The Id of the UsagePlan resource representing the usage plan
        #   containing the to-be-retrieved UsagePlanKey resource representing a
        #   plan customer.
        #   @return [String]

        # @!attribute [rw] position
        #   A query parameter specifying the zero-based index specifying the
        #   position of a usage plan key.
        #   @return [String]

        # @!attribute [rw] limit
        #   A query parameter specifying the maximum number usage plan keys
        #   returned by the GET request.
        #   @return [Integer]

        # @!attribute [rw] name_query
        #   A query parameter specifying the name of the to-be-returned usage
        #   plan keys.
        #   @return [String]

      end

      # The GET request to get a usage plan of a given plan identifier.
      # @note When making an API call, pass GetUsagePlanRequest
      #   data as a hash:
      #
      #       {
      #         usage_plan_id: "String", # required
      #       }
      class GetUsagePlanRequest < Aws::Structure.new(
        :usage_plan_id)

        # @!attribute [rw] usage_plan_id
        #   The identifier of the UsagePlan resource to be retrieved.
        #   @return [String]

      end

      # The GET request to get all the usage plans of the caller\'s account.
      # @note When making an API call, pass GetUsagePlansRequest
      #   data as a hash:
      #
      #       {
      #         position: "String",
      #         key_id: "String",
      #         limit: 1,
      #       }
      class GetUsagePlansRequest < Aws::Structure.new(
        :position,
        :key_id,
        :limit)

        # @!attribute [rw] position
        #   The zero-based array index specifying the position of the
        #   to-be-retrieved UsagePlan resource.
        #   @return [String]

        # @!attribute [rw] key_id
        #   The identifier of the API key associated with the usage plans.
        #   @return [String]

        # @!attribute [rw] limit
        #   The number of UsagePlan resources to be returned as the result.
        #   @return [Integer]

      end

      # The GET request to get the usage data of a usage plan in a specified
      # time interval.
      # @note When making an API call, pass GetUsageRequest
      #   data as a hash:
      #
      #       {
      #         usage_plan_id: "String", # required
      #         key_id: "String",
      #         start_date: "String", # required
      #         end_date: "String", # required
      #         position: "String",
      #         limit: 1,
      #       }
      class GetUsageRequest < Aws::Structure.new(
        :usage_plan_id,
        :key_id,
        :start_date,
        :end_date,
        :position,
        :limit)

        # @!attribute [rw] usage_plan_id
        #   The Id of the usage plan associated with the usage data.
        #   @return [String]

        # @!attribute [rw] key_id
        #   The Id of the API key associated with the resultant usage data.
        #   @return [String]

        # @!attribute [rw] start_date
        #   The starting date (e.g., 2016-01-01) of the usage data.
        #   @return [String]

        # @!attribute [rw] end_date
        #   The ending date (e.g., 2016-12-31) of the usage data.
        #   @return [String]

        # @!attribute [rw] position
        #   Position
        #   @return [String]

        # @!attribute [rw] limit
        #   The maximum number of results to be returned.
        #   @return [Integer]

      end

      # The POST request to import API keys from an external source, such as a
      # CSV-formatted file.
      # @note When making an API call, pass ImportApiKeysRequest
      #   data as a hash:
      #
      #       {
      #         body: "data", # required
      #         format: "csv", # required, accepts csv
      #         fail_on_warnings: false,
      #       }
      class ImportApiKeysRequest < Aws::Structure.new(
        :body,
        :format,
        :fail_on_warnings)

        # @!attribute [rw] body
        #   The payload of the POST request to import API keys. For the payload
        #   format, see [API Key File Format][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/api-key-file-format.html
        #   @return [String]

        # @!attribute [rw] format
        #   A query parameter to specify the input format to imported API keys.
        #   Currently, only the `csv` format is supported.
        #   @return [String]

        # @!attribute [rw] fail_on_warnings
        #   A query parameter to indicate whether to rollback ApiKey importation
        #   (`true`) or not (`false`) when error is encountered.
        #   @return [Boolean]

      end

      # A POST request to import an API to Amazon API Gateway using an input
      # of an API definition file.
      # @note When making an API call, pass ImportRestApiRequest
      #   data as a hash:
      #
      #       {
      #         fail_on_warnings: false,
      #         parameters: {
      #           "String" => "String",
      #         },
      #         body: "data", # required
      #       }
      class ImportRestApiRequest < Aws::Structure.new(
        :fail_on_warnings,
        :parameters,
        :body)

        # @!attribute [rw] fail_on_warnings
        #   A query parameter to indicate whether to rollback the API creation
        #   (`true`) or not (`false`) when a warning is encountered. The default
        #   value is `false`.
        #   @return [Boolean]

        # @!attribute [rw] parameters
        #   Custom header parameters as part of the request.
        #   @return [Hash<String,String>]

        # @!attribute [rw] body
        #   The POST request body containing external API definitions.
        #   Currently, only Swagger definition JSON files are supported.
        #   @return [String]

      end

      # Represents an HTTP, AWS, or Mock integration.
      #
      # <div class="remarks">
      # In the API Gateway console, the built-in Lambda integration is an AWS
      # integration.
      # </div>
      #
      # <div class="seeAlso">
      # [Creating an API][1]
      # </div>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html
      class Integration < Aws::Structure.new(
        :type,
        :http_method,
        :uri,
        :credentials,
        :request_parameters,
        :request_templates,
        :passthrough_behavior,
        :cache_namespace,
        :cache_key_parameters,
        :integration_responses)

        # @!attribute [rw] type
        #   Specifies the integration\'s type. The valid value is `HTTP`, `AWS`,
        #   or `MOCK`.
        #   @return [String]

        # @!attribute [rw] http_method
        #   Specifies the integration\'s HTTP method type.
        #   @return [String]

        # @!attribute [rw] uri
        #   Specifies the integration\'s Uniform Resource Identifier (URI). For
        #   HTTP integrations, the URI must be a fully formed, encoded HTTP(S)
        #   URL according to the [RFC-3986 specification][1]. For AWS
        #   integrations, the URI should be of the form
        #   `arn:aws:apigateway:\{region\}:\{subdomain.service|service\}:\{path|action\}/\{service_api\}`.
        #   `Region`, `subdomain` and `service` are used to determine the right
        #   endpoint. For AWS services that use the `Action=` query string
        #   parameter, `service_api` should be a valid action for the desired
        #   service. For RESTful AWS service APIs, `path` is used to indicate
        #   that the remaining substring in the URI should be treated as the
        #   path to the resource, including the initial `/`.
        #
        #
        #
        #   [1]: https://www.ietf.org/rfc/rfc3986.txt
        #   @return [String]

        # @!attribute [rw] credentials
        #   Specifies the credentials required for the integration, if any. For
        #   AWS integrations, three options are available. To specify an IAM
        #   Role for Amazon API Gateway to assume, use the role\'s Amazon
        #   Resource Name (ARN). To require that the caller\'s identity be
        #   passed through from the request, specify the string
        #   `arn:aws:iam::\*:user/\*`. To use resource-based permissions on
        #   supported AWS services, specify null.
        #   @return [String]

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

        # @!attribute [rw] request_templates
        #   Represents a map of Velocity templates that are applied on the
        #   request payload based on the value of the Content-Type header sent
        #   by the client. The content type value is the key in this map, and
        #   the template (as a String) is the value.
        #   @return [Hash<String,String>]

        # @!attribute [rw] passthrough_behavior
        #   <div markdown="1">
        #   Specifies how the method request body of an unmapped content type
        #   will be passed through the integration request to the back end
        #   without transformation. A content type is unmapped if no mapping
        #   template is defined in the integration or the content type does not
        #   match any of the mapped content types, as specified in
        #   `requestTemplates`. There are three valid values: `WHEN_NO_MATCH`,
        #   `WHEN_NO_TEMPLATES`, and `NEVER`.
        #
        #   * `WHEN_NO_MATCH` passes the method request body through the
        #     integration request to the back end without transformation when
        #     the method request content type does not match any content type
        #     associated with the mapping templates defined in the integration
        #     request.
        #   * `WHEN_NO_TEMPLATES` passes the method request body through the
        #     integration request to the back end without transformation when no
        #     mapping template is defined in the integration request. If a
        #     template is defined when this option is selected, the method
        #     request of an unmapped content-type will be rejected with an HTTP
        #     `415 Unsupported Media Type` response.
        #   * `NEVER` rejects the method request with an HTTP `415 Unsupported
        #     Media Type` response when either the method request content type
        #     does not match any content type associated with the mapping
        #     templates defined in the integration request or no mapping
        #     template is defined in the integration request.
        #
        #   </div>
        #   @return [String]

        # @!attribute [rw] cache_namespace
        #   Specifies the integration\'s cache namespace.
        #   @return [String]

        # @!attribute [rw] cache_key_parameters
        #   Specifies the integration\'s cache key parameters.
        #   @return [Array<String>]

        # @!attribute [rw] integration_responses
        #   Specifies the integration\'s responses.
        #
        #   <div class="remarks" markdown="1">
        #
        #
        #   #### Example: Get integration responses of a method
        #
        #   ##### Request
        #
        #
        #
        #       GET /restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200 HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com X-Amz-Date: 20160607T191449Z Authorization: AWS4-HMAC-SHA256 Credential=\{access_key_ID\}/20160607/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature=\{sig4_hash\}
        #
        #   ##### Response
        #
        #   The successful response returns `200 OK` status and a payload as
        #   follows:
        #
        #       \{ "_links": \{ "curies": \{ "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-response-\{rel\}.html", "name": "integrationresponse", "templated": true \}, "self": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200", "title": "200" \}, "integrationresponse:delete": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200" \}, "integrationresponse:update": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200" \} \}, "responseParameters": \{ "method.response.header.Content-Type": "'application/xml'" \}, "responseTemplates": \{ "application/json": "$util.urlDecode(\"%3CkinesisStreams%3E#foreach($stream in $input.path('$.StreamNames'))%3Cstream%3E%3Cname%3E$stream%3C/name%3E%3C/stream%3E#end%3C/kinesisStreams%3E\")\n" \}, "statusCode": "200" \}
        #
        #
        #
        #   </div>
        #
        #   <div class="seeAlso">
        #   [Creating an API][1]
        #   </div>
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html
        #   @return [Hash<String,Types::IntegrationResponse>]

      end

      # Represents an integration response. The status code must map to an
      # existing MethodResponse, and parameters and templates can be used to
      # transform the back-end response.
      #
      # <div class="seeAlso">
      # [Creating an API][1]
      # </div>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html
      class IntegrationResponse < Aws::Structure.new(
        :status_code,
        :selection_pattern,
        :response_parameters,
        :response_templates)

        # @!attribute [rw] status_code
        #   Specifies the status code that is used to map the integration
        #   response to an existing MethodResponse.
        #   @return [String]

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

        # @!attribute [rw] response_templates
        #   Specifies the templates used to transform the integration response
        #   body. Response templates are represented as a key/value map, with a
        #   content-type as the key and a template as the value.
        #   @return [Hash<String,String>]

      end

      # Represents a client-facing interface by which the client calls the API
      # to access back-end resources. A **Method** resource is integrated with
      # an Integration resource. Both consist of a request and one or more
      # responses. The method request takes the client input that is passed to
      # the back end through the integration request. A method response
      # returns the output from the back end to the client through an
      # integration response. A method request is embodied in a **Method**
      # resource, whereas an integration request is embodied in an Integration
      # resource. On the other hand, a method response is represented by a
      # MethodResponse resource, whereas an integration response is
      # represented by an IntegrationResponse resource.
      #
      # <div class="remarks" markdown="1">
      #
      #
      # #### Example: Retrive the GET method on a specified resource
      #
      # ##### Request
      #
      # The following example request retrieves the information about the GET
      # method on an API resource (`3kzxbg5sa2`) of an API (`fugvjdxtri`).
      #
      #     GET /restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com X-Amz-Date: 20160603T210259Z Authorization: AWS4-HMAC-SHA256 Credential=\{access_key_ID\}/20160603/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature=\{sig4_hash\}
      #
      # ##### Response
      #
      # The successful response returns a `200 OK` status code and a payload
      # similar to the following:
      #
      #     \{ "_links": \{ "curies": [ \{ "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-\{rel\}.html", "name": "integration", "templated": true \}, \{ "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-response-\{rel\}.html", "name": "integrationresponse", "templated": true \}, \{ "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-\{rel\}.html", "name": "method", "templated": true \}, \{ "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-response-\{rel\}.html", "name": "methodresponse", "templated": true \} ], "self": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET", "name": "GET", "title": "GET" \}, "integration:put": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" \}, "method:delete": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET" \}, "method:integration": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" \}, "method:responses": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200", "name": "200", "title": "200" \}, "method:update": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET" \}, "methodresponse:put": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/\{status_code\}", "templated": true \} \}, "apiKeyRequired": true, "authorizationType": "NONE", "httpMethod": "GET", "_embedded": \{ "method:integration": \{ "_links": \{ "self": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" \}, "integration:delete": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" \}, "integration:responses": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200", "name": "200", "title": "200" \}, "integration:update": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" \}, "integrationresponse:put": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/\{status_code\}", "templated": true \} \}, "cacheKeyParameters": [], "cacheNamespace": "3kzxbg5sa2", "credentials": "arn:aws:iam::123456789012:role/apigAwsProxyRole", "httpMethod": "POST", "passthroughBehavior": "WHEN_NO_MATCH", "requestParameters": \{ "integration.request.header.Content-Type": "'application/x-amz-json-1.1'" \}, "requestTemplates": \{ "application/json": "\{\n\}" \}, "type": "AWS", "uri": "arn:aws:apigateway:us-east-1:kinesis:action/ListStreams", "_embedded": \{ "integration:responses": \{ "_links": \{ "self": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200", "name": "200", "title": "200" \}, "integrationresponse:delete": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200" \}, "integrationresponse:update": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200" \} \}, "responseParameters": \{ "method.response.header.Content-Type": "'application/xml'" \}, "responseTemplates": \{ "application/json": "$util.urlDecode(\"%3CkinesisStreams%3E%23foreach(%24stream%20in%20%24input.path(%27%24.StreamNames%27))%3Cstream%3E%3Cname%3E%24stream%3C%2Fname%3E%3C%2Fstream%3E%23end%3C%2FkinesisStreams%3E\")" \}, "statusCode": "200" \} \} \}, "method:responses": \{ "_links": \{ "self": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200", "name": "200", "title": "200" \}, "methodresponse:delete": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200" \}, "methodresponse:update": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200" \} \}, "responseModels": \{ "application/json": "Empty" \}, "responseParameters": \{ "method.response.header.Content-Type": false \}, "statusCode": "200" \} \} \}
      #
      # In the example above, the response template for the `200 OK` response
      # maps the JSON output from the `ListStreams` action in the back end to
      # an XML output. The mapping template is URL-encoded as
      # `%3CkinesisStreams%3E%23foreach(%24stream%20in%20%24input.path(%27%24.StreamNames%27))%3Cstream%3E%3Cname%3E%24stream%3C%2Fname%3E%3C%2Fstream%3E%23end%3C%2FkinesisStreams%3E`
      # and the output is decoded using the [$util.urlDecode()][1] helper
      # function.
      #
      # </div>
      #
      # <div class="seeAlso">
      # MethodResponse, Integration, IntegrationResponse, Resource, [Set up an
      # API's method][2]
      # </div>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-mapping-template-reference.html#util-templat-reference
      # [2]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-method-settings.html
      class Method < Aws::Structure.new(
        :http_method,
        :authorization_type,
        :authorizer_id,
        :api_key_required,
        :request_parameters,
        :request_models,
        :method_responses,
        :method_integration)

        # @!attribute [rw] http_method
        #   The method\'s HTTP verb.
        #   @return [String]

        # @!attribute [rw] authorization_type
        #   The method\'s authorization type.
        #   @return [String]

        # @!attribute [rw] authorizer_id
        #   The identifier of an Authorizer to use on this method. The
        #   `authorizationType` must be `CUSTOM`.
        #   @return [String]

        # @!attribute [rw] api_key_required
        #   A boolean flag specifying whether a valid ApiKey is required to
        #   invoke this method.
        #   @return [Boolean]

        # @!attribute [rw] request_parameters
        #   A key-value map defining required or optional method request
        #   parameters that can be accepted by Amazon API Gateway. A key is a
        #   method request parameter name matching the pattern of
        #   `method.request.\{location\}.\{name\}`, where `location` is
        #   `querystring`, `path`, or `header` and `name` is a valid and unique
        #   parameter name. The value associated with the key is a Boolean flag
        #   indicating whether the parameter is required (`true`) or optional
        #   (`false`). The method request parameter names defined here are
        #   available in Integration to be mapped to integration request
        #   parameters or templates.
        #   @return [Hash<String,Boolean>]

        # @!attribute [rw] request_models
        #   A key-value map specifying data schemas, represented by Model
        #   resources, (as the mapped value) of the request payloads of given
        #   content types (as the mapping key).
        #   @return [Hash<String,String>]

        # @!attribute [rw] method_responses
        #   Gets a method response associated with a given HTTP status code.
        #
        #   <div class="remarks" markdown="1">
        #   The collection of method responses are encapsulated in a key-value
        #   map, where the key is a response\'s HTTP status code and the value
        #   is a MethodResponse resource that specifies the response returned to
        #   the caller from the back end through the integration response.
        #
        #   #### Example: Get a 200 OK response of a GET method
        #
        #   ##### Request
        #
        #
        #
        #       GET /restapis/uojnr9hd57/resources/0cjtch/methods/GET/responses/200 HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com Content-Length: 117 X-Amz-Date: 20160613T215008Z Authorization: AWS4-HMAC-SHA256 Credential=\{access_key_ID\}/20160613/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature=\{sig4_hash\}
        #
        #   ##### Response
        #
        #   The successful response returns a `200 OK` status code and a payload
        #   similar to the following:
        #
        #       \{ "_links": \{ "curies": \{ "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-response-\{rel\}.html", "name": "methodresponse", "templated": true \}, "self": \{ "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/responses/200", "title": "200" \}, "methodresponse:delete": \{ "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/responses/200" \}, "methodresponse:update": \{ "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/responses/200" \} \}, "responseModels": \{ "application/json": "Empty" \}, "responseParameters": \{ "method.response.header.operator": false, "method.response.header.operand_2": false, "method.response.header.operand_1": false \}, "statusCode": "200" \}
        #
        #
        #
        #   </div>
        #
        #   <div class="seeAlso">
        #   [AWS CLI][1]
        #   </div>
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/cli/latest/reference/apigateway/get-method-response.html
        #   @return [Hash<String,Types::MethodResponse>]

        # @!attribute [rw] method_integration
        #   Gets the method\'s integration responsible for passing the
        #   client-submitted request to the back end and performing necessary
        #   transformations to make the request compliant with the back end.
        #
        #   <div class="remarks" markdown="1">
        #
        #
        #   #### Example:
        #
        #   ##### Request
        #
        #
        #
        #       GET /restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com Content-Length: 117 X-Amz-Date: 20160613T213210Z Authorization: AWS4-HMAC-SHA256 Credential=\{access_key_ID\}/20160613/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature=\{sig4_hash\}
        #
        #   ##### Response
        #
        #   The successful response returns a `200 OK` status code and a payload
        #   similar to the following:
        #
        #       \{ "_links": \{ "curies": [ \{ "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-\{rel\}.html", "name": "integration", "templated": true \}, \{ "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-response-\{rel\}.html", "name": "integrationresponse", "templated": true \} ], "self": \{ "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration" \}, "integration:delete": \{ "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration" \}, "integration:responses": \{ "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration/responses/200", "name": "200", "title": "200" \}, "integration:update": \{ "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration" \}, "integrationresponse:put": \{ "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration/responses/\{status_code\}", "templated": true \} \}, "cacheKeyParameters": [], "cacheNamespace": "0cjtch", "credentials": "arn:aws:iam::123456789012:role/apigAwsProxyRole", "httpMethod": "POST", "passthroughBehavior": "WHEN_NO_MATCH", "requestTemplates": \{ "application/json": "\{\n \"a\": \"$input.params('operand1')\",\n \"b\": \"$input.params('operand2')\", \n \"op\": \"$input.params('operator')\" \n\}" \}, "type": "AWS", "uri": "arn:aws:apigateway:us-west-2:lambda:path//2015-03-31/functions/arn:aws:lambda:us-west-2:123456789012:function:Calc/invocations", "_embedded": \{ "integration:responses": \{ "_links": \{ "self": \{ "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration/responses/200", "name": "200", "title": "200" \}, "integrationresponse:delete": \{ "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration/responses/200" \}, "integrationresponse:update": \{ "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration/responses/200" \} \}, "responseParameters": \{ "method.response.header.operator": "integration.response.body.op", "method.response.header.operand_2": "integration.response.body.b", "method.response.header.operand_1": "integration.response.body.a" \}, "responseTemplates": \{ "application/json": "#set($res = $input.path('$'))\n\{\n \"result\": \"$res.a, $res.b, $res.op => $res.c\",\n \"a\" : \"$res.a\",\n \"b\" : \"$res.b\",\n \"op\" : \"$res.op\",\n \"c\" : \"$res.c\"\n\}" \}, "selectionPattern": "", "statusCode": "200" \} \} \}
        #
        #
        #
        #   </div>
        #
        #   <div class="seeAlso">
        #   [AWS CLI][1]
        #   </div>
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/cli/latest/reference/apigateway/get-integration.html
        #   @return [Types::Integration]

      end

      # Represents a method response of a given HTTP status code returned to
      # the client. The method response is passed from the back end through
      # the associated integration response that can be transformed using a
      # mapping template.
      #
      # <div class="remarks" markdown="1">
      #
      #
      # #### Example: A **MethodResponse** instance of an API
      #
      # ##### Request
      #
      # The example request retrieves a **MethodResponse** of the 200 status
      # code.
      #
      #     GET /restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200 HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com X-Amz-Date: 20160603T222952Z Authorization: AWS4-HMAC-SHA256 Credential=\{access_key_ID\}/20160603/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature=\{sig4_hash\}
      #
      # ##### Response
      #
      # The successful response returns `200 OK` status and a payload as
      # follows:
      #
      #     \{ "_links": \{ "curies": \{ "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-response-\{rel\}.html", "name": "methodresponse", "templated": true \}, "self": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200", "title": "200" \}, "methodresponse:delete": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200" \}, "methodresponse:update": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200" \} \}, "responseModels": \{ "application/json": "Empty" \}, "responseParameters": \{ "method.response.header.Content-Type": false \}, "statusCode": "200" \}
      #
      #
      #
      # </div>
      #
      # <div class="seeAlso">
      # Method, IntegrationResponse, Integration [Creating an API][1]
      # </div>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html
      class MethodResponse < Aws::Structure.new(
        :status_code,
        :response_parameters,
        :response_models)

        # @!attribute [rw] status_code
        #   The method response\'s status code.
        #   @return [String]

        # @!attribute [rw] response_parameters
        #   A key-value map specifying required or optional response parameters
        #   that Amazon API Gateway can send back to the caller. A key defines a
        #   method response header and the value specifies whether the
        #   associated method response header is required or not. The expression
        #   of the key must match the pattern `method.response.header.\{name\}`,
        #   where `name` is a valid and unique header name. Amazon API Gateway
        #   passes certain integration response data to the method response
        #   headers specified here according to the mapping you prescribe in the
        #   API\'s IntegrationResponse. The integration response data that can
        #   be mapped include an integration response header expressed in
        #   `integration.response.header.\{name\}`, a static value enclosed
        #   within a pair of single quotes (e.g., `'application/json'`), or a
        #   JSON expression from the back-end response payload in the form of
        #   `integration.response.body.\{JSON-expression\}`, where
        #   `JSON-expression` is a valid JSON expression without the `$`
        #   prefix.)
        #   @return [Hash<String,Boolean>]

        # @!attribute [rw] response_models
        #   Specifies the Model resources used for the response\'s content-type.
        #   Response models are represented as a key/value map, with a
        #   content-type as the key and a Model name as the value.
        #   @return [Hash<String,String>]

      end

      # Specifies the method setting properties.
      class MethodSetting < Aws::Structure.new(
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

        # @!attribute [rw] metrics_enabled
        #   Specifies whether Amazon CloudWatch metrics are enabled for this
        #   method. The PATCH path for this setting is
        #   `/\{method_setting_key\}/metrics/enabled`, and the value is a
        #   Boolean.
        #   @return [Boolean]

        # @!attribute [rw] logging_level
        #   Specifies the logging level for this method, which effects the log
        #   entries pushed to Amazon CloudWatch Logs. The PATCH path for this
        #   setting is `/\{method_setting_key\}/logging/loglevel`, and the
        #   available levels are `OFF`, `ERROR`, and `INFO`.
        #   @return [String]

        # @!attribute [rw] data_trace_enabled
        #   Specifies whether data trace logging is enabled for this method,
        #   which effects the log entries pushed to Amazon CloudWatch Logs. The
        #   PATCH path for this setting is
        #   `/\{method_setting_key\}/logging/dataTrace`, and the value is a
        #   Boolean.
        #   @return [Boolean]

        # @!attribute [rw] throttling_burst_limit
        #   Specifies the throttling burst limit. The PATCH path for this
        #   setting is `/\{method_setting_key\}/throttling/burstLimit`, and the
        #   value is an integer.
        #   @return [Integer]

        # @!attribute [rw] throttling_rate_limit
        #   Specifies the throttling rate limit. The PATCH path for this setting
        #   is `/\{method_setting_key\}/throttling/rateLimit`, and the value is
        #   a double.
        #   @return [Float]

        # @!attribute [rw] caching_enabled
        #   Specifies whether responses should be cached and returned for
        #   requests. A cache cluster must be enabled on the stage for responses
        #   to be cached. The PATCH path for this setting is
        #   `/\{method_setting_key\}/caching/enabled`, and the value is a
        #   Boolean.
        #   @return [Boolean]

        # @!attribute [rw] cache_ttl_in_seconds
        #   Specifies the time to live (TTL), in seconds, for cached responses.
        #   The higher the TTL, the longer the response will be cached. The
        #   PATCH path for this setting is
        #   `/\{method_setting_key\}/caching/ttlInSeconds`, and the value is an
        #   integer.
        #   @return [Integer]

        # @!attribute [rw] cache_data_encrypted
        #   Specifies whether the cached responses are encrypted. The PATCH path
        #   for this setting is `/\{method_setting_key\}/caching/dataEncrypted`,
        #   and the value is a Boolean.
        #   @return [Boolean]

        # @!attribute [rw] require_authorization_for_cache_control
        #   Specifies whether authorization is required for a cache invalidation
        #   request. The PATCH path for this setting is
        #   `/\{method_setting_key\}/caching/requireAuthorizationForCacheControl`,
        #   and the value is a Boolean.
        #   @return [Boolean]

        # @!attribute [rw] unauthorized_cache_control_header_strategy
        #   Specifies how to handle unauthorized requests for cache
        #   invalidation. The PATCH path for this setting is
        #   `/\{method_setting_key\}/caching/unauthorizedCacheControlHeaderStrategy`,
        #   and the available values are `FAIL_WITH_403`,
        #   `SUCCEED_WITH_RESPONSE_HEADER`, `SUCCEED_WITHOUT_RESPONSE_HEADER`.
        #   @return [String]

      end

      # Represents a summary of a Method resource, given a particular date and
      # time.
      class MethodSnapshot < Aws::Structure.new(
        :authorization_type,
        :api_key_required)

        # @!attribute [rw] authorization_type
        #   Specifies the type of authorization used for the method.
        #   @return [String]

        # @!attribute [rw] api_key_required
        #   Specifies whether the method requires a valid ApiKey.
        #   @return [Boolean]

      end

      # Represents the data structure of a method\'s request or response
      # payload.
      #
      # <div class="remarks" markdown="1">
      # A request model defines the data structure of the client-supplied
      # request payload. A response model defines the data structure of the
      # response payload returned by the back end. Although not required,
      # models are useful for mapping payloads between the front end and back
      # end.
      #
      # A model is used for generating an API\'s SDK, validating the input
      # request body, and creating a skeletal mapping template.
      #
      # </div>
      #
      # <div class="seeAlso">
      # Method, MethodResponse, [Models and Mappings][1]
      # </div>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/models-mappings.html
      class Model < Aws::Structure.new(
        :id,
        :name,
        :description,
        :schema,
        :content_type)

        # @!attribute [rw] id
        #   The identifier for the model resource.
        #   @return [String]

        # @!attribute [rw] name
        #   The name of the model.
        #   @return [String]

        # @!attribute [rw] description
        #   The description of the model.
        #   @return [String]

        # @!attribute [rw] schema
        #   The schema for the model. For `application/json` models, this should
        #   be [JSON-schema draft v4][1] model. Do not include \"\\\*/\"
        #   characters in the description of any properties because such
        #   \"\\\*/\" characters may be interpreted as the closing marker for
        #   comments in some languages, such as Java or JavaScript, causing the
        #   installation of your API\'s SDK generated by API Gateway to fail.
        #
        #
        #
        #   [1]: http://json-schema.org/documentation.html
        #   @return [String]

        # @!attribute [rw] content_type
        #   The content-type for the model.
        #   @return [String]

      end

      # Represents a collection of Model resources.
      #
      # <div class="seeAlso">
      # Method, MethodResponse, [Models and Mappings][1]
      # </div>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/models-mappings.html
      class Models < Aws::Structure.new(
        :position,
        :items)

        # @!attribute [rw] position
        #   @return [String]

        # @!attribute [rw] items
        #   Gets the current Model resource in the collection.
        #   @return [Array<Types::Model>]

      end

      # A single patch operation to apply to the specified resource. Please
      # refer to http://tools.ietf.org/html/rfc6902#section-4 for an
      # explanation of how each operation is used.
      # @note When making an API call, pass PatchOperation
      #   data as a hash:
      #
      #       {
      #         op: "add", # accepts add, remove, replace, move, copy, test
      #         path: "String",
      #         value: "String",
      #         from: "String",
      #       }
      class PatchOperation < Aws::Structure.new(
        :op,
        :path,
        :value,
        :from)

        # @!attribute [rw] op
        #   An update operation to be performed with this PATCH request. The
        #   valid value can be \"add\", \"remove\", or \"replace\". Not all
        #   valid operations are supported for a given resource. Support of the
        #   operations depends on specific operational contexts. Attempts to
        #   apply an unsupported operation on a resource will return an error
        #   message.
        #   @return [String]

        # @!attribute [rw] path
        #   The `op` operation\'s target, as identified by a [JSON Pointer][1]
        #   value that references a location within the targeted resource. For
        #   example, if the target resource has an updateable property of
        #   `\{"name":"value"\}`, the path for this property is `/name`. If the
        #   `name` property value is a JSON object (e.g., `\{"name":
        #   \{"child/name": "child-value"\}\}`), the path for the `child/name`
        #   property will be `/name/child~1name`. Any slash (\"/\") character
        #   appearing in path names must be escaped with \"~1\", as shown in the
        #   example above. Each `op` operation can have only one `path`
        #   associated with it.
        #
        #
        #
        #   [1]: https://tools.ietf.org/html/draft-ietf-appsawg-json-pointer-08
        #   @return [String]

        # @!attribute [rw] value
        #   The new target value of the update operation.
        #   @return [String]

        # @!attribute [rw] from
        #   Not supported.
        #   @return [String]

      end

      # Represents a put integration request.
      # @note When making an API call, pass PutIntegrationRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         resource_id: "String", # required
      #         http_method: "String", # required
      #         type: "HTTP", # required, accepts HTTP, AWS, MOCK
      #         integration_http_method: "String",
      #         uri: "String",
      #         credentials: "String",
      #         request_parameters: {
      #           "String" => "String",
      #         },
      #         request_templates: {
      #           "String" => "String",
      #         },
      #         passthrough_behavior: "String",
      #         cache_namespace: "String",
      #         cache_key_parameters: ["String"],
      #       }
      class PutIntegrationRequest < Aws::Structure.new(
        :rest_api_id,
        :resource_id,
        :http_method,
        :type,
        :integration_http_method,
        :uri,
        :credentials,
        :request_parameters,
        :request_templates,
        :passthrough_behavior,
        :cache_namespace,
        :cache_key_parameters)

        # @!attribute [rw] rest_api_id
        #   Specifies a put integration request\'s API identifier.
        #   @return [String]

        # @!attribute [rw] resource_id
        #   Specifies a put integration request\'s resource ID.
        #   @return [String]

        # @!attribute [rw] http_method
        #   Specifies a put integration request\'s HTTP method.
        #   @return [String]

        # @!attribute [rw] type
        #   Specifies a put integration input\'s type.
        #   @return [String]

        # @!attribute [rw] integration_http_method
        #   Specifies a put integration HTTP method. When the integration type
        #   is HTTP or AWS, this field is required.
        #   @return [String]

        # @!attribute [rw] uri
        #   Specifies a put integration input\'s Uniform Resource Identifier
        #   (URI). When the integration type is HTTP or AWS, this field is
        #   required. For integration with Lambda as an AWS service proxy, this
        #   value is of the
        #   \'arn:aws:apigateway:&lt;region&gt;\:lambda:path/2015-03-31/functions/&lt;functionArn&gt;/invocations\'
        #   format.
        #   @return [String]

        # @!attribute [rw] credentials
        #   Specifies whether credentials are required for a put integration.
        #   @return [String]

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

        # @!attribute [rw] request_templates
        #   Represents a map of Velocity templates that are applied on the
        #   request payload based on the value of the Content-Type header sent
        #   by the client. The content type value is the key in this map, and
        #   the template (as a String) is the value.
        #   @return [Hash<String,String>]

        # @!attribute [rw] passthrough_behavior
        #   Specifies the pass-through behavior for incoming requests based on
        #   the Content-Type header in the request, and the available mapping
        #   templates specified as the `requestTemplates` property on the
        #   Integration resource. There are three valid values: `WHEN_NO_MATCH`,
        #   `WHEN_NO_TEMPLATES`, and `NEVER`.
        #
        #   * `WHEN_NO_MATCH` passes the request body for unmapped content types
        #     through to the integration back end without transformation.
        #
        #   * `NEVER` rejects unmapped content types with an HTTP 415
        #     \'Unsupported Media Type\' response.
        #
        #   * `WHEN_NO_TEMPLATES` allows pass-through when the integration has
        #     NO content types mapped to templates. However if there is at least
        #     one content type defined, unmapped content types will be rejected
        #     with the same 415 response.
        #   @return [String]

        # @!attribute [rw] cache_namespace
        #   Specifies a put integration input\'s cache namespace.
        #   @return [String]

        # @!attribute [rw] cache_key_parameters
        #   Specifies a put integration input\'s cache key parameters.
        #   @return [Array<String>]

      end

      # Represents a put integration response request.
      # @note When making an API call, pass PutIntegrationResponseRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         resource_id: "String", # required
      #         http_method: "String", # required
      #         status_code: "StatusCode", # required
      #         selection_pattern: "String",
      #         response_parameters: {
      #           "String" => "String",
      #         },
      #         response_templates: {
      #           "String" => "String",
      #         },
      #       }
      class PutIntegrationResponseRequest < Aws::Structure.new(
        :rest_api_id,
        :resource_id,
        :http_method,
        :status_code,
        :selection_pattern,
        :response_parameters,
        :response_templates)

        # @!attribute [rw] rest_api_id
        #   Specifies a put integration response request\'s API identifier.
        #   @return [String]

        # @!attribute [rw] resource_id
        #   Specifies a put integration response request\'s resource identifier.
        #   @return [String]

        # @!attribute [rw] http_method
        #   Specifies a put integration response request\'s HTTP method.
        #   @return [String]

        # @!attribute [rw] status_code
        #   Specifies the status code that is used to map the integration
        #   response to an existing MethodResponse.
        #   @return [String]

        # @!attribute [rw] selection_pattern
        #   Specifies the selection pattern of a put integration response.
        #   @return [String]

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

        # @!attribute [rw] response_templates
        #   Specifies a put integration response\'s templates.
        #   @return [Hash<String,String>]

      end

      # Request to add a method to an existing Resource resource.
      # @note When making an API call, pass PutMethodRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         resource_id: "String", # required
      #         http_method: "String", # required
      #         authorization_type: "String", # required
      #         authorizer_id: "String",
      #         api_key_required: false,
      #         request_parameters: {
      #           "String" => false,
      #         },
      #         request_models: {
      #           "String" => "String",
      #         },
      #       }
      class PutMethodRequest < Aws::Structure.new(
        :rest_api_id,
        :resource_id,
        :http_method,
        :authorization_type,
        :authorizer_id,
        :api_key_required,
        :request_parameters,
        :request_models)

        # @!attribute [rw] rest_api_id
        #   The RestApi identifier for the new Method resource.
        #   @return [String]

        # @!attribute [rw] resource_id
        #   The Resource identifier for the new Method resource.
        #   @return [String]

        # @!attribute [rw] http_method
        #   Specifies the method request\'s HTTP method type.
        #   @return [String]

        # @!attribute [rw] authorization_type
        #   Specifies the type of authorization used for the method.
        #   @return [String]

        # @!attribute [rw] authorizer_id
        #   Specifies the identifier of an Authorizer to use on this Method, if
        #   the type is CUSTOM.
        #   @return [String]

        # @!attribute [rw] api_key_required
        #   Specifies whether the method required a valid ApiKey.
        #   @return [Boolean]

        # @!attribute [rw] request_parameters
        #   A key-value map defining required or optional method request
        #   parameters that can be accepted by Amazon API Gateway. A key defines
        #   a method request parameter name matching the pattern of
        #   `method.request.\{location\}.\{name\}`, where `location` is
        #   `querystring`, `path`, or `header` and `name` is a valid and unique
        #   parameter name. The value associated with the key is a Boolean flag
        #   indicating whether the parameter is required (`true`) or optional
        #   (`false`). The method request parameter names defined here are
        #   available in Integration to be mapped to integration request
        #   parameters or body-mapping templates.
        #   @return [Hash<String,Boolean>]

        # @!attribute [rw] request_models
        #   Specifies the Model resources used for the request\'s content type.
        #   Request models are represented as a key/value map, with a content
        #   type as the key and a Model name as the value.
        #   @return [Hash<String,String>]

      end

      # Request to add a MethodResponse to an existing Method resource.
      # @note When making an API call, pass PutMethodResponseRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         resource_id: "String", # required
      #         http_method: "String", # required
      #         status_code: "StatusCode", # required
      #         response_parameters: {
      #           "String" => false,
      #         },
      #         response_models: {
      #           "String" => "String",
      #         },
      #       }
      class PutMethodResponseRequest < Aws::Structure.new(
        :rest_api_id,
        :resource_id,
        :http_method,
        :status_code,
        :response_parameters,
        :response_models)

        # @!attribute [rw] rest_api_id
        #   The RestApi identifier for the Method resource.
        #   @return [String]

        # @!attribute [rw] resource_id
        #   The Resource identifier for the Method resource.
        #   @return [String]

        # @!attribute [rw] http_method
        #   The HTTP verb of the Method resource.
        #   @return [String]

        # @!attribute [rw] status_code
        #   The method response\'s status code.
        #   @return [String]

        # @!attribute [rw] response_parameters
        #   A key-value map specifying required or optional response parameters
        #   that Amazon API Gateway can send back to the caller. A key defines a
        #   method response header name and the associated value is a Boolean
        #   flag indicating whether the method response parameter is required or
        #   not. The method response header names must match the pattern of
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

        # @!attribute [rw] response_models
        #   Specifies the Model resources used for the response\'s content type.
        #   Response models are represented as a key/value map, with a content
        #   type as the key and a Model name as the value.
        #   @return [Hash<String,String>]

      end

      # A PUT request to update an existing API, with external API definitions
      # specified as the request body.
      # @note When making an API call, pass PutRestApiRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         mode: "merge", # accepts merge, overwrite
      #         fail_on_warnings: false,
      #         parameters: {
      #           "String" => "String",
      #         },
      #         body: "data", # required
      #       }
      class PutRestApiRequest < Aws::Structure.new(
        :rest_api_id,
        :mode,
        :fail_on_warnings,
        :parameters,
        :body)

        # @!attribute [rw] rest_api_id
        #   The identifier of the RestApi to be updated.
        #   @return [String]

        # @!attribute [rw] mode
        #   The `mode` query parameter to specify the update mode. Valid values
        #   are \"merge\" and \"overwrite\". By default, the update mode is
        #   \"merge\".
        #   @return [String]

        # @!attribute [rw] fail_on_warnings
        #   A query parameter to indicate whether to rollback the API update
        #   (`true`) or not (`false`) when a warning is encountered. The default
        #   value is `false`.
        #   @return [Boolean]

        # @!attribute [rw] parameters
        #   Custom headers supplied as part of the request.
        #   @return [Hash<String,String>]

        # @!attribute [rw] body
        #   The PUT request body containing external API definitions. Currently,
        #   only Swagger definition JSON files are supported.
        #   @return [String]

      end

      # Quotas configured for a usage plan.
      # @note When making an API call, pass QuotaSettings
      #   data as a hash:
      #
      #       {
      #         limit: 1,
      #         offset: 1,
      #         period: "DAY", # accepts DAY, WEEK, MONTH
      #       }
      class QuotaSettings < Aws::Structure.new(
        :limit,
        :offset,
        :period)

        # @!attribute [rw] limit
        #   The maximum number of requests that can be made in a given time
        #   period.
        #   @return [Integer]

        # @!attribute [rw] offset
        #   The number of requests subtracted from the given limit in the
        #   initial time period.
        #   @return [Integer]

        # @!attribute [rw] period
        #   The time period in which the limit applies. Valid values are
        #   \"DAY\", \"WEEK\" or \"MONTH\".
        #   @return [String]

      end

      # Represents an API resource.
      #
      # <div class="seeAlso">
      # [Create an API][1]
      # </div>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html
      class Resource < Aws::Structure.new(
        :id,
        :parent_id,
        :path_part,
        :path,
        :resource_methods)

        # @!attribute [rw] id
        #   The resource\'s identifier.
        #   @return [String]

        # @!attribute [rw] parent_id
        #   The parent resource\'s identifier.
        #   @return [String]

        # @!attribute [rw] path_part
        #   The last path segment for this resource.
        #   @return [String]

        # @!attribute [rw] path
        #   The full path for this resource.
        #   @return [String]

        # @!attribute [rw] resource_methods
        #   Gets an API resource\'s method of a given HTTP verb.
        #
        #   <div class="remarks" markdown="1">
        #   The resource methods are a map of methods indexed by methods\' HTTP
        #   verbs enabled on the resource. This method map is included in the
        #   `200 OK` response of the `GET
        #   /restapis/\{restapi_id\}/resources/\{resource_id\}` or `GET
        #   /restapis/\{restapi_id\}/resources/\{resource_id\}?embed=methods`
        #   request.
        #
        #   #### Example: Get the GET method of an API resource
        #
        #   ##### Request
        #
        #       GET /restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com X-Amz-Date: 20160608T031827Z Authorization: AWS4-HMAC-SHA256 Credential=\{access_key_ID\}/20160608/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature=\{sig4_hash\}
        #
        #   ##### Response
        #
        #       \{ "_links": \{ "curies": [ \{ "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-\{rel\}.html", "name": "integration", "templated": true \}, \{ "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-response-\{rel\}.html", "name": "integrationresponse", "templated": true \}, \{ "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-\{rel\}.html", "name": "method", "templated": true \}, \{ "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-response-\{rel\}.html", "name": "methodresponse", "templated": true \} ], "self": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET", "name": "GET", "title": "GET" \}, "integration:put": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" \}, "method:delete": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET" \}, "method:integration": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" \}, "method:responses": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200", "name": "200", "title": "200" \}, "method:update": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET" \}, "methodresponse:put": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/\{status_code\}", "templated": true \} \}, "apiKeyRequired": false, "authorizationType": "NONE", "httpMethod": "GET", "_embedded": \{ "method:integration": \{ "_links": \{ "self": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" \}, "integration:delete": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" \}, "integration:responses": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200", "name": "200", "title": "200" \}, "integration:update": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" \}, "integrationresponse:put": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/\{status_code\}", "templated": true \} \}, "cacheKeyParameters": [], "cacheNamespace": "3kzxbg5sa2", "credentials": "arn:aws:iam::123456789012:role/apigAwsProxyRole", "httpMethod": "POST", "passthroughBehavior": "WHEN_NO_MATCH", "requestParameters": \{ "integration.request.header.Content-Type": "'application/x-amz-json-1.1'" \}, "requestTemplates": \{ "application/json": "\{\n\}" \}, "type": "AWS", "uri": "arn:aws:apigateway:us-east-1:kinesis:action/ListStreams", "_embedded": \{ "integration:responses": \{ "_links": \{ "self": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200", "name": "200", "title": "200" \}, "integrationresponse:delete": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200" \}, "integrationresponse:update": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200" \} \}, "responseParameters": \{ "method.response.header.Content-Type": "'application/xml'" \}, "responseTemplates": \{ "application/json": "$util.urlDecode(\"%3CkinesisStreams%3E#foreach($stream in $input.path('$.StreamNames'))%3Cstream%3E%3Cname%3E$stream%3C/name%3E%3C/stream%3E#end%3C/kinesisStreams%3E\")\n" \}, "statusCode": "200" \} \} \}, "method:responses": \{ "_links": \{ "self": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200", "name": "200", "title": "200" \}, "methodresponse:delete": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200" \}, "methodresponse:update": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200" \} \}, "responseModels": \{ "application/json": "Empty" \}, "responseParameters": \{ "method.response.header.Content-Type": false \}, "statusCode": "200" \} \} \}
        #
        #   If the `OPTIONS` is enabled on the resource, you can follow the
        #   example here to get that method. Just replace the `GET` of the last
        #   path segment in the request URL with `OPTIONS`.
        #
        #   </div>
        #
        #   <div class="seeAlso"></div>
        #   @return [Hash<String,Types::Method>]

      end

      # Represents a collection of Resource resources.
      #
      # <div class="seeAlso">
      # [Create an API][1]
      # </div>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html
      class Resources < Aws::Structure.new(
        :position,
        :items)

        # @!attribute [rw] position
        #   @return [String]

        # @!attribute [rw] items
        #   Gets the current Resource resource in the collection.
        #   @return [Array<Types::Resource>]

      end

      # Represents a REST API.
      #
      # <div class="seeAlso">
      # [Create an API][1]
      # </div>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html
      class RestApi < Aws::Structure.new(
        :id,
        :name,
        :description,
        :created_date,
        :warnings)

        # @!attribute [rw] id
        #   The API\'s identifier. This identifier is unique across all of your
        #   APIs in Amazon API Gateway.
        #   @return [String]

        # @!attribute [rw] name
        #   The API\'s name.
        #   @return [String]

        # @!attribute [rw] description
        #   The API\'s description.
        #   @return [String]

        # @!attribute [rw] created_date
        #   The date when the API was created, in [ISO 8601 format][1].
        #
        #
        #
        #   [1]: http://www.iso.org/iso/home/standards/iso8601.htm
        #   @return [Time]

        # @!attribute [rw] warnings
        #   The warning messages reported when `failonwarnings` is turned on
        #   during API import.
        #   @return [Array<String>]

      end

      # Contains references to your APIs and links that guide you in how to
      # interact with your collection. A collection offers a paginated view of
      # your APIs.
      #
      # <div class="seeAlso">
      # [Create an API][1]
      # </div>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html
      class RestApis < Aws::Structure.new(
        :position,
        :items)

        # @!attribute [rw] position
        #   @return [String]

        # @!attribute [rw] items
        #   An array of links to the current page of RestApi resources.
        #   @return [Array<Types::RestApi>]

      end

      # The binary blob response to GetSdk, which contains the generated SDK.
      class SdkResponse < Aws::Structure.new(
        :content_type,
        :content_disposition,
        :body)

        # @!attribute [rw] content_type
        #   The content-type header value in the HTTP response.
        #   @return [String]

        # @!attribute [rw] content_disposition
        #   The content-disposition header value in the HTTP response.
        #   @return [String]

        # @!attribute [rw] body
        #   The binary blob response to GetSdk, which contains the generated
        #   SDK.
        #   @return [String]

      end

      # Represents a unique identifier for a version of a deployed RestApi
      # that is callable by users.
      #
      # <div class="seeAlso">
      # [Deploy an API][1]
      # </div>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-deploy-api.html
      class Stage < Aws::Structure.new(
        :deployment_id,
        :client_certificate_id,
        :stage_name,
        :description,
        :cache_cluster_enabled,
        :cache_cluster_size,
        :cache_cluster_status,
        :method_settings,
        :variables,
        :created_date,
        :last_updated_date)

        # @!attribute [rw] deployment_id
        #   The identifier of the Deployment that the stage points to.
        #   @return [String]

        # @!attribute [rw] client_certificate_id
        #   The identifier of a client certificate for an API stage.
        #   @return [String]

        # @!attribute [rw] stage_name
        #   The name of the stage is the first path segment in the Uniform
        #   Resource Identifier (URI) of a call to Amazon API Gateway.
        #   @return [String]

        # @!attribute [rw] description
        #   The stage\'s description.
        #   @return [String]

        # @!attribute [rw] cache_cluster_enabled
        #   Specifies whether a cache cluster is enabled for the stage.
        #   @return [Boolean]

        # @!attribute [rw] cache_cluster_size
        #   The size of the cache cluster for the stage, if enabled.
        #   @return [String]

        # @!attribute [rw] cache_cluster_status
        #   The status of the cache cluster for the stage, if enabled.
        #   @return [String]

        # @!attribute [rw] method_settings
        #   A map that defines the method settings for a Stage resource. Keys
        #   (designated as `/\{method_setting_key` below) are method paths
        #   defined as `\{resource_path\}/\{http_method\}` for an individual
        #   method override, or `/\*/\*` for overriding all methods in the
        #   stage. Any forward slash (\"/\") characters in the `resource_path`
        #   part must be encoded as \"~1\" as in, for example,
        #   `~1resource~1sub-resource/GET`.
        #   @return [Hash<String,Types::MethodSetting>]

        # @!attribute [rw] variables
        #   A map that defines the stage variables for a Stage resource.
        #   Variable names can have alphanumeric and underscore characters, and
        #   the values must match `[A-Za-z0-9-._~:/?#&=,]+`.
        #   @return [Hash<String,String>]

        # @!attribute [rw] created_date
        #   The date and time that the stage was created, in [ISO 8601
        #   format][1].
        #
        #
        #
        #   [1]: http://www.iso.org/iso/home/standards/iso8601.htm
        #   @return [Time]

        # @!attribute [rw] last_updated_date
        #   The date and time that information about the stage was last updated,
        #   in [ISO 8601 format][1].
        #
        #
        #
        #   [1]: http://www.iso.org/iso/home/standards/iso8601.htm
        #   @return [Time]

      end

      # A reference to a unique stage identified in the format
      # `\{restApiId\}/\{stage\}`.
      # @note When making an API call, pass StageKey
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String",
      #         stage_name: "String",
      #       }
      class StageKey < Aws::Structure.new(
        :rest_api_id,
        :stage_name)

        # @!attribute [rw] rest_api_id
        #   A list of Stage resources that are associated with the ApiKey
        #   resource.
        #   @return [String]

        # @!attribute [rw] stage_name
        #   The stage name in the RestApi that the stage key references.
        #   @return [String]

      end

      # A list of Stage resources that are associated with the ApiKey
      # resource.
      #
      # <div class="seeAlso">
      # [Deploying API in Stages][1]
      # </div>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/stages.html
      class Stages < Aws::Structure.new(
        :item)

        # @!attribute [rw] item
        #   An individual Stage resource.
        #   @return [Array<Types::Stage>]

      end

      # Represents a mapping template used to transform a payload.
      #
      # <div class="seeAlso">
      # [Mapping Templates][1]
      # </div>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/models-mappings.html#models-mappings-mappings
      class Template < Aws::Structure.new(
        :value)

        # @!attribute [rw] value
        #   The Apache [Velocity Template Language (VTL)][1] template content
        #   used for the template resource.
        #
        #
        #
        #   [1]: http://velocity.apache.org/engine/devel/vtl-reference-guide.html
        #   @return [String]

      end

      # Make a request to simulate the execution of an Authorizer.
      # @note When making an API call, pass TestInvokeAuthorizerRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         authorizer_id: "String", # required
      #         headers: {
      #           "String" => "String",
      #         },
      #         path_with_query_string: "String",
      #         body: "String",
      #         stage_variables: {
      #           "String" => "String",
      #         },
      #         additional_context: {
      #           "String" => "String",
      #         },
      #       }
      class TestInvokeAuthorizerRequest < Aws::Structure.new(
        :rest_api_id,
        :authorizer_id,
        :headers,
        :path_with_query_string,
        :body,
        :stage_variables,
        :additional_context)

        # @!attribute [rw] rest_api_id
        #   Specifies a test invoke authorizer request\'s RestApi identifier.
        #   @return [String]

        # @!attribute [rw] authorizer_id
        #   Specifies a test invoke authorizer request\'s Authorizer ID.
        #   @return [String]

        # @!attribute [rw] headers
        #   \[Required\] A key-value map of headers to simulate an incoming
        #   invocation request. This is where the incoming authorization token,
        #   or identity source, should be specified.
        #   @return [Hash<String,String>]

        # @!attribute [rw] path_with_query_string
        #   \[Optional\] The URI path, including query string, of the simulated
        #   invocation request. Use this to specify path parameters and query
        #   string parameters.
        #   @return [String]

        # @!attribute [rw] body
        #   \[Optional\] The simulated request body of an incoming invocation
        #   request.
        #   @return [String]

        # @!attribute [rw] stage_variables
        #   A key-value map of stage variables to simulate an invocation on a
        #   deployed Stage.
        #   @return [Hash<String,String>]

        # @!attribute [rw] additional_context
        #   \[Optional\] A key-value map of additional context variables.
        #   @return [Hash<String,String>]

      end

      # Represents the response of the test invoke request for a custom
      # Authorizer
      class TestInvokeAuthorizerResponse < Aws::Structure.new(
        :client_status,
        :log,
        :latency,
        :principal_id,
        :policy,
        :authorization,
        :claims)

        # @!attribute [rw] client_status
        #   The HTTP status code that the client would have received. Value is 0
        #   if the authorizer succeeded.
        #   @return [Integer]

        # @!attribute [rw] log
        #   The Amazon API Gateway execution log for the test authorizer
        #   request.
        #   @return [String]

        # @!attribute [rw] latency
        #   The execution latency of the test authorizer request.
        #   @return [Integer]

        # @!attribute [rw] principal_id
        #   The principal identity returned by the Authorizer
        #   @return [String]

        # @!attribute [rw] policy
        #   The JSON policy document returned by the Authorizer
        #   @return [String]

        # @!attribute [rw] authorization
        #   @return [Hash<String,Array<String>>]

        # @!attribute [rw] claims
        #   The [open identity claims][1], with any supported custom attributes,
        #   returned from the Cognito Your User Pool configured for the API.
        #
        #
        #
        #   [1]: http://openid.net/specs/openid-connect-core-1_0.html#StandardClaims
        #   @return [Hash<String,String>]

      end

      # Make a request to simulate the execution of a Method.
      # @note When making an API call, pass TestInvokeMethodRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         resource_id: "String", # required
      #         http_method: "String", # required
      #         path_with_query_string: "String",
      #         body: "String",
      #         headers: {
      #           "String" => "String",
      #         },
      #         client_certificate_id: "String",
      #         stage_variables: {
      #           "String" => "String",
      #         },
      #       }
      class TestInvokeMethodRequest < Aws::Structure.new(
        :rest_api_id,
        :resource_id,
        :http_method,
        :path_with_query_string,
        :body,
        :headers,
        :client_certificate_id,
        :stage_variables)

        # @!attribute [rw] rest_api_id
        #   Specifies a test invoke method request\'s API identifier.
        #   @return [String]

        # @!attribute [rw] resource_id
        #   Specifies a test invoke method request\'s resource ID.
        #   @return [String]

        # @!attribute [rw] http_method
        #   Specifies a test invoke method request\'s HTTP method.
        #   @return [String]

        # @!attribute [rw] path_with_query_string
        #   The URI path, including query string, of the simulated invocation
        #   request. Use this to specify path parameters and query string
        #   parameters.
        #   @return [String]

        # @!attribute [rw] body
        #   The simulated request body of an incoming invocation request.
        #   @return [String]

        # @!attribute [rw] headers
        #   A key-value map of headers to simulate an incoming invocation
        #   request.
        #   @return [Hash<String,String>]

        # @!attribute [rw] client_certificate_id
        #   A ClientCertificate identifier to use in the test invocation. API
        #   Gateway will use the certificate when making the HTTPS request to
        #   the defined back-end endpoint.
        #   @return [String]

        # @!attribute [rw] stage_variables
        #   A key-value map of stage variables to simulate an invocation on a
        #   deployed Stage.
        #   @return [Hash<String,String>]

      end

      # Represents the response of the test invoke request in the HTTP method.
      #
      # <div class="seeAlso">
      # [Test API using the API Gateway console][1]
      # </div>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-test-method.html#how-to-test-method-console
      class TestInvokeMethodResponse < Aws::Structure.new(
        :status,
        :body,
        :headers,
        :log,
        :latency)

        # @!attribute [rw] status
        #   The HTTP status code.
        #   @return [Integer]

        # @!attribute [rw] body
        #   The body of the HTTP response.
        #   @return [String]

        # @!attribute [rw] headers
        #   The headers of the HTTP response.
        #   @return [Hash<String,String>]

        # @!attribute [rw] log
        #   The Amazon API Gateway execution log for the test invoke request.
        #   @return [String]

        # @!attribute [rw] latency
        #   The execution latency of the test invoke request.
        #   @return [Integer]

      end

      # The API request rate limits.
      # @note When making an API call, pass ThrottleSettings
      #   data as a hash:
      #
      #       {
      #         burst_limit: 1,
      #         rate_limit: 1.0,
      #       }
      class ThrottleSettings < Aws::Structure.new(
        :burst_limit,
        :rate_limit)

        # @!attribute [rw] burst_limit
        #   The API request burst limit, the maximum rate limit over a time
        #   ranging from one to a few seconds, depending upon whether the
        #   underlying token bucket is at its full capacity.
        #   @return [Integer]

        # @!attribute [rw] rate_limit
        #   The API request steady-state rate limit.
        #   @return [Float]

      end

      # Requests Amazon API Gateway to change information about the current
      # Account resource.
      # @note When making an API call, pass UpdateAccountRequest
      #   data as a hash:
      #
      #       {
      #         patch_operations: [
      #           {
      #             op: "add", # accepts add, remove, replace, move, copy, test
      #             path: "String",
      #             value: "String",
      #             from: "String",
      #           },
      #         ],
      #       }
      class UpdateAccountRequest < Aws::Structure.new(
        :patch_operations)

        # @!attribute [rw] patch_operations
        #   A list of update operations to be applied to the specified resource
        #   and in the order specified in this list.
        #   @return [Array<Types::PatchOperation>]

      end

      # A request to change information about an ApiKey resource.
      # @note When making an API call, pass UpdateApiKeyRequest
      #   data as a hash:
      #
      #       {
      #         api_key: "String", # required
      #         patch_operations: [
      #           {
      #             op: "add", # accepts add, remove, replace, move, copy, test
      #             path: "String",
      #             value: "String",
      #             from: "String",
      #           },
      #         ],
      #       }
      class UpdateApiKeyRequest < Aws::Structure.new(
        :api_key,
        :patch_operations)

        # @!attribute [rw] api_key
        #   The identifier of the ApiKey resource to be updated.
        #   @return [String]

        # @!attribute [rw] patch_operations
        #   A list of update operations to be applied to the specified resource
        #   and in the order specified in this list.
        #   @return [Array<Types::PatchOperation>]

      end

      # Request to update an existing Authorizer resource.
      # @note When making an API call, pass UpdateAuthorizerRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         authorizer_id: "String", # required
      #         patch_operations: [
      #           {
      #             op: "add", # accepts add, remove, replace, move, copy, test
      #             path: "String",
      #             value: "String",
      #             from: "String",
      #           },
      #         ],
      #       }
      class UpdateAuthorizerRequest < Aws::Structure.new(
        :rest_api_id,
        :authorizer_id,
        :patch_operations)

        # @!attribute [rw] rest_api_id
        #   The RestApi identifier for the Authorizer resource.
        #   @return [String]

        # @!attribute [rw] authorizer_id
        #   The identifier of the Authorizer resource.
        #   @return [String]

        # @!attribute [rw] patch_operations
        #   A list of update operations to be applied to the specified resource
        #   and in the order specified in this list.
        #   @return [Array<Types::PatchOperation>]

      end

      # A request to change information about the BasePathMapping resource.
      # @note When making an API call, pass UpdateBasePathMappingRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "String", # required
      #         base_path: "String", # required
      #         patch_operations: [
      #           {
      #             op: "add", # accepts add, remove, replace, move, copy, test
      #             path: "String",
      #             value: "String",
      #             from: "String",
      #           },
      #         ],
      #       }
      class UpdateBasePathMappingRequest < Aws::Structure.new(
        :domain_name,
        :base_path,
        :patch_operations)

        # @!attribute [rw] domain_name
        #   The domain name of the BasePathMapping resource to change.
        #   @return [String]

        # @!attribute [rw] base_path
        #   The base path of the BasePathMapping resource to change.
        #   @return [String]

        # @!attribute [rw] patch_operations
        #   A list of update operations to be applied to the specified resource
        #   and in the order specified in this list.
        #   @return [Array<Types::PatchOperation>]

      end

      # A request to change information about an ClientCertificate resource.
      # @note When making an API call, pass UpdateClientCertificateRequest
      #   data as a hash:
      #
      #       {
      #         client_certificate_id: "String", # required
      #         patch_operations: [
      #           {
      #             op: "add", # accepts add, remove, replace, move, copy, test
      #             path: "String",
      #             value: "String",
      #             from: "String",
      #           },
      #         ],
      #       }
      class UpdateClientCertificateRequest < Aws::Structure.new(
        :client_certificate_id,
        :patch_operations)

        # @!attribute [rw] client_certificate_id
        #   The identifier of the ClientCertificate resource to be updated.
        #   @return [String]

        # @!attribute [rw] patch_operations
        #   A list of update operations to be applied to the specified resource
        #   and in the order specified in this list.
        #   @return [Array<Types::PatchOperation>]

      end

      # Requests Amazon API Gateway to change information about a Deployment
      # resource.
      # @note When making an API call, pass UpdateDeploymentRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         deployment_id: "String", # required
      #         patch_operations: [
      #           {
      #             op: "add", # accepts add, remove, replace, move, copy, test
      #             path: "String",
      #             value: "String",
      #             from: "String",
      #           },
      #         ],
      #       }
      class UpdateDeploymentRequest < Aws::Structure.new(
        :rest_api_id,
        :deployment_id,
        :patch_operations)

        # @!attribute [rw] rest_api_id
        #   The replacement identifier of the RestApi resource for the
        #   Deployment resource to change information about.
        #   @return [String]

        # @!attribute [rw] deployment_id
        #   The replacement identifier for the Deployment resource to change
        #   information about.
        #   @return [String]

        # @!attribute [rw] patch_operations
        #   A list of update operations to be applied to the specified resource
        #   and in the order specified in this list.
        #   @return [Array<Types::PatchOperation>]

      end

      # A request to change information about the DomainName resource.
      # @note When making an API call, pass UpdateDomainNameRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "String", # required
      #         patch_operations: [
      #           {
      #             op: "add", # accepts add, remove, replace, move, copy, test
      #             path: "String",
      #             value: "String",
      #             from: "String",
      #           },
      #         ],
      #       }
      class UpdateDomainNameRequest < Aws::Structure.new(
        :domain_name,
        :patch_operations)

        # @!attribute [rw] domain_name
        #   The name of the DomainName resource to be changed.
        #   @return [String]

        # @!attribute [rw] patch_operations
        #   A list of update operations to be applied to the specified resource
        #   and in the order specified in this list.
        #   @return [Array<Types::PatchOperation>]

      end

      # Represents an update integration request.
      # @note When making an API call, pass UpdateIntegrationRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         resource_id: "String", # required
      #         http_method: "String", # required
      #         patch_operations: [
      #           {
      #             op: "add", # accepts add, remove, replace, move, copy, test
      #             path: "String",
      #             value: "String",
      #             from: "String",
      #           },
      #         ],
      #       }
      class UpdateIntegrationRequest < Aws::Structure.new(
        :rest_api_id,
        :resource_id,
        :http_method,
        :patch_operations)

        # @!attribute [rw] rest_api_id
        #   Represents an update integration request\'s API identifier.
        #   @return [String]

        # @!attribute [rw] resource_id
        #   Represents an update integration request\'s resource identifier.
        #   @return [String]

        # @!attribute [rw] http_method
        #   Represents an update integration request\'s HTTP method.
        #   @return [String]

        # @!attribute [rw] patch_operations
        #   A list of update operations to be applied to the specified resource
        #   and in the order specified in this list.
        #   @return [Array<Types::PatchOperation>]

      end

      # Represents an update integration response request.
      # @note When making an API call, pass UpdateIntegrationResponseRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         resource_id: "String", # required
      #         http_method: "String", # required
      #         status_code: "StatusCode", # required
      #         patch_operations: [
      #           {
      #             op: "add", # accepts add, remove, replace, move, copy, test
      #             path: "String",
      #             value: "String",
      #             from: "String",
      #           },
      #         ],
      #       }
      class UpdateIntegrationResponseRequest < Aws::Structure.new(
        :rest_api_id,
        :resource_id,
        :http_method,
        :status_code,
        :patch_operations)

        # @!attribute [rw] rest_api_id
        #   Specifies an update integration response request\'s API identifier.
        #   @return [String]

        # @!attribute [rw] resource_id
        #   Specifies an update integration response request\'s resource
        #   identifier.
        #   @return [String]

        # @!attribute [rw] http_method
        #   Specifies an update integration response request\'s HTTP method.
        #   @return [String]

        # @!attribute [rw] status_code
        #   Specifies an update integration response request\'s status code.
        #   @return [String]

        # @!attribute [rw] patch_operations
        #   A list of update operations to be applied to the specified resource
        #   and in the order specified in this list.
        #   @return [Array<Types::PatchOperation>]

      end

      # Request to update an existing Method resource.
      # @note When making an API call, pass UpdateMethodRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         resource_id: "String", # required
      #         http_method: "String", # required
      #         patch_operations: [
      #           {
      #             op: "add", # accepts add, remove, replace, move, copy, test
      #             path: "String",
      #             value: "String",
      #             from: "String",
      #           },
      #         ],
      #       }
      class UpdateMethodRequest < Aws::Structure.new(
        :rest_api_id,
        :resource_id,
        :http_method,
        :patch_operations)

        # @!attribute [rw] rest_api_id
        #   The RestApi identifier for the Method resource.
        #   @return [String]

        # @!attribute [rw] resource_id
        #   The Resource identifier for the Method resource.
        #   @return [String]

        # @!attribute [rw] http_method
        #   The HTTP verb of the Method resource.
        #   @return [String]

        # @!attribute [rw] patch_operations
        #   A list of update operations to be applied to the specified resource
        #   and in the order specified in this list.
        #   @return [Array<Types::PatchOperation>]

      end

      # A request to update an existing MethodResponse resource.
      # @note When making an API call, pass UpdateMethodResponseRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         resource_id: "String", # required
      #         http_method: "String", # required
      #         status_code: "StatusCode", # required
      #         patch_operations: [
      #           {
      #             op: "add", # accepts add, remove, replace, move, copy, test
      #             path: "String",
      #             value: "String",
      #             from: "String",
      #           },
      #         ],
      #       }
      class UpdateMethodResponseRequest < Aws::Structure.new(
        :rest_api_id,
        :resource_id,
        :http_method,
        :status_code,
        :patch_operations)

        # @!attribute [rw] rest_api_id
        #   The RestApi identifier for the MethodResponse resource.
        #   @return [String]

        # @!attribute [rw] resource_id
        #   The Resource identifier for the MethodResponse resource.
        #   @return [String]

        # @!attribute [rw] http_method
        #   The HTTP verb of the Method resource.
        #   @return [String]

        # @!attribute [rw] status_code
        #   The status code for the MethodResponse resource.
        #   @return [String]

        # @!attribute [rw] patch_operations
        #   A list of update operations to be applied to the specified resource
        #   and in the order specified in this list.
        #   @return [Array<Types::PatchOperation>]

      end

      # Request to update an existing model in an existing RestApi resource.
      # @note When making an API call, pass UpdateModelRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         model_name: "String", # required
      #         patch_operations: [
      #           {
      #             op: "add", # accepts add, remove, replace, move, copy, test
      #             path: "String",
      #             value: "String",
      #             from: "String",
      #           },
      #         ],
      #       }
      class UpdateModelRequest < Aws::Structure.new(
        :rest_api_id,
        :model_name,
        :patch_operations)

        # @!attribute [rw] rest_api_id
        #   The RestApi identifier under which the model exists.
        #   @return [String]

        # @!attribute [rw] model_name
        #   The name of the model to update.
        #   @return [String]

        # @!attribute [rw] patch_operations
        #   A list of update operations to be applied to the specified resource
        #   and in the order specified in this list.
        #   @return [Array<Types::PatchOperation>]

      end

      # Request to change information about a Resource resource.
      # @note When making an API call, pass UpdateResourceRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         resource_id: "String", # required
      #         patch_operations: [
      #           {
      #             op: "add", # accepts add, remove, replace, move, copy, test
      #             path: "String",
      #             value: "String",
      #             from: "String",
      #           },
      #         ],
      #       }
      class UpdateResourceRequest < Aws::Structure.new(
        :rest_api_id,
        :resource_id,
        :patch_operations)

        # @!attribute [rw] rest_api_id
        #   The RestApi identifier for the Resource resource.
        #   @return [String]

        # @!attribute [rw] resource_id
        #   The identifier of the Resource resource.
        #   @return [String]

        # @!attribute [rw] patch_operations
        #   A list of update operations to be applied to the specified resource
        #   and in the order specified in this list.
        #   @return [Array<Types::PatchOperation>]

      end

      # Request to update an existing RestApi resource in your collection.
      # @note When making an API call, pass UpdateRestApiRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         patch_operations: [
      #           {
      #             op: "add", # accepts add, remove, replace, move, copy, test
      #             path: "String",
      #             value: "String",
      #             from: "String",
      #           },
      #         ],
      #       }
      class UpdateRestApiRequest < Aws::Structure.new(
        :rest_api_id,
        :patch_operations)

        # @!attribute [rw] rest_api_id
        #   The ID of the RestApi you want to update.
        #   @return [String]

        # @!attribute [rw] patch_operations
        #   A list of update operations to be applied to the specified resource
        #   and in the order specified in this list.
        #   @return [Array<Types::PatchOperation>]

      end

      # Requests Amazon API Gateway to change information about a Stage
      # resource.
      # @note When making an API call, pass UpdateStageRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         stage_name: "String", # required
      #         patch_operations: [
      #           {
      #             op: "add", # accepts add, remove, replace, move, copy, test
      #             path: "String",
      #             value: "String",
      #             from: "String",
      #           },
      #         ],
      #       }
      class UpdateStageRequest < Aws::Structure.new(
        :rest_api_id,
        :stage_name,
        :patch_operations)

        # @!attribute [rw] rest_api_id
        #   The identifier of the RestApi resource for the Stage resource to
        #   change information about.
        #   @return [String]

        # @!attribute [rw] stage_name
        #   The name of the Stage resource to change information about.
        #   @return [String]

        # @!attribute [rw] patch_operations
        #   A list of update operations to be applied to the specified resource
        #   and in the order specified in this list.
        #   @return [Array<Types::PatchOperation>]

      end

      # The PATCH request to update a usage plan of a given plan Id.
      # @note When making an API call, pass UpdateUsagePlanRequest
      #   data as a hash:
      #
      #       {
      #         usage_plan_id: "String", # required
      #         patch_operations: [
      #           {
      #             op: "add", # accepts add, remove, replace, move, copy, test
      #             path: "String",
      #             value: "String",
      #             from: "String",
      #           },
      #         ],
      #       }
      class UpdateUsagePlanRequest < Aws::Structure.new(
        :usage_plan_id,
        :patch_operations)

        # @!attribute [rw] usage_plan_id
        #   The Id of the to-be-updated usage plan.
        #   @return [String]

        # @!attribute [rw] patch_operations
        #   A list of update operations to be applied to the specified resource
        #   and in the order specified in this list.
        #   @return [Array<Types::PatchOperation>]

      end

      # The PATCH request to grant a temporary extension to the reamining
      # quota of a usage plan associated with a specified API key.
      # @note When making an API call, pass UpdateUsageRequest
      #   data as a hash:
      #
      #       {
      #         usage_plan_id: "String", # required
      #         key_id: "String", # required
      #         patch_operations: [
      #           {
      #             op: "add", # accepts add, remove, replace, move, copy, test
      #             path: "String",
      #             value: "String",
      #             from: "String",
      #           },
      #         ],
      #       }
      class UpdateUsageRequest < Aws::Structure.new(
        :usage_plan_id,
        :key_id,
        :patch_operations)

        # @!attribute [rw] usage_plan_id
        #   The Id of the usage plan associated with the usage data.
        #   @return [String]

        # @!attribute [rw] key_id
        #   The identifier of the API key associated with the usage plan in
        #   which a temporary extension is granted to the remaining quota.
        #   @return [String]

        # @!attribute [rw] patch_operations
        #   A list of update operations to be applied to the specified resource
        #   and in the order specified in this list.
        #   @return [Array<Types::PatchOperation>]

      end

      # Represents the usage data of a usage plan.
      #
      # <div class="remarks"></div>
      #
      # <div class="seeAlso">
      # [Create and Use Usage Plans][1], [Manage Usage in a Usage Plan][2]
      # </div>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-api-usage-plans.html
      # [2]: http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-create-usage-plans-with-console.html#api-gateway-usage-plan-manage-usage
      class Usage < Aws::Structure.new(
        :usage_plan_id,
        :start_date,
        :end_date,
        :position,
        :items)

        # @!attribute [rw] usage_plan_id
        #   The plan Id associated with this usage data.
        #   @return [String]

        # @!attribute [rw] start_date
        #   The starting date of the usage data.
        #   @return [String]

        # @!attribute [rw] end_date
        #   The ending date of the usage data.
        #   @return [String]

        # @!attribute [rw] position
        #   @return [String]

        # @!attribute [rw] items
        #   The usage data, as daily logs of used and remaining quotas, over the
        #   specified time interval indexed over the API keys in a usage plan.
        #   For example, `\{..., "values" : \{ "\{api_key\}" : [ [0, 100], [10,
        #   90], [100, 10]]\}`, where `\{api_key\}` stands for an API key value
        #   and the daily log entry is of the format `[used quota, remaining
        #   quota]`.
        #   @return [Hash<String,Array<Array<Integer>>>]

      end

      # Represents a usage plan than can specify who can assess associated API
      # stages with specified request limits and quotas.
      #
      # <div class="remarks" markdown="1">
      # In a usage plan, you associate an API by specifying the API\'s Id and
      # a stage name of the specified API. You add plan customers by adding
      # API keys to the plan.
      #
      # </div>
      #
      # <div class="seeAlso">
      # [Create and Use Usage Plans][1]
      # </div>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-api-usage-plans.html
      class UsagePlan < Aws::Structure.new(
        :id,
        :name,
        :description,
        :api_stages,
        :throttle,
        :quota)

        # @!attribute [rw] id
        #   The identifier of a UsagePlan resource.
        #   @return [String]

        # @!attribute [rw] name
        #   The name of a usage plan.
        #   @return [String]

        # @!attribute [rw] description
        #   The description of a usage plan.
        #   @return [String]

        # @!attribute [rw] api_stages
        #   The associated API stages of a usage plan.
        #   @return [Array<Types::ApiStage>]

        # @!attribute [rw] throttle
        #   The request throttle limits of a usage plan.
        #   @return [Types::ThrottleSettings]

        # @!attribute [rw] quota
        #   The maximum number of permitted requests per a given unit time
        #   interval.
        #   @return [Types::QuotaSettings]

      end

      # Represents a usage plan key to identify a plan customer.
      #
      # <div class="remarks" markdown="1">
      # To associate an API stage with a selected API key in a usage plan, you
      # must create a UsagePlanKey resource to represent the selected ApiKey.
      #
      # </div>
      #
      # \" <div class="seeAlso">
      # [Create and Use Usage Plans][1]
      # </div>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-api-usage-plans.html
      class UsagePlanKey < Aws::Structure.new(
        :id,
        :type,
        :value,
        :name)

        # @!attribute [rw] id
        #   The Id of a usage plan key.
        #   @return [String]

        # @!attribute [rw] type
        #   The type of a usage plan key. Currently, the valid key type is
        #   `API_KEY`.
        #   @return [String]

        # @!attribute [rw] value
        #   The value of a usage plan key.
        #   @return [String]

        # @!attribute [rw] name
        #   The name of a usage plan key.
        #   @return [String]

      end

      # Represents the collection of usage plan keys added to usage plans for
      # the associated API keys and, possibly, other types of keys.
      #
      # <div class="seeAlso">
      # [Create and Use Usage Plans][1]
      # </div>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-api-usage-plans.html
      class UsagePlanKeys < Aws::Structure.new(
        :position,
        :items)

        # @!attribute [rw] position
        #   @return [String]

        # @!attribute [rw] items
        #   Gets the current item of the usage plan keys collection.
        #   @return [Array<Types::UsagePlanKey>]

      end

      # Represents a collection of usage plans for an AWS account.
      #
      # <div class="seeAlso">
      # [Create and Use Usage Plans][1]
      # </div>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-api-usage-plans.html
      class UsagePlans < Aws::Structure.new(
        :position,
        :items)

        # @!attribute [rw] position
        #   @return [String]

        # @!attribute [rw] items
        #   Gets the current item when enumerating the collection of UsagePlan.
        #   @return [Array<Types::UsagePlan>]

      end

    end
  end
end
