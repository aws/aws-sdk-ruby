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

module Aws::ServiceCatalogAppRegistry
  # An API client for Aws::ServiceCatalogAppRegistry.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWS242AppRegistry

    add_plugin(::Aws::ServiceCatalogAppRegistry::Plugins::Endpoint)
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
    # @option options [Aws::ServiceCatalogAppRegistry::EndpointProvider] :endpoint_provider
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

    # <p>Associates an attribute group with an application to augment the application's metadata
    #       with the group's attributes. This feature enables applications to be described with
    #       user-defined details that are machine-readable, such as third-party integrations.</p>
    # @param [Hash, Types::AssociateAttributeGroupRequest] params
    # @option params [String] :application
    #   <p>
    #          The name, ID, or ARN 
    #          of the application.
    #        </p>
    # @option params [String] :attribute_group
    #   <p>
    #          The name, ID, or ARN 
    #          of the attribute group 
    #          that holds the attributes 
    #          to describe the application.
    #        </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application: "ApplicationSpecifier", # required
    #     attribute_group: "AttributeGroupSpecifier", # required
    #   }
    #   options = {}
    #   response = client.associate_attribute_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_arn: "ApplicationArn",
    #     attribute_group_arn: "AttributeGroupArn"
    #   }
    # @return [Types::AssociateAttributeGroupResponse]
    def associate_attribute_group(params = {}, options = {})
      request = build_request(:associate_attribute_group, params)
      request.send_request(options)
    end

    # <p>
    #        Associates a resource with an application. 
    #        The resource can be specified by its ARN or name. 
    #        The application can be specified by ARN, ID, or name.
    #      </p>
    #          <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>
    #        You must have the following permissions to associate a resource using the <code>OPTIONS</code> parameter set to <code>APPLY_APPLICATION_TAG</code>.
    #      </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>tag:GetResources</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>tag:TagResources</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #        You must also have these additional permissions if you don't use the <code>AWSServiceCatalogAppRegistryFullAccess</code> policy. 
    #        For more information, see <a href="https://docs.aws.amazon.com/servicecatalog/latest/arguide/full.html">AWSServiceCatalogAppRegistryFullAccess</a> in the AppRegistry Administrator Guide.
    #      </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>resource-groups:AssociateResource</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>cloudformation:UpdateStack</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>cloudformation:DescribeStacks</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>
    #          In addition, you must have the tagging permission defined by the Amazon Web Services service that creates the resource. 
    #          For more information, see <a href="https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/API_TagResources.html">TagResources</a> in the <i>Resource Groups Tagging API Reference</i>.
    #        </p>
    #          </note>
    # @param [Hash, Types::AssociateResourceRequest] params
    # @option params [String] :application
    #   <p>
    #          The name, ID, or ARN 
    #          of the application.
    #        </p>
    # @option params [String] :resource_type
    #   <p>The type of resource of which the application will be associated.</p>
    # @option params [String] :resource
    #   <p>The name or ID of the resource of which the application will be associated.</p>
    # @option params [Array<String>] :options
    #   <p>
    #         Determines whether an application tag is applied or skipped.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application: "ApplicationSpecifier", # required
    #     resource_type: "CFN_STACK" # One of: ["CFN_STACK", "RESOURCE_TAG_VALUE"], # required
    #     resource: "ResourceSpecifier", # required
    #     options: ["APPLY_APPLICATION_TAG" # One of: ["APPLY_APPLICATION_TAG", "SKIP_APPLICATION_TAG"]]
    #   }
    #   options = {}
    #   response = client.associate_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_arn: "ApplicationArn",
    #     resource_arn: "Arn",
    #     options: ["APPLY_APPLICATION_TAG" # One of: ["APPLY_APPLICATION_TAG", "SKIP_APPLICATION_TAG"]]
    #   }
    # @return [Types::AssociateResourceResponse]
    def associate_resource(params = {}, options = {})
      request = build_request(:associate_resource, params)
      request.send_request(options)
    end

    # <p>Creates a new application that is the top-level node in a hierarchy of related cloud resource abstractions.</p>
    # @param [Hash, Types::CreateApplicationRequest] params
    # @option params [String] :name
    #   <p>The name of the application. The name must be unique in the region in which you are creating the application.</p>
    # @option params [String] :description
    #   <p>The description of the application.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Key-value pairs you can use to associate with the application.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier that you provide to ensure idempotency. If you retry a request that
    #         completed successfully using the same client token and the same parameters, the retry succeeds
    #         without performing any further actions. If you retry a successful request using the same
    #         client token, but one or more of the parameters are different, the retry fails.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     description: "Description",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken", # required
    #   }
    #   options = {}
    #   response = client.create_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application: {
    #       id: "ApplicationId",
    #       arn: "ApplicationArn",
    #       name: "Name",
    #       description: "Description",
    #       creation_time: Time.now,
    #       last_update_time: Time.now,
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       application_tag: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::CreateApplicationResponse]
    def create_application(params = {}, options = {})
      request = build_request(:create_application, params)
      request.send_request(options)
    end

    # <p>Creates a new attribute group as a container for user-defined attributes. This feature
    #       enables users to have full control over their cloud application's metadata in a rich
    #       machine-readable format to facilitate integration with automated workflows and third-party
    #       tools.</p>
    # @param [Hash, Types::CreateAttributeGroupRequest] params
    # @option params [String] :name
    #   <p>The name of the attribute group.</p>
    # @option params [String] :description
    #   <p>The description of the attribute group that the user provides.</p>
    # @option params [String] :attributes
    #   <p>A JSON string in the form of nested key-value pairs that represent the attributes in the group and describes an application and its components.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Key-value pairs you can use to associate with the attribute group.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier that you provide to ensure idempotency. If you retry a request that
    #         completed successfully using the same client token and the same parameters, the retry succeeds
    #         without performing any further actions. If you retry a successful request using the same
    #         client token, but one or more of the parameters are different, the retry fails.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     description: "Description",
    #     attributes: "Attributes", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken", # required
    #   }
    #   options = {}
    #   response = client.create_attribute_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attribute_group: {
    #       id: "AttributeGroupId",
    #       arn: "AttributeGroupArn",
    #       name: "Name",
    #       description: "Description",
    #       creation_time: Time.now,
    #       last_update_time: Time.now,
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::CreateAttributeGroupResponse]
    def create_attribute_group(params = {}, options = {})
      request = build_request(:create_attribute_group, params)
      request.send_request(options)
    end

    # <p>Deletes an application that is specified either by its application ID, name, or ARN. All associated attribute groups and resources must be disassociated from it before deleting an application.</p>
    # @param [Hash, Types::DeleteApplicationRequest] params
    # @option params [String] :application
    #   <p>
    #          The name, ID, or ARN 
    #          of the application.
    #        </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application: "ApplicationSpecifier", # required
    #   }
    #   options = {}
    #   response = client.delete_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application: {
    #       id: "ApplicationId",
    #       arn: "ApplicationArn",
    #       name: "Name",
    #       description: "Description",
    #       creation_time: Time.now,
    #       last_update_time: Time.now
    #     }
    #   }
    # @return [Types::DeleteApplicationResponse]
    def delete_application(params = {}, options = {})
      request = build_request(:delete_application, params)
      request.send_request(options)
    end

    # <p>Deletes an attribute group, specified either by its attribute group ID, name, or ARN.</p>
    # @param [Hash, Types::DeleteAttributeGroupRequest] params
    # @option params [String] :attribute_group
    #   <p>
    #          The name, ID, or ARN 
    #          of the attribute group 
    #          that holds the attributes 
    #          to describe the application.
    #        </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     attribute_group: "AttributeGroupSpecifier", # required
    #   }
    #   options = {}
    #   response = client.delete_attribute_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attribute_group: {
    #       id: "AttributeGroupId",
    #       arn: "AttributeGroupArn",
    #       name: "Name",
    #       description: "Description",
    #       creation_time: Time.now,
    #       last_update_time: Time.now,
    #       created_by: "CreatedBy"
    #     }
    #   }
    # @return [Types::DeleteAttributeGroupResponse]
    def delete_attribute_group(params = {}, options = {})
      request = build_request(:delete_attribute_group, params)
      request.send_request(options)
    end

    # <p>Disassociates an attribute group from an application to remove the extra attributes contained in the attribute group from the application's metadata. This operation reverts <code>AssociateAttributeGroup</code>.</p>
    # @param [Hash, Types::DisassociateAttributeGroupRequest] params
    # @option params [String] :application
    #   <p>
    #          The name, ID, or ARN 
    #          of the application.
    #        </p>
    # @option params [String] :attribute_group
    #   <p>
    #          The name, ID, or ARN 
    #          of the attribute group 
    #          that holds the attributes 
    #          to describe the application.
    #        </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application: "ApplicationSpecifier", # required
    #     attribute_group: "AttributeGroupSpecifier", # required
    #   }
    #   options = {}
    #   response = client.disassociate_attribute_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_arn: "ApplicationArn",
    #     attribute_group_arn: "AttributeGroupArn"
    #   }
    # @return [Types::DisassociateAttributeGroupResponse]
    def disassociate_attribute_group(params = {}, options = {})
      request = build_request(:disassociate_attribute_group, params)
      request.send_request(options)
    end

    # <p>
    #        Disassociates a resource from application. 
    #        Both the resource and the application can be specified either by ID or name.
    #      </p>
    #          <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>
    #        You must have the following permissions to remove a resource that's been associated with an application using the <code>APPLY_APPLICATION_TAG</code> option for <a href="https://docs.aws.amazon.com/servicecatalog/latest/dg/API_app-registry_AssociateResource.html">AssociateResource</a>.
    #      </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>tag:GetResources</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>tag:UntagResources</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #        You must also have the following permissions if you don't use the <code>AWSServiceCatalogAppRegistryFullAccess</code> policy. 
    #        For more information, see <a href="https://docs.aws.amazon.com/servicecatalog/latest/arguide/full.html">AWSServiceCatalogAppRegistryFullAccess</a> in the AppRegistry Administrator Guide.
    #      </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>resource-groups:DisassociateResource</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>cloudformation:UpdateStack</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>cloudformation:DescribeStacks</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>
    #          In addition, you must have the tagging permission defined by the Amazon Web Services service that creates the resource. 
    #          For more information, see <a href="https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/API_UntTagResources.html">UntagResources</a> in the <i>Resource Groups Tagging API Reference</i>.
    #        </p>
    #          </note>
    # @param [Hash, Types::DisassociateResourceRequest] params
    # @option params [String] :application
    #   <p>The name or ID of the application.</p>
    # @option params [String] :resource_type
    #   <p>The type of the resource that is being disassociated.</p>
    # @option params [String] :resource
    #   <p>The name or ID of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application: "ApplicationSpecifier", # required
    #     resource_type: "CFN_STACK" # One of: ["CFN_STACK", "RESOURCE_TAG_VALUE"], # required
    #     resource: "ResourceSpecifier", # required
    #   }
    #   options = {}
    #   response = client.disassociate_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_arn: "ApplicationArn",
    #     resource_arn: "Arn"
    #   }
    # @return [Types::DisassociateResourceResponse]
    def disassociate_resource(params = {}, options = {})
      request = build_request(:disassociate_resource, params)
      request.send_request(options)
    end

    # <p>
    #        Retrieves metadata information 
    #        about one 
    #        of your applications. 
    #        The application can be specified 
    #        by its ARN, ID, or name 
    #        (which is unique 
    #        within one account 
    #        in one region 
    #        at a given point 
    #        in time). 
    #        Specify 
    #        by ARN or ID 
    #        in automated workflows 
    #        if you want 
    #        to make sure 
    #        that the exact same application is returned or a <code>ResourceNotFoundException</code> is thrown, 
    #        avoiding the ABA addressing problem.
    #      </p>
    # @param [Hash, Types::GetApplicationRequest] params
    # @option params [String] :application
    #   <p>
    #          The name, ID, or ARN 
    #          of the application.
    #        </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application: "ApplicationSpecifier", # required
    #   }
    #   options = {}
    #   response = client.get_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ApplicationId",
    #     arn: "ApplicationArn",
    #     name: "Name",
    #     description: "Description",
    #     creation_time: Time.now,
    #     last_update_time: Time.now,
    #     associated_resource_count: 1,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     integrations: {
    #       resource_group: {
    #         state: "CREATING" # One of: ["CREATING", "CREATE_COMPLETE", "CREATE_FAILED", "UPDATING", "UPDATE_COMPLETE", "UPDATE_FAILED"],
    #         arn: "Arn",
    #         error_message: "String"
    #       },
    #       application_tag_resource_group: {
    #         state: "CREATING" # One of: ["CREATING", "CREATE_COMPLETE", "CREATE_FAILED", "UPDATING", "UPDATE_COMPLETE", "UPDATE_FAILED"],
    #         arn: "Arn",
    #         error_message: "String"
    #       }
    #     },
    #     application_tag: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetApplicationResponse]
    def get_application(params = {}, options = {})
      request = build_request(:get_application, params)
      request.send_request(options)
    end

    # <p>Gets the resource associated with the application.</p>
    # @param [Hash, Types::GetAssociatedResourceRequest] params
    # @option params [String] :application
    #   <p>
    #          The name, ID, or ARN 
    #          of the application.
    #        </p>
    # @option params [String] :resource_type
    #   <p>The type of resource associated with the application.</p>
    # @option params [String] :resource
    #   <p>The name or ID of the resource associated with the application.</p>
    # @option params [String] :next_token
    #   <p>
    #         A unique pagination token for each page of results. 
    #         Make the call again with the returned token to retrieve the next page of results.
    #       </p>
    # @option params [Array<String>] :resource_tag_status
    #   <p>
    #         States whether an application tag is applied, not applied, in the process of being applied, or skipped.
    #       </p>
    # @option params [Integer] :max_results
    #   <p>
    #         The maximum number of results to return. If the parameter is omitted, it defaults to 25. The value is optional.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application: "ApplicationSpecifier", # required
    #     resource_type: "CFN_STACK" # One of: ["CFN_STACK", "RESOURCE_TAG_VALUE"], # required
    #     resource: "ResourceSpecifier", # required
    #     next_token: "NextToken",
    #     resource_tag_status: ["SUCCESS" # One of: ["SUCCESS", "FAILED", "IN_PROGRESS", "SKIPPED"]],
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_associated_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource: {
    #       name: "ResourceSpecifier",
    #       arn: "Arn",
    #       association_time: Time.now,
    #       integrations: {
    #         resource_group: {
    #           state: "CREATING" # One of: ["CREATING", "CREATE_COMPLETE", "CREATE_FAILED", "UPDATING", "UPDATE_COMPLETE", "UPDATE_FAILED"],
    #           arn: "Arn",
    #           error_message: "String"
    #         }
    #       }
    #     },
    #     options: ["APPLY_APPLICATION_TAG" # One of: ["APPLY_APPLICATION_TAG", "SKIP_APPLICATION_TAG"]],
    #     application_tag_result: {
    #       application_tag_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCESS", "FAILURE"],
    #       error_message: "String",
    #       resources: [
    #         {
    #           resource_arn: "Arn",
    #           error_message: "ResourcesListItemErrorMessage",
    #           status: "String",
    #           resource_type: "ResourceItemType"
    #         }
    #       ],
    #       next_token: "NextToken"
    #     }
    #   }
    # @return [Types::GetAssociatedResourceResponse]
    def get_associated_resource(params = {}, options = {})
      request = build_request(:get_associated_resource, params)
      request.send_request(options)
    end

    # <p>
    #        Retrieves an attribute group
    #        by its ARN, ID, or name. 
    #        The attribute group can be specified 
    #        by its ARN, ID, or name.
    #      </p>
    # @param [Hash, Types::GetAttributeGroupRequest] params
    # @option params [String] :attribute_group
    #   <p>
    #          The name, ID, or ARN 
    #          of the attribute group 
    #          that holds the attributes 
    #          to describe the application.
    #        </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     attribute_group: "AttributeGroupSpecifier", # required
    #   }
    #   options = {}
    #   response = client.get_attribute_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "AttributeGroupId",
    #     arn: "AttributeGroupArn",
    #     name: "Name",
    #     description: "Description",
    #     attributes: "Attributes",
    #     creation_time: Time.now,
    #     last_update_time: Time.now,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     created_by: "CreatedBy"
    #   }
    # @return [Types::GetAttributeGroupResponse]
    def get_attribute_group(params = {}, options = {})
      request = build_request(:get_attribute_group, params)
      request.send_request(options)
    end

    # <p>
    #       Retrieves a <code>TagKey</code> configuration
    #       from an account.
    #     </p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration: {
    #       tag_query_configuration: {
    #         tag_key: "TagKeyConfig"
    #       }
    #     }
    #   }
    # @return [Types::GetConfigurationResponse]
    def get_configuration(params = {}, options = {})
      request = build_request(:get_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of all of your applications. Results are paginated.</p>
    # @param [Hash, Types::ListApplicationsRequest] params
    # @option params [String] :next_token
    #   <p>The token to use to get the next page of results after a previous API call. </p>
    # @option params [Integer] :max_results
    #   <p>The upper bound of the number of results to return (cannot exceed 25). If this parameter is omitted, it defaults to 25. This value is optional.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     applications: [
    #       {
    #         id: "ApplicationId",
    #         arn: "ApplicationArn",
    #         name: "Name",
    #         description: "Description",
    #         creation_time: Time.now,
    #         last_update_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListApplicationsResponse]
    def list_applications(params = {}, options = {})
      request = build_request(:list_applications, params)
      request.send_request(options)
    end

    # <p>Lists all attribute groups that are associated with specified application.  Results are paginated.</p>
    # @param [Hash, Types::ListAssociatedAttributeGroupsRequest] params
    # @option params [String] :application
    #   <p>The name or ID of the application.</p>
    # @option params [String] :next_token
    #   <p>The token to use to get the next page of results after a previous API call. </p>
    # @option params [Integer] :max_results
    #   <p>The upper bound of the number of results to return (cannot exceed 25). If this parameter is omitted, it defaults to 25. This value is optional.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application: "ApplicationSpecifier", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_associated_attribute_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attribute_groups: ["AttributeGroupId"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAssociatedAttributeGroupsResponse]
    def list_associated_attribute_groups(params = {}, options = {})
      request = build_request(:list_associated_attribute_groups, params)
      request.send_request(options)
    end

    # <p>
    #        Lists all 
    #        of the resources 
    #        that are associated 
    #        with the specified application.
    #        Results are paginated.
    #      </p>
    #          <note>
    #             <p>
    #          If you share an application, 
    #          and a consumer account associates a tag query 
    #          to the application, 
    #          all of the users 
    #          who can access the application 
    #          can also view the tag values 
    #          in all accounts 
    #          that are associated 
    #          with it 
    #          using this API.
    #        </p>
    #          </note>
    # @param [Hash, Types::ListAssociatedResourcesRequest] params
    # @option params [String] :application
    #   <p>
    #          The name, ID, or ARN 
    #          of the application.
    #        </p>
    # @option params [String] :next_token
    #   <p>The token to use to get the next page of results after a previous API call. </p>
    # @option params [Integer] :max_results
    #   <p>The upper bound of the number of results to return (cannot exceed 25). If this parameter is omitted, it defaults to 25. This value is optional.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application: "ApplicationSpecifier", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_associated_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resources: [
    #       {
    #         name: "ResourceSpecifier",
    #         arn: "Arn",
    #         resource_type: "CFN_STACK" # One of: ["CFN_STACK", "RESOURCE_TAG_VALUE"],
    #         resource_details: {
    #           tag_value: "TagValue"
    #         },
    #         options: ["APPLY_APPLICATION_TAG" # One of: ["APPLY_APPLICATION_TAG", "SKIP_APPLICATION_TAG"]]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAssociatedResourcesResponse]
    def list_associated_resources(params = {}, options = {})
      request = build_request(:list_associated_resources, params)
      request.send_request(options)
    end

    # <p>Lists all attribute groups which you have access to. Results are paginated.</p>
    # @param [Hash, Types::ListAttributeGroupsRequest] params
    # @option params [String] :next_token
    #   <p>The token to use to get the next page of results after a previous API call. </p>
    # @option params [Integer] :max_results
    #   <p>The upper bound of the number of results to return (cannot exceed 25). If this parameter is omitted, it defaults to 25. This value is optional.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_attribute_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attribute_groups: [
    #       {
    #         id: "AttributeGroupId",
    #         arn: "AttributeGroupArn",
    #         name: "Name",
    #         description: "Description",
    #         creation_time: Time.now,
    #         last_update_time: Time.now,
    #         created_by: "CreatedBy"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAttributeGroupsResponse]
    def list_attribute_groups(params = {}, options = {})
      request = build_request(:list_attribute_groups, params)
      request.send_request(options)
    end

    # <p>Lists the details of all attribute groups associated with a specific application. The results display in pages.</p>
    # @param [Hash, Types::ListAttributeGroupsForApplicationRequest] params
    # @option params [String] :application
    #   <p>The name or ID of the application.</p>
    # @option params [String] :next_token
    #   <p>This token retrieves the next page of results after a previous API call.</p>
    # @option params [Integer] :max_results
    #   <p>The upper bound of the number of results to return. The value cannot exceed 25. If you omit this parameter, it defaults to 25. This value is optional.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application: "ApplicationSpecifier", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_attribute_groups_for_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attribute_groups_details: [
    #       {
    #         id: "AttributeGroupId",
    #         arn: "AttributeGroupArn",
    #         name: "Name",
    #         created_by: "CreatedBy"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAttributeGroupsForApplicationResponse]
    def list_attribute_groups_for_application(params = {}, options = {})
      request = build_request(:list_attribute_groups_for_application, params)
      request.send_request(options)
    end

    # <p>Lists all of the tags on the resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon resource name (ARN) that specifies the resource.</p>
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
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>
    #       Associates a <code>TagKey</code> configuration 
    #       to an account.
    #     </p>
    # @param [Hash, Types::PutConfigurationRequest] params
    # @option params [Types::AppRegistryConfiguration] :configuration
    #   <p>
    #         Associates a <code>TagKey</code> configuration 
    #         to an account.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration: { # required
    #       tag_query_configuration: {
    #         tag_key: "TagKeyConfig"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.put_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_configuration(params = {}, options = {})
      request = build_request(:put_configuration, params)
      request.send_request(options)
    end

    # <p>Syncs the resource with current AppRegistry records.</p>
    #          <p>Specifically, the resource’s AppRegistry system tags sync with its associated application. We remove the resource's AppRegistry system tags if it does not associate with the application. The caller must have permissions to read and update the resource.</p>
    # @param [Hash, Types::SyncResourceRequest] params
    # @option params [String] :resource_type
    #   <p>The type of resource of which the application will be associated.</p>
    # @option params [String] :resource
    #   <p>An entity you can work with and specify with a name or ID. Examples include an Amazon EC2 instance, an Amazon Web Services CloudFormation stack, or an Amazon S3 bucket.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_type: "CFN_STACK" # One of: ["CFN_STACK", "RESOURCE_TAG_VALUE"], # required
    #     resource: "ResourceSpecifier", # required
    #   }
    #   options = {}
    #   response = client.sync_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_arn: "ApplicationArn",
    #     resource_arn: "Arn",
    #     action_taken: "START_SYNC" # One of: ["START_SYNC", "NO_ACTION"]
    #   }
    # @return [Types::SyncResourceResponse]
    def sync_resource(params = {}, options = {})
      request = build_request(:sync_resource, params)
      request.send_request(options)
    end

    # <p>Assigns one or more tags (key-value pairs) to the specified resource.</p>
    #          <p>Each tag consists of a key and an optional value. If a tag with the same key is already associated with the resource, this action updates its value.</p>
    #          <p>This operation returns an empty response if the call was successful.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon resource name (ARN) that specifies the resource.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The new or modified tags for the resource.</p>
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
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes tags from a resource.</p>
    #          <p>This operation returns an empty response if the call was successful.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon resource name (ARN) that specifies the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of the tag keys to remove from the specified resource.</p>
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

    # <p>Updates an existing application with new attributes.</p>
    # @param [Hash, Types::UpdateApplicationRequest] params
    # @option params [String] :application
    #   <p>
    #          The name, ID, or ARN 
    #          of the application 
    #          that will be updated.
    #        </p>
    # @option params [String] :name
    #   <p>Deprecated: The new name of the application. The name must be unique in the region in which you are
    #          updating the application. Please do not use this field as we have stopped supporting name updates.</p>
    # @option params [String] :description
    #   <p>The new description of the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application: "ApplicationSpecifier", # required
    #     name: "Name",
    #     description: "Description"
    #   }
    #   options = {}
    #   response = client.update_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application: {
    #       id: "ApplicationId",
    #       arn: "ApplicationArn",
    #       name: "Name",
    #       description: "Description",
    #       creation_time: Time.now,
    #       last_update_time: Time.now,
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       application_tag: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::UpdateApplicationResponse]
    def update_application(params = {}, options = {})
      request = build_request(:update_application, params)
      request.send_request(options)
    end

    # <p>Updates an existing attribute group with new details. </p>
    # @param [Hash, Types::UpdateAttributeGroupRequest] params
    # @option params [String] :attribute_group
    #   <p>
    #          The name, ID, or ARN 
    #          of the attribute group 
    #          that holds the attributes 
    #          to describe the application.
    #        </p>
    # @option params [String] :name
    #   <p>Deprecated: The new name of the attribute group. The name must be unique in the region in which you are
    #          updating the attribute group. Please do not use this field as we have stopped supporting name updates.</p>
    # @option params [String] :description
    #   <p>The description of the attribute group that the user provides.</p>
    # @option params [String] :attributes
    #   <p>A JSON string in the form of nested key-value pairs that represent the attributes in the group and describes an application and its components.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     attribute_group: "AttributeGroupSpecifier", # required
    #     name: "Name",
    #     description: "Description",
    #     attributes: "Attributes"
    #   }
    #   options = {}
    #   response = client.update_attribute_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attribute_group: {
    #       id: "AttributeGroupId",
    #       arn: "AttributeGroupArn",
    #       name: "Name",
    #       description: "Description",
    #       creation_time: Time.now,
    #       last_update_time: Time.now,
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::UpdateAttributeGroupResponse]
    def update_attribute_group(params = {}, options = {})
      request = build_request(:update_attribute_group, params)
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
      context[:gem_name] = 'aws-sdk-servicecatalogappregistry'
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
