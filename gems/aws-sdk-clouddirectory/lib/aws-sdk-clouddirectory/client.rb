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
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'

module Aws::CloudDirectory
  # An API client for Aws::CloudDirectory.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonCloudDirectory20170111

    add_plugin(::Aws::CloudDirectory::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::CloudDirectory::EndpointProvider] :endpoint_provider
    #  The endpoint provider used to resolve endpoints. Any object that responds to `#resolve(parameters)`.
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
    #  TODO
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
    # @option options [Boolean] :use_dual_stack_endpoint
    #  TODO
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Adds a new <a>Facet</a> to an object. An object can have more than one facet applied on it.</p>
    # @param [Hash, Types::AddFacetToObjectRequest] params
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where the object resides. For more information, see <a>arns</a>.</p>
    # @option params [Types::SchemaFacet] :schema_facet
    #   <p>Identifiers for the facet that you are adding to the object. See <a>SchemaFacet</a> for details.</p>
    # @option params [Array<Types::AttributeKeyAndValue>] :object_attribute_list
    #   <p>Attributes on the facet that you are adding to the object.</p>
    # @option params [Types::ObjectReference] :object_reference
    #   <p>A reference to the object you are adding the specified facet to.</p>
    # @example To add a facet to an object
    #   
    #   params = {
    #     directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY",
    #     schema_facet: {
    #       schema_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY/schema/org/1",
    #       facet_name: "node1"
    #     },
    #     object_attribute_list: [
    #     ],
    #     object_reference: {
    #       selector: "$AQGG_ADlfNZBzYHY_JgDt3TWmspn1fxfQmSQaaVKSbvEiQ"
    #     }
    #   }
    #   options = {}
    #   response = client.add_facet_to_object(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "Arn", # required
    #     schema_facet: { # required
    #       schema_arn: "Arn",
    #       facet_name: "FacetName"
    #     },
    #     object_attribute_list: [
    #       {
    #         key: { # required
    #           schema_arn: "Arn", # required
    #           facet_name: "FacetName", # required
    #           name: "AttributeName", # required
    #         },
    #         value: { # required
    #           # One of:
    #           string_value: "StringAttributeValue",
    #           binary_value: "data",
    #           boolean_value: false,
    #           number_value: "NumberAttributeValue",
    #           datetime_value: Time.now
    #         }
    #       }
    #     ],
    #     object_reference: { # required
    #       selector: "SelectorObjectReference"
    #     }
    #   }
    #   options = {}
    #   response = client.add_facet_to_object(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AddFacetToObjectResponse]
    def add_facet_to_object(params = {}, options = {})
      request = build_request(:add_facet_to_object, params)
      request.send_request(options)
    end

    # <p>Copies the input published schema, at the specified version, into the <a>Directory</a> with the same
    #       name and version as that of the published schema.</p>
    # @param [Hash, Types::ApplySchemaRequest] params
    # @option params [String] :published_schema_arn
    #   <p>Published schema Amazon Resource Name (ARN) that needs to be copied. For more
    #         information, see <a>arns</a>.</p>
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         into which the schema is copied. For more information, see <a>arns</a>.</p>
    # @example To apply a schema
    #   
    #   params = {
    #     published_schema_arn: "arn:aws:clouddirectory:us-west-2:45132example:schema/published/org/1",
    #     directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AfMr4qym1kZTvwqOafAYfqI"
    #   }
    #   options = {}
    #   response = client.apply_schema(params, options)
    #   response.to_h #=>
    #   {
    #     applied_schema_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AfMr4qym1kZTvwqOafAYfqI/schema/org/1",
    #     directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AfMr4qym1kZTvwqOafAYfqI"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     published_schema_arn: "Arn", # required
    #     directory_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.apply_schema(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     applied_schema_arn: "Arn",
    #     directory_arn: "Arn"
    #   }
    # @return [Types::ApplySchemaResponse]
    def apply_schema(params = {}, options = {})
      request = build_request(:apply_schema, params)
      request.send_request(options)
    end

    # <p>Attaches an existing object to another object. An object can be accessed in two
    #       ways:</p>
    #          <ol>
    #             <li>
    #                <p>Using the path</p>
    #             </li>
    #             <li>
    #                <p>Using <code>ObjectIdentifier</code>
    #                </p>
    #             </li>
    #          </ol>
    # @param [Hash, Types::AttachObjectRequest] params
    # @option params [String] :directory_arn
    #   <p>Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where both objects reside. For more information, see <a>arns</a>.</p>
    # @option params [Types::ObjectReference] :parent_reference
    #   <p>The parent object reference.</p>
    # @option params [Types::ObjectReference] :child_reference
    #   <p>The child object reference to be attached to the object.</p>
    # @option params [String] :link_name
    #   <p>The link name with which the child object is attached to the parent.</p>
    # @example To attach an object
    #   
    #   params = {
    #     directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY",
    #     parent_reference: {
    #       selector: "$AQGG_ADlfNZBzYHY_JgDt3TWcU7IARvOTeaR09zme1sVsw"
    #     },
    #     child_reference: {
    #       selector: "$AQGG_ADlfNZBzYHY_JgDt3TWSvfuEnDqTdmeCuTs6YBNUA"
    #     },
    #     link_name: "link2"
    #   }
    #   options = {}
    #   response = client.attach_object(params, options)
    #   response.to_h #=>
    #   {
    #     attached_object_identifier: "AQGG_ADlfNZBzYHY_JgDt3TWSvfuEnDqTdmeCuTs6YBNUA"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "Arn", # required
    #     parent_reference: { # required
    #       selector: "SelectorObjectReference"
    #     },
    #     child_reference: { # required
    #       selector: "SelectorObjectReference"
    #     },
    #     link_name: "LinkName", # required
    #   }
    #   options = {}
    #   response = client.attach_object(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attached_object_identifier: "ObjectIdentifier"
    #   }
    # @return [Types::AttachObjectResponse]
    def attach_object(params = {}, options = {})
      request = build_request(:attach_object, params)
      request.send_request(options)
    end

    # <p>Attaches a policy object to a regular object. An object can have a limited number of attached
    #       policies.</p>
    # @param [Hash, Types::AttachPolicyRequest] params
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where both objects reside. For more information, see <a>arns</a>.</p>
    # @option params [Types::ObjectReference] :policy_reference
    #   <p>The reference that is associated with the policy object.</p>
    # @option params [Types::ObjectReference] :object_reference
    #   <p>The reference that identifies the object to which the policy will be
    #         attached.</p>
    # @example To attach a policy to an object
    #   
    #   params = {
    #     directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY",
    #     policy_reference: {
    #       selector: "$AQGG_ADlfNZBzYHY_JgDt3TWgcBsTVmcQEWs6jlygfhuew"
    #     },
    #     object_reference: {
    #       selector: "$AQGG_ADlfNZBzYHY_JgDt3TWQoovm1s3Ts2v0NKrzdVnPw"
    #     }
    #   }
    #   options = {}
    #   response = client.attach_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "Arn", # required
    #     policy_reference: { # required
    #       selector: "SelectorObjectReference"
    #     },
    #     object_reference: { # required
    #       selector: "SelectorObjectReference"
    #     }
    #   }
    #   options = {}
    #   response = client.attach_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AttachPolicyResponse]
    def attach_policy(params = {}, options = {})
      request = build_request(:attach_policy, params)
      request.send_request(options)
    end

    # <p>Attaches the specified object to the specified index.</p>
    # @param [Hash, Types::AttachToIndexRequest] params
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) of the directory where the object and index
    #         exist.</p>
    # @option params [Types::ObjectReference] :index_reference
    #   <p>A reference to the index that you are attaching the object to.</p>
    # @option params [Types::ObjectReference] :target_reference
    #   <p>A reference to the object that you are attaching to the index.</p>
    # @example To attach a index to an object
    #   
    #   params = {
    #     directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY",
    #     index_reference: {
    #       selector: "$AQGG_ADlfNZBzYHY_JgDt3TW45F26R1HTY2z-stwKBte_Q"
    #     },
    #     target_reference: {
    #       selector: "$AQGG_ADlfNZBzYHY_JgDt3TWcU7IARvOTeaR09zme1sVsw"
    #     }
    #   }
    #   options = {}
    #   response = client.attach_to_index(params, options)
    #   response.to_h #=>
    #   {
    #     attached_object_identifier: "AQGG_ADlfNZBzYHY_JgDt3TWcU7IARvOTeaR09zme1sVsw"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "Arn", # required
    #     index_reference: { # required
    #       selector: "SelectorObjectReference"
    #     },
    #     target_reference: { # required
    #       selector: "SelectorObjectReference"
    #     }
    #   }
    #   options = {}
    #   response = client.attach_to_index(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attached_object_identifier: "ObjectIdentifier"
    #   }
    # @return [Types::AttachToIndexResponse]
    def attach_to_index(params = {}, options = {})
      request = build_request(:attach_to_index, params)
      request.send_request(options)
    end

    # <p>Attaches a typed link to a specified source and target object. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    # @param [Hash, Types::AttachTypedLinkRequest] params
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) of the directory where you want to attach the typed
    #         link.</p>
    # @option params [Types::ObjectReference] :source_object_reference
    #   <p>Identifies the source object that the typed link will attach to.</p>
    # @option params [Types::ObjectReference] :target_object_reference
    #   <p>Identifies the target object that the typed link will attach to.</p>
    # @option params [Types::TypedLinkSchemaAndFacetName] :typed_link_facet
    #   <p>Identifies the typed link facet that is associated with the typed link.</p>
    # @option params [Array<Types::AttributeNameAndValue>] :attributes
    #   <p>A set of attributes that are associated with the typed link.</p>
    # @example To attach a typed link to an object
    #   
    #   params = {
    #     directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY",
    #     source_object_reference: {
    #       selector: "$AQGG_ADlfNZBzYHY_JgDt3TWSvfuEnDqTdmeCuTs6YBNUA"
    #     },
    #     target_object_reference: {
    #       selector: "$AQGG_ADlfNZBzYHY_JgDt3TWcU7IARvOTeaR09zme1sVsw"
    #     },
    #     typed_link_facet: {
    #       typed_link_name: "exampletypedlink8",
    #       schema_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY/schema/org/1"
    #     },
    #     attributes: [
    #       {
    #         attribute_name: "22",
    #         value: {
    #     "BinaryValue" => c3Ry
    #   }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.attach_typed_link(params, options)
    #   response.to_h #=>
    #   {
    #     typed_link_specifier: {
    #       source_object_reference: {
    #         selector: "$AQGG_ADlfNZBzYHY_JgDt3TWSvfuEnDqTdmeCuTs6YBNUA"
    #       },
    #       identity_attribute_values: [
    #         {
    #           attribute_name: "22",
    #           value: {
    #     "BinaryValue" => c3Ry
    #   }
    #         }
    #       ],
    #       target_object_reference: {
    #         selector: "$AQGG_ADlfNZBzYHY_JgDt3TWcU7IARvOTeaR09zme1sVsw"
    #       },
    #       typed_link_facet: {
    #         typed_link_name: "exampletypedlink8",
    #         schema_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY/schema/org/1"
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "Arn", # required
    #     source_object_reference: { # required
    #       selector: "SelectorObjectReference"
    #     },
    #     target_object_reference: { # required
    #       selector: "SelectorObjectReference"
    #     },
    #     typed_link_facet: { # required
    #       schema_arn: "Arn", # required
    #       typed_link_name: "TypedLinkName", # required
    #     },
    #     attributes: [ # required
    #       {
    #         attribute_name: "AttributeName", # required
    #         value: { # required
    #           # One of:
    #           string_value: "StringAttributeValue",
    #           binary_value: "data",
    #           boolean_value: false,
    #           number_value: "NumberAttributeValue",
    #           datetime_value: Time.now
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.attach_typed_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     typed_link_specifier: {
    #       typed_link_facet: { # required
    #         schema_arn: "Arn", # required
    #         typed_link_name: "TypedLinkName", # required
    #       },
    #       source_object_reference: { # required
    #         selector: "SelectorObjectReference"
    #       },
    #       target_object_reference: { # required
    #         selector: "SelectorObjectReference"
    #       },
    #       identity_attribute_values: [ # required
    #         {
    #           attribute_name: "AttributeName", # required
    #           value: { # required
    #             # One of:
    #             string_value: "StringAttributeValue",
    #             binary_value: "data",
    #             boolean_value: false,
    #             number_value: "NumberAttributeValue",
    #             datetime_value: Time.now
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::AttachTypedLinkResponse]
    def attach_typed_link(params = {}, options = {})
      request = build_request(:attach_typed_link, params)
      request.send_request(options)
    end

    # <p>Performs all the read operations in a batch. </p>
    # @param [Hash, Types::BatchReadRequest] params
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>.
    #         For more information, see <a>arns</a>.</p>
    # @option params [Array<Types::BatchReadOperation>] :operations
    #   <p>A list of operations that are part of the batch.</p>
    # @option params [String] :consistency_level
    #   <p>Represents the manner and timing in which the successful write or update of an object
    #         is reflected in a subsequent read operation of that same object.</p>
    # @example To run a batch read command
    #   
    #   params = {
    #     directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY",
    #     operations: [
    #     ],
    #     consistency_level: EVENTUAL
    #   }
    #   options = {}
    #   response = client.batch_read(params, options)
    #   response.to_h #=>
    #   {
    #     responses: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "Arn", # required
    #     operations: [ # required
    #       {
    #         list_object_attributes: {
    #           object_reference: { # required
    #             selector: "SelectorObjectReference"
    #           },
    #           next_token: "NextToken",
    #           max_results: 1,
    #           facet_filter: {
    #             schema_arn: "Arn",
    #             facet_name: "FacetName"
    #           }
    #         },
    #         list_object_children: {
    #           object_reference: { # required
    #             selector: "SelectorObjectReference"
    #           },
    #           next_token: "NextToken",
    #           max_results: 1
    #         },
    #         list_attached_indices: {
    #           target_reference: { # required
    #             selector: "SelectorObjectReference"
    #           },
    #           next_token: "NextToken",
    #           max_results: 1
    #         },
    #         list_object_parent_paths: {
    #           object_reference: { # required
    #             selector: "SelectorObjectReference"
    #           },
    #           next_token: "NextToken",
    #           max_results: 1
    #         },
    #         get_object_information: {
    #           object_reference: { # required
    #             selector: "SelectorObjectReference"
    #           }
    #         },
    #         get_object_attributes: {
    #           object_reference: { # required
    #             selector: "SelectorObjectReference"
    #           },
    #           schema_facet: { # required
    #             schema_arn: "Arn",
    #             facet_name: "FacetName"
    #           },
    #           attribute_names: ["AttributeName"], # required
    #         },
    #         list_object_parents: {
    #           object_reference: { # required
    #             selector: "SelectorObjectReference"
    #           },
    #           next_token: "NextToken",
    #           max_results: 1
    #         },
    #         list_object_policies: {
    #           object_reference: { # required
    #             selector: "SelectorObjectReference"
    #           },
    #           next_token: "NextToken",
    #           max_results: 1
    #         },
    #         list_policy_attachments: {
    #           policy_reference: { # required
    #             selector: "SelectorObjectReference"
    #           },
    #           next_token: "NextToken",
    #           max_results: 1
    #         },
    #         lookup_policy: {
    #           object_reference: { # required
    #             selector: "SelectorObjectReference"
    #           },
    #           next_token: "NextToken",
    #           max_results: 1
    #         },
    #         list_index: {
    #           ranges_on_indexed_values: [
    #             {
    #               attribute_key: {
    #                 schema_arn: "Arn", # required
    #                 facet_name: "FacetName", # required
    #                 name: "AttributeName", # required
    #               },
    #               range: {
    #                 start_mode: "FIRST" # One of: ["FIRST", "LAST", "LAST_BEFORE_MISSING_VALUES", "INCLUSIVE", "EXCLUSIVE"], # required
    #                 start_value: {
    #                   # One of:
    #                   string_value: "StringAttributeValue",
    #                   binary_value: "data",
    #                   boolean_value: false,
    #                   number_value: "NumberAttributeValue",
    #                   datetime_value: Time.now
    #                 },
    #                 end_mode: "FIRST" # One of: ["FIRST", "LAST", "LAST_BEFORE_MISSING_VALUES", "INCLUSIVE", "EXCLUSIVE"], # required
    #                 end_value: {
    #                   # One of:
    #                   string_value: "StringAttributeValue",
    #                   binary_value: "data",
    #                   boolean_value: false,
    #                   number_value: "NumberAttributeValue",
    #                   datetime_value: Time.now
    #                 }
    #               }
    #             }
    #           ],
    #           index_reference: { # required
    #             selector: "SelectorObjectReference"
    #           },
    #           max_results: 1,
    #           next_token: "NextToken"
    #         },
    #         list_outgoing_typed_links: {
    #           object_reference: { # required
    #             selector: "SelectorObjectReference"
    #           },
    #           filter_attribute_ranges: [
    #             {
    #               attribute_name: "AttributeName",
    #               range: { # required
    #                 start_mode: "FIRST" # One of: ["FIRST", "LAST", "LAST_BEFORE_MISSING_VALUES", "INCLUSIVE", "EXCLUSIVE"], # required
    #                 start_value: {
    #                   # One of:
    #                   string_value: "StringAttributeValue",
    #                   binary_value: "data",
    #                   boolean_value: false,
    #                   number_value: "NumberAttributeValue",
    #                   datetime_value: Time.now
    #                 },
    #                 end_mode: "FIRST" # One of: ["FIRST", "LAST", "LAST_BEFORE_MISSING_VALUES", "INCLUSIVE", "EXCLUSIVE"], # required
    #                 end_value: {
    #                   # One of:
    #                   string_value: "StringAttributeValue",
    #                   binary_value: "data",
    #                   boolean_value: false,
    #                   number_value: "NumberAttributeValue",
    #                   datetime_value: Time.now
    #                 }
    #               }
    #             }
    #           ],
    #           filter_typed_link: {
    #             schema_arn: "Arn", # required
    #             typed_link_name: "TypedLinkName", # required
    #           },
    #           next_token: "NextToken",
    #           max_results: 1
    #         },
    #         list_incoming_typed_links: {
    #           object_reference: { # required
    #             selector: "SelectorObjectReference"
    #           },
    #           filter_attribute_ranges: [
    #             {
    #               attribute_name: "AttributeName",
    #               range: { # required
    #                 start_mode: "FIRST" # One of: ["FIRST", "LAST", "LAST_BEFORE_MISSING_VALUES", "INCLUSIVE", "EXCLUSIVE"], # required
    #                 start_value: {
    #                   # One of:
    #                   string_value: "StringAttributeValue",
    #                   binary_value: "data",
    #                   boolean_value: false,
    #                   number_value: "NumberAttributeValue",
    #                   datetime_value: Time.now
    #                 },
    #                 end_mode: "FIRST" # One of: ["FIRST", "LAST", "LAST_BEFORE_MISSING_VALUES", "INCLUSIVE", "EXCLUSIVE"], # required
    #                 end_value: {
    #                   # One of:
    #                   string_value: "StringAttributeValue",
    #                   binary_value: "data",
    #                   boolean_value: false,
    #                   number_value: "NumberAttributeValue",
    #                   datetime_value: Time.now
    #                 }
    #               }
    #             }
    #           ],
    #           filter_typed_link: {
    #             schema_arn: "Arn", # required
    #             typed_link_name: "TypedLinkName", # required
    #           },
    #           next_token: "NextToken",
    #           max_results: 1
    #         },
    #         get_link_attributes: {
    #           typed_link_specifier: { # required
    #             typed_link_facet: { # required
    #               schema_arn: "Arn", # required
    #               typed_link_name: "TypedLinkName", # required
    #             },
    #             source_object_reference: { # required
    #               selector: "SelectorObjectReference"
    #             },
    #             target_object_reference: { # required
    #               selector: "SelectorObjectReference"
    #             },
    #             identity_attribute_values: [ # required
    #               {
    #                 attribute_name: "AttributeName", # required
    #                 value: { # required
    #                   # One of:
    #                   string_value: "StringAttributeValue",
    #                   binary_value: "data",
    #                   boolean_value: false,
    #                   number_value: "NumberAttributeValue",
    #                   datetime_value: Time.now
    #                 }
    #               }
    #             ]
    #           },
    #           attribute_names: ["AttributeName"], # required
    #         }
    #       }
    #     ],
    #     consistency_level: "SERIALIZABLE" # One of: ["SERIALIZABLE", "EVENTUAL"]
    #   }
    #   options = {}
    #   response = client.batch_read(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     responses: [
    #       {
    #         successful_response: {
    #           list_object_attributes: {
    #             attributes: [
    #               {
    #                 key: { # required
    #                   schema_arn: "Arn", # required
    #                   facet_name: "FacetName", # required
    #                   name: "AttributeName", # required
    #                 },
    #                 value: { # required
    #                   # One of:
    #                   string_value: "StringAttributeValue",
    #                   binary_value: "data",
    #                   boolean_value: false,
    #                   number_value: "NumberAttributeValue",
    #                   datetime_value: Time.now
    #                 }
    #               }
    #             ],
    #             next_token: "NextToken"
    #           },
    #           list_object_children: {
    #             children: {
    #               "LinkName" => "ObjectIdentifier"
    #             },
    #             next_token: "NextToken"
    #           },
    #           get_object_information: {
    #             schema_facets: [
    #               {
    #                 schema_arn: "Arn",
    #                 facet_name: "FacetName"
    #               }
    #             ],
    #             object_identifier: "ObjectIdentifier"
    #           },
    #           get_object_attributes: {
    #             attributes: [
    #               {
    #                 key: { # required
    #                   schema_arn: "Arn", # required
    #                   facet_name: "FacetName", # required
    #                   name: "AttributeName", # required
    #                 },
    #                 value: { # required
    #                   # One of:
    #                   string_value: "StringAttributeValue",
    #                   binary_value: "data",
    #                   boolean_value: false,
    #                   number_value: "NumberAttributeValue",
    #                   datetime_value: Time.now
    #                 }
    #               }
    #             ]
    #           },
    #           list_attached_indices: {
    #             index_attachments: [
    #               {
    #                 indexed_attributes: [
    #                   {
    #                     key: { # required
    #                       schema_arn: "Arn", # required
    #                       facet_name: "FacetName", # required
    #                       name: "AttributeName", # required
    #                     },
    #                     value: { # required
    #                       # One of:
    #                       string_value: "StringAttributeValue",
    #                       binary_value: "data",
    #                       boolean_value: false,
    #                       number_value: "NumberAttributeValue",
    #                       datetime_value: Time.now
    #                     }
    #                   }
    #                 ],
    #                 object_identifier: "ObjectIdentifier"
    #               }
    #             ],
    #             next_token: "NextToken"
    #           },
    #           list_object_parent_paths: {
    #             path_to_object_identifiers_list: [
    #               {
    #                 path: "PathString",
    #                 object_identifiers: ["ObjectIdentifier"]
    #               }
    #             ],
    #             next_token: "NextToken"
    #           },
    #           list_object_policies: {
    #             attached_policy_ids: ["ObjectIdentifier"],
    #             next_token: "NextToken"
    #           },
    #           list_policy_attachments: {
    #             object_identifiers: ["ObjectIdentifier"],
    #             next_token: "NextToken"
    #           },
    #           lookup_policy: {
    #             policy_to_path_list: [
    #               {
    #                 path: "PathString",
    #                 policies: [
    #                   {
    #                     policy_id: "ObjectIdentifier",
    #                     object_identifier: "ObjectIdentifier",
    #                     policy_type: "PolicyType"
    #                   }
    #                 ]
    #               }
    #             ],
    #             next_token: "NextToken"
    #           },
    #           list_index: {
    #             index_attachments: [
    #               {
    #                 indexed_attributes: [
    #                   {
    #                     key: { # required
    #                       schema_arn: "Arn", # required
    #                       facet_name: "FacetName", # required
    #                       name: "AttributeName", # required
    #                     },
    #                     value: { # required
    #                       # One of:
    #                       string_value: "StringAttributeValue",
    #                       binary_value: "data",
    #                       boolean_value: false,
    #                       number_value: "NumberAttributeValue",
    #                       datetime_value: Time.now
    #                     }
    #                   }
    #                 ],
    #                 object_identifier: "ObjectIdentifier"
    #               }
    #             ],
    #             next_token: "NextToken"
    #           },
    #           list_outgoing_typed_links: {
    #             typed_link_specifiers: [
    #               {
    #                 typed_link_facet: { # required
    #                   schema_arn: "Arn", # required
    #                   typed_link_name: "TypedLinkName", # required
    #                 },
    #                 source_object_reference: { # required
    #                   selector: "SelectorObjectReference"
    #                 },
    #                 target_object_reference: { # required
    #                   selector: "SelectorObjectReference"
    #                 },
    #                 identity_attribute_values: [ # required
    #                   {
    #                     attribute_name: "AttributeName", # required
    #                     value: { # required
    #                       # One of:
    #                       string_value: "StringAttributeValue",
    #                       binary_value: "data",
    #                       boolean_value: false,
    #                       number_value: "NumberAttributeValue",
    #                       datetime_value: Time.now
    #                     }
    #                   }
    #                 ]
    #               }
    #             ],
    #             next_token: "NextToken"
    #           },
    #           list_incoming_typed_links: {
    #             link_specifiers: [
    #               {
    #                 typed_link_facet: { # required
    #                   schema_arn: "Arn", # required
    #                   typed_link_name: "TypedLinkName", # required
    #                 },
    #                 source_object_reference: { # required
    #                   selector: "SelectorObjectReference"
    #                 },
    #                 target_object_reference: { # required
    #                   selector: "SelectorObjectReference"
    #                 },
    #                 identity_attribute_values: [ # required
    #                   {
    #                     attribute_name: "AttributeName", # required
    #                     value: { # required
    #                       # One of:
    #                       string_value: "StringAttributeValue",
    #                       binary_value: "data",
    #                       boolean_value: false,
    #                       number_value: "NumberAttributeValue",
    #                       datetime_value: Time.now
    #                     }
    #                   }
    #                 ]
    #               }
    #             ],
    #             next_token: "NextToken"
    #           },
    #           get_link_attributes: {
    #             attributes: [
    #               {
    #                 key: { # required
    #                   schema_arn: "Arn", # required
    #                   facet_name: "FacetName", # required
    #                   name: "AttributeName", # required
    #                 },
    #                 value: { # required
    #                   # One of:
    #                   string_value: "StringAttributeValue",
    #                   binary_value: "data",
    #                   boolean_value: false,
    #                   number_value: "NumberAttributeValue",
    #                   datetime_value: Time.now
    #                 }
    #               }
    #             ]
    #           },
    #           list_object_parents: {
    #             parent_links: [
    #               {
    #                 object_identifier: "ObjectIdentifier",
    #                 link_name: "LinkName"
    #               }
    #             ],
    #             next_token: "NextToken"
    #           }
    #         },
    #         exception_response: {
    #           type: "ValidationException" # One of: ["ValidationException", "InvalidArnException", "ResourceNotFoundException", "InvalidNextTokenException", "AccessDeniedException", "NotNodeException", "FacetValidationException", "CannotListParentOfRootException", "NotIndexException", "NotPolicyException", "DirectoryNotEnabledException", "LimitExceededException", "InternalServiceException"],
    #           message: "ExceptionMessage"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::BatchReadResponse]
    def batch_read(params = {}, options = {})
      request = build_request(:batch_read, params)
      request.send_request(options)
    end

    # <p>Performs all the write operations in a batch. Either all the operations succeed or
    #       none.</p>
    # @param [Hash, Types::BatchWriteRequest] params
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>.
    #         For more information, see <a>arns</a>.</p>
    # @option params [Array<Types::BatchWriteOperation>] :operations
    #   <p>A list of operations that are part of the batch.</p>
    # @example To run a batch write command
    #   
    #   params = {
    #     directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY",
    #     operations: [
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_write(params, options)
    #   response.to_h #=>
    #   {
    #     responses: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "Arn", # required
    #     operations: [ # required
    #       {
    #         create_object: {
    #           schema_facet: [ # required
    #             {
    #               schema_arn: "Arn",
    #               facet_name: "FacetName"
    #             }
    #           ],
    #           object_attribute_list: [ # required
    #             {
    #               key: { # required
    #                 schema_arn: "Arn", # required
    #                 facet_name: "FacetName", # required
    #                 name: "AttributeName", # required
    #               },
    #               value: { # required
    #                 # One of:
    #                 string_value: "StringAttributeValue",
    #                 binary_value: "data",
    #                 boolean_value: false,
    #                 number_value: "NumberAttributeValue",
    #                 datetime_value: Time.now
    #               }
    #             }
    #           ],
    #           parent_reference: {
    #             selector: "SelectorObjectReference"
    #           },
    #           link_name: "LinkName",
    #           batch_reference_name: "BatchReferenceName"
    #         },
    #         attach_object: {
    #           parent_reference: { # required
    #             selector: "SelectorObjectReference"
    #           },
    #           child_reference: { # required
    #             selector: "SelectorObjectReference"
    #           },
    #           link_name: "LinkName", # required
    #         },
    #         detach_object: {
    #           parent_reference: { # required
    #             selector: "SelectorObjectReference"
    #           },
    #           link_name: "LinkName", # required
    #           batch_reference_name: "BatchReferenceName"
    #         },
    #         update_object_attributes: {
    #           object_reference: { # required
    #             selector: "SelectorObjectReference"
    #           },
    #           attribute_updates: [ # required
    #             {
    #               object_attribute_key: {
    #                 schema_arn: "Arn", # required
    #                 facet_name: "FacetName", # required
    #                 name: "AttributeName", # required
    #               },
    #               object_attribute_action: {
    #                 object_attribute_action_type: "CREATE_OR_UPDATE" # One of: ["CREATE_OR_UPDATE", "DELETE"],
    #                 object_attribute_update_value: {
    #                   # One of:
    #                   string_value: "StringAttributeValue",
    #                   binary_value: "data",
    #                   boolean_value: false,
    #                   number_value: "NumberAttributeValue",
    #                   datetime_value: Time.now
    #                 }
    #               }
    #             }
    #           ]
    #         },
    #         delete_object: {
    #           object_reference: { # required
    #             selector: "SelectorObjectReference"
    #           }
    #         },
    #         add_facet_to_object: {
    #           schema_facet: { # required
    #             schema_arn: "Arn",
    #             facet_name: "FacetName"
    #           },
    #           object_attribute_list: [ # required
    #             {
    #               key: { # required
    #                 schema_arn: "Arn", # required
    #                 facet_name: "FacetName", # required
    #                 name: "AttributeName", # required
    #               },
    #               value: { # required
    #                 # One of:
    #                 string_value: "StringAttributeValue",
    #                 binary_value: "data",
    #                 boolean_value: false,
    #                 number_value: "NumberAttributeValue",
    #                 datetime_value: Time.now
    #               }
    #             }
    #           ],
    #           object_reference: { # required
    #             selector: "SelectorObjectReference"
    #           }
    #         },
    #         remove_facet_from_object: {
    #           schema_facet: { # required
    #             schema_arn: "Arn",
    #             facet_name: "FacetName"
    #           },
    #           object_reference: { # required
    #             selector: "SelectorObjectReference"
    #           }
    #         },
    #         attach_policy: {
    #           policy_reference: { # required
    #             selector: "SelectorObjectReference"
    #           },
    #           object_reference: { # required
    #             selector: "SelectorObjectReference"
    #           }
    #         },
    #         detach_policy: {
    #           policy_reference: { # required
    #             selector: "SelectorObjectReference"
    #           },
    #           object_reference: { # required
    #             selector: "SelectorObjectReference"
    #           }
    #         },
    #         create_index: {
    #           ordered_indexed_attribute_list: [ # required
    #             {
    #               schema_arn: "Arn", # required
    #               facet_name: "FacetName", # required
    #               name: "AttributeName", # required
    #             }
    #           ],
    #           is_unique: false, # required
    #           parent_reference: {
    #             selector: "SelectorObjectReference"
    #           },
    #           link_name: "LinkName",
    #           batch_reference_name: "BatchReferenceName"
    #         },
    #         attach_to_index: {
    #           index_reference: { # required
    #             selector: "SelectorObjectReference"
    #           },
    #           target_reference: { # required
    #             selector: "SelectorObjectReference"
    #           }
    #         },
    #         detach_from_index: {
    #           index_reference: { # required
    #             selector: "SelectorObjectReference"
    #           },
    #           target_reference: { # required
    #             selector: "SelectorObjectReference"
    #           }
    #         },
    #         attach_typed_link: {
    #           source_object_reference: { # required
    #             selector: "SelectorObjectReference"
    #           },
    #           target_object_reference: { # required
    #             selector: "SelectorObjectReference"
    #           },
    #           typed_link_facet: { # required
    #             schema_arn: "Arn", # required
    #             typed_link_name: "TypedLinkName", # required
    #           },
    #           attributes: [ # required
    #             {
    #               attribute_name: "AttributeName", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "StringAttributeValue",
    #                 binary_value: "data",
    #                 boolean_value: false,
    #                 number_value: "NumberAttributeValue",
    #                 datetime_value: Time.now
    #               }
    #             }
    #           ]
    #         },
    #         detach_typed_link: {
    #           typed_link_specifier: { # required
    #             typed_link_facet: { # required
    #               schema_arn: "Arn", # required
    #               typed_link_name: "TypedLinkName", # required
    #             },
    #             source_object_reference: { # required
    #               selector: "SelectorObjectReference"
    #             },
    #             target_object_reference: { # required
    #               selector: "SelectorObjectReference"
    #             },
    #             identity_attribute_values: [ # required
    #               {
    #                 attribute_name: "AttributeName", # required
    #                 value: { # required
    #                   # One of:
    #                   string_value: "StringAttributeValue",
    #                   binary_value: "data",
    #                   boolean_value: false,
    #                   number_value: "NumberAttributeValue",
    #                   datetime_value: Time.now
    #                 }
    #               }
    #             ]
    #           }
    #         },
    #         update_link_attributes: {
    #           typed_link_specifier: { # required
    #             typed_link_facet: { # required
    #               schema_arn: "Arn", # required
    #               typed_link_name: "TypedLinkName", # required
    #             },
    #             source_object_reference: { # required
    #               selector: "SelectorObjectReference"
    #             },
    #             target_object_reference: { # required
    #               selector: "SelectorObjectReference"
    #             },
    #             identity_attribute_values: [ # required
    #               {
    #                 attribute_name: "AttributeName", # required
    #                 value: { # required
    #                   # One of:
    #                   string_value: "StringAttributeValue",
    #                   binary_value: "data",
    #                   boolean_value: false,
    #                   number_value: "NumberAttributeValue",
    #                   datetime_value: Time.now
    #                 }
    #               }
    #             ]
    #           },
    #           attribute_updates: [ # required
    #             {
    #               attribute_key: {
    #                 schema_arn: "Arn", # required
    #                 facet_name: "FacetName", # required
    #                 name: "AttributeName", # required
    #               },
    #               attribute_action: {
    #                 attribute_action_type: "CREATE_OR_UPDATE" # One of: ["CREATE_OR_UPDATE", "DELETE"],
    #                 attribute_update_value: {
    #                   # One of:
    #                   string_value: "StringAttributeValue",
    #                   binary_value: "data",
    #                   boolean_value: false,
    #                   number_value: "NumberAttributeValue",
    #                   datetime_value: Time.now
    #                 }
    #               }
    #             }
    #           ]
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_write(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     responses: [
    #       {
    #         create_object: {
    #           object_identifier: "ObjectIdentifier"
    #         },
    #         attach_object: {
    #           attached_object_identifier: "ObjectIdentifier"
    #         },
    #         detach_object: {
    #           detached_object_identifier: "ObjectIdentifier"
    #         },
    #         update_object_attributes: {
    #           object_identifier: "ObjectIdentifier"
    #         },
    #         delete_object: {
    #         },
    #         add_facet_to_object: {
    #         },
    #         remove_facet_from_object: {
    #         },
    #         attach_policy: {
    #         },
    #         detach_policy: {
    #         },
    #         create_index: {
    #           object_identifier: "ObjectIdentifier"
    #         },
    #         attach_to_index: {
    #           attached_object_identifier: "ObjectIdentifier"
    #         },
    #         detach_from_index: {
    #           detached_object_identifier: "ObjectIdentifier"
    #         },
    #         attach_typed_link: {
    #           typed_link_specifier: {
    #             typed_link_facet: { # required
    #               schema_arn: "Arn", # required
    #               typed_link_name: "TypedLinkName", # required
    #             },
    #             source_object_reference: { # required
    #               selector: "SelectorObjectReference"
    #             },
    #             target_object_reference: { # required
    #               selector: "SelectorObjectReference"
    #             },
    #             identity_attribute_values: [ # required
    #               {
    #                 attribute_name: "AttributeName", # required
    #                 value: { # required
    #                   # One of:
    #                   string_value: "StringAttributeValue",
    #                   binary_value: "data",
    #                   boolean_value: false,
    #                   number_value: "NumberAttributeValue",
    #                   datetime_value: Time.now
    #                 }
    #               }
    #             ]
    #           }
    #         },
    #         detach_typed_link: {
    #         },
    #         update_link_attributes: {
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::BatchWriteResponse]
    def batch_write(params = {}, options = {})
      request = build_request(:batch_write, params)
      request.send_request(options)
    end

    # <p>Creates a <a>Directory</a> by copying the published schema into the
    #       directory. A directory cannot be created without a schema.</p>
    #          <p>You can also quickly create a directory using a managed schema, called the
    #         <code>QuickStartSchema</code>. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_managed.html">Managed Schema</a> in the <i>Amazon Cloud Directory Developer Guide</i>.</p>
    # @param [Hash, Types::CreateDirectoryRequest] params
    # @option params [String] :name
    #   <p>The name of the <a>Directory</a>. Should be unique per account, per
    #         region.</p>
    # @option params [String] :schema_arn
    #   <p>The Amazon Resource Name (ARN) of the published schema that will be copied into the
    #         data <a>Directory</a>. For more information, see <a>arns</a>.</p>
    # @example To create a new Cloud Directory
    #   
    #   params = {
    #     name: "ExampleCD",
    #     schema_arn: "arn:aws:clouddirectory:us-west-2:45132example:schema/published/person/1"
    #   }
    #   options = {}
    #   response = client.create_directory(params, options)
    #   response.to_h #=>
    #   {
    #     directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AfMr4qym1kZTvwqOafAYfqI",
    #     name: "ExampleCD",
    #     object_identifier: "AQHzK-KsptZGU78KjmnwGH6i-4guCM3uQFOTA9_NjeHDrg",
    #     applied_schema_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AfMr4qym1kZTvwqOafAYfqI/schema/person/1"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DirectoryName", # required
    #     schema_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.create_directory(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directory_arn: "DirectoryArn", # required
    #     name: "DirectoryName", # required
    #     object_identifier: "ObjectIdentifier", # required
    #     applied_schema_arn: "Arn", # required
    #   }
    # @return [Types::CreateDirectoryResponse]
    def create_directory(params = {}, options = {})
      request = build_request(:create_directory, params)
      request.send_request(options)
    end

    # <p>Creates a new <a>Facet</a> in a schema. Facet creation is allowed only
    #       in development or applied schemas.</p>
    # @param [Hash, Types::CreateFacetRequest] params
    # @option params [String] :schema_arn
    #   <p>The schema ARN in which the new <a>Facet</a> will be created. For more
    #         information, see <a>arns</a>.</p>
    # @option params [String] :name
    #   <p>The name of the <a>Facet</a>, which is unique for a given schema.</p>
    # @option params [Array<Types::FacetAttribute>] :attributes
    #   <p>The attributes that are associated with the <a>Facet</a>.</p>
    # @option params [String] :object_type
    #   <p>Specifies whether a given object created from this facet is of type node, leaf node,
    #         policy or index.</p>
    #            <ul>
    #               <li>
    #                  <p>Node: Can have multiple children but one parent.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>Leaf node: Cannot have children but can have multiple parents.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>Policy: Allows you to store a policy document and policy type. For more
    #           information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies">Policies</a>.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>Index: Can be created with the Index API.</p>
    #               </li>
    #            </ul>
    # @option params [String] :facet_style
    #   <p>There are two different styles that you can define on any given facet, <code>Static</code> and <code>Dynamic</code>. For static facets, all attributes must be defined in the schema. For dynamic facets, attributes can be defined during data plane operations.</p>
    # @example To create a facet
    #   
    #   params = {
    #     schema_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY/schema/org/1",
    #     name: "node1",
    #     object_type: NODE
    #   }
    #   options = {}
    #   response = client.create_facet(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     schema_arn: "Arn", # required
    #     name: "FacetName", # required
    #     attributes: [
    #       {
    #         name: "AttributeName", # required
    #         attribute_definition: {
    #           type: "STRING" # One of: ["STRING", "BINARY", "BOOLEAN", "NUMBER", "DATETIME", "VARIANT"], # required
    #           default_value: {
    #             # One of:
    #             string_value: "StringAttributeValue",
    #             binary_value: "data",
    #             boolean_value: false,
    #             number_value: "NumberAttributeValue",
    #             datetime_value: Time.now
    #           },
    #           is_immutable: false,
    #           rules: {
    #             "RuleKey" => {
    #               type: "BINARY_LENGTH" # One of: ["BINARY_LENGTH", "NUMBER_COMPARISON", "STRING_FROM_SET", "STRING_LENGTH"],
    #               parameters: {
    #                 "RuleParameterKey" => "RuleParameterValue"
    #               }
    #             }
    #           }
    #         },
    #         attribute_reference: {
    #           target_facet_name: "FacetName", # required
    #           target_attribute_name: "AttributeName", # required
    #         },
    #         required_behavior: "REQUIRED_ALWAYS" # One of: ["REQUIRED_ALWAYS", "NOT_REQUIRED"]
    #       }
    #     ],
    #     object_type: "NODE" # One of: ["NODE", "LEAF_NODE", "POLICY", "INDEX"],
    #     facet_style: "STATIC" # One of: ["STATIC", "DYNAMIC"]
    #   }
    #   options = {}
    #   response = client.create_facet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateFacetResponse]
    def create_facet(params = {}, options = {})
      request = build_request(:create_facet, params)
      request.send_request(options)
    end

    # <p>Creates an index object. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/indexing_search.html">Indexing and search</a> for more information.</p>
    # @param [Hash, Types::CreateIndexRequest] params
    # @option params [String] :directory_arn
    #   <p>The ARN of the directory where the index should be created.</p>
    # @option params [Array<Types::AttributeKey>] :ordered_indexed_attribute_list
    #   <p>Specifies the attributes that should be indexed on. Currently only a single attribute
    #         is supported.</p>
    # @option params [Boolean] :is_unique
    #   <p>Indicates whether the attribute that is being indexed has unique values or
    #         not.</p>
    # @option params [Types::ObjectReference] :parent_reference
    #   <p>A reference to the parent object that contains the index object.</p>
    # @option params [String] :link_name
    #   <p>The name of the link between the parent object and the index object.</p>
    # @example To create an index
    #   
    #   params = {
    #     directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AXQXDXvdgkOWktRXV4HnRa8",
    #     ordered_indexed_attribute_list: [
    #     ],
    #     is_unique: true,
    #     parent_reference: {
    #     },
    #     link_name: "Examplelink"
    #   }
    #   options = {}
    #   response = client.create_index(params, options)
    #   response.to_h #=>
    #   {
    #     object_identifier: "AQF0Fw173YJDlpLUV1eB50WvYsWFtVoUSmOzZjz_BLULIA"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "Arn", # required
    #     ordered_indexed_attribute_list: [ # required
    #       {
    #         schema_arn: "Arn", # required
    #         facet_name: "FacetName", # required
    #         name: "AttributeName", # required
    #       }
    #     ],
    #     is_unique: false, # required
    #     parent_reference: {
    #       selector: "SelectorObjectReference"
    #     },
    #     link_name: "LinkName"
    #   }
    #   options = {}
    #   response = client.create_index(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     object_identifier: "ObjectIdentifier"
    #   }
    # @return [Types::CreateIndexResponse]
    def create_index(params = {}, options = {})
      request = build_request(:create_index, params)
      request.send_request(options)
    end

    # <p>Creates an object in a <a>Directory</a>. Additionally attaches the object to
    #       a parent, if a parent reference and <code>LinkName</code> is specified. An object is simply a
    #       collection of <a>Facet</a> attributes. You can also use this API call to create a
    #       policy object, if the facet from which you create the object is a policy facet. </p>
    # @param [Hash, Types::CreateObjectRequest] params
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         in which the object will be created. For more information, see <a>arns</a>.</p>
    # @option params [Array<Types::SchemaFacet>] :schema_facets
    #   <p>A list of schema facets to be associated with the object. Do not provide minor version components. See <a>SchemaFacet</a> for details.</p>
    # @option params [Array<Types::AttributeKeyAndValue>] :object_attribute_list
    #   <p>The attribute map whose attribute ARN contains the key and attribute value as the map
    #         value.</p>
    # @option params [Types::ObjectReference] :parent_reference
    #   <p>If specified, the parent reference to which this object will be attached.</p>
    # @option params [String] :link_name
    #   <p>The name of link that is used to attach this object to a parent.</p>
    # @example To create an object
    #   
    #   params = {
    #     directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AXQXDXvdgkOWktRXV4HnRa8",
    #     schema_facets: [
    #       {
    #         schema_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AXQXDXvdgkOWktRXV4HnRa8/schema/ExampleOrgPersonSchema/1",
    #         facet_name: "Organization_Person"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_object(params, options)
    #   response.to_h #=>
    #   {
    #     object_identifier: "AQF0Fw173YJDlpLUV1eB50WvScvjsYXcS3K2nP1HwDuuYQ"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "Arn", # required
    #     schema_facets: [ # required
    #       {
    #         schema_arn: "Arn",
    #         facet_name: "FacetName"
    #       }
    #     ],
    #     object_attribute_list: [
    #       {
    #         key: { # required
    #           schema_arn: "Arn", # required
    #           facet_name: "FacetName", # required
    #           name: "AttributeName", # required
    #         },
    #         value: { # required
    #           # One of:
    #           string_value: "StringAttributeValue",
    #           binary_value: "data",
    #           boolean_value: false,
    #           number_value: "NumberAttributeValue",
    #           datetime_value: Time.now
    #         }
    #       }
    #     ],
    #     parent_reference: {
    #       selector: "SelectorObjectReference"
    #     },
    #     link_name: "LinkName"
    #   }
    #   options = {}
    #   response = client.create_object(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     object_identifier: "ObjectIdentifier"
    #   }
    # @return [Types::CreateObjectResponse]
    def create_object(params = {}, options = {})
      request = build_request(:create_object, params)
      request.send_request(options)
    end

    # <p>Creates a new schema in a development state. A schema can exist in three
    #       phases:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <i>Development:</i> This is a mutable phase of the schema. All new
    #           schemas are in the development phase. Once the schema is finalized, it can be
    #           published.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <i>Published:</i> Published schemas are immutable and have a version
    #           associated with them.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <i>Applied:</i> Applied schemas are mutable in a way that allows you
    #           to add new schema facets. You can also add new, nonrequired attributes to existing schema
    #           facets. You can apply only published schemas to directories. </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateSchemaRequest] params
    # @option params [String] :name
    #   <p>The name that is associated with the schema. This is unique to each account and in each
    #         region.</p>
    # @example To create a schema
    #   
    #   params = {
    #     name: "Customers"
    #   }
    #   options = {}
    #   response = client.create_schema(params, options)
    #   response.to_h #=>
    #   {
    #     schema_arn: "arn:aws:clouddirectory:us-west-2:45132example:schema/development/Customers"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "SchemaName", # required
    #   }
    #   options = {}
    #   response = client.create_schema(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     schema_arn: "Arn"
    #   }
    # @return [Types::CreateSchemaResponse]
    def create_schema(params = {}, options = {})
      request = build_request(:create_schema, params)
      request.send_request(options)
    end

    # <p>Creates a <a>TypedLinkFacet</a>. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    # @param [Hash, Types::CreateTypedLinkFacetRequest] params
    # @option params [String] :schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the schema. For more
    #         information, see <a>arns</a>.</p>
    # @option params [Types::TypedLinkFacet] :facet
    #   <p>
    #               <a>Facet</a> structure that is associated with the typed link
    #         facet.</p>
    # @example To create a typed link facet
    #   
    #   params = {
    #     schema_arn: "arn:aws:clouddirectory:us-west-2:45132example:schema/development/typedlinkschema",
    #     facet: {
    #       name: "FacetExample",
    #       attributes: [
    #         {
    #           name: "1",
    #           type: BINARY,
    #           required_behavior: REQUIRED_ALWAYS
    #         }
    #       ],
    #       identity_attribute_order: [
    #         "1"
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.create_typed_link_facet(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     schema_arn: "Arn", # required
    #     facet: { # required
    #       name: "TypedLinkName", # required
    #       attributes: [ # required
    #         {
    #           name: "AttributeName", # required
    #           type: "STRING" # One of: ["STRING", "BINARY", "BOOLEAN", "NUMBER", "DATETIME", "VARIANT"], # required
    #           default_value: {
    #             # One of:
    #             string_value: "StringAttributeValue",
    #             binary_value: "data",
    #             boolean_value: false,
    #             number_value: "NumberAttributeValue",
    #             datetime_value: Time.now
    #           },
    #           is_immutable: false,
    #           rules: {
    #             "RuleKey" => {
    #               type: "BINARY_LENGTH" # One of: ["BINARY_LENGTH", "NUMBER_COMPARISON", "STRING_FROM_SET", "STRING_LENGTH"],
    #               parameters: {
    #                 "RuleParameterKey" => "RuleParameterValue"
    #               }
    #             }
    #           },
    #           required_behavior: "REQUIRED_ALWAYS" # One of: ["REQUIRED_ALWAYS", "NOT_REQUIRED"], # required
    #         }
    #       ],
    #       identity_attribute_order: ["AttributeName"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_typed_link_facet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateTypedLinkFacetResponse]
    def create_typed_link_facet(params = {}, options = {})
      request = build_request(:create_typed_link_facet, params)
      request.send_request(options)
    end

    # <p>Deletes a directory. Only disabled directories can be deleted. A deleted directory cannot be undone. Exercise extreme
    #         caution
    #         when deleting directories.</p>
    # @param [Hash, Types::DeleteDirectoryRequest] params
    # @option params [String] :directory_arn
    #   <p>The ARN of the directory to delete.</p>
    # @example To delete a directory
    #   
    #   params = {
    #     directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AXQXDXvdgkOWktRXV4HnRa8"
    #   }
    #   options = {}
    #   response = client.delete_directory(params, options)
    #   response.to_h #=>
    #   {
    #     directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AXQXDXvdgkOWktRXV4HnRa8"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_directory(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directory_arn: "Arn", # required
    #   }
    # @return [Types::DeleteDirectoryResponse]
    def delete_directory(params = {}, options = {})
      request = build_request(:delete_directory, params)
      request.send_request(options)
    end

    # <p>Deletes a given <a>Facet</a>. All attributes and <a>Rule</a>s
    #       that are associated with the facet will be deleted. Only development schema facets are allowed
    #       deletion.</p>
    # @param [Hash, Types::DeleteFacetRequest] params
    # @option params [String] :schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Facet</a>.
    #         For more information, see <a>arns</a>.</p>
    # @option params [String] :name
    #   <p>The name of the facet to delete.</p>
    # @example To delete a facet
    #   
    #   params = {
    #     schema_arn: "arn:aws:clouddirectory:us-west-2:45132example:schema/development/exampleorgtest",
    #     name: "Organization"
    #   }
    #   options = {}
    #   response = client.delete_facet(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     schema_arn: "Arn", # required
    #     name: "FacetName", # required
    #   }
    #   options = {}
    #   response = client.delete_facet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteFacetResponse]
    def delete_facet(params = {}, options = {})
      request = build_request(:delete_facet, params)
      request.send_request(options)
    end

    # <p>Deletes an object and its associated attributes. Only objects with no children and no
    #       parents can be deleted. The maximum number of attributes that can be deleted during an object deletion is 30. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/limits.html">Amazon Cloud Directory Limits</a>.</p>
    # @param [Hash, Types::DeleteObjectRequest] params
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where the object resides. For more information, see <a>arns</a>.</p>
    # @option params [Types::ObjectReference] :object_reference
    #   <p>A reference that identifies the object.</p>
    # @example To delete an object
    #   
    #   params = {
    #     directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AfMr4qym1kZTvwqOafAYfqI",
    #     object_reference: {
    #       selector: "$AQHzK-KsptZGU78KjmnwGH6i8H-voMZDSNCqfx-fRUcBFg"
    #     }
    #   }
    #   options = {}
    #   response = client.delete_object(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "Arn", # required
    #     object_reference: { # required
    #       selector: "SelectorObjectReference"
    #     }
    #   }
    #   options = {}
    #   response = client.delete_object(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteObjectResponse]
    def delete_object(params = {}, options = {})
      request = build_request(:delete_object, params)
      request.send_request(options)
    end

    # <p>Deletes a given schema. Schemas in a development and published state can only be deleted. </p>
    # @param [Hash, Types::DeleteSchemaRequest] params
    # @option params [String] :schema_arn
    #   <p>The Amazon Resource Name (ARN) of the development schema. For more information, see
    #           <a>arns</a>.</p>
    # @example To delete a schema
    #   
    #   params = {
    #     schema_arn: "arn:aws:clouddirectory:us-west-2:45132example:schema/development/exampleorgtest"
    #   }
    #   options = {}
    #   response = client.delete_schema(params, options)
    #   response.to_h #=>
    #   {
    #     schema_arn: "arn:aws:clouddirectory:us-west-2:45132example:schema/development/exampleorgtest"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     schema_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_schema(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     schema_arn: "Arn"
    #   }
    # @return [Types::DeleteSchemaResponse]
    def delete_schema(params = {}, options = {})
      request = build_request(:delete_schema, params)
      request.send_request(options)
    end

    # <p>Deletes a <a>TypedLinkFacet</a>. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    # @param [Hash, Types::DeleteTypedLinkFacetRequest] params
    # @option params [String] :schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the schema. For more
    #         information, see <a>arns</a>.</p>
    # @option params [String] :name
    #   <p>The unique name of the typed link facet.</p>
    # @example To delete a typed link facet
    #   
    #   params = {
    #     schema_arn: "arn:aws:clouddirectory:us-west-2:45132example:schema/development/typedlinkschematest",
    #     name: "ExampleFacet"
    #   }
    #   options = {}
    #   response = client.delete_typed_link_facet(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     schema_arn: "Arn", # required
    #     name: "TypedLinkName", # required
    #   }
    #   options = {}
    #   response = client.delete_typed_link_facet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTypedLinkFacetResponse]
    def delete_typed_link_facet(params = {}, options = {})
      request = build_request(:delete_typed_link_facet, params)
      request.send_request(options)
    end

    # <p>Detaches the specified object from the specified index.</p>
    # @param [Hash, Types::DetachFromIndexRequest] params
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) of the directory the index and object exist
    #         in.</p>
    # @option params [Types::ObjectReference] :index_reference
    #   <p>A reference to the index object.</p>
    # @option params [Types::ObjectReference] :target_reference
    #   <p>A reference to the object being detached from the index.</p>
    # @example To detach an object from an index
    #   
    #   params = {
    #     directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY",
    #     index_reference: {
    #       selector: "$AQGG_ADlfNZBzYHY_JgDt3TW45F26R1HTY2z-stwKBte_Q"
    #     },
    #     target_reference: {
    #       selector: "$AQGG_ADlfNZBzYHY_JgDt3TWcU7IARvOTeaR09zme1sVsw"
    #     }
    #   }
    #   options = {}
    #   response = client.detach_from_index(params, options)
    #   response.to_h #=>
    #   {
    #     detached_object_identifier: "AQGG_ADlfNZBzYHY_JgDt3TWcU7IARvOTeaR09zme1sVsw"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "Arn", # required
    #     index_reference: { # required
    #       selector: "SelectorObjectReference"
    #     },
    #     target_reference: { # required
    #       selector: "SelectorObjectReference"
    #     }
    #   }
    #   options = {}
    #   response = client.detach_from_index(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     detached_object_identifier: "ObjectIdentifier"
    #   }
    # @return [Types::DetachFromIndexResponse]
    def detach_from_index(params = {}, options = {})
      request = build_request(:detach_from_index, params)
      request.send_request(options)
    end

    # <p>Detaches a given object from the parent object. The object that is to be detached from the
    #       parent is specified by the link name.</p>
    # @param [Hash, Types::DetachObjectRequest] params
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where objects reside. For more information, see <a>arns</a>.</p>
    # @option params [Types::ObjectReference] :parent_reference
    #   <p>The parent reference from which the object with the specified link name is
    #         detached.</p>
    # @option params [String] :link_name
    #   <p>The link name associated with the object that needs to be detached.</p>
    # @example To detach an object from its parent object
    #   
    #   params = {
    #     directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY",
    #     parent_reference: {
    #       selector: "$AQGG_ADlfNZBzYHY_JgDt3TWcU7IARvOTeaR09zme1sVsw"
    #     },
    #     link_name: "link2"
    #   }
    #   options = {}
    #   response = client.detach_object(params, options)
    #   response.to_h #=>
    #   {
    #     detached_object_identifier: "AQGG_ADlfNZBzYHY_JgDt3TWSvfuEnDqTdmeCuTs6YBNUA"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "Arn", # required
    #     parent_reference: { # required
    #       selector: "SelectorObjectReference"
    #     },
    #     link_name: "LinkName", # required
    #   }
    #   options = {}
    #   response = client.detach_object(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     detached_object_identifier: "ObjectIdentifier"
    #   }
    # @return [Types::DetachObjectResponse]
    def detach_object(params = {}, options = {})
      request = build_request(:detach_object, params)
      request.send_request(options)
    end

    # <p>Detaches a policy from an object.</p>
    # @param [Hash, Types::DetachPolicyRequest] params
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where both objects reside. For more information, see <a>arns</a>.</p>
    # @option params [Types::ObjectReference] :policy_reference
    #   <p>Reference that identifies the policy object.</p>
    # @option params [Types::ObjectReference] :object_reference
    #   <p>Reference that identifies the object whose policy object will be detached.</p>
    # @example To detach a policy from an object
    #   
    #   params = {
    #     directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY",
    #     policy_reference: {
    #       selector: "$AQGG_ADlfNZBzYHY_JgDt3TWgcBsTVmcQEWs6jlygfhuew"
    #     },
    #     object_reference: {
    #       selector: "$AQGG_ADlfNZBzYHY_JgDt3TWQoovm1s3Ts2v0NKrzdVnPw"
    #     }
    #   }
    #   options = {}
    #   response = client.detach_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "Arn", # required
    #     policy_reference: { # required
    #       selector: "SelectorObjectReference"
    #     },
    #     object_reference: { # required
    #       selector: "SelectorObjectReference"
    #     }
    #   }
    #   options = {}
    #   response = client.detach_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DetachPolicyResponse]
    def detach_policy(params = {}, options = {})
      request = build_request(:detach_policy, params)
      request.send_request(options)
    end

    # <p>Detaches a typed link from a specified source and target object. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    # @param [Hash, Types::DetachTypedLinkRequest] params
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) of the directory where you want to detach the typed
    #         link.</p>
    # @option params [Types::TypedLinkSpecifier] :typed_link_specifier
    #   <p>Used to accept a typed link specifier as input.</p>
    # @example To detach a typed link from an object
    #   
    #   params = {
    #     directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY",
    #     typed_link_specifier: {
    #       source_object_reference: {
    #         selector: "$AQGG_ADlfNZBzYHY_JgDt3TWSvfuEnDqTdmeCuTs6YBNUA"
    #       },
    #       identity_attribute_values: [
    #         {
    #           attribute_name: "22",
    #           value: {
    #     "BinaryValue" => c3Ry
    #   }
    #         }
    #       ],
    #       target_object_reference: {
    #         selector: "$AQGG_ADlfNZBzYHY_JgDt3TWcU7IARvOTeaR09zme1sVsw"
    #       },
    #       typed_link_facet: {
    #         typed_link_name: "exampletypedlink8",
    #         schema_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY/schema/org/1"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.detach_typed_link(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "Arn", # required
    #     typed_link_specifier: { # required
    #       typed_link_facet: { # required
    #         schema_arn: "Arn", # required
    #         typed_link_name: "TypedLinkName", # required
    #       },
    #       source_object_reference: { # required
    #         selector: "SelectorObjectReference"
    #       },
    #       target_object_reference: { # required
    #         selector: "SelectorObjectReference"
    #       },
    #       identity_attribute_values: [ # required
    #         {
    #           attribute_name: "AttributeName", # required
    #           value: { # required
    #             # One of:
    #             string_value: "StringAttributeValue",
    #             binary_value: "data",
    #             boolean_value: false,
    #             number_value: "NumberAttributeValue",
    #             datetime_value: Time.now
    #           }
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.detach_typed_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def detach_typed_link(params = {}, options = {})
      request = build_request(:detach_typed_link, params)
      request.send_request(options)
    end

    # <p>Disables the specified directory. Disabled directories cannot be read or written to.
    #       Only enabled directories can be disabled. Disabled directories may be reenabled.</p>
    # @param [Hash, Types::DisableDirectoryRequest] params
    # @option params [String] :directory_arn
    #   <p>The ARN of the directory to disable.</p>
    # @example To disable a directory
    #   
    #   params = {
    #     directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AXQXDXvdgkOWktRXV4HnRa8"
    #   }
    #   options = {}
    #   response = client.disable_directory(params, options)
    #   response.to_h #=>
    #   {
    #     directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AXQXDXvdgkOWktRXV4HnRa8"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.disable_directory(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directory_arn: "Arn", # required
    #   }
    # @return [Types::DisableDirectoryResponse]
    def disable_directory(params = {}, options = {})
      request = build_request(:disable_directory, params)
      request.send_request(options)
    end

    # <p>Enables the specified directory. Only disabled directories can be enabled. Once
    #       enabled, the directory can then be read and written to.</p>
    # @param [Hash, Types::EnableDirectoryRequest] params
    # @option params [String] :directory_arn
    #   <p>The ARN of the directory to enable.</p>
    # @example To enable a disabled directory
    #   
    #   params = {
    #     directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AXQXDXvdgkOWktRXV4HnRa8"
    #   }
    #   options = {}
    #   response = client.enable_directory(params, options)
    #   response.to_h #=>
    #   {
    #     directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AXQXDXvdgkOWktRXV4HnRa8"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.enable_directory(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directory_arn: "Arn", # required
    #   }
    # @return [Types::EnableDirectoryResponse]
    def enable_directory(params = {}, options = {})
      request = build_request(:enable_directory, params)
      request.send_request(options)
    end

    # <p>Returns current applied schema version ARN, including the minor version in use.</p>
    # @param [Hash, Types::GetAppliedSchemaVersionRequest] params
    # @option params [String] :schema_arn
    #   <p>The ARN of the applied schema.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     schema_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.get_applied_schema_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     applied_schema_arn: "Arn"
    #   }
    # @return [Types::GetAppliedSchemaVersionResponse]
    def get_applied_schema_version(params = {}, options = {})
      request = build_request(:get_applied_schema_version, params)
      request.send_request(options)
    end

    # <p>Retrieves metadata about a directory.</p>
    # @param [Hash, Types::GetDirectoryRequest] params
    # @option params [String] :directory_arn
    #   <p>The ARN of the directory.</p>
    # @example To get information about a directory
    #   
    #   params = {
    #     directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY"
    #   }
    #   options = {}
    #   response = client.get_directory(params, options)
    #   response.to_h #=>
    #   {
    #     directory: {
    #       creation_date_time: Time.parse(1506115781.186),
    #       directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY",
    #       name: "ExampleCD",
    #       state: ENABLED
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "DirectoryArn", # required
    #   }
    #   options = {}
    #   response = client.get_directory(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directory: { # required
    #       name: "DirectoryName",
    #       directory_arn: "DirectoryArn",
    #       state: "ENABLED" # One of: ["ENABLED", "DISABLED", "DELETED"],
    #       creation_date_time: Time.now
    #     }
    #   }
    # @return [Types::GetDirectoryResponse]
    def get_directory(params = {}, options = {})
      request = build_request(:get_directory, params)
      request.send_request(options)
    end

    # <p>Gets details of the <a>Facet</a>, such as facet name, attributes, <a>Rule</a>s, or <code>ObjectType</code>. You can call this on all kinds of schema
    #       facets -- published, development, or applied.</p>
    # @param [Hash, Types::GetFacetRequest] params
    # @option params [String] :schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Facet</a>.
    #         For more information, see <a>arns</a>.</p>
    # @option params [String] :name
    #   <p>The name of the facet to retrieve.</p>
    # @example To get information about a facet
    #   
    #   params = {
    #     schema_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY/schema/org/1",
    #     name: "node2"
    #   }
    #   options = {}
    #   response = client.get_facet(params, options)
    #   response.to_h #=>
    #   {
    #     facet: {
    #       name: "node2",
    #       object_type: NODE
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     schema_arn: "Arn", # required
    #     name: "FacetName", # required
    #   }
    #   options = {}
    #   response = client.get_facet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     facet: {
    #       name: "FacetName",
    #       object_type: "NODE" # One of: ["NODE", "LEAF_NODE", "POLICY", "INDEX"],
    #       facet_style: "STATIC" # One of: ["STATIC", "DYNAMIC"]
    #     }
    #   }
    # @return [Types::GetFacetResponse]
    def get_facet(params = {}, options = {})
      request = build_request(:get_facet, params)
      request.send_request(options)
    end

    # <p>Retrieves attributes that are associated with a typed link.</p>
    # @param [Hash, Types::GetLinkAttributesRequest] params
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the Directory where the typed link resides. For more information, see <a>arns</a> or <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    # @option params [Types::TypedLinkSpecifier] :typed_link_specifier
    #   <p>Allows a typed link specifier to be accepted as input.</p>
    # @option params [Array<String>] :attribute_names
    #   <p>A list of attribute names whose values will be retrieved.</p>
    # @option params [String] :consistency_level
    #   <p>The consistency level at which to retrieve the attributes on a typed link.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "Arn", # required
    #     typed_link_specifier: { # required
    #       typed_link_facet: { # required
    #         schema_arn: "Arn", # required
    #         typed_link_name: "TypedLinkName", # required
    #       },
    #       source_object_reference: { # required
    #         selector: "SelectorObjectReference"
    #       },
    #       target_object_reference: { # required
    #         selector: "SelectorObjectReference"
    #       },
    #       identity_attribute_values: [ # required
    #         {
    #           attribute_name: "AttributeName", # required
    #           value: { # required
    #             # One of:
    #             string_value: "StringAttributeValue",
    #             binary_value: "data",
    #             boolean_value: false,
    #             number_value: "NumberAttributeValue",
    #             datetime_value: Time.now
    #           }
    #         }
    #       ]
    #     },
    #     attribute_names: ["AttributeName"], # required
    #     consistency_level: "SERIALIZABLE" # One of: ["SERIALIZABLE", "EVENTUAL"]
    #   }
    #   options = {}
    #   response = client.get_link_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attributes: [
    #       {
    #         key: { # required
    #           schema_arn: "Arn", # required
    #           facet_name: "FacetName", # required
    #           name: "AttributeName", # required
    #         },
    #         value: { # required
    #           # One of:
    #           string_value: "StringAttributeValue",
    #           binary_value: "data",
    #           boolean_value: false,
    #           number_value: "NumberAttributeValue",
    #           datetime_value: Time.now
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::GetLinkAttributesResponse]
    def get_link_attributes(params = {}, options = {})
      request = build_request(:get_link_attributes, params)
      request.send_request(options)
    end

    # <p>Retrieves attributes within a facet that are associated with an object.</p>
    # @param [Hash, Types::GetObjectAttributesRequest] params
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where the object resides.</p>
    # @option params [Types::ObjectReference] :object_reference
    #   <p>Reference that identifies the object whose attributes will be retrieved.</p>
    # @option params [String] :consistency_level
    #   <p>The consistency level at which to retrieve the attributes on an object.</p>
    # @option params [Types::SchemaFacet] :schema_facet
    #   <p>Identifier for the facet whose attributes will be retrieved. See <a>SchemaFacet</a> for details.</p>
    # @option params [Array<String>] :attribute_names
    #   <p>List of attribute names whose values will be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "Arn", # required
    #     object_reference: { # required
    #       selector: "SelectorObjectReference"
    #     },
    #     consistency_level: "SERIALIZABLE" # One of: ["SERIALIZABLE", "EVENTUAL"],
    #     schema_facet: { # required
    #       schema_arn: "Arn",
    #       facet_name: "FacetName"
    #     },
    #     attribute_names: ["AttributeName"], # required
    #   }
    #   options = {}
    #   response = client.get_object_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attributes: [
    #       {
    #         key: { # required
    #           schema_arn: "Arn", # required
    #           facet_name: "FacetName", # required
    #           name: "AttributeName", # required
    #         },
    #         value: { # required
    #           # One of:
    #           string_value: "StringAttributeValue",
    #           binary_value: "data",
    #           boolean_value: false,
    #           number_value: "NumberAttributeValue",
    #           datetime_value: Time.now
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::GetObjectAttributesResponse]
    def get_object_attributes(params = {}, options = {})
      request = build_request(:get_object_attributes, params)
      request.send_request(options)
    end

    # <p>Retrieves metadata about an object.</p>
    # @param [Hash, Types::GetObjectInformationRequest] params
    # @option params [String] :directory_arn
    #   <p>The ARN of the directory being retrieved.</p>
    # @option params [Types::ObjectReference] :object_reference
    #   <p>A reference to the object.</p>
    # @option params [String] :consistency_level
    #   <p>The consistency level at which to retrieve the object information.</p>
    # @example To get information about an object
    #   
    #   params = {
    #     directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY",
    #     object_reference: {
    #       selector: "$AQGG_ADlfNZBzYHY_JgDt3TWmspn1fxfQmSQaaVKSbvEiQ"
    #     },
    #     consistency_level: SERIALIZABLE
    #   }
    #   options = {}
    #   response = client.get_object_information(params, options)
    #   response.to_h #=>
    #   {
    #     schema_facets: [
    #       {
    #         facet_name: "node2",
    #         schema_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY/schema/org/1"
    #       }
    #     ],
    #     object_identifier: "AQGG_ADlfNZBzYHY_JgDt3TWmspn1fxfQmSQaaVKSbvEiQ"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "Arn", # required
    #     object_reference: { # required
    #       selector: "SelectorObjectReference"
    #     },
    #     consistency_level: "SERIALIZABLE" # One of: ["SERIALIZABLE", "EVENTUAL"]
    #   }
    #   options = {}
    #   response = client.get_object_information(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     schema_facets: [
    #       {
    #         schema_arn: "Arn",
    #         facet_name: "FacetName"
    #       }
    #     ],
    #     object_identifier: "ObjectIdentifier"
    #   }
    # @return [Types::GetObjectInformationResponse]
    def get_object_information(params = {}, options = {})
      request = build_request(:get_object_information, params)
      request.send_request(options)
    end

    # <p>Retrieves a JSON representation of the schema. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_jsonformat.html#schemas_json">JSON Schema Format</a> for more information.</p>
    # @param [Hash, Types::GetSchemaAsJsonRequest] params
    # @option params [String] :schema_arn
    #   <p>The ARN of the schema to retrieve.</p>
    # @example To get schema information and display it in JSON format
    #   
    #   params = {
    #     schema_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY/schema/org/1"
    #   }
    #   options = {}
    #   response = client.get_schema_as_json(params, options)
    #   response.to_h #=>
    #   {
    #     document: "{\"sourceSchemaArn\":\"arn:aws:clouddirectory:us-west-2:45132example:schema/published/org/1\",\"facets\":{\"node2\":{\"facetAttributes\":{},\"objectType\":\"NODE\"},\"Organization\":{\"facetAttributes\":{\"account_id\":{\"attributeDefinition\":{\"attributeType\":\"STRING\",\"isImmutable\":false,\"attributeRules\":{\"nameLength\":{\"parameters\":{\"min\":\"1\",\"max\":\"1024\"},\"ruleType\":\"STRING_LENGTH\"}}},\"requiredBehavior\":\"NOT_REQUIRED\"},\"account_name\":{\"attributeDefinition\":{\"attributeType\":\"STRING\",\"isImmutable\":false,\"attributeRules\":{\"nameLength\":{\"parameters\":{\"min\":\"1\",\"max\":\"1024\"},\"ruleType\":\"STRING_LENGTH\"}}},\"requiredBehavior\":\"NOT_REQUIRED\"},\"telephone_number\":{\"attributeDefinition\":{\"attributeType\":\"STRING\",\"isImmutable\":false,\"attributeRules\":{\"nameLength\":{\"parameters\":{\"min\":\"1\",\"max\":\"1024\"},\"ruleType\":\"STRING_LENGTH\"}}},\"requiredBehavior\":\"NOT_REQUIRED\"},\"description\":{\"attributeDefinition\":{\"attributeType\":\"STRING\",\"isImmutable\":false,\"attributeRules\":{\"nameLength\":{\"parameters\":{\"min\":\"1\",\"max\":\"1024\"},\"ruleType\":\"STRING_LENGTH\"}}},\"requiredBehavior\":\"NOT_REQUIRED\"},\"mailing_address_country\":{\"attributeDefinition\":{\"attributeType\":\"STRING\",\"isImmutable\":false,\"attributeRules\":{\"nameLength\":{\"parameters\":{\"min\":\"1\",\"max\":\"1024\"},\"ruleType\":\"STRING_LENGTH\"}}},\"requiredBehavior\":\"NOT_REQUIRED\"},\"mailing_address_state\":{\"attributeDefinition\":{\"attributeType\":\"STRING\",\"isImmutable\":false,\"attributeRules\":{\"nameLength\":{\"parameters\":{\"min\":\"1\",\"max\":\"1024\"},\"ruleType\":\"STRING_LENGTH\"}}},\"requiredBehavior\":\"NOT_REQUIRED\"},\"mailing_address_street2\":{\"attributeDefinition\":{\"attributeType\":\"STRING\",\"isImmutable\":false,\"attributeRules\":{\"nameLength\":{\"parameters\":{\"min\":\"1\",\"max\":\"1024\"},\"ruleType\":\"STRING_LENGTH\"}}},\"requiredBehavior\":\"NOT_REQUIRED\"},\"mailing_address_street1\":{\"attributeDefinition\":{\"attributeType\":\"STRING\",\"isImmutable\":false,\"attributeRules\":{\"nameLength\":{\"parameters\":{\"min\":\"1\",\"max\":\"1024\"},\"ruleType\":\"STRING_LENGTH\"}}},\"requiredBehavior\":\"NOT_REQUIRED\"},\"web_site\":{\"attributeDefinition\":{\"attributeType\":\"STRING\",\"isImmutable\":false,\"attributeRules\":{\"nameLength\":{\"parameters\":{\"min\":\"1\",\"max\":\"1024\"},\"ruleType\":\"STRING_LENGTH\"}}},\"requiredBehavior\":\"NOT_REQUIRED\"},\"email\":{\"attributeDefinition\":{\"attributeType\":\"STRING\",\"isImmutable\":false,\"attributeRules\":{\"nameLength\":{\"parameters\":{\"min\":\"1\",\"max\":\"1024\"},\"ruleType\":\"STRING_LENGTH\"}}},\"requiredBehavior\":\"NOT_REQUIRED\"},\"mailing_address_city\":{\"attributeDefinition\":{\"attributeType\":\"STRING\",\"isImmutable\":false,\"attributeRules\":{\"nameLength\":{\"parameters\":{\"min\":\"1\",\"max\":\"1024\"},\"ruleType\":\"STRING_LENGTH\"}}},\"requiredBehavior\":\"NOT_REQUIRED\"},\"organization_status\":{\"attributeDefinition\":{\"attributeType\":\"STRING\",\"isImmutable\":false,\"attributeRules\":{\"nameLength\":{\"parameters\":{\"min\":\"1\",\"max\":\"1024\"},\"ruleType\":\"STRING_LENGTH\"}}},\"requiredBehavior\":\"NOT_REQUIRED\"},\"mailing_address_postal_code\":{\"attributeDefinition\":{\"attributeType\":\"STRING\",\"isImmutable\":false,\"attributeRules\":{\"nameLength\":{\"parameters\":{\"min\":\"1\",\"max\":\"1024\"},\"ruleType\":\"STRING_LENGTH\"}}},\"requiredBehavior\":\"NOT_REQUIRED\"}},\"objectType\":\"LEAF_NODE\"},\"nodex\":{\"facetAttributes\":{},\"objectType\":\"NODE\"},\"Legal_Entity\":{\"facetAttributes\":{\"industry_vertical\":{\"attributeDefinition\":{\"attributeType\":\"STRING\",\"isImmutable\":false,\"attributeRules\":{\"nameLength\":{\"parameters\":{\"min\":\"1\",\"max\":\"1024\"},\"ruleType\":\"STRING_LENGTH\"}}},\"requiredBehavior\":\"NOT_REQUIRED\"},\"registered_company_name\":{\"attributeDefinition\":{\"attributeType\":\"STRING\",\"isImmutable\":false,\"attributeRules\":{\"nameLength\":{\"parameters\":{\"min\":\"1\",\"max\":\"1024\"},\"ruleType\":\"STRING_LENGTH\"}}},\"requiredBehavior\":\"NOT_REQUIRED\"},\"billing_currency\":{\"attributeDefinition\":{\"attributeType\":\"STRING\",\"isImmutable\":false,\"attributeRules\":{\"nameLength\":{\"parameters\":{\"min\":\"1\",\"max\":\"1024\"},\"ruleType\":\"STRING_LENGTH\"}}},\"requiredBehavior\":\"NOT_REQUIRED\"},\"mailing_address_country\":{\"attributeDefinition\":{\"attributeType\":\"STRING\",\"isImmutable\":false,\"attributeRules\":{\"nameLength\":{\"parameters\":{\"min\":\"1\",\"max\":\"1024\"},\"ruleType\":\"STRING_LENGTH\"}}},\"requiredBehavior\":\"NOT_REQUIRED\"},\"mailing_address_state\":{\"attributeDefinition\":{\"attributeType\":\"STRING\",\"isImmutable\":false,\"attributeRules\":{\"nameLength\":{\"parameters\":{\"min\":\"1\",\"max\":\"1024\"},\"ruleType\":\"STRING_LENGTH\"}}},\"requiredBehavior\":\"NOT_REQUIRED\"},\"mailing_address_street2\":{\"attributeDefinition\":{\"attributeType\":\"STRING\",\"isImmutable\":false,\"attributeRules\":{\"nameLength\":{\"parameters\":{\"min\":\"1\",\"max\":\"1024\"},\"ruleType\":\"STRING_LENGTH\"}}},\"requiredBehavior\":\"NOT_REQUIRED\"},\"mailing_address_street1\":{\"attributeDefinition\":{\"attributeType\":\"STRING\",\"isImmutable\":false,\"attributeRules\":{\"nameLength\":{\"parameters\":{\"min\":\"1\",\"max\":\"1024\"},\"ruleType\":\"STRING_LENGTH\"}}},\"requiredBehavior\":\"NOT_REQUIRED\"},\"tax_id\":{\"attributeDefinition\":{\"attributeType\":\"STRING\",\"isImmutable\":false,\"attributeRules\":{\"nameLength\":{\"parameters\":{\"min\":\"1\",\"max\":\"1024\"},\"ruleType\":\"STRING_LENGTH\"}}},\"requiredBehavior\":\"NOT_REQUIRED\"},\"mailing_address_city\":{\"attributeDefinition\":{\"attributeType\":\"STRING\",\"isImmutable\":false,\"attributeRules\":{\"nameLength\":{\"parameters\":{\"min\":\"1\",\"max\":\"1024\"},\"ruleType\":\"STRING_LENGTH\"}}},\"requiredBehavior\":\"NOT_REQUIRED\"},\"mailing_address_postal_code\":{\"attributeDefinition\":{\"attributeType\":\"STRING\",\"isImmutable\":false,\"attributeRules\":{\"nameLength\":{\"parameters\":{\"min\":\"1\",\"max\":\"1024\"},\"ruleType\":\"STRING_LENGTH\"}}},\"requiredBehavior\":\"NOT_REQUIRED\"}},\"objectType\":\"LEAF_NODE\"},\"policyfacet\":{\"facetAttributes\":{},\"objectType\":\"POLICY\"},\"node1\":{\"facetAttributes\":{},\"objectType\":\"NODE\"}},\"typedLinkFacets\":{\"exampletypedlink\":{\"facetAttributes\":{\"1\":{\"attributeDefinition\":{\"attributeType\":\"BINARY\",\"isImmutable\":false,\"attributeRules\":{}},\"requiredBehavior\":\"REQUIRED_ALWAYS\"}},\"identityAttributeOrder\":[\"1\"]},\"exampletypedlink8\":{\"facetAttributes\":{\"22\":{\"attributeDefinition\":{\"attributeType\":\"BINARY\",\"isImmutable\":false,\"attributeRules\":{}},\"requiredBehavior\":\"REQUIRED_ALWAYS\"}},\"identityAttributeOrder\":[\"22\"]}}}",
    #     name: "org"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     schema_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.get_schema_as_json(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "SchemaName",
    #     document: "SchemaJsonDocument"
    #   }
    # @return [Types::GetSchemaAsJsonResponse]
    def get_schema_as_json(params = {}, options = {})
      request = build_request(:get_schema_as_json, params)
      request.send_request(options)
    end

    # <p>Returns the identity attribute order for a specific <a>TypedLinkFacet</a>. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    # @param [Hash, Types::GetTypedLinkFacetInformationRequest] params
    # @option params [String] :schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the schema. For more
    #         information, see <a>arns</a>.</p>
    # @option params [String] :name
    #   <p>The unique name of the typed link facet.</p>
    # @example To get information about a typed link facet
    #   
    #   params = {
    #     schema_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY/schema/org/1",
    #     name: "exampletypedlink8"
    #   }
    #   options = {}
    #   response = client.get_typed_link_facet_information(params, options)
    #   response.to_h #=>
    #   {
    #     identity_attribute_order: [
    #       "22"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     schema_arn: "Arn", # required
    #     name: "TypedLinkName", # required
    #   }
    #   options = {}
    #   response = client.get_typed_link_facet_information(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_attribute_order: ["AttributeName"]
    #   }
    # @return [Types::GetTypedLinkFacetInformationResponse]
    def get_typed_link_facet_information(params = {}, options = {})
      request = build_request(:get_typed_link_facet_information, params)
      request.send_request(options)
    end

    # <p>Lists schema major versions applied to a directory. If <code>SchemaArn</code> is provided, lists the minor version.</p>
    # @param [Hash, Types::ListAppliedSchemaArnsRequest] params
    # @option params [String] :directory_arn
    #   <p>The ARN of the directory you are listing.</p>
    # @option params [String] :schema_arn
    #   <p>The response for <code>ListAppliedSchemaArns</code> when this parameter is used will list all minor version ARNs for a major version.</p>
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve.</p>
    # @example To list applied schema ARNs for a specified directory
    #   
    #   params = {
    #     directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY"
    #   }
    #   options = {}
    #   response = client.list_applied_schema_arns(params, options)
    #   response.to_h #=>
    #   {
    #     schema_arns: [
    #       "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY/schema/org/1"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "Arn", # required
    #     schema_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_applied_schema_arns(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     schema_arns: ["Arn"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAppliedSchemaArnsResponse]
    def list_applied_schema_arns(params = {}, options = {})
      request = build_request(:list_applied_schema_arns, params)
      request.send_request(options)
    end

    # <p>Lists indices attached to the specified object.</p>
    # @param [Hash, Types::ListAttachedIndicesRequest] params
    # @option params [String] :directory_arn
    #   <p>The ARN of the directory.</p>
    # @option params [Types::ObjectReference] :target_reference
    #   <p>A reference to the object that has indices attached.</p>
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve.</p>
    # @option params [String] :consistency_level
    #   <p>The consistency level to use for this operation.</p>
    # @example To list the indices attached to an object
    #   
    #   params = {
    #     directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY",
    #     target_reference: {
    #       selector: "$AQGG_ADlfNZBzYHY_JgDt3TWcU7IARvOTeaR09zme1sVsw"
    #     }
    #   }
    #   options = {}
    #   response = client.list_attached_indices(params, options)
    #   response.to_h #=>
    #   {
    #     index_attachments: [
    #       {
    #         indexed_attributes: [
    #         ],
    #         object_identifier: "AQGG_ADlfNZBzYHY_JgDt3TW45F26R1HTY2z-stwKBte_Q"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "Arn", # required
    #     target_reference: { # required
    #       selector: "SelectorObjectReference"
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #     consistency_level: "SERIALIZABLE" # One of: ["SERIALIZABLE", "EVENTUAL"]
    #   }
    #   options = {}
    #   response = client.list_attached_indices(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     index_attachments: [
    #       {
    #         indexed_attributes: [
    #           {
    #             key: { # required
    #               schema_arn: "Arn", # required
    #               facet_name: "FacetName", # required
    #               name: "AttributeName", # required
    #             },
    #             value: { # required
    #               # One of:
    #               string_value: "StringAttributeValue",
    #               binary_value: "data",
    #               boolean_value: false,
    #               number_value: "NumberAttributeValue",
    #               datetime_value: Time.now
    #             }
    #           }
    #         ],
    #         object_identifier: "ObjectIdentifier"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAttachedIndicesResponse]
    def list_attached_indices(params = {}, options = {})
      request = build_request(:list_attached_indices, params)
      request.send_request(options)
    end

    # <p>Retrieves each Amazon Resource Name (ARN) of schemas in the development
    #       state.</p>
    # @param [Hash, Types::ListDevelopmentSchemaArnsRequest] params
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve.</p>
    # @example To list all development schema arns in your AWS account
    #   
    #   params = {}
    #   options = {}
    #   response = client.list_development_schema_arns(params, options)
    #   response.to_h #=>
    #   {
    #     schema_arns: [
    #       "arn:aws:clouddirectory:us-west-2:45132example:schema/development/typedlinkschematest",
    #       "arn:aws:clouddirectory:us-west-2:45132example:schema/development/testCDschema",
    #       "arn:aws:clouddirectory:us-west-2:45132example:schema/development/Customers",
    #       "arn:aws:clouddirectory:us-west-2:45132example:schema/development/CourseCatalog",
    #       "arn:aws:clouddirectory:us-west-2:45132example:schema/development/Consumers",
    #       "arn:aws:clouddirectory:us-west-2:45132example:schema/development/exampleorg"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_development_schema_arns(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     schema_arns: ["Arn"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDevelopmentSchemaArnsResponse]
    def list_development_schema_arns(params = {}, options = {})
      request = build_request(:list_development_schema_arns, params)
      request.send_request(options)
    end

    # <p>Lists directories created within an account.</p>
    # @param [Hash, Types::ListDirectoriesRequest] params
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve.</p>
    # @option params [String] :state
    #   <p>The state of the directories in the list. Can be either Enabled, Disabled, or
    #         Deleted.</p>
    # @example To list all directories in your AWS account
    #   
    #   params = {}
    #   options = {}
    #   response = client.list_directories(params, options)
    #   response.to_h #=>
    #   {
    #     directories: [
    #       {
    #         state: ENABLED,
    #         creation_date_time: Time.parse(1506121791.167),
    #         name: "ExampleCD4",
    #         directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/Ae89hOKmw0bRpvYgW8EAsus"
    #       },
    #       {
    #         state: DELETED,
    #         creation_date_time: Time.parse(1485473189.746),
    #         name: "testCD",
    #         directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AXQXDXvdgkOWktRXV4HnRa8"
    #       },
    #       {
    #         state: ENABLED,
    #         creation_date_time: Time.parse(1506115781.186),
    #         name: "ExampleCD",
    #         directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY"
    #       },
    #       {
    #         state: ENABLED,
    #         creation_date_time: Time.parse(1506118003.859),
    #         name: "ExampleCD2",
    #         directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AfMr4qym1kZTvwqOafAYfqI"
    #       },
    #       {
    #         state: DELETED,
    #         creation_date_time: Time.parse(1485477107.925),
    #         name: "testCD2",
    #         directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AWeI1yjiB0SylWVTvQklCD0"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     state: "ENABLED" # One of: ["ENABLED", "DISABLED", "DELETED"]
    #   }
    #   options = {}
    #   response = client.list_directories(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directories: [ # required
    #       {
    #         name: "DirectoryName",
    #         directory_arn: "DirectoryArn",
    #         state: "ENABLED" # One of: ["ENABLED", "DISABLED", "DELETED"],
    #         creation_date_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDirectoriesResponse]
    def list_directories(params = {}, options = {})
      request = build_request(:list_directories, params)
      request.send_request(options)
    end

    # <p>Retrieves attributes attached to the facet.</p>
    # @param [Hash, Types::ListFacetAttributesRequest] params
    # @option params [String] :schema_arn
    #   <p>The ARN of the schema where the facet resides.</p>
    # @option params [String] :name
    #   <p>The name of the facet whose attributes will be retrieved.</p>
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve.</p>
    # @example To list facet attributes
    #   
    #   params = {
    #     schema_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY/schema/org/1",
    #     name: "Organization"
    #   }
    #   options = {}
    #   response = client.list_facet_attributes(params, options)
    #   response.to_h #=>
    #   {
    #     attributes: [
    #       {
    #         attribute_definition: {
    #           rules: {
    #             "nameLength" => {
    #               type: STRING_LENGTH,
    #               parameters: {
    #                 "max" => "1024",
    #                 "min" => "1"
    #               }
    #             }
    #           },
    #           type: STRING,
    #           is_immutable: false
    #         },
    #         required_behavior: NOT_REQUIRED,
    #         name: "account_id"
    #       },
    #       {
    #         attribute_definition: {
    #           rules: {
    #             "nameLength" => {
    #               type: STRING_LENGTH,
    #               parameters: {
    #                 "max" => "1024",
    #                 "min" => "1"
    #               }
    #             }
    #           },
    #           type: STRING,
    #           is_immutable: false
    #         },
    #         required_behavior: NOT_REQUIRED,
    #         name: "account_name"
    #       },
    #       {
    #         attribute_definition: {
    #           rules: {
    #             "nameLength" => {
    #               type: STRING_LENGTH,
    #               parameters: {
    #                 "max" => "1024",
    #                 "min" => "1"
    #               }
    #             }
    #           },
    #           type: STRING,
    #           is_immutable: false
    #         },
    #         required_behavior: NOT_REQUIRED,
    #         name: "description"
    #       },
    #       {
    #         attribute_definition: {
    #           rules: {
    #             "nameLength" => {
    #               type: STRING_LENGTH,
    #               parameters: {
    #                 "max" => "1024",
    #                 "min" => "1"
    #               }
    #             }
    #           },
    #           type: STRING,
    #           is_immutable: false
    #         },
    #         required_behavior: NOT_REQUIRED,
    #         name: "email"
    #       },
    #       {
    #         attribute_definition: {
    #           rules: {
    #             "nameLength" => {
    #               type: STRING_LENGTH,
    #               parameters: {
    #                 "max" => "1024",
    #                 "min" => "1"
    #               }
    #             }
    #           },
    #           type: STRING,
    #           is_immutable: false
    #         },
    #         required_behavior: NOT_REQUIRED,
    #         name: "mailing_address_city"
    #       },
    #       {
    #         attribute_definition: {
    #           rules: {
    #             "nameLength" => {
    #               type: STRING_LENGTH,
    #               parameters: {
    #                 "max" => "1024",
    #                 "min" => "1"
    #               }
    #             }
    #           },
    #           type: STRING,
    #           is_immutable: false
    #         },
    #         required_behavior: NOT_REQUIRED,
    #         name: "mailing_address_country"
    #       },
    #       {
    #         attribute_definition: {
    #           rules: {
    #             "nameLength" => {
    #               type: STRING_LENGTH,
    #               parameters: {
    #                 "max" => "1024",
    #                 "min" => "1"
    #               }
    #             }
    #           },
    #           type: STRING,
    #           is_immutable: false
    #         },
    #         required_behavior: NOT_REQUIRED,
    #         name: "mailing_address_postal_code"
    #       },
    #       {
    #         attribute_definition: {
    #           rules: {
    #             "nameLength" => {
    #               type: STRING_LENGTH,
    #               parameters: {
    #                 "max" => "1024",
    #                 "min" => "1"
    #               }
    #             }
    #           },
    #           type: STRING,
    #           is_immutable: false
    #         },
    #         required_behavior: NOT_REQUIRED,
    #         name: "mailing_address_state"
    #       },
    #       {
    #         attribute_definition: {
    #           rules: {
    #             "nameLength" => {
    #               type: STRING_LENGTH,
    #               parameters: {
    #                 "max" => "1024",
    #                 "min" => "1"
    #               }
    #             }
    #           },
    #           type: STRING,
    #           is_immutable: false
    #         },
    #         required_behavior: NOT_REQUIRED,
    #         name: "mailing_address_street1"
    #       },
    #       {
    #         attribute_definition: {
    #           rules: {
    #             "nameLength" => {
    #               type: STRING_LENGTH,
    #               parameters: {
    #                 "max" => "1024",
    #                 "min" => "1"
    #               }
    #             }
    #           },
    #           type: STRING,
    #           is_immutable: false
    #         },
    #         required_behavior: NOT_REQUIRED,
    #         name: "mailing_address_street2"
    #       }
    #     ],
    #     next_token: "V0b3JnYW5pemF0aW9uX3N0YXR1cw=="
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     schema_arn: "Arn", # required
    #     name: "FacetName", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_facet_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attributes: [
    #       {
    #         name: "AttributeName", # required
    #         attribute_definition: {
    #           type: "STRING" # One of: ["STRING", "BINARY", "BOOLEAN", "NUMBER", "DATETIME", "VARIANT"], # required
    #           default_value: {
    #             # One of:
    #             string_value: "StringAttributeValue",
    #             binary_value: "data",
    #             boolean_value: false,
    #             number_value: "NumberAttributeValue",
    #             datetime_value: Time.now
    #           },
    #           is_immutable: false,
    #           rules: {
    #             "RuleKey" => {
    #               type: "BINARY_LENGTH" # One of: ["BINARY_LENGTH", "NUMBER_COMPARISON", "STRING_FROM_SET", "STRING_LENGTH"],
    #               parameters: {
    #                 "RuleParameterKey" => "RuleParameterValue"
    #               }
    #             }
    #           }
    #         },
    #         attribute_reference: {
    #           target_facet_name: "FacetName", # required
    #           target_attribute_name: "AttributeName", # required
    #         },
    #         required_behavior: "REQUIRED_ALWAYS" # One of: ["REQUIRED_ALWAYS", "NOT_REQUIRED"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListFacetAttributesResponse]
    def list_facet_attributes(params = {}, options = {})
      request = build_request(:list_facet_attributes, params)
      request.send_request(options)
    end

    # <p>Retrieves the names of facets that exist in a schema.</p>
    # @param [Hash, Types::ListFacetNamesRequest] params
    # @option params [String] :schema_arn
    #   <p>The Amazon Resource Name (ARN) to retrieve facet names from.</p>
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve.</p>
    # @example To list facet names
    #   
    #   params = {
    #     schema_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY/schema/org/1"
    #   }
    #   options = {}
    #   response = client.list_facet_names(params, options)
    #   response.to_h #=>
    #   {
    #     facet_names: [
    #       "Legal_Entity",
    #       "Organization",
    #       "node1",
    #       "node2",
    #       "nodex",
    #       "policyfacet"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     schema_arn: "Arn", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_facet_names(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     facet_names: ["FacetName"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListFacetNamesResponse]
    def list_facet_names(params = {}, options = {})
      request = build_request(:list_facet_names, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of all the incoming <a>TypedLinkSpecifier</a>
    #       information for an object. It also supports filtering by typed link facet and identity
    #       attributes. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    # @param [Hash, Types::ListIncomingTypedLinksRequest] params
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) of the directory where you want to list the typed
    #         links.</p>
    # @option params [Types::ObjectReference] :object_reference
    #   <p>Reference that identifies the object whose attributes will be listed.</p>
    # @option params [Array<Types::TypedLinkAttributeRange>] :filter_attribute_ranges
    #   <p>Provides range filters for multiple attributes. When providing ranges to typed link
    #         selection, any inexact ranges must be specified at the end. Any attributes that do not have a
    #         range specified are presumed to match the entire range.</p>
    # @option params [Types::TypedLinkSchemaAndFacetName] :filter_typed_link
    #   <p>Filters are interpreted in the order of the attributes on the typed link facet, not the
    #         order in which they are supplied to any API calls.</p>
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve.</p>
    # @option params [String] :consistency_level
    #   <p>The consistency level to execute the request at.</p>
    # @example To list incoming typed links
    #   
    #   params = {
    #     directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY",
    #     object_reference: {
    #       selector: "$AQGG_ADlfNZBzYHY_JgDt3TWcU7IARvOTeaR09zme1sVsw"
    #     }
    #   }
    #   options = {}
    #   response = client.list_incoming_typed_links(params, options)
    #   response.to_h #=>
    #   {
    #     link_specifiers: [
    #       {
    #         source_object_reference: {
    #           selector: "$AQGG_ADlfNZBzYHY_JgDt3TWSvfuEnDqTdmeCuTs6YBNUA"
    #         },
    #         identity_attribute_values: [
    #           {
    #             attribute_name: "22",
    #             value: {
    #     "BinaryValue" => 
    #   }
    #           }
    #         ],
    #         target_object_reference: {
    #           selector: "$AQGG_ADlfNZBzYHY_JgDt3TWcU7IARvOTeaR09zme1sVsw"
    #         },
    #         typed_link_facet: {
    #           typed_link_name: "exampletypedlink8",
    #           schema_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY/schema/org/1"
    #         }
    #       },
    #       {
    #         source_object_reference: {
    #           selector: "$AQGG_ADlfNZBzYHY_JgDt3TWSvfuEnDqTdmeCuTs6YBNUA"
    #         },
    #         identity_attribute_values: [
    #           {
    #             attribute_name: "22",
    #             value: {
    #     "BinaryValue" => MA==
    #   }
    #           }
    #         ],
    #         target_object_reference: {
    #           selector: "$AQGG_ADlfNZBzYHY_JgDt3TWcU7IARvOTeaR09zme1sVsw"
    #         },
    #         typed_link_facet: {
    #           typed_link_name: "exampletypedlink8",
    #           schema_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY/schema/org/1"
    #         }
    #       },
    #       {
    #         source_object_reference: {
    #           selector: "$AQGG_ADlfNZBzYHY_JgDt3TWSvfuEnDqTdmeCuTs6YBNUA"
    #         },
    #         identity_attribute_values: [
    #           {
    #             attribute_name: "22",
    #             value: {
    #     "BinaryValue" => c3Ry
    #   }
    #           }
    #         ],
    #         target_object_reference: {
    #           selector: "$AQGG_ADlfNZBzYHY_JgDt3TWcU7IARvOTeaR09zme1sVsw"
    #         },
    #         typed_link_facet: {
    #           typed_link_name: "exampletypedlink8",
    #           schema_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY/schema/org/1"
    #         }
    #       }
    #     ],
    #     next_token: ""
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "Arn", # required
    #     object_reference: { # required
    #       selector: "SelectorObjectReference"
    #     },
    #     filter_attribute_ranges: [
    #       {
    #         attribute_name: "AttributeName",
    #         range: { # required
    #           start_mode: "FIRST" # One of: ["FIRST", "LAST", "LAST_BEFORE_MISSING_VALUES", "INCLUSIVE", "EXCLUSIVE"], # required
    #           start_value: {
    #             # One of:
    #             string_value: "StringAttributeValue",
    #             binary_value: "data",
    #             boolean_value: false,
    #             number_value: "NumberAttributeValue",
    #             datetime_value: Time.now
    #           },
    #           end_mode: "FIRST" # One of: ["FIRST", "LAST", "LAST_BEFORE_MISSING_VALUES", "INCLUSIVE", "EXCLUSIVE"], # required
    #           end_value: {
    #             # One of:
    #             string_value: "StringAttributeValue",
    #             binary_value: "data",
    #             boolean_value: false,
    #             number_value: "NumberAttributeValue",
    #             datetime_value: Time.now
    #           }
    #         }
    #       }
    #     ],
    #     filter_typed_link: {
    #       schema_arn: "Arn", # required
    #       typed_link_name: "TypedLinkName", # required
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #     consistency_level: "SERIALIZABLE" # One of: ["SERIALIZABLE", "EVENTUAL"]
    #   }
    #   options = {}
    #   response = client.list_incoming_typed_links(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     link_specifiers: [
    #       {
    #         typed_link_facet: { # required
    #           schema_arn: "Arn", # required
    #           typed_link_name: "TypedLinkName", # required
    #         },
    #         source_object_reference: { # required
    #           selector: "SelectorObjectReference"
    #         },
    #         target_object_reference: { # required
    #           selector: "SelectorObjectReference"
    #         },
    #         identity_attribute_values: [ # required
    #           {
    #             attribute_name: "AttributeName", # required
    #             value: { # required
    #               # One of:
    #               string_value: "StringAttributeValue",
    #               binary_value: "data",
    #               boolean_value: false,
    #               number_value: "NumberAttributeValue",
    #               datetime_value: Time.now
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListIncomingTypedLinksResponse]
    def list_incoming_typed_links(params = {}, options = {})
      request = build_request(:list_incoming_typed_links, params)
      request.send_request(options)
    end

    # <p>Lists objects attached to the specified index.</p>
    # @param [Hash, Types::ListIndexRequest] params
    # @option params [String] :directory_arn
    #   <p>The ARN of the directory that the index exists in.</p>
    # @option params [Array<Types::ObjectAttributeRange>] :ranges_on_indexed_values
    #   <p>Specifies the ranges of indexed values that you want to query.</p>
    # @option params [Types::ObjectReference] :index_reference
    #   <p>The reference to the index to list.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects in a single page to retrieve from the index during a request. For more information, see <a href="http://docs.aws.amazon.com/clouddirectory/latest/developerguide/limits.html">Amazon Cloud Directory Limits</a>.</p>
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @option params [String] :consistency_level
    #   <p>The consistency level to execute the request at.</p>
    # @example To list an index
    #   
    #   params = {
    #     directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY",
    #     index_reference: {
    #       selector: "$AQGG_ADlfNZBzYHY_JgDt3TW45F26R1HTY2z-stwKBte_Q"
    #     }
    #   }
    #   options = {}
    #   response = client.list_index(params, options)
    #   response.to_h #=>
    #   {
    #     index_attachments: [
    #       {
    #         object_identifier: "AQGG_ADlfNZBzYHY_JgDt3TWcU7IARvOTeaR09zme1sVsw",
    #         indexed_attributes: [
    #           {
    #             value: {},
    #             key: {
    #               schema_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY/schema/org/1",
    #               facet_name: "Organization",
    #               name: "description"
    #             }
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "Arn", # required
    #     ranges_on_indexed_values: [
    #       {
    #         attribute_key: {
    #           schema_arn: "Arn", # required
    #           facet_name: "FacetName", # required
    #           name: "AttributeName", # required
    #         },
    #         range: {
    #           start_mode: "FIRST" # One of: ["FIRST", "LAST", "LAST_BEFORE_MISSING_VALUES", "INCLUSIVE", "EXCLUSIVE"], # required
    #           start_value: {
    #             # One of:
    #             string_value: "StringAttributeValue",
    #             binary_value: "data",
    #             boolean_value: false,
    #             number_value: "NumberAttributeValue",
    #             datetime_value: Time.now
    #           },
    #           end_mode: "FIRST" # One of: ["FIRST", "LAST", "LAST_BEFORE_MISSING_VALUES", "INCLUSIVE", "EXCLUSIVE"], # required
    #           end_value: {
    #             # One of:
    #             string_value: "StringAttributeValue",
    #             binary_value: "data",
    #             boolean_value: false,
    #             number_value: "NumberAttributeValue",
    #             datetime_value: Time.now
    #           }
    #         }
    #       }
    #     ],
    #     index_reference: { # required
    #       selector: "SelectorObjectReference"
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #     consistency_level: "SERIALIZABLE" # One of: ["SERIALIZABLE", "EVENTUAL"]
    #   }
    #   options = {}
    #   response = client.list_index(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     index_attachments: [
    #       {
    #         indexed_attributes: [
    #           {
    #             key: { # required
    #               schema_arn: "Arn", # required
    #               facet_name: "FacetName", # required
    #               name: "AttributeName", # required
    #             },
    #             value: { # required
    #               # One of:
    #               string_value: "StringAttributeValue",
    #               binary_value: "data",
    #               boolean_value: false,
    #               number_value: "NumberAttributeValue",
    #               datetime_value: Time.now
    #             }
    #           }
    #         ],
    #         object_identifier: "ObjectIdentifier"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListIndexResponse]
    def list_index(params = {}, options = {})
      request = build_request(:list_index, params)
      request.send_request(options)
    end

    # <p>Lists the major version families of each managed schema. If a major version ARN is provided as SchemaArn, the minor version revisions in that family are listed instead.</p>
    # @param [Hash, Types::ListManagedSchemaArnsRequest] params
    # @option params [String] :schema_arn
    #   <p>The response for ListManagedSchemaArns. When this parameter is used, all minor version ARNs for a major version are listed.</p>
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     schema_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_managed_schema_arns(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     schema_arns: ["Arn"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListManagedSchemaArnsResponse]
    def list_managed_schema_arns(params = {}, options = {})
      request = build_request(:list_managed_schema_arns, params)
      request.send_request(options)
    end

    # <p>Lists all attributes that are associated with an object.
    #       </p>
    # @param [Hash, Types::ListObjectAttributesRequest] params
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where the object resides. For more information, see <a>arns</a>.</p>
    # @option params [Types::ObjectReference] :object_reference
    #   <p>The reference that identifies the object whose attributes will be listed.</p>
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be retrieved in a single call. This is an approximate
    #         number.</p>
    # @option params [String] :consistency_level
    #   <p>Represents the manner and timing in which the successful write or update of an object
    #         is reflected in a subsequent read operation of that same object.</p>
    # @option params [Types::SchemaFacet] :facet_filter
    #   <p>Used to filter the list of object attributes that are associated with a certain
    #         facet.</p>
    # @example To list object attributes
    #   
    #   params = {
    #     directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY",
    #     object_reference: {
    #       selector: "$AQGG_ADlfNZBzYHY_JgDt3TW45F26R1HTY2z-stwKBte_Q"
    #     }
    #   }
    #   options = {}
    #   response = client.list_object_attributes(params, options)
    #   response.to_h #=>
    #   {
    #     attributes: [
    #       {
    #         value: {
    #     "BooleanValue" => true
    #   },
    #         key: {
    #           schema_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY/schema/CloudDirectory/1.0",
    #           facet_name: "INDEX",
    #           name: "index_is_unique"
    #         }
    #       },
    #       {
    #         value: {
    #     "StringValue" => arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY/schema/org/1*Organization*description
    #   },
    #         key: {
    #           schema_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY/schema/CloudDirectory/1.0",
    #           facet_name: "INDEX",
    #           name: "ordered_indexed_attributes"
    #         }
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "Arn", # required
    #     object_reference: { # required
    #       selector: "SelectorObjectReference"
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #     consistency_level: "SERIALIZABLE" # One of: ["SERIALIZABLE", "EVENTUAL"],
    #     facet_filter: {
    #       schema_arn: "Arn",
    #       facet_name: "FacetName"
    #     }
    #   }
    #   options = {}
    #   response = client.list_object_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attributes: [
    #       {
    #         key: { # required
    #           schema_arn: "Arn", # required
    #           facet_name: "FacetName", # required
    #           name: "AttributeName", # required
    #         },
    #         value: { # required
    #           # One of:
    #           string_value: "StringAttributeValue",
    #           binary_value: "data",
    #           boolean_value: false,
    #           number_value: "NumberAttributeValue",
    #           datetime_value: Time.now
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListObjectAttributesResponse]
    def list_object_attributes(params = {}, options = {})
      request = build_request(:list_object_attributes, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of child objects that are associated with a given
    #       object.</p>
    # @param [Hash, Types::ListObjectChildrenRequest] params
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where the object resides. For more information, see <a>arns</a>.</p>
    # @option params [Types::ObjectReference] :object_reference
    #   <p>The reference that identifies the object for which child objects are being
    #         listed.</p>
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be retrieved in a single call. This is an approximate
    #         number.</p>
    # @option params [String] :consistency_level
    #   <p>Represents the manner and timing in which the successful write or update of an object
    #         is reflected in a subsequent read operation of that same object.</p>
    # @example To list an objects children
    #   
    #   params = {
    #     directory_arn: "arn:aws:clouddirectory:us-west-2:45132example:directory/AYb8AOV81kHNgdj8mAO3dNY",
    #     object_reference: {
    #       selector: "$AQGG_ADlfNZBzYHY_JgDt3TWcU7IARvOTeaR09zme1sVsw"
    #     }
    #   }
    #   options = {}
    #   response = client.list_object_children(params, options)
    #   response.to_h #=>
    #   {
    #     children: {
    #       "link2" => "AQGG_ADlfNZBzYHY_JgDt3TWSvfuEnDqTdmeCuTs6YBNUA"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "Arn", # required
    #     object_reference: { # required
    #       selector: "SelectorObjectReference"
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #     consistency_level: "SERIALIZABLE" # One of: ["SERIALIZABLE", "EVENTUAL"]
    #   }
    #   options = {}
    #   response = client.list_object_children(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     children: {
    #       "LinkName" => "ObjectIdentifier"
    #     },
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListObjectChildrenResponse]
    def list_object_children(params = {}, options = {})
      request = build_request(:list_object_children, params)
      request.send_request(options)
    end

    # <p>Retrieves all available parent paths for any object type such as node, leaf node,
    #       policy node, and index node objects. For more information about objects, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directorystructure.html">Directory Structure</a>.</p>
    #          <p>Use this API to evaluate all parents for an object. The call returns all objects from
    #       the root of the directory up to the requested object. The API returns the number of paths
    #       based on user-defined <code>MaxResults</code>, in case there are multiple paths to the parent.
    #       The order of the paths and nodes returned is consistent among multiple API calls unless the
    #       objects are deleted or moved. Paths not leading to the directory root are ignored from the
    #       target object.</p>
    # @param [Hash, Types::ListObjectParentPathsRequest] params
    # @option params [String] :directory_arn
    #   <p>The ARN of the directory to which the parent path applies.</p>
    # @option params [Types::ObjectReference] :object_reference
    #   <p>The reference that identifies the object whose parent paths are listed.</p>
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be retrieved in a single call. This is an approximate
    #         number.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "Arn", # required
    #     object_reference: { # required
    #       selector: "SelectorObjectReference"
    #     },
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_object_parent_paths(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     path_to_object_identifiers_list: [
    #       {
    #         path: "PathString",
    #         object_identifiers: ["ObjectIdentifier"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListObjectParentPathsResponse]
    def list_object_parent_paths(params = {}, options = {})
      request = build_request(:list_object_parent_paths, params)
      request.send_request(options)
    end

    # <p>Lists parent objects that are associated with a given object in pagination
    #       fashion.</p>
    # @param [Hash, Types::ListObjectParentsRequest] params
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where the object resides. For more information, see <a>arns</a>.</p>
    # @option params [Types::ObjectReference] :object_reference
    #   <p>The reference that identifies the object for which parent objects are being
    #         listed.</p>
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be retrieved in a single call. This is an approximate
    #         number.</p>
    # @option params [String] :consistency_level
    #   <p>Represents the manner and timing in which the successful write or update of an object
    #         is reflected in a subsequent read operation of that same object.</p>
    # @option params [Boolean] :include_all_links_to_each_parent
    #   <p>When set to True, returns all <a>ListObjectParentsResponse$ParentLinks</a>. There could be multiple links between a parent-child pair.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "Arn", # required
    #     object_reference: { # required
    #       selector: "SelectorObjectReference"
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #     consistency_level: "SERIALIZABLE" # One of: ["SERIALIZABLE", "EVENTUAL"],
    #     include_all_links_to_each_parent: false
    #   }
    #   options = {}
    #   response = client.list_object_parents(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     parents: {
    #       "ObjectIdentifier" => "LinkName"
    #     },
    #     next_token: "NextToken",
    #     parent_links: [
    #       {
    #         object_identifier: "ObjectIdentifier",
    #         link_name: "LinkName"
    #       }
    #     ]
    #   }
    # @return [Types::ListObjectParentsResponse]
    def list_object_parents(params = {}, options = {})
      request = build_request(:list_object_parents, params)
      request.send_request(options)
    end

    # <p>Returns policies attached to an object in pagination fashion.</p>
    # @param [Hash, Types::ListObjectPoliciesRequest] params
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where objects reside. For more information, see <a>arns</a>.</p>
    # @option params [Types::ObjectReference] :object_reference
    #   <p>Reference that identifies the object for which policies will be listed.</p>
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be retrieved in a single call. This is an approximate
    #         number.</p>
    # @option params [String] :consistency_level
    #   <p>Represents the manner and timing in which the successful write or update of an object
    #         is reflected in a subsequent read operation of that same object.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "Arn", # required
    #     object_reference: { # required
    #       selector: "SelectorObjectReference"
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #     consistency_level: "SERIALIZABLE" # One of: ["SERIALIZABLE", "EVENTUAL"]
    #   }
    #   options = {}
    #   response = client.list_object_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attached_policy_ids: ["ObjectIdentifier"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListObjectPoliciesResponse]
    def list_object_policies(params = {}, options = {})
      request = build_request(:list_object_policies, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of all the outgoing <a>TypedLinkSpecifier</a>
    #       information for an object. It also supports filtering by typed link facet and identity
    #       attributes. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    # @param [Hash, Types::ListOutgoingTypedLinksRequest] params
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) of the directory where you want to list the typed
    #         links.</p>
    # @option params [Types::ObjectReference] :object_reference
    #   <p>A reference that identifies the object whose attributes will be listed.</p>
    # @option params [Array<Types::TypedLinkAttributeRange>] :filter_attribute_ranges
    #   <p>Provides range filters for multiple attributes. When providing ranges to typed link
    #         selection, any inexact ranges must be specified at the end. Any attributes that do not have a
    #         range specified are presumed to match the entire range.</p>
    # @option params [Types::TypedLinkSchemaAndFacetName] :filter_typed_link
    #   <p>Filters are interpreted in the order of the attributes defined on the typed link facet,
    #         not the order they are supplied to any API calls.</p>
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve.</p>
    # @option params [String] :consistency_level
    #   <p>The consistency level to execute the request at.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "Arn", # required
    #     object_reference: { # required
    #       selector: "SelectorObjectReference"
    #     },
    #     filter_attribute_ranges: [
    #       {
    #         attribute_name: "AttributeName",
    #         range: { # required
    #           start_mode: "FIRST" # One of: ["FIRST", "LAST", "LAST_BEFORE_MISSING_VALUES", "INCLUSIVE", "EXCLUSIVE"], # required
    #           start_value: {
    #             # One of:
    #             string_value: "StringAttributeValue",
    #             binary_value: "data",
    #             boolean_value: false,
    #             number_value: "NumberAttributeValue",
    #             datetime_value: Time.now
    #           },
    #           end_mode: "FIRST" # One of: ["FIRST", "LAST", "LAST_BEFORE_MISSING_VALUES", "INCLUSIVE", "EXCLUSIVE"], # required
    #           end_value: {
    #             # One of:
    #             string_value: "StringAttributeValue",
    #             binary_value: "data",
    #             boolean_value: false,
    #             number_value: "NumberAttributeValue",
    #             datetime_value: Time.now
    #           }
    #         }
    #       }
    #     ],
    #     filter_typed_link: {
    #       schema_arn: "Arn", # required
    #       typed_link_name: "TypedLinkName", # required
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #     consistency_level: "SERIALIZABLE" # One of: ["SERIALIZABLE", "EVENTUAL"]
    #   }
    #   options = {}
    #   response = client.list_outgoing_typed_links(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     typed_link_specifiers: [
    #       {
    #         typed_link_facet: { # required
    #           schema_arn: "Arn", # required
    #           typed_link_name: "TypedLinkName", # required
    #         },
    #         source_object_reference: { # required
    #           selector: "SelectorObjectReference"
    #         },
    #         target_object_reference: { # required
    #           selector: "SelectorObjectReference"
    #         },
    #         identity_attribute_values: [ # required
    #           {
    #             attribute_name: "AttributeName", # required
    #             value: { # required
    #               # One of:
    #               string_value: "StringAttributeValue",
    #               binary_value: "data",
    #               boolean_value: false,
    #               number_value: "NumberAttributeValue",
    #               datetime_value: Time.now
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListOutgoingTypedLinksResponse]
    def list_outgoing_typed_links(params = {}, options = {})
      request = build_request(:list_outgoing_typed_links, params)
      request.send_request(options)
    end

    # <p>Returns all of the <code>ObjectIdentifiers</code> to which a given policy is attached.</p>
    # @param [Hash, Types::ListPolicyAttachmentsRequest] params
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where objects reside. For more information, see <a>arns</a>.</p>
    # @option params [Types::ObjectReference] :policy_reference
    #   <p>The reference that identifies the policy object.</p>
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be retrieved in a single call. This is an approximate
    #         number.</p>
    # @option params [String] :consistency_level
    #   <p>Represents the manner and timing in which the successful write or update of an object
    #         is reflected in a subsequent read operation of that same object.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "Arn", # required
    #     policy_reference: { # required
    #       selector: "SelectorObjectReference"
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #     consistency_level: "SERIALIZABLE" # One of: ["SERIALIZABLE", "EVENTUAL"]
    #   }
    #   options = {}
    #   response = client.list_policy_attachments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     object_identifiers: ["ObjectIdentifier"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPolicyAttachmentsResponse]
    def list_policy_attachments(params = {}, options = {})
      request = build_request(:list_policy_attachments, params)
      request.send_request(options)
    end

    # <p>Lists the major version families of each published schema. If a major version ARN is provided as <code>SchemaArn</code>, the minor version revisions in that family are listed instead.</p>
    # @param [Hash, Types::ListPublishedSchemaArnsRequest] params
    # @option params [String] :schema_arn
    #   <p>The response for <code>ListPublishedSchemaArns</code> when this parameter is used will list all minor version ARNs for a major version.</p>
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     schema_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_published_schema_arns(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     schema_arns: ["Arn"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPublishedSchemaArnsResponse]
    def list_published_schema_arns(params = {}, options = {})
      request = build_request(:list_published_schema_arns, params)
      request.send_request(options)
    end

    # <p>Returns tags for a resource. Tagging is currently supported only for directories with a
    #       limit of 50 tags per directory. All 50 tags are returned for a given directory with this API
    #       call.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. Tagging is only supported for
    #         directories.</p>
    # @option params [String] :next_token
    #   <p>The pagination token. This is for future use. Currently pagination is not supported for
    #         tagging.</p>
    # @option params [Integer] :max_results
    #   <p>The <code>MaxResults</code> parameter sets the maximum number of results returned in a
    #         single page. This is for future use and is not supported currently.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of all attribute definitions for a particular <a>TypedLinkFacet</a>. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    # @param [Hash, Types::ListTypedLinkFacetAttributesRequest] params
    # @option params [String] :schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the schema. For more
    #         information, see <a>arns</a>.</p>
    # @option params [String] :name
    #   <p>The unique name of the typed link facet.</p>
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     schema_arn: "Arn", # required
    #     name: "TypedLinkName", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_typed_link_facet_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attributes: [
    #       {
    #         name: "AttributeName", # required
    #         type: "STRING" # One of: ["STRING", "BINARY", "BOOLEAN", "NUMBER", "DATETIME", "VARIANT"], # required
    #         default_value: {
    #           # One of:
    #           string_value: "StringAttributeValue",
    #           binary_value: "data",
    #           boolean_value: false,
    #           number_value: "NumberAttributeValue",
    #           datetime_value: Time.now
    #         },
    #         is_immutable: false,
    #         rules: {
    #           "RuleKey" => {
    #             type: "BINARY_LENGTH" # One of: ["BINARY_LENGTH", "NUMBER_COMPARISON", "STRING_FROM_SET", "STRING_LENGTH"],
    #             parameters: {
    #               "RuleParameterKey" => "RuleParameterValue"
    #             }
    #           }
    #         },
    #         required_behavior: "REQUIRED_ALWAYS" # One of: ["REQUIRED_ALWAYS", "NOT_REQUIRED"], # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTypedLinkFacetAttributesResponse]
    def list_typed_link_facet_attributes(params = {}, options = {})
      request = build_request(:list_typed_link_facet_attributes, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of <code>TypedLink</code> facet names for a particular schema.
    #       For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    # @param [Hash, Types::ListTypedLinkFacetNamesRequest] params
    # @option params [String] :schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the schema. For more
    #         information, see <a>arns</a>.</p>
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     schema_arn: "Arn", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_typed_link_facet_names(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     facet_names: ["TypedLinkName"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTypedLinkFacetNamesResponse]
    def list_typed_link_facet_names(params = {}, options = {})
      request = build_request(:list_typed_link_facet_names, params)
      request.send_request(options)
    end

    # <p>Lists all policies from the root of the <a>Directory</a> to the object
    #       specified. If there are no policies present, an empty list is returned. If policies are
    #       present, and if some objects don't have the policies attached, it returns the <code>ObjectIdentifier</code>
    #       for such objects. If policies are present, it returns <code>ObjectIdentifier</code>, <code>policyId</code>, and
    #       <code>policyType</code>. Paths that don't lead to the root from the target object are ignored. For more
    #       information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies">Policies</a>.</p>
    # @param [Hash, Types::LookupPolicyRequest] params
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>.
    #         For more information, see <a>arns</a>.</p>
    # @option params [Types::ObjectReference] :object_reference
    #   <p>Reference that identifies the object whose policies will be looked up.</p>
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be retrieved in a single call. This is an approximate
    #         number.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "Arn", # required
    #     object_reference: { # required
    #       selector: "SelectorObjectReference"
    #     },
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.lookup_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_to_path_list: [
    #       {
    #         path: "PathString",
    #         policies: [
    #           {
    #             policy_id: "ObjectIdentifier",
    #             object_identifier: "ObjectIdentifier",
    #             policy_type: "PolicyType"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::LookupPolicyResponse]
    def lookup_policy(params = {}, options = {})
      request = build_request(:lookup_policy, params)
      request.send_request(options)
    end

    # <p>Publishes a development schema with a major version and a recommended minor version.</p>
    # @param [Hash, Types::PublishSchemaRequest] params
    # @option params [String] :development_schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the development schema. For
    #         more information, see <a>arns</a>.</p>
    # @option params [String] :version
    #   <p>The major version under which the schema will be published. Schemas have both a major and minor version associated with them.</p>
    # @option params [String] :minor_version
    #   <p>The minor version under which the schema will be published. This parameter is recommended. Schemas have both a major and minor version associated with them.</p>
    # @option params [String] :name
    #   <p>The new name under which the schema will be published. If this is not provided, the
    #         development schema is considered.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     development_schema_arn: "Arn", # required
    #     version: "Version", # required
    #     minor_version: "Version",
    #     name: "SchemaName"
    #   }
    #   options = {}
    #   response = client.publish_schema(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     published_schema_arn: "Arn"
    #   }
    # @return [Types::PublishSchemaResponse]
    def publish_schema(params = {}, options = {})
      request = build_request(:publish_schema, params)
      request.send_request(options)
    end

    # <p>Allows a schema to be updated using JSON upload. Only available for development schemas. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_jsonformat.html#schemas_json">JSON Schema Format</a> for more information.</p>
    # @param [Hash, Types::PutSchemaFromJsonRequest] params
    # @option params [String] :schema_arn
    #   <p>The ARN of the schema to update.</p>
    # @option params [String] :document
    #   <p>The replacement JSON schema.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     schema_arn: "Arn", # required
    #     document: "SchemaJsonDocument", # required
    #   }
    #   options = {}
    #   response = client.put_schema_from_json(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn"
    #   }
    # @return [Types::PutSchemaFromJsonResponse]
    def put_schema_from_json(params = {}, options = {})
      request = build_request(:put_schema_from_json, params)
      request.send_request(options)
    end

    # <p>Removes the specified facet from the specified object.</p>
    # @param [Hash, Types::RemoveFacetFromObjectRequest] params
    # @option params [String] :directory_arn
    #   <p>The ARN of the directory in which the object resides.</p>
    # @option params [Types::SchemaFacet] :schema_facet
    #   <p>The facet to remove. See <a>SchemaFacet</a> for details.</p>
    # @option params [Types::ObjectReference] :object_reference
    #   <p>A reference to the object to remove the facet from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "Arn", # required
    #     schema_facet: { # required
    #       schema_arn: "Arn",
    #       facet_name: "FacetName"
    #     },
    #     object_reference: { # required
    #       selector: "SelectorObjectReference"
    #     }
    #   }
    #   options = {}
    #   response = client.remove_facet_from_object(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RemoveFacetFromObjectResponse]
    def remove_facet_from_object(params = {}, options = {})
      request = build_request(:remove_facet_from_object, params)
      request.send_request(options)
    end

    # <p>An API operation for adding tags to a resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. Tagging is only supported for
    #         directories.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tag key-value pairs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
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

    # <p>An API operation for removing tags from a resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. Tagging is only supported for
    #         directories.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Keys of the tag that need to be removed from the resource.</p>
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
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Does the following:</p>
    #          <ol>
    #             <li>
    #                <p>Adds new <code>Attributes</code>, <code>Rules</code>, or <code>ObjectTypes</code>.</p>
    #             </li>
    #             <li>
    #                <p>Updates existing <code>Attributes</code>, <code>Rules</code>, or <code>ObjectTypes</code>.</p>
    #             </li>
    #             <li>
    #                <p>Deletes existing <code>Attributes</code>, <code>Rules</code>, or <code>ObjectTypes</code>.</p>
    #             </li>
    #          </ol>
    # @param [Hash, Types::UpdateFacetRequest] params
    # @option params [String] :schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Facet</a>.
    #         For more information, see <a>arns</a>.</p>
    # @option params [String] :name
    #   <p>The name of the facet.</p>
    # @option params [Array<Types::FacetAttributeUpdate>] :attribute_updates
    #   <p>List of attributes that need to be updated in a given schema <a>Facet</a>.
    #         Each attribute is followed by <code>AttributeAction</code>, which specifies the type of update
    #         operation to perform. </p>
    # @option params [String] :object_type
    #   <p>The object type that is associated with the facet. See <a>CreateFacetRequest$ObjectType</a> for more details.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     schema_arn: "Arn", # required
    #     name: "FacetName", # required
    #     attribute_updates: [
    #       {
    #         attribute: {
    #           name: "AttributeName", # required
    #           attribute_definition: {
    #             type: "STRING" # One of: ["STRING", "BINARY", "BOOLEAN", "NUMBER", "DATETIME", "VARIANT"], # required
    #             default_value: {
    #               # One of:
    #               string_value: "StringAttributeValue",
    #               binary_value: "data",
    #               boolean_value: false,
    #               number_value: "NumberAttributeValue",
    #               datetime_value: Time.now
    #             },
    #             is_immutable: false,
    #             rules: {
    #               "RuleKey" => {
    #                 type: "BINARY_LENGTH" # One of: ["BINARY_LENGTH", "NUMBER_COMPARISON", "STRING_FROM_SET", "STRING_LENGTH"],
    #                 parameters: {
    #                   "RuleParameterKey" => "RuleParameterValue"
    #                 }
    #               }
    #             }
    #           },
    #           attribute_reference: {
    #             target_facet_name: "FacetName", # required
    #             target_attribute_name: "AttributeName", # required
    #           },
    #           required_behavior: "REQUIRED_ALWAYS" # One of: ["REQUIRED_ALWAYS", "NOT_REQUIRED"]
    #         },
    #         action: "CREATE_OR_UPDATE" # One of: ["CREATE_OR_UPDATE", "DELETE"]
    #       }
    #     ],
    #     object_type: "NODE" # One of: ["NODE", "LEAF_NODE", "POLICY", "INDEX"]
    #   }
    #   options = {}
    #   response = client.update_facet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateFacetResponse]
    def update_facet(params = {}, options = {})
      request = build_request(:update_facet, params)
      request.send_request(options)
    end

    # <p>Updates a given typed link’s attributes. Attributes to be updated must not contribute to the typed link’s identity, as defined by its <code>IdentityAttributeOrder</code>.</p>
    # @param [Hash, Types::UpdateLinkAttributesRequest] params
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the Directory where the updated typed link resides. For more information, see <a>arns</a> or <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    # @option params [Types::TypedLinkSpecifier] :typed_link_specifier
    #   <p>Allows a typed link specifier to be accepted as input.</p>
    # @option params [Array<Types::LinkAttributeUpdate>] :attribute_updates
    #   <p>The attributes update structure.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "Arn", # required
    #     typed_link_specifier: { # required
    #       typed_link_facet: { # required
    #         schema_arn: "Arn", # required
    #         typed_link_name: "TypedLinkName", # required
    #       },
    #       source_object_reference: { # required
    #         selector: "SelectorObjectReference"
    #       },
    #       target_object_reference: { # required
    #         selector: "SelectorObjectReference"
    #       },
    #       identity_attribute_values: [ # required
    #         {
    #           attribute_name: "AttributeName", # required
    #           value: { # required
    #             # One of:
    #             string_value: "StringAttributeValue",
    #             binary_value: "data",
    #             boolean_value: false,
    #             number_value: "NumberAttributeValue",
    #             datetime_value: Time.now
    #           }
    #         }
    #       ]
    #     },
    #     attribute_updates: [ # required
    #       {
    #         attribute_key: {
    #           schema_arn: "Arn", # required
    #           facet_name: "FacetName", # required
    #           name: "AttributeName", # required
    #         },
    #         attribute_action: {
    #           attribute_action_type: "CREATE_OR_UPDATE" # One of: ["CREATE_OR_UPDATE", "DELETE"],
    #           attribute_update_value: {
    #             # One of:
    #             string_value: "StringAttributeValue",
    #             binary_value: "data",
    #             boolean_value: false,
    #             number_value: "NumberAttributeValue",
    #             datetime_value: Time.now
    #           }
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_link_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateLinkAttributesResponse]
    def update_link_attributes(params = {}, options = {})
      request = build_request(:update_link_attributes, params)
      request.send_request(options)
    end

    # <p>Updates a given object's attributes.</p>
    # @param [Hash, Types::UpdateObjectAttributesRequest] params
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where the object resides. For more information, see <a>arns</a>.</p>
    # @option params [Types::ObjectReference] :object_reference
    #   <p>The reference that identifies the object.</p>
    # @option params [Array<Types::ObjectAttributeUpdate>] :attribute_updates
    #   <p>The attributes update structure.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_arn: "Arn", # required
    #     object_reference: { # required
    #       selector: "SelectorObjectReference"
    #     },
    #     attribute_updates: [ # required
    #       {
    #         object_attribute_key: {
    #           schema_arn: "Arn", # required
    #           facet_name: "FacetName", # required
    #           name: "AttributeName", # required
    #         },
    #         object_attribute_action: {
    #           object_attribute_action_type: "CREATE_OR_UPDATE" # One of: ["CREATE_OR_UPDATE", "DELETE"],
    #           object_attribute_update_value: {
    #             # One of:
    #             string_value: "StringAttributeValue",
    #             binary_value: "data",
    #             boolean_value: false,
    #             number_value: "NumberAttributeValue",
    #             datetime_value: Time.now
    #           }
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_object_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     object_identifier: "ObjectIdentifier"
    #   }
    # @return [Types::UpdateObjectAttributesResponse]
    def update_object_attributes(params = {}, options = {})
      request = build_request(:update_object_attributes, params)
      request.send_request(options)
    end

    # <p>Updates the schema name with a new name. Only development schema names can be
    #       updated.</p>
    # @param [Hash, Types::UpdateSchemaRequest] params
    # @option params [String] :schema_arn
    #   <p>The Amazon Resource Name (ARN) of the development schema. For more information, see
    #           <a>arns</a>.</p>
    # @option params [String] :name
    #   <p>The name of the schema.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     schema_arn: "Arn", # required
    #     name: "SchemaName", # required
    #   }
    #   options = {}
    #   response = client.update_schema(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     schema_arn: "Arn"
    #   }
    # @return [Types::UpdateSchemaResponse]
    def update_schema(params = {}, options = {})
      request = build_request(:update_schema, params)
      request.send_request(options)
    end

    # <p>Updates a <a>TypedLinkFacet</a>. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    # @param [Hash, Types::UpdateTypedLinkFacetRequest] params
    # @option params [String] :schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the schema. For more
    #         information, see <a>arns</a>.</p>
    # @option params [String] :name
    #   <p>The unique name of the typed link facet.</p>
    # @option params [Array<Types::TypedLinkFacetAttributeUpdate>] :attribute_updates
    #   <p>Attributes update structure.</p>
    # @option params [Array<String>] :identity_attribute_order
    #   <p>The order of identity attributes for the facet, from most significant to least significant. The ability to filter typed
    #         links considers the order that the attributes are defined on the typed link facet.  When
    #         providing ranges to a typed link selection, any inexact ranges must be specified at the end.
    #         Any attributes that do not have a range specified are presumed to match the entire range.
    #         Filters are interpreted in the order of the attributes on the typed link facet, not the order
    #         in which they are supplied to any API calls. For more information about identity attributes, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     schema_arn: "Arn", # required
    #     name: "TypedLinkName", # required
    #     attribute_updates: [ # required
    #       {
    #         attribute: { # required
    #           name: "AttributeName", # required
    #           type: "STRING" # One of: ["STRING", "BINARY", "BOOLEAN", "NUMBER", "DATETIME", "VARIANT"], # required
    #           default_value: {
    #             # One of:
    #             string_value: "StringAttributeValue",
    #             binary_value: "data",
    #             boolean_value: false,
    #             number_value: "NumberAttributeValue",
    #             datetime_value: Time.now
    #           },
    #           is_immutable: false,
    #           rules: {
    #             "RuleKey" => {
    #               type: "BINARY_LENGTH" # One of: ["BINARY_LENGTH", "NUMBER_COMPARISON", "STRING_FROM_SET", "STRING_LENGTH"],
    #               parameters: {
    #                 "RuleParameterKey" => "RuleParameterValue"
    #               }
    #             }
    #           },
    #           required_behavior: "REQUIRED_ALWAYS" # One of: ["REQUIRED_ALWAYS", "NOT_REQUIRED"], # required
    #         },
    #         action: "CREATE_OR_UPDATE" # One of: ["CREATE_OR_UPDATE", "DELETE"], # required
    #       }
    #     ],
    #     identity_attribute_order: ["AttributeName"], # required
    #   }
    #   options = {}
    #   response = client.update_typed_link_facet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateTypedLinkFacetResponse]
    def update_typed_link_facet(params = {}, options = {})
      request = build_request(:update_typed_link_facet, params)
      request.send_request(options)
    end

    # <p>Upgrades a single directory in-place using the <code>PublishedSchemaArn</code> with schema updates found in <code>MinorVersion</code>. Backwards-compatible minor version upgrades are instantaneously available for readers on all objects in the directory. Note: This is a synchronous API call and upgrades only one schema on a given directory per call. To upgrade multiple directories from one schema, you would need to call this API on each directory.</p>
    # @param [Hash, Types::UpgradeAppliedSchemaRequest] params
    # @option params [String] :published_schema_arn
    #   <p>The revision of the published schema to upgrade the directory to.</p>
    # @option params [String] :directory_arn
    #   <p>The ARN for the directory to which the upgraded schema will be applied.</p>
    # @option params [Boolean] :dry_run
    #   <p>Used for testing whether the major version schemas are backward compatible or not. If schema compatibility fails, an exception would be thrown else the call would succeed but no changes will be saved. This parameter is optional.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     published_schema_arn: "Arn", # required
    #     directory_arn: "Arn", # required
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.upgrade_applied_schema(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     upgraded_schema_arn: "Arn",
    #     directory_arn: "Arn"
    #   }
    # @return [Types::UpgradeAppliedSchemaResponse]
    def upgrade_applied_schema(params = {}, options = {})
      request = build_request(:upgrade_applied_schema, params)
      request.send_request(options)
    end

    # <p>Upgrades a published schema under a new minor version revision using the current contents of <code>DevelopmentSchemaArn</code>.</p>
    # @param [Hash, Types::UpgradePublishedSchemaRequest] params
    # @option params [String] :development_schema_arn
    #   <p>The ARN of the development schema with the changes used for the upgrade.</p>
    # @option params [String] :published_schema_arn
    #   <p>The ARN of the published schema to be upgraded.</p>
    # @option params [String] :minor_version
    #   <p>Identifies the minor version of the published schema that will be created. This parameter is NOT optional.</p>
    # @option params [Boolean] :dry_run
    #   <p>Used for testing whether the Development schema provided is backwards compatible, or not, with the publish schema provided by the user to be upgraded. If schema compatibility fails, an exception would be thrown else the call would succeed. This parameter is optional and defaults to false.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     development_schema_arn: "Arn", # required
    #     published_schema_arn: "Arn", # required
    #     minor_version: "Version", # required
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.upgrade_published_schema(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     upgraded_schema_arn: "Arn"
    #   }
    # @return [Types::UpgradePublishedSchemaResponse]
    def upgrade_published_schema(params = {}, options = {})
      request = build_request(:upgrade_published_schema, params)
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
      context[:gem_name] = 'aws-sdk-clouddirectory'
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
