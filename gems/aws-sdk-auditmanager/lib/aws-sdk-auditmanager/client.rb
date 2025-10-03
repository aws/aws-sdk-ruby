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
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/sigv4'

module Aws::AuditManager
  # An API client for Aws::AuditManager.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::BedrockAssessmentManagerLambda

    add_plugin(::Aws::AuditManager::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
    add_plugin(Aws::Core::Plugins::SigV4)

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
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::AuditManager::EndpointProvider)
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

    # <p> Associates an evidence folder to an assessment report in an Audit Manager
    #          assessment. </p>
    # @param [Hash, Types::AssociateAssessmentReportEvidenceFolderRequest] params
    # @option params [String] :assessment_id
    #   <p> The identifier for the assessment. </p>
    # @option params [String] :evidence_folder_id
    #   <p> The identifier for the folder that the evidence is stored in. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_id: "UUID", # required
    #     evidence_folder_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.associate_assessment_report_evidence_folder(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateAssessmentReportEvidenceFolderResponse]
    def associate_assessment_report_evidence_folder(params = {}, options = {})
      request = build_request(:associate_assessment_report_evidence_folder, params)
      request.send_request(options)
    end

    # <p> Associates a list of evidence to an assessment report in an Audit Manager
    #          assessment. </p>
    # @param [Hash, Types::BatchAssociateAssessmentReportEvidenceRequest] params
    # @option params [String] :assessment_id
    #   <p> The identifier for the assessment. </p>
    # @option params [String] :evidence_folder_id
    #   <p> The identifier for the folder that the evidence is stored in. </p>
    # @option params [Array<String>] :evidence_ids
    #   <p> The list of evidence identifiers. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_id: "UUID", # required
    #     evidence_folder_id: "UUID", # required
    #     evidence_ids: ["UUID"], # required
    #   }
    #   options = {}
    #   response = client.batch_associate_assessment_report_evidence(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evidence_ids: ["UUID"],
    #     errors: [
    #       {
    #         evidence_id: "UUID",
    #         error_code: "ErrorCode",
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::BatchAssociateAssessmentReportEvidenceResponse]
    def batch_associate_assessment_report_evidence(params = {}, options = {})
      request = build_request(:batch_associate_assessment_report_evidence, params)
      request.send_request(options)
    end

    # <p> Creates a batch of delegations for an assessment in Audit Manager. </p>
    # @param [Hash, Types::BatchCreateDelegationByAssessmentRequest] params
    # @option params [Array<Types::CreateDelegationRequest>] :create_delegation_requests
    #   <p> The API request to batch create delegations in Audit Manager. </p>
    # @option params [String] :assessment_id
    #   <p> The identifier for the assessment. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     create_delegation_requests: [ # required
    #       {
    #         comment: "DelegationComment",
    #         control_set_id: "ControlSetId",
    #         role_arn: "IamArn",
    #         role_type: "PROCESS_OWNER" # One of: ["PROCESS_OWNER", "RESOURCE_OWNER"]
    #       }
    #     ],
    #     assessment_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.batch_create_delegation_by_assessment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     delegations: [
    #       {
    #         id: "UUID",
    #         assessment_name: "AssessmentName",
    #         assessment_id: "UUID",
    #         status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "UNDER_REVIEW", "COMPLETE"],
    #         role_arn: "IamArn",
    #         role_type: "PROCESS_OWNER" # One of: ["PROCESS_OWNER", "RESOURCE_OWNER"],
    #         creation_time: Time.now,
    #         last_updated: Time.now,
    #         control_set_id: "ControlSetId",
    #         comment: "DelegationComment",
    #         created_by: "CreatedBy"
    #       }
    #     ],
    #     errors: [
    #       {
    #         create_delegation_request: {
    #           comment: "DelegationComment",
    #           control_set_id: "ControlSetId",
    #           role_arn: "IamArn",
    #           role_type: "PROCESS_OWNER" # One of: ["PROCESS_OWNER", "RESOURCE_OWNER"]
    #         },
    #         error_code: "ErrorCode",
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::BatchCreateDelegationByAssessmentResponse]
    def batch_create_delegation_by_assessment(params = {}, options = {})
      request = build_request(:batch_create_delegation_by_assessment, params)
      request.send_request(options)
    end

    # <p> Deletes a batch of delegations for an assessment in Audit Manager. </p>
    # @param [Hash, Types::BatchDeleteDelegationByAssessmentRequest] params
    # @option params [Array<String>] :delegation_ids
    #   <p> The identifiers for the delegations. </p>
    # @option params [String] :assessment_id
    #   <p> The identifier for the assessment. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     delegation_ids: ["UUID"], # required
    #     assessment_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.batch_delete_delegation_by_assessment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [
    #       {
    #         delegation_id: "UUID",
    #         error_code: "ErrorCode",
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::BatchDeleteDelegationByAssessmentResponse]
    def batch_delete_delegation_by_assessment(params = {}, options = {})
      request = build_request(:batch_delete_delegation_by_assessment, params)
      request.send_request(options)
    end

    # <p> Disassociates a list of evidence from an assessment report in Audit Manager.
    #       </p>
    # @param [Hash, Types::BatchDisassociateAssessmentReportEvidenceRequest] params
    # @option params [String] :assessment_id
    #   <p> The identifier for the assessment. </p>
    # @option params [String] :evidence_folder_id
    #   <p> The identifier for the folder that the evidence is stored in. </p>
    # @option params [Array<String>] :evidence_ids
    #   <p> The list of evidence identifiers. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_id: "UUID", # required
    #     evidence_folder_id: "UUID", # required
    #     evidence_ids: ["UUID"], # required
    #   }
    #   options = {}
    #   response = client.batch_disassociate_assessment_report_evidence(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evidence_ids: ["UUID"],
    #     errors: [
    #       {
    #         evidence_id: "UUID",
    #         error_code: "ErrorCode",
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::BatchDisassociateAssessmentReportEvidenceResponse]
    def batch_disassociate_assessment_report_evidence(params = {}, options = {})
      request = build_request(:batch_disassociate_assessment_report_evidence, params)
      request.send_request(options)
    end

    # <p>Adds one or more pieces of evidence to a control in an Audit Manager assessment. </p>
    #          <p>You can import manual evidence from any S3 bucket by specifying the S3 URI of the
    #          object. You can also upload a file from your browser, or enter plain text in response to a
    #          risk assessment question. </p>
    #          <p>The following restrictions apply to this action:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>manualEvidence</code> can be only one of the following:
    #                   <code>evidenceFileName</code>, <code>s3ResourcePath</code>, or
    #                   <code>textResponse</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>Maximum size of an individual evidence file: 100 MB</p>
    #             </li>
    #             <li>
    #                <p>Number of daily manual evidence uploads per control: 100</p>
    #             </li>
    #             <li>
    #                <p>Supported file formats: See <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/upload-evidence.html#supported-manual-evidence-files">Supported file types for manual evidence</a> in the <i>Audit Manager User Guide</i>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>For more information about Audit Manager service restrictions, see <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/service-quotas.html">Quotas and
    #             restrictions for Audit Manager</a>.</p>
    # @param [Hash, Types::BatchImportEvidenceToAssessmentControlRequest] params
    # @option params [String] :assessment_id
    #   <p> The identifier for the assessment. </p>
    # @option params [String] :control_set_id
    #   <p> The identifier for the control set. </p>
    # @option params [String] :control_id
    #   <p> The identifier for the control. </p>
    # @option params [Array<Types::ManualEvidence>] :manual_evidence
    #   <p> The list of manual evidence objects. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_id: "UUID", # required
    #     control_set_id: "ControlSetId", # required
    #     control_id: "UUID", # required
    #     manual_evidence: [ # required
    #       {
    #         s3_resource_path: "S3Url",
    #         text_response: "ManualEvidenceTextResponse",
    #         evidence_file_name: "ManualEvidenceLocalFileName"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_import_evidence_to_assessment_control(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [
    #       {
    #         manual_evidence: {
    #           s3_resource_path: "S3Url",
    #           text_response: "ManualEvidenceTextResponse",
    #           evidence_file_name: "ManualEvidenceLocalFileName"
    #         },
    #         error_code: "ErrorCode",
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::BatchImportEvidenceToAssessmentControlResponse]
    def batch_import_evidence_to_assessment_control(params = {}, options = {})
      request = build_request(:batch_import_evidence_to_assessment_control, params)
      request.send_request(options)
    end

    # <p> Creates an assessment in Audit Manager. </p>
    # @param [Hash, Types::CreateAssessmentRequest] params
    # @option params [String] :name
    #   <p> The name of the assessment to be created. </p>
    # @option params [String] :description
    #   <p> The optional description of the assessment to be created. </p>
    # @option params [Types::AssessmentReportsDestination] :assessment_reports_destination
    #   <p> The assessment report storage destination for the assessment that's being created.
    #         </p>
    # @option params [Types::Scope] :scope
    #   <p> The wrapper that contains the Amazon Web Services accounts that are in
    #            scope for the assessment. </p>
    #            <note>
    #               <p>You no longer need to specify which Amazon Web Services services are in scope when you
    #               create or update an assessment. Audit Manager infers the services in scope by
    #               examining your assessment controls and their data sources, and then mapping this
    #               information to the relevant Amazon Web Services services. </p>
    #               <p>If an underlying data source changes for your assessment, we automatically update the
    #               services scope as needed to reflect the correct Amazon Web Services services. This
    #               ensures that your assessment collects accurate and comprehensive evidence about all of
    #               the relevant services in your AWS environment.</p>
    #            </note>
    # @option params [Array<Types::Role>] :roles
    #   <p> The list of roles for the assessment. </p>
    # @option params [String] :framework_id
    #   <p> The identifier for the framework that the assessment will be created from. </p>
    # @option params [Hash<String, String>] :tags
    #   <p> The tags that are associated with the assessment. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "AssessmentName", # required
    #     description: "AssessmentDescription",
    #     assessment_reports_destination: { # required
    #       destination_type: "S3" # One of: ["S3"],
    #       destination: "S3Url"
    #     },
    #     scope: { # required
    #       aws_accounts: [
    #         {
    #           id: "AccountId",
    #           email_address: "EmailAddress",
    #           name: "AccountName"
    #         }
    #       ],
    #       aws_services: [
    #         {
    #           service_name: "AWSServiceName"
    #         }
    #       ]
    #     },
    #     roles: [ # required
    #       {
    #         role_type: "PROCESS_OWNER" # One of: ["PROCESS_OWNER", "RESOURCE_OWNER"], # required
    #         role_arn: "IamArn", # required
    #       }
    #     ],
    #     framework_id: "UUID", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_assessment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assessment: {
    #       arn: "AuditManagerArn",
    #       aws_account: {
    #         id: "AccountId",
    #         email_address: "EmailAddress",
    #         name: "AccountName"
    #       },
    #       metadata: {
    #         name: "AssessmentName",
    #         id: "UUID",
    #         description: "AssessmentDescription",
    #         compliance_type: "ComplianceType",
    #         status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #         assessment_reports_destination: {
    #           destination_type: "S3" # One of: ["S3"],
    #           destination: "S3Url"
    #         },
    #         scope: {
    #           aws_accounts: [
    #             {
    #               id: "AccountId",
    #               email_address: "EmailAddress",
    #               name: "AccountName"
    #             }
    #           ],
    #           aws_services: [
    #             {
    #               service_name: "AWSServiceName"
    #             }
    #           ]
    #         },
    #         roles: [
    #           {
    #             role_type: "PROCESS_OWNER" # One of: ["PROCESS_OWNER", "RESOURCE_OWNER"], # required
    #             role_arn: "IamArn", # required
    #           }
    #         ],
    #         delegations: [
    #           {
    #             id: "UUID",
    #             assessment_name: "AssessmentName",
    #             assessment_id: "UUID",
    #             status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "UNDER_REVIEW", "COMPLETE"],
    #             role_arn: "IamArn",
    #             role_type: "PROCESS_OWNER" # One of: ["PROCESS_OWNER", "RESOURCE_OWNER"],
    #             creation_time: Time.now,
    #             last_updated: Time.now,
    #             control_set_id: "ControlSetId",
    #             comment: "DelegationComment",
    #             created_by: "CreatedBy"
    #           }
    #         ],
    #         creation_time: Time.now,
    #         last_updated: Time.now
    #       },
    #       framework: {
    #         id: "UUID",
    #         arn: "AuditManagerArn",
    #         metadata: {
    #           name: "AssessmentName",
    #           description: "AssessmentFrameworkDescription",
    #           logo: "Filename",
    #           compliance_type: "ComplianceType"
    #         },
    #         control_sets: [
    #           {
    #             id: "ControlSetId",
    #             description: "NonEmptyString",
    #             status: "ACTIVE" # One of: ["ACTIVE", "UNDER_REVIEW", "REVIEWED"],
    #             roles: [
    #               {
    #                 role_type: "PROCESS_OWNER" # One of: ["PROCESS_OWNER", "RESOURCE_OWNER"], # required
    #                 role_arn: "IamArn", # required
    #               }
    #             ],
    #             controls: [
    #               {
    #                 id: "UUID",
    #                 name: "ControlName",
    #                 description: "ControlDescription",
    #                 status: "UNDER_REVIEW" # One of: ["UNDER_REVIEW", "REVIEWED", "INACTIVE"],
    #                 response: "MANUAL" # One of: ["MANUAL", "AUTOMATE", "DEFER", "IGNORE"],
    #                 comments: [
    #                   {
    #                     author_name: "Username",
    #                     comment_body: "ControlCommentBody",
    #                     posted_date: Time.now
    #                   }
    #                 ],
    #                 evidence_sources: ["NonEmptyString"],
    #                 evidence_count: 1,
    #                 assessment_report_evidence_count: 1
    #               }
    #             ],
    #             delegations: [
    #               {
    #                 id: "UUID",
    #                 assessment_name: "AssessmentName",
    #                 assessment_id: "UUID",
    #                 status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "UNDER_REVIEW", "COMPLETE"],
    #                 role_arn: "IamArn",
    #                 role_type: "PROCESS_OWNER" # One of: ["PROCESS_OWNER", "RESOURCE_OWNER"],
    #                 creation_time: Time.now,
    #                 last_updated: Time.now,
    #                 control_set_id: "ControlSetId",
    #                 comment: "DelegationComment",
    #                 created_by: "CreatedBy"
    #               }
    #             ],
    #             system_evidence_count: 1,
    #             manual_evidence_count: 1
    #           }
    #         ]
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::CreateAssessmentResponse]
    def create_assessment(params = {}, options = {})
      request = build_request(:create_assessment, params)
      request.send_request(options)
    end

    # <p> Creates a custom framework in Audit Manager. </p>
    # @param [Hash, Types::CreateAssessmentFrameworkRequest] params
    # @option params [String] :name
    #   <p> The name of the new custom framework. </p>
    # @option params [String] :description
    #   <p> An optional description for the new custom framework. </p>
    # @option params [String] :compliance_type
    #   <p> The compliance type that the new custom framework supports, such as CIS or HIPAA.
    #         </p>
    # @option params [Array<Types::CreateAssessmentFrameworkControlSet>] :control_sets
    #   <p> The control sets that are associated with the framework. </p>
    #            <note>
    #               <p>The <code>Controls</code> object returns a partial response when called through Framework
    #               APIs. For a complete <code>Controls</code> object, use <code>GetControl</code>.</p>
    #            </note>
    # @option params [Hash<String, String>] :tags
    #   <p> The tags that are associated with the framework. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "FrameworkName", # required
    #     description: "FrameworkDescription",
    #     compliance_type: "ComplianceType",
    #     control_sets: [ # required
    #       {
    #         name: "ControlSetName", # required
    #         controls: [
    #           {
    #             id: "UUID", # required
    #           }
    #         ]
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_assessment_framework(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     framework: {
    #       arn: "AuditManagerArn",
    #       id: "UUID",
    #       name: "FrameworkName",
    #       type: "Standard" # One of: ["Standard", "Custom"],
    #       compliance_type: "ComplianceType",
    #       description: "FrameworkDescription",
    #       logo: "Filename",
    #       control_sources: "ControlSources",
    #       control_sets: [
    #         {
    #           id: "UUID",
    #           name: "ControlSetName",
    #           controls: [
    #             {
    #               arn: "AuditManagerArn",
    #               id: "UUID",
    #               type: "Standard" # One of: ["Standard", "Custom", "Core"],
    #               name: "ControlName",
    #               description: "ControlDescription",
    #               testing_information: "TestingInformation",
    #               action_plan_title: "ActionPlanTitle",
    #               action_plan_instructions: "ActionPlanInstructions",
    #               control_sources: "ControlSources",
    #               control_mapping_sources: [
    #                 {
    #                   source_id: "UUID",
    #                   source_name: "SourceName",
    #                   source_description: "SourceDescription",
    #                   source_set_up_option: "System_Controls_Mapping" # One of: ["System_Controls_Mapping", "Procedural_Controls_Mapping"],
    #                   source_type: "AWS_Cloudtrail" # One of: ["AWS_Cloudtrail", "AWS_Config", "AWS_Security_Hub", "AWS_API_Call", "MANUAL", "Common_Control", "Core_Control"],
    #                   source_keyword: {
    #                     keyword_input_type: "SELECT_FROM_LIST" # One of: ["SELECT_FROM_LIST", "UPLOAD_FILE", "INPUT_TEXT"],
    #                     keyword_value: "KeywordValue"
    #                   },
    #                   source_frequency: "DAILY" # One of: ["DAILY", "WEEKLY", "MONTHLY"],
    #                   troubleshooting_text: "TroubleshootingText"
    #                 }
    #               ],
    #               created_at: Time.now,
    #               last_updated_at: Time.now,
    #               created_by: "CreatedBy",
    #               last_updated_by: "LastUpdatedBy",
    #               tags: {
    #                 "TagKey" => "TagValue"
    #               },
    #               state: "ACTIVE" # One of: ["ACTIVE", "END_OF_SUPPORT"]
    #             }
    #           ]
    #         }
    #       ],
    #       created_at: Time.now,
    #       last_updated_at: Time.now,
    #       created_by: "CreatedBy",
    #       last_updated_by: "LastUpdatedBy",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::CreateAssessmentFrameworkResponse]
    def create_assessment_framework(params = {}, options = {})
      request = build_request(:create_assessment_framework, params)
      request.send_request(options)
    end

    # <p> Creates an assessment report for the specified assessment. </p>
    # @param [Hash, Types::CreateAssessmentReportRequest] params
    # @option params [String] :name
    #   <p> The name of the new assessment report. </p>
    # @option params [String] :description
    #   <p> The description of the assessment report. </p>
    # @option params [String] :assessment_id
    #   <p> The identifier for the assessment. </p>
    # @option params [String] :query_statement
    #   <p>A SQL statement that represents an evidence finder query.</p>
    #            <p>Provide this parameter when you want to generate an assessment report from the results
    #            of an evidence finder search query. When you use this parameter, Audit Manager
    #            generates a one-time report using only the evidence from the query output. This report does
    #            not include any assessment evidence that was manually <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/generate-assessment-report.html#generate-assessment-report-include-evidence">added to a report using the console</a>, or <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_BatchAssociateAssessmentReportEvidence.html">associated with a report using the API</a>. </p>
    #            <p>To use this parameter, the <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_EvidenceFinderEnablement.html#auditmanager-Type-EvidenceFinderEnablement-enablementStatus">enablementStatus</a> of evidence finder must be <code>ENABLED</code>. </p>
    #            <p> For examples and help resolving <code>queryStatement</code> validation exceptions, see
    #               <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/evidence-finder-issues.html#querystatement-exceptions">Troubleshooting evidence finder issues</a> in the
    #                  <i>Audit Manager User Guide.</i>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "AssessmentReportName", # required
    #     description: "AssessmentReportDescription",
    #     assessment_id: "UUID", # required
    #     query_statement: "QueryStatement"
    #   }
    #   options = {}
    #   response = client.create_assessment_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assessment_report: {
    #       id: "UUID",
    #       name: "AssessmentReportName",
    #       description: "AssessmentReportDescription",
    #       aws_account_id: "AccountId",
    #       assessment_id: "UUID",
    #       assessment_name: "AssessmentName",
    #       author: "Username",
    #       status: "COMPLETE" # One of: ["COMPLETE", "IN_PROGRESS", "FAILED"],
    #       creation_time: Time.now
    #     }
    #   }
    # @return [Types::CreateAssessmentReportResponse]
    def create_assessment_report(params = {}, options = {})
      request = build_request(:create_assessment_report, params)
      request.send_request(options)
    end

    # <p> Creates a new custom control in Audit Manager. </p>
    # @param [Hash, Types::CreateControlRequest] params
    # @option params [String] :name
    #   <p> The name of the control. </p>
    # @option params [String] :description
    #   <p> The description of the control. </p>
    # @option params [String] :testing_information
    #   <p> The steps to follow to determine if the control is satisfied. </p>
    # @option params [String] :action_plan_title
    #   <p> The title of the action plan for remediating the control. </p>
    # @option params [String] :action_plan_instructions
    #   <p> The recommended actions to carry out if the control isn't fulfilled. </p>
    # @option params [Array<Types::CreateControlMappingSource>] :control_mapping_sources
    #   <p> The data mapping sources for the control. </p>
    # @option params [Hash<String, String>] :tags
    #   <p> The tags that are associated with the control. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ControlName", # required
    #     description: "ControlDescription",
    #     testing_information: "TestingInformation",
    #     action_plan_title: "ActionPlanTitle",
    #     action_plan_instructions: "ActionPlanInstructions",
    #     control_mapping_sources: [ # required
    #       {
    #         source_name: "SourceName",
    #         source_description: "SourceDescription",
    #         source_set_up_option: "System_Controls_Mapping" # One of: ["System_Controls_Mapping", "Procedural_Controls_Mapping"],
    #         source_type: "AWS_Cloudtrail" # One of: ["AWS_Cloudtrail", "AWS_Config", "AWS_Security_Hub", "AWS_API_Call", "MANUAL", "Common_Control", "Core_Control"],
    #         source_keyword: {
    #           keyword_input_type: "SELECT_FROM_LIST" # One of: ["SELECT_FROM_LIST", "UPLOAD_FILE", "INPUT_TEXT"],
    #           keyword_value: "KeywordValue"
    #         },
    #         source_frequency: "DAILY" # One of: ["DAILY", "WEEKLY", "MONTHLY"],
    #         troubleshooting_text: "TroubleshootingText"
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_control(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     control: {
    #       arn: "AuditManagerArn",
    #       id: "UUID",
    #       type: "Standard" # One of: ["Standard", "Custom", "Core"],
    #       name: "ControlName",
    #       description: "ControlDescription",
    #       testing_information: "TestingInformation",
    #       action_plan_title: "ActionPlanTitle",
    #       action_plan_instructions: "ActionPlanInstructions",
    #       control_sources: "ControlSources",
    #       control_mapping_sources: [
    #         {
    #           source_id: "UUID",
    #           source_name: "SourceName",
    #           source_description: "SourceDescription",
    #           source_set_up_option: "System_Controls_Mapping" # One of: ["System_Controls_Mapping", "Procedural_Controls_Mapping"],
    #           source_type: "AWS_Cloudtrail" # One of: ["AWS_Cloudtrail", "AWS_Config", "AWS_Security_Hub", "AWS_API_Call", "MANUAL", "Common_Control", "Core_Control"],
    #           source_keyword: {
    #             keyword_input_type: "SELECT_FROM_LIST" # One of: ["SELECT_FROM_LIST", "UPLOAD_FILE", "INPUT_TEXT"],
    #             keyword_value: "KeywordValue"
    #           },
    #           source_frequency: "DAILY" # One of: ["DAILY", "WEEKLY", "MONTHLY"],
    #           troubleshooting_text: "TroubleshootingText"
    #         }
    #       ],
    #       created_at: Time.now,
    #       last_updated_at: Time.now,
    #       created_by: "CreatedBy",
    #       last_updated_by: "LastUpdatedBy",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       state: "ACTIVE" # One of: ["ACTIVE", "END_OF_SUPPORT"]
    #     }
    #   }
    # @return [Types::CreateControlResponse]
    def create_control(params = {}, options = {})
      request = build_request(:create_control, params)
      request.send_request(options)
    end

    # <p> Deletes an assessment in Audit Manager. </p>
    # @param [Hash, Types::DeleteAssessmentRequest] params
    # @option params [String] :assessment_id
    #   <p> The identifier for the assessment. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.delete_assessment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAssessmentResponse]
    def delete_assessment(params = {}, options = {})
      request = build_request(:delete_assessment, params)
      request.send_request(options)
    end

    # <p> Deletes a custom framework in Audit Manager. </p>
    # @param [Hash, Types::DeleteAssessmentFrameworkRequest] params
    # @option params [String] :framework_id
    #   <p> The identifier for the custom framework. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     framework_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.delete_assessment_framework(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAssessmentFrameworkResponse]
    def delete_assessment_framework(params = {}, options = {})
      request = build_request(:delete_assessment_framework, params)
      request.send_request(options)
    end

    # <p> Deletes a share request for a custom framework in Audit Manager. </p>
    # @param [Hash, Types::DeleteAssessmentFrameworkShareRequest] params
    # @option params [String] :request_id
    #   <p>The unique identifier for the share request to be deleted.</p>
    # @option params [String] :request_type
    #   <p>Specifies whether the share request is a sent request or a received request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     request_id: "UUID", # required
    #     request_type: "SENT" # One of: ["SENT", "RECEIVED"], # required
    #   }
    #   options = {}
    #   response = client.delete_assessment_framework_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAssessmentFrameworkShareResponse]
    def delete_assessment_framework_share(params = {}, options = {})
      request = build_request(:delete_assessment_framework_share, params)
      request.send_request(options)
    end

    # <p>Deletes an assessment report in Audit Manager. </p>
    #          <p>When you run the <code>DeleteAssessmentReport</code> operation, Audit Manager
    #          attempts to delete the following data:</p>
    #          <ol>
    #             <li>
    #                <p>The specified assessment report that’s stored in your S3 bucket</p>
    #             </li>
    #             <li>
    #                <p>The associated metadata that’s stored in Audit Manager</p>
    #             </li>
    #          </ol>
    #          <p>If Audit Manager can’t access the assessment report in your S3 bucket, the report
    #          isn’t deleted. In this event, the <code>DeleteAssessmentReport</code> operation doesn’t
    #          fail. Instead, it proceeds to delete the associated metadata only. You must then delete the
    #          assessment report from the S3 bucket yourself. </p>
    #          <p>This scenario happens when Audit Manager receives a <code>403 (Forbidden)</code> or
    #             <code>404 (Not Found)</code> error from Amazon S3. To avoid this, make sure that
    #          your S3 bucket is available, and that you configured the correct permissions for Audit Manager to delete resources in your S3 bucket. For an example permissions policy that
    #          you can use, see <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/security_iam_id-based-policy-examples.html#full-administrator-access-assessment-report-destination">Assessment report destination permissions</a> in the <i>Audit Manager User Guide</i>. For information about the issues that could cause a <code>403
    #             (Forbidden)</code> or <code>404 (Not Found</code>) error from Amazon S3, see
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList">List of Error Codes</a> in the <i>Amazon Simple Storage Service API
    #             Reference</i>. </p>
    # @param [Hash, Types::DeleteAssessmentReportRequest] params
    # @option params [String] :assessment_id
    #   <p> The unique identifier for the assessment. </p>
    # @option params [String] :assessment_report_id
    #   <p> The unique identifier for the assessment report. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_id: "UUID", # required
    #     assessment_report_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.delete_assessment_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAssessmentReportResponse]
    def delete_assessment_report(params = {}, options = {})
      request = build_request(:delete_assessment_report, params)
      request.send_request(options)
    end

    # <p> Deletes a custom control in Audit Manager. </p>
    #          <important>
    #             <p>When you invoke this operation, the custom control is deleted from any frameworks or
    #             assessments that it’s currently part of. As a result, Audit Manager will stop
    #             collecting evidence for that custom control in all of your assessments. This includes
    #             assessments that you previously created before you deleted the custom control.</p>
    #          </important>
    # @param [Hash, Types::DeleteControlRequest] params
    # @option params [String] :control_id
    #   <p> The unique identifier for the control. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     control_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.delete_control(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteControlResponse]
    def delete_control(params = {}, options = {})
      request = build_request(:delete_control, params)
      request.send_request(options)
    end

    # <p> Deregisters an account in Audit Manager. </p>
    #          <note>
    #             <p>Before you deregister, you can use the <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_UpdateSettings.html">UpdateSettings</a> API operation to set your preferred data retention policy. By
    #             default, Audit Manager retains your data. If you want to delete your data, you can
    #             use the <code>DeregistrationPolicy</code> attribute to request the deletion of your
    #             data. </p>
    #             <p>For more information about data retention, see <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/data-protection.html">Data
    #                Protection</a> in the <i>Audit Manager User Guide</i>.
    #          </p>
    #          </note>
    # @param [Hash, Types::DeregisterAccountRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.deregister_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "PENDING_ACTIVATION"]
    #   }
    # @return [Types::DeregisterAccountResponse]
    def deregister_account(params = {}, options = {})
      request = build_request(:deregister_account, params)
      request.send_request(options)
    end

    # <p>Removes the specified Amazon Web Services account as a delegated administrator for
    #             Audit Manager. </p>
    #          <p>When you remove a delegated administrator from your Audit Manager settings, you
    #          continue to have access to the evidence that you previously collected under that account.
    #          This is also the case when you deregister a delegated administrator from Organizations. However, Audit Manager stops collecting and attaching evidence to
    #          that delegated administrator account moving forward.</p>
    #          <important>
    #             <p>Keep in mind the following cleanup task if you use evidence finder:</p>
    #             <p>Before you use your management account to remove a delegated administrator, make sure
    #             that the current delegated administrator account signs in to Audit Manager and
    #             disables evidence finder first. Disabling evidence finder automatically deletes the
    #             event data store that was created in their account when they enabled evidence finder. If
    #             this task isn’t completed, the event data store remains in their account. In this case,
    #             we recommend that the original delegated administrator goes to CloudTrail Lake
    #             and manually <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-eds-disable-termination.html">deletes the
    #                event data store</a>.</p>
    #             <p>This cleanup task is necessary to ensure that you don't end up with multiple event
    #             data stores. Audit Manager ignores an unused event data store after you remove or
    #             change a delegated administrator account. However, the unused event data store continues
    #             to incur storage costs from CloudTrail Lake if you don't delete it.</p>
    #          </important>
    #          <p>When you deregister a delegated administrator account for Audit Manager, the data
    #          for that account isn’t deleted. If you want to delete resource data for a delegated
    #          administrator account, you must perform that task separately before you deregister the
    #          account. Either, you can do this in the Audit Manager console. Or, you can use one of
    #          the delete API operations that are provided by Audit Manager. </p>
    #          <p>To delete your Audit Manager resource data, see the following instructions: </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessment.html">DeleteAssessment</a> (see also: <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/delete-assessment.html">Deleting an
    #                   assessment</a> in the <i>Audit Manager User
    #                Guide</i>)</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessmentFramework.html">DeleteAssessmentFramework</a> (see also: <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/delete-custom-framework.html">Deleting a
    #                   custom framework</a> in the <i>Audit Manager User
    #                   Guide</i>)</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessmentFrameworkShare.html">DeleteAssessmentFrameworkShare</a> (see also: <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/deleting-shared-framework-requests.html">Deleting a share request</a> in the <i>Audit Manager User
    #                   Guide</i>)</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessmentReport.html">DeleteAssessmentReport</a> (see also: <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/generate-assessment-report.html#delete-assessment-report-steps">Deleting an assessment report</a> in the <i>Audit Manager User
    #                   Guide</i>)</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteControl.html">DeleteControl</a> (see also: <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/delete-controls.html">Deleting a custom
    #                   control</a> in the <i>Audit Manager User
    #                Guide</i>)</p>
    #             </li>
    #          </ul>
    #          <p>At this time, Audit Manager doesn't provide an option to delete evidence for a
    #          specific delegated administrator. Instead, when your management account deregisters Audit Manager, we perform a cleanup for the current delegated administrator account at the
    #          time of deregistration.</p>
    # @param [Hash, Types::DeregisterOrganizationAdminAccountRequest] params
    # @option params [String] :admin_account_id
    #   <p> The identifier for the administrator account. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     admin_account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.deregister_organization_admin_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeregisterOrganizationAdminAccountResponse]
    def deregister_organization_admin_account(params = {}, options = {})
      request = build_request(:deregister_organization_admin_account, params)
      request.send_request(options)
    end

    # <p> Disassociates an evidence folder from the specified assessment report in Audit Manager. </p>
    # @param [Hash, Types::DisassociateAssessmentReportEvidenceFolderRequest] params
    # @option params [String] :assessment_id
    #   <p> The unique identifier for the assessment. </p>
    # @option params [String] :evidence_folder_id
    #   <p> The unique identifier for the folder that the evidence is stored in. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_id: "UUID", # required
    #     evidence_folder_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.disassociate_assessment_report_evidence_folder(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateAssessmentReportEvidenceFolderResponse]
    def disassociate_assessment_report_evidence_folder(params = {}, options = {})
      request = build_request(:disassociate_assessment_report_evidence_folder, params)
      request.send_request(options)
    end

    # <p> Gets the registration status of an account in Audit Manager. </p>
    # @param [Hash, Types::GetAccountStatusRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_account_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "PENDING_ACTIVATION"]
    #   }
    # @return [Types::GetAccountStatusResponse]
    def get_account_status(params = {}, options = {})
      request = build_request(:get_account_status, params)
      request.send_request(options)
    end

    # <p>Gets information about a specified assessment. </p>
    # @param [Hash, Types::GetAssessmentRequest] params
    # @option params [String] :assessment_id
    #   <p>The unique identifier for the assessment. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.get_assessment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assessment: {
    #       arn: "AuditManagerArn",
    #       aws_account: {
    #         id: "AccountId",
    #         email_address: "EmailAddress",
    #         name: "AccountName"
    #       },
    #       metadata: {
    #         name: "AssessmentName",
    #         id: "UUID",
    #         description: "AssessmentDescription",
    #         compliance_type: "ComplianceType",
    #         status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #         assessment_reports_destination: {
    #           destination_type: "S3" # One of: ["S3"],
    #           destination: "S3Url"
    #         },
    #         scope: {
    #           aws_accounts: [
    #             {
    #               id: "AccountId",
    #               email_address: "EmailAddress",
    #               name: "AccountName"
    #             }
    #           ],
    #           aws_services: [
    #             {
    #               service_name: "AWSServiceName"
    #             }
    #           ]
    #         },
    #         roles: [
    #           {
    #             role_type: "PROCESS_OWNER" # One of: ["PROCESS_OWNER", "RESOURCE_OWNER"], # required
    #             role_arn: "IamArn", # required
    #           }
    #         ],
    #         delegations: [
    #           {
    #             id: "UUID",
    #             assessment_name: "AssessmentName",
    #             assessment_id: "UUID",
    #             status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "UNDER_REVIEW", "COMPLETE"],
    #             role_arn: "IamArn",
    #             role_type: "PROCESS_OWNER" # One of: ["PROCESS_OWNER", "RESOURCE_OWNER"],
    #             creation_time: Time.now,
    #             last_updated: Time.now,
    #             control_set_id: "ControlSetId",
    #             comment: "DelegationComment",
    #             created_by: "CreatedBy"
    #           }
    #         ],
    #         creation_time: Time.now,
    #         last_updated: Time.now
    #       },
    #       framework: {
    #         id: "UUID",
    #         arn: "AuditManagerArn",
    #         metadata: {
    #           name: "AssessmentName",
    #           description: "AssessmentFrameworkDescription",
    #           logo: "Filename",
    #           compliance_type: "ComplianceType"
    #         },
    #         control_sets: [
    #           {
    #             id: "ControlSetId",
    #             description: "NonEmptyString",
    #             status: "ACTIVE" # One of: ["ACTIVE", "UNDER_REVIEW", "REVIEWED"],
    #             roles: [
    #               {
    #                 role_type: "PROCESS_OWNER" # One of: ["PROCESS_OWNER", "RESOURCE_OWNER"], # required
    #                 role_arn: "IamArn", # required
    #               }
    #             ],
    #             controls: [
    #               {
    #                 id: "UUID",
    #                 name: "ControlName",
    #                 description: "ControlDescription",
    #                 status: "UNDER_REVIEW" # One of: ["UNDER_REVIEW", "REVIEWED", "INACTIVE"],
    #                 response: "MANUAL" # One of: ["MANUAL", "AUTOMATE", "DEFER", "IGNORE"],
    #                 comments: [
    #                   {
    #                     author_name: "Username",
    #                     comment_body: "ControlCommentBody",
    #                     posted_date: Time.now
    #                   }
    #                 ],
    #                 evidence_sources: ["NonEmptyString"],
    #                 evidence_count: 1,
    #                 assessment_report_evidence_count: 1
    #               }
    #             ],
    #             delegations: [
    #               {
    #                 id: "UUID",
    #                 assessment_name: "AssessmentName",
    #                 assessment_id: "UUID",
    #                 status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "UNDER_REVIEW", "COMPLETE"],
    #                 role_arn: "IamArn",
    #                 role_type: "PROCESS_OWNER" # One of: ["PROCESS_OWNER", "RESOURCE_OWNER"],
    #                 creation_time: Time.now,
    #                 last_updated: Time.now,
    #                 control_set_id: "ControlSetId",
    #                 comment: "DelegationComment",
    #                 created_by: "CreatedBy"
    #               }
    #             ],
    #             system_evidence_count: 1,
    #             manual_evidence_count: 1
    #           }
    #         ]
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     },
    #     user_role: {
    #       role_type: "PROCESS_OWNER" # One of: ["PROCESS_OWNER", "RESOURCE_OWNER"], # required
    #       role_arn: "IamArn", # required
    #     }
    #   }
    # @return [Types::GetAssessmentResponse]
    def get_assessment(params = {}, options = {})
      request = build_request(:get_assessment, params)
      request.send_request(options)
    end

    # <p>Gets information about a specified framework.</p>
    # @param [Hash, Types::GetAssessmentFrameworkRequest] params
    # @option params [String] :framework_id
    #   <p> The identifier for the framework. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     framework_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.get_assessment_framework(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     framework: {
    #       arn: "AuditManagerArn",
    #       id: "UUID",
    #       name: "FrameworkName",
    #       type: "Standard" # One of: ["Standard", "Custom"],
    #       compliance_type: "ComplianceType",
    #       description: "FrameworkDescription",
    #       logo: "Filename",
    #       control_sources: "ControlSources",
    #       control_sets: [
    #         {
    #           id: "UUID",
    #           name: "ControlSetName",
    #           controls: [
    #             {
    #               arn: "AuditManagerArn",
    #               id: "UUID",
    #               type: "Standard" # One of: ["Standard", "Custom", "Core"],
    #               name: "ControlName",
    #               description: "ControlDescription",
    #               testing_information: "TestingInformation",
    #               action_plan_title: "ActionPlanTitle",
    #               action_plan_instructions: "ActionPlanInstructions",
    #               control_sources: "ControlSources",
    #               control_mapping_sources: [
    #                 {
    #                   source_id: "UUID",
    #                   source_name: "SourceName",
    #                   source_description: "SourceDescription",
    #                   source_set_up_option: "System_Controls_Mapping" # One of: ["System_Controls_Mapping", "Procedural_Controls_Mapping"],
    #                   source_type: "AWS_Cloudtrail" # One of: ["AWS_Cloudtrail", "AWS_Config", "AWS_Security_Hub", "AWS_API_Call", "MANUAL", "Common_Control", "Core_Control"],
    #                   source_keyword: {
    #                     keyword_input_type: "SELECT_FROM_LIST" # One of: ["SELECT_FROM_LIST", "UPLOAD_FILE", "INPUT_TEXT"],
    #                     keyword_value: "KeywordValue"
    #                   },
    #                   source_frequency: "DAILY" # One of: ["DAILY", "WEEKLY", "MONTHLY"],
    #                   troubleshooting_text: "TroubleshootingText"
    #                 }
    #               ],
    #               created_at: Time.now,
    #               last_updated_at: Time.now,
    #               created_by: "CreatedBy",
    #               last_updated_by: "LastUpdatedBy",
    #               tags: {
    #                 "TagKey" => "TagValue"
    #               },
    #               state: "ACTIVE" # One of: ["ACTIVE", "END_OF_SUPPORT"]
    #             }
    #           ]
    #         }
    #       ],
    #       created_at: Time.now,
    #       last_updated_at: Time.now,
    #       created_by: "CreatedBy",
    #       last_updated_by: "LastUpdatedBy",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::GetAssessmentFrameworkResponse]
    def get_assessment_framework(params = {}, options = {})
      request = build_request(:get_assessment_framework, params)
      request.send_request(options)
    end

    # <p> Gets the URL of an assessment report in Audit Manager. </p>
    # @param [Hash, Types::GetAssessmentReportUrlRequest] params
    # @option params [String] :assessment_report_id
    #   <p> The unique identifier for the assessment report. </p>
    # @option params [String] :assessment_id
    #   <p> The unique identifier for the assessment. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_report_id: "UUID", # required
    #     assessment_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.get_assessment_report_url(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pre_signed_url: {
    #       hyperlink_name: "HyperlinkName",
    #       link: "UrlLink"
    #     }
    #   }
    # @return [Types::GetAssessmentReportUrlResponse]
    def get_assessment_report_url(params = {}, options = {})
      request = build_request(:get_assessment_report_url, params)
      request.send_request(options)
    end

    # <p> Gets a list of changelogs from Audit Manager. </p>
    # @param [Hash, Types::GetChangeLogsRequest] params
    # @option params [String] :assessment_id
    #   <p>The unique identifier for the assessment. </p>
    # @option params [String] :control_set_id
    #   <p> The unique identifier for the control set. </p>
    # @option params [String] :control_id
    #   <p> The unique identifier for the control. </p>
    # @option params [String] :next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    # @option params [Integer] :max_results
    #   <p>Represents the maximum number of results on a page or for an API request call. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_id: "UUID", # required
    #     control_set_id: "ControlSetId",
    #     control_id: "UUID",
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_change_logs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_logs: [
    #       {
    #         object_type: "ASSESSMENT" # One of: ["ASSESSMENT", "CONTROL_SET", "CONTROL", "DELEGATION", "ASSESSMENT_REPORT"],
    #         object_name: "NonEmptyString",
    #         action: "CREATE" # One of: ["CREATE", "UPDATE_METADATA", "ACTIVE", "INACTIVE", "DELETE", "UNDER_REVIEW", "REVIEWED", "IMPORT_EVIDENCE"],
    #         created_at: Time.now,
    #         created_by: "IamArn"
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::GetChangeLogsResponse]
    def get_change_logs(params = {}, options = {})
      request = build_request(:get_change_logs, params)
      request.send_request(options)
    end

    # <p> Gets information about a specified control.</p>
    # @param [Hash, Types::GetControlRequest] params
    # @option params [String] :control_id
    #   <p> The identifier for the control. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     control_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.get_control(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     control: {
    #       arn: "AuditManagerArn",
    #       id: "UUID",
    #       type: "Standard" # One of: ["Standard", "Custom", "Core"],
    #       name: "ControlName",
    #       description: "ControlDescription",
    #       testing_information: "TestingInformation",
    #       action_plan_title: "ActionPlanTitle",
    #       action_plan_instructions: "ActionPlanInstructions",
    #       control_sources: "ControlSources",
    #       control_mapping_sources: [
    #         {
    #           source_id: "UUID",
    #           source_name: "SourceName",
    #           source_description: "SourceDescription",
    #           source_set_up_option: "System_Controls_Mapping" # One of: ["System_Controls_Mapping", "Procedural_Controls_Mapping"],
    #           source_type: "AWS_Cloudtrail" # One of: ["AWS_Cloudtrail", "AWS_Config", "AWS_Security_Hub", "AWS_API_Call", "MANUAL", "Common_Control", "Core_Control"],
    #           source_keyword: {
    #             keyword_input_type: "SELECT_FROM_LIST" # One of: ["SELECT_FROM_LIST", "UPLOAD_FILE", "INPUT_TEXT"],
    #             keyword_value: "KeywordValue"
    #           },
    #           source_frequency: "DAILY" # One of: ["DAILY", "WEEKLY", "MONTHLY"],
    #           troubleshooting_text: "TroubleshootingText"
    #         }
    #       ],
    #       created_at: Time.now,
    #       last_updated_at: Time.now,
    #       created_by: "CreatedBy",
    #       last_updated_by: "LastUpdatedBy",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       state: "ACTIVE" # One of: ["ACTIVE", "END_OF_SUPPORT"]
    #     }
    #   }
    # @return [Types::GetControlResponse]
    def get_control(params = {}, options = {})
      request = build_request(:get_control, params)
      request.send_request(options)
    end

    # <p> Gets a list of delegations from an audit owner to a delegate. </p>
    # @param [Hash, Types::GetDelegationsRequest] params
    # @option params [String] :next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    # @option params [Integer] :max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_delegations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     delegations: [
    #       {
    #         id: "UUID",
    #         assessment_name: "AssessmentName",
    #         assessment_id: "UUID",
    #         status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "UNDER_REVIEW", "COMPLETE"],
    #         role_arn: "IamArn",
    #         creation_time: Time.now,
    #         control_set_name: "NonEmptyString"
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::GetDelegationsResponse]
    def get_delegations(params = {}, options = {})
      request = build_request(:get_delegations, params)
      request.send_request(options)
    end

    # <p> Gets information about a specified evidence item.</p>
    # @param [Hash, Types::GetEvidenceRequest] params
    # @option params [String] :assessment_id
    #   <p> The unique identifier for the assessment. </p>
    # @option params [String] :control_set_id
    #   <p> The unique identifier for the control set. </p>
    # @option params [String] :evidence_folder_id
    #   <p> The unique identifier for the folder that the evidence is stored in. </p>
    # @option params [String] :evidence_id
    #   <p> The unique identifier for the evidence. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_id: "UUID", # required
    #     control_set_id: "ControlSetId", # required
    #     evidence_folder_id: "UUID", # required
    #     evidence_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.get_evidence(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evidence: {
    #       data_source: "String",
    #       evidence_aws_account_id: "AccountId",
    #       time: Time.now,
    #       event_source: "AWSServiceName",
    #       event_name: "EventName",
    #       evidence_by_type: "String",
    #       resources_included: [
    #         {
    #           arn: "GenericArn",
    #           value: "String",
    #           compliance_check: "String"
    #         }
    #       ],
    #       attributes: {
    #         "EvidenceAttributeKey" => "EvidenceAttributeValue"
    #       },
    #       iam_id: "IamArn",
    #       compliance_check: "String",
    #       aws_organization: "String",
    #       aws_account_id: "AccountId",
    #       evidence_folder_id: "UUID",
    #       id: "UUID",
    #       assessment_report_selection: "String"
    #     }
    #   }
    # @return [Types::GetEvidenceResponse]
    def get_evidence(params = {}, options = {})
      request = build_request(:get_evidence, params)
      request.send_request(options)
    end

    # <p> Gets all evidence from a specified evidence folder in Audit Manager. </p>
    # @param [Hash, Types::GetEvidenceByEvidenceFolderRequest] params
    # @option params [String] :assessment_id
    #   <p> The identifier for the assessment. </p>
    # @option params [String] :control_set_id
    #   <p> The identifier for the control set. </p>
    # @option params [String] :evidence_folder_id
    #   <p> The unique identifier for the folder that the evidence is stored in. </p>
    # @option params [String] :next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    # @option params [Integer] :max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_id: "UUID", # required
    #     control_set_id: "ControlSetId", # required
    #     evidence_folder_id: "UUID", # required
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_evidence_by_evidence_folder(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evidence: [
    #       {
    #         data_source: "String",
    #         evidence_aws_account_id: "AccountId",
    #         time: Time.now,
    #         event_source: "AWSServiceName",
    #         event_name: "EventName",
    #         evidence_by_type: "String",
    #         resources_included: [
    #           {
    #             arn: "GenericArn",
    #             value: "String",
    #             compliance_check: "String"
    #           }
    #         ],
    #         attributes: {
    #           "EvidenceAttributeKey" => "EvidenceAttributeValue"
    #         },
    #         iam_id: "IamArn",
    #         compliance_check: "String",
    #         aws_organization: "String",
    #         aws_account_id: "AccountId",
    #         evidence_folder_id: "UUID",
    #         id: "UUID",
    #         assessment_report_selection: "String"
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::GetEvidenceByEvidenceFolderResponse]
    def get_evidence_by_evidence_folder(params = {}, options = {})
      request = build_request(:get_evidence_by_evidence_folder, params)
      request.send_request(options)
    end

    # <p>Creates a presigned Amazon S3 URL that can be used to upload a file as manual
    #          evidence. For instructions on how to use this operation, see <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/upload-evidence.html#how-to-upload-manual-evidence-files">Upload a file from your browser </a> in the <i>Audit Manager User
    #             Guide</i>.</p>
    #          <p>The following restrictions apply to this operation:</p>
    #          <ul>
    #             <li>
    #                <p>Maximum size of an individual evidence file: 100 MB</p>
    #             </li>
    #             <li>
    #                <p>Number of daily manual evidence uploads per control: 100</p>
    #             </li>
    #             <li>
    #                <p>Supported file formats: See <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/upload-evidence.html#supported-manual-evidence-files">Supported file types for manual evidence</a> in the <i>Audit Manager User Guide</i>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>For more information about Audit Manager service restrictions, see <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/service-quotas.html">Quotas and
    #             restrictions for Audit Manager</a>.</p>
    # @param [Hash, Types::GetEvidenceFileUploadUrlRequest] params
    # @option params [String] :file_name
    #   <p>The file that you want to upload. For a list of supported file formats, see <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/upload-evidence.html#supported-manual-evidence-files">Supported file types for manual evidence</a> in the <i>Audit Manager
    #               User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_name: "ManualEvidenceLocalFileName", # required
    #   }
    #   options = {}
    #   response = client.get_evidence_file_upload_url(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evidence_file_name: "NonEmptyString",
    #     upload_url: "NonEmptyString"
    #   }
    # @return [Types::GetEvidenceFileUploadUrlResponse]
    def get_evidence_file_upload_url(params = {}, options = {})
      request = build_request(:get_evidence_file_upload_url, params)
      request.send_request(options)
    end

    # <p> Gets an evidence folder from a specified assessment in Audit Manager. </p>
    # @param [Hash, Types::GetEvidenceFolderRequest] params
    # @option params [String] :assessment_id
    #   <p> The unique identifier for the assessment. </p>
    # @option params [String] :control_set_id
    #   <p> The unique identifier for the control set. </p>
    # @option params [String] :evidence_folder_id
    #   <p> The unique identifier for the folder that the evidence is stored in. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_id: "UUID", # required
    #     control_set_id: "ControlSetId", # required
    #     evidence_folder_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.get_evidence_folder(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evidence_folder: {
    #       name: "AssessmentEvidenceFolderName",
    #       date: Time.now,
    #       assessment_id: "UUID",
    #       control_set_id: "ControlSetId",
    #       control_id: "UUID",
    #       id: "UUID",
    #       data_source: "String",
    #       author: "String",
    #       total_evidence: 1,
    #       assessment_report_selection_count: 1,
    #       control_name: "ControlName",
    #       evidence_resources_included_count: 1,
    #       evidence_by_type_configuration_data_count: 1,
    #       evidence_by_type_manual_count: 1,
    #       evidence_by_type_compliance_check_count: 1,
    #       evidence_by_type_compliance_check_issues_count: 1,
    #       evidence_by_type_user_activity_count: 1,
    #       evidence_aws_service_source_count: 1
    #     }
    #   }
    # @return [Types::GetEvidenceFolderResponse]
    def get_evidence_folder(params = {}, options = {})
      request = build_request(:get_evidence_folder, params)
      request.send_request(options)
    end

    # <p> Gets the evidence folders from a specified assessment in Audit Manager. </p>
    # @param [Hash, Types::GetEvidenceFoldersByAssessmentRequest] params
    # @option params [String] :assessment_id
    #   <p> The unique identifier for the assessment. </p>
    # @option params [String] :next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    # @option params [Integer] :max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_id: "UUID", # required
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_evidence_folders_by_assessment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evidence_folders: [
    #       {
    #         name: "AssessmentEvidenceFolderName",
    #         date: Time.now,
    #         assessment_id: "UUID",
    #         control_set_id: "ControlSetId",
    #         control_id: "UUID",
    #         id: "UUID",
    #         data_source: "String",
    #         author: "String",
    #         total_evidence: 1,
    #         assessment_report_selection_count: 1,
    #         control_name: "ControlName",
    #         evidence_resources_included_count: 1,
    #         evidence_by_type_configuration_data_count: 1,
    #         evidence_by_type_manual_count: 1,
    #         evidence_by_type_compliance_check_count: 1,
    #         evidence_by_type_compliance_check_issues_count: 1,
    #         evidence_by_type_user_activity_count: 1,
    #         evidence_aws_service_source_count: 1
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::GetEvidenceFoldersByAssessmentResponse]
    def get_evidence_folders_by_assessment(params = {}, options = {})
      request = build_request(:get_evidence_folders_by_assessment, params)
      request.send_request(options)
    end

    # <p> Gets a list of evidence folders that are associated with a specified control in an
    #             Audit Manager assessment. </p>
    # @param [Hash, Types::GetEvidenceFoldersByAssessmentControlRequest] params
    # @option params [String] :assessment_id
    #   <p> The identifier for the assessment. </p>
    # @option params [String] :control_set_id
    #   <p> The identifier for the control set. </p>
    # @option params [String] :control_id
    #   <p> The identifier for the control. </p>
    # @option params [String] :next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    # @option params [Integer] :max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_id: "UUID", # required
    #     control_set_id: "ControlSetId", # required
    #     control_id: "UUID", # required
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_evidence_folders_by_assessment_control(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evidence_folders: [
    #       {
    #         name: "AssessmentEvidenceFolderName",
    #         date: Time.now,
    #         assessment_id: "UUID",
    #         control_set_id: "ControlSetId",
    #         control_id: "UUID",
    #         id: "UUID",
    #         data_source: "String",
    #         author: "String",
    #         total_evidence: 1,
    #         assessment_report_selection_count: 1,
    #         control_name: "ControlName",
    #         evidence_resources_included_count: 1,
    #         evidence_by_type_configuration_data_count: 1,
    #         evidence_by_type_manual_count: 1,
    #         evidence_by_type_compliance_check_count: 1,
    #         evidence_by_type_compliance_check_issues_count: 1,
    #         evidence_by_type_user_activity_count: 1,
    #         evidence_aws_service_source_count: 1
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::GetEvidenceFoldersByAssessmentControlResponse]
    def get_evidence_folders_by_assessment_control(params = {}, options = {})
      request = build_request(:get_evidence_folders_by_assessment_control, params)
      request.send_request(options)
    end

    # <p>Gets the latest analytics data for all your current active assessments. </p>
    # @param [Hash, Types::GetInsightsRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_insights(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     insights: {
    #       active_assessments_count: 1,
    #       noncompliant_evidence_count: 1,
    #       compliant_evidence_count: 1,
    #       inconclusive_evidence_count: 1,
    #       assessment_controls_count_by_noncompliant_evidence: 1,
    #       total_assessment_controls_count: 1,
    #       last_updated: Time.now
    #     }
    #   }
    # @return [Types::GetInsightsResponse]
    def get_insights(params = {}, options = {})
      request = build_request(:get_insights, params)
      request.send_request(options)
    end

    # <p>Gets the latest analytics data for a specific active assessment. </p>
    # @param [Hash, Types::GetInsightsByAssessmentRequest] params
    # @option params [String] :assessment_id
    #   <p>The unique identifier for the assessment. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.get_insights_by_assessment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     insights: {
    #       noncompliant_evidence_count: 1,
    #       compliant_evidence_count: 1,
    #       inconclusive_evidence_count: 1,
    #       assessment_controls_count_by_noncompliant_evidence: 1,
    #       total_assessment_controls_count: 1,
    #       last_updated: Time.now
    #     }
    #   }
    # @return [Types::GetInsightsByAssessmentResponse]
    def get_insights_by_assessment(params = {}, options = {})
      request = build_request(:get_insights_by_assessment, params)
      request.send_request(options)
    end

    # <p> Gets the name of the delegated Amazon Web Services administrator account for a specified
    #          organization. </p>
    # @param [Hash, Types::GetOrganizationAdminAccountRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_organization_admin_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     admin_account_id: "AccountId",
    #     organization_id: "organizationId"
    #   }
    # @return [Types::GetOrganizationAdminAccountResponse]
    def get_organization_admin_account(params = {}, options = {})
      request = build_request(:get_organization_admin_account, params)
      request.send_request(options)
    end

    # <p>Gets a list of the Amazon Web Services services from which Audit Manager can collect
    #          evidence. </p>
    #          <p>Audit Manager defines which Amazon Web Services services are in scope for an
    #          assessment. Audit Manager infers this scope by examining the assessment’s controls and
    #          their data sources, and then mapping this information to one or more of the corresponding
    #             Amazon Web Services services that are in this list.</p>
    #          <note>
    #             <p>For information about why it's no longer possible to specify services in scope manually, see
    #                <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/evidence-collection-issues.html#unable-to-edit-services">I can't edit the services in scope for my assessment</a> in
    #             the <i>Troubleshooting</i> section of the Audit Manager user
    #             guide.</p>
    #          </note>
    # @param [Hash, Types::GetServicesInScopeRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_services_in_scope(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_metadata: [
    #       {
    #         name: "AWSServiceName",
    #         display_name: "NonEmptyString",
    #         description: "NonEmptyString",
    #         category: "NonEmptyString"
    #       }
    #     ]
    #   }
    # @return [Types::GetServicesInScopeResponse]
    def get_services_in_scope(params = {}, options = {})
      request = build_request(:get_services_in_scope, params)
      request.send_request(options)
    end

    # <p> Gets the settings for a specified Amazon Web Services account. </p>
    # @param [Hash, Types::GetSettingsRequest] params
    # @option params [String] :attribute
    #   <p> The list of setting attribute enum values. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     attribute: "ALL" # One of: ["ALL", "IS_AWS_ORG_ENABLED", "SNS_TOPIC", "DEFAULT_ASSESSMENT_REPORTS_DESTINATION", "DEFAULT_PROCESS_OWNERS", "EVIDENCE_FINDER_ENABLEMENT", "DEREGISTRATION_POLICY", "DEFAULT_EXPORT_DESTINATION"], # required
    #   }
    #   options = {}
    #   response = client.get_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     settings: {
    #       is_aws_org_enabled: false,
    #       sns_topic: "SNSTopic",
    #       default_assessment_reports_destination: {
    #         destination_type: "S3" # One of: ["S3"],
    #         destination: "S3Url"
    #       },
    #       default_process_owners: [
    #         {
    #           role_type: "PROCESS_OWNER" # One of: ["PROCESS_OWNER", "RESOURCE_OWNER"], # required
    #           role_arn: "IamArn", # required
    #         }
    #       ],
    #       kms_key: "KmsKey",
    #       evidence_finder_enablement: {
    #         event_data_store_arn: "CloudTrailArn",
    #         enablement_status: "ENABLED" # One of: ["ENABLED", "DISABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS"],
    #         backfill_status: "NOT_STARTED" # One of: ["NOT_STARTED", "IN_PROGRESS", "COMPLETED"],
    #         error: "ErrorMessage"
    #       },
    #       deregistration_policy: {
    #         delete_resources: "ALL" # One of: ["ALL", "DEFAULT"]
    #       },
    #       default_export_destination: {
    #         destination_type: "S3" # One of: ["S3"],
    #         destination: "S3Url"
    #       }
    #     }
    #   }
    # @return [Types::GetSettingsResponse]
    def get_settings(params = {}, options = {})
      request = build_request(:get_settings, params)
      request.send_request(options)
    end

    # <p>Lists the latest analytics data for controls within a specific control domain and a
    #          specific active assessment.</p>
    #          <note>
    #             <p>Control insights are listed only if the control belongs to the control domain and
    #             assessment that was specified. Moreover, the control must have collected evidence on the
    #                <code>lastUpdated</code> date of <code>controlInsightsByAssessment</code>. If neither
    #             of these conditions are met, no data is listed for that control. </p>
    #          </note>
    # @param [Hash, Types::ListAssessmentControlInsightsByControlDomainRequest] params
    # @option params [String] :control_domain_id
    #   <p>The unique identifier for the control domain. </p>
    #            <p>Audit Manager supports the control domains that are provided by Amazon Web Services
    #            Control Catalog. For information about how to find a list of available control domains, see
    #               <a href="https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_ListDomains.html">
    #                  <code>ListDomains</code>
    #               </a> in the Amazon Web Services Control
    #            Catalog API Reference.</p>
    # @option params [String] :assessment_id
    #   <p>The unique identifier for the active assessment. </p>
    # @option params [String] :next_token
    #   <p>The pagination token that's used to fetch the next set of results. </p>
    # @option params [Integer] :max_results
    #   <p>Represents the maximum number of results on a page or for an API request call. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     control_domain_id: "ControlDomainId", # required
    #     assessment_id: "UUID", # required
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_assessment_control_insights_by_control_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     control_insights_by_assessment: [
    #       {
    #         name: "String",
    #         id: "ControlDomainId",
    #         evidence_insights: {
    #           noncompliant_evidence_count: 1,
    #           compliant_evidence_count: 1,
    #           inconclusive_evidence_count: 1
    #         },
    #         control_set_name: "NonEmptyString",
    #         last_updated: Time.now
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListAssessmentControlInsightsByControlDomainResponse]
    def list_assessment_control_insights_by_control_domain(params = {}, options = {})
      request = build_request(:list_assessment_control_insights_by_control_domain, params)
      request.send_request(options)
    end

    # <p> Returns a list of sent or received share requests for custom frameworks in Audit Manager. </p>
    # @param [Hash, Types::ListAssessmentFrameworkShareRequestsRequest] params
    # @option params [String] :request_type
    #   <p> Specifies whether the share request is a sent request or a received request.</p>
    # @option params [String] :next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    # @option params [Integer] :max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     request_type: "SENT" # One of: ["SENT", "RECEIVED"], # required
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_assessment_framework_share_requests(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assessment_framework_share_requests: [
    #       {
    #         id: "UUID",
    #         framework_id: "UUID",
    #         framework_name: "FrameworkName",
    #         framework_description: "FrameworkDescription",
    #         status: "ACTIVE" # One of: ["ACTIVE", "REPLICATING", "SHARED", "EXPIRING", "FAILED", "EXPIRED", "DECLINED", "REVOKED"],
    #         source_account: "AccountId",
    #         destination_account: "AccountId",
    #         destination_region: "Region",
    #         expiration_time: Time.now,
    #         creation_time: Time.now,
    #         last_updated: Time.now,
    #         comment: "ShareRequestComment",
    #         standard_controls_count: 1,
    #         custom_controls_count: 1,
    #         compliance_type: "ComplianceType"
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListAssessmentFrameworkShareRequestsResponse]
    def list_assessment_framework_share_requests(params = {}, options = {})
      request = build_request(:list_assessment_framework_share_requests, params)
      request.send_request(options)
    end

    # <p> Returns a list of the frameworks that are available in the Audit Manager framework
    #          library. </p>
    # @param [Hash, Types::ListAssessmentFrameworksRequest] params
    # @option params [String] :framework_type
    #   <p> The type of framework, such as a standard framework or a custom framework. </p>
    # @option params [String] :next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    # @option params [Integer] :max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     framework_type: "Standard" # One of: ["Standard", "Custom"], # required
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_assessment_frameworks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     framework_metadata_list: [
    #       {
    #         arn: "AuditManagerArn",
    #         id: "UUID",
    #         type: "Standard" # One of: ["Standard", "Custom"],
    #         name: "FrameworkName",
    #         description: "FrameworkDescription",
    #         logo: "Filename",
    #         compliance_type: "ComplianceType",
    #         controls_count: 1,
    #         control_sets_count: 1,
    #         created_at: Time.now,
    #         last_updated_at: Time.now
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListAssessmentFrameworksResponse]
    def list_assessment_frameworks(params = {}, options = {})
      request = build_request(:list_assessment_frameworks, params)
      request.send_request(options)
    end

    # <p> Returns a list of assessment reports created in Audit Manager. </p>
    # @param [Hash, Types::ListAssessmentReportsRequest] params
    # @option params [String] :next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    # @option params [Integer] :max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_assessment_reports(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assessment_reports: [
    #       {
    #         id: "UUID",
    #         name: "AssessmentReportName",
    #         description: "AssessmentReportDescription",
    #         assessment_id: "UUID",
    #         assessment_name: "AssessmentName",
    #         author: "Username",
    #         status: "COMPLETE" # One of: ["COMPLETE", "IN_PROGRESS", "FAILED"],
    #         creation_time: Time.now
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListAssessmentReportsResponse]
    def list_assessment_reports(params = {}, options = {})
      request = build_request(:list_assessment_reports, params)
      request.send_request(options)
    end

    # <p> Returns a list of current and past assessments from Audit Manager. </p>
    # @param [Hash, Types::ListAssessmentsRequest] params
    # @option params [String] :status
    #   <p> The current status of the assessment.</p>
    # @option params [String] :next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    # @option params [Integer] :max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_assessments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assessment_metadata: [
    #       {
    #         name: "AssessmentName",
    #         id: "UUID",
    #         compliance_type: "ComplianceType",
    #         status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #         roles: [
    #           {
    #             role_type: "PROCESS_OWNER" # One of: ["PROCESS_OWNER", "RESOURCE_OWNER"], # required
    #             role_arn: "IamArn", # required
    #           }
    #         ],
    #         delegations: [
    #           {
    #             id: "UUID",
    #             assessment_name: "AssessmentName",
    #             assessment_id: "UUID",
    #             status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "UNDER_REVIEW", "COMPLETE"],
    #             role_arn: "IamArn",
    #             role_type: "PROCESS_OWNER" # One of: ["PROCESS_OWNER", "RESOURCE_OWNER"],
    #             creation_time: Time.now,
    #             last_updated: Time.now,
    #             control_set_id: "ControlSetId",
    #             comment: "DelegationComment",
    #             created_by: "CreatedBy"
    #           }
    #         ],
    #         creation_time: Time.now,
    #         last_updated: Time.now
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListAssessmentsResponse]
    def list_assessments(params = {}, options = {})
      request = build_request(:list_assessments, params)
      request.send_request(options)
    end

    # <p>Lists the latest analytics data for control domains across all of your active
    #          assessments. </p>
    #          <p>Audit Manager supports the control domains that are provided by Amazon Web Services
    #          Control Catalog. For information about how to find a list of available control domains, see
    #             <a href="https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_ListDomains.html">
    #                <code>ListDomains</code>
    #             </a> in the Amazon Web Services Control
    #          Catalog API Reference.</p>
    #          <note>
    #             <p>A control domain is listed only if at least one of the controls within that domain
    #             collected evidence on the <code>lastUpdated</code> date of
    #                <code>controlDomainInsights</code>. If this condition isn’t met, no data is listed
    #             for that control domain.</p>
    #          </note>
    # @param [Hash, Types::ListControlDomainInsightsRequest] params
    # @option params [String] :next_token
    #   <p>The pagination token that's used to fetch the next set of results. </p>
    # @option params [Integer] :max_results
    #   <p>Represents the maximum number of results on a page or for an API request call. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_control_domain_insights(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     control_domain_insights: [
    #       {
    #         name: "String",
    #         id: "ControlDomainId",
    #         controls_count_by_noncompliant_evidence: 1,
    #         total_controls_count: 1,
    #         evidence_insights: {
    #           noncompliant_evidence_count: 1,
    #           compliant_evidence_count: 1,
    #           inconclusive_evidence_count: 1
    #         },
    #         last_updated: Time.now
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListControlDomainInsightsResponse]
    def list_control_domain_insights(params = {}, options = {})
      request = build_request(:list_control_domain_insights, params)
      request.send_request(options)
    end

    # <p>Lists analytics data for control domains within a specified active assessment.</p>
    #          <p>Audit Manager supports the control domains that are provided by Amazon Web Services
    #          Control Catalog. For information about how to find a list of available control domains, see
    #             <a href="https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_ListDomains.html">
    #                <code>ListDomains</code>
    #             </a> in the Amazon Web Services Control
    #          Catalog API Reference.</p>
    #          <note>
    #             <p>A control domain is listed only if at least one of the controls within that domain
    #             collected evidence on the <code>lastUpdated</code> date of
    #                <code>controlDomainInsights</code>. If this condition isn’t met, no data is listed
    #             for that domain.</p>
    #          </note>
    # @param [Hash, Types::ListControlDomainInsightsByAssessmentRequest] params
    # @option params [String] :assessment_id
    #   <p>The unique identifier for the active assessment. </p>
    # @option params [String] :next_token
    #   <p>The pagination token that's used to fetch the next set of results. </p>
    # @option params [Integer] :max_results
    #   <p>Represents the maximum number of results on a page or for an API request call. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_id: "UUID", # required
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_control_domain_insights_by_assessment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     control_domain_insights: [
    #       {
    #         name: "String",
    #         id: "ControlDomainId",
    #         controls_count_by_noncompliant_evidence: 1,
    #         total_controls_count: 1,
    #         evidence_insights: {
    #           noncompliant_evidence_count: 1,
    #           compliant_evidence_count: 1,
    #           inconclusive_evidence_count: 1
    #         },
    #         last_updated: Time.now
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListControlDomainInsightsByAssessmentResponse]
    def list_control_domain_insights_by_assessment(params = {}, options = {})
      request = build_request(:list_control_domain_insights_by_assessment, params)
      request.send_request(options)
    end

    # <p>Lists the latest analytics data for controls within a specific control domain across all
    #          active assessments.</p>
    #          <note>
    #             <p>Control insights are listed only if the control belongs to the control domain that
    #             was specified and the control collected evidence on the <code>lastUpdated</code> date of
    #                <code>controlInsightsMetadata</code>. If neither of these conditions are met, no data
    #             is listed for that control. </p>
    #          </note>
    # @param [Hash, Types::ListControlInsightsByControlDomainRequest] params
    # @option params [String] :control_domain_id
    #   <p>The unique identifier for the control domain. </p>
    #            <p>Audit Manager supports the control domains that are provided by Amazon Web Services
    #            Control Catalog. For information about how to find a list of available control domains, see
    #               <a href="https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_ListDomains.html">
    #                  <code>ListDomains</code>
    #               </a> in the Amazon Web Services Control
    #            Catalog API Reference.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that's used to fetch the next set of results. </p>
    # @option params [Integer] :max_results
    #   <p>Represents the maximum number of results on a page or for an API request call. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     control_domain_id: "ControlDomainId", # required
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_control_insights_by_control_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     control_insights_metadata: [
    #       {
    #         name: "String",
    #         id: "ControlDomainId",
    #         evidence_insights: {
    #           noncompliant_evidence_count: 1,
    #           compliant_evidence_count: 1,
    #           inconclusive_evidence_count: 1
    #         },
    #         last_updated: Time.now
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListControlInsightsByControlDomainResponse]
    def list_control_insights_by_control_domain(params = {}, options = {})
      request = build_request(:list_control_insights_by_control_domain, params)
      request.send_request(options)
    end

    # <p> Returns a list of controls from Audit Manager. </p>
    # @param [Hash, Types::ListControlsRequest] params
    # @option params [String] :control_type
    #   <p>A filter that narrows the list of controls to a specific type. </p>
    # @option params [String] :next_token
    #   <p>The pagination token that's used to fetch the next set of results. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results on a page or for an API request call. </p>
    # @option params [String] :control_catalog_id
    #   <p>A filter that narrows the list of controls to a specific resource from the Amazon Web Services 
    #            Control Catalog. </p>
    #            <p>To use this parameter, specify the ARN of the Control Catalog resource. You can specify either 
    #            a control domain, a control objective, or a common control. For information about how to find the ARNs
    #            for these resources, see <a href="https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_ListDomains.html">
    #                  <code>ListDomains</code>
    #               </a>, <a href="https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_ListObjectives.html">
    #                  <code>ListObjectives</code>
    #               </a>, and <a href="https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_ListCommonControls.html">
    #                  <code>ListCommonControls</code>
    #               </a>.</p>
    #            <note>
    #               <p>You can only filter by one Control Catalog resource at a time. 
    #               Specifying multiple resource ARNs isn’t currently supported. If you want to filter by more 
    #               than one ARN, we recommend that you run the <code>ListControls</code> operation separately 
    #               for each ARN. </p>
    #            </note>
    #            <p>Alternatively, specify <code>UNCATEGORIZED</code> to list controls that aren't
    #            mapped to a Control Catalog resource. For example, this operation might return a list of 
    #            custom controls that don't belong to any control domain or control objective.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     control_type: "Standard" # One of: ["Standard", "Custom", "Core"], # required
    #     next_token: "Token",
    #     max_results: 1,
    #     control_catalog_id: "ControlCatalogId"
    #   }
    #   options = {}
    #   response = client.list_controls(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     control_metadata_list: [
    #       {
    #         arn: "AuditManagerArn",
    #         id: "UUID",
    #         name: "ControlName",
    #         control_sources: "ControlSources",
    #         created_at: Time.now,
    #         last_updated_at: Time.now
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListControlsResponse]
    def list_controls(params = {}, options = {})
      request = build_request(:list_controls, params)
      request.send_request(options)
    end

    # <p>Returns a list of keywords that are pre-mapped to the specified control data
    #          source.</p>
    # @param [Hash, Types::ListKeywordsForDataSourceRequest] params
    # @option params [String] :source
    #   <p>The control mapping data source that the keywords apply to. </p>
    # @option params [String] :next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    # @option params [Integer] :max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source: "AWS_Cloudtrail" # One of: ["AWS_Cloudtrail", "AWS_Config", "AWS_Security_Hub", "AWS_API_Call", "MANUAL"], # required
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_keywords_for_data_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     keywords: ["KeywordValue"],
    #     next_token: "Token"
    #   }
    # @return [Types::ListKeywordsForDataSourceResponse]
    def list_keywords_for_data_source(params = {}, options = {})
      request = build_request(:list_keywords_for_data_source, params)
      request.send_request(options)
    end

    # <p> Returns a list of all Audit Manager notifications. </p>
    # @param [Hash, Types::ListNotificationsRequest] params
    # @option params [String] :next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    # @option params [Integer] :max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_notifications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notifications: [
    #       {
    #         id: "TimestampUUID",
    #         assessment_id: "UUID",
    #         assessment_name: "AssessmentName",
    #         control_set_id: "ControlSetId",
    #         control_set_name: "NonEmptyString",
    #         description: "NonEmptyString",
    #         event_time: Time.now,
    #         source: "NonEmptyString"
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListNotificationsResponse]
    def list_notifications(params = {}, options = {})
      request = build_request(:list_notifications, params)
      request.send_request(options)
    end

    # <p> Returns a list of tags for the specified resource in Audit Manager. </p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) of the resource. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AuditManagerArn", # required
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

    # <p> Enables Audit Manager for the specified Amazon Web Services account. </p>
    # @param [Hash, Types::RegisterAccountRequest] params
    # @option params [String] :kms_key
    #   <p> The KMS key details. </p>
    # @option params [String] :delegated_admin_account
    #   <p> The delegated administrator account for Audit Manager. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     kms_key: "KmsKey",
    #     delegated_admin_account: "AccountId"
    #   }
    #   options = {}
    #   response = client.register_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "PENDING_ACTIVATION"]
    #   }
    # @return [Types::RegisterAccountResponse]
    def register_account(params = {}, options = {})
      request = build_request(:register_account, params)
      request.send_request(options)
    end

    # <p> Enables an Amazon Web Services account within the organization as the delegated
    #          administrator for Audit Manager. </p>
    # @param [Hash, Types::RegisterOrganizationAdminAccountRequest] params
    # @option params [String] :admin_account_id
    #   <p> The identifier for the delegated administrator account. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     admin_account_id: "AccountId", # required
    #   }
    #   options = {}
    #   response = client.register_organization_admin_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     admin_account_id: "AccountId",
    #     organization_id: "organizationId"
    #   }
    # @return [Types::RegisterOrganizationAdminAccountResponse]
    def register_organization_admin_account(params = {}, options = {})
      request = build_request(:register_organization_admin_account, params)
      request.send_request(options)
    end

    # <p> Creates a share request for a custom framework in Audit Manager. </p>
    #          <p>The share request specifies a recipient and notifies them that a custom framework is
    #          available. Recipients have 120 days to accept or decline the request. If no action is
    #          taken, the share request expires.</p>
    #          <p>When you create a share request, Audit Manager stores a snapshot of your custom
    #          framework in the US East (N. Virginia) Amazon Web Services Region. Audit Manager also
    #          stores a backup of the same snapshot in the US West (Oregon) Amazon Web Services Region.</p>
    #          <p>Audit Manager deletes the snapshot and the backup snapshot when one of the following
    #          events occurs:</p>
    #          <ul>
    #             <li>
    #                <p>The sender revokes the share request.</p>
    #             </li>
    #             <li>
    #                <p>The recipient declines the share request.</p>
    #             </li>
    #             <li>
    #                <p>The recipient encounters an error and doesn't successfully accept the share
    #                request.</p>
    #             </li>
    #             <li>
    #                <p>The share request expires before the recipient responds to the request.</p>
    #             </li>
    #          </ul>
    #          <p>When a sender <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/framework-sharing.html#framework-sharing-resend">resends a share request</a>, the snapshot is replaced with an updated version that
    #          corresponds with the latest version of the custom framework. </p>
    #          <p>When a recipient accepts a share request, the snapshot is replicated into their Amazon Web Services account under the Amazon Web Services Region that was specified in the share
    #          request. </p>
    #          <important>
    #             <p>When you invoke the <code>StartAssessmentFrameworkShare</code> API, you are about to
    #             share a custom framework with another Amazon Web Services account. You may not share a
    #             custom framework that is derived from a standard framework if the standard framework is
    #             designated as not eligible for sharing by Amazon Web Services, unless you have obtained
    #             permission to do so from the owner of the standard framework. To learn more about which
    #             standard frameworks are eligible for sharing, see <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/share-custom-framework-concepts-and-terminology.html#eligibility">Framework sharing eligibility</a> in the <i>Audit Manager User
    #                Guide</i>.</p>
    #          </important>
    # @param [Hash, Types::StartAssessmentFrameworkShareRequest] params
    # @option params [String] :framework_id
    #   <p> The unique identifier for the custom framework to be shared. </p>
    # @option params [String] :destination_account
    #   <p> The Amazon Web Services account of the recipient. </p>
    # @option params [String] :destination_region
    #   <p> The Amazon Web Services Region of the recipient. </p>
    # @option params [String] :comment
    #   <p> An optional comment from the sender about the share request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     framework_id: "UUID", # required
    #     destination_account: "AccountId", # required
    #     destination_region: "Region", # required
    #     comment: "ShareRequestComment"
    #   }
    #   options = {}
    #   response = client.start_assessment_framework_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assessment_framework_share_request: {
    #       id: "UUID",
    #       framework_id: "UUID",
    #       framework_name: "FrameworkName",
    #       framework_description: "FrameworkDescription",
    #       status: "ACTIVE" # One of: ["ACTIVE", "REPLICATING", "SHARED", "EXPIRING", "FAILED", "EXPIRED", "DECLINED", "REVOKED"],
    #       source_account: "AccountId",
    #       destination_account: "AccountId",
    #       destination_region: "Region",
    #       expiration_time: Time.now,
    #       creation_time: Time.now,
    #       last_updated: Time.now,
    #       comment: "ShareRequestComment",
    #       standard_controls_count: 1,
    #       custom_controls_count: 1,
    #       compliance_type: "ComplianceType"
    #     }
    #   }
    # @return [Types::StartAssessmentFrameworkShareResponse]
    def start_assessment_framework_share(params = {}, options = {})
      request = build_request(:start_assessment_framework_share, params)
      request.send_request(options)
    end

    # <p> Tags the specified resource in Audit Manager. </p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) of the resource. </p>
    # @option params [Hash<String, String>] :tags
    #   <p> The tags that are associated with the resource. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AuditManagerArn", # required
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

    # <p> Removes a tag from a resource in Audit Manager. </p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) of the specified resource. </p>
    # @option params [Array<String>] :tag_keys
    #   <p> The name or key of the tag. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AuditManagerArn", # required
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

    # <p> Edits an Audit Manager assessment. </p>
    # @param [Hash, Types::UpdateAssessmentRequest] params
    # @option params [String] :assessment_id
    #   <p> The unique identifier for the assessment. </p>
    # @option params [String] :assessment_name
    #   <p> The name of the assessment to be updated. </p>
    # @option params [String] :assessment_description
    #   <p> The description of the assessment. </p>
    # @option params [Types::Scope] :scope
    #   <p> The scope of the assessment. </p>
    # @option params [Types::AssessmentReportsDestination] :assessment_reports_destination
    #   <p> The assessment report storage destination for the assessment that's being updated.
    #         </p>
    # @option params [Array<Types::Role>] :roles
    #   <p> The list of roles for the assessment. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_id: "UUID", # required
    #     assessment_name: "AssessmentName",
    #     assessment_description: "AssessmentDescription",
    #     scope: { # required
    #       aws_accounts: [
    #         {
    #           id: "AccountId",
    #           email_address: "EmailAddress",
    #           name: "AccountName"
    #         }
    #       ],
    #       aws_services: [
    #         {
    #           service_name: "AWSServiceName"
    #         }
    #       ]
    #     },
    #     assessment_reports_destination: {
    #       destination_type: "S3" # One of: ["S3"],
    #       destination: "S3Url"
    #     },
    #     roles: [
    #       {
    #         role_type: "PROCESS_OWNER" # One of: ["PROCESS_OWNER", "RESOURCE_OWNER"], # required
    #         role_arn: "IamArn", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_assessment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assessment: {
    #       arn: "AuditManagerArn",
    #       aws_account: {
    #         id: "AccountId",
    #         email_address: "EmailAddress",
    #         name: "AccountName"
    #       },
    #       metadata: {
    #         name: "AssessmentName",
    #         id: "UUID",
    #         description: "AssessmentDescription",
    #         compliance_type: "ComplianceType",
    #         status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #         assessment_reports_destination: {
    #           destination_type: "S3" # One of: ["S3"],
    #           destination: "S3Url"
    #         },
    #         scope: {
    #           aws_accounts: [
    #             {
    #               id: "AccountId",
    #               email_address: "EmailAddress",
    #               name: "AccountName"
    #             }
    #           ],
    #           aws_services: [
    #             {
    #               service_name: "AWSServiceName"
    #             }
    #           ]
    #         },
    #         roles: [
    #           {
    #             role_type: "PROCESS_OWNER" # One of: ["PROCESS_OWNER", "RESOURCE_OWNER"], # required
    #             role_arn: "IamArn", # required
    #           }
    #         ],
    #         delegations: [
    #           {
    #             id: "UUID",
    #             assessment_name: "AssessmentName",
    #             assessment_id: "UUID",
    #             status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "UNDER_REVIEW", "COMPLETE"],
    #             role_arn: "IamArn",
    #             role_type: "PROCESS_OWNER" # One of: ["PROCESS_OWNER", "RESOURCE_OWNER"],
    #             creation_time: Time.now,
    #             last_updated: Time.now,
    #             control_set_id: "ControlSetId",
    #             comment: "DelegationComment",
    #             created_by: "CreatedBy"
    #           }
    #         ],
    #         creation_time: Time.now,
    #         last_updated: Time.now
    #       },
    #       framework: {
    #         id: "UUID",
    #         arn: "AuditManagerArn",
    #         metadata: {
    #           name: "AssessmentName",
    #           description: "AssessmentFrameworkDescription",
    #           logo: "Filename",
    #           compliance_type: "ComplianceType"
    #         },
    #         control_sets: [
    #           {
    #             id: "ControlSetId",
    #             description: "NonEmptyString",
    #             status: "ACTIVE" # One of: ["ACTIVE", "UNDER_REVIEW", "REVIEWED"],
    #             roles: [
    #               {
    #                 role_type: "PROCESS_OWNER" # One of: ["PROCESS_OWNER", "RESOURCE_OWNER"], # required
    #                 role_arn: "IamArn", # required
    #               }
    #             ],
    #             controls: [
    #               {
    #                 id: "UUID",
    #                 name: "ControlName",
    #                 description: "ControlDescription",
    #                 status: "UNDER_REVIEW" # One of: ["UNDER_REVIEW", "REVIEWED", "INACTIVE"],
    #                 response: "MANUAL" # One of: ["MANUAL", "AUTOMATE", "DEFER", "IGNORE"],
    #                 comments: [
    #                   {
    #                     author_name: "Username",
    #                     comment_body: "ControlCommentBody",
    #                     posted_date: Time.now
    #                   }
    #                 ],
    #                 evidence_sources: ["NonEmptyString"],
    #                 evidence_count: 1,
    #                 assessment_report_evidence_count: 1
    #               }
    #             ],
    #             delegations: [
    #               {
    #                 id: "UUID",
    #                 assessment_name: "AssessmentName",
    #                 assessment_id: "UUID",
    #                 status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "UNDER_REVIEW", "COMPLETE"],
    #                 role_arn: "IamArn",
    #                 role_type: "PROCESS_OWNER" # One of: ["PROCESS_OWNER", "RESOURCE_OWNER"],
    #                 creation_time: Time.now,
    #                 last_updated: Time.now,
    #                 control_set_id: "ControlSetId",
    #                 comment: "DelegationComment",
    #                 created_by: "CreatedBy"
    #               }
    #             ],
    #             system_evidence_count: 1,
    #             manual_evidence_count: 1
    #           }
    #         ]
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::UpdateAssessmentResponse]
    def update_assessment(params = {}, options = {})
      request = build_request(:update_assessment, params)
      request.send_request(options)
    end

    # <p> Updates a control within an assessment in Audit Manager. </p>
    # @param [Hash, Types::UpdateAssessmentControlRequest] params
    # @option params [String] :assessment_id
    #   <p> The unique identifier for the assessment. </p>
    # @option params [String] :control_set_id
    #   <p> The unique identifier for the control set. </p>
    # @option params [String] :control_id
    #   <p> The unique identifier for the control. </p>
    # @option params [String] :control_status
    #   <p> The status of the control. </p>
    # @option params [String] :comment_body
    #   <p> The comment body text for the control. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_id: "UUID", # required
    #     control_set_id: "ControlSetId", # required
    #     control_id: "UUID", # required
    #     control_status: "UNDER_REVIEW" # One of: ["UNDER_REVIEW", "REVIEWED", "INACTIVE"],
    #     comment_body: "ControlCommentBody"
    #   }
    #   options = {}
    #   response = client.update_assessment_control(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     control: {
    #       id: "UUID",
    #       name: "ControlName",
    #       description: "ControlDescription",
    #       status: "UNDER_REVIEW" # One of: ["UNDER_REVIEW", "REVIEWED", "INACTIVE"],
    #       response: "MANUAL" # One of: ["MANUAL", "AUTOMATE", "DEFER", "IGNORE"],
    #       comments: [
    #         {
    #           author_name: "Username",
    #           comment_body: "ControlCommentBody",
    #           posted_date: Time.now
    #         }
    #       ],
    #       evidence_sources: ["NonEmptyString"],
    #       evidence_count: 1,
    #       assessment_report_evidence_count: 1
    #     }
    #   }
    # @return [Types::UpdateAssessmentControlResponse]
    def update_assessment_control(params = {}, options = {})
      request = build_request(:update_assessment_control, params)
      request.send_request(options)
    end

    # <p> Updates the status of a control set in an Audit Manager assessment. </p>
    # @param [Hash, Types::UpdateAssessmentControlSetStatusRequest] params
    # @option params [String] :assessment_id
    #   <p> The unique identifier for the assessment. </p>
    # @option params [String] :control_set_id
    #   <p> The unique identifier for the control set. </p>
    # @option params [String] :status
    #   <p> The status of the control set that's being updated. </p>
    # @option params [String] :comment
    #   <p> The comment that's related to the status update. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_id: "UUID", # required
    #     control_set_id: "String", # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "UNDER_REVIEW", "REVIEWED"], # required
    #     comment: "DelegationComment", # required
    #   }
    #   options = {}
    #   response = client.update_assessment_control_set_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     control_set: {
    #       id: "ControlSetId",
    #       description: "NonEmptyString",
    #       status: "ACTIVE" # One of: ["ACTIVE", "UNDER_REVIEW", "REVIEWED"],
    #       roles: [
    #         {
    #           role_type: "PROCESS_OWNER" # One of: ["PROCESS_OWNER", "RESOURCE_OWNER"], # required
    #           role_arn: "IamArn", # required
    #         }
    #       ],
    #       controls: [
    #         {
    #           id: "UUID",
    #           name: "ControlName",
    #           description: "ControlDescription",
    #           status: "UNDER_REVIEW" # One of: ["UNDER_REVIEW", "REVIEWED", "INACTIVE"],
    #           response: "MANUAL" # One of: ["MANUAL", "AUTOMATE", "DEFER", "IGNORE"],
    #           comments: [
    #             {
    #               author_name: "Username",
    #               comment_body: "ControlCommentBody",
    #               posted_date: Time.now
    #             }
    #           ],
    #           evidence_sources: ["NonEmptyString"],
    #           evidence_count: 1,
    #           assessment_report_evidence_count: 1
    #         }
    #       ],
    #       delegations: [
    #         {
    #           id: "UUID",
    #           assessment_name: "AssessmentName",
    #           assessment_id: "UUID",
    #           status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "UNDER_REVIEW", "COMPLETE"],
    #           role_arn: "IamArn",
    #           role_type: "PROCESS_OWNER" # One of: ["PROCESS_OWNER", "RESOURCE_OWNER"],
    #           creation_time: Time.now,
    #           last_updated: Time.now,
    #           control_set_id: "ControlSetId",
    #           comment: "DelegationComment",
    #           created_by: "CreatedBy"
    #         }
    #       ],
    #       system_evidence_count: 1,
    #       manual_evidence_count: 1
    #     }
    #   }
    # @return [Types::UpdateAssessmentControlSetStatusResponse]
    def update_assessment_control_set_status(params = {}, options = {})
      request = build_request(:update_assessment_control_set_status, params)
      request.send_request(options)
    end

    # <p> Updates a custom framework in Audit Manager. </p>
    # @param [Hash, Types::UpdateAssessmentFrameworkRequest] params
    # @option params [String] :framework_id
    #   <p> The unique identifier for the framework. </p>
    # @option params [String] :name
    #   <p> The name of the framework to be updated. </p>
    # @option params [String] :description
    #   <p> The description of the updated framework. </p>
    # @option params [String] :compliance_type
    #   <p> The compliance type that the new custom framework supports, such as CIS or HIPAA.
    #         </p>
    # @option params [Array<Types::UpdateAssessmentFrameworkControlSet>] :control_sets
    #   <p> The control sets that are associated with the framework. </p>
    #            <note>
    #               <p>The <code>Controls</code> object returns a partial response when called through Framework
    #               APIs. For a complete <code>Controls</code> object, use <code>GetControl</code>.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     framework_id: "UUID", # required
    #     name: "FrameworkName", # required
    #     description: "FrameworkDescription",
    #     compliance_type: "ComplianceType",
    #     control_sets: [ # required
    #       {
    #         id: "ControlSetName",
    #         name: "ControlSetName", # required
    #         controls: [ # required
    #           {
    #             id: "UUID", # required
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_assessment_framework(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     framework: {
    #       arn: "AuditManagerArn",
    #       id: "UUID",
    #       name: "FrameworkName",
    #       type: "Standard" # One of: ["Standard", "Custom"],
    #       compliance_type: "ComplianceType",
    #       description: "FrameworkDescription",
    #       logo: "Filename",
    #       control_sources: "ControlSources",
    #       control_sets: [
    #         {
    #           id: "UUID",
    #           name: "ControlSetName",
    #           controls: [
    #             {
    #               arn: "AuditManagerArn",
    #               id: "UUID",
    #               type: "Standard" # One of: ["Standard", "Custom", "Core"],
    #               name: "ControlName",
    #               description: "ControlDescription",
    #               testing_information: "TestingInformation",
    #               action_plan_title: "ActionPlanTitle",
    #               action_plan_instructions: "ActionPlanInstructions",
    #               control_sources: "ControlSources",
    #               control_mapping_sources: [
    #                 {
    #                   source_id: "UUID",
    #                   source_name: "SourceName",
    #                   source_description: "SourceDescription",
    #                   source_set_up_option: "System_Controls_Mapping" # One of: ["System_Controls_Mapping", "Procedural_Controls_Mapping"],
    #                   source_type: "AWS_Cloudtrail" # One of: ["AWS_Cloudtrail", "AWS_Config", "AWS_Security_Hub", "AWS_API_Call", "MANUAL", "Common_Control", "Core_Control"],
    #                   source_keyword: {
    #                     keyword_input_type: "SELECT_FROM_LIST" # One of: ["SELECT_FROM_LIST", "UPLOAD_FILE", "INPUT_TEXT"],
    #                     keyword_value: "KeywordValue"
    #                   },
    #                   source_frequency: "DAILY" # One of: ["DAILY", "WEEKLY", "MONTHLY"],
    #                   troubleshooting_text: "TroubleshootingText"
    #                 }
    #               ],
    #               created_at: Time.now,
    #               last_updated_at: Time.now,
    #               created_by: "CreatedBy",
    #               last_updated_by: "LastUpdatedBy",
    #               tags: {
    #                 "TagKey" => "TagValue"
    #               },
    #               state: "ACTIVE" # One of: ["ACTIVE", "END_OF_SUPPORT"]
    #             }
    #           ]
    #         }
    #       ],
    #       created_at: Time.now,
    #       last_updated_at: Time.now,
    #       created_by: "CreatedBy",
    #       last_updated_by: "LastUpdatedBy",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::UpdateAssessmentFrameworkResponse]
    def update_assessment_framework(params = {}, options = {})
      request = build_request(:update_assessment_framework, params)
      request.send_request(options)
    end

    # <p> Updates a share request for a custom framework in Audit Manager. </p>
    # @param [Hash, Types::UpdateAssessmentFrameworkShareRequest] params
    # @option params [String] :request_id
    #   <p> The unique identifier for the share request. </p>
    # @option params [String] :request_type
    #   <p>Specifies whether the share request is a sent request or a received request.</p>
    # @option params [String] :action
    #   <p>Specifies the update action for the share request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     request_id: "UUID", # required
    #     request_type: "SENT" # One of: ["SENT", "RECEIVED"], # required
    #     action: "ACCEPT" # One of: ["ACCEPT", "DECLINE", "REVOKE"], # required
    #   }
    #   options = {}
    #   response = client.update_assessment_framework_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assessment_framework_share_request: {
    #       id: "UUID",
    #       framework_id: "UUID",
    #       framework_name: "FrameworkName",
    #       framework_description: "FrameworkDescription",
    #       status: "ACTIVE" # One of: ["ACTIVE", "REPLICATING", "SHARED", "EXPIRING", "FAILED", "EXPIRED", "DECLINED", "REVOKED"],
    #       source_account: "AccountId",
    #       destination_account: "AccountId",
    #       destination_region: "Region",
    #       expiration_time: Time.now,
    #       creation_time: Time.now,
    #       last_updated: Time.now,
    #       comment: "ShareRequestComment",
    #       standard_controls_count: 1,
    #       custom_controls_count: 1,
    #       compliance_type: "ComplianceType"
    #     }
    #   }
    # @return [Types::UpdateAssessmentFrameworkShareResponse]
    def update_assessment_framework_share(params = {}, options = {})
      request = build_request(:update_assessment_framework_share, params)
      request.send_request(options)
    end

    # <p> Updates the status of an assessment in Audit Manager. </p>
    # @param [Hash, Types::UpdateAssessmentStatusRequest] params
    # @option params [String] :assessment_id
    #   <p> The unique identifier for the assessment. </p>
    # @option params [String] :status
    #   <p> The current status of the assessment. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_id: "UUID", # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #   }
    #   options = {}
    #   response = client.update_assessment_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assessment: {
    #       arn: "AuditManagerArn",
    #       aws_account: {
    #         id: "AccountId",
    #         email_address: "EmailAddress",
    #         name: "AccountName"
    #       },
    #       metadata: {
    #         name: "AssessmentName",
    #         id: "UUID",
    #         description: "AssessmentDescription",
    #         compliance_type: "ComplianceType",
    #         status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #         assessment_reports_destination: {
    #           destination_type: "S3" # One of: ["S3"],
    #           destination: "S3Url"
    #         },
    #         scope: {
    #           aws_accounts: [
    #             {
    #               id: "AccountId",
    #               email_address: "EmailAddress",
    #               name: "AccountName"
    #             }
    #           ],
    #           aws_services: [
    #             {
    #               service_name: "AWSServiceName"
    #             }
    #           ]
    #         },
    #         roles: [
    #           {
    #             role_type: "PROCESS_OWNER" # One of: ["PROCESS_OWNER", "RESOURCE_OWNER"], # required
    #             role_arn: "IamArn", # required
    #           }
    #         ],
    #         delegations: [
    #           {
    #             id: "UUID",
    #             assessment_name: "AssessmentName",
    #             assessment_id: "UUID",
    #             status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "UNDER_REVIEW", "COMPLETE"],
    #             role_arn: "IamArn",
    #             role_type: "PROCESS_OWNER" # One of: ["PROCESS_OWNER", "RESOURCE_OWNER"],
    #             creation_time: Time.now,
    #             last_updated: Time.now,
    #             control_set_id: "ControlSetId",
    #             comment: "DelegationComment",
    #             created_by: "CreatedBy"
    #           }
    #         ],
    #         creation_time: Time.now,
    #         last_updated: Time.now
    #       },
    #       framework: {
    #         id: "UUID",
    #         arn: "AuditManagerArn",
    #         metadata: {
    #           name: "AssessmentName",
    #           description: "AssessmentFrameworkDescription",
    #           logo: "Filename",
    #           compliance_type: "ComplianceType"
    #         },
    #         control_sets: [
    #           {
    #             id: "ControlSetId",
    #             description: "NonEmptyString",
    #             status: "ACTIVE" # One of: ["ACTIVE", "UNDER_REVIEW", "REVIEWED"],
    #             roles: [
    #               {
    #                 role_type: "PROCESS_OWNER" # One of: ["PROCESS_OWNER", "RESOURCE_OWNER"], # required
    #                 role_arn: "IamArn", # required
    #               }
    #             ],
    #             controls: [
    #               {
    #                 id: "UUID",
    #                 name: "ControlName",
    #                 description: "ControlDescription",
    #                 status: "UNDER_REVIEW" # One of: ["UNDER_REVIEW", "REVIEWED", "INACTIVE"],
    #                 response: "MANUAL" # One of: ["MANUAL", "AUTOMATE", "DEFER", "IGNORE"],
    #                 comments: [
    #                   {
    #                     author_name: "Username",
    #                     comment_body: "ControlCommentBody",
    #                     posted_date: Time.now
    #                   }
    #                 ],
    #                 evidence_sources: ["NonEmptyString"],
    #                 evidence_count: 1,
    #                 assessment_report_evidence_count: 1
    #               }
    #             ],
    #             delegations: [
    #               {
    #                 id: "UUID",
    #                 assessment_name: "AssessmentName",
    #                 assessment_id: "UUID",
    #                 status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "UNDER_REVIEW", "COMPLETE"],
    #                 role_arn: "IamArn",
    #                 role_type: "PROCESS_OWNER" # One of: ["PROCESS_OWNER", "RESOURCE_OWNER"],
    #                 creation_time: Time.now,
    #                 last_updated: Time.now,
    #                 control_set_id: "ControlSetId",
    #                 comment: "DelegationComment",
    #                 created_by: "CreatedBy"
    #               }
    #             ],
    #             system_evidence_count: 1,
    #             manual_evidence_count: 1
    #           }
    #         ]
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::UpdateAssessmentStatusResponse]
    def update_assessment_status(params = {}, options = {})
      request = build_request(:update_assessment_status, params)
      request.send_request(options)
    end

    # <p> Updates a custom control in Audit Manager. </p>
    # @param [Hash, Types::UpdateControlRequest] params
    # @option params [String] :control_id
    #   <p> The identifier for the control. </p>
    # @option params [String] :name
    #   <p> The name of the updated control. </p>
    # @option params [String] :description
    #   <p> The optional description of the control. </p>
    # @option params [String] :testing_information
    #   <p> The steps that you should follow to determine if the control is met. </p>
    # @option params [String] :action_plan_title
    #   <p> The title of the action plan for remediating the control. </p>
    # @option params [String] :action_plan_instructions
    #   <p> The recommended actions to carry out if the control isn't fulfilled. </p>
    # @option params [Array<Types::ControlMappingSource>] :control_mapping_sources
    #   <p> The data mapping sources for the control. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     control_id: "UUID", # required
    #     name: "ControlName", # required
    #     description: "ControlDescription",
    #     testing_information: "TestingInformation",
    #     action_plan_title: "ActionPlanTitle",
    #     action_plan_instructions: "ActionPlanInstructions",
    #     control_mapping_sources: [ # required
    #       {
    #         source_id: "UUID",
    #         source_name: "SourceName",
    #         source_description: "SourceDescription",
    #         source_set_up_option: "System_Controls_Mapping" # One of: ["System_Controls_Mapping", "Procedural_Controls_Mapping"],
    #         source_type: "AWS_Cloudtrail" # One of: ["AWS_Cloudtrail", "AWS_Config", "AWS_Security_Hub", "AWS_API_Call", "MANUAL", "Common_Control", "Core_Control"],
    #         source_keyword: {
    #           keyword_input_type: "SELECT_FROM_LIST" # One of: ["SELECT_FROM_LIST", "UPLOAD_FILE", "INPUT_TEXT"],
    #           keyword_value: "KeywordValue"
    #         },
    #         source_frequency: "DAILY" # One of: ["DAILY", "WEEKLY", "MONTHLY"],
    #         troubleshooting_text: "TroubleshootingText"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_control(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     control: {
    #       arn: "AuditManagerArn",
    #       id: "UUID",
    #       type: "Standard" # One of: ["Standard", "Custom", "Core"],
    #       name: "ControlName",
    #       description: "ControlDescription",
    #       testing_information: "TestingInformation",
    #       action_plan_title: "ActionPlanTitle",
    #       action_plan_instructions: "ActionPlanInstructions",
    #       control_sources: "ControlSources",
    #       control_mapping_sources: [
    #         {
    #           source_id: "UUID",
    #           source_name: "SourceName",
    #           source_description: "SourceDescription",
    #           source_set_up_option: "System_Controls_Mapping" # One of: ["System_Controls_Mapping", "Procedural_Controls_Mapping"],
    #           source_type: "AWS_Cloudtrail" # One of: ["AWS_Cloudtrail", "AWS_Config", "AWS_Security_Hub", "AWS_API_Call", "MANUAL", "Common_Control", "Core_Control"],
    #           source_keyword: {
    #             keyword_input_type: "SELECT_FROM_LIST" # One of: ["SELECT_FROM_LIST", "UPLOAD_FILE", "INPUT_TEXT"],
    #             keyword_value: "KeywordValue"
    #           },
    #           source_frequency: "DAILY" # One of: ["DAILY", "WEEKLY", "MONTHLY"],
    #           troubleshooting_text: "TroubleshootingText"
    #         }
    #       ],
    #       created_at: Time.now,
    #       last_updated_at: Time.now,
    #       created_by: "CreatedBy",
    #       last_updated_by: "LastUpdatedBy",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       state: "ACTIVE" # One of: ["ACTIVE", "END_OF_SUPPORT"]
    #     }
    #   }
    # @return [Types::UpdateControlResponse]
    def update_control(params = {}, options = {})
      request = build_request(:update_control, params)
      request.send_request(options)
    end

    # <p> Updates Audit Manager settings for the current account. </p>
    # @param [Hash, Types::UpdateSettingsRequest] params
    # @option params [String] :sns_topic
    #   <p> The Amazon Simple Notification Service (Amazon SNS) topic that Audit Manager sends
    #            notifications to. </p>
    # @option params [Types::AssessmentReportsDestination] :default_assessment_reports_destination
    #   <p> The default S3 destination bucket for storing assessment reports. </p>
    # @option params [Array<Types::Role>] :default_process_owners
    #   <p> A list of the default audit owners. </p>
    # @option params [String] :kms_key
    #   <p> The KMS key details. </p>
    # @option params [Boolean] :evidence_finder_enabled
    #   <p>Specifies whether the evidence finder feature is enabled. Change this attribute to
    #            enable or disable evidence finder.</p>
    #            <important>
    #               <p>When you use this attribute to disable evidence finder, Audit Manager deletes the
    #               event data store that’s used to query your evidence data. As a result, you can’t
    #               re-enable evidence finder and use the feature again. Your only alternative is to <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeregisterAccount.html">deregister</a> and then <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_RegisterAccount.html">re-register</a>
    #               Audit Manager. </p>
    #            </important>
    # @option params [Types::DeregistrationPolicy] :deregistration_policy
    #   <p>The deregistration policy for your Audit Manager data. You can
    #            use this attribute to determine how your data is handled when you deregister Audit Manager.</p>
    # @option params [Types::DefaultExportDestination] :default_export_destination
    #   <p> The default S3 destination bucket for storing evidence finder exports. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sns_topic: "SnsArn",
    #     default_assessment_reports_destination: {
    #       destination_type: "S3" # One of: ["S3"],
    #       destination: "S3Url"
    #     },
    #     default_process_owners: [
    #       {
    #         role_type: "PROCESS_OWNER" # One of: ["PROCESS_OWNER", "RESOURCE_OWNER"], # required
    #         role_arn: "IamArn", # required
    #       }
    #     ],
    #     kms_key: "KmsKey",
    #     evidence_finder_enabled: false,
    #     deregistration_policy: {
    #       delete_resources: "ALL" # One of: ["ALL", "DEFAULT"]
    #     },
    #     default_export_destination: {
    #       destination_type: "S3" # One of: ["S3"],
    #       destination: "S3Url"
    #     }
    #   }
    #   options = {}
    #   response = client.update_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     settings: {
    #       is_aws_org_enabled: false,
    #       sns_topic: "SNSTopic",
    #       default_assessment_reports_destination: {
    #         destination_type: "S3" # One of: ["S3"],
    #         destination: "S3Url"
    #       },
    #       default_process_owners: [
    #         {
    #           role_type: "PROCESS_OWNER" # One of: ["PROCESS_OWNER", "RESOURCE_OWNER"], # required
    #           role_arn: "IamArn", # required
    #         }
    #       ],
    #       kms_key: "KmsKey",
    #       evidence_finder_enablement: {
    #         event_data_store_arn: "CloudTrailArn",
    #         enablement_status: "ENABLED" # One of: ["ENABLED", "DISABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS"],
    #         backfill_status: "NOT_STARTED" # One of: ["NOT_STARTED", "IN_PROGRESS", "COMPLETED"],
    #         error: "ErrorMessage"
    #       },
    #       deregistration_policy: {
    #         delete_resources: "ALL" # One of: ["ALL", "DEFAULT"]
    #       },
    #       default_export_destination: {
    #         destination_type: "S3" # One of: ["S3"],
    #         destination: "S3Url"
    #       }
    #     }
    #   }
    # @return [Types::UpdateSettingsResponse]
    def update_settings(params = {}, options = {})
      request = build_request(:update_settings, params)
      request.send_request(options)
    end

    # <p> Validates the integrity of an assessment report in Audit Manager. </p>
    # @param [Hash, Types::ValidateAssessmentReportIntegrityRequest] params
    # @option params [String] :s3_relative_path
    #   <p> The relative path of the Amazon S3 bucket that the assessment report is stored
    #            in. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     s3_relative_path: "S3Url", # required
    #   }
    #   options = {}
    #   response = client.validate_assessment_report_integrity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     signature_valid: false,
    #     signature_algorithm: "String",
    #     signature_date_time: "String",
    #     signature_key_id: "String",
    #     validation_errors: ["NonEmptyString"]
    #   }
    # @return [Types::ValidateAssessmentReportIntegrityResponse]
    def validate_assessment_report_integrity(params = {}, options = {})
      request = build_request(:validate_assessment_report_integrity, params)
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
      context[:gem_name] = 'aws-sdk-auditmanager'
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
