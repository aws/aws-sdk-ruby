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
require 'aws-sdk-core/plugins/json_rpc_protocol'

module Aws::Inspector
  # An API client for Aws::Inspector.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::InspectorService

    add_plugin(::Aws::Inspector::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)

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
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::Inspector::EndpointProvider] :endpoint_provider
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

    # <p>Assigns attributes (key and value pairs) to the findings that are specified by the
    #          ARNs of the findings.</p>
    # @param [Hash, Types::AddAttributesToFindingsRequest] params
    # @option params [Array<String>] :finding_arns
    #   <p>The ARNs that specify the findings that you want to assign attributes to.</p>
    # @option params [Array<Types::Attribute>] :attributes
    #   <p>The array of attributes that you want to assign to specified findings.</p>
    # @example Add attributes to findings
    #   # Assigns attributes (key and value pairs) to the findings that are specified by the ARNs of the findings.
    #   params = {
    #     finding_arns: [
    #       "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-8l1VIE0D/run/0-Z02cjjug/finding/0-T8yM9mEU"
    #     ],
    #     attributes: [
    #       {
    #         key: "Example",
    #         value: "example"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.add_attributes_to_findings(params, options)
    #   response.to_h #=>
    #   {
    #     failed_items: {
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     finding_arns: ["Arn"], # required
    #     attributes: [ # required
    #       {
    #         key: "AttributeKey", # required
    #         value: "AttributeValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.add_attributes_to_findings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_items: { # required
    #       "Arn" => {
    #         failure_code: "INVALID_ARN" # One of: ["INVALID_ARN", "DUPLICATE_ARN", "ITEM_DOES_NOT_EXIST", "ACCESS_DENIED", "LIMIT_EXCEEDED", "INTERNAL_ERROR"], # required
    #         retryable: false, # required
    #       }
    #     }
    #   }
    # @return [Types::AddAttributesToFindingsResponse]
    def add_attributes_to_findings(params = {}, options = {})
      request = build_request(:add_attributes_to_findings, params)
      request.send_request(options)
    end

    # <p>Creates a new assessment target using the ARN of the resource group that is generated
    #          by <a>CreateResourceGroup</a>. If resourceGroupArn is not specified, all EC2
    #          instances in the current AWS account and region are included in the assessment target. If
    #          the <a href="https://docs.aws.amazon.com/inspector/latest/userguide/inspector_slr.html">service-linked role</a> isn’t already registered, this action also creates and
    #          registers a service-linked role to grant Amazon Inspector access to AWS Services needed to
    #          perform security assessments. You can create up to 50 assessment targets per AWS account.
    #          You can run up to 500 concurrent agents per AWS account. For more information, see <a href="https://docs.aws.amazon.com/inspector/latest/userguide/inspector_applications.html">
    #             Amazon Inspector Assessment Targets</a>.</p>
    # @param [Hash, Types::CreateAssessmentTargetRequest] params
    # @option params [String] :assessment_target_name
    #   <p>The user-defined name that identifies the assessment target that you want to create.
    #            The name must be unique within the AWS account.</p>
    # @option params [String] :resource_group_arn
    #   <p>The ARN that specifies the resource group that is used to create the assessment
    #            target. If resourceGroupArn is not specified, all EC2 instances in the current AWS account
    #            and region are included in the assessment target.</p>
    # @example Create assessment target
    #   # Creates a new assessment target using the ARN of the resource group that is generated by CreateResourceGroup. You can create up to 50 assessment targets per AWS account. You can run up to 500 concurrent agents per AWS account.
    #   params = {
    #     assessment_target_name: "ExampleAssessmentTarget",
    #     resource_group_arn: "arn:aws:inspector:us-west-2:123456789012:resourcegroup/0-AB6DMKnv"
    #   }
    #   options = {}
    #   response = client.create_assessment_target(params, options)
    #   response.to_h #=>
    #   {
    #     assessment_target_arn: "arn:aws:inspector:us-west-2:123456789012:target/0-nvgVhaxX"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_target_name: "AssessmentTargetName", # required
    #     resource_group_arn: "Arn"
    #   }
    #   options = {}
    #   response = client.create_assessment_target(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assessment_target_arn: "Arn", # required
    #   }
    # @return [Types::CreateAssessmentTargetResponse]
    def create_assessment_target(params = {}, options = {})
      request = build_request(:create_assessment_target, params)
      request.send_request(options)
    end

    # <p>Creates an assessment template for the assessment target that is specified by the ARN
    #          of the assessment target. If the <a href="https://docs.aws.amazon.com/inspector/latest/userguide/inspector_slr.html">service-linked role</a> isn’t already registered, this action also creates and
    #          registers a service-linked role to grant Amazon Inspector access to AWS Services needed to
    #          perform security assessments.</p>
    # @param [Hash, Types::CreateAssessmentTemplateRequest] params
    # @option params [String] :assessment_target_arn
    #   <p>The ARN that specifies the assessment target for which you want to create the
    #            assessment template.</p>
    # @option params [String] :assessment_template_name
    #   <p>The user-defined name that identifies the assessment template that you want to
    #            create. You can create several assessment templates for an assessment target. The names of
    #            the assessment templates that correspond to a particular assessment target must be
    #            unique.</p>
    # @option params [Integer] :duration_in_seconds
    #   <p>The duration of the assessment run in seconds.</p>
    # @option params [Array<String>] :rules_package_arns
    #   <p>The ARNs that specify the rules packages that you want to attach to the assessment
    #            template.</p>
    # @option params [Array<Types::Attribute>] :user_attributes_for_findings
    #   <p>The user-defined attributes that are assigned to every finding that is generated by
    #            the assessment run that uses this assessment template. An attribute is a key and value pair
    #            (an <a>Attribute</a> object). Within an assessment template, each key must be
    #            unique.</p>
    # @example Create assessment template
    #   # Creates an assessment template for the assessment target that is specified by the ARN of the assessment target.
    #   params = {
    #     assessment_target_arn: "arn:aws:inspector:us-west-2:123456789012:target/0-nvgVhaxX",
    #     assessment_template_name: "ExampleAssessmentTemplate",
    #     duration_in_seconds: 180,
    #     rules_package_arns: [
    #       "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-11B9DBXp"
    #     ],
    #     user_attributes_for_findings: [
    #       {
    #         key: "Example",
    #         value: "example"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_assessment_template(params, options)
    #   response.to_h #=>
    #   {
    #     assessment_template_arn: "arn:aws:inspector:us-west-2:123456789012:target/0-nvgVhaxX/template/0-it5r2S4T"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_target_arn: "Arn", # required
    #     assessment_template_name: "AssessmentTemplateName", # required
    #     duration_in_seconds: 1, # required
    #     rules_package_arns: ["Arn"], # required
    #     user_attributes_for_findings: [
    #       {
    #         key: "AttributeKey", # required
    #         value: "AttributeValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_assessment_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assessment_template_arn: "Arn", # required
    #   }
    # @return [Types::CreateAssessmentTemplateResponse]
    def create_assessment_template(params = {}, options = {})
      request = build_request(:create_assessment_template, params)
      request.send_request(options)
    end

    # <p>Starts the generation of an exclusions preview for the specified assessment template.
    #          The exclusions preview lists the potential exclusions (ExclusionPreview) that Inspector can
    #          detect before it runs the assessment. </p>
    # @param [Hash, Types::CreateExclusionsPreviewRequest] params
    # @option params [String] :assessment_template_arn
    #   <p>The ARN that specifies the assessment template for which you want to create an
    #            exclusions preview.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_template_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.create_exclusions_preview(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     preview_token: "UUID", # required
    #   }
    # @return [Types::CreateExclusionsPreviewResponse]
    def create_exclusions_preview(params = {}, options = {})
      request = build_request(:create_exclusions_preview, params)
      request.send_request(options)
    end

    # <p>Creates a resource group using the specified set of tags (key and value pairs) that
    #          are used to select the EC2 instances to be included in an Amazon Inspector assessment
    #          target. The created resource group is then used to create an Amazon Inspector assessment
    #          target. For more information, see <a>CreateAssessmentTarget</a>.</p>
    # @param [Hash, Types::CreateResourceGroupRequest] params
    # @option params [Array<Types::ResourceGroupTag>] :resource_group_tags
    #   <p>A collection of keys and an array of possible values,
    #            '[{"key":"key1","values":["Value1","Value2"]},{"key":"Key2","values":["Value3"]}]'.</p>
    #            <p>For example,'[{"key":"Name","values":["TestEC2Instance"]}]'.</p>
    # @example Create resource group
    #   # Creates a resource group using the specified set of tags (key and value pairs) that are used to select the EC2 instances to be included in an Amazon Inspector assessment target. The created resource group is then used to create an Amazon Inspector assessment target. 
    #   params = {
    #     resource_group_tags: [
    #       {
    #         key: "Name",
    #         value: "example"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_resource_group(params, options)
    #   response.to_h #=>
    #   {
    #     resource_group_arn: "arn:aws:inspector:us-west-2:123456789012:resourcegroup/0-AB6DMKnv"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_group_tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_resource_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_group_arn: "Arn", # required
    #   }
    # @return [Types::CreateResourceGroupResponse]
    def create_resource_group(params = {}, options = {})
      request = build_request(:create_resource_group, params)
      request.send_request(options)
    end

    # <p>Deletes the assessment run that is specified by the ARN of the assessment
    #          run.</p>
    # @param [Hash, Types::DeleteAssessmentRunRequest] params
    # @option params [String] :assessment_run_arn
    #   <p>The ARN that specifies the assessment run that you want to delete.</p>
    # @example Delete assessment run
    #   # Deletes the assessment run that is specified by the ARN of the assessment run.
    #   params = {
    #     assessment_run_arn: "arn:aws:inspector:us-west-2:123456789012:target/0-nvgVhaxX/template/0-it5r2S4T/run/0-11LMTAVe"
    #   }
    #   options = {}
    #   response = client.delete_assessment_run(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_run_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_assessment_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_assessment_run(params = {}, options = {})
      request = build_request(:delete_assessment_run, params)
      request.send_request(options)
    end

    # <p>Deletes the assessment target that is specified by the ARN of the assessment
    #          target.</p>
    # @param [Hash, Types::DeleteAssessmentTargetRequest] params
    # @option params [String] :assessment_target_arn
    #   <p>The ARN that specifies the assessment target that you want to delete.</p>
    # @example Delete assessment target
    #   # Deletes the assessment target that is specified by the ARN of the assessment target.
    #   params = {
    #     assessment_target_arn: "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq"
    #   }
    #   options = {}
    #   response = client.delete_assessment_target(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_target_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_assessment_target(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_assessment_target(params = {}, options = {})
      request = build_request(:delete_assessment_target, params)
      request.send_request(options)
    end

    # <p>Deletes the assessment template that is specified by the ARN of the assessment
    #          template.</p>
    # @param [Hash, Types::DeleteAssessmentTemplateRequest] params
    # @option params [String] :assessment_template_arn
    #   <p>The ARN that specifies the assessment template that you want to delete.</p>
    # @example Delete assessment template
    #   # Deletes the assessment template that is specified by the ARN of the assessment template.
    #   params = {
    #     assessment_template_arn: "arn:aws:inspector:us-west-2:123456789012:target/0-nvgVhaxX/template/0-it5r2S4T"
    #   }
    #   options = {}
    #   response = client.delete_assessment_template(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_template_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_assessment_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_assessment_template(params = {}, options = {})
      request = build_request(:delete_assessment_template, params)
      request.send_request(options)
    end

    # <p>Describes the assessment runs that are specified by the ARNs of the assessment
    #          runs.</p>
    # @param [Hash, Types::DescribeAssessmentRunsRequest] params
    # @option params [Array<String>] :assessment_run_arns
    #   <p>The ARN that specifies the assessment run that you want to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_run_arns: ["Arn"], # required
    #   }
    #   options = {}
    #   response = client.describe_assessment_runs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assessment_runs: [ # required
    #       {
    #         arn: "Arn", # required
    #         name: "AssessmentRunName", # required
    #         assessment_template_arn: "Arn", # required
    #         state: "CREATED" # One of: ["CREATED", "START_DATA_COLLECTION_PENDING", "START_DATA_COLLECTION_IN_PROGRESS", "COLLECTING_DATA", "STOP_DATA_COLLECTION_PENDING", "DATA_COLLECTED", "START_EVALUATING_RULES_PENDING", "EVALUATING_RULES", "FAILED", "ERROR", "COMPLETED", "COMPLETED_WITH_ERRORS", "CANCELED"], # required
    #         duration_in_seconds: 1, # required
    #         rules_package_arns: ["Arn"], # required
    #         user_attributes_for_findings: [ # required
    #           {
    #             key: "AttributeKey", # required
    #             value: "AttributeValue"
    #           }
    #         ],
    #         created_at: Time.now, # required
    #         started_at: Time.now,
    #         completed_at: Time.now,
    #         state_changed_at: Time.now, # required
    #         data_collected: false, # required
    #         state_changes: [ # required
    #           {
    #             state_changed_at: Time.now, # required
    #             state: "CREATED" # One of: ["CREATED", "START_DATA_COLLECTION_PENDING", "START_DATA_COLLECTION_IN_PROGRESS", "COLLECTING_DATA", "STOP_DATA_COLLECTION_PENDING", "DATA_COLLECTED", "START_EVALUATING_RULES_PENDING", "EVALUATING_RULES", "FAILED", "ERROR", "COMPLETED", "COMPLETED_WITH_ERRORS", "CANCELED"], # required
    #           }
    #         ],
    #         notifications: [ # required
    #           {
    #             date: Time.now, # required
    #             event: "ASSESSMENT_RUN_STARTED" # One of: ["ASSESSMENT_RUN_STARTED", "ASSESSMENT_RUN_COMPLETED", "ASSESSMENT_RUN_STATE_CHANGED", "FINDING_REPORTED", "OTHER"], # required
    #             message: "Message",
    #             error: false, # required
    #             sns_topic_arn: "Arn",
    #             sns_publish_status_code: "SUCCESS" # One of: ["SUCCESS", "TOPIC_DOES_NOT_EXIST", "ACCESS_DENIED", "INTERNAL_ERROR"]
    #           }
    #         ],
    #         finding_counts: { # required
    #           "Severity" => 1
    #         }
    #       }
    #     ],
    #     failed_items: { # required
    #       "Arn" => {
    #         failure_code: "INVALID_ARN" # One of: ["INVALID_ARN", "DUPLICATE_ARN", "ITEM_DOES_NOT_EXIST", "ACCESS_DENIED", "LIMIT_EXCEEDED", "INTERNAL_ERROR"], # required
    #         retryable: false, # required
    #       }
    #     }
    #   }
    # @return [Types::DescribeAssessmentRunsResponse]
    def describe_assessment_runs(params = {}, options = {})
      request = build_request(:describe_assessment_runs, params)
      request.send_request(options)
    end

    # <p>Describes the assessment targets that are specified by the ARNs of the assessment
    #          targets.</p>
    # @param [Hash, Types::DescribeAssessmentTargetsRequest] params
    # @option params [Array<String>] :assessment_target_arns
    #   <p>The ARNs that specifies the assessment targets that you want to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_target_arns: ["Arn"], # required
    #   }
    #   options = {}
    #   response = client.describe_assessment_targets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assessment_targets: [ # required
    #       {
    #         arn: "Arn", # required
    #         name: "AssessmentTargetName", # required
    #         resource_group_arn: "Arn",
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     failed_items: { # required
    #       "Arn" => {
    #         failure_code: "INVALID_ARN" # One of: ["INVALID_ARN", "DUPLICATE_ARN", "ITEM_DOES_NOT_EXIST", "ACCESS_DENIED", "LIMIT_EXCEEDED", "INTERNAL_ERROR"], # required
    #         retryable: false, # required
    #       }
    #     }
    #   }
    # @return [Types::DescribeAssessmentTargetsResponse]
    def describe_assessment_targets(params = {}, options = {})
      request = build_request(:describe_assessment_targets, params)
      request.send_request(options)
    end

    # <p>Describes the assessment templates that are specified by the ARNs of the assessment
    #          templates.</p>
    # @param [Hash, Types::DescribeAssessmentTemplatesRequest] params
    # @option params [Array<String>] :assessment_template_arns
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_template_arns: ["Arn"], # required
    #   }
    #   options = {}
    #   response = client.describe_assessment_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assessment_templates: [ # required
    #       {
    #         arn: "Arn", # required
    #         name: "AssessmentTemplateName", # required
    #         assessment_target_arn: "Arn", # required
    #         duration_in_seconds: 1, # required
    #         rules_package_arns: ["Arn"], # required
    #         user_attributes_for_findings: [ # required
    #           {
    #             key: "AttributeKey", # required
    #             value: "AttributeValue"
    #           }
    #         ],
    #         last_assessment_run_arn: "Arn",
    #         assessment_run_count: 1, # required
    #         created_at: Time.now, # required
    #       }
    #     ],
    #     failed_items: { # required
    #       "Arn" => {
    #         failure_code: "INVALID_ARN" # One of: ["INVALID_ARN", "DUPLICATE_ARN", "ITEM_DOES_NOT_EXIST", "ACCESS_DENIED", "LIMIT_EXCEEDED", "INTERNAL_ERROR"], # required
    #         retryable: false, # required
    #       }
    #     }
    #   }
    # @return [Types::DescribeAssessmentTemplatesResponse]
    def describe_assessment_templates(params = {}, options = {})
      request = build_request(:describe_assessment_templates, params)
      request.send_request(options)
    end

    # <p>Describes the IAM role that enables Amazon Inspector to access your AWS
    #          account.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_cross_account_access_role(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     role_arn: "Arn", # required
    #     valid: false, # required
    #     registered_at: Time.now, # required
    #   }
    # @return [Types::DescribeCrossAccountAccessRoleResponse]
    def describe_cross_account_access_role(params = {}, options = {})
      request = build_request(:describe_cross_account_access_role, params)
      request.send_request(options)
    end

    # <p>Describes the exclusions that are specified by the exclusions' ARNs.</p>
    # @param [Hash, Types::DescribeExclusionsRequest] params
    # @option params [Array<String>] :exclusion_arns
    #   <p>The list of ARNs that specify the exclusions that you want to describe.</p>
    # @option params [String] :locale
    #   <p>The locale into which you want to translate the exclusion's title, description, and
    #            recommendation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     exclusion_arns: ["Arn"], # required
    #     locale: "EN_US" # One of: ["EN_US"]
    #   }
    #   options = {}
    #   response = client.describe_exclusions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     exclusions: { # required
    #       "Arn" => {
    #         arn: "Arn", # required
    #         title: "Text", # required
    #         description: "Text", # required
    #         recommendation: "Text", # required
    #         scopes: [ # required
    #           {
    #             key: "INSTANCE_ID" # One of: ["INSTANCE_ID", "RULES_PACKAGE_ARN"],
    #             value: "ScopeValue"
    #           }
    #         ],
    #         attributes: [
    #           {
    #             key: "AttributeKey", # required
    #             value: "AttributeValue"
    #           }
    #         ]
    #       }
    #     },
    #     failed_items: { # required
    #       "Arn" => {
    #         failure_code: "INVALID_ARN" # One of: ["INVALID_ARN", "DUPLICATE_ARN", "ITEM_DOES_NOT_EXIST", "ACCESS_DENIED", "LIMIT_EXCEEDED", "INTERNAL_ERROR"], # required
    #         retryable: false, # required
    #       }
    #     }
    #   }
    # @return [Types::DescribeExclusionsResponse]
    def describe_exclusions(params = {}, options = {})
      request = build_request(:describe_exclusions, params)
      request.send_request(options)
    end

    # <p>Describes the findings that are specified by the ARNs of the findings.</p>
    # @param [Hash, Types::DescribeFindingsRequest] params
    # @option params [Array<String>] :finding_arns
    #   <p>The ARN that specifies the finding that you want to describe.</p>
    # @option params [String] :locale
    #   <p>The locale into which you want to translate a finding description, recommendation,
    #            and the short description that identifies the finding.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     finding_arns: ["Arn"], # required
    #     locale: "EN_US" # One of: ["EN_US"]
    #   }
    #   options = {}
    #   response = client.describe_findings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     findings: [ # required
    #       {
    #         arn: "Arn", # required
    #         schema_version: 1,
    #         service: "ServiceName",
    #         service_attributes: {
    #           schema_version: 1, # required
    #           assessment_run_arn: "Arn",
    #           rules_package_arn: "Arn"
    #         },
    #         asset_type: "ec2-instance" # One of: ["ec2-instance"],
    #         asset_attributes: {
    #           schema_version: 1, # required
    #           agent_id: "AgentId",
    #           auto_scaling_group: "AutoScalingGroup",
    #           ami_id: "AmiId",
    #           hostname: "Hostname",
    #           ipv4_addresses: ["Ipv4Address"],
    #           tags: [
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue"
    #             }
    #           ],
    #           network_interfaces: [
    #             {
    #               network_interface_id: "Text",
    #               subnet_id: "Text",
    #               vpc_id: "Text",
    #               private_dns_name: "Text",
    #               private_ip_address: "Text",
    #               private_ip_addresses: [
    #                 {
    #                   private_dns_name: "Text",
    #                   private_ip_address: "Text"
    #                 }
    #               ],
    #               public_dns_name: "Text",
    #               public_ip: "Text",
    #               ipv6_addresses: ["Text"],
    #               security_groups: [
    #                 {
    #                   group_name: "Text",
    #                   group_id: "Text"
    #                 }
    #               ]
    #             }
    #           ]
    #         },
    #         id: "FindingId",
    #         title: "Text",
    #         description: "Text",
    #         recommendation: "Text",
    #         severity: "Low" # One of: ["Low", "Medium", "High", "Informational", "Undefined"],
    #         numeric_severity: 1.0,
    #         confidence: 1,
    #         indicator_of_compromise: false,
    #         attributes: [ # required
    #           {
    #             key: "AttributeKey", # required
    #             value: "AttributeValue"
    #           }
    #         ],
    #         user_attributes: [ # required
    #           {
    #             key: "AttributeKey", # required
    #             value: "AttributeValue"
    #           }
    #         ],
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     failed_items: { # required
    #       "Arn" => {
    #         failure_code: "INVALID_ARN" # One of: ["INVALID_ARN", "DUPLICATE_ARN", "ITEM_DOES_NOT_EXIST", "ACCESS_DENIED", "LIMIT_EXCEEDED", "INTERNAL_ERROR"], # required
    #         retryable: false, # required
    #       }
    #     }
    #   }
    # @return [Types::DescribeFindingsResponse]
    def describe_findings(params = {}, options = {})
      request = build_request(:describe_findings, params)
      request.send_request(options)
    end

    # <p>Describes the resource groups that are specified by the ARNs of the resource
    #          groups.</p>
    # @param [Hash, Types::DescribeResourceGroupsRequest] params
    # @option params [Array<String>] :resource_group_arns
    #   <p>The ARN that specifies the resource group that you want to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_group_arns: ["Arn"], # required
    #   }
    #   options = {}
    #   response = client.describe_resource_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_groups: [ # required
    #       {
    #         arn: "Arn", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue"
    #           }
    #         ],
    #         created_at: Time.now, # required
    #       }
    #     ],
    #     failed_items: { # required
    #       "Arn" => {
    #         failure_code: "INVALID_ARN" # One of: ["INVALID_ARN", "DUPLICATE_ARN", "ITEM_DOES_NOT_EXIST", "ACCESS_DENIED", "LIMIT_EXCEEDED", "INTERNAL_ERROR"], # required
    #         retryable: false, # required
    #       }
    #     }
    #   }
    # @return [Types::DescribeResourceGroupsResponse]
    def describe_resource_groups(params = {}, options = {})
      request = build_request(:describe_resource_groups, params)
      request.send_request(options)
    end

    # <p>Describes the rules packages that are specified by the ARNs of the rules
    #          packages.</p>
    # @param [Hash, Types::DescribeRulesPackagesRequest] params
    # @option params [Array<String>] :rules_package_arns
    #   <p>The ARN that specifies the rules package that you want to describe.</p>
    # @option params [String] :locale
    #   <p>The locale that you want to translate a rules package description into.</p>
    # @example Describe rules packages
    #   # Describes the rules packages that are specified by the ARNs of the rules packages.
    #   params = {
    #     rules_package_arns: [
    #       "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-JJOtZiqQ"
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_rules_packages(params, options)
    #   response.to_h #=>
    #   {
    #     rules_packages: [
    #       {
    #         arn: "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-JJOtZiqQ",
    #         description: "The rules in this package help determine whether your systems are configured securely.",
    #         name: "Security Best Practices",
    #         provider: "Amazon Web Services, Inc.",
    #         version: "1.1"
    #       }
    #     ],
    #     failed_items: {
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     rules_package_arns: ["Arn"], # required
    #     locale: "EN_US" # One of: ["EN_US"]
    #   }
    #   options = {}
    #   response = client.describe_rules_packages(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rules_packages: [ # required
    #       {
    #         arn: "Arn", # required
    #         name: "RulesPackageName", # required
    #         version: "Version", # required
    #         provider: "ProviderName", # required
    #         description: "Text"
    #       }
    #     ],
    #     failed_items: { # required
    #       "Arn" => {
    #         failure_code: "INVALID_ARN" # One of: ["INVALID_ARN", "DUPLICATE_ARN", "ITEM_DOES_NOT_EXIST", "ACCESS_DENIED", "LIMIT_EXCEEDED", "INTERNAL_ERROR"], # required
    #         retryable: false, # required
    #       }
    #     }
    #   }
    # @return [Types::DescribeRulesPackagesResponse]
    def describe_rules_packages(params = {}, options = {})
      request = build_request(:describe_rules_packages, params)
      request.send_request(options)
    end

    # <p>Produces an assessment report that includes detailed and comprehensive results of a
    #          specified assessment run. </p>
    # @param [Hash, Types::GetAssessmentReportRequest] params
    # @option params [String] :assessment_run_arn
    #   <p>The ARN that specifies the assessment run for which you want to generate a
    #            report.</p>
    # @option params [String] :report_file_format
    #   <p>Specifies the file format (html or pdf) of the assessment report that you want to
    #            generate.</p>
    # @option params [String] :report_type
    #   <p>Specifies the type of the assessment report that you want to generate. There are two
    #            types of assessment reports: a finding report and a full report. For more information, see
    #               <a href="https://docs.aws.amazon.com/inspector/latest/userguide/inspector_reports.html">Assessment Reports</a>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_run_arn: "Arn", # required
    #     report_file_format: "HTML" # One of: ["HTML", "PDF"], # required
    #     report_type: "FINDING" # One of: ["FINDING", "FULL"], # required
    #   }
    #   options = {}
    #   response = client.get_assessment_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "WORK_IN_PROGRESS" # One of: ["WORK_IN_PROGRESS", "FAILED", "COMPLETED"], # required
    #     url: "Url"
    #   }
    # @return [Types::GetAssessmentReportResponse]
    def get_assessment_report(params = {}, options = {})
      request = build_request(:get_assessment_report, params)
      request.send_request(options)
    end

    # <p>Retrieves the exclusions preview (a list of ExclusionPreview objects) specified by
    #          the preview token. You can obtain the preview token by running the CreateExclusionsPreview
    #          API.</p>
    # @param [Hash, Types::GetExclusionsPreviewRequest] params
    # @option params [String] :assessment_template_arn
    #   <p>The ARN that specifies the assessment template for which the exclusions preview was
    #            requested.</p>
    # @option params [String] :preview_token
    #   <p>The unique identifier associated of the exclusions preview.</p>
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter
    #            to null on your first call to the GetExclusionsPreviewRequest action. Subsequent calls to
    #            the action fill nextToken in the request with the value of nextToken from the previous
    #            response to continue listing data.</p>
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the
    #            response. The default value is 100. The maximum value is 500.</p>
    # @option params [String] :locale
    #   <p>The locale into which you want to translate the exclusion's title, description, and
    #            recommendation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_template_arn: "Arn", # required
    #     preview_token: "UUID", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     locale: "EN_US" # One of: ["EN_US"]
    #   }
    #   options = {}
    #   response = client.get_exclusions_preview(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     preview_status: "WORK_IN_PROGRESS" # One of: ["WORK_IN_PROGRESS", "COMPLETED"], # required
    #     exclusion_previews: [
    #       {
    #         title: "Text", # required
    #         description: "Text", # required
    #         recommendation: "Text", # required
    #         scopes: [ # required
    #           {
    #             key: "INSTANCE_ID" # One of: ["INSTANCE_ID", "RULES_PACKAGE_ARN"],
    #             value: "ScopeValue"
    #           }
    #         ],
    #         attributes: [
    #           {
    #             key: "AttributeKey", # required
    #             value: "AttributeValue"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::GetExclusionsPreviewResponse]
    def get_exclusions_preview(params = {}, options = {})
      request = build_request(:get_exclusions_preview, params)
      request.send_request(options)
    end

    # <p>Information about the data that is collected for the specified assessment
    #          run.</p>
    # @param [Hash, Types::GetTelemetryMetadataRequest] params
    # @option params [String] :assessment_run_arn
    #   <p>The ARN that specifies the assessment run that has the telemetry data that you want
    #            to obtain.</p>
    # @example Get telemetry metadata
    #   # Information about the data that is collected for the specified assessment run.
    #   params = {
    #     assessment_run_arn: "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-4r1V2mAw/run/0-MKkpXXPE"
    #   }
    #   options = {}
    #   response = client.get_telemetry_metadata(params, options)
    #   response.to_h #=>
    #   {
    #     telemetry_metadata: [
    #       {
    #         count: 2,
    #         data_size: 345,
    #         message_type: "InspectorDuplicateProcess"
    #       },
    #       {
    #         count: 3,
    #         data_size: 255,
    #         message_type: "InspectorTimeEventMsg"
    #       },
    #       {
    #         count: 4,
    #         data_size: 1082,
    #         message_type: "InspectorNetworkInterface"
    #       },
    #       {
    #         count: 2,
    #         data_size: 349,
    #         message_type: "InspectorDnsEntry"
    #       },
    #       {
    #         count: 11,
    #         data_size: 2514,
    #         message_type: "InspectorDirectoryInfoMsg"
    #       },
    #       {
    #         count: 1,
    #         data_size: 179,
    #         message_type: "InspectorTcpV6ListeningPort"
    #       },
    #       {
    #         count: 101,
    #         data_size: 10949,
    #         message_type: "InspectorTerminal"
    #       },
    #       {
    #         count: 26,
    #         data_size: 5916,
    #         message_type: "InspectorUser"
    #       },
    #       {
    #         count: 282,
    #         data_size: 32148,
    #         message_type: "InspectorDynamicallyLoadedCodeModule"
    #       },
    #       {
    #         count: 18,
    #         data_size: 10172,
    #         message_type: "InspectorCreateProcess"
    #       },
    #       {
    #         count: 3,
    #         data_size: 8001,
    #         message_type: "InspectorProcessPerformance"
    #       },
    #       {
    #         count: 1,
    #         data_size: 360,
    #         message_type: "InspectorOperatingSystem"
    #       },
    #       {
    #         count: 6,
    #         data_size: 546,
    #         message_type: "InspectorStopProcess"
    #       },
    #       {
    #         count: 1,
    #         data_size: 1553,
    #         message_type: "InspectorInstanceMetaData"
    #       },
    #       {
    #         count: 2,
    #         data_size: 434,
    #         message_type: "InspectorTcpV4Connection"
    #       },
    #       {
    #         count: 474,
    #         data_size: 2960322,
    #         message_type: "InspectorPackageInfo"
    #       },
    #       {
    #         count: 3,
    #         data_size: 2235,
    #         message_type: "InspectorSystemPerformance"
    #       },
    #       {
    #         count: 105,
    #         data_size: 46048,
    #         message_type: "InspectorCodeModule"
    #       },
    #       {
    #         count: 1,
    #         data_size: 182,
    #         message_type: "InspectorUdpV6ListeningPort"
    #       },
    #       {
    #         count: 2,
    #         data_size: 371,
    #         message_type: "InspectorUdpV4ListeningPort"
    #       },
    #       {
    #         count: 18,
    #         data_size: 8362,
    #         message_type: "InspectorKernelModule"
    #       },
    #       {
    #         count: 29,
    #         data_size: 48788,
    #         message_type: "InspectorConfigurationInfo"
    #       },
    #       {
    #         count: 1,
    #         data_size: 79,
    #         message_type: "InspectorMonitoringStart"
    #       },
    #       {
    #         count: 5,
    #         data_size: 0,
    #         message_type: "InspectorSplitMsgBegin"
    #       },
    #       {
    #         count: 51,
    #         data_size: 4593,
    #         message_type: "InspectorGroup"
    #       },
    #       {
    #         count: 1,
    #         data_size: 184,
    #         message_type: "InspectorTcpV4ListeningPort"
    #       },
    #       {
    #         count: 1159,
    #         data_size: 3146579,
    #         message_type: "Total"
    #       },
    #       {
    #         count: 5,
    #         data_size: 0,
    #         message_type: "InspectorSplitMsgEnd"
    #       },
    #       {
    #         count: 1,
    #         data_size: 612,
    #         message_type: "InspectorLoadImageInProcess"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_run_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.get_telemetry_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     telemetry_metadata: [ # required
    #       {
    #         message_type: "MessageType", # required
    #         count: 1, # required
    #         data_size: 1
    #       }
    #     ]
    #   }
    # @return [Types::GetTelemetryMetadataResponse]
    def get_telemetry_metadata(params = {}, options = {})
      request = build_request(:get_telemetry_metadata, params)
      request.send_request(options)
    end

    # <p>Lists the agents of the assessment runs that are specified by the ARNs of the
    #          assessment runs.</p>
    # @param [Hash, Types::ListAssessmentRunAgentsRequest] params
    # @option params [String] :assessment_run_arn
    #   <p>The ARN that specifies the assessment run whose agents you want to list.</p>
    # @option params [Types::AgentFilter] :filter
    #   <p>You can use this parameter to specify a subset of data to be included in the action's
    #            response.</p>
    #            <p>For a record to match a filter, all specified filter attributes must match. When
    #            multiple values are specified for a filter attribute, any of the values can
    #            match.</p>
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter
    #            to null on your first call to the <b>ListAssessmentRunAgents</b>
    #            action. Subsequent calls to the action fill <b>nextToken</b> in
    #            the request with the value of <b>NextToken</b> from the previous
    #            response to continue listing data.</p>
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items that you want in
    #            the response. The default value is 10. The maximum value is 500.</p>
    # @example List assessment run agents
    #   # Lists the agents of the assessment runs that are specified by the ARNs of the assessment runs.
    #   params = {
    #     assessment_run_arn: "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-4r1V2mAw/run/0-MKkpXXPE",
    #     max_results: 123
    #   }
    #   options = {}
    #   response = client.list_assessment_run_agents(params, options)
    #   response.to_h #=>
    #   {
    #     assessment_run_agents: [
    #       {
    #         agent_health: HEALTHY,
    #         agent_health_code: RUNNING,
    #         agent_id: "i-49113b93",
    #         assessment_run_arn: "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-4r1V2mAw/run/0-MKkpXXPE",
    #         telemetry_metadata: [
    #           {
    #             count: 2,
    #             data_size: 345,
    #             message_type: "InspectorDuplicateProcess"
    #           },
    #           {
    #             count: 3,
    #             data_size: 255,
    #             message_type: "InspectorTimeEventMsg"
    #           },
    #           {
    #             count: 4,
    #             data_size: 1082,
    #             message_type: "InspectorNetworkInterface"
    #           },
    #           {
    #             count: 2,
    #             data_size: 349,
    #             message_type: "InspectorDnsEntry"
    #           },
    #           {
    #             count: 11,
    #             data_size: 2514,
    #             message_type: "InspectorDirectoryInfoMsg"
    #           },
    #           {
    #             count: 1,
    #             data_size: 179,
    #             message_type: "InspectorTcpV6ListeningPort"
    #           },
    #           {
    #             count: 101,
    #             data_size: 10949,
    #             message_type: "InspectorTerminal"
    #           },
    #           {
    #             count: 26,
    #             data_size: 5916,
    #             message_type: "InspectorUser"
    #           },
    #           {
    #             count: 282,
    #             data_size: 32148,
    #             message_type: "InspectorDynamicallyLoadedCodeModule"
    #           },
    #           {
    #             count: 18,
    #             data_size: 10172,
    #             message_type: "InspectorCreateProcess"
    #           },
    #           {
    #             count: 3,
    #             data_size: 8001,
    #             message_type: "InspectorProcessPerformance"
    #           },
    #           {
    #             count: 1,
    #             data_size: 360,
    #             message_type: "InspectorOperatingSystem"
    #           },
    #           {
    #             count: 6,
    #             data_size: 546,
    #             message_type: "InspectorStopProcess"
    #           },
    #           {
    #             count: 1,
    #             data_size: 1553,
    #             message_type: "InspectorInstanceMetaData"
    #           },
    #           {
    #             count: 2,
    #             data_size: 434,
    #             message_type: "InspectorTcpV4Connection"
    #           },
    #           {
    #             count: 474,
    #             data_size: 2960322,
    #             message_type: "InspectorPackageInfo"
    #           },
    #           {
    #             count: 3,
    #             data_size: 2235,
    #             message_type: "InspectorSystemPerformance"
    #           },
    #           {
    #             count: 105,
    #             data_size: 46048,
    #             message_type: "InspectorCodeModule"
    #           },
    #           {
    #             count: 1,
    #             data_size: 182,
    #             message_type: "InspectorUdpV6ListeningPort"
    #           },
    #           {
    #             count: 2,
    #             data_size: 371,
    #             message_type: "InspectorUdpV4ListeningPort"
    #           },
    #           {
    #             count: 18,
    #             data_size: 8362,
    #             message_type: "InspectorKernelModule"
    #           },
    #           {
    #             count: 29,
    #             data_size: 48788,
    #             message_type: "InspectorConfigurationInfo"
    #           },
    #           {
    #             count: 1,
    #             data_size: 79,
    #             message_type: "InspectorMonitoringStart"
    #           },
    #           {
    #             count: 5,
    #             data_size: 0,
    #             message_type: "InspectorSplitMsgBegin"
    #           },
    #           {
    #             count: 51,
    #             data_size: 4593,
    #             message_type: "InspectorGroup"
    #           },
    #           {
    #             count: 1,
    #             data_size: 184,
    #             message_type: "InspectorTcpV4ListeningPort"
    #           },
    #           {
    #             count: 1159,
    #             data_size: 3146579,
    #             message_type: "Total"
    #           },
    #           {
    #             count: 5,
    #             data_size: 0,
    #             message_type: "InspectorSplitMsgEnd"
    #           },
    #           {
    #             count: 1,
    #             data_size: 612,
    #             message_type: "InspectorLoadImageInProcess"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "1"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_run_arn: "Arn", # required
    #     filter: {
    #       agent_healths: ["HEALTHY" # One of: ["HEALTHY", "UNHEALTHY", "UNKNOWN"]], # required
    #       agent_health_codes: ["IDLE" # One of: ["IDLE", "RUNNING", "SHUTDOWN", "UNHEALTHY", "THROTTLED", "UNKNOWN"]], # required
    #     },
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_assessment_run_agents(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assessment_run_agents: [ # required
    #       {
    #         agent_id: "AgentId", # required
    #         assessment_run_arn: "Arn", # required
    #         agent_health: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY", "UNKNOWN"], # required
    #         agent_health_code: "IDLE" # One of: ["IDLE", "RUNNING", "SHUTDOWN", "UNHEALTHY", "THROTTLED", "UNKNOWN"], # required
    #         agent_health_details: "Message",
    #         auto_scaling_group: "AutoScalingGroup",
    #         telemetry_metadata: [ # required
    #           {
    #             message_type: "MessageType", # required
    #             count: 1, # required
    #             data_size: 1
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListAssessmentRunAgentsResponse]
    def list_assessment_run_agents(params = {}, options = {})
      request = build_request(:list_assessment_run_agents, params)
      request.send_request(options)
    end

    # <p>Lists the assessment runs that correspond to the assessment templates that are
    #          specified by the ARNs of the assessment templates.</p>
    # @param [Hash, Types::ListAssessmentRunsRequest] params
    # @option params [Array<String>] :assessment_template_arns
    #   <p>The ARNs that specify the assessment templates whose assessment runs you want to
    #            list.</p>
    # @option params [Types::AssessmentRunFilter] :filter
    #   <p>You can use this parameter to specify a subset of data to be included in the action's
    #            response.</p>
    #            <p>For a record to match a filter, all specified filter attributes must match. When
    #            multiple values are specified for a filter attribute, any of the values can
    #            match.</p>
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter
    #            to null on your first call to the <b>ListAssessmentRuns</b>
    #            action. Subsequent calls to the action fill <b>nextToken</b> in
    #            the request with the value of <b>NextToken</b> from the previous
    #            response to continue listing data.</p>
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items that you want in
    #            the response. The default value is 10. The maximum value is 500.</p>
    # @example List assessment runs
    #   # Lists the assessment runs that correspond to the assessment templates that are specified by the ARNs of the assessment templates.
    #   params = {
    #     assessment_template_arns: [
    #       "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-4r1V2mAw"
    #     ],
    #     max_results: 123
    #   }
    #   options = {}
    #   response = client.list_assessment_runs(params, options)
    #   response.to_h #=>
    #   {
    #     assessment_run_arns: [
    #       "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-4r1V2mAw/run/0-MKkpXXPE",
    #       "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-4r1V2mAw/run/0-v5D6fI3v"
    #     ],
    #     next_token: "1"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_template_arns: ["Arn"],
    #     filter: {
    #       name_pattern: "NamePattern",
    #       states: ["CREATED" # One of: ["CREATED", "START_DATA_COLLECTION_PENDING", "START_DATA_COLLECTION_IN_PROGRESS", "COLLECTING_DATA", "STOP_DATA_COLLECTION_PENDING", "DATA_COLLECTED", "START_EVALUATING_RULES_PENDING", "EVALUATING_RULES", "FAILED", "ERROR", "COMPLETED", "COMPLETED_WITH_ERRORS", "CANCELED"]],
    #       duration_range: {
    #         min_seconds: 1,
    #         max_seconds: 1
    #       },
    #       rules_package_arns: ["Arn"],
    #       start_time_range: {
    #         begin_date: Time.now,
    #         end_date: Time.now
    #       },
    #       completion_time_range: {
    #         begin_date: Time.now,
    #         end_date: Time.now
    #       },
    #       state_change_time_range: {
    #         begin_date: Time.now,
    #         end_date: Time.now
    #       }
    #     },
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_assessment_runs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assessment_run_arns: ["Arn"], # required
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListAssessmentRunsResponse]
    def list_assessment_runs(params = {}, options = {})
      request = build_request(:list_assessment_runs, params)
      request.send_request(options)
    end

    # <p>Lists the ARNs of the assessment targets within this AWS account. For more
    #          information about assessment targets, see <a href="https://docs.aws.amazon.com/inspector/latest/userguide/inspector_applications.html">Amazon Inspector Assessment
    #             Targets</a>.</p>
    # @param [Hash, Types::ListAssessmentTargetsRequest] params
    # @option params [Types::AssessmentTargetFilter] :filter
    #   <p>You can use this parameter to specify a subset of data to be included in the action's
    #            response.</p>
    #            <p>For a record to match a filter, all specified filter attributes must match. When
    #            multiple values are specified for a filter attribute, any of the values can
    #            match.</p>
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter
    #            to null on your first call to the <b>ListAssessmentTargets</b>
    #            action. Subsequent calls to the action fill <b>nextToken</b> in
    #            the request with the value of <b>NextToken</b> from the previous
    #            response to continue listing data.</p>
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the
    #            response. The default value is 10. The maximum value is 500.</p>
    # @example List assessment targets
    #   # Lists the ARNs of the assessment targets within this AWS account. 
    #   params = {
    #     max_results: 123
    #   }
    #   options = {}
    #   response = client.list_assessment_targets(params, options)
    #   response.to_h #=>
    #   {
    #     assessment_target_arns: [
    #       "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq"
    #     ],
    #     next_token: "1"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       assessment_target_name_pattern: "NamePattern"
    #     },
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_assessment_targets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assessment_target_arns: ["Arn"], # required
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListAssessmentTargetsResponse]
    def list_assessment_targets(params = {}, options = {})
      request = build_request(:list_assessment_targets, params)
      request.send_request(options)
    end

    # <p>Lists the assessment templates that correspond to the assessment targets that are
    #          specified by the ARNs of the assessment targets.</p>
    # @param [Hash, Types::ListAssessmentTemplatesRequest] params
    # @option params [Array<String>] :assessment_target_arns
    #   <p>A list of ARNs that specifies the assessment targets whose assessment templates you
    #            want to list.</p>
    # @option params [Types::AssessmentTemplateFilter] :filter
    #   <p>You can use this parameter to specify a subset of data to be included in the action's
    #            response.</p>
    #            <p>For a record to match a filter, all specified filter attributes must match. When
    #            multiple values are specified for a filter attribute, any of the values can
    #            match.</p>
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter
    #            to null on your first call to the <b>ListAssessmentTemplates</b>
    #            action. Subsequent calls to the action fill <b>nextToken</b> in
    #            the request with the value of <b>NextToken</b> from the previous
    #            response to continue listing data.</p>
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the
    #            response. The default value is 10. The maximum value is 500.</p>
    # @example List assessment templates
    #   # Lists the assessment templates that correspond to the assessment targets that are specified by the ARNs of the assessment targets.
    #   params = {
    #     assessment_target_arns: [
    #       "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq"
    #     ],
    #     max_results: 123
    #   }
    #   options = {}
    #   response = client.list_assessment_templates(params, options)
    #   response.to_h #=>
    #   {
    #     assessment_template_arns: [
    #       "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-4r1V2mAw",
    #       "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-Uza6ihLh"
    #     ],
    #     next_token: "1"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_target_arns: ["Arn"],
    #     filter: {
    #       name_pattern: "NamePattern",
    #       duration_range: {
    #         min_seconds: 1,
    #         max_seconds: 1
    #       },
    #       rules_package_arns: ["Arn"]
    #     },
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_assessment_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assessment_template_arns: ["Arn"], # required
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListAssessmentTemplatesResponse]
    def list_assessment_templates(params = {}, options = {})
      request = build_request(:list_assessment_templates, params)
      request.send_request(options)
    end

    # <p>Lists all the event subscriptions for the assessment template that is specified by
    #          the ARN of the assessment template. For more information, see <a>SubscribeToEvent</a> and <a>UnsubscribeFromEvent</a>.</p>
    # @param [Hash, Types::ListEventSubscriptionsRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the assessment template for which you want to list the existing event
    #            subscriptions.</p>
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter
    #            to null on your first call to the <b>ListEventSubscriptions</b>
    #            action. Subsequent calls to the action fill <b>nextToken</b> in
    #            the request with the value of <b>NextToken</b> from the previous
    #            response to continue listing data.</p>
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the
    #            response. The default value is 10. The maximum value is 500.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn",
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_event_subscriptions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscriptions: [ # required
    #       {
    #         resource_arn: "Arn", # required
    #         topic_arn: "Arn", # required
    #         event_subscriptions: [ # required
    #           {
    #             event: "ASSESSMENT_RUN_STARTED" # One of: ["ASSESSMENT_RUN_STARTED", "ASSESSMENT_RUN_COMPLETED", "ASSESSMENT_RUN_STATE_CHANGED", "FINDING_REPORTED", "OTHER"], # required
    #             subscribed_at: Time.now, # required
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListEventSubscriptionsResponse]
    def list_event_subscriptions(params = {}, options = {})
      request = build_request(:list_event_subscriptions, params)
      request.send_request(options)
    end

    # <p>List exclusions that are generated by the assessment run.</p>
    # @param [Hash, Types::ListExclusionsRequest] params
    # @option params [String] :assessment_run_arn
    #   <p>The ARN of the assessment run that generated the exclusions that you want to
    #            list.</p>
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter
    #            to null on your first call to the ListExclusionsRequest action. Subsequent calls to the
    #            action fill nextToken in the request with the value of nextToken from the previous response
    #            to continue listing data.</p>
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the
    #            response. The default value is 100. The maximum value is 500.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_run_arn: "Arn", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_exclusions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     exclusion_arns: ["Arn"], # required
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListExclusionsResponse]
    def list_exclusions(params = {}, options = {})
      request = build_request(:list_exclusions, params)
      request.send_request(options)
    end

    # <p>Lists findings that are generated by the assessment runs that are specified by the
    #          ARNs of the assessment runs.</p>
    # @param [Hash, Types::ListFindingsRequest] params
    # @option params [Array<String>] :assessment_run_arns
    #   <p>The ARNs of the assessment runs that generate the findings that you want to
    #            list.</p>
    # @option params [Types::FindingFilter] :filter
    #   <p>You can use this parameter to specify a subset of data to be included in the action's
    #            response.</p>
    #            <p>For a record to match a filter, all specified filter attributes must match. When
    #            multiple values are specified for a filter attribute, any of the values can
    #            match.</p>
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter
    #            to null on your first call to the <b>ListFindings</b> action.
    #            Subsequent calls to the action fill <b>nextToken</b> in the
    #            request with the value of <b>NextToken</b> from the previous
    #            response to continue listing data.</p>
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the
    #            response. The default value is 10. The maximum value is 500.</p>
    # @example List findings
    #   # Lists findings that are generated by the assessment runs that are specified by the ARNs of the assessment runs.
    #   params = {
    #     assessment_run_arns: [
    #       "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-4r1V2mAw/run/0-MKkpXXPE"
    #     ],
    #     max_results: 123
    #   }
    #   options = {}
    #   response = client.list_findings(params, options)
    #   response.to_h #=>
    #   {
    #     finding_arns: [
    #       "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-4r1V2mAw/run/0-MKkpXXPE/finding/0-HwPnsDm4",
    #       "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-4r1V2mAw/run/0-v5D6fI3v/finding/0-tyvmqBLy"
    #     ],
    #     next_token: "1"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_run_arns: ["Arn"],
    #     filter: {
    #       agent_ids: ["AgentId"],
    #       auto_scaling_groups: ["AutoScalingGroup"],
    #       rule_names: ["RuleName"],
    #       severities: ["Low" # One of: ["Low", "Medium", "High", "Informational", "Undefined"]],
    #       rules_package_arns: ["Arn"],
    #       attributes: [
    #         {
    #           key: "AttributeKey", # required
    #           value: "AttributeValue"
    #         }
    #       ],
    #       user_attributes: [
    #         {
    #           key: "AttributeKey", # required
    #           value: "AttributeValue"
    #         }
    #       ],
    #       creation_time_range: {
    #         begin_date: Time.now,
    #         end_date: Time.now
    #       }
    #     },
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_findings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     finding_arns: ["Arn"], # required
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListFindingsResponse]
    def list_findings(params = {}, options = {})
      request = build_request(:list_findings, params)
      request.send_request(options)
    end

    # <p>Lists all available Amazon Inspector rules packages.</p>
    # @param [Hash, Types::ListRulesPackagesRequest] params
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter
    #            to null on your first call to the <b>ListRulesPackages</b>
    #            action. Subsequent calls to the action fill <b>nextToken</b> in
    #            the request with the value of <b>NextToken</b> from the previous
    #            response to continue listing data.</p>
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the
    #            response. The default value is 10. The maximum value is 500.</p>
    # @example List rules packages
    #   # Lists all available Amazon Inspector rules packages.
    #   params = {
    #     max_results: 123
    #   }
    #   options = {}
    #   response = client.list_rules_packages(params, options)
    #   response.to_h #=>
    #   {
    #     rules_package_arns: [
    #       "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-9hgA516p",
    #       "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-H5hpSawc",
    #       "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-JJOtZiqQ",
    #       "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-vg5GGHSD"
    #     ],
    #     next_token: "1"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_rules_packages(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rules_package_arns: ["Arn"], # required
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListRulesPackagesResponse]
    def list_rules_packages(params = {}, options = {})
      request = build_request(:list_rules_packages, params)
      request.send_request(options)
    end

    # <p>Lists all tags associated with an assessment template.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN that specifies the assessment template whose tags you want to list.</p>
    # @example List tags for resource
    #   # Lists all tags associated with an assessment template.
    #   params = {
    #     resource_arn: "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-gcwFliYu"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "Name",
    #         value: "Example"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Previews the agents installed on the EC2 instances that are part of the specified
    #          assessment target.</p>
    # @param [Hash, Types::PreviewAgentsRequest] params
    # @option params [String] :preview_agents_arn
    #   <p>The ARN of the assessment target whose agents you want to preview.</p>
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter
    #            to null on your first call to the <b>PreviewAgents</b> action.
    #            Subsequent calls to the action fill <b>nextToken</b> in the
    #            request with the value of <b>NextToken</b> from the previous
    #            response to continue listing data.</p>
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the
    #            response. The default value is 10. The maximum value is 500.</p>
    # @example Preview agents
    #   # Previews the agents installed on the EC2 instances that are part of the specified assessment target.
    #   params = {
    #     preview_agents_arn: "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq",
    #     max_results: 123
    #   }
    #   options = {}
    #   response = client.preview_agents(params, options)
    #   response.to_h #=>
    #   {
    #     agent_previews: [
    #       {
    #         agent_id: "i-49113b93"
    #       }
    #     ],
    #     next_token: "1"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     preview_agents_arn: "Arn", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.preview_agents(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_previews: [ # required
    #       {
    #         hostname: "Hostname",
    #         agent_id: "AgentId", # required
    #         auto_scaling_group: "AutoScalingGroup",
    #         agent_health: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY", "UNKNOWN"],
    #         agent_version: "AgentVersion",
    #         operating_system: "OperatingSystem",
    #         kernel_version: "KernelVersion",
    #         ipv4_address: "Ipv4Address"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::PreviewAgentsResponse]
    def preview_agents(params = {}, options = {})
      request = build_request(:preview_agents, params)
      request.send_request(options)
    end

    # <p>Registers the IAM role that grants Amazon Inspector access to AWS Services needed to
    #          perform security assessments.</p>
    # @param [Hash, Types::RegisterCrossAccountAccessRoleRequest] params
    # @option params [String] :role_arn
    #   <p>The ARN of the IAM role that grants Amazon Inspector access to AWS Services needed to
    #            perform security assessments. </p>
    # @example Register cross account access role
    #   # Registers the IAM role that Amazon Inspector uses to list your EC2 instances at the start of the assessment run or when you call the PreviewAgents action.
    #   params = {
    #     role_arn: "arn:aws:iam::123456789012:role/inspector"
    #   }
    #   options = {}
    #   response = client.register_cross_account_access_role(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     role_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.register_cross_account_access_role(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def register_cross_account_access_role(params = {}, options = {})
      request = build_request(:register_cross_account_access_role, params)
      request.send_request(options)
    end

    # <p>Removes entire attributes (key and value pairs) from the findings that are specified
    #          by the ARNs of the findings where an attribute with the specified key exists.</p>
    # @param [Hash, Types::RemoveAttributesFromFindingsRequest] params
    # @option params [Array<String>] :finding_arns
    #   <p>The ARNs that specify the findings that you want to remove attributes from.</p>
    # @option params [Array<String>] :attribute_keys
    #   <p>The array of attribute keys that you want to remove from specified
    #            findings.</p>
    # @example Remove attributes from findings
    #   # Removes entire attributes (key and value pairs) from the findings that are specified by the ARNs of the findings where an attribute with the specified key exists.
    #   params = {
    #     finding_arns: [
    #       "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-8l1VIE0D/run/0-Z02cjjug/finding/0-T8yM9mEU"
    #     ],
    #     attribute_keys: [
    #       "key=Example,value=example"
    #     ]
    #   }
    #   options = {}
    #   response = client.remove_attributes_from_findings(params, options)
    #   response.to_h #=>
    #   {
    #     failed_items: {
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     finding_arns: ["Arn"], # required
    #     attribute_keys: ["AttributeKey"], # required
    #   }
    #   options = {}
    #   response = client.remove_attributes_from_findings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_items: { # required
    #       "Arn" => {
    #         failure_code: "INVALID_ARN" # One of: ["INVALID_ARN", "DUPLICATE_ARN", "ITEM_DOES_NOT_EXIST", "ACCESS_DENIED", "LIMIT_EXCEEDED", "INTERNAL_ERROR"], # required
    #         retryable: false, # required
    #       }
    #     }
    #   }
    # @return [Types::RemoveAttributesFromFindingsResponse]
    def remove_attributes_from_findings(params = {}, options = {})
      request = build_request(:remove_attributes_from_findings, params)
      request.send_request(options)
    end

    # <p>Sets tags (key and value pairs) to the assessment template that is specified by the
    #          ARN of the assessment template.</p>
    # @param [Hash, Types::SetTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the assessment template that you want to set tags to.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A collection of key and value pairs that you want to set to the assessment
    #            template.</p>
    # @example Set tags for resource
    #   # Sets tags (key and value pairs) to the assessment template that is specified by the ARN of the assessment template.
    #   params = {
    #     resource_arn: "arn:aws:inspector:us-west-2:123456789012:target/0-nvgVhaxX/template/0-7sbz2Kz0",
    #     tags: [
    #       {
    #         key: "Example",
    #         value: "example"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.set_tags_for_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.set_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def set_tags_for_resource(params = {}, options = {})
      request = build_request(:set_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Starts the assessment run specified by the ARN of the assessment template. For this
    #          API to function properly, you must not exceed the limit of running up to 500 concurrent
    #          agents per AWS account.</p>
    # @param [Hash, Types::StartAssessmentRunRequest] params
    # @option params [String] :assessment_template_arn
    #   <p>The ARN of the assessment template of the assessment run that you want to
    #            start.</p>
    # @option params [String] :assessment_run_name
    #   <p>You can specify the name for the assessment run. The name must be unique for the
    #            assessment template whose ARN is used to start the assessment run.</p>
    # @example Start assessment run
    #   # Starts the assessment run specified by the ARN of the assessment template. For this API to function properly, you must not exceed the limit of running up to 500 concurrent agents per AWS account.
    #   params = {
    #     assessment_template_arn: "arn:aws:inspector:us-west-2:123456789012:target/0-nvgVhaxX/template/0-it5r2S4T",
    #     assessment_run_name: "examplerun"
    #   }
    #   options = {}
    #   response = client.start_assessment_run(params, options)
    #   response.to_h #=>
    #   {
    #     assessment_run_arn: "arn:aws:inspector:us-west-2:123456789012:target/0-nvgVhaxX/template/0-it5r2S4T/run/0-jOoroxyY"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_template_arn: "Arn", # required
    #     assessment_run_name: "AssessmentRunName"
    #   }
    #   options = {}
    #   response = client.start_assessment_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assessment_run_arn: "Arn", # required
    #   }
    # @return [Types::StartAssessmentRunResponse]
    def start_assessment_run(params = {}, options = {})
      request = build_request(:start_assessment_run, params)
      request.send_request(options)
    end

    # <p>Stops the assessment run that is specified by the ARN of the assessment
    #          run.</p>
    # @param [Hash, Types::StopAssessmentRunRequest] params
    # @option params [String] :assessment_run_arn
    #   <p>The ARN of the assessment run that you want to stop.</p>
    # @option params [String] :stop_action
    #   <p>An input option that can be set to either START_EVALUATION or SKIP_EVALUATION.
    #            START_EVALUATION (the default value), stops the AWS agent from collecting data and begins
    #            the results evaluation and the findings generation process. SKIP_EVALUATION cancels the
    #            assessment run immediately, after which no findings are generated.</p>
    # @example Stop assessment run
    #   # Stops the assessment run that is specified by the ARN of the assessment run.
    #   params = {
    #     assessment_run_arn: "arn:aws:inspector:us-west-2:123456789012:target/0-nvgVhaxX/template/0-it5r2S4T/run/0-11LMTAVe"
    #   }
    #   options = {}
    #   response = client.stop_assessment_run(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_run_arn: "Arn", # required
    #     stop_action: "START_EVALUATION" # One of: ["START_EVALUATION", "SKIP_EVALUATION"]
    #   }
    #   options = {}
    #   response = client.stop_assessment_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def stop_assessment_run(params = {}, options = {})
      request = build_request(:stop_assessment_run, params)
      request.send_request(options)
    end

    # <p>Enables the process of sending Amazon Simple Notification Service (SNS) notifications
    #          about a specified event to a specified SNS topic.</p>
    # @param [Hash, Types::SubscribeToEventRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the assessment template that is used during the event for which you want
    #            to receive SNS notifications.</p>
    # @option params [String] :event
    #   <p>The event for which you want to receive SNS notifications.</p>
    # @option params [String] :topic_arn
    #   <p>The ARN of the SNS topic to which the SNS notifications are sent.</p>
    # @example Subscribe to event
    #   # Enables the process of sending Amazon Simple Notification Service (SNS) notifications about a specified event to a specified SNS topic.
    #   params = {
    #     resource_arn: "arn:aws:inspector:us-west-2:123456789012:target/0-nvgVhaxX/template/0-7sbz2Kz0",
    #     event: ASSESSMENT_RUN_COMPLETED,
    #     topic_arn: "arn:aws:sns:us-west-2:123456789012:exampletopic"
    #   }
    #   options = {}
    #   response = client.subscribe_to_event(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     event: "ASSESSMENT_RUN_STARTED" # One of: ["ASSESSMENT_RUN_STARTED", "ASSESSMENT_RUN_COMPLETED", "ASSESSMENT_RUN_STATE_CHANGED", "FINDING_REPORTED", "OTHER"], # required
    #     topic_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.subscribe_to_event(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def subscribe_to_event(params = {}, options = {})
      request = build_request(:subscribe_to_event, params)
      request.send_request(options)
    end

    # <p>Disables the process of sending Amazon Simple Notification Service (SNS)
    #          notifications about a specified event to a specified SNS topic.</p>
    # @param [Hash, Types::UnsubscribeFromEventRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the assessment template that is used during the event for which you want
    #            to stop receiving SNS notifications.</p>
    # @option params [String] :event
    #   <p>The event for which you want to stop receiving SNS notifications.</p>
    # @option params [String] :topic_arn
    #   <p>The ARN of the SNS topic to which SNS notifications are sent.</p>
    # @example Unsubscribe from event
    #   # Disables the process of sending Amazon Simple Notification Service (SNS) notifications about a specified event to a specified SNS topic.
    #   params = {
    #     resource_arn: "arn:aws:inspector:us-west-2:123456789012:target/0-nvgVhaxX/template/0-7sbz2Kz0",
    #     event: ASSESSMENT_RUN_COMPLETED,
    #     topic_arn: "arn:aws:sns:us-west-2:123456789012:exampletopic"
    #   }
    #   options = {}
    #   response = client.unsubscribe_from_event(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     event: "ASSESSMENT_RUN_STARTED" # One of: ["ASSESSMENT_RUN_STARTED", "ASSESSMENT_RUN_COMPLETED", "ASSESSMENT_RUN_STATE_CHANGED", "FINDING_REPORTED", "OTHER"], # required
    #     topic_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.unsubscribe_from_event(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def unsubscribe_from_event(params = {}, options = {})
      request = build_request(:unsubscribe_from_event, params)
      request.send_request(options)
    end

    # <p>Updates the assessment target that is specified by the ARN of the assessment
    #          target.</p>
    #          <p>If resourceGroupArn is not specified, all EC2 instances in the current AWS account
    #          and region are included in the assessment target.</p>
    # @param [Hash, Types::UpdateAssessmentTargetRequest] params
    # @option params [String] :assessment_target_arn
    #   <p>The ARN of the assessment target that you want to update.</p>
    # @option params [String] :assessment_target_name
    #   <p>The name of the assessment target that you want to update.</p>
    # @option params [String] :resource_group_arn
    #   <p>The ARN of the resource group that is used to specify the new resource group to
    #            associate with the assessment target.</p>
    # @example Update assessment target
    #   # Updates the assessment target that is specified by the ARN of the assessment target.
    #   params = {
    #     assessment_target_arn: "arn:aws:inspector:us-west-2:123456789012:target/0-nvgVhaxX",
    #     assessment_target_name: "Example",
    #     resource_group_arn: "arn:aws:inspector:us-west-2:123456789012:resourcegroup/0-yNbgL5Pt"
    #   }
    #   options = {}
    #   response = client.update_assessment_target(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_target_arn: "Arn", # required
    #     assessment_target_name: "AssessmentTargetName", # required
    #     resource_group_arn: "Arn"
    #   }
    #   options = {}
    #   response = client.update_assessment_target(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_assessment_target(params = {}, options = {})
      request = build_request(:update_assessment_target, params)
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
      context[:gem_name] = 'aws-sdk-inspector'
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
