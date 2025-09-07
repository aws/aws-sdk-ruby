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

module Aws::SecurityIR
  # An API client for Aws::SecurityIR.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::SecurityIncidentResponse

    add_plugin(::Aws::SecurityIR::Plugins::Endpoint)
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
    # @option options [Aws::SecurityIR::EndpointProvider] :endpoint_provider
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
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Provides information on whether the supplied account IDs are associated with a membership.</p> <note> <p> AWS account ID's may appear less than 12 characters and need to be zero-prepended. An example would be <code>123123123</code> which is nine digits, and with zero-prepend would be <code>000123123123</code>. Not zero-prepending to 12 digits could result in errors. </p> </note>
    # @param [Hash, Types::BatchGetMemberAccountDetailsRequest] params
    # @option params [String] :membership_id
    #   <p>Required element used in combination with BatchGetMemberAccountDetails to identify the membership ID to query. </p>
    # @option params [Array<String>] :account_ids
    #   <p>Optional element to query the membership relationship status to a provided list of account IDs.</p> <note> <p> AWS account ID's may appear less than 12 characters and need to be zero-prepended. An example would be <code>123123123</code> which is nine digits, and with zero-prepend would be <code>000123123123</code>. Not zero-prepending to 12 digits could result in errors. </p> </note>
    # @example Invoke BatchGetMemberAccountDetails
    #   # Example operation for batch_get_member_account_details
    #   params = {
    #     membership_id: "m-abcd1234efgh",
    #     account_ids: [
    #       "123412341234"
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_get_member_account_details(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         account_id: "123412341234",
    #         relationship_status: Associated,
    #         relationship_type: Organization
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_id: "MembershipId", # required
    #     account_ids: ["AWSAccountId"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_member_account_details(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         account_id: "AWSAccountId",
    #         relationship_status: "Associated" # One of: ["Associated", "Disassociated", "Unassociated"],
    #         relationship_type: "Organization" # One of: ["Organization", "Unrelated"]
    #       }
    #     ],
    #     errors: [
    #       {
    #         account_id: "AWSAccountId", # required
    #         error: "String", # required
    #         message: "String", # required
    #       }
    #     ]
    #   }
    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_BatchGetMemberAccountDetails.html API Reference
    # @return [Types::BatchGetMemberAccountDetailsResponse]
    def batch_get_member_account_details(params = {}, options = {})
      request = build_request(:batch_get_member_account_details, params)
      request.send_request(options)
    end

    # <p>Cancels an existing membership.</p>
    # @param [Hash, Types::CancelMembershipRequest] params
    # @option params [String] :membership_id
    #   <p>Required element used in combination with CancelMembershipRequest to identify the membership ID to cancel. </p>
    # @example Invoke CancelMembership
    #   # Example operation for cancel_membership
    #   params = {
    #     membership_id: "m-abcd1234efgh"
    #   }
    #   options = {}
    #   response = client.cancel_membership(params, options)
    #   response.to_h #=>
    #   {
    #     membership_id: "m-abcd1234efgh"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_id: "MembershipId", # required
    #   }
    #   options = {}
    #   response = client.cancel_membership(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     membership_id: "MembershipId", # required
    #   }
    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CancelMembership.html API Reference
    # @return [Types::CancelMembershipResponse]
    def cancel_membership(params = {}, options = {})
      request = build_request(:cancel_membership, params)
      request.send_request(options)
    end

    # <p>Closes an existing case.</p>
    # @param [Hash, Types::CloseCaseRequest] params
    # @option params [String] :case_id
    #   <p>Required element used in combination with CloseCase to identify the case ID to close.</p>
    # @example Invoke CloseCase
    #   # Example operation for close_case
    #   params = {
    #     case_id: "8403556009"
    #   }
    #   options = {}
    #   response = client.close_case(params, options)
    #   response.to_h #=>
    #   {
    #     case_status: Closed,
    #     closed_date: Time.parse("2024-02-27T17:01:33.000Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     case_id: "CaseId", # required
    #   }
    #   options = {}
    #   response = client.close_case(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     case_status: "Submitted" # One of: ["Submitted", "Acknowledged", "Detection and Analysis", "Containment, Eradication and Recovery", "Post-incident Activities", "Ready to Close", "Closed"],
    #     closed_date: Time.now
    #   }
    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CloseCase.html API Reference
    # @return [Types::CloseCaseResponse]
    def close_case(params = {}, options = {})
      request = build_request(:close_case, params)
      request.send_request(options)
    end

    # <p>Creates a new case.</p>
    # @param [Hash, Types::CreateCaseRequest] params
    # @option params [String] :client_token
    #   <note> <p>The <code>clientToken</code> field is an idempotency key used to ensure that repeated attempts for a single action will be ignored by the server during retries. A caller supplied unique ID (typically a UUID) should be provided. </p> </note>
    # @option params [String] :resolver_type
    #   <p>Required element used in combination with CreateCase to identify the resolver type.</p>
    # @option params [String] :title
    #   <p>Required element used in combination with CreateCase to provide a title for the new case.</p>
    # @option params [String] :description
    #   <p>Required element used in combination with CreateCase</p> <p>to provide a description for the new case.</p>
    # @option params [String] :engagement_type
    #   <p>Required element used in combination with CreateCase to provide an engagement type for the new cases. Available engagement types include Security Incident | Investigation </p>
    # @option params [Time] :reported_incident_start_date
    #   <p>Required element used in combination with CreateCase to provide an initial start date for the unauthorized activity. </p>
    # @option params [Array<String>] :impacted_accounts
    #   <p>Required element used in combination with CreateCase to provide a list of impacted accounts.</p> <note> <p> AWS account ID's may appear less than 12 characters and need to be zero-prepended. An example would be <code>123123123</code> which is nine digits, and with zero-prepend would be <code>000123123123</code>. Not zero-prepending to 12 digits could result in errors. </p> </note>
    # @option params [Array<Types::Watcher>] :watchers
    #   <p>Required element used in combination with CreateCase to provide a list of entities to receive notifications for case updates. </p>
    # @option params [Array<Types::ThreatActorIp>] :threat_actor_ip_addresses
    #   <p>An optional element used in combination with CreateCase to provide a list of suspicious internet protocol addresses associated with unauthorized activity. </p>
    # @option params [Array<String>] :impacted_services
    #   <p>An optional element used in combination with CreateCase to provide a list of services impacted.</p>
    # @option params [Array<Types::ImpactedAwsRegion>] :impacted_aws_regions
    #   <p>An optional element used in combination with CreateCase to provide a list of impacted regions.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>An optional element used in combination with CreateCase to add customer specified tags to a case.</p>
    # @example Invoke CreateCase
    #   # Example operation for create_case
    #   params = {
    #     resolver_type: Self,
    #     title: "My sample case",
    #     description: "Case description",
    #     reported_incident_start_date: Time.parse("2023-03-27T15:32:01.789Z"),
    #     engagement_type: Investigation,
    #     watchers: [
    #       {
    #         email: "alice@example.com",
    #         name: "Alice",
    #         job_title: "CEO"
    #       },
    #       {
    #         email: "bob@example.com",
    #         name: "Bob",
    #         job_title: "CFO"
    #       }
    #     ],
    #     impacted_accounts: [
    #       "000000000000",
    #       "111111111111"
    #     ],
    #     impacted_services: [
    #       "Amazon EC2",
    #       "Amazon EKS"
    #     ],
    #     impacted_aws_regions: [
    #       {
    #         region: ap-southeast-1
    #       }
    #     ],
    #     threat_actor_ip_addresses: [
    #       {
    #         ip_address: "192.168.192.168",
    #         user_agent: "Browser"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_case(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "String",
    #     resolver_type: "AWS" # One of: ["AWS", "Self"], # required
    #     title: "CaseTitle", # required
    #     description: "CaseDescription", # required
    #     engagement_type: "Security Incident" # One of: ["Security Incident", "Investigation"], # required
    #     reported_incident_start_date: Time.now, # required
    #     impacted_accounts: ["AWSAccountId"], # required
    #     watchers: [ # required
    #       {
    #         email: "EmailAddress", # required
    #         name: "PersonName",
    #         job_title: "JobTitle"
    #       }
    #     ],
    #     threat_actor_ip_addresses: [
    #       {
    #         ip_address: "IPAddress", # required
    #         user_agent: "UserAgent"
    #       }
    #     ],
    #     impacted_services: ["AwsService"],
    #     impacted_aws_regions: [
    #       {
    #         region: "af-south-1" # One of: ["af-south-1", "ap-east-1", "ap-east-2", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-southeast-4", "ap-southeast-5", "ap-southeast-7", "ca-central-1", "ca-west-1", "cn-north-1", "cn-northwest-1", "eu-central-1", "eu-central-2", "eu-north-1", "eu-south-1", "eu-south-2", "eu-west-1", "eu-west-2", "eu-west-3", "il-central-1", "me-central-1", "me-south-1", "mx-central-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"], # required
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_case(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     case_id: "CaseId", # required
    #   }
    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCase.html API Reference
    # @return [Types::CreateCaseResponse]
    def create_case(params = {}, options = {})
      request = build_request(:create_case, params)
      request.send_request(options)
    end

    # <p>Adds a comment to an existing case.</p>
    # @param [Hash, Types::CreateCaseCommentRequest] params
    # @option params [String] :case_id
    #   <p>Required element used in combination with CreateCaseComment to specify a case ID.</p>
    # @option params [String] :client_token
    #   <note> <p>The <code>clientToken</code> field is an idempotency key used to ensure that repeated attempts for a single action will be ignored by the server during retries. A caller supplied unique ID (typically a UUID) should be provided. </p> </note>
    # @option params [String] :body
    #   <p>Required element used in combination with CreateCaseComment to add content for the new comment.</p>
    # @example Invoke CreateCaseComment
    #   # Example operation for create_case_comment
    #   params = {
    #     case_id: "8403556009",
    #     body: "Case comment body."
    #   }
    #   options = {}
    #   response = client.create_case_comment(params, options)
    #   response.to_h #=>
    #   {
    #     comment_id: "000000"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     case_id: "CaseId", # required
    #     client_token: "String",
    #     body: "CommentBody", # required
    #   }
    #   options = {}
    #   response = client.create_case_comment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     comment_id: "CommentId", # required
    #   }
    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCaseComment.html API Reference
    # @return [Types::CreateCaseCommentResponse]
    def create_case_comment(params = {}, options = {})
      request = build_request(:create_case_comment, params)
      request.send_request(options)
    end

    # <p>Creates a new membership.</p>
    # @param [Hash, Types::CreateMembershipRequest] params
    # @option params [String] :client_token
    #   <note> <p>The <code>clientToken</code> field is an idempotency key used to ensure that repeated attempts for a single action will be ignored by the server during retries. A caller supplied unique ID (typically a UUID) should be provided. </p> </note>
    # @option params [String] :membership_name
    #   <p>Required element used in combination with CreateMembership to create a name for the membership.</p>
    # @option params [Array<Types::IncidentResponder>] :incident_response_team
    #   <p>Required element used in combination with CreateMembership to add customer incident response team members and trusted partners to the membership. </p>
    # @option params [Array<Types::OptInFeature>] :opt_in_features
    #   <p>Optional element to enable the monitoring and investigation opt-in features for the service.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Optional element for customer configured tags.</p>
    # @option params [Boolean] :cover_entire_organization
    #   <p>The <code>coverEntireOrganization</code> parameter is a boolean flag that determines whether the membership should be applied to the entire Amazon Web Services Organization. When set to true, the membership will be created for all accounts within the organization. When set to false, the membership will only be created for specified accounts. </p> <p>This parameter is optional. If not specified, the default value is false.</p> <ul> <li> <p>If set to <i>true</i>: The membership will automatically include all existing and future accounts in the Amazon Web Services Organization. </p> </li> <li> <p>If set to <i>false</i>: The membership will only apply to explicitly specified accounts. </p> </li> </ul>
    # @example Invoke CreateMembership
    #   # Example operation for create_membership
    #   params = {
    #     membership_name: "Example Membership Name.",
    #     incident_response_team: [
    #       {
    #         name: "Bob Jones",
    #         job_title: "Security Responder",
    #         email: "bob.jones@gmail.com"
    #       },
    #       {
    #         email: "alice@example.com",
    #         name: "Alice",
    #         job_title: "CEO"
    #       }
    #     ],
    #     opt_in_features: [
    #       {
    #         feature_name: Triage,
    #         is_enabled: true
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_membership(params, options)
    #   response.to_h #=>
    #   {
    #     membership_id: "m-abcd1234efgh"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "String",
    #     membership_name: "MembershipName", # required
    #     incident_response_team: [ # required
    #       {
    #         name: "IncidentResponderName", # required
    #         job_title: "JobTitle", # required
    #         email: "EmailAddress", # required
    #       }
    #     ],
    #     opt_in_features: [
    #       {
    #         feature_name: "Triage" # One of: ["Triage"], # required
    #         is_enabled: false, # required
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     cover_entire_organization: false
    #   }
    #   options = {}
    #   response = client.create_membership(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     membership_id: "MembershipId", # required
    #   }
    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateMembership.html API Reference
    # @return [Types::CreateMembershipResponse]
    def create_membership(params = {}, options = {})
      request = build_request(:create_membership, params)
      request.send_request(options)
    end

    # <p>Returns the attributes of a case.</p>
    # @param [Hash, Types::GetCaseRequest] params
    # @option params [String] :case_id
    #   <p>Required element for GetCase to identify the requested case ID.</p>
    # @example Invoke GetCase
    #   # Example operation for get_case
    #   params = {
    #     case_id: "8403556009"
    #   }
    #   options = {}
    #   response = client.get_case(params, options)
    #   response.to_h #=>
    #   {
    #     title: "My sample case",
    #     case_arn: "arn:aws:security-ir:us-west-1:123456789012:case/1234567890",
    #     description: "Case description",
    #     case_status: Submitted,
    #     engagement_type: Investigation,
    #     reported_incident_start_date: Time.parse("2023-03-27T15:32:01.789Z"),
    #     actual_incident_start_date: Time.parse("2023-03-27T15:32:01.789Z"),
    #     impacted_aws_regions: [
    #       {
    #         region: ap-southeast-1
    #       }
    #     ],
    #     threat_actor_ip_addresses: [
    #       {
    #         ip_address: "192.168.192.168",
    #         user_agent: "Browser"
    #       }
    #     ],
    #     pending_action: Customer,
    #     impacted_accounts: [
    #       "000000000000",
    #       "111111111111"
    #     ],
    #     watchers: [
    #       {
    #         email: "alice@example.com",
    #         name: "Alice",
    #         job_title: "CEO"
    #       },
    #       {
    #         email: "bob@example.com",
    #         name: "Bob",
    #         job_title: "CFO"
    #       }
    #     ],
    #     created_date: Time.parse("2023-01-27T15:32:01.789Z"),
    #     last_updated_date: Time.parse("2023-02-27T15:32:01.789Z"),
    #     resolver_type: Self,
    #     impacted_services: [
    #       "Amazon EC2",
    #       "Amazon EKS"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     case_id: "CaseId", # required
    #   }
    #   options = {}
    #   response = client.get_case(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     title: "CaseTitle",
    #     case_arn: "CaseArn",
    #     description: "CaseDescription",
    #     case_status: "Submitted" # One of: ["Submitted", "Acknowledged", "Detection and Analysis", "Containment, Eradication and Recovery", "Post-incident Activities", "Ready to Close", "Closed"],
    #     engagement_type: "Security Incident" # One of: ["Security Incident", "Investigation"],
    #     reported_incident_start_date: Time.now,
    #     actual_incident_start_date: Time.now,
    #     impacted_aws_regions: [
    #       {
    #         region: "af-south-1" # One of: ["af-south-1", "ap-east-1", "ap-east-2", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-southeast-4", "ap-southeast-5", "ap-southeast-7", "ca-central-1", "ca-west-1", "cn-north-1", "cn-northwest-1", "eu-central-1", "eu-central-2", "eu-north-1", "eu-south-1", "eu-south-2", "eu-west-1", "eu-west-2", "eu-west-3", "il-central-1", "me-central-1", "me-south-1", "mx-central-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"], # required
    #       }
    #     ],
    #     threat_actor_ip_addresses: [
    #       {
    #         ip_address: "IPAddress", # required
    #         user_agent: "UserAgent"
    #       }
    #     ],
    #     pending_action: "Customer" # One of: ["Customer", "None"],
    #     impacted_accounts: ["AWSAccountId"],
    #     watchers: [
    #       {
    #         email: "EmailAddress", # required
    #         name: "PersonName",
    #         job_title: "JobTitle"
    #       }
    #     ],
    #     created_date: Time.now,
    #     last_updated_date: Time.now,
    #     closure_code: "Investigation Completed" # One of: ["Investigation Completed", "Not Resolved", "False Positive", "Duplicate"],
    #     resolver_type: "AWS" # One of: ["AWS", "Self"],
    #     impacted_services: ["AwsService"],
    #     case_attachments: [
    #       {
    #         attachment_id: "AttachmentId", # required
    #         file_name: "FileName", # required
    #         attachment_status: "Verified" # One of: ["Verified", "Failed", "Pending"], # required
    #         creator: "PrincipalId", # required
    #         created_date: Time.now, # required
    #       }
    #     ],
    #     closed_date: Time.now
    #   }
    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html API Reference
    # @return [Types::GetCaseResponse]
    def get_case(params = {}, options = {})
      request = build_request(:get_case, params)
      request.send_request(options)
    end

    # <p>Returns a Pre-Signed URL for uploading attachments into a case.</p>
    # @param [Hash, Types::GetCaseAttachmentDownloadUrlRequest] params
    # @option params [String] :case_id
    #   <p>Required element for GetCaseAttachmentDownloadUrl to identify the case ID for downloading an attachment from. </p>
    # @option params [String] :attachment_id
    #   <p>Required element for GetCaseAttachmentDownloadUrl to identify the attachment ID for downloading an attachment. </p>
    # @example Invoke GetCaseAttachmentDownloadUrl
    #   # Example operation for get_case_attachment_download_url
    #   params = {
    #     case_id: "8403556009",
    #     attachment_id: "3C5A6B89-1DEF-4C2D-A5B6-123456789ABC"
    #   }
    #   options = {}
    #   response = client.get_case_attachment_download_url(params, options)
    #   response.to_h #=>
    #   {
    #     attachment_presigned_url: "https://presignedurl.com"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     case_id: "CaseId", # required
    #     attachment_id: "AttachmentId", # required
    #   }
    #   options = {}
    #   response = client.get_case_attachment_download_url(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attachment_presigned_url: "Url", # required
    #   }
    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCaseAttachmentDownloadUrl.html API Reference
    # @return [Types::GetCaseAttachmentDownloadUrlResponse]
    def get_case_attachment_download_url(params = {}, options = {})
      request = build_request(:get_case_attachment_download_url, params)
      request.send_request(options)
    end

    # <p>Uploads an attachment to a case.</p>
    # @param [Hash, Types::GetCaseAttachmentUploadUrlRequest] params
    # @option params [String] :case_id
    #   <p>Required element for GetCaseAttachmentUploadUrl to identify the case ID for uploading an attachment. </p>
    # @option params [String] :file_name
    #   <p>Required element for GetCaseAttachmentUploadUrl to identify the file name of the attachment to upload. </p>
    # @option params [Integer] :content_length
    #   <p>Required element for GetCaseAttachmentUploadUrl to identify the size of the file attachment.</p>
    # @option params [String] :client_token
    #   <note> <p>The <code>clientToken</code> field is an idempotency key used to ensure that repeated attempts for a single action will be ignored by the server during retries. A caller supplied unique ID (typically a UUID) should be provided. </p> </note>
    # @example Invoke GetCaseAttachmentUploadUrl
    #   # Example operation for get_case_attachment_upload_url
    #   params = {
    #     case_id: "8403556009",
    #     file_name: "TestFileName",
    #     content_length: 1500
    #   }
    #   options = {}
    #   response = client.get_case_attachment_upload_url(params, options)
    #   response.to_h #=>
    #   {
    #     attachment_presigned_url: "https://presignedurl.com"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     case_id: "CaseId", # required
    #     file_name: "FileName", # required
    #     content_length: 1, # required
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.get_case_attachment_upload_url(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attachment_presigned_url: "Url", # required
    #   }
    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCaseAttachmentUploadUrl.html API Reference
    # @return [Types::GetCaseAttachmentUploadUrlResponse]
    def get_case_attachment_upload_url(params = {}, options = {})
      request = build_request(:get_case_attachment_upload_url, params)
      request.send_request(options)
    end

    # <p>Returns the attributes of a membership.</p>
    # @param [Hash, Types::GetMembershipRequest] params
    # @option params [String] :membership_id
    #   <p>Required element for GetMembership to identify the membership ID to query.</p>
    # @example Invoke GetMembership
    #   # Example operation for get_membership
    #   params = {
    #     membership_id: "m-abcd1234efgh"
    #   }
    #   options = {}
    #   response = client.get_membership(params, options)
    #   response.to_h #=>
    #   {
    #     membership_id: "m-abcd1234efgh",
    #     account_id: "123412341234",
    #     region: af-south-1,
    #     membership_name: "Example Membership",
    #     membership_arn: "arn:aws:security-ir:us-west-1:123456789012:membership/m-abcd1234efgh",
    #     membership_status: Active,
    #     membership_activation_timestamp: Time.parse("2023-03-27T15:32:01.789Z"),
    #     membership_deactivation_timestamp: Time.parse("2023-04-27T15:32:01.789Z"),
    #     customer_type: Standalone,
    #     number_of_accounts_covered: 50,
    #     incident_response_team: [
    #       {
    #         name: "Bob Jones",
    #         job_title: "Security Responder",
    #         email: "bob.jones@gmail.com"
    #       },
    #       {
    #         email: "alice@example.com",
    #         name: "Alice",
    #         job_title: "CEO"
    #       }
    #     ],
    #     opt_in_features: [
    #       {
    #         feature_name: Triage,
    #         is_enabled: true
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_id: "MembershipId", # required
    #   }
    #   options = {}
    #   response = client.get_membership(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     membership_id: "MembershipId", # required
    #     account_id: "AWSAccountId",
    #     region: "af-south-1" # One of: ["af-south-1", "ap-east-1", "ap-east-2", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-southeast-4", "ap-southeast-5", "ap-southeast-7", "ca-central-1", "ca-west-1", "cn-north-1", "cn-northwest-1", "eu-central-1", "eu-central-2", "eu-north-1", "eu-south-1", "eu-south-2", "eu-west-1", "eu-west-2", "eu-west-3", "il-central-1", "me-central-1", "me-south-1", "mx-central-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"],
    #     membership_name: "MembershipName",
    #     membership_arn: "MembershipArn",
    #     membership_status: "Active" # One of: ["Active", "Cancelled", "Terminated"],
    #     membership_activation_timestamp: Time.now,
    #     membership_deactivation_timestamp: Time.now,
    #     customer_type: "Standalone" # One of: ["Standalone", "Organization"],
    #     number_of_accounts_covered: 1,
    #     incident_response_team: [
    #       {
    #         name: "IncidentResponderName", # required
    #         job_title: "JobTitle", # required
    #         email: "EmailAddress", # required
    #       }
    #     ],
    #     opt_in_features: [
    #       {
    #         feature_name: "Triage" # One of: ["Triage"], # required
    #         is_enabled: false, # required
    #       }
    #     ],
    #     membership_accounts_configurations: {
    #       cover_entire_organization: false,
    #       organizational_units: ["OrganizationalUnitId"]
    #     }
    #   }
    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembership.html API Reference
    # @return [Types::GetMembershipResponse]
    def get_membership(params = {}, options = {})
      request = build_request(:get_membership, params)
      request.send_request(options)
    end

    # <p>Views the case history for edits made to a designated case.</p>
    # @param [Hash, Types::ListCaseEditsRequest] params
    # @option params [String] :next_token
    #   <p>An optional string that, if supplied, must be copied from the output of a previous call to ListCaseEdits. When provided in this manner, the API fetches the next page of results. </p>
    # @option params [Integer] :max_results
    #   <p>Optional element to identify how many results to obtain. There is a maximum value of 25.</p>
    # @option params [String] :case_id
    #   <p>Required element used with ListCaseEdits to identify the case to query.</p>
    # @example Invoke ListCaseEdits
    #   # Example operation for list_case_edits
    #   params = {
    #     case_id: "8403556009"
    #   }
    #   options = {}
    #   response = client.list_case_edits(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         event_timestamp: Time.parse("2023-03-27T15:32:01.789Z"),
    #         principal: "00000000000",
    #         action: "Add comment",
    #         message: "Added comment to ask question to responder."
    #       }
    #     ],
    #     total: 1
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1,
    #     case_id: "CaseId", # required
    #   }
    #   options = {}
    #   response = client.list_case_edits(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     items: [
    #       {
    #         event_timestamp: Time.now,
    #         principal: "String",
    #         action: "CaseEditAction",
    #         message: "CaseEditMessage"
    #       }
    #     ],
    #     total: 1
    #   }
    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCaseEdits.html API Reference
    # @return [Types::ListCaseEditsResponse]
    def list_case_edits(params = {}, options = {})
      request = build_request(:list_case_edits, params)
      request.send_request(options)
    end

    # <p>Lists all cases the requester has access to.</p>
    # @param [Hash, Types::ListCasesRequest] params
    # @option params [String] :next_token
    #   <p>An optional string that, if supplied, must be copied from the output of a previous call to ListCases. When provided in this manner, the API fetches the next page of results. </p>
    # @option params [Integer] :max_results
    #   <p>Optional element for ListCases to limit the number of responses.</p>
    # @example Invoke ListCases
    #   # Example operation for list_cases
    #   params = {
    #     max_results: 10
    #   }
    #   options = {}
    #   response = client.list_cases(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         case_id: "8403556009",
    #         last_updated_date: Time.parse("2023-03-27T15:32:01.789Z"),
    #         title: "Example case title",
    #         case_arn: "arn:aws:security-ir:us-west-1:123456789012:case/1234567890",
    #         engagement_type: Security Incident,
    #         case_status: Acknowledged,
    #         created_date: Time.parse("2023-01-27T15:32:01.789Z"),
    #         resolver_type: Self,
    #         pending_action: None
    #       }
    #     ],
    #     total: 1
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_cases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     items: [
    #       {
    #         case_id: "CaseId", # required
    #         last_updated_date: Time.now,
    #         title: "CaseTitle",
    #         case_arn: "CaseArn",
    #         engagement_type: "Security Incident" # One of: ["Security Incident", "Investigation"],
    #         case_status: "Submitted" # One of: ["Submitted", "Acknowledged", "Detection and Analysis", "Containment, Eradication and Recovery", "Post-incident Activities", "Ready to Close", "Closed"],
    #         created_date: Time.now,
    #         closed_date: Time.now,
    #         resolver_type: "AWS" # One of: ["AWS", "Self"],
    #         pending_action: "Customer" # One of: ["Customer", "None"]
    #       }
    #     ],
    #     total: 1
    #   }
    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCases.html API Reference
    # @return [Types::ListCasesResponse]
    def list_cases(params = {}, options = {})
      request = build_request(:list_cases, params)
      request.send_request(options)
    end

    # <p>Returns comments for a designated case.</p>
    # @param [Hash, Types::ListCommentsRequest] params
    # @option params [String] :next_token
    #   <p>An optional string that, if supplied, must be copied from the output of a previous call to ListComments. When provided in this manner, the API fetches the next page of results. </p>
    # @option params [Integer] :max_results
    #   <p>Optional element for ListComments to limit the number of responses.</p>
    # @option params [String] :case_id
    #   <p>Required element for ListComments to designate the case to query.</p>
    # @example Invoke ListComments
    #   # Example operation for list_comments
    #   params = {
    #     case_id: "8403556009"
    #   }
    #   options = {}
    #   response = client.list_comments(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         comment_id: "000000",
    #         body: "Case comment body."
    #       }
    #     ],
    #     total: 1
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1,
    #     case_id: "CaseId", # required
    #   }
    #   options = {}
    #   response = client.list_comments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     items: [
    #       {
    #         comment_id: "CommentId", # required
    #         created_date: Time.now,
    #         last_updated_date: Time.now,
    #         creator: "PrincipalId",
    #         last_updated_by: "PrincipalId",
    #         body: "CommentBody"
    #       }
    #     ],
    #     total: 1
    #   }
    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListComments.html API Reference
    # @return [Types::ListCommentsResponse]
    def list_comments(params = {}, options = {})
      request = build_request(:list_comments, params)
      request.send_request(options)
    end

    # <p>Returns the memberships that the calling principal can access.</p>
    # @param [Hash, Types::ListMembershipsRequest] params
    # @option params [String] :next_token
    #   <p>An optional string that, if supplied, must be copied from the output of a previous call to ListMemberships. When provided in this manner, the API fetches the next page of results. </p>
    # @option params [Integer] :max_results
    #   <p>Request element for ListMemberships to limit the number of responses.</p>
    # @example Invoke ListMemberships
    #   # Example operation for list_memberships
    #   params = {
    #     max_results: 10
    #   }
    #   options = {}
    #   response = client.list_memberships(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         membership_id: "m-abcd1234efgh",
    #         account_id: "123123123123",
    #         region: af-south-1,
    #         membership_arn: "arn:aws:security-ir:us-west-1:123456789012:membership/m-abcd1234efgh",
    #         membership_status: Cancelled
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_memberships(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     items: [
    #       {
    #         membership_id: "MembershipId", # required
    #         account_id: "AWSAccountId",
    #         region: "af-south-1" # One of: ["af-south-1", "ap-east-1", "ap-east-2", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-southeast-4", "ap-southeast-5", "ap-southeast-7", "ca-central-1", "ca-west-1", "cn-north-1", "cn-northwest-1", "eu-central-1", "eu-central-2", "eu-north-1", "eu-south-1", "eu-south-2", "eu-west-1", "eu-west-2", "eu-west-3", "il-central-1", "me-central-1", "me-south-1", "mx-central-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"],
    #         membership_arn: "MembershipArn",
    #         membership_status: "Active" # One of: ["Active", "Cancelled", "Terminated"]
    #       }
    #     ]
    #   }
    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListMemberships.html API Reference
    # @return [Types::ListMembershipsResponse]
    def list_memberships(params = {}, options = {})
      request = build_request(:list_memberships, params)
      request.send_request(options)
    end

    # <p>Returns currently configured tags on a resource.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>Required element for ListTagsForResource to provide the ARN to identify a specific resource.</p>
    # @example Invoke ListTagsForResource
    #   # Example operation for list_tags_for_resource
    #   params = {
    #     resource_arn: "arn:aws:security-ir:us-west-1:123456789012:membership/m-abcd1234efgh"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "key" => "example-tag-key",
    #       "value" => "example-tag-value"
    #     }
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
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListTagsForResource.html API Reference
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Adds a tag(s) to a designated resource.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>Required element for TagResource to identify the ARN for the resource to add a tag to.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Required element for ListTagsForResource to provide the content for a tag.</p>
    # @example Invoke TagResource
    #   # Example operation for tag_resource
    #   params = {
    #     resource_arn: "arn:aws:security-ir:us-west-1:123456789012:membership/m-abcd1234efgh",
    #     tags: {
    #       "key" => "example-tag-key",
    #       "value" => "example-tag-value"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    #   response.to_h #=>
    #   {}
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
    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_TagResource.html API Reference
    # @return [Types::TagResourceOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes a tag(s) from a designate resource.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>Required element for UnTagResource to identify the ARN for the resource to remove a tag from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Required element for UnTagResource to identify tag to remove.</p>
    # @example Invoke UntagResource
    #   # Example operation for untag_resource
    #   params = {
    #     resource_arn: "arn:aws:security-ir:us-west-1:123456789012:membership/m-abcd1234efgh",
    #     tag_keys: [
    #       "example-tag-key"
    #     ]
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    #   response.to_h #=>
    #   {}
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
    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UntagResource.html API Reference
    # @return [Types::UntagResourceOutput]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates an existing case.</p>
    # @param [Hash, Types::UpdateCaseRequest] params
    # @option params [String] :case_id
    #   <p>Required element for UpdateCase to identify the case ID for updates.</p>
    # @option params [String] :title
    #   <p>Optional element for UpdateCase to provide content for the title field.</p>
    # @option params [String] :description
    #   <p>Optional element for UpdateCase to provide content for the description field.</p>
    # @option params [Time] :reported_incident_start_date
    #   <p>Optional element for UpdateCase to provide content for the customer reported incident start date field. </p>
    # @option params [Time] :actual_incident_start_date
    #   <p>Optional element for UpdateCase to provide content for the incident start date field.</p>
    # @option params [String] :engagement_type
    #   <p>Optional element for UpdateCase to provide content for the engagement type field. <code>Available engagement types include Security Incident | Investigation</code>. </p>
    # @option params [Array<Types::Watcher>] :watchers_to_add
    #   <p>Optional element for UpdateCase to provide content to add additional watchers to a case.</p>
    # @option params [Array<Types::Watcher>] :watchers_to_delete
    #   <p>Optional element for UpdateCase to provide content to remove existing watchers from a case.</p>
    # @option params [Array<Types::ThreatActorIp>] :threat_actor_ip_addresses_to_add
    #   <p>Optional element for UpdateCase to provide content to add additional suspicious IP addresses related to a case. </p>
    # @option params [Array<Types::ThreatActorIp>] :threat_actor_ip_addresses_to_delete
    #   <p>Optional element for UpdateCase to provide content to remove suspicious IP addresses from a case.</p>
    # @option params [Array<String>] :impacted_services_to_add
    #   <p>Optional element for UpdateCase to provide content to add services impacted.</p>
    # @option params [Array<String>] :impacted_services_to_delete
    #   <p>Optional element for UpdateCase to provide content to remove services impacted.</p>
    # @option params [Array<Types::ImpactedAwsRegion>] :impacted_aws_regions_to_add
    #   <p>Optional element for UpdateCase to provide content to add regions impacted.</p>
    # @option params [Array<Types::ImpactedAwsRegion>] :impacted_aws_regions_to_delete
    #   <p>Optional element for UpdateCase to provide content to remove regions impacted.</p>
    # @option params [Array<String>] :impacted_accounts_to_add
    #   <p>Optional element for UpdateCase to provide content to add accounts impacted.</p> <note> <p> AWS account ID's may appear less than 12 characters and need to be zero-prepended. An example would be <code>123123123</code> which is nine digits, and with zero-prepend would be <code>000123123123</code>. Not zero-prepending to 12 digits could result in errors. </p> </note>
    # @option params [Array<String>] :impacted_accounts_to_delete
    #   <p>Optional element for UpdateCase to provide content to add accounts impacted.</p> <note> <p> AWS account ID's may appear less than 12 characters and need to be zero-prepended. An example would be <code>123123123</code> which is nine digits, and with zero-prepend would be <code>000123123123</code>. Not zero-prepending to 12 digits could result in errors. </p> </note>
    # @example Invoke UpdateCase
    #   # Example operation for update_case
    #   params = {
    #     case_id: "8403556009",
    #     title: "My sample case",
    #     description: "Case description",
    #     reported_incident_start_date: Time.parse("2023-03-27T15:32:01.789Z"),
    #     actual_incident_start_date: Time.parse("2023-03-25T15:32:01.789Z"),
    #     engagement_type: Investigation,
    #     watchers_to_add: [
    #       {
    #         email: "Sam@example.com",
    #         name: "Same",
    #         job_title: "CEO"
    #       }
    #     ],
    #     watchers_to_delete: [
    #       {
    #         email: "bob@example.com",
    #         name: "Bob",
    #         job_title: "CFO"
    #       }
    #     ],
    #     threat_actor_ip_addresses_to_add: [
    #       {
    #         ip_address: "190.160.190.160",
    #         user_agent: "Browser"
    #       }
    #     ],
    #     threat_actor_ip_addresses_to_delete: [
    #       {
    #         ip_address: "192.168.192.168",
    #         user_agent: "Browser"
    #       }
    #     ],
    #     impacted_services_to_add: [
    #       "Amazon EC2"
    #     ],
    #     impacted_services_to_delete: [
    #       "Amazon EKS"
    #     ],
    #     impacted_aws_regions_to_add: [
    #       {
    #         region: ap-southeast-1
    #       }
    #     ],
    #     impacted_aws_regions_to_delete: [
    #       {
    #         region: us-east-1
    #       }
    #     ],
    #     impacted_accounts_to_add: [
    #       "000000000000"
    #     ],
    #     impacted_accounts_to_delete: [
    #       "111111111111"
    #     ]
    #   }
    #   options = {}
    #   response = client.update_case(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     case_id: "CaseId", # required
    #     title: "CaseTitle",
    #     description: "CaseDescription",
    #     reported_incident_start_date: Time.now,
    #     actual_incident_start_date: Time.now,
    #     engagement_type: "Security Incident" # One of: ["Security Incident", "Investigation"],
    #     watchers_to_add: [
    #       {
    #         email: "EmailAddress", # required
    #         name: "PersonName",
    #         job_title: "JobTitle"
    #       }
    #     ],
    #     watchers_to_delete: [
    #       {
    #         email: "EmailAddress", # required
    #         name: "PersonName",
    #         job_title: "JobTitle"
    #       }
    #     ],
    #     threat_actor_ip_addresses_to_add: [
    #       {
    #         ip_address: "IPAddress", # required
    #         user_agent: "UserAgent"
    #       }
    #     ],
    #     threat_actor_ip_addresses_to_delete: [
    #       {
    #         ip_address: "IPAddress", # required
    #         user_agent: "UserAgent"
    #       }
    #     ],
    #     impacted_services_to_add: ["AwsService"],
    #     impacted_services_to_delete: ["AwsService"],
    #     impacted_aws_regions_to_add: [
    #       {
    #         region: "af-south-1" # One of: ["af-south-1", "ap-east-1", "ap-east-2", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-southeast-4", "ap-southeast-5", "ap-southeast-7", "ca-central-1", "ca-west-1", "cn-north-1", "cn-northwest-1", "eu-central-1", "eu-central-2", "eu-north-1", "eu-south-1", "eu-south-2", "eu-west-1", "eu-west-2", "eu-west-3", "il-central-1", "me-central-1", "me-south-1", "mx-central-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"], # required
    #       }
    #     ],
    #     impacted_aws_regions_to_delete: [
    #       {
    #         region: "af-south-1" # One of: ["af-south-1", "ap-east-1", "ap-east-2", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-southeast-4", "ap-southeast-5", "ap-southeast-7", "ca-central-1", "ca-west-1", "cn-north-1", "cn-northwest-1", "eu-central-1", "eu-central-2", "eu-north-1", "eu-south-1", "eu-south-2", "eu-west-1", "eu-west-2", "eu-west-3", "il-central-1", "me-central-1", "me-south-1", "mx-central-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"], # required
    #       }
    #     ],
    #     impacted_accounts_to_add: ["AWSAccountId"],
    #     impacted_accounts_to_delete: ["AWSAccountId"]
    #   }
    #   options = {}
    #   response = client.update_case(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCase.html API Reference
    # @return [Types::UpdateCaseResponse]
    def update_case(params = {}, options = {})
      request = build_request(:update_case, params)
      request.send_request(options)
    end

    # <p>Updates an existing case comment.</p>
    # @param [Hash, Types::UpdateCaseCommentRequest] params
    # @option params [String] :case_id
    #   <p>Required element for UpdateCaseComment to identify the case ID containing the comment to be updated. </p>
    # @option params [String] :comment_id
    #   <p>Required element for UpdateCaseComment to identify the case ID to be updated.</p>
    # @option params [String] :body
    #   <p>Required element for UpdateCaseComment to identify the content for the comment to be updated.</p>
    # @example Invoke UpdateCaseComment
    #   # Example operation for update_case_comment
    #   params = {
    #     case_id: "8403556009",
    #     comment_id: "000000",
    #     body: "Updated case comment."
    #   }
    #   options = {}
    #   response = client.update_case_comment(params, options)
    #   response.to_h #=>
    #   {
    #     body: "Updated case comment.",
    #     comment_id: "000000"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     case_id: "CaseId", # required
    #     comment_id: "CommentId", # required
    #     body: "CommentBody", # required
    #   }
    #   options = {}
    #   response = client.update_case_comment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     comment_id: "CommentId", # required
    #     body: "CommentBody"
    #   }
    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCaseComment.html API Reference
    # @return [Types::UpdateCaseCommentResponse]
    def update_case_comment(params = {}, options = {})
      request = build_request(:update_case_comment, params)
      request.send_request(options)
    end

    # <p>Updates the state transitions for a designated cases.</p> <p> <b>Self-managed</b>: the following states are available for self-managed cases. </p> <ul> <li> <p>Submitted → Detection and Analysis</p> </li> <li> <p>Detection and Analysis → Containment, Eradication, and Recovery</p> </li> <li> <p>Detection and Analysis → Post-incident Activities</p> </li> <li> <p>Containment, Eradication, and Recovery → Detection and Analysis</p> </li> <li> <p>Containment, Eradication, and Recovery → Post-incident Activities</p> </li> <li> <p>Post-incident Activities → Containment, Eradication, and Recovery</p> </li> <li> <p>Post-incident Activities → Detection and Analysis</p> </li> <li> <p>Any → Closed</p> </li> </ul> <p> <b>AWS supported</b>: You must use the <code>CloseCase</code> API to close. </p>
    # @param [Hash, Types::UpdateCaseStatusRequest] params
    # @option params [String] :case_id
    #   <p>Required element for UpdateCaseStatus to identify the case to update.</p>
    # @option params [String] :case_status
    #   <p>Required element for UpdateCaseStatus to identify the status for a case. Options include <code>Submitted | Detection and Analysis | Containment, Eradication and Recovery | Post-incident Activities</code>. </p>
    # @example Invoke UpdateCaseStatus
    #   # Example operation for update_case_status
    #   params = {
    #     case_id: "8403556009",
    #     case_status: Post-incident Activities
    #   }
    #   options = {}
    #   response = client.update_case_status(params, options)
    #   response.to_h #=>
    #   {
    #     case_status: Post-incident Activities
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     case_id: "CaseId", # required
    #     case_status: "Submitted" # One of: ["Submitted", "Detection and Analysis", "Containment, Eradication and Recovery", "Post-incident Activities"], # required
    #   }
    #   options = {}
    #   response = client.update_case_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     case_status: "Submitted" # One of: ["Submitted", "Detection and Analysis", "Containment, Eradication and Recovery", "Post-incident Activities"]
    #   }
    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCaseStatus.html API Reference
    # @return [Types::UpdateCaseStatusResponse]
    def update_case_status(params = {}, options = {})
      request = build_request(:update_case_status, params)
      request.send_request(options)
    end

    # <p>Updates membership configuration.</p>
    # @param [Hash, Types::UpdateMembershipRequest] params
    # @option params [String] :membership_id
    #   <p>Required element for UpdateMembership to identify the membership to update.</p>
    # @option params [String] :membership_name
    #   <p>Optional element for UpdateMembership to update the membership name.</p>
    # @option params [Array<Types::IncidentResponder>] :incident_response_team
    #   <p>Optional element for UpdateMembership to update the membership name.</p>
    # @option params [Array<Types::OptInFeature>] :opt_in_features
    #   <p>Optional element for UpdateMembership to enable or disable opt-in features for the service.</p>
    # @option params [Types::MembershipAccountsConfigurationsUpdate] :membership_accounts_configurations_update
    #   <p>The <code>membershipAccountsConfigurationsUpdate</code> field in the <code>UpdateMembershipRequest</code> structure allows you to update the configuration settings for accounts within a membership. </p> <p>This field is optional and contains a structure of type <code>MembershipAccountsConfigurationsUpdate </code> that specifies the updated account configurations for the membership. </p>
    # @option params [Boolean] :undo_membership_cancellation
    #   <p>The <code>undoMembershipCancellation</code> parameter is a boolean flag that indicates whether to reverse a previously requested membership cancellation. When set to true, this will revoke the cancellation request and maintain the membership status. </p> <p>This parameter is optional and can be used in scenarios where you need to restore a membership that was marked for cancellation but hasn't been fully terminated yet. </p> <ul> <li> <p>If set to <code>true</code>, the cancellation request will be revoked </p> </li> <li> <p>If set to <code>false</code> the service will throw a ValidationException. </p> </li> </ul>
    # @example Invoke UpdateMembership
    #   # Example operation for update_membership
    #   params = {
    #     membership_id: "m-abcd1234efgh",
    #     membership_name: "New membership name",
    #     incident_response_team: [
    #       {
    #         name: "Bob Jones",
    #         job_title: "Security Responder",
    #         email: "bob.jones@gmail.com"
    #       },
    #       {
    #         email: "alice@example.com",
    #         name: "Alice",
    #         job_title: "CEO"
    #       }
    #     ],
    #     opt_in_features: [
    #       {
    #         feature_name: Triage,
    #         is_enabled: true
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_membership(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_id: "MembershipId", # required
    #     membership_name: "MembershipName",
    #     incident_response_team: [
    #       {
    #         name: "IncidentResponderName", # required
    #         job_title: "JobTitle", # required
    #         email: "EmailAddress", # required
    #       }
    #     ],
    #     opt_in_features: [
    #       {
    #         feature_name: "Triage" # One of: ["Triage"], # required
    #         is_enabled: false, # required
    #       }
    #     ],
    #     membership_accounts_configurations_update: {
    #       cover_entire_organization: false,
    #       organizational_units_to_add: ["OrganizationalUnitId"],
    #       organizational_units_to_remove: ["OrganizationalUnitId"]
    #     },
    #     undo_membership_cancellation: false
    #   }
    #   options = {}
    #   response = client.update_membership(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateMembership.html API Reference
    # @return [Types::UpdateMembershipResponse]
    def update_membership(params = {}, options = {})
      request = build_request(:update_membership, params)
      request.send_request(options)
    end

    # <p>Updates the resolver type for a case.</p> <important> <p>This is a one-way action and cannot be reversed.</p> </important>
    # @param [Hash, Types::UpdateResolverTypeRequest] params
    # @option params [String] :case_id
    #   <p>Required element for UpdateResolverType to identify the case to update.</p>
    # @option params [String] :resolver_type
    #   <p>Required element for UpdateResolverType to identify the new resolver.</p>
    # @example Invoke UpdateResolverType
    #   # Example operation for update_resolver_type
    #   params = {
    #     case_id: "8403556009",
    #     resolver_type: AWS
    #   }
    #   options = {}
    #   response = client.update_resolver_type(params, options)
    #   response.to_h #=>
    #   {
    #     case_status: Detection and Analysis,
    #     resolver_type: AWS,
    #     case_id: "8403556009"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     case_id: "CaseId", # required
    #     resolver_type: "AWS" # One of: ["AWS", "Self"], # required
    #   }
    #   options = {}
    #   response = client.update_resolver_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     case_id: "CaseId", # required
    #     case_status: "Submitted" # One of: ["Submitted", "Acknowledged", "Detection and Analysis", "Containment, Eradication and Recovery", "Post-incident Activities", "Ready to Close", "Closed"],
    #     resolver_type: "AWS" # One of: ["AWS", "Self"]
    #   }
    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateResolverType.html API Reference
    # @return [Types::UpdateResolverTypeResponse]
    def update_resolver_type(params = {}, options = {})
      request = build_request(:update_resolver_type, params)
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
      context[:gem_name] = 'aws-sdk-securityir'
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
