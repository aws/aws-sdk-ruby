# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ElementalInference
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The width and height of the output video. Used in SubtitlingConfig to
    # determine subtitle layout.
    #
    # @!attribute [rw] width
    #   The width component of the aspect ratio (for example, 16 in a 16:9
    #   ratio).
    #   @return [Integer]
    #
    # @!attribute [rw] height
    #   The height component of the aspect ratio (for example, 9 in a 16:9
    #   ratio).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/AspectRatio AWS API Documentation
    #
    class AspectRatio < Struct.new(
      :width,
      :height)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the feed.
    #   @return [String]
    #
    # @!attribute [rw] associated_resource_name
    #   An identifier for the resource. This name must not resemble an ARN.
    #
    #   The resource is the source media that the feed will process. The
    #   name you assign should help you to later identify the source media
    #   that belongs to the feed. In this way, you will know which source
    #   media to push to the feed (using PutMedia).
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   An array of one or more outputs that you want to add to this feed
    #   now, to supplement any outputs that you specified when you created
    #   or updated the feed.
    #   @return [Array<Types::CreateOutput>]
    #
    # @!attribute [rw] dry_run
    #   Set to true if you want to do a dry run of the associate action.
    #
    #   Elemental Inference will validate that the real request would
    #   succeed without actually making any changes. A dry run catches
    #   errors such as missing IAM permissions, quota limits exceeded,
    #   conflicting outputs, and so on. If the dry run fails, the action
    #   returns a 4xx error code. After you've fixed the errors, resubmit
    #   the request.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/AssociateFeedRequest AWS API Documentation
    #
    class AssociateFeedRequest < Struct.new(
      :id,
      :associated_resource_name,
      :outputs,
      :dry_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the feed.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the feed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/AssociateFeedResponse AWS API Documentation
    #
    class AssociateFeedResponse < Struct.new(
      :arn,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Amazon Bedrock model to invoke. Elemental Inference invokes the
    # model in your account by assuming the feed's access role, so a feed
    # that runs this function must specify an accessRoleArn. The invocation
    # is subject to your Amazon Bedrock quotas and appears on your bill.
    #
    # @!attribute [rw] api
    #   The Amazon Bedrock API to call. The only valid value is
    #   INVOKE\_MODEL.
    #   @return [String]
    #
    # @!attribute [rw] model
    #   The model to invoke. Specify one of the following:
    #
    #   * A model ID.
    #
    #   * An inference profile ID.
    #
    #   * The ARN of a custom model.
    #
    #   * The ARN of a provisioned model.
    #
    #   Elemental Inference invokes the model in the Region of the feed. To
    #   use a model in other Regions, specify a cross-Region inference
    #   profile ID. A custom or provisioned model must be in the Region of
    #   the feed.
    #
    #   The request expression must produce a request body that this model
    #   accepts, and the model must accept the kind of media that the
    #   request expression references. For example, a text-only model can't
    #   accept a request that references media.frames.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/BedrockFunctionTarget AWS API Documentation
    #
    class BedrockFunctionTarget < Struct.new(
      :api,
      :model)
      SENSITIVE = []
      include Aws::Structure
    end

    # A question that you ask Elemental Inference, which answers by choosing
    # one of its options. You specify it in the chooseOne array of a
    # question set.
    #
    # @!attribute [rw] name
    #   A name for the question. The name must be unique among all the
    #   questions in the version, across all question types. The name can be
    #   up to 64 characters. It must start with a letter or an underscore,
    #   and can contain only the letters A-Z and a-z, the digits 0-9, and
    #   underscores.
    #   @return [String]
    #
    # @!attribute [rw] question
    #   The text of the question. The text can be up to 256 bytes, encoded
    #   in UTF-8. It can contain letters in any language, combining marks,
    #   digits, spaces, and the following characters: `. , ? ! ' " ( ) - : ;
    #   / & %`, plus the curly apostrophe and quotation marks (U+2019,
    #   U+201C, and U+201D).
    #   @return [String]
    #
    # @!attribute [rw] options
    #   The options that Elemental Inference chooses from. You can specify
    #   from 2 to 26 options. The question counts as one item toward the
    #   limit of 100 scored items in a version, regardless of how many
    #   options it has.
    #   @return [Array<Types::QuestionOption>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ChooseOneQuestion AWS API Documentation
    #
    class ChooseOneQuestion < Struct.new(
      :name,
      :question,
      :options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The perClip trigger, which runs the function each time an event
    # clipping output reports events. Events that the output reports
    # together share one run, and media.clip.events contains all of them. To
    # choose this trigger, set perClip to an empty object.
    #
    # Specify clippingSettings to name the event clipping output that
    # reports the events. You can't use this trigger with a function that
    # references media.transcript or media.contextual.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ClipTrigger AWS API Documentation
    #
    class ClipTrigger < Aws::EmptyStructure; end

    # A type of OutputConfig, used when the output in a feed is for the clip
    # feature.
    #
    # @!attribute [rw] callback_metadata
    #   A string that you want Elemental Inference to always include in the
    #   event clipping metadata for this output. The string might identify
    #   the sports event in the source media, for example.
    #   @return [String]
    #
    # @!attribute [rw] data_source_configuration
    #   The data source to map onto this clipping output. This parameter is
    #   optional. When you include this parameter, Elemental Inference reads
    #   the event data for the fixture that you specify, and includes that
    #   data in the event clipping metadata for this output.
    #
    #   If you omit this parameter, Elemental Inference doesn't map a data
    #   source onto this output.
    #   @return [Types::DataSourceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ClippingConfig AWS API Documentation
    #
    class ClippingConfig < Struct.new(
      :callback_metadata,
      :data_source_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The event clipping output on this feed that provides events for a
    # perClip trigger and media.clip for a function. Specify this structure
    # for a perClip trigger, and for a function that references media.clip
    # on a fixedInterval trigger.
    #
    # If the function output is ENABLED, the output that you name must also
    # be ENABLED.
    #
    # @!attribute [rw] output_name
    #   The name of an ENABLED event clipping output on this feed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ClippingSettings AWS API Documentation
    #
    class ClippingSettings < Struct.new(
      :output_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about one competitor in a fixture. It is used in
    # the FixtureSummary that is in the SearchFixtures response.
    #
    # @!attribute [rw] name
    #   The name of the competitor, as provided by the data source.
    #   @return [String]
    #
    # @!attribute [rw] is_home
    #   Specifies whether this competitor is the home side in the fixture.
    #   If true, this competitor is the home side. If false, this competitor
    #   is the away side.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/Competitor AWS API Documentation
    #
    class Competitor < Struct.new(
      :name,
      :is_home)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be completed due to a conflict.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output configuration settings for the contextual metadata feature.
    # Use this structure when the feed output generates metadata that
    # describes the media content.
    #
    # @!attribute [rw] summary_generation
    #   Specifies whether Elemental Inference generates a descriptive
    #   summary of the media content for this output, along with the objects
    #   and actions that it detects. This setting is independent of
    #   `extendedAnalysis`.
    #
    #   Valid values:
    #
    #   * ENABLED (default) – Elemental Inference populates the summary,
    #     objects, and actions fields, along with the IAB taxonomy and GARM
    #     suitability classifications.
    #
    #   * DISABLED – Elemental Inference doesn't populate the summary,
    #     objects, and actions fields.
    #   @return [String]
    #
    # @!attribute [rw] extended_analysis
    #   Specifies whether Elemental Inference generates extended analysis of
    #   the media content for this output. Extended analysis identifies the
    #   people, environments, brands, and on-screen text in the media
    #   content. This setting is independent of `summaryGeneration`.
    #
    #   Valid values:
    #
    #   * ENABLED (default) – Elemental Inference populates the people,
    #     environments, brands, and on-screen text fields.
    #
    #   * DISABLED – Elemental Inference doesn't populate the people,
    #     environments, brands, and on-screen text fields.
    #
    #   If you specify `customQuestions`, you must set this property to
    #   DISABLED.
    #   @return [String]
    #
    # @!attribute [rw] custom_questions
    #   The question sets that you ask Elemental Inference about each shot,
    #   each scene, or both, in this output.
    #
    #   If you specify customQuestions, you must also set extendedAnalysis
    #   to DISABLED. If you omit extendedAnalysis, it defaults to ENABLED,
    #   and the request fails.
    #
    #   While a feed references a version of a question set, you can't
    #   delete that version or the question set.
    #   @return [Types::CustomQuestionsConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ContextualMetadataConfig AWS API Documentation
    #
    class ContextualMetadataConfig < Struct.new(
      :summary_generation,
      :extended_analysis,
      :custom_questions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The contextual metadata output on this feed that provides scenes for a
    # perScene trigger and media.contextual for a function. Specify this
    # structure for a perScene trigger, and for a function that references
    # media.contextual on a perShot trigger.
    #
    # If the function output is ENABLED, the output that you name must also
    # be ENABLED.
    #
    # @!attribute [rw] output_name
    #   The name of an ENABLED contextual metadata output on this feed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ContextualMetadataSettings AWS API Documentation
    #
    class ContextualMetadataSettings < Struct.new(
      :output_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A user-friendly name for this dictionary.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The language of the dictionary entries. Specify the language using
    #   an ISO 639-2/T three-letter code. Supported values: eng, fra, ita,
    #   deu, spa, por.
    #   @return [String]
    #
    # @!attribute [rw] entries
    #   The dictionary entries payload. Contains the custom words and
    #   phrases for the dictionary. Maximum size is 40,960 characters.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Optional tags to associate with the dictionary.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/CreateDictionaryRequest AWS API Documentation
    #
    class CreateDictionaryRequest < Struct.new(
      :name,
      :language,
      :entries,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name that you specified in the request.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the dictionary.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique ID that Elemental Inference assigns to the dictionary.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The language of the dictionary.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the dictionary. After creation succeeds, the
    #   status will be AVAILABLE.
    #   @return [String]
    #
    # @!attribute [rw] references
    #   A list of feed IDs that reference this dictionary.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Any tags that you included when you created the dictionary.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/CreateDictionaryResponse AWS API Documentation
    #
    class CreateDictionaryResponse < Struct.new(
      :name,
      :arn,
      :id,
      :language,
      :status,
      :references,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A user-friendly name for this feed.
    #   @return [String]
    #
    # @!attribute [rw] access_role_arn
    #   The ARN of an IAM role that Elemental Inference assumes to access
    #   resources in your account on your behalf. For example, the smart
    #   crop feature uses this role to read graphics-compositing templates
    #   from your Amazon S3 bucket. You specify one access role for each
    #   feed.
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   An array of outputs for this feed. Each output represents a specific
    #   Elemental Inference feature. For example, there is one output type
    #   for the smart crop feature. You must specify at least one output,
    #   but you can later add outputs using AssociateFeed, or add, modify,
    #   and delete outputs using UpdateFeed.
    #   @return [Array<Types::CreateOutput>]
    #
    # @!attribute [rw] tags
    #   Optional tags. You can also add tags later, using TagResource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/CreateFeedRequest AWS API Documentation
    #
    class CreateFeedRequest < Struct.new(
      :name,
      :access_role_arn,
      :outputs,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   A unique ARN that Elemental Inference assigns to the feed.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name that you specified in the request.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique ID that Elemental Inference assigns to the feed.
    #   @return [String]
    #
    # @!attribute [rw] data_endpoints
    #   An array of endpoints for the feed. Typically, there is only one
    #   endpoint. The feed receives source media at this endpoint (when the
    #   calling application calls PutMedia) and returns the resulting
    #   metadata to this endpoint (when the calling application calls
    #   GetMetadata).
    #   @return [Array<String>]
    #
    # @!attribute [rw] outputs
    #   Repeats the outputs that you specified in the request.
    #   @return [Array<Types::GetOutput>]
    #
    # @!attribute [rw] access_role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that you specified in the request. This
    #   property is absent if you didn't specify an IAM role.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the feed. After creation of the feed has
    #   succeeded, the status will be AVAILABLE.
    #   @return [String]
    #
    # @!attribute [rw] association
    #   The association for this feed. When you create the feed, this
    #   property is empty. You must associate a resource with the feed using
    #   AssociateFeed or UpdateFeed.
    #   @return [Types::FeedAssociation]
    #
    # @!attribute [rw] tags
    #   Any tags that you included when you created the feed.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/CreateFeedResponse AWS API Documentation
    #
    class CreateFeedResponse < Struct.new(
      :arn,
      :name,
      :id,
      :data_endpoints,
      :outputs,
      :access_role_arn,
      :status,
      :association,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A name for this function.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The destination for the request that the function builds.
    #   @return [Types::FunctionTarget]
    #
    # @!attribute [rw] request_expression
    #   The JSONata expression that builds the request. Elemental Inference
    #   evaluates it against the media object of the feed, which holds the
    #   media and metadata that the function asked for. Maximum length:
    #   5,120 characters.
    #
    #   When you save the function, Elemental Inference evaluates the
    #   expression against sample media and rejects it if the evaluation
    #   fails. For a Bedrock target, the result must be a JSON object;
    #   Elemental Inference doesn't check that the object is a valid
    #   request body for the model. The expression can reference at most one
    #   of media.transcript, media.contextual, and media.clip. For a
    #   passthrough target, it can't reference media.frames.
    #   @return [String]
    #
    # @!attribute [rw] response_expression
    #   The JSONata expression that selects what to store. Elemental
    #   Inference evaluates it against the result as its root: the model
    #   response for a Bedrock target, or the output of the request
    #   expression for a passthrough target. If a function has no response
    #   expression, Elemental Inference stores the entire result. Maximum
    #   length: 5,120 characters.
    #
    #   When you save the function, Elemental Inference checks that the
    #   expression is valid JSONata. For a passthrough target, it also
    #   evaluates the request and response expressions together against
    #   sample media, and rejects them if they produce no value.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the function. Maximum length: 1,024 characters.
    #   @return [String]
    #
    # @!attribute [rw] event_bridge_delivery
    #   Specifies whether Elemental Inference also sends this function's
    #   results to Amazon EventBridge. Elemental Inference sends a result
    #   only when the result is a JSON object with a top-level `eventBridge`
    #   field set to `true`. It sends the result, unchanged, as a Function
    #   Metadata Generated event to the default event bus in your account,
    #   after the result is available from GetMetadata. If the result is
    #   larger than 64 KB, the event has `resultOmitted` set to `true` in
    #   place of the result.
    #
    #   Valid values:
    #
    #   * ENABLED – Elemental Inference sends each marked result as an
    #     event.
    #
    #   * DISABLED (default) – Elemental Inference doesn't send events.
    #
    #   For a Bedrock target, ENABLED requires a response expression,
    #   because the model response itself never has a top-level
    #   `eventBridge` field. A feed output that runs a function with ENABLED
    #   can't use a fixedInterval trigger shorter than 4 seconds.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to associate with this function.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/CreateFunctionRequest AWS API Documentation
    #
    class CreateFunctionRequest < Struct.new(
      :name,
      :target,
      :request_expression,
      :response_expression,
      :description,
      :event_bridge_delivery,
      :tags)
      SENSITIVE = [:request_expression, :response_expression, :description]
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the function.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The destination for the request that the function builds.
    #   @return [Types::FunctionTarget]
    #
    # @!attribute [rw] request_expression
    #   The JSONata expression that builds the request. Elemental Inference
    #   evaluates it against the media object of the feed, which holds the
    #   media and metadata that the function asked for.
    #   @return [String]
    #
    # @!attribute [rw] response_expression
    #   The JSONata expression that selects what to store. Elemental
    #   Inference evaluates it against the result as its root: the model
    #   response for a Bedrock target, or the output of the request
    #   expression for a passthrough target. If a function has no response
    #   expression, Elemental Inference stores the entire result.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the function.
    #   @return [String]
    #
    # @!attribute [rw] event_bridge_delivery
    #   Indicates whether Elemental Inference also sends this function's
    #   results to Amazon EventBridge. With ENABLED, each result that is a
    #   JSON object with a top-level `eventBridge` field set to `true` is
    #   also sent as a Function Metadata Generated event to the default
    #   event bus in your account.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the function.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the function.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the function. A successful request returns CREATING.
    #   The function is ready to use as soon as the request succeeds.
    #   @return [String]
    #
    # @!attribute [rw] references
    #   The IDs of the feeds that have a function output, enabled or
    #   disabled, that references this function. While this list isn't
    #   empty, the function can't be deleted, and its name and target
    #   can't be changed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] context_types
    #   The kinds of media context that this function uses. Elemental
    #   Inference derives this field from the media paths that the request
    #   expression references; you can't set it. An empty list means that
    #   the expression references no media, so Elemental Inference supplies
    #   none at run time.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags associated with the function.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/CreateFunctionResponse AWS API Documentation
    #
    class CreateFunctionResponse < Struct.new(
      :name,
      :target,
      :request_expression,
      :response_expression,
      :description,
      :event_bridge_delivery,
      :arn,
      :id,
      :status,
      :references,
      :context_types,
      :tags)
      SENSITIVE = [:request_expression, :response_expression, :description]
      include Aws::Structure
    end

    # Contains configuration information about one output in a feed. It is
    # used in the AssociateFeed and the CreateFeed actions.
    #
    # @!attribute [rw] name
    #   A name for the output.
    #   @return [String]
    #
    # @!attribute [rw] output_config
    #   A typed property for an output in a feed. It identifies the action
    #   for Elemental Inference to perform. It also provides a repository
    #   for the results of that action. For example, CroppingConfig output
    #   will contain the metadata for the crop feature.
    #   @return [Types::OutputConfig]
    #
    # @!attribute [rw] status
    #   The status to assign to the output.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/CreateOutput AWS API Documentation
    #
    class CreateOutput < Struct.new(
      :name,
      :output_config,
      :status,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] yes_no
    #   An array of questions that Elemental Inference answers with yes or
    #   no. You can specify up to 50 yesNo questions. An empty array is the
    #   same as omitting this property.
    #   @return [Array<Types::YesNoQuestion>]
    #
    # @!attribute [rw] yes_no_per_option
    #   An array of questions that you ask about each of their options.
    #   Elemental Inference answers yes or no for each option. You can
    #   specify up to 10 yesNoPerOption questions. An empty array is the
    #   same as omitting this property.
    #   @return [Array<Types::YesNoPerOptionQuestion>]
    #
    # @!attribute [rw] choose_one
    #   An array of questions that Elemental Inference answers by choosing
    #   one of their options. You can specify up to 10 chooseOne questions.
    #   An empty array is the same as omitting this property.
    #   @return [Array<Types::ChooseOneQuestion>]
    #
    # @!attribute [rw] name
    #   A user-friendly name for this question set.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Optional tags to associate with the question set. You can also add
    #   tags later, using TagResource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/CreateQuestionSetRequest AWS API Documentation
    #
    class CreateQuestionSetRequest < Struct.new(
      :yes_no,
      :yes_no_per_option,
      :choose_one,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] yes_no
    #   The yesNo questions that you specified in the request, in the order
    #   that you specified them. Elemental Inference doesn't return this
    #   property if the request didn't include any yesNo questions.
    #   @return [Array<Types::YesNoQuestion>]
    #
    # @!attribute [rw] yes_no_per_option
    #   The yesNoPerOption questions that you specified in the request, in
    #   the order that you specified them. Elemental Inference doesn't
    #   return this property if the request didn't include any
    #   yesNoPerOption questions.
    #   @return [Array<Types::YesNoPerOptionQuestion>]
    #
    # @!attribute [rw] choose_one
    #   The chooseOne questions that you specified in the request, in the
    #   order that you specified them. Elemental Inference doesn't return
    #   this property if the request didn't include any chooseOne
    #   questions.
    #   @return [Array<Types::ChooseOneQuestion>]
    #
    # @!attribute [rw] arn
    #   The ARN of the question set.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique ID that Elemental Inference assigns to the question set.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name that you specified in the request.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version that this response describes. For CreateQuestionSet, the
    #   version is always DRAFT.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the version. Elemental Inference doesn't return
    #   this property for CreateQuestionSet, because the DRAFT version has
    #   no description.
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   The number of the highest version that you have published for this
    #   question set. Elemental Inference doesn't return this property for
    #   CreateQuestionSet, because a new question set has no published
    #   versions.
    #   @return [String]
    #
    # @!attribute [rw] sha256
    #   The SHA-256 hash of the DRAFT version, as 64 lowercase hexadecimal
    #   characters. The hash covers the name of the question set and its
    #   questions. You can specify this value in a CreateQuestionSetVersion
    #   request, so that Elemental Inference publishes DRAFT only if it
    #   hasn't changed.
    #   @return [String]
    #
    # @!attribute [rw] references
    #   A list of feed IDs that reference this version of the question set.
    #   For a new question set, the list is empty.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Any tags that you included when you created the question set.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/CreateQuestionSetResponse AWS API Documentation
    #
    class CreateQuestionSetResponse < Struct.new(
      :yes_no,
      :yes_no_per_option,
      :choose_one,
      :arn,
      :id,
      :name,
      :version,
      :description,
      :latest_version,
      :sha256,
      :references,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the question set whose DRAFT version you want to publish.
    #   @return [String]
    #
    # @!attribute [rw] sha256
    #   The SHA-256 hash of the DRAFT version that you want to publish, as
    #   returned by GetQuestionSet or UpdateQuestionSet. If you specify this
    #   value, Elemental Inference publishes DRAFT only if its current hash
    #   matches. If it doesn't match, because DRAFT changed after you
    #   retrieved it, the request fails with ConflictException.
    #
    #   If you don't specify this value, Elemental Inference publishes
    #   DRAFT as it is when it receives the request.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the new version. You can't change the description
    #   after Elemental Inference publishes the version. If DRAFT hasn't
    #   changed since the latest version, Elemental Inference ignores this
    #   value and returns the latest version with its existing description.
    #
    #   The description can be up to 256 characters. It can contain the
    #   letters A-Z and a-z, the digits 0-9, underscores, spaces, and the
    #   following characters: `- . ' , @ : ;`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/CreateQuestionSetVersionRequest AWS API Documentation
    #
    class CreateQuestionSetVersionRequest < Struct.new(
      :id,
      :sha256,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] yes_no
    #   The yesNo questions in this version. Elemental Inference doesn't
    #   return this property if the version has no yesNo questions.
    #   @return [Array<Types::YesNoQuestion>]
    #
    # @!attribute [rw] yes_no_per_option
    #   The yesNoPerOption questions in this version. Elemental Inference
    #   doesn't return this property if the version has no yesNoPerOption
    #   questions.
    #   @return [Array<Types::YesNoPerOptionQuestion>]
    #
    # @!attribute [rw] choose_one
    #   The chooseOne questions in this version. Elemental Inference
    #   doesn't return this property if the version has no chooseOne
    #   questions.
    #   @return [Array<Types::ChooseOneQuestion>]
    #
    # @!attribute [rw] arn
    #   The ARN of the question set.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the question set.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the question set at this version.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The number of the version that Elemental Inference published. If
    #   DRAFT hadn't changed since the latest version, this is the number
    #   of that existing version.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the version. For a new version, this is the
    #   description that you specified in the request. If DRAFT hadn't
    #   changed since the latest version, this is the description of that
    #   existing version. Elemental Inference doesn't return this property
    #   if the version has no description.
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   The number of the highest version that you have published for this
    #   question set. It's the same as version.
    #   @return [String]
    #
    # @!attribute [rw] sha256
    #   The SHA-256 hash of the version, as 64 lowercase hexadecimal
    #   characters. It's the same as the hash of the DRAFT version that
    #   Elemental Inference published.
    #   @return [String]
    #
    # @!attribute [rw] references
    #   A list of feed IDs that reference this version of the question set.
    #   For a new version, the list is empty.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Any tags associated with the question set.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/CreateQuestionSetVersionResponse AWS API Documentation
    #
    class CreateQuestionSetVersionResponse < Struct.new(
      :yes_no,
      :yes_no_per_option,
      :choose_one,
      :arn,
      :id,
      :name,
      :version,
      :description,
      :latest_version,
      :sha256,
      :references,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   Specifies the ID of the feed that you want to add the schedule
    #   action to.
    #   @return [String]
    #
    # @!attribute [rw] action_name
    #   A name for the schedule action. The name must be unique within the
    #   feed. You can reuse the name of an action that you deleted.
    #   @return [String]
    #
    # @!attribute [rw] start_configuration
    #   Specifies when the action runs.
    #   @return [Types::ScheduleActionStartConfiguration]
    #
    # @!attribute [rw] operations
    #   Specifies the list of configuration changes that you want to make to
    #   the feed. Elemental Inference applies all the operations in an
    #   action together, in the order that you specify them. If any
    #   operation fails, Elemental Inference doesn't apply any of them.
    #   @return [Array<Types::ScheduleActionOperation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/CreateScheduleActionRequest AWS API Documentation
    #
    class CreateScheduleActionRequest < Struct.new(
      :id,
      :action_name,
      :start_configuration,
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action_name
    #   The name that you specified.
    #   @return [String]
    #
    # @!attribute [rw] start_configuration
    #   Specifies when the action runs.
    #   @return [Types::ScheduleActionStartConfiguration]
    #
    # @!attribute [rw] operations
    #   The configuration changes that the action makes to the feed.
    #   @return [Array<Types::ScheduleActionOperation>]
    #
    # @!attribute [rw] status
    #   The status of the action. After you create the action successfully,
    #   Elemental Inference sets the status to PENDING.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   A description of why the action failed. Elemental Inference returns
    #   this property only when the status is FAILED.
    #   @return [Types::ScheduleActionError]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/CreateScheduleActionResponse AWS API Documentation
    #
    class CreateScheduleActionResponse < Struct.new(
      :action_name,
      :start_configuration,
      :operations,
      :status,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # A type of OutputConfig, used when the output in a feed is for the crop
    # feature.
    #
    # @!attribute [rw] template_groups
    #   An array of template groups for the crop output. Each template group
    #   provides the graphics-compositing templates that Elemental Inference
    #   applies to the cropped video. You can specify from 1 to 4 template
    #   groups.
    #   @return [Array<Types::TemplateGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/CroppingConfig AWS API Documentation
    #
    class CroppingConfig < Struct.new(
      :template_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # The question sets that you ask Elemental Inference about the media in
    # a contextual metadata output. You must specify at least one of shot or
    # scene. They can reference the same version of the same question set.
    #
    # @!attribute [rw] shot
    #   The version of a question set to ask Elemental Inference about each
    #   shot.
    #   @return [Types::QuestionSetReference]
    #
    # @!attribute [rw] scene
    #   The version of a question set to ask Elemental Inference about each
    #   scene.
    #   @return [Types::QuestionSetReference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/CustomQuestionsConfig AWS API Documentation
    #
    class CustomQuestionsConfig < Struct.new(
      :shot,
      :scene)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the data source configuration for a clipping output. It
    # identifies the fixture whose event data Elemental Inference maps onto
    # the clipping metadata. It is used in the dataSourceConfiguration
    # property of a ClippingConfig.
    #
    # @!attribute [rw] fixture_id
    #   The ID of the fixture whose event data you want Elemental Inference
    #   to map onto this clipping output. The fixture should be the sports
    #   event in the source media that the feed is processing.
    #
    #   To obtain this ID, use the SearchFixtures operation to find the
    #   fixture, then use the fixtureId from the matching FixtureSummary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DataSourceConfiguration AWS API Documentation
    #
    class DataSourceConfiguration < Struct.new(
      :fixture_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the dictionary to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DeleteDictionaryRequest AWS API Documentation
    #
    class DeleteDictionaryRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the deleted dictionary.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the deleted dictionary.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the dictionary after deletion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DeleteDictionaryResponse AWS API Documentation
    #
    class DeleteDictionaryResponse < Struct.new(
      :arn,
      :id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the feed whose policy you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DeleteFeedPolicyRequest AWS API Documentation
    #
    class DeleteFeedPolicyRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the feed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DeleteFeedRequest AWS API Documentation
    #
    class DeleteFeedRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the deleted feed.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the deleted feed.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the feed. When deletion of the feed has
    #   succeeded, the status will be DELETED.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DeleteFeedResponse AWS API Documentation
    #
    class DeleteFeedResponse < Struct.new(
      :arn,
      :id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DeleteFunctionRequest AWS API Documentation
    #
    class DeleteFunctionRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the function.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the function.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the function. A successful request returns DELETING.
    #   Elemental Inference removes the function before it returns the
    #   response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DeleteFunctionResponse AWS API Documentation
    #
    class DeleteFunctionResponse < Struct.new(
      :arn,
      :id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the question set to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DeleteQuestionSetRequest AWS API Documentation
    #
    class DeleteQuestionSetRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the deleted question set.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the deleted question set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DeleteQuestionSetResponse AWS API Documentation
    #
    class DeleteQuestionSetResponse < Struct.new(
      :arn,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the question set that contains the version.
    #   @return [String]
    #
    # @!attribute [rw] question_set_version
    #   The number of the published version to delete. You can't specify
    #   DRAFT.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DeleteQuestionSetVersionRequest AWS API Documentation
    #
    class DeleteQuestionSetVersionRequest < Struct.new(
      :id,
      :question_set_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DeleteQuestionSetVersionResponse AWS API Documentation
    #
    class DeleteQuestionSetVersionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of the feed that holds the schedule action.
    #   @return [String]
    #
    # @!attribute [rw] action_name
    #   The name of the schedule action that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DeleteScheduleActionRequest AWS API Documentation
    #
    class DeleteScheduleActionRequest < Struct.new(
      :id,
      :action_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action_name
    #   The name of the schedule action that Elemental Inference deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DeleteScheduleActionResponse AWS API Documentation
    #
    class DeleteScheduleActionResponse < Struct.new(
      :action_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a dictionary. Used in the
    # ListDictionaries response.
    #
    # @!attribute [rw] arn
    #   The ARN of the dictionary.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the dictionary.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the dictionary.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The language of the dictionary.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the dictionary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DictionarySummary AWS API Documentation
    #
    class DictionarySummary < Struct.new(
      :arn,
      :id,
      :name,
      :language,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the feed where you want to release the resource.
    #   @return [String]
    #
    # @!attribute [rw] associated_resource_name
    #   The name of the resource currently associated with the feed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Set to true if you want to do a dry run of the disassociate action.
    #
    #   Elemental Inference will validate that the real request would
    #   succeed without actually making any changes. A dry run catches
    #   errors such as missing IAM permissions. If the dry run fails, the
    #   action returns a 4xx error code.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DisassociateFeedRequest AWS API Documentation
    #
    class DisassociateFeedRequest < Struct.new(
      :id,
      :associated_resource_name,
      :dry_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the feed.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the feed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DisassociateFeedResponse AWS API Documentation
    #
    class DisassociateFeedResponse < Struct.new(
      :arn,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the dictionary whose entries you want to export.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ExportDictionaryEntriesRequest AWS API Documentation
    #
    class ExportDictionaryEntriesRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entries
    #   The dictionary entries payload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ExportDictionaryEntriesResponse AWS API Documentation
    #
    class ExportDictionaryEntriesResponse < Struct.new(
      :entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the resource that is associated with a
    # feed. It is used in the FeedSummary that is used in the response of a
    # ListFeeds action.
    #
    # @!attribute [rw] associated_resource_name
    #   The name of the associated resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/FeedAssociation AWS API Documentation
    #
    class FeedAssociation < Struct.new(
      :associated_resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configuration information about a feed. It is used in the
    # ListFeeds response.
    #
    # @!attribute [rw] arn
    #   The ARN of the feed.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the feed.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the feed
    #   @return [String]
    #
    # @!attribute [rw] association
    #   The resource, if any, associated with the feed.
    #   @return [Types::FeedAssociation]
    #
    # @!attribute [rw] status
    #   The status of the feed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/FeedSummary AWS API Documentation
    #
    class FeedSummary < Struct.new(
      :arn,
      :id,
      :name,
      :association,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings of the fixedInterval trigger, which runs the function
    # once for every intervalSeconds of content. A function that references
    # media.transcript must use this trigger. You can't use this trigger
    # with a function that references media.contextual.
    #
    # If the function references media.transcript, specify
    # subtitlingSettings. If the function references media.clip, specify
    # clippingSettings. Each run then receives the events that the event
    # clipping output reported during the interval, in media.clip.events.
    #
    # @!attribute [rw] interval_seconds
    #   The amount of content, in seconds, between runs of the function.
    #   Valid range: 1 to 60. For a function with eventBridgeDelivery set to
    #   ENABLED, the minimum is 4.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/FixedIntervalTrigger AWS API Documentation
    #
    class FixedIntervalTrigger < Struct.new(
      :interval_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Sets the time at which a schedule action runs once. This is a type of
    # ScheduleActionStartConfiguration.
    #
    # @!attribute [rw] scheduled_at
    #   The UTC time at which the action runs. Specify the time in whole
    #   seconds. For the range of times that you can specify, see the AWS
    #   Elemental Inference User Guide.
    #
    #   This time is approximate. The change can take a few minutes to take
    #   effect on the media that the feed is processing.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/FixedModeScheduleActionStartSettings AWS API Documentation
    #
    class FixedModeScheduleActionStartSettings < Struct.new(
      :scheduled_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about one fixture. It is used in the
    # SearchFixtures response.
    #
    # Elemental Inference relays the information in this structure from the
    # data source, so that you can identify the fixture that matches your
    # source media.
    #
    # @!attribute [rw] fixture_id
    #   The ID of the fixture. Specify this ID in the clipping output of a
    #   feed, to identify the fixture whose event data you want Elemental
    #   Inference to map onto the clipping metadata.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the fixture, as provided by the data source. For
    #   example, the names of the two competing teams.
    #   @return [String]
    #
    # @!attribute [rw] fixture_group
    #   The group that the fixture belongs to, such as the competition,
    #   league, or tournament. The data source doesn't provide this
    #   information for every fixture.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_start
    #   The scheduled start time of the fixture, as provided by the data
    #   source. The actual start time might differ.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the fixture in its lifecycle, as provided by the data
    #   source. For example, Scheduled or Completed.
    #   @return [String]
    #
    # @!attribute [rw] competitors
    #   An array of the competitors (the teams or individuals) in the
    #   fixture.
    #   @return [Array<Types::Competitor>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/FixtureSummary AWS API Documentation
    #
    class FixtureSummary < Struct.new(
      :fixture_id,
      :name,
      :fixture_group,
      :scheduled_start,
      :status,
      :competitors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies how Elemental Inference chooses frames from the media of
    # each run, and how many frames it chooses. The media of a run is the
    # interval, shot, scene, or clips that the run covers.
    #
    # @!attribute [rw] mode
    #   Which frames of the window to send: FIRST (the first frames),
    #   UNIFORM (frames spread evenly across the window), or LAST (the last
    #   frames).
    #   @return [String]
    #
    # @!attribute [rw] count
    #   The number of frames to send on each run. Valid range: 1 to 64. The
    #   default is 1. Each frame adds to the size of the model request and
    #   to what the model charges for it.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/FrameSamplingStrategy AWS API Documentation
    #
    class FrameSamplingStrategy < Struct.new(
      :mode,
      :count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The frames that a function receives in media.frames on each run: which
    # frames, how many, and at what size. Elemental Inference applies these
    # settings only to a function that references media.frames.
    #
    # When you add or change the function output, Elemental Inference
    # estimates the size of the frames and rejects settings whose frames
    # won't fit in one model request. To send more frames in each request,
    # specify a smaller frameSize.
    #
    # @!attribute [rw] frame_sampling
    #   The method for choosing which frames to send.
    #   @return [Types::FrameSamplingStrategy]
    #
    # @!attribute [rw] frame_size
    #   The size to resize each frame to. If you omit this structure, frames
    #   keep their source size. Smaller frames reduce the size of the model
    #   request.
    #   @return [Types::FrameSize]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/FrameSettings AWS API Documentation
    #
    class FrameSettings < Struct.new(
      :frame_sampling,
      :frame_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # The dimensions, in pixels, of each frame that a function sends.
    # Elemental Inference resizes each frame to exactly this width and
    # height.
    #
    # @!attribute [rw] width_pixels
    #   The width of each frame, in pixels. Valid range: 1 to 1280.
    #   @return [Integer]
    #
    # @!attribute [rw] height_pixels
    #   The height of each frame, in pixels. Valid range: 1 to 720.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/FrameSize AWS API Documentation
    #
    class FrameSize < Struct.new(
      :width_pixels,
      :height_pixels)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output configuration settings for a function. Use this structure
    # to run a function on this feed. The name of the output is the name
    # that you pass to GetMetadata to read the results.
    #
    # Include the settings that the function's media context and trigger
    # require. Elemental Inference ignores settings that neither uses. It
    # also rejects settings whose frames are estimated to exceed the size of
    # a single model request.
    #
    # A feed that has an enabled function output must also have an enabled
    # cropping, clipping, subtitling, or contextual metadata output. A feed
    # that runs a function with a Bedrock target must specify an
    # accessRoleArn.
    #
    # @!attribute [rw] function_arn
    #   The ARN of the function to run. The function must exist in the same
    #   account and the same Region as the feed.
    #   @return [String]
    #
    # @!attribute [rw] trigger
    #   Determines when the function runs.
    #   @return [Types::Trigger]
    #
    # @!attribute [rw] frame_settings
    #   The frames to send on each run: how many, which ones, and at what
    #   size. Applies to a function that references media.frames. If you
    #   omit this structure, Elemental Inference sends the first frame of
    #   the window, at its source size.
    #   @return [Types::FrameSettings]
    #
    # @!attribute [rw] subtitling_settings
    #   The smart subtitles output on this feed to read the transcript from.
    #   Required for a function that references media.transcript.
    #   @return [Types::SubtitlingSettings]
    #
    # @!attribute [rw] contextual_metadata_settings
    #   The contextual metadata output on this feed to read scenes and
    #   classifications from. Required for a perScene trigger, and for a
    #   function that references media.contextual on a perShot trigger.
    #   @return [Types::ContextualMetadataSettings]
    #
    # @!attribute [rw] clipping_settings
    #   The event clipping output on this feed to read clips from. Required
    #   for a perClip trigger, and for a function that references
    #   media.clip.
    #   @return [Types::ClippingSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/FunctionConfig AWS API Documentation
    #
    class FunctionConfig < Struct.new(
      :function_arn,
      :trigger,
      :frame_settings,
      :subtitling_settings,
      :contextual_metadata_settings,
      :clipping_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains identifying and configuration details for a function,
    # including its name, target, status, and derived media context.
    #
    # @!attribute [rw] arn
    #   The ARN of the function.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the function.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the function.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the function.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the function.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The destination for the request that the function builds.
    #   @return [Types::FunctionTarget]
    #
    # @!attribute [rw] context_types
    #   The kinds of media context that this function uses. Elemental
    #   Inference derives this field from the media paths that the request
    #   expression references; you can't set it. An empty list means that
    #   the expression references no media, so Elemental Inference supplies
    #   none at run time.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/FunctionSummary AWS API Documentation
    #
    class FunctionSummary < Struct.new(
      :arn,
      :id,
      :name,
      :description,
      :status,
      :target,
      :context_types)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # The destination for the request that a function builds. Specify
    # exactly one member.
    #
    # @note FunctionTarget is a union - when making an API calls you must set exactly one of the members.
    #
    # @note FunctionTarget is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of FunctionTarget corresponding to the set member.
    #
    # @!attribute [rw] bedrock
    #   Send the request to an Amazon Bedrock model.
    #   @return [Types::BedrockFunctionTarget]
    #
    # @!attribute [rw] passthrough
    #   Send the request nowhere. Use this target to reshape the metadata
    #   that Elemental Inference already produces, with no model invocation
    #   and no model charges.
    #   @return [Types::PassthroughFunctionTarget]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/FunctionTarget AWS API Documentation
    #
    class FunctionTarget < Struct.new(
      :bedrock,
      :passthrough,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Bedrock < FunctionTarget; end
      class Passthrough < FunctionTarget; end
      class Unknown < FunctionTarget; end
    end

    # The request timed out before the service returned a response. This is
    # a temporary condition. Retry the request. If the problem persists,
    # contact AWS Support.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/GatewayTimedOutException AWS API Documentation
    #
    class GatewayTimedOutException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the dictionary to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/GetDictionaryRequest AWS API Documentation
    #
    class GetDictionaryRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the dictionary.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the dictionary.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the dictionary.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The language of the dictionary.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the dictionary.
    #   @return [String]
    #
    # @!attribute [rw] references
    #   A list of feed IDs that reference this dictionary.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags associated with the dictionary.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/GetDictionaryResponse AWS API Documentation
    #
    class GetDictionaryResponse < Struct.new(
      :name,
      :arn,
      :id,
      :language,
      :status,
      :references,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the feed whose policy you want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/GetFeedPolicyRequest AWS API Documentation
    #
    class GetFeedPolicyRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The resource-based policy document attached to the feed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/GetFeedPolicyResponse AWS API Documentation
    #
    class GetFeedPolicyResponse < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the feed to query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/GetFeedRequest AWS API Documentation
    #
    class GetFeedRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the feed.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the feed.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the feed.
    #   @return [String]
    #
    # @!attribute [rw] data_endpoints
    #   The dataEndpoints of the feed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] outputs
    #   An array of the outputs in the feed.
    #   @return [Array<Types::GetOutput>]
    #
    # @!attribute [rw] access_role_arn
    #   The Amazon Resource Name (ARN) of an AWS Identity and Access
    #   Management (IAM) role that Elemental Inference assumes. Elemental
    #   Inference uses this role to access resources in your account on your
    #   behalf. This property is absent if the feed doesn't have an IAM
    #   role.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the feed.
    #   @return [String]
    #
    # @!attribute [rw] association
    #   Information about the resource that is associated with the feed.
    #   It's possible that there is no associated resource. This is not an
    #   error.
    #   @return [Types::FeedAssociation]
    #
    # @!attribute [rw] tags
    #   A list of the tags, if any, for the feed.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/GetFeedResponse AWS API Documentation
    #
    class GetFeedResponse < Struct.new(
      :arn,
      :name,
      :id,
      :data_endpoints,
      :outputs,
      :access_role_arn,
      :status,
      :association,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fixture_id
    #   The ID of the fixture to retrieve, as returned by SearchFixtures.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/GetFixtureRequest AWS API Documentation
    #
    class GetFixtureRequest < Struct.new(
      :fixture_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fixture_id
    #   The ID that you specified in the request.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the fixture, as provided by the data source. For
    #   example, the names of the two competing teams.
    #   @return [String]
    #
    # @!attribute [rw] fixture_group
    #   The group that the fixture belongs to, such as the competition,
    #   league, or tournament. The data source doesn't provide this
    #   information for every fixture.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_start
    #   The scheduled start time of the fixture, as provided by the data
    #   source. The actual start time might differ.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the fixture in its lifecycle, as provided by the data
    #   source. For example, Scheduled or Completed.
    #   @return [String]
    #
    # @!attribute [rw] competitors
    #   An array of the competitors (the teams or individuals) in the
    #   fixture.
    #   @return [Array<Types::Competitor>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/GetFixtureResponse AWS API Documentation
    #
    class GetFixtureResponse < Struct.new(
      :fixture_id,
      :name,
      :fixture_group,
      :scheduled_start,
      :status,
      :competitors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/GetFunctionRequest AWS API Documentation
    #
    class GetFunctionRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the function.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The destination for the request that the function builds.
    #   @return [Types::FunctionTarget]
    #
    # @!attribute [rw] request_expression
    #   The JSONata expression that builds the request. Elemental Inference
    #   evaluates it against the media object of the feed, which holds the
    #   media and metadata that the function asked for.
    #   @return [String]
    #
    # @!attribute [rw] response_expression
    #   The JSONata expression that selects what to store. Elemental
    #   Inference evaluates it against the result as its root: the model
    #   response for a Bedrock target, or the output of the request
    #   expression for a passthrough target. If a function has no response
    #   expression, Elemental Inference stores the entire result.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the function.
    #   @return [String]
    #
    # @!attribute [rw] event_bridge_delivery
    #   Indicates whether Elemental Inference also sends this function's
    #   results to Amazon EventBridge. With ENABLED, each result that is a
    #   JSON object with a top-level `eventBridge` field set to `true` is
    #   also sent as a Function Metadata Generated event to the default
    #   event bus in your account.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the function.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the function.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the function.
    #   @return [String]
    #
    # @!attribute [rw] references
    #   The IDs of the feeds that have a function output, enabled or
    #   disabled, that references this function. While this list isn't
    #   empty, the function can't be deleted, and its name and target
    #   can't be changed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] context_types
    #   The kinds of media context that this function uses. Elemental
    #   Inference derives this field from the media paths that the request
    #   expression references; you can't set it. An empty list means that
    #   the expression references no media, so Elemental Inference supplies
    #   none at run time.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags associated with the function.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/GetFunctionResponse AWS API Documentation
    #
    class GetFunctionResponse < Struct.new(
      :name,
      :target,
      :request_expression,
      :response_expression,
      :description,
      :event_bridge_delivery,
      :arn,
      :id,
      :status,
      :references,
      :context_types,
      :tags)
      SENSITIVE = [:request_expression, :response_expression, :description]
      include Aws::Structure
    end

    # Contains configuration information about one output in a feed. It is
    # used in the GetFeed response.
    #
    # @!attribute [rw] name
    #   The name of the output.
    #   @return [String]
    #
    # @!attribute [rw] output_config
    #   A typed property for an output in a feed. It identifies the action
    #   for Elemental Inference to perform. It also provides a repository
    #   for the results of that action. For example, CroppingConfig output
    #   will contain the metadata for the crop feature.
    #   @return [Types::OutputConfig]
    #
    # @!attribute [rw] status
    #   The status of the output.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the output.
    #   @return [String]
    #
    # @!attribute [rw] from_association
    #   True means that the output was originally created in the feed using
    #   AssociateFeed. False means it was created using CreateFeed or
    #   UpdateFeed.
    #
    #   You will need this value if you use UpdateFeed to modify the list of
    #   outputs in the feed.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/GetOutput AWS API Documentation
    #
    class GetOutput < Struct.new(
      :name,
      :output_config,
      :status,
      :description,
      :from_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the question set to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] question_set_version
    #   The version of the question set to retrieve: DRAFT or the number of
    #   a published version. If you don't specify a version, Elemental
    #   Inference returns DRAFT.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/GetQuestionSetRequest AWS API Documentation
    #
    class GetQuestionSetRequest < Struct.new(
      :id,
      :question_set_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] yes_no
    #   The yesNo questions in this version. Elemental Inference doesn't
    #   return this property if the version has no yesNo questions.
    #   @return [Array<Types::YesNoQuestion>]
    #
    # @!attribute [rw] yes_no_per_option
    #   The yesNoPerOption questions in this version. Elemental Inference
    #   doesn't return this property if the version has no yesNoPerOption
    #   questions.
    #   @return [Array<Types::YesNoPerOptionQuestion>]
    #
    # @!attribute [rw] choose_one
    #   The chooseOne questions in this version. Elemental Inference
    #   doesn't return this property if the version has no chooseOne
    #   questions.
    #   @return [Array<Types::ChooseOneQuestion>]
    #
    # @!attribute [rw] arn
    #   The ARN of the question set.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the question set.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the question set at this version. For a published
    #   version, this is the name that the question set had when the version
    #   was published.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version that this response describes: DRAFT or the number of a
    #   published version.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description that you specified when you published this version.
    #   Elemental Inference doesn't return this property for DRAFT, or for
    #   a version that you published without a description.
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   The number of the highest version that you have published for this
    #   question set, even if you have since deleted that version. Elemental
    #   Inference doesn't return this property if you haven't published a
    #   version.
    #   @return [String]
    #
    # @!attribute [rw] sha256
    #   The SHA-256 hash of this version, as 64 lowercase hexadecimal
    #   characters. The hash covers the name of the question set and its
    #   questions at this version. For DRAFT, you can specify this value in
    #   a CreateQuestionSetVersion request, so that Elemental Inference
    #   publishes DRAFT only if it hasn't changed.
    #   @return [String]
    #
    # @!attribute [rw] references
    #   A list of feed IDs that reference this version of the question set.
    #   The list doesn't include feeds that reference other versions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags associated with the question set.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/GetQuestionSetResponse AWS API Documentation
    #
    class GetQuestionSetResponse < Struct.new(
      :yes_no,
      :yes_no_per_option,
      :choose_one,
      :arn,
      :id,
      :name,
      :version,
      :description,
      :latest_version,
      :sha256,
      :references,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal server error occurred. This is a temporary condition and
    # the request can be retried. If the problem persists, contact AWS
    # Support.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/InternalServerErrorException AWS API Documentation
    #
    class InternalServerErrorException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return per API request. Valid
    #   range: 1 to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that identifies the next batch of results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ListDictionariesRequest AWS API Documentation
    #
    class ListDictionariesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dictionaries
    #   A list of DictionarySummary objects.
    #   @return [Array<Types::DictionarySummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next batch of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ListDictionariesResponse AWS API Documentation
    #
    class ListDictionariesResponse < Struct.new(
      :dictionaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return per API request.
    #
    #   For example, you submit a list request with MaxResults set at 5.
    #   Although 20 items match your request, the service returns no more
    #   than the first 5 items. (The service also returns a NextToken value
    #   that you can use to fetch the next batch of results.)
    #
    #   The service might return fewer results than the MaxResults value. If
    #   MaxResults is not included in the request, the service defaults to
    #   pagination with a maximum of 10 results per page.
    #
    #   Valid Range: Minimum value of 1. Maximum value of 1000.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that identifies the batch of results that you want to see.
    #
    #   For example, you submit a ListFeeds request with MaxResults set at
    #   5. The service returns the first batch of results (up to 5) and a
    #   NextToken value. To see the next batch of results, you can submit
    #   the ListFeeds request a second time and specify the NextToken value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ListFeedsRequest AWS API Documentation
    #
    class ListFeedsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] feeds
    #   A list of FeedSummary objects.
    #   @return [Array<Types::FeedSummary>]
    #
    # @!attribute [rw] next_token
    #   The token that identifies the batch of results that you want to see.
    #   For example, you submit a list request with MaxResults set at 5. The
    #   service returns the first batch of results (up to 5) and a NextToken
    #   value. To see the next batch of results, you can submit the list
    #   request a second time and specify the NextToken value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ListFeedsResponse AWS API Documentation
    #
    class ListFeedsResponse < Struct.new(
      :feeds,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of functions to return in one response. Valid
    #   range: 1 to 100. The default is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that identifies the page of results to return. Use the
    #   nextToken value from a previous response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ListFunctionsRequest AWS API Documentation
    #
    class ListFunctionsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] functions
    #   An array of function summaries.
    #   @return [Array<Types::FunctionSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use in a subsequent request to get the next page of
    #   results. This field is absent when there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ListFunctionsResponse AWS API Documentation
    #
    class ListFunctionsResponse < Struct.new(
      :functions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the question set whose versions you want to list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per API request. Valid
    #   range: 1 to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that identifies the next batch of results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ListQuestionSetVersionsRequest AWS API Documentation
    #
    class ListQuestionSetVersionsRequest < Struct.new(
      :id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] versions
    #   A list of QuestionSetVersionSummary objects.
    #   @return [Array<Types::QuestionSetVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next batch of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ListQuestionSetVersionsResponse AWS API Documentation
    #
    class ListQuestionSetVersionsResponse < Struct.new(
      :versions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return per API request. Valid
    #   range: 1 to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that identifies the next batch of results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ListQuestionSetsRequest AWS API Documentation
    #
    class ListQuestionSetsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] question_sets
    #   A list of QuestionSetSummary objects.
    #   @return [Array<Types::QuestionSetSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next batch of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ListQuestionSetsResponse AWS API Documentation
    #
    class ListQuestionSetsResponse < Struct.new(
      :question_sets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the feed that you want to query.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for each API request. If you
    #   don't specify MaxResults, Elemental Inference returns a maximum of
    #   10 results for each page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that identifies the batch of results that you want to see.
    #   To see the next batch, submit the request a second time and specify
    #   the NextToken value that Elemental Inference returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ListScheduleActionsRequest AWS API Documentation
    #
    class ListScheduleActionsRequest < Struct.new(
      :id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schedule_actions
    #   A list of the schedule actions on the feed.
    #   @return [Array<Types::ScheduleAction>]
    #
    # @!attribute [rw] next_token
    #   The token that identifies the next batch of results. Elemental
    #   Inference returns it only when more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ListScheduleActionsResponse AWS API Documentation
    #
    class ListScheduleActionsResponse < Struct.new(
      :schedule_actions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource whose tags you want to query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of the tags that belong to this resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains one typed output. It is used in the CreateOutput, GetOutput,
    # and Update Output structures.
    #
    # @note OutputConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @note OutputConfig is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of OutputConfig corresponding to the set member.
    #
    # @!attribute [rw] cropping
    #   The output config type that applies to the cropping feature.
    #   @return [Types::CroppingConfig]
    #
    # @!attribute [rw] clipping
    #   The output config type that applies to the clipping feature.
    #   @return [Types::ClippingConfig]
    #
    # @!attribute [rw] subtitling
    #   The output config type that applies to the smart subtitling feature.
    #   @return [Types::SubtitlingConfig]
    #
    # @!attribute [rw] contextual_metadata
    #   The output config type that applies to the contextual metadata
    #   feature.
    #   @return [Types::ContextualMetadataConfig]
    #
    # @!attribute [rw] function
    #   The output config type that applies to a function.
    #   @return [Types::FunctionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/OutputConfig AWS API Documentation
    #
    class OutputConfig < Struct.new(
      :cropping,
      :clipping,
      :subtitling,
      :contextual_metadata,
      :function,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Cropping < OutputConfig; end
      class Clipping < OutputConfig; end
      class Subtitling < OutputConfig; end
      class ContextualMetadata < OutputConfig; end
      class Function < OutputConfig; end
      class Unknown < OutputConfig; end
    end

    # A target that invokes nothing. Elemental Inference evaluates your
    # request expression, then evaluates your response expression against
    # that result. If the function has no response expression, Elemental
    # Inference stores the result of the request expression.
    #
    # A passthrough function can't reference media.frames. It also needs no
    # access role on the feed.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/PassthroughFunctionTarget AWS API Documentation
    #
    class PassthroughFunctionTarget < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of the feed to attach the policy to.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The resource-based policy document to attach to the feed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/PutFeedPolicyRequest AWS API Documentation
    #
    class PutFeedPolicyRequest < Struct.new(
      :id,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/PutFeedPolicyResponse AWS API Documentation
    #
    class PutFeedPolicyResponse < Aws::EmptyStructure; end

    # An option in a yesNoPerOption question or a chooseOne question.
    #
    # @!attribute [rw] name
    #   A name for the option. The name must be unique among the options of
    #   the question. The name can be up to 64 characters. It must start
    #   with a letter or an underscore, and can contain only the letters A-Z
    #   and a-z, the digits 0-9, and underscores.
    #   @return [String]
    #
    # @!attribute [rw] text
    #   The text of the option. The text must be unique among the options of
    #   the question, ignoring case. The text can be up to 16 bytes, encoded
    #   in UTF-8. It can contain the same characters as the text of a
    #   question.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/QuestionOption AWS API Documentation
    #
    class QuestionOption < Struct.new(
      :name,
      :text)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies one version of a question set. You specify it in
    # CustomQuestionsConfig.
    #
    # @!attribute [rw] question_set_id
    #   The ID of the question set. The question set must be in your
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the question set: DRAFT or the number of a published
    #   version. The version must exist.
    #
    #   If you specify DRAFT, the output uses the current DRAFT questions
    #   and picks up changes that you make later by using UpdateQuestionSet.
    #   To keep the questions for the output fixed, specify a published
    #   version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/QuestionSetReference AWS API Documentation
    #
    class QuestionSetReference < Struct.new(
      :question_set_id,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a question set. Used in the
    # ListQuestionSets response.
    #
    # @!attribute [rw] arn
    #   The ARN of the question set.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the question set.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the question set.
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   The number of the highest version that you have published for this
    #   question set, even if you have since deleted that version. Elemental
    #   Inference doesn't return this property if you haven't published a
    #   version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/QuestionSetSummary AWS API Documentation
    #
    class QuestionSetSummary < Struct.new(
      :arn,
      :id,
      :name,
      :latest_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about one version of a question set. Used
    # in the ListQuestionSetVersions response.
    #
    # @!attribute [rw] version
    #   The version: DRAFT or the number of a published version.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description that you specified when you published this version.
    #   Elemental Inference doesn't return this property for DRAFT, or for
    #   a version that you published without a description.
    #   @return [String]
    #
    # @!attribute [rw] sha256
    #   The SHA-256 hash of this version, as 64 lowercase hexadecimal
    #   characters. The hash covers the name of the question set and its
    #   questions at this version.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_at
    #   For DRAFT, the time when you created the question set or last
    #   updated DRAFT. For a published version, the time when you published
    #   it.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/QuestionSetVersionSummary AWS API Documentation
    #
    class QuestionSetVersionSummary < Struct.new(
      :version,
      :description,
      :sha256,
      :last_modified_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Removes the game from an event clipping output at the action's
    # scheduled time. This is a type of ScheduleActionOperation, and the
    # output must be an event clipping output.
    #
    # @!attribute [rw] output_name
    #   The name of the output that you want to remove the game from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/RemoveClippingDataSourceConfiguration AWS API Documentation
    #
    class RemoveClippingDataSourceConfiguration < Struct.new(
      :output_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource specified in the action doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The perScene trigger, which runs the function once for each scene that
    # a contextual metadata output reports. The function runs after the
    # scene ends, with the media of that scene. To choose this trigger, set
    # perScene to an empty object.
    #
    # Specify contextualMetadataSettings to name the contextual metadata
    # output that reports the scenes. You can't use this trigger with a
    # function that references media.transcript or media.clip.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/SceneTrigger AWS API Documentation
    #
    class SceneTrigger < Aws::EmptyStructure; end

    # Describes one schedule action on a feed, including the changes it
    # makes and whether it has run yet. Elemental Inference returns this
    # structure in the ListScheduleActions operation.
    #
    # @!attribute [rw] action_name
    #   The name of the schedule action. The name is unique within the feed.
    #   @return [String]
    #
    # @!attribute [rw] start_configuration
    #   Specifies when the action runs.
    #   @return [Types::ScheduleActionStartConfiguration]
    #
    # @!attribute [rw] operations
    #   The configuration changes that the action makes to the feed.
    #   @return [Array<Types::ScheduleActionOperation>]
    #
    # @!attribute [rw] status
    #   The status of the action. Valid values are the following:
    #
    #   PENDING
    #
    #   : The action is waiting for its scheduled time.
    #
    #   COMPLETED
    #
    #   : Elemental Inference applied all the action's operations to the
    #     feed.
    #
    #   FAILED
    #
    #   : Elemental Inference couldn't apply the action.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   A description of why the action failed. Elemental Inference returns
    #   this property only when the status is FAILED.
    #   @return [Types::ScheduleActionError]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ScheduleAction AWS API Documentation
    #
    class ScheduleAction < Struct.new(
      :action_name,
      :start_configuration,
      :operations,
      :status,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the cause of a schedule action failure, including the
    # failure type and a description of what went wrong.
    #
    # @!attribute [rw] error_code
    #   The type of failure. Valid values are the following:
    #
    #   INVALID\_ACTION\_TARGET
    #
    #   : The action referred to something that didn't exist or wasn't
    #     valid at the scheduled time, for example an output that you
    #     deleted.
    #
    #   INTERNAL\_ERROR
    #
    #   : An unexpected error prevented the action from completing.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A description of the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ScheduleActionError AWS API Documentation
    #
    class ScheduleActionError < Struct.new(
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Holds one typed configuration change that a schedule action makes to a
    # feed. Each operation must contain exactly one property.
    #
    # @note ScheduleActionOperation is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ScheduleActionOperation is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ScheduleActionOperation corresponding to the set member.
    #
    # @!attribute [rw] update_output_status
    #   The operation type that enables or disables an output.
    #   @return [Types::UpdateOutputStatus]
    #
    # @!attribute [rw] update_clipping_data_source_configuration
    #   The operation type that attaches a game to an event clipping output.
    #   @return [Types::UpdateClippingDataSourceConfiguration]
    #
    # @!attribute [rw] remove_clipping_data_source_configuration
    #   The operation type that removes the game from an event clipping
    #   output.
    #   @return [Types::RemoveClippingDataSourceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ScheduleActionOperation AWS API Documentation
    #
    class ScheduleActionOperation < Struct.new(
      :update_output_status,
      :update_clipping_data_source_configuration,
      :remove_clipping_data_source_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class UpdateOutputStatus < ScheduleActionOperation; end
      class UpdateClippingDataSourceConfiguration < ScheduleActionOperation; end
      class RemoveClippingDataSourceConfiguration < ScheduleActionOperation; end
      class Unknown < ScheduleActionOperation; end
    end

    # Holds the typed start settings that determine when a schedule action
    # runs. Currently, only fixed mode is supported.
    #
    # @note ScheduleActionStartConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ScheduleActionStartConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ScheduleActionStartConfiguration corresponding to the set member.
    #
    # @!attribute [rw] fixed_mode_schedule_action_start_settings
    #   The start settings type for an action that runs once, at a fixed
    #   time.
    #   @return [Types::FixedModeScheduleActionStartSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ScheduleActionStartConfiguration AWS API Documentation
    #
    class ScheduleActionStartConfiguration < Struct.new(
      :fixed_mode_schedule_action_start_settings,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class FixedModeScheduleActionStartSettings < ScheduleActionStartConfiguration; end
      class Unknown < ScheduleActionStartConfiguration; end
    end

    # A filter for a fixture search. It is used in the filters array of a
    # SearchFixtures request.
    #
    # @!attribute [rw] name
    #   The dimension of the fixture to filter on. Valid values: COMPETITOR.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   An array of values to match in the dimension that you specified in
    #   name. You can specify up to 10 values. A fixture appears in the
    #   results if it matches at least one of these values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/SearchFilter AWS API Documentation
    #
    class SearchFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sport
    #   The sport to search for fixtures. Valid values: basketball (search
    #   for basketball fixtures), american-football (search for
    #   american-football fixtures).
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The first day of the search window, in UTC. The search includes
    #   fixtures that are scheduled on this day.
    #
    #   Specify the date in ISO 8601 format, as `YYYY-MM-DD`. For example,
    #   2026-03-14.
    #   @return [String]
    #
    # @!attribute [rw] end_date
    #   The last day of the search window, in UTC. The search includes
    #   fixtures that are scheduled on this day. Specify the date in ISO
    #   8601 format, as `YYYY-MM-DD`.
    #
    #   If you omit this parameter, Elemental Inference searches only the
    #   day that you specified in startDate. The window from startDate
    #   through endDate must not exceed seven days.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   An array of filters that narrow the results. Each filter applies to
    #   one dimension of a fixture, such as the competitor. You can specify
    #   up to 10 filters.
    #
    #   A fixture must satisfy every filter in the array in order to appear
    #   in the results. Within one filter, a fixture must match at least one
    #   of the values.
    #   @return [Array<Types::SearchFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of fixtures to return for each API request.
    #
    #   The service might return fewer fixtures than the maxResults value.
    #   When more fixtures match the search, the response also includes a
    #   nextToken value that you can use to fetch the next batch of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that identifies the batch of results that you want to see.
    #
    #   For example, you submit a SearchFixtures request with maxResults set
    #   at 5. The service returns the first batch of results (up to 5) and a
    #   nextToken value. To see the next batch of results, you submit the
    #   SearchFixtures request a second time, with the same search criteria,
    #   and specify the nextToken value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/SearchFixturesRequest AWS API Documentation
    #
    class SearchFixturesRequest < Struct.new(
      :sport,
      :start_date,
      :end_date,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fixtures
    #   An array of FixtureSummary objects, one for each fixture that
    #   matches the search. The array is empty if no fixtures match.
    #   @return [Array<Types::FixtureSummary>]
    #
    # @!attribute [rw] next_token
    #   The token that identifies the next batch of results. To see the next
    #   batch, submit the SearchFixtures request again, with the same search
    #   criteria, and specify this value in nextToken.
    #
    #   This parameter is absent when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/SearchFixturesResponse AWS API Documentation
    #
    class SearchFixturesResponse < Struct.new(
      :fixtures,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because it would exceed one or more service
    # quotas for your account. Review your service quotas and either delete
    # unused resources or request a quota increase.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service is temporarily unable to handle the request. Retry the
    # request. If the problem persists, contact AWS Support.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The perShot trigger, which runs the function once for each shot that
    # Elemental Inference detects in the video. The function runs after the
    # shot ends, with the media of that shot. To choose this trigger, set
    # perShot to an empty object. The feed must have a video input.
    #
    # You can't use this trigger with a function that references
    # media.transcript or media.clip. If the function references
    # media.contextual, specify contextualMetadataSettings.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ShotTrigger AWS API Documentation
    #
    class ShotTrigger < Aws::EmptyStructure; end

    # A type of OutputConfig, used when the output in a feed is for the
    # smart subtitling feature. Smart subtitling uses automatic speech
    # recognition (ASR) to generate live TTML subtitles from the audio in
    # your source media.
    #
    # @!attribute [rw] language
    #   The language of the audio in the source media. Elemental Inference
    #   uses this setting to optimize transcription accuracy. Specify the
    #   language using an ISO 639-2/T three-letter code, optionally with a
    #   region subtag. Supported values: eng, eng-au, eng-gb, eng-us, fra,
    #   ita, deu, spa, por.
    #   @return [String]
    #
    # @!attribute [rw] aspect_ratio
    #   The aspect ratio of the output video, specified as width and height
    #   integer values. Elemental Inference uses the aspect ratio to
    #   determine subtitle layout and line lengths.
    #   @return [Types::AspectRatio]
    #
    # @!attribute [rw] dictionary
    #   The ID of a custom dictionary to improve transcription accuracy for
    #   domain-specific terminology. Use the CreateDictionary operation to
    #   create a dictionary.
    #   @return [String]
    #
    # @!attribute [rw] profanity_filter
    #   Controls how profanity is handled in the generated subtitles. Valid
    #   values: DISABLED (no filtering, default), CENSOR (replace profanity
    #   with asterisks), DROP (remove profanity from the transcript).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/SubtitlingConfig AWS API Documentation
    #
    class SubtitlingConfig < Struct.new(
      :language,
      :aspect_ratio,
      :dictionary,
      :profanity_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # The smart subtitles output on this feed that a function reads
    # media.transcript from. Specify this structure for a function that
    # references media.transcript. That function must use a fixedInterval
    # trigger.
    #
    # If the function output is ENABLED, the output that you name must also
    # be ENABLED.
    #
    # @!attribute [rw] output_name
    #   The name of an ENABLED smart subtitles output on this feed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/SubtitlingSettings AWS API Documentation
    #
    class SubtitlingSettings < Struct.new(
      :output_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource where you want to add tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to add to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A named set of graphics-compositing templates used by the crop
    # feature, specified in the templateGroups array of a CroppingConfig.
    #
    # @!attribute [rw] name
    #   A name for the template group.
    #   @return [String]
    #
    # @!attribute [rw] template_uris
    #   An array of Amazon S3 URIs that point to the graphics-compositing
    #   templates for this group. You can specify 1 or 2 URIs. Each URI must
    #   be in the form `s3://bucket-name/key`. Elemental Inference reads
    #   these templates using the IAM role that you specify in
    #   accessRoleArn.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/TemplateGroup AWS API Documentation
    #
    class TemplateGroup < Struct.new(
      :name,
      :template_uris)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling. Too many requests
    # have been made within a given time period. Reduce the frequency of
    # requests and use exponential backoff when retrying.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/TooManyRequestException AWS API Documentation
    #
    class TooManyRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Determines when a function runs. Specify exactly one member.
    #
    # @note Trigger is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Trigger is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Trigger corresponding to the set member.
    #
    # @!attribute [rw] fixed_interval
    #   Run the function at a fixed interval of content. This is the only
    #   trigger for a function that references media.transcript. Can't be
    #   used with a function that references media.contextual.
    #   @return [Types::FixedIntervalTrigger]
    #
    # @!attribute [rw] per_shot
    #   Run the function once for each shot that Elemental Inference
    #   detects. Can't be used with a function that references
    #   media.transcript or media.clip.
    #   @return [Types::ShotTrigger]
    #
    # @!attribute [rw] per_scene
    #   Run the function once for each scene boundary that a contextual
    #   metadata output reports. Requires contextualMetadataSettings. Can't
    #   be used with a function that references media.transcript or
    #   media.clip.
    #   @return [Types::SceneTrigger]
    #
    # @!attribute [rw] per_clip
    #   Run the function once for each clip that an event clipping output
    #   detects. Requires clippingSettings. Can't be used with a function
    #   that references media.transcript or media.contextual.
    #   @return [Types::ClipTrigger]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/Trigger AWS API Documentation
    #
    class Trigger < Struct.new(
      :fixed_interval,
      :per_shot,
      :per_scene,
      :per_clip,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class FixedInterval < Trigger; end
      class PerShot < Trigger; end
      class PerScene < Trigger; end
      class PerClip < Trigger; end
      class Unknown < Trigger; end
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource where you want to delete one or more tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # Attaches a game to an event clipping output at the action's scheduled
    # time. This is a type of ScheduleActionOperation, and the output must
    # be an event clipping output.
    #
    # @!attribute [rw] output_name
    #   The name of the output that you want to attach the game to.
    #   @return [String]
    #
    # @!attribute [rw] data_source_configuration
    #   The game that you want to attach to the output.
    #   @return [Types::DataSourceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/UpdateClippingDataSourceConfiguration AWS API Documentation
    #
    class UpdateClippingDataSourceConfiguration < Struct.new(
      :output_name,
      :data_source_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the dictionary to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A new name for the dictionary. If not specified, the name is not
    #   changed.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   A new language for the dictionary. If not specified, the language is
    #   not changed.
    #   @return [String]
    #
    # @!attribute [rw] entries
    #   New dictionary entries. If not specified, the entries are not
    #   changed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/UpdateDictionaryRequest AWS API Documentation
    #
    class UpdateDictionaryRequest < Struct.new(
      :id,
      :name,
      :language,
      :entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The updated or original name of the dictionary.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the dictionary.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the dictionary.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The updated or original language of the dictionary.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the dictionary.
    #   @return [String]
    #
    # @!attribute [rw] references
    #   A list of feed IDs that reference this dictionary.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Any tags associated with the dictionary.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/UpdateDictionaryResponse AWS API Documentation
    #
    class UpdateDictionaryResponse < Struct.new(
      :name,
      :arn,
      :id,
      :language,
      :status,
      :references,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Required. You can specify the existing name (to leave it unchanged)
    #   or a new name.
    #   @return [String]
    #
    # @!attribute [rw] access_role_arn
    #   The ARN of an IAM role that Elemental Inference assumes to access
    #   resources in your account on your behalf. You can specify the
    #   existing role (to leave it unchanged) or a new role. You specify one
    #   access role for each feed.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the feed to update.
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   Required. You can specify the existing array of outputs (to leave
    #   outputs unchanged) or you can specify a new array.
    #   @return [Array<Types::UpdateOutput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/UpdateFeedRequest AWS API Documentation
    #
    class UpdateFeedRequest < Struct.new(
      :name,
      :access_role_arn,
      :id,
      :outputs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the feed.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated or original name of the feed.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the feed.
    #   @return [String]
    #
    # @!attribute [rw] data_endpoints
    #   The data endpoints of the feed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] outputs
    #   The array of outputs in the feed. You might have left this array
    #   unchanged, or you might have changed it.
    #   @return [Array<Types::GetOutput>]
    #
    # @!attribute [rw] access_role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role for the feed, after the update. This property
    #   is absent if the feed doesn't have an IAM role.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the feed.
    #   @return [String]
    #
    # @!attribute [rw] association
    #   Information about the resource that is associated with the feed, if
    #   any.
    #   @return [Types::FeedAssociation]
    #
    # @!attribute [rw] tags
    #   The tags associated with the feed.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/UpdateFeedResponse AWS API Documentation
    #
    class UpdateFeedResponse < Struct.new(
      :arn,
      :name,
      :id,
      :data_endpoints,
      :outputs,
      :access_role_arn,
      :status,
      :association,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the function.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A new name for the function. You can't change the name while the
    #   function is referenced by a feed.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   A new target for the function. You can't change the target while
    #   the function is referenced by a feed.
    #   @return [Types::FunctionTarget]
    #
    # @!attribute [rw] request_expression
    #   A new request expression for the function. Elemental Inference
    #   derives contextTypes again from the new expression. While a feed
    #   references the function, the new expression must reference the same
    #   media context as the current one.
    #   @return [String]
    #
    # @!attribute [rw] response_expression
    #   A new response expression for the function. To remove the response
    #   expression, specify an empty string. A function with a Bedrock
    #   target and eventBridgeDelivery set to ENABLED must keep a response
    #   expression.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A new description for the function.
    #   @return [String]
    #
    # @!attribute [rw] event_bridge_delivery
    #   Specifies whether Elemental Inference also sends this function's
    #   marked results to Amazon EventBridge, as described for
    #   CreateFunction. If you omit this parameter, the current value is
    #   kept. While a feed references the function, you can change this
    #   value to DISABLED, but not to ENABLED.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/UpdateFunctionRequest AWS API Documentation
    #
    class UpdateFunctionRequest < Struct.new(
      :id,
      :name,
      :target,
      :request_expression,
      :response_expression,
      :description,
      :event_bridge_delivery)
      SENSITIVE = [:request_expression, :response_expression, :description]
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the function.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The destination for the request that the function builds.
    #   @return [Types::FunctionTarget]
    #
    # @!attribute [rw] request_expression
    #   The JSONata expression that builds the request. Elemental Inference
    #   evaluates it against the media object of the feed, which holds the
    #   media and metadata that the function asked for.
    #   @return [String]
    #
    # @!attribute [rw] response_expression
    #   The JSONata expression that selects what to store. Elemental
    #   Inference evaluates it against the result as its root: the model
    #   response for a Bedrock target, or the output of the request
    #   expression for a passthrough target. If a function has no response
    #   expression, Elemental Inference stores the entire result.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the function.
    #   @return [String]
    #
    # @!attribute [rw] event_bridge_delivery
    #   Indicates whether Elemental Inference also sends this function's
    #   results to Amazon EventBridge. With ENABLED, each result that is a
    #   JSON object with a top-level `eventBridge` field set to `true` is
    #   also sent as a Function Metadata Generated event to the default
    #   event bus in your account.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the function.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the function.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the function.
    #   @return [String]
    #
    # @!attribute [rw] references
    #   The IDs of the feeds that have a function output, enabled or
    #   disabled, that references this function. While this list isn't
    #   empty, the function can't be deleted, and its name and target
    #   can't be changed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] context_types
    #   The kinds of media context that this function uses. Elemental
    #   Inference derives this field from the media paths that the request
    #   expression references; you can't set it. An empty list means that
    #   the expression references no media, so Elemental Inference supplies
    #   none at run time.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags associated with the function.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/UpdateFunctionResponse AWS API Documentation
    #
    class UpdateFunctionResponse < Struct.new(
      :name,
      :target,
      :request_expression,
      :response_expression,
      :description,
      :event_bridge_delivery,
      :arn,
      :id,
      :status,
      :references,
      :context_types,
      :tags)
      SENSITIVE = [:request_expression, :response_expression, :description]
      include Aws::Structure
    end

    # Contains configuration information about one output in a feed. It is
    # used in the UpdateFeed action.
    #
    # @!attribute [rw] name
    #   The name of the output.
    #   @return [String]
    #
    # @!attribute [rw] output_config
    #   A typed property for an output in a feed. It identifies the action
    #   for Elemental Inference to perform. It also provides a repository
    #   for the results of that action. For example, CroppingConfig output
    #   will contain the metadata for the crop feature.
    #   @return [Types::OutputConfig]
    #
    # @!attribute [rw] status
    #   The status of the output.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the output.
    #   @return [String]
    #
    # @!attribute [rw] from_association
    #   Elemental Inference originally sets this parameter to True if this
    #   output was created by AssociateFeed or to False if this output was
    #   created by CreateFeed or UpdateFeed.
    #
    #   You must not change this value. Therefore, use GetFeed to determine
    #   the current value. Then in the UpdateFeed request, if the current
    #   value is True, include this parameter with a value of True. If it's
    #   False, omit the parameter.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/UpdateOutput AWS API Documentation
    #
    class UpdateOutput < Struct.new(
      :name,
      :output_config,
      :status,
      :description,
      :from_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # Enables or disables an output at the action's scheduled time. This is
    # a type of ScheduleActionOperation.
    #
    # @!attribute [rw] output_name
    #   The name of the output that you want to enable or disable. The
    #   output must exist in the feed when you create the action.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Specifies whether the output is enabled or disabled after the action
    #   runs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/UpdateOutputStatus AWS API Documentation
    #
    class UpdateOutputStatus < Struct.new(
      :output_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the question set to update.
    #   @return [String]
    #
    # @!attribute [rw] yes_no
    #   An array of questions that Elemental Inference answers with yes or
    #   no, to replace all the yesNo questions in DRAFT. You can specify up
    #   to 50 yesNo questions. If not specified, the yesNo questions are not
    #   changed. To remove all the yesNo questions, specify an empty array.
    #   @return [Array<Types::YesNoQuestion>]
    #
    # @!attribute [rw] yes_no_per_option
    #   An array of questions that you ask about each of their options, to
    #   replace all the yesNoPerOption questions in DRAFT. You can specify
    #   up to 10 yesNoPerOption questions. If not specified, the
    #   yesNoPerOption questions are not changed. To remove all the
    #   yesNoPerOption questions, specify an empty array.
    #   @return [Array<Types::YesNoPerOptionQuestion>]
    #
    # @!attribute [rw] choose_one
    #   An array of questions that Elemental Inference answers by choosing
    #   one of their options, to replace all the chooseOne questions in
    #   DRAFT. You can specify up to 10 chooseOne questions. If not
    #   specified, the chooseOne questions are not changed. To remove all
    #   the chooseOne questions, specify an empty array.
    #   @return [Array<Types::ChooseOneQuestion>]
    #
    # @!attribute [rw] name
    #   A new name for the question set. If not specified, the name is not
    #   changed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/UpdateQuestionSetRequest AWS API Documentation
    #
    class UpdateQuestionSetRequest < Struct.new(
      :id,
      :yes_no,
      :yes_no_per_option,
      :choose_one,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] yes_no
    #   The yesNo questions in this version. Elemental Inference doesn't
    #   return this property if the version has no yesNo questions.
    #   @return [Array<Types::YesNoQuestion>]
    #
    # @!attribute [rw] yes_no_per_option
    #   The yesNoPerOption questions in this version. Elemental Inference
    #   doesn't return this property if the version has no yesNoPerOption
    #   questions.
    #   @return [Array<Types::YesNoPerOptionQuestion>]
    #
    # @!attribute [rw] choose_one
    #   The chooseOne questions in this version. Elemental Inference
    #   doesn't return this property if the version has no chooseOne
    #   questions.
    #   @return [Array<Types::ChooseOneQuestion>]
    #
    # @!attribute [rw] arn
    #   The ARN of the question set.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the question set.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated or original name of the question set.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version that this response describes. For UpdateQuestionSet, the
    #   version is always DRAFT.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the version. Elemental Inference doesn't return
    #   this property for UpdateQuestionSet, because the DRAFT version has
    #   no description.
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   The number of the highest version that you have published for this
    #   question set, even if you have since deleted that version. Elemental
    #   Inference doesn't return this property if you haven't published a
    #   version.
    #   @return [String]
    #
    # @!attribute [rw] sha256
    #   The SHA-256 hash of the DRAFT version after the update, as 64
    #   lowercase hexadecimal characters. The hash covers the name of the
    #   question set and its questions, so it changes when you rename the
    #   question set. You can specify this value in a
    #   CreateQuestionSetVersion request, so that Elemental Inference
    #   publishes DRAFT only if it hasn't changed since this update.
    #   @return [String]
    #
    # @!attribute [rw] references
    #   A list of feed IDs that reference the DRAFT version of the question
    #   set.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Any tags associated with the question set.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/UpdateQuestionSetResponse AWS API Documentation
    #
    class UpdateQuestionSetResponse < Struct.new(
      :yes_no,
      :yes_no_per_option,
      :choose_one,
      :arn,
      :id,
      :name,
      :version,
      :description,
      :latest_version,
      :sha256,
      :references,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by the service.
    # Check the error message for details about which parameter or field is
    # invalid and correct the request before retrying.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A question that you ask Elemental Inference separately about each of
    # its options. Elemental Inference answers yes or no for each option.
    # Word the question so that it fits any of the options. For example, ask
    # Is this overlay visible? with one option for each overlay. You specify
    # it in the yesNoPerOption array of a question set.
    #
    # @!attribute [rw] name
    #   A name for the question. The name must be unique among all the
    #   questions in the version, across all question types. The name can be
    #   up to 64 characters. It must start with a letter or an underscore,
    #   and can contain only the letters A-Z and a-z, the digits 0-9, and
    #   underscores.
    #   @return [String]
    #
    # @!attribute [rw] question
    #   The text of the question. The text can be up to 256 bytes, encoded
    #   in UTF-8. It can contain letters in any language, combining marks,
    #   digits, spaces, and the following characters: `. , ? ! ' " ( ) - : ;
    #   / & %`, plus the curly apostrophe and quotation marks (U+2019,
    #   U+201C, and U+201D).
    #   @return [String]
    #
    # @!attribute [rw] options
    #   The options that you ask the question about. You can specify from 1
    #   to 50 options. Each option counts as one item toward the limit of
    #   100 scored items in a version.
    #   @return [Array<Types::QuestionOption>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/YesNoPerOptionQuestion AWS API Documentation
    #
    class YesNoPerOptionQuestion < Struct.new(
      :name,
      :question,
      :options)
      SENSITIVE = []
      include Aws::Structure
    end

    # A question that you ask Elemental Inference, which answers with yes or
    # no. You specify it in the yesNo array of a question set.
    #
    # @!attribute [rw] name
    #   A name for the question. The name must be unique among all the
    #   questions in the version, across all question types. The name can be
    #   up to 64 characters. It must start with a letter or an underscore,
    #   and can contain only the letters A-Z and a-z, the digits 0-9, and
    #   underscores.
    #   @return [String]
    #
    # @!attribute [rw] question
    #   The text of the question. The text can be up to 256 bytes, encoded
    #   in UTF-8. It can contain letters in any language, combining marks,
    #   digits, spaces, and the following characters: `. , ? ! ' " ( ) - : ;
    #   / & %`, plus the curly apostrophe and quotation marks (U+2019,
    #   U+201C, and U+201D).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/YesNoQuestion AWS API Documentation
    #
    class YesNoQuestion < Struct.new(
      :name,
      :question)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

