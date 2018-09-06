# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:mturk)

module Aws::MTurk
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :mturk

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :simple_json (false)
    #   Disables request parameter conversion, validation, and formatting.
    #   Also disable response data type conversions. This option is useful
    #   when you want to ensure the highest level of performance by
    #   avoiding overhead of walking request parameters and response data
    #   structures.
    #
    #   When `:simple_json` is enabled, the request parameters hash must
    #   be formatted exactly as the DynamoDB API expects.
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # The `AcceptQualificationRequest` operation approves a Worker's
    # request for a Qualification.
    #
    # Only the owner of the Qualification type can grant a Qualification
    # request for that type.
    #
    # A successful request for the `AcceptQualificationRequest` operation
    # returns with no errors and an empty body.
    #
    # @option params [required, String] :qualification_request_id
    #   The ID of the Qualification request, as returned by the
    #   `GetQualificationRequests` operation.
    #
    # @option params [Integer] :integer_value
    #   The value of the Qualification. You can omit this value if you are
    #   using the presence or absence of the Qualification as the basis for a
    #   HIT requirement.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_qualification_request({
    #     qualification_request_id: "String", # required
    #     integer_value: 1,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/AcceptQualificationRequest AWS API Documentation
    #
    # @overload accept_qualification_request(params = {})
    # @param [Hash] params ({})
    def accept_qualification_request(params = {}, options = {})
      req = build_request(:accept_qualification_request, params)
      req.send_request(options)
    end

    # The `ApproveAssignment` operation approves the results of a completed
    # assignment.
    #
    # Approving an assignment initiates two payments from the Requester's
    # Amazon.com account
    #
    # * The Worker who submitted the results is paid the reward specified in
    #   the HIT.
    #
    # * Amazon Mechanical Turk fees are debited.
    #
    # If the Requester's account does not have adequate funds for these
    # payments, the call to ApproveAssignment returns an exception, and the
    # approval is not processed. You can include an optional feedback
    # message with the approval, which the Worker can see in the Status
    # section of the web site.
    #
    # You can also call this operation for assignments that were previous
    # rejected and approve them by explicitly overriding the previous
    # rejection. This only works on rejected assignments that were submitted
    # within the previous 30 days and only if the assignment's related HIT
    # has not been deleted.
    #
    # @option params [required, String] :assignment_id
    #   The ID of the assignment. The assignment must correspond to a HIT
    #   created by the Requester.
    #
    # @option params [String] :requester_feedback
    #   A message for the Worker, which the Worker can see in the Status
    #   section of the web site.
    #
    # @option params [Boolean] :override_rejection
    #   A flag indicating that an assignment should be approved even if it was
    #   previously rejected. Defaults to `False`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.approve_assignment({
    #     assignment_id: "EntityId", # required
    #     requester_feedback: "String",
    #     override_rejection: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ApproveAssignment AWS API Documentation
    #
    # @overload approve_assignment(params = {})
    # @param [Hash] params ({})
    def approve_assignment(params = {}, options = {})
      req = build_request(:approve_assignment, params)
      req.send_request(options)
    end

    # The `AssociateQualificationWithWorker` operation gives a Worker a
    # Qualification. `AssociateQualificationWithWorker` does not require
    # that the Worker submit a Qualification request. It gives the
    # Qualification directly to the Worker.
    #
    # You can only assign a Qualification of a Qualification type that you
    # created (using the `CreateQualificationType` operation).
    #
    # <note markdown="1"> Note: `AssociateQualificationWithWorker` does not affect any pending
    # Qualification requests for the Qualification by the Worker. If you
    # assign a Qualification to a Worker, then later grant a Qualification
    # request made by the Worker, the granting of the request may modify the
    # Qualification score. To resolve a pending Qualification request
    # without affecting the Qualification the Worker already has, reject the
    # request with the `RejectQualificationRequest` operation.
    #
    #  </note>
    #
    # @option params [required, String] :qualification_type_id
    #   The ID of the Qualification type to use for the assigned
    #   Qualification.
    #
    # @option params [required, String] :worker_id
    #   The ID of the Worker to whom the Qualification is being assigned.
    #   Worker IDs are included with submitted HIT assignments and
    #   Qualification requests.
    #
    # @option params [Integer] :integer_value
    #   The value of the Qualification to assign.
    #
    # @option params [Boolean] :send_notification
    #   Specifies whether to send a notification email message to the Worker
    #   saying that the qualification was assigned to the Worker. Note: this
    #   is true by default.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_qualification_with_worker({
    #     qualification_type_id: "EntityId", # required
    #     worker_id: "CustomerId", # required
    #     integer_value: 1,
    #     send_notification: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/AssociateQualificationWithWorker AWS API Documentation
    #
    # @overload associate_qualification_with_worker(params = {})
    # @param [Hash] params ({})
    def associate_qualification_with_worker(params = {}, options = {})
      req = build_request(:associate_qualification_with_worker, params)
      req.send_request(options)
    end

    # The `CreateAdditionalAssignmentsForHIT` operation increases the
    # maximum number of assignments of an existing HIT.
    #
    # To extend the maximum number of assignments, specify the number of
    # additional assignments.
    #
    # <note markdown="1"> * HITs created with fewer than 10 assignments cannot be extended to
    #   have 10 or more assignments. Attempting to add assignments in a way
    #   that brings the total number of assignments for a HIT from fewer
    #   than 10 assignments to 10 or more assignments will result in an
    #   `AWS.MechanicalTurk.InvalidMaximumAssignmentsIncrease` exception.
    #
    # * HITs that were created before July 22, 2015 cannot be extended.
    #   Attempting to extend HITs that were created before July 22, 2015
    #   will result in an `AWS.MechanicalTurk.HITTooOldForExtension`
    #   exception.
    #
    #  </note>
    #
    # @option params [required, String] :hit_id
    #   The ID of the HIT to extend.
    #
    # @option params [required, Integer] :number_of_additional_assignments
    #   The number of additional assignments to request for this HIT.
    #
    # @option params [String] :unique_request_token
    #   A unique identifier for this request, which allows you to retry the
    #   call on error without extending the HIT multiple times. This is useful
    #   in cases such as network timeouts where it is unclear whether or not
    #   the call succeeded on the server. If the extend HIT already exists in
    #   the system from a previous call using the same `UniqueRequestToken`,
    #   subsequent calls will return an error with a message containing the
    #   request ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_additional_assignments_for_hit({
    #     hit_id: "EntityId", # required
    #     number_of_additional_assignments: 1, # required
    #     unique_request_token: "IdempotencyToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/CreateAdditionalAssignmentsForHIT AWS API Documentation
    #
    # @overload create_additional_assignments_for_hit(params = {})
    # @param [Hash] params ({})
    def create_additional_assignments_for_hit(params = {}, options = {})
      req = build_request(:create_additional_assignments_for_hit, params)
      req.send_request(options)
    end

    # The `CreateHIT` operation creates a new Human Intelligence Task (HIT).
    # The new HIT is made available for Workers to find and accept on the
    # Amazon Mechanical Turk website.
    #
    # This operation allows you to specify a new HIT by passing in values
    # for the properties of the HIT, such as its title, reward amount and
    # number of assignments. When you pass these values to `CreateHIT`, a
    # new HIT is created for you, with a new `HITTypeID`. The HITTypeID can
    # be used to create additional HITs in the future without needing to
    # specify common parameters such as the title, description and reward
    # amount each time.
    #
    # An alternative way to create HITs is to first generate a HITTypeID
    # using the `CreateHITType` operation and then call the
    # `CreateHITWithHITType` operation. This is the recommended best
    # practice for Requesters who are creating large numbers of HITs.
    #
    # CreateHIT also supports several ways to provide question data: by
    # providing a value for the `Question` parameter that fully specifies
    # the contents of the HIT, or by providing a `HitLayoutId` and
    # associated `HitLayoutParameters`.
    #
    # <note markdown="1"> If a HIT is created with 10 or more maximum assignments, there is an
    # additional fee. For more information, see [Amazon Mechanical Turk
    # Pricing][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://requester.mturk.com/pricing
    #
    # @option params [Integer] :max_assignments
    #   The number of times the HIT can be accepted and completed before the
    #   HIT becomes unavailable.
    #
    # @option params [Integer] :auto_approval_delay_in_seconds
    #   The number of seconds after an assignment for the HIT has been
    #   submitted, after which the assignment is considered Approved
    #   automatically unless the Requester explicitly rejects it.
    #
    # @option params [required, Integer] :lifetime_in_seconds
    #   An amount of time, in seconds, after which the HIT is no longer
    #   available for users to accept. After the lifetime of the HIT elapses,
    #   the HIT no longer appears in HIT searches, even if not all of the
    #   assignments for the HIT have been accepted.
    #
    # @option params [required, Integer] :assignment_duration_in_seconds
    #   The amount of time, in seconds, that a Worker has to complete the HIT
    #   after accepting it. If a Worker does not complete the assignment
    #   within the specified duration, the assignment is considered abandoned.
    #   If the HIT is still active (that is, its lifetime has not elapsed),
    #   the assignment becomes available for other users to find and accept.
    #
    # @option params [required, String] :reward
    #   The amount of money the Requester will pay a Worker for successfully
    #   completing the HIT.
    #
    # @option params [required, String] :title
    #   The title of the HIT. A title should be short and descriptive about
    #   the kind of task the HIT contains. On the Amazon Mechanical Turk web
    #   site, the HIT title appears in search results, and everywhere the HIT
    #   is mentioned.
    #
    # @option params [String] :keywords
    #   One or more words or phrases that describe the HIT, separated by
    #   commas. These words are used in searches to find HITs.
    #
    # @option params [required, String] :description
    #   A general description of the HIT. A description includes detailed
    #   information about the kind of task the HIT contains. On the Amazon
    #   Mechanical Turk web site, the HIT description appears in the expanded
    #   view of search results, and in the HIT and assignment screens. A good
    #   description gives the user enough information to evaluate the HIT
    #   before accepting it.
    #
    # @option params [String] :question
    #   The data the person completing the HIT uses to produce the results.
    #
    #   Constraints: Must be a QuestionForm data structure, an
    #   ExternalQuestion data structure, or an HTMLQuestion data structure.
    #   The XML question data must not be larger than 64 kilobytes (65,535
    #   bytes) in size, including whitespace.
    #
    #   Either a Question parameter or a HITLayoutId parameter must be
    #   provided.
    #
    # @option params [String] :requester_annotation
    #   An arbitrary data field. The RequesterAnnotation parameter lets your
    #   application attach arbitrary data to the HIT for tracking purposes.
    #   For example, this parameter could be an identifier internal to the
    #   Requester's application that corresponds with the HIT.
    #
    #   The RequesterAnnotation parameter for a HIT is only visible to the
    #   Requester who created the HIT. It is not shown to the Worker, or any
    #   other Requester.
    #
    #   The RequesterAnnotation parameter may be different for each HIT you
    #   submit. It does not affect how your HITs are grouped.
    #
    # @option params [Array<Types::QualificationRequirement>] :qualification_requirements
    #   Conditions that a Worker's Qualifications must meet in order to
    #   accept the HIT. A HIT can have between zero and ten Qualification
    #   requirements. All requirements must be met in order for a Worker to
    #   accept the HIT. Additionally, other actions can be restricted using
    #   the `ActionsGuarded` field on each `QualificationRequirement`
    #   structure.
    #
    # @option params [String] :unique_request_token
    #   A unique identifier for this request which allows you to retry the
    #   call on error without creating duplicate HITs. This is useful in cases
    #   such as network timeouts where it is unclear whether or not the call
    #   succeeded on the server. If the HIT already exists in the system from
    #   a previous call using the same UniqueRequestToken, subsequent calls
    #   will return a AWS.MechanicalTurk.HitAlreadyExists error with a message
    #   containing the HITId.
    #
    #   <note markdown="1"> Note: It is your responsibility to ensure uniqueness of the token. The
    #   unique token expires after 24 hours. Subsequent calls using the same
    #   UniqueRequestToken made after the 24 hour limit could create duplicate
    #   HITs.
    #
    #    </note>
    #
    # @option params [Types::ReviewPolicy] :assignment_review_policy
    #   The Assignment-level Review Policy applies to the assignments under
    #   the HIT. You can specify for Mechanical Turk to take various actions
    #   based on the policy.
    #
    # @option params [Types::ReviewPolicy] :hit_review_policy
    #   The HIT-level Review Policy applies to the HIT. You can specify for
    #   Mechanical Turk to take various actions based on the policy.
    #
    # @option params [String] :hit_layout_id
    #   The HITLayoutId allows you to use a pre-existing HIT design with
    #   placeholder values and create an additional HIT by providing those
    #   values as HITLayoutParameters.
    #
    #   Constraints: Either a Question parameter or a HITLayoutId parameter
    #   must be provided.
    #
    # @option params [Array<Types::HITLayoutParameter>] :hit_layout_parameters
    #   If the HITLayoutId is provided, any placeholder values must be filled
    #   in with values using the HITLayoutParameter structure. For more
    #   information, see HITLayout.
    #
    # @return [Types::CreateHITResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateHITResponse#hit #hit} => Types::HIT
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_hit({
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
    #         comparator: "LessThan", # required, accepts LessThan, LessThanOrEqualTo, GreaterThan, GreaterThanOrEqualTo, EqualTo, NotEqualTo, Exists, DoesNotExist, In, NotIn
    #         integer_values: [1],
    #         locale_values: [
    #           {
    #             country: "CountryParameters", # required
    #             subdivision: "CountryParameters",
    #           },
    #         ],
    #         required_to_preview: false,
    #         actions_guarded: "Accept", # accepts Accept, PreviewAndAccept, DiscoverPreviewAndAccept
    #       },
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
    #               values: ["String"],
    #             },
    #           ],
    #         },
    #       ],
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
    #               values: ["String"],
    #             },
    #           ],
    #         },
    #       ],
    #     },
    #     hit_layout_id: "EntityId",
    #     hit_layout_parameters: [
    #       {
    #         name: "String", # required
    #         value: "String", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.hit.hit_id #=> String
    #   resp.hit.hit_type_id #=> String
    #   resp.hit.hit_group_id #=> String
    #   resp.hit.hit_layout_id #=> String
    #   resp.hit.creation_time #=> Time
    #   resp.hit.title #=> String
    #   resp.hit.description #=> String
    #   resp.hit.question #=> String
    #   resp.hit.keywords #=> String
    #   resp.hit.hit_status #=> String, one of "Assignable", "Unassignable", "Reviewable", "Reviewing", "Disposed"
    #   resp.hit.max_assignments #=> Integer
    #   resp.hit.reward #=> String
    #   resp.hit.auto_approval_delay_in_seconds #=> Integer
    #   resp.hit.expiration #=> Time
    #   resp.hit.assignment_duration_in_seconds #=> Integer
    #   resp.hit.requester_annotation #=> String
    #   resp.hit.qualification_requirements #=> Array
    #   resp.hit.qualification_requirements[0].qualification_type_id #=> String
    #   resp.hit.qualification_requirements[0].comparator #=> String, one of "LessThan", "LessThanOrEqualTo", "GreaterThan", "GreaterThanOrEqualTo", "EqualTo", "NotEqualTo", "Exists", "DoesNotExist", "In", "NotIn"
    #   resp.hit.qualification_requirements[0].integer_values #=> Array
    #   resp.hit.qualification_requirements[0].integer_values[0] #=> Integer
    #   resp.hit.qualification_requirements[0].locale_values #=> Array
    #   resp.hit.qualification_requirements[0].locale_values[0].country #=> String
    #   resp.hit.qualification_requirements[0].locale_values[0].subdivision #=> String
    #   resp.hit.qualification_requirements[0].required_to_preview #=> Boolean
    #   resp.hit.qualification_requirements[0].actions_guarded #=> String, one of "Accept", "PreviewAndAccept", "DiscoverPreviewAndAccept"
    #   resp.hit.hit_review_status #=> String, one of "NotReviewed", "MarkedForReview", "ReviewedAppropriate", "ReviewedInappropriate"
    #   resp.hit.number_of_assignments_pending #=> Integer
    #   resp.hit.number_of_assignments_available #=> Integer
    #   resp.hit.number_of_assignments_completed #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/CreateHIT AWS API Documentation
    #
    # @overload create_hit(params = {})
    # @param [Hash] params ({})
    def create_hit(params = {}, options = {})
      req = build_request(:create_hit, params)
      req.send_request(options)
    end

    # The `CreateHITType` operation creates a new HIT type. This operation
    # allows you to define a standard set of HIT properties to use when
    # creating HITs. If you register a HIT type with values that match an
    # existing HIT type, the HIT type ID of the existing type will be
    # returned.
    #
    # @option params [Integer] :auto_approval_delay_in_seconds
    #   The number of seconds after an assignment for the HIT has been
    #   submitted, after which the assignment is considered Approved
    #   automatically unless the Requester explicitly rejects it.
    #
    # @option params [required, Integer] :assignment_duration_in_seconds
    #   The amount of time, in seconds, that a Worker has to complete the HIT
    #   after accepting it. If a Worker does not complete the assignment
    #   within the specified duration, the assignment is considered abandoned.
    #   If the HIT is still active (that is, its lifetime has not elapsed),
    #   the assignment becomes available for other users to find and accept.
    #
    # @option params [required, String] :reward
    #   The amount of money the Requester will pay a Worker for successfully
    #   completing the HIT.
    #
    # @option params [required, String] :title
    #   The title of the HIT. A title should be short and descriptive about
    #   the kind of task the HIT contains. On the Amazon Mechanical Turk web
    #   site, the HIT title appears in search results, and everywhere the HIT
    #   is mentioned.
    #
    # @option params [String] :keywords
    #   One or more words or phrases that describe the HIT, separated by
    #   commas. These words are used in searches to find HITs.
    #
    # @option params [required, String] :description
    #   A general description of the HIT. A description includes detailed
    #   information about the kind of task the HIT contains. On the Amazon
    #   Mechanical Turk web site, the HIT description appears in the expanded
    #   view of search results, and in the HIT and assignment screens. A good
    #   description gives the user enough information to evaluate the HIT
    #   before accepting it.
    #
    # @option params [Array<Types::QualificationRequirement>] :qualification_requirements
    #   Conditions that a Worker's Qualifications must meet in order to
    #   accept the HIT. A HIT can have between zero and ten Qualification
    #   requirements. All requirements must be met in order for a Worker to
    #   accept the HIT. Additionally, other actions can be restricted using
    #   the `ActionsGuarded` field on each `QualificationRequirement`
    #   structure.
    #
    # @return [Types::CreateHITTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateHITTypeResponse#hit_type_id #hit_type_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_hit_type({
    #     auto_approval_delay_in_seconds: 1,
    #     assignment_duration_in_seconds: 1, # required
    #     reward: "CurrencyAmount", # required
    #     title: "String", # required
    #     keywords: "String",
    #     description: "String", # required
    #     qualification_requirements: [
    #       {
    #         qualification_type_id: "String", # required
    #         comparator: "LessThan", # required, accepts LessThan, LessThanOrEqualTo, GreaterThan, GreaterThanOrEqualTo, EqualTo, NotEqualTo, Exists, DoesNotExist, In, NotIn
    #         integer_values: [1],
    #         locale_values: [
    #           {
    #             country: "CountryParameters", # required
    #             subdivision: "CountryParameters",
    #           },
    #         ],
    #         required_to_preview: false,
    #         actions_guarded: "Accept", # accepts Accept, PreviewAndAccept, DiscoverPreviewAndAccept
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.hit_type_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/CreateHITType AWS API Documentation
    #
    # @overload create_hit_type(params = {})
    # @param [Hash] params ({})
    def create_hit_type(params = {}, options = {})
      req = build_request(:create_hit_type, params)
      req.send_request(options)
    end

    # The `CreateHITWithHITType` operation creates a new Human Intelligence
    # Task (HIT) using an existing HITTypeID generated by the
    # `CreateHITType` operation.
    #
    # This is an alternative way to create HITs from the `CreateHIT`
    # operation. This is the recommended best practice for Requesters who
    # are creating large numbers of HITs.
    #
    # CreateHITWithHITType also supports several ways to provide question
    # data: by providing a value for the `Question` parameter that fully
    # specifies the contents of the HIT, or by providing a `HitLayoutId` and
    # associated `HitLayoutParameters`.
    #
    # <note markdown="1"> If a HIT is created with 10 or more maximum assignments, there is an
    # additional fee. For more information, see [Amazon Mechanical Turk
    # Pricing][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://requester.mturk.com/pricing
    #
    # @option params [required, String] :hit_type_id
    #   The HIT type ID you want to create this HIT with.
    #
    # @option params [Integer] :max_assignments
    #   The number of times the HIT can be accepted and completed before the
    #   HIT becomes unavailable.
    #
    # @option params [required, Integer] :lifetime_in_seconds
    #   An amount of time, in seconds, after which the HIT is no longer
    #   available for users to accept. After the lifetime of the HIT elapses,
    #   the HIT no longer appears in HIT searches, even if not all of the
    #   assignments for the HIT have been accepted.
    #
    # @option params [String] :question
    #   The data the person completing the HIT uses to produce the results.
    #
    #   Constraints: Must be a QuestionForm data structure, an
    #   ExternalQuestion data structure, or an HTMLQuestion data structure.
    #   The XML question data must not be larger than 64 kilobytes (65,535
    #   bytes) in size, including whitespace.
    #
    #   Either a Question parameter or a HITLayoutId parameter must be
    #   provided.
    #
    # @option params [String] :requester_annotation
    #   An arbitrary data field. The RequesterAnnotation parameter lets your
    #   application attach arbitrary data to the HIT for tracking purposes.
    #   For example, this parameter could be an identifier internal to the
    #   Requester's application that corresponds with the HIT.
    #
    #   The RequesterAnnotation parameter for a HIT is only visible to the
    #   Requester who created the HIT. It is not shown to the Worker, or any
    #   other Requester.
    #
    #   The RequesterAnnotation parameter may be different for each HIT you
    #   submit. It does not affect how your HITs are grouped.
    #
    # @option params [String] :unique_request_token
    #   A unique identifier for this request which allows you to retry the
    #   call on error without creating duplicate HITs. This is useful in cases
    #   such as network timeouts where it is unclear whether or not the call
    #   succeeded on the server. If the HIT already exists in the system from
    #   a previous call using the same UniqueRequestToken, subsequent calls
    #   will return a AWS.MechanicalTurk.HitAlreadyExists error with a message
    #   containing the HITId.
    #
    #   <note markdown="1"> Note: It is your responsibility to ensure uniqueness of the token. The
    #   unique token expires after 24 hours. Subsequent calls using the same
    #   UniqueRequestToken made after the 24 hour limit could create duplicate
    #   HITs.
    #
    #    </note>
    #
    # @option params [Types::ReviewPolicy] :assignment_review_policy
    #   The Assignment-level Review Policy applies to the assignments under
    #   the HIT. You can specify for Mechanical Turk to take various actions
    #   based on the policy.
    #
    # @option params [Types::ReviewPolicy] :hit_review_policy
    #   The HIT-level Review Policy applies to the HIT. You can specify for
    #   Mechanical Turk to take various actions based on the policy.
    #
    # @option params [String] :hit_layout_id
    #   The HITLayoutId allows you to use a pre-existing HIT design with
    #   placeholder values and create an additional HIT by providing those
    #   values as HITLayoutParameters.
    #
    #   Constraints: Either a Question parameter or a HITLayoutId parameter
    #   must be provided.
    #
    # @option params [Array<Types::HITLayoutParameter>] :hit_layout_parameters
    #   If the HITLayoutId is provided, any placeholder values must be filled
    #   in with values using the HITLayoutParameter structure. For more
    #   information, see HITLayout.
    #
    # @return [Types::CreateHITWithHITTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateHITWithHITTypeResponse#hit #hit} => Types::HIT
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_hit_with_hit_type({
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
    #               values: ["String"],
    #             },
    #           ],
    #         },
    #       ],
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
    #               values: ["String"],
    #             },
    #           ],
    #         },
    #       ],
    #     },
    #     hit_layout_id: "EntityId",
    #     hit_layout_parameters: [
    #       {
    #         name: "String", # required
    #         value: "String", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.hit.hit_id #=> String
    #   resp.hit.hit_type_id #=> String
    #   resp.hit.hit_group_id #=> String
    #   resp.hit.hit_layout_id #=> String
    #   resp.hit.creation_time #=> Time
    #   resp.hit.title #=> String
    #   resp.hit.description #=> String
    #   resp.hit.question #=> String
    #   resp.hit.keywords #=> String
    #   resp.hit.hit_status #=> String, one of "Assignable", "Unassignable", "Reviewable", "Reviewing", "Disposed"
    #   resp.hit.max_assignments #=> Integer
    #   resp.hit.reward #=> String
    #   resp.hit.auto_approval_delay_in_seconds #=> Integer
    #   resp.hit.expiration #=> Time
    #   resp.hit.assignment_duration_in_seconds #=> Integer
    #   resp.hit.requester_annotation #=> String
    #   resp.hit.qualification_requirements #=> Array
    #   resp.hit.qualification_requirements[0].qualification_type_id #=> String
    #   resp.hit.qualification_requirements[0].comparator #=> String, one of "LessThan", "LessThanOrEqualTo", "GreaterThan", "GreaterThanOrEqualTo", "EqualTo", "NotEqualTo", "Exists", "DoesNotExist", "In", "NotIn"
    #   resp.hit.qualification_requirements[0].integer_values #=> Array
    #   resp.hit.qualification_requirements[0].integer_values[0] #=> Integer
    #   resp.hit.qualification_requirements[0].locale_values #=> Array
    #   resp.hit.qualification_requirements[0].locale_values[0].country #=> String
    #   resp.hit.qualification_requirements[0].locale_values[0].subdivision #=> String
    #   resp.hit.qualification_requirements[0].required_to_preview #=> Boolean
    #   resp.hit.qualification_requirements[0].actions_guarded #=> String, one of "Accept", "PreviewAndAccept", "DiscoverPreviewAndAccept"
    #   resp.hit.hit_review_status #=> String, one of "NotReviewed", "MarkedForReview", "ReviewedAppropriate", "ReviewedInappropriate"
    #   resp.hit.number_of_assignments_pending #=> Integer
    #   resp.hit.number_of_assignments_available #=> Integer
    #   resp.hit.number_of_assignments_completed #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/CreateHITWithHITType AWS API Documentation
    #
    # @overload create_hit_with_hit_type(params = {})
    # @param [Hash] params ({})
    def create_hit_with_hit_type(params = {}, options = {})
      req = build_request(:create_hit_with_hit_type, params)
      req.send_request(options)
    end

    # The `CreateQualificationType` operation creates a new Qualification
    # type, which is represented by a `QualificationType` data structure.
    #
    # @option params [required, String] :name
    #   The name you give to the Qualification type. The type name is used to
    #   represent the Qualification to Workers, and to find the type using a
    #   Qualification type search. It must be unique across all of your
    #   Qualification types.
    #
    # @option params [String] :keywords
    #   One or more words or phrases that describe the Qualification type,
    #   separated by commas. The keywords of a type make the type easier to
    #   find during a search.
    #
    # @option params [required, String] :description
    #   A long description for the Qualification type. On the Amazon
    #   Mechanical Turk website, the long description is displayed when a
    #   Worker examines a Qualification type.
    #
    # @option params [required, String] :qualification_type_status
    #   The initial status of the Qualification type.
    #
    #   Constraints: Valid values are: Active \| Inactive
    #
    # @option params [Integer] :retry_delay_in_seconds
    #   The number of seconds that a Worker must wait after requesting a
    #   Qualification of the Qualification type before the worker can retry
    #   the Qualification request.
    #
    #   Constraints: None. If not specified, retries are disabled and Workers
    #   can request a Qualification of this type only once, even if the Worker
    #   has not been granted the Qualification. It is not possible to disable
    #   retries for a Qualification type after it has been created with
    #   retries enabled. If you want to disable retries, you must delete
    #   existing retry-enabled Qualification type and then create a new
    #   Qualification type with retries disabled.
    #
    # @option params [String] :test
    #   The questions for the Qualification test a Worker must answer
    #   correctly to obtain a Qualification of this type. If this parameter is
    #   specified, `TestDurationInSeconds` must also be specified.
    #
    #   Constraints: Must not be longer than 65535 bytes. Must be a
    #   QuestionForm data structure. This parameter cannot be specified if
    #   AutoGranted is true.
    #
    #   Constraints: None. If not specified, the Worker may request the
    #   Qualification without answering any questions.
    #
    # @option params [String] :answer_key
    #   The answers to the Qualification test specified in the Test parameter,
    #   in the form of an AnswerKey data structure.
    #
    #   Constraints: Must not be longer than 65535 bytes.
    #
    #   Constraints: None. If not specified, you must process Qualification
    #   requests manually.
    #
    # @option params [Integer] :test_duration_in_seconds
    #   The number of seconds the Worker has to complete the Qualification
    #   test, starting from the time the Worker requests the Qualification.
    #
    # @option params [Boolean] :auto_granted
    #   Specifies whether requests for the Qualification type are granted
    #   immediately, without prompting the Worker with a Qualification test.
    #
    #   Constraints: If the Test parameter is specified, this parameter cannot
    #   be true.
    #
    # @option params [Integer] :auto_granted_value
    #   The Qualification value to use for automatically granted
    #   Qualifications. This parameter is used only if the AutoGranted
    #   parameter is true.
    #
    # @return [Types::CreateQualificationTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateQualificationTypeResponse#qualification_type #qualification_type} => Types::QualificationType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_qualification_type({
    #     name: "String", # required
    #     keywords: "String",
    #     description: "String", # required
    #     qualification_type_status: "Active", # required, accepts Active, Inactive
    #     retry_delay_in_seconds: 1,
    #     test: "String",
    #     answer_key: "String",
    #     test_duration_in_seconds: 1,
    #     auto_granted: false,
    #     auto_granted_value: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.qualification_type.qualification_type_id #=> String
    #   resp.qualification_type.creation_time #=> Time
    #   resp.qualification_type.name #=> String
    #   resp.qualification_type.description #=> String
    #   resp.qualification_type.keywords #=> String
    #   resp.qualification_type.qualification_type_status #=> String, one of "Active", "Inactive"
    #   resp.qualification_type.test #=> String
    #   resp.qualification_type.test_duration_in_seconds #=> Integer
    #   resp.qualification_type.answer_key #=> String
    #   resp.qualification_type.retry_delay_in_seconds #=> Integer
    #   resp.qualification_type.is_requestable #=> Boolean
    #   resp.qualification_type.auto_granted #=> Boolean
    #   resp.qualification_type.auto_granted_value #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/CreateQualificationType AWS API Documentation
    #
    # @overload create_qualification_type(params = {})
    # @param [Hash] params ({})
    def create_qualification_type(params = {}, options = {})
      req = build_request(:create_qualification_type, params)
      req.send_request(options)
    end

    # The `CreateWorkerBlock` operation allows you to prevent a Worker from
    # working on your HITs. For example, you can block a Worker who is
    # producing poor quality work. You can block up to 100,000 Workers.
    #
    # @option params [required, String] :worker_id
    #   The ID of the Worker to block.
    #
    # @option params [required, String] :reason
    #   A message explaining the reason for blocking the Worker. This
    #   parameter enables you to keep track of your Workers. The Worker does
    #   not see this message.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_worker_block({
    #     worker_id: "CustomerId", # required
    #     reason: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/CreateWorkerBlock AWS API Documentation
    #
    # @overload create_worker_block(params = {})
    # @param [Hash] params ({})
    def create_worker_block(params = {}, options = {})
      req = build_request(:create_worker_block, params)
      req.send_request(options)
    end

    # The `DeleteHIT` operation is used to delete HIT that is no longer
    # needed. Only the Requester who created the HIT can delete it.
    #
    # You can only dispose of HITs that are in the `Reviewable` state, with
    # all of their submitted assignments already either approved or
    # rejected. If you call the DeleteHIT operation on a HIT that is not in
    # the `Reviewable` state (for example, that has not expired, or still
    # has active assignments), or on a HIT that is Reviewable but without
    # all of its submitted assignments already approved or rejected, the
    # service will return an error.
    #
    # <note markdown="1"> * HITs are automatically disposed of after 120 days.
    #
    # * After you dispose of a HIT, you can no longer approve the HIT's
    #   rejected assignments.
    #
    # * Disposed HITs are not returned in results for the ListHITs
    #   operation.
    #
    # * Disposing HITs can improve the performance of operations such as
    #   ListReviewableHITs and ListHITs.
    #
    #  </note>
    #
    # @option params [required, String] :hit_id
    #   The ID of the HIT to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_hit({
    #     hit_id: "EntityId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/DeleteHIT AWS API Documentation
    #
    # @overload delete_hit(params = {})
    # @param [Hash] params ({})
    def delete_hit(params = {}, options = {})
      req = build_request(:delete_hit, params)
      req.send_request(options)
    end

    # The `DeleteQualificationType` deletes a Qualification type and deletes
    # any HIT types that are associated with the Qualification type.
    #
    # This operation does not revoke Qualifications already assigned to
    # Workers because the Qualifications might be needed for active HITs. If
    # there are any pending requests for the Qualification type, Amazon
    # Mechanical Turk rejects those requests. After you delete a
    # Qualification type, you can no longer use it to create HITs or HIT
    # types.
    #
    # <note markdown="1"> DeleteQualificationType must wait for all the HITs that use the
    # deleted Qualification type to be deleted before completing. It may
    # take up to 48 hours before DeleteQualificationType completes and the
    # unique name of the Qualification type is available for reuse with
    # CreateQualificationType.
    #
    #  </note>
    #
    # @option params [required, String] :qualification_type_id
    #   The ID of the QualificationType to dispose.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_qualification_type({
    #     qualification_type_id: "EntityId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/DeleteQualificationType AWS API Documentation
    #
    # @overload delete_qualification_type(params = {})
    # @param [Hash] params ({})
    def delete_qualification_type(params = {}, options = {})
      req = build_request(:delete_qualification_type, params)
      req.send_request(options)
    end

    # The `DeleteWorkerBlock` operation allows you to reinstate a blocked
    # Worker to work on your HITs. This operation reverses the effects of
    # the CreateWorkerBlock operation. You need the Worker ID to use this
    # operation. If the Worker ID is missing or invalid, this operation
    # fails and returns the message “WorkerId is invalid.” If the specified
    # Worker is not blocked, this operation returns successfully.
    #
    # @option params [required, String] :worker_id
    #   The ID of the Worker to unblock.
    #
    # @option params [String] :reason
    #   A message that explains the reason for unblocking the Worker. The
    #   Worker does not see this message.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_worker_block({
    #     worker_id: "CustomerId", # required
    #     reason: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/DeleteWorkerBlock AWS API Documentation
    #
    # @overload delete_worker_block(params = {})
    # @param [Hash] params ({})
    def delete_worker_block(params = {}, options = {})
      req = build_request(:delete_worker_block, params)
      req.send_request(options)
    end

    # The `DisassociateQualificationFromWorker` revokes a previously granted
    # Qualification from a user.
    #
    # You can provide a text message explaining why the Qualification was
    # revoked. The user who had the Qualification can see this message.
    #
    # @option params [required, String] :worker_id
    #   The ID of the Worker who possesses the Qualification to be revoked.
    #
    # @option params [required, String] :qualification_type_id
    #   The ID of the Qualification type of the Qualification to be revoked.
    #
    # @option params [String] :reason
    #   A text message that explains why the Qualification was revoked. The
    #   user who had the Qualification sees this message.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_qualification_from_worker({
    #     worker_id: "CustomerId", # required
    #     qualification_type_id: "EntityId", # required
    #     reason: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/DisassociateQualificationFromWorker AWS API Documentation
    #
    # @overload disassociate_qualification_from_worker(params = {})
    # @param [Hash] params ({})
    def disassociate_qualification_from_worker(params = {}, options = {})
      req = build_request(:disassociate_qualification_from_worker, params)
      req.send_request(options)
    end

    # The `GetAccountBalance` operation retrieves the amount of money in
    # your Amazon Mechanical Turk account.
    #
    # @return [Types::GetAccountBalanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccountBalanceResponse#available_balance #available_balance} => String
    #   * {Types::GetAccountBalanceResponse#on_hold_balance #on_hold_balance} => String
    #
    # @example Response structure
    #
    #   resp.available_balance #=> String
    #   resp.on_hold_balance #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/GetAccountBalance AWS API Documentation
    #
    # @overload get_account_balance(params = {})
    # @param [Hash] params ({})
    def get_account_balance(params = {}, options = {})
      req = build_request(:get_account_balance, params)
      req.send_request(options)
    end

    # The `GetAssignment` operation retrieves the details of the specified
    # Assignment.
    #
    # @option params [required, String] :assignment_id
    #   The ID of the Assignment to be retrieved.
    #
    # @return [Types::GetAssignmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAssignmentResponse#assignment #assignment} => Types::Assignment
    #   * {Types::GetAssignmentResponse#hit #hit} => Types::HIT
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_assignment({
    #     assignment_id: "EntityId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.assignment.assignment_id #=> String
    #   resp.assignment.worker_id #=> String
    #   resp.assignment.hit_id #=> String
    #   resp.assignment.assignment_status #=> String, one of "Submitted", "Approved", "Rejected"
    #   resp.assignment.auto_approval_time #=> Time
    #   resp.assignment.accept_time #=> Time
    #   resp.assignment.submit_time #=> Time
    #   resp.assignment.approval_time #=> Time
    #   resp.assignment.rejection_time #=> Time
    #   resp.assignment.deadline #=> Time
    #   resp.assignment.answer #=> String
    #   resp.assignment.requester_feedback #=> String
    #   resp.hit.hit_id #=> String
    #   resp.hit.hit_type_id #=> String
    #   resp.hit.hit_group_id #=> String
    #   resp.hit.hit_layout_id #=> String
    #   resp.hit.creation_time #=> Time
    #   resp.hit.title #=> String
    #   resp.hit.description #=> String
    #   resp.hit.question #=> String
    #   resp.hit.keywords #=> String
    #   resp.hit.hit_status #=> String, one of "Assignable", "Unassignable", "Reviewable", "Reviewing", "Disposed"
    #   resp.hit.max_assignments #=> Integer
    #   resp.hit.reward #=> String
    #   resp.hit.auto_approval_delay_in_seconds #=> Integer
    #   resp.hit.expiration #=> Time
    #   resp.hit.assignment_duration_in_seconds #=> Integer
    #   resp.hit.requester_annotation #=> String
    #   resp.hit.qualification_requirements #=> Array
    #   resp.hit.qualification_requirements[0].qualification_type_id #=> String
    #   resp.hit.qualification_requirements[0].comparator #=> String, one of "LessThan", "LessThanOrEqualTo", "GreaterThan", "GreaterThanOrEqualTo", "EqualTo", "NotEqualTo", "Exists", "DoesNotExist", "In", "NotIn"
    #   resp.hit.qualification_requirements[0].integer_values #=> Array
    #   resp.hit.qualification_requirements[0].integer_values[0] #=> Integer
    #   resp.hit.qualification_requirements[0].locale_values #=> Array
    #   resp.hit.qualification_requirements[0].locale_values[0].country #=> String
    #   resp.hit.qualification_requirements[0].locale_values[0].subdivision #=> String
    #   resp.hit.qualification_requirements[0].required_to_preview #=> Boolean
    #   resp.hit.qualification_requirements[0].actions_guarded #=> String, one of "Accept", "PreviewAndAccept", "DiscoverPreviewAndAccept"
    #   resp.hit.hit_review_status #=> String, one of "NotReviewed", "MarkedForReview", "ReviewedAppropriate", "ReviewedInappropriate"
    #   resp.hit.number_of_assignments_pending #=> Integer
    #   resp.hit.number_of_assignments_available #=> Integer
    #   resp.hit.number_of_assignments_completed #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/GetAssignment AWS API Documentation
    #
    # @overload get_assignment(params = {})
    # @param [Hash] params ({})
    def get_assignment(params = {}, options = {})
      req = build_request(:get_assignment, params)
      req.send_request(options)
    end

    # The `GetFileUploadURL` operation generates and returns a temporary
    # URL. You use the temporary URL to retrieve a file uploaded by a Worker
    # as an answer to a FileUploadAnswer question for a HIT. The temporary
    # URL is generated the instant the GetFileUploadURL operation is called,
    # and is valid for 60 seconds. You can get a temporary file upload URL
    # any time until the HIT is disposed. After the HIT is disposed, any
    # uploaded files are deleted, and cannot be retrieved. Pending
    # Deprecation on December 12, 2017. The Answer Specification structure
    # will no longer support the `FileUploadAnswer` element to be used for
    # the QuestionForm data structure. Instead, we recommend that Requesters
    # who want to create HITs asking Workers to upload files to use Amazon
    # S3.
    #
    # @option params [required, String] :assignment_id
    #   The ID of the assignment that contains the question with a
    #   FileUploadAnswer.
    #
    # @option params [required, String] :question_identifier
    #   The identifier of the question with a FileUploadAnswer, as specified
    #   in the QuestionForm of the HIT.
    #
    # @return [Types::GetFileUploadURLResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFileUploadURLResponse#file_upload_url #file_upload_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_file_upload_url({
    #     assignment_id: "EntityId", # required
    #     question_identifier: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.file_upload_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/GetFileUploadURL AWS API Documentation
    #
    # @overload get_file_upload_url(params = {})
    # @param [Hash] params ({})
    def get_file_upload_url(params = {}, options = {})
      req = build_request(:get_file_upload_url, params)
      req.send_request(options)
    end

    # The `GetHIT` operation retrieves the details of the specified HIT.
    #
    # @option params [required, String] :hit_id
    #   The ID of the HIT to be retrieved.
    #
    # @return [Types::GetHITResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetHITResponse#hit #hit} => Types::HIT
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_hit({
    #     hit_id: "EntityId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.hit.hit_id #=> String
    #   resp.hit.hit_type_id #=> String
    #   resp.hit.hit_group_id #=> String
    #   resp.hit.hit_layout_id #=> String
    #   resp.hit.creation_time #=> Time
    #   resp.hit.title #=> String
    #   resp.hit.description #=> String
    #   resp.hit.question #=> String
    #   resp.hit.keywords #=> String
    #   resp.hit.hit_status #=> String, one of "Assignable", "Unassignable", "Reviewable", "Reviewing", "Disposed"
    #   resp.hit.max_assignments #=> Integer
    #   resp.hit.reward #=> String
    #   resp.hit.auto_approval_delay_in_seconds #=> Integer
    #   resp.hit.expiration #=> Time
    #   resp.hit.assignment_duration_in_seconds #=> Integer
    #   resp.hit.requester_annotation #=> String
    #   resp.hit.qualification_requirements #=> Array
    #   resp.hit.qualification_requirements[0].qualification_type_id #=> String
    #   resp.hit.qualification_requirements[0].comparator #=> String, one of "LessThan", "LessThanOrEqualTo", "GreaterThan", "GreaterThanOrEqualTo", "EqualTo", "NotEqualTo", "Exists", "DoesNotExist", "In", "NotIn"
    #   resp.hit.qualification_requirements[0].integer_values #=> Array
    #   resp.hit.qualification_requirements[0].integer_values[0] #=> Integer
    #   resp.hit.qualification_requirements[0].locale_values #=> Array
    #   resp.hit.qualification_requirements[0].locale_values[0].country #=> String
    #   resp.hit.qualification_requirements[0].locale_values[0].subdivision #=> String
    #   resp.hit.qualification_requirements[0].required_to_preview #=> Boolean
    #   resp.hit.qualification_requirements[0].actions_guarded #=> String, one of "Accept", "PreviewAndAccept", "DiscoverPreviewAndAccept"
    #   resp.hit.hit_review_status #=> String, one of "NotReviewed", "MarkedForReview", "ReviewedAppropriate", "ReviewedInappropriate"
    #   resp.hit.number_of_assignments_pending #=> Integer
    #   resp.hit.number_of_assignments_available #=> Integer
    #   resp.hit.number_of_assignments_completed #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/GetHIT AWS API Documentation
    #
    # @overload get_hit(params = {})
    # @param [Hash] params ({})
    def get_hit(params = {}, options = {})
      req = build_request(:get_hit, params)
      req.send_request(options)
    end

    # The `GetQualificationScore` operation returns the value of a Worker's
    # Qualification for a given Qualification type.
    #
    # To get a Worker's Qualification, you must know the Worker's ID. The
    # Worker's ID is included in the assignment data returned by the
    # `ListAssignmentsForHIT` operation.
    #
    # Only the owner of a Qualification type can query the value of a
    # Worker's Qualification of that type.
    #
    # @option params [required, String] :qualification_type_id
    #   The ID of the QualificationType.
    #
    # @option params [required, String] :worker_id
    #   The ID of the Worker whose Qualification is being updated.
    #
    # @return [Types::GetQualificationScoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQualificationScoreResponse#qualification #qualification} => Types::Qualification
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_qualification_score({
    #     qualification_type_id: "EntityId", # required
    #     worker_id: "CustomerId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.qualification.qualification_type_id #=> String
    #   resp.qualification.worker_id #=> String
    #   resp.qualification.grant_time #=> Time
    #   resp.qualification.integer_value #=> Integer
    #   resp.qualification.locale_value.country #=> String
    #   resp.qualification.locale_value.subdivision #=> String
    #   resp.qualification.status #=> String, one of "Granted", "Revoked"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/GetQualificationScore AWS API Documentation
    #
    # @overload get_qualification_score(params = {})
    # @param [Hash] params ({})
    def get_qualification_score(params = {}, options = {})
      req = build_request(:get_qualification_score, params)
      req.send_request(options)
    end

    # The `GetQualificationType`operation retrieves information about a
    # Qualification type using its ID.
    #
    # @option params [required, String] :qualification_type_id
    #   The ID of the QualificationType.
    #
    # @return [Types::GetQualificationTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQualificationTypeResponse#qualification_type #qualification_type} => Types::QualificationType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_qualification_type({
    #     qualification_type_id: "EntityId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.qualification_type.qualification_type_id #=> String
    #   resp.qualification_type.creation_time #=> Time
    #   resp.qualification_type.name #=> String
    #   resp.qualification_type.description #=> String
    #   resp.qualification_type.keywords #=> String
    #   resp.qualification_type.qualification_type_status #=> String, one of "Active", "Inactive"
    #   resp.qualification_type.test #=> String
    #   resp.qualification_type.test_duration_in_seconds #=> Integer
    #   resp.qualification_type.answer_key #=> String
    #   resp.qualification_type.retry_delay_in_seconds #=> Integer
    #   resp.qualification_type.is_requestable #=> Boolean
    #   resp.qualification_type.auto_granted #=> Boolean
    #   resp.qualification_type.auto_granted_value #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/GetQualificationType AWS API Documentation
    #
    # @overload get_qualification_type(params = {})
    # @param [Hash] params ({})
    def get_qualification_type(params = {}, options = {})
      req = build_request(:get_qualification_type, params)
      req.send_request(options)
    end

    # The `ListAssignmentsForHIT` operation retrieves completed assignments
    # for a HIT. You can use this operation to retrieve the results for a
    # HIT.
    #
    # You can get assignments for a HIT at any time, even if the HIT is not
    # yet Reviewable. If a HIT requested multiple assignments, and has
    # received some results but has not yet become Reviewable, you can still
    # retrieve the partial results with this operation.
    #
    # Use the AssignmentStatus parameter to control which set of assignments
    # for a HIT are returned. The ListAssignmentsForHIT operation can return
    # submitted assignments awaiting approval, or it can return assignments
    # that have already been approved or rejected. You can set
    # AssignmentStatus=Approved,Rejected to get assignments that have
    # already been approved and rejected together in one result set.
    #
    # Only the Requester who created the HIT can retrieve the assignments
    # for that HIT.
    #
    # Results are sorted and divided into numbered pages and the operation
    # returns a single page of results. You can use the parameters of the
    # operation to control sorting and pagination.
    #
    # @option params [required, String] :hit_id
    #   The ID of the HIT.
    #
    # @option params [String] :next_token
    #   Pagination token
    #
    # @option params [Integer] :max_results
    #
    # @option params [Array<String>] :assignment_statuses
    #   The status of the assignments to return: Submitted \| Approved \|
    #   Rejected
    #
    # @return [Types::ListAssignmentsForHITResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssignmentsForHITResponse#next_token #next_token} => String
    #   * {Types::ListAssignmentsForHITResponse#num_results #num_results} => Integer
    #   * {Types::ListAssignmentsForHITResponse#assignments #assignments} => Array&lt;Types::Assignment&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_assignments_for_hit({
    #     hit_id: "EntityId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     assignment_statuses: ["Submitted"], # accepts Submitted, Approved, Rejected
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.num_results #=> Integer
    #   resp.assignments #=> Array
    #   resp.assignments[0].assignment_id #=> String
    #   resp.assignments[0].worker_id #=> String
    #   resp.assignments[0].hit_id #=> String
    #   resp.assignments[0].assignment_status #=> String, one of "Submitted", "Approved", "Rejected"
    #   resp.assignments[0].auto_approval_time #=> Time
    #   resp.assignments[0].accept_time #=> Time
    #   resp.assignments[0].submit_time #=> Time
    #   resp.assignments[0].approval_time #=> Time
    #   resp.assignments[0].rejection_time #=> Time
    #   resp.assignments[0].deadline #=> Time
    #   resp.assignments[0].answer #=> String
    #   resp.assignments[0].requester_feedback #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListAssignmentsForHIT AWS API Documentation
    #
    # @overload list_assignments_for_hit(params = {})
    # @param [Hash] params ({})
    def list_assignments_for_hit(params = {}, options = {})
      req = build_request(:list_assignments_for_hit, params)
      req.send_request(options)
    end

    # The `ListBonusPayments` operation retrieves the amounts of bonuses you
    # have paid to Workers for a given HIT or assignment.
    #
    # @option params [String] :hit_id
    #   The ID of the HIT associated with the bonus payments to retrieve. If
    #   not specified, all bonus payments for all assignments for the given
    #   HIT are returned. Either the HITId parameter or the AssignmentId
    #   parameter must be specified
    #
    # @option params [String] :assignment_id
    #   The ID of the assignment associated with the bonus payments to
    #   retrieve. If specified, only bonus payments for the given assignment
    #   are returned. Either the HITId parameter or the AssignmentId parameter
    #   must be specified
    #
    # @option params [String] :next_token
    #   Pagination token
    #
    # @option params [Integer] :max_results
    #
    # @return [Types::ListBonusPaymentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBonusPaymentsResponse#num_results #num_results} => Integer
    #   * {Types::ListBonusPaymentsResponse#next_token #next_token} => String
    #   * {Types::ListBonusPaymentsResponse#bonus_payments #bonus_payments} => Array&lt;Types::BonusPayment&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bonus_payments({
    #     hit_id: "EntityId",
    #     assignment_id: "EntityId",
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.num_results #=> Integer
    #   resp.next_token #=> String
    #   resp.bonus_payments #=> Array
    #   resp.bonus_payments[0].worker_id #=> String
    #   resp.bonus_payments[0].bonus_amount #=> String
    #   resp.bonus_payments[0].assignment_id #=> String
    #   resp.bonus_payments[0].reason #=> String
    #   resp.bonus_payments[0].grant_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListBonusPayments AWS API Documentation
    #
    # @overload list_bonus_payments(params = {})
    # @param [Hash] params ({})
    def list_bonus_payments(params = {}, options = {})
      req = build_request(:list_bonus_payments, params)
      req.send_request(options)
    end

    # The `ListHITs` operation returns all of a Requester's HITs. The
    # operation returns HITs of any status, except for HITs that have been
    # deleted of with the DeleteHIT operation or that have been
    # auto-deleted.
    #
    # @option params [String] :next_token
    #   Pagination token
    #
    # @option params [Integer] :max_results
    #
    # @return [Types::ListHITsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListHITsResponse#next_token #next_token} => String
    #   * {Types::ListHITsResponse#num_results #num_results} => Integer
    #   * {Types::ListHITsResponse#hits #hits} => Array&lt;Types::HIT&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_hits({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.num_results #=> Integer
    #   resp.hits #=> Array
    #   resp.hits[0].hit_id #=> String
    #   resp.hits[0].hit_type_id #=> String
    #   resp.hits[0].hit_group_id #=> String
    #   resp.hits[0].hit_layout_id #=> String
    #   resp.hits[0].creation_time #=> Time
    #   resp.hits[0].title #=> String
    #   resp.hits[0].description #=> String
    #   resp.hits[0].question #=> String
    #   resp.hits[0].keywords #=> String
    #   resp.hits[0].hit_status #=> String, one of "Assignable", "Unassignable", "Reviewable", "Reviewing", "Disposed"
    #   resp.hits[0].max_assignments #=> Integer
    #   resp.hits[0].reward #=> String
    #   resp.hits[0].auto_approval_delay_in_seconds #=> Integer
    #   resp.hits[0].expiration #=> Time
    #   resp.hits[0].assignment_duration_in_seconds #=> Integer
    #   resp.hits[0].requester_annotation #=> String
    #   resp.hits[0].qualification_requirements #=> Array
    #   resp.hits[0].qualification_requirements[0].qualification_type_id #=> String
    #   resp.hits[0].qualification_requirements[0].comparator #=> String, one of "LessThan", "LessThanOrEqualTo", "GreaterThan", "GreaterThanOrEqualTo", "EqualTo", "NotEqualTo", "Exists", "DoesNotExist", "In", "NotIn"
    #   resp.hits[0].qualification_requirements[0].integer_values #=> Array
    #   resp.hits[0].qualification_requirements[0].integer_values[0] #=> Integer
    #   resp.hits[0].qualification_requirements[0].locale_values #=> Array
    #   resp.hits[0].qualification_requirements[0].locale_values[0].country #=> String
    #   resp.hits[0].qualification_requirements[0].locale_values[0].subdivision #=> String
    #   resp.hits[0].qualification_requirements[0].required_to_preview #=> Boolean
    #   resp.hits[0].qualification_requirements[0].actions_guarded #=> String, one of "Accept", "PreviewAndAccept", "DiscoverPreviewAndAccept"
    #   resp.hits[0].hit_review_status #=> String, one of "NotReviewed", "MarkedForReview", "ReviewedAppropriate", "ReviewedInappropriate"
    #   resp.hits[0].number_of_assignments_pending #=> Integer
    #   resp.hits[0].number_of_assignments_available #=> Integer
    #   resp.hits[0].number_of_assignments_completed #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListHITs AWS API Documentation
    #
    # @overload list_hits(params = {})
    # @param [Hash] params ({})
    def list_hits(params = {}, options = {})
      req = build_request(:list_hits, params)
      req.send_request(options)
    end

    # The `ListHITsForQualificationType` operation returns the HITs that use
    # the given Qualification type for a Qualification requirement. The
    # operation returns HITs of any status, except for HITs that have been
    # deleted with the `DeleteHIT` operation or that have been auto-deleted.
    #
    # @option params [required, String] :qualification_type_id
    #   The ID of the Qualification type to use when querying HITs.
    #
    # @option params [String] :next_token
    #   Pagination Token
    #
    # @option params [Integer] :max_results
    #   Limit the number of results returned.
    #
    # @return [Types::ListHITsForQualificationTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListHITsForQualificationTypeResponse#next_token #next_token} => String
    #   * {Types::ListHITsForQualificationTypeResponse#num_results #num_results} => Integer
    #   * {Types::ListHITsForQualificationTypeResponse#hits #hits} => Array&lt;Types::HIT&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_hits_for_qualification_type({
    #     qualification_type_id: "EntityId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.num_results #=> Integer
    #   resp.hits #=> Array
    #   resp.hits[0].hit_id #=> String
    #   resp.hits[0].hit_type_id #=> String
    #   resp.hits[0].hit_group_id #=> String
    #   resp.hits[0].hit_layout_id #=> String
    #   resp.hits[0].creation_time #=> Time
    #   resp.hits[0].title #=> String
    #   resp.hits[0].description #=> String
    #   resp.hits[0].question #=> String
    #   resp.hits[0].keywords #=> String
    #   resp.hits[0].hit_status #=> String, one of "Assignable", "Unassignable", "Reviewable", "Reviewing", "Disposed"
    #   resp.hits[0].max_assignments #=> Integer
    #   resp.hits[0].reward #=> String
    #   resp.hits[0].auto_approval_delay_in_seconds #=> Integer
    #   resp.hits[0].expiration #=> Time
    #   resp.hits[0].assignment_duration_in_seconds #=> Integer
    #   resp.hits[0].requester_annotation #=> String
    #   resp.hits[0].qualification_requirements #=> Array
    #   resp.hits[0].qualification_requirements[0].qualification_type_id #=> String
    #   resp.hits[0].qualification_requirements[0].comparator #=> String, one of "LessThan", "LessThanOrEqualTo", "GreaterThan", "GreaterThanOrEqualTo", "EqualTo", "NotEqualTo", "Exists", "DoesNotExist", "In", "NotIn"
    #   resp.hits[0].qualification_requirements[0].integer_values #=> Array
    #   resp.hits[0].qualification_requirements[0].integer_values[0] #=> Integer
    #   resp.hits[0].qualification_requirements[0].locale_values #=> Array
    #   resp.hits[0].qualification_requirements[0].locale_values[0].country #=> String
    #   resp.hits[0].qualification_requirements[0].locale_values[0].subdivision #=> String
    #   resp.hits[0].qualification_requirements[0].required_to_preview #=> Boolean
    #   resp.hits[0].qualification_requirements[0].actions_guarded #=> String, one of "Accept", "PreviewAndAccept", "DiscoverPreviewAndAccept"
    #   resp.hits[0].hit_review_status #=> String, one of "NotReviewed", "MarkedForReview", "ReviewedAppropriate", "ReviewedInappropriate"
    #   resp.hits[0].number_of_assignments_pending #=> Integer
    #   resp.hits[0].number_of_assignments_available #=> Integer
    #   resp.hits[0].number_of_assignments_completed #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListHITsForQualificationType AWS API Documentation
    #
    # @overload list_hits_for_qualification_type(params = {})
    # @param [Hash] params ({})
    def list_hits_for_qualification_type(params = {}, options = {})
      req = build_request(:list_hits_for_qualification_type, params)
      req.send_request(options)
    end

    # The `ListQualificationRequests` operation retrieves requests for
    # Qualifications of a particular Qualification type. The owner of the
    # Qualification type calls this operation to poll for pending requests,
    # and accepts them using the AcceptQualification operation.
    #
    # @option params [String] :qualification_type_id
    #   The ID of the QualificationType.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there is more data to
    #   retrieve), Amazon Mechanical Turk returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListQualificationRequestsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListQualificationRequestsResponse#num_results #num_results} => Integer
    #   * {Types::ListQualificationRequestsResponse#next_token #next_token} => String
    #   * {Types::ListQualificationRequestsResponse#qualification_requests #qualification_requests} => Array&lt;Types::QualificationRequest&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_qualification_requests({
    #     qualification_type_id: "EntityId",
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.num_results #=> Integer
    #   resp.next_token #=> String
    #   resp.qualification_requests #=> Array
    #   resp.qualification_requests[0].qualification_request_id #=> String
    #   resp.qualification_requests[0].qualification_type_id #=> String
    #   resp.qualification_requests[0].worker_id #=> String
    #   resp.qualification_requests[0].test #=> String
    #   resp.qualification_requests[0].answer #=> String
    #   resp.qualification_requests[0].submit_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListQualificationRequests AWS API Documentation
    #
    # @overload list_qualification_requests(params = {})
    # @param [Hash] params ({})
    def list_qualification_requests(params = {}, options = {})
      req = build_request(:list_qualification_requests, params)
      req.send_request(options)
    end

    # The `ListQualificationTypes` operation returns a list of Qualification
    # types, filtered by an optional search term.
    #
    # @option params [String] :query
    #   A text query against all of the searchable attributes of Qualification
    #   types.
    #
    # @option params [required, Boolean] :must_be_requestable
    #   Specifies that only Qualification types that a user can request
    #   through the Amazon Mechanical Turk web site, such as by taking a
    #   Qualification test, are returned as results of the search. Some
    #   Qualification types, such as those assigned automatically by the
    #   system, cannot be requested directly by users. If false, all
    #   Qualification types, including those managed by the system, are
    #   considered. Valid values are True \| False.
    #
    # @option params [Boolean] :must_be_owned_by_caller
    #   Specifies that only Qualification types that the Requester created are
    #   returned. If false, the operation returns all Qualification types.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there is more data to
    #   retrieve), Amazon Mechanical Turk returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListQualificationTypesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListQualificationTypesResponse#num_results #num_results} => Integer
    #   * {Types::ListQualificationTypesResponse#next_token #next_token} => String
    #   * {Types::ListQualificationTypesResponse#qualification_types #qualification_types} => Array&lt;Types::QualificationType&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_qualification_types({
    #     query: "String",
    #     must_be_requestable: false, # required
    #     must_be_owned_by_caller: false,
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.num_results #=> Integer
    #   resp.next_token #=> String
    #   resp.qualification_types #=> Array
    #   resp.qualification_types[0].qualification_type_id #=> String
    #   resp.qualification_types[0].creation_time #=> Time
    #   resp.qualification_types[0].name #=> String
    #   resp.qualification_types[0].description #=> String
    #   resp.qualification_types[0].keywords #=> String
    #   resp.qualification_types[0].qualification_type_status #=> String, one of "Active", "Inactive"
    #   resp.qualification_types[0].test #=> String
    #   resp.qualification_types[0].test_duration_in_seconds #=> Integer
    #   resp.qualification_types[0].answer_key #=> String
    #   resp.qualification_types[0].retry_delay_in_seconds #=> Integer
    #   resp.qualification_types[0].is_requestable #=> Boolean
    #   resp.qualification_types[0].auto_granted #=> Boolean
    #   resp.qualification_types[0].auto_granted_value #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListQualificationTypes AWS API Documentation
    #
    # @overload list_qualification_types(params = {})
    # @param [Hash] params ({})
    def list_qualification_types(params = {}, options = {})
      req = build_request(:list_qualification_types, params)
      req.send_request(options)
    end

    # The `ListReviewPolicyResultsForHIT` operation retrieves the computed
    # results and the actions taken in the course of executing your Review
    # Policies for a given HIT. For information about how to specify Review
    # Policies when you call CreateHIT, see Review Policies. The
    # ListReviewPolicyResultsForHIT operation can return results for both
    # Assignment-level and HIT-level review results.
    #
    # @option params [required, String] :hit_id
    #   The unique identifier of the HIT to retrieve review results for.
    #
    # @option params [Array<String>] :policy_levels
    #   The Policy Level(s) to retrieve review results for - HIT or
    #   Assignment. If omitted, the default behavior is to retrieve all data
    #   for both policy levels. For a list of all the described policies, see
    #   Review Policies.
    #
    # @option params [Boolean] :retrieve_actions
    #   Specify if the operation should retrieve a list of the actions taken
    #   executing the Review Policies and their outcomes.
    #
    # @option params [Boolean] :retrieve_results
    #   Specify if the operation should retrieve a list of the results
    #   computed by the Review Policies.
    #
    # @option params [String] :next_token
    #   Pagination token
    #
    # @option params [Integer] :max_results
    #   Limit the number of results returned.
    #
    # @return [Types::ListReviewPolicyResultsForHITResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReviewPolicyResultsForHITResponse#hit_id #hit_id} => String
    #   * {Types::ListReviewPolicyResultsForHITResponse#assignment_review_policy #assignment_review_policy} => Types::ReviewPolicy
    #   * {Types::ListReviewPolicyResultsForHITResponse#hit_review_policy #hit_review_policy} => Types::ReviewPolicy
    #   * {Types::ListReviewPolicyResultsForHITResponse#assignment_review_report #assignment_review_report} => Types::ReviewReport
    #   * {Types::ListReviewPolicyResultsForHITResponse#hit_review_report #hit_review_report} => Types::ReviewReport
    #   * {Types::ListReviewPolicyResultsForHITResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_review_policy_results_for_hit({
    #     hit_id: "EntityId", # required
    #     policy_levels: ["Assignment"], # accepts Assignment, HIT
    #     retrieve_actions: false,
    #     retrieve_results: false,
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.hit_id #=> String
    #   resp.assignment_review_policy.policy_name #=> String
    #   resp.assignment_review_policy.parameters #=> Array
    #   resp.assignment_review_policy.parameters[0].key #=> String
    #   resp.assignment_review_policy.parameters[0].values #=> Array
    #   resp.assignment_review_policy.parameters[0].values[0] #=> String
    #   resp.assignment_review_policy.parameters[0].map_entries #=> Array
    #   resp.assignment_review_policy.parameters[0].map_entries[0].key #=> String
    #   resp.assignment_review_policy.parameters[0].map_entries[0].values #=> Array
    #   resp.assignment_review_policy.parameters[0].map_entries[0].values[0] #=> String
    #   resp.hit_review_policy.policy_name #=> String
    #   resp.hit_review_policy.parameters #=> Array
    #   resp.hit_review_policy.parameters[0].key #=> String
    #   resp.hit_review_policy.parameters[0].values #=> Array
    #   resp.hit_review_policy.parameters[0].values[0] #=> String
    #   resp.hit_review_policy.parameters[0].map_entries #=> Array
    #   resp.hit_review_policy.parameters[0].map_entries[0].key #=> String
    #   resp.hit_review_policy.parameters[0].map_entries[0].values #=> Array
    #   resp.hit_review_policy.parameters[0].map_entries[0].values[0] #=> String
    #   resp.assignment_review_report.review_results #=> Array
    #   resp.assignment_review_report.review_results[0].action_id #=> String
    #   resp.assignment_review_report.review_results[0].subject_id #=> String
    #   resp.assignment_review_report.review_results[0].subject_type #=> String
    #   resp.assignment_review_report.review_results[0].question_id #=> String
    #   resp.assignment_review_report.review_results[0].key #=> String
    #   resp.assignment_review_report.review_results[0].value #=> String
    #   resp.assignment_review_report.review_actions #=> Array
    #   resp.assignment_review_report.review_actions[0].action_id #=> String
    #   resp.assignment_review_report.review_actions[0].action_name #=> String
    #   resp.assignment_review_report.review_actions[0].target_id #=> String
    #   resp.assignment_review_report.review_actions[0].target_type #=> String
    #   resp.assignment_review_report.review_actions[0].status #=> String, one of "Intended", "Succeeded", "Failed", "Cancelled"
    #   resp.assignment_review_report.review_actions[0].complete_time #=> Time
    #   resp.assignment_review_report.review_actions[0].result #=> String
    #   resp.assignment_review_report.review_actions[0].error_code #=> String
    #   resp.hit_review_report.review_results #=> Array
    #   resp.hit_review_report.review_results[0].action_id #=> String
    #   resp.hit_review_report.review_results[0].subject_id #=> String
    #   resp.hit_review_report.review_results[0].subject_type #=> String
    #   resp.hit_review_report.review_results[0].question_id #=> String
    #   resp.hit_review_report.review_results[0].key #=> String
    #   resp.hit_review_report.review_results[0].value #=> String
    #   resp.hit_review_report.review_actions #=> Array
    #   resp.hit_review_report.review_actions[0].action_id #=> String
    #   resp.hit_review_report.review_actions[0].action_name #=> String
    #   resp.hit_review_report.review_actions[0].target_id #=> String
    #   resp.hit_review_report.review_actions[0].target_type #=> String
    #   resp.hit_review_report.review_actions[0].status #=> String, one of "Intended", "Succeeded", "Failed", "Cancelled"
    #   resp.hit_review_report.review_actions[0].complete_time #=> Time
    #   resp.hit_review_report.review_actions[0].result #=> String
    #   resp.hit_review_report.review_actions[0].error_code #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListReviewPolicyResultsForHIT AWS API Documentation
    #
    # @overload list_review_policy_results_for_hit(params = {})
    # @param [Hash] params ({})
    def list_review_policy_results_for_hit(params = {}, options = {})
      req = build_request(:list_review_policy_results_for_hit, params)
      req.send_request(options)
    end

    # The `ListReviewableHITs` operation retrieves the HITs with Status
    # equal to Reviewable or Status equal to Reviewing that belong to the
    # Requester calling the operation.
    #
    # @option params [String] :hit_type_id
    #   The ID of the HIT type of the HITs to consider for the query. If not
    #   specified, all HITs for the Reviewer are considered
    #
    # @option params [String] :status
    #   Can be either `Reviewable` or `Reviewing`. Reviewable is the default
    #   value.
    #
    # @option params [String] :next_token
    #   Pagination Token
    #
    # @option params [Integer] :max_results
    #   Limit the number of results returned.
    #
    # @return [Types::ListReviewableHITsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReviewableHITsResponse#next_token #next_token} => String
    #   * {Types::ListReviewableHITsResponse#num_results #num_results} => Integer
    #   * {Types::ListReviewableHITsResponse#hits #hits} => Array&lt;Types::HIT&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_reviewable_hits({
    #     hit_type_id: "EntityId",
    #     status: "Reviewable", # accepts Reviewable, Reviewing
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.num_results #=> Integer
    #   resp.hits #=> Array
    #   resp.hits[0].hit_id #=> String
    #   resp.hits[0].hit_type_id #=> String
    #   resp.hits[0].hit_group_id #=> String
    #   resp.hits[0].hit_layout_id #=> String
    #   resp.hits[0].creation_time #=> Time
    #   resp.hits[0].title #=> String
    #   resp.hits[0].description #=> String
    #   resp.hits[0].question #=> String
    #   resp.hits[0].keywords #=> String
    #   resp.hits[0].hit_status #=> String, one of "Assignable", "Unassignable", "Reviewable", "Reviewing", "Disposed"
    #   resp.hits[0].max_assignments #=> Integer
    #   resp.hits[0].reward #=> String
    #   resp.hits[0].auto_approval_delay_in_seconds #=> Integer
    #   resp.hits[0].expiration #=> Time
    #   resp.hits[0].assignment_duration_in_seconds #=> Integer
    #   resp.hits[0].requester_annotation #=> String
    #   resp.hits[0].qualification_requirements #=> Array
    #   resp.hits[0].qualification_requirements[0].qualification_type_id #=> String
    #   resp.hits[0].qualification_requirements[0].comparator #=> String, one of "LessThan", "LessThanOrEqualTo", "GreaterThan", "GreaterThanOrEqualTo", "EqualTo", "NotEqualTo", "Exists", "DoesNotExist", "In", "NotIn"
    #   resp.hits[0].qualification_requirements[0].integer_values #=> Array
    #   resp.hits[0].qualification_requirements[0].integer_values[0] #=> Integer
    #   resp.hits[0].qualification_requirements[0].locale_values #=> Array
    #   resp.hits[0].qualification_requirements[0].locale_values[0].country #=> String
    #   resp.hits[0].qualification_requirements[0].locale_values[0].subdivision #=> String
    #   resp.hits[0].qualification_requirements[0].required_to_preview #=> Boolean
    #   resp.hits[0].qualification_requirements[0].actions_guarded #=> String, one of "Accept", "PreviewAndAccept", "DiscoverPreviewAndAccept"
    #   resp.hits[0].hit_review_status #=> String, one of "NotReviewed", "MarkedForReview", "ReviewedAppropriate", "ReviewedInappropriate"
    #   resp.hits[0].number_of_assignments_pending #=> Integer
    #   resp.hits[0].number_of_assignments_available #=> Integer
    #   resp.hits[0].number_of_assignments_completed #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListReviewableHITs AWS API Documentation
    #
    # @overload list_reviewable_hits(params = {})
    # @param [Hash] params ({})
    def list_reviewable_hits(params = {}, options = {})
      req = build_request(:list_reviewable_hits, params)
      req.send_request(options)
    end

    # The `ListWorkersBlocks` operation retrieves a list of Workers who are
    # blocked from working on your HITs.
    #
    # @option params [String] :next_token
    #   Pagination token
    #
    # @option params [Integer] :max_results
    #
    # @return [Types::ListWorkerBlocksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkerBlocksResponse#next_token #next_token} => String
    #   * {Types::ListWorkerBlocksResponse#num_results #num_results} => Integer
    #   * {Types::ListWorkerBlocksResponse#worker_blocks #worker_blocks} => Array&lt;Types::WorkerBlock&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_worker_blocks({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.num_results #=> Integer
    #   resp.worker_blocks #=> Array
    #   resp.worker_blocks[0].worker_id #=> String
    #   resp.worker_blocks[0].reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListWorkerBlocks AWS API Documentation
    #
    # @overload list_worker_blocks(params = {})
    # @param [Hash] params ({})
    def list_worker_blocks(params = {}, options = {})
      req = build_request(:list_worker_blocks, params)
      req.send_request(options)
    end

    # The `ListWorkersWithQualificationType` operation returns all of the
    # Workers that have been associated with a given Qualification type.
    #
    # @option params [required, String] :qualification_type_id
    #   The ID of the Qualification type of the Qualifications to return.
    #
    # @option params [String] :status
    #   The status of the Qualifications to return. Can be `Granted |
    #   Revoked`.
    #
    # @option params [String] :next_token
    #   Pagination Token
    #
    # @option params [Integer] :max_results
    #   Limit the number of results returned.
    #
    # @return [Types::ListWorkersWithQualificationTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkersWithQualificationTypeResponse#next_token #next_token} => String
    #   * {Types::ListWorkersWithQualificationTypeResponse#num_results #num_results} => Integer
    #   * {Types::ListWorkersWithQualificationTypeResponse#qualifications #qualifications} => Array&lt;Types::Qualification&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workers_with_qualification_type({
    #     qualification_type_id: "EntityId", # required
    #     status: "Granted", # accepts Granted, Revoked
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.num_results #=> Integer
    #   resp.qualifications #=> Array
    #   resp.qualifications[0].qualification_type_id #=> String
    #   resp.qualifications[0].worker_id #=> String
    #   resp.qualifications[0].grant_time #=> Time
    #   resp.qualifications[0].integer_value #=> Integer
    #   resp.qualifications[0].locale_value.country #=> String
    #   resp.qualifications[0].locale_value.subdivision #=> String
    #   resp.qualifications[0].status #=> String, one of "Granted", "Revoked"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListWorkersWithQualificationType AWS API Documentation
    #
    # @overload list_workers_with_qualification_type(params = {})
    # @param [Hash] params ({})
    def list_workers_with_qualification_type(params = {}, options = {})
      req = build_request(:list_workers_with_qualification_type, params)
      req.send_request(options)
    end

    # The `NotifyWorkers` operation sends an email to one or more Workers
    # that you specify with the Worker ID. You can specify up to 100 Worker
    # IDs to send the same message with a single call to the NotifyWorkers
    # operation. The NotifyWorkers operation will send a notification email
    # to a Worker only if you have previously approved or rejected work from
    # the Worker.
    #
    # @option params [required, String] :subject
    #   The subject line of the email message to send. Can include up to 200
    #   characters.
    #
    # @option params [required, String] :message_text
    #   The text of the email message to send. Can include up to 4,096
    #   characters
    #
    # @option params [required, Array<String>] :worker_ids
    #   A list of Worker IDs you wish to notify. You can notify upto 100
    #   Workers at a time.
    #
    # @return [Types::NotifyWorkersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::NotifyWorkersResponse#notify_workers_failure_statuses #notify_workers_failure_statuses} => Array&lt;Types::NotifyWorkersFailureStatus&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.notify_workers({
    #     subject: "String", # required
    #     message_text: "String", # required
    #     worker_ids: ["CustomerId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.notify_workers_failure_statuses #=> Array
    #   resp.notify_workers_failure_statuses[0].notify_workers_failure_code #=> String, one of "SoftFailure", "HardFailure"
    #   resp.notify_workers_failure_statuses[0].notify_workers_failure_message #=> String
    #   resp.notify_workers_failure_statuses[0].worker_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/NotifyWorkers AWS API Documentation
    #
    # @overload notify_workers(params = {})
    # @param [Hash] params ({})
    def notify_workers(params = {}, options = {})
      req = build_request(:notify_workers, params)
      req.send_request(options)
    end

    # The `RejectAssignment` operation rejects the results of a completed
    # assignment.
    #
    # You can include an optional feedback message with the rejection, which
    # the Worker can see in the Status section of the web site. When you
    # include a feedback message with the rejection, it helps the Worker
    # understand why the assignment was rejected, and can improve the
    # quality of the results the Worker submits in the future.
    #
    # Only the Requester who created the HIT can reject an assignment for
    # the HIT.
    #
    # @option params [required, String] :assignment_id
    #   The ID of the assignment. The assignment must correspond to a HIT
    #   created by the Requester.
    #
    # @option params [required, String] :requester_feedback
    #   A message for the Worker, which the Worker can see in the Status
    #   section of the web site.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_assignment({
    #     assignment_id: "EntityId", # required
    #     requester_feedback: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/RejectAssignment AWS API Documentation
    #
    # @overload reject_assignment(params = {})
    # @param [Hash] params ({})
    def reject_assignment(params = {}, options = {})
      req = build_request(:reject_assignment, params)
      req.send_request(options)
    end

    # The `RejectQualificationRequest` operation rejects a user's request
    # for a Qualification.
    #
    # You can provide a text message explaining why the request was
    # rejected. The Worker who made the request can see this message.
    #
    # @option params [required, String] :qualification_request_id
    #   The ID of the Qualification request, as returned by the
    #   `ListQualificationRequests` operation.
    #
    # @option params [String] :reason
    #   A text message explaining why the request was rejected, to be shown to
    #   the Worker who made the request.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_qualification_request({
    #     qualification_request_id: "String", # required
    #     reason: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/RejectQualificationRequest AWS API Documentation
    #
    # @overload reject_qualification_request(params = {})
    # @param [Hash] params ({})
    def reject_qualification_request(params = {}, options = {})
      req = build_request(:reject_qualification_request, params)
      req.send_request(options)
    end

    # The `SendBonus` operation issues a payment of money from your account
    # to a Worker. This payment happens separately from the reward you pay
    # to the Worker when you approve the Worker's assignment. The SendBonus
    # operation requires the Worker's ID and the assignment ID as
    # parameters to initiate payment of the bonus. You must include a
    # message that explains the reason for the bonus payment, as the Worker
    # may not be expecting the payment. Amazon Mechanical Turk collects a
    # fee for bonus payments, similar to the HIT listing fee. This operation
    # fails if your account does not have enough funds to pay for both the
    # bonus and the fees.
    #
    # @option params [required, String] :worker_id
    #   The ID of the Worker being paid the bonus.
    #
    # @option params [required, String] :bonus_amount
    #   The Bonus amount is a US Dollar amount specified using a string (for
    #   example, "5" represents $5.00 USD and "101.42" represents $101.42
    #   USD). Do not include currency symbols or currency codes.
    #
    # @option params [required, String] :assignment_id
    #   The ID of the assignment for which this bonus is paid.
    #
    # @option params [required, String] :reason
    #   A message that explains the reason for the bonus payment. The Worker
    #   receiving the bonus can see this message.
    #
    # @option params [String] :unique_request_token
    #   A unique identifier for this request, which allows you to retry the
    #   call on error without granting multiple bonuses. This is useful in
    #   cases such as network timeouts where it is unclear whether or not the
    #   call succeeded on the server. If the bonus already exists in the
    #   system from a previous call using the same UniqueRequestToken,
    #   subsequent calls will return an error with a message containing the
    #   request ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_bonus({
    #     worker_id: "CustomerId", # required
    #     bonus_amount: "CurrencyAmount", # required
    #     assignment_id: "EntityId", # required
    #     reason: "String", # required
    #     unique_request_token: "IdempotencyToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/SendBonus AWS API Documentation
    #
    # @overload send_bonus(params = {})
    # @param [Hash] params ({})
    def send_bonus(params = {}, options = {})
      req = build_request(:send_bonus, params)
      req.send_request(options)
    end

    # The `SendTestEventNotification` operation causes Amazon Mechanical
    # Turk to send a notification message as if a HIT event occurred,
    # according to the provided notification specification. This allows you
    # to test notifications without setting up notifications for a real HIT
    # type and trying to trigger them using the website. When you call this
    # operation, the service attempts to send the test notification
    # immediately.
    #
    # @option params [required, Types::NotificationSpecification] :notification
    #   The notification specification to test. This value is identical to the
    #   value you would provide to the UpdateNotificationSettings operation
    #   when you establish the notification specification for a HIT type.
    #
    # @option params [required, String] :test_event_type
    #   The event to simulate to test the notification specification. This
    #   event is included in the test message even if the notification
    #   specification does not include the event type. The notification
    #   specification does not filter out the test event.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_test_event_notification({
    #     notification: { # required
    #       destination: "String", # required
    #       transport: "Email", # required, accepts Email, SQS, SNS
    #       version: "String", # required
    #       event_types: ["AssignmentAccepted"], # required, accepts AssignmentAccepted, AssignmentAbandoned, AssignmentReturned, AssignmentSubmitted, AssignmentRejected, AssignmentApproved, HITCreated, HITExpired, HITReviewable, HITExtended, HITDisposed, Ping
    #     },
    #     test_event_type: "AssignmentAccepted", # required, accepts AssignmentAccepted, AssignmentAbandoned, AssignmentReturned, AssignmentSubmitted, AssignmentRejected, AssignmentApproved, HITCreated, HITExpired, HITReviewable, HITExtended, HITDisposed, Ping
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/SendTestEventNotification AWS API Documentation
    #
    # @overload send_test_event_notification(params = {})
    # @param [Hash] params ({})
    def send_test_event_notification(params = {}, options = {})
      req = build_request(:send_test_event_notification, params)
      req.send_request(options)
    end

    # The `UpdateExpirationForHIT` operation allows you update the
    # expiration time of a HIT. If you update it to a time in the past, the
    # HIT will be immediately expired.
    #
    # @option params [required, String] :hit_id
    #   The HIT to update.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :expire_at
    #   The date and time at which you want the HIT to expire
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_expiration_for_hit({
    #     hit_id: "EntityId", # required
    #     expire_at: Time.now, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/UpdateExpirationForHIT AWS API Documentation
    #
    # @overload update_expiration_for_hit(params = {})
    # @param [Hash] params ({})
    def update_expiration_for_hit(params = {}, options = {})
      req = build_request(:update_expiration_for_hit, params)
      req.send_request(options)
    end

    # The `UpdateHITReviewStatus` operation updates the status of a HIT. If
    # the status is Reviewable, this operation can update the status to
    # Reviewing, or it can revert a Reviewing HIT back to the Reviewable
    # status.
    #
    # @option params [required, String] :hit_id
    #   The ID of the HIT to update.
    #
    # @option params [Boolean] :revert
    #   Specifies how to update the HIT status. Default is `False`.
    #
    #   * Setting this to false will only transition a HIT from `Reviewable`
    #     to `Reviewing`
    #
    #   * Setting this to true will only transition a HIT from `Reviewing` to
    #     `Reviewable`
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_hit_review_status({
    #     hit_id: "EntityId", # required
    #     revert: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/UpdateHITReviewStatus AWS API Documentation
    #
    # @overload update_hit_review_status(params = {})
    # @param [Hash] params ({})
    def update_hit_review_status(params = {}, options = {})
      req = build_request(:update_hit_review_status, params)
      req.send_request(options)
    end

    # The `UpdateHITTypeOfHIT` operation allows you to change the HITType
    # properties of a HIT. This operation disassociates the HIT from its old
    # HITType properties and associates it with the new HITType properties.
    # The HIT takes on the properties of the new HITType in place of the old
    # ones.
    #
    # @option params [required, String] :hit_id
    #   The HIT to update.
    #
    # @option params [required, String] :hit_type_id
    #   The ID of the new HIT type.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_hit_type_of_hit({
    #     hit_id: "EntityId", # required
    #     hit_type_id: "EntityId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/UpdateHITTypeOfHIT AWS API Documentation
    #
    # @overload update_hit_type_of_hit(params = {})
    # @param [Hash] params ({})
    def update_hit_type_of_hit(params = {}, options = {})
      req = build_request(:update_hit_type_of_hit, params)
      req.send_request(options)
    end

    # The `UpdateNotificationSettings` operation creates, updates, disables
    # or re-enables notifications for a HIT type. If you call the
    # UpdateNotificationSettings operation for a HIT type that already has a
    # notification specification, the operation replaces the old
    # specification with a new one. You can call the
    # UpdateNotificationSettings operation to enable or disable
    # notifications for the HIT type, without having to modify the
    # notification specification itself by providing updates to the Active
    # status without specifying a new notification specification. To change
    # the Active status of a HIT type's notifications, the HIT type must
    # already have a notification specification, or one must be provided in
    # the same call to `UpdateNotificationSettings`.
    #
    # @option params [required, String] :hit_type_id
    #   The ID of the HIT type whose notification specification is being
    #   updated.
    #
    # @option params [Types::NotificationSpecification] :notification
    #   The notification specification for the HIT type.
    #
    # @option params [Boolean] :active
    #   Specifies whether notifications are sent for HITs of this HIT type,
    #   according to the notification specification. You must specify either
    #   the Notification parameter or the Active parameter for the call to
    #   UpdateNotificationSettings to succeed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_notification_settings({
    #     hit_type_id: "EntityId", # required
    #     notification: {
    #       destination: "String", # required
    #       transport: "Email", # required, accepts Email, SQS, SNS
    #       version: "String", # required
    #       event_types: ["AssignmentAccepted"], # required, accepts AssignmentAccepted, AssignmentAbandoned, AssignmentReturned, AssignmentSubmitted, AssignmentRejected, AssignmentApproved, HITCreated, HITExpired, HITReviewable, HITExtended, HITDisposed, Ping
    #     },
    #     active: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/UpdateNotificationSettings AWS API Documentation
    #
    # @overload update_notification_settings(params = {})
    # @param [Hash] params ({})
    def update_notification_settings(params = {}, options = {})
      req = build_request(:update_notification_settings, params)
      req.send_request(options)
    end

    # The `UpdateQualificationType` operation modifies the attributes of an
    # existing Qualification type, which is represented by a
    # QualificationType data structure. Only the owner of a Qualification
    # type can modify its attributes.
    #
    # Most attributes of a Qualification type can be changed after the type
    # has been created. However, the Name and Keywords fields cannot be
    # modified. The RetryDelayInSeconds parameter can be modified or added
    # to change the delay or to enable retries, but RetryDelayInSeconds
    # cannot be used to disable retries.
    #
    # You can use this operation to update the test for a Qualification
    # type. The test is updated based on the values specified for the Test,
    # TestDurationInSeconds and AnswerKey parameters. All three parameters
    # specify the updated test. If you are updating the test for a type, you
    # must specify the Test and TestDurationInSeconds parameters. The
    # AnswerKey parameter is optional; omitting it specifies that the
    # updated test does not have an answer key.
    #
    # If you omit the Test parameter, the test for the Qualification type is
    # unchanged. There is no way to remove a test from a Qualification type
    # that has one. If the type already has a test, you cannot update it to
    # be AutoGranted. If the Qualification type does not have a test and one
    # is provided by an update, the type will henceforth have a test.
    #
    # If you want to update the test duration or answer key for an existing
    # test without changing the questions, you must specify a Test parameter
    # with the original questions, along with the updated values.
    #
    # If you provide an updated Test but no AnswerKey, the new test will not
    # have an answer key. Requests for such Qualifications must be granted
    # manually.
    #
    # You can also update the AutoGranted and AutoGrantedValue attributes of
    # the Qualification type.
    #
    # @option params [required, String] :qualification_type_id
    #   The ID of the Qualification type to update.
    #
    # @option params [String] :description
    #   The new description of the Qualification type.
    #
    # @option params [String] :qualification_type_status
    #   The new status of the Qualification type - Active \| Inactive
    #
    # @option params [String] :test
    #   The questions for the Qualification test a Worker must answer
    #   correctly to obtain a Qualification of this type. If this parameter is
    #   specified, `TestDurationInSeconds` must also be specified.
    #
    #   Constraints: Must not be longer than 65535 bytes. Must be a
    #   QuestionForm data structure. This parameter cannot be specified if
    #   AutoGranted is true.
    #
    #   Constraints: None. If not specified, the Worker may request the
    #   Qualification without answering any questions.
    #
    # @option params [String] :answer_key
    #   The answers to the Qualification test specified in the Test parameter,
    #   in the form of an AnswerKey data structure.
    #
    # @option params [Integer] :test_duration_in_seconds
    #   The number of seconds the Worker has to complete the Qualification
    #   test, starting from the time the Worker requests the Qualification.
    #
    # @option params [Integer] :retry_delay_in_seconds
    #   The amount of time, in seconds, that Workers must wait after
    #   requesting a Qualification of the specified Qualification type before
    #   they can retry the Qualification request. It is not possible to
    #   disable retries for a Qualification type after it has been created
    #   with retries enabled. If you want to disable retries, you must dispose
    #   of the existing retry-enabled Qualification type using
    #   DisposeQualificationType and then create a new Qualification type with
    #   retries disabled using CreateQualificationType.
    #
    # @option params [Boolean] :auto_granted
    #   Specifies whether requests for the Qualification type are granted
    #   immediately, without prompting the Worker with a Qualification test.
    #
    #   Constraints: If the Test parameter is specified, this parameter cannot
    #   be true.
    #
    # @option params [Integer] :auto_granted_value
    #   The Qualification value to use for automatically granted
    #   Qualifications. This parameter is used only if the AutoGranted
    #   parameter is true.
    #
    # @return [Types::UpdateQualificationTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateQualificationTypeResponse#qualification_type #qualification_type} => Types::QualificationType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_qualification_type({
    #     qualification_type_id: "EntityId", # required
    #     description: "String",
    #     qualification_type_status: "Active", # accepts Active, Inactive
    #     test: "String",
    #     answer_key: "String",
    #     test_duration_in_seconds: 1,
    #     retry_delay_in_seconds: 1,
    #     auto_granted: false,
    #     auto_granted_value: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.qualification_type.qualification_type_id #=> String
    #   resp.qualification_type.creation_time #=> Time
    #   resp.qualification_type.name #=> String
    #   resp.qualification_type.description #=> String
    #   resp.qualification_type.keywords #=> String
    #   resp.qualification_type.qualification_type_status #=> String, one of "Active", "Inactive"
    #   resp.qualification_type.test #=> String
    #   resp.qualification_type.test_duration_in_seconds #=> Integer
    #   resp.qualification_type.answer_key #=> String
    #   resp.qualification_type.retry_delay_in_seconds #=> Integer
    #   resp.qualification_type.is_requestable #=> Boolean
    #   resp.qualification_type.auto_granted #=> Boolean
    #   resp.qualification_type.auto_granted_value #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/UpdateQualificationType AWS API Documentation
    #
    # @overload update_qualification_type(params = {})
    # @param [Hash] params ({})
    def update_qualification_type(params = {}, options = {})
      req = build_request(:update_qualification_type, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-mturk'
      context[:gem_version] = '1.6.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
