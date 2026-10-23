# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/transport'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/protocol'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/json_rpc'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:kendra)

module Aws::Kendra
  # An API client for Aws::Kendra.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSKendraFrontendService
    @identifier = :kendra

    add_plugin(::Aws::Kendra::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::Transport)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::Protocol)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::TransferEncoding)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::InvocationId)
    add_plugin(Aws::Core::Plugins::RecursionDetection)
    add_plugin(Aws::Core::Plugins::RetryErrors)
    add_plugin(Aws::Core::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [String] :account_id_endpoint_mode
    #  The account ID endpoint mode to use. This can be one of the following values:
    #  * `preferred` - (default) Use the account ID endpoint if available, otherwise use the standard endpoint.
    #  * `disabled` - Never use the account ID endpoint, only use the standard endpoint.
    #  * `required` - Always use the account ID endpoint. If the account ID cannot be retrieved from credentials, an error is raised.
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing.
    # @option options [Array<String>] :auth_scheme_preference
    #  An ordered list of preferred authentication schemes to use when making a request.
    #  The items in the list must be a fully qualified scheme IDs, such as `smithy.api#httpBearerAuth`.
    # @option options [Numeric] :connect_timeout
    #  The number of seconds to wait when opening a connection before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Kendra::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Boolean] :http_wire_trace
    #  When `true`, HTTP wire trace output is sent to the configured logger.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [Integer] :max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Symbol, Object] :protocol
    #  The protocol used for request serialization and response deserialization. Defaults to the service default protocol. May be a Symbol naming a supported protocol, or a custom object implementing the protocol interface.
    #  Supported protocols: +:json_rpc+ (defaults to +:json_rpc+).
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [Numeric] :read_timeout
    #  The number of seconds to wait for data to be read before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
    # @option options [String] :region
    #  The AWS region to connect to. The configured `:region` is used to determine the service `:endpoint`.
    #  When not provided, a default region is searched for in the following locations:
    #  * `Aws.config[:region]`
    #  * `ENV['AWS_REGION']`
    #  * `ENV['AWS_DEFAULT_REGION']`
    #  * `~/.aws/credentials` as `region` under a profile
    #  * `~/.aws/config` as `region` under a profile
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [String] :retry_mode (standard)
    #  Specifies which retry algorithm to use. Values are:
    #  
    #  * `standard` - A standardized set of retry rules across the AWS SDKs.
    #    This includes support for retry quotas, which limit the number of
    #    unsuccessful retries a client can make. This is the default
    #    value if no retry mode is provided.
    #  
    #  * `adaptive` - A retry mode that includes all the functionality of
    #    `standard` mode along with automatic client side throttling.
    # @option options [Object] :retry_strategy
    #  The retry strategy used by the client. If not provided, a default strategy is built
    #  based on `:retry_mode` — either `Standard` or `Adaptive`.
    #  
    #  A custom strategy must respond to:
    #  * `#acquire_initial_retry_token` - returns a token
    #  * `#refresh_retry_token(token, error_info)` - returns a token or nil
    #  * `#record_success(token)` - records a successful request
    #  * `#request_bookkeeping(error_info = nil)` - updates internal state
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [String] :ssl_ca_bundle
    #  The path to a CA certificate bundle file in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [String] :ssl_ca_directory
    #  The path to a directory of CA certificates in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [OpenSSL::X509::Store] :ssl_ca_store
    #  An in-memory TLS trust store used to verify peer certificates. Defaults to `nil`,
    #  which uses the transport's default trust store.
    # @option options [Boolean] :ssl_verify_peer (true)
    #  When `true` (default), the peer's TLS certificate is verified. Disable only
    #  for debugging, as it is insecure.
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
    # @option options [Smithy::Client::NetHTTP::Transport] :transport
    #  The transport used to send requests. Defaults to an HTTP/1.1 transport based on
    #  Net::HTTP ({Smithy::Client::NetHTTP::Transport}), constructed with the resolved
    #  common client transport options. Supply a custom object responding to
    #  `#transmit(request, sink)` and `#transmit_background(request, sink)` (both push
    #  the response into the sink; see {Smithy::Client::Transport}) to swap the transport,
    #  or a directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
    #  caller-supplied transport instance is used as-is.
    # @option options [Boolean] :use_dualstack_endpoint
    #  When set to `true`, dualstack enabled endpoints (with `.aws` TLD) will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_DUALSTACK_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_dualstack_endpoint` under a profile
    #  * `~/.aws/config` as `use_dualstack_endpoint` under a profile
    # @option options [Boolean] :use_fips_endpoint
    #  When set to `true`, FIPS compatible endpoints will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_FIPS_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_fips_endpoint` under a profile
    #  * `~/.aws/config` as `use_fips_endpoint` under a profile
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Grants users or groups in your IAM Identity Center identity source access 
    #             to your Amazon Kendra experience. You can create an Amazon Kendra experience such as a 
    #             search application. For more information on creating a search application 
    #             experience, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html">Building 
    #                 a search experience with no code</a>.</p>
    # @param [Hash, Types::AssociateEntitiesToExperienceRequest] params
    # @option params [String] :id
    #   <p>The identifier of your Amazon Kendra experience.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the index for your Amazon Kendra experience.</p>
    # @option params [Array<Types::EntityConfiguration>] :entity_list
    #   <p>Lists users or groups in your IAM Identity Center identity source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ExperienceId", # required
    #     index_id: "IndexId", # required
    #     entity_list: [ # required
    #       {
    #         entity_id: "EntityId", # required
    #         entity_type: "USER" # One of: ["USER", "GROUP"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.associate_entities_to_experience(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_entity_list: [
    #       {
    #         entity_id: "EntityId",
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::AssociateEntitiesToExperienceResponse]
    def associate_entities_to_experience(params = {}, options = {})
      request = build_request(:associate_entities_to_experience, params)
      request.send_request(options)
    end

    # <p>Defines the specific permissions of users or groups in your IAM Identity Center
    #             identity source with access to your Amazon Kendra experience. You can create an Amazon Kendra 
    #             experience such as a search application. For more information on creating a 
    #             search application experience, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html">Building 
    #                 a search experience with no code</a>.</p>
    # @param [Hash, Types::AssociatePersonasToEntitiesRequest] params
    # @option params [String] :id
    #   <p>The identifier of your Amazon Kendra experience.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the index for your Amazon Kendra experience.</p>
    # @option params [Array<Types::EntityPersonaConfiguration>] :personas
    #   <p>The personas that define the specific permissions of users or groups in 
    #               your IAM Identity Center identity source. The available personas or access 
    #               roles are <code>Owner</code> and <code>Viewer</code>. For more information 
    #               on these personas, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html#access-search-experience">Providing 
    #                   access to your search page</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ExperienceId", # required
    #     index_id: "IndexId", # required
    #     personas: [ # required
    #       {
    #         entity_id: "EntityId", # required
    #         persona: "OWNER" # One of: ["OWNER", "VIEWER"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.associate_personas_to_entities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_entity_list: [
    #       {
    #         entity_id: "EntityId",
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::AssociatePersonasToEntitiesResponse]
    def associate_personas_to_entities(params = {}, options = {})
      request = build_request(:associate_personas_to_entities, params)
      request.send_request(options)
    end

    # <p>Removes one or more documents from an index. The documents must have been added with
    #             the <code>BatchPutDocument</code> API.</p>
    #          <p>The documents are deleted asynchronously. You can see the progress of the deletion by
    #             using Amazon Web Services
    #             CloudWatch. Any error messages related to the processing of the batch are sent to
    #             your Amazon Web Services
    #             CloudWatch log. You can also use the <code>BatchGetDocumentStatus</code> API to
    #             monitor the progress of deleting your documents.</p>
    #          <p>Deleting documents from an index using <code>BatchDeleteDocument</code> could take up
    #             to an hour or more, depending on the number of documents you want to delete.</p>
    # @param [Hash, Types::BatchDeleteDocumentRequest] params
    # @option params [String] :index_id
    #   <p>The identifier of the index that contains the documents to delete.</p>
    # @option params [Array<String>] :document_id_list
    #   <p>One or more identifiers for documents to delete from the index.</p>
    # @option params [Types::DataSourceSyncJobMetricTarget] :data_source_sync_job_metric_target
    #   <p>Maps a particular data source sync job to a particular data source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #     document_id_list: ["DocumentId"], # required
    #     data_source_sync_job_metric_target: {
    #       data_source_id: "DataSourceId", # required
    #       data_source_sync_job_id: "DataSourceSyncJobId"
    #     }
    #   }
    #   options = {}
    #   response = client.batch_delete_document(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_documents: [
    #       {
    #         id: "DocumentId",
    #         data_source_id: "DataSourceId",
    #         error_code: "InternalError" # One of: ["InternalError", "InvalidRequest"],
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::BatchDeleteDocumentResponse]
    def batch_delete_document(params = {}, options = {})
      request = build_request(:batch_delete_document, params)
      request.send_request(options)
    end

    # <p>Removes one or more sets of featured results. Features results are placed
    #             above all other results for certain queries. If there's an exact match of a 
    #             query, then one or more specific documents are featured in the search results.</p>
    # @param [Hash, Types::BatchDeleteFeaturedResultsSetRequest] params
    # @option params [String] :index_id
    #   <p>The identifier of the index used for featuring results.</p>
    # @option params [Array<String>] :featured_results_set_ids
    #   <p>The identifiers of the featured results sets that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #     featured_results_set_ids: ["FeaturedResultsSetId"], # required
    #   }
    #   options = {}
    #   response = client.batch_delete_featured_results_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [ # required
    #       {
    #         id: "FeaturedResultsSetId", # required
    #         error_code: "InternalError" # One of: ["InternalError", "InvalidRequest"], # required
    #         error_message: "ErrorMessage", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchDeleteFeaturedResultsSetResponse]
    def batch_delete_featured_results_set(params = {}, options = {})
      request = build_request(:batch_delete_featured_results_set, params)
      request.send_request(options)
    end

    # <p>Returns the indexing status for one or more documents submitted with the <a href="https://docs.aws.amazon.com/kendra/latest/dg/API_BatchPutDocument.html">
    #                 BatchPutDocument</a> API.</p>
    #          <p>When you use the <code>BatchPutDocument</code> API, documents are indexed
    #             asynchronously. You can use the <code>BatchGetDocumentStatus</code> API to get the
    #             current status of a list of documents so that you can determine if they have been
    #             successfully indexed.</p>
    #          <p>You can also use the <code>BatchGetDocumentStatus</code> API to check the status of
    #             the <a href="https://docs.aws.amazon.com/kendra/latest/dg/API_BatchDeleteDocument.html">
    #                 BatchDeleteDocument</a> API. When a document is deleted from the index, Amazon Kendra returns <code>NOT_FOUND</code> as the status.</p>
    # @param [Hash, Types::BatchGetDocumentStatusRequest] params
    # @option params [String] :index_id
    #   <p>The identifier of the index to add documents to. The index ID is returned by the
    #                   <a href="https://docs.aws.amazon.com/kendra/latest/dg/API_CreateIndex.html">CreateIndex
    #               </a> API.</p>
    # @option params [Array<Types::DocumentInfo>] :document_info_list
    #   <p>A list of <code>DocumentInfo</code> objects that identify the documents for which to
    #               get the status. You identify the documents by their document ID and optional
    #               attributes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #     document_info_list: [ # required
    #       {
    #         document_id: "DocumentId", # required
    #         attributes: [
    #           {
    #             key: "DocumentAttributeKey", # required
    #             value: { # required
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now
    #             }
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_get_document_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [
    #       {
    #         document_id: "DocumentId",
    #         data_source_id: "DataSourceId",
    #         error_code: "InternalError" # One of: ["InternalError", "InvalidRequest"],
    #         error_message: "ErrorMessage"
    #       }
    #     ],
    #     document_status_list: [
    #       {
    #         document_id: "DocumentId",
    #         document_status: "NOT_FOUND" # One of: ["NOT_FOUND", "PROCESSING", "INDEXED", "UPDATED", "FAILED", "UPDATE_FAILED"],
    #         failure_code: "String",
    #         failure_reason: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetDocumentStatusResponse]
    def batch_get_document_status(params = {}, options = {})
      request = build_request(:batch_get_document_status, params)
      request.send_request(options)
    end

    # <p>Adds one or more documents to an index.</p>
    #          <p>The <code>BatchPutDocument</code> API enables you to ingest inline documents or a set
    #             of documents stored in an Amazon S3 bucket. Use this API to ingest your text and
    #             unstructured text into an index, add custom attributes to the documents, and to attach
    #             an access control list to the documents added to the index.</p>
    #          <p>The documents are indexed asynchronously. You can see the progress of the batch using
    #                 Amazon Web Services
    #             CloudWatch. Any error messages related to processing the batch are sent to your
    #                 Amazon Web Services
    #             CloudWatch log. You can also use the <code>BatchGetDocumentStatus</code> API to
    #             monitor the progress of indexing your documents.</p>
    #          <p>For an example of ingesting inline documents using Python and Java SDKs, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/in-adding-binary-doc.html">Adding files
    #                 directly to an index</a>.</p>
    # @param [Hash, Types::BatchPutDocumentRequest] params
    # @option params [String] :index_id
    #   <p>The identifier of the index to add the documents to. You need to create the index
    #               first using the <code>CreateIndex</code> API.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role with permission to access
    #               your S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html">IAM access roles for Amazon Kendra</a>.</p>
    # @option params [Array<Types::Document>] :documents
    #   <p>One or more documents to add to the index.</p>
    #            <p>Documents have the following file size limits.</p>
    #            <ul>
    #               <li>
    #                  <p>50 MB total size for any file</p>
    #               </li>
    #               <li>
    #                  <p>5 MB extracted text for any file</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/quotas.html">Quotas</a>.</p>
    # @option params [Types::CustomDocumentEnrichmentConfiguration] :custom_document_enrichment_configuration
    #   <p>Configuration information for altering your document metadata and content during the
    #               document ingestion process when you use the <code>BatchPutDocument</code> API.</p>
    #            <p>For more information on how to create, modify and delete document metadata, or make
    #               other content alterations when you ingest documents into Amazon Kendra, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html">Customizing document metadata during the ingestion process</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #     role_arn: "RoleArn",
    #     documents: [ # required
    #       {
    #         id: "DocumentId", # required
    #         title: "Title",
    #         blob: "data",
    #         s3_path: {
    #           bucket: "S3BucketName", # required
    #           key: "S3ObjectKey", # required
    #         },
    #         attributes: [
    #           {
    #             key: "DocumentAttributeKey", # required
    #             value: { # required
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now
    #             }
    #           }
    #         ],
    #         access_control_list: [
    #           {
    #             name: "PrincipalName", # required
    #             type: "USER" # One of: ["USER", "GROUP"], # required
    #             access: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #             data_source_id: "DataSourceId"
    #           }
    #         ],
    #         hierarchical_access_control_list: [
    #           {
    #             principal_list: [ # required
    #               {
    #                 name: "PrincipalName", # required
    #                 type: "USER" # One of: ["USER", "GROUP"], # required
    #                 access: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #                 data_source_id: "DataSourceId"
    #               }
    #             ]
    #           }
    #         ],
    #         content_type: "PDF" # One of: ["PDF", "HTML", "MS_WORD", "PLAIN_TEXT", "PPT", "RTF", "XML", "XSLT", "MS_EXCEL", "CSV", "JSON", "MD"],
    #         access_control_configuration_id: "AccessControlConfigurationId"
    #       }
    #     ],
    #     custom_document_enrichment_configuration: {
    #       inline_configurations: [
    #         {
    #           condition: {
    #             condition_document_attribute_key: "DocumentAttributeKey", # required
    #             operator: "GreaterThan" # One of: ["GreaterThan", "GreaterThanOrEquals", "LessThan", "LessThanOrEquals", "Equals", "NotEquals", "Contains", "NotContains", "Exists", "NotExists", "BeginsWith"], # required
    #             condition_on_value: {
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now
    #             }
    #           },
    #           target: {
    #             target_document_attribute_key: "DocumentAttributeKey",
    #             target_document_attribute_value_deletion: false,
    #             target_document_attribute_value: {
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now
    #             }
    #           },
    #           document_content_deletion: false
    #         }
    #       ],
    #       pre_extraction_hook_configuration: {
    #         invocation_condition: {
    #           condition_document_attribute_key: "DocumentAttributeKey", # required
    #           operator: "GreaterThan" # One of: ["GreaterThan", "GreaterThanOrEquals", "LessThan", "LessThanOrEquals", "Equals", "NotEquals", "Contains", "NotContains", "Exists", "NotExists", "BeginsWith"], # required
    #           condition_on_value: {
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now
    #           }
    #         },
    #         lambda_arn: "LambdaArn", # required
    #         s3_bucket: "S3BucketName", # required
    #       },
    #       post_extraction_hook_configuration: {
    #         invocation_condition: {
    #           condition_document_attribute_key: "DocumentAttributeKey", # required
    #           operator: "GreaterThan" # One of: ["GreaterThan", "GreaterThanOrEquals", "LessThan", "LessThanOrEquals", "Equals", "NotEquals", "Contains", "NotContains", "Exists", "NotExists", "BeginsWith"], # required
    #           condition_on_value: {
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now
    #           }
    #         },
    #         lambda_arn: "LambdaArn", # required
    #         s3_bucket: "S3BucketName", # required
    #       },
    #       role_arn: "RoleArn"
    #     }
    #   }
    #   options = {}
    #   response = client.batch_put_document(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_documents: [
    #       {
    #         id: "DocumentId",
    #         data_source_id: "DataSourceId",
    #         error_code: "InternalError" # One of: ["InternalError", "InvalidRequest"],
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::BatchPutDocumentResponse]
    def batch_put_document(params = {}, options = {})
      request = build_request(:batch_put_document, params)
      request.send_request(options)
    end

    # <p>Clears existing query suggestions from an index.</p>
    #          <p>This deletes existing suggestions only, not the queries 
    #             in the query log. After you clear suggestions, Amazon Kendra learns 
    #             new suggestions based on new queries added to the query log 
    #             from the time you cleared suggestions. If you do not see any 
    #             new suggestions, then please allow Amazon Kendra to collect 
    #             enough queries to learn new suggestions.</p>
    #          <p>
    #             <code>ClearQuerySuggestions</code> is currently not supported in the 
    #             Amazon Web Services GovCloud (US-West) region.</p>
    # @param [Hash, Types::ClearQuerySuggestionsRequest] params
    # @option params [String] :index_id
    #   <p>The identifier of the index you want to clear query suggestions from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #   }
    #   options = {}
    #   response = client.clear_query_suggestions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def clear_query_suggestions(params = {}, options = {})
      request = build_request(:clear_query_suggestions, params)
      request.send_request(options)
    end

    # <p>Creates an access configuration for your documents. This includes user and group
    #             access information for your documents. This is useful for user context filtering, where
    #             search results are filtered based on the user or their group access to documents.</p>
    #          <p>You can use this to re-configure your existing document level access control without
    #             indexing all of your documents again. For example, your index contains top-secret
    #             company documents that only certain employees or users should access. One of these users
    #             leaves the company or switches to a team that should be blocked from accessing
    #             top-secret documents. The user still has access to top-secret documents because the user
    #             had access when your documents were previously indexed. You can create a specific access
    #             control configuration for the user with deny access. You can later update the access
    #             control configuration to allow access if the user returns to the company and re-joins
    #             the 'top-secret' team. You can re-configure access control for your documents as
    #             circumstances change.</p>
    #          <p>To apply your access control configuration to certain documents, you call the <a href="https://docs.aws.amazon.com/kendra/latest/dg/API_BatchPutDocument.html">BatchPutDocument</a> API with the <code>AccessControlConfigurationId</code>
    #             included in the <a href="https://docs.aws.amazon.com/kendra/latest/dg/API_Document.html">Document</a> object. If you use an S3 bucket as a data source, you update the
    #                 <code>.metadata.json</code> with the <code>AccessControlConfigurationId</code> and
    #             synchronize your data source. Amazon Kendra currently only supports access control
    #             configuration for S3 data sources and documents indexed using the
    #                 <code>BatchPutDocument</code> API.</p>
    #          <important>
    #             <p>You can't configure access control using
    #                     <code>CreateAccessControlConfiguration</code> for an Amazon Kendra Gen AI Enterprise
    #                 Edition index. Amazon Kendra will return a <code>ValidationException</code> error for a
    #                     <code>Gen_AI_ENTERPRISE_EDITION</code> index.</p>
    #          </important>
    # @param [Hash, Types::CreateAccessControlConfigurationRequest] params
    # @option params [String] :index_id
    #   <p>The identifier of the index to create an access control configuration for your
    #               documents.</p>
    # @option params [String] :name
    #   <p>A name for the access control configuration.</p>
    # @option params [String] :description
    #   <p>A description for the access control configuration.</p>
    # @option params [Array<Types::Principal>] :access_control_list
    #   <p>Information on principals (users and/or groups) and which documents they should have
    #               access to. This is useful for user context filtering, where search results are filtered
    #               based on the user or their group access to documents.</p>
    # @option params [Array<Types::HierarchicalPrincipal>] :hierarchical_access_control_list
    #   <p>The list of <a href="https://docs.aws.amazon.com/kendra/latest/dg/API_Principal.html">principal</a> lists that define the hierarchy for which documents users should
    #               have access to.</p>
    # @option params [String] :client_token
    #   <p>A token that you provide to identify the request to create an access control
    #               configuration. Multiple calls to the <code>CreateAccessControlConfiguration</code> API
    #               with the same client token will create only one access control configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #     name: "AccessControlConfigurationName", # required
    #     description: "Description",
    #     access_control_list: [
    #       {
    #         name: "PrincipalName", # required
    #         type: "USER" # One of: ["USER", "GROUP"], # required
    #         access: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #         data_source_id: "DataSourceId"
    #       }
    #     ],
    #     hierarchical_access_control_list: [
    #       {
    #         principal_list: [ # required
    #           {
    #             name: "PrincipalName", # required
    #             type: "USER" # One of: ["USER", "GROUP"], # required
    #             access: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #             data_source_id: "DataSourceId"
    #           }
    #         ]
    #       }
    #     ],
    #     client_token: "ClientTokenName"
    #   }
    #   options = {}
    #   response = client.create_access_control_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "AccessControlConfigurationId", # required
    #   }
    # @return [Types::CreateAccessControlConfigurationResponse]
    def create_access_control_configuration(params = {}, options = {})
      request = build_request(:create_access_control_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a data source connector that you want to use with an Amazon Kendra
    #       index.</p>
    #          <p>You specify a name, data source connector type and description for your data source. You
    #       also specify configuration information for the data source connector.</p>
    #          <p>
    #             <code>CreateDataSource</code> is a synchronous operation. The operation returns 200 if the
    #       data source was successfully created. Otherwise, an exception is raised.</p>
    #          <p>For an example of creating an index and data source using the Python SDK, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/gs-python.html">Getting started with Python
    #         SDK</a>. For an example of creating an index and data source using the Java SDK, see
    #         <a href="https://docs.aws.amazon.com/kendra/latest/dg/gs-java.html">Getting started with Java
    #         SDK</a>.</p>
    # @param [Hash, Types::CreateDataSourceRequest] params
    # @option params [String] :name
    #   <p>A name for the data source connector.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the index you want to use with the data source connector.</p>
    # @option params [String] :type
    #   <p>The type of data source repository. For example, <code>SHAREPOINT</code>.</p>
    # @option params [Types::DataSourceConfiguration] :configuration
    #   <p>Configuration information to connect to your data source repository.</p>
    #            <p>You can't specify the <code>Configuration</code> parameter when the <code>Type</code>
    #         parameter is set to <code>CUSTOM</code>. If you do, you receive a
    #           <code>ValidationException</code> exception.</p>
    #            <p>The <code>Configuration</code> parameter is required for all other data sources.</p>
    # @option params [Types::DataSourceVpcConfiguration] :vpc_configuration
    #   <p>Configuration information for an Amazon Virtual Private Cloud to connect to your data source.
    #         For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/vpc-configuration.html">Configuring a VPC</a>.</p>
    # @option params [String] :description
    #   <p>A description for the data source connector.</p>
    # @option params [String] :schedule
    #   <p>Sets the frequency for Amazon Kendra to check the documents in your data source
    #         repository and update the index. If you don't set a schedule Amazon Kendra will not
    #         periodically update the index. You can call the <code>StartDataSourceSyncJob</code> API to
    #         update the index.</p>
    #            <p>Specify a <code>cron-</code> format schedule string or an empty string to indicate that 
    #         the index is updated on demand.</p>
    #            <p>You can't specify the <code>Schedule</code> parameter when the <code>Type</code> parameter
    #         is set to <code>CUSTOM</code>. If you do, you receive a <code>ValidationException</code>
    #         exception.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role with permission to access 
    #         the data source and required resources. For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html">IAM access roles for Amazon Kendra.</a>.</p>
    #            <p>You can't specify the <code>RoleArn</code> parameter when the <code>Type</code> parameter
    #         is set to <code>CUSTOM</code>. If you do, you receive a <code>ValidationException</code>
    #         exception.</p>
    #            <p>The <code>RoleArn</code> parameter is required for all other data sources.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of key-value pairs that identify or categorize the data source connector. You 
    #         can also use tags to help control access to the data source connector. Tag keys and values 
    #         can consist of Unicode letters, digits, white space, and any of the following symbols: 
    #         _ . : / = + - @.</p>
    # @option params [String] :client_token
    #   <p>A token that you provide to identify the request to create a data source connector.
    #         Multiple calls to the <code>CreateDataSource</code> API with the same client token will create
    #         only one data source connector.</p>
    # @option params [String] :language_code
    #   <p>The code for a language. This allows you to support a language for all 
    #               documents when creating the data source connector. English is supported 
    #               by default. For more information on supported languages, including their codes, 
    #               see <a href="https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html">Adding 
    #                   documents in languages other than English</a>.</p>
    # @option params [Types::CustomDocumentEnrichmentConfiguration] :custom_document_enrichment_configuration
    #   <p>Configuration information for altering document metadata and content during the
    #               document ingestion process.</p>
    #            <p>For more information on how to create, modify and delete document metadata, or make
    #               other content alterations when you ingest documents into Amazon Kendra, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html">Customizing document metadata during the ingestion process</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DataSourceName", # required
    #     index_id: "IndexId", # required
    #     type: "S3" # One of: ["S3", "SHAREPOINT", "DATABASE", "SALESFORCE", "ONEDRIVE", "SERVICENOW", "CUSTOM", "CONFLUENCE", "GOOGLEDRIVE", "WEBCRAWLER", "WORKDOCS", "FSX", "SLACK", "BOX", "QUIP", "JIRA", "GITHUB", "ALFRESCO", "TEMPLATE"], # required
    #     configuration: {
    #       s3_configuration: {
    #         bucket_name: "S3BucketName", # required
    #         inclusion_prefixes: ["DataSourceInclusionsExclusionsStringsMember"],
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         documents_metadata_configuration: {
    #           s3_prefix: "S3ObjectKey"
    #         },
    #         access_control_list_configuration: {
    #           key_path: "S3ObjectKey"
    #         }
    #       },
    #       share_point_configuration: {
    #         share_point_version: "SHAREPOINT_2013" # One of: ["SHAREPOINT_2013", "SHAREPOINT_2016", "SHAREPOINT_ONLINE", "SHAREPOINT_2019"], # required
    #         urls: ["Url"], # required
    #         secret_arn: "SecretArn", # required
    #         crawl_attachments: false,
    #         use_change_log: false,
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         document_title_field_name: "DataSourceFieldName",
    #         disable_local_groups: false,
    #         ssl_certificate_s3_path: {
    #           bucket: "S3BucketName", # required
    #           key: "S3ObjectKey", # required
    #         },
    #         authentication_type: "HTTP_BASIC" # One of: ["HTTP_BASIC", "OAUTH2"],
    #         proxy_configuration: {
    #           host: "Host", # required
    #           port: 1, # required
    #           credentials: "SecretArn"
    #         }
    #       },
    #       database_configuration: {
    #         database_engine_type: "RDS_AURORA_MYSQL" # One of: ["RDS_AURORA_MYSQL", "RDS_AURORA_POSTGRESQL", "RDS_MYSQL", "RDS_POSTGRESQL"], # required
    #         connection_configuration: { # required
    #           database_host: "DatabaseHost", # required
    #           database_port: 1, # required
    #           database_name: "DatabaseName", # required
    #           table_name: "TableName", # required
    #           secret_arn: "SecretArn", # required
    #         },
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         column_configuration: { # required
    #           document_id_column_name: "ColumnName", # required
    #           document_data_column_name: "ColumnName", # required
    #           document_title_column_name: "ColumnName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             }
    #           ],
    #           change_detecting_columns: ["ColumnName"], # required
    #         },
    #         acl_configuration: {
    #           allowed_groups_column_name: "ColumnName", # required
    #         },
    #         sql_configuration: {
    #           query_identifiers_enclosing_option: "DOUBLE_QUOTES" # One of: ["DOUBLE_QUOTES", "NONE"]
    #         }
    #       },
    #       salesforce_configuration: {
    #         server_url: "Url", # required
    #         secret_arn: "SecretArn", # required
    #         standard_object_configurations: [
    #           {
    #             name: "ACCOUNT" # One of: ["ACCOUNT", "CAMPAIGN", "CASE", "CONTACT", "CONTRACT", "DOCUMENT", "GROUP", "IDEA", "LEAD", "OPPORTUNITY", "PARTNER", "PRICEBOOK", "PRODUCT", "PROFILE", "SOLUTION", "TASK", "USER"], # required
    #             document_data_field_name: "DataSourceFieldName", # required
    #             document_title_field_name: "DataSourceFieldName",
    #             field_mappings: [
    #               {
    #                 data_source_field_name: "DataSourceFieldName", # required
    #                 date_field_format: "DataSourceDateFieldFormat",
    #                 index_field_name: "IndexFieldName", # required
    #               }
    #             ]
    #           }
    #         ],
    #         knowledge_article_configuration: {
    #           included_states: ["DRAFT" # One of: ["DRAFT", "PUBLISHED", "ARCHIVED"]], # required
    #           standard_knowledge_article_type_configuration: {
    #             document_data_field_name: "DataSourceFieldName", # required
    #             document_title_field_name: "DataSourceFieldName",
    #             field_mappings: [
    #               {
    #                 data_source_field_name: "DataSourceFieldName", # required
    #                 date_field_format: "DataSourceDateFieldFormat",
    #                 index_field_name: "IndexFieldName", # required
    #               }
    #             ]
    #           },
    #           custom_knowledge_article_type_configurations: [
    #             {
    #               name: "SalesforceCustomKnowledgeArticleTypeName", # required
    #               document_data_field_name: "DataSourceFieldName", # required
    #               document_title_field_name: "DataSourceFieldName",
    #               field_mappings: [
    #                 {
    #                   data_source_field_name: "DataSourceFieldName", # required
    #                   date_field_format: "DataSourceDateFieldFormat",
    #                   index_field_name: "IndexFieldName", # required
    #                 }
    #               ]
    #             }
    #           ]
    #         },
    #         chatter_feed_configuration: {
    #           document_data_field_name: "DataSourceFieldName", # required
    #           document_title_field_name: "DataSourceFieldName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             }
    #           ],
    #           include_filter_types: ["ACTIVE_USER" # One of: ["ACTIVE_USER", "STANDARD_USER"]]
    #         },
    #         crawl_attachments: false,
    #         standard_object_attachment_configuration: {
    #           document_title_field_name: "DataSourceFieldName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             }
    #           ]
    #         },
    #         include_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclude_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"]
    #       },
    #       one_drive_configuration: {
    #         tenant_domain: "TenantDomain", # required
    #         secret_arn: "SecretArn", # required
    #         one_drive_users: { # required
    #           one_drive_user_list: ["OneDriveUser"],
    #           one_drive_user_s3_path: {
    #             bucket: "S3BucketName", # required
    #             key: "S3ObjectKey", # required
    #           }
    #         },
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         disable_local_groups: false
    #       },
    #       service_now_configuration: {
    #         host_url: "ServiceNowHostUrl", # required
    #         secret_arn: "SecretArn", # required
    #         service_now_build_version: "LONDON" # One of: ["LONDON", "OTHERS"], # required
    #         knowledge_article_configuration: {
    #           crawl_attachments: false,
    #           include_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           exclude_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           document_data_field_name: "DataSourceFieldName", # required
    #           document_title_field_name: "DataSourceFieldName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             }
    #           ],
    #           filter_query: "ServiceNowKnowledgeArticleFilterQuery"
    #         },
    #         service_catalog_configuration: {
    #           crawl_attachments: false,
    #           include_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           exclude_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           document_data_field_name: "DataSourceFieldName", # required
    #           document_title_field_name: "DataSourceFieldName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             }
    #           ]
    #         },
    #         authentication_type: "HTTP_BASIC" # One of: ["HTTP_BASIC", "OAUTH2"]
    #       },
    #       confluence_configuration: {
    #         server_url: "Url", # required
    #         secret_arn: "SecretArn", # required
    #         version: "CLOUD" # One of: ["CLOUD", "SERVER"], # required
    #         space_configuration: {
    #           crawl_personal_spaces: false,
    #           crawl_archived_spaces: false,
    #           include_spaces: ["ConfluenceSpaceIdentifier"],
    #           exclude_spaces: ["ConfluenceSpaceIdentifier"],
    #           space_field_mappings: [
    #             {
    #               data_source_field_name: "DISPLAY_URL" # One of: ["DISPLAY_URL", "ITEM_TYPE", "SPACE_KEY", "URL"],
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName"
    #             }
    #           ]
    #         },
    #         page_configuration: {
    #           page_field_mappings: [
    #             {
    #               data_source_field_name: "AUTHOR" # One of: ["AUTHOR", "CONTENT_STATUS", "CREATED_DATE", "DISPLAY_URL", "ITEM_TYPE", "LABELS", "MODIFIED_DATE", "PARENT_ID", "SPACE_KEY", "SPACE_NAME", "URL", "VERSION"],
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName"
    #             }
    #           ]
    #         },
    #         blog_configuration: {
    #           blog_field_mappings: [
    #             {
    #               data_source_field_name: "AUTHOR" # One of: ["AUTHOR", "DISPLAY_URL", "ITEM_TYPE", "LABELS", "PUBLISH_DATE", "SPACE_KEY", "SPACE_NAME", "URL", "VERSION"],
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName"
    #             }
    #           ]
    #         },
    #         attachment_configuration: {
    #           crawl_attachments: false,
    #           attachment_field_mappings: [
    #             {
    #               data_source_field_name: "AUTHOR" # One of: ["AUTHOR", "CONTENT_TYPE", "CREATED_DATE", "DISPLAY_URL", "FILE_SIZE", "ITEM_TYPE", "PARENT_ID", "SPACE_KEY", "SPACE_NAME", "URL", "VERSION"],
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName"
    #             }
    #           ]
    #         },
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         proxy_configuration: {
    #           host: "Host", # required
    #           port: 1, # required
    #           credentials: "SecretArn"
    #         },
    #         authentication_type: "HTTP_BASIC" # One of: ["HTTP_BASIC", "PAT"]
    #       },
    #       google_drive_configuration: {
    #         secret_arn: "SecretArn", # required
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         exclude_mime_types: ["MimeType"],
    #         exclude_user_accounts: ["UserAccount"],
    #         exclude_shared_drives: ["SharedDriveId"]
    #       },
    #       web_crawler_configuration: {
    #         urls: { # required
    #           seed_url_configuration: {
    #             seed_urls: ["SeedUrl"], # required
    #             web_crawler_mode: "HOST_ONLY" # One of: ["HOST_ONLY", "SUBDOMAINS", "EVERYTHING"]
    #           },
    #           site_maps_configuration: {
    #             site_maps: ["SiteMap"], # required
    #           }
    #         },
    #         crawl_depth: 1,
    #         max_links_per_page: 1,
    #         max_content_size_per_page_in_mega_bytes: 1.0,
    #         max_urls_per_minute_crawl_rate: 1,
    #         url_inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         url_exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         proxy_configuration: {
    #           host: "Host", # required
    #           port: 1, # required
    #           credentials: "SecretArn"
    #         },
    #         authentication_configuration: {
    #           basic_authentication: [
    #             {
    #               host: "Host", # required
    #               port: 1, # required
    #               credentials: "SecretArn", # required
    #             }
    #           ]
    #         }
    #       },
    #       work_docs_configuration: {
    #         organization_id: "OrganizationId", # required
    #         crawl_comments: false,
    #         use_change_log: false,
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ]
    #       },
    #       fsx_configuration: {
    #         file_system_id: "FileSystemId", # required
    #         file_system_type: "WINDOWS" # One of: ["WINDOWS"], # required
    #         vpc_configuration: { # required
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         secret_arn: "SecretArn",
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ]
    #       },
    #       slack_configuration: {
    #         team_id: "TeamId", # required
    #         secret_arn: "SecretArn", # required
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         slack_entity_list: ["PUBLIC_CHANNEL" # One of: ["PUBLIC_CHANNEL", "PRIVATE_CHANNEL", "GROUP_MESSAGE", "DIRECT_MESSAGE"]], # required
    #         use_change_log: false,
    #         crawl_bot_message: false,
    #         exclude_archived: false,
    #         since_crawl_date: "SinceCrawlDate", # required
    #         look_back_period: 1,
    #         private_channel_filter: ["String"],
    #         public_channel_filter: ["String"],
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ]
    #       },
    #       box_configuration: {
    #         enterprise_id: "EnterpriseId", # required
    #         secret_arn: "SecretArn", # required
    #         use_change_log: false,
    #         crawl_comments: false,
    #         crawl_tasks: false,
    #         crawl_web_links: false,
    #         file_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         task_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         comment_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         web_link_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         }
    #       },
    #       quip_configuration: {
    #         domain: "Domain", # required
    #         secret_arn: "SecretArn", # required
    #         crawl_file_comments: false,
    #         crawl_chat_rooms: false,
    #         crawl_attachments: false,
    #         folder_ids: ["FolderId"],
    #         thread_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         message_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         attachment_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         }
    #       },
    #       jira_configuration: {
    #         jira_account_url: "JiraAccountUrl", # required
    #         secret_arn: "SecretArn", # required
    #         use_change_log: false,
    #         project: ["String"],
    #         issue_type: ["String"],
    #         status: ["String"],
    #         issue_sub_entity_filter: ["COMMENTS" # One of: ["COMMENTS", "ATTACHMENTS", "WORKLOGS"]],
    #         attachment_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         comment_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         issue_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         project_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         work_log_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         }
    #       },
    #       git_hub_configuration: {
    #         saa_s_configuration: {
    #           organization_name: "OrganizationName", # required
    #           host_url: "Url", # required
    #         },
    #         on_premise_configuration: {
    #           host_url: "Url", # required
    #           organization_name: "OrganizationName", # required
    #           ssl_certificate_s3_path: { # required
    #             bucket: "S3BucketName", # required
    #             key: "S3ObjectKey", # required
    #           }
    #         },
    #         type: "SAAS" # One of: ["SAAS", "ON_PREMISE"],
    #         secret_arn: "SecretArn", # required
    #         use_change_log: false,
    #         git_hub_document_crawl_properties: {
    #           crawl_repository_documents: false,
    #           crawl_issue: false,
    #           crawl_issue_comment: false,
    #           crawl_issue_comment_attachment: false,
    #           crawl_pull_request: false,
    #           crawl_pull_request_comment: false,
    #           crawl_pull_request_comment_attachment: false
    #         },
    #         repository_filter: ["RepositoryName"],
    #         inclusion_folder_name_patterns: ["String"],
    #         inclusion_file_type_patterns: ["String"],
    #         inclusion_file_name_patterns: ["String"],
    #         exclusion_folder_name_patterns: ["String"],
    #         exclusion_file_type_patterns: ["String"],
    #         exclusion_file_name_patterns: ["String"],
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         git_hub_repository_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         git_hub_commit_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         git_hub_issue_document_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         git_hub_issue_comment_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         git_hub_issue_attachment_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         git_hub_pull_request_comment_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         git_hub_pull_request_document_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         git_hub_pull_request_document_attachment_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ]
    #       },
    #       alfresco_configuration: {
    #         site_url: "SiteUrl", # required
    #         site_id: "SiteId", # required
    #         secret_arn: "SecretArn", # required
    #         ssl_certificate_s3_path: { # required
    #           bucket: "S3BucketName", # required
    #           key: "S3ObjectKey", # required
    #         },
    #         crawl_system_folders: false,
    #         crawl_comments: false,
    #         entity_filter: ["wiki" # One of: ["wiki", "blog", "documentLibrary"]],
    #         document_library_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         blog_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         wiki_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         }
    #       },
    #       template_configuration: {
    #         template: ""null""
    #       }
    #     },
    #     vpc_configuration: {
    #       subnet_ids: ["SubnetId"], # required
    #       security_group_ids: ["VpcSecurityGroupId"], # required
    #     },
    #     description: "Description",
    #     schedule: "ScanSchedule",
    #     role_arn: "RoleArn",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_token: "ClientTokenName",
    #     language_code: "LanguageCode",
    #     custom_document_enrichment_configuration: {
    #       inline_configurations: [
    #         {
    #           condition: {
    #             condition_document_attribute_key: "DocumentAttributeKey", # required
    #             operator: "GreaterThan" # One of: ["GreaterThan", "GreaterThanOrEquals", "LessThan", "LessThanOrEquals", "Equals", "NotEquals", "Contains", "NotContains", "Exists", "NotExists", "BeginsWith"], # required
    #             condition_on_value: {
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now
    #             }
    #           },
    #           target: {
    #             target_document_attribute_key: "DocumentAttributeKey",
    #             target_document_attribute_value_deletion: false,
    #             target_document_attribute_value: {
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now
    #             }
    #           },
    #           document_content_deletion: false
    #         }
    #       ],
    #       pre_extraction_hook_configuration: {
    #         invocation_condition: {
    #           condition_document_attribute_key: "DocumentAttributeKey", # required
    #           operator: "GreaterThan" # One of: ["GreaterThan", "GreaterThanOrEquals", "LessThan", "LessThanOrEquals", "Equals", "NotEquals", "Contains", "NotContains", "Exists", "NotExists", "BeginsWith"], # required
    #           condition_on_value: {
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now
    #           }
    #         },
    #         lambda_arn: "LambdaArn", # required
    #         s3_bucket: "S3BucketName", # required
    #       },
    #       post_extraction_hook_configuration: {
    #         invocation_condition: {
    #           condition_document_attribute_key: "DocumentAttributeKey", # required
    #           operator: "GreaterThan" # One of: ["GreaterThan", "GreaterThanOrEquals", "LessThan", "LessThanOrEquals", "Equals", "NotEquals", "Contains", "NotContains", "Exists", "NotExists", "BeginsWith"], # required
    #           condition_on_value: {
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now
    #           }
    #         },
    #         lambda_arn: "LambdaArn", # required
    #         s3_bucket: "S3BucketName", # required
    #       },
    #       role_arn: "RoleArn"
    #     }
    #   }
    #   options = {}
    #   response = client.create_data_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "DataSourceId", # required
    #   }
    # @return [Types::CreateDataSourceResponse]
    def create_data_source(params = {}, options = {})
      request = build_request(:create_data_source, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Kendra experience such as a search application. For more information 
    #             on creating a search application experience, including using the Python and Java SDKs, 
    #             see <a href="https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html">Building a 
    #                 search experience with no code</a>.</p>
    # @param [Hash, Types::CreateExperienceRequest] params
    # @option params [String] :name
    #   <p>A name for your Amazon Kendra experience.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the index for your Amazon Kendra experience.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role with permission to access 
    #               <code>Query</code> API, <code>GetQuerySuggestions</code> API, and other required APIs. 
    #               The role also must include permission to access IAM Identity Center that stores your 
    #               user and group information. For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html">IAM access roles for Amazon Kendra</a>.</p>
    # @option params [Types::ExperienceConfiguration] :configuration
    #   <p>Configuration information for your Amazon Kendra experience. This includes
    #               <code>ContentSourceConfiguration</code>, which specifies the data source IDs 
    #               and/or FAQ IDs, and <code>UserIdentityConfiguration</code>, which specifies the 
    #               user or group information to grant access to your Amazon Kendra experience.</p>
    # @option params [String] :description
    #   <p>A description for your Amazon Kendra experience.</p>
    # @option params [String] :client_token
    #   <p>A token that you provide to identify the request to create your Amazon Kendra experience.
    #               Multiple calls to the <code>CreateExperience</code> API with the same client 
    #               token creates only one Amazon Kendra experience.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ExperienceName", # required
    #     index_id: "IndexId", # required
    #     role_arn: "RoleArn",
    #     configuration: {
    #       content_source_configuration: {
    #         data_source_ids: ["DataSourceId"],
    #         faq_ids: ["FaqId"],
    #         direct_put_content: false
    #       },
    #       user_identity_configuration: {
    #         identity_attribute_name: "IdentityAttributeName"
    #       }
    #     },
    #     description: "Description",
    #     client_token: "ClientTokenName"
    #   }
    #   options = {}
    #   response = client.create_experience(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ExperienceId", # required
    #   }
    # @return [Types::CreateExperienceResponse]
    def create_experience(params = {}, options = {})
      request = build_request(:create_experience, params)
      request.send_request(options)
    end

    # <p>Creates a set of frequently ask questions (FAQs) using a specified FAQ file stored 
    #             in an Amazon S3 bucket.</p>
    #          <p>Adding FAQs to an index is an asynchronous operation.</p>
    #          <p>For an example of adding an FAQ to an index using Python and Java SDKs, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/in-creating-faq.html#using-faq-file">Using your FAQ file</a>.</p>
    # @param [Hash, Types::CreateFaqRequest] params
    # @option params [String] :index_id
    #   <p>The identifier of the index for the FAQ.</p>
    # @option params [String] :name
    #   <p>A name for the FAQ.</p>
    # @option params [String] :description
    #   <p>A description for the FAQ.</p>
    # @option params [Types::S3Path] :s3_path
    #   <p>The path to the FAQ file in S3.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role with permission to access 
    #               the S3 bucket that contains the FAQ file. For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html">IAM access roles for 
    #                   Amazon Kendra</a>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of key-value pairs that identify the FAQ. You can use the tags to identify and
    #               organize your resources and to control access to resources.</p>
    # @option params [String] :file_format
    #   <p>The format of the FAQ input file. You can choose between a basic CSV format, a CSV
    #               format that includes customs attributes in a header, and a JSON format that includes
    #               custom attributes.</p>
    #            <p>The default format is CSV.</p>
    #            <p>The format must match the format of the file stored in the S3 bucket identified in 
    #               the <code>S3Path</code> parameter.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/in-creating-faq.html">Adding questions and
    #               answers</a>.</p>
    # @option params [String] :client_token
    #   <p>A token that you provide to identify the request to create a FAQ. Multiple calls to
    #               the <code>CreateFaqRequest</code> API with the same client token will create only one
    #               FAQ. </p>
    # @option params [String] :language_code
    #   <p>The code for a language. This allows you to support a language 
    #               for the FAQ document. English is supported by default. 
    #               For more information on supported languages, including their codes, 
    #               see <a href="https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html">Adding 
    #                   documents in languages other than English</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #     name: "FaqName", # required
    #     description: "Description",
    #     s3_path: { # required
    #       bucket: "S3BucketName", # required
    #       key: "S3ObjectKey", # required
    #     },
    #     role_arn: "RoleArn", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     file_format: "CSV" # One of: ["CSV", "CSV_WITH_HEADER", "JSON"],
    #     client_token: "ClientTokenName",
    #     language_code: "LanguageCode"
    #   }
    #   options = {}
    #   response = client.create_faq(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "FaqId"
    #   }
    # @return [Types::CreateFaqResponse]
    def create_faq(params = {}, options = {})
      request = build_request(:create_faq, params)
      request.send_request(options)
    end

    # <p>Creates a set of featured results to display at the top of the search results page.
    #             Featured results are placed above all other results for certain queries. You map 
    #             specific queries to specific documents for featuring in the results. If a query 
    #             contains an exact match, then one or more specific documents are featured in the 
    #             search results.</p>
    #          <p>You can create up to 50 sets of featured results per index. You can request to 
    #             increase this limit by contacting <a href="http://aws.amazon.com/contact-us/">Support</a>.</p>
    # @param [Hash, Types::CreateFeaturedResultsSetRequest] params
    # @option params [String] :index_id
    #   <p>The identifier of the index that you want to use for featuring results.</p>
    # @option params [String] :featured_results_set_name
    #   <p>A name for the set of featured results.</p>
    # @option params [String] :description
    #   <p>A description for the set of featured results.</p>
    # @option params [String] :client_token
    #   <p>A token that you provide to identify the request to create a set of 
    #               featured results. Multiple calls to the <code>CreateFeaturedResultsSet</code> 
    #               API with the same client token will create only one featured results set.</p>
    # @option params [String] :status
    #   <p>The current status of the set of featured results. When the value is 
    #               <code>ACTIVE</code>, featured results are ready for use. You can still 
    #               configure your settings before setting the status to <code>ACTIVE</code>. 
    #               You can set the status to <code>ACTIVE</code> or <code>INACTIVE</code> 
    #               using the <a href="https://docs.aws.amazon.com/kendra/latest/dg/API_UpdateFeaturedResultsSet.html">UpdateFeaturedResultsSet</a> API. The queries you specify for 
    #               featured results must be unique per featured results set for each index, 
    #               whether the status is <code>ACTIVE</code> or <code>INACTIVE</code>.</p>
    # @option params [Array<String>] :query_texts
    #   <p>A list of queries for featuring results. For more information on the 
    #               list of queries, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/API_FeaturedResultsSet.html">FeaturedResultsSet</a>.</p>
    # @option params [Array<Types::FeaturedDocument>] :featured_documents
    #   <p>A list of document IDs for the documents you want to feature at the 
    #               top of the search results page. For more information on the list of 
    #               documents, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/API_FeaturedResultsSet.html">FeaturedResultsSet</a>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of key-value pairs that identify or categorize the featured results set. You
    #               can also use tags to help control access to the featured results set. Tag keys and
    #               values can consist of Unicode letters, digits, white space, and any of the following
    #               symbols:_ . : / = + - @.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #     featured_results_set_name: "FeaturedResultsSetName", # required
    #     description: "FeaturedResultsSetDescription",
    #     client_token: "ClientTokenName",
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #     query_texts: ["QueryText"],
    #     featured_documents: [
    #       {
    #         id: "DocumentId"
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_featured_results_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     featured_results_set: {
    #       featured_results_set_id: "FeaturedResultsSetId",
    #       featured_results_set_name: "FeaturedResultsSetName",
    #       description: "FeaturedResultsSetDescription",
    #       status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #       query_texts: ["QueryText"],
    #       featured_documents: [
    #         {
    #           id: "DocumentId"
    #         }
    #       ],
    #       last_updated_timestamp: 1,
    #       creation_timestamp: 1
    #     }
    #   }
    # @return [Types::CreateFeaturedResultsSetResponse]
    def create_featured_results_set(params = {}, options = {})
      request = build_request(:create_featured_results_set, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Kendra index. Index creation is an asynchronous API. To determine
    #       if index creation has completed, check the <code>Status</code> field returned from a call to
    #         <code>DescribeIndex</code>. The <code>Status</code> field is set to <code>ACTIVE</code> when
    #       the index is ready to use.</p>
    #          <p>Once the index is active, you can index your documents using the
    #         <code>BatchPutDocument</code> API or using one of the supported <a href="https://docs.aws.amazon.com/kendra/latest/dg/data-sources.html">data sources</a>.</p>
    #          <p>For an example of creating an index and data source using the Python SDK, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/gs-python.html">Getting started with Python
    #         SDK</a>. For an example of creating an index and data source using the Java SDK, see
    #         <a href="https://docs.aws.amazon.com/kendra/latest/dg/gs-java.html">Getting started with Java
    #         SDK</a>.</p>
    # @param [Hash, Types::CreateIndexRequest] params
    # @option params [String] :name
    #   <p>A name for the index.</p>
    # @option params [String] :edition
    #   <p>The Amazon Kendra edition to use for the index. Choose <code>DEVELOPER_EDITION</code>
    #         for indexes intended for development, testing, or proof of concept. Use
    #           <code>ENTERPRISE_EDITION</code> for production. Use <code>GEN_AI_ENTERPRISE_EDITION</code>
    #         for creating generative AI applications. Once you set the edition for an index, it can't be
    #         changed. </p>
    #            <p>The <code>Edition</code> parameter is optional. If you don't supply a value, the default
    #         is <code>ENTERPRISE_EDITION</code>.</p>
    #            <p>For more information on quota limits for Gen AI Enterprise Edition, Enterprise Edition, and
    #         Developer Edition indices, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/quotas.html">Quotas</a>.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role with permission to access
    #         your Amazon CloudWatch logs and metrics. For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html">IAM access roles
    #           for Amazon Kendra</a>.</p>
    # @option params [Types::ServerSideEncryptionConfiguration] :server_side_encryption_configuration
    #   <p>The identifier of the KMS customer managed key (CMK) that's used to encrypt
    #         data indexed by Amazon Kendra. Amazon Kendra doesn't support asymmetric CMKs.</p>
    # @option params [String] :description
    #   <p>A description for the index.</p>
    # @option params [String] :client_token
    #   <p>A token that you provide to identify the request to create an index. Multiple calls to the
    #           <code>CreateIndex</code> API with the same client token will create only one index.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of key-value pairs that identify or categorize the index. You can also use tags to
    #         help control access to the index. Tag keys and values can consist of Unicode letters, digits,
    #         white space, and any of the following symbols: _ . : / = + - @.</p>
    # @option params [Array<Types::UserTokenConfiguration>] :user_token_configurations
    #   <p>The user token configuration.</p>
    #            <important>
    #               <p>If you're using an Amazon Kendra Gen AI Enterprise Edition index and you try to use
    #                  <code>UserTokenConfigurations</code> to configure user context policy, Amazon Kendra returns
    #               a <code>ValidationException</code> error.</p>
    #            </important>
    # @option params [String] :user_context_policy
    #   <p>The user context policy.</p>
    #            <important>
    #               <p>If you're using an Amazon Kendra Gen AI Enterprise Edition index, you can only use
    #                  <code>ATTRIBUTE_FILTER</code> to filter search results by user context. If you're
    #               using an Amazon Kendra Gen AI Enterprise Edition index and you try to use
    #                  <code>USER_TOKEN</code> to configure user context policy, Amazon Kendra returns a
    #                  <code>ValidationException</code> error.</p>
    #            </important>
    #            <dl>
    #               <dt>ATTRIBUTE_FILTER</dt>
    #               <dd>
    #                  <p>All indexed content is searchable and displayable for all users. If you want to
    #                     filter search results on user context, you can use the attribute filters of
    #                        <code>_user_id</code> and <code>_group_ids</code> or you can provide user and
    #                     group information in <code>UserContext</code>. </p>
    #               </dd>
    #               <dt>USER_TOKEN</dt>
    #               <dd>
    #                  <p>Enables token-based user access control to filter search results on user
    #                     context. All documents with no access control and all documents accessible to the
    #                     user will be searchable and displayable. </p>
    #               </dd>
    #            </dl>
    # @option params [Types::UserGroupResolutionConfiguration] :user_group_resolution_configuration
    #   <p>Gets users and groups from IAM Identity Center identity source. To configure this,
    #            see <a href="https://docs.aws.amazon.com/kendra/latest/dg/API_UserGroupResolutionConfiguration.html">UserGroupResolutionConfiguration</a>. This is useful for user context filtering,
    #            where search results are filtered based on the user or their group access to
    #            documents.</p>
    #            <important>
    #               <p>If you're using an Amazon Kendra Gen AI Enterprise Edition index,
    #                  <code>UserGroupResolutionConfiguration</code> isn't supported.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "IndexName", # required
    #     edition: "DEVELOPER_EDITION" # One of: ["DEVELOPER_EDITION", "ENTERPRISE_EDITION", "GEN_AI_ENTERPRISE_EDITION"],
    #     role_arn: "RoleArn", # required
    #     server_side_encryption_configuration: {
    #       kms_key_id: "KmsKeyId"
    #     },
    #     description: "Description",
    #     client_token: "ClientTokenName",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     user_token_configurations: [
    #       {
    #         jwt_token_type_configuration: {
    #           key_location: "URL" # One of: ["URL", "SECRET_MANAGER"], # required
    #           url: "Url",
    #           secret_manager_arn: "RoleArn",
    #           user_name_attribute_field: "UserNameAttributeField",
    #           group_attribute_field: "GroupAttributeField",
    #           issuer: "Issuer",
    #           claim_regex: "ClaimRegex"
    #         },
    #         json_token_type_configuration: {
    #           user_name_attribute_field: "String", # required
    #           group_attribute_field: "String", # required
    #         }
    #       }
    #     ],
    #     user_context_policy: "ATTRIBUTE_FILTER" # One of: ["ATTRIBUTE_FILTER", "USER_TOKEN"],
    #     user_group_resolution_configuration: {
    #       user_group_resolution_mode: "AWS_SSO" # One of: ["AWS_SSO", "NONE"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_index(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "IndexId"
    #   }
    # @return [Types::CreateIndexResponse]
    def create_index(params = {}, options = {})
      request = build_request(:create_index, params)
      request.send_request(options)
    end

    # <p>Creates a block list to exlcude certain queries from suggestions.</p>
    #          <p>Any query that contains words or phrases specified in the block 
    #             list is blocked or filtered out from being shown as a suggestion.</p>
    #          <p>You need to provide the file location of your block list text file 
    #             in your S3 bucket. In your text file, enter each block word or phrase 
    #             on a separate line.</p>
    #          <p>For information on the current quota limits for block lists, see 
    #             <a href="https://docs.aws.amazon.com/kendra/latest/dg/quotas.html">Quotas 
    #                 for Amazon Kendra</a>.</p>
    #          <p>
    #             <code>CreateQuerySuggestionsBlockList</code> is currently not supported in the 
    #             Amazon Web Services GovCloud (US-West) region.</p>
    #          <p>For an example of creating a block list for query suggestions using the 
    #             Python SDK, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/query-suggestions.html#query-suggestions-blocklist">Query 
    #                 suggestions block list</a>.</p>
    # @param [Hash, Types::CreateQuerySuggestionsBlockListRequest] params
    # @option params [String] :index_id
    #   <p>The identifier of the index you want to create a query suggestions block list for.</p>
    # @option params [String] :name
    #   <p>A name for the block list.</p>
    #            <p>For example, the name 'offensive-words', which includes all 
    #               offensive words that could appear in user queries and need to be 
    #               blocked from suggestions.</p>
    # @option params [String] :description
    #   <p>A description for the block list.</p>
    #            <p>For example, the description "List of all offensive words that can 
    #               appear in user queries and need to be blocked from suggestions."</p>
    # @option params [Types::S3Path] :source_s3_path
    #   <p>The S3 path to your block list text file in your S3 bucket.</p>
    #            <p>Each block word or phrase should be on a separate line in a text file.</p>
    #            <p>For information on the current quota limits for block lists, see 
    #                   <a href="https://docs.aws.amazon.com/kendra/latest/dg/quotas.html">Quotas 
    #                       for Amazon Kendra</a>.</p>
    # @option params [String] :client_token
    #   <p>A token that you provide to identify the request to create a 
    #               query suggestions block list.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role with permission to 
    #               access your S3 bucket that contains the block list text file. For more information, 
    #               see <a href="https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html">IAM access roles for 
    #                   Amazon Kendra</a>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of key-value pairs that identify or categorize the block list. 
    #               Tag keys and values can consist of Unicode letters, digits, white space, 
    #               and any of the following symbols: _ . : / = + - @.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #     name: "QuerySuggestionsBlockListName", # required
    #     description: "Description",
    #     source_s3_path: { # required
    #       bucket: "S3BucketName", # required
    #       key: "S3ObjectKey", # required
    #     },
    #     client_token: "ClientTokenName",
    #     role_arn: "RoleArn", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_query_suggestions_block_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "QuerySuggestionsBlockListId"
    #   }
    # @return [Types::CreateQuerySuggestionsBlockListResponse]
    def create_query_suggestions_block_list(params = {}, options = {})
      request = build_request(:create_query_suggestions_block_list, params)
      request.send_request(options)
    end

    # <p>Creates a thesaurus for an index. The thesaurus
    #       contains a list of synonyms in Solr format.</p>
    #          <p>For an example of adding a thesaurus file to an index, see 
    #          <a href="https://docs.aws.amazon.com/kendra/latest/dg/index-synonyms-adding-thesaurus-file.html">Adding 
    #             custom synonyms to an index</a>.</p>
    # @param [Hash, Types::CreateThesaurusRequest] params
    # @option params [String] :index_id
    #   <p>The identifier of the index for the thesaurus.</p>
    # @option params [String] :name
    #   <p>A name for the thesaurus.</p>
    # @option params [String] :description
    #   <p>A description for the thesaurus.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role with permission 
    #            to access your S3 bucket that contains the thesaurus file. For more information, 
    #            see <a href="https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html">IAM 
    #               access roles for Amazon Kendra</a>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of key-value pairs that identify or categorize the thesaurus. You can 
    #            also use tags to help control access to the thesaurus. Tag keys and values can 
    #            consist of Unicode letters, digits, white space, and any of the following 
    #            symbols: _ . : / = + - @.</p>
    # @option params [Types::S3Path] :source_s3_path
    #   <p>The path to the thesaurus file in S3.</p>
    # @option params [String] :client_token
    #   <p>A token that you provide to identify the request to create a 
    #            thesaurus. Multiple calls to the <code>CreateThesaurus</code> API 
    #            with the same client token will create only one thesaurus.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #     name: "ThesaurusName", # required
    #     description: "Description",
    #     role_arn: "RoleArn", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     source_s3_path: { # required
    #       bucket: "S3BucketName", # required
    #       key: "S3ObjectKey", # required
    #     },
    #     client_token: "ClientTokenName"
    #   }
    #   options = {}
    #   response = client.create_thesaurus(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ThesaurusId"
    #   }
    # @return [Types::CreateThesaurusResponse]
    def create_thesaurus(params = {}, options = {})
      request = build_request(:create_thesaurus, params)
      request.send_request(options)
    end

    # <p>Deletes an access control configuration that you created for your documents in an
    #             index. This includes user and group access information for your documents. This is
    #             useful for user context filtering, where search results are filtered based on the user
    #             or their group access to documents.</p>
    # @param [Hash, Types::DeleteAccessControlConfigurationRequest] params
    # @option params [String] :index_id
    #   <p>The identifier of the index for an access control configuration.</p>
    # @option params [String] :id
    #   <p>The identifier of the access control configuration you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #     id: "AccessControlConfigurationId", # required
    #   }
    #   options = {}
    #   response = client.delete_access_control_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAccessControlConfigurationResponse]
    def delete_access_control_configuration(params = {}, options = {})
      request = build_request(:delete_access_control_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon Kendra data source connector. An exception is not thrown if the
    #       data source is already being deleted. While the data source is being deleted, the
    #         <code>Status</code> field returned by a call to the <code>DescribeDataSource</code> API is
    #       set to <code>DELETING</code>. For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/delete-data-source.html">Deleting Data Sources</a>.</p>
    #          <p>Deleting an entire data source or re-syncing your index after deleting specific documents 
    #       from a data source could take up to an hour or more, depending on the number of documents you 
    #       want to delete.</p>
    # @param [Hash, Types::DeleteDataSourceRequest] params
    # @option params [String] :id
    #   <p>The identifier of the data source connector you want to delete.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the index used with the data source connector.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "DataSourceId", # required
    #     index_id: "IndexId", # required
    #   }
    #   options = {}
    #   response = client.delete_data_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_data_source(params = {}, options = {})
      request = build_request(:delete_data_source, params)
      request.send_request(options)
    end

    # <p>Deletes your Amazon Kendra experience such as a search application. For more information on
    #             creating a search application experience, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html">Building a search
    #                 experience with no code</a>.</p>
    # @param [Hash, Types::DeleteExperienceRequest] params
    # @option params [String] :id
    #   <p>The identifier of your Amazon Kendra experience you want to delete.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the index for your Amazon Kendra experience.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ExperienceId", # required
    #     index_id: "IndexId", # required
    #   }
    #   options = {}
    #   response = client.delete_experience(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteExperienceResponse]
    def delete_experience(params = {}, options = {})
      request = build_request(:delete_experience, params)
      request.send_request(options)
    end

    # <p>Removes a FAQ from an index.</p>
    # @param [Hash, Types::DeleteFaqRequest] params
    # @option params [String] :id
    #   <p>The identifier of the FAQ you want to remove.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the index for the FAQ.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "FaqId", # required
    #     index_id: "IndexId", # required
    #   }
    #   options = {}
    #   response = client.delete_faq(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_faq(params = {}, options = {})
      request = build_request(:delete_faq, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon Kendra index. An exception is not thrown if the index is already
    #       being deleted. While the index is being deleted, the <code>Status</code> field returned by a
    #       call to the <code>DescribeIndex</code> API is set to <code>DELETING</code>.</p>
    # @param [Hash, Types::DeleteIndexRequest] params
    # @option params [String] :id
    #   <p>The identifier of the index you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "IndexId", # required
    #   }
    #   options = {}
    #   response = client.delete_index(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_index(params = {}, options = {})
      request = build_request(:delete_index, params)
      request.send_request(options)
    end

    # <p>Deletes a group so that all users that belong to the group can no
    #             longer access documents only available to that group.</p>
    #          <p>For example, after deleting the group "Summer Interns", all interns who belonged to
    #             that group no longer see intern-only documents in their search results.</p>
    #          <p>If you want to delete or replace users or sub groups of a group, you need to use the
    #                 <code>PutPrincipalMapping</code> operation. For example, if a user in the group
    #             "Engineering" leaves the engineering team and another user takes their place, you
    #             provide an updated list of users or sub groups that belong to the "Engineering" group
    #             when calling <code>PutPrincipalMapping</code>. You can update your internal list of
    #             users or sub groups and input this list when calling
    #             <code>PutPrincipalMapping</code>.</p>
    #          <p>
    #             <code>DeletePrincipalMapping</code> is currently not supported in the Amazon Web Services GovCloud (US-West) region.</p>
    # @param [Hash, Types::DeletePrincipalMappingRequest] params
    # @option params [String] :index_id
    #   <p>The identifier of the index you want to delete a group from.</p>
    # @option params [String] :data_source_id
    #   <p>The identifier of the data source you want to delete a group from.</p>
    #            <p>A group can be tied to multiple data sources. You can delete a group from accessing
    #               documents in a certain data source. For example, the groups "Research", "Engineering",
    #               and "Sales and Marketing" are all tied to the company's documents stored in the data
    #               sources Confluence and Salesforce. You want to delete "Research" and "Engineering"
    #               groups from Salesforce, so that these groups cannot access customer-related documents
    #               stored in Salesforce. Only "Sales and Marketing" should access documents in the
    #               Salesforce data source.</p>
    # @option params [String] :group_id
    #   <p>The identifier of the group you want to delete.</p>
    # @option params [Integer] :ordering_id
    #   <p>The timestamp identifier you specify to ensure Amazon Kendra does not override
    #               the latest <code>DELETE</code> action with previous actions. The highest number ID,
    #               which is the ordering ID, is the latest action you want to process and apply on top of
    #               other actions with lower number IDs. This prevents previous actions with lower number
    #               IDs from possibly overriding the latest action.</p>
    #            <p>The ordering ID can be the Unix time of the last update you made to a group members
    #               list. You would then provide this list when calling <code>PutPrincipalMapping</code>.
    #               This ensures your <code>DELETE</code> action for that updated group with the latest
    #               members list doesn't get overwritten by earlier <code>DELETE</code> actions for the same
    #               group which are yet to be processed.</p>
    #            <p>The default ordering ID is the current Unix time in milliseconds that the action was
    #               received by Amazon Kendra. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #     data_source_id: "DataSourceId",
    #     group_id: "GroupId", # required
    #     ordering_id: 1
    #   }
    #   options = {}
    #   response = client.delete_principal_mapping(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_principal_mapping(params = {}, options = {})
      request = build_request(:delete_principal_mapping, params)
      request.send_request(options)
    end

    # <p>Deletes a block list used for query suggestions for an index.</p>
    #          <p>A deleted block list might not take effect right away. Amazon Kendra 
    #             needs to refresh the entire suggestions list to add back the 
    #             queries that were previously blocked.</p>
    #          <p>
    #             <code>DeleteQuerySuggestionsBlockList</code> is currently not supported in the 
    #             Amazon Web Services GovCloud (US-West) region.</p>
    # @param [Hash, Types::DeleteQuerySuggestionsBlockListRequest] params
    # @option params [String] :index_id
    #   <p>The identifier of the index for the block list.</p>
    # @option params [String] :id
    #   <p>The identifier of the block list you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #     id: "QuerySuggestionsBlockListId", # required
    #   }
    #   options = {}
    #   response = client.delete_query_suggestions_block_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_query_suggestions_block_list(params = {}, options = {})
      request = build_request(:delete_query_suggestions_block_list, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon Kendra thesaurus. 
    #       </p>
    # @param [Hash, Types::DeleteThesaurusRequest] params
    # @option params [String] :id
    #   <p>The identifier of the thesaurus you want to delete.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the index for the thesaurus.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ThesaurusId", # required
    #     index_id: "IndexId", # required
    #   }
    #   options = {}
    #   response = client.delete_thesaurus(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_thesaurus(params = {}, options = {})
      request = build_request(:delete_thesaurus, params)
      request.send_request(options)
    end

    # <p>Gets information about an access control configuration that you created for your
    #             documents in an index. This includes user and group access information for your
    #             documents. This is useful for user context filtering, where search results are filtered
    #             based on the user or their group access to documents.</p>
    # @param [Hash, Types::DescribeAccessControlConfigurationRequest] params
    # @option params [String] :index_id
    #   <p>The identifier of the index for an access control configuration.</p>
    # @option params [String] :id
    #   <p>The identifier of the access control configuration you want to get information
    #               on.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #     id: "AccessControlConfigurationId", # required
    #   }
    #   options = {}
    #   response = client.describe_access_control_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "AccessControlConfigurationName", # required
    #     description: "Description",
    #     error_message: "ErrorMessage",
    #     access_control_list: [
    #       {
    #         name: "PrincipalName", # required
    #         type: "USER" # One of: ["USER", "GROUP"], # required
    #         access: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #         data_source_id: "DataSourceId"
    #       }
    #     ],
    #     hierarchical_access_control_list: [
    #       {
    #         principal_list: [ # required
    #           {
    #             name: "PrincipalName", # required
    #             type: "USER" # One of: ["USER", "GROUP"], # required
    #             access: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #             data_source_id: "DataSourceId"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeAccessControlConfigurationResponse]
    def describe_access_control_configuration(params = {}, options = {})
      request = build_request(:describe_access_control_configuration, params)
      request.send_request(options)
    end

    # <p>Gets information about an Amazon Kendra data source connector.</p>
    # @param [Hash, Types::DescribeDataSourceRequest] params
    # @option params [String] :id
    #   <p>The identifier of the data source connector.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the index used with the data source connector.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "DataSourceId", # required
    #     index_id: "IndexId", # required
    #   }
    #   options = {}
    #   response = client.describe_data_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "DataSourceId",
    #     index_id: "IndexId",
    #     name: "DataSourceName",
    #     type: "S3" # One of: ["S3", "SHAREPOINT", "DATABASE", "SALESFORCE", "ONEDRIVE", "SERVICENOW", "CUSTOM", "CONFLUENCE", "GOOGLEDRIVE", "WEBCRAWLER", "WORKDOCS", "FSX", "SLACK", "BOX", "QUIP", "JIRA", "GITHUB", "ALFRESCO", "TEMPLATE"],
    #     configuration: {
    #       s3_configuration: {
    #         bucket_name: "S3BucketName", # required
    #         inclusion_prefixes: ["DataSourceInclusionsExclusionsStringsMember"],
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         documents_metadata_configuration: {
    #           s3_prefix: "S3ObjectKey"
    #         },
    #         access_control_list_configuration: {
    #           key_path: "S3ObjectKey"
    #         }
    #       },
    #       share_point_configuration: {
    #         share_point_version: "SHAREPOINT_2013" # One of: ["SHAREPOINT_2013", "SHAREPOINT_2016", "SHAREPOINT_ONLINE", "SHAREPOINT_2019"], # required
    #         urls: ["Url"], # required
    #         secret_arn: "SecretArn", # required
    #         crawl_attachments: false,
    #         use_change_log: false,
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         document_title_field_name: "DataSourceFieldName",
    #         disable_local_groups: false,
    #         ssl_certificate_s3_path: {
    #           bucket: "S3BucketName", # required
    #           key: "S3ObjectKey", # required
    #         },
    #         authentication_type: "HTTP_BASIC" # One of: ["HTTP_BASIC", "OAUTH2"],
    #         proxy_configuration: {
    #           host: "Host", # required
    #           port: 1, # required
    #           credentials: "SecretArn"
    #         }
    #       },
    #       database_configuration: {
    #         database_engine_type: "RDS_AURORA_MYSQL" # One of: ["RDS_AURORA_MYSQL", "RDS_AURORA_POSTGRESQL", "RDS_MYSQL", "RDS_POSTGRESQL"], # required
    #         connection_configuration: { # required
    #           database_host: "DatabaseHost", # required
    #           database_port: 1, # required
    #           database_name: "DatabaseName", # required
    #           table_name: "TableName", # required
    #           secret_arn: "SecretArn", # required
    #         },
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         column_configuration: { # required
    #           document_id_column_name: "ColumnName", # required
    #           document_data_column_name: "ColumnName", # required
    #           document_title_column_name: "ColumnName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             }
    #           ],
    #           change_detecting_columns: ["ColumnName"], # required
    #         },
    #         acl_configuration: {
    #           allowed_groups_column_name: "ColumnName", # required
    #         },
    #         sql_configuration: {
    #           query_identifiers_enclosing_option: "DOUBLE_QUOTES" # One of: ["DOUBLE_QUOTES", "NONE"]
    #         }
    #       },
    #       salesforce_configuration: {
    #         server_url: "Url", # required
    #         secret_arn: "SecretArn", # required
    #         standard_object_configurations: [
    #           {
    #             name: "ACCOUNT" # One of: ["ACCOUNT", "CAMPAIGN", "CASE", "CONTACT", "CONTRACT", "DOCUMENT", "GROUP", "IDEA", "LEAD", "OPPORTUNITY", "PARTNER", "PRICEBOOK", "PRODUCT", "PROFILE", "SOLUTION", "TASK", "USER"], # required
    #             document_data_field_name: "DataSourceFieldName", # required
    #             document_title_field_name: "DataSourceFieldName",
    #             field_mappings: [
    #               {
    #                 data_source_field_name: "DataSourceFieldName", # required
    #                 date_field_format: "DataSourceDateFieldFormat",
    #                 index_field_name: "IndexFieldName", # required
    #               }
    #             ]
    #           }
    #         ],
    #         knowledge_article_configuration: {
    #           included_states: ["DRAFT" # One of: ["DRAFT", "PUBLISHED", "ARCHIVED"]], # required
    #           standard_knowledge_article_type_configuration: {
    #             document_data_field_name: "DataSourceFieldName", # required
    #             document_title_field_name: "DataSourceFieldName",
    #             field_mappings: [
    #               {
    #                 data_source_field_name: "DataSourceFieldName", # required
    #                 date_field_format: "DataSourceDateFieldFormat",
    #                 index_field_name: "IndexFieldName", # required
    #               }
    #             ]
    #           },
    #           custom_knowledge_article_type_configurations: [
    #             {
    #               name: "SalesforceCustomKnowledgeArticleTypeName", # required
    #               document_data_field_name: "DataSourceFieldName", # required
    #               document_title_field_name: "DataSourceFieldName",
    #               field_mappings: [
    #                 {
    #                   data_source_field_name: "DataSourceFieldName", # required
    #                   date_field_format: "DataSourceDateFieldFormat",
    #                   index_field_name: "IndexFieldName", # required
    #                 }
    #               ]
    #             }
    #           ]
    #         },
    #         chatter_feed_configuration: {
    #           document_data_field_name: "DataSourceFieldName", # required
    #           document_title_field_name: "DataSourceFieldName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             }
    #           ],
    #           include_filter_types: ["ACTIVE_USER" # One of: ["ACTIVE_USER", "STANDARD_USER"]]
    #         },
    #         crawl_attachments: false,
    #         standard_object_attachment_configuration: {
    #           document_title_field_name: "DataSourceFieldName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             }
    #           ]
    #         },
    #         include_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclude_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"]
    #       },
    #       one_drive_configuration: {
    #         tenant_domain: "TenantDomain", # required
    #         secret_arn: "SecretArn", # required
    #         one_drive_users: { # required
    #           one_drive_user_list: ["OneDriveUser"],
    #           one_drive_user_s3_path: {
    #             bucket: "S3BucketName", # required
    #             key: "S3ObjectKey", # required
    #           }
    #         },
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         disable_local_groups: false
    #       },
    #       service_now_configuration: {
    #         host_url: "ServiceNowHostUrl", # required
    #         secret_arn: "SecretArn", # required
    #         service_now_build_version: "LONDON" # One of: ["LONDON", "OTHERS"], # required
    #         knowledge_article_configuration: {
    #           crawl_attachments: false,
    #           include_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           exclude_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           document_data_field_name: "DataSourceFieldName", # required
    #           document_title_field_name: "DataSourceFieldName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             }
    #           ],
    #           filter_query: "ServiceNowKnowledgeArticleFilterQuery"
    #         },
    #         service_catalog_configuration: {
    #           crawl_attachments: false,
    #           include_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           exclude_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           document_data_field_name: "DataSourceFieldName", # required
    #           document_title_field_name: "DataSourceFieldName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             }
    #           ]
    #         },
    #         authentication_type: "HTTP_BASIC" # One of: ["HTTP_BASIC", "OAUTH2"]
    #       },
    #       confluence_configuration: {
    #         server_url: "Url", # required
    #         secret_arn: "SecretArn", # required
    #         version: "CLOUD" # One of: ["CLOUD", "SERVER"], # required
    #         space_configuration: {
    #           crawl_personal_spaces: false,
    #           crawl_archived_spaces: false,
    #           include_spaces: ["ConfluenceSpaceIdentifier"],
    #           exclude_spaces: ["ConfluenceSpaceIdentifier"],
    #           space_field_mappings: [
    #             {
    #               data_source_field_name: "DISPLAY_URL" # One of: ["DISPLAY_URL", "ITEM_TYPE", "SPACE_KEY", "URL"],
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName"
    #             }
    #           ]
    #         },
    #         page_configuration: {
    #           page_field_mappings: [
    #             {
    #               data_source_field_name: "AUTHOR" # One of: ["AUTHOR", "CONTENT_STATUS", "CREATED_DATE", "DISPLAY_URL", "ITEM_TYPE", "LABELS", "MODIFIED_DATE", "PARENT_ID", "SPACE_KEY", "SPACE_NAME", "URL", "VERSION"],
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName"
    #             }
    #           ]
    #         },
    #         blog_configuration: {
    #           blog_field_mappings: [
    #             {
    #               data_source_field_name: "AUTHOR" # One of: ["AUTHOR", "DISPLAY_URL", "ITEM_TYPE", "LABELS", "PUBLISH_DATE", "SPACE_KEY", "SPACE_NAME", "URL", "VERSION"],
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName"
    #             }
    #           ]
    #         },
    #         attachment_configuration: {
    #           crawl_attachments: false,
    #           attachment_field_mappings: [
    #             {
    #               data_source_field_name: "AUTHOR" # One of: ["AUTHOR", "CONTENT_TYPE", "CREATED_DATE", "DISPLAY_URL", "FILE_SIZE", "ITEM_TYPE", "PARENT_ID", "SPACE_KEY", "SPACE_NAME", "URL", "VERSION"],
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName"
    #             }
    #           ]
    #         },
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         proxy_configuration: {
    #           host: "Host", # required
    #           port: 1, # required
    #           credentials: "SecretArn"
    #         },
    #         authentication_type: "HTTP_BASIC" # One of: ["HTTP_BASIC", "PAT"]
    #       },
    #       google_drive_configuration: {
    #         secret_arn: "SecretArn", # required
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         exclude_mime_types: ["MimeType"],
    #         exclude_user_accounts: ["UserAccount"],
    #         exclude_shared_drives: ["SharedDriveId"]
    #       },
    #       web_crawler_configuration: {
    #         urls: { # required
    #           seed_url_configuration: {
    #             seed_urls: ["SeedUrl"], # required
    #             web_crawler_mode: "HOST_ONLY" # One of: ["HOST_ONLY", "SUBDOMAINS", "EVERYTHING"]
    #           },
    #           site_maps_configuration: {
    #             site_maps: ["SiteMap"], # required
    #           }
    #         },
    #         crawl_depth: 1,
    #         max_links_per_page: 1,
    #         max_content_size_per_page_in_mega_bytes: 1.0,
    #         max_urls_per_minute_crawl_rate: 1,
    #         url_inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         url_exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         proxy_configuration: {
    #           host: "Host", # required
    #           port: 1, # required
    #           credentials: "SecretArn"
    #         },
    #         authentication_configuration: {
    #           basic_authentication: [
    #             {
    #               host: "Host", # required
    #               port: 1, # required
    #               credentials: "SecretArn", # required
    #             }
    #           ]
    #         }
    #       },
    #       work_docs_configuration: {
    #         organization_id: "OrganizationId", # required
    #         crawl_comments: false,
    #         use_change_log: false,
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ]
    #       },
    #       fsx_configuration: {
    #         file_system_id: "FileSystemId", # required
    #         file_system_type: "WINDOWS" # One of: ["WINDOWS"], # required
    #         vpc_configuration: { # required
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         secret_arn: "SecretArn",
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ]
    #       },
    #       slack_configuration: {
    #         team_id: "TeamId", # required
    #         secret_arn: "SecretArn", # required
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         slack_entity_list: ["PUBLIC_CHANNEL" # One of: ["PUBLIC_CHANNEL", "PRIVATE_CHANNEL", "GROUP_MESSAGE", "DIRECT_MESSAGE"]], # required
    #         use_change_log: false,
    #         crawl_bot_message: false,
    #         exclude_archived: false,
    #         since_crawl_date: "SinceCrawlDate", # required
    #         look_back_period: 1,
    #         private_channel_filter: ["String"],
    #         public_channel_filter: ["String"],
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ]
    #       },
    #       box_configuration: {
    #         enterprise_id: "EnterpriseId", # required
    #         secret_arn: "SecretArn", # required
    #         use_change_log: false,
    #         crawl_comments: false,
    #         crawl_tasks: false,
    #         crawl_web_links: false,
    #         file_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         task_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         comment_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         web_link_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         }
    #       },
    #       quip_configuration: {
    #         domain: "Domain", # required
    #         secret_arn: "SecretArn", # required
    #         crawl_file_comments: false,
    #         crawl_chat_rooms: false,
    #         crawl_attachments: false,
    #         folder_ids: ["FolderId"],
    #         thread_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         message_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         attachment_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         }
    #       },
    #       jira_configuration: {
    #         jira_account_url: "JiraAccountUrl", # required
    #         secret_arn: "SecretArn", # required
    #         use_change_log: false,
    #         project: ["String"],
    #         issue_type: ["String"],
    #         status: ["String"],
    #         issue_sub_entity_filter: ["COMMENTS" # One of: ["COMMENTS", "ATTACHMENTS", "WORKLOGS"]],
    #         attachment_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         comment_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         issue_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         project_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         work_log_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         }
    #       },
    #       git_hub_configuration: {
    #         saa_s_configuration: {
    #           organization_name: "OrganizationName", # required
    #           host_url: "Url", # required
    #         },
    #         on_premise_configuration: {
    #           host_url: "Url", # required
    #           organization_name: "OrganizationName", # required
    #           ssl_certificate_s3_path: { # required
    #             bucket: "S3BucketName", # required
    #             key: "S3ObjectKey", # required
    #           }
    #         },
    #         type: "SAAS" # One of: ["SAAS", "ON_PREMISE"],
    #         secret_arn: "SecretArn", # required
    #         use_change_log: false,
    #         git_hub_document_crawl_properties: {
    #           crawl_repository_documents: false,
    #           crawl_issue: false,
    #           crawl_issue_comment: false,
    #           crawl_issue_comment_attachment: false,
    #           crawl_pull_request: false,
    #           crawl_pull_request_comment: false,
    #           crawl_pull_request_comment_attachment: false
    #         },
    #         repository_filter: ["RepositoryName"],
    #         inclusion_folder_name_patterns: ["String"],
    #         inclusion_file_type_patterns: ["String"],
    #         inclusion_file_name_patterns: ["String"],
    #         exclusion_folder_name_patterns: ["String"],
    #         exclusion_file_type_patterns: ["String"],
    #         exclusion_file_name_patterns: ["String"],
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         git_hub_repository_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         git_hub_commit_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         git_hub_issue_document_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         git_hub_issue_comment_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         git_hub_issue_attachment_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         git_hub_pull_request_comment_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         git_hub_pull_request_document_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         git_hub_pull_request_document_attachment_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ]
    #       },
    #       alfresco_configuration: {
    #         site_url: "SiteUrl", # required
    #         site_id: "SiteId", # required
    #         secret_arn: "SecretArn", # required
    #         ssl_certificate_s3_path: { # required
    #           bucket: "S3BucketName", # required
    #           key: "S3ObjectKey", # required
    #         },
    #         crawl_system_folders: false,
    #         crawl_comments: false,
    #         entity_filter: ["wiki" # One of: ["wiki", "blog", "documentLibrary"]],
    #         document_library_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         blog_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         wiki_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         }
    #       },
    #       template_configuration: {
    #         template: ""null""
    #       }
    #     },
    #     vpc_configuration: {
    #       subnet_ids: ["SubnetId"], # required
    #       security_group_ids: ["VpcSecurityGroupId"], # required
    #     },
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     description: "Description",
    #     status: "CREATING" # One of: ["CREATING", "DELETING", "FAILED", "UPDATING", "ACTIVE"],
    #     schedule: "ScanSchedule",
    #     role_arn: "RoleArn",
    #     error_message: "ErrorMessage",
    #     language_code: "LanguageCode",
    #     custom_document_enrichment_configuration: {
    #       inline_configurations: [
    #         {
    #           condition: {
    #             condition_document_attribute_key: "DocumentAttributeKey", # required
    #             operator: "GreaterThan" # One of: ["GreaterThan", "GreaterThanOrEquals", "LessThan", "LessThanOrEquals", "Equals", "NotEquals", "Contains", "NotContains", "Exists", "NotExists", "BeginsWith"], # required
    #             condition_on_value: {
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now
    #             }
    #           },
    #           target: {
    #             target_document_attribute_key: "DocumentAttributeKey",
    #             target_document_attribute_value_deletion: false,
    #             target_document_attribute_value: {
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now
    #             }
    #           },
    #           document_content_deletion: false
    #         }
    #       ],
    #       pre_extraction_hook_configuration: {
    #         invocation_condition: {
    #           condition_document_attribute_key: "DocumentAttributeKey", # required
    #           operator: "GreaterThan" # One of: ["GreaterThan", "GreaterThanOrEquals", "LessThan", "LessThanOrEquals", "Equals", "NotEquals", "Contains", "NotContains", "Exists", "NotExists", "BeginsWith"], # required
    #           condition_on_value: {
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now
    #           }
    #         },
    #         lambda_arn: "LambdaArn", # required
    #         s3_bucket: "S3BucketName", # required
    #       },
    #       post_extraction_hook_configuration: {
    #         invocation_condition: {
    #           condition_document_attribute_key: "DocumentAttributeKey", # required
    #           operator: "GreaterThan" # One of: ["GreaterThan", "GreaterThanOrEquals", "LessThan", "LessThanOrEquals", "Equals", "NotEquals", "Contains", "NotContains", "Exists", "NotExists", "BeginsWith"], # required
    #           condition_on_value: {
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now
    #           }
    #         },
    #         lambda_arn: "LambdaArn", # required
    #         s3_bucket: "S3BucketName", # required
    #       },
    #       role_arn: "RoleArn"
    #     }
    #   }
    # @return [Types::DescribeDataSourceResponse]
    def describe_data_source(params = {}, options = {})
      request = build_request(:describe_data_source, params)
      request.send_request(options)
    end

    # <p>Gets information about your Amazon Kendra experience such as a search application. 
    #             For more information on creating a search application experience, 
    #             see <a href="https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html">Building 
    #                 a search experience with no code</a>.</p>
    # @param [Hash, Types::DescribeExperienceRequest] params
    # @option params [String] :id
    #   <p>The identifier of your Amazon Kendra experience you want to get information on.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the index for your Amazon Kendra experience.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ExperienceId", # required
    #     index_id: "IndexId", # required
    #   }
    #   options = {}
    #   response = client.describe_experience(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ExperienceId",
    #     index_id: "IndexId",
    #     name: "ExperienceName",
    #     endpoints: [
    #       {
    #         endpoint_type: "HOME" # One of: ["HOME"],
    #         endpoint: "Endpoint"
    #       }
    #     ],
    #     configuration: {
    #       content_source_configuration: {
    #         data_source_ids: ["DataSourceId"],
    #         faq_ids: ["FaqId"],
    #         direct_put_content: false
    #       },
    #       user_identity_configuration: {
    #         identity_attribute_name: "IdentityAttributeName"
    #       }
    #     },
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     description: "Description",
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "FAILED"],
    #     role_arn: "RoleArn",
    #     error_message: "ErrorMessage"
    #   }
    # @return [Types::DescribeExperienceResponse]
    def describe_experience(params = {}, options = {})
      request = build_request(:describe_experience, params)
      request.send_request(options)
    end

    # <p>Gets information about a FAQ.</p>
    # @param [Hash, Types::DescribeFaqRequest] params
    # @option params [String] :id
    #   <p>The identifier of the FAQ you want to get information on.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the index for the FAQ.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "FaqId", # required
    #     index_id: "IndexId", # required
    #   }
    #   options = {}
    #   response = client.describe_faq(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "FaqId",
    #     index_id: "IndexId",
    #     name: "FaqName",
    #     description: "Description",
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     s3_path: {
    #       bucket: "S3BucketName", # required
    #       key: "S3ObjectKey", # required
    #     },
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"],
    #     role_arn: "RoleArn",
    #     error_message: "ErrorMessage",
    #     file_format: "CSV" # One of: ["CSV", "CSV_WITH_HEADER", "JSON"],
    #     language_code: "LanguageCode"
    #   }
    # @return [Types::DescribeFaqResponse]
    def describe_faq(params = {}, options = {})
      request = build_request(:describe_faq, params)
      request.send_request(options)
    end

    # <p>Gets information about a set of featured results. Features results are placed
    #             above all other results for certain queries. If there's an exact match of a query, 
    #             then one or more specific documents are featured in the search results.</p>
    # @param [Hash, Types::DescribeFeaturedResultsSetRequest] params
    # @option params [String] :index_id
    #   <p>The identifier of the index used for featuring results.</p>
    # @option params [String] :featured_results_set_id
    #   <p>The identifier of the set of featured results that you want to get 
    #               information on.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #     featured_results_set_id: "FeaturedResultsSetId", # required
    #   }
    #   options = {}
    #   response = client.describe_featured_results_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     featured_results_set_id: "FeaturedResultsSetId",
    #     featured_results_set_name: "FeaturedResultsSetName",
    #     description: "FeaturedResultsSetDescription",
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #     query_texts: ["QueryText"],
    #     featured_documents_with_metadata: [
    #       {
    #         id: "DocumentId",
    #         title: "String",
    #         uri: "Url"
    #       }
    #     ],
    #     featured_documents_missing: [
    #       {
    #         id: "DocumentId"
    #       }
    #     ],
    #     last_updated_timestamp: 1,
    #     creation_timestamp: 1
    #   }
    # @return [Types::DescribeFeaturedResultsSetResponse]
    def describe_featured_results_set(params = {}, options = {})
      request = build_request(:describe_featured_results_set, params)
      request.send_request(options)
    end

    # <p>Gets information about an Amazon Kendra index.</p>
    # @param [Hash, Types::DescribeIndexRequest] params
    # @option params [String] :id
    #   <p>The identifier of the index you want to get information on.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "IndexId", # required
    #   }
    #   options = {}
    #   response = client.describe_index(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "IndexName",
    #     id: "IndexId",
    #     edition: "DEVELOPER_EDITION" # One of: ["DEVELOPER_EDITION", "ENTERPRISE_EDITION", "GEN_AI_ENTERPRISE_EDITION"],
    #     role_arn: "RoleArn",
    #     server_side_encryption_configuration: {
    #       kms_key_id: "KmsKeyId"
    #     },
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "SYSTEM_UPDATING"],
    #     description: "Description",
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     document_metadata_configurations: [
    #       {
    #         name: "DocumentMetadataConfigurationName", # required
    #         type: "STRING_VALUE" # One of: ["STRING_VALUE", "STRING_LIST_VALUE", "LONG_VALUE", "DATE_VALUE"], # required
    #         relevance: {
    #           freshness: false,
    #           importance: 1,
    #           duration: "Duration",
    #           rank_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #           value_importance_map: {
    #             "ValueImportanceMapKey" => 1
    #           }
    #         },
    #         search: {
    #           facetable: false,
    #           searchable: false,
    #           displayable: false,
    #           sortable: false
    #         }
    #       }
    #     ],
    #     index_statistics: {
    #       faq_statistics: { # required
    #         indexed_question_answers_count: 1, # required
    #       },
    #       text_document_statistics: { # required
    #         indexed_text_documents_count: 1, # required
    #         indexed_text_bytes: 1, # required
    #       }
    #     },
    #     error_message: "ErrorMessage",
    #     capacity_units: {
    #       storage_capacity_units: 1, # required
    #       query_capacity_units: 1, # required
    #     },
    #     user_token_configurations: [
    #       {
    #         jwt_token_type_configuration: {
    #           key_location: "URL" # One of: ["URL", "SECRET_MANAGER"], # required
    #           url: "Url",
    #           secret_manager_arn: "RoleArn",
    #           user_name_attribute_field: "UserNameAttributeField",
    #           group_attribute_field: "GroupAttributeField",
    #           issuer: "Issuer",
    #           claim_regex: "ClaimRegex"
    #         },
    #         json_token_type_configuration: {
    #           user_name_attribute_field: "String", # required
    #           group_attribute_field: "String", # required
    #         }
    #       }
    #     ],
    #     user_context_policy: "ATTRIBUTE_FILTER" # One of: ["ATTRIBUTE_FILTER", "USER_TOKEN"],
    #     user_group_resolution_configuration: {
    #       user_group_resolution_mode: "AWS_SSO" # One of: ["AWS_SSO", "NONE"], # required
    #     }
    #   }
    # @return [Types::DescribeIndexResponse]
    def describe_index(params = {}, options = {})
      request = build_request(:describe_index, params)
      request.send_request(options)
    end

    # <p>Describes the processing of <code>PUT</code> and <code>DELETE</code> actions for
    #             mapping users to their groups. This includes information on the status of actions
    #             currently processing or yet to be processed, when actions were last updated, when
    #             actions were received by Amazon Kendra, the latest action that should process and
    #             apply after other actions, and useful error messages if an action could not be
    #             processed.</p>
    #          <p>
    #             <code>DescribePrincipalMapping</code> is currently not supported in the Amazon Web Services GovCloud (US-West) region.</p>
    # @param [Hash, Types::DescribePrincipalMappingRequest] params
    # @option params [String] :index_id
    #   <p>The identifier of the index required to check the processing of <code>PUT</code> and
    #                   <code>DELETE</code> actions for mapping users to their groups.</p>
    # @option params [String] :data_source_id
    #   <p>The identifier of the data source to check the processing of <code>PUT</code> and
    #                   <code>DELETE</code> actions for mapping users to their groups.</p>
    # @option params [String] :group_id
    #   <p>The identifier of the group required to check the processing of <code>PUT</code> and
    #                   <code>DELETE</code> actions for mapping users to their groups.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #     data_source_id: "DataSourceId",
    #     group_id: "GroupId", # required
    #   }
    #   options = {}
    #   response = client.describe_principal_mapping(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     index_id: "IndexId",
    #     data_source_id: "DataSourceId",
    #     group_id: "GroupId",
    #     group_ordering_id_summaries: [
    #       {
    #         status: "FAILED" # One of: ["FAILED", "SUCCEEDED", "PROCESSING", "DELETING", "DELETED"],
    #         last_updated_at: Time.now,
    #         received_at: Time.now,
    #         ordering_id: 1,
    #         failure_reason: "FailureReason"
    #       }
    #     ]
    #   }
    # @return [Types::DescribePrincipalMappingResponse]
    def describe_principal_mapping(params = {}, options = {})
      request = build_request(:describe_principal_mapping, params)
      request.send_request(options)
    end

    # <p>Gets information about a block list used for query suggestions for 
    #             an index.</p>
    #          <p>This is used to check the current settings that are applied to a 
    #             block list.</p>
    #          <p>
    #             <code>DescribeQuerySuggestionsBlockList</code> is currently not supported in the 
    #             Amazon Web Services GovCloud (US-West) region.</p>
    # @param [Hash, Types::DescribeQuerySuggestionsBlockListRequest] params
    # @option params [String] :index_id
    #   <p>The identifier of the index for the block list.</p>
    # @option params [String] :id
    #   <p>The identifier of the block list you want to get information on.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #     id: "QuerySuggestionsBlockListId", # required
    #   }
    #   options = {}
    #   response = client.describe_query_suggestions_block_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     index_id: "IndexId",
    #     id: "QuerySuggestionsBlockListId",
    #     name: "QuerySuggestionsBlockListName",
    #     description: "Description",
    #     status: "ACTIVE" # One of: ["ACTIVE", "CREATING", "DELETING", "UPDATING", "ACTIVE_BUT_UPDATE_FAILED", "FAILED"],
    #     error_message: "ErrorMessage",
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     source_s3_path: {
    #       bucket: "S3BucketName", # required
    #       key: "S3ObjectKey", # required
    #     },
    #     item_count: 1,
    #     file_size_bytes: 1,
    #     role_arn: "RoleArn"
    #   }
    # @return [Types::DescribeQuerySuggestionsBlockListResponse]
    def describe_query_suggestions_block_list(params = {}, options = {})
      request = build_request(:describe_query_suggestions_block_list, params)
      request.send_request(options)
    end

    # <p>Gets information on the settings of query suggestions for an index.</p>
    #          <p>This is used to check the current settings applied 
    #             to query suggestions.</p>
    #          <p>
    #             <code>DescribeQuerySuggestionsConfig</code> is currently not supported in the 
    #             Amazon Web Services GovCloud (US-West) region.</p>
    # @param [Hash, Types::DescribeQuerySuggestionsConfigRequest] params
    # @option params [String] :index_id
    #   <p>The identifier of the index with query suggestions that you want to get 
    #               information on.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #   }
    #   options = {}
    #   response = client.describe_query_suggestions_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     mode: "ENABLED" # One of: ["ENABLED", "LEARN_ONLY"],
    #     status: "ACTIVE" # One of: ["ACTIVE", "UPDATING"],
    #     query_log_look_back_window_in_days: 1,
    #     include_queries_without_user_information: false,
    #     minimum_number_of_querying_users: 1,
    #     minimum_query_count: 1,
    #     last_suggestions_build_time: Time.now,
    #     last_clear_time: Time.now,
    #     total_suggestions_count: 1,
    #     attribute_suggestions_config: {
    #       suggestable_config_list: [
    #         {
    #           attribute_name: "DocumentAttributeKey",
    #           suggestable: false
    #         }
    #       ],
    #       attribute_suggestions_mode: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"]
    #     }
    #   }
    # @return [Types::DescribeQuerySuggestionsConfigResponse]
    def describe_query_suggestions_config(params = {}, options = {})
      request = build_request(:describe_query_suggestions_config, params)
      request.send_request(options)
    end

    # <p>Gets information about an Amazon Kendra thesaurus.</p>
    # @param [Hash, Types::DescribeThesaurusRequest] params
    # @option params [String] :id
    #   <p>The identifier of the thesaurus you want to get information on.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the index for the thesaurus.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ThesaurusId", # required
    #     index_id: "IndexId", # required
    #   }
    #   options = {}
    #   response = client.describe_thesaurus(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ThesaurusId",
    #     index_id: "IndexId",
    #     name: "ThesaurusName",
    #     description: "Description",
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "UPDATING", "ACTIVE_BUT_UPDATE_FAILED", "FAILED"],
    #     error_message: "ErrorMessage",
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     role_arn: "RoleArn",
    #     source_s3_path: {
    #       bucket: "S3BucketName", # required
    #       key: "S3ObjectKey", # required
    #     },
    #     file_size_bytes: 1,
    #     term_count: 1,
    #     synonym_rule_count: 1
    #   }
    # @return [Types::DescribeThesaurusResponse]
    def describe_thesaurus(params = {}, options = {})
      request = build_request(:describe_thesaurus, params)
      request.send_request(options)
    end

    # <p>Prevents users or groups in your IAM Identity Center identity source
    #             from accessing your Amazon Kendra experience. You can create an Amazon Kendra experience 
    #             such as a search application. For more information on creating a search 
    #             application experience, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html">Building 
    #                 a search experience with no code</a>.</p>
    # @param [Hash, Types::DisassociateEntitiesFromExperienceRequest] params
    # @option params [String] :id
    #   <p>The identifier of your Amazon Kendra experience.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the index for your Amazon Kendra experience.</p>
    # @option params [Array<Types::EntityConfiguration>] :entity_list
    #   <p>Lists users or groups in your IAM Identity Center identity source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ExperienceId", # required
    #     index_id: "IndexId", # required
    #     entity_list: [ # required
    #       {
    #         entity_id: "EntityId", # required
    #         entity_type: "USER" # One of: ["USER", "GROUP"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.disassociate_entities_from_experience(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_entity_list: [
    #       {
    #         entity_id: "EntityId",
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::DisassociateEntitiesFromExperienceResponse]
    def disassociate_entities_from_experience(params = {}, options = {})
      request = build_request(:disassociate_entities_from_experience, params)
      request.send_request(options)
    end

    # <p>Removes the specific permissions of users or groups in your IAM Identity Center 
    #             identity source with access to your Amazon Kendra experience. You can create an Amazon Kendra 
    #             experience such as a search application. For more information on creating a 
    #             search application experience, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html">Building a 
    #                 search experience with no code</a>.</p>
    # @param [Hash, Types::DisassociatePersonasFromEntitiesRequest] params
    # @option params [String] :id
    #   <p>The identifier of your Amazon Kendra experience.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the index for your Amazon Kendra experience.</p>
    # @option params [Array<String>] :entity_ids
    #   <p>The identifiers of users or groups in your IAM Identity Center identity 
    #               source. For example, user IDs could be user emails.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ExperienceId", # required
    #     index_id: "IndexId", # required
    #     entity_ids: ["EntityId"], # required
    #   }
    #   options = {}
    #   response = client.disassociate_personas_from_entities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_entity_list: [
    #       {
    #         entity_id: "EntityId",
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::DisassociatePersonasFromEntitiesResponse]
    def disassociate_personas_from_entities(params = {}, options = {})
      request = build_request(:disassociate_personas_from_entities, params)
      request.send_request(options)
    end

    # <p>Fetches the queries that are suggested to your users.</p>
    #          <p>
    #             <code>GetQuerySuggestions</code> is currently not supported in the 
    #             Amazon Web Services GovCloud (US-West) region.</p>
    # @param [Hash, Types::GetQuerySuggestionsRequest] params
    # @option params [String] :index_id
    #   <p>The identifier of the index you want to get query suggestions from.</p>
    # @option params [String] :query_text
    #   <p>The text of a user's query to generate query suggestions.</p>
    #            <p>A query is suggested if the query prefix matches 
    #               what a user starts to type as their query.</p>
    #            <p>Amazon Kendra does not show any suggestions if a user 
    #               types fewer than two characters or more than 60 characters. 
    #               A query must also have at least one search result and contain 
    #               at least one word of more than four characters.</p>
    # @option params [Integer] :max_suggestions_count
    #   <p>The maximum number of query suggestions you want to show 
    #               to your users.</p>
    # @option params [Array<String>] :suggestion_types
    #   <p>The suggestions type to base query suggestions on. The suggestion 
    #               types are query history or document fields/attributes. You can set 
    #               one type or the other.</p>
    #            <p>If you set query history as your suggestions type, Amazon Kendra 
    #               suggests queries relevant to your users based on popular queries in 
    #               the query history.</p>
    #            <p>If you set document fields/attributes as your suggestions type, 
    #               Amazon Kendra suggests queries relevant to your users based on the 
    #               contents of document fields.</p>
    # @option params [Types::AttributeSuggestionsGetConfig] :attribute_suggestions_config
    #   <p>Configuration information for the document fields/attributes that you 
    #               want to base query suggestions on.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #     query_text: "SuggestionQueryText", # required
    #     max_suggestions_count: 1,
    #     suggestion_types: ["QUERY" # One of: ["QUERY", "DOCUMENT_ATTRIBUTES"]],
    #     attribute_suggestions_config: {
    #       suggestion_attributes: ["DocumentAttributeKey"],
    #       additional_response_attributes: ["DocumentAttributeKey"],
    #       attribute_filter: {
    #         and_all_filters: [
    #           {
    #             # recursive AttributeFilter
    #           }
    #         ],
    #         or_all_filters: [
    #           {
    #             # recursive AttributeFilter
    #           }
    #         ],
    #         not_filter: {
    #           # recursive AttributeFilter
    #         },
    #         equals_to: {
    #           key: "DocumentAttributeKey", # required
    #           value: { # required
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now
    #           }
    #         },
    #         contains_all: {
    #           key: "DocumentAttributeKey", # required
    #           value: { # required
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now
    #           }
    #         },
    #         contains_any: {
    #           key: "DocumentAttributeKey", # required
    #           value: { # required
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now
    #           }
    #         },
    #         greater_than: {
    #           key: "DocumentAttributeKey", # required
    #           value: { # required
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now
    #           }
    #         },
    #         greater_than_or_equals: {
    #           key: "DocumentAttributeKey", # required
    #           value: { # required
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now
    #           }
    #         },
    #         less_than: {
    #           key: "DocumentAttributeKey", # required
    #           value: { # required
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now
    #           }
    #         },
    #         less_than_or_equals: {
    #           key: "DocumentAttributeKey", # required
    #           value: { # required
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now
    #           }
    #         }
    #       },
    #       user_context: {
    #         token: "Token",
    #         user_id: "PrincipalName",
    #         groups: ["PrincipalName"],
    #         data_source_groups: [
    #           {
    #             group_id: "PrincipalName", # required
    #             data_source_id: "DataSourceId", # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.get_query_suggestions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     query_suggestions_id: "QuerySuggestionsId",
    #     suggestions: [
    #       {
    #         id: "ResultId",
    #         value: {
    #           text: {
    #             text: "String",
    #             highlights: [
    #               {
    #                 begin_offset: 1,
    #                 end_offset: 1
    #               }
    #             ]
    #           }
    #         },
    #         source_documents: [
    #           {
    #             document_id: "String",
    #             suggestion_attributes: ["DocumentAttributeKey"],
    #             additional_attributes: [
    #               {
    #                 key: "DocumentAttributeKey", # required
    #                 value: { # required
    #                   string_value: "DocumentAttributeStringValue",
    #                   string_list_value: ["String"],
    #                   long_value: 1,
    #                   date_value: Time.now
    #                 }
    #               }
    #             ]
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::GetQuerySuggestionsResponse]
    def get_query_suggestions(params = {}, options = {})
      request = build_request(:get_query_suggestions, params)
      request.send_request(options)
    end

    # <p>Retrieves search metrics data. The data provides a snapshot of how your users interact
    #             with your search application and how effective the application is.</p>
    # @param [Hash, Types::GetSnapshotsRequest] params
    # @option params [String] :index_id
    #   <p>The identifier of the index to get search metrics data.</p>
    # @option params [String] :interval
    #   <p>The time interval or time window to get search metrics data. The time interval uses
    #               the time zone of your index. You can view data in the following time windows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>THIS_WEEK</code>: The current week, starting on the Sunday and ending on
    #                       the day before the current date.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ONE_WEEK_AGO</code>: The previous week, starting on the Sunday and
    #                       ending on the following Saturday.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TWO_WEEKS_AGO</code>: The week before the previous week, starting on the
    #                       Sunday and ending on the following Saturday.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>THIS_MONTH</code>: The current month, starting on the first day of the
    #                       month and ending on the day before the current date.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ONE_MONTH_AGO</code>: The previous month, starting on the first day of
    #                       the month and ending on the last day of the month.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TWO_MONTHS_AGO</code>: The month before the previous month, starting on
    #                       the first day of the month and ending on last day of the month.</p>
    #               </li>
    #            </ul>
    # @option params [String] :metric_type
    #   <p>The metric you want to retrieve. You can specify only one metric per call.</p>
    #            <p>For more information about the metrics you can view, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/search-analytics.html">Gaining insights with search
    #                   analytics</a>.</p>
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve),
    #                   Amazon Kendra returns a pagination token in the response. You can use this
    #               pagination token to retrieve the next set of search metrics data.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of returned data for the metric.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #     interval: "THIS_MONTH" # One of: ["THIS_MONTH", "THIS_WEEK", "ONE_WEEK_AGO", "TWO_WEEKS_AGO", "ONE_MONTH_AGO", "TWO_MONTHS_AGO"], # required
    #     metric_type: "QUERIES_BY_COUNT" # One of: ["QUERIES_BY_COUNT", "QUERIES_BY_ZERO_CLICK_RATE", "QUERIES_BY_ZERO_RESULT_RATE", "DOCS_BY_CLICK_COUNT", "AGG_QUERY_DOC_METRICS", "TREND_QUERY_DOC_METRICS"], # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_snapshots(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snap_shot_time_filter: {
    #       start_time: Time.now,
    #       end_time: Time.now
    #     },
    #     snapshots_data_header: ["String"],
    #     snapshots_data: [
    #       ["String"]
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetSnapshotsResponse]
    def get_snapshots(params = {}, options = {})
      request = build_request(:get_snapshots, params)
      request.send_request(options)
    end

    # <p>Lists one or more access control configurations for an index. This includes user and
    #             group access information for your documents. This is useful for user context filtering,
    #             where search results are filtered based on the user or their group access to
    #             documents.</p>
    # @param [Hash, Types::ListAccessControlConfigurationsRequest] params
    # @option params [String] :index_id
    #   <p>The identifier of the index for the access control configuration.</p>
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there's more data to retrieve),
    #                   Amazon Kendra returns a pagination token in the response. You can use this
    #               pagination token to retrieve the next set of access control configurations.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of access control configurations to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_access_control_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     access_control_configurations: [ # required
    #       {
    #         id: "AccessControlConfigurationId", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListAccessControlConfigurationsResponse]
    def list_access_control_configurations(params = {}, options = {})
      request = build_request(:list_access_control_configurations, params)
      request.send_request(options)
    end

    # <p>Gets statistics about synchronizing a data source connector.</p>
    # @param [Hash, Types::ListDataSourceSyncJobsRequest] params
    # @option params [String] :id
    #   <p>The identifier of the data source connector.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the index used with the data source connector.</p>
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve), Amazon Kendra returns a pagination token in the response. You can use this pagination token to
    #         retrieve the next set of jobs.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of synchronization jobs to return in the response. If there are fewer
    #         results in the list, this response contains only the actual results.</p>
    # @option params [Types::TimeRange] :start_time_filter
    #   <p>When specified, the synchronization jobs returned in the list are limited to jobs between
    #         the specified dates.</p>
    # @option params [String] :status_filter
    #   <p>Only returns synchronization jobs with the <code>Status</code> field equal to the
    #         specified status.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "DataSourceId", # required
    #     index_id: "IndexId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     start_time_filter: {
    #       start_time: Time.now,
    #       end_time: Time.now
    #     },
    #     status_filter: "FAILED" # One of: ["FAILED", "SUCCEEDED", "SYNCING", "INCOMPLETE", "STOPPING", "ABORTED", "SYNCING_INDEXING"]
    #   }
    #   options = {}
    #   response = client.list_data_source_sync_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     history: [
    #       {
    #         execution_id: "String",
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         status: "FAILED" # One of: ["FAILED", "SUCCEEDED", "SYNCING", "INCOMPLETE", "STOPPING", "ABORTED", "SYNCING_INDEXING"],
    #         error_message: "ErrorMessage",
    #         error_code: "InternalError" # One of: ["InternalError", "InvalidRequest"],
    #         data_source_error_code: "String",
    #         metrics: {
    #           documents_added: "MetricValue",
    #           documents_modified: "MetricValue",
    #           documents_deleted: "MetricValue",
    #           documents_failed: "MetricValue",
    #           documents_scanned: "MetricValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDataSourceSyncJobsResponse]
    def list_data_source_sync_jobs(params = {}, options = {})
      request = build_request(:list_data_source_sync_jobs, params)
      request.send_request(options)
    end

    # <p>Lists the data source connectors that you have created.</p>
    # @param [Hash, Types::ListDataSourcesRequest] params
    # @option params [String] :index_id
    #   <p>The identifier of the index used with one or more data source connectors.</p>
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve), Amazon Kendra returns a pagination token in the response. You can use this pagination token to
    #         retrieve the next set of data source connectors. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of data source connectors to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_data_sources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summary_items: [
    #       {
    #         name: "DataSourceName",
    #         id: "DataSourceId",
    #         type: "S3" # One of: ["S3", "SHAREPOINT", "DATABASE", "SALESFORCE", "ONEDRIVE", "SERVICENOW", "CUSTOM", "CONFLUENCE", "GOOGLEDRIVE", "WEBCRAWLER", "WORKDOCS", "FSX", "SLACK", "BOX", "QUIP", "JIRA", "GITHUB", "ALFRESCO", "TEMPLATE"],
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         status: "CREATING" # One of: ["CREATING", "DELETING", "FAILED", "UPDATING", "ACTIVE"],
    #         language_code: "LanguageCode"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDataSourcesResponse]
    def list_data_sources(params = {}, options = {})
      request = build_request(:list_data_sources, params)
      request.send_request(options)
    end

    # <p>Lists specific permissions of users and groups with access to your 
    #             Amazon Kendra experience.</p>
    # @param [Hash, Types::ListEntityPersonasRequest] params
    # @option params [String] :id
    #   <p>The identifier of your Amazon Kendra experience.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the index for your Amazon Kendra experience.</p>
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve),
    #               Amazon Kendra returns a pagination token in the response. You can use this pagination 
    #               token to retrieve the next set of users or groups.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of returned users or groups.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ExperienceId", # required
    #     index_id: "IndexId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_entity_personas(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summary_items: [
    #       {
    #         entity_id: "EntityId",
    #         persona: "OWNER" # One of: ["OWNER", "VIEWER"],
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListEntityPersonasResponse]
    def list_entity_personas(params = {}, options = {})
      request = build_request(:list_entity_personas, params)
      request.send_request(options)
    end

    # <p>Lists users or groups in your IAM Identity Center identity source that are 
    #             granted access to your Amazon Kendra experience. You can create an Amazon Kendra experience 
    #             such as a search application. For more information on creating a search 
    #             application experience, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html">Building 
    #                 a search experience with no code</a>.</p>
    # @param [Hash, Types::ListExperienceEntitiesRequest] params
    # @option params [String] :id
    #   <p>The identifier of your Amazon Kendra experience.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the index for your Amazon Kendra experience.</p>
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve),
    #               Amazon Kendra returns a pagination token in the response. You can use this pagination 
    #               token to retrieve the next set of users or groups.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ExperienceId", # required
    #     index_id: "IndexId", # required
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_experience_entities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summary_items: [
    #       {
    #         entity_id: "EntityId",
    #         entity_type: "USER" # One of: ["USER", "GROUP"],
    #         display_data: {
    #           user_name: "NameType",
    #           group_name: "NameType",
    #           identified_user_name: "NameType",
    #           first_name: "NameType",
    #           last_name: "NameType"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListExperienceEntitiesResponse]
    def list_experience_entities(params = {}, options = {})
      request = build_request(:list_experience_entities, params)
      request.send_request(options)
    end

    # <p>Lists one or more Amazon Kendra experiences. You can create an Amazon Kendra experience such 
    #             as a search application. For more information on creating a search application 
    #             experience, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html">Building a 
    #                 search experience with no code</a>.</p>
    # @param [Hash, Types::ListExperiencesRequest] params
    # @option params [String] :index_id
    #   <p>The identifier of the index for your Amazon Kendra experience.</p>
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more data
    #               to retrieve), Amazon Kendra returns a pagination token in the response. You can use this
    #               pagination token to retrieve the next set of Amazon Kendra experiences.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of returned Amazon Kendra experiences.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_experiences(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summary_items: [
    #       {
    #         name: "ExperienceName",
    #         id: "ExperienceId",
    #         created_at: Time.now,
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "FAILED"],
    #         endpoints: [
    #           {
    #             endpoint_type: "HOME" # One of: ["HOME"],
    #             endpoint: "Endpoint"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListExperiencesResponse]
    def list_experiences(params = {}, options = {})
      request = build_request(:list_experiences, params)
      request.send_request(options)
    end

    # <p>Gets a list of FAQs associated with an index.</p>
    # @param [Hash, Types::ListFaqsRequest] params
    # @option params [String] :index_id
    #   <p>The index for the FAQs.</p>
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve),
    #                   Amazon Kendra returns a pagination token in the response. You can use this
    #               pagination token to retrieve the next set of FAQs.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of FAQs to return in the response. If there are fewer results in
    #               the list, this response contains only the actual results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_faqs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     faq_summary_items: [
    #       {
    #         id: "FaqId",
    #         name: "FaqName",
    #         status: "CREATING" # One of: ["CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"],
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         file_format: "CSV" # One of: ["CSV", "CSV_WITH_HEADER", "JSON"],
    #         language_code: "LanguageCode"
    #       }
    #     ]
    #   }
    # @return [Types::ListFaqsResponse]
    def list_faqs(params = {}, options = {})
      request = build_request(:list_faqs, params)
      request.send_request(options)
    end

    # <p>Lists all your sets of featured results for a given index. Features results 
    #             are placed above all other results for certain queries. If there's an exact match 
    #             of a query, then one or more specific documents are featured in the search results.</p>
    # @param [Hash, Types::ListFeaturedResultsSetsRequest] params
    # @option params [String] :index_id
    #   <p>The identifier of the index used for featuring results.</p>
    # @option params [String] :next_token
    #   <p>If the response is truncated, Amazon Kendra returns a pagination token 
    #               in the response. You can use this pagination token to retrieve the next set 
    #               of featured results sets.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of featured results sets to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_featured_results_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     featured_results_set_summary_items: [
    #       {
    #         featured_results_set_id: "FeaturedResultsSetId",
    #         featured_results_set_name: "FeaturedResultsSetName",
    #         status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #         last_updated_timestamp: 1,
    #         creation_timestamp: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListFeaturedResultsSetsResponse]
    def list_featured_results_sets(params = {}, options = {})
      request = build_request(:list_featured_results_sets, params)
      request.send_request(options)
    end

    # <p>Provides a list of groups that are mapped to users before a given ordering or
    #             timestamp identifier.</p>
    #          <p>
    #             <code>ListGroupsOlderThanOrderingId</code> is currently not supported in the Amazon Web Services GovCloud (US-West) region.</p>
    # @param [Hash, Types::ListGroupsOlderThanOrderingIdRequest] params
    # @option params [String] :index_id
    #   <p>The identifier of the index for getting a list of groups mapped to users before a
    #               given ordering or timestamp identifier.</p>
    # @option params [String] :data_source_id
    #   <p>The identifier of the data source for getting a list of groups mapped to users before
    #               a given ordering timestamp identifier.</p>
    # @option params [Integer] :ordering_id
    #   <p>The timestamp identifier used for the latest <code>PUT</code> or <code>DELETE</code>
    #               action for mapping users to their groups.</p>
    # @option params [String] :next_token
    #   <p> If the previous response was incomplete (because there is more data to retrieve),
    #                   Amazon Kendra returns a pagination token in the response. You can use this
    #               pagination token to retrieve the next set of groups that are mapped to users before a
    #               given ordering or timestamp identifier. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of returned groups that are mapped to users before a given
    #               ordering or timestamp identifier. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #     data_source_id: "DataSourceId",
    #     ordering_id: 1, # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_groups_older_than_ordering_id(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     groups_summaries: [
    #       {
    #         group_id: "GroupId",
    #         ordering_id: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListGroupsOlderThanOrderingIdResponse]
    def list_groups_older_than_ordering_id(params = {}, options = {})
      request = build_request(:list_groups_older_than_ordering_id, params)
      request.send_request(options)
    end

    # <p>Lists the Amazon Kendra indexes that you created.</p>
    # @param [Hash, Types::ListIndicesRequest] params
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve), Amazon Kendra returns a pagination token in the response. You can use this pagination token to
    #         retrieve the next set of indexes. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of indices to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_indices(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     index_configuration_summary_items: [
    #       {
    #         name: "IndexName",
    #         id: "IndexId",
    #         edition: "DEVELOPER_EDITION" # One of: ["DEVELOPER_EDITION", "ENTERPRISE_EDITION", "GEN_AI_ENTERPRISE_EDITION"],
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "SYSTEM_UPDATING"], # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListIndicesResponse]
    def list_indices(params = {}, options = {})
      request = build_request(:list_indices, params)
      request.send_request(options)
    end

    # <p>Lists the block lists used for query suggestions for an index.</p>
    #          <p>For information on the current quota limits for block lists, see 
    #             <a href="https://docs.aws.amazon.com/kendra/latest/dg/quotas.html">Quotas 
    #                 for Amazon Kendra</a>.</p>
    #          <p>
    #             <code>ListQuerySuggestionsBlockLists</code> is currently not supported in the 
    #             Amazon Web Services GovCloud (US-West) region.</p>
    # @param [Hash, Types::ListQuerySuggestionsBlockListsRequest] params
    # @option params [String] :index_id
    #   <p>The identifier of the index for a list of all block lists that exist for 
    #               that index.</p>
    #            <p>For information on the current quota limits for block lists, see 
    #               <a href="https://docs.aws.amazon.com/kendra/latest/dg/quotas.html">Quotas 
    #                   for Amazon Kendra</a>.</p>
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve), 
    #               Amazon Kendra returns a pagination token in the response. You can use this pagination 
    #               token to retrieve the next set of block lists (<code>BlockListSummaryItems</code>).</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of block lists to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_query_suggestions_block_lists(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     block_list_summary_items: [
    #       {
    #         id: "QuerySuggestionsBlockListId",
    #         name: "QuerySuggestionsBlockListName",
    #         status: "ACTIVE" # One of: ["ACTIVE", "CREATING", "DELETING", "UPDATING", "ACTIVE_BUT_UPDATE_FAILED", "FAILED"],
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         item_count: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListQuerySuggestionsBlockListsResponse]
    def list_query_suggestions_block_lists(params = {}, options = {})
      request = build_request(:list_query_suggestions_block_lists, params)
      request.send_request(options)
    end

    # <p>Gets a list of tags associated with a resource. Indexes, FAQs, data sources, and 
    #       other resources can have tags associated with them.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the index, FAQ, data source, or other resource to 
    #         get a list of tags for. For example, the ARN of an index is constructed as follows: 
    #         <i>arn:aws:kendra:your-region:your-account-id:index/index-id</i> 
    #         For information on how to construct an ARN for all types of Amazon Kendra resources, see 
    #         <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonkendra.html#amazonkendra-resources-for-iam-policies">Resource 
    #           types</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists the thesauri for an index.</p>
    # @param [Hash, Types::ListThesauriRequest] params
    # @option params [String] :index_id
    #   <p>The identifier of the index with one or more thesauri.</p>
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve),
    #            Amazon Kendra returns a pagination token in the response. You can use this pagination token to
    #            retrieve the next set of thesauri (<code>ThesaurusSummaryItems</code>). 
    #         </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of thesauri to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_thesauri(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     thesaurus_summary_items: [
    #       {
    #         id: "ThesaurusId",
    #         name: "ThesaurusName",
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "UPDATING", "ACTIVE_BUT_UPDATE_FAILED", "FAILED"],
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListThesauriResponse]
    def list_thesauri(params = {}, options = {})
      request = build_request(:list_thesauri, params)
      request.send_request(options)
    end

    # <p>Maps users to their groups so that you only need to provide the user ID when you issue
    #             the query.</p>
    #          <p>You can also map sub groups to groups. For example, the group "Company Intellectual
    #             Property Teams" includes sub groups "Research" and "Engineering". These sub groups
    #             include their own list of users or people who work in these teams. Only users who work
    #             in research and engineering, and therefore belong in the intellectual property group,
    #             can see top-secret company documents in their search results.</p>
    #          <p>This is useful for user context filtering, where search results are filtered based on
    #             the user or their group access to documents. For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/user-context-filter.html">Filtering on
    #                 user context</a>.</p>
    #          <p>If more than five <code>PUT</code> actions for a group are currently processing, a
    #             validation exception is thrown.</p>
    # @param [Hash, Types::PutPrincipalMappingRequest] params
    # @option params [String] :index_id
    #   <p>The identifier of the index you want to map users to their groups.</p>
    # @option params [String] :data_source_id
    #   <p>The identifier of the data source you want to map users to their groups.</p>
    #            <p>This is useful if a group is tied to multiple data sources, but you only want the
    #               group to access documents of a certain data source. For example, the groups "Research",
    #               "Engineering", and "Sales and Marketing" are all tied to the company's documents stored
    #               in the data sources Confluence and Salesforce. However, "Sales and Marketing" team only
    #               needs access to customer-related documents stored in Salesforce.</p>
    # @option params [String] :group_id
    #   <p>The identifier of the group you want to map its users to.</p>
    # @option params [Types::GroupMembers] :group_members
    #   <p>The list that contains your users that belong the same group. This can include sub groups 
    #               that belong to a group.</p>
    #            <p>For example, the group "Company A" includes the user "CEO" and the sub groups
    #               "Research", "Engineering", and "Sales and Marketing".</p>
    #            <p>If you have more than 1000 users and/or sub groups for a single group, you need to
    #               provide the path to the S3 file that lists your users and sub groups for a group. Your
    #               sub groups can contain more than 1000 users, but the list of sub groups that belong to a
    #               group (and/or users) must be no more than 1000.</p>
    # @option params [Integer] :ordering_id
    #   <p>The timestamp identifier you specify to ensure Amazon Kendra doesn't override
    #               the latest <code>PUT</code> action with previous actions. The highest number ID, which
    #               is the ordering ID, is the latest action you want to process and apply on top of other
    #               actions with lower number IDs. This prevents previous actions with lower number IDs from
    #               possibly overriding the latest action.</p>
    #            <p>The ordering ID can be the Unix time of the last update you made to a group members
    #               list. You would then provide this list when calling <code>PutPrincipalMapping</code>.
    #               This ensures your <code>PUT</code> action for that updated group with the latest members
    #               list doesn't get overwritten by earlier <code>PUT</code> actions for the same group
    #               which are yet to be processed.</p>
    #            <p>The default ordering ID is the current Unix time in milliseconds that the action was
    #               received by Amazon Kendra.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that has access to the 
    #               S3 file that contains your list of users that belong to a group.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html#iam-roles-ds">IAM roles for 
    #               Amazon Kendra</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #     data_source_id: "DataSourceId",
    #     group_id: "GroupId", # required
    #     group_members: { # required
    #       member_groups: [
    #         {
    #           group_id: "GroupId", # required
    #           data_source_id: "DataSourceId"
    #         }
    #       ],
    #       member_users: [
    #         {
    #           user_id: "UserId", # required
    #         }
    #       ],
    #       s3_pathfor_group_members: {
    #         bucket: "S3BucketName", # required
    #         key: "S3ObjectKey", # required
    #       }
    #     },
    #     ordering_id: 1,
    #     role_arn: "RoleArn"
    #   }
    #   options = {}
    #   response = client.put_principal_mapping(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_principal_mapping(params = {}, options = {})
      request = build_request(:put_principal_mapping, params)
      request.send_request(options)
    end

    # <p>Searches an index given an input query.</p>
    #          <note>
    #             <p>If you are working with large language models (LLMs) or implementing retrieval
    #             augmented generation (RAG) systems, you can use Amazon Kendra's <a href="https://docs.aws.amazon.com/kendra/latest/APIReference/API_Retrieve.html">Retrieve</a> API, which can return longer semantically relevant passages. We
    #             recommend using the <code>Retrieve</code> API instead of filing a service limit increase
    #             to increase the <code>Query</code> API document excerpt length.</p>
    #          </note>
    #          <p>You can configure boosting or relevance tuning at the query level to override boosting
    #          at the index level, filter based on document fields/attributes and faceted search, and
    #          filter based on the user or their group access to documents. You can also include certain
    #          fields in the response that might provide useful additional information.</p>
    #          <p>A query response contains three types of results.</p>
    #          <ul>
    #             <li>
    #                <p>Relevant suggested answers. The answers can be either a text excerpt or table
    #                excerpt. The answer can be highlighted in the excerpt.</p>
    #             </li>
    #             <li>
    #                <p>Matching FAQs or questions-answer from your FAQ file.</p>
    #             </li>
    #             <li>
    #                <p>Relevant documents. This result type includes an excerpt of the document with the
    #                document title. The searched terms can be highlighted in the excerpt.</p>
    #             </li>
    #          </ul>
    #          <p>You can specify that the query return only one type of result using the
    #             <code>QueryResultTypeFilter</code> parameter. Each query returns the 100 most relevant
    #          results. If you filter result type to only question-answers, a maximum of four results are
    #          returned. If you filter result type to only answers, a maximum of three results are
    #          returned.</p>
    #          <important>
    #             <p>If you're using an Amazon Kendra Gen AI Enterprise Edition index, you can only use
    #                <code>ATTRIBUTE_FILTER</code> to filter search results by user context. If you're
    #             using an Amazon Kendra Gen AI Enterprise Edition index and you try to use
    #                <code>USER_TOKEN</code> to configure user context policy, Amazon Kendra returns a
    #                <code>ValidationException</code> error.</p>
    #          </important>
    # @param [Hash, Types::QueryRequest] params
    # @option params [String] :index_id
    #   <p>The identifier of the index for the search.</p>
    # @option params [String] :query_text
    #   <p>The input query text for the search. Amazon Kendra truncates queries at 30 token
    #            words, which excludes punctuation and stop words. Truncation still applies if you use
    #            Boolean or more advanced, complex queries. For example, <code>Timeoff AND October AND
    #               Category:HR</code> is counted as 3 tokens: <code>timeoff</code>, <code>october</code>,
    #               <code>hr</code>. For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/searching-example.html#searching-index-query-syntax">Searching with advanced query syntax</a> in the Amazon Kendra Developer Guide. </p>
    # @option params [Types::AttributeFilter] :attribute_filter
    #   <p>Filters search results by document fields/attributes. You can only provide one attribute
    #            filter; however, the <code>AndAllFilters</code>, <code>NotFilter</code>, and
    #               <code>OrAllFilters</code> parameters contain a list of other filters.</p>
    #            <p>The <code>AttributeFilter</code> parameter means you can create a set of filtering rules
    #            that a document must satisfy to be included in the query results.</p>
    #            <note>
    #               <p>For Amazon Kendra Gen AI Enterprise Edition indices use <code>AttributeFilter</code> to
    #               enable document filtering for end users using <code>_email_id</code> or include public
    #               documents (<code>_email_id=null</code>).</p>
    #            </note>
    # @option params [Array<Types::Facet>] :facets
    #   <p>An array of documents fields/attributes for faceted search. Amazon Kendra returns a
    #            count for each field key specified. This helps your users narrow their search.</p>
    # @option params [Array<String>] :requested_document_attributes
    #   <p>An array of document fields/attributes to include in the response. You can limit the
    #            response to include certain document fields. By default, all document attributes are
    #            included in the response.</p>
    # @option params [String] :query_result_type_filter
    #   <p>Sets the type of query result or response. Only results for the specified type are
    #            returned.</p>
    # @option params [Array<Types::DocumentRelevanceConfiguration>] :document_relevance_override_configurations
    #   <p>Overrides relevance tuning configurations of fields/attributes set at the index
    #            level.</p>
    #            <p>If you use this API to override the relevance tuning configured at the index level, but
    #            there is no relevance tuning configured at the index level, then Amazon Kendra does
    #            not apply any relevance tuning.</p>
    #            <p>If there is relevance tuning configured for fields at the index level, and you use this
    #            API to override only some of these fields, then for the fields you did not override, the
    #            importance is set to 1.</p>
    # @option params [Integer] :page_number
    #   <p>Query results are returned in pages the size of the <code>PageSize</code> parameter. By
    #            default, Amazon Kendra returns the first page of results. Use this parameter to get
    #            result pages after the first one.</p>
    # @option params [Integer] :page_size
    #   <p>Sets the number of results that are returned in each page of results. The default page
    #            size is 10. The maximum number of results returned is 100. If you ask for more than 100
    #            results, only 100 are returned.</p>
    # @option params [Types::SortingConfiguration] :sorting_configuration
    #   <p>Provides information that determines how the results of the query are sorted. You can
    #            set the field that Amazon Kendra should sort the results on, and specify whether the
    #            results should be sorted in ascending or descending order. In the case of ties in sorting
    #            the results, the results are sorted by relevance.</p>
    #            <p>If you don't provide sorting configuration, the results are sorted by the relevance that
    #               Amazon Kendra determines for the result.</p>
    # @option params [Array<Types::SortingConfiguration>] :sorting_configurations
    #   <p>Provides configuration information to determine how the results of a query are
    #            sorted.</p>
    #            <p>You can set upto 3 fields that Amazon Kendra should sort the results on, and
    #            specify whether the results should be sorted in ascending or descending order. The sort
    #            field quota can be increased.</p>
    #            <p>If you don't provide a sorting configuration, the results are sorted by the relevance
    #            that Amazon Kendra determines for the result. In the case of ties in sorting the
    #            results, the results are sorted by relevance. </p>
    # @option params [Types::UserContext] :user_context
    #   <p>The user context token or user and group information.</p>
    # @option params [String] :visitor_id
    #   <p>Provides an identifier for a specific user. The <code>VisitorId</code> should be a
    #            unique identifier, such as a GUID. Don't use personally identifiable information, such as
    #            the user's email address, as the <code>VisitorId</code>.</p>
    # @option params [Types::SpellCorrectionConfiguration] :spell_correction_configuration
    #   <p>Enables suggested spell corrections for queries.</p>
    # @option params [Types::CollapseConfiguration] :collapse_configuration
    #   <p>Provides configuration to determine how to group results by document attribute value,
    #            and how to display them (collapsed or expanded) under a designated primary document for
    #            each group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #     query_text: "QueryText",
    #     attribute_filter: {
    #       and_all_filters: [
    #         {
    #           # recursive AttributeFilter
    #         }
    #       ],
    #       or_all_filters: [
    #         {
    #           # recursive AttributeFilter
    #         }
    #       ],
    #       not_filter: {
    #         # recursive AttributeFilter
    #       },
    #       equals_to: {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now
    #         }
    #       },
    #       contains_all: {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now
    #         }
    #       },
    #       contains_any: {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now
    #         }
    #       },
    #       greater_than: {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now
    #         }
    #       },
    #       greater_than_or_equals: {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now
    #         }
    #       },
    #       less_than: {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now
    #         }
    #       },
    #       less_than_or_equals: {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now
    #         }
    #       }
    #     },
    #     facets: [
    #       {
    #         document_attribute_key: "DocumentAttributeKey",
    #         facets: {
    #           # recursive FacetList
    #         },
    #         max_results: 1
    #       }
    #     ],
    #     requested_document_attributes: ["DocumentAttributeKey"],
    #     query_result_type_filter: "DOCUMENT" # One of: ["DOCUMENT", "QUESTION_ANSWER", "ANSWER"],
    #     document_relevance_override_configurations: [
    #       {
    #         name: "DocumentMetadataConfigurationName", # required
    #         relevance: { # required
    #           freshness: false,
    #           importance: 1,
    #           duration: "Duration",
    #           rank_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #           value_importance_map: {
    #             "ValueImportanceMapKey" => 1
    #           }
    #         }
    #       }
    #     ],
    #     page_number: 1,
    #     page_size: 1,
    #     sorting_configuration: {
    #       document_attribute_key: "DocumentAttributeKey", # required
    #       sort_order: "DESC" # One of: ["DESC", "ASC"], # required
    #     },
    #     sorting_configurations: [
    #       {
    #         document_attribute_key: "DocumentAttributeKey", # required
    #         sort_order: "DESC" # One of: ["DESC", "ASC"], # required
    #       }
    #     ],
    #     user_context: {
    #       token: "Token",
    #       user_id: "PrincipalName",
    #       groups: ["PrincipalName"],
    #       data_source_groups: [
    #         {
    #           group_id: "PrincipalName", # required
    #           data_source_id: "DataSourceId", # required
    #         }
    #       ]
    #     },
    #     visitor_id: "VisitorId",
    #     spell_correction_configuration: {
    #       include_query_spell_check_suggestions: false, # required
    #     },
    #     collapse_configuration: {
    #       document_attribute_key: "DocumentAttributeKey", # required
    #       sorting_configurations: [
    #         {
    #           document_attribute_key: "DocumentAttributeKey", # required
    #           sort_order: "DESC" # One of: ["DESC", "ASC"], # required
    #         }
    #       ],
    #       missing_attribute_key_strategy: "IGNORE" # One of: ["IGNORE", "COLLAPSE", "EXPAND"],
    #       expand: false,
    #       expand_configuration: {
    #         max_result_items_to_expand: 1,
    #         max_expanded_results_per_item: 1
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     query_id: "QueryId",
    #     result_items: [
    #       {
    #         id: "ResultId",
    #         type: "DOCUMENT" # One of: ["DOCUMENT", "QUESTION_ANSWER", "ANSWER"],
    #         format: "TABLE" # One of: ["TABLE", "TEXT"],
    #         additional_attributes: [
    #           {
    #             key: "String", # required
    #             value_type: "TEXT_WITH_HIGHLIGHTS_VALUE" # One of: ["TEXT_WITH_HIGHLIGHTS_VALUE"], # required
    #             value: { # required
    #               text_with_highlights_value: {
    #                 text: "String",
    #                 highlights: [
    #                   {
    #                     begin_offset: 1, # required
    #                     end_offset: 1, # required
    #                     top_answer: false,
    #                     type: "STANDARD" # One of: ["STANDARD", "THESAURUS_SYNONYM"]
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         ],
    #         document_id: "DocumentId",
    #         document_title: {
    #           text: "String",
    #           highlights: [
    #             {
    #               begin_offset: 1, # required
    #               end_offset: 1, # required
    #               top_answer: false,
    #               type: "STANDARD" # One of: ["STANDARD", "THESAURUS_SYNONYM"]
    #             }
    #           ]
    #         },
    #         document_excerpt: {
    #           text: "String",
    #           highlights: [
    #             {
    #               begin_offset: 1, # required
    #               end_offset: 1, # required
    #               top_answer: false,
    #               type: "STANDARD" # One of: ["STANDARD", "THESAURUS_SYNONYM"]
    #             }
    #           ]
    #         },
    #         document_uri: "Url",
    #         document_attributes: [
    #           {
    #             key: "DocumentAttributeKey", # required
    #             value: { # required
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now
    #             }
    #           }
    #         ],
    #         score_attributes: {
    #           score_confidence: "VERY_HIGH" # One of: ["VERY_HIGH", "HIGH", "MEDIUM", "LOW", "NOT_AVAILABLE"]
    #         },
    #         feedback_token: "FeedbackToken",
    #         table_excerpt: {
    #           rows: [
    #             {
    #               cells: [
    #                 {
    #                   value: "String",
    #                   top_answer: false,
    #                   highlighted: false,
    #                   header: false
    #                 }
    #               ]
    #             }
    #           ],
    #           total_number_of_rows: 1
    #         },
    #         collapsed_result_detail: {
    #           document_attribute: { # required
    #             key: "DocumentAttributeKey", # required
    #             value: { # required
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now
    #             }
    #           },
    #           expanded_results: [
    #             {
    #               id: "ResultId",
    #               document_id: "DocumentId",
    #               document_title: {
    #                 text: "String",
    #                 highlights: [
    #                   {
    #                     begin_offset: 1, # required
    #                     end_offset: 1, # required
    #                     top_answer: false,
    #                     type: "STANDARD" # One of: ["STANDARD", "THESAURUS_SYNONYM"]
    #                   }
    #                 ]
    #               },
    #               document_excerpt: {
    #                 text: "String",
    #                 highlights: [
    #                   {
    #                     begin_offset: 1, # required
    #                     end_offset: 1, # required
    #                     top_answer: false,
    #                     type: "STANDARD" # One of: ["STANDARD", "THESAURUS_SYNONYM"]
    #                   }
    #                 ]
    #               },
    #               document_uri: "Url",
    #               document_attributes: [
    #                 {
    #                   key: "DocumentAttributeKey", # required
    #                   value: { # required
    #                     string_value: "DocumentAttributeStringValue",
    #                     string_list_value: ["String"],
    #                     long_value: 1,
    #                     date_value: Time.now
    #                   }
    #                 }
    #               ]
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     facet_results: [
    #       {
    #         document_attribute_key: "DocumentAttributeKey",
    #         document_attribute_value_type: "STRING_VALUE" # One of: ["STRING_VALUE", "STRING_LIST_VALUE", "LONG_VALUE", "DATE_VALUE"],
    #         document_attribute_value_count_pairs: [
    #           {
    #             document_attribute_value: {
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now
    #             },
    #             count: 1,
    #             facet_results: {
    #               # recursive FacetResultList
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     total_number_of_results: 1,
    #     warnings: [
    #       {
    #         message: "WarningMessage",
    #         code: "QUERY_LANGUAGE_INVALID_SYNTAX" # One of: ["QUERY_LANGUAGE_INVALID_SYNTAX"]
    #       }
    #     ],
    #     spell_corrected_queries: [
    #       {
    #         suggested_query_text: "SuggestedQueryText",
    #         corrections: [
    #           {
    #             begin_offset: 1,
    #             end_offset: 1,
    #             term: "String",
    #             corrected_term: "String"
    #           }
    #         ]
    #       }
    #     ],
    #     featured_results_items: [
    #       {
    #         id: "ResultId",
    #         type: "DOCUMENT" # One of: ["DOCUMENT", "QUESTION_ANSWER", "ANSWER"],
    #         additional_attributes: [
    #           {
    #             key: "String", # required
    #             value_type: "TEXT_WITH_HIGHLIGHTS_VALUE" # One of: ["TEXT_WITH_HIGHLIGHTS_VALUE"], # required
    #             value: { # required
    #               text_with_highlights_value: {
    #                 text: "String",
    #                 highlights: [
    #                   {
    #                     begin_offset: 1, # required
    #                     end_offset: 1, # required
    #                     top_answer: false,
    #                     type: "STANDARD" # One of: ["STANDARD", "THESAURUS_SYNONYM"]
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         ],
    #         document_id: "DocumentId",
    #         document_title: {
    #           text: "String",
    #           highlights: [
    #             {
    #               begin_offset: 1, # required
    #               end_offset: 1, # required
    #               top_answer: false,
    #               type: "STANDARD" # One of: ["STANDARD", "THESAURUS_SYNONYM"]
    #             }
    #           ]
    #         },
    #         document_excerpt: {
    #           text: "String",
    #           highlights: [
    #             {
    #               begin_offset: 1, # required
    #               end_offset: 1, # required
    #               top_answer: false,
    #               type: "STANDARD" # One of: ["STANDARD", "THESAURUS_SYNONYM"]
    #             }
    #           ]
    #         },
    #         document_uri: "Url",
    #         document_attributes: [
    #           {
    #             key: "DocumentAttributeKey", # required
    #             value: { # required
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now
    #             }
    #           }
    #         ],
    #         feedback_token: "FeedbackToken"
    #       }
    #     ]
    #   }
    # @return [Types::QueryResult]
    def query(params = {}, options = {})
      request = build_request(:query, params)
      request.send_request(options)
    end

    # <p>Retrieves relevant passages or text excerpts given an input query.</p>
    #          <p>This API is similar to the <a href="https://docs.aws.amazon.com/kendra/latest/APIReference/API_Query.html">Query</a> API. However, by
    #             default, the <code>Query</code> API only returns excerpt passages of up to 100 token
    #             words. With the <code>Retrieve</code> API, you can retrieve longer passages of up to 200
    #             token words and up to 100 semantically relevant passages. This doesn't include
    #             question-answer or FAQ type responses from your index. The passages are text excerpts
    #             that can be semantically extracted from multiple documents and multiple parts of the
    #             same document. If in extreme cases your documents produce zero passages using the
    #                 <code>Retrieve</code> API, you can alternatively use the <code>Query</code> API and
    #             its types of responses.</p>
    #          <p>You can also do the following:</p>
    #          <ul>
    #             <li>
    #                <p>Override boosting at the index level</p>
    #             </li>
    #             <li>
    #                <p>Filter based on document fields or attributes</p>
    #             </li>
    #             <li>
    #                <p>Filter based on the user or their group access to documents</p>
    #             </li>
    #             <li>
    #                <p>View the confidence score bucket for a retrieved passage result. The
    #                     confidence bucket provides a relative ranking that indicates how confident
    #                         Amazon Kendra is that the response is relevant to the query.</p>
    #                <note>
    #                   <p>Confidence score buckets are currently available only for English.</p>
    #                </note>
    #             </li>
    #          </ul>
    #          <p>You can also include certain fields in the response that might provide useful
    #             additional information.</p>
    #          <p>The <code>Retrieve</code> API shares the number of <a href="https://docs.aws.amazon.com/kendra/latest/APIReference/API_CapacityUnitsConfiguration.html">query capacity
    #                 units</a> that you set for your index. For more information on what's included
    #             in a single capacity unit and the default base capacity for an index, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/adjusting-capacity.html">Adjusting
    #                 capacity</a>.</p>
    #          <important>
    #             <p>If you're using an Amazon Kendra Gen AI Enterprise Edition index, you can only use
    #                     <code>ATTRIBUTE_FILTER</code> to filter search results by user context. If
    #                 you're using an Amazon Kendra Gen AI Enterprise Edition index and you try to use
    #                     <code>USER_TOKEN</code> to configure user context policy, Amazon Kendra returns a
    #                     <code>ValidationException</code> error.</p>
    #          </important>
    # @param [Hash, Types::RetrieveRequest] params
    # @option params [String] :index_id
    #   <p>The identifier of the index to retrieve relevant passages for the search.</p>
    # @option params [String] :query_text
    #   <p>The input query text to retrieve relevant passages for the search. Amazon Kendra
    #               truncates queries at 30 token words, which excludes punctuation and stop words.
    #               Truncation still applies if you use Boolean or more advanced, complex queries. For
    #               example, <code>Timeoff AND October AND Category:HR</code> is counted as 3 tokens:
    #                   <code>timeoff</code>, <code>october</code>, <code>hr</code>. For more information,
    #               see <a href="https://docs.aws.amazon.com/kendra/latest/dg/searching-example.html#searching-index-query-syntax">Searching with advanced query syntax</a> in the Amazon Kendra Developer Guide. </p>
    # @option params [Types::AttributeFilter] :attribute_filter
    #   <p>Filters search results by document fields/attributes. You can only provide one
    #               attribute filter; however, the <code>AndAllFilters</code>, <code>NotFilter</code>, and
    #                   <code>OrAllFilters</code> parameters contain a list of other filters.</p>
    #            <p>The <code>AttributeFilter</code> parameter means you can create a set of filtering
    #               rules that a document must satisfy to be included in the query results.</p>
    #            <note>
    #               <p>For Amazon Kendra Gen AI Enterprise Edition indices use <code>AttributeFilter</code> to
    #                   enable document filtering for end users using <code>_email_id</code> or include
    #                   public documents (<code>_email_id=null</code>).</p>
    #            </note>
    # @option params [Array<String>] :requested_document_attributes
    #   <p>A list of document fields/attributes to include in the response. You can limit the
    #               response to include certain document fields. By default, all document fields are
    #               included in the response.</p>
    # @option params [Array<Types::DocumentRelevanceConfiguration>] :document_relevance_override_configurations
    #   <p>Overrides relevance tuning configurations of fields/attributes set at the index
    #               level.</p>
    #            <p>If you use this API to override the relevance tuning configured at the index level,
    #               but there is no relevance tuning configured at the index level, then Amazon Kendra
    #               does not apply any relevance tuning.</p>
    #            <p>If there is relevance tuning configured for fields at the index level, and you use
    #               this API to override only some of these fields, then for the fields you did not
    #               override, the importance is set to 1.</p>
    # @option params [Integer] :page_number
    #   <p>Retrieved relevant passages are returned in pages the size of the
    #                   <code>PageSize</code> parameter. By default, Amazon Kendra returns the first
    #               page of results. Use this parameter to get result pages after the first one.</p>
    # @option params [Integer] :page_size
    #   <p>Sets the number of retrieved relevant passages that are returned in each page of
    #               results. The default page size is 10. The maximum number of results returned is 100. If
    #               you ask for more than 100 results, only 100 are returned.</p>
    # @option params [Types::UserContext] :user_context
    #   <p>The user context token or user and group information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #     query_text: "QueryText", # required
    #     attribute_filter: {
    #       and_all_filters: [
    #         {
    #           # recursive AttributeFilter
    #         }
    #       ],
    #       or_all_filters: [
    #         {
    #           # recursive AttributeFilter
    #         }
    #       ],
    #       not_filter: {
    #         # recursive AttributeFilter
    #       },
    #       equals_to: {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now
    #         }
    #       },
    #       contains_all: {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now
    #         }
    #       },
    #       contains_any: {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now
    #         }
    #       },
    #       greater_than: {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now
    #         }
    #       },
    #       greater_than_or_equals: {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now
    #         }
    #       },
    #       less_than: {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now
    #         }
    #       },
    #       less_than_or_equals: {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now
    #         }
    #       }
    #     },
    #     requested_document_attributes: ["DocumentAttributeKey"],
    #     document_relevance_override_configurations: [
    #       {
    #         name: "DocumentMetadataConfigurationName", # required
    #         relevance: { # required
    #           freshness: false,
    #           importance: 1,
    #           duration: "Duration",
    #           rank_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #           value_importance_map: {
    #             "ValueImportanceMapKey" => 1
    #           }
    #         }
    #       }
    #     ],
    #     page_number: 1,
    #     page_size: 1,
    #     user_context: {
    #       token: "Token",
    #       user_id: "PrincipalName",
    #       groups: ["PrincipalName"],
    #       data_source_groups: [
    #         {
    #           group_id: "PrincipalName", # required
    #           data_source_id: "DataSourceId", # required
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.retrieve(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     query_id: "QueryId",
    #     result_items: [
    #       {
    #         id: "ResultId",
    #         document_id: "DocumentId",
    #         document_title: "DocumentTitle",
    #         content: "Content",
    #         document_uri: "Url",
    #         document_attributes: [
    #           {
    #             key: "DocumentAttributeKey", # required
    #             value: { # required
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now
    #             }
    #           }
    #         ],
    #         score_attributes: {
    #           score_confidence: "VERY_HIGH" # One of: ["VERY_HIGH", "HIGH", "MEDIUM", "LOW", "NOT_AVAILABLE"]
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::RetrieveResult]
    def retrieve(params = {}, options = {})
      request = build_request(:retrieve, params)
      request.send_request(options)
    end

    # <p>Starts a synchronization job for a data source connector. If a synchronization job is
    #       already in progress, Amazon Kendra returns a <code>ResourceInUseException</code>
    #       exception.</p>
    #          <p>Re-syncing your data source with your index after modifying, adding, or deleting 
    #       documents from your data source respository could take up to an hour or more, depending on 
    #       the number of documents to sync.</p>
    # @param [Hash, Types::StartDataSourceSyncJobRequest] params
    # @option params [String] :id
    #   <p>The identifier of the data source connector to synchronize.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the index used with the data source connector.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "DataSourceId", # required
    #     index_id: "IndexId", # required
    #   }
    #   options = {}
    #   response = client.start_data_source_sync_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     execution_id: "String"
    #   }
    # @return [Types::StartDataSourceSyncJobResponse]
    def start_data_source_sync_job(params = {}, options = {})
      request = build_request(:start_data_source_sync_job, params)
      request.send_request(options)
    end

    # <p>Stops a synchronization job that is currently running. You can't stop a scheduled
    #       synchronization job.</p>
    # @param [Hash, Types::StopDataSourceSyncJobRequest] params
    # @option params [String] :id
    #   <p>The identifier of the data source connector for which to stop the synchronization
    #         jobs.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the index used with the data source connector.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "DataSourceId", # required
    #     index_id: "IndexId", # required
    #   }
    #   options = {}
    #   response = client.stop_data_source_sync_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def stop_data_source_sync_job(params = {}, options = {})
      request = build_request(:stop_data_source_sync_job, params)
      request.send_request(options)
    end

    # <p>Enables you to provide feedback to Amazon Kendra to improve the
    #             performance of your index.</p>
    #          <p>
    #             <code>SubmitFeedback</code> is currently not supported in the 
    #             Amazon Web Services GovCloud (US-West) region.</p>
    # @param [Hash, Types::SubmitFeedbackRequest] params
    # @option params [String] :index_id
    #   <p>The identifier of the index that was queried.</p>
    # @option params [String] :query_id
    #   <p>The identifier of the specific query for which you are submitting
    #               feedback. The query ID is returned in the response to the
    #                   <code>Query</code> API.</p>
    # @option params [Array<Types::ClickFeedback>] :click_feedback_items
    #   <p>Tells Amazon Kendra that a particular search result link was chosen
    #               by the user. </p>
    # @option params [Array<Types::RelevanceFeedback>] :relevance_feedback_items
    #   <p>Provides Amazon Kendra with relevant or not relevant feedback for
    #               whether a particular item was relevant to the search.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #     query_id: "QueryId", # required
    #     click_feedback_items: [
    #       {
    #         result_id: "ResultId", # required
    #         click_time: Time.now, # required
    #       }
    #     ],
    #     relevance_feedback_items: [
    #       {
    #         result_id: "ResultId", # required
    #         relevance_value: "RELEVANT" # One of: ["RELEVANT", "NOT_RELEVANT"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.submit_feedback(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def submit_feedback(params = {}, options = {})
      request = build_request(:submit_feedback, params)
      request.send_request(options)
    end

    # <p>Adds the specified tag to the specified index, FAQ, data source, or other resource. If 
    #       the tag already exists, the existing value is replaced with the new value.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the index, FAQ, data source, or other resource to add a tag. 
    #         For example, the ARN of an index is constructed as follows: 
    #         <i>arn:aws:kendra:your-region:your-account-id:index/index-id</i>  
    #         For information on how to construct an ARN for all types of Amazon Kendra resources, see 
    #         <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonkendra.html#amazonkendra-resources-for-iam-policies">Resource 
    #           types</a>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tag keys to add to the index, FAQ, data source, or other resource. If a tag already 
    #         exists, the existing value is replaced with the new value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes a tag from an index, FAQ, data source, or other resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the index, FAQ, data source, or other resource to remove a tag. 
    #         For example, the ARN of an index is constructed as follows: 
    #         <i>arn:aws:kendra:your-region:your-account-id:index/index-id</i> 
    #         For information on how to construct an ARN for all types of Amazon Kendra resources, see 
    #         <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonkendra.html#amazonkendra-resources-for-iam-policies">Resource 
    #           types</a>.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys to remove from the index, FAQ, data source, or other resource. If a tag 
    #         key doesn't exist for the resource, it is ignored.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates an access control configuration for your documents in an index. This includes
    #             user and group access information for your documents. This is useful for user context
    #             filtering, where search results are filtered based on the user or their group access to
    #             documents.</p>
    #          <p>You can update an access control configuration you created without indexing all of
    #             your documents again. For example, your index contains top-secret company documents that
    #             only certain employees or users should access. You created an 'allow' access control
    #             configuration for one user who recently joined the 'top-secret' team, switching from a
    #             team with 'deny' access to top-secret documents. However, the user suddenly returns to
    #             their previous team and should no longer have access to top secret documents. You can
    #             update the access control configuration to re-configure access control for your
    #             documents as circumstances change.</p>
    #          <p>You call the <a href="https://docs.aws.amazon.com/kendra/latest/dg/API_BatchPutDocument.html">BatchPutDocument</a> API to
    #             apply the updated access control configuration, with the
    #                 <code>AccessControlConfigurationId</code> included in the <a href="https://docs.aws.amazon.com/kendra/latest/dg/API_Document.html">Document</a>
    #             object. If you use an S3 bucket as a data source, you synchronize your data source to
    #             apply the <code>AccessControlConfigurationId</code> in the <code>.metadata.json</code>
    #             file. Amazon Kendra currently only supports access control configuration for S3
    #             data sources and documents indexed using the <code>BatchPutDocument</code> API.</p>
    #          <important>
    #             <p>You can't configure access control using
    #                     <code>CreateAccessControlConfiguration</code> for an Amazon Kendra Gen AI Enterprise
    #                 Edition index. Amazon Kendra will return a <code>ValidationException</code> error for a
    #                     <code>Gen_AI_ENTERPRISE_EDITION</code> index.</p>
    #          </important>
    # @param [Hash, Types::UpdateAccessControlConfigurationRequest] params
    # @option params [String] :index_id
    #   <p>The identifier of the index for an access control configuration.</p>
    # @option params [String] :id
    #   <p>The identifier of the access control configuration you want to update.</p>
    # @option params [String] :name
    #   <p>A new name for the access control configuration.</p>
    # @option params [String] :description
    #   <p>A new description for the access control configuration.</p>
    # @option params [Array<Types::Principal>] :access_control_list
    #   <p>Information you want to update on principals (users and/or groups) and which documents
    #               they should have access to. This is useful for user context filtering, where search
    #               results are filtered based on the user or their group access to documents.</p>
    # @option params [Array<Types::HierarchicalPrincipal>] :hierarchical_access_control_list
    #   <p>The updated list of <a href="https://docs.aws.amazon.com/kendra/latest/dg/API_Principal.html">principal</a> lists that define the
    #               hierarchy for which documents users should have access to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #     id: "AccessControlConfigurationId", # required
    #     name: "AccessControlConfigurationName",
    #     description: "Description",
    #     access_control_list: [
    #       {
    #         name: "PrincipalName", # required
    #         type: "USER" # One of: ["USER", "GROUP"], # required
    #         access: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #         data_source_id: "DataSourceId"
    #       }
    #     ],
    #     hierarchical_access_control_list: [
    #       {
    #         principal_list: [ # required
    #           {
    #             name: "PrincipalName", # required
    #             type: "USER" # One of: ["USER", "GROUP"], # required
    #             access: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #             data_source_id: "DataSourceId"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_access_control_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateAccessControlConfigurationResponse]
    def update_access_control_configuration(params = {}, options = {})
      request = build_request(:update_access_control_configuration, params)
      request.send_request(options)
    end

    # <p>Updates an Amazon Kendra data source connector.</p>
    # @param [Hash, Types::UpdateDataSourceRequest] params
    # @option params [String] :id
    #   <p>The identifier of the data source connector you want to update.</p>
    # @option params [String] :name
    #   <p>A new name for the data source connector.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the index used with the data source connector.</p>
    # @option params [Types::DataSourceConfiguration] :configuration
    #   <p>Configuration information you want to update for the data source connector.</p>
    # @option params [Types::DataSourceVpcConfiguration] :vpc_configuration
    #   <p>Configuration information for an Amazon Virtual Private Cloud to connect to your data source.
    #         For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/vpc-configuration.html">Configuring a VPC</a>.</p>
    # @option params [String] :description
    #   <p>A new description for the data source connector.</p>
    # @option params [String] :schedule
    #   <p>The sync schedule you want to update for the data source connector.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role with permission to access 
    #         the data source and required resources. For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html">IAM roles for Amazon Kendra</a>.</p>
    # @option params [String] :language_code
    #   <p>The code for a language you want to update for the data source connector. 
    #               This allows you to support a language for all 
    #               documents when updating the data source. English is supported 
    #               by default. For more information on supported languages, including their codes, 
    #               see <a href="https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html">Adding 
    #                   documents in languages other than English</a>.</p>
    # @option params [Types::CustomDocumentEnrichmentConfiguration] :custom_document_enrichment_configuration
    #   <p>Configuration information you want to update for altering document metadata and
    #               content during the document ingestion process.</p>
    #            <p>For more information on how to create, modify and delete document metadata, or make
    #               other content alterations when you ingest documents into Amazon Kendra, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html">Customizing document metadata during the ingestion process</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "DataSourceId", # required
    #     name: "DataSourceName",
    #     index_id: "IndexId", # required
    #     configuration: {
    #       s3_configuration: {
    #         bucket_name: "S3BucketName", # required
    #         inclusion_prefixes: ["DataSourceInclusionsExclusionsStringsMember"],
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         documents_metadata_configuration: {
    #           s3_prefix: "S3ObjectKey"
    #         },
    #         access_control_list_configuration: {
    #           key_path: "S3ObjectKey"
    #         }
    #       },
    #       share_point_configuration: {
    #         share_point_version: "SHAREPOINT_2013" # One of: ["SHAREPOINT_2013", "SHAREPOINT_2016", "SHAREPOINT_ONLINE", "SHAREPOINT_2019"], # required
    #         urls: ["Url"], # required
    #         secret_arn: "SecretArn", # required
    #         crawl_attachments: false,
    #         use_change_log: false,
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         document_title_field_name: "DataSourceFieldName",
    #         disable_local_groups: false,
    #         ssl_certificate_s3_path: {
    #           bucket: "S3BucketName", # required
    #           key: "S3ObjectKey", # required
    #         },
    #         authentication_type: "HTTP_BASIC" # One of: ["HTTP_BASIC", "OAUTH2"],
    #         proxy_configuration: {
    #           host: "Host", # required
    #           port: 1, # required
    #           credentials: "SecretArn"
    #         }
    #       },
    #       database_configuration: {
    #         database_engine_type: "RDS_AURORA_MYSQL" # One of: ["RDS_AURORA_MYSQL", "RDS_AURORA_POSTGRESQL", "RDS_MYSQL", "RDS_POSTGRESQL"], # required
    #         connection_configuration: { # required
    #           database_host: "DatabaseHost", # required
    #           database_port: 1, # required
    #           database_name: "DatabaseName", # required
    #           table_name: "TableName", # required
    #           secret_arn: "SecretArn", # required
    #         },
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         column_configuration: { # required
    #           document_id_column_name: "ColumnName", # required
    #           document_data_column_name: "ColumnName", # required
    #           document_title_column_name: "ColumnName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             }
    #           ],
    #           change_detecting_columns: ["ColumnName"], # required
    #         },
    #         acl_configuration: {
    #           allowed_groups_column_name: "ColumnName", # required
    #         },
    #         sql_configuration: {
    #           query_identifiers_enclosing_option: "DOUBLE_QUOTES" # One of: ["DOUBLE_QUOTES", "NONE"]
    #         }
    #       },
    #       salesforce_configuration: {
    #         server_url: "Url", # required
    #         secret_arn: "SecretArn", # required
    #         standard_object_configurations: [
    #           {
    #             name: "ACCOUNT" # One of: ["ACCOUNT", "CAMPAIGN", "CASE", "CONTACT", "CONTRACT", "DOCUMENT", "GROUP", "IDEA", "LEAD", "OPPORTUNITY", "PARTNER", "PRICEBOOK", "PRODUCT", "PROFILE", "SOLUTION", "TASK", "USER"], # required
    #             document_data_field_name: "DataSourceFieldName", # required
    #             document_title_field_name: "DataSourceFieldName",
    #             field_mappings: [
    #               {
    #                 data_source_field_name: "DataSourceFieldName", # required
    #                 date_field_format: "DataSourceDateFieldFormat",
    #                 index_field_name: "IndexFieldName", # required
    #               }
    #             ]
    #           }
    #         ],
    #         knowledge_article_configuration: {
    #           included_states: ["DRAFT" # One of: ["DRAFT", "PUBLISHED", "ARCHIVED"]], # required
    #           standard_knowledge_article_type_configuration: {
    #             document_data_field_name: "DataSourceFieldName", # required
    #             document_title_field_name: "DataSourceFieldName",
    #             field_mappings: [
    #               {
    #                 data_source_field_name: "DataSourceFieldName", # required
    #                 date_field_format: "DataSourceDateFieldFormat",
    #                 index_field_name: "IndexFieldName", # required
    #               }
    #             ]
    #           },
    #           custom_knowledge_article_type_configurations: [
    #             {
    #               name: "SalesforceCustomKnowledgeArticleTypeName", # required
    #               document_data_field_name: "DataSourceFieldName", # required
    #               document_title_field_name: "DataSourceFieldName",
    #               field_mappings: [
    #                 {
    #                   data_source_field_name: "DataSourceFieldName", # required
    #                   date_field_format: "DataSourceDateFieldFormat",
    #                   index_field_name: "IndexFieldName", # required
    #                 }
    #               ]
    #             }
    #           ]
    #         },
    #         chatter_feed_configuration: {
    #           document_data_field_name: "DataSourceFieldName", # required
    #           document_title_field_name: "DataSourceFieldName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             }
    #           ],
    #           include_filter_types: ["ACTIVE_USER" # One of: ["ACTIVE_USER", "STANDARD_USER"]]
    #         },
    #         crawl_attachments: false,
    #         standard_object_attachment_configuration: {
    #           document_title_field_name: "DataSourceFieldName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             }
    #           ]
    #         },
    #         include_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclude_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"]
    #       },
    #       one_drive_configuration: {
    #         tenant_domain: "TenantDomain", # required
    #         secret_arn: "SecretArn", # required
    #         one_drive_users: { # required
    #           one_drive_user_list: ["OneDriveUser"],
    #           one_drive_user_s3_path: {
    #             bucket: "S3BucketName", # required
    #             key: "S3ObjectKey", # required
    #           }
    #         },
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         disable_local_groups: false
    #       },
    #       service_now_configuration: {
    #         host_url: "ServiceNowHostUrl", # required
    #         secret_arn: "SecretArn", # required
    #         service_now_build_version: "LONDON" # One of: ["LONDON", "OTHERS"], # required
    #         knowledge_article_configuration: {
    #           crawl_attachments: false,
    #           include_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           exclude_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           document_data_field_name: "DataSourceFieldName", # required
    #           document_title_field_name: "DataSourceFieldName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             }
    #           ],
    #           filter_query: "ServiceNowKnowledgeArticleFilterQuery"
    #         },
    #         service_catalog_configuration: {
    #           crawl_attachments: false,
    #           include_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           exclude_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           document_data_field_name: "DataSourceFieldName", # required
    #           document_title_field_name: "DataSourceFieldName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             }
    #           ]
    #         },
    #         authentication_type: "HTTP_BASIC" # One of: ["HTTP_BASIC", "OAUTH2"]
    #       },
    #       confluence_configuration: {
    #         server_url: "Url", # required
    #         secret_arn: "SecretArn", # required
    #         version: "CLOUD" # One of: ["CLOUD", "SERVER"], # required
    #         space_configuration: {
    #           crawl_personal_spaces: false,
    #           crawl_archived_spaces: false,
    #           include_spaces: ["ConfluenceSpaceIdentifier"],
    #           exclude_spaces: ["ConfluenceSpaceIdentifier"],
    #           space_field_mappings: [
    #             {
    #               data_source_field_name: "DISPLAY_URL" # One of: ["DISPLAY_URL", "ITEM_TYPE", "SPACE_KEY", "URL"],
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName"
    #             }
    #           ]
    #         },
    #         page_configuration: {
    #           page_field_mappings: [
    #             {
    #               data_source_field_name: "AUTHOR" # One of: ["AUTHOR", "CONTENT_STATUS", "CREATED_DATE", "DISPLAY_URL", "ITEM_TYPE", "LABELS", "MODIFIED_DATE", "PARENT_ID", "SPACE_KEY", "SPACE_NAME", "URL", "VERSION"],
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName"
    #             }
    #           ]
    #         },
    #         blog_configuration: {
    #           blog_field_mappings: [
    #             {
    #               data_source_field_name: "AUTHOR" # One of: ["AUTHOR", "DISPLAY_URL", "ITEM_TYPE", "LABELS", "PUBLISH_DATE", "SPACE_KEY", "SPACE_NAME", "URL", "VERSION"],
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName"
    #             }
    #           ]
    #         },
    #         attachment_configuration: {
    #           crawl_attachments: false,
    #           attachment_field_mappings: [
    #             {
    #               data_source_field_name: "AUTHOR" # One of: ["AUTHOR", "CONTENT_TYPE", "CREATED_DATE", "DISPLAY_URL", "FILE_SIZE", "ITEM_TYPE", "PARENT_ID", "SPACE_KEY", "SPACE_NAME", "URL", "VERSION"],
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName"
    #             }
    #           ]
    #         },
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         proxy_configuration: {
    #           host: "Host", # required
    #           port: 1, # required
    #           credentials: "SecretArn"
    #         },
    #         authentication_type: "HTTP_BASIC" # One of: ["HTTP_BASIC", "PAT"]
    #       },
    #       google_drive_configuration: {
    #         secret_arn: "SecretArn", # required
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         exclude_mime_types: ["MimeType"],
    #         exclude_user_accounts: ["UserAccount"],
    #         exclude_shared_drives: ["SharedDriveId"]
    #       },
    #       web_crawler_configuration: {
    #         urls: { # required
    #           seed_url_configuration: {
    #             seed_urls: ["SeedUrl"], # required
    #             web_crawler_mode: "HOST_ONLY" # One of: ["HOST_ONLY", "SUBDOMAINS", "EVERYTHING"]
    #           },
    #           site_maps_configuration: {
    #             site_maps: ["SiteMap"], # required
    #           }
    #         },
    #         crawl_depth: 1,
    #         max_links_per_page: 1,
    #         max_content_size_per_page_in_mega_bytes: 1.0,
    #         max_urls_per_minute_crawl_rate: 1,
    #         url_inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         url_exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         proxy_configuration: {
    #           host: "Host", # required
    #           port: 1, # required
    #           credentials: "SecretArn"
    #         },
    #         authentication_configuration: {
    #           basic_authentication: [
    #             {
    #               host: "Host", # required
    #               port: 1, # required
    #               credentials: "SecretArn", # required
    #             }
    #           ]
    #         }
    #       },
    #       work_docs_configuration: {
    #         organization_id: "OrganizationId", # required
    #         crawl_comments: false,
    #         use_change_log: false,
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ]
    #       },
    #       fsx_configuration: {
    #         file_system_id: "FileSystemId", # required
    #         file_system_type: "WINDOWS" # One of: ["WINDOWS"], # required
    #         vpc_configuration: { # required
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         secret_arn: "SecretArn",
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ]
    #       },
    #       slack_configuration: {
    #         team_id: "TeamId", # required
    #         secret_arn: "SecretArn", # required
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         slack_entity_list: ["PUBLIC_CHANNEL" # One of: ["PUBLIC_CHANNEL", "PRIVATE_CHANNEL", "GROUP_MESSAGE", "DIRECT_MESSAGE"]], # required
    #         use_change_log: false,
    #         crawl_bot_message: false,
    #         exclude_archived: false,
    #         since_crawl_date: "SinceCrawlDate", # required
    #         look_back_period: 1,
    #         private_channel_filter: ["String"],
    #         public_channel_filter: ["String"],
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ]
    #       },
    #       box_configuration: {
    #         enterprise_id: "EnterpriseId", # required
    #         secret_arn: "SecretArn", # required
    #         use_change_log: false,
    #         crawl_comments: false,
    #         crawl_tasks: false,
    #         crawl_web_links: false,
    #         file_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         task_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         comment_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         web_link_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         }
    #       },
    #       quip_configuration: {
    #         domain: "Domain", # required
    #         secret_arn: "SecretArn", # required
    #         crawl_file_comments: false,
    #         crawl_chat_rooms: false,
    #         crawl_attachments: false,
    #         folder_ids: ["FolderId"],
    #         thread_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         message_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         attachment_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         }
    #       },
    #       jira_configuration: {
    #         jira_account_url: "JiraAccountUrl", # required
    #         secret_arn: "SecretArn", # required
    #         use_change_log: false,
    #         project: ["String"],
    #         issue_type: ["String"],
    #         status: ["String"],
    #         issue_sub_entity_filter: ["COMMENTS" # One of: ["COMMENTS", "ATTACHMENTS", "WORKLOGS"]],
    #         attachment_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         comment_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         issue_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         project_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         work_log_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         }
    #       },
    #       git_hub_configuration: {
    #         saa_s_configuration: {
    #           organization_name: "OrganizationName", # required
    #           host_url: "Url", # required
    #         },
    #         on_premise_configuration: {
    #           host_url: "Url", # required
    #           organization_name: "OrganizationName", # required
    #           ssl_certificate_s3_path: { # required
    #             bucket: "S3BucketName", # required
    #             key: "S3ObjectKey", # required
    #           }
    #         },
    #         type: "SAAS" # One of: ["SAAS", "ON_PREMISE"],
    #         secret_arn: "SecretArn", # required
    #         use_change_log: false,
    #         git_hub_document_crawl_properties: {
    #           crawl_repository_documents: false,
    #           crawl_issue: false,
    #           crawl_issue_comment: false,
    #           crawl_issue_comment_attachment: false,
    #           crawl_pull_request: false,
    #           crawl_pull_request_comment: false,
    #           crawl_pull_request_comment_attachment: false
    #         },
    #         repository_filter: ["RepositoryName"],
    #         inclusion_folder_name_patterns: ["String"],
    #         inclusion_file_type_patterns: ["String"],
    #         inclusion_file_name_patterns: ["String"],
    #         exclusion_folder_name_patterns: ["String"],
    #         exclusion_file_type_patterns: ["String"],
    #         exclusion_file_name_patterns: ["String"],
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         git_hub_repository_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         git_hub_commit_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         git_hub_issue_document_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         git_hub_issue_comment_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         git_hub_issue_attachment_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         git_hub_pull_request_comment_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         git_hub_pull_request_document_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         git_hub_pull_request_document_attachment_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ]
    #       },
    #       alfresco_configuration: {
    #         site_url: "SiteUrl", # required
    #         site_id: "SiteId", # required
    #         secret_arn: "SecretArn", # required
    #         ssl_certificate_s3_path: { # required
    #           bucket: "S3BucketName", # required
    #           key: "S3ObjectKey", # required
    #         },
    #         crawl_system_folders: false,
    #         crawl_comments: false,
    #         entity_filter: ["wiki" # One of: ["wiki", "blog", "documentLibrary"]],
    #         document_library_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         blog_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         wiki_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           }
    #         ],
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         }
    #       },
    #       template_configuration: {
    #         template: ""null""
    #       }
    #     },
    #     vpc_configuration: {
    #       subnet_ids: ["SubnetId"], # required
    #       security_group_ids: ["VpcSecurityGroupId"], # required
    #     },
    #     description: "Description",
    #     schedule: "ScanSchedule",
    #     role_arn: "RoleArn",
    #     language_code: "LanguageCode",
    #     custom_document_enrichment_configuration: {
    #       inline_configurations: [
    #         {
    #           condition: {
    #             condition_document_attribute_key: "DocumentAttributeKey", # required
    #             operator: "GreaterThan" # One of: ["GreaterThan", "GreaterThanOrEquals", "LessThan", "LessThanOrEquals", "Equals", "NotEquals", "Contains", "NotContains", "Exists", "NotExists", "BeginsWith"], # required
    #             condition_on_value: {
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now
    #             }
    #           },
    #           target: {
    #             target_document_attribute_key: "DocumentAttributeKey",
    #             target_document_attribute_value_deletion: false,
    #             target_document_attribute_value: {
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now
    #             }
    #           },
    #           document_content_deletion: false
    #         }
    #       ],
    #       pre_extraction_hook_configuration: {
    #         invocation_condition: {
    #           condition_document_attribute_key: "DocumentAttributeKey", # required
    #           operator: "GreaterThan" # One of: ["GreaterThan", "GreaterThanOrEquals", "LessThan", "LessThanOrEquals", "Equals", "NotEquals", "Contains", "NotContains", "Exists", "NotExists", "BeginsWith"], # required
    #           condition_on_value: {
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now
    #           }
    #         },
    #         lambda_arn: "LambdaArn", # required
    #         s3_bucket: "S3BucketName", # required
    #       },
    #       post_extraction_hook_configuration: {
    #         invocation_condition: {
    #           condition_document_attribute_key: "DocumentAttributeKey", # required
    #           operator: "GreaterThan" # One of: ["GreaterThan", "GreaterThanOrEquals", "LessThan", "LessThanOrEquals", "Equals", "NotEquals", "Contains", "NotContains", "Exists", "NotExists", "BeginsWith"], # required
    #           condition_on_value: {
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now
    #           }
    #         },
    #         lambda_arn: "LambdaArn", # required
    #         s3_bucket: "S3BucketName", # required
    #       },
    #       role_arn: "RoleArn"
    #     }
    #   }
    #   options = {}
    #   response = client.update_data_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_data_source(params = {}, options = {})
      request = build_request(:update_data_source, params)
      request.send_request(options)
    end

    # <p>Updates your Amazon Kendra experience such as a search application. For more information on
    #             creating a search application experience, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html">Building a 
    #                 search experience with no code</a>.</p>
    # @param [Hash, Types::UpdateExperienceRequest] params
    # @option params [String] :id
    #   <p>The identifier of your Amazon Kendra experience you want to update.</p>
    # @option params [String] :name
    #   <p>A new name for your Amazon Kendra experience.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the index for your Amazon Kendra experience.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role with permission to access 
    #               the <code>Query</code> API, <code>QuerySuggestions</code> API, <code>SubmitFeedback</code>
    #               API, and IAM Identity Center that stores your users and groups information. 
    #               For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html">IAM roles for Amazon Kendra</a>.</p>
    # @option params [Types::ExperienceConfiguration] :configuration
    #   <p>Configuration information you want to update for your Amazon Kendra experience.</p>
    # @option params [String] :description
    #   <p>A new description for your Amazon Kendra experience.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ExperienceId", # required
    #     name: "ExperienceName",
    #     index_id: "IndexId", # required
    #     role_arn: "RoleArn",
    #     configuration: {
    #       content_source_configuration: {
    #         data_source_ids: ["DataSourceId"],
    #         faq_ids: ["FaqId"],
    #         direct_put_content: false
    #       },
    #       user_identity_configuration: {
    #         identity_attribute_name: "IdentityAttributeName"
    #       }
    #     },
    #     description: "Description"
    #   }
    #   options = {}
    #   response = client.update_experience(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_experience(params = {}, options = {})
      request = build_request(:update_experience, params)
      request.send_request(options)
    end

    # <p>Updates a set of featured results. Features results are placed
    #             above 
    #             all other results for certain queries. You map specific queries to specific documents
    #             for featuring in the results. If a query contains an exact match of a query, then one 
    #             or more specific documents are featured in the search results.</p>
    # @param [Hash, Types::UpdateFeaturedResultsSetRequest] params
    # @option params [String] :index_id
    #   <p>The identifier of the index used for featuring results.</p>
    # @option params [String] :featured_results_set_id
    #   <p>The identifier of the set of featured results that you want to update.</p>
    # @option params [String] :featured_results_set_name
    #   <p>A new name for the set of featured results.</p>
    # @option params [String] :description
    #   <p>A new description for the set of featured results.</p>
    # @option params [String] :status
    #   <p>You can set the status to <code>ACTIVE</code> or <code>INACTIVE</code>. 
    #               When the value is <code>ACTIVE</code>, featured results are ready for 
    #               use. You can still configure your settings before setting the status 
    #               to <code>ACTIVE</code>. The queries you specify for featured results 
    #               must be unique per featured results set for each index, whether the 
    #               status is <code>ACTIVE</code> or <code>INACTIVE</code>.</p>
    # @option params [Array<String>] :query_texts
    #   <p>A list of queries for featuring results. For more information on the 
    #               list of queries, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/API_FeaturedResultsSet.html">FeaturedResultsSet</a>.</p>
    # @option params [Array<Types::FeaturedDocument>] :featured_documents
    #   <p>A list of document IDs for the documents you want to feature at the 
    #               top of the search results page. For more information on the list of 
    #               featured documents, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/API_FeaturedResultsSet.html">FeaturedResultsSet</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #     featured_results_set_id: "FeaturedResultsSetId", # required
    #     featured_results_set_name: "FeaturedResultsSetName",
    #     description: "FeaturedResultsSetDescription",
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #     query_texts: ["QueryText"],
    #     featured_documents: [
    #       {
    #         id: "DocumentId"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_featured_results_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     featured_results_set: {
    #       featured_results_set_id: "FeaturedResultsSetId",
    #       featured_results_set_name: "FeaturedResultsSetName",
    #       description: "FeaturedResultsSetDescription",
    #       status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #       query_texts: ["QueryText"],
    #       featured_documents: [
    #         {
    #           id: "DocumentId"
    #         }
    #       ],
    #       last_updated_timestamp: 1,
    #       creation_timestamp: 1
    #     }
    #   }
    # @return [Types::UpdateFeaturedResultsSetResponse]
    def update_featured_results_set(params = {}, options = {})
      request = build_request(:update_featured_results_set, params)
      request.send_request(options)
    end

    # <p>Updates an Amazon Kendra index.</p>
    # @param [Hash, Types::UpdateIndexRequest] params
    # @option params [String] :id
    #   <p>The identifier of the index you want to update.</p>
    # @option params [String] :name
    #   <p>A new name for the index.</p>
    # @option params [String] :role_arn
    #   <p>An Identity and Access Management (IAM) role that gives Amazon Kendra
    #         permission to access Amazon CloudWatch logs and metrics.</p>
    # @option params [String] :description
    #   <p>A new description for the index.</p>
    # @option params [Array<Types::DocumentMetadataConfiguration>] :document_metadata_configuration_updates
    #   <p>The document metadata configuration you want to update for the index. Document metadata
    #         are fields or attributes associated with your documents. For example, the company department
    #         name associated with each document.</p>
    # @option params [Types::CapacityUnitsConfiguration] :capacity_units
    #   <p>Sets the number of additional document storage and query capacity units that should be
    #         used by the index. You can change the capacity of the index up to 5 times per day, or make 5
    #         API calls.</p>
    #            <p>If you are using extra storage units, you can't reduce the storage capacity below what is
    #         required to meet the storage needs for your index.</p>
    # @option params [Array<Types::UserTokenConfiguration>] :user_token_configurations
    #   <p>The user token configuration.</p>
    #            <important>
    #               <p>If you're using an Amazon Kendra Gen AI Enterprise Edition index and you try to use
    #                  <code>UserTokenConfigurations</code> to configure user context policy, Amazon Kendra returns
    #               a <code>ValidationException</code> error.</p>
    #            </important>
    # @option params [String] :user_context_policy
    #   <p>The user context policy.</p>
    #            <important>
    #               <p>If you're using an Amazon Kendra Gen AI Enterprise Edition index, you can only use
    #                  <code>ATTRIBUTE_FILTER</code> to filter search results by user context. If you're
    #               using an Amazon Kendra Gen AI Enterprise Edition index and you try to use
    #                  <code>USER_TOKEN</code> to configure user context policy, Amazon Kendra returns a
    #                  <code>ValidationException</code> error.</p>
    #            </important>
    # @option params [Types::UserGroupResolutionConfiguration] :user_group_resolution_configuration
    #   <p>Gets users and groups from IAM Identity Center identity source. To configure this,
    #            see <a href="https://docs.aws.amazon.com/kendra/latest/dg/API_UserGroupResolutionConfiguration.html">UserGroupResolutionConfiguration</a>. This is useful for user context filtering,
    #            where search results are filtered based on the user or their group access to
    #            documents.</p>
    #            <important>
    #               <p>If you're using an Amazon Kendra Gen AI Enterprise Edition index,
    #                  <code>UserGroupResolutionConfiguration</code> isn't supported.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "IndexId", # required
    #     name: "IndexName",
    #     role_arn: "RoleArn",
    #     description: "Description",
    #     document_metadata_configuration_updates: [
    #       {
    #         name: "DocumentMetadataConfigurationName", # required
    #         type: "STRING_VALUE" # One of: ["STRING_VALUE", "STRING_LIST_VALUE", "LONG_VALUE", "DATE_VALUE"], # required
    #         relevance: {
    #           freshness: false,
    #           importance: 1,
    #           duration: "Duration",
    #           rank_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #           value_importance_map: {
    #             "ValueImportanceMapKey" => 1
    #           }
    #         },
    #         search: {
    #           facetable: false,
    #           searchable: false,
    #           displayable: false,
    #           sortable: false
    #         }
    #       }
    #     ],
    #     capacity_units: {
    #       storage_capacity_units: 1, # required
    #       query_capacity_units: 1, # required
    #     },
    #     user_token_configurations: [
    #       {
    #         jwt_token_type_configuration: {
    #           key_location: "URL" # One of: ["URL", "SECRET_MANAGER"], # required
    #           url: "Url",
    #           secret_manager_arn: "RoleArn",
    #           user_name_attribute_field: "UserNameAttributeField",
    #           group_attribute_field: "GroupAttributeField",
    #           issuer: "Issuer",
    #           claim_regex: "ClaimRegex"
    #         },
    #         json_token_type_configuration: {
    #           user_name_attribute_field: "String", # required
    #           group_attribute_field: "String", # required
    #         }
    #       }
    #     ],
    #     user_context_policy: "ATTRIBUTE_FILTER" # One of: ["ATTRIBUTE_FILTER", "USER_TOKEN"],
    #     user_group_resolution_configuration: {
    #       user_group_resolution_mode: "AWS_SSO" # One of: ["AWS_SSO", "NONE"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_index(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_index(params = {}, options = {})
      request = build_request(:update_index, params)
      request.send_request(options)
    end

    # <p>Updates a block list used for query suggestions for an index.</p>
    #          <p>Updates to a block list might not take effect right away. Amazon Kendra 
    #             needs to refresh the entire suggestions list to apply any updates to the 
    #             block list. Other changes not related to the block list apply immediately.</p>
    #          <p>If a block list is updating, then you need to wait for the first update to 
    #             finish before submitting another update.</p>
    #          <p>Amazon Kendra supports partial updates, so you only need to provide the fields 
    #             you want to update.</p>
    #          <p>
    #             <code>UpdateQuerySuggestionsBlockList</code> is currently not supported in the 
    #             Amazon Web Services GovCloud (US-West) region.</p>
    # @param [Hash, Types::UpdateQuerySuggestionsBlockListRequest] params
    # @option params [String] :index_id
    #   <p>The identifier of the index for the block list.</p>
    # @option params [String] :id
    #   <p>The identifier of the block list you want to update.</p>
    # @option params [String] :name
    #   <p>A new name for the block list.</p>
    # @option params [String] :description
    #   <p>A new description for the block list.</p>
    # @option params [Types::S3Path] :source_s3_path
    #   <p>The S3 path where your block list text file sits in S3.</p>
    #            <p>If you update your block list and provide the same path to the 
    #               block list text file in S3, then Amazon Kendra reloads the file to refresh 
    #               the block list. Amazon Kendra does not automatically refresh your block list. 
    #               You need to call the <code>UpdateQuerySuggestionsBlockList</code> API 
    #               to refresh you block list.</p>
    #            <p>If you update your block list, then Amazon Kendra asynchronously refreshes 
    #               all query suggestions with the latest content in the S3 file. This 
    #               means changes might not take effect immediately.</p>
    # @option params [String] :role_arn
    #   <p>The IAM (Identity and Access Management) role used to access the 
    #               block list text file in S3.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #     id: "QuerySuggestionsBlockListId", # required
    #     name: "QuerySuggestionsBlockListName",
    #     description: "Description",
    #     source_s3_path: {
    #       bucket: "S3BucketName", # required
    #       key: "S3ObjectKey", # required
    #     },
    #     role_arn: "RoleArn"
    #   }
    #   options = {}
    #   response = client.update_query_suggestions_block_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_query_suggestions_block_list(params = {}, options = {})
      request = build_request(:update_query_suggestions_block_list, params)
      request.send_request(options)
    end

    # <p>Updates the settings of query suggestions for an index.</p>
    #          <p>Amazon Kendra supports partial updates, so you only need to provide 
    #             the fields you want to update.</p>
    #          <p>If an update is currently processing, you 
    #             need to wait for the update to finish before making another update.</p>
    #          <p>Updates to query suggestions settings might not take effect right away. 
    #             The time for your updated settings to take effect depends on the updates 
    #             made and the number of search queries in your index.</p>
    #          <p>You can still enable/disable query suggestions at any time.</p>
    #          <p>
    #             <code>UpdateQuerySuggestionsConfig</code> is currently not supported in the 
    #             Amazon Web Services GovCloud (US-West) region.</p>
    # @param [Hash, Types::UpdateQuerySuggestionsConfigRequest] params
    # @option params [String] :index_id
    #   <p> The identifier of the index with query suggestions you want to update.</p>
    # @option params [String] :mode
    #   <p>Set the mode to <code>ENABLED</code> or <code>LEARN_ONLY</code>.</p>
    #            <p>By default, Amazon Kendra enables query suggestions. 
    #               <code>LEARN_ONLY</code> mode allows you to turn off query suggestions. 
    #               You can to update this at any time.</p>
    #            <p>In <code>LEARN_ONLY</code> mode, Amazon Kendra continues to learn from new 
    #               queries to keep suggestions up to date for when you are ready to 
    #               switch to ENABLED mode again.</p>
    # @option params [Integer] :query_log_look_back_window_in_days
    #   <p>How recent your queries are in your query log time window.</p>
    #            <p>The time window is the number of days from current day to past days.</p>
    #            <p>By default, Amazon Kendra sets this to 180.</p>
    # @option params [Boolean] :include_queries_without_user_information
    #   <p>
    #               <code>TRUE</code> to include queries without user information (i.e. all queries, 
    #               irrespective of the user), otherwise <code>FALSE</code> to only include queries 
    #               with user information.</p>
    #            <p>If you pass user information to Amazon Kendra along with the queries, you can set this 
    #               flag to <code>FALSE</code> and instruct Amazon Kendra to only consider queries with user 
    #               information.</p>
    #            <p>If you set to <code>FALSE</code>, Amazon Kendra only considers queries searched at least 
    #               <code>MinimumQueryCount</code> times across <code>MinimumNumberOfQueryingUsers</code> 
    #               unique users for suggestions.</p>
    #            <p>If you set to <code>TRUE</code>, Amazon Kendra ignores all user information and learns 
    #               from all queries.</p>
    # @option params [Integer] :minimum_number_of_querying_users
    #   <p>The minimum number of unique users who must search a query in order for the query 
    #               to be eligible to suggest to your users.</p>
    #            <p>Increasing this number might decrease the number of suggestions. However, this 
    #               ensures a query is searched by many users and is truly popular to suggest to users.</p>
    #            <p>How you tune this setting depends on your specific needs.</p>
    # @option params [Integer] :minimum_query_count
    #   <p>The the minimum number of times a query must be searched in order to be 
    #               eligible to suggest to your users.</p>
    #            <p>Decreasing this number increases the number of suggestions. However, this 
    #               affects the quality of suggestions as it sets a low bar for a query to be 
    #               considered popular to suggest to users.</p>
    #            <p>How you tune this setting depends on your specific needs.</p>
    # @option params [Types::AttributeSuggestionsUpdateConfig] :attribute_suggestions_config
    #   <p>Configuration information for the document fields/attributes that you want to base 
    #               query suggestions on.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_id: "IndexId", # required
    #     mode: "ENABLED" # One of: ["ENABLED", "LEARN_ONLY"],
    #     query_log_look_back_window_in_days: 1,
    #     include_queries_without_user_information: false,
    #     minimum_number_of_querying_users: 1,
    #     minimum_query_count: 1,
    #     attribute_suggestions_config: {
    #       suggestable_config_list: [
    #         {
    #           attribute_name: "DocumentAttributeKey",
    #           suggestable: false
    #         }
    #       ],
    #       attribute_suggestions_mode: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_query_suggestions_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_query_suggestions_config(params = {}, options = {})
      request = build_request(:update_query_suggestions_config, params)
      request.send_request(options)
    end

    # <p>Updates a thesaurus for an index.</p>
    # @param [Hash, Types::UpdateThesaurusRequest] params
    # @option params [String] :id
    #   <p>The identifier of the thesaurus you want to update.</p>
    # @option params [String] :name
    #   <p>A new name for the thesaurus.</p>
    # @option params [String] :index_id
    #   <p>The identifier of the index for the thesaurus.</p>
    # @option params [String] :description
    #   <p>A new description for the thesaurus.</p>
    # @option params [String] :role_arn
    #   <p>An IAM role that gives Amazon Kendra permissions to 
    #            access thesaurus file specified in <code>SourceS3Path</code>.</p>
    # @option params [Types::S3Path] :source_s3_path
    #   <p>Information required to find a specific file in an Amazon S3 bucket.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ThesaurusId", # required
    #     name: "ThesaurusName",
    #     index_id: "IndexId", # required
    #     description: "Description",
    #     role_arn: "RoleArn",
    #     source_s3_path: {
    #       bucket: "S3BucketName", # required
    #       key: "S3ObjectKey", # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_thesaurus(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_thesaurus(params = {}, options = {})
      request = build_request(:update_thesaurus, params)
      request.send_request(options)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It reaches the maximum wait time allowed
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params, options)
    #
    # ## Configuration
    #
    # You must configure the maximum amount of time in seconds a
    # waiter should wait for. You may also configure the minimum
    # and maximum amount of time in seconds to delay between
    # retries. You can pass these configuration as the final
    # arguments hash.
    #
    #     weather = Weather::Client.new
    #
    #     # poll for a maximum of 25 seconds
    #     weather.wait_until(:forecast_exists, { forecast_id: '1' }, {
    #       max_wait_time: 25,
    #       min_delay: 2,
    #       max_delay: 10
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All the failure errors extend from
    # {Smithy::Client::Waiters::WaiterFailed}.
    #
    #     weather = Weather::Client.new
    #     begin
    #       weather.wait_until(:forecast_exists, { forecast_id: '1' }, max_wait_time: 60)
    #     rescue Smithy::Client::Waiters::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_wait_time
    # @option options [Integer] :min_delay
    # @option options [Integer] :max_delay
    # @return [nil] Returns `nil` if the waiter was successful.
    # @raise [FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    # @raise [MaxWaitTimeExceededError] Raised when the configured
    #   maximum wait time is reached and the waiter is not yet successful.
    # @raise [UnexpectedError] Raised when an error that is not
    #   expected is encountered while polling for a resource.
    # @raise [NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    def wait_until(waiter_name, params = {}, options = {})
      waiter(waiter_name, options).wait(params)
    end

    # @api private
    def build_request(operation_name, params)
      handlers = @handlers.for(operation_name)
      context = Smithy::Client::HandlerContext.new(
        operation_name: operation_name,
        operation: config.service.operation(operation_name),
        client: self,
        config: config,
        params: params
      )
      context[:gem_name] = 'aws-sdk-kendra'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {}
    end

    class << self
      # @api private
      attr_reader :identifier

      # @api private
      def auth_parameters
        AuthParameters
      end

      # @api private
      def auth_resolver
        AuthResolver
      end

      # @api private
      def errors_module
        Errors
      end

      # @api private
      def protocols
        {
          json_rpc: Aws::Core::JsonRpc
        }
      end
    end
  end
end
