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
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'

module Aws::Inspector2
  # An API client for Aws::Inspector2.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Inspector2

    add_plugin(::Aws::Inspector2::Plugins::Endpoint)
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
    #  Custom Endpoint
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Inspector2::EndpointProvider)
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

    # <p>Associates an Amazon Web Services account with an Amazon Inspector delegated administrator. An HTTP 200 response
    #          indicates the association was successfully started, but doesn’t indicate whether it was
    #          completed. You can check if the association completed by using <a href="https://docs.aws.amazon.com/inspector/v2/APIReference/API_ListMembers.html">ListMembers</a> for multiple
    #          accounts or <a href="https://docs.aws.amazon.com/inspector/v2/APIReference/API_GetMember.html">GetMembers</a> for a single account.</p>
    # @param [Hash, Types::AssociateMemberInput] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the member account to be associated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #   }
    #   options = {}
    #   response = client.associate_member(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_id: "AccountId", # required
    #   }
    # @return [Types::AssociateMemberOutput]
    def associate_member(params = {}, options = {})
      request = build_request(:associate_member, params)
      request.send_request(options)
    end

    # <p>Associates multiple code repositories with an Amazon Inspector code security scan
    #          configuration.</p>
    # @param [Hash, Types::BatchAssociateCodeSecurityScanConfigurationRequest] params
    # @option params [Array<Types::AssociateConfigurationRequest>] :associate_configuration_requests
    #   <p>A list of code repositories to associate with the specified scan configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     associate_configuration_requests: [ # required
    #       {
    #         scan_configuration_arn: "ScanConfigurationArn", # required
    #         resource: { # required
    #           # One of:
    #           project_id: "ProjectId"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_associate_code_security_scan_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_associations: [
    #       {
    #         scan_configuration_arn: "ScanConfigurationArn",
    #         resource: {
    #           # One of:
    #           project_id: "ProjectId"
    #         },
    #         status_code: "INTERNAL_ERROR" # One of: ["INTERNAL_ERROR", "ACCESS_DENIED", "SCAN_CONFIGURATION_NOT_FOUND", "INVALID_INPUT", "RESOURCE_NOT_FOUND", "QUOTA_EXCEEDED"],
    #         status_message: "AssociationResultStatusMessage"
    #       }
    #     ],
    #     successful_associations: [
    #       {
    #         scan_configuration_arn: "ScanConfigurationArn",
    #         resource: {
    #           # One of:
    #           project_id: "ProjectId"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::BatchAssociateCodeSecurityScanConfigurationResponse]
    def batch_associate_code_security_scan_configuration(params = {}, options = {})
      request = build_request(:batch_associate_code_security_scan_configuration, params)
      request.send_request(options)
    end

    # <p>Disassociates multiple code repositories from an Amazon Inspector code security scan
    #          configuration.</p>
    # @param [Hash, Types::BatchDisassociateCodeSecurityScanConfigurationRequest] params
    # @option params [Array<Types::DisassociateConfigurationRequest>] :disassociate_configuration_requests
    #   <p>A list of code repositories to disassociate from the specified scan
    #            configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     disassociate_configuration_requests: [ # required
    #       {
    #         scan_configuration_arn: "ScanConfigurationArn", # required
    #         resource: { # required
    #           # One of:
    #           project_id: "ProjectId"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_disassociate_code_security_scan_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_associations: [
    #       {
    #         scan_configuration_arn: "ScanConfigurationArn",
    #         resource: {
    #           # One of:
    #           project_id: "ProjectId"
    #         },
    #         status_code: "INTERNAL_ERROR" # One of: ["INTERNAL_ERROR", "ACCESS_DENIED", "SCAN_CONFIGURATION_NOT_FOUND", "INVALID_INPUT", "RESOURCE_NOT_FOUND", "QUOTA_EXCEEDED"],
    #         status_message: "AssociationResultStatusMessage"
    #       }
    #     ],
    #     successful_associations: [
    #       {
    #         scan_configuration_arn: "ScanConfigurationArn",
    #         resource: {
    #           # One of:
    #           project_id: "ProjectId"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::BatchDisassociateCodeSecurityScanConfigurationResponse]
    def batch_disassociate_code_security_scan_configuration(params = {}, options = {})
      request = build_request(:batch_disassociate_code_security_scan_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves the Amazon Inspector status of multiple Amazon Web Services accounts within your environment.</p>
    # @param [Hash, Types::BatchGetAccountStatusInput] params
    # @option params [Array<String>] :account_ids
    #   <p>The 12-digit Amazon Web Services account IDs of the accounts to retrieve Amazon Inspector status for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["AccountId"]
    #   }
    #   options = {}
    #   response = client.batch_get_account_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     accounts: [ # required
    #       {
    #         account_id: "AccountId", # required
    #         state: { # required
    #           status: "Status", # required
    #           error_code: "ErrorCode", # required
    #           error_message: "NonEmptyString", # required
    #         },
    #         resource_state: { # required
    #           ec2: { # required
    #             status: "Status", # required
    #             error_code: "ErrorCode", # required
    #             error_message: "NonEmptyString", # required
    #           },
    #           ecr: { # required
    #             status: "Status", # required
    #             error_code: "ErrorCode", # required
    #             error_message: "NonEmptyString", # required
    #           },
    #           lambda: {
    #             status: "Status", # required
    #             error_code: "ErrorCode", # required
    #             error_message: "NonEmptyString", # required
    #           },
    #           lambda_code: {
    #             status: "Status", # required
    #             error_code: "ErrorCode", # required
    #             error_message: "NonEmptyString", # required
    #           },
    #           code_repository: {
    #             status: "Status", # required
    #             error_code: "ErrorCode", # required
    #             error_message: "NonEmptyString", # required
    #           }
    #         }
    #       }
    #     ],
    #     failed_accounts: [
    #       {
    #         account_id: "AccountId", # required
    #         status: "Status",
    #         resource_status: {
    #           ec2: "Status", # required
    #           ecr: "Status", # required
    #           lambda: "Status",
    #           lambda_code: "Status",
    #           code_repository: "Status"
    #         },
    #         error_code: "ErrorCode", # required
    #         error_message: "NonEmptyString", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetAccountStatusOutput]
    def batch_get_account_status(params = {}, options = {})
      request = build_request(:batch_get_account_status, params)
      request.send_request(options)
    end

    # <p>Retrieves code snippets from findings that Amazon Inspector detected code vulnerabilities
    #          in.</p>
    # @param [Hash, Types::BatchGetCodeSnippetRequest] params
    # @option params [Array<String>] :finding_arns
    #   <p>An array of finding ARNs for the findings you want to retrieve code snippets
    #            from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     finding_arns: ["FindingArn"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_code_snippet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     code_snippet_results: [
    #       {
    #         finding_arn: "FindingArn",
    #         start_line: 1,
    #         end_line: 1,
    #         code_snippet: [
    #           {
    #             content: "String", # required
    #             line_number: 1, # required
    #           }
    #         ],
    #         suggested_fixes: [
    #           {
    #             description: "String",
    #             code: "String"
    #           }
    #         ]
    #       }
    #     ],
    #     errors: [
    #       {
    #         finding_arn: "FindingArn", # required
    #         error_code: "CodeSnippetErrorCode", # required
    #         error_message: "NonEmptyString", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetCodeSnippetResponse]
    def batch_get_code_snippet(params = {}, options = {})
      request = build_request(:batch_get_code_snippet, params)
      request.send_request(options)
    end

    # <p>Gets vulnerability details for findings.</p>
    # @param [Hash, Types::BatchGetFindingDetailsRequest] params
    # @option params [Array<String>] :finding_arns
    #   <p>A list of finding ARNs.</p>
    # @example Sample BatchGetFindingDetails Call
    #   # Example operation for batch_get_finding_details
    #   params = {
    #     finding_arns: [
    #       "arn:aws:inspector2:eu-west-1:123456789012:finding/78b88cc9aa1d78b6e14fde90d774dde7",
    #       "arn:aws:inspector2:eu-west-1:111111111111:finding/78b88cc9aa1d78b6e14fde90d874dde7"
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_get_finding_details(params, options)
    #   response.to_h #=>
    #   {
    #     finding_details: [
    #       {
    #         finding_arn: "arn:aws:inspector2:eu-west-1:123456789012:finding/78b88cc9aa1d78b6e14fde90d774dde7",
    #         cisa_data: {
    #           date_added: Time.parse(1688580990),
    #           date_due: Time.parse(1688580999),
    #           action: "For all affected software assets for which updates exist, the only acceptable remediation actions are: 1) Apply updates; OR 2) remove affected assets from agency networks."
    #         },
    #         risk_score: 66,
    #         evidences: [
    #           {
    #             evidence_rule: "Historically Linked to Penetration Testing Tools",
    #             evidence_detail: "2 sightings on 1 source",
    #             severity: "Low"
    #           }
    #         ],
    #         ttps: [
    #           "TA0001",
    #           "TA0002"
    #         ],
    #         tools: [
    #           "Metasploit"
    #         ],
    #         exploit_observed: {
    #           last_seen: Time.parse(1688580990),
    #           first_seen: Time.parse(1688580800)
    #         },
    #         reference_urls: [
    #           "https://nvd.nist.gov/vuln/detail/CVE-2019-20367"
    #         ],
    #         cwes: [
    #           "cwe-1234"
    #         ],
    #         epss_score: 0.85
    #       }
    #     ],
    #     errors: [
    #       {
    #         finding_arn: "arn:aws:inspector2:eu-west-1:111111111111:finding/78b88cc9aa1d78b6e14fde90d874dde7",
    #         error_code: "ACCESS_DENIED",
    #         error_message: "You don't have permission to access this finding"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     finding_arns: ["FindingArn"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_finding_details(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     finding_details: [
    #       {
    #         finding_arn: "FindingArn",
    #         cisa_data: {
    #           date_added: Time.now,
    #           date_due: Time.now,
    #           action: "CisaAction"
    #         },
    #         risk_score: 1,
    #         evidences: [
    #           {
    #             evidence_rule: "EvidenceRule",
    #             evidence_detail: "EvidenceDetail",
    #             severity: "EvidenceSeverity"
    #           }
    #         ],
    #         ttps: ["Ttp"],
    #         tools: ["Tool"],
    #         exploit_observed: {
    #           last_seen: Time.now,
    #           first_seen: Time.now
    #         },
    #         reference_urls: ["VulnerabilityReferenceUrl"],
    #         cwes: ["Cwe"],
    #         epss_score: 1.0
    #       }
    #     ],
    #     errors: [
    #       {
    #         finding_arn: "FindingArn", # required
    #         error_code: "FindingDetailsErrorCode", # required
    #         error_message: "NonEmptyString", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetFindingDetailsResponse]
    def batch_get_finding_details(params = {}, options = {})
      request = build_request(:batch_get_finding_details, params)
      request.send_request(options)
    end

    # <p>Gets free trial status for multiple Amazon Web Services accounts.</p>
    # @param [Hash, Types::BatchGetFreeTrialInfoInput] params
    # @option params [Array<String>] :account_ids
    #   <p>The account IDs to get free trial status for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["MeteringAccountId"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_free_trial_info(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     accounts: [ # required
    #       {
    #         account_id: "MeteringAccountId", # required
    #         free_trial_info: [ # required
    #           {
    #             type: "FreeTrialType", # required
    #             start: Time.now, # required
    #             end: Time.now, # required
    #             status: "FreeTrialStatus", # required
    #           }
    #         ]
    #       }
    #     ],
    #     failed_accounts: [ # required
    #       {
    #         account_id: "MeteringAccountId", # required
    #         code: "FreeTrialInfoErrorCode", # required
    #         message: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetFreeTrialInfoOutput]
    def batch_get_free_trial_info(params = {}, options = {})
      request = build_request(:batch_get_free_trial_info, params)
      request.send_request(options)
    end

    # <p>Retrieves Amazon Inspector deep inspection activation status of multiple member accounts within
    #          your organization. You must be the delegated administrator of an organization in Amazon Inspector to
    #          use this API.</p>
    # @param [Hash, Types::BatchGetMemberEc2DeepInspectionStatusRequest] params
    # @option params [Array<String>] :account_ids
    #   <p>The unique identifiers for the Amazon Web Services accounts to retrieve Amazon Inspector deep inspection
    #            activation status for. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["AccountId"]
    #   }
    #   options = {}
    #   response = client.batch_get_member_ec2_deep_inspection_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_ids: [
    #       {
    #         account_id: "AccountId", # required
    #         status: "Ec2DeepInspectionStatus",
    #         error_message: "NonEmptyString"
    #       }
    #     ],
    #     failed_account_ids: [
    #       {
    #         account_id: "AccountId", # required
    #         ec2_scan_status: "Status",
    #         error_message: "NonEmptyString"
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetMemberEc2DeepInspectionStatusResponse]
    def batch_get_member_ec2_deep_inspection_status(params = {}, options = {})
      request = build_request(:batch_get_member_ec2_deep_inspection_status, params)
      request.send_request(options)
    end

    # <p>Activates or deactivates Amazon Inspector deep inspection for the provided member accounts in your
    #          organization. You must be the delegated administrator of an organization in Amazon Inspector to use
    #          this API.</p>
    # @param [Hash, Types::BatchUpdateMemberEc2DeepInspectionStatusRequest] params
    # @option params [Array<Types::MemberAccountEc2DeepInspectionStatus>] :account_ids
    #   <p>The unique identifiers for the Amazon Web Services accounts to change Amazon Inspector deep inspection status
    #            for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: [ # required
    #       {
    #         account_id: "AccountId", # required
    #         activate_deep_inspection: false, # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_update_member_ec2_deep_inspection_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_ids: [
    #       {
    #         account_id: "AccountId", # required
    #         status: "Ec2DeepInspectionStatus",
    #         error_message: "NonEmptyString"
    #       }
    #     ],
    #     failed_account_ids: [
    #       {
    #         account_id: "AccountId", # required
    #         ec2_scan_status: "Status",
    #         error_message: "NonEmptyString"
    #       }
    #     ]
    #   }
    # @return [Types::BatchUpdateMemberEc2DeepInspectionStatusResponse]
    def batch_update_member_ec2_deep_inspection_status(params = {}, options = {})
      request = build_request(:batch_update_member_ec2_deep_inspection_status, params)
      request.send_request(options)
    end

    # <p>Cancels the given findings report.</p>
    # @param [Hash, Types::CancelFindingsReportInput] params
    # @option params [String] :report_id
    #   <p>The ID of the report to be canceled.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     report_id: "ReportId", # required
    #   }
    #   options = {}
    #   response = client.cancel_findings_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     report_id: "ReportId", # required
    #   }
    # @return [Types::CancelFindingsReportOutput]
    def cancel_findings_report(params = {}, options = {})
      request = build_request(:cancel_findings_report, params)
      request.send_request(options)
    end

    # <p>Cancels a software bill of materials (SBOM) report.</p>
    # @param [Hash, Types::CancelSbomExportRequest] params
    # @option params [String] :report_id
    #   <p>The report ID of the SBOM export to cancel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     report_id: "ReportId", # required
    #   }
    #   options = {}
    #   response = client.cancel_sbom_export(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     report_id: "ReportId"
    #   }
    # @return [Types::CancelSbomExportResponse]
    def cancel_sbom_export(params = {}, options = {})
      request = build_request(:cancel_sbom_export, params)
      request.send_request(options)
    end

    # <p>Creates a CIS scan configuration.</p>
    # @param [Hash, Types::CreateCisScanConfigurationRequest] params
    # @option params [String] :scan_name
    #   <p>The scan name for the CIS scan configuration.</p>
    # @option params [String] :security_level
    #   <p> The security level for the CIS scan configuration. Security level refers to the
    #            Benchmark levels that CIS assigns to a profile. </p>
    # @option params [Types::Schedule] :schedule
    #   <p>The schedule for the CIS scan configuration.</p>
    # @option params [Types::CreateCisTargets] :targets
    #   <p>The targets for the CIS scan configuration.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags for the CIS scan configuration.</p>
    # @example Sample CreateCisScanConfiguration Call
    #   # Example operation for create_cis_scan_configuration
    #   params = {
    #     scan_name: "sample",
    #     security_level: LEVEL_1,
    #     schedule: {
    #     "daily" => {
    #       "startTime" => {
    #         "timeOfDay" => 12:34,
    #         "timezone" => UTC
    #       }
    #     }
    #   },
    #     targets: {
    #       account_ids: [
    #         "SELF"
    #       ],
    #       target_resource_tags: {
    #         "key" => [
    #           "value"
    #         ]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_cis_scan_configuration(params, options)
    #   response.to_h #=>
    #   {
    #     scan_configuration_arn: "arn:aws:inspector2:us-east-1:123412341234:owner/123412341234/cis-configuration/624b746d-e080-44ae-8c1d-48e653365a38"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     scan_name: "CisScanName", # required
    #     security_level: "LEVEL_1" # One of: ["LEVEL_1", "LEVEL_2"], # required
    #     schedule: { # required
    #       # One of:
    #       one_time: {
    #       },
    #       daily: {
    #         start_time: { # required
    #           time_of_day: "TimeOfDay", # required
    #           timezone: "Timezone", # required
    #         }
    #       },
    #       weekly: {
    #         start_time: { # required
    #           time_of_day: "TimeOfDay", # required
    #           timezone: "Timezone", # required
    #         },
    #         days: ["SUN" # One of: ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]], # required
    #       },
    #       monthly: {
    #         start_time: { # required
    #           time_of_day: "TimeOfDay", # required
    #           timezone: "Timezone", # required
    #         },
    #         day: "SUN" # One of: ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"], # required
    #       }
    #     },
    #     targets: { # required
    #       account_ids: ["TargetAccount"], # required
    #       target_resource_tags: { # required
    #         "TargetResourceTagsKey" => ["TargetResourceTagsValue"]
    #       }
    #     },
    #     tags: {
    #       "MapKey" => "MapValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_cis_scan_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scan_configuration_arn: "CisScanConfigurationArn"
    #   }
    # @return [Types::CreateCisScanConfigurationResponse]
    def create_cis_scan_configuration(params = {}, options = {})
      request = build_request(:create_cis_scan_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a code security integration with a source code repository provider.</p>
    #          <p>After calling the <code>CreateCodeSecurityIntegration</code> operation, you complete
    #          authentication and authorization with your provider. Next you call the
    #             <code>UpdateCodeSecurityIntegration</code> operation to provide the <code>details</code>
    #          to complete the integration setup</p>
    # @param [Hash, Types::CreateCodeSecurityIntegrationRequest] params
    # @option params [String] :name
    #   <p>The name of the code security integration.</p>
    # @option params [String] :type
    #   <p>The type of repository provider for the integration.</p>
    # @option params [Types::CreateIntegrationDetail] :details
    #   <p>The integration details specific to the repository provider type.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to apply to the code security integration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "IntegrationName", # required
    #     type: "GITLAB_SELF_MANAGED" # One of: ["GITLAB_SELF_MANAGED", "GITHUB"], # required
    #     details: {
    #       # One of:
    #       gitlab_self_managed: {
    #         instance_url: "InstanceUrl", # required
    #         access_token: "GitLabAccessToken", # required
    #       }
    #     },
    #     tags: {
    #       "MapKey" => "MapValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_code_security_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     integration_arn: "CodeSecurityIntegrationArn", # required
    #     status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "ACTIVE", "INACTIVE", "DISABLING"], # required
    #     authorization_url: "AuthorizationUrl"
    #   }
    # @return [Types::CreateCodeSecurityIntegrationResponse]
    def create_code_security_integration(params = {}, options = {})
      request = build_request(:create_code_security_integration, params)
      request.send_request(options)
    end

    # <p>Creates a scan configuration for code security scanning.</p>
    # @param [Hash, Types::CreateCodeSecurityScanConfigurationRequest] params
    # @option params [String] :name
    #   <p>The name of the scan configuration.</p>
    # @option params [String] :level
    #   <p>The security level for the scan configuration.</p>
    # @option params [Types::CodeSecurityScanConfiguration] :configuration
    #   <p>The configuration settings for the code security scan.</p>
    # @option params [Types::ScopeSettings] :scope_settings
    #   <p>The scope settings that define which repositories will be scanned. Include this
    #            parameter to create a default scan configuration. Otherwise Amazon Inspector creates a general scan
    #            configuration. </p>
    #            <p>A default scan configuration automatically applies to all existing and future projects
    #            imported into Amazon Inspector. Use the <code>BatchAssociateCodeSecurityScanConfiguration</code>
    #            operation to associate a general scan configuration with projects.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to apply to the scan configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ScanConfigurationName", # required
    #     level: "ORGANIZATION" # One of: ["ORGANIZATION", "ACCOUNT"], # required
    #     configuration: { # required
    #       periodic_scan_configuration: {
    #         frequency: "WEEKLY" # One of: ["WEEKLY", "MONTHLY", "NEVER"],
    #         frequency_expression: "FrequencyExpression"
    #       },
    #       continuous_integration_scan_configuration: {
    #         supported_events: ["PULL_REQUEST" # One of: ["PULL_REQUEST", "PUSH"]], # required
    #       },
    #       rule_set_categories: ["SAST" # One of: ["SAST", "IAC", "SCA"]], # required
    #     },
    #     scope_settings: {
    #       project_selection_scope: "ALL" # One of: ["ALL"]
    #     },
    #     tags: {
    #       "MapKey" => "MapValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_code_security_scan_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scan_configuration_arn: "ScanConfigurationArn", # required
    #   }
    # @return [Types::CreateCodeSecurityScanConfigurationResponse]
    def create_code_security_scan_configuration(params = {}, options = {})
      request = build_request(:create_code_security_scan_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a filter resource using specified filter criteria. When the filter action is set
    #          to <code>SUPPRESS</code> this action creates a suppression rule.</p>
    # @param [Hash, Types::CreateFilterInput] params
    # @option params [String] :action
    #   <p>Defines the action that is to be applied to the findings that match the filter.</p>
    # @option params [String] :description
    #   <p>A description of the filter.</p>
    # @option params [Types::FilterCriteria] :filter_criteria
    #   <p>Defines the criteria to be used in the filter for querying findings.</p>
    # @option params [String] :name
    #   <p>The name of the filter. Minimum length of 3. Maximum length of 64. Valid characters
    #            include alphanumeric characters, dot (.), underscore (_), and dash (-). Spaces are not
    #            allowed.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of tags for the filter.</p>
    # @option params [String] :reason
    #   <p>The reason for creating the filter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     action: "FilterAction", # required
    #     description: "FilterDescription",
    #     filter_criteria: { # required
    #       finding_arn: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       aws_account_id: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       finding_type: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       severity: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       first_observed_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       last_observed_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       updated_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       finding_status: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       title: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       inspector_score: [
    #         {
    #           upper_inclusive: 1.0,
    #           lower_inclusive: 1.0
    #         }
    #       ],
    #       resource_type: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       resource_id: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       resource_tags: [
    #         {
    #           comparison: "MapComparison", # required
    #           key: "MapKey", # required
    #           value: "MapValue"
    #         }
    #       ],
    #       ec2_instance_image_id: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ec2_instance_vpc_id: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ec2_instance_subnet_id: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ecr_image_pushed_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       ecr_image_architecture: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ecr_image_registry: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ecr_image_repository_name: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ecr_image_tags: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ecr_image_hash: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ecr_image_last_in_use_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       ecr_image_in_use_count: [
    #         {
    #           upper_inclusive: 1.0,
    #           lower_inclusive: 1.0
    #         }
    #       ],
    #       port_range: [
    #         {
    #           begin_inclusive: 1,
    #           end_inclusive: 1
    #         }
    #       ],
    #       network_protocol: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       component_id: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       component_type: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       vulnerability_id: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       vulnerability_source: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       vendor_severity: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       vulnerable_packages: [
    #         {
    #           name: {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           },
    #           version: {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           },
    #           epoch: {
    #             upper_inclusive: 1.0,
    #             lower_inclusive: 1.0
    #           },
    #           release: {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           },
    #           architecture: {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           },
    #           source_layer_hash: {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           },
    #           source_lambda_layer_arn: {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           },
    #           file_path: {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           }
    #         }
    #       ],
    #       related_vulnerabilities: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       fix_available: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       lambda_function_name: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       lambda_function_layers: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       lambda_function_runtime: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       lambda_function_last_modified_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       lambda_function_execution_role_arn: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       exploit_available: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       code_vulnerability_detector_name: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       code_vulnerability_detector_tags: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       code_vulnerability_file_path: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       epss_score: [
    #         {
    #           upper_inclusive: 1.0,
    #           lower_inclusive: 1.0
    #         }
    #       ],
    #       code_repository_project_name: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       code_repository_provider_type: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ]
    #     },
    #     name: "FilterName", # required
    #     tags: {
    #       "MapKey" => "MapValue"
    #     },
    #     reason: "FilterReason"
    #   }
    #   options = {}
    #   response = client.create_filter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "FilterArn", # required
    #   }
    # @return [Types::CreateFilterOutput]
    def create_filter(params = {}, options = {})
      request = build_request(:create_filter, params)
      request.send_request(options)
    end

    # <p>Creates a finding report. By default only <code>ACTIVE</code> findings are returned in
    #          the report. To see <code>SUPRESSED</code> or <code>CLOSED</code> findings you must specify
    #          a value for the <code>findingStatus</code> filter criteria. </p>
    # @param [Hash, Types::CreateFindingsReportInput] params
    # @option params [Types::FilterCriteria] :filter_criteria
    #   <p>The filter criteria to apply to the results of the finding report.</p>
    # @option params [String] :report_format
    #   <p>The format to generate the report in.</p>
    # @option params [Types::Destination] :s3_destination
    #   <p>The Amazon S3 export destination for the report.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter_criteria: {
    #       finding_arn: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       aws_account_id: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       finding_type: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       severity: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       first_observed_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       last_observed_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       updated_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       finding_status: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       title: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       inspector_score: [
    #         {
    #           upper_inclusive: 1.0,
    #           lower_inclusive: 1.0
    #         }
    #       ],
    #       resource_type: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       resource_id: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       resource_tags: [
    #         {
    #           comparison: "MapComparison", # required
    #           key: "MapKey", # required
    #           value: "MapValue"
    #         }
    #       ],
    #       ec2_instance_image_id: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ec2_instance_vpc_id: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ec2_instance_subnet_id: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ecr_image_pushed_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       ecr_image_architecture: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ecr_image_registry: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ecr_image_repository_name: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ecr_image_tags: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ecr_image_hash: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ecr_image_last_in_use_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       ecr_image_in_use_count: [
    #         {
    #           upper_inclusive: 1.0,
    #           lower_inclusive: 1.0
    #         }
    #       ],
    #       port_range: [
    #         {
    #           begin_inclusive: 1,
    #           end_inclusive: 1
    #         }
    #       ],
    #       network_protocol: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       component_id: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       component_type: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       vulnerability_id: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       vulnerability_source: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       vendor_severity: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       vulnerable_packages: [
    #         {
    #           name: {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           },
    #           version: {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           },
    #           epoch: {
    #             upper_inclusive: 1.0,
    #             lower_inclusive: 1.0
    #           },
    #           release: {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           },
    #           architecture: {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           },
    #           source_layer_hash: {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           },
    #           source_lambda_layer_arn: {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           },
    #           file_path: {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           }
    #         }
    #       ],
    #       related_vulnerabilities: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       fix_available: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       lambda_function_name: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       lambda_function_layers: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       lambda_function_runtime: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       lambda_function_last_modified_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       lambda_function_execution_role_arn: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       exploit_available: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       code_vulnerability_detector_name: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       code_vulnerability_detector_tags: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       code_vulnerability_file_path: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       epss_score: [
    #         {
    #           upper_inclusive: 1.0,
    #           lower_inclusive: 1.0
    #         }
    #       ],
    #       code_repository_project_name: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       code_repository_provider_type: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ]
    #     },
    #     report_format: "ReportFormat", # required
    #     s3_destination: { # required
    #       bucket_name: "String", # required
    #       key_prefix: "String",
    #       kms_key_arn: "String", # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_findings_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     report_id: "ReportId"
    #   }
    # @return [Types::CreateFindingsReportOutput]
    def create_findings_report(params = {}, options = {})
      request = build_request(:create_findings_report, params)
      request.send_request(options)
    end

    # <p>Creates a software bill of materials (SBOM) report.</p>
    # @param [Hash, Types::CreateSbomExportRequest] params
    # @option params [Types::ResourceFilterCriteria] :resource_filter_criteria
    #   <p>The resource filter criteria for the software bill of materials (SBOM) report.</p>
    # @option params [String] :report_format
    #   <p>The output format for the software bill of materials (SBOM) report.</p>
    # @option params [Types::Destination] :s3_destination
    #   <p>Contains details of the Amazon S3 bucket and KMS key used to export findings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_filter_criteria: {
    #       account_id: [
    #         {
    #           comparison: "ResourceStringComparison", # required
    #           value: "ResourceStringInput", # required
    #         }
    #       ],
    #       resource_id: [
    #         {
    #           comparison: "ResourceStringComparison", # required
    #           value: "ResourceStringInput", # required
    #         }
    #       ],
    #       resource_type: [
    #         {
    #           comparison: "ResourceStringComparison", # required
    #           value: "ResourceStringInput", # required
    #         }
    #       ],
    #       ecr_repository_name: [
    #         {
    #           comparison: "ResourceStringComparison", # required
    #           value: "ResourceStringInput", # required
    #         }
    #       ],
    #       lambda_function_name: [
    #         {
    #           comparison: "ResourceStringComparison", # required
    #           value: "ResourceStringInput", # required
    #         }
    #       ],
    #       ecr_image_tags: [
    #         {
    #           comparison: "ResourceStringComparison", # required
    #           value: "ResourceStringInput", # required
    #         }
    #       ],
    #       ec2_instance_tags: [
    #         {
    #           comparison: "ResourceMapComparison", # required
    #           key: "NonEmptyString", # required
    #           value: "NonEmptyString"
    #         }
    #       ],
    #       lambda_function_tags: [
    #         {
    #           comparison: "ResourceMapComparison", # required
    #           key: "NonEmptyString", # required
    #           value: "NonEmptyString"
    #         }
    #       ]
    #     },
    #     report_format: "SbomReportFormat", # required
    #     s3_destination: { # required
    #       bucket_name: "String", # required
    #       key_prefix: "String",
    #       kms_key_arn: "String", # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_sbom_export(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     report_id: "ReportId"
    #   }
    # @return [Types::CreateSbomExportResponse]
    def create_sbom_export(params = {}, options = {})
      request = build_request(:create_sbom_export, params)
      request.send_request(options)
    end

    # <p>Deletes a CIS scan configuration.</p>
    # @param [Hash, Types::DeleteCisScanConfigurationRequest] params
    # @option params [String] :scan_configuration_arn
    #   <p>The ARN of the CIS scan configuration.</p>
    # @example Sample DeleteCisScanConfiguration Call
    #   # Example operation for delete_cis_scan_configuration
    #   params = {
    #     scan_configuration_arn: "arn:aws:inspector2:us-east-1:123412341234:owner/123412341234/cis-configuration/624b746d-e080-44ae-8c1d-48e653365a38"
    #   }
    #   options = {}
    #   response = client.delete_cis_scan_configuration(params, options)
    #   response.to_h #=>
    #   {
    #     scan_configuration_arn: "arn:aws:inspector2:us-east-1:123412341234:owner/123412341234/cis-configuration/624b746d-e080-44ae-8c1d-48e653365a38"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     scan_configuration_arn: "CisScanConfigurationArn", # required
    #   }
    #   options = {}
    #   response = client.delete_cis_scan_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scan_configuration_arn: "CisScanConfigurationArn", # required
    #   }
    # @return [Types::DeleteCisScanConfigurationResponse]
    def delete_cis_scan_configuration(params = {}, options = {})
      request = build_request(:delete_cis_scan_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes a code security integration.</p>
    # @param [Hash, Types::DeleteCodeSecurityIntegrationRequest] params
    # @option params [String] :integration_arn
    #   <p>The Amazon Resource Name (ARN) of the code security integration to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     integration_arn: "CodeSecurityIntegrationArn", # required
    #   }
    #   options = {}
    #   response = client.delete_code_security_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     integration_arn: "CodeSecurityIntegrationArn"
    #   }
    # @return [Types::DeleteCodeSecurityIntegrationResponse]
    def delete_code_security_integration(params = {}, options = {})
      request = build_request(:delete_code_security_integration, params)
      request.send_request(options)
    end

    # <p>Deletes a code security scan configuration.</p>
    # @param [Hash, Types::DeleteCodeSecurityScanConfigurationRequest] params
    # @option params [String] :scan_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the scan configuration to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scan_configuration_arn: "ScanConfigurationArn", # required
    #   }
    #   options = {}
    #   response = client.delete_code_security_scan_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scan_configuration_arn: "ScanConfigurationArn"
    #   }
    # @return [Types::DeleteCodeSecurityScanConfigurationResponse]
    def delete_code_security_scan_configuration(params = {}, options = {})
      request = build_request(:delete_code_security_scan_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes a filter resource.</p>
    # @param [Hash, Types::DeleteFilterInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Number (ARN) of the filter to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "FilterArn", # required
    #   }
    #   options = {}
    #   response = client.delete_filter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "FilterArn", # required
    #   }
    # @return [Types::DeleteFilterOutput]
    def delete_filter(params = {}, options = {})
      request = build_request(:delete_filter, params)
      request.send_request(options)
    end

    # <p>Describe Amazon Inspector configuration settings for an Amazon Web Services organization.</p>
    # @param [Hash, Types::DescribeOrganizationConfigurationInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_organization_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     auto_enable: {
    #       ec2: false, # required
    #       ecr: false, # required
    #       lambda: false,
    #       lambda_code: false,
    #       code_repository: false
    #     },
    #     max_account_limit_reached: false
    #   }
    # @return [Types::DescribeOrganizationConfigurationOutput]
    def describe_organization_configuration(params = {}, options = {})
      request = build_request(:describe_organization_configuration, params)
      request.send_request(options)
    end

    # <p>Disables Amazon Inspector scans for one or more Amazon Web Services accounts. Disabling all scan types in an
    #          account disables the Amazon Inspector service.</p>
    # @param [Hash, Types::DisableInput] params
    # @option params [Array<String>] :account_ids
    #   <p>An array of account IDs you want to disable Amazon Inspector scans for.</p>
    # @option params [Array<String>] :resource_types
    #   <p>The resource scan types you want to disable.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["AccountId"],
    #     resource_types: ["ResourceScanType"]
    #   }
    #   options = {}
    #   response = client.disable(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     accounts: [ # required
    #       {
    #         account_id: "AccountId", # required
    #         status: "Status", # required
    #         resource_status: { # required
    #           ec2: "Status", # required
    #           ecr: "Status", # required
    #           lambda: "Status",
    #           lambda_code: "Status",
    #           code_repository: "Status"
    #         }
    #       }
    #     ],
    #     failed_accounts: [
    #       {
    #         account_id: "AccountId", # required
    #         status: "Status",
    #         resource_status: {
    #           ec2: "Status", # required
    #           ecr: "Status", # required
    #           lambda: "Status",
    #           lambda_code: "Status",
    #           code_repository: "Status"
    #         },
    #         error_code: "ErrorCode", # required
    #         error_message: "NonEmptyString", # required
    #       }
    #     ]
    #   }
    # @return [Types::DisableOutput]
    def disable(params = {}, options = {})
      request = build_request(:disable, params)
      request.send_request(options)
    end

    # <p>Disables the Amazon Inspector delegated administrator for your organization.</p>
    # @param [Hash, Types::DisableDelegatedAdminAccountInput] params
    # @option params [String] :delegated_admin_account_id
    #   <p>The Amazon Web Services account ID of the current Amazon Inspector delegated administrator.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     delegated_admin_account_id: "AccountId", # required
    #   }
    #   options = {}
    #   response = client.disable_delegated_admin_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     delegated_admin_account_id: "AccountId", # required
    #   }
    # @return [Types::DisableDelegatedAdminAccountOutput]
    def disable_delegated_admin_account(params = {}, options = {})
      request = build_request(:disable_delegated_admin_account, params)
      request.send_request(options)
    end

    # <p>Disassociates a member account from an Amazon Inspector delegated administrator.</p>
    # @param [Hash, Types::DisassociateMemberInput] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the member account to disassociate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #   }
    #   options = {}
    #   response = client.disassociate_member(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_id: "AccountId", # required
    #   }
    # @return [Types::DisassociateMemberOutput]
    def disassociate_member(params = {}, options = {})
      request = build_request(:disassociate_member, params)
      request.send_request(options)
    end

    # <p>Enables Amazon Inspector scans for one or more Amazon Web Services accounts.</p>
    # @param [Hash, Types::EnableInput] params
    # @option params [Array<String>] :account_ids
    #   <p>A list of account IDs you want to enable Amazon Inspector scans for.</p>
    # @option params [Array<String>] :resource_types
    #   <p>The resource scan types you want to enable.</p>
    # @option params [String] :client_token
    #   <p>The idempotency token for the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["AccountId"],
    #     resource_types: ["ResourceScanType"], # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.enable(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     accounts: [ # required
    #       {
    #         account_id: "AccountId", # required
    #         status: "Status", # required
    #         resource_status: { # required
    #           ec2: "Status", # required
    #           ecr: "Status", # required
    #           lambda: "Status",
    #           lambda_code: "Status",
    #           code_repository: "Status"
    #         }
    #       }
    #     ],
    #     failed_accounts: [
    #       {
    #         account_id: "AccountId", # required
    #         status: "Status",
    #         resource_status: {
    #           ec2: "Status", # required
    #           ecr: "Status", # required
    #           lambda: "Status",
    #           lambda_code: "Status",
    #           code_repository: "Status"
    #         },
    #         error_code: "ErrorCode", # required
    #         error_message: "NonEmptyString", # required
    #       }
    #     ]
    #   }
    # @return [Types::EnableOutput]
    def enable(params = {}, options = {})
      request = build_request(:enable, params)
      request.send_request(options)
    end

    # <p>Enables the Amazon Inspector delegated administrator for your Organizations organization.</p>
    # @param [Hash, Types::EnableDelegatedAdminAccountInput] params
    # @option params [String] :delegated_admin_account_id
    #   <p>The Amazon Web Services account ID of the Amazon Inspector delegated administrator.</p>
    # @option params [String] :client_token
    #   <p>The idempotency token for the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     delegated_admin_account_id: "AccountId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.enable_delegated_admin_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     delegated_admin_account_id: "AccountId", # required
    #   }
    # @return [Types::EnableDelegatedAdminAccountOutput]
    def enable_delegated_admin_account(params = {}, options = {})
      request = build_request(:enable_delegated_admin_account, params)
      request.send_request(options)
    end

    # <p>Retrieves a CIS scan report.</p>
    # @param [Hash, Types::GetCisScanReportRequest] params
    # @option params [String] :scan_arn
    #   <p>The scan ARN.</p>
    # @option params [Array<String>] :target_accounts
    #   <p>The target accounts.</p>
    # @option params [String] :report_format
    #   <p> The format of the report. Valid values are <code>PDF</code> and <code>CSV</code>. If no
    #            value is specified, the report format defaults to <code>PDF</code>. </p>
    # @example Sample GetCisScanReport Call
    #   # Example operation for get_cis_scan_report
    #   params = {
    #     scan_arn: "arn:aws:inspector2:us-east-1:123412341234:owner/123412341234/cis-scan/624b746d-e080-44ae-8c1d-48e653365a38",
    #     report_format: PDF
    #   }
    #   options = {}
    #   response = client.get_cis_scan_report(params, options)
    #   response.to_h #=>
    #   {
    #     url: "www.s3.amazon.com/abcdef",
    #     status: SUCCEEDED
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     scan_arn: "CisScanArn", # required
    #     target_accounts: ["AccountId"],
    #     report_format: "PDF" # One of: ["PDF", "CSV"]
    #   }
    #   options = {}
    #   response = client.get_cis_scan_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     url: "String",
    #     status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "IN_PROGRESS"]
    #   }
    # @return [Types::GetCisScanReportResponse]
    def get_cis_scan_report(params = {}, options = {})
      request = build_request(:get_cis_scan_report, params)
      request.send_request(options)
    end

    # <p>Retrieves CIS scan result details.</p>
    # @param [Hash, Types::GetCisScanResultDetailsRequest] params
    # @option params [String] :scan_arn
    #   <p>The scan ARN.</p>
    # @option params [String] :target_resource_id
    #   <p>The target resource ID.</p>
    # @option params [String] :account_id
    #   <p>The account ID.</p>
    # @option params [Types::CisScanResultDetailsFilterCriteria] :filter_criteria
    #   <p>The filter criteria.</p>
    # @option params [String] :sort_by
    #   <p>The sort by order.</p>
    # @option params [String] :sort_order
    #   <p>The sort order.</p>
    # @option params [String] :next_token
    #   <p>The pagination token from a previous request that's used to retrieve the next page of
    #            results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of CIS scan result details to be returned in a single page of
    #            results.</p>
    # @example Sample GetCisScanResultDetails Call
    #   # Example operation for get_cis_scan_result_details
    #   params = {
    #     scan_arn: "arn:aws:inspector2:us-east-1:123412341234:owner/123412341234/cis-scan/624b746d-e080-44ae-8c1d-48e653365a38",
    #     target_resource_id: "i-12341234",
    #     account_id: "123412341234"
    #   }
    #   options = {}
    #   response = client.get_cis_scan_result_details(params, options)
    #   response.to_h #=>
    #   {
    #     scan_result_details: [
    #       {
    #         scan_arn: "arn:aws:inspector2:us-east-1:123412341234:owner/123412341234/cis-scan/624b746d-e080-44ae-8c1d-48e653365a38",
    #         account_id: "123412341234",
    #         target_resource_id: "i-12341234",
    #         platform: "AMAZON_LINUX_2",
    #         status: PASSED,
    #         check_id: "1.1.1.1",
    #         title: "title1",
    #         check_description: "description",
    #         remediation: "fix",
    #         level: LEVEL_1
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     scan_arn: "CisScanArn", # required
    #     target_resource_id: "ResourceId", # required
    #     account_id: "AccountId", # required
    #     filter_criteria: {
    #       finding_status_filters: [
    #         {
    #           comparison: "EQUALS" # One of: ["EQUALS"], # required
    #           value: "PASSED" # One of: ["PASSED", "FAILED", "SKIPPED"], # required
    #         }
    #       ],
    #       check_id_filters: [
    #         {
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS"], # required
    #           value: "String", # required
    #         }
    #       ],
    #       title_filters: [
    #         {
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS"], # required
    #           value: "String", # required
    #         }
    #       ],
    #       security_level_filters: [
    #         {
    #           comparison: "EQUALS" # One of: ["EQUALS"], # required
    #           value: "LEVEL_1" # One of: ["LEVEL_1", "LEVEL_2"], # required
    #         }
    #       ],
    #       finding_arn_filters: [
    #         {
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS"], # required
    #           value: "String", # required
    #         }
    #       ]
    #     },
    #     sort_by: "CHECK_ID" # One of: ["CHECK_ID", "STATUS"],
    #     sort_order: "ASC" # One of: ["ASC", "DESC"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_cis_scan_result_details(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scan_result_details: [
    #       {
    #         scan_arn: "CisScanArn", # required
    #         account_id: "AccountId",
    #         target_resource_id: "ResourceId",
    #         platform: "String",
    #         status: "PASSED" # One of: ["PASSED", "FAILED", "SKIPPED"],
    #         status_reason: "String",
    #         check_id: "String",
    #         title: "String",
    #         check_description: "String",
    #         remediation: "String",
    #         level: "LEVEL_1" # One of: ["LEVEL_1", "LEVEL_2"],
    #         finding_arn: "CisFindingArn"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetCisScanResultDetailsResponse]
    def get_cis_scan_result_details(params = {}, options = {})
      request = build_request(:get_cis_scan_result_details, params)
      request.send_request(options)
    end

    # <p>Returns a list of clusters and metadata associated with an image.</p>
    # @param [Hash, Types::GetClustersForImageRequest] params
    # @option params [Types::ClusterForImageFilterCriteria] :filter
    #   <p>The resource Id for the Amazon ECR image.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned in a single page of results.</p>
    # @option params [String] :next_token
    #   <p>The pagination token from a previous request used to retrieve the next page of
    #            results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: { # required
    #       resource_id: "String", # required
    #     },
    #     max_results: 1,
    #     next_token: "GetClustersForImageNextToken"
    #   }
    #   options = {}
    #   response = client.get_clusters_for_image(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: [ # required
    #       {
    #         cluster_arn: "String", # required
    #         cluster_details: [
    #           {
    #             last_in_use: Time.now, # required
    #             running_unit_count: 1,
    #             stopped_unit_count: 1,
    #             cluster_metadata: { # required
    #               # One of:
    #               aws_ecs_metadata_details: {
    #                 details_group: "String", # required
    #                 task_definition_arn: "String", # required
    #               },
    #               aws_eks_metadata_details: {
    #                 namespace: "String",
    #                 workload_info_list: [
    #                   {
    #                     name: "String", # required
    #                     type: "String", # required
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "GetClustersForImageNextToken"
    #   }
    # @return [Types::GetClustersForImageResponse]
    def get_clusters_for_image(params = {}, options = {})
      request = build_request(:get_clusters_for_image, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a code security integration.</p>
    # @param [Hash, Types::GetCodeSecurityIntegrationRequest] params
    # @option params [String] :integration_arn
    #   <p>The Amazon Resource Name (ARN) of the code security integration to retrieve.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags associated with the code security integration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     integration_arn: "CodeSecurityIntegrationArn", # required
    #     tags: {
    #       "MapKey" => "MapValue"
    #     }
    #   }
    #   options = {}
    #   response = client.get_code_security_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     integration_arn: "CodeSecurityIntegrationArn", # required
    #     name: "IntegrationName", # required
    #     type: "GITLAB_SELF_MANAGED" # One of: ["GITLAB_SELF_MANAGED", "GITHUB"], # required
    #     status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "ACTIVE", "INACTIVE", "DISABLING"], # required
    #     status_reason: "String", # required
    #     created_on: Time.now, # required
    #     last_update_on: Time.now, # required
    #     tags: {
    #       "MapKey" => "MapValue"
    #     },
    #     authorization_url: "AuthorizationUrl"
    #   }
    # @return [Types::GetCodeSecurityIntegrationResponse]
    def get_code_security_integration(params = {}, options = {})
      request = build_request(:get_code_security_integration, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a specific code security scan.</p>
    # @param [Hash, Types::GetCodeSecurityScanRequest] params
    # @option params [Types::CodeSecurityResource] :resource
    #   <p>The resource identifier for the code repository that was scanned.</p>
    # @option params [String] :scan_id
    #   <p>The unique identifier of the scan to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource: { # required
    #       # One of:
    #       project_id: "ProjectId"
    #     },
    #     scan_id: "CodeSecurityUuid", # required
    #   }
    #   options = {}
    #   response = client.get_code_security_scan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scan_id: "CodeSecurityUuid",
    #     resource: {
    #       # One of:
    #       project_id: "ProjectId"
    #     },
    #     account_id: "String",
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCESSFUL", "FAILED", "SKIPPED"],
    #     status_reason: "String",
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     last_commit_id: "String"
    #   }
    # @return [Types::GetCodeSecurityScanResponse]
    def get_code_security_scan(params = {}, options = {})
      request = build_request(:get_code_security_scan, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a code security scan configuration.</p>
    # @param [Hash, Types::GetCodeSecurityScanConfigurationRequest] params
    # @option params [String] :scan_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the scan configuration to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scan_configuration_arn: "ScanConfigurationArn", # required
    #   }
    #   options = {}
    #   response = client.get_code_security_scan_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scan_configuration_arn: "ScanConfigurationArn",
    #     name: "ScanConfigurationName",
    #     configuration: {
    #       periodic_scan_configuration: {
    #         frequency: "WEEKLY" # One of: ["WEEKLY", "MONTHLY", "NEVER"],
    #         frequency_expression: "FrequencyExpression"
    #       },
    #       continuous_integration_scan_configuration: {
    #         supported_events: ["PULL_REQUEST" # One of: ["PULL_REQUEST", "PUSH"]], # required
    #       },
    #       rule_set_categories: ["SAST" # One of: ["SAST", "IAC", "SCA"]], # required
    #     },
    #     level: "ORGANIZATION" # One of: ["ORGANIZATION", "ACCOUNT"],
    #     scope_settings: {
    #       project_selection_scope: "ALL" # One of: ["ALL"]
    #     },
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     tags: {
    #       "MapKey" => "MapValue"
    #     }
    #   }
    # @return [Types::GetCodeSecurityScanConfigurationResponse]
    def get_code_security_scan_configuration(params = {}, options = {})
      request = build_request(:get_code_security_scan_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves setting configurations for Inspector scans.</p>
    # @param [Hash, Types::GetConfigurationInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ecr_configuration: {
    #       rescan_duration_state: {
    #         rescan_duration: "EcrRescanDuration",
    #         status: "EcrRescanDurationStatus",
    #         updated_at: Time.now,
    #         pull_date_rescan_duration: "EcrPullDateRescanDuration",
    #         pull_date_rescan_mode: "EcrPullDateRescanMode"
    #       }
    #     },
    #     ec2_configuration: {
    #       scan_mode_state: {
    #         scan_mode: "Ec2ScanMode",
    #         scan_mode_status: "Ec2ScanModeStatus"
    #       }
    #     }
    #   }
    # @return [Types::GetConfigurationOutput]
    def get_configuration(params = {}, options = {})
      request = build_request(:get_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the Amazon Inspector delegated administrator for your
    #          organization.</p>
    # @param [Hash, Types::GetDelegatedAdminAccountInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_delegated_admin_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     delegated_admin: {
    #       account_id: "AccountId",
    #       relationship_status: "RelationshipStatus"
    #     }
    #   }
    # @return [Types::GetDelegatedAdminAccountOutput]
    def get_delegated_admin_account(params = {}, options = {})
      request = build_request(:get_delegated_admin_account, params)
      request.send_request(options)
    end

    # <p>Retrieves the activation status of Amazon Inspector deep inspection and custom paths associated
    #          with your account. </p>
    # @param [Hash, Types::GetEc2DeepInspectionConfigurationRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_ec2_deep_inspection_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     package_paths: ["Path"],
    #     org_package_paths: ["Path"],
    #     status: "Ec2DeepInspectionStatus",
    #     error_message: "NonEmptyString"
    #   }
    # @return [Types::GetEc2DeepInspectionConfigurationResponse]
    def get_ec2_deep_inspection_configuration(params = {}, options = {})
      request = build_request(:get_ec2_deep_inspection_configuration, params)
      request.send_request(options)
    end

    # <p>Gets an encryption key.</p>
    # @param [Hash, Types::GetEncryptionKeyRequest] params
    # @option params [String] :scan_type
    #   <p>The scan type the key encrypts.</p>
    # @option params [String] :resource_type
    #   <p>The resource type the key encrypts.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scan_type: "ScanType", # required
    #     resource_type: "ResourceType", # required
    #   }
    #   options = {}
    #   response = client.get_encryption_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     kms_key_id: "KmsKeyArn", # required
    #   }
    # @return [Types::GetEncryptionKeyResponse]
    def get_encryption_key(params = {}, options = {})
      request = build_request(:get_encryption_key, params)
      request.send_request(options)
    end

    # <p>Gets the status of a findings report.</p>
    # @param [Hash, Types::GetFindingsReportStatusInput] params
    # @option params [String] :report_id
    #   <p>The ID of the report to retrieve the status of.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     report_id: "ReportId"
    #   }
    #   options = {}
    #   response = client.get_findings_report_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     report_id: "ReportId",
    #     status: "ExternalReportStatus",
    #     error_code: "ReportingErrorCode",
    #     error_message: "ErrorMessage",
    #     destination: {
    #       bucket_name: "String", # required
    #       key_prefix: "String",
    #       kms_key_arn: "String", # required
    #     },
    #     filter_criteria: {
    #       finding_arn: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       aws_account_id: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       finding_type: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       severity: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       first_observed_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       last_observed_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       updated_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       finding_status: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       title: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       inspector_score: [
    #         {
    #           upper_inclusive: 1.0,
    #           lower_inclusive: 1.0
    #         }
    #       ],
    #       resource_type: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       resource_id: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       resource_tags: [
    #         {
    #           comparison: "MapComparison", # required
    #           key: "MapKey", # required
    #           value: "MapValue"
    #         }
    #       ],
    #       ec2_instance_image_id: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ec2_instance_vpc_id: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ec2_instance_subnet_id: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ecr_image_pushed_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       ecr_image_architecture: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ecr_image_registry: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ecr_image_repository_name: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ecr_image_tags: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ecr_image_hash: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ecr_image_last_in_use_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       ecr_image_in_use_count: [
    #         {
    #           upper_inclusive: 1.0,
    #           lower_inclusive: 1.0
    #         }
    #       ],
    #       port_range: [
    #         {
    #           begin_inclusive: 1,
    #           end_inclusive: 1
    #         }
    #       ],
    #       network_protocol: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       component_id: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       component_type: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       vulnerability_id: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       vulnerability_source: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       vendor_severity: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       vulnerable_packages: [
    #         {
    #           name: {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           },
    #           version: {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           },
    #           epoch: {
    #             upper_inclusive: 1.0,
    #             lower_inclusive: 1.0
    #           },
    #           release: {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           },
    #           architecture: {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           },
    #           source_layer_hash: {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           },
    #           source_lambda_layer_arn: {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           },
    #           file_path: {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           }
    #         }
    #       ],
    #       related_vulnerabilities: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       fix_available: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       lambda_function_name: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       lambda_function_layers: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       lambda_function_runtime: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       lambda_function_last_modified_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       lambda_function_execution_role_arn: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       exploit_available: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       code_vulnerability_detector_name: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       code_vulnerability_detector_tags: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       code_vulnerability_file_path: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       epss_score: [
    #         {
    #           upper_inclusive: 1.0,
    #           lower_inclusive: 1.0
    #         }
    #       ],
    #       code_repository_project_name: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       code_repository_provider_type: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetFindingsReportStatusOutput]
    def get_findings_report_status(params = {}, options = {})
      request = build_request(:get_findings_report_status, params)
      request.send_request(options)
    end

    # <p>Gets member information for your organization.</p>
    # @param [Hash, Types::GetMemberInput] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the member account to retrieve information on.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #   }
    #   options = {}
    #   response = client.get_member(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     member: {
    #       account_id: "AccountId",
    #       relationship_status: "RelationshipStatus",
    #       delegated_admin_account_id: "AccountId",
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::GetMemberOutput]
    def get_member(params = {}, options = {})
      request = build_request(:get_member, params)
      request.send_request(options)
    end

    # <p>Gets details of a software bill of materials (SBOM) report.</p>
    # @param [Hash, Types::GetSbomExportRequest] params
    # @option params [String] :report_id
    #   <p>The report ID of the SBOM export to get details for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     report_id: "ReportId", # required
    #   }
    #   options = {}
    #   response = client.get_sbom_export(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     report_id: "ReportId",
    #     format: "SbomReportFormat",
    #     status: "ExternalReportStatus",
    #     error_code: "ReportingErrorCode",
    #     error_message: "NonEmptyString",
    #     s3_destination: {
    #       bucket_name: "String", # required
    #       key_prefix: "String",
    #       kms_key_arn: "String", # required
    #     },
    #     filter_criteria: {
    #       account_id: [
    #         {
    #           comparison: "ResourceStringComparison", # required
    #           value: "ResourceStringInput", # required
    #         }
    #       ],
    #       resource_id: [
    #         {
    #           comparison: "ResourceStringComparison", # required
    #           value: "ResourceStringInput", # required
    #         }
    #       ],
    #       resource_type: [
    #         {
    #           comparison: "ResourceStringComparison", # required
    #           value: "ResourceStringInput", # required
    #         }
    #       ],
    #       ecr_repository_name: [
    #         {
    #           comparison: "ResourceStringComparison", # required
    #           value: "ResourceStringInput", # required
    #         }
    #       ],
    #       lambda_function_name: [
    #         {
    #           comparison: "ResourceStringComparison", # required
    #           value: "ResourceStringInput", # required
    #         }
    #       ],
    #       ecr_image_tags: [
    #         {
    #           comparison: "ResourceStringComparison", # required
    #           value: "ResourceStringInput", # required
    #         }
    #       ],
    #       ec2_instance_tags: [
    #         {
    #           comparison: "ResourceMapComparison", # required
    #           key: "NonEmptyString", # required
    #           value: "NonEmptyString"
    #         }
    #       ],
    #       lambda_function_tags: [
    #         {
    #           comparison: "ResourceMapComparison", # required
    #           key: "NonEmptyString", # required
    #           value: "NonEmptyString"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetSbomExportResponse]
    def get_sbom_export(params = {}, options = {})
      request = build_request(:get_sbom_export, params)
      request.send_request(options)
    end

    # <p>Lists the permissions an account has to configure Amazon Inspector.</p>
    # @param [Hash, Types::ListAccountPermissionsInput] params
    # @option params [String] :service
    #   <p>The service scan type to check permissions for.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results the response can return. If your request would return more
    #            than the maximum the response will return a <code>nextToken</code> value, use this value
    #            when you call the action again to get the remaining results.</p>
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. If your response returns
    #            more than the <code>maxResults</code> maximum value it will also return a
    #               <code>nextToken</code> value. For subsequent calls, use the NextToken value returned
    #            from the previous request to continue listing results after the first page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service: "Service",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_account_permissions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     permissions: [ # required
    #       {
    #         service: "Service", # required
    #         operation: "Operation", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAccountPermissionsOutput]
    def list_account_permissions(params = {}, options = {})
      request = build_request(:list_account_permissions, params)
      request.send_request(options)
    end

    # <p>Lists CIS scan configurations.</p>
    # @param [Hash, Types::ListCisScanConfigurationsRequest] params
    # @option params [Types::ListCisScanConfigurationsFilterCriteria] :filter_criteria
    #   <p>The CIS scan configuration filter criteria.</p>
    # @option params [String] :sort_by
    #   <p>The CIS scan configuration sort by order.</p>
    # @option params [String] :sort_order
    #   <p>The CIS scan configuration sort order order.</p>
    # @option params [String] :next_token
    #   <p>The pagination token from a previous request that's used to retrieve the next page of
    #            results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of CIS scan configurations to be returned in a single page of
    #            results.</p>
    # @example Sample ListCisScanConfigurations Call
    #   # Example operation for list_cis_scan_configurations
    #   params = {}
    #   options = {}
    #   response = client.list_cis_scan_configurations(params, options)
    #   response.to_h #=>
    #   {
    #     scan_configurations: [
    #       {
    #         scan_configuration_arn: "arn:aws:inspector2:us-east-1:123412341234:owner/123412341234/cis-configuration/624b746d-e080-44ae-8c1d-48e653365a38",
    #         owner_id: "123412341234",
    #         scan_name: "sample",
    #         security_level: LEVEL_1,
    #         schedule: {
    #     "daily" => {
    #       "startTime" => {
    #         "timeOfDay" => 12:34,
    #         "timezone" => UTC
    #       }
    #     }
    #   },
    #         targets: {
    #           account_ids: [
    #             "123412341234"
    #           ],
    #           target_resource_tags: {
    #             "key" => [
    #               "value"
    #             ]
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     filter_criteria: {
    #       scan_name_filters: [
    #         {
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS"], # required
    #           value: "String", # required
    #         }
    #       ],
    #       target_resource_tag_filters: [
    #         {
    #           comparison: "EQUALS" # One of: ["EQUALS"], # required
    #           key: "NonEmptyString", # required
    #           value: "NonEmptyString", # required
    #         }
    #       ],
    #       scan_configuration_arn_filters: [
    #         {
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS"], # required
    #           value: "String", # required
    #         }
    #       ]
    #     },
    #     sort_by: "SCAN_NAME" # One of: ["SCAN_NAME", "SCAN_CONFIGURATION_ARN"],
    #     sort_order: "ASC" # One of: ["ASC", "DESC"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_cis_scan_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scan_configurations: [
    #       {
    #         scan_configuration_arn: "CisScanConfigurationArn", # required
    #         owner_id: "CisOwnerId",
    #         scan_name: "CisScanName",
    #         security_level: "LEVEL_1" # One of: ["LEVEL_1", "LEVEL_2"],
    #         schedule: {
    #           # One of:
    #           one_time: {
    #           },
    #           daily: {
    #             start_time: { # required
    #               time_of_day: "TimeOfDay", # required
    #               timezone: "Timezone", # required
    #             }
    #           },
    #           weekly: {
    #             start_time: { # required
    #               time_of_day: "TimeOfDay", # required
    #               timezone: "Timezone", # required
    #             },
    #             days: ["SUN" # One of: ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]], # required
    #           },
    #           monthly: {
    #             start_time: { # required
    #               time_of_day: "TimeOfDay", # required
    #               timezone: "Timezone", # required
    #             },
    #             day: "SUN" # One of: ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"], # required
    #           }
    #         },
    #         targets: {
    #           account_ids: ["AccountId"],
    #           target_resource_tags: {
    #             "TargetResourceTagsKey" => ["TargetResourceTagsValue"]
    #           }
    #         },
    #         tags: {
    #           "MapKey" => "MapValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCisScanConfigurationsResponse]
    def list_cis_scan_configurations(params = {}, options = {})
      request = build_request(:list_cis_scan_configurations, params)
      request.send_request(options)
    end

    # <p>Lists scan results aggregated by checks.</p>
    # @param [Hash, Types::ListCisScanResultsAggregatedByChecksRequest] params
    # @option params [String] :scan_arn
    #   <p>The scan ARN.</p>
    # @option params [Types::CisScanResultsAggregatedByChecksFilterCriteria] :filter_criteria
    #   <p>The filter criteria.</p>
    # @option params [String] :sort_by
    #   <p>The sort by order.</p>
    # @option params [String] :sort_order
    #   <p>The sort order.</p>
    # @option params [String] :next_token
    #   <p>The pagination token from a previous request that's used to retrieve the next page of
    #            results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of scan results aggregated by checks to be returned in a single page
    #            of results.</p>
    # @example Sample ListCisScanResultsAggregatedByChecks Call
    #   # Example operation for list_cis_scan_results_aggregated_by_checks
    #   params = {
    #     scan_arn: "arn:aws:inspector2:us-east-1:123412341234:owner/123412341234/cis-scan/624b746d-e080-44ae-8c1d-48e653365a38"
    #   }
    #   options = {}
    #   response = client.list_cis_scan_results_aggregated_by_checks(params, options)
    #   response.to_h #=>
    #   {
    #     check_aggregations: [
    #       {
    #         scan_arn: "arn:aws:inspector2:us-east-1:123412341234:owner/123412341234/cis-scan/624b746d-e080-44ae-8c1d-48e653365a38",
    #         check_id: "1.1.1.1",
    #         title: "title1",
    #         check_description: "description",
    #         level: LEVEL_1,
    #         account_id: "123412341234",
    #         status_counts: {
    #           failed: 0,
    #           skipped: 1,
    #           passed: 2
    #         },
    #         platform: "AMAZON_LINUX_2"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     scan_arn: "CisScanArn", # required
    #     filter_criteria: {
    #       account_id_filters: [
    #         {
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS"], # required
    #           value: "String", # required
    #         }
    #       ],
    #       check_id_filters: [
    #         {
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS"], # required
    #           value: "String", # required
    #         }
    #       ],
    #       title_filters: [
    #         {
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS"], # required
    #           value: "String", # required
    #         }
    #       ],
    #       platform_filters: [
    #         {
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS"], # required
    #           value: "String", # required
    #         }
    #       ],
    #       failed_resources_filters: [
    #         {
    #           upper_inclusive: 1,
    #           lower_inclusive: 1
    #         }
    #       ],
    #       security_level_filters: [
    #         {
    #           comparison: "EQUALS" # One of: ["EQUALS"], # required
    #           value: "LEVEL_1" # One of: ["LEVEL_1", "LEVEL_2"], # required
    #         }
    #       ]
    #     },
    #     sort_by: "CHECK_ID" # One of: ["CHECK_ID", "TITLE", "PLATFORM", "FAILED_COUNTS", "SECURITY_LEVEL"],
    #     sort_order: "ASC" # One of: ["ASC", "DESC"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_cis_scan_results_aggregated_by_checks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     check_aggregations: [
    #       {
    #         scan_arn: "CisScanArn", # required
    #         check_id: "String",
    #         title: "String",
    #         check_description: "String",
    #         level: "LEVEL_1" # One of: ["LEVEL_1", "LEVEL_2"],
    #         account_id: "AccountId",
    #         status_counts: {
    #           failed: 1,
    #           skipped: 1,
    #           passed: 1
    #         },
    #         platform: "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCisScanResultsAggregatedByChecksResponse]
    def list_cis_scan_results_aggregated_by_checks(params = {}, options = {})
      request = build_request(:list_cis_scan_results_aggregated_by_checks, params)
      request.send_request(options)
    end

    # <p>Lists scan results aggregated by a target resource.</p>
    # @param [Hash, Types::ListCisScanResultsAggregatedByTargetResourceRequest] params
    # @option params [String] :scan_arn
    #   <p>The scan ARN.</p>
    # @option params [Types::CisScanResultsAggregatedByTargetResourceFilterCriteria] :filter_criteria
    #   <p>The filter criteria.</p>
    # @option params [String] :sort_by
    #   <p>The sort by order.</p>
    # @option params [String] :sort_order
    #   <p>The sort order.</p>
    # @option params [String] :next_token
    #   <p>The pagination token from a previous request that's used to retrieve the next page of
    #            results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of scan results aggregated by a target resource to be returned in a
    #            single page of results.</p>
    # @example Sample ListCisScanResultsAggregatedByTargetResource Call
    #   # Example operation for list_cis_scan_results_aggregated_by_target_resource
    #   params = {
    #     scan_arn: "arn:aws:inspector2:us-east-1:123412341234:owner/123412341234/cis-scan/624b746d-e080-44ae-8c1d-48e653365a38"
    #   }
    #   options = {}
    #   response = client.list_cis_scan_results_aggregated_by_target_resource(params, options)
    #   response.to_h #=>
    #   {
    #     target_resource_aggregations: [
    #       {
    #         scan_arn: "arn:aws:inspector2:us-east-1:123412341234:owner/123412341234/cis-scan/624b746d-e080-44ae-8c1d-48e653365a38",
    #         target_resource_id: "i-12341234",
    #         account_id: "123412341234",
    #         target_resource_tags: {
    #           "key" => [
    #             "value"
    #           ]
    #         },
    #         status_counts: {
    #           failed: 0,
    #           skipped: 1,
    #           passed: 2
    #         },
    #         platform: "AMAZON_LINUX_2",
    #         target_status: COMPLETED
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     scan_arn: "CisScanArn", # required
    #     filter_criteria: {
    #       account_id_filters: [
    #         {
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS"], # required
    #           value: "String", # required
    #         }
    #       ],
    #       status_filters: [
    #         {
    #           comparison: "EQUALS" # One of: ["EQUALS"], # required
    #           value: "PASSED" # One of: ["PASSED", "FAILED", "SKIPPED"], # required
    #         }
    #       ],
    #       check_id_filters: [
    #         {
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS"], # required
    #           value: "String", # required
    #         }
    #       ],
    #       target_resource_id_filters: [
    #         {
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS"], # required
    #           value: "String", # required
    #         }
    #       ],
    #       target_resource_tag_filters: [
    #         {
    #           comparison: "EQUALS" # One of: ["EQUALS"], # required
    #           key: "NonEmptyString", # required
    #           value: "NonEmptyString", # required
    #         }
    #       ],
    #       platform_filters: [
    #         {
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS"], # required
    #           value: "String", # required
    #         }
    #       ],
    #       target_status_filters: [
    #         {
    #           comparison: "EQUALS" # One of: ["EQUALS"], # required
    #           value: "TIMED_OUT" # One of: ["TIMED_OUT", "CANCELLED", "COMPLETED"], # required
    #         }
    #       ],
    #       target_status_reason_filters: [
    #         {
    #           comparison: "EQUALS" # One of: ["EQUALS"], # required
    #           value: "SCAN_IN_PROGRESS" # One of: ["SCAN_IN_PROGRESS", "UNSUPPORTED_OS", "SSM_UNMANAGED"], # required
    #         }
    #       ],
    #       failed_checks_filters: [
    #         {
    #           upper_inclusive: 1,
    #           lower_inclusive: 1
    #         }
    #       ]
    #     },
    #     sort_by: "RESOURCE_ID" # One of: ["RESOURCE_ID", "FAILED_COUNTS", "ACCOUNT_ID", "PLATFORM", "TARGET_STATUS", "TARGET_STATUS_REASON"],
    #     sort_order: "ASC" # One of: ["ASC", "DESC"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_cis_scan_results_aggregated_by_target_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     target_resource_aggregations: [
    #       {
    #         scan_arn: "CisScanArn", # required
    #         target_resource_id: "ResourceId",
    #         account_id: "AccountId",
    #         target_resource_tags: {
    #           "TargetResourceTagsKey" => ["TargetResourceTagsValue"]
    #         },
    #         status_counts: {
    #           failed: 1,
    #           skipped: 1,
    #           passed: 1
    #         },
    #         platform: "String",
    #         target_status: "TIMED_OUT" # One of: ["TIMED_OUT", "CANCELLED", "COMPLETED"],
    #         target_status_reason: "SCAN_IN_PROGRESS" # One of: ["SCAN_IN_PROGRESS", "UNSUPPORTED_OS", "SSM_UNMANAGED"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCisScanResultsAggregatedByTargetResourceResponse]
    def list_cis_scan_results_aggregated_by_target_resource(params = {}, options = {})
      request = build_request(:list_cis_scan_results_aggregated_by_target_resource, params)
      request.send_request(options)
    end

    # <p>Returns a CIS scan list.</p>
    # @param [Hash, Types::ListCisScansRequest] params
    # @option params [Types::ListCisScansFilterCriteria] :filter_criteria
    #   <p>The CIS scan filter criteria.</p>
    # @option params [String] :detail_level
    #   <p>The detail applied to the CIS scan.</p>
    # @option params [String] :sort_by
    #   <p>The CIS scans sort by order.</p>
    # @option params [String] :sort_order
    #   <p>The CIS scans sort order.</p>
    # @option params [String] :next_token
    #   <p>The pagination token from a previous request that's used to retrieve the next page of
    #            results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned.</p>
    # @example Sample ListCisScans Call
    #   # Example operation for list_cis_scans
    #   params = {}
    #   options = {}
    #   response = client.list_cis_scans(params, options)
    #   response.to_h #=>
    #   {
    #     scans: [
    #       {
    #         scan_arn: "arn:aws:inspector2:us-east-1:123412341234:owner/123412341234/cis-scan/624b746d-e080-44ae-8c1d-48e653365a38",
    #         scan_configuration_arn: "arn:aws:inspector2:us-east-1:123412341234:owner/123412341234/cis-configuration/624b746d-e080-44ae-8c1d-48e653365a38",
    #         status: COMPLETED,
    #         scan_name: "sample",
    #         scan_date: Time.parse("2023-04-12T23:20:50.52Z"),
    #         failed_checks: 2,
    #         total_checks: 150,
    #         targets: {
    #           account_ids: [
    #             "123412341234"
    #           ],
    #           target_resource_tags: {
    #             "key" => [
    #               "value"
    #             ]
    #           }
    #         },
    #         scheduled_by: "Delegated Admin",
    #         security_level: LEVEL_1
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     filter_criteria: {
    #       scan_name_filters: [
    #         {
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS"], # required
    #           value: "String", # required
    #         }
    #       ],
    #       target_resource_tag_filters: [
    #         {
    #           comparison: "EQUALS" # One of: ["EQUALS"], # required
    #           key: "NonEmptyString", # required
    #           value: "NonEmptyString", # required
    #         }
    #       ],
    #       target_resource_id_filters: [
    #         {
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS"], # required
    #           value: "String", # required
    #         }
    #       ],
    #       scan_status_filters: [
    #         {
    #           comparison: "EQUALS" # One of: ["EQUALS"], # required
    #           value: "FAILED" # One of: ["FAILED", "COMPLETED", "CANCELLED", "IN_PROGRESS"], # required
    #         }
    #       ],
    #       scan_at_filters: [
    #         {
    #           earliest_scan_start_time: Time.now,
    #           latest_scan_start_time: Time.now
    #         }
    #       ],
    #       scan_configuration_arn_filters: [
    #         {
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS"], # required
    #           value: "String", # required
    #         }
    #       ],
    #       scan_arn_filters: [
    #         {
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS"], # required
    #           value: "String", # required
    #         }
    #       ],
    #       scheduled_by_filters: [
    #         {
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS"], # required
    #           value: "String", # required
    #         }
    #       ],
    #       failed_checks_filters: [
    #         {
    #           upper_inclusive: 1,
    #           lower_inclusive: 1
    #         }
    #       ],
    #       target_account_id_filters: [
    #         {
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS"], # required
    #           value: "String", # required
    #         }
    #       ]
    #     },
    #     detail_level: "ORGANIZATION" # One of: ["ORGANIZATION", "MEMBER"],
    #     sort_by: "STATUS" # One of: ["STATUS", "SCHEDULED_BY", "SCAN_START_DATE", "FAILED_CHECKS"],
    #     sort_order: "ASC" # One of: ["ASC", "DESC"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_cis_scans(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scans: [
    #       {
    #         scan_arn: "CisScanArn", # required
    #         scan_configuration_arn: "CisScanConfigurationArn", # required
    #         status: "FAILED" # One of: ["FAILED", "COMPLETED", "CANCELLED", "IN_PROGRESS"],
    #         scan_name: "CisScanName",
    #         scan_date: Time.now,
    #         failed_checks: 1,
    #         total_checks: 1,
    #         targets: {
    #           account_ids: ["AccountId"],
    #           target_resource_tags: {
    #             "TargetResourceTagsKey" => ["TargetResourceTagsValue"]
    #           }
    #         },
    #         scheduled_by: "String",
    #         security_level: "LEVEL_1" # One of: ["LEVEL_1", "LEVEL_2"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCisScansResponse]
    def list_cis_scans(params = {}, options = {})
      request = build_request(:list_cis_scans, params)
      request.send_request(options)
    end

    # <p>Lists all code security integrations in your account.</p>
    # @param [Hash, Types::ListCodeSecurityIntegrationsRequest] params
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request. For subsequent calls, use the NextToken
    #            value returned from the previous request to continue listing results after the first
    #            page.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_code_security_integrations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     integrations: [
    #       {
    #         integration_arn: "CodeSecurityIntegrationArn", # required
    #         name: "IntegrationName", # required
    #         type: "GITLAB_SELF_MANAGED" # One of: ["GITLAB_SELF_MANAGED", "GITHUB"], # required
    #         status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "ACTIVE", "INACTIVE", "DISABLING"], # required
    #         status_reason: "String", # required
    #         created_on: Time.now, # required
    #         last_update_on: Time.now, # required
    #         tags: {
    #           "MapKey" => "MapValue"
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListCodeSecurityIntegrationsResponse]
    def list_code_security_integrations(params = {}, options = {})
      request = build_request(:list_code_security_integrations, params)
      request.send_request(options)
    end

    # <p>Lists the associations between code repositories and Amazon Inspector code security scan
    #          configurations.</p>
    # @param [Hash, Types::ListCodeSecurityScanConfigurationAssociationsRequest] params
    # @option params [String] :scan_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the scan configuration to list associations
    #            for.</p>
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If your request would return
    #            more than the maximum the response will return a <code>nextToken</code> value, use this
    #            value when you call the action again to get the remaining results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scan_configuration_arn: "ScanConfigurationArn", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_code_security_scan_configuration_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     associations: [
    #       {
    #         resource: {
    #           # One of:
    #           project_id: "ProjectId"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCodeSecurityScanConfigurationAssociationsResponse]
    def list_code_security_scan_configuration_associations(params = {}, options = {})
      request = build_request(:list_code_security_scan_configuration_associations, params)
      request.send_request(options)
    end

    # <p>Lists all code security scan configurations in your account.</p>
    # @param [Hash, Types::ListCodeSecurityScanConfigurationsRequest] params
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request. For subsequent calls, use the NextToken
    #            value returned from the previous request to continue listing results after the first
    #            page.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_code_security_scan_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configurations: [
    #       {
    #         scan_configuration_arn: "ScanConfigurationArn", # required
    #         name: "ScanConfigurationName", # required
    #         owner_account_id: "OwnerId", # required
    #         periodic_scan_frequency: "WEEKLY" # One of: ["WEEKLY", "MONTHLY", "NEVER"],
    #         frequency_expression: "FrequencyExpression",
    #         continuous_integration_scan_supported_events: ["PULL_REQUEST" # One of: ["PULL_REQUEST", "PUSH"]],
    #         rule_set_categories: ["SAST" # One of: ["SAST", "IAC", "SCA"]], # required
    #         scope_settings: {
    #           project_selection_scope: "ALL" # One of: ["ALL"]
    #         },
    #         tags: {
    #           "MapKey" => "MapValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCodeSecurityScanConfigurationsResponse]
    def list_code_security_scan_configurations(params = {}, options = {})
      request = build_request(:list_code_security_scan_configurations, params)
      request.send_request(options)
    end

    # <p>Lists coverage details for your environment.</p>
    # @param [Hash, Types::ListCoverageInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results the response can return. If your request would return more
    #            than the maximum the response will return a <code>nextToken</code> value, use this value
    #            when you call the action again to get the remaining results.</p>
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. If your response returns
    #            more than the <code>maxResults</code> maximum value it will also return a
    #               <code>nextToken</code> value. For subsequent calls, use the <code>nextToken</code> value
    #            returned from the previous request to continue listing results after the first page.</p>
    # @option params [Types::CoverageFilterCriteria] :filter_criteria
    #   <p>An object that contains details on the filters to apply to the coverage data for your
    #            environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filter_criteria: {
    #       scan_status_code: [
    #         {
    #           comparison: "CoverageStringComparison", # required
    #           value: "CoverageStringInput", # required
    #         }
    #       ],
    #       scan_status_reason: [
    #         {
    #           comparison: "CoverageStringComparison", # required
    #           value: "CoverageStringInput", # required
    #         }
    #       ],
    #       account_id: [
    #         {
    #           comparison: "CoverageStringComparison", # required
    #           value: "CoverageStringInput", # required
    #         }
    #       ],
    #       resource_id: [
    #         {
    #           comparison: "CoverageStringComparison", # required
    #           value: "CoverageStringInput", # required
    #         }
    #       ],
    #       resource_type: [
    #         {
    #           comparison: "CoverageStringComparison", # required
    #           value: "CoverageStringInput", # required
    #         }
    #       ],
    #       scan_type: [
    #         {
    #           comparison: "CoverageStringComparison", # required
    #           value: "CoverageStringInput", # required
    #         }
    #       ],
    #       ecr_repository_name: [
    #         {
    #           comparison: "CoverageStringComparison", # required
    #           value: "CoverageStringInput", # required
    #         }
    #       ],
    #       ecr_image_tags: [
    #         {
    #           comparison: "CoverageStringComparison", # required
    #           value: "CoverageStringInput", # required
    #         }
    #       ],
    #       ec2_instance_tags: [
    #         {
    #           comparison: "CoverageMapComparison", # required
    #           key: "NonEmptyString", # required
    #           value: "NonEmptyString"
    #         }
    #       ],
    #       lambda_function_name: [
    #         {
    #           comparison: "CoverageStringComparison", # required
    #           value: "CoverageStringInput", # required
    #         }
    #       ],
    #       lambda_function_tags: [
    #         {
    #           comparison: "CoverageMapComparison", # required
    #           key: "NonEmptyString", # required
    #           value: "NonEmptyString"
    #         }
    #       ],
    #       lambda_function_runtime: [
    #         {
    #           comparison: "CoverageStringComparison", # required
    #           value: "CoverageStringInput", # required
    #         }
    #       ],
    #       last_scanned_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       scan_mode: [
    #         {
    #           comparison: "CoverageStringComparison", # required
    #           value: "CoverageStringInput", # required
    #         }
    #       ],
    #       image_pulled_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       ecr_image_last_in_use_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       ecr_image_in_use_count: [
    #         {
    #           upper_inclusive: 1,
    #           lower_inclusive: 1
    #         }
    #       ],
    #       code_repository_project_name: [
    #         {
    #           comparison: "CoverageStringComparison", # required
    #           value: "CoverageStringInput", # required
    #         }
    #       ],
    #       code_repository_provider_type: [
    #         {
    #           comparison: "CoverageStringComparison", # required
    #           value: "CoverageStringInput", # required
    #         }
    #       ],
    #       code_repository_provider_type_visibility: [
    #         {
    #           comparison: "CoverageStringComparison", # required
    #           value: "CoverageStringInput", # required
    #         }
    #       ],
    #       last_scanned_commit_id: [
    #         {
    #           comparison: "CoverageStringComparison", # required
    #           value: "CoverageStringInput", # required
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.list_coverage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     covered_resources: [
    #       {
    #         resource_type: "CoverageResourceType", # required
    #         resource_id: "ResourceId", # required
    #         account_id: "AccountId", # required
    #         scan_type: "ScanType", # required
    #         scan_status: {
    #           status_code: "ScanStatusCode", # required
    #           reason: "ScanStatusReason", # required
    #         },
    #         resource_metadata: {
    #           ecr_repository: {
    #             name: "String",
    #             scan_frequency: "EcrScanFrequency"
    #           },
    #           ecr_image: {
    #             tags: ["String"],
    #             image_pulled_at: Time.now,
    #             last_in_use_at: Time.now,
    #             in_use_count: 1
    #           },
    #           ec2: {
    #             tags: {
    #               "MapKey" => "MapValue"
    #             },
    #             ami_id: "AmiId",
    #             platform: "Ec2Platform"
    #           },
    #           lambda_function: {
    #             function_tags: {
    #               "MapKey" => "MapValue"
    #             },
    #             layers: ["String"],
    #             function_name: "String",
    #             runtime: "Runtime"
    #           },
    #           code_repository: {
    #             project_name: "String", # required
    #             integration_arn: "CodeRepositoryIntegrationArn",
    #             provider_type: "String", # required
    #             provider_type_visibility: "String", # required
    #             last_scanned_commit_id: "CommitId",
    #             scan_configuration: {
    #               periodic_scan_configurations: [
    #                 {
    #                   frequency_expression: "FrequencyExpression",
    #                   rule_set_categories: ["SAST" # One of: ["SAST", "IAC", "SCA"]]
    #                 }
    #               ],
    #               continuous_integration_scan_configurations: [
    #                 {
    #                   supported_event: "PULL_REQUEST" # One of: ["PULL_REQUEST", "PUSH"],
    #                   rule_set_categories: ["SAST" # One of: ["SAST", "IAC", "SCA"]]
    #                 }
    #               ]
    #             },
    #             on_demand_scan: {
    #               last_scanned_commit_id: "CommitId",
    #               last_scan_at: Time.now,
    #               scan_status: {
    #                 status_code: "ScanStatusCode", # required
    #                 reason: "ScanStatusReason", # required
    #               }
    #             }
    #           }
    #         },
    #         last_scanned_at: Time.now,
    #         scan_mode: "ScanMode"
    #       }
    #     ]
    #   }
    # @return [Types::ListCoverageOutput]
    def list_coverage(params = {}, options = {})
      request = build_request(:list_coverage, params)
      request.send_request(options)
    end

    # <p>Lists Amazon Inspector coverage statistics for your environment.</p>
    # @param [Hash, Types::ListCoverageStatisticsInput] params
    # @option params [Types::CoverageFilterCriteria] :filter_criteria
    #   <p>An object that contains details on the filters to apply to the coverage data for your
    #            environment.</p>
    # @option params [String] :group_by
    #   <p>The value to group the results by.</p>
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter_criteria: {
    #       scan_status_code: [
    #         {
    #           comparison: "CoverageStringComparison", # required
    #           value: "CoverageStringInput", # required
    #         }
    #       ],
    #       scan_status_reason: [
    #         {
    #           comparison: "CoverageStringComparison", # required
    #           value: "CoverageStringInput", # required
    #         }
    #       ],
    #       account_id: [
    #         {
    #           comparison: "CoverageStringComparison", # required
    #           value: "CoverageStringInput", # required
    #         }
    #       ],
    #       resource_id: [
    #         {
    #           comparison: "CoverageStringComparison", # required
    #           value: "CoverageStringInput", # required
    #         }
    #       ],
    #       resource_type: [
    #         {
    #           comparison: "CoverageStringComparison", # required
    #           value: "CoverageStringInput", # required
    #         }
    #       ],
    #       scan_type: [
    #         {
    #           comparison: "CoverageStringComparison", # required
    #           value: "CoverageStringInput", # required
    #         }
    #       ],
    #       ecr_repository_name: [
    #         {
    #           comparison: "CoverageStringComparison", # required
    #           value: "CoverageStringInput", # required
    #         }
    #       ],
    #       ecr_image_tags: [
    #         {
    #           comparison: "CoverageStringComparison", # required
    #           value: "CoverageStringInput", # required
    #         }
    #       ],
    #       ec2_instance_tags: [
    #         {
    #           comparison: "CoverageMapComparison", # required
    #           key: "NonEmptyString", # required
    #           value: "NonEmptyString"
    #         }
    #       ],
    #       lambda_function_name: [
    #         {
    #           comparison: "CoverageStringComparison", # required
    #           value: "CoverageStringInput", # required
    #         }
    #       ],
    #       lambda_function_tags: [
    #         {
    #           comparison: "CoverageMapComparison", # required
    #           key: "NonEmptyString", # required
    #           value: "NonEmptyString"
    #         }
    #       ],
    #       lambda_function_runtime: [
    #         {
    #           comparison: "CoverageStringComparison", # required
    #           value: "CoverageStringInput", # required
    #         }
    #       ],
    #       last_scanned_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       scan_mode: [
    #         {
    #           comparison: "CoverageStringComparison", # required
    #           value: "CoverageStringInput", # required
    #         }
    #       ],
    #       image_pulled_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       ecr_image_last_in_use_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       ecr_image_in_use_count: [
    #         {
    #           upper_inclusive: 1,
    #           lower_inclusive: 1
    #         }
    #       ],
    #       code_repository_project_name: [
    #         {
    #           comparison: "CoverageStringComparison", # required
    #           value: "CoverageStringInput", # required
    #         }
    #       ],
    #       code_repository_provider_type: [
    #         {
    #           comparison: "CoverageStringComparison", # required
    #           value: "CoverageStringInput", # required
    #         }
    #       ],
    #       code_repository_provider_type_visibility: [
    #         {
    #           comparison: "CoverageStringComparison", # required
    #           value: "CoverageStringInput", # required
    #         }
    #       ],
    #       last_scanned_commit_id: [
    #         {
    #           comparison: "CoverageStringComparison", # required
    #           value: "CoverageStringInput", # required
    #         }
    #       ]
    #     },
    #     group_by: "GroupKey",
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_coverage_statistics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     counts_by_group: [
    #       {
    #         count: 1,
    #         group_key: "GroupKey"
    #       }
    #     ],
    #     total_counts: 1, # required
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCoverageStatisticsOutput]
    def list_coverage_statistics(params = {}, options = {})
      request = build_request(:list_coverage_statistics, params)
      request.send_request(options)
    end

    # <p>Lists information about the Amazon Inspector delegated administrator of your organization.</p>
    # @param [Hash, Types::ListDelegatedAdminAccountsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results the response can return. If your request would return more
    #            than the maximum the response will return a <code>nextToken</code> value, use this value
    #            when you call the action again to get the remaining results.</p>
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. If your response returns
    #            more than the <code>maxResults</code> maximum value it will also return a
    #               <code>nextToken</code> value. For subsequent calls, use the <code>nextToken</code> value
    #            returned from the previous request to continue listing results after the first page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_delegated_admin_accounts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     delegated_admin_accounts: [
    #       {
    #         account_id: "AccountId",
    #         status: "DelegatedAdminStatus"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDelegatedAdminAccountsOutput]
    def list_delegated_admin_accounts(params = {}, options = {})
      request = build_request(:list_delegated_admin_accounts, params)
      request.send_request(options)
    end

    # <p>Lists the filters associated with your account.</p>
    # @param [Hash, Types::ListFiltersInput] params
    # @option params [Array<String>] :arns
    #   <p>The Amazon resource number (ARN) of the filter.</p>
    # @option params [String] :action
    #   <p>The action the filter applies to matched findings.</p>
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. If your response returns
    #            more than the <code>maxResults</code> maximum value it will also return a
    #               <code>nextToken</code> value. For subsequent calls, use the <code>nextToken</code> value
    #            returned from the previous request to continue listing results after the first page.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results the response can return. If your request would return more
    #            than the maximum the response will return a <code>nextToken</code> value, use this value
    #            when you call the action again to get the remaining results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arns: ["FilterArn"],
    #     action: "FilterAction",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_filters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     filters: [ # required
    #       {
    #         arn: "FilterArn", # required
    #         owner_id: "OwnerId", # required
    #         name: "FilterName", # required
    #         criteria: { # required
    #           finding_arn: [
    #             {
    #               comparison: "StringComparison", # required
    #               value: "StringInput", # required
    #             }
    #           ],
    #           aws_account_id: [
    #             {
    #               comparison: "StringComparison", # required
    #               value: "StringInput", # required
    #             }
    #           ],
    #           finding_type: [
    #             {
    #               comparison: "StringComparison", # required
    #               value: "StringInput", # required
    #             }
    #           ],
    #           severity: [
    #             {
    #               comparison: "StringComparison", # required
    #               value: "StringInput", # required
    #             }
    #           ],
    #           first_observed_at: [
    #             {
    #               start_inclusive: Time.now,
    #               end_inclusive: Time.now
    #             }
    #           ],
    #           last_observed_at: [
    #             {
    #               start_inclusive: Time.now,
    #               end_inclusive: Time.now
    #             }
    #           ],
    #           updated_at: [
    #             {
    #               start_inclusive: Time.now,
    #               end_inclusive: Time.now
    #             }
    #           ],
    #           finding_status: [
    #             {
    #               comparison: "StringComparison", # required
    #               value: "StringInput", # required
    #             }
    #           ],
    #           title: [
    #             {
    #               comparison: "StringComparison", # required
    #               value: "StringInput", # required
    #             }
    #           ],
    #           inspector_score: [
    #             {
    #               upper_inclusive: 1.0,
    #               lower_inclusive: 1.0
    #             }
    #           ],
    #           resource_type: [
    #             {
    #               comparison: "StringComparison", # required
    #               value: "StringInput", # required
    #             }
    #           ],
    #           resource_id: [
    #             {
    #               comparison: "StringComparison", # required
    #               value: "StringInput", # required
    #             }
    #           ],
    #           resource_tags: [
    #             {
    #               comparison: "MapComparison", # required
    #               key: "MapKey", # required
    #               value: "MapValue"
    #             }
    #           ],
    #           ec2_instance_image_id: [
    #             {
    #               comparison: "StringComparison", # required
    #               value: "StringInput", # required
    #             }
    #           ],
    #           ec2_instance_vpc_id: [
    #             {
    #               comparison: "StringComparison", # required
    #               value: "StringInput", # required
    #             }
    #           ],
    #           ec2_instance_subnet_id: [
    #             {
    #               comparison: "StringComparison", # required
    #               value: "StringInput", # required
    #             }
    #           ],
    #           ecr_image_pushed_at: [
    #             {
    #               start_inclusive: Time.now,
    #               end_inclusive: Time.now
    #             }
    #           ],
    #           ecr_image_architecture: [
    #             {
    #               comparison: "StringComparison", # required
    #               value: "StringInput", # required
    #             }
    #           ],
    #           ecr_image_registry: [
    #             {
    #               comparison: "StringComparison", # required
    #               value: "StringInput", # required
    #             }
    #           ],
    #           ecr_image_repository_name: [
    #             {
    #               comparison: "StringComparison", # required
    #               value: "StringInput", # required
    #             }
    #           ],
    #           ecr_image_tags: [
    #             {
    #               comparison: "StringComparison", # required
    #               value: "StringInput", # required
    #             }
    #           ],
    #           ecr_image_hash: [
    #             {
    #               comparison: "StringComparison", # required
    #               value: "StringInput", # required
    #             }
    #           ],
    #           ecr_image_last_in_use_at: [
    #             {
    #               start_inclusive: Time.now,
    #               end_inclusive: Time.now
    #             }
    #           ],
    #           ecr_image_in_use_count: [
    #             {
    #               upper_inclusive: 1.0,
    #               lower_inclusive: 1.0
    #             }
    #           ],
    #           port_range: [
    #             {
    #               begin_inclusive: 1,
    #               end_inclusive: 1
    #             }
    #           ],
    #           network_protocol: [
    #             {
    #               comparison: "StringComparison", # required
    #               value: "StringInput", # required
    #             }
    #           ],
    #           component_id: [
    #             {
    #               comparison: "StringComparison", # required
    #               value: "StringInput", # required
    #             }
    #           ],
    #           component_type: [
    #             {
    #               comparison: "StringComparison", # required
    #               value: "StringInput", # required
    #             }
    #           ],
    #           vulnerability_id: [
    #             {
    #               comparison: "StringComparison", # required
    #               value: "StringInput", # required
    #             }
    #           ],
    #           vulnerability_source: [
    #             {
    #               comparison: "StringComparison", # required
    #               value: "StringInput", # required
    #             }
    #           ],
    #           vendor_severity: [
    #             {
    #               comparison: "StringComparison", # required
    #               value: "StringInput", # required
    #             }
    #           ],
    #           vulnerable_packages: [
    #             {
    #               name: {
    #                 comparison: "StringComparison", # required
    #                 value: "StringInput", # required
    #               },
    #               version: {
    #                 comparison: "StringComparison", # required
    #                 value: "StringInput", # required
    #               },
    #               epoch: {
    #                 upper_inclusive: 1.0,
    #                 lower_inclusive: 1.0
    #               },
    #               release: {
    #                 comparison: "StringComparison", # required
    #                 value: "StringInput", # required
    #               },
    #               architecture: {
    #                 comparison: "StringComparison", # required
    #                 value: "StringInput", # required
    #               },
    #               source_layer_hash: {
    #                 comparison: "StringComparison", # required
    #                 value: "StringInput", # required
    #               },
    #               source_lambda_layer_arn: {
    #                 comparison: "StringComparison", # required
    #                 value: "StringInput", # required
    #               },
    #               file_path: {
    #                 comparison: "StringComparison", # required
    #                 value: "StringInput", # required
    #               }
    #             }
    #           ],
    #           related_vulnerabilities: [
    #             {
    #               comparison: "StringComparison", # required
    #               value: "StringInput", # required
    #             }
    #           ],
    #           fix_available: [
    #             {
    #               comparison: "StringComparison", # required
    #               value: "StringInput", # required
    #             }
    #           ],
    #           lambda_function_name: [
    #             {
    #               comparison: "StringComparison", # required
    #               value: "StringInput", # required
    #             }
    #           ],
    #           lambda_function_layers: [
    #             {
    #               comparison: "StringComparison", # required
    #               value: "StringInput", # required
    #             }
    #           ],
    #           lambda_function_runtime: [
    #             {
    #               comparison: "StringComparison", # required
    #               value: "StringInput", # required
    #             }
    #           ],
    #           lambda_function_last_modified_at: [
    #             {
    #               start_inclusive: Time.now,
    #               end_inclusive: Time.now
    #             }
    #           ],
    #           lambda_function_execution_role_arn: [
    #             {
    #               comparison: "StringComparison", # required
    #               value: "StringInput", # required
    #             }
    #           ],
    #           exploit_available: [
    #             {
    #               comparison: "StringComparison", # required
    #               value: "StringInput", # required
    #             }
    #           ],
    #           code_vulnerability_detector_name: [
    #             {
    #               comparison: "StringComparison", # required
    #               value: "StringInput", # required
    #             }
    #           ],
    #           code_vulnerability_detector_tags: [
    #             {
    #               comparison: "StringComparison", # required
    #               value: "StringInput", # required
    #             }
    #           ],
    #           code_vulnerability_file_path: [
    #             {
    #               comparison: "StringComparison", # required
    #               value: "StringInput", # required
    #             }
    #           ],
    #           epss_score: [
    #             {
    #               upper_inclusive: 1.0,
    #               lower_inclusive: 1.0
    #             }
    #           ],
    #           code_repository_project_name: [
    #             {
    #               comparison: "StringComparison", # required
    #               value: "StringInput", # required
    #             }
    #           ],
    #           code_repository_provider_type: [
    #             {
    #               comparison: "StringComparison", # required
    #               value: "StringInput", # required
    #             }
    #           ]
    #         },
    #         action: "FilterAction", # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         description: "FilterDescription",
    #         reason: "FilterReason",
    #         tags: {
    #           "MapKey" => "MapValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListFiltersOutput]
    def list_filters(params = {}, options = {})
      request = build_request(:list_filters, params)
      request.send_request(options)
    end

    # <p>Lists aggregated finding data for your environment based on specific criteria.</p>
    # @param [Hash, Types::ListFindingAggregationsInput] params
    # @option params [String] :aggregation_type
    #   <p>The type of the aggregation request.</p>
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. If your response returns
    #            more than the <code>maxResults</code> maximum value it will also return a
    #               <code>nextToken</code> value. For subsequent calls, use the <code>nextToken</code> value
    #            returned from the previous request to continue listing results after the first page.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results the response can return. If your request would return more
    #            than the maximum the response will return a <code>nextToken</code> value, use this value
    #            when you call the action again to get the remaining results.</p>
    # @option params [Array<Types::StringFilter>] :account_ids
    #   <p>The Amazon Web Services account IDs to retrieve finding aggregation data for.</p>
    # @option params [Types::AggregationRequest] :aggregation_request
    #   <p>Details of the aggregation request that is used to filter your aggregation
    #            results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     aggregation_type: "AggregationType", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     account_ids: [
    #       {
    #         comparison: "StringComparison", # required
    #         value: "StringInput", # required
    #       }
    #     ],
    #     aggregation_request: {
    #       # One of:
    #       account_aggregation: {
    #         finding_type: "AggregationFindingType",
    #         resource_type: "AggregationResourceType",
    #         sort_order: "SortOrder",
    #         sort_by: "AccountSortBy"
    #       },
    #       ami_aggregation: {
    #         amis: [
    #           {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           }
    #         ],
    #         sort_order: "SortOrder",
    #         sort_by: "AmiSortBy"
    #       },
    #       aws_ecr_container_aggregation: {
    #         resource_ids: [
    #           {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           }
    #         ],
    #         image_shas: [
    #           {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           }
    #         ],
    #         repositories: [
    #           {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           }
    #         ],
    #         architectures: [
    #           {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           }
    #         ],
    #         image_tags: [
    #           {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           }
    #         ],
    #         sort_order: "SortOrder",
    #         sort_by: "AwsEcrContainerSortBy",
    #         last_in_use_at: [
    #           {
    #             start_inclusive: Time.now,
    #             end_inclusive: Time.now
    #           }
    #         ],
    #         in_use_count: [
    #           {
    #             upper_inclusive: 1.0,
    #             lower_inclusive: 1.0
    #           }
    #         ]
    #       },
    #       ec2_instance_aggregation: {
    #         amis: [
    #           {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           }
    #         ],
    #         operating_systems: [
    #           {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           }
    #         ],
    #         instance_ids: [
    #           {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           }
    #         ],
    #         instance_tags: [
    #           {
    #             comparison: "MapComparison", # required
    #             key: "MapKey", # required
    #             value: "MapValue"
    #           }
    #         ],
    #         sort_order: "SortOrder",
    #         sort_by: "Ec2InstanceSortBy"
    #       },
    #       finding_type_aggregation: {
    #         finding_type: "AggregationFindingType",
    #         resource_type: "AggregationResourceType",
    #         sort_order: "SortOrder",
    #         sort_by: "FindingTypeSortBy"
    #       },
    #       image_layer_aggregation: {
    #         repositories: [
    #           {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           }
    #         ],
    #         resource_ids: [
    #           {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           }
    #         ],
    #         layer_hashes: [
    #           {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           }
    #         ],
    #         sort_order: "SortOrder",
    #         sort_by: "ImageLayerSortBy"
    #       },
    #       package_aggregation: {
    #         package_names: [
    #           {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           }
    #         ],
    #         sort_order: "SortOrder",
    #         sort_by: "PackageSortBy"
    #       },
    #       repository_aggregation: {
    #         repositories: [
    #           {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           }
    #         ],
    #         sort_order: "SortOrder",
    #         sort_by: "RepositorySortBy"
    #       },
    #       title_aggregation: {
    #         titles: [
    #           {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           }
    #         ],
    #         vulnerability_ids: [
    #           {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           }
    #         ],
    #         resource_type: "AggregationResourceType",
    #         sort_order: "SortOrder",
    #         sort_by: "TitleSortBy",
    #         finding_type: "AggregationFindingType"
    #       },
    #       lambda_layer_aggregation: {
    #         function_names: [
    #           {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           }
    #         ],
    #         resource_ids: [
    #           {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           }
    #         ],
    #         layer_arns: [
    #           {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           }
    #         ],
    #         sort_order: "SortOrder",
    #         sort_by: "LambdaLayerSortBy"
    #       },
    #       lambda_function_aggregation: {
    #         resource_ids: [
    #           {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           }
    #         ],
    #         function_names: [
    #           {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           }
    #         ],
    #         runtimes: [
    #           {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           }
    #         ],
    #         function_tags: [
    #           {
    #             comparison: "MapComparison", # required
    #             key: "MapKey", # required
    #             value: "MapValue"
    #           }
    #         ],
    #         sort_order: "SortOrder",
    #         sort_by: "LambdaFunctionSortBy"
    #       },
    #       code_repository_aggregation: {
    #         project_names: [
    #           {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           }
    #         ],
    #         provider_types: [
    #           {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           }
    #         ],
    #         sort_order: "SortOrder",
    #         sort_by: "CodeRepositorySortBy",
    #         resource_ids: [
    #           {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.list_finding_aggregations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     aggregation_type: "AggregationType", # required
    #     responses: [{
    #       # One of:
    #       account_aggregation: {
    #         account_id: "AccountId",
    #         severity_counts: {
    #           all: 1,
    #           medium: 1,
    #           high: 1,
    #           critical: 1
    #         },
    #         exploit_available_count: 1,
    #         fix_available_count: 1
    #       },
    #       ami_aggregation: {
    #         ami: "AmiId", # required
    #         account_id: "AccountId",
    #         severity_counts: {
    #           all: 1,
    #           medium: 1,
    #           high: 1,
    #           critical: 1
    #         },
    #         affected_instances: 1
    #       },
    #       aws_ecr_container_aggregation: {
    #         resource_id: "NonEmptyString", # required
    #         image_sha: "String",
    #         repository: "String",
    #         architecture: "String",
    #         image_tags: ["NonEmptyString"],
    #         account_id: "AccountId",
    #         severity_counts: {
    #           all: 1,
    #           medium: 1,
    #           high: 1,
    #           critical: 1
    #         },
    #         last_in_use_at: Time.now,
    #         in_use_count: 1
    #       },
    #       ec2_instance_aggregation: {
    #         instance_id: "NonEmptyString", # required
    #         ami: "AmiId",
    #         operating_system: "String",
    #         instance_tags: {
    #           "MapKey" => "MapValue"
    #         },
    #         account_id: "String",
    #         severity_counts: {
    #           all: 1,
    #           medium: 1,
    #           high: 1,
    #           critical: 1
    #         },
    #         network_findings: 1
    #       },
    #       finding_type_aggregation: {
    #         account_id: "AccountId",
    #         severity_counts: {
    #           all: 1,
    #           medium: 1,
    #           high: 1,
    #           critical: 1
    #         },
    #         exploit_available_count: 1,
    #         fix_available_count: 1
    #       },
    #       image_layer_aggregation: {
    #         repository: "NonEmptyString", # required
    #         resource_id: "NonEmptyString", # required
    #         layer_hash: "NonEmptyString", # required
    #         account_id: "AccountId", # required
    #         severity_counts: {
    #           all: 1,
    #           medium: 1,
    #           high: 1,
    #           critical: 1
    #         }
    #       },
    #       package_aggregation: {
    #         package_name: "NonEmptyString", # required
    #         account_id: "AccountId",
    #         severity_counts: {
    #           all: 1,
    #           medium: 1,
    #           high: 1,
    #           critical: 1
    #         }
    #       },
    #       repository_aggregation: {
    #         repository: "NonEmptyString", # required
    #         account_id: "AccountId",
    #         severity_counts: {
    #           all: 1,
    #           medium: 1,
    #           high: 1,
    #           critical: 1
    #         },
    #         affected_images: 1
    #       },
    #       title_aggregation: {
    #         title: "NonEmptyString", # required
    #         vulnerability_id: "String",
    #         account_id: "AccountId",
    #         severity_counts: {
    #           all: 1,
    #           medium: 1,
    #           high: 1,
    #           critical: 1
    #         }
    #       },
    #       lambda_layer_aggregation: {
    #         function_name: "NonEmptyString", # required
    #         resource_id: "NonEmptyString", # required
    #         layer_arn: "NonEmptyString", # required
    #         account_id: "AccountId", # required
    #         severity_counts: {
    #           all: 1,
    #           medium: 1,
    #           high: 1,
    #           critical: 1
    #         }
    #       },
    #       lambda_function_aggregation: {
    #         resource_id: "NonEmptyString", # required
    #         function_name: "String",
    #         runtime: "String",
    #         lambda_tags: {
    #           "MapKey" => "MapValue"
    #         },
    #         account_id: "AccountId",
    #         severity_counts: {
    #           all: 1,
    #           medium: 1,
    #           high: 1,
    #           critical: 1
    #         },
    #         last_modified_at: Time.now
    #       },
    #       code_repository_aggregation: {
    #         project_names: "String", # required
    #         provider_type: "String",
    #         severity_counts: {
    #           all: 1,
    #           medium: 1,
    #           high: 1,
    #           critical: 1
    #         },
    #         exploit_available_active_findings_count: 1,
    #         fix_available_active_findings_count: 1,
    #         account_id: "String",
    #         resource_id: "String"
    #       }
    #     }],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListFindingAggregationsOutput]
    def list_finding_aggregations(params = {}, options = {})
      request = build_request(:list_finding_aggregations, params)
      request.send_request(options)
    end

    # <p>Lists findings for your environment.</p>
    # @param [Hash, Types::ListFindingsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results the response can return. If your request would return more
    #            than the maximum the response will return a <code>nextToken</code> value, use this value
    #            when you call the action again to get the remaining results.</p>
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. If your response returns
    #            more than the <code>maxResults</code> maximum value it will also return a
    #               <code>nextToken</code> value. For subsequent calls, use the <code>nextToken</code> value
    #            returned from the previous request to continue listing results after the first page.</p>
    # @option params [Types::FilterCriteria] :filter_criteria
    #   <p>Details on the filters to apply to your finding results.</p>
    # @option params [Types::SortCriteria] :sort_criteria
    #   <p>Details on the sort criteria to apply to your finding results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filter_criteria: {
    #       finding_arn: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       aws_account_id: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       finding_type: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       severity: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       first_observed_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       last_observed_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       updated_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       finding_status: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       title: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       inspector_score: [
    #         {
    #           upper_inclusive: 1.0,
    #           lower_inclusive: 1.0
    #         }
    #       ],
    #       resource_type: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       resource_id: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       resource_tags: [
    #         {
    #           comparison: "MapComparison", # required
    #           key: "MapKey", # required
    #           value: "MapValue"
    #         }
    #       ],
    #       ec2_instance_image_id: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ec2_instance_vpc_id: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ec2_instance_subnet_id: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ecr_image_pushed_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       ecr_image_architecture: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ecr_image_registry: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ecr_image_repository_name: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ecr_image_tags: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ecr_image_hash: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ecr_image_last_in_use_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       ecr_image_in_use_count: [
    #         {
    #           upper_inclusive: 1.0,
    #           lower_inclusive: 1.0
    #         }
    #       ],
    #       port_range: [
    #         {
    #           begin_inclusive: 1,
    #           end_inclusive: 1
    #         }
    #       ],
    #       network_protocol: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       component_id: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       component_type: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       vulnerability_id: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       vulnerability_source: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       vendor_severity: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       vulnerable_packages: [
    #         {
    #           name: {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           },
    #           version: {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           },
    #           epoch: {
    #             upper_inclusive: 1.0,
    #             lower_inclusive: 1.0
    #           },
    #           release: {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           },
    #           architecture: {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           },
    #           source_layer_hash: {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           },
    #           source_lambda_layer_arn: {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           },
    #           file_path: {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           }
    #         }
    #       ],
    #       related_vulnerabilities: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       fix_available: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       lambda_function_name: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       lambda_function_layers: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       lambda_function_runtime: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       lambda_function_last_modified_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       lambda_function_execution_role_arn: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       exploit_available: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       code_vulnerability_detector_name: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       code_vulnerability_detector_tags: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       code_vulnerability_file_path: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       epss_score: [
    #         {
    #           upper_inclusive: 1.0,
    #           lower_inclusive: 1.0
    #         }
    #       ],
    #       code_repository_project_name: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       code_repository_provider_type: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ]
    #     },
    #     sort_criteria: {
    #       field: "SortField", # required
    #       sort_order: "SortOrder", # required
    #     }
    #   }
    #   options = {}
    #   response = client.list_findings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     findings: [
    #       {
    #         finding_arn: "FindingArn", # required
    #         aws_account_id: "AccountId", # required
    #         type: "FindingType", # required
    #         description: "FindingDescription", # required
    #         title: "FindingTitle",
    #         remediation: { # required
    #           recommendation: {
    #             text: "NonEmptyString",
    #             url: "NonEmptyString"
    #           }
    #         },
    #         severity: "Severity", # required
    #         first_observed_at: Time.now, # required
    #         last_observed_at: Time.now, # required
    #         updated_at: Time.now,
    #         status: "FindingStatus", # required
    #         resources: [ # required
    #           {
    #             type: "ResourceType", # required
    #             id: "NonEmptyString", # required
    #             partition: "NonEmptyString",
    #             region: "NonEmptyString",
    #             tags: {
    #               "MapKey" => "MapValue"
    #             },
    #             details: {
    #               aws_ec2_instance: {
    #                 type: "NonEmptyString",
    #                 image_id: "NonEmptyString",
    #                 ip_v4_addresses: ["IpV4Address"],
    #                 ip_v6_addresses: ["IpV6Address"],
    #                 key_name: "NonEmptyString",
    #                 iam_instance_profile_arn: "NonEmptyString",
    #                 vpc_id: "NonEmptyString",
    #                 subnet_id: "NonEmptyString",
    #                 launched_at: Time.now,
    #                 platform: "Platform"
    #               },
    #               aws_ecr_container_image: {
    #                 repository_name: "NonEmptyString", # required
    #                 image_tags: ["NonEmptyString"],
    #                 pushed_at: Time.now,
    #                 author: "String",
    #                 architecture: "NonEmptyString",
    #                 image_hash: "ImageHash", # required
    #                 registry: "NonEmptyString", # required
    #                 platform: "Platform",
    #                 last_in_use_at: Time.now,
    #                 in_use_count: 1
    #               },
    #               aws_lambda_function: {
    #                 function_name: "FunctionName", # required
    #                 runtime: "Runtime", # required
    #                 code_sha256: "NonEmptyString", # required
    #                 version: "Version", # required
    #                 execution_role_arn: "ExecutionRoleArn", # required
    #                 layers: ["LambdaLayerArn"],
    #                 vpc_config: {
    #                   subnet_ids: ["SubnetId"],
    #                   security_group_ids: ["SecurityGroupId"],
    #                   vpc_id: "VpcId"
    #                 },
    #                 package_type: "PackageType",
    #                 architectures: ["Architecture"],
    #                 last_modified_at: Time.now
    #               },
    #               code_repository: {
    #                 project_name: "CodeRepositoryProjectName",
    #                 integration_arn: "CodeRepositoryIntegrationArn",
    #                 provider_type: "CodeRepositoryProviderType"
    #               }
    #             }
    #           }
    #         ],
    #         inspector_score: 1.0,
    #         inspector_score_details: {
    #           adjusted_cvss: {
    #             score_source: "NonEmptyString", # required
    #             cvss_source: "NonEmptyString",
    #             version: "NonEmptyString", # required
    #             score: 1.0, # required
    #             scoring_vector: "NonEmptyString", # required
    #             adjustments: [
    #               {
    #                 metric: "NonEmptyString", # required
    #                 reason: "NonEmptyString", # required
    #               }
    #             ]
    #           }
    #         },
    #         network_reachability_details: {
    #           open_port_range: { # required
    #             begin: 1, # required
    #             end: 1, # required
    #           },
    #           protocol: "NetworkProtocol", # required
    #           network_path: { # required
    #             steps: [
    #               {
    #                 component_id: "Component", # required
    #                 component_type: "ComponentType", # required
    #                 component_arn: "ComponentArn"
    #               }
    #             ]
    #           }
    #         },
    #         package_vulnerability_details: {
    #           vulnerability_id: "VulnerabilityId", # required
    #           vulnerable_packages: [
    #             {
    #               name: "PackageName", # required
    #               version: "PackageVersion", # required
    #               source_layer_hash: "SourceLayerHash",
    #               epoch: 1,
    #               release: "PackageRelease",
    #               arch: "PackageArchitecture",
    #               package_manager: "PackageManager",
    #               file_path: "FilePath",
    #               fixed_in_version: "PackageVersion",
    #               remediation: "VulnerablePackageRemediation",
    #               source_lambda_layer_arn: "LambdaLayerArn"
    #             }
    #           ],
    #           source: "NonEmptyString", # required
    #           cvss: [
    #             {
    #               base_score: 1.0, # required
    #               scoring_vector: "NonEmptyString", # required
    #               version: "NonEmptyString", # required
    #               source: "NonEmptyString", # required
    #             }
    #           ],
    #           related_vulnerabilities: ["VulnerabilityId"],
    #           source_url: "NonEmptyString",
    #           vendor_severity: "NonEmptyString",
    #           vendor_created_at: Time.now,
    #           vendor_updated_at: Time.now,
    #           reference_urls: ["NonEmptyString"]
    #         },
    #         fix_available: "FixAvailable",
    #         exploit_available: "ExploitAvailable",
    #         exploitability_details: {
    #           last_known_exploit_at: Time.now
    #         },
    #         code_vulnerability_details: {
    #           file_path: { # required
    #             file_name: "NonEmptyString", # required
    #             file_path: "NonEmptyString", # required
    #             start_line: 1, # required
    #             end_line: 1, # required
    #           },
    #           detector_tags: ["NonEmptyString"],
    #           reference_urls: ["NonEmptyString"],
    #           rule_id: "NonEmptyString",
    #           source_lambda_layer_arn: "LambdaLayerArn",
    #           detector_id: "NonEmptyString", # required
    #           detector_name: "NonEmptyString", # required
    #           cwes: ["NonEmptyString"], # required
    #         },
    #         epss: {
    #           score: 1.0
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListFindingsOutput]
    def list_findings(params = {}, options = {})
      request = build_request(:list_findings, params)
      request.send_request(options)
    end

    # <p>List members associated with the Amazon Inspector delegated administrator for your
    #          organization.</p>
    # @param [Hash, Types::ListMembersInput] params
    # @option params [Boolean] :only_associated
    #   <p>Specifies whether to list only currently associated members if <code>True</code> or to
    #            list all members within the organization if <code>False</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results the response can return. If your request would return more
    #            than the maximum the response will return a <code>nextToken</code> value, use this value
    #            when you call the action again to get the remaining results.</p>
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. If your response returns
    #            more than the <code>maxResults</code> maximum value it will also return a
    #               <code>nextToken</code> value. For subsequent calls, use the <code>nextToken</code> value
    #            returned from the previous request to continue listing results after the first page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     only_associated: false,
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_members(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     members: [
    #       {
    #         account_id: "AccountId",
    #         relationship_status: "RelationshipStatus",
    #         delegated_admin_account_id: "AccountId",
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListMembersOutput]
    def list_members(params = {}, options = {})
      request = build_request(:list_members, params)
      request.send_request(options)
    end

    # <p>Lists all tags attached to a given resource.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon resource number (ARN) of the resource to list tags of.</p>
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
    #       "MapKey" => "MapValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists the Amazon Inspector usage totals over the last 30 days.</p>
    # @param [Hash, Types::ListUsageTotalsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results the response can return. If your request would return more
    #            than the maximum the response will return a <code>nextToken</code> value, use this value
    #            when you call the action again to get the remaining results.</p>
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. If your response returns
    #            more than the <code>maxResults</code> maximum value it will also return a
    #               <code>nextToken</code> value. For subsequent calls, use the <code>nextToken</code> value
    #            returned from the previous request to continue listing results after the first page.</p>
    # @option params [Array<String>] :account_ids
    #   <p>The Amazon Web Services account IDs to retrieve usage totals for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "ListUsageTotalsNextToken",
    #     account_ids: ["UsageAccountId"]
    #   }
    #   options = {}
    #   response = client.list_usage_totals(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "ListUsageTotalsNextToken",
    #     totals: [
    #       {
    #         account_id: "MeteringAccountId",
    #         usage: [
    #           {
    #             type: "UsageType",
    #             total: 1.0,
    #             estimated_monthly_cost: 1.0,
    #             currency: "Currency"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::ListUsageTotalsOutput]
    def list_usage_totals(params = {}, options = {})
      request = build_request(:list_usage_totals, params)
      request.send_request(options)
    end

    # <p>Resets an encryption key. After the key is reset your resources will be encrypted by an
    #          Amazon Web Services owned key.</p>
    # @param [Hash, Types::ResetEncryptionKeyRequest] params
    # @option params [String] :scan_type
    #   <p>The scan type the key encrypts.</p>
    # @option params [String] :resource_type
    #   <p>The resource type the key encrypts.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scan_type: "ScanType", # required
    #     resource_type: "ResourceType", # required
    #   }
    #   options = {}
    #   response = client.reset_encryption_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ResetEncryptionKeyResponse]
    def reset_encryption_key(params = {}, options = {})
      request = build_request(:reset_encryption_key, params)
      request.send_request(options)
    end

    # <p>Lists Amazon Inspector coverage details for a specific vulnerability.</p>
    # @param [Hash, Types::SearchVulnerabilitiesRequest] params
    # @option params [Types::SearchVulnerabilitiesFilterCriteria] :filter_criteria
    #   <p>The criteria used to filter the results of a vulnerability search.</p>
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter_criteria: { # required
    #       vulnerability_ids: ["VulnId"], # required
    #     },
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.search_vulnerabilities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vulnerabilities: [ # required
    #       {
    #         id: "NonEmptyString", # required
    #         cwes: ["Cwe"],
    #         cisa_data: {
    #           date_added: Time.now,
    #           date_due: Time.now,
    #           action: "CisaAction"
    #         },
    #         source: "VulnerabilitySource",
    #         description: "VulnerabilityDescription",
    #         atig_data: {
    #           first_seen: Time.now,
    #           last_seen: Time.now,
    #           targets: ["Target"],
    #           ttps: ["Ttp"]
    #         },
    #         vendor_severity: "VendorSeverity",
    #         cvss4: {
    #           base_score: 1.0,
    #           scoring_vector: "CvssScoringVector"
    #         },
    #         cvss3: {
    #           base_score: 1.0,
    #           scoring_vector: "CvssScoringVector"
    #         },
    #         related_vulnerabilities: ["RelatedVulnerability"],
    #         cvss2: {
    #           base_score: 1.0,
    #           scoring_vector: "CvssScoringVector"
    #         },
    #         vendor_created_at: Time.now,
    #         vendor_updated_at: Time.now,
    #         source_url: "VulnerabilitySourceUrl",
    #         reference_urls: ["VulnerabilityReferenceUrl"],
    #         exploit_observed: {
    #           last_seen: Time.now,
    #           first_seen: Time.now
    #         },
    #         detection_platforms: ["NonEmptyString"],
    #         epss: {
    #           score: 1.0
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::SearchVulnerabilitiesResponse]
    def search_vulnerabilities(params = {}, options = {})
      request = build_request(:search_vulnerabilities, params)
      request.send_request(options)
    end

    # <p> Sends a CIS session health. This API is used by the Amazon Inspector SSM plugin to
    #          communicate with the Amazon Inspector service. The Amazon Inspector SSM plugin calls
    #          this API to start a CIS scan session for the scan ID supplied by the service. </p>
    # @param [Hash, Types::SendCisSessionHealthRequest] params
    # @option params [String] :scan_job_id
    #   <p>A unique identifier for the scan job.</p>
    # @option params [String] :session_token
    #   <p>The unique token that identifies the CIS session.</p>
    # @example Sample SendCisSessionHealth Call
    #   # Example operation for send_cis_session_health
    #   params = {
    #     scan_job_id: "624b746d-e080-44ae-8c1d-48e653365a38",
    #     session_token: "624b746d-e080-44ae-8c1d-48e653365a31"
    #   }
    #   options = {}
    #   response = client.send_cis_session_health(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     scan_job_id: "UUID", # required
    #     session_token: "UUID", # required
    #   }
    #   options = {}
    #   response = client.send_cis_session_health(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SendCisSessionHealthResponse]
    def send_cis_session_health(params = {}, options = {})
      request = build_request(:send_cis_session_health, params)
      request.send_request(options)
    end

    # <p> Sends a CIS session telemetry. This API is used by the Amazon Inspector SSM plugin to
    #          communicate with the Amazon Inspector service. The Amazon Inspector SSM plugin calls
    #          this API to start a CIS scan session for the scan ID supplied by the service. </p>
    # @param [Hash, Types::SendCisSessionTelemetryRequest] params
    # @option params [String] :scan_job_id
    #   <p>A unique identifier for the scan job.</p>
    # @option params [String] :session_token
    #   <p>The unique token that identifies the CIS session.</p>
    # @option params [Array<Types::CisSessionMessage>] :messages
    #   <p>The CIS session telemetry messages.</p>
    # @example Sample SendCisSessionTelemetry Call
    #   # Example operation for send_cis_session_telemetry
    #   params = {
    #     scan_job_id: "624b746d-e080-44ae-8c1d-48e653365a38",
    #     session_token: "624b746d-e080-44ae-8c1d-48e653365a31",
    #     messages: [
    #       {
    #         rule_id: "1.12.1",
    #         status: FAILED,
    #         cis_rule_details: "dGVzdCBleGFtcGxlCg=="
    #       },
    #       {
    #         rule_id: "1.2.1",
    #         status: PASSED,
    #         cis_rule_details: "dGVzdCBleGFtcGxlCg==dGVzdCBleGFtcGxlCg"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.send_cis_session_telemetry(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     scan_job_id: "UUID", # required
    #     session_token: "UUID", # required
    #     messages: [ # required
    #       {
    #         rule_id: "RuleId", # required
    #         status: "FAILED" # One of: ["FAILED", "PASSED", "NOT_EVALUATED", "INFORMATIONAL", "UNKNOWN", "NOT_APPLICABLE", "ERROR"], # required
    #         cis_rule_details: "data", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.send_cis_session_telemetry(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SendCisSessionTelemetryResponse]
    def send_cis_session_telemetry(params = {}, options = {})
      request = build_request(:send_cis_session_telemetry, params)
      request.send_request(options)
    end

    # <p> Starts a CIS session. This API is used by the Amazon Inspector SSM plugin to
    #          communicate with the Amazon Inspector service. The Amazon Inspector SSM plugin calls
    #          this API to start a CIS scan session for the scan ID supplied by the service. </p>
    # @param [Hash, Types::StartCisSessionRequest] params
    # @option params [String] :scan_job_id
    #   <p>A unique identifier for the scan job.</p>
    # @option params [Types::StartCisSessionMessage] :message
    #   <p>The start CIS session message.</p>
    # @example Sample SendCisSessionHealth Call
    #   # Example operation for start_cis_session
    #   params = {
    #     scan_job_id: "624b746d-e080-44ae-8c1d-48e653365a38",
    #     message: {
    #       session_token: "624b746d-e080-44ae-8c1d-48e653365a31"
    #     }
    #   }
    #   options = {}
    #   response = client.start_cis_session(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     scan_job_id: "UUID", # required
    #     message: { # required
    #       session_token: "UUID", # required
    #     }
    #   }
    #   options = {}
    #   response = client.start_cis_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StartCisSessionResponse]
    def start_cis_session(params = {}, options = {})
      request = build_request(:start_cis_session, params)
      request.send_request(options)
    end

    # <p>Initiates a code security scan on a specified repository.</p>
    # @param [Hash, Types::StartCodeSecurityScanRequest] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    # @option params [Types::CodeSecurityResource] :resource
    #   <p>The resource identifier for the code repository to scan.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "CodeSecurityClientToken",
    #     resource: { # required
    #       # One of:
    #       project_id: "ProjectId"
    #     }
    #   }
    #   options = {}
    #   response = client.start_code_security_scan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scan_id: "CodeSecurityUuid",
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCESSFUL", "FAILED", "SKIPPED"]
    #   }
    # @return [Types::StartCodeSecurityScanResponse]
    def start_code_security_scan(params = {}, options = {})
      request = build_request(:start_code_security_scan, params)
      request.send_request(options)
    end

    # <p> Stops a CIS session. This API is used by the Amazon Inspector SSM plugin to
    #          communicate with the Amazon Inspector service. The Amazon Inspector SSM plugin calls
    #          this API to stop a CIS scan session for the scan ID supplied by the service. </p>
    # @param [Hash, Types::StopCisSessionRequest] params
    # @option params [String] :scan_job_id
    #   <p>A unique identifier for the scan job.</p>
    # @option params [String] :session_token
    #   <p>The unique token that identifies the CIS session.</p>
    # @option params [Types::StopCisSessionMessage] :message
    #   <p>The stop CIS session message.</p>
    # @example Sample StopCisSession Call
    #   # Example operation for stop_cis_session
    #   params = {
    #     scan_job_id: "624b746d-e080-44ae-8c1d-48e653365a38",
    #     session_token: "624b746d-e080-44ae-8c1d-48e653365a31",
    #     message: {
    #       status: FAILED,
    #       reason: "Failure Reason",
    #       progress: {
    #         informational_checks: 1,
    #         error_checks: 1,
    #         successful_checks: 5,
    #         not_applicable_checks: 0,
    #         total_checks: 10,
    #         unknown_checks: 0,
    #         not_evaluated_checks: 2,
    #         failed_checks: 0
    #       },
    #       compute_platform: {
    #         vendor: "canonical",
    #         product: "ubuntu",
    #         version: "20.04"
    #       },
    #       benchmark_version: "2.0.0",
    #       benchmark_profile: "xccdf_org.cisecurity.benchmarks_profile_Level_1"
    #     }
    #   }
    #   options = {}
    #   response = client.stop_cis_session(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     scan_job_id: "UUID", # required
    #     session_token: "UUID", # required
    #     message: { # required
    #       status: "SUCCESS" # One of: ["SUCCESS", "FAILED", "INTERRUPTED", "UNSUPPORTED_OS"], # required
    #       reason: "Reason",
    #       progress: { # required
    #         total_checks: 1,
    #         successful_checks: 1,
    #         failed_checks: 1,
    #         not_evaluated_checks: 1,
    #         unknown_checks: 1,
    #         not_applicable_checks: 1,
    #         informational_checks: 1,
    #         error_checks: 1
    #       },
    #       compute_platform: {
    #         vendor: "Vendor",
    #         product: "Product",
    #         version: "PlatformVersion"
    #       },
    #       benchmark_version: "BenchmarkVersion",
    #       benchmark_profile: "BenchmarkProfile"
    #     }
    #   }
    #   options = {}
    #   response = client.stop_cis_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopCisSessionResponse]
    def stop_cis_session(params = {}, options = {})
      request = build_request(:stop_cis_session, params)
      request.send_request(options)
    end

    # <p>Adds tags to a resource.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to apply a tag to.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to be added to a resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "MapKey" => "MapValue"
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

    # <p>Removes tags from a resource.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the resource to remove tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys to remove from the resource.</p>
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

    # <p>Updates a CIS scan configuration.</p>
    # @param [Hash, Types::UpdateCisScanConfigurationRequest] params
    # @option params [String] :scan_configuration_arn
    #   <p>The CIS scan configuration ARN.</p>
    # @option params [String] :scan_name
    #   <p>The scan name for the CIS scan configuration.</p>
    # @option params [String] :security_level
    #   <p> The security level for the CIS scan configuration. Security level refers to the
    #            Benchmark levels that CIS assigns to a profile. </p>
    # @option params [Types::Schedule] :schedule
    #   <p>The schedule for the CIS scan configuration.</p>
    # @option params [Types::UpdateCisTargets] :targets
    #   <p>The targets for the CIS scan configuration.</p>
    # @example Sample UpdateCisScanConfiguration Call
    #   # Example operation for update_cis_scan_configuration
    #   params = {
    #     scan_configuration_arn: "arn:aws:inspector2:us-east-1:123412341234:owner/123412341234/cis-configuration/624b746d-e080-44ae-8c1d-48e653365a38",
    #     scan_name: "sample_new",
    #     security_level: LEVEL_2,
    #     schedule: {
    #     "daily" => {
    #       "startTime" => {
    #         "timeOfDay" => 12:56,
    #         "timezone" => UTC
    #       }
    #     }
    #   },
    #     targets: {
    #       account_ids: [
    #         "SELF"
    #       ],
    #       target_resource_tags: {
    #         "key2" => [
    #           "value2"
    #         ]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_cis_scan_configuration(params, options)
    #   response.to_h #=>
    #   {
    #     scan_configuration_arn: "arn:aws:inspector2:us-east-1:123412341234:owner/123412341234/cis-configuration/624b746d-e080-44ae-8c1d-48e653365a38"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     scan_configuration_arn: "CisScanConfigurationArn", # required
    #     scan_name: "CisScanName",
    #     security_level: "LEVEL_1" # One of: ["LEVEL_1", "LEVEL_2"],
    #     schedule: {
    #       # One of:
    #       one_time: {
    #       },
    #       daily: {
    #         start_time: { # required
    #           time_of_day: "TimeOfDay", # required
    #           timezone: "Timezone", # required
    #         }
    #       },
    #       weekly: {
    #         start_time: { # required
    #           time_of_day: "TimeOfDay", # required
    #           timezone: "Timezone", # required
    #         },
    #         days: ["SUN" # One of: ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]], # required
    #       },
    #       monthly: {
    #         start_time: { # required
    #           time_of_day: "TimeOfDay", # required
    #           timezone: "Timezone", # required
    #         },
    #         day: "SUN" # One of: ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"], # required
    #       }
    #     },
    #     targets: {
    #       account_ids: ["TargetAccount"],
    #       target_resource_tags: {
    #         "TargetResourceTagsKey" => ["TargetResourceTagsValue"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_cis_scan_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scan_configuration_arn: "CisScanConfigurationArn", # required
    #   }
    # @return [Types::UpdateCisScanConfigurationResponse]
    def update_cis_scan_configuration(params = {}, options = {})
      request = build_request(:update_cis_scan_configuration, params)
      request.send_request(options)
    end

    # <p>Updates an existing code security integration.</p>
    #          <p>After calling the <code>CreateCodeSecurityIntegration</code> operation, you complete
    #          authentication and authorization with your provider. Next you call the
    #             <code>UpdateCodeSecurityIntegration</code> operation to provide the <code>details</code>
    #          to complete the integration setup</p>
    # @param [Hash, Types::UpdateCodeSecurityIntegrationRequest] params
    # @option params [String] :integration_arn
    #   <p>The Amazon Resource Name (ARN) of the code security integration to update.</p>
    # @option params [Types::UpdateIntegrationDetails] :details
    #   <p>The updated integration details specific to the repository provider type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     integration_arn: "CodeSecurityIntegrationArn", # required
    #     details: { # required
    #       # One of:
    #       gitlab_self_managed: {
    #         auth_code: "GitLabAuthCode", # required
    #       },
    #       github: {
    #         code: "GitHubAuthCode", # required
    #         installation_id: "GitHubInstallationId", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_code_security_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     integration_arn: "CodeSecurityIntegrationArn", # required
    #     status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "ACTIVE", "INACTIVE", "DISABLING"], # required
    #   }
    # @return [Types::UpdateCodeSecurityIntegrationResponse]
    def update_code_security_integration(params = {}, options = {})
      request = build_request(:update_code_security_integration, params)
      request.send_request(options)
    end

    # <p>Updates an existing code security scan configuration.</p>
    # @param [Hash, Types::UpdateCodeSecurityScanConfigurationRequest] params
    # @option params [String] :scan_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the scan configuration to update.</p>
    # @option params [Types::CodeSecurityScanConfiguration] :configuration
    #   <p>The updated configuration settings for the code security scan.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scan_configuration_arn: "ScanConfigurationArn", # required
    #     configuration: { # required
    #       periodic_scan_configuration: {
    #         frequency: "WEEKLY" # One of: ["WEEKLY", "MONTHLY", "NEVER"],
    #         frequency_expression: "FrequencyExpression"
    #       },
    #       continuous_integration_scan_configuration: {
    #         supported_events: ["PULL_REQUEST" # One of: ["PULL_REQUEST", "PUSH"]], # required
    #       },
    #       rule_set_categories: ["SAST" # One of: ["SAST", "IAC", "SCA"]], # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_code_security_scan_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scan_configuration_arn: "ScanConfigurationArn"
    #   }
    # @return [Types::UpdateCodeSecurityScanConfigurationResponse]
    def update_code_security_scan_configuration(params = {}, options = {})
      request = build_request(:update_code_security_scan_configuration, params)
      request.send_request(options)
    end

    # <p>Updates setting configurations for your Amazon Inspector account. When you use this API as an Amazon Inspector
    #          delegated administrator this updates the setting for all accounts you manage. Member
    #          accounts in an organization cannot update this setting.</p>
    # @param [Hash, Types::UpdateConfigurationInput] params
    # @option params [Types::EcrConfiguration] :ecr_configuration
    #   <p>Specifies how the ECR automated re-scan will be updated for your environment.</p>
    # @option params [Types::Ec2Configuration] :ec2_configuration
    #   <p>Specifies how the Amazon EC2 automated scan will be updated for your environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ecr_configuration: {
    #       rescan_duration: "EcrRescanDuration", # required
    #       pull_date_rescan_duration: "EcrPullDateRescanDuration",
    #       pull_date_rescan_mode: "EcrPullDateRescanMode"
    #     },
    #     ec2_configuration: {
    #       scan_mode: "Ec2ScanMode", # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateConfigurationOutput]
    def update_configuration(params = {}, options = {})
      request = build_request(:update_configuration, params)
      request.send_request(options)
    end

    # <p>Activates, deactivates Amazon Inspector deep inspection, or updates custom paths for your account.
    #       </p>
    # @param [Hash, Types::UpdateEc2DeepInspectionConfigurationRequest] params
    # @option params [Boolean] :activate_deep_inspection
    #   <p>Specify <code>TRUE</code> to activate Amazon Inspector deep inspection in your account, or
    #               <code>FALSE</code> to deactivate. Member accounts in an organization cannot deactivate
    #            deep inspection, instead the delegated administrator for the organization can deactivate a
    #            member account using <a href="https://docs.aws.amazon.com/inspector/v2/APIReference/API_BatchUpdateMemberEc2DeepInspectionStatus.html">BatchUpdateMemberEc2DeepInspectionStatus</a>.</p>
    # @option params [Array<String>] :package_paths
    #   <p>The Amazon Inspector deep inspection custom paths you are adding for your account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     activate_deep_inspection: false,
    #     package_paths: ["Path"]
    #   }
    #   options = {}
    #   response = client.update_ec2_deep_inspection_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     package_paths: ["Path"],
    #     org_package_paths: ["Path"],
    #     status: "Ec2DeepInspectionStatus",
    #     error_message: "NonEmptyString"
    #   }
    # @return [Types::UpdateEc2DeepInspectionConfigurationResponse]
    def update_ec2_deep_inspection_configuration(params = {}, options = {})
      request = build_request(:update_ec2_deep_inspection_configuration, params)
      request.send_request(options)
    end

    # <p>Updates an encryption key. A <code>ResourceNotFoundException</code> means that an
    #             Amazon Web Services owned key is being used for encryption.</p>
    # @param [Hash, Types::UpdateEncryptionKeyRequest] params
    # @option params [String] :kms_key_id
    #   <p>A KMS key ID for the encryption key.</p>
    # @option params [String] :scan_type
    #   <p>The scan type for the encryption key.</p>
    # @option params [String] :resource_type
    #   <p>The resource type for the encryption key.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     kms_key_id: "KmsKeyArn", # required
    #     scan_type: "ScanType", # required
    #     resource_type: "ResourceType", # required
    #   }
    #   options = {}
    #   response = client.update_encryption_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateEncryptionKeyResponse]
    def update_encryption_key(params = {}, options = {})
      request = build_request(:update_encryption_key, params)
      request.send_request(options)
    end

    # <p>Specifies the action that is to be applied to the findings that match the filter.</p>
    # @param [Hash, Types::UpdateFilterInput] params
    # @option params [String] :action
    #   <p>Specifies the action that is to be applied to the findings that match the filter.</p>
    # @option params [String] :description
    #   <p>A description of the filter.</p>
    # @option params [Types::FilterCriteria] :filter_criteria
    #   <p>Defines the criteria to be update in the filter.</p>
    # @option params [String] :name
    #   <p>The name of the filter.</p>
    # @option params [String] :filter_arn
    #   <p>The Amazon Resource Number (ARN) of the filter to update.</p>
    # @option params [String] :reason
    #   <p>The reason the filter was updated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     action: "FilterAction",
    #     description: "FilterDescription",
    #     filter_criteria: {
    #       finding_arn: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       aws_account_id: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       finding_type: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       severity: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       first_observed_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       last_observed_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       updated_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       finding_status: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       title: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       inspector_score: [
    #         {
    #           upper_inclusive: 1.0,
    #           lower_inclusive: 1.0
    #         }
    #       ],
    #       resource_type: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       resource_id: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       resource_tags: [
    #         {
    #           comparison: "MapComparison", # required
    #           key: "MapKey", # required
    #           value: "MapValue"
    #         }
    #       ],
    #       ec2_instance_image_id: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ec2_instance_vpc_id: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ec2_instance_subnet_id: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ecr_image_pushed_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       ecr_image_architecture: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ecr_image_registry: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ecr_image_repository_name: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ecr_image_tags: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ecr_image_hash: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       ecr_image_last_in_use_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       ecr_image_in_use_count: [
    #         {
    #           upper_inclusive: 1.0,
    #           lower_inclusive: 1.0
    #         }
    #       ],
    #       port_range: [
    #         {
    #           begin_inclusive: 1,
    #           end_inclusive: 1
    #         }
    #       ],
    #       network_protocol: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       component_id: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       component_type: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       vulnerability_id: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       vulnerability_source: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       vendor_severity: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       vulnerable_packages: [
    #         {
    #           name: {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           },
    #           version: {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           },
    #           epoch: {
    #             upper_inclusive: 1.0,
    #             lower_inclusive: 1.0
    #           },
    #           release: {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           },
    #           architecture: {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           },
    #           source_layer_hash: {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           },
    #           source_lambda_layer_arn: {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           },
    #           file_path: {
    #             comparison: "StringComparison", # required
    #             value: "StringInput", # required
    #           }
    #         }
    #       ],
    #       related_vulnerabilities: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       fix_available: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       lambda_function_name: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       lambda_function_layers: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       lambda_function_runtime: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       lambda_function_last_modified_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       lambda_function_execution_role_arn: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       exploit_available: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       code_vulnerability_detector_name: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       code_vulnerability_detector_tags: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       code_vulnerability_file_path: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       epss_score: [
    #         {
    #           upper_inclusive: 1.0,
    #           lower_inclusive: 1.0
    #         }
    #       ],
    #       code_repository_project_name: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ],
    #       code_repository_provider_type: [
    #         {
    #           comparison: "StringComparison", # required
    #           value: "StringInput", # required
    #         }
    #       ]
    #     },
    #     name: "FilterName",
    #     filter_arn: "FilterArn", # required
    #     reason: "FilterReason"
    #   }
    #   options = {}
    #   response = client.update_filter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "FilterArn", # required
    #   }
    # @return [Types::UpdateFilterOutput]
    def update_filter(params = {}, options = {})
      request = build_request(:update_filter, params)
      request.send_request(options)
    end

    # <p>Updates the Amazon Inspector deep inspection custom paths for your organization. You must be an
    #          Amazon Inspector delegated administrator to use this API.</p>
    # @param [Hash, Types::UpdateOrgEc2DeepInspectionConfigurationRequest] params
    # @option params [Array<String>] :org_package_paths
    #   <p>The Amazon Inspector deep inspection custom paths you are adding for your organization.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     org_package_paths: ["Path"], # required
    #   }
    #   options = {}
    #   response = client.update_org_ec2_deep_inspection_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateOrgEc2DeepInspectionConfigurationResponse]
    def update_org_ec2_deep_inspection_configuration(params = {}, options = {})
      request = build_request(:update_org_ec2_deep_inspection_configuration, params)
      request.send_request(options)
    end

    # <p>Updates the configurations for your Amazon Inspector organization.</p>
    # @param [Hash, Types::UpdateOrganizationConfigurationInput] params
    # @option params [Types::AutoEnable] :auto_enable
    #   <p>Defines which scan types are enabled automatically for new members of your Amazon Inspector
    #            organization.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_enable: { # required
    #       ec2: false, # required
    #       ecr: false, # required
    #       lambda: false,
    #       lambda_code: false,
    #       code_repository: false
    #     }
    #   }
    #   options = {}
    #   response = client.update_organization_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     auto_enable: { # required
    #       ec2: false, # required
    #       ecr: false, # required
    #       lambda: false,
    #       lambda_code: false,
    #       code_repository: false
    #     }
    #   }
    # @return [Types::UpdateOrganizationConfigurationOutput]
    def update_organization_configuration(params = {}, options = {})
      request = build_request(:update_organization_configuration, params)
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
      context[:gem_name] = 'aws-sdk-inspector2'
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
