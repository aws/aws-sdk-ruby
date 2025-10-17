# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/net_http'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/retry_errors'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

module Aws::Wisdom
  # An API client for Aws::Wisdom.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::WisdomService

    add_plugin(::Aws::Wisdom::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::NetHTTP)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::RetryErrors)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
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
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Wisdom::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [String] :http_ca_file
    #  The path to a CA certification file in PEM format. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_file Net::HTTP#ca_file}.
    # @option options [String] :http_ca_path
    #  The path of to CA directory containing certification files in PEM format. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_path Net::HTTP#ca_path}.
    # @option options [OpenSSL::X509::Certificate] :http_cert
    #  Sets the OpenSSL::X509::Certificate object to be used for client certification. Defaults
    #  to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert Net::HTTP#cert}.
    # @option options [OpenSSL::X509::Store] :http_cert_store
    #  Sets the OpenSSL::X509::Store to be used for verifying peer certificate. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert_store Net::HTTP#cert_store}.
    # @option options [Numeric] :http_continue_timeout
    #  Sets the continue timeout value, which is the number of seconds to wait for an
    #  expected 100 Continue response. If the HTTP object does not receive a response
    #  in this many seconds it sends the request body. Defaults to `nil` which uses the
    #  Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-continue_timeout Net::HTTP#continue_timeout}.
    # @option options [Boolean] :http_debug_output
    #  When `true`, Net::HTTP debug output will be sent to the configured logger.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#method-i-set_debug_output Net::HTTP#set_debug_output}.
    # @option options [Numeric] :http_keep_alive_timeout
    #  The number of seconds to keep the connection open after a request is sent. If a
    #  new request is made during the given interval, the still-open connection is used;
    #  otherwise the connection will have been closed and a new connection is opened.
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-keep_alive_timeout Net::HTTP#keep_alive_timeout}.
    # @option options [OpenSSL::PKey::RSA, OpenSSL::PKey::DSA] :http_key
    #  Sets the OpenSSL::PKey object to be used for client private key. Defaults to `nil` which
    #  uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-key Net::HTTP#key}.
    # @option options [Numeric] :http_open_timeout
    #  The number of seconds to wait for a connection to open. If the connection is not
    #  made in the given interval, an exception is raised. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-open_timeout Net::HTTP#open_timeout}.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Numeric] :http_read_timeout
    #  The number of seconds to wait for one block to be read (via one read(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-read_timeout Net::HTTP#read_timeout}.
    # @option options [Numeric] :http_ssl_timeout
    #  Sets the SSL timeout seconds. Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ssl_timeout Net::HTTP#ssl_timeout}.
    # @option options [Integer] :http_verify_mode (OpenSSL::SSL::VERIFY_PEER)
    #  Sets the verify mode for SSL. Defaults to `OpenSSL::SSL::VERIFY_PEER`.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-verify_mode Net::HTTP#verify_mode}.
    # @option options [Numeric] :http_write_timeout
    #  The number of seconds to wait for one block to be written (via one write(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-write_timeout Net::HTTP#write_timeout}.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
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
    # @option options [lambda] :retry_backoff (Smithy::Client::Retry::EXPONENTIAL_BACKOFF)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options [String, Class] :retry_strategy ('standard')
    #  The retry strategy to use when retrying errors. This can be one of the following:
    #  * `standard` - A standardized retry strategy used by the AWS SDKs. This includes support
    #    for retry quotas, which limit the number of unsuccessful retries a client can make.
    #  * `adaptive` - An experimental retry strategy that includes all the functionality of the
    #    `standard` strategy along with automatic client side throttling. This is a provisional
    #    strategy that may change behavior in the future.
    #  * Any instance of a class that implements the following methods:
    #    - `acquire_initial_retry_token(token_scope)`
    #    - `refresh_retry_token(retry_token, error_info)`
    #    - `record_success(retry_token)`
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Stubs#stub_responses}.
    #  @see Stubs
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

    # <p>Creates an Amazon Connect Wisdom assistant.</p>
    # @param [Hash, Types::CreateAssistantInput] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @option params [String] :name
    #   <p>The name of the assistant.</p>
    # @option params [String] :type
    #   <p>The type of assistant.</p>
    # @option params [String] :description
    #   <p>The description of the assistant.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    # @option params [Types::ServerSideEncryptionConfiguration] :server_side_encryption_configuration
    #   <p>The configuration information for the customer managed key used for encryption. </p>
    #            <p>The customer managed key must have a policy that allows <code>kms:CreateGrant</code>,
    #         <code> kms:DescribeKey</code>, and <code>kms:Decrypt/kms:GenerateDataKey</code> permissions to the IAM identity using the key
    #         to invoke Wisdom. To use Wisdom with chat, the key policy must also allow
    #           <code>kms:Decrypt</code>, <code>kms:GenerateDataKey*</code>, and
    #           <code>kms:DescribeKey</code> permissions to the <code>connect.amazonaws.com</code> service
    #         principal. </p>
    #            <p>For more information about setting up a customer managed key for Wisdom, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/enable-wisdom.html">Enable Amazon Connect Wisdom
    #           for your instance</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     name: "Name", # required
    #     type: "AssistantType", # required
    #     description: "Description",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     server_side_encryption_configuration: {
    #       kms_key_id: "NonEmptyString"
    #     }
    #   }
    #   options = {}
    #   response = client.create_assistant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assistant: {
    #       assistant_id: "Uuid", # required
    #       assistant_arn: "Arn", # required
    #       name: "Name", # required
    #       type: "AssistantType", # required
    #       status: "AssistantStatus", # required
    #       description: "Description",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       server_side_encryption_configuration: {
    #         kms_key_id: "NonEmptyString"
    #       },
    #       integration_configuration: {
    #         topic_integration_arn: "GenericArn"
    #       }
    #     }
    #   }
    # @return [Types::CreateAssistantOutput]
    def create_assistant(params = {}, options = {})
      request = build_request(:create_assistant, params)
      request.send_request(options)
    end

    # <p>Creates an association between an Amazon Connect Wisdom assistant and another resource. Currently, the
    #       only supported association is with a knowledge base. An assistant can have only a single
    #       association.</p>
    # @param [Hash, Types::CreateAssistantAssociationInput] params
    # @option params [String] :assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @option params [String] :association_type
    #   <p>The type of association.</p>
    # @option params [Types::AssistantAssociationInputData] :association
    #   <p>The identifier of the associated resource.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assistant_id: "UuidOrArn", # required
    #     association_type: "AssociationType", # required
    #     association: { # required
    #       # One of:
    #       knowledge_base_id: "Uuid"
    #     },
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_assistant_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assistant_association: {
    #       assistant_association_id: "Uuid", # required
    #       assistant_association_arn: "Arn", # required
    #       assistant_id: "Uuid", # required
    #       assistant_arn: "Arn", # required
    #       association_type: "AssociationType", # required
    #       association_data: { # required
    #         # One of:
    #         knowledge_base_association: {
    #           knowledge_base_id: "Uuid",
    #           knowledge_base_arn: "Arn"
    #         }
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::CreateAssistantAssociationOutput]
    def create_assistant_association(params = {}, options = {})
      request = build_request(:create_assistant_association, params)
      request.send_request(options)
    end

    # <p>Creates Wisdom content. Before to calling this API, use <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html">StartContentUpload</a> to
    #       upload an asset.</p>
    # @param [Hash, Types::CreateContentInput] params
    # @option params [String] :knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @option params [String] :name
    #   <p>The name of the content. Each piece of content in a knowledge base must have a unique
    #         name. You can retrieve a piece of content using only its knowledge base and its name with the
    #           <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_SearchContent.html">SearchContent</a> API.</p>
    # @option params [String] :title
    #   <p>The title of the content. If not set, the title is equal to the name.</p>
    # @option params [String] :override_link_out_uri
    #   <p>The URI you want to use for the article. If the knowledge base has a templateUri, setting
    #         this argument overrides it for this piece of content.</p>
    # @option params [Hash<String, String>] :metadata
    #   <p>A key/value map to store attributes without affecting tagging or recommendations. 
    #   For example, when synchronizing data between an external system and Wisdom, you can store an external version identifier as metadata to utilize for determining drift.</p>
    # @option params [String] :upload_id
    #   <p>A pointer to the uploaded asset. This value is returned by <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html">StartContentUpload</a>.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     knowledge_base_id: "UuidOrArn", # required
    #     name: "Name", # required
    #     title: "ContentTitle",
    #     override_link_out_uri: "Uri",
    #     metadata: {
    #       "NonEmptyString" => "NonEmptyString"
    #     },
    #     upload_id: "UploadId", # required
    #     client_token: "NonEmptyString",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_content(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content: {
    #       content_arn: "Arn", # required
    #       content_id: "Uuid", # required
    #       knowledge_base_arn: "Arn", # required
    #       knowledge_base_id: "Uuid", # required
    #       name: "Name", # required
    #       revision_id: "NonEmptyString", # required
    #       title: "ContentTitle", # required
    #       content_type: "ContentType", # required
    #       status: "ContentStatus", # required
    #       metadata: { # required
    #         "NonEmptyString" => "NonEmptyString"
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       link_out_uri: "Uri",
    #       url: "Url", # required
    #       url_expiry: Time.now, # required
    #     }
    #   }
    # @return [Types::CreateContentOutput]
    def create_content(params = {}, options = {})
      request = build_request(:create_content, params)
      request.send_request(options)
    end

    # <p>Creates a knowledge base.</p>
    #          <note>
    #             <p>When using this API, you cannot reuse <a href="https://docs.aws.amazon.com/appintegrations/latest/APIReference/Welcome.html">Amazon AppIntegrations</a>
    #         DataIntegrations with external knowledge bases such as Salesforce and ServiceNow. If you do,
    #         you'll get an <code>InvalidRequestException</code> error. </p>
    #             <p>For example, you're programmatically managing your external knowledge base, and you want
    #         to add or remove one of the fields that is being ingested from Salesforce. Do the
    #         following:</p>
    #             <ol>
    #                <li>
    #                   <p>Call <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_DeleteKnowledgeBase.html">DeleteKnowledgeBase</a>.</p>
    #                </li>
    #                <li>
    #                   <p>Call <a href="https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_DeleteDataIntegration.html">DeleteDataIntegration</a>.</p>
    #                </li>
    #                <li>
    #                   <p>Call <a href="https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html">CreateDataIntegration</a> to recreate the DataIntegration or a create different
    #             one.</p>
    #                </li>
    #                <li>
    #                   <p>Call CreateKnowledgeBase.</p>
    #                </li>
    #             </ol>
    #          </note>
    # @param [Hash, Types::CreateKnowledgeBaseInput] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @option params [String] :name
    #   <p>The name of the knowledge base.</p>
    # @option params [String] :knowledge_base_type
    #   <p>The type of knowledge base. Only CUSTOM knowledge bases allow you to upload your own content.
    #         EXTERNAL knowledge bases support integrations with third-party systems whose content is
    #         synchronized automatically. </p>
    # @option params [Types::SourceConfiguration] :source_configuration
    #   <p>The source of the knowledge base content. Only set this argument for EXTERNAL knowledge
    #         bases.</p>
    # @option params [Types::RenderingConfiguration] :rendering_configuration
    #   <p>Information about how to render the content.</p>
    # @option params [Types::ServerSideEncryptionConfiguration] :server_side_encryption_configuration
    #   <p>The configuration information for the customer managed key used for encryption. </p>
    #            <p>This KMS key must have a policy that allows <code>kms:CreateGrant</code>,
    #         <code>kms:DescribeKey</code>, and <code>kms:Decrypt/kms:GenerateDataKey</code> permissions to the IAM identity using the key
    #         to invoke Wisdom.</p>
    #            <p>For more information about setting up a customer managed key for Wisdom, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/enable-wisdom.html">Enable Amazon Connect Wisdom
    #           for your instance</a>.</p>
    # @option params [String] :description
    #   <p>The description.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "NonEmptyString",
    #     name: "Name", # required
    #     knowledge_base_type: "KnowledgeBaseType", # required
    #     source_configuration: {
    #       # One of:
    #       app_integrations: {
    #         app_integration_arn: "GenericArn", # required
    #         object_fields: ["NonEmptyString"]
    #       }
    #     },
    #     rendering_configuration: {
    #       template_uri: "Uri"
    #     },
    #     server_side_encryption_configuration: {
    #       kms_key_id: "NonEmptyString"
    #     },
    #     description: "Description",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_knowledge_base(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     knowledge_base: {
    #       knowledge_base_id: "Uuid", # required
    #       knowledge_base_arn: "Arn", # required
    #       name: "Name", # required
    #       knowledge_base_type: "KnowledgeBaseType", # required
    #       status: "KnowledgeBaseStatus", # required
    #       last_content_modification_time: Time.now,
    #       source_configuration: {
    #         # One of:
    #         app_integrations: {
    #           app_integration_arn: "GenericArn", # required
    #           object_fields: ["NonEmptyString"]
    #         }
    #       },
    #       rendering_configuration: {
    #         template_uri: "Uri"
    #       },
    #       server_side_encryption_configuration: {
    #         kms_key_id: "NonEmptyString"
    #       },
    #       description: "Description",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::CreateKnowledgeBaseOutput]
    def create_knowledge_base(params = {}, options = {})
      request = build_request(:create_knowledge_base, params)
      request.send_request(options)
    end

    # <p>Creates a Wisdom quick response.</p>
    # @param [Hash, Types::CreateQuickResponseRequest] params
    # @option params [String] :knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @option params [String] :name
    #   <p>The name of the quick response.</p>
    # @option params [Types::QuickResponseDataProvider] :content
    #   <p>The content of the quick response.</p>
    # @option params [String] :content_type
    #   <p>The media type of the quick response content.</p>
    #            <ul>
    #               <li>
    #                  <p>Use <code>application/x.quickresponse;format=plain</code> for a quick response written in plain text.</p>
    #               </li>
    #               <li>
    #                  <p>Use <code>application/x.quickresponse;format=markdown</code> for a quick response written in richtext.</p>
    #               </li>
    #            </ul>
    # @option params [Types::GroupingConfiguration] :grouping_configuration
    #   <p>The configuration information of the user groups that the quick response is accessible to.</p>
    # @option params [String] :description
    #   <p>The description of the quick response.</p>
    # @option params [String] :shortcut_key
    #   <p>The shortcut key of the quick response. The value should be unique across the
    #     knowledge base.
    #       </p>
    # @option params [Boolean] :is_active
    #   <p>Whether the quick response is active.</p>
    # @option params [Array<String>] :channels
    #   <p>The Amazon Connect channels this quick response applies to.</p>
    # @option params [String] :language
    #   <p>The language code value for the language in which the quick response is written.  The supported language codes include <code>de_DE</code>, <code>en_US</code>, <code>es_ES</code>,
    #     <code>fr_FR</code>, <code>id_ID</code>, <code>it_IT</code>, <code>ja_JP</code>, <code>ko_KR</code>, <code>pt_BR</code>,
    #     <code>zh_CN</code>, <code>zh_TW</code>
    #            </p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     knowledge_base_id: "UuidOrArn", # required
    #     name: "QuickResponseName", # required
    #     content: { # required
    #       # One of:
    #       content: "QuickResponseContent"
    #     },
    #     content_type: "QuickResponseType",
    #     grouping_configuration: {
    #       criteria: "GroupingCriteria",
    #       values: ["GroupingValue"]
    #     },
    #     description: "QuickResponseDescription",
    #     shortcut_key: "ShortCutKey",
    #     is_active: false,
    #     channels: ["Channel"],
    #     language: "LanguageCode",
    #     client_token: "NonEmptyString",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_quick_response(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     quick_response: {
    #       quick_response_arn: "Arn", # required
    #       quick_response_id: "Uuid", # required
    #       knowledge_base_arn: "Arn", # required
    #       knowledge_base_id: "Uuid", # required
    #       name: "QuickResponseName", # required
    #       content_type: "QuickResponseType", # required
    #       status: "QuickResponseStatus", # required
    #       created_time: Time.now, # required
    #       last_modified_time: Time.now, # required
    #       contents: {
    #         plain_text: {
    #           # One of:
    #           content: "QuickResponseContent"
    #         },
    #         markdown: {
    #           # One of:
    #           content: "QuickResponseContent"
    #         }
    #       },
    #       description: "QuickResponseDescription",
    #       grouping_configuration: {
    #         criteria: "GroupingCriteria",
    #         values: ["GroupingValue"]
    #       },
    #       shortcut_key: "ShortCutKey",
    #       last_modified_by: "GenericArn",
    #       is_active: false,
    #       channels: ["Channel"],
    #       language: "LanguageCode",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::CreateQuickResponseResponse]
    def create_quick_response(params = {}, options = {})
      request = build_request(:create_quick_response, params)
      request.send_request(options)
    end

    # <p>Creates a session. A session is a contextual container used for generating
    #       recommendations. Amazon Connect creates a new Wisdom session for each contact on which
    #       Wisdom is enabled.</p>
    # @param [Hash, Types::CreateSessionInput] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @option params [String] :assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @option params [String] :name
    #   <p>The name of the session.</p>
    # @option params [String] :description
    #   <p>The description.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     assistant_id: "UuidOrArn", # required
    #     name: "Name", # required
    #     description: "Description",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session: {
    #       session_arn: "Arn", # required
    #       session_id: "Uuid", # required
    #       name: "Name", # required
    #       description: "Description",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       integration_configuration: {
    #         topic_integration_arn: "GenericArn"
    #       }
    #     }
    #   }
    # @return [Types::CreateSessionOutput]
    def create_session(params = {}, options = {})
      request = build_request(:create_session, params)
      request.send_request(options)
    end

    # <p>Deletes an assistant.</p>
    # @param [Hash, Types::DeleteAssistantInput] params
    # @option params [String] :assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assistant_id: "UuidOrArn", # required
    #   }
    #   options = {}
    #   response = client.delete_assistant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAssistantOutput]
    def delete_assistant(params = {}, options = {})
      request = build_request(:delete_assistant, params)
      request.send_request(options)
    end

    # <p>Deletes an assistant association.</p>
    # @param [Hash, Types::DeleteAssistantAssociationInput] params
    # @option params [String] :assistant_association_id
    #   <p>The identifier of the assistant association. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @option params [String] :assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assistant_association_id: "UuidOrArn", # required
    #     assistant_id: "UuidOrArn", # required
    #   }
    #   options = {}
    #   response = client.delete_assistant_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAssistantAssociationOutput]
    def delete_assistant_association(params = {}, options = {})
      request = build_request(:delete_assistant_association, params)
      request.send_request(options)
    end

    # <p>Deletes the content.</p>
    # @param [Hash, Types::DeleteContentInput] params
    # @option params [String] :knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @option params [String] :content_id
    #   <p>The identifier of the content. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     knowledge_base_id: "UuidOrArn", # required
    #     content_id: "UuidOrArn", # required
    #   }
    #   options = {}
    #   response = client.delete_content(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteContentOutput]
    def delete_content(params = {}, options = {})
      request = build_request(:delete_content, params)
      request.send_request(options)
    end

    # <p>Deletes the quick response import job.</p>
    # @param [Hash, Types::DeleteImportJobRequest] params
    # @option params [String] :knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it.</p>
    # @option params [String] :import_job_id
    #   <p>The identifier of the import job to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     knowledge_base_id: "UuidOrArn", # required
    #     import_job_id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.delete_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteImportJobResponse]
    def delete_import_job(params = {}, options = {})
      request = build_request(:delete_import_job, params)
      request.send_request(options)
    end

    # <p>Deletes the knowledge base.</p>
    #          <note>
    #             <p>When you use this API to delete an external knowledge base such as Salesforce or
    #         ServiceNow, you must also delete the <a href="https://docs.aws.amazon.com/appintegrations/latest/APIReference/Welcome.html">Amazon AppIntegrations</a>
    #         DataIntegration. This is because you can't reuse the DataIntegration after it's been
    #         associated with an external knowledge base. However, you can delete and recreate it. See
    #           <a href="https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_DeleteDataIntegration.html">DeleteDataIntegration</a> and <a href="https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html">CreateDataIntegration</a> in the <i>Amazon AppIntegrations API
    #         Reference</i>.</p>
    #          </note>
    # @param [Hash, Types::DeleteKnowledgeBaseInput] params
    # @option params [String] :knowledge_base_id
    #   <p>The knowledge base to delete content from. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     knowledge_base_id: "UuidOrArn", # required
    #   }
    #   options = {}
    #   response = client.delete_knowledge_base(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteKnowledgeBaseOutput]
    def delete_knowledge_base(params = {}, options = {})
      request = build_request(:delete_knowledge_base, params)
      request.send_request(options)
    end

    # <p>Deletes a quick response.</p>
    # @param [Hash, Types::DeleteQuickResponseRequest] params
    # @option params [String] :knowledge_base_id
    #   <p>The knowledge base from which the quick response is deleted. The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it.</p>
    # @option params [String] :quick_response_id
    #   <p>The identifier of the quick response to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     knowledge_base_id: "UuidOrArn", # required
    #     quick_response_id: "UuidOrArn", # required
    #   }
    #   options = {}
    #   response = client.delete_quick_response(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteQuickResponseResponse]
    def delete_quick_response(params = {}, options = {})
      request = build_request(:delete_quick_response, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an assistant.</p>
    # @param [Hash, Types::GetAssistantInput] params
    # @option params [String] :assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assistant_id: "UuidOrArn", # required
    #   }
    #   options = {}
    #   response = client.get_assistant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assistant: {
    #       assistant_id: "Uuid", # required
    #       assistant_arn: "Arn", # required
    #       name: "Name", # required
    #       type: "AssistantType", # required
    #       status: "AssistantStatus", # required
    #       description: "Description",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       server_side_encryption_configuration: {
    #         kms_key_id: "NonEmptyString"
    #       },
    #       integration_configuration: {
    #         topic_integration_arn: "GenericArn"
    #       }
    #     }
    #   }
    # @return [Types::GetAssistantOutput]
    def get_assistant(params = {}, options = {})
      request = build_request(:get_assistant, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an assistant association.</p>
    # @param [Hash, Types::GetAssistantAssociationInput] params
    # @option params [String] :assistant_association_id
    #   <p>The identifier of the assistant association. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @option params [String] :assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assistant_association_id: "UuidOrArn", # required
    #     assistant_id: "UuidOrArn", # required
    #   }
    #   options = {}
    #   response = client.get_assistant_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assistant_association: {
    #       assistant_association_id: "Uuid", # required
    #       assistant_association_arn: "Arn", # required
    #       assistant_id: "Uuid", # required
    #       assistant_arn: "Arn", # required
    #       association_type: "AssociationType", # required
    #       association_data: { # required
    #         # One of:
    #         knowledge_base_association: {
    #           knowledge_base_id: "Uuid",
    #           knowledge_base_arn: "Arn"
    #         }
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::GetAssistantAssociationOutput]
    def get_assistant_association(params = {}, options = {})
      request = build_request(:get_assistant_association, params)
      request.send_request(options)
    end

    # <p>Retrieves content, including a pre-signed URL to download the content.</p>
    # @param [Hash, Types::GetContentInput] params
    # @option params [String] :content_id
    #   <p>The identifier of the content. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @option params [String] :knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     content_id: "UuidOrArn", # required
    #     knowledge_base_id: "UuidOrArn", # required
    #   }
    #   options = {}
    #   response = client.get_content(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content: {
    #       content_arn: "Arn", # required
    #       content_id: "Uuid", # required
    #       knowledge_base_arn: "Arn", # required
    #       knowledge_base_id: "Uuid", # required
    #       name: "Name", # required
    #       revision_id: "NonEmptyString", # required
    #       title: "ContentTitle", # required
    #       content_type: "ContentType", # required
    #       status: "ContentStatus", # required
    #       metadata: { # required
    #         "NonEmptyString" => "NonEmptyString"
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       link_out_uri: "Uri",
    #       url: "Url", # required
    #       url_expiry: Time.now, # required
    #     }
    #   }
    # @return [Types::GetContentOutput]
    def get_content(params = {}, options = {})
      request = build_request(:get_content, params)
      request.send_request(options)
    end

    # <p>Retrieves summary information about the content.</p>
    # @param [Hash, Types::GetContentSummaryInput] params
    # @option params [String] :content_id
    #   <p>The identifier of the content. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @option params [String] :knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     content_id: "UuidOrArn", # required
    #     knowledge_base_id: "UuidOrArn", # required
    #   }
    #   options = {}
    #   response = client.get_content_summary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content_summary: {
    #       content_arn: "Arn", # required
    #       content_id: "Uuid", # required
    #       knowledge_base_arn: "Arn", # required
    #       knowledge_base_id: "Uuid", # required
    #       name: "Name", # required
    #       revision_id: "NonEmptyString", # required
    #       title: "ContentTitle", # required
    #       content_type: "ContentType", # required
    #       status: "ContentStatus", # required
    #       metadata: { # required
    #         "NonEmptyString" => "NonEmptyString"
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::GetContentSummaryOutput]
    def get_content_summary(params = {}, options = {})
      request = build_request(:get_content_summary, params)
      request.send_request(options)
    end

    # <p>Retrieves the started import job.</p>
    # @param [Hash, Types::GetImportJobRequest] params
    # @option params [String] :import_job_id
    #   <p>The identifier of the import job to retrieve.</p>
    # @option params [String] :knowledge_base_id
    #   <p>The identifier of the knowledge base that the import job belongs to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     import_job_id: "Uuid", # required
    #     knowledge_base_id: "UuidOrArn", # required
    #   }
    #   options = {}
    #   response = client.get_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     import_job: {
    #       import_job_id: "Uuid", # required
    #       knowledge_base_id: "Uuid", # required
    #       upload_id: "UploadId", # required
    #       knowledge_base_arn: "Arn", # required
    #       import_job_type: "ImportJobType", # required
    #       status: "ImportJobStatus", # required
    #       url: "Url", # required
    #       failed_record_report: "Url",
    #       url_expiry: Time.now, # required
    #       created_time: Time.now, # required
    #       last_modified_time: Time.now, # required
    #       metadata: {
    #         "NonEmptyString" => "NonEmptyString"
    #       },
    #       external_source_configuration: {
    #         source: "ExternalSource", # required
    #         configuration: { # required
    #           # One of:
    #           connect_configuration: {
    #             instance_id: "NonEmptyString"
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetImportJobResponse]
    def get_import_job(params = {}, options = {})
      request = build_request(:get_import_job, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the knowledge base.</p>
    # @param [Hash, Types::GetKnowledgeBaseInput] params
    # @option params [String] :knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     knowledge_base_id: "UuidOrArn", # required
    #   }
    #   options = {}
    #   response = client.get_knowledge_base(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     knowledge_base: {
    #       knowledge_base_id: "Uuid", # required
    #       knowledge_base_arn: "Arn", # required
    #       name: "Name", # required
    #       knowledge_base_type: "KnowledgeBaseType", # required
    #       status: "KnowledgeBaseStatus", # required
    #       last_content_modification_time: Time.now,
    #       source_configuration: {
    #         # One of:
    #         app_integrations: {
    #           app_integration_arn: "GenericArn", # required
    #           object_fields: ["NonEmptyString"]
    #         }
    #       },
    #       rendering_configuration: {
    #         template_uri: "Uri"
    #       },
    #       server_side_encryption_configuration: {
    #         kms_key_id: "NonEmptyString"
    #       },
    #       description: "Description",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::GetKnowledgeBaseOutput]
    def get_knowledge_base(params = {}, options = {})
      request = build_request(:get_knowledge_base, params)
      request.send_request(options)
    end

    # <p>Retrieves the quick response.</p>
    # @param [Hash, Types::GetQuickResponseRequest] params
    # @option params [String] :quick_response_id
    #   <p>The identifier of the quick response.</p>
    # @option params [String] :knowledge_base_id
    #   <p>The identifier of the knowledge base. This should be a QUICK_RESPONSES type knowledge base.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     quick_response_id: "UuidOrArn", # required
    #     knowledge_base_id: "UuidOrArn", # required
    #   }
    #   options = {}
    #   response = client.get_quick_response(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     quick_response: {
    #       quick_response_arn: "Arn", # required
    #       quick_response_id: "Uuid", # required
    #       knowledge_base_arn: "Arn", # required
    #       knowledge_base_id: "Uuid", # required
    #       name: "QuickResponseName", # required
    #       content_type: "QuickResponseType", # required
    #       status: "QuickResponseStatus", # required
    #       created_time: Time.now, # required
    #       last_modified_time: Time.now, # required
    #       contents: {
    #         plain_text: {
    #           # One of:
    #           content: "QuickResponseContent"
    #         },
    #         markdown: {
    #           # One of:
    #           content: "QuickResponseContent"
    #         }
    #       },
    #       description: "QuickResponseDescription",
    #       grouping_configuration: {
    #         criteria: "GroupingCriteria",
    #         values: ["GroupingValue"]
    #       },
    #       shortcut_key: "ShortCutKey",
    #       last_modified_by: "GenericArn",
    #       is_active: false,
    #       channels: ["Channel"],
    #       language: "LanguageCode",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::GetQuickResponseResponse]
    def get_quick_response(params = {}, options = {})
      request = build_request(:get_quick_response, params)
      request.send_request(options)
    end

    # <p>Retrieves recommendations for the specified session. To avoid retrieving the same
    #       recommendations in subsequent calls, use <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_NotifyRecommendationsReceived.html">NotifyRecommendationsReceived</a>. This API supports long-polling behavior with the
    #         <code>waitTimeSeconds</code> parameter. Short poll is the default behavior and only returns
    #       recommendations already available. To perform a manual query against an assistant, use <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_QueryAssistant.html">QueryAssistant</a>.</p>
    # @param [Hash, Types::GetRecommendationsInput] params
    # @option params [String] :assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @option params [String] :session_id
    #   <p>The identifier of the session. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [Integer] :wait_time_seconds
    #   <p>The duration (in seconds) for which the call waits for a recommendation to be made
    #         available before returning. If a recommendation is available, the call returns sooner than
    #           <code>WaitTimeSeconds</code>. If no messages are available and the wait time expires, the
    #         call returns successfully with an empty list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assistant_id: "UuidOrArn", # required
    #     session_id: "UuidOrArn", # required
    #     max_results: 1,
    #     wait_time_seconds: 1
    #   }
    #   options = {}
    #   response = client.get_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommendations: [ # required
    #       {
    #         recommendation_id: "String", # required
    #         document: { # required
    #           content_reference: { # required
    #             knowledge_base_arn: "Arn",
    #             knowledge_base_id: "Uuid",
    #             content_arn: "Arn",
    #             content_id: "Uuid"
    #           },
    #           title: {
    #             text: "SensitiveString",
    #             highlights: [
    #               {
    #                 begin_offset_inclusive: 1,
    #                 end_offset_exclusive: 1
    #               }
    #             ]
    #           },
    #           excerpt: {
    #             text: "SensitiveString",
    #             highlights: [
    #               {
    #                 begin_offset_inclusive: 1,
    #                 end_offset_exclusive: 1
    #               }
    #             ]
    #           }
    #         },
    #         relevance_score: 1.0,
    #         relevance_level: "RelevanceLevel",
    #         type: "RecommendationType"
    #       }
    #     ],
    #     triggers: [
    #       {
    #         id: "Uuid", # required
    #         type: "RecommendationTriggerType", # required
    #         source: "RecommendationSourceType", # required
    #         data: { # required
    #           # One of:
    #           query: {
    #             text: "QueryText"
    #           }
    #         },
    #         recommendation_ids: ["String"], # required
    #       }
    #     ]
    #   }
    # @deprecated
    #   GetRecommendations API will be discontinued starting June 1, 2024. To receive generative responses after March 1, 2024 you will need to create a new Assistant in the Connect console and integrate the Amazon Q in Connect JavaScript library (amazon-q-connectjs) into your applications.
    # @return [Types::GetRecommendationsOutput]
    def get_recommendations(params = {}, options = {})
      request = build_request(:get_recommendations, params)
      request.send_request(options)
    end

    # <p>Retrieves information for a specified session.</p>
    # @param [Hash, Types::GetSessionInput] params
    # @option params [String] :assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @option params [String] :session_id
    #   <p>The identifier of the session. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assistant_id: "UuidOrArn", # required
    #     session_id: "UuidOrArn", # required
    #   }
    #   options = {}
    #   response = client.get_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session: {
    #       session_arn: "Arn", # required
    #       session_id: "Uuid", # required
    #       name: "Name", # required
    #       description: "Description",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       integration_configuration: {
    #         topic_integration_arn: "GenericArn"
    #       }
    #     }
    #   }
    # @return [Types::GetSessionOutput]
    def get_session(params = {}, options = {})
      request = build_request(:get_session, params)
      request.send_request(options)
    end

    # <p>Lists information about assistant associations.</p>
    # @param [Hash, Types::ListAssistantAssociationsInput] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     assistant_id: "UuidOrArn", # required
    #   }
    #   options = {}
    #   response = client.list_assistant_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assistant_association_summaries: [ # required
    #       {
    #         assistant_association_id: "Uuid", # required
    #         assistant_association_arn: "Arn", # required
    #         assistant_id: "Uuid", # required
    #         assistant_arn: "Arn", # required
    #         association_type: "AssociationType", # required
    #         association_data: { # required
    #           # One of:
    #           knowledge_base_association: {
    #             knowledge_base_id: "Uuid",
    #             knowledge_base_arn: "Arn"
    #           }
    #         },
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAssistantAssociationsOutput]
    def list_assistant_associations(params = {}, options = {})
      request = build_request(:list_assistant_associations, params)
      request.send_request(options)
    end

    # <p>Lists information about assistants.</p>
    # @param [Hash, Types::ListAssistantsInput] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_assistants(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assistant_summaries: [ # required
    #       {
    #         assistant_id: "Uuid", # required
    #         assistant_arn: "Arn", # required
    #         name: "Name", # required
    #         type: "AssistantType", # required
    #         status: "AssistantStatus", # required
    #         description: "Description",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         server_side_encryption_configuration: {
    #           kms_key_id: "NonEmptyString"
    #         },
    #         integration_configuration: {
    #           topic_integration_arn: "GenericArn"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAssistantsOutput]
    def list_assistants(params = {}, options = {})
      request = build_request(:list_assistants, params)
      request.send_request(options)
    end

    # <p>Lists the content.</p>
    # @param [Hash, Types::ListContentsInput] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     knowledge_base_id: "UuidOrArn", # required
    #   }
    #   options = {}
    #   response = client.list_contents(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content_summaries: [ # required
    #       {
    #         content_arn: "Arn", # required
    #         content_id: "Uuid", # required
    #         knowledge_base_arn: "Arn", # required
    #         knowledge_base_id: "Uuid", # required
    #         name: "Name", # required
    #         revision_id: "NonEmptyString", # required
    #         title: "ContentTitle", # required
    #         content_type: "ContentType", # required
    #         status: "ContentStatus", # required
    #         metadata: { # required
    #           "NonEmptyString" => "NonEmptyString"
    #         },
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListContentsOutput]
    def list_contents(params = {}, options = {})
      request = build_request(:list_contents, params)
      request.send_request(options)
    end

    # <p>Lists information about import jobs.</p>
    # @param [Hash, Types::ListImportJobsRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NonEmptyString",
    #     max_results: 1,
    #     knowledge_base_id: "UuidOrArn", # required
    #   }
    #   options = {}
    #   response = client.list_import_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     import_job_summaries: [ # required
    #       {
    #         import_job_id: "Uuid", # required
    #         knowledge_base_id: "Uuid", # required
    #         upload_id: "UploadId", # required
    #         knowledge_base_arn: "Arn", # required
    #         import_job_type: "ImportJobType", # required
    #         status: "ImportJobStatus", # required
    #         created_time: Time.now, # required
    #         last_modified_time: Time.now, # required
    #         metadata: {
    #           "NonEmptyString" => "NonEmptyString"
    #         },
    #         external_source_configuration: {
    #           source: "ExternalSource", # required
    #           configuration: { # required
    #             # One of:
    #             connect_configuration: {
    #               instance_id: "NonEmptyString"
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NonEmptyString"
    #   }
    # @return [Types::ListImportJobsResponse]
    def list_import_jobs(params = {}, options = {})
      request = build_request(:list_import_jobs, params)
      request.send_request(options)
    end

    # <p>Lists the knowledge bases.</p>
    # @param [Hash, Types::ListKnowledgeBasesInput] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NonEmptyString",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_knowledge_bases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     knowledge_base_summaries: [ # required
    #       {
    #         knowledge_base_id: "Uuid", # required
    #         knowledge_base_arn: "Arn", # required
    #         name: "Name", # required
    #         knowledge_base_type: "KnowledgeBaseType", # required
    #         status: "KnowledgeBaseStatus", # required
    #         source_configuration: {
    #           # One of:
    #           app_integrations: {
    #             app_integration_arn: "GenericArn", # required
    #             object_fields: ["NonEmptyString"]
    #           }
    #         },
    #         rendering_configuration: {
    #           template_uri: "Uri"
    #         },
    #         server_side_encryption_configuration: {
    #           kms_key_id: "NonEmptyString"
    #         },
    #         description: "Description",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "NonEmptyString"
    #   }
    # @return [Types::ListKnowledgeBasesOutput]
    def list_knowledge_bases(params = {}, options = {})
      request = build_request(:list_knowledge_bases, params)
      request.send_request(options)
    end

    # <p>Lists information about quick response.</p>
    # @param [Hash, Types::ListQuickResponsesRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NonEmptyString",
    #     max_results: 1,
    #     knowledge_base_id: "UuidOrArn", # required
    #   }
    #   options = {}
    #   response = client.list_quick_responses(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     quick_response_summaries: [ # required
    #       {
    #         quick_response_arn: "Arn", # required
    #         quick_response_id: "Uuid", # required
    #         knowledge_base_arn: "Arn", # required
    #         knowledge_base_id: "Uuid", # required
    #         name: "QuickResponseName", # required
    #         content_type: "QuickResponseType", # required
    #         status: "QuickResponseStatus", # required
    #         created_time: Time.now, # required
    #         last_modified_time: Time.now, # required
    #         description: "QuickResponseDescription",
    #         last_modified_by: "GenericArn",
    #         is_active: false,
    #         channels: ["Channel"],
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "NonEmptyString"
    #   }
    # @return [Types::ListQuickResponsesResponse]
    def list_quick_responses(params = {}, options = {})
      request = build_request(:list_quick_responses, params)
      request.send_request(options)
    end

    # <p>Lists the tags for the specified resource.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Removes the specified recommendations from the specified assistant's queue of newly
    #       available recommendations. You can use this API in conjunction with <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_GetRecommendations.html">GetRecommendations</a> and a <code>waitTimeSeconds</code> input for long-polling
    #       behavior and avoiding duplicate recommendations.</p>
    # @param [Hash, Types::NotifyRecommendationsReceivedInput] params
    # @option params [String] :assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @option params [String] :session_id
    #   <p>The identifier of the session. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @option params [Array<String>] :recommendation_ids
    #   <p>The identifiers of the recommendations.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assistant_id: "UuidOrArn", # required
    #     session_id: "UuidOrArn", # required
    #     recommendation_ids: ["String"], # required
    #   }
    #   options = {}
    #   response = client.notify_recommendations_received(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommendation_ids: ["String"],
    #     errors: [
    #       {
    #         recommendation_id: "String",
    #         message: "NotifyRecommendationsReceivedErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::NotifyRecommendationsReceivedOutput]
    def notify_recommendations_received(params = {}, options = {})
      request = build_request(:notify_recommendations_received, params)
      request.send_request(options)
    end

    # <p>Performs a manual search against the specified assistant. To retrieve recommendations for
    #       an assistant, use <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_GetRecommendations.html">GetRecommendations</a>.
    #     </p>
    # @param [Hash, Types::QueryAssistantInput] params
    # @option params [String] :assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @option params [String] :query_text
    #   <p>The text to search for.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assistant_id: "UuidOrArn", # required
    #     query_text: "QueryText", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.query_assistant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: [ # required
    #       {
    #         result_id: "Uuid", # required
    #         document: { # required
    #           content_reference: { # required
    #             knowledge_base_arn: "Arn",
    #             knowledge_base_id: "Uuid",
    #             content_arn: "Arn",
    #             content_id: "Uuid"
    #           },
    #           title: {
    #             text: "SensitiveString",
    #             highlights: [
    #               {
    #                 begin_offset_inclusive: 1,
    #                 end_offset_exclusive: 1
    #               }
    #             ]
    #           },
    #           excerpt: {
    #             text: "SensitiveString",
    #             highlights: [
    #               {
    #                 begin_offset_inclusive: 1,
    #                 end_offset_exclusive: 1
    #               }
    #             ]
    #           }
    #         },
    #         relevance_score: 1.0
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @deprecated
    #   QueryAssistant API will be discontinued starting June 1, 2024. To receive generative responses after March 1, 2024 you will need to create a new Assistant in the Connect console and integrate the Amazon Q in Connect JavaScript library (amazon-q-connectjs) into your applications.
    # @return [Types::QueryAssistantOutput]
    def query_assistant(params = {}, options = {})
      request = build_request(:query_assistant, params)
      request.send_request(options)
    end

    # <p>Removes a URI template from a knowledge base.</p>
    # @param [Hash, Types::RemoveKnowledgeBaseTemplateUriInput] params
    # @option params [String] :knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     knowledge_base_id: "UuidOrArn", # required
    #   }
    #   options = {}
    #   response = client.remove_knowledge_base_template_uri(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RemoveKnowledgeBaseTemplateUriOutput]
    def remove_knowledge_base_template_uri(params = {}, options = {})
      request = build_request(:remove_knowledge_base_template_uri, params)
      request.send_request(options)
    end

    # <p>Searches for content in a specified knowledge base. Can be used to get a specific content
    #       resource by its name.</p>
    # @param [Hash, Types::SearchContentInput] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @option params [Types::SearchExpression] :search_expression
    #   <p>The search expression to filter results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     knowledge_base_id: "UuidOrArn", # required
    #     search_expression: { # required
    #       filters: [ # required
    #         {
    #           field: "FilterField", # required
    #           operator: "FilterOperator", # required
    #           value: "NonEmptyString", # required
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.search_content(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content_summaries: [ # required
    #       {
    #         content_arn: "Arn", # required
    #         content_id: "Uuid", # required
    #         knowledge_base_arn: "Arn", # required
    #         knowledge_base_id: "Uuid", # required
    #         name: "Name", # required
    #         revision_id: "NonEmptyString", # required
    #         title: "ContentTitle", # required
    #         content_type: "ContentType", # required
    #         status: "ContentStatus", # required
    #         metadata: { # required
    #           "NonEmptyString" => "NonEmptyString"
    #         },
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::SearchContentOutput]
    def search_content(params = {}, options = {})
      request = build_request(:search_content, params)
      request.send_request(options)
    end

    # <p>Searches existing Wisdom quick responses in a Wisdom knowledge base.</p>
    # @param [Hash, Types::SearchQuickResponsesRequest] params
    # @option params [String] :knowledge_base_id
    #   <p>The identifier of the knowledge base. This should be a QUICK_RESPONSES type knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @option params [Types::QuickResponseSearchExpression] :search_expression
    #   <p>The search expression for querying the quick response.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [Hash<String, String>] :attributes
    #   <p>The <a href="https://docs.aws.amazon.com/connect/latest/adminguide/connect-attrib-list.html#user-defined-attributes">user-defined Amazon Connect contact attributes</a> to be resolved when search results are returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     knowledge_base_id: "UuidOrArn", # required
    #     search_expression: { # required
    #       queries: [
    #         {
    #           name: "NonEmptyString", # required
    #           values: ["QuickResponseQueryValue"], # required
    #           operator: "QuickResponseQueryOperator", # required
    #           allow_fuzziness: false,
    #           priority: "Priority"
    #         }
    #       ],
    #       filters: [
    #         {
    #           name: "NonEmptyString", # required
    #           values: ["QuickResponseFilterValue"],
    #           operator: "QuickResponseFilterOperator", # required
    #           include_no_existence: false
    #         }
    #       ],
    #       order_on_field: {
    #         name: "NonEmptyString", # required
    #         order: "Order"
    #       }
    #     },
    #     next_token: "NonEmptyString",
    #     max_results: 1,
    #     attributes: {
    #       "ContactAttributeKey" => "ContactAttributeValue"
    #     }
    #   }
    #   options = {}
    #   response = client.search_quick_responses(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: [ # required
    #       {
    #         quick_response_arn: "Arn", # required
    #         quick_response_id: "Uuid", # required
    #         knowledge_base_arn: "Arn", # required
    #         knowledge_base_id: "Uuid", # required
    #         name: "QuickResponseName", # required
    #         content_type: "QuickResponseType", # required
    #         status: "QuickResponseStatus", # required
    #         contents: { # required
    #           plain_text: {
    #             # One of:
    #             content: "QuickResponseContent"
    #           },
    #           markdown: {
    #             # One of:
    #             content: "QuickResponseContent"
    #           }
    #         },
    #         created_time: Time.now, # required
    #         last_modified_time: Time.now, # required
    #         is_active: false, # required
    #         description: "QuickResponseDescription",
    #         grouping_configuration: {
    #           criteria: "GroupingCriteria",
    #           values: ["GroupingValue"]
    #         },
    #         shortcut_key: "ShortCutKey",
    #         last_modified_by: "GenericArn",
    #         channels: ["Channel"],
    #         language: "LanguageCode",
    #         attributes_not_interpolated: ["ContactAttributeKey"],
    #         attributes_interpolated: ["ContactAttributeKey"],
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "NonEmptyString"
    #   }
    # @return [Types::SearchQuickResponsesResponse]
    def search_quick_responses(params = {}, options = {})
      request = build_request(:search_quick_responses, params)
      request.send_request(options)
    end

    # <p>Searches for sessions.</p>
    # @param [Hash, Types::SearchSessionsInput] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @option params [Types::SearchExpression] :search_expression
    #   <p>The search expression to filter results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     assistant_id: "UuidOrArn", # required
    #     search_expression: { # required
    #       filters: [ # required
    #         {
    #           field: "FilterField", # required
    #           operator: "FilterOperator", # required
    #           value: "NonEmptyString", # required
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.search_sessions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_summaries: [ # required
    #       {
    #         session_id: "Uuid", # required
    #         session_arn: "Arn", # required
    #         assistant_id: "Uuid", # required
    #         assistant_arn: "Arn", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::SearchSessionsOutput]
    def search_sessions(params = {}, options = {})
      request = build_request(:search_sessions, params)
      request.send_request(options)
    end

    # <p>Get a URL to upload content to a knowledge base. To upload content, first make a PUT
    #       request to the returned URL with your file, making sure to include the required headers. Then
    #       use <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_CreateContent.html">CreateContent</a> to finalize the content creation process or <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_UpdateContent.html">UpdateContent</a> to modify an existing resource. You can only upload content to a
    #       knowledge base of type CUSTOM.</p>
    # @param [Hash, Types::StartContentUploadInput] params
    # @option params [String] :knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @option params [String] :content_type
    #   <p>The type of content to upload.</p>
    # @option params [Integer] :presigned_url_time_to_live
    #   <p>The expected expiration time of the generated presigned URL, specified in minutes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     knowledge_base_id: "UuidOrArn", # required
    #     content_type: "ContentType", # required
    #     presigned_url_time_to_live: 1
    #   }
    #   options = {}
    #   response = client.start_content_upload(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     upload_id: "UploadId", # required
    #     url: "Url", # required
    #     url_expiry: Time.now, # required
    #     headers_to_include: { # required
    #       "NonEmptyString" => "NonEmptyString"
    #     }
    #   }
    # @return [Types::StartContentUploadOutput]
    def start_content_upload(params = {}, options = {})
      request = build_request(:start_content_upload, params)
      request.send_request(options)
    end

    # <p>Start an asynchronous job to import Wisdom resources from an uploaded source file. Before calling this API, use <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html">StartContentUpload</a> to
    #       upload an asset that contains the resource data.</p>
    #          <ul>
    #             <li>
    #                <p>For importing Wisdom quick responses, you need to upload a csv file including the quick responses. For information about how to format the csv file for importing quick responses, see <a href="https://docs.aws.amazon.com/console/connect/quick-responses/add-data">Import quick responses</a>.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::StartImportJobRequest] params
    # @option params [String] :knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #            <ul>
    #               <li>
    #                  <p>For importing Wisdom quick responses, this should be a <code>QUICK_RESPONSES</code> type knowledge base.</p>
    #               </li>
    #            </ul>
    # @option params [String] :import_job_type
    #   <p>The type of the import job.</p>
    #            <ul>
    #               <li>
    #                  <p>For importing quick response resource, set the value to <code>QUICK_RESPONSES</code>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :upload_id
    #   <p>A pointer to the uploaded asset. This value is returned by <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html">StartContentUpload</a>.</p>
    # @option params [String] :client_token
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    # @option params [Hash<String, String>] :metadata
    #   <p>The metadata fields of the imported Wisdom resources.</p>
    # @option params [Types::ExternalSourceConfiguration] :external_source_configuration
    #   <p>The configuration information of the external source that the resource data are imported from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     knowledge_base_id: "UuidOrArn", # required
    #     import_job_type: "ImportJobType", # required
    #     upload_id: "UploadId", # required
    #     client_token: "NonEmptyString",
    #     metadata: {
    #       "NonEmptyString" => "NonEmptyString"
    #     },
    #     external_source_configuration: {
    #       source: "ExternalSource", # required
    #       configuration: { # required
    #         # One of:
    #         connect_configuration: {
    #           instance_id: "NonEmptyString"
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.start_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     import_job: {
    #       import_job_id: "Uuid", # required
    #       knowledge_base_id: "Uuid", # required
    #       upload_id: "UploadId", # required
    #       knowledge_base_arn: "Arn", # required
    #       import_job_type: "ImportJobType", # required
    #       status: "ImportJobStatus", # required
    #       url: "Url", # required
    #       failed_record_report: "Url",
    #       url_expiry: Time.now, # required
    #       created_time: Time.now, # required
    #       last_modified_time: Time.now, # required
    #       metadata: {
    #         "NonEmptyString" => "NonEmptyString"
    #       },
    #       external_source_configuration: {
    #         source: "ExternalSource", # required
    #         configuration: { # required
    #           # One of:
    #           connect_configuration: {
    #             instance_id: "NonEmptyString"
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::StartImportJobResponse]
    def start_import_job(params = {}, options = {})
      request = build_request(:start_import_job, params)
      request.send_request(options)
    end

    # <p>Adds the specified tags to the specified resource.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes the specified tags from the specified resource.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceOutput]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates information about the content.</p>
    # @param [Hash, Types::UpdateContentInput] params
    # @option params [String] :knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it. Can be either the ID or the ARN</p>
    # @option params [String] :content_id
    #   <p>The identifier of the content. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @option params [String] :revision_id
    #   <p>The <code>revisionId</code> of the content resource to update, taken from an earlier call
    #         to <code>GetContent</code>, <code>GetContentSummary</code>, <code>SearchContent</code>, or
    #           <code>ListContents</code>. If included, this argument acts as an optimistic lock to ensure
    #         content was not modified since it was last read. If it has been modified, this API throws a
    #           <code>PreconditionFailedException</code>.</p>
    # @option params [String] :title
    #   <p>The title of the content.</p>
    # @option params [String] :override_link_out_uri
    #   <p>The URI for the article. If the knowledge base has a templateUri, setting this argument
    #         overrides it for this piece of content. To remove an existing <code>overrideLinkOurUri</code>,
    #         exclude this argument and set <code>removeOverrideLinkOutUri</code> to true.</p>
    # @option params [Boolean] :remove_override_link_out_uri
    #   <p>Unset the existing <code>overrideLinkOutUri</code> if it exists.</p>
    # @option params [Hash<String, String>] :metadata
    #   <p>A key/value map to store attributes without affecting tagging or recommendations. For
    #         example, when synchronizing data between an external system and Wisdom, you can store an
    #         external version identifier as metadata to utilize for determining drift.</p>
    # @option params [String] :upload_id
    #   <p>A pointer to the uploaded asset. This value is returned by <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html">StartContentUpload</a>.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     knowledge_base_id: "UuidOrArn", # required
    #     content_id: "UuidOrArn", # required
    #     revision_id: "NonEmptyString",
    #     title: "ContentTitle",
    #     override_link_out_uri: "Uri",
    #     remove_override_link_out_uri: false,
    #     metadata: {
    #       "NonEmptyString" => "NonEmptyString"
    #     },
    #     upload_id: "UploadId"
    #   }
    #   options = {}
    #   response = client.update_content(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content: {
    #       content_arn: "Arn", # required
    #       content_id: "Uuid", # required
    #       knowledge_base_arn: "Arn", # required
    #       knowledge_base_id: "Uuid", # required
    #       name: "Name", # required
    #       revision_id: "NonEmptyString", # required
    #       title: "ContentTitle", # required
    #       content_type: "ContentType", # required
    #       status: "ContentStatus", # required
    #       metadata: { # required
    #         "NonEmptyString" => "NonEmptyString"
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       link_out_uri: "Uri",
    #       url: "Url", # required
    #       url_expiry: Time.now, # required
    #     }
    #   }
    # @return [Types::UpdateContentOutput]
    def update_content(params = {}, options = {})
      request = build_request(:update_content, params)
      request.send_request(options)
    end

    # <p>Updates the template URI of a knowledge base. This is only supported for knowledge bases
    #       of type EXTERNAL. Include a single variable in <code>${variable}</code> format; this
    #       interpolated by Wisdom using ingested content. For example, if you ingest a Salesforce
    #       article, it has an <code>Id</code> value, and you can set the template URI to
    #         <code>https://myInstanceName.lightning.force.com/lightning/r/Knowledge__kav/*${Id}*/view</code>.
    #     </p>
    # @param [Hash, Types::UpdateKnowledgeBaseTemplateUriInput] params
    # @option params [String] :knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @option params [String] :template_uri
    #   <p>The template URI to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     knowledge_base_id: "UuidOrArn", # required
    #     template_uri: "Uri", # required
    #   }
    #   options = {}
    #   response = client.update_knowledge_base_template_uri(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     knowledge_base: {
    #       knowledge_base_id: "Uuid", # required
    #       knowledge_base_arn: "Arn", # required
    #       name: "Name", # required
    #       knowledge_base_type: "KnowledgeBaseType", # required
    #       status: "KnowledgeBaseStatus", # required
    #       last_content_modification_time: Time.now,
    #       source_configuration: {
    #         # One of:
    #         app_integrations: {
    #           app_integration_arn: "GenericArn", # required
    #           object_fields: ["NonEmptyString"]
    #         }
    #       },
    #       rendering_configuration: {
    #         template_uri: "Uri"
    #       },
    #       server_side_encryption_configuration: {
    #         kms_key_id: "NonEmptyString"
    #       },
    #       description: "Description",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::UpdateKnowledgeBaseTemplateUriOutput]
    def update_knowledge_base_template_uri(params = {}, options = {})
      request = build_request(:update_knowledge_base_template_uri, params)
      request.send_request(options)
    end

    # <p>Updates an existing Wisdom quick response.</p>
    # @param [Hash, Types::UpdateQuickResponseRequest] params
    # @option params [String] :knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    # @option params [String] :quick_response_id
    #   <p>The identifier of the quick response.</p>
    # @option params [String] :name
    #   <p>The name of the quick response.</p>
    # @option params [Types::QuickResponseDataProvider] :content
    #   <p>The updated content of the quick response.</p>
    # @option params [String] :content_type
    #   <p>The media type of the quick response content.</p>
    #            <ul>
    #               <li>
    #                  <p>Use <code>application/x.quickresponse;format=plain</code> for quick response written in plain text.</p>
    #               </li>
    #               <li>
    #                  <p>Use <code>application/x.quickresponse;format=markdown</code> for quick response written in richtext.</p>
    #               </li>
    #            </ul>
    # @option params [Types::GroupingConfiguration] :grouping_configuration
    #   <p>The updated grouping configuration of the quick response.</p>
    # @option params [Boolean] :remove_grouping_configuration
    #   <p>Whether to remove the grouping configuration of the quick response.</p>
    # @option params [String] :description
    #   <p>The updated description of the quick response.</p>
    # @option params [Boolean] :remove_description
    #   <p>Whether to remove the description from the quick response.</p>
    # @option params [String] :shortcut_key
    #   <p>The shortcut key of the quick response. The value should be unique across the
    #     knowledge base.</p>
    # @option params [Boolean] :remove_shortcut_key
    #   <p>Whether to remove the shortcut key of the quick response.</p>
    # @option params [Boolean] :is_active
    #   <p>Whether the quick response is active. </p>
    # @option params [Array<String>] :channels
    #   <p>The Amazon Connect contact channels this quick response applies to. The supported contact channel types include <code>Chat</code>.</p>
    # @option params [String] :language
    #   <p>The language code value for the language in which the quick response is written. The supported language codes include <code>de_DE</code>, <code>en_US</code>, <code>es_ES</code>,
    #     <code>fr_FR</code>, <code>id_ID</code>, <code>it_IT</code>, <code>ja_JP</code>, <code>ko_KR</code>, <code>pt_BR</code>,
    #     <code>zh_CN</code>, <code>zh_TW</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     knowledge_base_id: "UuidOrArn", # required
    #     quick_response_id: "UuidOrArn", # required
    #     name: "QuickResponseName",
    #     content: {
    #       # One of:
    #       content: "QuickResponseContent"
    #     },
    #     content_type: "QuickResponseType",
    #     grouping_configuration: {
    #       criteria: "GroupingCriteria",
    #       values: ["GroupingValue"]
    #     },
    #     remove_grouping_configuration: false,
    #     description: "QuickResponseDescription",
    #     remove_description: false,
    #     shortcut_key: "ShortCutKey",
    #     remove_shortcut_key: false,
    #     is_active: false,
    #     channels: ["Channel"],
    #     language: "LanguageCode"
    #   }
    #   options = {}
    #   response = client.update_quick_response(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     quick_response: {
    #       quick_response_arn: "Arn", # required
    #       quick_response_id: "Uuid", # required
    #       knowledge_base_arn: "Arn", # required
    #       knowledge_base_id: "Uuid", # required
    #       name: "QuickResponseName", # required
    #       content_type: "QuickResponseType", # required
    #       status: "QuickResponseStatus", # required
    #       created_time: Time.now, # required
    #       last_modified_time: Time.now, # required
    #       contents: {
    #         plain_text: {
    #           # One of:
    #           content: "QuickResponseContent"
    #         },
    #         markdown: {
    #           # One of:
    #           content: "QuickResponseContent"
    #         }
    #       },
    #       description: "QuickResponseDescription",
    #       grouping_configuration: {
    #         criteria: "GroupingCriteria",
    #         values: ["GroupingValue"]
    #       },
    #       shortcut_key: "ShortCutKey",
    #       last_modified_by: "GenericArn",
    #       is_active: false,
    #       channels: ["Channel"],
    #       language: "LanguageCode",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::UpdateQuickResponseResponse]
    def update_quick_response(params = {}, options = {})
      request = build_request(:update_quick_response, params)
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
      context[:gem_name] = 'aws-sdk-wisdom'
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
    end
  end
end
