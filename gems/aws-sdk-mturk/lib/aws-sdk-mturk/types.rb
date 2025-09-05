# frozen_string_literal: true

# This is generated code!

module Aws::MTurk
  # This module contains the types returned by client operations.
  module Types

    # @!attribute qualification_request_id
    #   <p>The ID of the Qualification request, as returned by the <code>GetQualificationRequests</code> operation.</p>
    #   @return [String]
    # @!attribute integer_value
    #   <p>
    #               The value of the Qualification. You can omit this value if you are using the
    #               presence or absence of the Qualification as the basis for a HIT requirement.
    #           </p>
    #   @return [Integer]
    class AcceptQualificationRequestRequest < Struct.new(
      :qualification_request_id,
      :integer_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class AcceptQualificationRequestResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assignment_id
    #   <p>
    #               The ID of the assignment. The assignment must correspond to a HIT created by the Requester.
    #           </p>
    #   @return [String]
    # @!attribute requester_feedback
    #   <p>
    #               A message for the Worker, which the Worker can see in the Status section of the web site.
    #           </p>
    #   @return [String]
    # @!attribute override_rejection
    #   <p>
    #               A flag indicating that an assignment should be approved even if it was previously rejected. Defaults to <code>False</code>.
    #           </p>
    #   @return [Boolean]
    class ApproveAssignmentRequest < Struct.new(
      :assignment_id,
      :requester_feedback,
      :override_rejection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class ApproveAssignmentResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The Assignment data structure represents a single assignment
    #             of a HIT to a Worker. The assignment tracks the Worker's efforts to
    #             complete the HIT, and contains the results for later retrieval.
    #         </p>
    # @!attribute assignment_id
    #   <p> A unique identifier for the assignment.</p>
    #   @return [String]
    # @!attribute worker_id
    #   <p> The ID of the Worker who accepted the HIT.</p>
    #   @return [String]
    # @!attribute hit_id
    #   <p> The ID of the HIT.</p>
    #   @return [String]
    # @!attribute assignment_status
    #   <p> The status of the assignment.</p>
    #   @return [String]
    # @!attribute auto_approval_time
    #   <p> If results have been submitted, AutoApprovalTime is the date
    #               and time the results of the assignment results are considered
    #               Approved automatically if they have not already been explicitly
    #               approved or rejected by the Requester. This value is derived from the
    #               auto-approval delay specified by the Requester in the HIT. This value
    #               is omitted from the assignment if the Worker has not yet submitted
    #               results.</p>
    #   @return [Time]
    # @!attribute accept_time
    #   <p> The date and time the Worker accepted the assignment.</p>
    #   @return [Time]
    # @!attribute submit_time
    #   <p> If the Worker has submitted results, SubmitTime is the date
    #               and time the assignment was submitted. This value is omitted from the
    #               assignment if the Worker has not yet submitted results.</p>
    #   @return [Time]
    # @!attribute approval_time
    #   <p> If the Worker has submitted results and the Requester has
    #               approved the results, ApprovalTime is the date and time the Requester
    #               approved the results. This value is omitted from the assignment if
    #               the Requester has not yet approved the results.</p>
    #   @return [Time]
    # @!attribute rejection_time
    #   <p> If the Worker has submitted results and the Requester has
    #               rejected the results, RejectionTime is the date and time the
    #               Requester rejected the results.</p>
    #   @return [Time]
    # @!attribute deadline
    #   <p> The date and time of the deadline for the assignment. This
    #               value is derived from the deadline specification for the HIT and the
    #               date and time the Worker accepted the HIT.</p>
    #   @return [Time]
    # @!attribute answer
    #   <p> The Worker's answers submitted for the HIT contained in a
    #               QuestionFormAnswers document, if the Worker provides an answer. If
    #               the Worker does not provide any answers, Answer may contain a
    #               QuestionFormAnswers document, or Answer may be empty.</p>
    #   @return [String]
    # @!attribute requester_feedback
    #   <p> The feedback string included with the call to the
    #               ApproveAssignment operation or the RejectAssignment operation, if the
    #               Requester approved or rejected the assignment and specified feedback.</p>
    #   @return [String]
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
      :requester_feedback,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute qualification_type_id
    #   <p>The ID of the Qualification type to use for the assigned Qualification.</p>
    #   @return [String]
    # @!attribute worker_id
    #   <p>
    #               The ID of the Worker to whom the Qualification is being assigned.
    #               Worker IDs are included with submitted HIT assignments and Qualification requests.
    #           </p>
    #   @return [String]
    # @!attribute integer_value
    #   <p>The value of the Qualification to assign.</p>
    #   @return [Integer]
    # @!attribute send_notification
    #   <p>
    #               Specifies whether to send a notification email message to the Worker
    #               saying that the qualification was assigned to the Worker.
    #               Note: this is true by default.
    #           </p>
    #   @return [Boolean]
    class AssociateQualificationWithWorkerRequest < Struct.new(
      :qualification_type_id,
      :worker_id,
      :integer_value,
      :send_notification,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class AssociateQualificationWithWorkerResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing a Bonus payment paid to a Worker.</p>
    # @!attribute worker_id
    #   <p>The ID of the Worker to whom the bonus was paid.</p>
    #   @return [String]
    # @!attribute bonus_amount
    #   <p>A string representing a currency amount.</p>
    #   @return [String]
    # @!attribute assignment_id
    #   <p>The ID of the assignment associated with this bonus payment.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The Reason text given when the bonus was granted, if any.</p>
    #   @return [String]
    # @!attribute grant_time
    #   <p>The date and time of when the bonus was granted.</p>
    #   @return [Time]
    class BonusPayment < Struct.new(
      :worker_id,
      :bonus_amount,
      :assignment_id,
      :reason,
      :grant_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute hit_id
    #   <p>The ID of the HIT to extend.</p>
    #   @return [String]
    # @!attribute number_of_additional_assignments
    #   <p>The number of additional assignments to request for this HIT.</p>
    #   @return [Integer]
    # @!attribute unique_request_token
    #   <p>
    #               A unique identifier for this request, which allows you to retry the call on error
    #               without extending the HIT multiple times.
    #               This is useful in cases such as network timeouts where it is unclear whether or not
    #               the call succeeded on the server. If the extend HIT already exists in the system
    #               from a previous call using the same <code>UniqueRequestToken</code>,
    #               subsequent calls will return an error with a message containing the request ID.
    #           </p>
    #   @return [String]
    class CreateAdditionalAssignmentsForHITRequest < Struct.new(
      :hit_id,
      :number_of_additional_assignments,
      :unique_request_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class CreateAdditionalAssignmentsForHITResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_assignments
    #   <p>
    #               The number of times the HIT can be accepted and completed before the HIT becomes unavailable.
    #           </p>
    #   @return [Integer]
    # @!attribute auto_approval_delay_in_seconds
    #   <p>
    #               The number of seconds after an assignment for the HIT has been submitted,
    #               after which the assignment is considered Approved automatically
    #               unless the Requester explicitly rejects it.
    #           </p>
    #   @return [Integer]
    # @!attribute lifetime_in_seconds
    #   <p>
    #               An amount of time, in seconds, after which the HIT is no longer available for users to accept.
    #               After the lifetime of the HIT elapses, the HIT no longer appears in HIT searches,
    #               even if not all of the assignments for the HIT have been accepted.
    #           </p>
    #   @return [Integer]
    # @!attribute assignment_duration_in_seconds
    #   <p>
    #               The amount of time, in seconds, that a Worker has to complete the HIT after accepting it.
    #               If a Worker does not complete the assignment within the specified duration,
    #               the assignment is considered abandoned. If the HIT is still active
    #               (that is, its lifetime has not elapsed), the assignment becomes available
    #               for other users to find and accept.
    #           </p>
    #   @return [Integer]
    # @!attribute reward
    #   <p>
    #               The amount of money the Requester will pay a Worker for successfully completing the HIT.
    #           </p>
    #   @return [String]
    # @!attribute title
    #   <p>
    #               The title of the HIT. A title should be short and descriptive about the kind of task the HIT contains.
    #               On the Amazon Mechanical Turk web site, the HIT title appears in search results,
    #               and everywhere the HIT is mentioned.
    #           </p>
    #   @return [String]
    # @!attribute keywords
    #   <p>
    #               One or more words or phrases that describe the HIT, separated by commas.
    #               These words are used in searches to find HITs.
    #           </p>
    #   @return [String]
    # @!attribute description
    #   <p>
    #               A general description of the HIT. A description includes detailed information about the kind of task
    #               the HIT contains. On the Amazon Mechanical Turk web site, the HIT description appears in the expanded
    #               view of search results, and in the HIT and assignment screens. A good description gives the user enough
    #               information to evaluate the HIT before accepting it.
    #           </p>
    #   @return [String]
    # @!attribute question
    #   <p>
    #               The data the person completing the HIT uses to produce the results.
    #           </p>
    #           <p>
    #               Constraints: Must be a QuestionForm data structure, an ExternalQuestion data structure,
    #               or an HTMLQuestion data structure. The XML question data must not be larger than
    #               64 kilobytes (65,535 bytes) in size, including whitespace.
    #           </p>
    #           <p>Either a Question parameter or a HITLayoutId parameter must be provided.</p>
    #   @return [String]
    # @!attribute requester_annotation
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
    #   @return [String]
    # @!attribute qualification_requirements
    #   <p>
    #               Conditions that a Worker's Qualifications must meet in order
    #               to accept the HIT. A HIT can have between zero and ten
    #               Qualification requirements. All requirements must be met in
    #               order for a Worker to accept the HIT. Additionally, other
    #               actions can be restricted using the <code>ActionsGuarded</code>
    #               field on each <code>QualificationRequirement</code> structure.
    #           </p>
    #   @return [Array<Types::QualificationRequirement>]
    # @!attribute unique_request_token
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
    #   @return [String]
    # @!attribute assignment_review_policy
    #   <p>
    #               The Assignment-level Review Policy applies to the assignments under the HIT.
    #               You can specify for Mechanical Turk to take various actions based on the policy.
    #           </p>
    #   @return [Types::ReviewPolicy]
    # @!attribute hit_review_policy
    #   <p>
    #               The HIT-level Review Policy applies to the HIT.
    #               You can specify for Mechanical Turk to take various actions based on the policy.
    #           </p>
    #   @return [Types::ReviewPolicy]
    # @!attribute hit_layout_id
    #   <p>
    #               The HITLayoutId allows you to use a pre-existing HIT design with placeholder values
    #               and create an additional HIT by providing those values as HITLayoutParameters.
    #           </p>
    #           <p>
    #               Constraints: Either a Question parameter or a HITLayoutId parameter must be provided.
    #           </p>
    #   @return [String]
    # @!attribute hit_layout_parameters
    #   <p>
    #               If the HITLayoutId is provided, any placeholder values must be filled in with values
    #               using the HITLayoutParameter structure. For more information, see HITLayout.
    #           </p>
    #   @return [Array<Types::HITLayoutParameter>]
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
      :hit_layout_parameters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute hit
    #   <p> Contains the newly created HIT data. For a description of
    #               the HIT data structure as it appears in responses, see the HIT Data
    #               Structure documentation.
    #           </p>
    #   @return [Types::HIT]
    class CreateHITResponse < Struct.new(
      :hit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_approval_delay_in_seconds
    #   <p>
    #               The number of seconds after an assignment for the HIT has been submitted,
    #               after which the assignment is considered Approved automatically
    #               unless the Requester explicitly rejects it.
    #           </p>
    #   @return [Integer]
    # @!attribute assignment_duration_in_seconds
    #   <p>
    #               The amount of time, in seconds, that a Worker has to complete the HIT after accepting it.
    #               If a Worker does not complete the assignment within the specified duration,
    #               the assignment is considered abandoned. If the HIT is still active
    #               (that is, its lifetime has not elapsed), the assignment becomes available
    #               for other users to find and accept.
    #           </p>
    #   @return [Integer]
    # @!attribute reward
    #   <p>
    #               The amount of money the Requester will pay a Worker for successfully completing the HIT.
    #           </p>
    #   @return [String]
    # @!attribute title
    #   <p>
    #               The title of the HIT. A title should be short and descriptive about the kind of task the HIT contains.
    #               On the Amazon Mechanical Turk web site, the HIT title appears in search results,
    #               and everywhere the HIT is mentioned.
    #           </p>
    #   @return [String]
    # @!attribute keywords
    #   <p>
    #               One or more words or phrases that describe the HIT, separated by commas.
    #               These words are used in searches to find HITs.
    #           </p>
    #   @return [String]
    # @!attribute description
    #   <p>
    #               A general description of the HIT. A description includes detailed information about the kind of task
    #               the HIT contains. On the Amazon Mechanical Turk web site, the HIT description appears in the expanded
    #               view of search results, and in the HIT and assignment screens. A good description gives the user enough
    #               information to evaluate the HIT before accepting it.
    #           </p>
    #   @return [String]
    # @!attribute qualification_requirements
    #   <p>
    #               Conditions that a Worker's Qualifications must meet in order
    #               to accept the HIT. A HIT can have between zero and ten
    #               Qualification requirements. All requirements must be met in
    #               order for a Worker to accept the HIT. Additionally, other
    #               actions can be restricted using the <code>ActionsGuarded</code>
    #               field on each <code>QualificationRequirement</code> structure.
    #           </p>
    #   @return [Array<Types::QualificationRequirement>]
    class CreateHITTypeRequest < Struct.new(
      :auto_approval_delay_in_seconds,
      :assignment_duration_in_seconds,
      :reward,
      :title,
      :keywords,
      :description,
      :qualification_requirements,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute hit_type_id
    #   <p> The ID of the newly registered HIT type.</p>
    #   @return [String]
    class CreateHITTypeResponse < Struct.new(
      :hit_type_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute hit_type_id
    #   <p>The HIT type ID you want to create this HIT with.</p>
    #   @return [String]
    # @!attribute max_assignments
    #   <p>
    #               The number of times the HIT can be accepted and completed before the HIT becomes unavailable.
    #           </p>
    #   @return [Integer]
    # @!attribute lifetime_in_seconds
    #   <p>
    #               An amount of time, in seconds, after which the HIT is no longer available for users to accept.
    #               After the lifetime of the HIT elapses, the HIT no longer appears in HIT searches,
    #               even if not all of the assignments for the HIT have been accepted.
    #           </p>
    #   @return [Integer]
    # @!attribute question
    #   <p>
    #               The data the person completing the HIT uses to produce the results.
    #           </p>
    #           <p>
    #               Constraints: Must be a QuestionForm data structure, an ExternalQuestion data structure,
    #               or an HTMLQuestion data structure. The XML question data must not be larger than
    #               64 kilobytes (65,535 bytes) in size, including whitespace.
    #           </p>
    #           <p>Either a Question parameter or a HITLayoutId parameter must be provided.</p>
    #   @return [String]
    # @!attribute requester_annotation
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
    #   @return [String]
    # @!attribute unique_request_token
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
    #   @return [String]
    # @!attribute assignment_review_policy
    #   <p>
    #               The Assignment-level Review Policy applies to the assignments under the HIT.
    #               You can specify for Mechanical Turk to take various actions based on the policy.
    #           </p>
    #   @return [Types::ReviewPolicy]
    # @!attribute hit_review_policy
    #   <p>
    #               The HIT-level Review Policy applies to the HIT.
    #               You can specify for Mechanical Turk to take various actions based on the policy.
    #           </p>
    #   @return [Types::ReviewPolicy]
    # @!attribute hit_layout_id
    #   <p>
    #               The HITLayoutId allows you to use a pre-existing HIT design with placeholder values
    #               and create an additional HIT by providing those values as HITLayoutParameters.
    #           </p>
    #           <p>
    #               Constraints: Either a Question parameter or a HITLayoutId parameter must be provided.
    #           </p>
    #   @return [String]
    # @!attribute hit_layout_parameters
    #   <p>
    #               If the HITLayoutId is provided, any placeholder values must be filled in with values
    #               using the HITLayoutParameter structure. For more information, see HITLayout.
    #           </p>
    #   @return [Array<Types::HITLayoutParameter>]
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
      :hit_layout_parameters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute hit
    #   <p> Contains the newly created HIT data. For a description of
    #               the HIT data structure as it appears in responses, see the HIT Data
    #               Structure documentation.
    #           </p>
    #   @return [Types::HIT]
    class CreateHITWithHITTypeResponse < Struct.new(
      :hit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name you give to the Qualification type. The type name
    #               is used to represent the Qualification to Workers, and to find the
    #               type using a Qualification type search. It must be unique across all
    #               of your Qualification types.</p>
    #   @return [String]
    # @!attribute keywords
    #   <p>One or more words or phrases that describe the Qualification
    #               type, separated by commas. The keywords of a type make the type
    #               easier to find during a search.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A long description for the Qualification type. On the Amazon
    #               Mechanical Turk website, the long description is displayed when a
    #               Worker examines a Qualification type.</p>
    #   @return [String]
    # @!attribute qualification_type_status
    #   <p>The initial status of the Qualification type.</p>
    #           <p>Constraints: Valid values are: Active | Inactive</p>
    #   @return [String]
    # @!attribute retry_delay_in_seconds
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
    #   @return [Integer]
    # @!attribute test
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
    #   @return [String]
    # @!attribute answer_key
    #   <p>The answers to the Qualification test specified in the Test
    #               parameter, in the form of an AnswerKey data structure.</p>
    #           <p>Constraints: Must not be longer than 65535 bytes.</p>
    #           <p>Constraints: None. If not specified, you must process
    #               Qualification requests manually.</p>
    #   @return [String]
    # @!attribute test_duration_in_seconds
    #   <p>The number of seconds the Worker has to complete the
    #               Qualification test, starting from the time the Worker requests the
    #               Qualification.</p>
    #   @return [Integer]
    # @!attribute auto_granted
    #   <p>Specifies whether requests for the Qualification type are
    #               granted immediately, without prompting the Worker with a
    #               Qualification test.</p>
    #           <p>Constraints: If the Test parameter is specified, this
    #               parameter cannot be true.</p>
    #   @return [Boolean]
    # @!attribute auto_granted_value
    #   <p>The Qualification value to use for automatically granted
    #               Qualifications. This parameter is used only if the AutoGranted
    #               parameter is true.</p>
    #   @return [Integer]
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
      :auto_granted_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute qualification_type
    #   <p>The created Qualification type, returned as a
    #               QualificationType data structure.</p>
    #   @return [Types::QualificationType]
    class CreateQualificationTypeResponse < Struct.new(
      :qualification_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute worker_id
    #   <p>The ID of the Worker to block.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>A message explaining the reason for blocking the Worker. This parameter enables you to keep track of your Workers. The Worker does not see this message.</p>
    #   @return [String]
    class CreateWorkerBlockRequest < Struct.new(
      :worker_id,
      :reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class CreateWorkerBlockResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute hit_id
    #   <p>The ID of the HIT to be deleted.</p>
    #   @return [String]
    class DeleteHITRequest < Struct.new(
      :hit_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteHITResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute qualification_type_id
    #   <p>The ID of the QualificationType to dispose.</p>
    #   @return [String]
    class DeleteQualificationTypeRequest < Struct.new(
      :qualification_type_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteQualificationTypeResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute worker_id
    #   <p>The ID of the Worker to unblock.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>A message that explains the reason for unblocking the Worker. The Worker does not see this message.</p>
    #   @return [String]
    class DeleteWorkerBlockRequest < Struct.new(
      :worker_id,
      :reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteWorkerBlockResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute worker_id
    #   <p>The ID of the Worker who possesses the Qualification to be revoked.</p>
    #   @return [String]
    # @!attribute qualification_type_id
    #   <p>The ID of the Qualification type of the Qualification to be revoked.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>A text message that explains why the Qualification was revoked. The user who had the Qualification sees this message.</p>
    #   @return [String]
    class DisassociateQualificationFromWorkerRequest < Struct.new(
      :worker_id,
      :qualification_type_id,
      :reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisassociateQualificationFromWorkerResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class GetAccountBalanceRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute available_balance
    #   <p>A string representing a currency amount.</p>
    #   @return [String]
    # @!attribute on_hold_balance
    #   <p>A string representing a currency amount.</p>
    #   @return [String]
    class GetAccountBalanceResponse < Struct.new(
      :available_balance,
      :on_hold_balance,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assignment_id
    #   <p>The ID of the Assignment to be retrieved.</p>
    #   @return [String]
    class GetAssignmentRequest < Struct.new(
      :assignment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assignment
    #   <p> The assignment. The response includes one Assignment
    #               element.
    #           </p>
    #   @return [Types::Assignment]
    # @!attribute hit
    #   <p> The HIT associated with this assignment. The response
    #               includes one HIT element.</p>
    #   @return [Types::HIT]
    class GetAssignmentResponse < Struct.new(
      :assignment,
      :hit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assignment_id
    #   <p>The ID of the assignment that contains the question with a
    #               FileUploadAnswer.</p>
    #   @return [String]
    # @!attribute question_identifier
    #   <p>The identifier of the question with a FileUploadAnswer, as
    #               specified in the QuestionForm of the HIT.</p>
    #   @return [String]
    class GetFileUploadURLRequest < Struct.new(
      :assignment_id,
      :question_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_upload_url
    #   <p> A temporary URL for the file that the Worker uploaded for
    #               the answer.
    #           </p>
    #   @return [String]
    class GetFileUploadURLResponse < Struct.new(
      :file_upload_url,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute hit_id
    #   <p>The ID of the HIT to be retrieved.</p>
    #   @return [String]
    class GetHITRequest < Struct.new(
      :hit_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute hit
    #   <p> Contains the requested HIT data.</p>
    #   @return [Types::HIT]
    class GetHITResponse < Struct.new(
      :hit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute qualification_type_id
    #   <p>The ID of the QualificationType.</p>
    #   @return [String]
    # @!attribute worker_id
    #   <p>The ID of the Worker whose Qualification is being updated.</p>
    #   @return [String]
    class GetQualificationScoreRequest < Struct.new(
      :qualification_type_id,
      :worker_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute qualification
    #   <p> The Qualification data structure of the Qualification
    #               assigned to a user, including the Qualification type and the value
    #               (score).
    #           </p>
    #   @return [Types::Qualification]
    class GetQualificationScoreResponse < Struct.new(
      :qualification,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute qualification_type_id
    #   <p>The ID of the QualificationType.</p>
    #   @return [String]
    class GetQualificationTypeRequest < Struct.new(
      :qualification_type_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute qualification_type
    #   <p> The returned Qualification Type</p>
    #   @return [Types::QualificationType]
    class GetQualificationTypeResponse < Struct.new(
      :qualification_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The HIT data structure represents a single HIT, including
    #             all the information necessary for a Worker to accept and complete the
    #             HIT.</p>
    # @!attribute hit_id
    #   <p> A unique identifier for the HIT.</p>
    #   @return [String]
    # @!attribute hit_type_id
    #   <p>The ID of the HIT type of this HIT</p>
    #   @return [String]
    # @!attribute hit_group_id
    #   <p> The ID of the HIT Group of this HIT.</p>
    #   @return [String]
    # @!attribute hit_layout_id
    #   <p> The ID of the HIT Layout of this HIT.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p> The date and time the HIT was created.</p>
    #   @return [Time]
    # @!attribute title
    #   <p> The title of the HIT.</p>
    #   @return [String]
    # @!attribute description
    #   <p> A general description of the HIT.</p>
    #   @return [String]
    # @!attribute question
    #   <p> The data the Worker completing the HIT uses produce the
    #               results. This is either either a QuestionForm, HTMLQuestion or an
    #               ExternalQuestion data structure.</p>
    #   @return [String]
    # @!attribute keywords
    #   <p> One or more words or phrases that describe the HIT,
    #               separated by commas. Search terms similar to the keywords of a HIT
    #               are more likely to have the HIT in the search results.</p>
    #   @return [String]
    # @!attribute hit_status
    #   <p>The status of the HIT and its assignments. Valid Values are
    #               Assignable | Unassignable | Reviewable | Reviewing | Disposed.
    #           </p>
    #   @return [String]
    # @!attribute max_assignments
    #   <p>The number of times the HIT can be accepted and completed
    #               before the HIT becomes unavailable.
    #           </p>
    #   @return [Integer]
    # @!attribute reward
    #   <p>A string representing a currency amount.</p>
    #   @return [String]
    # @!attribute auto_approval_delay_in_seconds
    #   <p>The amount of time, in seconds, after the Worker submits an
    #               assignment for the HIT that the results are automatically approved by
    #               Amazon Mechanical Turk. This is the amount of time the Requester has
    #               to reject an assignment submitted by a Worker before the assignment
    #               is auto-approved and the Worker is paid.
    #           </p>
    #   @return [Integer]
    # @!attribute expiration
    #   <p>The date and time the HIT expires.</p>
    #   @return [Time]
    # @!attribute assignment_duration_in_seconds
    #   <p> The length of time, in seconds, that a Worker has to
    #               complete the HIT after accepting it.</p>
    #   @return [Integer]
    # @!attribute requester_annotation
    #   <p> An arbitrary data field the Requester who created the HIT
    #               can use. This field is visible only to the creator of the HIT.</p>
    #   @return [String]
    # @!attribute qualification_requirements
    #   <p>
    #               Conditions that a Worker's Qualifications must meet in order
    #               to accept the HIT. A HIT can have between zero and ten
    #               Qualification requirements. All requirements must be met in
    #               order for a Worker to accept the HIT. Additionally, other
    #               actions can be restricted using the <code>ActionsGuarded</code>
    #               field on each <code>QualificationRequirement</code> structure.
    #           </p>
    #   @return [Array<Types::QualificationRequirement>]
    # @!attribute hit_review_status
    #   <p> Indicates the review status of the HIT. Valid Values are
    #               NotReviewed | MarkedForReview | ReviewedAppropriate |
    #               ReviewedInappropriate.</p>
    #   @return [String]
    # @!attribute number_of_assignments_pending
    #   <p> The number of assignments for this HIT that are being
    #               previewed or have been accepted by Workers, but have not yet been
    #               submitted, returned, or abandoned.</p>
    #   @return [Integer]
    # @!attribute number_of_assignments_available
    #   <p> The number of assignments for this HIT that are available
    #               for Workers to accept.</p>
    #   @return [Integer]
    # @!attribute number_of_assignments_completed
    #   <p> The number of assignments for this HIT that have been
    #               approved or rejected.</p>
    #   @return [Integer]
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
      :number_of_assignments_completed,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The HITLayoutParameter data structure defines parameter
    #             values used with a HITLayout. A HITLayout is a reusable Amazon
    #             Mechanical Turk project template used to provide Human Intelligence
    #             Task (HIT) question data for CreateHIT.
    #         </p>
    # @!attribute name
    #   <p> The name of the parameter in the HITLayout.
    #           </p>
    #   @return [String]
    # @!attribute value
    #   <p>The value substituted for the parameter referenced in the
    #               HITLayout.
    #           </p>
    #   @return [String]
    class HITLayoutParameter < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute hit_id
    #   <p>The ID of the HIT.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Pagination token</p>
    #   @return [String]
    # @!attribute max_results
    #   @return [Integer]
    # @!attribute assignment_statuses
    #   <p>The status of the assignments to return: Submitted | Approved
    #               | Rejected</p>
    #   @return [Array<String>]
    class ListAssignmentsForHITRequest < Struct.new(
      :hit_id,
      :next_token,
      :max_results,
      :assignment_statuses,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve), Amazon Mechanical Turk
    #               returns a pagination token in the response. You can use this pagination token
    #               to retrieve the next set of results.
    #           </p>
    #   @return [String]
    # @!attribute num_results
    #   <p> The number of assignments on the page in the filtered
    #               results list, equivalent to the number of assignments returned by
    #               this call.</p>
    #   @return [Integer]
    # @!attribute assignments
    #   <p> The collection of Assignment data structures returned by
    #               this call.</p>
    #   @return [Array<Types::Assignment>]
    class ListAssignmentsForHITResponse < Struct.new(
      :next_token,
      :num_results,
      :assignments,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute hit_id
    #   <p>The ID of the HIT associated with the bonus payments to
    #               retrieve. If not specified, all bonus payments for all assignments
    #               for the given HIT are returned. Either the HITId parameter or the
    #               AssignmentId parameter must be specified</p>
    #   @return [String]
    # @!attribute assignment_id
    #   <p>The ID of the assignment associated with the bonus payments
    #               to retrieve. If specified, only bonus payments for the given
    #               assignment are returned. Either the HITId parameter or the
    #               AssignmentId parameter must be specified</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Pagination token</p>
    #   @return [String]
    # @!attribute max_results
    #   @return [Integer]
    class ListBonusPaymentsRequest < Struct.new(
      :hit_id,
      :assignment_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute num_results
    #   <p>The number of bonus payments on this page in the filtered
    #               results list, equivalent to the number of bonus payments being
    #               returned by this call.
    #           </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve), Amazon Mechanical Turk
    #               returns a pagination token in the response. You can use this pagination token
    #               to retrieve the next set of results.
    #           </p>
    #   @return [String]
    # @!attribute bonus_payments
    #   <p>A successful request to the ListBonusPayments operation
    #               returns a list of BonusPayment objects.
    #           </p>
    #   @return [Array<Types::BonusPayment>]
    class ListBonusPaymentsResponse < Struct.new(
      :num_results,
      :next_token,
      :bonus_payments,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute qualification_type_id
    #   <p>
    #               The ID of the Qualification type to use when querying HITs.
    #           </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Pagination Token</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #               Limit the number of results returned.
    #           </p>
    #   @return [Integer]
    class ListHITsForQualificationTypeRequest < Struct.new(
      :qualification_type_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve), Amazon Mechanical Turk
    #               returns a pagination token in the response. You can use this pagination token
    #               to retrieve the next set of results.
    #           </p>
    #   @return [String]
    # @!attribute num_results
    #   <p> The number of HITs on this page in the filtered results
    #               list, equivalent to the number of HITs being returned by this call.	</p>
    #   @return [Integer]
    # @!attribute hi_ts
    #   <p> The list of HIT elements returned by the query.</p>
    #   @return [Array<Types::HIT>]
    class ListHITsForQualificationTypeResponse < Struct.new(
      :next_token,
      :num_results,
      :hi_ts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Pagination token</p>
    #   @return [String]
    # @!attribute max_results
    #   @return [Integer]
    class ListHITsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve), Amazon Mechanical Turk
    #               returns a pagination token in the response. You can use this pagination token
    #               to retrieve the next set of results.
    #           </p>
    #   @return [String]
    # @!attribute num_results
    #   <p>The number of HITs on this page in the filtered results list,
    #               equivalent to the number of HITs being returned by this call.</p>
    #   @return [Integer]
    # @!attribute hi_ts
    #   <p> The list of HIT elements returned by the query.</p>
    #   @return [Array<Types::HIT>]
    class ListHITsResponse < Struct.new(
      :next_token,
      :num_results,
      :hi_ts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute qualification_type_id
    #   <p>The ID of the QualificationType.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve), Amazon Mechanical Turk
    #               returns a pagination token in the response. You can use this pagination token
    #               to retrieve the next set of results.
    #           </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of results to return in a single call.
    #           </p>
    #   @return [Integer]
    class ListQualificationRequestsRequest < Struct.new(
      :qualification_type_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute num_results
    #   <p>The number of Qualification requests on this page in the filtered results list,
    #               equivalent to the number of Qualification requests being returned by this call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve), Amazon Mechanical Turk
    #               returns a pagination token in the response. You can use this pagination token
    #               to retrieve the next set of results.
    #           </p>
    #   @return [String]
    # @!attribute qualification_requests
    #   <p>The Qualification request. The response includes one
    #               QualificationRequest element
    #               for each Qualification request returned
    #               by the query.</p>
    #   @return [Array<Types::QualificationRequest>]
    class ListQualificationRequestsResponse < Struct.new(
      :num_results,
      :next_token,
      :qualification_requests,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute query
    #   <p> A text query against all of the searchable attributes of
    #               Qualification types.
    #           </p>
    #   @return [String]
    # @!attribute must_be_requestable
    #   <p>Specifies that only Qualification types that a user can
    #               request through the Amazon Mechanical Turk web site, such as by
    #               taking a Qualification test, are returned as results of the search.
    #               Some Qualification types, such as those assigned automatically by the
    #               system, cannot be requested directly by users. If false, all
    #               Qualification types, including those managed by the system, are
    #               considered. Valid values are True | False.
    #           </p>
    #   @return [Boolean]
    # @!attribute must_be_owned_by_caller
    #   <p> Specifies that only Qualification types that the Requester
    #               created are returned. If false, the operation returns all
    #               Qualification types.
    #           </p>
    #   @return [Boolean]
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve), Amazon Mechanical Turk
    #               returns a pagination token in the response. You can use this pagination token
    #               to retrieve the next set of results.
    #           </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of results to return in a single call.
    #           </p>
    #   @return [Integer]
    class ListQualificationTypesRequest < Struct.new(
      :query,
      :must_be_requestable,
      :must_be_owned_by_caller,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute num_results
    #   <p> The number of Qualification types on this page in the
    #               filtered results list, equivalent to the number of types this
    #               operation returns.
    #           </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve), Amazon Mechanical Turk
    #               returns a pagination token in the response. You can use this pagination token
    #               to retrieve the next set of results.
    #           </p>
    #   @return [String]
    # @!attribute qualification_types
    #   <p> The list of QualificationType elements returned by the
    #               query.
    #           </p>
    #   @return [Array<Types::QualificationType>]
    class ListQualificationTypesResponse < Struct.new(
      :num_results,
      :next_token,
      :qualification_types,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute hit_id
    #   <p>The unique identifier of the HIT to retrieve review results for.</p>
    #   @return [String]
    # @!attribute policy_levels
    #   <p>
    #               The Policy Level(s) to retrieve review results for - HIT or Assignment.
    #               If omitted, the default behavior is to retrieve all data for both policy levels.
    #               For a list of all the described policies, see Review Policies.
    #           </p>
    #   @return [Array<String>]
    # @!attribute retrieve_actions
    #   <p>
    #               Specify if the operation should retrieve a list of the actions taken executing
    #               the Review Policies and their outcomes.
    #           </p>
    #   @return [Boolean]
    # @!attribute retrieve_results
    #   <p>
    #               Specify if the operation should retrieve a list of the results computed by the Review Policies.
    #           </p>
    #   @return [Boolean]
    # @!attribute next_token
    #   <p>Pagination token</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Limit the number of results returned.</p>
    #   @return [Integer]
    class ListReviewPolicyResultsForHITRequest < Struct.new(
      :hit_id,
      :policy_levels,
      :retrieve_actions,
      :retrieve_results,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute hit_id
    #   <p>The HITId of the HIT for which results have been returned.</p>
    #   @return [String]
    # @!attribute assignment_review_policy
    #   <p> The name of the Assignment-level Review Policy. This
    #               contains only the PolicyName element.
    #           </p>
    #   @return [Types::ReviewPolicy]
    # @!attribute hit_review_policy
    #   <p>The name of the HIT-level Review Policy. This contains only
    #               the PolicyName element.</p>
    #   @return [Types::ReviewPolicy]
    # @!attribute assignment_review_report
    #   <p> Contains both ReviewResult and ReviewAction elements for an
    #               Assignment.
    #           </p>
    #   @return [Types::ReviewReport]
    # @!attribute hit_review_report
    #   <p>Contains both ReviewResult and ReviewAction elements for a particular HIT.
    #           </p>
    #   @return [Types::ReviewReport]
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve), Amazon Mechanical Turk
    #               returns a pagination token in the response. You can use this pagination token
    #               to retrieve the next set of results.
    #           </p>
    #   @return [String]
    class ListReviewPolicyResultsForHITResponse < Struct.new(
      :hit_id,
      :assignment_review_policy,
      :hit_review_policy,
      :assignment_review_report,
      :hit_review_report,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute hit_type_id
    #   <p>
    #               The ID of the HIT type of the HITs to consider for the query.
    #               If not specified, all HITs for the Reviewer are considered
    #           </p>
    #   @return [String]
    # @!attribute status
    #   <p>
    #               Can be either <code>Reviewable</code> or <code>Reviewing</code>.
    #               Reviewable is the default value.
    #           </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Pagination Token</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #               Limit the number of results returned.
    #           </p>
    #   @return [Integer]
    class ListReviewableHITsRequest < Struct.new(
      :hit_type_id,
      :status,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve), Amazon Mechanical Turk
    #               returns a pagination token in the response. You can use this pagination token
    #               to retrieve the next set of results.
    #           </p>
    #   @return [String]
    # @!attribute num_results
    #   <p> The number of HITs on this page in the filtered results
    #               list, equivalent to the number of HITs being returned by this call.
    #           </p>
    #   @return [Integer]
    # @!attribute hi_ts
    #   <p> The list of HIT elements returned by the query.</p>
    #   @return [Array<Types::HIT>]
    class ListReviewableHITsResponse < Struct.new(
      :next_token,
      :num_results,
      :hi_ts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Pagination token</p>
    #   @return [String]
    # @!attribute max_results
    #   @return [Integer]
    class ListWorkerBlocksRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve), Amazon Mechanical Turk
    #               returns a pagination token in the response. You can use this pagination token
    #               to retrieve the next set of results.
    #           </p>
    #   @return [String]
    # @!attribute num_results
    #   <p> The number of assignments on the page in the filtered
    #               results list, equivalent to the number of assignments returned by
    #               this call.</p>
    #   @return [Integer]
    # @!attribute worker_blocks
    #   <p> The list of WorkerBlocks, containing the collection of
    #               Worker IDs and reasons for blocking.</p>
    #   @return [Array<Types::WorkerBlock>]
    class ListWorkerBlocksResponse < Struct.new(
      :next_token,
      :num_results,
      :worker_blocks,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute qualification_type_id
    #   <p>The ID of the Qualification type of the Qualifications to
    #               return.</p>
    #   @return [String]
    # @!attribute status
    #   <p>
    #               The status of the Qualifications to return.
    #               Can be <code>Granted | Revoked</code>.
    #           </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Pagination Token</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #               Limit the number of results returned.
    #           </p>
    #   @return [Integer]
    class ListWorkersWithQualificationTypeRequest < Struct.new(
      :qualification_type_id,
      :status,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve), Amazon Mechanical Turk
    #               returns a pagination token in the response. You can use this pagination token
    #               to retrieve the next set of results.
    #           </p>
    #   @return [String]
    # @!attribute num_results
    #   <p> The number of Qualifications on this page in the filtered
    #               results list, equivalent to the number of Qualifications being
    #               returned by this call.</p>
    #   @return [Integer]
    # @!attribute qualifications
    #   <p> The list of Qualification elements returned by this call.
    #           </p>
    #   @return [Array<Types::Qualification>]
    class ListWorkersWithQualificationTypeResponse < Struct.new(
      :next_token,
      :num_results,
      :qualifications,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Locale data structure represents a geographical region or location.</p>
    # @!attribute country
    #   <p> The country of the locale. Must be a valid ISO 3166 country
    #               code. For example, the code US refers to the United States of
    #               America.
    #           </p>
    #   @return [String]
    # @!attribute subdivision
    #   <p>The state or subdivision of the locale. A valid ISO 3166-2
    #               subdivision code. For example, the code WA refers to the state of
    #               Washington.</p>
    #   @return [String]
    class Locale < Struct.new(
      :country,
      :subdivision,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The NotificationSpecification data structure describes a HIT
    #             event notification for a HIT type.</p>
    # @!attribute destination
    #   <p>
    #               The target for notification messages. The Destination’s format is determined by the specified Transport:
    #           </p>
    #           <ul>
    #               <li>
    #                   <p>When Transport is Email, the Destination is your email address.</p>
    #               </li>
    #               <li>
    #                   <p>When Transport is SQS, the Destination is your queue URL.</p>
    #               </li>
    #               <li>
    #                   <p>When Transport is SNS, the Destination is the ARN of your topic.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute transport
    #   <p> The method Amazon Mechanical Turk uses to send the
    #               notification. Valid Values: Email | SQS | SNS.
    #           </p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the Notification API to use. Valid value is
    #               2006-05-05.</p>
    #   @return [String]
    # @!attribute event_types
    #   <p> The list of events that should cause notifications to be
    #               sent. Valid Values: AssignmentAccepted | AssignmentAbandoned |
    #               AssignmentReturned | AssignmentSubmitted | AssignmentRejected |
    #               AssignmentApproved | HITCreated | HITExtended | HITDisposed |
    #               HITReviewable | HITExpired | Ping. The Ping event is only valid for
    #               the SendTestEventNotification operation.
    #           </p>
    #   @return [Array<String>]
    class NotificationSpecification < Struct.new(
      :destination,
      :transport,
      :version,
      :event_types,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> When MTurk encounters an issue with notifying the Workers
    #             you specified, it returns back this object with failure details.
    #         </p>
    # @!attribute notify_workers_failure_code
    #   <p> Encoded value for the failure type.
    #           </p>
    #   @return [String]
    # @!attribute notify_workers_failure_message
    #   <p> A message detailing the reason the Worker could not be
    #               notified.
    #           </p>
    #   @return [String]
    # @!attribute worker_id
    #   <p> The ID of the Worker.</p>
    #   @return [String]
    class NotifyWorkersFailureStatus < Struct.new(
      :notify_workers_failure_code,
      :notify_workers_failure_message,
      :worker_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute subject
    #   <p>The subject line of the email message to send. Can include up
    #               to 200 characters.</p>
    #   @return [String]
    # @!attribute message_text
    #   <p>The text of the email message to send. Can include up to
    #               4,096 characters</p>
    #   @return [String]
    # @!attribute worker_ids
    #   <p>A list of Worker IDs you wish to notify. You
    #               can notify upto
    #               100 Workers at a time.</p>
    #   @return [Array<String>]
    class NotifyWorkersRequest < Struct.new(
      :subject,
      :message_text,
      :worker_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute notify_workers_failure_statuses
    #   <p> When MTurk sends notifications to the list of Workers, it
    #               returns back any failures it encounters in this list of
    #               NotifyWorkersFailureStatus objects.
    #           </p>
    #   @return [Array<Types::NotifyWorkersFailureStatus>]
    class NotifyWorkersResponse < Struct.new(
      :notify_workers_failure_statuses,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> This data structure is the data type for the AnswerKey
    #             parameter of the ScoreMyKnownAnswers/2011-09-01 Review Policy.
    #         </p>
    # @!attribute key
    #   <p> The QuestionID from the HIT that is used to identify which
    #               question requires Mechanical Turk to score as part of the
    #               ScoreMyKnownAnswers/2011-09-01 Review Policy.
    #           </p>
    #   @return [String]
    # @!attribute values
    #   <p> The list of answers to the question specified in the
    #               MapEntry Key element. The Worker must match all values in order for
    #               the answer to be scored correctly.
    #           </p>
    #   @return [Array<String>]
    class ParameterMapEntry < Struct.new(
      :key,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> Name of the parameter from the Review policy.
    #         </p>
    # @!attribute key
    #   <p> Name of the parameter from the list of Review Polices.
    #           </p>
    #   @return [String]
    # @!attribute values
    #   <p> The list of values of the Parameter</p>
    #   @return [Array<String>]
    # @!attribute map_entries
    #   <p> List of ParameterMapEntry objects.
    #           </p>
    #   @return [Array<Types::ParameterMapEntry>]
    class PolicyParameter < Struct.new(
      :key,
      :values,
      :map_entries,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Qualification data structure represents a Qualification
    #             assigned to a user, including the Qualification type and the value
    #             (score).</p>
    # @!attribute qualification_type_id
    #   <p> The ID of the Qualification type for the Qualification.</p>
    #   @return [String]
    # @!attribute worker_id
    #   <p> The ID of the Worker who possesses the Qualification.
    #           </p>
    #   @return [String]
    # @!attribute grant_time
    #   <p> The date and time the Qualification was granted to the
    #               Worker. If the Worker's Qualification was revoked, and then
    #               re-granted based on a new Qualification request, GrantTime is the
    #               date and time of the last call to the AcceptQualificationRequest
    #               operation.</p>
    #   @return [Time]
    # @!attribute integer_value
    #   <p> The value (score) of the Qualification, if the Qualification
    #               has an integer value.</p>
    #   @return [Integer]
    # @!attribute locale_value
    #   <p>The Locale data structure represents a geographical region or location.</p>
    #   @return [Types::Locale]
    # @!attribute status
    #   <p> The status of the Qualification. Valid values are Granted |
    #               Revoked.</p>
    #   @return [String]
    class Qualification < Struct.new(
      :qualification_type_id,
      :worker_id,
      :grant_time,
      :integer_value,
      :locale_value,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The QualificationRequest data structure represents a request
    #             a Worker has made for a Qualification.
    #         </p>
    # @!attribute qualification_request_id
    #   <p>The ID of the Qualification request, a unique identifier
    #               generated when the request was submitted.
    #   
    #           </p>
    #   @return [String]
    # @!attribute qualification_type_id
    #   <p> The ID of the Qualification type the Worker is requesting,
    #               as returned by the CreateQualificationType operation.
    #           </p>
    #   @return [String]
    # @!attribute worker_id
    #   <p> The ID of the Worker requesting the Qualification.</p>
    #   @return [String]
    # @!attribute test
    #   <p> The contents of the Qualification test that was presented to
    #               the Worker, if the type has a test and the Worker has submitted
    #               answers. This value is identical to the QuestionForm associated with
    #               the Qualification type at the time the Worker requests the
    #               Qualification.</p>
    #   @return [String]
    # @!attribute answer
    #   <p> The Worker's answers for the Qualification type's test
    #               contained in a QuestionFormAnswers document, if the type has a test
    #               and the Worker has submitted answers. If the Worker does not provide
    #               any answers, Answer may be empty.
    #           </p>
    #   @return [String]
    # @!attribute submit_time
    #   <p>The date and time the Qualification request had a status of
    #               Submitted. This is either the time the Worker submitted answers for a
    #               Qualification test, or the time the Worker requested the
    #               Qualification if the Qualification type does not have a test.
    #           </p>
    #   @return [Time]
    class QualificationRequest < Struct.new(
      :qualification_request_id,
      :qualification_type_id,
      :worker_id,
      :test,
      :answer,
      :submit_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The QualificationRequirement data structure describes a Qualification that a Worker must have
    #             before the Worker is allowed to accept a HIT.
    #             A requirement may optionally state that a Worker must have the Qualification in order to preview the HIT, or
    #             see the HIT in search results.
    #         </p>
    # @!attribute qualification_type_id
    #   <p> The ID of the Qualification type for the requirement.</p>
    #   @return [String]
    # @!attribute comparator
    #   <p>The kind of comparison to make against a Qualification's
    #               value. You can compare a Qualification's value to an IntegerValue to
    #               see if it is LessThan, LessThanOrEqualTo, GreaterThan,
    #               GreaterThanOrEqualTo, EqualTo, or NotEqualTo the IntegerValue. You
    #               can compare it to a LocaleValue to see if it is EqualTo, or
    #               NotEqualTo the LocaleValue. You can check to see if the value is In
    #               or NotIn a set of IntegerValue
    #               or LocaleValue values. Lastly, a
    #               Qualification requirement can also
    #               test if a Qualification Exists or
    #               DoesNotExist in the user's profile,
    #               regardless of its value.
    #           </p>
    #   @return [String]
    # @!attribute integer_values
    #   <p> The integer value to compare against the Qualification's
    #               value. IntegerValue must not be present if Comparator is Exists or
    #               DoesNotExist. IntegerValue can only be used if the Qualification type
    #               has an integer value; it cannot be used with the Worker_Locale
    #               QualificationType ID. When performing a set comparison by using the
    #               In or the NotIn comparator, you can use up to 15 IntegerValue
    #               elements in a QualificationRequirement data structure.
    #           </p>
    #   @return [Array<Integer>]
    # @!attribute locale_values
    #   <p> The locale value to compare against the Qualification's
    #               value. The local value must be a valid ISO 3166 country code or
    #               supports ISO 3166-2 subdivisions. LocaleValue can only be used with a
    #               Worker_Locale QualificationType ID. LocaleValue can only be used with
    #               the EqualTo, NotEqualTo, In, and NotIn comparators. You must only use
    #               a single LocaleValue element when using the EqualTo or NotEqualTo
    #               comparators. When performing a set comparison by using the In or the
    #               NotIn comparator, you can use up to 30 LocaleValue elements in a
    #               QualificationRequirement data structure.
    #           </p>
    #   @return [Array<Types::Locale>]
    # @!attribute required_to_preview
    #   <p> DEPRECATED: Use the <code>ActionsGuarded</code> field instead.
    #               If RequiredToPreview is true, the question data for the HIT will not be shown
    #               when a Worker whose Qualifications do not meet this requirement tries
    #               to preview the HIT. That is, a Worker's Qualifications must meet all
    #               of the requirements for which RequiredToPreview is true in order to
    #               preview the HIT. If a Worker meets all of the requirements where
    #               RequiredToPreview is true (or if there are no such requirements), but
    #               does not meet all of the requirements for the HIT, the Worker will be
    #               allowed to preview the HIT's question data, but will not be allowed
    #               to accept and complete the HIT. The default is false. This should not
    #               be used in combination with the <code>ActionsGuarded</code> field.
    #           </p>
    #   @deprecated
    #   @return [Boolean]
    # @!attribute actions_guarded
    #   <p> Setting this attribute prevents Workers whose Qualifications do not meet
    #               this QualificationRequirement from taking the specified action. Valid arguments include
    #               "Accept" (Worker cannot accept the HIT, but can preview the HIT and see it in their search results),
    #               "PreviewAndAccept" (Worker cannot accept or preview the HIT, but can see the HIT in their search results),
    #               and "DiscoverPreviewAndAccept" (Worker cannot accept, preview, or see the HIT in their search results). It's possible for you to create a HIT with multiple
    #               QualificationRequirements (which can have different values for the ActionGuarded attribute). In this case,
    #               the Worker is only permitted to perform an action when they have met all QualificationRequirements guarding
    #               the action. The actions in the order of least restrictive to most restrictive are Discover, Preview and Accept.
    #               For example, if a Worker meets all QualificationRequirements that are set to DiscoverPreviewAndAccept, but do
    #               not meet all requirements that are set with PreviewAndAccept, then the Worker will be able to Discover, i.e. see the
    #               HIT in their search result, but will not be able to Preview or Accept the HIT. ActionsGuarded should not be used in combination with the
    #               <code>RequiredToPreview</code> field.
    #           </p>
    #   @return [String]
    class QualificationRequirement < Struct.new(
      :qualification_type_id,
      :comparator,
      :integer_values,
      :locale_values,
      :required_to_preview,
      :actions_guarded,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The QualificationType data structure represents a
    #             Qualification type, a description of a property of a Worker that must
    #             match the requirements of a HIT for the Worker to be able to accept
    #             the HIT. The type also describes how a Worker can obtain a
    #             Qualification of that type, such as through a Qualification test.
    #         </p>
    # @!attribute qualification_type_id
    #   <p> A unique identifier for the Qualification type. A
    #               Qualification type is given a Qualification type ID when you call the
    #               CreateQualificationType operation.
    #           </p>
    #   @return [String]
    # @!attribute creation_time
    #   <p> The date and time the Qualification type was created.
    #           </p>
    #   @return [Time]
    # @!attribute name
    #   <p> The name of the Qualification type. The type name is used to
    #               identify the type, and to find the type using a Qualification type
    #               search.
    #           </p>
    #   @return [String]
    # @!attribute description
    #   <p> A long description for the Qualification type.
    #           </p>
    #   @return [String]
    # @!attribute keywords
    #   <p> One or more words or phrases that describe theQualification
    #               type, separated by commas. The Keywords make the type easier to find
    #               using a search.
    #           </p>
    #   @return [String]
    # @!attribute qualification_type_status
    #   <p> The status of the Qualification type. A Qualification type's
    #               status determines if users can apply to receive a Qualification of
    #               this type, and if HITs can be created with requirements based on this
    #               type. Valid values are Active | Inactive.
    #           </p>
    #   @return [String]
    # @!attribute test
    #   <p> The questions for a Qualification test associated with this
    #               Qualification type that a user can take to obtain a Qualification of
    #               this type. This parameter must be specified if AnswerKey is present.
    #               A Qualification type cannot have both a specified Test parameter and
    #               an AutoGranted value of true.
    #           </p>
    #   @return [String]
    # @!attribute test_duration_in_seconds
    #   <p> The amount of time, in seconds, given to a Worker to
    #               complete the Qualification test, beginning from the time the Worker
    #               requests the Qualification.
    #           </p>
    #   @return [Integer]
    # @!attribute answer_key
    #   <p>The answers to the Qualification test specified in the Test
    #               parameter.</p>
    #   @return [String]
    # @!attribute retry_delay_in_seconds
    #   <p> The amount of time, in seconds, Workers must wait after
    #               taking the Qualification test before they can take it again. Workers
    #               can take a Qualification test multiple times if they were not granted
    #               the Qualification from a previous attempt, or if the test offers a
    #               gradient score and they want a better score. If not specified,
    #               retries are disabled and Workers can request a Qualification only
    #               once.
    #           </p>
    #   @return [Integer]
    # @!attribute is_requestable
    #   <p> Specifies whether the Qualification type is one that a user
    #               can request through the Amazon Mechanical Turk web site, such as by
    #               taking a Qualification test. This value is False for Qualifications
    #               assigned automatically by the system. Valid values are True | False.
    #           </p>
    #   @return [Boolean]
    # @!attribute auto_granted
    #   <p>Specifies that requests for the Qualification type are
    #               granted immediately, without prompting the Worker with a
    #               Qualification test. Valid values are True | False.</p>
    #   @return [Boolean]
    # @!attribute auto_granted_value
    #   <p> The Qualification integer value to use for automatically
    #               granted Qualifications, if AutoGranted is true. This is 1 by default.
    #           </p>
    #   @return [Integer]
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
      :auto_granted_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute assignment_id
    #   <p>
    #               The ID of the assignment. The assignment must correspond to a HIT created by the Requester.
    #           </p>
    #   @return [String]
    # @!attribute requester_feedback
    #   <p>
    #               A message for the Worker, which the Worker can see in the Status section of the web site.
    #           </p>
    #   @return [String]
    class RejectAssignmentRequest < Struct.new(
      :assignment_id,
      :requester_feedback,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class RejectAssignmentResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute qualification_request_id
    #   <p>
    #               The ID of the Qualification request, as returned by the
    #               <code>ListQualificationRequests</code>
    #               operation.
    #           </p>
    #   @return [String]
    # @!attribute reason
    #   <p>A text message explaining why the request was rejected, to be
    #               shown to the Worker who made the request.</p>
    #   @return [String]
    class RejectQualificationRequestRequest < Struct.new(
      :qualification_request_id,
      :reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class RejectQualificationRequestResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Your request is invalid.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute turk_error_code
    #   @return [String]
    class RequestError < Struct.new(
      :message,
      :turk_error_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> Both the AssignmentReviewReport and the HITReviewReport
    #             elements contains the ReviewActionDetail data structure. This
    #             structure is returned multiple times for each action specified in the
    #             Review Policy.
    #         </p>
    # @!attribute action_id
    #   <p>The unique identifier for the action.</p>
    #   @return [String]
    # @!attribute action_name
    #   <p> The nature of the action itself. The Review Policy is
    #               responsible for examining the HIT and Assignments, emitting results,
    #               and deciding which other actions will be necessary. </p>
    #   @return [String]
    # @!attribute target_id
    #   <p> The specific HITId or AssignmentID targeted by the action.</p>
    #   @return [String]
    # @!attribute target_type
    #   <p> The type of object in TargetId.</p>
    #   @return [String]
    # @!attribute status
    #   <p> The current disposition of the action: INTENDED, SUCCEEDED,
    #               FAILED, or CANCELLED.
    #           </p>
    #   @return [String]
    # @!attribute complete_time
    #   <p> The date when the action was completed.</p>
    #   @return [Time]
    # @!attribute result
    #   <p> A description of the outcome of the review.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p> Present only when the Results have a FAILED Status.</p>
    #   @return [String]
    class ReviewActionDetail < Struct.new(
      :action_id,
      :action_name,
      :target_id,
      :target_type,
      :status,
      :complete_time,
      :result,
      :error_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> HIT Review Policy data structures represent HIT review
    #             policies, which you specify when you create a HIT.
    #         </p>
    # @!attribute policy_name
    #   <p> Name of a Review Policy: SimplePlurality/2011-09-01 or
    #               ScoreMyKnownAnswers/2011-09-01
    #           </p>
    #   @return [String]
    # @!attribute parameters
    #   <p>Name of the parameter from the Review policy.</p>
    #   @return [Array<Types::PolicyParameter>]
    class ReviewPolicy < Struct.new(
      :policy_name,
      :parameters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> Contains both ReviewResult and ReviewAction elements for a
    #             particular HIT.
    #         </p>
    # @!attribute review_results
    #   <p> A list of ReviewResults objects for each action specified in
    #               the Review Policy.
    #           </p>
    #   @return [Array<Types::ReviewResultDetail>]
    # @!attribute review_actions
    #   <p> A list of ReviewAction objects for each action specified in
    #               the Review Policy.
    #           </p>
    #   @return [Array<Types::ReviewActionDetail>]
    class ReviewReport < Struct.new(
      :review_results,
      :review_actions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> This data structure is returned multiple times for each
    #             result specified in the Review Policy.
    #         </p>
    # @!attribute action_id
    #   <p> A unique identifier of the Review action result.
    #           </p>
    #   @return [String]
    # @!attribute subject_id
    #   <p>The HITID or AssignmentId about which this result was taken.
    #               Note that HIT-level Review Policies will often emit results about
    #               both the HIT itself and its Assignments, while Assignment-level
    #               review policies generally only emit results about the Assignment
    #               itself.
    #           </p>
    #   @return [String]
    # @!attribute subject_type
    #   <p> The type of the object from the SubjectId field.</p>
    #   @return [String]
    # @!attribute question_id
    #   <p> Specifies the QuestionId the result is describing. Depending
    #               on whether the TargetType is a HIT or Assignment this results could
    #               specify multiple values. If TargetType is HIT and QuestionId is
    #               absent, then the result describes results of the HIT, including the
    #               HIT agreement score. If ObjectType is Assignment and QuestionId is
    #               absent, then the result describes the Worker's performance on the
    #               HIT.
    #           </p>
    #   @return [String]
    # @!attribute key
    #   <p> Key identifies the particular piece of reviewed information.
    #           </p>
    #   @return [String]
    # @!attribute value
    #   <p> The values of Key provided by the review policies you have
    #               selected.
    #           </p>
    #   @return [String]
    class ReviewResultDetail < Struct.new(
      :action_id,
      :subject_id,
      :subject_type,
      :question_id,
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute worker_id
    #   <p>The ID of the Worker being paid the bonus.</p>
    #   @return [String]
    # @!attribute bonus_amount
    #   <p>
    #               The Bonus amount is a US Dollar amount specified using a string (for example, "5" represents $5.00 USD and
    #               "101.42" represents $101.42 USD). Do not include currency symbols or currency codes.
    #           </p>
    #   @return [String]
    # @!attribute assignment_id
    #   <p>The ID of the assignment for which this bonus is paid.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>A message that explains the reason for the bonus payment. The
    #               Worker receiving the bonus can see this message.</p>
    #   @return [String]
    # @!attribute unique_request_token
    #   <p>A unique identifier for this request, which allows you to
    #               retry the call on error without granting multiple bonuses. This is
    #               useful in cases such as network timeouts where it is unclear whether
    #               or not the call succeeded on the server. If the bonus already exists
    #               in the system from a previous call using the same UniqueRequestToken,
    #               subsequent calls will return an error with a message containing the
    #               request ID.</p>
    #   @return [String]
    class SendBonusRequest < Struct.new(
      :worker_id,
      :bonus_amount,
      :assignment_id,
      :reason,
      :unique_request_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class SendBonusResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute notification
    #   <p>
    #               The notification specification to test. This value is identical to the value
    #               you would provide to the UpdateNotificationSettings operation when you establish
    #               the notification specification for a HIT type.
    #           </p>
    #   @return [Types::NotificationSpecification]
    # @!attribute test_event_type
    #   <p>
    #               The event to simulate to test the notification specification.
    #               This event is included in the test message even if the notification specification
    #               does not include the event type.
    #               The notification specification does not filter out the test event.
    #           </p>
    #   @return [String]
    class SendTestEventNotificationRequest < Struct.new(
      :notification,
      :test_event_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class SendTestEventNotificationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon Mechanical Turk is temporarily unable to process your request. Try your call again.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute turk_error_code
    #   @return [String]
    class ServiceFault < Struct.new(
      :message,
      :turk_error_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute hit_id
    #   <p>
    #               The HIT to update.
    #           </p>
    #   @return [String]
    # @!attribute expire_at
    #   <p>
    #               The date and time at which you want the HIT to expire
    #           </p>
    #   @return [Time]
    class UpdateExpirationForHITRequest < Struct.new(
      :hit_id,
      :expire_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateExpirationForHITResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute hit_id
    #   <p>
    #               The ID of the HIT to update.
    #           </p>
    #   @return [String]
    # @!attribute revert
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
    #   @return [Boolean]
    class UpdateHITReviewStatusRequest < Struct.new(
      :hit_id,
      :revert,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateHITReviewStatusResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute hit_id
    #   <p>The HIT to update.</p>
    #   @return [String]
    # @!attribute hit_type_id
    #   <p>The ID of the new HIT type.</p>
    #   @return [String]
    class UpdateHITTypeOfHITRequest < Struct.new(
      :hit_id,
      :hit_type_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateHITTypeOfHITResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute hit_type_id
    #   <p>
    #               The ID of the HIT type whose notification specification is being updated.
    #           </p>
    #   @return [String]
    # @!attribute notification
    #   <p>
    #               The notification specification for the HIT type.
    #           </p>
    #   @return [Types::NotificationSpecification]
    # @!attribute active
    #   <p>
    #               Specifies whether notifications are sent for HITs of this HIT type,
    #               according to the notification specification.
    #               You must specify either the Notification parameter or the Active parameter
    #               for the call to UpdateNotificationSettings to succeed.
    #           </p>
    #   @return [Boolean]
    class UpdateNotificationSettingsRequest < Struct.new(
      :hit_type_id,
      :notification,
      :active,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateNotificationSettingsResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute qualification_type_id
    #   <p>The ID of the Qualification type to update.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The new description of the Qualification type.</p>
    #   @return [String]
    # @!attribute qualification_type_status
    #   <p>The new status of the Qualification type - Active | Inactive</p>
    #   @return [String]
    # @!attribute test
    #   <p>The questions for the Qualification test a Worker must answer correctly to obtain a Qualification of this type. If this parameter is specified, <code>TestDurationInSeconds</code> must also be specified.</p>
    #           <p>Constraints: Must not be longer than 65535 bytes. Must be a QuestionForm data structure. This parameter cannot be specified if AutoGranted is true.</p>
    #           <p>Constraints: None. If not specified, the Worker may request the Qualification without answering any questions.</p>
    #   @return [String]
    # @!attribute answer_key
    #   <p>The answers to the Qualification test specified in the Test parameter, in the form of an AnswerKey data structure.</p>
    #   @return [String]
    # @!attribute test_duration_in_seconds
    #   <p>The number of seconds the Worker has to complete the Qualification test, starting from the time the Worker requests the Qualification.</p>
    #   @return [Integer]
    # @!attribute retry_delay_in_seconds
    #   <p>The amount of time, in seconds, that Workers must wait
    #               after requesting a Qualification of the specified Qualification type
    #               before they can retry the Qualification request. It is not possible to
    #               disable retries for a Qualification type after it has been created with
    #               retries enabled. If you want to disable retries, you must dispose of
    #               the existing retry-enabled Qualification type using
    #               DisposeQualificationType and then create a new Qualification type with
    #               retries disabled using CreateQualificationType.</p>
    #   @return [Integer]
    # @!attribute auto_granted
    #   <p>Specifies whether requests for the Qualification type are granted immediately, without prompting the Worker with a Qualification test.</p>
    #           <p>Constraints: If the Test parameter is specified, this parameter cannot be true.</p>
    #   @return [Boolean]
    # @!attribute auto_granted_value
    #   <p>The Qualification value to use for automatically granted Qualifications. This parameter is used only if the AutoGranted parameter is true.</p>
    #   @return [Integer]
    class UpdateQualificationTypeRequest < Struct.new(
      :qualification_type_id,
      :description,
      :qualification_type_status,
      :test,
      :answer_key,
      :test_duration_in_seconds,
      :retry_delay_in_seconds,
      :auto_granted,
      :auto_granted_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute qualification_type
    #   <p> Contains a QualificationType data structure.</p>
    #   @return [Types::QualificationType]
    class UpdateQualificationTypeResponse < Struct.new(
      :qualification_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The WorkerBlock data structure represents a Worker who has
    #             been blocked. It has two elements: the WorkerId and the Reason for
    #             the block.
    #         </p>
    # @!attribute worker_id
    #   <p> The ID of the Worker who accepted the HIT.</p>
    #   @return [String]
    # @!attribute reason
    #   <p> A message explaining the reason the Worker was blocked.
    #           </p>
    #   @return [String]
    class WorkerBlock < Struct.new(
      :worker_id,
      :reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
