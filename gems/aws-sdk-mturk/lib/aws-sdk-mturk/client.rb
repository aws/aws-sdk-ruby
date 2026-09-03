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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:mturk)

module Aws::MTurk
  # An API client for Aws::MTurk.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::MTurkRequesterServiceV20170117
    @identifier = :mturk

    add_plugin(::Aws::MTurk::Plugins::Endpoint)
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
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::MTurk::EndpointProvider)
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
    #  `#transmit(request)` (returning a stream) to swap the transport, or a
    #  directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
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

    # <p>
    #             The <code>AcceptQualificationRequest</code> operation approves a Worker's request for a Qualification.
    #         </p>
    #         <p>
    #             Only the owner of the Qualification type can grant a Qualification request for that	type.
    #         </p>
    #         <p>
    #             A successful request for the <code>AcceptQualificationRequest</code> operation
    #             returns with no errors and an empty body.
    #         </p>
    # @param [Hash, Types::AcceptQualificationRequestRequest] params
    # @option params [String] :qualification_request_id
    #   <p>The ID of the Qualification request, as returned by the <code>GetQualificationRequests</code> operation.</p>
    # @option params [Integer] :integer_value
    #   <p>
    #               The value of the Qualification. You can omit this value if you are using the
    #               presence or absence of the Qualification as the basis for a HIT requirement.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     qualification_request_id: "String", # required
    #     integer_value: 1
    #   }
    #   options = {}
    #   response = client.accept_qualification_request(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AcceptQualificationRequestResponse]
    def accept_qualification_request(params = {}, options = {})
      request = build_request(:accept_qualification_request, params)
      request.send_request(options)
    end

    # <p>
    #             The <code>ApproveAssignment</code> operation approves the results of a completed assignment.
    #         </p>
    #         <p>
    #             Approving an assignment initiates two payments from the Requester's Amazon.com account
    #         </p>
    #         <ul>
    #             <li>
    #                 <p>
    #                     The Worker who submitted the results is paid the reward specified in the HIT.
    #                 </p>
    #             </li>
    #             <li>
    #                 <p>
    #                     Amazon Mechanical Turk fees are debited.
    #                 </p>
    #             </li>
    #          </ul>
    #         <p>
    #             If the Requester's account does not have adequate funds for these payments,
    #             the call to ApproveAssignment returns an exception, and the approval is not processed.
    #             You can include an optional feedback message with the approval,
    #             which the Worker can see in the Status section of the web site.
    #         </p>
    #         <p>
    #             You can also call this operation for assignments that were previous rejected
    #             and approve them by explicitly overriding the previous rejection.
    #             This only works on rejected assignments that were submitted within the previous 30 days
    #             and only if the assignment's related HIT has not been deleted.
    #         </p>
    # @param [Hash, Types::ApproveAssignmentRequest] params
    # @option params [String] :assignment_id
    #   <p>
    #               The ID of the assignment. The assignment must correspond to a HIT created by the Requester.
    #           </p>
    # @option params [String] :requester_feedback
    #   <p>
    #               A message for the Worker, which the Worker can see in the Status section of the web site.
    #           </p>
    # @option params [Boolean] :override_rejection
    #   <p>
    #               A flag indicating that an assignment should be approved even if it was previously rejected. Defaults to <code>False</code>.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assignment_id: "EntityId", # required
    #     requester_feedback: "String",
    #     override_rejection: false
    #   }
    #   options = {}
    #   response = client.approve_assignment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ApproveAssignmentResponse]
    def approve_assignment(params = {}, options = {})
      request = build_request(:approve_assignment, params)
      request.send_request(options)
    end

    # <p>
    #             The <code>AssociateQualificationWithWorker</code> operation gives a Worker a
    #             Qualification. <code>AssociateQualificationWithWorker</code> does not require that the Worker
    #             submit a Qualification request. It gives the Qualification directly to the Worker.
    #         </p>
    # 
    #         <p>
    #             You can only assign a Qualification of a Qualification type that you created (using
    #             the <code>CreateQualificationType</code> operation).
    #         </p>
    # 
    #         <note>
    #             <p>
    #                 Note: <code>AssociateQualificationWithWorker</code> does not affect any pending Qualification
    #                 requests for the Qualification by the Worker. If you assign a Qualification to a
    #                 Worker, then later grant a Qualification request made by the Worker, the granting of
    #                 the request may modify the Qualification score. To resolve a pending Qualification
    #                 request without affecting the Qualification the Worker already has, reject the
    #                 request with the <code>RejectQualificationRequest</code> operation.
    #             </p>
    #         </note>
    # @param [Hash, Types::AssociateQualificationWithWorkerRequest] params
    # @option params [String] :qualification_type_id
    #   <p>The ID of the Qualification type to use for the assigned Qualification.</p>
    # @option params [String] :worker_id
    #   <p>
    #               The ID of the Worker to whom the Qualification is being assigned.
    #               Worker IDs are included with submitted HIT assignments and Qualification requests.
    #           </p>
    # @option params [Integer] :integer_value
    #   <p>The value of the Qualification to assign.</p>
    # @option params [Boolean] :send_notification
    #   <p>
    #               Specifies whether to send a notification email message to the Worker
    #               saying that the qualification was assigned to the Worker.
    #               Note: this is true by default.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     qualification_type_id: "EntityId", # required
    #     worker_id: "CustomerId", # required
    #     integer_value: 1,
    #     send_notification: false
    #   }
    #   options = {}
    #   response = client.associate_qualification_with_worker(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateQualificationWithWorkerResponse]
    def associate_qualification_with_worker(params = {}, options = {})
      request = build_request(:associate_qualification_with_worker, params)
      request.send_request(options)
    end

    # <p>
    #             The
    #             <code>CreateAdditionalAssignmentsForHIT</code>
    #             operation increases the maximum number of assignments of an existing HIT.
    #         </p>
    #         <p>
    #             To extend the maximum number of assignments, specify the number of additional assignments.</p>
    #         <note>
    #             <ul>
    #                <li>
    #                     <p>HITs created with fewer than 10 assignments cannot be extended to have 10 or more assignments. Attempting to add assignments in a way that brings the total number of assignments for a HIT from fewer than 10 assignments to 10 or more
    #                         assignments will result in an
    #                         <code>AWS.MechanicalTurk.InvalidMaximumAssignmentsIncrease</code>
    #                         exception.</p>
    #                 </li>
    #                <li>
    #                     <p>HITs that were created before July 22, 2015 cannot be extended. Attempting to extend HITs that were created before July 22, 2015 will result in an
    #                         <code>AWS.MechanicalTurk.HITTooOldForExtension</code>
    #                         exception.
    #                     </p>
    #                 </li>
    #             </ul>
    #         </note>
    # @param [Hash, Types::CreateAdditionalAssignmentsForHITRequest] params
    # @option params [String] :hit_id
    #   <p>The ID of the HIT to extend.</p>
    # @option params [Integer] :number_of_additional_assignments
    #   <p>The number of additional assignments to request for this HIT.</p>
    # @option params [String] :unique_request_token
    #   <p>
    #               A unique identifier for this request, which allows you to retry the call on error
    #               without extending the HIT multiple times.
    #               This is useful in cases such as network timeouts where it is unclear whether or not
    #               the call succeeded on the server. If the extend HIT already exists in the system
    #               from a previous call using the same <code>UniqueRequestToken</code>,
    #               subsequent calls will return an error with a message containing the request ID.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hit_id: "EntityId", # required
    #     number_of_additional_assignments: 1, # required
    #     unique_request_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.create_additional_assignments_for_hit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateAdditionalAssignmentsForHITResponse]
    def create_additional_assignments_for_hit(params = {}, options = {})
      request = build_request(:create_additional_assignments_for_hit, params)
      request.send_request(options)
    end

    # <p>The <code>CreateHIT</code> operation creates a new Human Intelligence Task (HIT).
    #             The new HIT is made available for Workers to find and accept on the Amazon Mechanical
    #             Turk website. </p>
    #         <p>
    #             This operation allows you to specify a new HIT by passing in values for the properties of the HIT, such as its title, reward amount and number of assignments. When you pass these values to <code>CreateHIT</code>, a new HIT is created for you, with a new <code>HITTypeID</code>. The HITTypeID can be used to create additional HITs in the future without needing to specify common parameters such as the title, description and reward amount each time.</p>
    #         <p> An alternative way to create HITs is to first generate a HITTypeID using the <code>CreateHITType</code> operation and then call the <code>CreateHITWithHITType</code> operation. This is the recommended best practice for Requesters who are creating large numbers of HITs.
    #         </p>
    # 
    #         <p>CreateHIT also supports several ways to provide question data: by providing a value
    #             for the <code>Question</code> parameter that fully specifies the contents of the HIT, or by providing
    #             a <code>HitLayoutId</code> and associated <code>HitLayoutParameters</code>.
    #         </p>
    # 
    #         <note>
    #             <p> If a HIT is created with 10 or more maximum assignments, there is an additional fee. For more information, see
    #             <a href="https://requester.mturk.com/pricing">Amazon Mechanical Turk Pricing</a>.</p>
    #         </note>
    # @param [Hash, Types::CreateHITRequest] params
    # @option params [Integer] :max_assignments
    #   <p>
    #               The number of times the HIT can be accepted and completed before the HIT becomes unavailable.
    #           </p>
    # @option params [Integer] :auto_approval_delay_in_seconds
    #   <p>
    #               The number of seconds after an assignment for the HIT has been submitted,
    #               after which the assignment is considered Approved automatically
    #               unless the Requester explicitly rejects it.
    #           </p>
    # @option params [Integer] :lifetime_in_seconds
    #   <p>
    #               An amount of time, in seconds, after which the HIT is no longer available for users to accept.
    #               After the lifetime of the HIT elapses, the HIT no longer appears in HIT searches,
    #               even if not all of the assignments for the HIT have been accepted.
    #           </p>
    # @option params [Integer] :assignment_duration_in_seconds
    #   <p>
    #               The amount of time, in seconds, that a Worker has to complete the HIT after accepting it.
    #               If a Worker does not complete the assignment within the specified duration,
    #               the assignment is considered abandoned. If the HIT is still active
    #               (that is, its lifetime has not elapsed), the assignment becomes available
    #               for other users to find and accept.
    #           </p>
    # @option params [String] :reward
    #   <p>
    #               The amount of money the Requester will pay a Worker for successfully completing the HIT.
    #           </p>
    # @option params [String] :title
    #   <p>
    #               The title of the HIT. A title should be short and descriptive about the kind of task the HIT contains.
    #               On the Amazon Mechanical Turk web site, the HIT title appears in search results,
    #               and everywhere the HIT is mentioned.
    #           </p>
    # @option params [String] :keywords
    #   <p>
    #               One or more words or phrases that describe the HIT, separated by commas.
    #               These words are used in searches to find HITs.
    #           </p>
    # @option params [String] :description
    #   <p>
    #               A general description of the HIT. A description includes detailed information about the kind of task
    #               the HIT contains. On the Amazon Mechanical Turk web site, the HIT description appears in the expanded
    #               view of search results, and in the HIT and assignment screens. A good description gives the user enough
    #               information to evaluate the HIT before accepting it.
    #           </p>
    # @option params [String] :question
    #   <p>
    #               The data the person completing the HIT uses to produce the results.
    #           </p>
    #           <p>
    #               Constraints: Must be a QuestionForm data structure, an ExternalQuestion data structure,
    #               or an HTMLQuestion data structure. The XML question data must not be larger than
    #               64 kilobytes (65,535 bytes) in size, including whitespace.
    #           </p>
    #           <p>Either a Question parameter or a HITLayoutId parameter must be provided.</p>
    # @option params [String] :requester_annotation
    #   <p>
    #               An arbitrary data field.
    #               The RequesterAnnotation parameter lets your application attach arbitrary data
    #               to the HIT for tracking purposes.
    #               For example, this parameter could be an identifier internal to the Requester's application
    #               that corresponds with the HIT.
    #           </p>
    #           <p>
    #               The RequesterAnnotation parameter for a HIT is only visible to the Requester who created the HIT.
    #               It is not shown to the Worker, or any other Requester.
    #           </p>
    #           <p>
    #               The RequesterAnnotation parameter may be different for each HIT you submit.
    #               It does not affect how your HITs are grouped.
    #           </p>
    # @option params [Array<Types::QualificationRequirement>] :qualification_requirements
    #   <p>
    #               Conditions that a Worker's Qualifications must meet in order
    #               to accept the HIT. A HIT can have between zero and ten
    #               Qualification requirements. All requirements must be met in
    #               order for a Worker to accept the HIT. Additionally, other
    #               actions can be restricted using the <code>ActionsGuarded</code>
    #               field on each <code>QualificationRequirement</code> structure.
    #           </p>
    # @option params [String] :unique_request_token
    #   <p>
    #               A unique identifier for this request which allows you to retry the call
    #               on error without creating duplicate HITs.
    #               This is useful in cases such as network timeouts where it is unclear whether or not
    #               the call succeeded on the server.
    #               If the HIT already exists in the system from a previous call using the same UniqueRequestToken,
    #               subsequent calls will return a AWS.MechanicalTurk.HitAlreadyExists error
    #               with a message containing the HITId.
    #           </p>
    #           <note>
    #               <p>
    #                   Note: It is your responsibility to ensure uniqueness of the token.
    #                   The unique token expires after 24 hours. Subsequent calls using the same
    #                   UniqueRequestToken made after the 24 hour limit could create duplicate HITs.
    #               </p>
    #           </note>
    # @option params [Types::ReviewPolicy] :assignment_review_policy
    #   <p>
    #               The Assignment-level Review Policy applies to the assignments under the HIT.
    #               You can specify for Mechanical Turk to take various actions based on the policy.
    #           </p>
    # @option params [Types::ReviewPolicy] :hit_review_policy
    #   <p>
    #               The HIT-level Review Policy applies to the HIT.
    #               You can specify for Mechanical Turk to take various actions based on the policy.
    #           </p>
    # @option params [String] :hit_layout_id
    #   <p>
    #               The HITLayoutId allows you to use a pre-existing HIT design with placeholder values
    #               and create an additional HIT by providing those values as HITLayoutParameters.
    #           </p>
    #           <p>
    #               Constraints: Either a Question parameter or a HITLayoutId parameter must be provided.
    #           </p>
    # @option params [Array<Types::HITLayoutParameter>] :hit_layout_parameters
    #   <p>
    #               If the HITLayoutId is provided, any placeholder values must be filled in with values
    #               using the HITLayoutParameter structure. For more information, see HITLayout.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_assignments: 1,
    #     auto_approval_delay_in_seconds: 1,
    #     lifetime_in_seconds: 1, # required
    #     assignment_duration_in_seconds: 1, # required
    #     reward: "CurrencyAmount", # required
    #     title: "String", # required
    #     keywords: "String",
    #     description: "String", # required
    #     question: "String",
    #     requester_annotation: "String",
    #     qualification_requirements: [
    #       {
    #         qualification_type_id: "String", # required
    #         comparator: "LessThan" # One of: ["LessThan", "LessThanOrEqualTo", "GreaterThan", "GreaterThanOrEqualTo", "EqualTo", "NotEqualTo", "Exists", "DoesNotExist", "In", "NotIn"], # required
    #         integer_values: [1],
    #         locale_values: [
    #           {
    #             country: "CountryParameters", # required
    #             subdivision: "CountryParameters"
    #           }
    #         ],
    #         required_to_preview: false,
    #         actions_guarded: "Accept" # One of: ["Accept", "PreviewAndAccept", "DiscoverPreviewAndAccept"]
    #       }
    #     ],
    #     unique_request_token: "IdempotencyToken",
    #     assignment_review_policy: {
    #       policy_name: "String", # required
    #       parameters: [
    #         {
    #           key: "String",
    #           values: ["String"],
    #           map_entries: [
    #             {
    #               key: "String",
    #               values: ["String"]
    #             }
    #           ]
    #         }
    #       ]
    #     },
    #     hit_review_policy: {
    #       policy_name: "String", # required
    #       parameters: [
    #         {
    #           key: "String",
    #           values: ["String"],
    #           map_entries: [
    #             {
    #               key: "String",
    #               values: ["String"]
    #             }
    #           ]
    #         }
    #       ]
    #     },
    #     hit_layout_id: "EntityId",
    #     hit_layout_parameters: [
    #       {
    #         name: "String", # required
    #         value: "String", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_hit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hit: {
    #       hit_id: "EntityId",
    #       hit_type_id: "EntityId",
    #       hit_group_id: "EntityId",
    #       hit_layout_id: "EntityId",
    #       creation_time: Time.now,
    #       title: "String",
    #       description: "String",
    #       question: "String",
    #       keywords: "String",
    #       hit_status: "Assignable" # One of: ["Assignable", "Unassignable", "Reviewable", "Reviewing", "Disposed"],
    #       max_assignments: 1,
    #       reward: "CurrencyAmount",
    #       auto_approval_delay_in_seconds: 1,
    #       expiration: Time.now,
    #       assignment_duration_in_seconds: 1,
    #       requester_annotation: "String",
    #       qualification_requirements: [
    #         {
    #           qualification_type_id: "String", # required
    #           comparator: "LessThan" # One of: ["LessThan", "LessThanOrEqualTo", "GreaterThan", "GreaterThanOrEqualTo", "EqualTo", "NotEqualTo", "Exists", "DoesNotExist", "In", "NotIn"], # required
    #           integer_values: [1],
    #           locale_values: [
    #             {
    #               country: "CountryParameters", # required
    #               subdivision: "CountryParameters"
    #             }
    #           ],
    #           required_to_preview: false,
    #           actions_guarded: "Accept" # One of: ["Accept", "PreviewAndAccept", "DiscoverPreviewAndAccept"]
    #         }
    #       ],
    #       hit_review_status: "NotReviewed" # One of: ["NotReviewed", "MarkedForReview", "ReviewedAppropriate", "ReviewedInappropriate"],
    #       number_of_assignments_pending: 1,
    #       number_of_assignments_available: 1,
    #       number_of_assignments_completed: 1
    #     }
    #   }
    # @return [Types::CreateHITResponse]
    def create_hit(params = {}, options = {})
      request = build_request(:create_hit, params)
      request.send_request(options)
    end

    # <p>
    #             The <code>CreateHITType</code> operation creates a new HIT type. This operation
    #             allows you to define a standard set of HIT properties to use when creating HITs.
    #             If you register a HIT type with values that match an existing HIT type, the HIT type
    #             ID of the existing type will be returned.
    #         </p>
    # @param [Hash, Types::CreateHITTypeRequest] params
    # @option params [Integer] :auto_approval_delay_in_seconds
    #   <p>
    #               The number of seconds after an assignment for the HIT has been submitted,
    #               after which the assignment is considered Approved automatically
    #               unless the Requester explicitly rejects it.
    #           </p>
    # @option params [Integer] :assignment_duration_in_seconds
    #   <p>
    #               The amount of time, in seconds, that a Worker has to complete the HIT after accepting it.
    #               If a Worker does not complete the assignment within the specified duration,
    #               the assignment is considered abandoned. If the HIT is still active
    #               (that is, its lifetime has not elapsed), the assignment becomes available
    #               for other users to find and accept.
    #           </p>
    # @option params [String] :reward
    #   <p>
    #               The amount of money the Requester will pay a Worker for successfully completing the HIT.
    #           </p>
    # @option params [String] :title
    #   <p>
    #               The title of the HIT. A title should be short and descriptive about the kind of task the HIT contains.
    #               On the Amazon Mechanical Turk web site, the HIT title appears in search results,
    #               and everywhere the HIT is mentioned.
    #           </p>
    # @option params [String] :keywords
    #   <p>
    #               One or more words or phrases that describe the HIT, separated by commas.
    #               These words are used in searches to find HITs.
    #           </p>
    # @option params [String] :description
    #   <p>
    #               A general description of the HIT. A description includes detailed information about the kind of task
    #               the HIT contains. On the Amazon Mechanical Turk web site, the HIT description appears in the expanded
    #               view of search results, and in the HIT and assignment screens. A good description gives the user enough
    #               information to evaluate the HIT before accepting it.
    #           </p>
    # @option params [Array<Types::QualificationRequirement>] :qualification_requirements
    #   <p>
    #               Conditions that a Worker's Qualifications must meet in order
    #               to accept the HIT. A HIT can have between zero and ten
    #               Qualification requirements. All requirements must be met in
    #               order for a Worker to accept the HIT. Additionally, other
    #               actions can be restricted using the <code>ActionsGuarded</code>
    #               field on each <code>QualificationRequirement</code> structure.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_approval_delay_in_seconds: 1,
    #     assignment_duration_in_seconds: 1, # required
    #     reward: "CurrencyAmount", # required
    #     title: "String", # required
    #     keywords: "String",
    #     description: "String", # required
    #     qualification_requirements: [
    #       {
    #         qualification_type_id: "String", # required
    #         comparator: "LessThan" # One of: ["LessThan", "LessThanOrEqualTo", "GreaterThan", "GreaterThanOrEqualTo", "EqualTo", "NotEqualTo", "Exists", "DoesNotExist", "In", "NotIn"], # required
    #         integer_values: [1],
    #         locale_values: [
    #           {
    #             country: "CountryParameters", # required
    #             subdivision: "CountryParameters"
    #           }
    #         ],
    #         required_to_preview: false,
    #         actions_guarded: "Accept" # One of: ["Accept", "PreviewAndAccept", "DiscoverPreviewAndAccept"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_hit_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hit_type_id: "EntityId"
    #   }
    # @return [Types::CreateHITTypeResponse]
    def create_hit_type(params = {}, options = {})
      request = build_request(:create_hit_type, params)
      request.send_request(options)
    end

    # <p>
    #             The <code>CreateHITWithHITType</code> operation creates a new Human Intelligence Task (HIT)
    #             using an existing HITTypeID generated by the <code>CreateHITType</code> operation.
    #         </p>
    #         <p>
    #             This is an alternative way to create HITs from the <code>CreateHIT</code> operation.
    #             This is the recommended best practice for Requesters who are creating large numbers of HITs.
    #         </p>
    #         <p>CreateHITWithHITType also supports several ways to provide question data:
    #             by providing a value for the <code>Question</code> parameter that fully specifies the contents of the HIT,
    #             or by providing a <code>HitLayoutId</code> and associated <code>HitLayoutParameters</code>.
    #         </p>
    #         <note>
    #             <p>
    #                 If a HIT is created with 10 or more maximum assignments, there is an additional fee.
    #                 For more information, see <a href="https://requester.mturk.com/pricing">Amazon Mechanical Turk Pricing</a>.
    #             </p>
    #         </note>
    # @param [Hash, Types::CreateHITWithHITTypeRequest] params
    # @option params [String] :hit_type_id
    #   <p>The HIT type ID you want to create this HIT with.</p>
    # @option params [Integer] :max_assignments
    #   <p>
    #               The number of times the HIT can be accepted and completed before the HIT becomes unavailable.
    #           </p>
    # @option params [Integer] :lifetime_in_seconds
    #   <p>
    #               An amount of time, in seconds, after which the HIT is no longer available for users to accept.
    #               After the lifetime of the HIT elapses, the HIT no longer appears in HIT searches,
    #               even if not all of the assignments for the HIT have been accepted.
    #           </p>
    # @option params [String] :question
    #   <p>
    #               The data the person completing the HIT uses to produce the results.
    #           </p>
    #           <p>
    #               Constraints: Must be a QuestionForm data structure, an ExternalQuestion data structure,
    #               or an HTMLQuestion data structure. The XML question data must not be larger than
    #               64 kilobytes (65,535 bytes) in size, including whitespace.
    #           </p>
    #           <p>Either a Question parameter or a HITLayoutId parameter must be provided.</p>
    # @option params [String] :requester_annotation
    #   <p>
    #               An arbitrary data field.
    #               The RequesterAnnotation parameter lets your application attach arbitrary data
    #               to the HIT for tracking purposes.
    #               For example, this parameter could be an identifier internal to the Requester's application
    #               that corresponds with the HIT.
    #           </p>
    #           <p>
    #               The RequesterAnnotation parameter for a HIT is only visible to the Requester who created the HIT.
    #               It is not shown to the Worker, or any other Requester.
    #           </p>
    #           <p>
    #               The RequesterAnnotation parameter may be different for each HIT you submit.
    #               It does not affect how your HITs are grouped.
    #           </p>
    # @option params [String] :unique_request_token
    #   <p>
    #               A unique identifier for this request which allows you to retry the call
    #               on error without creating duplicate HITs.
    #               This is useful in cases such as network timeouts where it is unclear whether or not
    #               the call succeeded on the server.
    #               If the HIT already exists in the system from a previous call using the same UniqueRequestToken,
    #               subsequent calls will return a AWS.MechanicalTurk.HitAlreadyExists error
    #               with a message containing the HITId.
    #           </p>
    #           <note>
    #               <p>
    #                   Note: It is your responsibility to ensure uniqueness of the token.
    #                   The unique token expires after 24 hours. Subsequent calls using the same
    #                   UniqueRequestToken made after the 24 hour limit could create duplicate HITs.
    #               </p>
    #           </note>
    # @option params [Types::ReviewPolicy] :assignment_review_policy
    #   <p>
    #               The Assignment-level Review Policy applies to the assignments under the HIT.
    #               You can specify for Mechanical Turk to take various actions based on the policy.
    #           </p>
    # @option params [Types::ReviewPolicy] :hit_review_policy
    #   <p>
    #               The HIT-level Review Policy applies to the HIT.
    #               You can specify for Mechanical Turk to take various actions based on the policy.
    #           </p>
    # @option params [String] :hit_layout_id
    #   <p>
    #               The HITLayoutId allows you to use a pre-existing HIT design with placeholder values
    #               and create an additional HIT by providing those values as HITLayoutParameters.
    #           </p>
    #           <p>
    #               Constraints: Either a Question parameter or a HITLayoutId parameter must be provided.
    #           </p>
    # @option params [Array<Types::HITLayoutParameter>] :hit_layout_parameters
    #   <p>
    #               If the HITLayoutId is provided, any placeholder values must be filled in with values
    #               using the HITLayoutParameter structure. For more information, see HITLayout.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hit_type_id: "EntityId", # required
    #     max_assignments: 1,
    #     lifetime_in_seconds: 1, # required
    #     question: "String",
    #     requester_annotation: "String",
    #     unique_request_token: "IdempotencyToken",
    #     assignment_review_policy: {
    #       policy_name: "String", # required
    #       parameters: [
    #         {
    #           key: "String",
    #           values: ["String"],
    #           map_entries: [
    #             {
    #               key: "String",
    #               values: ["String"]
    #             }
    #           ]
    #         }
    #       ]
    #     },
    #     hit_review_policy: {
    #       policy_name: "String", # required
    #       parameters: [
    #         {
    #           key: "String",
    #           values: ["String"],
    #           map_entries: [
    #             {
    #               key: "String",
    #               values: ["String"]
    #             }
    #           ]
    #         }
    #       ]
    #     },
    #     hit_layout_id: "EntityId",
    #     hit_layout_parameters: [
    #       {
    #         name: "String", # required
    #         value: "String", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_hit_with_hit_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hit: {
    #       hit_id: "EntityId",
    #       hit_type_id: "EntityId",
    #       hit_group_id: "EntityId",
    #       hit_layout_id: "EntityId",
    #       creation_time: Time.now,
    #       title: "String",
    #       description: "String",
    #       question: "String",
    #       keywords: "String",
    #       hit_status: "Assignable" # One of: ["Assignable", "Unassignable", "Reviewable", "Reviewing", "Disposed"],
    #       max_assignments: 1,
    #       reward: "CurrencyAmount",
    #       auto_approval_delay_in_seconds: 1,
    #       expiration: Time.now,
    #       assignment_duration_in_seconds: 1,
    #       requester_annotation: "String",
    #       qualification_requirements: [
    #         {
    #           qualification_type_id: "String", # required
    #           comparator: "LessThan" # One of: ["LessThan", "LessThanOrEqualTo", "GreaterThan", "GreaterThanOrEqualTo", "EqualTo", "NotEqualTo", "Exists", "DoesNotExist", "In", "NotIn"], # required
    #           integer_values: [1],
    #           locale_values: [
    #             {
    #               country: "CountryParameters", # required
    #               subdivision: "CountryParameters"
    #             }
    #           ],
    #           required_to_preview: false,
    #           actions_guarded: "Accept" # One of: ["Accept", "PreviewAndAccept", "DiscoverPreviewAndAccept"]
    #         }
    #       ],
    #       hit_review_status: "NotReviewed" # One of: ["NotReviewed", "MarkedForReview", "ReviewedAppropriate", "ReviewedInappropriate"],
    #       number_of_assignments_pending: 1,
    #       number_of_assignments_available: 1,
    #       number_of_assignments_completed: 1
    #     }
    #   }
    # @return [Types::CreateHITWithHITTypeResponse]
    def create_hit_with_hit_type(params = {}, options = {})
      request = build_request(:create_hit_with_hit_type, params)
      request.send_request(options)
    end

    # <p>
    #             The
    #             <code>CreateQualificationType</code>
    #             operation creates a new Qualification type, which is represented by a
    #             <code>QualificationType</code>
    #             data structure.
    #         </p>
    # @param [Hash, Types::CreateQualificationTypeRequest] params
    # @option params [String] :name
    #   <p> The name you give to the Qualification type. The type name
    #               is used to represent the Qualification to Workers, and to find the
    #               type using a Qualification type search. It must be unique across all
    #               of your Qualification types.</p>
    # @option params [String] :keywords
    #   <p>One or more words or phrases that describe the Qualification
    #               type, separated by commas. The keywords of a type make the type
    #               easier to find during a search.</p>
    # @option params [String] :description
    #   <p>A long description for the Qualification type. On the Amazon
    #               Mechanical Turk website, the long description is displayed when a
    #               Worker examines a Qualification type.</p>
    # @option params [String] :qualification_type_status
    #   <p>The initial status of the Qualification type.</p>
    #           <p>Constraints: Valid values are: Active | Inactive</p>
    # @option params [Integer] :retry_delay_in_seconds
    #   <p>The number of seconds that a Worker must wait after
    #               requesting a Qualification of the Qualification type before the
    #               worker can retry the Qualification request.</p>
    #           <p>Constraints: None. If not specified, retries are disabled and
    #               Workers can request a Qualification of this type only once, even if
    #               the Worker has not been granted the Qualification. It is not possible
    #               to disable retries for a Qualification type after it has been created
    #               with retries enabled. If you want to disable retries, you must delete
    #               existing retry-enabled Qualification type and then create a new
    #               Qualification type with retries disabled.</p>
    # @option params [String] :test
    #   <p>
    #               The questions for the Qualification test a Worker must answer
    #               correctly to obtain a Qualification of this type. If this parameter
    #               is specified,
    #               <code>TestDurationInSeconds</code>
    #               must also be specified.
    #           </p>
    #           <p>Constraints: Must not be longer than 65535 bytes. Must be a
    #               QuestionForm data structure. This parameter cannot be specified if
    #               AutoGranted is true.</p>
    #           <p>Constraints: None. If not specified, the Worker may request
    #               the Qualification without answering any questions.</p>
    # @option params [String] :answer_key
    #   <p>The answers to the Qualification test specified in the Test
    #               parameter, in the form of an AnswerKey data structure.</p>
    #           <p>Constraints: Must not be longer than 65535 bytes.</p>
    #           <p>Constraints: None. If not specified, you must process
    #               Qualification requests manually.</p>
    # @option params [Integer] :test_duration_in_seconds
    #   <p>The number of seconds the Worker has to complete the
    #               Qualification test, starting from the time the Worker requests the
    #               Qualification.</p>
    # @option params [Boolean] :auto_granted
    #   <p>Specifies whether requests for the Qualification type are
    #               granted immediately, without prompting the Worker with a
    #               Qualification test.</p>
    #           <p>Constraints: If the Test parameter is specified, this
    #               parameter cannot be true.</p>
    # @option params [Integer] :auto_granted_value
    #   <p>The Qualification value to use for automatically granted
    #               Qualifications. This parameter is used only if the AutoGranted
    #               parameter is true.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     keywords: "String",
    #     description: "String", # required
    #     qualification_type_status: "Active" # One of: ["Active", "Inactive"], # required
    #     retry_delay_in_seconds: 1,
    #     test: "String",
    #     answer_key: "String",
    #     test_duration_in_seconds: 1,
    #     auto_granted: false,
    #     auto_granted_value: 1
    #   }
    #   options = {}
    #   response = client.create_qualification_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     qualification_type: {
    #       qualification_type_id: "EntityId",
    #       creation_time: Time.now,
    #       name: "String",
    #       description: "String",
    #       keywords: "String",
    #       qualification_type_status: "Active" # One of: ["Active", "Inactive"],
    #       test: "String",
    #       test_duration_in_seconds: 1,
    #       answer_key: "String",
    #       retry_delay_in_seconds: 1,
    #       is_requestable: false,
    #       auto_granted: false,
    #       auto_granted_value: 1
    #     }
    #   }
    # @return [Types::CreateQualificationTypeResponse]
    def create_qualification_type(params = {}, options = {})
      request = build_request(:create_qualification_type, params)
      request.send_request(options)
    end

    # <p>The <code>CreateWorkerBlock</code> operation allows you to prevent a Worker from working on your HITs. For example, you can block a Worker who is producing poor quality work. You can block up to 100,000 Workers.</p>
    # @param [Hash, Types::CreateWorkerBlockRequest] params
    # @option params [String] :worker_id
    #   <p>The ID of the Worker to block.</p>
    # @option params [String] :reason
    #   <p>A message explaining the reason for blocking the Worker. This parameter enables you to keep track of your Workers. The Worker does not see this message.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     worker_id: "CustomerId", # required
    #     reason: "String", # required
    #   }
    #   options = {}
    #   response = client.create_worker_block(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateWorkerBlockResponse]
    def create_worker_block(params = {}, options = {})
      request = build_request(:create_worker_block, params)
      request.send_request(options)
    end

    # <p>
    #             The <code>DeleteHIT</code> operation is used to delete HIT that is no longer needed.
    #             Only the Requester who created the HIT can delete it.
    #         </p>
    #         <p>
    #             You can only dispose of HITs that are in the <code>Reviewable</code> state,
    #             with all of their submitted assignments already either approved or rejected.
    #             If you call the DeleteHIT operation on a HIT that is not in the <code>Reviewable</code> state
    #             (for example, that has not expired, or still has active assignments),
    #             or on a HIT that is Reviewable but without all of its submitted assignments
    #             already approved or rejected, the service will return an error.
    #         </p>
    #         <note>
    #             <ul>
    #                <li>
    #                     <p>
    #                         HITs are automatically disposed of after 120 days.
    #                     </p>
    #                 </li>
    #                <li>
    #                     <p>
    #                         After you dispose of a HIT, you can no longer approve the HIT's rejected assignments.
    #                     </p>
    #                 </li>
    #                <li>
    #                     <p>
    #                         Disposed HITs are not returned in results for the ListHITs operation.
    #                     </p>
    #                 </li>
    #                <li>
    #                     <p>
    #                         Disposing HITs can improve the performance of operations such as ListReviewableHITs and ListHITs.
    #                     </p>
    #                 </li>
    #             </ul>
    #         </note>
    # @param [Hash, Types::DeleteHITRequest] params
    # @option params [String] :hit_id
    #   <p>The ID of the HIT to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hit_id: "EntityId", # required
    #   }
    #   options = {}
    #   response = client.delete_hit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteHITResponse]
    def delete_hit(params = {}, options = {})
      request = build_request(:delete_hit, params)
      request.send_request(options)
    end

    # <p>
    #             The
    #             <code>DeleteQualificationType</code>
    #             deletes a Qualification type and deletes any HIT types that are
    #             associated with the Qualification type.
    #         </p>
    #         <p>This operation does not revoke Qualifications already assigned
    #             to Workers because the Qualifications might be needed for active HITs.
    #             If there are any pending requests for the Qualification type, Amazon
    #             Mechanical Turk rejects those requests. After you delete a
    #             Qualification type, you can no longer use it to create HITs or HIT
    #             types.</p>
    #         <note>
    #             <p>DeleteQualificationType must wait for all the HITs that use
    #                 the deleted Qualification type to be deleted before completing. It
    #                 may take up to 48 hours before DeleteQualificationType completes and
    #                 the unique name of the Qualification type is available for reuse with
    #                 CreateQualificationType.</p>
    #         </note>
    # @param [Hash, Types::DeleteQualificationTypeRequest] params
    # @option params [String] :qualification_type_id
    #   <p>The ID of the QualificationType to dispose.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     qualification_type_id: "EntityId", # required
    #   }
    #   options = {}
    #   response = client.delete_qualification_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteQualificationTypeResponse]
    def delete_qualification_type(params = {}, options = {})
      request = build_request(:delete_qualification_type, params)
      request.send_request(options)
    end

    # <p>The <code>DeleteWorkerBlock</code> operation allows you to reinstate a blocked Worker to work on your HITs. This operation reverses the effects of the CreateWorkerBlock operation. You need the Worker ID to use this operation. If the Worker ID is missing or invalid, this operation fails and returns the message “WorkerId is invalid.” If the specified Worker is not blocked, this operation returns successfully.</p>
    # @param [Hash, Types::DeleteWorkerBlockRequest] params
    # @option params [String] :worker_id
    #   <p>The ID of the Worker to unblock.</p>
    # @option params [String] :reason
    #   <p>A message that explains the reason for unblocking the Worker. The Worker does not see this message.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     worker_id: "CustomerId", # required
    #     reason: "String"
    #   }
    #   options = {}
    #   response = client.delete_worker_block(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteWorkerBlockResponse]
    def delete_worker_block(params = {}, options = {})
      request = build_request(:delete_worker_block, params)
      request.send_request(options)
    end

    # <p>
    #             The 	<code>DisassociateQualificationFromWorker</code>
    #             revokes a previously granted Qualification from a user.
    #         </p>
    #         <p>
    #             You can provide a text message explaining why the Qualification was
    #             revoked. The user who had the Qualification can see this message.
    #         </p>
    # @param [Hash, Types::DisassociateQualificationFromWorkerRequest] params
    # @option params [String] :worker_id
    #   <p>The ID of the Worker who possesses the Qualification to be revoked.</p>
    # @option params [String] :qualification_type_id
    #   <p>The ID of the Qualification type of the Qualification to be revoked.</p>
    # @option params [String] :reason
    #   <p>A text message that explains why the Qualification was revoked. The user who had the Qualification sees this message.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     worker_id: "CustomerId", # required
    #     qualification_type_id: "EntityId", # required
    #     reason: "String"
    #   }
    #   options = {}
    #   response = client.disassociate_qualification_from_worker(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateQualificationFromWorkerResponse]
    def disassociate_qualification_from_worker(params = {}, options = {})
      request = build_request(:disassociate_qualification_from_worker, params)
      request.send_request(options)
    end

    # <p>The <code>GetAccountBalance</code> operation retrieves the Prepaid HITs balance in your Amazon Mechanical Turk account if you are a Prepaid Requester.
    #             Alternatively, this operation will retrieve the remaining available AWS Billing usage if you have enabled AWS Billing.
    #             Note: If you have enabled AWS Billing and still have a remaining Prepaid HITs balance, this balance can be viewed on the My Account page in the Requester console.</p>
    # @param [Hash, Types::GetAccountBalanceRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_account_balance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     available_balance: "CurrencyAmount",
    #     on_hold_balance: "CurrencyAmount"
    #   }
    # @return [Types::GetAccountBalanceResponse]
    def get_account_balance(params = {}, options = {})
      request = build_request(:get_account_balance, params)
      request.send_request(options)
    end

    # <p>
    #             The <code>GetAssignment</code> operation retrieves the details of the specified Assignment.
    #         </p>
    # @param [Hash, Types::GetAssignmentRequest] params
    # @option params [String] :assignment_id
    #   <p>The ID of the Assignment to be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assignment_id: "EntityId", # required
    #   }
    #   options = {}
    #   response = client.get_assignment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assignment: {
    #       assignment_id: "EntityId",
    #       worker_id: "CustomerId",
    #       hit_id: "EntityId",
    #       assignment_status: "Submitted" # One of: ["Submitted", "Approved", "Rejected"],
    #       auto_approval_time: Time.now,
    #       accept_time: Time.now,
    #       submit_time: Time.now,
    #       approval_time: Time.now,
    #       rejection_time: Time.now,
    #       deadline: Time.now,
    #       answer: "String",
    #       requester_feedback: "String"
    #     },
    #     hit: {
    #       hit_id: "EntityId",
    #       hit_type_id: "EntityId",
    #       hit_group_id: "EntityId",
    #       hit_layout_id: "EntityId",
    #       creation_time: Time.now,
    #       title: "String",
    #       description: "String",
    #       question: "String",
    #       keywords: "String",
    #       hit_status: "Assignable" # One of: ["Assignable", "Unassignable", "Reviewable", "Reviewing", "Disposed"],
    #       max_assignments: 1,
    #       reward: "CurrencyAmount",
    #       auto_approval_delay_in_seconds: 1,
    #       expiration: Time.now,
    #       assignment_duration_in_seconds: 1,
    #       requester_annotation: "String",
    #       qualification_requirements: [
    #         {
    #           qualification_type_id: "String", # required
    #           comparator: "LessThan" # One of: ["LessThan", "LessThanOrEqualTo", "GreaterThan", "GreaterThanOrEqualTo", "EqualTo", "NotEqualTo", "Exists", "DoesNotExist", "In", "NotIn"], # required
    #           integer_values: [1],
    #           locale_values: [
    #             {
    #               country: "CountryParameters", # required
    #               subdivision: "CountryParameters"
    #             }
    #           ],
    #           required_to_preview: false,
    #           actions_guarded: "Accept" # One of: ["Accept", "PreviewAndAccept", "DiscoverPreviewAndAccept"]
    #         }
    #       ],
    #       hit_review_status: "NotReviewed" # One of: ["NotReviewed", "MarkedForReview", "ReviewedAppropriate", "ReviewedInappropriate"],
    #       number_of_assignments_pending: 1,
    #       number_of_assignments_available: 1,
    #       number_of_assignments_completed: 1
    #     }
    #   }
    # @return [Types::GetAssignmentResponse]
    def get_assignment(params = {}, options = {})
      request = build_request(:get_assignment, params)
      request.send_request(options)
    end

    # <p>
    #             The
    #             <code>GetFileUploadURL</code>
    #             operation generates and returns a temporary URL. You use the
    #             temporary URL to retrieve a file uploaded by a Worker as an answer to
    #             a FileUploadAnswer question for a HIT. The temporary URL is generated
    #             the instant the GetFileUploadURL operation is called, and is valid
    #             for 60 seconds. You can get a temporary file upload URL any time
    #             until the HIT is disposed. After the HIT is disposed, any uploaded
    #             files are deleted, and cannot be retrieved.
    #             
    #             Pending Deprecation on December 12, 2017. The Answer Specification  
    #             structure will no longer  support the <code>FileUploadAnswer</code>
    #             element to be used for the QuestionForm data structure. 
    #             Instead, we recommend that Requesters who want to create HITs asking 
    #             Workers to upload files to use Amazon S3.
    #             
    #         </p>
    # @param [Hash, Types::GetFileUploadURLRequest] params
    # @option params [String] :assignment_id
    #   <p>The ID of the assignment that contains the question with a
    #               FileUploadAnswer.</p>
    # @option params [String] :question_identifier
    #   <p>The identifier of the question with a FileUploadAnswer, as
    #               specified in the QuestionForm of the HIT.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assignment_id: "EntityId", # required
    #     question_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.get_file_upload_url(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     file_upload_url: "String"
    #   }
    # @return [Types::GetFileUploadURLResponse]
    def get_file_upload_url(params = {}, options = {})
      request = build_request(:get_file_upload_url, params)
      request.send_request(options)
    end

    # <p>
    #             The <code>GetHIT</code> operation retrieves the details of the specified HIT.
    #         </p>
    # @param [Hash, Types::GetHITRequest] params
    # @option params [String] :hit_id
    #   <p>The ID of the HIT to be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hit_id: "EntityId", # required
    #   }
    #   options = {}
    #   response = client.get_hit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hit: {
    #       hit_id: "EntityId",
    #       hit_type_id: "EntityId",
    #       hit_group_id: "EntityId",
    #       hit_layout_id: "EntityId",
    #       creation_time: Time.now,
    #       title: "String",
    #       description: "String",
    #       question: "String",
    #       keywords: "String",
    #       hit_status: "Assignable" # One of: ["Assignable", "Unassignable", "Reviewable", "Reviewing", "Disposed"],
    #       max_assignments: 1,
    #       reward: "CurrencyAmount",
    #       auto_approval_delay_in_seconds: 1,
    #       expiration: Time.now,
    #       assignment_duration_in_seconds: 1,
    #       requester_annotation: "String",
    #       qualification_requirements: [
    #         {
    #           qualification_type_id: "String", # required
    #           comparator: "LessThan" # One of: ["LessThan", "LessThanOrEqualTo", "GreaterThan", "GreaterThanOrEqualTo", "EqualTo", "NotEqualTo", "Exists", "DoesNotExist", "In", "NotIn"], # required
    #           integer_values: [1],
    #           locale_values: [
    #             {
    #               country: "CountryParameters", # required
    #               subdivision: "CountryParameters"
    #             }
    #           ],
    #           required_to_preview: false,
    #           actions_guarded: "Accept" # One of: ["Accept", "PreviewAndAccept", "DiscoverPreviewAndAccept"]
    #         }
    #       ],
    #       hit_review_status: "NotReviewed" # One of: ["NotReviewed", "MarkedForReview", "ReviewedAppropriate", "ReviewedInappropriate"],
    #       number_of_assignments_pending: 1,
    #       number_of_assignments_available: 1,
    #       number_of_assignments_completed: 1
    #     }
    #   }
    # @return [Types::GetHITResponse]
    def get_hit(params = {}, options = {})
      request = build_request(:get_hit, params)
      request.send_request(options)
    end

    # <p>
    #             The
    #             <code>GetQualificationScore</code>
    #             operation returns the value of a Worker's Qualification for a given
    #             Qualification type.
    #         </p>
    #         <p>
    #             To get a Worker's Qualification, you must know the Worker's ID. The
    #             Worker's ID is included in the assignment data returned by the
    #             <code>ListAssignmentsForHIT</code>
    #             operation.
    #         </p>
    #         <p>Only the owner of a Qualification type can query the value of
    #             a Worker's Qualification of that type.</p>
    # @param [Hash, Types::GetQualificationScoreRequest] params
    # @option params [String] :qualification_type_id
    #   <p>The ID of the QualificationType.</p>
    # @option params [String] :worker_id
    #   <p>The ID of the Worker whose Qualification is being updated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     qualification_type_id: "EntityId", # required
    #     worker_id: "CustomerId", # required
    #   }
    #   options = {}
    #   response = client.get_qualification_score(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     qualification: {
    #       qualification_type_id: "EntityId",
    #       worker_id: "CustomerId",
    #       grant_time: Time.now,
    #       integer_value: 1,
    #       locale_value: {
    #         country: "CountryParameters", # required
    #         subdivision: "CountryParameters"
    #       },
    #       status: "Granted" # One of: ["Granted", "Revoked"]
    #     }
    #   }
    # @return [Types::GetQualificationScoreResponse]
    def get_qualification_score(params = {}, options = {})
      request = build_request(:get_qualification_score, params)
      request.send_request(options)
    end

    # <p>
    #             The <code>GetQualificationType</code>operation retrieves information about a Qualification type using its ID.
    #         </p>
    # @param [Hash, Types::GetQualificationTypeRequest] params
    # @option params [String] :qualification_type_id
    #   <p>The ID of the QualificationType.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     qualification_type_id: "EntityId", # required
    #   }
    #   options = {}
    #   response = client.get_qualification_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     qualification_type: {
    #       qualification_type_id: "EntityId",
    #       creation_time: Time.now,
    #       name: "String",
    #       description: "String",
    #       keywords: "String",
    #       qualification_type_status: "Active" # One of: ["Active", "Inactive"],
    #       test: "String",
    #       test_duration_in_seconds: 1,
    #       answer_key: "String",
    #       retry_delay_in_seconds: 1,
    #       is_requestable: false,
    #       auto_granted: false,
    #       auto_granted_value: 1
    #     }
    #   }
    # @return [Types::GetQualificationTypeResponse]
    def get_qualification_type(params = {}, options = {})
      request = build_request(:get_qualification_type, params)
      request.send_request(options)
    end

    # <p>
    #             The
    #             <code>ListAssignmentsForHIT</code>
    #             operation retrieves completed assignments for a HIT. You can use this
    #             operation to retrieve the results for a HIT.
    #         </p>
    #         <p> You can get assignments for a HIT at any time, even if the
    #             HIT is not yet Reviewable. If a HIT requested multiple assignments,
    #             and has received some results but has not yet become Reviewable, you
    #             can still retrieve the partial results with this operation.
    #         </p>
    #         <p> Use the AssignmentStatus parameter to control which set of
    #             assignments for a HIT are returned. The ListAssignmentsForHIT
    #             operation
    #             can return submitted assignments awaiting approval, or it can return
    #             assignments that have already been approved or rejected. You can set
    #             AssignmentStatus=Approved,Rejected to get assignments that have
    #             already been approved and rejected together in one result set.
    #         </p>
    #         <p> Only the Requester who created the HIT can retrieve the
    #             assignments for that HIT.
    #         </p>
    #         <p> Results are sorted and divided into numbered pages and the
    #             operation returns a single page of results. You can use the
    #             parameters
    #             of the operation to control sorting and pagination.
    #         </p>
    # @param [Hash, Types::ListAssignmentsForHITRequest] params
    # @option params [String] :hit_id
    #   <p>The ID of the HIT.</p>
    # @option params [String] :next_token
    #   <p>Pagination token</p>
    # @option params [Integer] :max_results
    # @option params [Array<String>] :assignment_statuses
    #   <p>The status of the assignments to return: Submitted | Approved
    #               | Rejected</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hit_id: "EntityId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     assignment_statuses: ["Submitted" # One of: ["Submitted", "Approved", "Rejected"]]
    #   }
    #   options = {}
    #   response = client.list_assignments_for_hit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     num_results: 1,
    #     assignments: [
    #       {
    #         assignment_id: "EntityId",
    #         worker_id: "CustomerId",
    #         hit_id: "EntityId",
    #         assignment_status: "Submitted" # One of: ["Submitted", "Approved", "Rejected"],
    #         auto_approval_time: Time.now,
    #         accept_time: Time.now,
    #         submit_time: Time.now,
    #         approval_time: Time.now,
    #         rejection_time: Time.now,
    #         deadline: Time.now,
    #         answer: "String",
    #         requester_feedback: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListAssignmentsForHITResponse]
    def list_assignments_for_hit(params = {}, options = {})
      request = build_request(:list_assignments_for_hit, params)
      request.send_request(options)
    end

    # <p>
    #             The
    #             <code>ListBonusPayments</code>
    #             operation retrieves the amounts of bonuses you have paid to Workers
    #             for a given HIT or assignment.
    #         </p>
    # @param [Hash, Types::ListBonusPaymentsRequest] params
    # @option params [String] :hit_id
    #   <p>The ID of the HIT associated with the bonus payments to
    #               retrieve. If not specified, all bonus payments for all assignments
    #               for the given HIT are returned. Either the HITId parameter or the
    #               AssignmentId parameter must be specified</p>
    # @option params [String] :assignment_id
    #   <p>The ID of the assignment associated with the bonus payments
    #               to retrieve. If specified, only bonus payments for the given
    #               assignment are returned. Either the HITId parameter or the
    #               AssignmentId parameter must be specified</p>
    # @option params [String] :next_token
    #   <p>Pagination token</p>
    # @option params [Integer] :max_results
    # @example Request syntax with placeholder values
    #   params = {
    #     hit_id: "EntityId",
    #     assignment_id: "EntityId",
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_bonus_payments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     num_results: 1,
    #     next_token: "PaginationToken",
    #     bonus_payments: [
    #       {
    #         worker_id: "CustomerId",
    #         bonus_amount: "CurrencyAmount",
    #         assignment_id: "EntityId",
    #         reason: "String",
    #         grant_time: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListBonusPaymentsResponse]
    def list_bonus_payments(params = {}, options = {})
      request = build_request(:list_bonus_payments, params)
      request.send_request(options)
    end

    # <p>
    #             The
    #             <code>ListHITs</code>
    #             operation returns all of a Requester's HITs. The operation returns
    #             HITs of any status, except for HITs that have been deleted of with
    #             the DeleteHIT operation or that have been auto-deleted.
    #         </p>
    # @param [Hash, Types::ListHITsRequest] params
    # @option params [String] :next_token
    #   <p>Pagination token</p>
    # @option params [Integer] :max_results
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_hi_ts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     num_results: 1,
    #     hi_ts: [
    #       {
    #         hit_id: "EntityId",
    #         hit_type_id: "EntityId",
    #         hit_group_id: "EntityId",
    #         hit_layout_id: "EntityId",
    #         creation_time: Time.now,
    #         title: "String",
    #         description: "String",
    #         question: "String",
    #         keywords: "String",
    #         hit_status: "Assignable" # One of: ["Assignable", "Unassignable", "Reviewable", "Reviewing", "Disposed"],
    #         max_assignments: 1,
    #         reward: "CurrencyAmount",
    #         auto_approval_delay_in_seconds: 1,
    #         expiration: Time.now,
    #         assignment_duration_in_seconds: 1,
    #         requester_annotation: "String",
    #         qualification_requirements: [
    #           {
    #             qualification_type_id: "String", # required
    #             comparator: "LessThan" # One of: ["LessThan", "LessThanOrEqualTo", "GreaterThan", "GreaterThanOrEqualTo", "EqualTo", "NotEqualTo", "Exists", "DoesNotExist", "In", "NotIn"], # required
    #             integer_values: [1],
    #             locale_values: [
    #               {
    #                 country: "CountryParameters", # required
    #                 subdivision: "CountryParameters"
    #               }
    #             ],
    #             required_to_preview: false,
    #             actions_guarded: "Accept" # One of: ["Accept", "PreviewAndAccept", "DiscoverPreviewAndAccept"]
    #           }
    #         ],
    #         hit_review_status: "NotReviewed" # One of: ["NotReviewed", "MarkedForReview", "ReviewedAppropriate", "ReviewedInappropriate"],
    #         number_of_assignments_pending: 1,
    #         number_of_assignments_available: 1,
    #         number_of_assignments_completed: 1
    #       }
    #     ]
    #   }
    # @return [Types::ListHITsResponse]
    def list_hi_ts(params = {}, options = {})
      request = build_request(:list_hi_ts, params)
      request.send_request(options)
    end

    # <p>
    #             The <code>ListHITsForQualificationType</code> operation returns the HITs that use
    #             the given Qualification type for a Qualification requirement.
    #             The operation returns HITs of any status, except for HITs that have been deleted
    #             with the <code>DeleteHIT</code> operation or that have been auto-deleted.
    #         </p>
    # @param [Hash, Types::ListHITsForQualificationTypeRequest] params
    # @option params [String] :qualification_type_id
    #   <p>
    #               The ID of the Qualification type to use when querying HITs.
    #           </p>
    # @option params [String] :next_token
    #   <p>Pagination Token</p>
    # @option params [Integer] :max_results
    #   <p>
    #               Limit the number of results returned.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     qualification_type_id: "EntityId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_hi_ts_for_qualification_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     num_results: 1,
    #     hi_ts: [
    #       {
    #         hit_id: "EntityId",
    #         hit_type_id: "EntityId",
    #         hit_group_id: "EntityId",
    #         hit_layout_id: "EntityId",
    #         creation_time: Time.now,
    #         title: "String",
    #         description: "String",
    #         question: "String",
    #         keywords: "String",
    #         hit_status: "Assignable" # One of: ["Assignable", "Unassignable", "Reviewable", "Reviewing", "Disposed"],
    #         max_assignments: 1,
    #         reward: "CurrencyAmount",
    #         auto_approval_delay_in_seconds: 1,
    #         expiration: Time.now,
    #         assignment_duration_in_seconds: 1,
    #         requester_annotation: "String",
    #         qualification_requirements: [
    #           {
    #             qualification_type_id: "String", # required
    #             comparator: "LessThan" # One of: ["LessThan", "LessThanOrEqualTo", "GreaterThan", "GreaterThanOrEqualTo", "EqualTo", "NotEqualTo", "Exists", "DoesNotExist", "In", "NotIn"], # required
    #             integer_values: [1],
    #             locale_values: [
    #               {
    #                 country: "CountryParameters", # required
    #                 subdivision: "CountryParameters"
    #               }
    #             ],
    #             required_to_preview: false,
    #             actions_guarded: "Accept" # One of: ["Accept", "PreviewAndAccept", "DiscoverPreviewAndAccept"]
    #           }
    #         ],
    #         hit_review_status: "NotReviewed" # One of: ["NotReviewed", "MarkedForReview", "ReviewedAppropriate", "ReviewedInappropriate"],
    #         number_of_assignments_pending: 1,
    #         number_of_assignments_available: 1,
    #         number_of_assignments_completed: 1
    #       }
    #     ]
    #   }
    # @return [Types::ListHITsForQualificationTypeResponse]
    def list_hi_ts_for_qualification_type(params = {}, options = {})
      request = build_request(:list_hi_ts_for_qualification_type, params)
      request.send_request(options)
    end

    # <p>
    #             The
    #             <code>ListQualificationRequests</code>
    #             operation retrieves requests for Qualifications of a particular
    #             Qualification type. The owner of the Qualification type calls this
    #             operation to poll for pending requests, and accepts them using the
    #             AcceptQualification operation.
    #         </p>
    # @param [Hash, Types::ListQualificationRequestsRequest] params
    # @option params [String] :qualification_type_id
    #   <p>The ID of the QualificationType.</p>
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve), Amazon Mechanical Turk
    #               returns a pagination token in the response. You can use this pagination token
    #               to retrieve the next set of results.
    #           </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of results to return in a single call.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     qualification_type_id: "EntityId",
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_qualification_requests(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     num_results: 1,
    #     next_token: "PaginationToken",
    #     qualification_requests: [
    #       {
    #         qualification_request_id: "String",
    #         qualification_type_id: "EntityId",
    #         worker_id: "CustomerId",
    #         test: "String",
    #         answer: "String",
    #         submit_time: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListQualificationRequestsResponse]
    def list_qualification_requests(params = {}, options = {})
      request = build_request(:list_qualification_requests, params)
      request.send_request(options)
    end

    # <p>
    #             The
    #             <code>ListQualificationTypes</code>
    #             operation returns a list of Qualification types, filtered by
    #             an optional search term.
    #         </p>
    # @param [Hash, Types::ListQualificationTypesRequest] params
    # @option params [String] :query
    #   <p> A text query against all of the searchable attributes of
    #               Qualification types.
    #           </p>
    # @option params [Boolean] :must_be_requestable
    #   <p>Specifies that only Qualification types that a user can
    #               request through the Amazon Mechanical Turk web site, such as by
    #               taking a Qualification test, are returned as results of the search.
    #               Some Qualification types, such as those assigned automatically by the
    #               system, cannot be requested directly by users. If false, all
    #               Qualification types, including those managed by the system, are
    #               considered. Valid values are True | False.
    #           </p>
    # @option params [Boolean] :must_be_owned_by_caller
    #   <p> Specifies that only Qualification types that the Requester
    #               created are returned. If false, the operation returns all
    #               Qualification types.
    #           </p>
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve), Amazon Mechanical Turk
    #               returns a pagination token in the response. You can use this pagination token
    #               to retrieve the next set of results.
    #           </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of results to return in a single call.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query: "String",
    #     must_be_requestable: false, # required
    #     must_be_owned_by_caller: false,
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_qualification_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     num_results: 1,
    #     next_token: "PaginationToken",
    #     qualification_types: [
    #       {
    #         qualification_type_id: "EntityId",
    #         creation_time: Time.now,
    #         name: "String",
    #         description: "String",
    #         keywords: "String",
    #         qualification_type_status: "Active" # One of: ["Active", "Inactive"],
    #         test: "String",
    #         test_duration_in_seconds: 1,
    #         answer_key: "String",
    #         retry_delay_in_seconds: 1,
    #         is_requestable: false,
    #         auto_granted: false,
    #         auto_granted_value: 1
    #       }
    #     ]
    #   }
    # @return [Types::ListQualificationTypesResponse]
    def list_qualification_types(params = {}, options = {})
      request = build_request(:list_qualification_types, params)
      request.send_request(options)
    end

    # <p>
    #             The <code>ListReviewPolicyResultsForHIT</code> operation retrieves the computed results
    #             and the actions taken in the course of executing your Review Policies for a given HIT.
    #             For information about how to specify Review Policies when you call CreateHIT,
    #             see Review Policies. The ListReviewPolicyResultsForHIT operation can return results for both
    #             Assignment-level and HIT-level review results.
    #         </p>
    # @param [Hash, Types::ListReviewPolicyResultsForHITRequest] params
    # @option params [String] :hit_id
    #   <p>The unique identifier of the HIT to retrieve review results for.</p>
    # @option params [Array<String>] :policy_levels
    #   <p>
    #               The Policy Level(s) to retrieve review results for - HIT or Assignment.
    #               If omitted, the default behavior is to retrieve all data for both policy levels.
    #               For a list of all the described policies, see Review Policies.
    #           </p>
    # @option params [Boolean] :retrieve_actions
    #   <p>
    #               Specify if the operation should retrieve a list of the actions taken executing
    #               the Review Policies and their outcomes.
    #           </p>
    # @option params [Boolean] :retrieve_results
    #   <p>
    #               Specify if the operation should retrieve a list of the results computed by the Review Policies.
    #           </p>
    # @option params [String] :next_token
    #   <p>Pagination token</p>
    # @option params [Integer] :max_results
    #   <p>Limit the number of results returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hit_id: "EntityId", # required
    #     policy_levels: ["Assignment" # One of: ["Assignment", "HIT"]],
    #     retrieve_actions: false,
    #     retrieve_results: false,
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_review_policy_results_for_hit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hit_id: "EntityId",
    #     assignment_review_policy: {
    #       policy_name: "String", # required
    #       parameters: [
    #         {
    #           key: "String",
    #           values: ["String"],
    #           map_entries: [
    #             {
    #               key: "String",
    #               values: ["String"]
    #             }
    #           ]
    #         }
    #       ]
    #     },
    #     hit_review_policy: {
    #       policy_name: "String", # required
    #       parameters: [
    #         {
    #           key: "String",
    #           values: ["String"],
    #           map_entries: [
    #             {
    #               key: "String",
    #               values: ["String"]
    #             }
    #           ]
    #         }
    #       ]
    #     },
    #     assignment_review_report: {
    #       review_results: [
    #         {
    #           action_id: "EntityId",
    #           subject_id: "EntityId",
    #           subject_type: "String",
    #           question_id: "EntityId",
    #           key: "String",
    #           value: "String"
    #         }
    #       ],
    #       review_actions: [
    #         {
    #           action_id: "EntityId",
    #           action_name: "String",
    #           target_id: "EntityId",
    #           target_type: "String",
    #           status: "Intended" # One of: ["Intended", "Succeeded", "Failed", "Cancelled"],
    #           complete_time: Time.now,
    #           result: "String",
    #           error_code: "String"
    #         }
    #       ]
    #     },
    #     hit_review_report: {
    #       review_results: [
    #         {
    #           action_id: "EntityId",
    #           subject_id: "EntityId",
    #           subject_type: "String",
    #           question_id: "EntityId",
    #           key: "String",
    #           value: "String"
    #         }
    #       ],
    #       review_actions: [
    #         {
    #           action_id: "EntityId",
    #           action_name: "String",
    #           target_id: "EntityId",
    #           target_type: "String",
    #           status: "Intended" # One of: ["Intended", "Succeeded", "Failed", "Cancelled"],
    #           complete_time: Time.now,
    #           result: "String",
    #           error_code: "String"
    #         }
    #       ]
    #     },
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListReviewPolicyResultsForHITResponse]
    def list_review_policy_results_for_hit(params = {}, options = {})
      request = build_request(:list_review_policy_results_for_hit, params)
      request.send_request(options)
    end

    # <p>
    #             The <code>ListReviewableHITs</code> operation retrieves the HITs with Status equal to
    #             Reviewable or Status equal to Reviewing that belong to the Requester calling the operation.
    #         </p>
    # @param [Hash, Types::ListReviewableHITsRequest] params
    # @option params [String] :hit_type_id
    #   <p>
    #               The ID of the HIT type of the HITs to consider for the query.
    #               If not specified, all HITs for the Reviewer are considered
    #           </p>
    # @option params [String] :status
    #   <p>
    #               Can be either <code>Reviewable</code> or <code>Reviewing</code>.
    #               Reviewable is the default value.
    #           </p>
    # @option params [String] :next_token
    #   <p>Pagination Token</p>
    # @option params [Integer] :max_results
    #   <p>
    #               Limit the number of results returned.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hit_type_id: "EntityId",
    #     status: "Reviewable" # One of: ["Reviewable", "Reviewing"],
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_reviewable_hi_ts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     num_results: 1,
    #     hi_ts: [
    #       {
    #         hit_id: "EntityId",
    #         hit_type_id: "EntityId",
    #         hit_group_id: "EntityId",
    #         hit_layout_id: "EntityId",
    #         creation_time: Time.now,
    #         title: "String",
    #         description: "String",
    #         question: "String",
    #         keywords: "String",
    #         hit_status: "Assignable" # One of: ["Assignable", "Unassignable", "Reviewable", "Reviewing", "Disposed"],
    #         max_assignments: 1,
    #         reward: "CurrencyAmount",
    #         auto_approval_delay_in_seconds: 1,
    #         expiration: Time.now,
    #         assignment_duration_in_seconds: 1,
    #         requester_annotation: "String",
    #         qualification_requirements: [
    #           {
    #             qualification_type_id: "String", # required
    #             comparator: "LessThan" # One of: ["LessThan", "LessThanOrEqualTo", "GreaterThan", "GreaterThanOrEqualTo", "EqualTo", "NotEqualTo", "Exists", "DoesNotExist", "In", "NotIn"], # required
    #             integer_values: [1],
    #             locale_values: [
    #               {
    #                 country: "CountryParameters", # required
    #                 subdivision: "CountryParameters"
    #               }
    #             ],
    #             required_to_preview: false,
    #             actions_guarded: "Accept" # One of: ["Accept", "PreviewAndAccept", "DiscoverPreviewAndAccept"]
    #           }
    #         ],
    #         hit_review_status: "NotReviewed" # One of: ["NotReviewed", "MarkedForReview", "ReviewedAppropriate", "ReviewedInappropriate"],
    #         number_of_assignments_pending: 1,
    #         number_of_assignments_available: 1,
    #         number_of_assignments_completed: 1
    #       }
    #     ]
    #   }
    # @return [Types::ListReviewableHITsResponse]
    def list_reviewable_hi_ts(params = {}, options = {})
      request = build_request(:list_reviewable_hi_ts, params)
      request.send_request(options)
    end

    # <p>The <code>ListWorkersBlocks</code> operation retrieves a list of Workers who are blocked from working on your HITs.</p>
    # @param [Hash, Types::ListWorkerBlocksRequest] params
    # @option params [String] :next_token
    #   <p>Pagination token</p>
    # @option params [Integer] :max_results
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_worker_blocks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     num_results: 1,
    #     worker_blocks: [
    #       {
    #         worker_id: "CustomerId",
    #         reason: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListWorkerBlocksResponse]
    def list_worker_blocks(params = {}, options = {})
      request = build_request(:list_worker_blocks, params)
      request.send_request(options)
    end

    # <p>
    #             The <code>ListWorkersWithQualificationType</code> operation returns all of the Workers
    #             that have been associated with a given Qualification type.
    #         </p>
    # @param [Hash, Types::ListWorkersWithQualificationTypeRequest] params
    # @option params [String] :qualification_type_id
    #   <p>The ID of the Qualification type of the Qualifications to
    #               return.</p>
    # @option params [String] :status
    #   <p>
    #               The status of the Qualifications to return.
    #               Can be <code>Granted | Revoked</code>.
    #           </p>
    # @option params [String] :next_token
    #   <p>Pagination Token</p>
    # @option params [Integer] :max_results
    #   <p>
    #               Limit the number of results returned.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     qualification_type_id: "EntityId", # required
    #     status: "Granted" # One of: ["Granted", "Revoked"],
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_workers_with_qualification_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     num_results: 1,
    #     qualifications: [
    #       {
    #         qualification_type_id: "EntityId",
    #         worker_id: "CustomerId",
    #         grant_time: Time.now,
    #         integer_value: 1,
    #         locale_value: {
    #           country: "CountryParameters", # required
    #           subdivision: "CountryParameters"
    #         },
    #         status: "Granted" # One of: ["Granted", "Revoked"]
    #       }
    #     ]
    #   }
    # @return [Types::ListWorkersWithQualificationTypeResponse]
    def list_workers_with_qualification_type(params = {}, options = {})
      request = build_request(:list_workers_with_qualification_type, params)
      request.send_request(options)
    end

    # <p>
    #             The
    #             <code>NotifyWorkers</code>
    #             operation sends an email to one or more Workers that you specify with
    #             the Worker ID. You can specify up to 100 Worker IDs to send the same
    #             message with a single call to the NotifyWorkers operation. The
    #             NotifyWorkers operation will send a notification email to a Worker
    #             only if you have previously approved or rejected work from the
    #             Worker.
    #         </p>
    # @param [Hash, Types::NotifyWorkersRequest] params
    # @option params [String] :subject
    #   <p>The subject line of the email message to send. Can include up
    #               to 200 characters.</p>
    # @option params [String] :message_text
    #   <p>The text of the email message to send. Can include up to
    #               4,096 characters</p>
    # @option params [Array<String>] :worker_ids
    #   <p>A list of Worker IDs you wish to notify. You
    #               can notify upto
    #               100 Workers at a time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subject: "String", # required
    #     message_text: "String", # required
    #     worker_ids: ["CustomerId"], # required
    #   }
    #   options = {}
    #   response = client.notify_workers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notify_workers_failure_statuses: [
    #       {
    #         notify_workers_failure_code: "SoftFailure" # One of: ["SoftFailure", "HardFailure"],
    #         notify_workers_failure_message: "String",
    #         worker_id: "CustomerId"
    #       }
    #     ]
    #   }
    # @return [Types::NotifyWorkersResponse]
    def notify_workers(params = {}, options = {})
      request = build_request(:notify_workers, params)
      request.send_request(options)
    end

    # <p>
    #             The <code>RejectAssignment</code> operation rejects the results of a completed assignment.
    #         </p>
    #         <p>
    #             You can include an optional feedback message with the rejection,
    #             which the Worker can see in the Status section of the web site.
    #             When you include a feedback message with the rejection,
    #             it helps the Worker understand why the assignment was rejected,
    #             and can improve the quality of the results the Worker submits in the future.
    #         </p>
    #         <p>
    #             Only the Requester who created the HIT can reject an assignment for the HIT.
    #         </p>
    # @param [Hash, Types::RejectAssignmentRequest] params
    # @option params [String] :assignment_id
    #   <p>
    #               The ID of the assignment. The assignment must correspond to a HIT created by the Requester.
    #           </p>
    # @option params [String] :requester_feedback
    #   <p>
    #               A message for the Worker, which the Worker can see in the Status section of the web site.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assignment_id: "EntityId", # required
    #     requester_feedback: "String", # required
    #   }
    #   options = {}
    #   response = client.reject_assignment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RejectAssignmentResponse]
    def reject_assignment(params = {}, options = {})
      request = build_request(:reject_assignment, params)
      request.send_request(options)
    end

    # <p>
    #             The
    #             <code>RejectQualificationRequest</code>
    #             operation rejects a user's request for a Qualification.
    #         </p>
    #         <p> You can provide a text message explaining why the request was
    #             rejected. The Worker who made the request can see this message.</p>
    # @param [Hash, Types::RejectQualificationRequestRequest] params
    # @option params [String] :qualification_request_id
    #   <p>
    #               The ID of the Qualification request, as returned by the
    #               <code>ListQualificationRequests</code>
    #               operation.
    #           </p>
    # @option params [String] :reason
    #   <p>A text message explaining why the request was rejected, to be
    #               shown to the Worker who made the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     qualification_request_id: "String", # required
    #     reason: "String"
    #   }
    #   options = {}
    #   response = client.reject_qualification_request(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RejectQualificationRequestResponse]
    def reject_qualification_request(params = {}, options = {})
      request = build_request(:reject_qualification_request, params)
      request.send_request(options)
    end

    # <p>
    #             The
    #             <code>SendBonus</code>
    #             operation issues a payment of money from your account to a Worker.
    #             This payment happens separately from the reward you pay to the Worker
    #             when you approve the Worker's assignment. The SendBonus operation
    #             requires the Worker's ID and the assignment ID as parameters to
    #             initiate payment of the bonus. You must include a message that
    #             explains the reason for the bonus payment, as the Worker may not be
    #             expecting the payment. Amazon Mechanical Turk collects a fee for
    #             bonus payments, similar to the HIT listing fee. This operation fails
    #             if your account does not have enough funds to pay for both the bonus
    #             and the fees.
    #         </p>
    # @param [Hash, Types::SendBonusRequest] params
    # @option params [String] :worker_id
    #   <p>The ID of the Worker being paid the bonus.</p>
    # @option params [String] :bonus_amount
    #   <p>
    #               The Bonus amount is a US Dollar amount specified using a string (for example, "5" represents $5.00 USD and
    #               "101.42" represents $101.42 USD). Do not include currency symbols or currency codes.
    #           </p>
    # @option params [String] :assignment_id
    #   <p>The ID of the assignment for which this bonus is paid.</p>
    # @option params [String] :reason
    #   <p>A message that explains the reason for the bonus payment. The
    #               Worker receiving the bonus can see this message.</p>
    # @option params [String] :unique_request_token
    #   <p>A unique identifier for this request, which allows you to
    #               retry the call on error without granting multiple bonuses. This is
    #               useful in cases such as network timeouts where it is unclear whether
    #               or not the call succeeded on the server. If the bonus already exists
    #               in the system from a previous call using the same UniqueRequestToken,
    #               subsequent calls will return an error with a message containing the
    #               request ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     worker_id: "CustomerId", # required
    #     bonus_amount: "CurrencyAmount", # required
    #     assignment_id: "EntityId", # required
    #     reason: "String", # required
    #     unique_request_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.send_bonus(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SendBonusResponse]
    def send_bonus(params = {}, options = {})
      request = build_request(:send_bonus, params)
      request.send_request(options)
    end

    # <p>
    #             The <code>SendTestEventNotification</code> operation causes Amazon Mechanical Turk to send
    #             a notification message as if a HIT event occurred, according to the provided
    #             notification specification. This allows you to test notifications without
    #             setting up notifications for a real HIT type and trying to trigger them using the website.
    #             When you call this operation, the service attempts to send the test notification immediately.
    #         </p>
    # @param [Hash, Types::SendTestEventNotificationRequest] params
    # @option params [Types::NotificationSpecification] :notification
    #   <p>
    #               The notification specification to test. This value is identical to the value
    #               you would provide to the UpdateNotificationSettings operation when you establish
    #               the notification specification for a HIT type.
    #           </p>
    # @option params [String] :test_event_type
    #   <p>
    #               The event to simulate to test the notification specification.
    #               This event is included in the test message even if the notification specification
    #               does not include the event type.
    #               The notification specification does not filter out the test event.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     notification: { # required
    #       destination: "String", # required
    #       transport: "Email" # One of: ["Email", "SQS", "SNS"], # required
    #       version: "String", # required
    #       event_types: ["AssignmentAccepted" # One of: ["AssignmentAccepted", "AssignmentAbandoned", "AssignmentReturned", "AssignmentSubmitted", "AssignmentRejected", "AssignmentApproved", "HITCreated", "HITExpired", "HITReviewable", "HITExtended", "HITDisposed", "Ping"]], # required
    #     },
    #     test_event_type: "AssignmentAccepted" # One of: ["AssignmentAccepted", "AssignmentAbandoned", "AssignmentReturned", "AssignmentSubmitted", "AssignmentRejected", "AssignmentApproved", "HITCreated", "HITExpired", "HITReviewable", "HITExtended", "HITDisposed", "Ping"], # required
    #   }
    #   options = {}
    #   response = client.send_test_event_notification(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SendTestEventNotificationResponse]
    def send_test_event_notification(params = {}, options = {})
      request = build_request(:send_test_event_notification, params)
      request.send_request(options)
    end

    # <p>
    #             The <code>UpdateExpirationForHIT</code> operation allows you update the expiration time of a HIT.
    #             If you update it to a time in the past, the HIT will be immediately expired.
    #         </p>
    # @param [Hash, Types::UpdateExpirationForHITRequest] params
    # @option params [String] :hit_id
    #   <p>
    #               The HIT to update.
    #           </p>
    # @option params [Time] :expire_at
    #   <p>
    #               The date and time at which you want the HIT to expire
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hit_id: "EntityId", # required
    #     expire_at: Time.now, # required
    #   }
    #   options = {}
    #   response = client.update_expiration_for_hit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateExpirationForHITResponse]
    def update_expiration_for_hit(params = {}, options = {})
      request = build_request(:update_expiration_for_hit, params)
      request.send_request(options)
    end

    # <p>
    #             The <code>UpdateHITReviewStatus</code> operation updates the status of a HIT.
    #             If the status is Reviewable, this operation can update the status to Reviewing,
    #             or it can revert a Reviewing HIT back to the Reviewable status.
    #         </p>
    # @param [Hash, Types::UpdateHITReviewStatusRequest] params
    # @option params [String] :hit_id
    #   <p>
    #               The ID of the HIT to update.
    #           </p>
    # @option params [Boolean] :revert
    #   <p>
    #               Specifies how to update the HIT status. Default is <code>False</code>.
    #           </p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       Setting this to false will only transition a HIT from <code>Reviewable</code> to <code>Reviewing</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       Setting this to true will only transition a HIT from <code>Reviewing</code> to <code>Reviewable</code>
    #                   </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     hit_id: "EntityId", # required
    #     revert: false
    #   }
    #   options = {}
    #   response = client.update_hit_review_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateHITReviewStatusResponse]
    def update_hit_review_status(params = {}, options = {})
      request = build_request(:update_hit_review_status, params)
      request.send_request(options)
    end

    # <p>
    #             The
    #             <code>UpdateHITTypeOfHIT</code>
    #             operation allows you to change the HITType properties of a HIT. This
    #             operation disassociates the HIT from its old HITType properties and
    #             associates it with the new HITType properties. The HIT takes on the
    #             properties of the new HITType in place of the old ones.
    #         </p>
    # @param [Hash, Types::UpdateHITTypeOfHITRequest] params
    # @option params [String] :hit_id
    #   <p>The HIT to update.</p>
    # @option params [String] :hit_type_id
    #   <p>The ID of the new HIT type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hit_id: "EntityId", # required
    #     hit_type_id: "EntityId", # required
    #   }
    #   options = {}
    #   response = client.update_hit_type_of_hit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateHITTypeOfHITResponse]
    def update_hit_type_of_hit(params = {}, options = {})
      request = build_request(:update_hit_type_of_hit, params)
      request.send_request(options)
    end

    # <p>
    #             The <code>UpdateNotificationSettings</code> operation creates, updates,
    #             disables or re-enables notifications for a HIT type.
    #             If you call the UpdateNotificationSettings operation for a HIT type that already has a
    #             notification specification, the operation replaces the old specification with a new one.
    #             You can call the UpdateNotificationSettings operation to enable or disable notifications
    #             for the HIT type, without having to modify the notification specification itself by providing
    #             updates to the Active status without specifying a new notification specification.
    #             To change the Active status of a HIT type's notifications,
    #             the HIT type must already have a notification specification,
    #             or one must be provided in the same call to <code>UpdateNotificationSettings</code>.
    #         </p>
    # @param [Hash, Types::UpdateNotificationSettingsRequest] params
    # @option params [String] :hit_type_id
    #   <p>
    #               The ID of the HIT type whose notification specification is being updated.
    #           </p>
    # @option params [Types::NotificationSpecification] :notification
    #   <p>
    #               The notification specification for the HIT type.
    #           </p>
    # @option params [Boolean] :active
    #   <p>
    #               Specifies whether notifications are sent for HITs of this HIT type,
    #               according to the notification specification.
    #               You must specify either the Notification parameter or the Active parameter
    #               for the call to UpdateNotificationSettings to succeed.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hit_type_id: "EntityId", # required
    #     notification: {
    #       destination: "String", # required
    #       transport: "Email" # One of: ["Email", "SQS", "SNS"], # required
    #       version: "String", # required
    #       event_types: ["AssignmentAccepted" # One of: ["AssignmentAccepted", "AssignmentAbandoned", "AssignmentReturned", "AssignmentSubmitted", "AssignmentRejected", "AssignmentApproved", "HITCreated", "HITExpired", "HITReviewable", "HITExtended", "HITDisposed", "Ping"]], # required
    #     },
    #     active: false
    #   }
    #   options = {}
    #   response = client.update_notification_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateNotificationSettingsResponse]
    def update_notification_settings(params = {}, options = {})
      request = build_request(:update_notification_settings, params)
      request.send_request(options)
    end

    # <p>
    #             The
    #             <code>UpdateQualificationType</code>
    #             operation modifies the attributes of an existing Qualification type,
    #             which is represented by a QualificationType data structure. Only the
    #             owner of a Qualification type can modify its attributes.
    #         </p>
    #         <p> Most attributes of a Qualification type can be changed after
    #             the type has been created. However, the Name and Keywords fields
    #             cannot be modified. The RetryDelayInSeconds parameter can be modified
    #             or added to change the delay or to enable retries, but
    #             RetryDelayInSeconds cannot be used to disable retries. </p>
    #         <p> You can use this operation to update the test for a
    #             Qualification type. The test is updated based on the values specified
    #             for the Test, TestDurationInSeconds and AnswerKey parameters. All
    #             three parameters specify the updated test. If you are updating the
    #             test for a type, you must specify the Test and TestDurationInSeconds
    #             parameters. The AnswerKey parameter is optional; omitting it specifies
    #             that the updated test does not have an answer key. </p>
    #         <p> If you omit the Test parameter, the test for the
    #             Qualification type is unchanged. There is no way to remove a test from
    #             a Qualification type that has one. If the type already has a test, you
    #             cannot update it to be AutoGranted. If the Qualification type does not
    #             have a test and one is provided by an update, the type will henceforth
    #             have a test. </p>
    #         <p> If you want to update the test duration or answer key for an
    #             existing test without changing the questions, you must specify a Test
    #             parameter with the original questions, along with the updated values. </p>
    #         <p> If you provide an updated Test but no AnswerKey, the new test
    #             will not have an answer key. Requests for such Qualifications must be
    #             granted manually. </p>
    #         <p> You can also update the AutoGranted and AutoGrantedValue
    #             attributes of the Qualification type.</p>
    # @param [Hash, Types::UpdateQualificationTypeRequest] params
    # @option params [String] :qualification_type_id
    #   <p>The ID of the Qualification type to update.</p>
    # @option params [String] :description
    #   <p>The new description of the Qualification type.</p>
    # @option params [String] :qualification_type_status
    #   <p>The new status of the Qualification type - Active | Inactive</p>
    # @option params [String] :test
    #   <p>The questions for the Qualification test a Worker must answer correctly to obtain a Qualification of this type. If this parameter is specified, <code>TestDurationInSeconds</code> must also be specified.</p>
    #           <p>Constraints: Must not be longer than 65535 bytes. Must be a QuestionForm data structure. This parameter cannot be specified if AutoGranted is true.</p>
    #           <p>Constraints: None. If not specified, the Worker may request the Qualification without answering any questions.</p>
    # @option params [String] :answer_key
    #   <p>The answers to the Qualification test specified in the Test parameter, in the form of an AnswerKey data structure.</p>
    # @option params [Integer] :test_duration_in_seconds
    #   <p>The number of seconds the Worker has to complete the Qualification test, starting from the time the Worker requests the Qualification.</p>
    # @option params [Integer] :retry_delay_in_seconds
    #   <p>The amount of time, in seconds, that Workers must wait
    #               after requesting a Qualification of the specified Qualification type
    #               before they can retry the Qualification request. It is not possible to
    #               disable retries for a Qualification type after it has been created with
    #               retries enabled. If you want to disable retries, you must dispose of
    #               the existing retry-enabled Qualification type using
    #               DisposeQualificationType and then create a new Qualification type with
    #               retries disabled using CreateQualificationType.</p>
    # @option params [Boolean] :auto_granted
    #   <p>Specifies whether requests for the Qualification type are granted immediately, without prompting the Worker with a Qualification test.</p>
    #           <p>Constraints: If the Test parameter is specified, this parameter cannot be true.</p>
    # @option params [Integer] :auto_granted_value
    #   <p>The Qualification value to use for automatically granted Qualifications. This parameter is used only if the AutoGranted parameter is true.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     qualification_type_id: "EntityId", # required
    #     description: "String",
    #     qualification_type_status: "Active" # One of: ["Active", "Inactive"],
    #     test: "String",
    #     answer_key: "String",
    #     test_duration_in_seconds: 1,
    #     retry_delay_in_seconds: 1,
    #     auto_granted: false,
    #     auto_granted_value: 1
    #   }
    #   options = {}
    #   response = client.update_qualification_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     qualification_type: {
    #       qualification_type_id: "EntityId",
    #       creation_time: Time.now,
    #       name: "String",
    #       description: "String",
    #       keywords: "String",
    #       qualification_type_status: "Active" # One of: ["Active", "Inactive"],
    #       test: "String",
    #       test_duration_in_seconds: 1,
    #       answer_key: "String",
    #       retry_delay_in_seconds: 1,
    #       is_requestable: false,
    #       auto_granted: false,
    #       auto_granted_value: 1
    #     }
    #   }
    # @return [Types::UpdateQualificationTypeResponse]
    def update_qualification_type(params = {}, options = {})
      request = build_request(:update_qualification_type, params)
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
      context[:gem_name] = 'aws-sdk-mturk'
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
