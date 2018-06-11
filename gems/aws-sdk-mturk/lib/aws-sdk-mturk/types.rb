# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MTurk
  module Types

    # @note When making an API call, you may pass AcceptQualificationRequestRequest
    #   data as a hash:
    #
    #       {
    #         qualification_request_id: "String", # required
    #         integer_value: 1,
    #       }
    #
    # @!attribute [rw] qualification_request_id
    #   The ID of the Qualification request, as returned by the
    #   `GetQualificationRequests` operation.
    #   @return [String]
    #
    # @!attribute [rw] integer_value
    #   The value of the Qualification. You can omit this value if you are
    #   using the presence or absence of the Qualification as the basis for
    #   a HIT requirement.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/AcceptQualificationRequestRequest AWS API Documentation
    #
    class AcceptQualificationRequestRequest < Struct.new(
      :qualification_request_id,
      :integer_value)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/AcceptQualificationRequestResponse AWS API Documentation
    #
    class AcceptQualificationRequestResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass ApproveAssignmentRequest
    #   data as a hash:
    #
    #       {
    #         assignment_id: "EntityId", # required
    #         requester_feedback: "String",
    #         override_rejection: false,
    #       }
    #
    # @!attribute [rw] assignment_id
    #   The ID of the assignment. The assignment must correspond to a HIT
    #   created by the Requester.
    #   @return [String]
    #
    # @!attribute [rw] requester_feedback
    #   A message for the Worker, which the Worker can see in the Status
    #   section of the web site.
    #   @return [String]
    #
    # @!attribute [rw] override_rejection
    #   A flag indicating that an assignment should be approved even if it
    #   was previously rejected. Defaults to `False`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ApproveAssignmentRequest AWS API Documentation
    #
    class ApproveAssignmentRequest < Struct.new(
      :assignment_id,
      :requester_feedback,
      :override_rejection)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ApproveAssignmentResponse AWS API Documentation
    #
    class ApproveAssignmentResponse < Aws::EmptyStructure; end

    # The Assignment data structure represents a single assignment of a HIT
    # to a Worker. The assignment tracks the Worker's efforts to complete
    # the HIT, and contains the results for later retrieval.
    #
    # @!attribute [rw] assignment_id
    #   A unique identifier for the assignment.
    #   @return [String]
    #
    # @!attribute [rw] worker_id
    #   The ID of the Worker who accepted the HIT.
    #   @return [String]
    #
    # @!attribute [rw] hit_id
    #   The ID of the HIT.
    #   @return [String]
    #
    # @!attribute [rw] assignment_status
    #   The status of the assignment.
    #   @return [String]
    #
    # @!attribute [rw] auto_approval_time
    #   If results have been submitted, AutoApprovalTime is the date and
    #   time the results of the assignment results are considered Approved
    #   automatically if they have not already been explicitly approved or
    #   rejected by the Requester. This value is derived from the
    #   auto-approval delay specified by the Requester in the HIT. This
    #   value is omitted from the assignment if the Worker has not yet
    #   submitted results.
    #   @return [Time]
    #
    # @!attribute [rw] accept_time
    #   The date and time the Worker accepted the assignment.
    #   @return [Time]
    #
    # @!attribute [rw] submit_time
    #   If the Worker has submitted results, SubmitTime is the date and time
    #   the assignment was submitted. This value is omitted from the
    #   assignment if the Worker has not yet submitted results.
    #   @return [Time]
    #
    # @!attribute [rw] approval_time
    #   If the Worker has submitted results and the Requester has approved
    #   the results, ApprovalTime is the date and time the Requester
    #   approved the results. This value is omitted from the assignment if
    #   the Requester has not yet approved the results.
    #   @return [Time]
    #
    # @!attribute [rw] rejection_time
    #   If the Worker has submitted results and the Requester has rejected
    #   the results, RejectionTime is the date and time the Requester
    #   rejected the results.
    #   @return [Time]
    #
    # @!attribute [rw] deadline
    #   The date and time of the deadline for the assignment. This value is
    #   derived from the deadline specification for the HIT and the date and
    #   time the Worker accepted the HIT.
    #   @return [Time]
    #
    # @!attribute [rw] answer
    #   The Worker's answers submitted for the HIT contained in a
    #   QuestionFormAnswers document, if the Worker provides an answer. If
    #   the Worker does not provide any answers, Answer may contain a
    #   QuestionFormAnswers document, or Answer may be empty.
    #   @return [String]
    #
    # @!attribute [rw] requester_feedback
    #   The feedback string included with the call to the ApproveAssignment
    #   operation or the RejectAssignment operation, if the Requester
    #   approved or rejected the assignment and specified feedback.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/Assignment AWS API Documentation
    #
    class Assignment < Struct.new(
      :assignment_id,
      :worker_id,
      :hit_id,
      :assignment_status,
      :auto_approval_time,
      :accept_time,
      :submit_time,
      :approval_time,
      :rejection_time,
      :deadline,
      :answer,
      :requester_feedback)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateQualificationWithWorkerRequest
    #   data as a hash:
    #
    #       {
    #         qualification_type_id: "EntityId", # required
    #         worker_id: "CustomerId", # required
    #         integer_value: 1,
    #         send_notification: false,
    #       }
    #
    # @!attribute [rw] qualification_type_id
    #   The ID of the Qualification type to use for the assigned
    #   Qualification.
    #   @return [String]
    #
    # @!attribute [rw] worker_id
    #   The ID of the Worker to whom the Qualification is being assigned.
    #   Worker IDs are included with submitted HIT assignments and
    #   Qualification requests.
    #   @return [String]
    #
    # @!attribute [rw] integer_value
    #   The value of the Qualification to assign.
    #   @return [Integer]
    #
    # @!attribute [rw] send_notification
    #   Specifies whether to send a notification email message to the Worker
    #   saying that the qualification was assigned to the Worker. Note: this
    #   is true by default.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/AssociateQualificationWithWorkerRequest AWS API Documentation
    #
    class AssociateQualificationWithWorkerRequest < Struct.new(
      :qualification_type_id,
      :worker_id,
      :integer_value,
      :send_notification)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/AssociateQualificationWithWorkerResponse AWS API Documentation
    #
    class AssociateQualificationWithWorkerResponse < Aws::EmptyStructure; end

    # An object representing a Bonus payment paid to a Worker.
    #
    # @!attribute [rw] worker_id
    #   The ID of the Worker to whom the bonus was paid.
    #   @return [String]
    #
    # @!attribute [rw] bonus_amount
    #   A string representing a currency amount.
    #   @return [String]
    #
    # @!attribute [rw] assignment_id
    #   The ID of the assignment associated with this bonus payment.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The Reason text given when the bonus was granted, if any.
    #   @return [String]
    #
    # @!attribute [rw] grant_time
    #   The date and time of when the bonus was granted.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/BonusPayment AWS API Documentation
    #
    class BonusPayment < Struct.new(
      :worker_id,
      :bonus_amount,
      :assignment_id,
      :reason,
      :grant_time)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAdditionalAssignmentsForHITRequest
    #   data as a hash:
    #
    #       {
    #         hit_id: "EntityId", # required
    #         number_of_additional_assignments: 1, # required
    #         unique_request_token: "IdempotencyToken",
    #       }
    #
    # @!attribute [rw] hit_id
    #   The ID of the HIT to extend.
    #   @return [String]
    #
    # @!attribute [rw] number_of_additional_assignments
    #   The number of additional assignments to request for this HIT.
    #   @return [Integer]
    #
    # @!attribute [rw] unique_request_token
    #   A unique identifier for this request, which allows you to retry the
    #   call on error without extending the HIT multiple times. This is
    #   useful in cases such as network timeouts where it is unclear whether
    #   or not the call succeeded on the server. If the extend HIT already
    #   exists in the system from a previous call using the same
    #   `UniqueRequestToken`, subsequent calls will return an error with a
    #   message containing the request ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/CreateAdditionalAssignmentsForHITRequest AWS API Documentation
    #
    class CreateAdditionalAssignmentsForHITRequest < Struct.new(
      :hit_id,
      :number_of_additional_assignments,
      :unique_request_token)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/CreateAdditionalAssignmentsForHITResponse AWS API Documentation
    #
    class CreateAdditionalAssignmentsForHITResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CreateHITRequest
    #   data as a hash:
    #
    #       {
    #         max_assignments: 1,
    #         auto_approval_delay_in_seconds: 1,
    #         lifetime_in_seconds: 1, # required
    #         assignment_duration_in_seconds: 1, # required
    #         reward: "CurrencyAmount", # required
    #         title: "String", # required
    #         keywords: "String",
    #         description: "String", # required
    #         question: "String",
    #         requester_annotation: "String",
    #         qualification_requirements: [
    #           {
    #             qualification_type_id: "String", # required
    #             comparator: "LessThan", # required, accepts LessThan, LessThanOrEqualTo, GreaterThan, GreaterThanOrEqualTo, EqualTo, NotEqualTo, Exists, DoesNotExist, In, NotIn
    #             integer_values: [1],
    #             locale_values: [
    #               {
    #                 country: "CountryParameters", # required
    #                 subdivision: "CountryParameters",
    #               },
    #             ],
    #             required_to_preview: false,
    #             actions_guarded: "Accept", # accepts Accept, PreviewAndAccept, DiscoverPreviewAndAccept
    #           },
    #         ],
    #         unique_request_token: "IdempotencyToken",
    #         assignment_review_policy: {
    #           policy_name: "String", # required
    #           parameters: [
    #             {
    #               key: "String",
    #               values: ["String"],
    #               map_entries: [
    #                 {
    #                   key: "String",
    #                   values: ["String"],
    #                 },
    #               ],
    #             },
    #           ],
    #         },
    #         hit_review_policy: {
    #           policy_name: "String", # required
    #           parameters: [
    #             {
    #               key: "String",
    #               values: ["String"],
    #               map_entries: [
    #                 {
    #                   key: "String",
    #                   values: ["String"],
    #                 },
    #               ],
    #             },
    #           ],
    #         },
    #         hit_layout_id: "EntityId",
    #         hit_layout_parameters: [
    #           {
    #             name: "String", # required
    #             value: "String", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] max_assignments
    #   The number of times the HIT can be accepted and completed before the
    #   HIT becomes unavailable.
    #   @return [Integer]
    #
    # @!attribute [rw] auto_approval_delay_in_seconds
    #   The number of seconds after an assignment for the HIT has been
    #   submitted, after which the assignment is considered Approved
    #   automatically unless the Requester explicitly rejects it.
    #   @return [Integer]
    #
    # @!attribute [rw] lifetime_in_seconds
    #   An amount of time, in seconds, after which the HIT is no longer
    #   available for users to accept. After the lifetime of the HIT
    #   elapses, the HIT no longer appears in HIT searches, even if not all
    #   of the assignments for the HIT have been accepted.
    #   @return [Integer]
    #
    # @!attribute [rw] assignment_duration_in_seconds
    #   The amount of time, in seconds, that a Worker has to complete the
    #   HIT after accepting it. If a Worker does not complete the assignment
    #   within the specified duration, the assignment is considered
    #   abandoned. If the HIT is still active (that is, its lifetime has not
    #   elapsed), the assignment becomes available for other users to find
    #   and accept.
    #   @return [Integer]
    #
    # @!attribute [rw] reward
    #   The amount of money the Requester will pay a Worker for successfully
    #   completing the HIT.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the HIT. A title should be short and descriptive about
    #   the kind of task the HIT contains. On the Amazon Mechanical Turk web
    #   site, the HIT title appears in search results, and everywhere the
    #   HIT is mentioned.
    #   @return [String]
    #
    # @!attribute [rw] keywords
    #   One or more words or phrases that describe the HIT, separated by
    #   commas. These words are used in searches to find HITs.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A general description of the HIT. A description includes detailed
    #   information about the kind of task the HIT contains. On the Amazon
    #   Mechanical Turk web site, the HIT description appears in the
    #   expanded view of search results, and in the HIT and assignment
    #   screens. A good description gives the user enough information to
    #   evaluate the HIT before accepting it.
    #   @return [String]
    #
    # @!attribute [rw] question
    #   The data the person completing the HIT uses to produce the results.
    #
    #   Constraints: Must be a QuestionForm data structure, an
    #   ExternalQuestion data structure, or an HTMLQuestion data structure.
    #   The XML question data must not be larger than 64 kilobytes (65,535
    #   bytes) in size, including whitespace.
    #
    #   Either a Question parameter or a HITLayoutId parameter must be
    #   provided.
    #   @return [String]
    #
    # @!attribute [rw] requester_annotation
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
    #   @return [String]
    #
    # @!attribute [rw] qualification_requirements
    #   Conditions that a Worker's Qualifications must meet in order to
    #   accept the HIT. A HIT can have between zero and ten Qualification
    #   requirements. All requirements must be met in order for a Worker to
    #   accept the HIT. Additionally, other actions can be restricted using
    #   the `ActionsGuarded` field on each `QualificationRequirement`
    #   structure.
    #   @return [Array<Types::QualificationRequirement>]
    #
    # @!attribute [rw] unique_request_token
    #   A unique identifier for this request which allows you to retry the
    #   call on error without creating duplicate HITs. This is useful in
    #   cases such as network timeouts where it is unclear whether or not
    #   the call succeeded on the server. If the HIT already exists in the
    #   system from a previous call using the same UniqueRequestToken,
    #   subsequent calls will return a AWS.MechanicalTurk.HitAlreadyExists
    #   error with a message containing the HITId.
    #
    #   <note markdown="1"> Note: It is your responsibility to ensure uniqueness of the token.
    #   The unique token expires after 24 hours. Subsequent calls using the
    #   same UniqueRequestToken made after the 24 hour limit could create
    #   duplicate HITs.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] assignment_review_policy
    #   The Assignment-level Review Policy applies to the assignments under
    #   the HIT. You can specify for Mechanical Turk to take various actions
    #   based on the policy.
    #   @return [Types::ReviewPolicy]
    #
    # @!attribute [rw] hit_review_policy
    #   The HIT-level Review Policy applies to the HIT. You can specify for
    #   Mechanical Turk to take various actions based on the policy.
    #   @return [Types::ReviewPolicy]
    #
    # @!attribute [rw] hit_layout_id
    #   The HITLayoutId allows you to use a pre-existing HIT design with
    #   placeholder values and create an additional HIT by providing those
    #   values as HITLayoutParameters.
    #
    #   Constraints: Either a Question parameter or a HITLayoutId parameter
    #   must be provided.
    #   @return [String]
    #
    # @!attribute [rw] hit_layout_parameters
    #   If the HITLayoutId is provided, any placeholder values must be
    #   filled in with values using the HITLayoutParameter structure. For
    #   more information, see HITLayout.
    #   @return [Array<Types::HITLayoutParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/CreateHITRequest AWS API Documentation
    #
    class CreateHITRequest < Struct.new(
      :max_assignments,
      :auto_approval_delay_in_seconds,
      :lifetime_in_seconds,
      :assignment_duration_in_seconds,
      :reward,
      :title,
      :keywords,
      :description,
      :question,
      :requester_annotation,
      :qualification_requirements,
      :unique_request_token,
      :assignment_review_policy,
      :hit_review_policy,
      :hit_layout_id,
      :hit_layout_parameters)
      include Aws::Structure
    end

    # @!attribute [rw] hit
    #   Contains the newly created HIT data. For a description of the HIT
    #   data structure as it appears in responses, see the HIT Data
    #   Structure documentation.
    #   @return [Types::HIT]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/CreateHITResponse AWS API Documentation
    #
    class CreateHITResponse < Struct.new(
      :hit)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateHITTypeRequest
    #   data as a hash:
    #
    #       {
    #         auto_approval_delay_in_seconds: 1,
    #         assignment_duration_in_seconds: 1, # required
    #         reward: "CurrencyAmount", # required
    #         title: "String", # required
    #         keywords: "String",
    #         description: "String", # required
    #         qualification_requirements: [
    #           {
    #             qualification_type_id: "String", # required
    #             comparator: "LessThan", # required, accepts LessThan, LessThanOrEqualTo, GreaterThan, GreaterThanOrEqualTo, EqualTo, NotEqualTo, Exists, DoesNotExist, In, NotIn
    #             integer_values: [1],
    #             locale_values: [
    #               {
    #                 country: "CountryParameters", # required
    #                 subdivision: "CountryParameters",
    #               },
    #             ],
    #             required_to_preview: false,
    #             actions_guarded: "Accept", # accepts Accept, PreviewAndAccept, DiscoverPreviewAndAccept
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] auto_approval_delay_in_seconds
    #   The number of seconds after an assignment for the HIT has been
    #   submitted, after which the assignment is considered Approved
    #   automatically unless the Requester explicitly rejects it.
    #   @return [Integer]
    #
    # @!attribute [rw] assignment_duration_in_seconds
    #   The amount of time, in seconds, that a Worker has to complete the
    #   HIT after accepting it. If a Worker does not complete the assignment
    #   within the specified duration, the assignment is considered
    #   abandoned. If the HIT is still active (that is, its lifetime has not
    #   elapsed), the assignment becomes available for other users to find
    #   and accept.
    #   @return [Integer]
    #
    # @!attribute [rw] reward
    #   The amount of money the Requester will pay a Worker for successfully
    #   completing the HIT.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the HIT. A title should be short and descriptive about
    #   the kind of task the HIT contains. On the Amazon Mechanical Turk web
    #   site, the HIT title appears in search results, and everywhere the
    #   HIT is mentioned.
    #   @return [String]
    #
    # @!attribute [rw] keywords
    #   One or more words or phrases that describe the HIT, separated by
    #   commas. These words are used in searches to find HITs.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A general description of the HIT. A description includes detailed
    #   information about the kind of task the HIT contains. On the Amazon
    #   Mechanical Turk web site, the HIT description appears in the
    #   expanded view of search results, and in the HIT and assignment
    #   screens. A good description gives the user enough information to
    #   evaluate the HIT before accepting it.
    #   @return [String]
    #
    # @!attribute [rw] qualification_requirements
    #   Conditions that a Worker's Qualifications must meet in order to
    #   accept the HIT. A HIT can have between zero and ten Qualification
    #   requirements. All requirements must be met in order for a Worker to
    #   accept the HIT. Additionally, other actions can be restricted using
    #   the `ActionsGuarded` field on each `QualificationRequirement`
    #   structure.
    #   @return [Array<Types::QualificationRequirement>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/CreateHITTypeRequest AWS API Documentation
    #
    class CreateHITTypeRequest < Struct.new(
      :auto_approval_delay_in_seconds,
      :assignment_duration_in_seconds,
      :reward,
      :title,
      :keywords,
      :description,
      :qualification_requirements)
      include Aws::Structure
    end

    # @!attribute [rw] hit_type_id
    #   The ID of the newly registered HIT type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/CreateHITTypeResponse AWS API Documentation
    #
    class CreateHITTypeResponse < Struct.new(
      :hit_type_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateHITWithHITTypeRequest
    #   data as a hash:
    #
    #       {
    #         hit_type_id: "EntityId", # required
    #         max_assignments: 1,
    #         lifetime_in_seconds: 1, # required
    #         question: "String",
    #         requester_annotation: "String",
    #         unique_request_token: "IdempotencyToken",
    #         assignment_review_policy: {
    #           policy_name: "String", # required
    #           parameters: [
    #             {
    #               key: "String",
    #               values: ["String"],
    #               map_entries: [
    #                 {
    #                   key: "String",
    #                   values: ["String"],
    #                 },
    #               ],
    #             },
    #           ],
    #         },
    #         hit_review_policy: {
    #           policy_name: "String", # required
    #           parameters: [
    #             {
    #               key: "String",
    #               values: ["String"],
    #               map_entries: [
    #                 {
    #                   key: "String",
    #                   values: ["String"],
    #                 },
    #               ],
    #             },
    #           ],
    #         },
    #         hit_layout_id: "EntityId",
    #         hit_layout_parameters: [
    #           {
    #             name: "String", # required
    #             value: "String", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] hit_type_id
    #   The HIT type ID you want to create this HIT with.
    #   @return [String]
    #
    # @!attribute [rw] max_assignments
    #   The number of times the HIT can be accepted and completed before the
    #   HIT becomes unavailable.
    #   @return [Integer]
    #
    # @!attribute [rw] lifetime_in_seconds
    #   An amount of time, in seconds, after which the HIT is no longer
    #   available for users to accept. After the lifetime of the HIT
    #   elapses, the HIT no longer appears in HIT searches, even if not all
    #   of the assignments for the HIT have been accepted.
    #   @return [Integer]
    #
    # @!attribute [rw] question
    #   The data the person completing the HIT uses to produce the results.
    #
    #   Constraints: Must be a QuestionForm data structure, an
    #   ExternalQuestion data structure, or an HTMLQuestion data structure.
    #   The XML question data must not be larger than 64 kilobytes (65,535
    #   bytes) in size, including whitespace.
    #
    #   Either a Question parameter or a HITLayoutId parameter must be
    #   provided.
    #   @return [String]
    #
    # @!attribute [rw] requester_annotation
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
    #   @return [String]
    #
    # @!attribute [rw] unique_request_token
    #   A unique identifier for this request which allows you to retry the
    #   call on error without creating duplicate HITs. This is useful in
    #   cases such as network timeouts where it is unclear whether or not
    #   the call succeeded on the server. If the HIT already exists in the
    #   system from a previous call using the same UniqueRequestToken,
    #   subsequent calls will return a AWS.MechanicalTurk.HitAlreadyExists
    #   error with a message containing the HITId.
    #
    #   <note markdown="1"> Note: It is your responsibility to ensure uniqueness of the token.
    #   The unique token expires after 24 hours. Subsequent calls using the
    #   same UniqueRequestToken made after the 24 hour limit could create
    #   duplicate HITs.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] assignment_review_policy
    #   The Assignment-level Review Policy applies to the assignments under
    #   the HIT. You can specify for Mechanical Turk to take various actions
    #   based on the policy.
    #   @return [Types::ReviewPolicy]
    #
    # @!attribute [rw] hit_review_policy
    #   The HIT-level Review Policy applies to the HIT. You can specify for
    #   Mechanical Turk to take various actions based on the policy.
    #   @return [Types::ReviewPolicy]
    #
    # @!attribute [rw] hit_layout_id
    #   The HITLayoutId allows you to use a pre-existing HIT design with
    #   placeholder values and create an additional HIT by providing those
    #   values as HITLayoutParameters.
    #
    #   Constraints: Either a Question parameter or a HITLayoutId parameter
    #   must be provided.
    #   @return [String]
    #
    # @!attribute [rw] hit_layout_parameters
    #   If the HITLayoutId is provided, any placeholder values must be
    #   filled in with values using the HITLayoutParameter structure. For
    #   more information, see HITLayout.
    #   @return [Array<Types::HITLayoutParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/CreateHITWithHITTypeRequest AWS API Documentation
    #
    class CreateHITWithHITTypeRequest < Struct.new(
      :hit_type_id,
      :max_assignments,
      :lifetime_in_seconds,
      :question,
      :requester_annotation,
      :unique_request_token,
      :assignment_review_policy,
      :hit_review_policy,
      :hit_layout_id,
      :hit_layout_parameters)
      include Aws::Structure
    end

    # @!attribute [rw] hit
    #   Contains the newly created HIT data. For a description of the HIT
    #   data structure as it appears in responses, see the HIT Data
    #   Structure documentation.
    #   @return [Types::HIT]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/CreateHITWithHITTypeResponse AWS API Documentation
    #
    class CreateHITWithHITTypeResponse < Struct.new(
      :hit)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateQualificationTypeRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         keywords: "String",
    #         description: "String", # required
    #         qualification_type_status: "Active", # required, accepts Active, Inactive
    #         retry_delay_in_seconds: 1,
    #         test: "String",
    #         answer_key: "String",
    #         test_duration_in_seconds: 1,
    #         auto_granted: false,
    #         auto_granted_value: 1,
    #       }
    #
    # @!attribute [rw] name
    #   The name you give to the Qualification type. The type name is used
    #   to represent the Qualification to Workers, and to find the type
    #   using a Qualification type search. It must be unique across all of
    #   your Qualification types.
    #   @return [String]
    #
    # @!attribute [rw] keywords
    #   One or more words or phrases that describe the Qualification type,
    #   separated by commas. The keywords of a type make the type easier to
    #   find during a search.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A long description for the Qualification type. On the Amazon
    #   Mechanical Turk website, the long description is displayed when a
    #   Worker examines a Qualification type.
    #   @return [String]
    #
    # @!attribute [rw] qualification_type_status
    #   The initial status of the Qualification type.
    #
    #   Constraints: Valid values are: Active \| Inactive
    #   @return [String]
    #
    # @!attribute [rw] retry_delay_in_seconds
    #   The number of seconds that a Worker must wait after requesting a
    #   Qualification of the Qualification type before the worker can retry
    #   the Qualification request.
    #
    #   Constraints: None. If not specified, retries are disabled and
    #   Workers can request a Qualification of this type only once, even if
    #   the Worker has not been granted the Qualification. It is not
    #   possible to disable retries for a Qualification type after it has
    #   been created with retries enabled. If you want to disable retries,
    #   you must delete existing retry-enabled Qualification type and then
    #   create a new Qualification type with retries disabled.
    #   @return [Integer]
    #
    # @!attribute [rw] test
    #   The questions for the Qualification test a Worker must answer
    #   correctly to obtain a Qualification of this type. If this parameter
    #   is specified, `TestDurationInSeconds` must also be specified.
    #
    #   Constraints: Must not be longer than 65535 bytes. Must be a
    #   QuestionForm data structure. This parameter cannot be specified if
    #   AutoGranted is true.
    #
    #   Constraints: None. If not specified, the Worker may request the
    #   Qualification without answering any questions.
    #   @return [String]
    #
    # @!attribute [rw] answer_key
    #   The answers to the Qualification test specified in the Test
    #   parameter, in the form of an AnswerKey data structure.
    #
    #   Constraints: Must not be longer than 65535 bytes.
    #
    #   Constraints: None. If not specified, you must process Qualification
    #   requests manually.
    #   @return [String]
    #
    # @!attribute [rw] test_duration_in_seconds
    #   The number of seconds the Worker has to complete the Qualification
    #   test, starting from the time the Worker requests the Qualification.
    #   @return [Integer]
    #
    # @!attribute [rw] auto_granted
    #   Specifies whether requests for the Qualification type are granted
    #   immediately, without prompting the Worker with a Qualification test.
    #
    #   Constraints: If the Test parameter is specified, this parameter
    #   cannot be true.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_granted_value
    #   The Qualification value to use for automatically granted
    #   Qualifications. This parameter is used only if the AutoGranted
    #   parameter is true.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/CreateQualificationTypeRequest AWS API Documentation
    #
    class CreateQualificationTypeRequest < Struct.new(
      :name,
      :keywords,
      :description,
      :qualification_type_status,
      :retry_delay_in_seconds,
      :test,
      :answer_key,
      :test_duration_in_seconds,
      :auto_granted,
      :auto_granted_value)
      include Aws::Structure
    end

    # @!attribute [rw] qualification_type
    #   The created Qualification type, returned as a QualificationType data
    #   structure.
    #   @return [Types::QualificationType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/CreateQualificationTypeResponse AWS API Documentation
    #
    class CreateQualificationTypeResponse < Struct.new(
      :qualification_type)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateWorkerBlockRequest
    #   data as a hash:
    #
    #       {
    #         worker_id: "CustomerId", # required
    #         reason: "String", # required
    #       }
    #
    # @!attribute [rw] worker_id
    #   The ID of the Worker to block.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A message explaining the reason for blocking the Worker. This
    #   parameter enables you to keep track of your Workers. The Worker does
    #   not see this message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/CreateWorkerBlockRequest AWS API Documentation
    #
    class CreateWorkerBlockRequest < Struct.new(
      :worker_id,
      :reason)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/CreateWorkerBlockResponse AWS API Documentation
    #
    class CreateWorkerBlockResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteHITRequest
    #   data as a hash:
    #
    #       {
    #         hit_id: "EntityId", # required
    #       }
    #
    # @!attribute [rw] hit_id
    #   The ID of the HIT to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/DeleteHITRequest AWS API Documentation
    #
    class DeleteHITRequest < Struct.new(
      :hit_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/DeleteHITResponse AWS API Documentation
    #
    class DeleteHITResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteQualificationTypeRequest
    #   data as a hash:
    #
    #       {
    #         qualification_type_id: "EntityId", # required
    #       }
    #
    # @!attribute [rw] qualification_type_id
    #   The ID of the QualificationType to dispose.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/DeleteQualificationTypeRequest AWS API Documentation
    #
    class DeleteQualificationTypeRequest < Struct.new(
      :qualification_type_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/DeleteQualificationTypeResponse AWS API Documentation
    #
    class DeleteQualificationTypeResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteWorkerBlockRequest
    #   data as a hash:
    #
    #       {
    #         worker_id: "CustomerId", # required
    #         reason: "String",
    #       }
    #
    # @!attribute [rw] worker_id
    #   The ID of the Worker to unblock.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A message that explains the reason for unblocking the Worker. The
    #   Worker does not see this message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/DeleteWorkerBlockRequest AWS API Documentation
    #
    class DeleteWorkerBlockRequest < Struct.new(
      :worker_id,
      :reason)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/DeleteWorkerBlockResponse AWS API Documentation
    #
    class DeleteWorkerBlockResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DisassociateQualificationFromWorkerRequest
    #   data as a hash:
    #
    #       {
    #         worker_id: "CustomerId", # required
    #         qualification_type_id: "EntityId", # required
    #         reason: "String",
    #       }
    #
    # @!attribute [rw] worker_id
    #   The ID of the Worker who possesses the Qualification to be revoked.
    #   @return [String]
    #
    # @!attribute [rw] qualification_type_id
    #   The ID of the Qualification type of the Qualification to be revoked.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A text message that explains why the Qualification was revoked. The
    #   user who had the Qualification sees this message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/DisassociateQualificationFromWorkerRequest AWS API Documentation
    #
    class DisassociateQualificationFromWorkerRequest < Struct.new(
      :worker_id,
      :qualification_type_id,
      :reason)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/DisassociateQualificationFromWorkerResponse AWS API Documentation
    #
    class DisassociateQualificationFromWorkerResponse < Aws::EmptyStructure; end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/GetAccountBalanceRequest AWS API Documentation
    #
    class GetAccountBalanceRequest < Aws::EmptyStructure; end

    # @!attribute [rw] available_balance
    #   A string representing a currency amount.
    #   @return [String]
    #
    # @!attribute [rw] on_hold_balance
    #   A string representing a currency amount.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/GetAccountBalanceResponse AWS API Documentation
    #
    class GetAccountBalanceResponse < Struct.new(
      :available_balance,
      :on_hold_balance)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAssignmentRequest
    #   data as a hash:
    #
    #       {
    #         assignment_id: "EntityId", # required
    #       }
    #
    # @!attribute [rw] assignment_id
    #   The ID of the Assignment to be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/GetAssignmentRequest AWS API Documentation
    #
    class GetAssignmentRequest < Struct.new(
      :assignment_id)
      include Aws::Structure
    end

    # @!attribute [rw] assignment
    #   The assignment. The response includes one Assignment element.
    #   @return [Types::Assignment]
    #
    # @!attribute [rw] hit
    #   The HIT associated with this assignment. The response includes one
    #   HIT element.
    #   @return [Types::HIT]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/GetAssignmentResponse AWS API Documentation
    #
    class GetAssignmentResponse < Struct.new(
      :assignment,
      :hit)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetFileUploadURLRequest
    #   data as a hash:
    #
    #       {
    #         assignment_id: "EntityId", # required
    #         question_identifier: "String", # required
    #       }
    #
    # @!attribute [rw] assignment_id
    #   The ID of the assignment that contains the question with a
    #   FileUploadAnswer.
    #   @return [String]
    #
    # @!attribute [rw] question_identifier
    #   The identifier of the question with a FileUploadAnswer, as specified
    #   in the QuestionForm of the HIT.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/GetFileUploadURLRequest AWS API Documentation
    #
    class GetFileUploadURLRequest < Struct.new(
      :assignment_id,
      :question_identifier)
      include Aws::Structure
    end

    # @!attribute [rw] file_upload_url
    #   A temporary URL for the file that the Worker uploaded for the
    #   answer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/GetFileUploadURLResponse AWS API Documentation
    #
    class GetFileUploadURLResponse < Struct.new(
      :file_upload_url)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetHITRequest
    #   data as a hash:
    #
    #       {
    #         hit_id: "EntityId", # required
    #       }
    #
    # @!attribute [rw] hit_id
    #   The ID of the HIT to be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/GetHITRequest AWS API Documentation
    #
    class GetHITRequest < Struct.new(
      :hit_id)
      include Aws::Structure
    end

    # @!attribute [rw] hit
    #   Contains the requested HIT data.
    #   @return [Types::HIT]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/GetHITResponse AWS API Documentation
    #
    class GetHITResponse < Struct.new(
      :hit)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetQualificationScoreRequest
    #   data as a hash:
    #
    #       {
    #         qualification_type_id: "EntityId", # required
    #         worker_id: "CustomerId", # required
    #       }
    #
    # @!attribute [rw] qualification_type_id
    #   The ID of the QualificationType.
    #   @return [String]
    #
    # @!attribute [rw] worker_id
    #   The ID of the Worker whose Qualification is being updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/GetQualificationScoreRequest AWS API Documentation
    #
    class GetQualificationScoreRequest < Struct.new(
      :qualification_type_id,
      :worker_id)
      include Aws::Structure
    end

    # @!attribute [rw] qualification
    #   The Qualification data structure of the Qualification assigned to a
    #   user, including the Qualification type and the value (score).
    #   @return [Types::Qualification]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/GetQualificationScoreResponse AWS API Documentation
    #
    class GetQualificationScoreResponse < Struct.new(
      :qualification)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetQualificationTypeRequest
    #   data as a hash:
    #
    #       {
    #         qualification_type_id: "EntityId", # required
    #       }
    #
    # @!attribute [rw] qualification_type_id
    #   The ID of the QualificationType.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/GetQualificationTypeRequest AWS API Documentation
    #
    class GetQualificationTypeRequest < Struct.new(
      :qualification_type_id)
      include Aws::Structure
    end

    # @!attribute [rw] qualification_type
    #   The returned Qualification Type
    #   @return [Types::QualificationType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/GetQualificationTypeResponse AWS API Documentation
    #
    class GetQualificationTypeResponse < Struct.new(
      :qualification_type)
      include Aws::Structure
    end

    # The HIT data structure represents a single HIT, including all the
    # information necessary for a Worker to accept and complete the HIT.
    #
    # @!attribute [rw] hit_id
    #   A unique identifier for the HIT.
    #   @return [String]
    #
    # @!attribute [rw] hit_type_id
    #   The ID of the HIT type of this HIT
    #   @return [String]
    #
    # @!attribute [rw] hit_group_id
    #   The ID of the HIT Group of this HIT.
    #   @return [String]
    #
    # @!attribute [rw] hit_layout_id
    #   The ID of the HIT Layout of this HIT.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time the HIT was created.
    #   @return [Time]
    #
    # @!attribute [rw] title
    #   The title of the HIT.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A general description of the HIT.
    #   @return [String]
    #
    # @!attribute [rw] question
    #   The data the Worker completing the HIT uses produce the results.
    #   This is either either a QuestionForm, HTMLQuestion or an
    #   ExternalQuestion data structure.
    #   @return [String]
    #
    # @!attribute [rw] keywords
    #   One or more words or phrases that describe the HIT, separated by
    #   commas. Search terms similar to the keywords of a HIT are more
    #   likely to have the HIT in the search results.
    #   @return [String]
    #
    # @!attribute [rw] hit_status
    #   The status of the HIT and its assignments. Valid Values are
    #   Assignable \| Unassignable \| Reviewable \| Reviewing \| Disposed.
    #   @return [String]
    #
    # @!attribute [rw] max_assignments
    #   The number of times the HIT can be accepted and completed before the
    #   HIT becomes unavailable.
    #   @return [Integer]
    #
    # @!attribute [rw] reward
    #   A string representing a currency amount.
    #   @return [String]
    #
    # @!attribute [rw] auto_approval_delay_in_seconds
    #   The amount of time, in seconds, after the Worker submits an
    #   assignment for the HIT that the results are automatically approved
    #   by Amazon Mechanical Turk. This is the amount of time the Requester
    #   has to reject an assignment submitted by a Worker before the
    #   assignment is auto-approved and the Worker is paid.
    #   @return [Integer]
    #
    # @!attribute [rw] expiration
    #   The date and time the HIT expires.
    #   @return [Time]
    #
    # @!attribute [rw] assignment_duration_in_seconds
    #   The length of time, in seconds, that a Worker has to complete the
    #   HIT after accepting it.
    #   @return [Integer]
    #
    # @!attribute [rw] requester_annotation
    #   An arbitrary data field the Requester who created the HIT can use.
    #   This field is visible only to the creator of the HIT.
    #   @return [String]
    #
    # @!attribute [rw] qualification_requirements
    #   Conditions that a Worker's Qualifications must meet in order to
    #   accept the HIT. A HIT can have between zero and ten Qualification
    #   requirements. All requirements must be met in order for a Worker to
    #   accept the HIT. Additionally, other actions can be restricted using
    #   the `ActionsGuarded` field on each `QualificationRequirement`
    #   structure.
    #   @return [Array<Types::QualificationRequirement>]
    #
    # @!attribute [rw] hit_review_status
    #   Indicates the review status of the HIT. Valid Values are NotReviewed
    #   \| MarkedForReview \| ReviewedAppropriate \| ReviewedInappropriate.
    #   @return [String]
    #
    # @!attribute [rw] number_of_assignments_pending
    #   The number of assignments for this HIT that are being previewed or
    #   have been accepted by Workers, but have not yet been submitted,
    #   returned, or abandoned.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_assignments_available
    #   The number of assignments for this HIT that are available for
    #   Workers to accept.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_assignments_completed
    #   The number of assignments for this HIT that have been approved or
    #   rejected.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/HIT AWS API Documentation
    #
    class HIT < Struct.new(
      :hit_id,
      :hit_type_id,
      :hit_group_id,
      :hit_layout_id,
      :creation_time,
      :title,
      :description,
      :question,
      :keywords,
      :hit_status,
      :max_assignments,
      :reward,
      :auto_approval_delay_in_seconds,
      :expiration,
      :assignment_duration_in_seconds,
      :requester_annotation,
      :qualification_requirements,
      :hit_review_status,
      :number_of_assignments_pending,
      :number_of_assignments_available,
      :number_of_assignments_completed)
      include Aws::Structure
    end

    # The HITLayoutParameter data structure defines parameter values used
    # with a HITLayout. A HITLayout is a reusable Amazon Mechanical Turk
    # project template used to provide Human Intelligence Task (HIT)
    # question data for CreateHIT.
    #
    # @note When making an API call, you may pass HITLayoutParameter
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         value: "String", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the parameter in the HITLayout.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value substituted for the parameter referenced in the HITLayout.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/HITLayoutParameter AWS API Documentation
    #
    class HITLayoutParameter < Struct.new(
      :name,
      :value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAssignmentsForHITRequest
    #   data as a hash:
    #
    #       {
    #         hit_id: "EntityId", # required
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #         assignment_statuses: ["Submitted"], # accepts Submitted, Approved, Rejected
    #       }
    #
    # @!attribute [rw] hit_id
    #   The ID of the HIT.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Pagination token
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] assignment_statuses
    #   The status of the assignments to return: Submitted \| Approved \|
    #   Rejected
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListAssignmentsForHITRequest AWS API Documentation
    #
    class ListAssignmentsForHITRequest < Struct.new(
      :hit_id,
      :next_token,
      :max_results,
      :assignment_statuses)
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more data
    #   to retrieve), Amazon Mechanical Turk returns a pagination token in
    #   the response. You can use this pagination token to retrieve the next
    #   set of results.
    #   @return [String]
    #
    # @!attribute [rw] num_results
    #   The number of assignments on the page in the filtered results list,
    #   equivalent to the number of assignments returned by this call.
    #   @return [Integer]
    #
    # @!attribute [rw] assignments
    #   The collection of Assignment data structures returned by this call.
    #   @return [Array<Types::Assignment>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListAssignmentsForHITResponse AWS API Documentation
    #
    class ListAssignmentsForHITResponse < Struct.new(
      :next_token,
      :num_results,
      :assignments)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListBonusPaymentsRequest
    #   data as a hash:
    #
    #       {
    #         hit_id: "EntityId",
    #         assignment_id: "EntityId",
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] hit_id
    #   The ID of the HIT associated with the bonus payments to retrieve. If
    #   not specified, all bonus payments for all assignments for the given
    #   HIT are returned. Either the HITId parameter or the AssignmentId
    #   parameter must be specified
    #   @return [String]
    #
    # @!attribute [rw] assignment_id
    #   The ID of the assignment associated with the bonus payments to
    #   retrieve. If specified, only bonus payments for the given assignment
    #   are returned. Either the HITId parameter or the AssignmentId
    #   parameter must be specified
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Pagination token
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListBonusPaymentsRequest AWS API Documentation
    #
    class ListBonusPaymentsRequest < Struct.new(
      :hit_id,
      :assignment_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] num_results
    #   The number of bonus payments on this page in the filtered results
    #   list, equivalent to the number of bonus payments being returned by
    #   this call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more data
    #   to retrieve), Amazon Mechanical Turk returns a pagination token in
    #   the response. You can use this pagination token to retrieve the next
    #   set of results.
    #   @return [String]
    #
    # @!attribute [rw] bonus_payments
    #   A successful request to the ListBonusPayments operation returns a
    #   list of BonusPayment objects.
    #   @return [Array<Types::BonusPayment>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListBonusPaymentsResponse AWS API Documentation
    #
    class ListBonusPaymentsResponse < Struct.new(
      :num_results,
      :next_token,
      :bonus_payments)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListHITsForQualificationTypeRequest
    #   data as a hash:
    #
    #       {
    #         qualification_type_id: "EntityId", # required
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] qualification_type_id
    #   The ID of the Qualification type to use when querying HITs.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Pagination Token
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Limit the number of results returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListHITsForQualificationTypeRequest AWS API Documentation
    #
    class ListHITsForQualificationTypeRequest < Struct.new(
      :qualification_type_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more data
    #   to retrieve), Amazon Mechanical Turk returns a pagination token in
    #   the response. You can use this pagination token to retrieve the next
    #   set of results.
    #   @return [String]
    #
    # @!attribute [rw] num_results
    #   The number of HITs on this page in the filtered results list,
    #   equivalent to the number of HITs being returned by this call.
    #   @return [Integer]
    #
    # @!attribute [rw] hits
    #   The list of HIT elements returned by the query.
    #   @return [Array<Types::HIT>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListHITsForQualificationTypeResponse AWS API Documentation
    #
    class ListHITsForQualificationTypeResponse < Struct.new(
      :next_token,
      :num_results,
      :hits)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListHITsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   Pagination token
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListHITsRequest AWS API Documentation
    #
    class ListHITsRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more data
    #   to retrieve), Amazon Mechanical Turk returns a pagination token in
    #   the response. You can use this pagination token to retrieve the next
    #   set of results.
    #   @return [String]
    #
    # @!attribute [rw] num_results
    #   The number of HITs on this page in the filtered results list,
    #   equivalent to the number of HITs being returned by this call.
    #   @return [Integer]
    #
    # @!attribute [rw] hits
    #   The list of HIT elements returned by the query.
    #   @return [Array<Types::HIT>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListHITsResponse AWS API Documentation
    #
    class ListHITsResponse < Struct.new(
      :next_token,
      :num_results,
      :hits)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListQualificationRequestsRequest
    #   data as a hash:
    #
    #       {
    #         qualification_type_id: "EntityId",
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] qualification_type_id
    #   The ID of the QualificationType.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more data
    #   to retrieve), Amazon Mechanical Turk returns a pagination token in
    #   the response. You can use this pagination token to retrieve the next
    #   set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListQualificationRequestsRequest AWS API Documentation
    #
    class ListQualificationRequestsRequest < Struct.new(
      :qualification_type_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] num_results
    #   The number of Qualification requests on this page in the filtered
    #   results list, equivalent to the number of Qualification requests
    #   being returned by this call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more data
    #   to retrieve), Amazon Mechanical Turk returns a pagination token in
    #   the response. You can use this pagination token to retrieve the next
    #   set of results.
    #   @return [String]
    #
    # @!attribute [rw] qualification_requests
    #   The Qualification request. The response includes one
    #   QualificationRequest element for each Qualification request returned
    #   by the query.
    #   @return [Array<Types::QualificationRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListQualificationRequestsResponse AWS API Documentation
    #
    class ListQualificationRequestsResponse < Struct.new(
      :num_results,
      :next_token,
      :qualification_requests)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListQualificationTypesRequest
    #   data as a hash:
    #
    #       {
    #         query: "String",
    #         must_be_requestable: false, # required
    #         must_be_owned_by_caller: false,
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] query
    #   A text query against all of the searchable attributes of
    #   Qualification types.
    #   @return [String]
    #
    # @!attribute [rw] must_be_requestable
    #   Specifies that only Qualification types that a user can request
    #   through the Amazon Mechanical Turk web site, such as by taking a
    #   Qualification test, are returned as results of the search. Some
    #   Qualification types, such as those assigned automatically by the
    #   system, cannot be requested directly by users. If false, all
    #   Qualification types, including those managed by the system, are
    #   considered. Valid values are True \| False.
    #   @return [Boolean]
    #
    # @!attribute [rw] must_be_owned_by_caller
    #   Specifies that only Qualification types that the Requester created
    #   are returned. If false, the operation returns all Qualification
    #   types.
    #   @return [Boolean]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more data
    #   to retrieve), Amazon Mechanical Turk returns a pagination token in
    #   the response. You can use this pagination token to retrieve the next
    #   set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListQualificationTypesRequest AWS API Documentation
    #
    class ListQualificationTypesRequest < Struct.new(
      :query,
      :must_be_requestable,
      :must_be_owned_by_caller,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] num_results
    #   The number of Qualification types on this page in the filtered
    #   results list, equivalent to the number of types this operation
    #   returns.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more data
    #   to retrieve), Amazon Mechanical Turk returns a pagination token in
    #   the response. You can use this pagination token to retrieve the next
    #   set of results.
    #   @return [String]
    #
    # @!attribute [rw] qualification_types
    #   The list of QualificationType elements returned by the query.
    #   @return [Array<Types::QualificationType>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListQualificationTypesResponse AWS API Documentation
    #
    class ListQualificationTypesResponse < Struct.new(
      :num_results,
      :next_token,
      :qualification_types)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListReviewPolicyResultsForHITRequest
    #   data as a hash:
    #
    #       {
    #         hit_id: "EntityId", # required
    #         policy_levels: ["Assignment"], # accepts Assignment, HIT
    #         retrieve_actions: false,
    #         retrieve_results: false,
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] hit_id
    #   The unique identifier of the HIT to retrieve review results for.
    #   @return [String]
    #
    # @!attribute [rw] policy_levels
    #   The Policy Level(s) to retrieve review results for - HIT or
    #   Assignment. If omitted, the default behavior is to retrieve all data
    #   for both policy levels. For a list of all the described policies,
    #   see Review Policies.
    #   @return [Array<String>]
    #
    # @!attribute [rw] retrieve_actions
    #   Specify if the operation should retrieve a list of the actions taken
    #   executing the Review Policies and their outcomes.
    #   @return [Boolean]
    #
    # @!attribute [rw] retrieve_results
    #   Specify if the operation should retrieve a list of the results
    #   computed by the Review Policies.
    #   @return [Boolean]
    #
    # @!attribute [rw] next_token
    #   Pagination token
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Limit the number of results returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListReviewPolicyResultsForHITRequest AWS API Documentation
    #
    class ListReviewPolicyResultsForHITRequest < Struct.new(
      :hit_id,
      :policy_levels,
      :retrieve_actions,
      :retrieve_results,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] hit_id
    #   The HITId of the HIT for which results have been returned.
    #   @return [String]
    #
    # @!attribute [rw] assignment_review_policy
    #   The name of the Assignment-level Review Policy. This contains only
    #   the PolicyName element.
    #   @return [Types::ReviewPolicy]
    #
    # @!attribute [rw] hit_review_policy
    #   The name of the HIT-level Review Policy. This contains only the
    #   PolicyName element.
    #   @return [Types::ReviewPolicy]
    #
    # @!attribute [rw] assignment_review_report
    #   Contains both ReviewResult and ReviewAction elements for an
    #   Assignment.
    #   @return [Types::ReviewReport]
    #
    # @!attribute [rw] hit_review_report
    #   Contains both ReviewResult and ReviewAction elements for a
    #   particular HIT.
    #   @return [Types::ReviewReport]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more data
    #   to retrieve), Amazon Mechanical Turk returns a pagination token in
    #   the response. You can use this pagination token to retrieve the next
    #   set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListReviewPolicyResultsForHITResponse AWS API Documentation
    #
    class ListReviewPolicyResultsForHITResponse < Struct.new(
      :hit_id,
      :assignment_review_policy,
      :hit_review_policy,
      :assignment_review_report,
      :hit_review_report,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListReviewableHITsRequest
    #   data as a hash:
    #
    #       {
    #         hit_type_id: "EntityId",
    #         status: "Reviewable", # accepts Reviewable, Reviewing
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] hit_type_id
    #   The ID of the HIT type of the HITs to consider for the query. If not
    #   specified, all HITs for the Reviewer are considered
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Can be either `Reviewable` or `Reviewing`. Reviewable is the default
    #   value.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Pagination Token
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Limit the number of results returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListReviewableHITsRequest AWS API Documentation
    #
    class ListReviewableHITsRequest < Struct.new(
      :hit_type_id,
      :status,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more data
    #   to retrieve), Amazon Mechanical Turk returns a pagination token in
    #   the response. You can use this pagination token to retrieve the next
    #   set of results.
    #   @return [String]
    #
    # @!attribute [rw] num_results
    #   The number of HITs on this page in the filtered results list,
    #   equivalent to the number of HITs being returned by this call.
    #   @return [Integer]
    #
    # @!attribute [rw] hits
    #   The list of HIT elements returned by the query.
    #   @return [Array<Types::HIT>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListReviewableHITsResponse AWS API Documentation
    #
    class ListReviewableHITsResponse < Struct.new(
      :next_token,
      :num_results,
      :hits)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListWorkerBlocksRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   Pagination token
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListWorkerBlocksRequest AWS API Documentation
    #
    class ListWorkerBlocksRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more data
    #   to retrieve), Amazon Mechanical Turk returns a pagination token in
    #   the response. You can use this pagination token to retrieve the next
    #   set of results.
    #   @return [String]
    #
    # @!attribute [rw] num_results
    #   The number of assignments on the page in the filtered results list,
    #   equivalent to the number of assignments returned by this call.
    #   @return [Integer]
    #
    # @!attribute [rw] worker_blocks
    #   The list of WorkerBlocks, containing the collection of Worker IDs
    #   and reasons for blocking.
    #   @return [Array<Types::WorkerBlock>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListWorkerBlocksResponse AWS API Documentation
    #
    class ListWorkerBlocksResponse < Struct.new(
      :next_token,
      :num_results,
      :worker_blocks)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListWorkersWithQualificationTypeRequest
    #   data as a hash:
    #
    #       {
    #         qualification_type_id: "EntityId", # required
    #         status: "Granted", # accepts Granted, Revoked
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] qualification_type_id
    #   The ID of the Qualification type of the Qualifications to return.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Qualifications to return. Can be `Granted |
    #   Revoked`.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Pagination Token
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Limit the number of results returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListWorkersWithQualificationTypeRequest AWS API Documentation
    #
    class ListWorkersWithQualificationTypeRequest < Struct.new(
      :qualification_type_id,
      :status,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more data
    #   to retrieve), Amazon Mechanical Turk returns a pagination token in
    #   the response. You can use this pagination token to retrieve the next
    #   set of results.
    #   @return [String]
    #
    # @!attribute [rw] num_results
    #   The number of Qualifications on this page in the filtered results
    #   list, equivalent to the number of Qualifications being returned by
    #   this call.
    #   @return [Integer]
    #
    # @!attribute [rw] qualifications
    #   The list of Qualification elements returned by this call.
    #   @return [Array<Types::Qualification>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListWorkersWithQualificationTypeResponse AWS API Documentation
    #
    class ListWorkersWithQualificationTypeResponse < Struct.new(
      :next_token,
      :num_results,
      :qualifications)
      include Aws::Structure
    end

    # The Locale data structure represents a geographical region or
    # location.
    #
    # @note When making an API call, you may pass Locale
    #   data as a hash:
    #
    #       {
    #         country: "CountryParameters", # required
    #         subdivision: "CountryParameters",
    #       }
    #
    # @!attribute [rw] country
    #   The country of the locale. Must be a valid ISO 3166 country code.
    #   For example, the code US refers to the United States of America.
    #   @return [String]
    #
    # @!attribute [rw] subdivision
    #   The state or subdivision of the locale. A valid ISO 3166-2
    #   subdivision code. For example, the code WA refers to the state of
    #   Washington.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/Locale AWS API Documentation
    #
    class Locale < Struct.new(
      :country,
      :subdivision)
      include Aws::Structure
    end

    # The NotificationSpecification data structure describes a HIT event
    # notification for a HIT type.
    #
    # @note When making an API call, you may pass NotificationSpecification
    #   data as a hash:
    #
    #       {
    #         destination: "String", # required
    #         transport: "Email", # required, accepts Email, SQS, SNS
    #         version: "String", # required
    #         event_types: ["AssignmentAccepted"], # required, accepts AssignmentAccepted, AssignmentAbandoned, AssignmentReturned, AssignmentSubmitted, AssignmentRejected, AssignmentApproved, HITCreated, HITExpired, HITReviewable, HITExtended, HITDisposed, Ping
    #       }
    #
    # @!attribute [rw] destination
    #   The target for notification messages. The Destination’s format is
    #   determined by the specified Transport:
    #
    #   * When Transport is Email, the Destination is your email address.
    #
    #   * When Transport is SQS, the Destination is your queue URL.
    #
    #   * When Transport is SNS, the Destination is the ARN of your topic.
    #   @return [String]
    #
    # @!attribute [rw] transport
    #   The method Amazon Mechanical Turk uses to send the notification.
    #   Valid Values: Email \| SQS \| SNS.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the Notification API to use. Valid value is
    #   2006-05-05.
    #   @return [String]
    #
    # @!attribute [rw] event_types
    #   The list of events that should cause notifications to be sent. Valid
    #   Values: AssignmentAccepted \| AssignmentAbandoned \|
    #   AssignmentReturned \| AssignmentSubmitted \| AssignmentRejected \|
    #   AssignmentApproved \| HITCreated \| HITExtended \| HITDisposed \|
    #   HITReviewable \| HITExpired \| Ping. The Ping event is only valid
    #   for the SendTestEventNotification operation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/NotificationSpecification AWS API Documentation
    #
    class NotificationSpecification < Struct.new(
      :destination,
      :transport,
      :version,
      :event_types)
      include Aws::Structure
    end

    # When MTurk encounters an issue with notifying the Workers you
    # specified, it returns back this object with failure details.
    #
    # @!attribute [rw] notify_workers_failure_code
    #   Encoded value for the failure type.
    #   @return [String]
    #
    # @!attribute [rw] notify_workers_failure_message
    #   A message detailing the reason the Worker could not be notified.
    #   @return [String]
    #
    # @!attribute [rw] worker_id
    #   The ID of the Worker.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/NotifyWorkersFailureStatus AWS API Documentation
    #
    class NotifyWorkersFailureStatus < Struct.new(
      :notify_workers_failure_code,
      :notify_workers_failure_message,
      :worker_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass NotifyWorkersRequest
    #   data as a hash:
    #
    #       {
    #         subject: "String", # required
    #         message_text: "String", # required
    #         worker_ids: ["CustomerId"], # required
    #       }
    #
    # @!attribute [rw] subject
    #   The subject line of the email message to send. Can include up to 200
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] message_text
    #   The text of the email message to send. Can include up to 4,096
    #   characters
    #   @return [String]
    #
    # @!attribute [rw] worker_ids
    #   A list of Worker IDs you wish to notify. You can notify upto 100
    #   Workers at a time.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/NotifyWorkersRequest AWS API Documentation
    #
    class NotifyWorkersRequest < Struct.new(
      :subject,
      :message_text,
      :worker_ids)
      include Aws::Structure
    end

    # @!attribute [rw] notify_workers_failure_statuses
    #   When MTurk sends notifications to the list of Workers, it returns
    #   back any failures it encounters in this list of
    #   NotifyWorkersFailureStatus objects.
    #   @return [Array<Types::NotifyWorkersFailureStatus>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/NotifyWorkersResponse AWS API Documentation
    #
    class NotifyWorkersResponse < Struct.new(
      :notify_workers_failure_statuses)
      include Aws::Structure
    end

    # This data structure is the data type for the AnswerKey parameter of
    # the ScoreMyKnownAnswers/2011-09-01 Review Policy.
    #
    # @note When making an API call, you may pass ParameterMapEntry
    #   data as a hash:
    #
    #       {
    #         key: "String",
    #         values: ["String"],
    #       }
    #
    # @!attribute [rw] key
    #   The QuestionID from the HIT that is used to identify which question
    #   requires Mechanical Turk to score as part of the
    #   ScoreMyKnownAnswers/2011-09-01 Review Policy.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The list of answers to the question specified in the MapEntry Key
    #   element. The Worker must match all values in order for the answer to
    #   be scored correctly.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ParameterMapEntry AWS API Documentation
    #
    class ParameterMapEntry < Struct.new(
      :key,
      :values)
      include Aws::Structure
    end

    # Name of the parameter from the Review policy.
    #
    # @note When making an API call, you may pass PolicyParameter
    #   data as a hash:
    #
    #       {
    #         key: "String",
    #         values: ["String"],
    #         map_entries: [
    #           {
    #             key: "String",
    #             values: ["String"],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] key
    #   Name of the parameter from the list of Review Polices.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The list of values of the Parameter
    #   @return [Array<String>]
    #
    # @!attribute [rw] map_entries
    #   List of ParameterMapEntry objects.
    #   @return [Array<Types::ParameterMapEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/PolicyParameter AWS API Documentation
    #
    class PolicyParameter < Struct.new(
      :key,
      :values,
      :map_entries)
      include Aws::Structure
    end

    # The Qualification data structure represents a Qualification assigned
    # to a user, including the Qualification type and the value (score).
    #
    # @!attribute [rw] qualification_type_id
    #   The ID of the Qualification type for the Qualification.
    #   @return [String]
    #
    # @!attribute [rw] worker_id
    #   The ID of the Worker who possesses the Qualification.
    #   @return [String]
    #
    # @!attribute [rw] grant_time
    #   The date and time the Qualification was granted to the Worker. If
    #   the Worker's Qualification was revoked, and then re-granted based
    #   on a new Qualification request, GrantTime is the date and time of
    #   the last call to the AcceptQualificationRequest operation.
    #   @return [Time]
    #
    # @!attribute [rw] integer_value
    #   The value (score) of the Qualification, if the Qualification has an
    #   integer value.
    #   @return [Integer]
    #
    # @!attribute [rw] locale_value
    #   The Locale data structure represents a geographical region or
    #   location.
    #   @return [Types::Locale]
    #
    # @!attribute [rw] status
    #   The status of the Qualification. Valid values are Granted \|
    #   Revoked.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/Qualification AWS API Documentation
    #
    class Qualification < Struct.new(
      :qualification_type_id,
      :worker_id,
      :grant_time,
      :integer_value,
      :locale_value,
      :status)
      include Aws::Structure
    end

    # The QualificationRequest data structure represents a request a Worker
    # has made for a Qualification.
    #
    # @!attribute [rw] qualification_request_id
    #   The ID of the Qualification request, a unique identifier generated
    #   when the request was submitted.
    #   @return [String]
    #
    # @!attribute [rw] qualification_type_id
    #   The ID of the Qualification type the Worker is requesting, as
    #   returned by the CreateQualificationType operation.
    #   @return [String]
    #
    # @!attribute [rw] worker_id
    #   The ID of the Worker requesting the Qualification.
    #   @return [String]
    #
    # @!attribute [rw] test
    #   The contents of the Qualification test that was presented to the
    #   Worker, if the type has a test and the Worker has submitted answers.
    #   This value is identical to the QuestionForm associated with the
    #   Qualification type at the time the Worker requests the
    #   Qualification.
    #   @return [String]
    #
    # @!attribute [rw] answer
    #   The Worker's answers for the Qualification type's test contained
    #   in a QuestionFormAnswers document, if the type has a test and the
    #   Worker has submitted answers. If the Worker does not provide any
    #   answers, Answer may be empty.
    #   @return [String]
    #
    # @!attribute [rw] submit_time
    #   The date and time the Qualification request had a status of
    #   Submitted. This is either the time the Worker submitted answers for
    #   a Qualification test, or the time the Worker requested the
    #   Qualification if the Qualification type does not have a test.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/QualificationRequest AWS API Documentation
    #
    class QualificationRequest < Struct.new(
      :qualification_request_id,
      :qualification_type_id,
      :worker_id,
      :test,
      :answer,
      :submit_time)
      include Aws::Structure
    end

    # The QualificationRequirement data structure describes a Qualification
    # that a Worker must have before the Worker is allowed to accept a HIT.
    # A requirement may optionally state that a Worker must have the
    # Qualification in order to preview the HIT, or see the HIT in search
    # results.
    #
    # @note When making an API call, you may pass QualificationRequirement
    #   data as a hash:
    #
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
    #       }
    #
    # @!attribute [rw] qualification_type_id
    #   The ID of the Qualification type for the requirement.
    #   @return [String]
    #
    # @!attribute [rw] comparator
    #   The kind of comparison to make against a Qualification's value. You
    #   can compare a Qualification's value to an IntegerValue to see if it
    #   is LessThan, LessThanOrEqualTo, GreaterThan, GreaterThanOrEqualTo,
    #   EqualTo, or NotEqualTo the IntegerValue. You can compare it to a
    #   LocaleValue to see if it is EqualTo, or NotEqualTo the LocaleValue.
    #   You can check to see if the value is In or NotIn a set of
    #   IntegerValue or LocaleValue values. Lastly, a Qualification
    #   requirement can also test if a Qualification Exists or DoesNotExist
    #   in the user's profile, regardless of its value.
    #   @return [String]
    #
    # @!attribute [rw] integer_values
    #   The integer value to compare against the Qualification's value.
    #   IntegerValue must not be present if Comparator is Exists or
    #   DoesNotExist. IntegerValue can only be used if the Qualification
    #   type has an integer value; it cannot be used with the Worker\_Locale
    #   QualificationType ID. When performing a set comparison by using the
    #   In or the NotIn comparator, you can use up to 15 IntegerValue
    #   elements in a QualificationRequirement data structure.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] locale_values
    #   The locale value to compare against the Qualification's value. The
    #   local value must be a valid ISO 3166 country code or supports ISO
    #   3166-2 subdivisions. LocaleValue can only be used with a
    #   Worker\_Locale QualificationType ID. LocaleValue can only be used
    #   with the EqualTo, NotEqualTo, In, and NotIn comparators. You must
    #   only use a single LocaleValue element when using the EqualTo or
    #   NotEqualTo comparators. When performing a set comparison by using
    #   the In or the NotIn comparator, you can use up to 30 LocaleValue
    #   elements in a QualificationRequirement data structure.
    #   @return [Array<Types::Locale>]
    #
    # @!attribute [rw] required_to_preview
    #   DEPRECATED: Use the `ActionsGuarded` field instead. If
    #   RequiredToPreview is true, the question data for the HIT will not be
    #   shown when a Worker whose Qualifications do not meet this
    #   requirement tries to preview the HIT. That is, a Worker's
    #   Qualifications must meet all of the requirements for which
    #   RequiredToPreview is true in order to preview the HIT. If a Worker
    #   meets all of the requirements where RequiredToPreview is true (or if
    #   there are no such requirements), but does not meet all of the
    #   requirements for the HIT, the Worker will be allowed to preview the
    #   HIT's question data, but will not be allowed to accept and complete
    #   the HIT. The default is false. This should not be used in
    #   combination with the `ActionsGuarded` field.
    #   @return [Boolean]
    #
    # @!attribute [rw] actions_guarded
    #   Setting this attribute prevents Workers whose Qualifications do not
    #   meet this QualificationRequirement from taking the specified action.
    #   Valid arguments include "Accept" (Worker cannot accept the HIT,
    #   but can preview the HIT and see it in their search results),
    #   "PreviewAndAccept" (Worker cannot accept or preview the HIT, but
    #   can see the HIT in their search results), and
    #   "DiscoverPreviewAndAccept" (Worker cannot accept, preview, or see
    #   the HIT in their search results). It's possible for you to create a
    #   HIT with multiple QualificationRequirements (which can have
    #   different values for the ActionGuarded attribute). In this case, the
    #   Worker is only permitted to perform an action when they have met all
    #   QualificationRequirements guarding the action. The actions in the
    #   order of least restrictive to most restrictive are Discover, Preview
    #   and Accept. For example, if a Worker meets all
    #   QualificationRequirements that are set to DiscoverPreviewAndAccept,
    #   but do not meet all requirements that are set with PreviewAndAccept,
    #   then the Worker will be able to Discover, i.e. see the HIT in their
    #   search result, but will not be able to Preview or Accept the HIT.
    #   ActionsGuarded should not be used in combination with the
    #   `RequiredToPreview` field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/QualificationRequirement AWS API Documentation
    #
    class QualificationRequirement < Struct.new(
      :qualification_type_id,
      :comparator,
      :integer_values,
      :locale_values,
      :required_to_preview,
      :actions_guarded)
      include Aws::Structure
    end

    # The QualificationType data structure represents a Qualification type,
    # a description of a property of a Worker that must match the
    # requirements of a HIT for the Worker to be able to accept the HIT. The
    # type also describes how a Worker can obtain a Qualification of that
    # type, such as through a Qualification test.
    #
    # @!attribute [rw] qualification_type_id
    #   A unique identifier for the Qualification type. A Qualification type
    #   is given a Qualification type ID when you call the
    #   CreateQualificationType operation.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time the Qualification type was created.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the Qualification type. The type name is used to
    #   identify the type, and to find the type using a Qualification type
    #   search.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A long description for the Qualification type.
    #   @return [String]
    #
    # @!attribute [rw] keywords
    #   One or more words or phrases that describe theQualification type,
    #   separated by commas. The Keywords make the type easier to find using
    #   a search.
    #   @return [String]
    #
    # @!attribute [rw] qualification_type_status
    #   The status of the Qualification type. A Qualification type's status
    #   determines if users can apply to receive a Qualification of this
    #   type, and if HITs can be created with requirements based on this
    #   type. Valid values are Active \| Inactive.
    #   @return [String]
    #
    # @!attribute [rw] test
    #   The questions for a Qualification test associated with this
    #   Qualification type that a user can take to obtain a Qualification of
    #   this type. This parameter must be specified if AnswerKey is present.
    #   A Qualification type cannot have both a specified Test parameter and
    #   an AutoGranted value of true.
    #   @return [String]
    #
    # @!attribute [rw] test_duration_in_seconds
    #   The amount of time, in seconds, given to a Worker to complete the
    #   Qualification test, beginning from the time the Worker requests the
    #   Qualification.
    #   @return [Integer]
    #
    # @!attribute [rw] answer_key
    #   The answers to the Qualification test specified in the Test
    #   parameter.
    #   @return [String]
    #
    # @!attribute [rw] retry_delay_in_seconds
    #   The amount of time, in seconds, Workers must wait after taking the
    #   Qualification test before they can take it again. Workers can take a
    #   Qualification test multiple times if they were not granted the
    #   Qualification from a previous attempt, or if the test offers a
    #   gradient score and they want a better score. If not specified,
    #   retries are disabled and Workers can request a Qualification only
    #   once.
    #   @return [Integer]
    #
    # @!attribute [rw] is_requestable
    #   Specifies whether the Qualification type is one that a user can
    #   request through the Amazon Mechanical Turk web site, such as by
    #   taking a Qualification test. This value is False for Qualifications
    #   assigned automatically by the system. Valid values are True \|
    #   False.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_granted
    #   Specifies that requests for the Qualification type are granted
    #   immediately, without prompting the Worker with a Qualification test.
    #   Valid values are True \| False.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_granted_value
    #   The Qualification integer value to use for automatically granted
    #   Qualifications, if AutoGranted is true. This is 1 by default.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/QualificationType AWS API Documentation
    #
    class QualificationType < Struct.new(
      :qualification_type_id,
      :creation_time,
      :name,
      :description,
      :keywords,
      :qualification_type_status,
      :test,
      :test_duration_in_seconds,
      :answer_key,
      :retry_delay_in_seconds,
      :is_requestable,
      :auto_granted,
      :auto_granted_value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RejectAssignmentRequest
    #   data as a hash:
    #
    #       {
    #         assignment_id: "EntityId", # required
    #         requester_feedback: "String", # required
    #       }
    #
    # @!attribute [rw] assignment_id
    #   The ID of the assignment. The assignment must correspond to a HIT
    #   created by the Requester.
    #   @return [String]
    #
    # @!attribute [rw] requester_feedback
    #   A message for the Worker, which the Worker can see in the Status
    #   section of the web site.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/RejectAssignmentRequest AWS API Documentation
    #
    class RejectAssignmentRequest < Struct.new(
      :assignment_id,
      :requester_feedback)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/RejectAssignmentResponse AWS API Documentation
    #
    class RejectAssignmentResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass RejectQualificationRequestRequest
    #   data as a hash:
    #
    #       {
    #         qualification_request_id: "String", # required
    #         reason: "String",
    #       }
    #
    # @!attribute [rw] qualification_request_id
    #   The ID of the Qualification request, as returned by the
    #   `ListQualificationRequests` operation.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A text message explaining why the request was rejected, to be shown
    #   to the Worker who made the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/RejectQualificationRequestRequest AWS API Documentation
    #
    class RejectQualificationRequestRequest < Struct.new(
      :qualification_request_id,
      :reason)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/RejectQualificationRequestResponse AWS API Documentation
    #
    class RejectQualificationRequestResponse < Aws::EmptyStructure; end

    # Both the AssignmentReviewReport and the HITReviewReport elements
    # contains the ReviewActionDetail data structure. This structure is
    # returned multiple times for each action specified in the Review
    # Policy.
    #
    # @!attribute [rw] action_id
    #   The unique identifier for the action.
    #   @return [String]
    #
    # @!attribute [rw] action_name
    #   The nature of the action itself. The Review Policy is responsible
    #   for examining the HIT and Assignments, emitting results, and
    #   deciding which other actions will be necessary.
    #   @return [String]
    #
    # @!attribute [rw] target_id
    #   The specific HITId or AssignmentID targeted by the action.
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   The type of object in TargetId.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current disposition of the action: INTENDED, SUCCEEDED, FAILED,
    #   or CANCELLED.
    #   @return [String]
    #
    # @!attribute [rw] complete_time
    #   The date when the action was completed.
    #   @return [Time]
    #
    # @!attribute [rw] result
    #   A description of the outcome of the review.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   Present only when the Results have a FAILED Status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ReviewActionDetail AWS API Documentation
    #
    class ReviewActionDetail < Struct.new(
      :action_id,
      :action_name,
      :target_id,
      :target_type,
      :status,
      :complete_time,
      :result,
      :error_code)
      include Aws::Structure
    end

    # HIT Review Policy data structures represent HIT review policies, which
    # you specify when you create a HIT.
    #
    # @note When making an API call, you may pass ReviewPolicy
    #   data as a hash:
    #
    #       {
    #         policy_name: "String", # required
    #         parameters: [
    #           {
    #             key: "String",
    #             values: ["String"],
    #             map_entries: [
    #               {
    #                 key: "String",
    #                 values: ["String"],
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] policy_name
    #   Name of a Review Policy: SimplePlurality/2011-09-01 or
    #   ScoreMyKnownAnswers/2011-09-01
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   Name of the parameter from the Review policy.
    #   @return [Array<Types::PolicyParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ReviewPolicy AWS API Documentation
    #
    class ReviewPolicy < Struct.new(
      :policy_name,
      :parameters)
      include Aws::Structure
    end

    # Contains both ReviewResult and ReviewAction elements for a particular
    # HIT.
    #
    # @!attribute [rw] review_results
    #   A list of ReviewResults objects for each action specified in the
    #   Review Policy.
    #   @return [Array<Types::ReviewResultDetail>]
    #
    # @!attribute [rw] review_actions
    #   A list of ReviewAction objects for each action specified in the
    #   Review Policy.
    #   @return [Array<Types::ReviewActionDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ReviewReport AWS API Documentation
    #
    class ReviewReport < Struct.new(
      :review_results,
      :review_actions)
      include Aws::Structure
    end

    # This data structure is returned multiple times for each result
    # specified in the Review Policy.
    #
    # @!attribute [rw] action_id
    #   A unique identifier of the Review action result.
    #   @return [String]
    #
    # @!attribute [rw] subject_id
    #   The HITID or AssignmentId about which this result was taken. Note
    #   that HIT-level Review Policies will often emit results about both
    #   the HIT itself and its Assignments, while Assignment-level review
    #   policies generally only emit results about the Assignment itself.
    #   @return [String]
    #
    # @!attribute [rw] subject_type
    #   The type of the object from the SubjectId field.
    #   @return [String]
    #
    # @!attribute [rw] question_id
    #   Specifies the QuestionId the result is describing. Depending on
    #   whether the TargetType is a HIT or Assignment this results could
    #   specify multiple values. If TargetType is HIT and QuestionId is
    #   absent, then the result describes results of the HIT, including the
    #   HIT agreement score. If ObjectType is Assignment and QuestionId is
    #   absent, then the result describes the Worker's performance on the
    #   HIT.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   Key identifies the particular piece of reviewed information.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The values of Key provided by the review policies you have selected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ReviewResultDetail AWS API Documentation
    #
    class ReviewResultDetail < Struct.new(
      :action_id,
      :subject_id,
      :subject_type,
      :question_id,
      :key,
      :value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SendBonusRequest
    #   data as a hash:
    #
    #       {
    #         worker_id: "CustomerId", # required
    #         bonus_amount: "CurrencyAmount", # required
    #         assignment_id: "EntityId", # required
    #         reason: "String", # required
    #         unique_request_token: "IdempotencyToken",
    #       }
    #
    # @!attribute [rw] worker_id
    #   The ID of the Worker being paid the bonus.
    #   @return [String]
    #
    # @!attribute [rw] bonus_amount
    #   The Bonus amount is a US Dollar amount specified using a string (for
    #   example, "5" represents $5.00 USD and "101.42" represents
    #   $101.42 USD). Do not include currency symbols or currency codes.
    #   @return [String]
    #
    # @!attribute [rw] assignment_id
    #   The ID of the assignment for which this bonus is paid.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A message that explains the reason for the bonus payment. The Worker
    #   receiving the bonus can see this message.
    #   @return [String]
    #
    # @!attribute [rw] unique_request_token
    #   A unique identifier for this request, which allows you to retry the
    #   call on error without granting multiple bonuses. This is useful in
    #   cases such as network timeouts where it is unclear whether or not
    #   the call succeeded on the server. If the bonus already exists in the
    #   system from a previous call using the same UniqueRequestToken,
    #   subsequent calls will return an error with a message containing the
    #   request ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/SendBonusRequest AWS API Documentation
    #
    class SendBonusRequest < Struct.new(
      :worker_id,
      :bonus_amount,
      :assignment_id,
      :reason,
      :unique_request_token)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/SendBonusResponse AWS API Documentation
    #
    class SendBonusResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass SendTestEventNotificationRequest
    #   data as a hash:
    #
    #       {
    #         notification: { # required
    #           destination: "String", # required
    #           transport: "Email", # required, accepts Email, SQS, SNS
    #           version: "String", # required
    #           event_types: ["AssignmentAccepted"], # required, accepts AssignmentAccepted, AssignmentAbandoned, AssignmentReturned, AssignmentSubmitted, AssignmentRejected, AssignmentApproved, HITCreated, HITExpired, HITReviewable, HITExtended, HITDisposed, Ping
    #         },
    #         test_event_type: "AssignmentAccepted", # required, accepts AssignmentAccepted, AssignmentAbandoned, AssignmentReturned, AssignmentSubmitted, AssignmentRejected, AssignmentApproved, HITCreated, HITExpired, HITReviewable, HITExtended, HITDisposed, Ping
    #       }
    #
    # @!attribute [rw] notification
    #   The notification specification to test. This value is identical to
    #   the value you would provide to the UpdateNotificationSettings
    #   operation when you establish the notification specification for a
    #   HIT type.
    #   @return [Types::NotificationSpecification]
    #
    # @!attribute [rw] test_event_type
    #   The event to simulate to test the notification specification. This
    #   event is included in the test message even if the notification
    #   specification does not include the event type. The notification
    #   specification does not filter out the test event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/SendTestEventNotificationRequest AWS API Documentation
    #
    class SendTestEventNotificationRequest < Struct.new(
      :notification,
      :test_event_type)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/SendTestEventNotificationResponse AWS API Documentation
    #
    class SendTestEventNotificationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateExpirationForHITRequest
    #   data as a hash:
    #
    #       {
    #         hit_id: "EntityId", # required
    #         expire_at: Time.now, # required
    #       }
    #
    # @!attribute [rw] hit_id
    #   The HIT to update.
    #   @return [String]
    #
    # @!attribute [rw] expire_at
    #   The date and time at which you want the HIT to expire
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/UpdateExpirationForHITRequest AWS API Documentation
    #
    class UpdateExpirationForHITRequest < Struct.new(
      :hit_id,
      :expire_at)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/UpdateExpirationForHITResponse AWS API Documentation
    #
    class UpdateExpirationForHITResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateHITReviewStatusRequest
    #   data as a hash:
    #
    #       {
    #         hit_id: "EntityId", # required
    #         revert: false,
    #       }
    #
    # @!attribute [rw] hit_id
    #   The ID of the HIT to update.
    #   @return [String]
    #
    # @!attribute [rw] revert
    #   Specifies how to update the HIT status. Default is `False`.
    #
    #   * Setting this to false will only transition a HIT from `Reviewable`
    #     to `Reviewing`
    #
    #   * Setting this to true will only transition a HIT from `Reviewing`
    #     to `Reviewable`
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/UpdateHITReviewStatusRequest AWS API Documentation
    #
    class UpdateHITReviewStatusRequest < Struct.new(
      :hit_id,
      :revert)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/UpdateHITReviewStatusResponse AWS API Documentation
    #
    class UpdateHITReviewStatusResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateHITTypeOfHITRequest
    #   data as a hash:
    #
    #       {
    #         hit_id: "EntityId", # required
    #         hit_type_id: "EntityId", # required
    #       }
    #
    # @!attribute [rw] hit_id
    #   The HIT to update.
    #   @return [String]
    #
    # @!attribute [rw] hit_type_id
    #   The ID of the new HIT type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/UpdateHITTypeOfHITRequest AWS API Documentation
    #
    class UpdateHITTypeOfHITRequest < Struct.new(
      :hit_id,
      :hit_type_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/UpdateHITTypeOfHITResponse AWS API Documentation
    #
    class UpdateHITTypeOfHITResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateNotificationSettingsRequest
    #   data as a hash:
    #
    #       {
    #         hit_type_id: "EntityId", # required
    #         notification: {
    #           destination: "String", # required
    #           transport: "Email", # required, accepts Email, SQS, SNS
    #           version: "String", # required
    #           event_types: ["AssignmentAccepted"], # required, accepts AssignmentAccepted, AssignmentAbandoned, AssignmentReturned, AssignmentSubmitted, AssignmentRejected, AssignmentApproved, HITCreated, HITExpired, HITReviewable, HITExtended, HITDisposed, Ping
    #         },
    #         active: false,
    #       }
    #
    # @!attribute [rw] hit_type_id
    #   The ID of the HIT type whose notification specification is being
    #   updated.
    #   @return [String]
    #
    # @!attribute [rw] notification
    #   The notification specification for the HIT type.
    #   @return [Types::NotificationSpecification]
    #
    # @!attribute [rw] active
    #   Specifies whether notifications are sent for HITs of this HIT type,
    #   according to the notification specification. You must specify either
    #   the Notification parameter or the Active parameter for the call to
    #   UpdateNotificationSettings to succeed.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/UpdateNotificationSettingsRequest AWS API Documentation
    #
    class UpdateNotificationSettingsRequest < Struct.new(
      :hit_type_id,
      :notification,
      :active)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/UpdateNotificationSettingsResponse AWS API Documentation
    #
    class UpdateNotificationSettingsResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateQualificationTypeRequest
    #   data as a hash:
    #
    #       {
    #         qualification_type_id: "EntityId", # required
    #         description: "String",
    #         qualification_type_status: "Active", # accepts Active, Inactive
    #         test: "String",
    #         answer_key: "String",
    #         test_duration_in_seconds: 1,
    #         retry_delay_in_seconds: 1,
    #         auto_granted: false,
    #         auto_granted_value: 1,
    #       }
    #
    # @!attribute [rw] qualification_type_id
    #   The ID of the Qualification type to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description of the Qualification type.
    #   @return [String]
    #
    # @!attribute [rw] qualification_type_status
    #   The new status of the Qualification type - Active \| Inactive
    #   @return [String]
    #
    # @!attribute [rw] test
    #   The questions for the Qualification test a Worker must answer
    #   correctly to obtain a Qualification of this type. If this parameter
    #   is specified, `TestDurationInSeconds` must also be specified.
    #
    #   Constraints: Must not be longer than 65535 bytes. Must be a
    #   QuestionForm data structure. This parameter cannot be specified if
    #   AutoGranted is true.
    #
    #   Constraints: None. If not specified, the Worker may request the
    #   Qualification without answering any questions.
    #   @return [String]
    #
    # @!attribute [rw] answer_key
    #   The answers to the Qualification test specified in the Test
    #   parameter, in the form of an AnswerKey data structure.
    #   @return [String]
    #
    # @!attribute [rw] test_duration_in_seconds
    #   The number of seconds the Worker has to complete the Qualification
    #   test, starting from the time the Worker requests the Qualification.
    #   @return [Integer]
    #
    # @!attribute [rw] retry_delay_in_seconds
    #   The amount of time, in seconds, that Workers must wait after
    #   requesting a Qualification of the specified Qualification type
    #   before they can retry the Qualification request. It is not possible
    #   to disable retries for a Qualification type after it has been
    #   created with retries enabled. If you want to disable retries, you
    #   must dispose of the existing retry-enabled Qualification type using
    #   DisposeQualificationType and then create a new Qualification type
    #   with retries disabled using CreateQualificationType.
    #   @return [Integer]
    #
    # @!attribute [rw] auto_granted
    #   Specifies whether requests for the Qualification type are granted
    #   immediately, without prompting the Worker with a Qualification test.
    #
    #   Constraints: If the Test parameter is specified, this parameter
    #   cannot be true.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_granted_value
    #   The Qualification value to use for automatically granted
    #   Qualifications. This parameter is used only if the AutoGranted
    #   parameter is true.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/UpdateQualificationTypeRequest AWS API Documentation
    #
    class UpdateQualificationTypeRequest < Struct.new(
      :qualification_type_id,
      :description,
      :qualification_type_status,
      :test,
      :answer_key,
      :test_duration_in_seconds,
      :retry_delay_in_seconds,
      :auto_granted,
      :auto_granted_value)
      include Aws::Structure
    end

    # @!attribute [rw] qualification_type
    #   Contains a QualificationType data structure.
    #   @return [Types::QualificationType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/UpdateQualificationTypeResponse AWS API Documentation
    #
    class UpdateQualificationTypeResponse < Struct.new(
      :qualification_type)
      include Aws::Structure
    end

    # The WorkerBlock data structure represents a Worker who has been
    # blocked. It has two elements: the WorkerId and the Reason for the
    # block.
    #
    # @!attribute [rw] worker_id
    #   The ID of the Worker who accepted the HIT.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A message explaining the reason the Worker was blocked.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/WorkerBlock AWS API Documentation
    #
    class WorkerBlock < Struct.new(
      :worker_id,
      :reason)
      include Aws::Structure
    end

  end
end
