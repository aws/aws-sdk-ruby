# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module APIGateway
    module Types

      # Represents an AWS account that is associated with Amazon API Gateway.
      class Account < Aws::Structure.new(
        :cloudwatch_role_arn,
        :throttle_settings)

        # @!attribute [rw] cloudwatch_role_arn
        #   Specifies the Amazon resource name (ARN) of an Amazon CloudWatch
        #   role for the current Account resource.
        #   @return [String]

        # @!attribute [rw] throttle_settings
        #   Specifies the application programming interface (API) throttle
        #   settings for the current Account resource.
        #   @return [Types::ThrottleSettings]

      end

      # A resource that can be distributed to callers for executing Method
      # resources that require an API key. API keys can be mapped to any Stage
      # on any RestApi, which indicates that the callers with the API key can
      # make requests to that stage.
      class ApiKey < Aws::Structure.new(
        :id,
        :name,
        :description,
        :enabled,
        :stage_keys,
        :created_date,
        :last_updated_date)

        # @!attribute [rw] id
        #   The identifier of the API Key.
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

        # @!attribute [rw] stage_keys
        #   A list of Stage resources that are associated with the ApiKey
        #   resource.
        #   @return [Array<String>]

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

      end

      # Represents a collection of ApiKey resources.
      class ApiKeys < Aws::Structure.new(
        :position,
        :items)

        # @!attribute [rw] position
        #   @return [String]

        # @!attribute [rw] items
        #   The current page of any ApiKey resources in the collection of ApiKey
        #   resources.
        #   @return [Array<Types::ApiKey>]

      end

      # Represents an authorization layer for methods. If enabled on a method,
      # API Gateway will activate the authorizer when a client calls the
      # method.
      class Authorizer < Aws::Structure.new(
        :id,
        :name,
        :type,
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
        #   options are available. To specify an IAM Role for Amazon API Gateway
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
      class Authorizers < Aws::Structure.new(
        :position,
        :items)

        # @!attribute [rw] position
        #   @return [String]

        # @!attribute [rw] items
        #   Gets the current list of Authorizer resources in the collection.
        #   @return [Array<Types::Authorizer>]

      end

      # Represents the base path that callers of the API that must provide as
      # part of the URL after the domain name.
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

      # Represents a Client Certificate used to configure client-side SSL
      # authentication while sending requests to the integration endpoint.
      class ClientCertificate < Aws::Structure.new(
        :client_certificate_id,
        :description,
        :pem_encoded_certificate,
        :created_date,
        :expiration_date)

        # @!attribute [rw] client_certificate_id
        #   The identifier of the Client Certificate.
        #   @return [String]

        # @!attribute [rw] description
        #   The description of the Client Certificate.
        #   @return [String]

        # @!attribute [rw] pem_encoded_certificate
        #   The PEM-encoded public key of the Client Certificate, that can be
        #   used to configure certificate authentication in the integration
        #   endpoint .
        #   @return [String]

        # @!attribute [rw] created_date
        #   The date when the Client Certificate was created, in [ISO 8601
        #   format][1].
        #
        #
        #
        #   [1]: http://www.iso.org/iso/home/standards/iso8601.htm
        #   @return [Time]

        # @!attribute [rw] expiration_date
        #   The date when the Client Certificate will expire, in [ISO 8601
        #   format][1].
        #
        #
        #
        #   [1]: http://www.iso.org/iso/home/standards/iso8601.htm
        #   @return [Time]

      end

      # Represents a collection of ClientCertificate resources.
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

        # @!attribute [rw] stage_keys
        #   Specifies whether the ApiKey can be used by callers.
        #   @return [Array<Types::StageKey>]

      end

      # Request to add a new Authorizer to an existing RestApi resource.
      # @note When making an API call, pass CreateAuthorizerRequest
      #   data as a hash:
      #
      #       {
      #         rest_api_id: "String", # required
      #         name: "String", # required
      #         type: "TOKEN", # required, accepts TOKEN
      #         auth_type: "String",
      #         authorizer_uri: "String", # required
      #         authorizer_credentials: "String",
      #         identity_source: "String", # required
      #         identity_validation_expression: "String",
      #         authorizer_result_ttl_in_seconds: 1,
      #       }
      class CreateAuthorizerRequest < Aws::Structure.new(
        :rest_api_id,
        :name,
        :type,
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
        #   alphanumeric characters, and the values must match
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
        #   The Id of the RestApi that you want to clone from.
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
        #   Variable names can have alphanumeric characters, and the values must
        #   match `[A-Za-z0-9-._~:/?#&=,]+`.
        #   @return [Hash<String,String>]

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
        #   The HTTP verb that identifies the Method resource.
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
        #   The HTTP verb identifier for the parent Method resource.
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

      # An immutable representation of a RestApi resource that can be called
      # by users using Stages. A deployment must be associated with a Stage
      # for it to be callable over the Internet.
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
        #   Gets a summary of the RestApi at the date and time that the
        #   deployment resource was created.
        #   @return [Hash<String,Hash<String,Types::MethodSnapshot>>]

      end

      # Represents a collection resource that contains zero or more references
      # to your existing deployments, and links that guide you on ways to
      # interact with your collection. The collection offers a paginated view
      # of the contained deployments.
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
        #   The content-disposition header value in the HTTP reseponse.
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
      #       }
      class GetApiKeyRequest < Aws::Structure.new(
        :api_key)

        # @!attribute [rw] api_key
        #   The identifier of the ApiKey resource.
        #   @return [String]

      end

      # A request to get information about the current ApiKeys resource.
      # @note When making an API call, pass GetApiKeysRequest
      #   data as a hash:
      #
      #       {
      #         position: "String",
      #         limit: 1,
      #       }
      class GetApiKeysRequest < Aws::Structure.new(
        :position,
        :limit)

        # @!attribute [rw] position
        #   The position of the current ApiKeys resource to get information
        #   about.
        #   @return [String]

        # @!attribute [rw] limit
        #   The maximum number of ApiKeys to get information about.
        #   @return [Integer]

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
        #   position will specificy where to start the next page of results.
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
        #   of the export, depending on the requested exportType. For exportType
        #   \'swagger\', any combination of the following parameters are
        #   supported: \'integrations\' will export
        #   x-amazon-apigateway-integration extensions \'authorizers\' will
        #   export x-amazon-apigateway-authorizer extensions \'postman\' will
        #   export with Postman extensions, allowing for import to the Postman
        #   tool
        #   @return [Hash<String,String>]

        # @!attribute [rw] accepts
        #   The content-type of the export, for example \'application/json\'.
        #   Currently \'application/json\' and \'application/yaml\' are
        #   supported for exportType \'swagger\'. Should be specifed in the
        #   \'Accept\' header for direct API requests.
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
        #   Specifies the put method request\'s HTTP method type.
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
        #   The HTTP verb identifier for the parent Method resource.
        #   @return [String]

        # @!attribute [rw] status_code
        #   The status code identifier for the MethodResponse resource.
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
        #   Resolves all external model references and returns a flattened model
        #   schema.
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
        #   The language for the generated SDK. Currently javascript, android,
        #   and objectivec (for iOS) are supported.
        #   @return [String]

        # @!attribute [rw] parameters
        #   A key-value map of query string parameters that specify properties
        #   of the SDK, depending on the requested sdkType. For sdkType
        #   \'objectivec\', a parameter named \"classPrefix\" is required. For
        #   sdkType \'android\', parameters named \"groupId\", \"artifactId\",
        #   \"artifactVersion\", and \"invokerPackage\" are required.
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

      # Represents a HTTP, AWS, or Mock integration.
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
        #   Represents requests parameters that are sent with the backend
        #   request. Request parameters are represented as a key/value map, with
        #   a destination as the key and a source as the value. A source must
        #   match an existing method request parameter, or a static value.
        #   Static values must be enclosed with single quotes, and be
        #   pre-encoded based on their destination in the request. The
        #   destination must match the pattern
        #   `integration.request.\{location\}.\{name\}`, where `location` is
        #   either querystring, path, or header. `name` must be a valid, unique
        #   parameter name.
        #   @return [Hash<String,String>]

        # @!attribute [rw] request_templates
        #   Represents a map of Velocity templates that are applied on the
        #   request payload based on the value of the Content-Type header sent
        #   by the client. The content type value is the key in this map, and
        #   the template (as a String) is the value.
        #   @return [Hash<String,String>]

        # @!attribute [rw] passthrough_behavior
        #   Specifies the pass-through behavior for incoming requests based on
        #   the Content-Type header in the request, and the available
        #   requestTemplates defined on the Integration. There are three valid
        #   values: `WHEN_NO_MATCH`, `WHEN_NO_TEMPLATES`, and `NEVER`.
        #
        #
        #
        #   `WHEN_NO_MATCH` passes the request body for unmapped content types
        #   through to the Integration backend without transformation.
        #
        #   `NEVER` rejects unmapped content types with an HTTP 415
        #   \'Unsupported Media Type\' response.
        #
        #   `WHEN_NO_TEMPLATES` will allow pass-through when the Integration has
        #   NO content types mapped to templates. However if there is at least
        #   one content type defined, unmapped content types will be rejected
        #   with the same 415 response.
        #   @return [String]

        # @!attribute [rw] cache_namespace
        #   Specifies the integration\'s cache namespace.
        #   @return [String]

        # @!attribute [rw] cache_key_parameters
        #   Specifies the integration\'s cache key parameters.
        #   @return [Array<String>]

        # @!attribute [rw] integration_responses
        #   Specifies the integration\'s responses.
        #   @return [Hash<String,Types::IntegrationResponse>]

      end

      # Represents an integration response. The status code must map to an
      # existing MethodResponse, and parameters and templates can be used to
      # transform the backend response.
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
        #   integration response based on the response from the backend. If the
        #   backend is an AWS Lambda function, the AWS Lambda function error
        #   header is matched. For all other HTTP and AWS backends, the HTTP
        #   status code is matched.
        #   @return [String]

        # @!attribute [rw] response_parameters
        #   Represents response parameters that can be read from the backend
        #   response. Response parameters are represented as a key/value map,
        #   with a destination as the key and a source as the value. A
        #   destination must match an existing response parameter in the
        #   MethodResponse. The source can be a header from the backend
        #   response, or a static value. Static values are specified using
        #   enclosing single quotes, and backend response headers can be read
        #   using the pattern `integration.response.header.\{name\}`.
        #   @return [Hash<String,String>]

        # @!attribute [rw] response_templates
        #   Specifies the templates used to transform the integration response
        #   body. Response templates are represented as a key/value map, with a
        #   content-type as the key and a template as the value.
        #   @return [Hash<String,String>]

      end

      # Represents a method.
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
        #   The HTTP method.
        #   @return [String]

        # @!attribute [rw] authorization_type
        #   The method\'s authorization type.
        #   @return [String]

        # @!attribute [rw] authorizer_id
        #   Specifies the identifier of an Authorizer to use on this Method. The
        #   authorizationType must be CUSTOM.
        #   @return [String]

        # @!attribute [rw] api_key_required
        #   Specifies whether the method requires a valid ApiKey.
        #   @return [Boolean]

        # @!attribute [rw] request_parameters
        #   Represents request parameters that can be accepted by Amazon API
        #   Gateway. Request parameters are represented as a key/value map, with
        #   a source as the key and a Boolean flag as the value. The Boolean
        #   flag is used to specify whether the parameter is required. A source
        #   must match the pattern `method.request.\{location\}.\{name\}`, where
        #   `location` is either querystring, path, or header. `name` is a
        #   valid, unique parameter name. Sources specified here are available
        #   to the integration for mapping to integration request parameters or
        #   templates.
        #   @return [Hash<String,Boolean>]

        # @!attribute [rw] request_models
        #   Specifies the Model resources used for the request\'s content type.
        #   Request models are represented as a key/value map, with a content
        #   type as the key and a Model name as the value.
        #   @return [Hash<String,String>]

        # @!attribute [rw] method_responses
        #   Represents available responses that can be sent to the caller.
        #   Method responses are represented as a key/value map, with an HTTP
        #   status code as the key and a MethodResponse as the value. The status
        #   codes are available for the Integration responses to map to.
        #   @return [Hash<String,Types::MethodResponse>]

        # @!attribute [rw] method_integration
        #   The method\'s integration.
        #   @return [Types::Integration]

      end

      # Represents a method response. Amazon API Gateway sends back the status
      # code to the caller as the HTTP status code. Parameters and models can
      # be used to transform the response from the method\'s integration.
      class MethodResponse < Aws::Structure.new(
        :status_code,
        :response_parameters,
        :response_models)

        # @!attribute [rw] status_code
        #   The method response\'s status code.
        #   @return [String]

        # @!attribute [rw] response_parameters
        #   Represents response parameters that can be sent back to the caller
        #   by Amazon API Gateway. Response parameters are represented as a
        #   key/value map, with a destination as the key and a boolean flag as
        #   the value, which is used to specify whether the parameter is
        #   required. A destination must match the pattern
        #   `method.response.header.\{name\}`, where `name` is a valid, unique
        #   header name. Destinations specified here are available to the
        #   integration for mapping from integration response parameters.
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
        #   Specifies the whether data trace logging is enabled for this method,
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
        #   Specifies the time to live (TTL) in seconds, for cached responses.
        #   The higher a the TTL, the longer the response will be cached. The
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
        #   Specifies the strategy on how to handle the unauthorized requests
        #   for cache invalidation. The PATCH path for this setting is
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

      # Represents the structure of a request or response payload for a
      # method.
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

      # Represents a collection of Model resources.
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
        #   A patch operation whose value indicates the operation to perform.
        #   Its value MUST be one of \"add\", \"remove\", \"replace\", \"move\",
        #   \"copy\", or \"test\"; other values are errors.
        #   @return [String]

        # @!attribute [rw] path
        #   Operation objects MUST have exactly one \"path\" member. That
        #   member\'s value is a string containing a \`JSON-Pointer\` value that
        #   references a location within the target document (the \"target
        #   location\") where the operation is performed.
        #   @return [String]

        # @!attribute [rw] value
        #   The actual value content.
        #   @return [String]

        # @!attribute [rw] from
        #   The \"move\" and \"copy\" operation object MUST contain a \"from\"
        #   member, which is a string containing a `JSON Pointer` value that
        #   references the location in the target document to move the value
        #   from.
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
        #   Represents request parameters that are sent with the backend
        #   request. Request parameters are represented as a key/value map, with
        #   a destination as the key and a source as the value. A source must
        #   match an existing method request parameter, or a static value.
        #   Static values must be enclosed with single quotes, and be
        #   pre-encoded based on their destination in the request. The
        #   destination must match the pattern
        #   `integration.request.\{location\}.\{name\}`, where `location` is
        #   either querystring, path, or header. `name` must be a valid, unique
        #   parameter name.
        #   @return [Hash<String,String>]

        # @!attribute [rw] request_templates
        #   Represents a map of Velocity templates that are applied on the
        #   request payload based on the value of the Content-Type header sent
        #   by the client. The content type value is the key in this map, and
        #   the template (as a String) is the value.
        #   @return [Hash<String,String>]

        # @!attribute [rw] passthrough_behavior
        #   Specifies the pass-through behavior for incoming requests based on
        #   the Content-Type header in the request, and the available
        #   requestTemplates defined on the Integration. There are three valid
        #   values: `WHEN_NO_MATCH`, `WHEN_NO_TEMPLATES`, and `NEVER`.
        #
        #
        #
        #   `WHEN_NO_MATCH` passes the request body for unmapped content types
        #   through to the Integration backend without transformation.
        #
        #   `NEVER` rejects unmapped content types with an HTTP 415
        #   \'Unsupported Media Type\' response.
        #
        #   `WHEN_NO_TEMPLATES` will allow pass-through when the Integration has
        #   NO content types mapped to templates. However if there is at least
        #   one content type defined, unmapped content types will be rejected
        #   with the same 415 response.
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
        #   Represents response parameters that can be read from the backend
        #   response. Response parameters are represented as a key/value map,
        #   with a destination as the key and a source as the value. A
        #   destination must match an existing response parameter in the Method.
        #   The source can be a header from the backend response, or a static
        #   value. Static values are specified using enclosing single quotes,
        #   and backend response headers can be read using the pattern
        #   `integration.response.header.\{name\}`.
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
        #   Specifies the put method request\'s HTTP method type.
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
        #   Represents requests parameters that are sent with the backend
        #   request. Request parameters are represented as a key/value map, with
        #   a destination as the key and a source as the value. A source must
        #   match an existing method request parameter, or a static value.
        #   Static values must be enclosed with single quotes, and be
        #   pre-encoded based on their destination in the request. The
        #   destination must match the pattern
        #   `integration.request.\{location\}.\{name\}`, where `location` is
        #   either querystring, path, or header. `name` must be a valid, unique
        #   parameter name.
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
        #   The HTTP verb that identifies the Method resource.
        #   @return [String]

        # @!attribute [rw] status_code
        #   The method response\'s status code.
        #   @return [String]

        # @!attribute [rw] response_parameters
        #   Represents response parameters that can be sent back to the caller
        #   by Amazon API Gateway. Response parameters are represented as a
        #   key/value map, with a destination as the key and a Boolean flag as
        #   the value. The Boolean flag is used to specify whether the parameter
        #   is required. A destination must match the pattern
        #   `method.response.header.\{name\}`, where `name` is a valid, unique
        #   header name. Destinations specified here are available to the
        #   integration for mapping from integration response parameters.
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

      # Represents a resource.
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
        #   Map of methods for this resource, which is included only if the
        #   request uses the **embed** query option.
        #   @return [Hash<String,Types::Method>]

      end

      # Represents a collection of Resource resources.
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
        #   @return [Array<String>]

      end

      # Contains references to your APIs and links that guide you in ways to
      # interact with your collection. A collection offers a paginated view of
      # your APIs.
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
        #   The content-disposition header value in the HTTP reseponse.
        #   @return [String]

        # @!attribute [rw] body
        #   The binary blob response to GetSdk, which contains the generated
        #   SDK.
        #   @return [String]

      end

      # Represents a unique identifier for a version of a deployed RestApi
      # that is callable by users.
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
        #   are defined as `\{resource_path\}/\{http_method\}` for an individual
        #   method override, or `\*/\*` for the settings applied to all methods
        #   in the stage.
        #   @return [Hash<String,Types::MethodSetting>]

        # @!attribute [rw] variables
        #   A map that defines the stage variables for a Stage resource.
        #   Variable names can have alphanumeric characters, and the values must
        #   match `[A-Za-z0-9-._~:/?#&=,]+`.
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

      # A list of Stage resource that are associated with the ApiKey resource.
      class Stages < Aws::Structure.new(
        :item)

        # @!attribute [rw] item
        #   An individual Stage resource.
        #   @return [Array<Types::Stage>]

      end

      # Represents a mapping template used to transform a payload.
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

      # Represents the response of the test invoke request in for a custom
      # Authorizer
      class TestInvokeAuthorizerResponse < Aws::Structure.new(
        :client_status,
        :log,
        :latency,
        :principal_id,
        :policy,
        :authorization)

        # @!attribute [rw] client_status
        #   The HTTP status code that the client would have received. Value is 0
        #   if the authorizer succeeded.
        #   @return [Integer]

        # @!attribute [rw] log
        #   The Amazon API Gateway execution log for the test authorizer
        #   request.
        #   @return [String]

        # @!attribute [rw] latency
        #   The execution latency of the test authorizer request
        #   @return [Integer]

        # @!attribute [rw] principal_id
        #   The principal identity returned by the Authorizer
        #   @return [String]

        # @!attribute [rw] policy
        #   The policy JSON document returned by the Authorizer
        #   @return [String]

        # @!attribute [rw] authorization
        #   @return [Hash<String,Array<String>>]

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
        #   Gateway will use use the certificate when making the HTTPS request
        #   to the defined backend endpoint.
        #   @return [String]

        # @!attribute [rw] stage_variables
        #   A key-value map of stage variables to simulate an invocation on a
        #   deployed Stage.
        #   @return [Hash<String,String>]

      end

      # Represents the response of the test invoke request in HTTP method.
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
        #   The body of HTTP response.
        #   @return [String]

        # @!attribute [rw] headers
        #   The headers of HTTP response.
        #   @return [Hash<String,String>]

        # @!attribute [rw] log
        #   The Amazon API Gateway execution log for the test invoke request.
        #   @return [String]

        # @!attribute [rw] latency
        #   The execution latency of the test invoke request.
        #   @return [Integer]

      end

      # Returns the throttle settings.
      class ThrottleSettings < Aws::Structure.new(
        :burst_limit,
        :rate_limit)

        # @!attribute [rw] burst_limit
        #   Returns the burstLimit when **ThrottleSettings** is called.
        #   @return [Integer]

        # @!attribute [rw] rate_limit
        #   Returns the rateLimit when **ThrottleSettings** is called.
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
        #   A list of operations describing the updates to apply to the
        #   specified resource. The patches are applied in the order specified
        #   in the list.
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
        #   A list of operations describing the updates to apply to the
        #   specified resource. The patches are applied in the order specified
        #   in the list.
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
        #   A list of operations describing the updates to apply to the
        #   specified resource. The patches are applied in the order specified
        #   in the list.
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
        #   A list of operations describing the updates to apply to the
        #   specified resource. The patches are applied in the order specified
        #   in the list.
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
        #   A list of operations describing the updates to apply to the
        #   specified resource. The patches are applied in the order specified
        #   in the list.
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
        #   The replacment identifier for the Deployment resource to change
        #   information about.
        #   @return [String]

        # @!attribute [rw] patch_operations
        #   A list of operations describing the updates to apply to the
        #   specified resource. The patches are applied in the order specified
        #   in the list.
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
        #   A list of operations describing the updates to apply to the
        #   specified resource. The patches are applied in the order specified
        #   in the list.
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
        #   A list of operations describing the updates to apply to the
        #   specified resource. The patches are applied in the order specified
        #   in the list.
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
        #   A list of operations describing the updates to apply to the
        #   specified resource. The patches are applied in the order specified
        #   in the list.
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
        #   The HTTP verb that identifies the Method resource.
        #   @return [String]

        # @!attribute [rw] patch_operations
        #   A list of operations describing the updates to apply to the
        #   specified resource. The patches are applied in the order specified
        #   in the list.
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
        #   The HTTP verb identifier for the parent Method resource.
        #   @return [String]

        # @!attribute [rw] status_code
        #   The status code identifier for the MethodResponse resource.
        #   @return [String]

        # @!attribute [rw] patch_operations
        #   A list of operations describing the updates to apply to the
        #   specified resource. The patches are applied in the order specified
        #   in the list.
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
        #   A list of operations describing the updates to apply to the
        #   specified resource. The patches are applied in the order specified
        #   in the list.
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
        #   A list of operations describing the updates to apply to the
        #   specified resource. The patches are applied in the order specified
        #   in the list.
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
        #   A list of operations describing the updates to apply to the
        #   specified resource. The patches are applied in the order specified
        #   in the list.
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
        #   A list of operations describing the updates to apply to the
        #   specified resource. The patches are applied in the order specified
        #   in the list.
        #   @return [Array<Types::PatchOperation>]

      end

    end
  end
end
