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
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs
      include Aws::ClientWaiters

      @identifier = :apigateway

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::RequestSigner)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
      add_plugin(Aws::Plugins::Protocols::RestJson)

      # @!group API Operations

      # Create an ApiKey resource.
      # @option params [String] :name
      #   The name of the ApiKey.
      # @option params [String] :description
      #   The description of the ApiKey.
      # @option params [Boolean] :enabled
      #   Specifies whether the ApiKey can be used by callers.
      # @option params [Array<Types::StageKey>] :stage_keys
      #   Specifies whether the ApiKey can be used by callers.
      # @return [Types::ApiKey] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ApiKey#id #id} => String
      #   * {Types::ApiKey#name #name} => String
      #   * {Types::ApiKey#description #description} => String
      #   * {Types::ApiKey#enabled #enabled} => Boolean
      #   * {Types::ApiKey#stage_keys #stageKeys} => Array&lt;String&gt;
      #   * {Types::ApiKey#created_date #createdDate} => Time
      #   * {Types::ApiKey#last_updated_date #lastUpdatedDate} => Time
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_api_key({
      #     name: "String",
      #     description: "String",
      #     enabled: false,
      #     stage_keys: [
      #       {
      #         rest_api_id: "String",
      #         stage_name: "String",
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.id #=> String
      #   resp.name #=> String
      #   resp.description #=> String
      #   resp.enabled #=> Boolean
      #   resp.stage_keys #=> Array
      #   resp.stage_keys[0] #=> String
      #   resp.created_date #=> Time
      #   resp.last_updated_date #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_api_key(params = {}, options = {})
        req = build_request(:create_api_key, params)
        req.send_request(options)
      end

      # Adds a new Authorizer resource to an existing RestApi resource.
      # @option params [required, String] :rest_api_id
      #   The RestApi identifier under which the Authorizer will be created.
      # @option params [required, String] :name
      #   \[Required\] The name of the authorizer.
      # @option params [required, String] :type
      #   \[Required\] The type of the authorizer.
      # @option params [String] :auth_type
      #   Optional customer-defined field, used in Swagger imports/exports. Has
      #   no functional impact.
      # @option params [required, String] :authorizer_uri
      #   \[Required\] Specifies the authorizer\'s Uniform Resource Identifier
      #   (URI).
      # @option params [String] :authorizer_credentials
      #   Specifies the credentials required for the authorizer, if any.
      # @option params [required, String] :identity_source
      #   \[Required\] The source of the identity in an incoming request.
      # @option params [String] :identity_validation_expression
      #   A validation expression for the incoming identity.
      # @option params [Integer] :authorizer_result_ttl_in_seconds
      #   The TTL of cached authorizer results.
      # @return [Types::Authorizer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Authorizer#id #id} => String
      #   * {Types::Authorizer#name #name} => String
      #   * {Types::Authorizer#type #type} => String
      #   * {Types::Authorizer#auth_type #authType} => String
      #   * {Types::Authorizer#authorizer_uri #authorizerUri} => String
      #   * {Types::Authorizer#authorizer_credentials #authorizerCredentials} => String
      #   * {Types::Authorizer#identity_source #identitySource} => String
      #   * {Types::Authorizer#identity_validation_expression #identityValidationExpression} => String
      #   * {Types::Authorizer#authorizer_result_ttl_in_seconds #authorizerResultTtlInSeconds} => Integer
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_authorizer({
      #     rest_api_id: "String", # required
      #     name: "String", # required
      #     type: "TOKEN", # required, accepts TOKEN
      #     auth_type: "String",
      #     authorizer_uri: "String", # required
      #     authorizer_credentials: "String",
      #     identity_source: "String", # required
      #     identity_validation_expression: "String",
      #     authorizer_result_ttl_in_seconds: 1,
      #   })
      #
      # @example Response structure
      #   resp.id #=> String
      #   resp.name #=> String
      #   resp.type #=> String, one of "TOKEN"
      #   resp.auth_type #=> String
      #   resp.authorizer_uri #=> String
      #   resp.authorizer_credentials #=> String
      #   resp.identity_source #=> String
      #   resp.identity_validation_expression #=> String
      #   resp.authorizer_result_ttl_in_seconds #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_authorizer(params = {}, options = {})
        req = build_request(:create_authorizer, params)
        req.send_request(options)
      end

      # Creates a new BasePathMapping resource.
      # @option params [required, String] :domain_name
      #   The domain name of the BasePathMapping resource to create.
      # @option params [String] :base_path
      #   The base path name that callers of the API must provide as part of the
      #   URL after the domain name. This value must be unique for all of the
      #   mappings across a single API. Leave this blank if you do not want
      #   callers to specify a base path name after the domain name.
      # @option params [required, String] :rest_api_id
      #   The name of the API that you want to apply this mapping to.
      # @option params [String] :stage
      #   The name of the API\'s stage that you want to use for this mapping.
      #   Leave this blank if you do not want callers to explicitly specify the
      #   stage name after any base path name.
      # @return [Types::BasePathMapping] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::BasePathMapping#base_path #basePath} => String
      #   * {Types::BasePathMapping#rest_api_id #restApiId} => String
      #   * {Types::BasePathMapping#stage #stage} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_base_path_mapping({
      #     domain_name: "String", # required
      #     base_path: "String",
      #     rest_api_id: "String", # required
      #     stage: "String",
      #   })
      #
      # @example Response structure
      #   resp.base_path #=> String
      #   resp.rest_api_id #=> String
      #   resp.stage #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_base_path_mapping(params = {}, options = {})
        req = build_request(:create_base_path_mapping, params)
        req.send_request(options)
      end

      # Creates a Deployment resource, which makes a specified RestApi
      # callable over the internet.
      # @option params [required, String] :rest_api_id
      #   The RestApi resource identifier for the Deployment resource to create.
      # @option params [required, String] :stage_name
      #   The name of the Stage resource for the Deployment resource to create.
      # @option params [String] :stage_description
      #   The description of the Stage resource for the Deployment resource to
      #   create.
      # @option params [String] :description
      #   The description for the Deployment resource to create.
      # @option params [Boolean] :cache_cluster_enabled
      #   Enables a cache cluster for the Stage resource specified in the input.
      # @option params [String] :cache_cluster_size
      #   Specifies the cache cluster size for the Stage resource specified in
      #   the input, if a cache cluster is enabled.
      # @option params [Hash<String,String>] :variables
      #   A map that defines the stage variables for the Stage resource that is
      #   associated with the new deployment. Variable names can have
      #   alphanumeric characters, and the values must match
      #   `[A-Za-z0-9-._~:/?#&=,]+`.
      # @return [Types::Deployment] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Deployment#id #id} => String
      #   * {Types::Deployment#description #description} => String
      #   * {Types::Deployment#created_date #createdDate} => Time
      #   * {Types::Deployment#api_summary #apiSummary} => Hash&lt;String,Hash&lt;String,Types::MethodSnapshot&gt;&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_deployment({
      #     rest_api_id: "String", # required
      #     stage_name: "String", # required
      #     stage_description: "String",
      #     description: "String",
      #     cache_cluster_enabled: false,
      #     cache_cluster_size: "0.5", # accepts 0.5, 1.6, 6.1, 13.5, 28.4, 58.2, 118, 237
      #     variables: {
      #       "String" => "String",
      #     },
      #   })
      #
      # @example Response structure
      #   resp.id #=> String
      #   resp.description #=> String
      #   resp.created_date #=> Time
      #   resp.api_summary #=> Hash
      #   resp.api_summary["String"] #=> Hash
      #   resp.api_summary["String"]["String"].authorization_type #=> String
      #   resp.api_summary["String"]["String"].api_key_required #=> Boolean
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_deployment(params = {}, options = {})
        req = build_request(:create_deployment, params)
        req.send_request(options)
      end

      # Creates a new domain name.
      # @option params [required, String] :domain_name
      #   The name of the DomainName resource.
      # @option params [required, String] :certificate_name
      #   The name of the certificate.
      # @option params [required, String] :certificate_body
      #   The body of the server certificate provided by your certificate
      #   authority.
      # @option params [required, String] :certificate_private_key
      #   Your certificate\'s private key.
      # @option params [required, String] :certificate_chain
      #   The intermediate certificates and optionally the root certificate, one
      #   after the other without any blank lines. If you include the root
      #   certificate, your certificate chain must start with intermediate
      #   certificates and end with the root certificate. Use the intermediate
      #   certificates that were provided by your certificate authority. Do not
      #   include any intermediaries that are not in the chain of trust path.
      # @return [Types::DomainName] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DomainName#domain_name #domainName} => String
      #   * {Types::DomainName#certificate_name #certificateName} => String
      #   * {Types::DomainName#certificate_upload_date #certificateUploadDate} => Time
      #   * {Types::DomainName#distribution_domain_name #distributionDomainName} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_domain_name({
      #     domain_name: "String", # required
      #     certificate_name: "String", # required
      #     certificate_body: "String", # required
      #     certificate_private_key: "String", # required
      #     certificate_chain: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.domain_name #=> String
      #   resp.certificate_name #=> String
      #   resp.certificate_upload_date #=> Time
      #   resp.distribution_domain_name #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_domain_name(params = {}, options = {})
        req = build_request(:create_domain_name, params)
        req.send_request(options)
      end

      # Adds a new Model resource to an existing RestApi resource.
      # @option params [required, String] :rest_api_id
      #   The RestApi identifier under which the Model will be created.
      # @option params [required, String] :name
      #   The name of the model.
      # @option params [String] :description
      #   The description of the model.
      # @option params [String] :schema
      #   The schema for the model. For `application/json` models, this should
      #   be [JSON-schema draft v4][1] model.
      #
      #
      #
      #   [1]: http://json-schema.org/documentation.html
      # @option params [required, String] :content_type
      #   The content-type for the model.
      # @return [Types::Model] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Model#id #id} => String
      #   * {Types::Model#name #name} => String
      #   * {Types::Model#description #description} => String
      #   * {Types::Model#schema #schema} => String
      #   * {Types::Model#content_type #contentType} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_model({
      #     rest_api_id: "String", # required
      #     name: "String", # required
      #     description: "String",
      #     schema: "String",
      #     content_type: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.id #=> String
      #   resp.name #=> String
      #   resp.description #=> String
      #   resp.schema #=> String
      #   resp.content_type #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_model(params = {}, options = {})
        req = build_request(:create_model, params)
        req.send_request(options)
      end

      # Creates a Resource resource.
      # @option params [required, String] :rest_api_id
      #   The identifier of the RestApi for the resource.
      # @option params [required, String] :parent_id
      #   The parent resource\'s identifier.
      # @option params [required, String] :path_part
      #   The last path segment for this resource.
      # @return [Types::Resource] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Resource#id #id} => String
      #   * {Types::Resource#parent_id #parentId} => String
      #   * {Types::Resource#path_part #pathPart} => String
      #   * {Types::Resource#path #path} => String
      #   * {Types::Resource#resource_methods #resourceMethods} => Hash&lt;String,Types::Method&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_resource({
      #     rest_api_id: "String", # required
      #     parent_id: "String", # required
      #     path_part: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.id #=> String
      #   resp.parent_id #=> String
      #   resp.path_part #=> String
      #   resp.path #=> String
      #   resp.resource_methods #=> Hash
      #   resp.resource_methods["String"].http_method #=> String
      #   resp.resource_methods["String"].authorization_type #=> String
      #   resp.resource_methods["String"].authorizer_id #=> String
      #   resp.resource_methods["String"].api_key_required #=> Boolean
      #   resp.resource_methods["String"].request_parameters #=> Hash
      #   resp.resource_methods["String"].request_parameters["String"] #=> Boolean
      #   resp.resource_methods["String"].request_models #=> Hash
      #   resp.resource_methods["String"].request_models["String"] #=> String
      #   resp.resource_methods["String"].method_responses #=> Hash
      #   resp.resource_methods["String"].method_responses["String"].status_code #=> String
      #   resp.resource_methods["String"].method_responses["String"].response_parameters #=> Hash
      #   resp.resource_methods["String"].method_responses["String"].response_parameters["String"] #=> Boolean
      #   resp.resource_methods["String"].method_responses["String"].response_models #=> Hash
      #   resp.resource_methods["String"].method_responses["String"].response_models["String"] #=> String
      #   resp.resource_methods["String"].method_integration.type #=> String, one of "HTTP", "AWS", "MOCK"
      #   resp.resource_methods["String"].method_integration.http_method #=> String
      #   resp.resource_methods["String"].method_integration.uri #=> String
      #   resp.resource_methods["String"].method_integration.credentials #=> String
      #   resp.resource_methods["String"].method_integration.request_parameters #=> Hash
      #   resp.resource_methods["String"].method_integration.request_parameters["String"] #=> String
      #   resp.resource_methods["String"].method_integration.request_templates #=> Hash
      #   resp.resource_methods["String"].method_integration.request_templates["String"] #=> String
      #   resp.resource_methods["String"].method_integration.passthrough_behavior #=> String
      #   resp.resource_methods["String"].method_integration.cache_namespace #=> String
      #   resp.resource_methods["String"].method_integration.cache_key_parameters #=> Array
      #   resp.resource_methods["String"].method_integration.cache_key_parameters[0] #=> String
      #   resp.resource_methods["String"].method_integration.integration_responses #=> Hash
      #   resp.resource_methods["String"].method_integration.integration_responses["String"].status_code #=> String
      #   resp.resource_methods["String"].method_integration.integration_responses["String"].selection_pattern #=> String
      #   resp.resource_methods["String"].method_integration.integration_responses["String"].response_parameters #=> Hash
      #   resp.resource_methods["String"].method_integration.integration_responses["String"].response_parameters["String"] #=> String
      #   resp.resource_methods["String"].method_integration.integration_responses["String"].response_templates #=> Hash
      #   resp.resource_methods["String"].method_integration.integration_responses["String"].response_templates["String"] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_resource(params = {}, options = {})
        req = build_request(:create_resource, params)
        req.send_request(options)
      end

      # Creates a new RestApi resource.
      # @option params [required, String] :name
      #   The name of the RestApi.
      # @option params [String] :description
      #   The description of the RestApi.
      # @option params [String] :clone_from
      #   The Id of the RestApi that you want to clone from.
      # @return [Types::RestApi] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::RestApi#id #id} => String
      #   * {Types::RestApi#name #name} => String
      #   * {Types::RestApi#description #description} => String
      #   * {Types::RestApi#created_date #createdDate} => Time
      #   * {Types::RestApi#warnings #warnings} => Array&lt;String&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_rest_api({
      #     name: "String", # required
      #     description: "String",
      #     clone_from: "String",
      #   })
      #
      # @example Response structure
      #   resp.id #=> String
      #   resp.name #=> String
      #   resp.description #=> String
      #   resp.created_date #=> Time
      #   resp.warnings #=> Array
      #   resp.warnings[0] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_rest_api(params = {}, options = {})
        req = build_request(:create_rest_api, params)
        req.send_request(options)
      end

      # Creates a new Stage resource that references a pre-existing Deployment
      # for the API.
      # @option params [required, String] :rest_api_id
      #   The identifier of the RestApi resource for the Stage resource to
      #   create.
      # @option params [required, String] :stage_name
      #   The name for the Stage resource.
      # @option params [required, String] :deployment_id
      #   The identifier of the Deployment resource for the Stage resource.
      # @option params [String] :description
      #   The description of the Stage resource.
      # @option params [Boolean] :cache_cluster_enabled
      #   Whether cache clustering is enabled for the stage.
      # @option params [String] :cache_cluster_size
      #   The stage\'s cache cluster size.
      # @option params [Hash<String,String>] :variables
      #   A map that defines the stage variables for the new Stage resource.
      #   Variable names can have alphanumeric characters, and the values must
      #   match `[A-Za-z0-9-._~:/?#&=,]+`.
      # @return [Types::Stage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Stage#deployment_id #deploymentId} => String
      #   * {Types::Stage#client_certificate_id #clientCertificateId} => String
      #   * {Types::Stage#stage_name #stageName} => String
      #   * {Types::Stage#description #description} => String
      #   * {Types::Stage#cache_cluster_enabled #cacheClusterEnabled} => Boolean
      #   * {Types::Stage#cache_cluster_size #cacheClusterSize} => String
      #   * {Types::Stage#cache_cluster_status #cacheClusterStatus} => String
      #   * {Types::Stage#method_settings #methodSettings} => Hash&lt;String,Types::MethodSetting&gt;
      #   * {Types::Stage#variables #variables} => Hash&lt;String,String&gt;
      #   * {Types::Stage#created_date #createdDate} => Time
      #   * {Types::Stage#last_updated_date #lastUpdatedDate} => Time
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_stage({
      #     rest_api_id: "String", # required
      #     stage_name: "String", # required
      #     deployment_id: "String", # required
      #     description: "String",
      #     cache_cluster_enabled: false,
      #     cache_cluster_size: "0.5", # accepts 0.5, 1.6, 6.1, 13.5, 28.4, 58.2, 118, 237
      #     variables: {
      #       "String" => "String",
      #     },
      #   })
      #
      # @example Response structure
      #   resp.deployment_id #=> String
      #   resp.client_certificate_id #=> String
      #   resp.stage_name #=> String
      #   resp.description #=> String
      #   resp.cache_cluster_enabled #=> Boolean
      #   resp.cache_cluster_size #=> String, one of "0.5", "1.6", "6.1", "13.5", "28.4", "58.2", "118", "237"
      #   resp.cache_cluster_status #=> String, one of "CREATE_IN_PROGRESS", "AVAILABLE", "DELETE_IN_PROGRESS", "NOT_AVAILABLE", "FLUSH_IN_PROGRESS"
      #   resp.method_settings #=> Hash
      #   resp.method_settings["String"].metrics_enabled #=> Boolean
      #   resp.method_settings["String"].logging_level #=> String
      #   resp.method_settings["String"].data_trace_enabled #=> Boolean
      #   resp.method_settings["String"].throttling_burst_limit #=> Integer
      #   resp.method_settings["String"].throttling_rate_limit #=> Float
      #   resp.method_settings["String"].caching_enabled #=> Boolean
      #   resp.method_settings["String"].cache_ttl_in_seconds #=> Integer
      #   resp.method_settings["String"].cache_data_encrypted #=> Boolean
      #   resp.method_settings["String"].require_authorization_for_cache_control #=> Boolean
      #   resp.method_settings["String"].unauthorized_cache_control_header_strategy #=> String, one of "FAIL_WITH_403", "SUCCEED_WITH_RESPONSE_HEADER", "SUCCEED_WITHOUT_RESPONSE_HEADER"
      #   resp.variables #=> Hash
      #   resp.variables["String"] #=> String
      #   resp.created_date #=> Time
      #   resp.last_updated_date #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_stage(params = {}, options = {})
        req = build_request(:create_stage, params)
        req.send_request(options)
      end

      # Deletes the ApiKey resource.
      # @option params [required, String] :api_key
      #   The identifier of the ApiKey resource to be deleted.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_api_key({
      #     api_key: "String", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_api_key(params = {}, options = {})
        req = build_request(:delete_api_key, params)
        req.send_request(options)
      end

      # Deletes an existing Authorizer resource.
      # @option params [required, String] :rest_api_id
      #   The RestApi identifier for the Authorizer resource.
      # @option params [required, String] :authorizer_id
      #   The identifier of the Authorizer resource.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_authorizer({
      #     rest_api_id: "String", # required
      #     authorizer_id: "String", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_authorizer(params = {}, options = {})
        req = build_request(:delete_authorizer, params)
        req.send_request(options)
      end

      # Deletes the BasePathMapping resource.
      # @option params [required, String] :domain_name
      #   The domain name of the BasePathMapping resource to delete.
      # @option params [required, String] :base_path
      #   The base path name of the BasePathMapping resource to delete.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_base_path_mapping({
      #     domain_name: "String", # required
      #     base_path: "String", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_base_path_mapping(params = {}, options = {})
        req = build_request(:delete_base_path_mapping, params)
        req.send_request(options)
      end

      # Deletes the ClientCertificate resource.
      # @option params [required, String] :client_certificate_id
      #   The identifier of the ClientCertificate resource to be deleted.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_client_certificate({
      #     client_certificate_id: "String", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_client_certificate(params = {}, options = {})
        req = build_request(:delete_client_certificate, params)
        req.send_request(options)
      end

      # Deletes a Deployment resource. Deleting a deployment will only succeed
      # if there are no Stage resources associated with it.
      # @option params [required, String] :rest_api_id
      #   The identifier of the RestApi resource for the Deployment resource to
      #   delete.
      # @option params [required, String] :deployment_id
      #   The identifier of the Deployment resource to delete.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_deployment({
      #     rest_api_id: "String", # required
      #     deployment_id: "String", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_deployment(params = {}, options = {})
        req = build_request(:delete_deployment, params)
        req.send_request(options)
      end

      # Deletes the DomainName resource.
      # @option params [required, String] :domain_name
      #   The name of the DomainName resource to be deleted.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_domain_name({
      #     domain_name: "String", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_domain_name(params = {}, options = {})
        req = build_request(:delete_domain_name, params)
        req.send_request(options)
      end

      # Represents a delete integration.
      # @option params [required, String] :rest_api_id
      #   Specifies a delete integration request\'s API identifier.
      # @option params [required, String] :resource_id
      #   Specifies a delete integration request\'s resource identifier.
      # @option params [required, String] :http_method
      #   Specifies a delete integration request\'s HTTP method.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_integration({
      #     rest_api_id: "String", # required
      #     resource_id: "String", # required
      #     http_method: "String", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_integration(params = {}, options = {})
        req = build_request(:delete_integration, params)
        req.send_request(options)
      end

      # Represents a delete integration response.
      # @option params [required, String] :rest_api_id
      #   Specifies a delete integration response request\'s API identifier.
      # @option params [required, String] :resource_id
      #   Specifies a delete integration response request\'s resource
      #   identifier.
      # @option params [required, String] :http_method
      #   Specifies a delete integration response request\'s HTTP method.
      # @option params [required, String] :status_code
      #   Specifies a delete integration response request\'s status code.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_integration_response({
      #     rest_api_id: "String", # required
      #     resource_id: "String", # required
      #     http_method: "String", # required
      #     status_code: "StatusCode", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_integration_response(params = {}, options = {})
        req = build_request(:delete_integration_response, params)
        req.send_request(options)
      end

      # Deletes an existing Method resource.
      # @option params [required, String] :rest_api_id
      #   The RestApi identifier for the Method resource.
      # @option params [required, String] :resource_id
      #   The Resource identifier for the Method resource.
      # @option params [required, String] :http_method
      #   The HTTP verb that identifies the Method resource.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_method({
      #     rest_api_id: "String", # required
      #     resource_id: "String", # required
      #     http_method: "String", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_method(params = {}, options = {})
        req = build_request(:delete_method, params)
        req.send_request(options)
      end

      # Deletes an existing MethodResponse resource.
      # @option params [required, String] :rest_api_id
      #   The RestApi identifier for the MethodResponse resource.
      # @option params [required, String] :resource_id
      #   The Resource identifier for the MethodResponse resource.
      # @option params [required, String] :http_method
      #   The HTTP verb identifier for the parent Method resource.
      # @option params [required, String] :status_code
      #   The status code identifier for the MethodResponse resource.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_method_response({
      #     rest_api_id: "String", # required
      #     resource_id: "String", # required
      #     http_method: "String", # required
      #     status_code: "StatusCode", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_method_response(params = {}, options = {})
        req = build_request(:delete_method_response, params)
        req.send_request(options)
      end

      # Deletes a model.
      # @option params [required, String] :rest_api_id
      #   The RestApi under which the model will be deleted.
      # @option params [required, String] :model_name
      #   The name of the model to delete.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_model({
      #     rest_api_id: "String", # required
      #     model_name: "String", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_model(params = {}, options = {})
        req = build_request(:delete_model, params)
        req.send_request(options)
      end

      # Deletes a Resource resource.
      # @option params [required, String] :rest_api_id
      #   The RestApi identifier for the Resource resource.
      # @option params [required, String] :resource_id
      #   The identifier of the Resource resource.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_resource({
      #     rest_api_id: "String", # required
      #     resource_id: "String", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_resource(params = {}, options = {})
        req = build_request(:delete_resource, params)
        req.send_request(options)
      end

      # Deletes the specified API.
      # @option params [required, String] :rest_api_id
      #   The ID of the RestApi you want to delete.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_rest_api({
      #     rest_api_id: "String", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_rest_api(params = {}, options = {})
        req = build_request(:delete_rest_api, params)
        req.send_request(options)
      end

      # Deletes a Stage resource.
      # @option params [required, String] :rest_api_id
      #   The identifier of the RestApi resource for the Stage resource to
      #   delete.
      # @option params [required, String] :stage_name
      #   The name of the Stage resource to delete.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_stage({
      #     rest_api_id: "String", # required
      #     stage_name: "String", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_stage(params = {}, options = {})
        req = build_request(:delete_stage, params)
        req.send_request(options)
      end

      # Flushes all authorizer cache entries on a stage.
      # @option params [required, String] :rest_api_id
      #   The API identifier of the stage to flush.
      # @option params [required, String] :stage_name
      #   The name of the stage to flush.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.flush_stage_authorizers_cache({
      #     rest_api_id: "String", # required
      #     stage_name: "String", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def flush_stage_authorizers_cache(params = {}, options = {})
        req = build_request(:flush_stage_authorizers_cache, params)
        req.send_request(options)
      end

      # Flushes a stage\'s cache.
      # @option params [required, String] :rest_api_id
      #   The API identifier of the stage to flush its cache.
      # @option params [required, String] :stage_name
      #   The name of the stage to flush its cache.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.flush_stage_cache({
      #     rest_api_id: "String", # required
      #     stage_name: "String", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def flush_stage_cache(params = {}, options = {})
        req = build_request(:flush_stage_cache, params)
        req.send_request(options)
      end

      # Generates a ClientCertificate resource.
      # @option params [String] :description
      #   The description of the ClientCertificate.
      # @return [Types::ClientCertificate] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ClientCertificate#client_certificate_id #clientCertificateId} => String
      #   * {Types::ClientCertificate#description #description} => String
      #   * {Types::ClientCertificate#pem_encoded_certificate #pemEncodedCertificate} => String
      #   * {Types::ClientCertificate#created_date #createdDate} => Time
      #   * {Types::ClientCertificate#expiration_date #expirationDate} => Time
      #
      # @example Request syntax with placeholder values
      #   resp = client.generate_client_certificate({
      #     description: "String",
      #   })
      #
      # @example Response structure
      #   resp.client_certificate_id #=> String
      #   resp.description #=> String
      #   resp.pem_encoded_certificate #=> String
      #   resp.created_date #=> Time
      #   resp.expiration_date #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def generate_client_certificate(params = {}, options = {})
        req = build_request(:generate_client_certificate, params)
        req.send_request(options)
      end

      # Gets information about the current Account resource.
      # @return [Types::Account] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Account#cloudwatch_role_arn #cloudwatchRoleArn} => String
      #   * {Types::Account#throttle_settings #throttleSettings} => Types::ThrottleSettings
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_account()
      #
      # @example Response structure
      #   resp.cloudwatch_role_arn #=> String
      #   resp.throttle_settings.burst_limit #=> Integer
      #   resp.throttle_settings.rate_limit #=> Float
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_account(params = {}, options = {})
        req = build_request(:get_account, params)
        req.send_request(options)
      end

      # Gets information about the current ApiKey resource.
      # @option params [required, String] :api_key
      #   The identifier of the ApiKey resource.
      # @return [Types::ApiKey] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ApiKey#id #id} => String
      #   * {Types::ApiKey#name #name} => String
      #   * {Types::ApiKey#description #description} => String
      #   * {Types::ApiKey#enabled #enabled} => Boolean
      #   * {Types::ApiKey#stage_keys #stageKeys} => Array&lt;String&gt;
      #   * {Types::ApiKey#created_date #createdDate} => Time
      #   * {Types::ApiKey#last_updated_date #lastUpdatedDate} => Time
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_api_key({
      #     api_key: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.id #=> String
      #   resp.name #=> String
      #   resp.description #=> String
      #   resp.enabled #=> Boolean
      #   resp.stage_keys #=> Array
      #   resp.stage_keys[0] #=> String
      #   resp.created_date #=> Time
      #   resp.last_updated_date #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_api_key(params = {}, options = {})
        req = build_request(:get_api_key, params)
        req.send_request(options)
      end

      # Gets information about the current ApiKeys resource.
      # @option params [String] :position
      #   The position of the current ApiKeys resource to get information about.
      # @option params [Integer] :limit
      #   The maximum number of ApiKeys to get information about.
      # @return [Types::ApiKeys] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ApiKeys#position #position} => String
      #   * {Types::ApiKeys#items #items} => Array&lt;Types::ApiKey&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_api_keys({
      #     position: "String",
      #     limit: 1,
      #   })
      #
      # @example Response structure
      #   resp.position #=> String
      #   resp.items #=> Array
      #   resp.items[0].id #=> String
      #   resp.items[0].name #=> String
      #   resp.items[0].description #=> String
      #   resp.items[0].enabled #=> Boolean
      #   resp.items[0].stage_keys #=> Array
      #   resp.items[0].stage_keys[0] #=> String
      #   resp.items[0].created_date #=> Time
      #   resp.items[0].last_updated_date #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_api_keys(params = {}, options = {})
        req = build_request(:get_api_keys, params)
        req.send_request(options)
      end

      # Describe an existing Authorizer resource.
      # @option params [required, String] :rest_api_id
      #   The RestApi identifier for the Authorizer resource.
      # @option params [required, String] :authorizer_id
      #   The identifier of the Authorizer resource.
      # @return [Types::Authorizer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Authorizer#id #id} => String
      #   * {Types::Authorizer#name #name} => String
      #   * {Types::Authorizer#type #type} => String
      #   * {Types::Authorizer#auth_type #authType} => String
      #   * {Types::Authorizer#authorizer_uri #authorizerUri} => String
      #   * {Types::Authorizer#authorizer_credentials #authorizerCredentials} => String
      #   * {Types::Authorizer#identity_source #identitySource} => String
      #   * {Types::Authorizer#identity_validation_expression #identityValidationExpression} => String
      #   * {Types::Authorizer#authorizer_result_ttl_in_seconds #authorizerResultTtlInSeconds} => Integer
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_authorizer({
      #     rest_api_id: "String", # required
      #     authorizer_id: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.id #=> String
      #   resp.name #=> String
      #   resp.type #=> String, one of "TOKEN"
      #   resp.auth_type #=> String
      #   resp.authorizer_uri #=> String
      #   resp.authorizer_credentials #=> String
      #   resp.identity_source #=> String
      #   resp.identity_validation_expression #=> String
      #   resp.authorizer_result_ttl_in_seconds #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_authorizer(params = {}, options = {})
        req = build_request(:get_authorizer, params)
        req.send_request(options)
      end

      # Describe an existing Authorizers resource.
      # @option params [required, String] :rest_api_id
      #   The RestApi identifier for the Authorizers resource.
      # @option params [String] :position
      #   If not all Authorizer resources in the response were present, the
      #   position will specificy where to start the next page of results.
      # @option params [Integer] :limit
      #   Limit the number of Authorizer resources in the response.
      # @return [Types::Authorizers] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Authorizers#position #position} => String
      #   * {Types::Authorizers#items #items} => Array&lt;Types::Authorizer&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_authorizers({
      #     rest_api_id: "String", # required
      #     position: "String",
      #     limit: 1,
      #   })
      #
      # @example Response structure
      #   resp.position #=> String
      #   resp.items #=> Array
      #   resp.items[0].id #=> String
      #   resp.items[0].name #=> String
      #   resp.items[0].type #=> String, one of "TOKEN"
      #   resp.items[0].auth_type #=> String
      #   resp.items[0].authorizer_uri #=> String
      #   resp.items[0].authorizer_credentials #=> String
      #   resp.items[0].identity_source #=> String
      #   resp.items[0].identity_validation_expression #=> String
      #   resp.items[0].authorizer_result_ttl_in_seconds #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_authorizers(params = {}, options = {})
        req = build_request(:get_authorizers, params)
        req.send_request(options)
      end

      # Describe a BasePathMapping resource.
      # @option params [required, String] :domain_name
      #   The domain name of the BasePathMapping resource to be described.
      # @option params [required, String] :base_path
      #   The base path name that callers of the API must provide as part of the
      #   URL after the domain name. This value must be unique for all of the
      #   mappings across a single API. Leave this blank if you do not want
      #   callers to specify any base path name after the domain name.
      # @return [Types::BasePathMapping] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::BasePathMapping#base_path #basePath} => String
      #   * {Types::BasePathMapping#rest_api_id #restApiId} => String
      #   * {Types::BasePathMapping#stage #stage} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_base_path_mapping({
      #     domain_name: "String", # required
      #     base_path: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.base_path #=> String
      #   resp.rest_api_id #=> String
      #   resp.stage #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_base_path_mapping(params = {}, options = {})
        req = build_request(:get_base_path_mapping, params)
        req.send_request(options)
      end

      # Represents a collection of BasePathMapping resources.
      # @option params [required, String] :domain_name
      #   The domain name of a BasePathMapping resource.
      # @option params [String] :position
      #   The position of the current BasePathMapping resource in the collection
      #   to get information about.
      # @option params [Integer] :limit
      #   The maximum number of BasePathMapping resources in the collection to
      #   get information about. The default limit is 25. It should be an
      #   integer between 1 - 500.
      # @return [Types::BasePathMappings] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::BasePathMappings#position #position} => String
      #   * {Types::BasePathMappings#items #items} => Array&lt;Types::BasePathMapping&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_base_path_mappings({
      #     domain_name: "String", # required
      #     position: "String",
      #     limit: 1,
      #   })
      #
      # @example Response structure
      #   resp.position #=> String
      #   resp.items #=> Array
      #   resp.items[0].base_path #=> String
      #   resp.items[0].rest_api_id #=> String
      #   resp.items[0].stage #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_base_path_mappings(params = {}, options = {})
        req = build_request(:get_base_path_mappings, params)
        req.send_request(options)
      end

      # Gets information about the current ClientCertificate resource.
      # @option params [required, String] :client_certificate_id
      #   The identifier of the ClientCertificate resource to be described.
      # @return [Types::ClientCertificate] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ClientCertificate#client_certificate_id #clientCertificateId} => String
      #   * {Types::ClientCertificate#description #description} => String
      #   * {Types::ClientCertificate#pem_encoded_certificate #pemEncodedCertificate} => String
      #   * {Types::ClientCertificate#created_date #createdDate} => Time
      #   * {Types::ClientCertificate#expiration_date #expirationDate} => Time
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_client_certificate({
      #     client_certificate_id: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.client_certificate_id #=> String
      #   resp.description #=> String
      #   resp.pem_encoded_certificate #=> String
      #   resp.created_date #=> Time
      #   resp.expiration_date #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_client_certificate(params = {}, options = {})
        req = build_request(:get_client_certificate, params)
        req.send_request(options)
      end

      # Gets a collection of ClientCertificate resources.
      # @option params [String] :position
      #   The position of the current ClientCertificate resource in the
      #   collection to get information about.
      # @option params [Integer] :limit
      #   The maximum number of ClientCertificate resources in the collection to
      #   get information about. The default limit is 25. It should be an
      #   integer between 1 - 500.
      # @return [Types::ClientCertificates] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ClientCertificates#position #position} => String
      #   * {Types::ClientCertificates#items #items} => Array&lt;Types::ClientCertificate&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_client_certificates({
      #     position: "String",
      #     limit: 1,
      #   })
      #
      # @example Response structure
      #   resp.position #=> String
      #   resp.items #=> Array
      #   resp.items[0].client_certificate_id #=> String
      #   resp.items[0].description #=> String
      #   resp.items[0].pem_encoded_certificate #=> String
      #   resp.items[0].created_date #=> Time
      #   resp.items[0].expiration_date #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_client_certificates(params = {}, options = {})
        req = build_request(:get_client_certificates, params)
        req.send_request(options)
      end

      # Gets information about a Deployment resource.
      # @option params [required, String] :rest_api_id
      #   The identifier of the RestApi resource for the Deployment resource to
      #   get information about.
      # @option params [required, String] :deployment_id
      #   The identifier of the Deployment resource to get information about.
      # @return [Types::Deployment] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Deployment#id #id} => String
      #   * {Types::Deployment#description #description} => String
      #   * {Types::Deployment#created_date #createdDate} => Time
      #   * {Types::Deployment#api_summary #apiSummary} => Hash&lt;String,Hash&lt;String,Types::MethodSnapshot&gt;&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_deployment({
      #     rest_api_id: "String", # required
      #     deployment_id: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.id #=> String
      #   resp.description #=> String
      #   resp.created_date #=> Time
      #   resp.api_summary #=> Hash
      #   resp.api_summary["String"] #=> Hash
      #   resp.api_summary["String"]["String"].authorization_type #=> String
      #   resp.api_summary["String"]["String"].api_key_required #=> Boolean
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_deployment(params = {}, options = {})
        req = build_request(:get_deployment, params)
        req.send_request(options)
      end

      # Gets information about a Deployments collection.
      # @option params [required, String] :rest_api_id
      #   The identifier of the RestApi resource for the collection of
      #   Deployment resources to get information about.
      # @option params [String] :position
      #   The position of the current Deployment resource in the collection to
      #   get information about.
      # @option params [Integer] :limit
      #   The maximum number of Deployment resources in the collection to get
      #   information about. The default limit is 25. It should be an integer
      #   between 1 - 500.
      # @return [Types::Deployments] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Deployments#position #position} => String
      #   * {Types::Deployments#items #items} => Array&lt;Types::Deployment&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_deployments({
      #     rest_api_id: "String", # required
      #     position: "String",
      #     limit: 1,
      #   })
      #
      # @example Response structure
      #   resp.position #=> String
      #   resp.items #=> Array
      #   resp.items[0].id #=> String
      #   resp.items[0].description #=> String
      #   resp.items[0].created_date #=> Time
      #   resp.items[0].api_summary #=> Hash
      #   resp.items[0].api_summary["String"] #=> Hash
      #   resp.items[0].api_summary["String"]["String"].authorization_type #=> String
      #   resp.items[0].api_summary["String"]["String"].api_key_required #=> Boolean
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_deployments(params = {}, options = {})
        req = build_request(:get_deployments, params)
        req.send_request(options)
      end

      # Represents a domain name that is contained in a simpler, more
      # intuitive URL that can be called.
      # @option params [required, String] :domain_name
      #   The name of the DomainName resource.
      # @return [Types::DomainName] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DomainName#domain_name #domainName} => String
      #   * {Types::DomainName#certificate_name #certificateName} => String
      #   * {Types::DomainName#certificate_upload_date #certificateUploadDate} => Time
      #   * {Types::DomainName#distribution_domain_name #distributionDomainName} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_domain_name({
      #     domain_name: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.domain_name #=> String
      #   resp.certificate_name #=> String
      #   resp.certificate_upload_date #=> Time
      #   resp.distribution_domain_name #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_domain_name(params = {}, options = {})
        req = build_request(:get_domain_name, params)
        req.send_request(options)
      end

      # Represents a collection of DomainName resources.
      # @option params [String] :position
      #   The position of the current domain names to get information about.
      # @option params [Integer] :limit
      #   The maximum number of DomainName resources in the collection to get
      #   information about. The default limit is 25. It should be an integer
      #   between 1 - 500.
      # @return [Types::DomainNames] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DomainNames#position #position} => String
      #   * {Types::DomainNames#items #items} => Array&lt;Types::DomainName&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_domain_names({
      #     position: "String",
      #     limit: 1,
      #   })
      #
      # @example Response structure
      #   resp.position #=> String
      #   resp.items #=> Array
      #   resp.items[0].domain_name #=> String
      #   resp.items[0].certificate_name #=> String
      #   resp.items[0].certificate_upload_date #=> Time
      #   resp.items[0].distribution_domain_name #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_domain_names(params = {}, options = {})
        req = build_request(:get_domain_names, params)
        req.send_request(options)
      end

      # Exports a deployed version of a RestApi in a specified format.
      # @option params [required, String] :rest_api_id
      #   The identifier of the RestApi to be exported.
      # @option params [required, String] :stage_name
      #   The name of the Stage that will be exported.
      # @option params [required, String] :export_type
      #   The type of export. Currently only \'swagger\' is supported.
      # @option params [Hash<String,String>] :parameters
      #   A key-value map of query string parameters that specify properties of
      #   the export, depending on the requested exportType. For exportType
      #   \'swagger\', any combination of the following parameters are
      #   supported: \'integrations\' will export
      #   x-amazon-apigateway-integration extensions \'authorizers\' will export
      #   x-amazon-apigateway-authorizer extensions \'postman\' will export with
      #   Postman extensions, allowing for import to the Postman tool
      # @option params [String] :accepts
      #   The content-type of the export, for example \'application/json\'.
      #   Currently \'application/json\' and \'application/yaml\' are supported
      #   for exportType \'swagger\'. Should be specifed in the \'Accept\'
      #   header for direct API requests.
      # @return [Types::ExportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ExportResponse#content_type #contentType} => String
      #   * {Types::ExportResponse#content_disposition #contentDisposition} => String
      #   * {Types::ExportResponse#body #body} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_export({
      #     rest_api_id: "String", # required
      #     stage_name: "String", # required
      #     export_type: "String", # required
      #     parameters: {
      #       "String" => "String",
      #     },
      #     accepts: "String",
      #   })
      #
      # @example Response structure
      #   resp.content_type #=> String
      #   resp.content_disposition #=> String
      #   resp.body #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_export(params = {}, options = {})
        req = build_request(:get_export, params)
        req.send_request(options)
      end

      # Represents a get integration.
      # @option params [required, String] :rest_api_id
      #   Specifies a get integration request\'s API identifier.
      # @option params [required, String] :resource_id
      #   Specifies a get integration request\'s resource identifier
      # @option params [required, String] :http_method
      #   Specifies a get integration request\'s HTTP method.
      # @return [Types::Integration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Integration#type #type} => String
      #   * {Types::Integration#http_method #httpMethod} => String
      #   * {Types::Integration#uri #uri} => String
      #   * {Types::Integration#credentials #credentials} => String
      #   * {Types::Integration#request_parameters #requestParameters} => Hash&lt;String,String&gt;
      #   * {Types::Integration#request_templates #requestTemplates} => Hash&lt;String,String&gt;
      #   * {Types::Integration#passthrough_behavior #passthroughBehavior} => String
      #   * {Types::Integration#cache_namespace #cacheNamespace} => String
      #   * {Types::Integration#cache_key_parameters #cacheKeyParameters} => Array&lt;String&gt;
      #   * {Types::Integration#integration_responses #integrationResponses} => Hash&lt;String,Types::IntegrationResponse&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_integration({
      #     rest_api_id: "String", # required
      #     resource_id: "String", # required
      #     http_method: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.type #=> String, one of "HTTP", "AWS", "MOCK"
      #   resp.http_method #=> String
      #   resp.uri #=> String
      #   resp.credentials #=> String
      #   resp.request_parameters #=> Hash
      #   resp.request_parameters["String"] #=> String
      #   resp.request_templates #=> Hash
      #   resp.request_templates["String"] #=> String
      #   resp.passthrough_behavior #=> String
      #   resp.cache_namespace #=> String
      #   resp.cache_key_parameters #=> Array
      #   resp.cache_key_parameters[0] #=> String
      #   resp.integration_responses #=> Hash
      #   resp.integration_responses["String"].status_code #=> String
      #   resp.integration_responses["String"].selection_pattern #=> String
      #   resp.integration_responses["String"].response_parameters #=> Hash
      #   resp.integration_responses["String"].response_parameters["String"] #=> String
      #   resp.integration_responses["String"].response_templates #=> Hash
      #   resp.integration_responses["String"].response_templates["String"] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_integration(params = {}, options = {})
        req = build_request(:get_integration, params)
        req.send_request(options)
      end

      # Represents a get integration response.
      # @option params [required, String] :rest_api_id
      #   Specifies a get integration response request\'s API identifier.
      # @option params [required, String] :resource_id
      #   Specifies a get integration response request\'s resource identifier.
      # @option params [required, String] :http_method
      #   Specifies a get integration response request\'s HTTP method.
      # @option params [required, String] :status_code
      #   Specifies a get integration response request\'s status code.
      # @return [Types::IntegrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::IntegrationResponse#status_code #statusCode} => String
      #   * {Types::IntegrationResponse#selection_pattern #selectionPattern} => String
      #   * {Types::IntegrationResponse#response_parameters #responseParameters} => Hash&lt;String,String&gt;
      #   * {Types::IntegrationResponse#response_templates #responseTemplates} => Hash&lt;String,String&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_integration_response({
      #     rest_api_id: "String", # required
      #     resource_id: "String", # required
      #     http_method: "String", # required
      #     status_code: "StatusCode", # required
      #   })
      #
      # @example Response structure
      #   resp.status_code #=> String
      #   resp.selection_pattern #=> String
      #   resp.response_parameters #=> Hash
      #   resp.response_parameters["String"] #=> String
      #   resp.response_templates #=> Hash
      #   resp.response_templates["String"] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_integration_response(params = {}, options = {})
        req = build_request(:get_integration_response, params)
        req.send_request(options)
      end

      # Describe an existing Method resource.
      # @option params [required, String] :rest_api_id
      #   The RestApi identifier for the Method resource.
      # @option params [required, String] :resource_id
      #   The Resource identifier for the Method resource.
      # @option params [required, String] :http_method
      #   Specifies the put method request\'s HTTP method type.
      # @return [Types::Method] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Method#http_method #httpMethod} => String
      #   * {Types::Method#authorization_type #authorizationType} => String
      #   * {Types::Method#authorizer_id #authorizerId} => String
      #   * {Types::Method#api_key_required #apiKeyRequired} => Boolean
      #   * {Types::Method#request_parameters #requestParameters} => Hash&lt;String,Boolean&gt;
      #   * {Types::Method#request_models #requestModels} => Hash&lt;String,String&gt;
      #   * {Types::Method#method_responses #methodResponses} => Hash&lt;String,Types::MethodResponse&gt;
      #   * {Types::Method#method_integration #methodIntegration} => Types::Integration
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_method({
      #     rest_api_id: "String", # required
      #     resource_id: "String", # required
      #     http_method: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.http_method #=> String
      #   resp.authorization_type #=> String
      #   resp.authorizer_id #=> String
      #   resp.api_key_required #=> Boolean
      #   resp.request_parameters #=> Hash
      #   resp.request_parameters["String"] #=> Boolean
      #   resp.request_models #=> Hash
      #   resp.request_models["String"] #=> String
      #   resp.method_responses #=> Hash
      #   resp.method_responses["String"].status_code #=> String
      #   resp.method_responses["String"].response_parameters #=> Hash
      #   resp.method_responses["String"].response_parameters["String"] #=> Boolean
      #   resp.method_responses["String"].response_models #=> Hash
      #   resp.method_responses["String"].response_models["String"] #=> String
      #   resp.method_integration.type #=> String, one of "HTTP", "AWS", "MOCK"
      #   resp.method_integration.http_method #=> String
      #   resp.method_integration.uri #=> String
      #   resp.method_integration.credentials #=> String
      #   resp.method_integration.request_parameters #=> Hash
      #   resp.method_integration.request_parameters["String"] #=> String
      #   resp.method_integration.request_templates #=> Hash
      #   resp.method_integration.request_templates["String"] #=> String
      #   resp.method_integration.passthrough_behavior #=> String
      #   resp.method_integration.cache_namespace #=> String
      #   resp.method_integration.cache_key_parameters #=> Array
      #   resp.method_integration.cache_key_parameters[0] #=> String
      #   resp.method_integration.integration_responses #=> Hash
      #   resp.method_integration.integration_responses["String"].status_code #=> String
      #   resp.method_integration.integration_responses["String"].selection_pattern #=> String
      #   resp.method_integration.integration_responses["String"].response_parameters #=> Hash
      #   resp.method_integration.integration_responses["String"].response_parameters["String"] #=> String
      #   resp.method_integration.integration_responses["String"].response_templates #=> Hash
      #   resp.method_integration.integration_responses["String"].response_templates["String"] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_method(params = {}, options = {})
        req = build_request(:get_method, params)
        req.send_request(options)
      end

      # Describes a MethodResponse resource.
      # @option params [required, String] :rest_api_id
      #   The RestApi identifier for the MethodResponse resource.
      # @option params [required, String] :resource_id
      #   The Resource identifier for the MethodResponse resource.
      # @option params [required, String] :http_method
      #   The HTTP verb identifier for the parent Method resource.
      # @option params [required, String] :status_code
      #   The status code identifier for the MethodResponse resource.
      # @return [Types::MethodResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::MethodResponse#status_code #statusCode} => String
      #   * {Types::MethodResponse#response_parameters #responseParameters} => Hash&lt;String,Boolean&gt;
      #   * {Types::MethodResponse#response_models #responseModels} => Hash&lt;String,String&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_method_response({
      #     rest_api_id: "String", # required
      #     resource_id: "String", # required
      #     http_method: "String", # required
      #     status_code: "StatusCode", # required
      #   })
      #
      # @example Response structure
      #   resp.status_code #=> String
      #   resp.response_parameters #=> Hash
      #   resp.response_parameters["String"] #=> Boolean
      #   resp.response_models #=> Hash
      #   resp.response_models["String"] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_method_response(params = {}, options = {})
        req = build_request(:get_method_response, params)
        req.send_request(options)
      end

      # Describes an existing model defined for a RestApi resource.
      # @option params [required, String] :rest_api_id
      #   The RestApi identifier under which the Model exists.
      # @option params [required, String] :model_name
      #   The name of the model as an identifier.
      # @option params [Boolean] :flatten
      #   Resolves all external model references and returns a flattened model
      #   schema.
      # @return [Types::Model] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Model#id #id} => String
      #   * {Types::Model#name #name} => String
      #   * {Types::Model#description #description} => String
      #   * {Types::Model#schema #schema} => String
      #   * {Types::Model#content_type #contentType} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_model({
      #     rest_api_id: "String", # required
      #     model_name: "String", # required
      #     flatten: false,
      #   })
      #
      # @example Response structure
      #   resp.id #=> String
      #   resp.name #=> String
      #   resp.description #=> String
      #   resp.schema #=> String
      #   resp.content_type #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_model(params = {}, options = {})
        req = build_request(:get_model, params)
        req.send_request(options)
      end

      # Generates a sample mapping template that can be used to transform a
      # payload into the structure of a model.
      # @option params [required, String] :rest_api_id
      #   The ID of the RestApi under which the model exists.
      # @option params [required, String] :model_name
      #   The name of the model for which to generate a template.
      # @return [Types::Template] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Template#value #value} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_model_template({
      #     rest_api_id: "String", # required
      #     model_name: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.value #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_model_template(params = {}, options = {})
        req = build_request(:get_model_template, params)
        req.send_request(options)
      end

      # Describes existing Models defined for a RestApi resource.
      # @option params [required, String] :rest_api_id
      #   The RestApi identifier.
      # @option params [String] :position
      #   The position of the next set of results in the Models resource to get
      #   information about.
      # @option params [Integer] :limit
      #   The maximum number of models in the collection to get information
      #   about. The default limit is 25. It should be an integer between 1 -
      #   500.
      # @return [Types::Models] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Models#position #position} => String
      #   * {Types::Models#items #items} => Array&lt;Types::Model&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_models({
      #     rest_api_id: "String", # required
      #     position: "String",
      #     limit: 1,
      #   })
      #
      # @example Response structure
      #   resp.position #=> String
      #   resp.items #=> Array
      #   resp.items[0].id #=> String
      #   resp.items[0].name #=> String
      #   resp.items[0].description #=> String
      #   resp.items[0].schema #=> String
      #   resp.items[0].content_type #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_models(params = {}, options = {})
        req = build_request(:get_models, params)
        req.send_request(options)
      end

      # Lists information about a resource.
      # @option params [required, String] :rest_api_id
      #   The RestApi identifier for the resource.
      # @option params [required, String] :resource_id
      #   The identifier for the Resource resource.
      # @return [Types::Resource] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Resource#id #id} => String
      #   * {Types::Resource#parent_id #parentId} => String
      #   * {Types::Resource#path_part #pathPart} => String
      #   * {Types::Resource#path #path} => String
      #   * {Types::Resource#resource_methods #resourceMethods} => Hash&lt;String,Types::Method&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_resource({
      #     rest_api_id: "String", # required
      #     resource_id: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.id #=> String
      #   resp.parent_id #=> String
      #   resp.path_part #=> String
      #   resp.path #=> String
      #   resp.resource_methods #=> Hash
      #   resp.resource_methods["String"].http_method #=> String
      #   resp.resource_methods["String"].authorization_type #=> String
      #   resp.resource_methods["String"].authorizer_id #=> String
      #   resp.resource_methods["String"].api_key_required #=> Boolean
      #   resp.resource_methods["String"].request_parameters #=> Hash
      #   resp.resource_methods["String"].request_parameters["String"] #=> Boolean
      #   resp.resource_methods["String"].request_models #=> Hash
      #   resp.resource_methods["String"].request_models["String"] #=> String
      #   resp.resource_methods["String"].method_responses #=> Hash
      #   resp.resource_methods["String"].method_responses["String"].status_code #=> String
      #   resp.resource_methods["String"].method_responses["String"].response_parameters #=> Hash
      #   resp.resource_methods["String"].method_responses["String"].response_parameters["String"] #=> Boolean
      #   resp.resource_methods["String"].method_responses["String"].response_models #=> Hash
      #   resp.resource_methods["String"].method_responses["String"].response_models["String"] #=> String
      #   resp.resource_methods["String"].method_integration.type #=> String, one of "HTTP", "AWS", "MOCK"
      #   resp.resource_methods["String"].method_integration.http_method #=> String
      #   resp.resource_methods["String"].method_integration.uri #=> String
      #   resp.resource_methods["String"].method_integration.credentials #=> String
      #   resp.resource_methods["String"].method_integration.request_parameters #=> Hash
      #   resp.resource_methods["String"].method_integration.request_parameters["String"] #=> String
      #   resp.resource_methods["String"].method_integration.request_templates #=> Hash
      #   resp.resource_methods["String"].method_integration.request_templates["String"] #=> String
      #   resp.resource_methods["String"].method_integration.passthrough_behavior #=> String
      #   resp.resource_methods["String"].method_integration.cache_namespace #=> String
      #   resp.resource_methods["String"].method_integration.cache_key_parameters #=> Array
      #   resp.resource_methods["String"].method_integration.cache_key_parameters[0] #=> String
      #   resp.resource_methods["String"].method_integration.integration_responses #=> Hash
      #   resp.resource_methods["String"].method_integration.integration_responses["String"].status_code #=> String
      #   resp.resource_methods["String"].method_integration.integration_responses["String"].selection_pattern #=> String
      #   resp.resource_methods["String"].method_integration.integration_responses["String"].response_parameters #=> Hash
      #   resp.resource_methods["String"].method_integration.integration_responses["String"].response_parameters["String"] #=> String
      #   resp.resource_methods["String"].method_integration.integration_responses["String"].response_templates #=> Hash
      #   resp.resource_methods["String"].method_integration.integration_responses["String"].response_templates["String"] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_resource(params = {}, options = {})
        req = build_request(:get_resource, params)
        req.send_request(options)
      end

      # Lists information about a collection of Resource resources.
      # @option params [required, String] :rest_api_id
      #   The RestApi identifier for the Resource.
      # @option params [String] :position
      #   The position of the next set of results in the current Resources
      #   resource to get information about.
      # @option params [Integer] :limit
      #   The maximum number of Resource resources in the collection to get
      #   information about. The default limit is 25. It should be an integer
      #   between 1 - 500.
      # @return [Types::Resources] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Resources#position #position} => String
      #   * {Types::Resources#items #items} => Array&lt;Types::Resource&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_resources({
      #     rest_api_id: "String", # required
      #     position: "String",
      #     limit: 1,
      #   })
      #
      # @example Response structure
      #   resp.position #=> String
      #   resp.items #=> Array
      #   resp.items[0].id #=> String
      #   resp.items[0].parent_id #=> String
      #   resp.items[0].path_part #=> String
      #   resp.items[0].path #=> String
      #   resp.items[0].resource_methods #=> Hash
      #   resp.items[0].resource_methods["String"].http_method #=> String
      #   resp.items[0].resource_methods["String"].authorization_type #=> String
      #   resp.items[0].resource_methods["String"].authorizer_id #=> String
      #   resp.items[0].resource_methods["String"].api_key_required #=> Boolean
      #   resp.items[0].resource_methods["String"].request_parameters #=> Hash
      #   resp.items[0].resource_methods["String"].request_parameters["String"] #=> Boolean
      #   resp.items[0].resource_methods["String"].request_models #=> Hash
      #   resp.items[0].resource_methods["String"].request_models["String"] #=> String
      #   resp.items[0].resource_methods["String"].method_responses #=> Hash
      #   resp.items[0].resource_methods["String"].method_responses["String"].status_code #=> String
      #   resp.items[0].resource_methods["String"].method_responses["String"].response_parameters #=> Hash
      #   resp.items[0].resource_methods["String"].method_responses["String"].response_parameters["String"] #=> Boolean
      #   resp.items[0].resource_methods["String"].method_responses["String"].response_models #=> Hash
      #   resp.items[0].resource_methods["String"].method_responses["String"].response_models["String"] #=> String
      #   resp.items[0].resource_methods["String"].method_integration.type #=> String, one of "HTTP", "AWS", "MOCK"
      #   resp.items[0].resource_methods["String"].method_integration.http_method #=> String
      #   resp.items[0].resource_methods["String"].method_integration.uri #=> String
      #   resp.items[0].resource_methods["String"].method_integration.credentials #=> String
      #   resp.items[0].resource_methods["String"].method_integration.request_parameters #=> Hash
      #   resp.items[0].resource_methods["String"].method_integration.request_parameters["String"] #=> String
      #   resp.items[0].resource_methods["String"].method_integration.request_templates #=> Hash
      #   resp.items[0].resource_methods["String"].method_integration.request_templates["String"] #=> String
      #   resp.items[0].resource_methods["String"].method_integration.passthrough_behavior #=> String
      #   resp.items[0].resource_methods["String"].method_integration.cache_namespace #=> String
      #   resp.items[0].resource_methods["String"].method_integration.cache_key_parameters #=> Array
      #   resp.items[0].resource_methods["String"].method_integration.cache_key_parameters[0] #=> String
      #   resp.items[0].resource_methods["String"].method_integration.integration_responses #=> Hash
      #   resp.items[0].resource_methods["String"].method_integration.integration_responses["String"].status_code #=> String
      #   resp.items[0].resource_methods["String"].method_integration.integration_responses["String"].selection_pattern #=> String
      #   resp.items[0].resource_methods["String"].method_integration.integration_responses["String"].response_parameters #=> Hash
      #   resp.items[0].resource_methods["String"].method_integration.integration_responses["String"].response_parameters["String"] #=> String
      #   resp.items[0].resource_methods["String"].method_integration.integration_responses["String"].response_templates #=> Hash
      #   resp.items[0].resource_methods["String"].method_integration.integration_responses["String"].response_templates["String"] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_resources(params = {}, options = {})
        req = build_request(:get_resources, params)
        req.send_request(options)
      end

      # Lists the RestApi resource in the collection.
      # @option params [required, String] :rest_api_id
      #   The identifier of the RestApi resource.
      # @return [Types::RestApi] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::RestApi#id #id} => String
      #   * {Types::RestApi#name #name} => String
      #   * {Types::RestApi#description #description} => String
      #   * {Types::RestApi#created_date #createdDate} => Time
      #   * {Types::RestApi#warnings #warnings} => Array&lt;String&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_rest_api({
      #     rest_api_id: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.id #=> String
      #   resp.name #=> String
      #   resp.description #=> String
      #   resp.created_date #=> Time
      #   resp.warnings #=> Array
      #   resp.warnings[0] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_rest_api(params = {}, options = {})
        req = build_request(:get_rest_api, params)
        req.send_request(options)
      end

      # Lists the RestApis resources for your collection.
      # @option params [String] :position
      #   The position of the current RestApis resource in the collection to get
      #   information about.
      # @option params [Integer] :limit
      #   The maximum number of RestApi resources in the collection to get
      #   information about. The default limit is 25. It should be an integer
      #   between 1 - 500.
      # @return [Types::RestApis] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::RestApis#position #position} => String
      #   * {Types::RestApis#items #items} => Array&lt;Types::RestApi&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_rest_apis({
      #     position: "String",
      #     limit: 1,
      #   })
      #
      # @example Response structure
      #   resp.position #=> String
      #   resp.items #=> Array
      #   resp.items[0].id #=> String
      #   resp.items[0].name #=> String
      #   resp.items[0].description #=> String
      #   resp.items[0].created_date #=> Time
      #   resp.items[0].warnings #=> Array
      #   resp.items[0].warnings[0] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_rest_apis(params = {}, options = {})
        req = build_request(:get_rest_apis, params)
        req.send_request(options)
      end

      # Generates a client SDK for a RestApi and Stage.
      # @option params [required, String] :rest_api_id
      #   The identifier of the RestApi that the SDK will use.
      # @option params [required, String] :stage_name
      #   The name of the Stage that the SDK will use.
      # @option params [required, String] :sdk_type
      #   The language for the generated SDK. Currently javascript, android, and
      #   objectivec (for iOS) are supported.
      # @option params [Hash<String,String>] :parameters
      #   A key-value map of query string parameters that specify properties of
      #   the SDK, depending on the requested sdkType. For sdkType
      #   \'objectivec\', a parameter named \"classPrefix\" is required. For
      #   sdkType \'android\', parameters named \"groupId\", \"artifactId\",
      #   \"artifactVersion\", and \"invokerPackage\" are required.
      # @return [Types::SdkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::SdkResponse#content_type #contentType} => String
      #   * {Types::SdkResponse#content_disposition #contentDisposition} => String
      #   * {Types::SdkResponse#body #body} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_sdk({
      #     rest_api_id: "String", # required
      #     stage_name: "String", # required
      #     sdk_type: "String", # required
      #     parameters: {
      #       "String" => "String",
      #     },
      #   })
      #
      # @example Response structure
      #   resp.content_type #=> String
      #   resp.content_disposition #=> String
      #   resp.body #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_sdk(params = {}, options = {})
        req = build_request(:get_sdk, params)
        req.send_request(options)
      end

      # Gets information about a Stage resource.
      # @option params [required, String] :rest_api_id
      #   The identifier of the RestApi resource for the Stage resource to get
      #   information about.
      # @option params [required, String] :stage_name
      #   The name of the Stage resource to get information about.
      # @return [Types::Stage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Stage#deployment_id #deploymentId} => String
      #   * {Types::Stage#client_certificate_id #clientCertificateId} => String
      #   * {Types::Stage#stage_name #stageName} => String
      #   * {Types::Stage#description #description} => String
      #   * {Types::Stage#cache_cluster_enabled #cacheClusterEnabled} => Boolean
      #   * {Types::Stage#cache_cluster_size #cacheClusterSize} => String
      #   * {Types::Stage#cache_cluster_status #cacheClusterStatus} => String
      #   * {Types::Stage#method_settings #methodSettings} => Hash&lt;String,Types::MethodSetting&gt;
      #   * {Types::Stage#variables #variables} => Hash&lt;String,String&gt;
      #   * {Types::Stage#created_date #createdDate} => Time
      #   * {Types::Stage#last_updated_date #lastUpdatedDate} => Time
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_stage({
      #     rest_api_id: "String", # required
      #     stage_name: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.deployment_id #=> String
      #   resp.client_certificate_id #=> String
      #   resp.stage_name #=> String
      #   resp.description #=> String
      #   resp.cache_cluster_enabled #=> Boolean
      #   resp.cache_cluster_size #=> String, one of "0.5", "1.6", "6.1", "13.5", "28.4", "58.2", "118", "237"
      #   resp.cache_cluster_status #=> String, one of "CREATE_IN_PROGRESS", "AVAILABLE", "DELETE_IN_PROGRESS", "NOT_AVAILABLE", "FLUSH_IN_PROGRESS"
      #   resp.method_settings #=> Hash
      #   resp.method_settings["String"].metrics_enabled #=> Boolean
      #   resp.method_settings["String"].logging_level #=> String
      #   resp.method_settings["String"].data_trace_enabled #=> Boolean
      #   resp.method_settings["String"].throttling_burst_limit #=> Integer
      #   resp.method_settings["String"].throttling_rate_limit #=> Float
      #   resp.method_settings["String"].caching_enabled #=> Boolean
      #   resp.method_settings["String"].cache_ttl_in_seconds #=> Integer
      #   resp.method_settings["String"].cache_data_encrypted #=> Boolean
      #   resp.method_settings["String"].require_authorization_for_cache_control #=> Boolean
      #   resp.method_settings["String"].unauthorized_cache_control_header_strategy #=> String, one of "FAIL_WITH_403", "SUCCEED_WITH_RESPONSE_HEADER", "SUCCEED_WITHOUT_RESPONSE_HEADER"
      #   resp.variables #=> Hash
      #   resp.variables["String"] #=> String
      #   resp.created_date #=> Time
      #   resp.last_updated_date #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_stage(params = {}, options = {})
        req = build_request(:get_stage, params)
        req.send_request(options)
      end

      # Gets information about one or more Stage resources.
      # @option params [required, String] :rest_api_id
      #   The stages\' API identifiers.
      # @option params [String] :deployment_id
      #   The stages\' deployment identifiers.
      # @return [Types::Stages] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Stages#item #item} => Array&lt;Types::Stage&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_stages({
      #     rest_api_id: "String", # required
      #     deployment_id: "String",
      #   })
      #
      # @example Response structure
      #   resp.item #=> Array
      #   resp.item[0].deployment_id #=> String
      #   resp.item[0].client_certificate_id #=> String
      #   resp.item[0].stage_name #=> String
      #   resp.item[0].description #=> String
      #   resp.item[0].cache_cluster_enabled #=> Boolean
      #   resp.item[0].cache_cluster_size #=> String, one of "0.5", "1.6", "6.1", "13.5", "28.4", "58.2", "118", "237"
      #   resp.item[0].cache_cluster_status #=> String, one of "CREATE_IN_PROGRESS", "AVAILABLE", "DELETE_IN_PROGRESS", "NOT_AVAILABLE", "FLUSH_IN_PROGRESS"
      #   resp.item[0].method_settings #=> Hash
      #   resp.item[0].method_settings["String"].metrics_enabled #=> Boolean
      #   resp.item[0].method_settings["String"].logging_level #=> String
      #   resp.item[0].method_settings["String"].data_trace_enabled #=> Boolean
      #   resp.item[0].method_settings["String"].throttling_burst_limit #=> Integer
      #   resp.item[0].method_settings["String"].throttling_rate_limit #=> Float
      #   resp.item[0].method_settings["String"].caching_enabled #=> Boolean
      #   resp.item[0].method_settings["String"].cache_ttl_in_seconds #=> Integer
      #   resp.item[0].method_settings["String"].cache_data_encrypted #=> Boolean
      #   resp.item[0].method_settings["String"].require_authorization_for_cache_control #=> Boolean
      #   resp.item[0].method_settings["String"].unauthorized_cache_control_header_strategy #=> String, one of "FAIL_WITH_403", "SUCCEED_WITH_RESPONSE_HEADER", "SUCCEED_WITHOUT_RESPONSE_HEADER"
      #   resp.item[0].variables #=> Hash
      #   resp.item[0].variables["String"] #=> String
      #   resp.item[0].created_date #=> Time
      #   resp.item[0].last_updated_date #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_stages(params = {}, options = {})
        req = build_request(:get_stages, params)
        req.send_request(options)
      end

      # A feature of the Amazon API Gateway control service for creating a new
      # API from an external API definition file.
      # @option params [Boolean] :fail_on_warnings
      #   A query parameter to indicate whether to rollback the API creation
      #   (`true`) or not (`false`) when a warning is encountered. The default
      #   value is `false`.
      # @option params [Hash<String,String>] :parameters
      #   Custom header parameters as part of the request.
      # @option params [required, String, IO] :body
      #   The POST request body containing external API definitions. Currently,
      #   only Swagger definition JSON files are supported.
      # @return [Types::RestApi] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::RestApi#id #id} => String
      #   * {Types::RestApi#name #name} => String
      #   * {Types::RestApi#description #description} => String
      #   * {Types::RestApi#created_date #createdDate} => Time
      #   * {Types::RestApi#warnings #warnings} => Array&lt;String&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.import_rest_api({
      #     fail_on_warnings: false,
      #     parameters: {
      #       "String" => "String",
      #     },
      #     body: "data", # required
      #   })
      #
      # @example Response structure
      #   resp.id #=> String
      #   resp.name #=> String
      #   resp.description #=> String
      #   resp.created_date #=> Time
      #   resp.warnings #=> Array
      #   resp.warnings[0] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def import_rest_api(params = {}, options = {})
        req = build_request(:import_rest_api, params)
        req.send_request(options)
      end

      # Represents a put integration.
      # @option params [required, String] :rest_api_id
      #   Specifies a put integration request\'s API identifier.
      # @option params [required, String] :resource_id
      #   Specifies a put integration request\'s resource ID.
      # @option params [required, String] :http_method
      #   Specifies a put integration request\'s HTTP method.
      # @option params [required, String] :type
      #   Specifies a put integration input\'s type.
      # @option params [String] :integration_http_method
      #   Specifies a put integration HTTP method. When the integration type is
      #   HTTP or AWS, this field is required.
      # @option params [String] :uri
      #   Specifies a put integration input\'s Uniform Resource Identifier
      #   (URI). When the integration type is HTTP or AWS, this field is
      #   required. For integration with Lambda as an AWS service proxy, this
      #   value is of the
      #   \'arn:aws:apigateway:&lt;region&gt;\:lambda:path/2015-03-31/functions/&lt;functionArn&gt;/invocations\'
      #   format.
      # @option params [String] :credentials
      #   Specifies whether credentials are required for a put integration.
      # @option params [Hash<String,String>] :request_parameters
      #   Represents request parameters that are sent with the backend request.
      #   Request parameters are represented as a key/value map, with a
      #   destination as the key and a source as the value. A source must match
      #   an existing method request parameter, or a static value. Static values
      #   must be enclosed with single quotes, and be pre-encoded based on their
      #   destination in the request. The destination must match the pattern
      #   `integration.request.\{location\}.\{name\}`, where `location` is
      #   either querystring, path, or header. `name` must be a valid, unique
      #   parameter name.
      # @option params [Hash<String,String>] :request_templates
      #   Represents a map of Velocity templates that are applied on the request
      #   payload based on the value of the Content-Type header sent by the
      #   client. The content type value is the key in this map, and the
      #   template (as a String) is the value.
      # @option params [String] :passthrough_behavior
      #   Specifies the pass-through behavior for incoming requests based on the
      #   Content-Type header in the request, and the available requestTemplates
      #   defined on the Integration. There are three valid values:
      #   `WHEN_NO_MATCH`, `WHEN_NO_TEMPLATES`, and `NEVER`.
      #
      #
      #
      #   `WHEN_NO_MATCH` passes the request body for unmapped content types
      #   through to the Integration backend without transformation.
      #
      #   `NEVER` rejects unmapped content types with an HTTP 415 \'Unsupported
      #   Media Type\' response.
      #
      #   `WHEN_NO_TEMPLATES` will allow pass-through when the Integration has
      #   NO content types mapped to templates. However if there is at least one
      #   content type defined, unmapped content types will be rejected with the
      #   same 415 response.
      # @option params [String] :cache_namespace
      #   Specifies a put integration input\'s cache namespace.
      # @option params [Array<String>] :cache_key_parameters
      #   Specifies a put integration input\'s cache key parameters.
      # @return [Types::Integration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Integration#type #type} => String
      #   * {Types::Integration#http_method #httpMethod} => String
      #   * {Types::Integration#uri #uri} => String
      #   * {Types::Integration#credentials #credentials} => String
      #   * {Types::Integration#request_parameters #requestParameters} => Hash&lt;String,String&gt;
      #   * {Types::Integration#request_templates #requestTemplates} => Hash&lt;String,String&gt;
      #   * {Types::Integration#passthrough_behavior #passthroughBehavior} => String
      #   * {Types::Integration#cache_namespace #cacheNamespace} => String
      #   * {Types::Integration#cache_key_parameters #cacheKeyParameters} => Array&lt;String&gt;
      #   * {Types::Integration#integration_responses #integrationResponses} => Hash&lt;String,Types::IntegrationResponse&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_integration({
      #     rest_api_id: "String", # required
      #     resource_id: "String", # required
      #     http_method: "String", # required
      #     type: "HTTP", # required, accepts HTTP, AWS, MOCK
      #     integration_http_method: "String",
      #     uri: "String",
      #     credentials: "String",
      #     request_parameters: {
      #       "String" => "String",
      #     },
      #     request_templates: {
      #       "String" => "String",
      #     },
      #     passthrough_behavior: "String",
      #     cache_namespace: "String",
      #     cache_key_parameters: ["String"],
      #   })
      #
      # @example Response structure
      #   resp.type #=> String, one of "HTTP", "AWS", "MOCK"
      #   resp.http_method #=> String
      #   resp.uri #=> String
      #   resp.credentials #=> String
      #   resp.request_parameters #=> Hash
      #   resp.request_parameters["String"] #=> String
      #   resp.request_templates #=> Hash
      #   resp.request_templates["String"] #=> String
      #   resp.passthrough_behavior #=> String
      #   resp.cache_namespace #=> String
      #   resp.cache_key_parameters #=> Array
      #   resp.cache_key_parameters[0] #=> String
      #   resp.integration_responses #=> Hash
      #   resp.integration_responses["String"].status_code #=> String
      #   resp.integration_responses["String"].selection_pattern #=> String
      #   resp.integration_responses["String"].response_parameters #=> Hash
      #   resp.integration_responses["String"].response_parameters["String"] #=> String
      #   resp.integration_responses["String"].response_templates #=> Hash
      #   resp.integration_responses["String"].response_templates["String"] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def put_integration(params = {}, options = {})
        req = build_request(:put_integration, params)
        req.send_request(options)
      end

      # Represents a put integration.
      # @option params [required, String] :rest_api_id
      #   Specifies a put integration response request\'s API identifier.
      # @option params [required, String] :resource_id
      #   Specifies a put integration response request\'s resource identifier.
      # @option params [required, String] :http_method
      #   Specifies a put integration response request\'s HTTP method.
      # @option params [required, String] :status_code
      #   Specifies the status code that is used to map the integration response
      #   to an existing MethodResponse.
      # @option params [String] :selection_pattern
      #   Specifies the selection pattern of a put integration response.
      # @option params [Hash<String,String>] :response_parameters
      #   Represents response parameters that can be read from the backend
      #   response. Response parameters are represented as a key/value map, with
      #   a destination as the key and a source as the value. A destination must
      #   match an existing response parameter in the Method. The source can be
      #   a header from the backend response, or a static value. Static values
      #   are specified using enclosing single quotes, and backend response
      #   headers can be read using the pattern
      #   `integration.response.header.\{name\}`.
      # @option params [Hash<String,String>] :response_templates
      #   Specifies a put integration response\'s templates.
      # @return [Types::IntegrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::IntegrationResponse#status_code #statusCode} => String
      #   * {Types::IntegrationResponse#selection_pattern #selectionPattern} => String
      #   * {Types::IntegrationResponse#response_parameters #responseParameters} => Hash&lt;String,String&gt;
      #   * {Types::IntegrationResponse#response_templates #responseTemplates} => Hash&lt;String,String&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_integration_response({
      #     rest_api_id: "String", # required
      #     resource_id: "String", # required
      #     http_method: "String", # required
      #     status_code: "StatusCode", # required
      #     selection_pattern: "String",
      #     response_parameters: {
      #       "String" => "String",
      #     },
      #     response_templates: {
      #       "String" => "String",
      #     },
      #   })
      #
      # @example Response structure
      #   resp.status_code #=> String
      #   resp.selection_pattern #=> String
      #   resp.response_parameters #=> Hash
      #   resp.response_parameters["String"] #=> String
      #   resp.response_templates #=> Hash
      #   resp.response_templates["String"] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def put_integration_response(params = {}, options = {})
        req = build_request(:put_integration_response, params)
        req.send_request(options)
      end

      # Add a method to an existing Resource resource.
      # @option params [required, String] :rest_api_id
      #   The RestApi identifier for the new Method resource.
      # @option params [required, String] :resource_id
      #   The Resource identifier for the new Method resource.
      # @option params [required, String] :http_method
      #   Specifies the put method request\'s HTTP method type.
      # @option params [required, String] :authorization_type
      #   Specifies the type of authorization used for the method.
      # @option params [String] :authorizer_id
      #   Specifies the identifier of an Authorizer to use on this Method, if
      #   the type is CUSTOM.
      # @option params [Boolean] :api_key_required
      #   Specifies whether the method required a valid ApiKey.
      # @option params [Hash<String,Boolean>] :request_parameters
      #   Represents requests parameters that are sent with the backend request.
      #   Request parameters are represented as a key/value map, with a
      #   destination as the key and a source as the value. A source must match
      #   an existing method request parameter, or a static value. Static values
      #   must be enclosed with single quotes, and be pre-encoded based on their
      #   destination in the request. The destination must match the pattern
      #   `integration.request.\{location\}.\{name\}`, where `location` is
      #   either querystring, path, or header. `name` must be a valid, unique
      #   parameter name.
      # @option params [Hash<String,String>] :request_models
      #   Specifies the Model resources used for the request\'s content type.
      #   Request models are represented as a key/value map, with a content type
      #   as the key and a Model name as the value.
      # @return [Types::Method] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Method#http_method #httpMethod} => String
      #   * {Types::Method#authorization_type #authorizationType} => String
      #   * {Types::Method#authorizer_id #authorizerId} => String
      #   * {Types::Method#api_key_required #apiKeyRequired} => Boolean
      #   * {Types::Method#request_parameters #requestParameters} => Hash&lt;String,Boolean&gt;
      #   * {Types::Method#request_models #requestModels} => Hash&lt;String,String&gt;
      #   * {Types::Method#method_responses #methodResponses} => Hash&lt;String,Types::MethodResponse&gt;
      #   * {Types::Method#method_integration #methodIntegration} => Types::Integration
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_method({
      #     rest_api_id: "String", # required
      #     resource_id: "String", # required
      #     http_method: "String", # required
      #     authorization_type: "String", # required
      #     authorizer_id: "String",
      #     api_key_required: false,
      #     request_parameters: {
      #       "String" => false,
      #     },
      #     request_models: {
      #       "String" => "String",
      #     },
      #   })
      #
      # @example Response structure
      #   resp.http_method #=> String
      #   resp.authorization_type #=> String
      #   resp.authorizer_id #=> String
      #   resp.api_key_required #=> Boolean
      #   resp.request_parameters #=> Hash
      #   resp.request_parameters["String"] #=> Boolean
      #   resp.request_models #=> Hash
      #   resp.request_models["String"] #=> String
      #   resp.method_responses #=> Hash
      #   resp.method_responses["String"].status_code #=> String
      #   resp.method_responses["String"].response_parameters #=> Hash
      #   resp.method_responses["String"].response_parameters["String"] #=> Boolean
      #   resp.method_responses["String"].response_models #=> Hash
      #   resp.method_responses["String"].response_models["String"] #=> String
      #   resp.method_integration.type #=> String, one of "HTTP", "AWS", "MOCK"
      #   resp.method_integration.http_method #=> String
      #   resp.method_integration.uri #=> String
      #   resp.method_integration.credentials #=> String
      #   resp.method_integration.request_parameters #=> Hash
      #   resp.method_integration.request_parameters["String"] #=> String
      #   resp.method_integration.request_templates #=> Hash
      #   resp.method_integration.request_templates["String"] #=> String
      #   resp.method_integration.passthrough_behavior #=> String
      #   resp.method_integration.cache_namespace #=> String
      #   resp.method_integration.cache_key_parameters #=> Array
      #   resp.method_integration.cache_key_parameters[0] #=> String
      #   resp.method_integration.integration_responses #=> Hash
      #   resp.method_integration.integration_responses["String"].status_code #=> String
      #   resp.method_integration.integration_responses["String"].selection_pattern #=> String
      #   resp.method_integration.integration_responses["String"].response_parameters #=> Hash
      #   resp.method_integration.integration_responses["String"].response_parameters["String"] #=> String
      #   resp.method_integration.integration_responses["String"].response_templates #=> Hash
      #   resp.method_integration.integration_responses["String"].response_templates["String"] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def put_method(params = {}, options = {})
        req = build_request(:put_method, params)
        req.send_request(options)
      end

      # Adds a MethodResponse to an existing Method resource.
      # @option params [required, String] :rest_api_id
      #   The RestApi identifier for the Method resource.
      # @option params [required, String] :resource_id
      #   The Resource identifier for the Method resource.
      # @option params [required, String] :http_method
      #   The HTTP verb that identifies the Method resource.
      # @option params [required, String] :status_code
      #   The method response\'s status code.
      # @option params [Hash<String,Boolean>] :response_parameters
      #   Represents response parameters that can be sent back to the caller by
      #   Amazon API Gateway. Response parameters are represented as a key/value
      #   map, with a destination as the key and a Boolean flag as the value.
      #   The Boolean flag is used to specify whether the parameter is required.
      #   A destination must match the pattern
      #   `method.response.header.\{name\}`, where `name` is a valid, unique
      #   header name. Destinations specified here are available to the
      #   integration for mapping from integration response parameters.
      # @option params [Hash<String,String>] :response_models
      #   Specifies the Model resources used for the response\'s content type.
      #   Response models are represented as a key/value map, with a content
      #   type as the key and a Model name as the value.
      # @return [Types::MethodResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::MethodResponse#status_code #statusCode} => String
      #   * {Types::MethodResponse#response_parameters #responseParameters} => Hash&lt;String,Boolean&gt;
      #   * {Types::MethodResponse#response_models #responseModels} => Hash&lt;String,String&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_method_response({
      #     rest_api_id: "String", # required
      #     resource_id: "String", # required
      #     http_method: "String", # required
      #     status_code: "StatusCode", # required
      #     response_parameters: {
      #       "String" => false,
      #     },
      #     response_models: {
      #       "String" => "String",
      #     },
      #   })
      #
      # @example Response structure
      #   resp.status_code #=> String
      #   resp.response_parameters #=> Hash
      #   resp.response_parameters["String"] #=> Boolean
      #   resp.response_models #=> Hash
      #   resp.response_models["String"] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def put_method_response(params = {}, options = {})
        req = build_request(:put_method_response, params)
        req.send_request(options)
      end

      # A feature of the Amazon API Gateway control service for updating an
      # existing API with an input of external API definitions. The update can
      # take the form of merging the supplied definition into the existing API
      # or overwriting the existing API.
      # @option params [required, String] :rest_api_id
      #   The identifier of the RestApi to be updated.
      # @option params [String] :mode
      #   The `mode` query parameter to specify the update mode. Valid values
      #   are \"merge\" and \"overwrite\". By default, the update mode is
      #   \"merge\".
      # @option params [Boolean] :fail_on_warnings
      #   A query parameter to indicate whether to rollback the API update
      #   (`true`) or not (`false`) when a warning is encountered. The default
      #   value is `false`.
      # @option params [Hash<String,String>] :parameters
      #   Custom headers supplied as part of the request.
      # @option params [required, String, IO] :body
      #   The PUT request body containing external API definitions. Currently,
      #   only Swagger definition JSON files are supported.
      # @return [Types::RestApi] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::RestApi#id #id} => String
      #   * {Types::RestApi#name #name} => String
      #   * {Types::RestApi#description #description} => String
      #   * {Types::RestApi#created_date #createdDate} => Time
      #   * {Types::RestApi#warnings #warnings} => Array&lt;String&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_rest_api({
      #     rest_api_id: "String", # required
      #     mode: "merge", # accepts merge, overwrite
      #     fail_on_warnings: false,
      #     parameters: {
      #       "String" => "String",
      #     },
      #     body: "data", # required
      #   })
      #
      # @example Response structure
      #   resp.id #=> String
      #   resp.name #=> String
      #   resp.description #=> String
      #   resp.created_date #=> Time
      #   resp.warnings #=> Array
      #   resp.warnings[0] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def put_rest_api(params = {}, options = {})
        req = build_request(:put_rest_api, params)
        req.send_request(options)
      end

      # Simulate the execution of an Authorizer in your RestApi with headers,
      # parameters, and an incoming request body.
      # @option params [required, String] :rest_api_id
      #   Specifies a test invoke authorizer request\'s RestApi identifier.
      # @option params [required, String] :authorizer_id
      #   Specifies a test invoke authorizer request\'s Authorizer ID.
      # @option params [Hash<String,String>] :headers
      #   \[Required\] A key-value map of headers to simulate an incoming
      #   invocation request. This is where the incoming authorization token, or
      #   identity source, should be specified.
      # @option params [String] :path_with_query_string
      #   \[Optional\] The URI path, including query string, of the simulated
      #   invocation request. Use this to specify path parameters and query
      #   string parameters.
      # @option params [String] :body
      #   \[Optional\] The simulated request body of an incoming invocation
      #   request.
      # @option params [Hash<String,String>] :stage_variables
      #   A key-value map of stage variables to simulate an invocation on a
      #   deployed Stage.
      # @option params [Hash<String,String>] :additional_context
      #   \[Optional\] A key-value map of additional context variables.
      # @return [Types::TestInvokeAuthorizerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::TestInvokeAuthorizerResponse#client_status #clientStatus} => Integer
      #   * {Types::TestInvokeAuthorizerResponse#log #log} => String
      #   * {Types::TestInvokeAuthorizerResponse#latency #latency} => Integer
      #   * {Types::TestInvokeAuthorizerResponse#principal_id #principalId} => String
      #   * {Types::TestInvokeAuthorizerResponse#policy #policy} => String
      #   * {Types::TestInvokeAuthorizerResponse#authorization #authorization} => Hash&lt;String,Array&lt;String&gt;&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.test_invoke_authorizer({
      #     rest_api_id: "String", # required
      #     authorizer_id: "String", # required
      #     headers: {
      #       "String" => "String",
      #     },
      #     path_with_query_string: "String",
      #     body: "String",
      #     stage_variables: {
      #       "String" => "String",
      #     },
      #     additional_context: {
      #       "String" => "String",
      #     },
      #   })
      #
      # @example Response structure
      #   resp.client_status #=> Integer
      #   resp.log #=> String
      #   resp.latency #=> Integer
      #   resp.principal_id #=> String
      #   resp.policy #=> String
      #   resp.authorization #=> Hash
      #   resp.authorization["String"] #=> Array
      #   resp.authorization["String"][0] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def test_invoke_authorizer(params = {}, options = {})
        req = build_request(:test_invoke_authorizer, params)
        req.send_request(options)
      end

      # Simulate the execution of a Method in your RestApi with headers,
      # parameters, and an incoming request body.
      # @option params [required, String] :rest_api_id
      #   Specifies a test invoke method request\'s API identifier.
      # @option params [required, String] :resource_id
      #   Specifies a test invoke method request\'s resource ID.
      # @option params [required, String] :http_method
      #   Specifies a test invoke method request\'s HTTP method.
      # @option params [String] :path_with_query_string
      #   The URI path, including query string, of the simulated invocation
      #   request. Use this to specify path parameters and query string
      #   parameters.
      # @option params [String] :body
      #   The simulated request body of an incoming invocation request.
      # @option params [Hash<String,String>] :headers
      #   A key-value map of headers to simulate an incoming invocation request.
      # @option params [String] :client_certificate_id
      #   A ClientCertificate identifier to use in the test invocation. API
      #   Gateway will use use the certificate when making the HTTPS request to
      #   the defined backend endpoint.
      # @option params [Hash<String,String>] :stage_variables
      #   A key-value map of stage variables to simulate an invocation on a
      #   deployed Stage.
      # @return [Types::TestInvokeMethodResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::TestInvokeMethodResponse#status #status} => Integer
      #   * {Types::TestInvokeMethodResponse#body #body} => String
      #   * {Types::TestInvokeMethodResponse#headers #headers} => Hash&lt;String,String&gt;
      #   * {Types::TestInvokeMethodResponse#log #log} => String
      #   * {Types::TestInvokeMethodResponse#latency #latency} => Integer
      #
      # @example Request syntax with placeholder values
      #   resp = client.test_invoke_method({
      #     rest_api_id: "String", # required
      #     resource_id: "String", # required
      #     http_method: "String", # required
      #     path_with_query_string: "String",
      #     body: "String",
      #     headers: {
      #       "String" => "String",
      #     },
      #     client_certificate_id: "String",
      #     stage_variables: {
      #       "String" => "String",
      #     },
      #   })
      #
      # @example Response structure
      #   resp.status #=> Integer
      #   resp.body #=> String
      #   resp.headers #=> Hash
      #   resp.headers["String"] #=> String
      #   resp.log #=> String
      #   resp.latency #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def test_invoke_method(params = {}, options = {})
        req = build_request(:test_invoke_method, params)
        req.send_request(options)
      end

      # Changes information about the current Account resource.
      # @option params [Array<Types::PatchOperation>] :patch_operations
      #   A list of operations describing the updates to apply to the specified
      #   resource. The patches are applied in the order specified in the list.
      # @return [Types::Account] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Account#cloudwatch_role_arn #cloudwatchRoleArn} => String
      #   * {Types::Account#throttle_settings #throttleSettings} => Types::ThrottleSettings
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_account({
      #     patch_operations: [
      #       {
      #         op: "add", # accepts add, remove, replace, move, copy, test
      #         path: "String",
      #         value: "String",
      #         from: "String",
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.cloudwatch_role_arn #=> String
      #   resp.throttle_settings.burst_limit #=> Integer
      #   resp.throttle_settings.rate_limit #=> Float
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_account(params = {}, options = {})
        req = build_request(:update_account, params)
        req.send_request(options)
      end

      # Changes information about an ApiKey resource.
      # @option params [required, String] :api_key
      #   The identifier of the ApiKey resource to be updated.
      # @option params [Array<Types::PatchOperation>] :patch_operations
      #   A list of operations describing the updates to apply to the specified
      #   resource. The patches are applied in the order specified in the list.
      # @return [Types::ApiKey] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ApiKey#id #id} => String
      #   * {Types::ApiKey#name #name} => String
      #   * {Types::ApiKey#description #description} => String
      #   * {Types::ApiKey#enabled #enabled} => Boolean
      #   * {Types::ApiKey#stage_keys #stageKeys} => Array&lt;String&gt;
      #   * {Types::ApiKey#created_date #createdDate} => Time
      #   * {Types::ApiKey#last_updated_date #lastUpdatedDate} => Time
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_api_key({
      #     api_key: "String", # required
      #     patch_operations: [
      #       {
      #         op: "add", # accepts add, remove, replace, move, copy, test
      #         path: "String",
      #         value: "String",
      #         from: "String",
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.id #=> String
      #   resp.name #=> String
      #   resp.description #=> String
      #   resp.enabled #=> Boolean
      #   resp.stage_keys #=> Array
      #   resp.stage_keys[0] #=> String
      #   resp.created_date #=> Time
      #   resp.last_updated_date #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_api_key(params = {}, options = {})
        req = build_request(:update_api_key, params)
        req.send_request(options)
      end

      # Updates an existing Authorizer resource.
      # @option params [required, String] :rest_api_id
      #   The RestApi identifier for the Authorizer resource.
      # @option params [required, String] :authorizer_id
      #   The identifier of the Authorizer resource.
      # @option params [Array<Types::PatchOperation>] :patch_operations
      #   A list of operations describing the updates to apply to the specified
      #   resource. The patches are applied in the order specified in the list.
      # @return [Types::Authorizer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Authorizer#id #id} => String
      #   * {Types::Authorizer#name #name} => String
      #   * {Types::Authorizer#type #type} => String
      #   * {Types::Authorizer#auth_type #authType} => String
      #   * {Types::Authorizer#authorizer_uri #authorizerUri} => String
      #   * {Types::Authorizer#authorizer_credentials #authorizerCredentials} => String
      #   * {Types::Authorizer#identity_source #identitySource} => String
      #   * {Types::Authorizer#identity_validation_expression #identityValidationExpression} => String
      #   * {Types::Authorizer#authorizer_result_ttl_in_seconds #authorizerResultTtlInSeconds} => Integer
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_authorizer({
      #     rest_api_id: "String", # required
      #     authorizer_id: "String", # required
      #     patch_operations: [
      #       {
      #         op: "add", # accepts add, remove, replace, move, copy, test
      #         path: "String",
      #         value: "String",
      #         from: "String",
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.id #=> String
      #   resp.name #=> String
      #   resp.type #=> String, one of "TOKEN"
      #   resp.auth_type #=> String
      #   resp.authorizer_uri #=> String
      #   resp.authorizer_credentials #=> String
      #   resp.identity_source #=> String
      #   resp.identity_validation_expression #=> String
      #   resp.authorizer_result_ttl_in_seconds #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_authorizer(params = {}, options = {})
        req = build_request(:update_authorizer, params)
        req.send_request(options)
      end

      # Changes information about the BasePathMapping resource.
      # @option params [required, String] :domain_name
      #   The domain name of the BasePathMapping resource to change.
      # @option params [required, String] :base_path
      #   The base path of the BasePathMapping resource to change.
      # @option params [Array<Types::PatchOperation>] :patch_operations
      #   A list of operations describing the updates to apply to the specified
      #   resource. The patches are applied in the order specified in the list.
      # @return [Types::BasePathMapping] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::BasePathMapping#base_path #basePath} => String
      #   * {Types::BasePathMapping#rest_api_id #restApiId} => String
      #   * {Types::BasePathMapping#stage #stage} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_base_path_mapping({
      #     domain_name: "String", # required
      #     base_path: "String", # required
      #     patch_operations: [
      #       {
      #         op: "add", # accepts add, remove, replace, move, copy, test
      #         path: "String",
      #         value: "String",
      #         from: "String",
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.base_path #=> String
      #   resp.rest_api_id #=> String
      #   resp.stage #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_base_path_mapping(params = {}, options = {})
        req = build_request(:update_base_path_mapping, params)
        req.send_request(options)
      end

      # Changes information about an ClientCertificate resource.
      # @option params [required, String] :client_certificate_id
      #   The identifier of the ClientCertificate resource to be updated.
      # @option params [Array<Types::PatchOperation>] :patch_operations
      #   A list of operations describing the updates to apply to the specified
      #   resource. The patches are applied in the order specified in the list.
      # @return [Types::ClientCertificate] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ClientCertificate#client_certificate_id #clientCertificateId} => String
      #   * {Types::ClientCertificate#description #description} => String
      #   * {Types::ClientCertificate#pem_encoded_certificate #pemEncodedCertificate} => String
      #   * {Types::ClientCertificate#created_date #createdDate} => Time
      #   * {Types::ClientCertificate#expiration_date #expirationDate} => Time
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_client_certificate({
      #     client_certificate_id: "String", # required
      #     patch_operations: [
      #       {
      #         op: "add", # accepts add, remove, replace, move, copy, test
      #         path: "String",
      #         value: "String",
      #         from: "String",
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.client_certificate_id #=> String
      #   resp.description #=> String
      #   resp.pem_encoded_certificate #=> String
      #   resp.created_date #=> Time
      #   resp.expiration_date #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_client_certificate(params = {}, options = {})
        req = build_request(:update_client_certificate, params)
        req.send_request(options)
      end

      # Changes information about a Deployment resource.
      # @option params [required, String] :rest_api_id
      #   The replacement identifier of the RestApi resource for the Deployment
      #   resource to change information about.
      # @option params [required, String] :deployment_id
      #   The replacment identifier for the Deployment resource to change
      #   information about.
      # @option params [Array<Types::PatchOperation>] :patch_operations
      #   A list of operations describing the updates to apply to the specified
      #   resource. The patches are applied in the order specified in the list.
      # @return [Types::Deployment] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Deployment#id #id} => String
      #   * {Types::Deployment#description #description} => String
      #   * {Types::Deployment#created_date #createdDate} => Time
      #   * {Types::Deployment#api_summary #apiSummary} => Hash&lt;String,Hash&lt;String,Types::MethodSnapshot&gt;&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_deployment({
      #     rest_api_id: "String", # required
      #     deployment_id: "String", # required
      #     patch_operations: [
      #       {
      #         op: "add", # accepts add, remove, replace, move, copy, test
      #         path: "String",
      #         value: "String",
      #         from: "String",
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.id #=> String
      #   resp.description #=> String
      #   resp.created_date #=> Time
      #   resp.api_summary #=> Hash
      #   resp.api_summary["String"] #=> Hash
      #   resp.api_summary["String"]["String"].authorization_type #=> String
      #   resp.api_summary["String"]["String"].api_key_required #=> Boolean
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_deployment(params = {}, options = {})
        req = build_request(:update_deployment, params)
        req.send_request(options)
      end

      # Changes information about the DomainName resource.
      # @option params [required, String] :domain_name
      #   The name of the DomainName resource to be changed.
      # @option params [Array<Types::PatchOperation>] :patch_operations
      #   A list of operations describing the updates to apply to the specified
      #   resource. The patches are applied in the order specified in the list.
      # @return [Types::DomainName] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DomainName#domain_name #domainName} => String
      #   * {Types::DomainName#certificate_name #certificateName} => String
      #   * {Types::DomainName#certificate_upload_date #certificateUploadDate} => Time
      #   * {Types::DomainName#distribution_domain_name #distributionDomainName} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_domain_name({
      #     domain_name: "String", # required
      #     patch_operations: [
      #       {
      #         op: "add", # accepts add, remove, replace, move, copy, test
      #         path: "String",
      #         value: "String",
      #         from: "String",
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.domain_name #=> String
      #   resp.certificate_name #=> String
      #   resp.certificate_upload_date #=> Time
      #   resp.distribution_domain_name #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_domain_name(params = {}, options = {})
        req = build_request(:update_domain_name, params)
        req.send_request(options)
      end

      # Represents an update integration.
      # @option params [required, String] :rest_api_id
      #   Represents an update integration request\'s API identifier.
      # @option params [required, String] :resource_id
      #   Represents an update integration request\'s resource identifier.
      # @option params [required, String] :http_method
      #   Represents an update integration request\'s HTTP method.
      # @option params [Array<Types::PatchOperation>] :patch_operations
      #   A list of operations describing the updates to apply to the specified
      #   resource. The patches are applied in the order specified in the list.
      # @return [Types::Integration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Integration#type #type} => String
      #   * {Types::Integration#http_method #httpMethod} => String
      #   * {Types::Integration#uri #uri} => String
      #   * {Types::Integration#credentials #credentials} => String
      #   * {Types::Integration#request_parameters #requestParameters} => Hash&lt;String,String&gt;
      #   * {Types::Integration#request_templates #requestTemplates} => Hash&lt;String,String&gt;
      #   * {Types::Integration#passthrough_behavior #passthroughBehavior} => String
      #   * {Types::Integration#cache_namespace #cacheNamespace} => String
      #   * {Types::Integration#cache_key_parameters #cacheKeyParameters} => Array&lt;String&gt;
      #   * {Types::Integration#integration_responses #integrationResponses} => Hash&lt;String,Types::IntegrationResponse&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_integration({
      #     rest_api_id: "String", # required
      #     resource_id: "String", # required
      #     http_method: "String", # required
      #     patch_operations: [
      #       {
      #         op: "add", # accepts add, remove, replace, move, copy, test
      #         path: "String",
      #         value: "String",
      #         from: "String",
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.type #=> String, one of "HTTP", "AWS", "MOCK"
      #   resp.http_method #=> String
      #   resp.uri #=> String
      #   resp.credentials #=> String
      #   resp.request_parameters #=> Hash
      #   resp.request_parameters["String"] #=> String
      #   resp.request_templates #=> Hash
      #   resp.request_templates["String"] #=> String
      #   resp.passthrough_behavior #=> String
      #   resp.cache_namespace #=> String
      #   resp.cache_key_parameters #=> Array
      #   resp.cache_key_parameters[0] #=> String
      #   resp.integration_responses #=> Hash
      #   resp.integration_responses["String"].status_code #=> String
      #   resp.integration_responses["String"].selection_pattern #=> String
      #   resp.integration_responses["String"].response_parameters #=> Hash
      #   resp.integration_responses["String"].response_parameters["String"] #=> String
      #   resp.integration_responses["String"].response_templates #=> Hash
      #   resp.integration_responses["String"].response_templates["String"] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_integration(params = {}, options = {})
        req = build_request(:update_integration, params)
        req.send_request(options)
      end

      # Represents an update integration response.
      # @option params [required, String] :rest_api_id
      #   Specifies an update integration response request\'s API identifier.
      # @option params [required, String] :resource_id
      #   Specifies an update integration response request\'s resource
      #   identifier.
      # @option params [required, String] :http_method
      #   Specifies an update integration response request\'s HTTP method.
      # @option params [required, String] :status_code
      #   Specifies an update integration response request\'s status code.
      # @option params [Array<Types::PatchOperation>] :patch_operations
      #   A list of operations describing the updates to apply to the specified
      #   resource. The patches are applied in the order specified in the list.
      # @return [Types::IntegrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::IntegrationResponse#status_code #statusCode} => String
      #   * {Types::IntegrationResponse#selection_pattern #selectionPattern} => String
      #   * {Types::IntegrationResponse#response_parameters #responseParameters} => Hash&lt;String,String&gt;
      #   * {Types::IntegrationResponse#response_templates #responseTemplates} => Hash&lt;String,String&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_integration_response({
      #     rest_api_id: "String", # required
      #     resource_id: "String", # required
      #     http_method: "String", # required
      #     status_code: "StatusCode", # required
      #     patch_operations: [
      #       {
      #         op: "add", # accepts add, remove, replace, move, copy, test
      #         path: "String",
      #         value: "String",
      #         from: "String",
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.status_code #=> String
      #   resp.selection_pattern #=> String
      #   resp.response_parameters #=> Hash
      #   resp.response_parameters["String"] #=> String
      #   resp.response_templates #=> Hash
      #   resp.response_templates["String"] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_integration_response(params = {}, options = {})
        req = build_request(:update_integration_response, params)
        req.send_request(options)
      end

      # Updates an existing Method resource.
      # @option params [required, String] :rest_api_id
      #   The RestApi identifier for the Method resource.
      # @option params [required, String] :resource_id
      #   The Resource identifier for the Method resource.
      # @option params [required, String] :http_method
      #   The HTTP verb that identifies the Method resource.
      # @option params [Array<Types::PatchOperation>] :patch_operations
      #   A list of operations describing the updates to apply to the specified
      #   resource. The patches are applied in the order specified in the list.
      # @return [Types::Method] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Method#http_method #httpMethod} => String
      #   * {Types::Method#authorization_type #authorizationType} => String
      #   * {Types::Method#authorizer_id #authorizerId} => String
      #   * {Types::Method#api_key_required #apiKeyRequired} => Boolean
      #   * {Types::Method#request_parameters #requestParameters} => Hash&lt;String,Boolean&gt;
      #   * {Types::Method#request_models #requestModels} => Hash&lt;String,String&gt;
      #   * {Types::Method#method_responses #methodResponses} => Hash&lt;String,Types::MethodResponse&gt;
      #   * {Types::Method#method_integration #methodIntegration} => Types::Integration
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_method({
      #     rest_api_id: "String", # required
      #     resource_id: "String", # required
      #     http_method: "String", # required
      #     patch_operations: [
      #       {
      #         op: "add", # accepts add, remove, replace, move, copy, test
      #         path: "String",
      #         value: "String",
      #         from: "String",
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.http_method #=> String
      #   resp.authorization_type #=> String
      #   resp.authorizer_id #=> String
      #   resp.api_key_required #=> Boolean
      #   resp.request_parameters #=> Hash
      #   resp.request_parameters["String"] #=> Boolean
      #   resp.request_models #=> Hash
      #   resp.request_models["String"] #=> String
      #   resp.method_responses #=> Hash
      #   resp.method_responses["String"].status_code #=> String
      #   resp.method_responses["String"].response_parameters #=> Hash
      #   resp.method_responses["String"].response_parameters["String"] #=> Boolean
      #   resp.method_responses["String"].response_models #=> Hash
      #   resp.method_responses["String"].response_models["String"] #=> String
      #   resp.method_integration.type #=> String, one of "HTTP", "AWS", "MOCK"
      #   resp.method_integration.http_method #=> String
      #   resp.method_integration.uri #=> String
      #   resp.method_integration.credentials #=> String
      #   resp.method_integration.request_parameters #=> Hash
      #   resp.method_integration.request_parameters["String"] #=> String
      #   resp.method_integration.request_templates #=> Hash
      #   resp.method_integration.request_templates["String"] #=> String
      #   resp.method_integration.passthrough_behavior #=> String
      #   resp.method_integration.cache_namespace #=> String
      #   resp.method_integration.cache_key_parameters #=> Array
      #   resp.method_integration.cache_key_parameters[0] #=> String
      #   resp.method_integration.integration_responses #=> Hash
      #   resp.method_integration.integration_responses["String"].status_code #=> String
      #   resp.method_integration.integration_responses["String"].selection_pattern #=> String
      #   resp.method_integration.integration_responses["String"].response_parameters #=> Hash
      #   resp.method_integration.integration_responses["String"].response_parameters["String"] #=> String
      #   resp.method_integration.integration_responses["String"].response_templates #=> Hash
      #   resp.method_integration.integration_responses["String"].response_templates["String"] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_method(params = {}, options = {})
        req = build_request(:update_method, params)
        req.send_request(options)
      end

      # Updates an existing MethodResponse resource.
      # @option params [required, String] :rest_api_id
      #   The RestApi identifier for the MethodResponse resource.
      # @option params [required, String] :resource_id
      #   The Resource identifier for the MethodResponse resource.
      # @option params [required, String] :http_method
      #   The HTTP verb identifier for the parent Method resource.
      # @option params [required, String] :status_code
      #   The status code identifier for the MethodResponse resource.
      # @option params [Array<Types::PatchOperation>] :patch_operations
      #   A list of operations describing the updates to apply to the specified
      #   resource. The patches are applied in the order specified in the list.
      # @return [Types::MethodResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::MethodResponse#status_code #statusCode} => String
      #   * {Types::MethodResponse#response_parameters #responseParameters} => Hash&lt;String,Boolean&gt;
      #   * {Types::MethodResponse#response_models #responseModels} => Hash&lt;String,String&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_method_response({
      #     rest_api_id: "String", # required
      #     resource_id: "String", # required
      #     http_method: "String", # required
      #     status_code: "StatusCode", # required
      #     patch_operations: [
      #       {
      #         op: "add", # accepts add, remove, replace, move, copy, test
      #         path: "String",
      #         value: "String",
      #         from: "String",
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.status_code #=> String
      #   resp.response_parameters #=> Hash
      #   resp.response_parameters["String"] #=> Boolean
      #   resp.response_models #=> Hash
      #   resp.response_models["String"] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_method_response(params = {}, options = {})
        req = build_request(:update_method_response, params)
        req.send_request(options)
      end

      # Changes information about a model.
      # @option params [required, String] :rest_api_id
      #   The RestApi identifier under which the model exists.
      # @option params [required, String] :model_name
      #   The name of the model to update.
      # @option params [Array<Types::PatchOperation>] :patch_operations
      #   A list of operations describing the updates to apply to the specified
      #   resource. The patches are applied in the order specified in the list.
      # @return [Types::Model] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Model#id #id} => String
      #   * {Types::Model#name #name} => String
      #   * {Types::Model#description #description} => String
      #   * {Types::Model#schema #schema} => String
      #   * {Types::Model#content_type #contentType} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_model({
      #     rest_api_id: "String", # required
      #     model_name: "String", # required
      #     patch_operations: [
      #       {
      #         op: "add", # accepts add, remove, replace, move, copy, test
      #         path: "String",
      #         value: "String",
      #         from: "String",
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.id #=> String
      #   resp.name #=> String
      #   resp.description #=> String
      #   resp.schema #=> String
      #   resp.content_type #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_model(params = {}, options = {})
        req = build_request(:update_model, params)
        req.send_request(options)
      end

      # Changes information about a Resource resource.
      # @option params [required, String] :rest_api_id
      #   The RestApi identifier for the Resource resource.
      # @option params [required, String] :resource_id
      #   The identifier of the Resource resource.
      # @option params [Array<Types::PatchOperation>] :patch_operations
      #   A list of operations describing the updates to apply to the specified
      #   resource. The patches are applied in the order specified in the list.
      # @return [Types::Resource] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Resource#id #id} => String
      #   * {Types::Resource#parent_id #parentId} => String
      #   * {Types::Resource#path_part #pathPart} => String
      #   * {Types::Resource#path #path} => String
      #   * {Types::Resource#resource_methods #resourceMethods} => Hash&lt;String,Types::Method&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_resource({
      #     rest_api_id: "String", # required
      #     resource_id: "String", # required
      #     patch_operations: [
      #       {
      #         op: "add", # accepts add, remove, replace, move, copy, test
      #         path: "String",
      #         value: "String",
      #         from: "String",
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.id #=> String
      #   resp.parent_id #=> String
      #   resp.path_part #=> String
      #   resp.path #=> String
      #   resp.resource_methods #=> Hash
      #   resp.resource_methods["String"].http_method #=> String
      #   resp.resource_methods["String"].authorization_type #=> String
      #   resp.resource_methods["String"].authorizer_id #=> String
      #   resp.resource_methods["String"].api_key_required #=> Boolean
      #   resp.resource_methods["String"].request_parameters #=> Hash
      #   resp.resource_methods["String"].request_parameters["String"] #=> Boolean
      #   resp.resource_methods["String"].request_models #=> Hash
      #   resp.resource_methods["String"].request_models["String"] #=> String
      #   resp.resource_methods["String"].method_responses #=> Hash
      #   resp.resource_methods["String"].method_responses["String"].status_code #=> String
      #   resp.resource_methods["String"].method_responses["String"].response_parameters #=> Hash
      #   resp.resource_methods["String"].method_responses["String"].response_parameters["String"] #=> Boolean
      #   resp.resource_methods["String"].method_responses["String"].response_models #=> Hash
      #   resp.resource_methods["String"].method_responses["String"].response_models["String"] #=> String
      #   resp.resource_methods["String"].method_integration.type #=> String, one of "HTTP", "AWS", "MOCK"
      #   resp.resource_methods["String"].method_integration.http_method #=> String
      #   resp.resource_methods["String"].method_integration.uri #=> String
      #   resp.resource_methods["String"].method_integration.credentials #=> String
      #   resp.resource_methods["String"].method_integration.request_parameters #=> Hash
      #   resp.resource_methods["String"].method_integration.request_parameters["String"] #=> String
      #   resp.resource_methods["String"].method_integration.request_templates #=> Hash
      #   resp.resource_methods["String"].method_integration.request_templates["String"] #=> String
      #   resp.resource_methods["String"].method_integration.passthrough_behavior #=> String
      #   resp.resource_methods["String"].method_integration.cache_namespace #=> String
      #   resp.resource_methods["String"].method_integration.cache_key_parameters #=> Array
      #   resp.resource_methods["String"].method_integration.cache_key_parameters[0] #=> String
      #   resp.resource_methods["String"].method_integration.integration_responses #=> Hash
      #   resp.resource_methods["String"].method_integration.integration_responses["String"].status_code #=> String
      #   resp.resource_methods["String"].method_integration.integration_responses["String"].selection_pattern #=> String
      #   resp.resource_methods["String"].method_integration.integration_responses["String"].response_parameters #=> Hash
      #   resp.resource_methods["String"].method_integration.integration_responses["String"].response_parameters["String"] #=> String
      #   resp.resource_methods["String"].method_integration.integration_responses["String"].response_templates #=> Hash
      #   resp.resource_methods["String"].method_integration.integration_responses["String"].response_templates["String"] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_resource(params = {}, options = {})
        req = build_request(:update_resource, params)
        req.send_request(options)
      end

      # Changes information about the specified API.
      # @option params [required, String] :rest_api_id
      #   The ID of the RestApi you want to update.
      # @option params [Array<Types::PatchOperation>] :patch_operations
      #   A list of operations describing the updates to apply to the specified
      #   resource. The patches are applied in the order specified in the list.
      # @return [Types::RestApi] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::RestApi#id #id} => String
      #   * {Types::RestApi#name #name} => String
      #   * {Types::RestApi#description #description} => String
      #   * {Types::RestApi#created_date #createdDate} => Time
      #   * {Types::RestApi#warnings #warnings} => Array&lt;String&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_rest_api({
      #     rest_api_id: "String", # required
      #     patch_operations: [
      #       {
      #         op: "add", # accepts add, remove, replace, move, copy, test
      #         path: "String",
      #         value: "String",
      #         from: "String",
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.id #=> String
      #   resp.name #=> String
      #   resp.description #=> String
      #   resp.created_date #=> Time
      #   resp.warnings #=> Array
      #   resp.warnings[0] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_rest_api(params = {}, options = {})
        req = build_request(:update_rest_api, params)
        req.send_request(options)
      end

      # Changes information about a Stage resource.
      # @option params [required, String] :rest_api_id
      #   The identifier of the RestApi resource for the Stage resource to
      #   change information about.
      # @option params [required, String] :stage_name
      #   The name of the Stage resource to change information about.
      # @option params [Array<Types::PatchOperation>] :patch_operations
      #   A list of operations describing the updates to apply to the specified
      #   resource. The patches are applied in the order specified in the list.
      # @return [Types::Stage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Stage#deployment_id #deploymentId} => String
      #   * {Types::Stage#client_certificate_id #clientCertificateId} => String
      #   * {Types::Stage#stage_name #stageName} => String
      #   * {Types::Stage#description #description} => String
      #   * {Types::Stage#cache_cluster_enabled #cacheClusterEnabled} => Boolean
      #   * {Types::Stage#cache_cluster_size #cacheClusterSize} => String
      #   * {Types::Stage#cache_cluster_status #cacheClusterStatus} => String
      #   * {Types::Stage#method_settings #methodSettings} => Hash&lt;String,Types::MethodSetting&gt;
      #   * {Types::Stage#variables #variables} => Hash&lt;String,String&gt;
      #   * {Types::Stage#created_date #createdDate} => Time
      #   * {Types::Stage#last_updated_date #lastUpdatedDate} => Time
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_stage({
      #     rest_api_id: "String", # required
      #     stage_name: "String", # required
      #     patch_operations: [
      #       {
      #         op: "add", # accepts add, remove, replace, move, copy, test
      #         path: "String",
      #         value: "String",
      #         from: "String",
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.deployment_id #=> String
      #   resp.client_certificate_id #=> String
      #   resp.stage_name #=> String
      #   resp.description #=> String
      #   resp.cache_cluster_enabled #=> Boolean
      #   resp.cache_cluster_size #=> String, one of "0.5", "1.6", "6.1", "13.5", "28.4", "58.2", "118", "237"
      #   resp.cache_cluster_status #=> String, one of "CREATE_IN_PROGRESS", "AVAILABLE", "DELETE_IN_PROGRESS", "NOT_AVAILABLE", "FLUSH_IN_PROGRESS"
      #   resp.method_settings #=> Hash
      #   resp.method_settings["String"].metrics_enabled #=> Boolean
      #   resp.method_settings["String"].logging_level #=> String
      #   resp.method_settings["String"].data_trace_enabled #=> Boolean
      #   resp.method_settings["String"].throttling_burst_limit #=> Integer
      #   resp.method_settings["String"].throttling_rate_limit #=> Float
      #   resp.method_settings["String"].caching_enabled #=> Boolean
      #   resp.method_settings["String"].cache_ttl_in_seconds #=> Integer
      #   resp.method_settings["String"].cache_data_encrypted #=> Boolean
      #   resp.method_settings["String"].require_authorization_for_cache_control #=> Boolean
      #   resp.method_settings["String"].unauthorized_cache_control_header_strategy #=> String, one of "FAIL_WITH_403", "SUCCEED_WITH_RESPONSE_HEADER", "SUCCEED_WITHOUT_RESPONSE_HEADER"
      #   resp.variables #=> Hash
      #   resp.variables["String"] #=> String
      #   resp.created_date #=> Time
      #   resp.last_updated_date #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_stage(params = {}, options = {})
        req = build_request(:update_stage, params)
        req.send_request(options)
      end

      # @!endgroup

      # @param [Symbol] waiter_name
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      # @option options [Integer] :max_attempts
      # @option options [Integer] :delay
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def wait_until(waiter_name, params = {}, options = {})
        w = waiter(waiter_name, options)
        yield(w.waiter) if block_given? # deprecated
        w.wait(params)
      end

      def waiter_names
        waiters.keys
      end

      private

      # @param [Symbol] waiter_name
      # @param [Hash] options ({})
      def waiter(waiter_name, options = {})
        waiter_class = waiters[waiter_name]
        if waiter_class
          waiter_class.new(options.merge(client: self))
        else
          raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
        end
      end

      def waiters
        {}
      end

      # @api private
      class << self

        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end
