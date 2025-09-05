# frozen_string_literal: true

# This is generated code!

module Aws::LexModelsV2
  # This module contains the types returned by client operations.
  module Types

    # <p>The active context used in the test execution.</p>
    # @!attribute name
    #   <p>The name of active context.</p>
    #   @return [String]
    class ActiveContext < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides settings that enable advanced recognition settings for slot values.</p>
    # @!attribute audio_recognition_strategy
    #   <p>Enables using the slot values as a custom vocabulary for recognizing user utterances.</p>
    #   @return [String]
    class AdvancedRecognitionSetting < Struct.new(
      :audio_recognition_strategy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The information about the agent turn in a test set execution.</p>
    # @!attribute expected_agent_prompt
    #   <p>The expected agent prompt for the agent turn in a test set execution.</p>
    #   @return [String]
    # @!attribute actual_agent_prompt
    #   <p>The actual agent prompt for the agent turn in a test set execution.</p>
    #   @return [String]
    # @!attribute error_details
    #   <p>Details about an error in an execution of a test set.</p>
    #   @return [Types::ExecutionErrorDetails]
    # @!attribute actual_elicited_slot
    #   <p>The actual elicited slot for the agent turn in a test set execution.</p>
    #   @return [String]
    # @!attribute actual_intent
    #   <p>The actual intent for the agent turn in a test set execution.</p>
    #   @return [String]
    class AgentTurnResult < Struct.new(
      :expected_agent_prompt,
      :actual_agent_prompt,
      :error_details,
      :actual_elicited_slot,
      :actual_intent,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specification of an agent turn.</p>
    # @!attribute agent_prompt
    #   <p>The agent prompt for the agent turn in a test set.</p>
    #   @return [String]
    class AgentTurnSpecification < Struct.new(
      :agent_prompt,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Filters responses returned by the
    #             <code>ListAggregatedUtterances</code> operation.</p>
    # @!attribute name
    #   <p>The name of the field to filter the utterance list.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The value to use for filtering the list of bots.</p>
    #   @return [Array<String>]
    # @!attribute operator
    #   <p>The operator to use for the filter. Specify <code>EQ</code> when the
    #               <code>ListAggregatedUtterances</code> operation should return only
    #            utterances that equal the specified value. Specify <code>CO</code> when
    #            the <code>ListAggregatedUtterances</code> operation should return
    #            utterances that contain the specified value.</p>
    #   @return [String]
    class AggregatedUtterancesFilter < Struct.new(
      :name,
      :values,
      :operator,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies attributes for sorting a list of utterances.</p>
    # @!attribute attribute
    #   <p>The utterance attribute to sort by.</p>
    #   @return [String]
    # @!attribute order
    #   <p>Specifies whether to sort the aggregated utterances in ascending or
    #            descending order.</p>
    #   @return [String]
    class AggregatedUtterancesSortBy < Struct.new(
      :attribute,
      :order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides summary information for aggregated utterances. The
    #             <code>ListAggregatedUtterances</code> operations combines all
    #          instances of the same utterance into a single aggregated
    #          summary.</p>
    # @!attribute utterance
    #   <p>The text of the utterance. If the utterance was used with the
    #               <code>RecognizeUtterance</code> operation, the text is the
    #            transcription of the audio utterance.</p>
    #   @return [String]
    # @!attribute hit_count
    #   <p>The number of times that the utterance was detected by Amazon Lex during
    #            the time period. When an utterance is detected, it activates an intent
    #            or a slot.</p>
    #   @return [Integer]
    # @!attribute missed_count
    #   <p>The number of times that the utterance was missed by Amazon Lex An
    #            utterance is missed when it doesn't activate an intent or slot.</p>
    #   @return [Integer]
    # @!attribute utterance_first_recorded_in_aggregation_duration
    #   <p>The date and time that the utterance was first recorded in the time
    #            window for aggregation. An utterance may have been sent to Amazon Lex before
    #            that time, but only utterances within the time window are
    #            counted.</p>
    #   @return [Time]
    # @!attribute utterance_last_recorded_in_aggregation_duration
    #   <p>The last date and time that an utterance was recorded in the time
    #            window for aggregation. An utterance may be sent to Amazon Lex after that
    #            time, but only utterances within the time window are counted.</p>
    #   @return [Time]
    # @!attribute contains_data_from_deleted_resources
    #   <p>Aggregated utterance data may contain utterances from versions of
    #            your bot that have since been deleted. When the aggregated contains
    #            this kind of data, this field is set to true.</p>
    #   @return [Boolean]
    class AggregatedUtterancesSummary < Struct.new(
      :utterance,
      :hit_count,
      :missed_count,
      :utterance_first_recorded_in_aggregation_duration,
      :utterance_last_recorded_in_aggregation_duration,
      :contains_data_from_deleted_resources,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the allowed input types.</p>
    # @!attribute allow_audio_input
    #   <p>Indicates whether audio input is allowed.</p>
    #   @return [Boolean]
    # @!attribute allow_dtmf_input
    #   <p>Indicates whether DTMF input is allowed.</p>
    #   @return [Boolean]
    class AllowedInputTypes < Struct.new(
      :allow_audio_input,
      :allow_dtmf_input,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the time metric, interval, and method by which to bin the analytics data.</p>
    # @!attribute name
    #   <p>Specifies the time metric by which to bin the analytics data.</p>
    #   @return [String]
    # @!attribute interval
    #   <p>Specifies the interval of time by which to bin the analytics data.</p>
    #   @return [String]
    # @!attribute order
    #   <p>Specifies whether to bin the analytics data in ascending or descending order. If this field is left blank, the default order is by the key of the bin in descending order.</p>
    #   @return [String]
    class AnalyticsBinBySpecification < Struct.new(
      :name,
      :interval,
      :order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing the criterion by which to bin the results and the value that defines that bin.</p>
    # @!attribute name
    #   <p>The criterion by which to bin the results.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the criterion that defines the bin.</p>
    #   @return [Integer]
    class AnalyticsBinKey < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains fields describing a condition by which to filter the intents. The expression may be understood as <code>name</code>
    #             <code>operator</code>
    #             <code>values</code>. For example:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>IntentName CO Book</code> – The intent name contains the string "Book."</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>BotVersion EQ 2</code> – The bot version is equal to two.</p>
    #             </li>
    #          </ul>
    #          <p>The operators that each filter supports are listed below:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>BotAlias</code> – <code>EQ</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>BotVersion</code> – <code>EQ</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LocaleId</code> – <code>EQ</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Modality</code> – <code>EQ</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Channel</code> – <code>EQ</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>SessionId</code> – <code>EQ</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>OriginatingRequestId</code> – <code>EQ</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>IntentName</code> – <code>EQ</code>, <code>CO</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>IntentEndState</code> – <code>EQ</code>, <code>CO</code>.</p>
    #             </li>
    #          </ul>
    # @!attribute name
    #   <p>The category by which to filter the intents. The descriptions for each option are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BotAlias</code> – The name of the bot alias.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BotVersion</code> – The version of the bot.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LocaleId</code> – The locale of the bot.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Modality</code> – The modality of the session with the bot (audio, DTMF, or text).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Channel</code> – The channel that the bot is integrated with.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SessionId</code> – The identifier of the session with the bot.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OriginatingRequestId</code> – The identifier of the first request in a session.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IntentName</code> – The name of the intent.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IntentEndState</code> – The final state of the intent.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute operator
    #   <p>The operation by which to filter the category. The following operations are possible:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CO</code> – Contains</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EQ</code> – Equals</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GT</code> – Greater than</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LT</code> – Less than</p>
    #               </li>
    #            </ul>
    #            <p>The operators that each filter supports are listed below:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BotAlias</code> – <code>EQ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BotVersion</code> – <code>EQ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LocaleId</code> – <code>EQ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Modality</code> – <code>EQ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Channel</code> – <code>EQ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SessionId</code> – <code>EQ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OriginatingRequestId</code> – <code>EQ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IntentName</code> – <code>EQ</code>, <code>CO</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IntentEndState</code> – <code>EQ</code>, <code>CO</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute values
    #   <p>An array containing the values of the category by which to apply the operator to filter the results. You can provide multiple values if the operator is <code>EQ</code> or <code>CO</code>. If you provide multiple values, you filter for results that equal/contain any of the values. For example, if the <code>name</code>, <code>operator</code>, and <code>values</code> fields are <code>Modality</code>, <code>EQ</code>, and <code>[Speech, Text]</code>, the operation filters for results where the modality was either <code>Speech</code> or <code>Text</code>.</p>
    #   @return [Array<String>]
    class AnalyticsIntentFilter < Struct.new(
      :name,
      :operator,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the category by which the intent analytics were grouped and a member of that category.</p>
    # @!attribute name
    #   <p>A category by which the intent analytics were grouped.</p>
    #   @return [String]
    # @!attribute value
    #   <p>A member of the category by which the intent analytics were grouped.</p>
    #   @return [String]
    class AnalyticsIntentGroupByKey < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the category by which to group the intents.</p>
    # @!attribute name
    #   <p>Specifies whether to group the intent stages by their name or their end state.</p>
    #   @return [String]
    class AnalyticsIntentGroupBySpecification < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the metric and the summary statistic you want to calculate, and the order in which to sort the results, for the intents in the bot.</p>
    # @!attribute name
    #   <p>The metric for which you want to get intent summary statistics.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Count</code> – The number of times the intent was invoked.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Success</code> – The number of times the intent succeeded.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Failure</code> – The number of times the intent failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Switched</code> – The number of times there was a switch to a different intent.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Dropped</code> – The number of times the user dropped the intent.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute statistic
    #   <p>The summary statistic to calculate.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Sum</code> – The total count for the category you provide in <code>name</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Average</code> – The total count divided by the number of intents in the category you provide in <code>name</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Max</code> – The highest count in the category you provide in <code>name</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute order
    #   <p>Specifies whether to sort the results in ascending or descending order.</p>
    #   @return [String]
    class AnalyticsIntentMetric < Struct.new(
      :name,
      :statistic,
      :order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing the results for the intent metric you requested.</p>
    # @!attribute name
    #   <p>The metric that you requested. See <a href="https://docs.aws.amazon.com/lexv2/latest/dg/analytics-key-definitions.html">Key definitions</a> for more details about these metrics.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Count</code> – The number of times the intent was invoked.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Success</code> – The number of times the intent succeeded.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Failure</code> – The number of times the intent failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Switched</code> – The number of times there was a switch to a different intent.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Dropped</code> – The number of times the user dropped the intent.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute statistic
    #   <p>The statistic that you requested to calculate.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Sum</code> – The total count for the category you provide in <code>name</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Average</code> – The total count divided by the number of intents in the category you provide in <code>name</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Max</code> – The highest count in the category you provide in <code>name</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the summary statistic for the metric that you requested.</p>
    #   @return [Float]
    class AnalyticsIntentMetricResult < Struct.new(
      :name,
      :statistic,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing information about the requested path.</p>
    # @!attribute intent_name
    #   <p>The name of the intent at the end of the requested path.</p>
    #   @return [String]
    # @!attribute intent_path
    #   <p>The path.</p>
    #   @return [String]
    # @!attribute intent_count
    #   <p>The total number of sessions that follow the given path to the given intent.</p>
    #   @return [Integer]
    # @!attribute intent_level
    #   <p>The number of intents up to and including the requested path.</p>
    #   @return [Integer]
    # @!attribute node_type
    #   <p>Specifies whether the node is the end of a path (<code>Exit</code>) or not (<code>Inner</code>).</p>
    #   @return [String]
    class AnalyticsIntentNodeSummary < Struct.new(
      :intent_name,
      :intent_path,
      :intent_count,
      :intent_level,
      :node_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing the results for the intent metrics you requested and the bin and/or group(s) they refer to, if applicable.</p>
    # @!attribute bin_keys
    #   <p>A list of objects containing the criteria you requested for binning results and the values of the bins.</p>
    #   @return [Array<Types::AnalyticsBinKey>]
    # @!attribute group_by_keys
    #   <p>A list of objects containing the criteria you requested for grouping results and the values of the groups.</p>
    #   @return [Array<Types::AnalyticsIntentGroupByKey>]
    # @!attribute metrics_results
    #   <p>A list of objects, each of which contains a metric you want to list, the statistic for the metric you want to return, and the method by which to organize the results.</p>
    #   @return [Array<Types::AnalyticsIntentMetricResult>]
    class AnalyticsIntentResult < Struct.new(
      :bin_keys,
      :group_by_keys,
      :metrics_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains fields describing a condition by which to filter the intent stages. The expression may be understood as <code>name</code>
    #             <code>operator</code>
    #             <code>values</code>. For example:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>IntentName CO Book</code> – The intent name contains the string "Book."</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>BotVersion EQ 2</code> – The bot version is equal to two.</p>
    #             </li>
    #          </ul>
    #          <p>The operators that each filter supports are listed below:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>BotAlias</code> – <code>EQ</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>BotVersion</code> – <code>EQ</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LocaleId</code> – <code>EQ</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Modality</code> – <code>EQ</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Channel</code> – <code>EQ</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>SessionId</code> – <code>EQ</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>OriginatingRequestId</code> – <code>EQ</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>IntentName</code> – <code>EQ</code>, <code>CO</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>IntentStageName</code> – <code>EQ</code>, <code>CO</code>.</p>
    #             </li>
    #          </ul>
    # @!attribute name
    #   <p>The category by which to filter the intent stages. The descriptions for each option are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BotAlias</code> – The name of the bot alias.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BotVersion</code> – The version of the bot.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LocaleId</code> – The locale of the bot.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Modality</code> – The modality of the session with the bot (audio, DTMF, or text).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Channel</code> – The channel that the bot is integrated with.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SessionId</code> – The identifier of the session with the bot.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OriginatingRequestId</code> – The identifier of the first request in a session.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IntentName</code> – The name of the intent.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IntentStageName</code> – The stage in the intent.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute operator
    #   <p>The operation by which to filter the category. The following operations are possible:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CO</code> – Contains</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EQ</code> – Equals</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GT</code> – Greater than</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LT</code> – Less than</p>
    #               </li>
    #            </ul>
    #            <p>The operators that each filter supports are listed below:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BotAlias</code> – <code>EQ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BotVersion</code> – <code>EQ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LocaleId</code> – <code>EQ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Modality</code> – <code>EQ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Channel</code> – <code>EQ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SessionId</code> – <code>EQ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OriginatingRequestId</code> – <code>EQ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IntentName</code> – <code>EQ</code>, <code>CO</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IntentStageName</code> – <code>EQ</code>, <code>CO</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute values
    #   <p>An array containing the values of the category by which to apply the operator to filter the results. You can provide multiple values if the operator is <code>EQ</code> or <code>CO</code>. If you provide multiple values, you filter for results that equal/contain any of the values. For example, if the <code>name</code>, <code>operator</code>, and <code>values</code> fields are <code>Modality</code>, <code>EQ</code>, and <code>[Speech, Text]</code>, the operation filters for results where the modality was either <code>Speech</code> or <code>Text</code>.</p>
    #   @return [Array<String>]
    class AnalyticsIntentStageFilter < Struct.new(
      :name,
      :operator,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the category by which the intent stage analytics and the values for that category were grouped.</p>
    # @!attribute name
    #   <p>A category by which the intent stage analytics were grouped.</p>
    #   @return [String]
    # @!attribute value
    #   <p>A member of the category by which the intent stage analytics were grouped.</p>
    #   @return [String]
    class AnalyticsIntentStageGroupByKey < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the category by which to group the intent stages.</p>
    # @!attribute name
    #   <p>Specifies whether to group the intent stages by their name or the intent to which the session was switched.</p>
    #   @return [String]
    class AnalyticsIntentStageGroupBySpecification < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the metric and the summary statistic you want to calculate, and the order in which to sort the results, for the intent stages across the user sessions with the bot.</p>
    # @!attribute name
    #   <p>The metric for which you want to get intent stage summary statistics. See <a href="https://docs.aws.amazon.com/lexv2/latest/dg/analytics-key-definitions.html">Key definitions</a> for more details about these metrics.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Count</code> – The number of times the intent stage occurred.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Success</code> – The number of times the intent stage succeeded.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Failure</code> – The number of times the intent stage failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Dropped</code> – The number of times the user dropped the intent stage.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Retry</code> – The number of times the bot tried to elicit a response from the user at this stage.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute statistic
    #   <p>The summary statistic to calculate.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Sum</code> – The total count for the category you provide in <code>name</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Average</code> – The total count divided by the number of intent stages in the category you provide in <code>name</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Max</code> – The highest count in the category you provide in <code>name</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute order
    #   <p>Specifies whether to sort the results in ascending or descending order of the summary statistic (<code>value</code> in the response).</p>
    #   @return [String]
    class AnalyticsIntentStageMetric < Struct.new(
      :name,
      :statistic,
      :order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing the results for an intent stage metric you requested.</p>
    # @!attribute name
    #   <p>The metric that you requested.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Count</code> – The number of times the intent stage occurred.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Success</code> – The number of times the intent stage succeeded.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Failure</code> – The number of times the intent stage failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Dropped</code> – The number of times the user dropped the intent stage.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Retry</code> – The number of times the bot tried to elicit a response from the user at this stage.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute statistic
    #   <p>The summary statistic that you requested to calculate.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Sum</code> – The total count for the category you provide in <code>name</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Average</code> – The total count divided by the number of intent stages in the category you provide in <code>name</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Max</code> – The highest count in the category you provide in <code>name</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the summary statistic for the metric that you requested.</p>
    #   @return [Float]
    class AnalyticsIntentStageMetricResult < Struct.new(
      :name,
      :statistic,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing the results for the intent stage metrics you requested and the bin and/or group they refer to, if applicable.</p>
    # @!attribute bin_keys
    #   <p>A list of objects containing the criteria you requested for binning results and the values of the bins.</p>
    #   @return [Array<Types::AnalyticsBinKey>]
    # @!attribute group_by_keys
    #   <p>A list of objects containing the criteria you requested for grouping results and the values of the bins.</p>
    #   @return [Array<Types::AnalyticsIntentStageGroupByKey>]
    # @!attribute metrics_results
    #   <p>A list of objects, each of which contains a metric you want to list, the statistic for the metric you want to return, and the method by which to organize the results.</p>
    #   @return [Array<Types::AnalyticsIntentStageMetricResult>]
    class AnalyticsIntentStageResult < Struct.new(
      :bin_keys,
      :group_by_keys,
      :metrics_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains fields describing a condition by which to filter the paths. The expression may be understood as <code>name</code>
    #             <code>operator</code>
    #             <code>values</code>. For example:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>LocaleId EQ en</code> – The locale is "en".</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>BotVersion EQ 2</code> – The bot version is equal to two.</p>
    #             </li>
    #          </ul>
    #          <p>The operators that each filter supports are listed below:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>BotAlias</code> – <code>EQ</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>BotVersion</code> – <code>EQ</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LocaleId</code> – <code>EQ</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Modality</code> – <code>EQ</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Channel</code> – <code>EQ</code>.</p>
    #             </li>
    #          </ul>
    # @!attribute name
    #   <p>The category by which to filter the intent paths. The descriptions for each option are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BotAlias</code> – The name of the bot alias.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BotVersion</code> – The version of the bot.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LocaleId</code> – The locale of the bot.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Modality</code> – The modality of the session with the bot (audio, DTMF, or text).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Channel</code> – The channel that the bot is integrated with.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute operator
    #   <p>The operation by which to filter the category. The following operations are possible:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CO</code> – Contains</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EQ</code> – Equals</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GT</code> – Greater than</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LT</code> – Less than</p>
    #               </li>
    #            </ul>
    #            <p>The operators that each filter supports are listed below:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BotAlias</code> – <code>EQ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BotVersion</code> – <code>EQ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LocaleId</code> – <code>EQ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Modality</code> – <code>EQ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Channel</code> – <code>EQ</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute values
    #   <p>An array containing the values of the category by which to apply the operator to filter the results. You can provide multiple values if the operator is <code>EQ</code> or <code>CO</code>. If you provide multiple values, you filter for results that equal/contain any of the values. For example, if the <code>name</code>, <code>operator</code>, and <code>values</code> fields are <code>Modality</code>, <code>EQ</code>, and <code>[Speech, Text]</code>, the operation filters for results where the modality was either <code>Speech</code> or <code>Text</code>.</p>
    #   @return [Array<String>]
    class AnalyticsPathFilter < Struct.new(
      :name,
      :operator,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains fields describing a condition by which to filter the sessions. The expression may be understood as <code>name</code>
    #             <code>operator</code>
    #             <code>values</code>. For example:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>LocaleId EQ en</code> – The locale is "en".</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Duration GT 200</code> – The duration is greater than 200 seconds.</p>
    #             </li>
    #          </ul>
    #          <p>The operators that each filter supports are listed below:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>BotAlias</code> – <code>EQ</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>BotVersion</code> – <code>EQ</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LocaleId</code> – <code>EQ</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Modality</code> – <code>EQ</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Channel</code> – <code>EQ</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Duration</code> – <code>EQ</code>, <code>GT</code>, <code>LT</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>conversationEndState</code> – <code>EQ</code>, <code>CO</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>SessionId</code> – <code>EQ</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>OriginatingRequestId</code> – <code>EQ</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>IntentPath</code> – <code>EQ</code>.</p>
    #             </li>
    #          </ul>
    # @!attribute name
    #   <p>The category by which to filter the sessions. The descriptions for each option are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BotAlias</code> – The name of the bot alias.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BotVersion</code> – The version of the bot.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LocaleId</code> – The locale of the bot.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Modality</code> – The modality of the session with the bot (audio, DTMF, or text).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Channel</code> – The channel that the bot is integrated with.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Duration</code> – The duration of the session.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>conversationEndState</code> – The final state of the session.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SessionId</code> – The identifier of the session with the bot.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OriginatingRequestId</code> – The identifier of the first request in a session.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IntentPath</code> – The order of intents taken in a session.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute operator
    #   <p>The operation by which to filter the category. The following operations are possible:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CO</code> – Contains</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EQ</code> – Equals</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GT</code> – Greater than</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LT</code> – Less than</p>
    #               </li>
    #            </ul>
    #            <p>The operators that each filter supports are listed below:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BotAlias</code> – <code>EQ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BotVersion</code> – <code>EQ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LocaleId</code> – <code>EQ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Modality</code> – <code>EQ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Channel</code> – <code>EQ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Duration</code> – <code>EQ</code>, <code>GT</code>, <code>LT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>conversationEndState</code> – <code>EQ</code>, <code>CO</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SessionId</code> – <code>EQ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OriginatingRequestId</code> – <code>EQ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IntentPath</code> – <code>EQ</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute values
    #   <p>An array containing the values of the category by which to apply the operator to filter the results. You can provide multiple values if the operator is <code>EQ</code> or <code>CO</code>. If you provide multiple values, you filter for results that equal/contain any of the values. For example, if the <code>name</code>, <code>operator</code>, and <code>values</code> fields are <code>Modality</code>, <code>EQ</code>, and <code>[Speech, Text]</code>, the operation filters for results where the modality was either <code>Speech</code> or <code>Text</code>.</p>
    #   @return [Array<String>]
    class AnalyticsSessionFilter < Struct.new(
      :name,
      :operator,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the category by which the session analytics were grouped and a member of that category.</p>
    # @!attribute name
    #   <p>The category by which the session analytics were grouped.</p>
    #   @return [String]
    # @!attribute value
    #   <p>A member of the category by which the session analytics were grouped.</p>
    #   @return [String]
    class AnalyticsSessionGroupByKey < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the category by which to group the sessions.</p>
    # @!attribute name
    #   <p>Specifies whether to group the session by their end state or their locale.</p>
    #   @return [String]
    class AnalyticsSessionGroupBySpecification < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the metric and the summary statistic you want to calculate, and the order in which to sort the results, for the user sessions with the bot.</p>
    # @!attribute name
    #   <p>The metric for which you want to get session summary statistics.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Count</code> – The number of sessions.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Success</code> – The number of sessions that succeeded.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Failure</code> – The number of sessions that failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Dropped</code> – The number of sessions that the user dropped.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Duration</code> – The duration of sessions.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TurnsPerSession</code> – The number of turns in the sessions.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Concurrency</code> – The number of sessions occurring in the same period of time.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute statistic
    #   <p>The summary statistic to calculate.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Sum</code> – The total count for the category you provide in <code>name</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Average</code> – The total count divided by the number of sessions in the category you provide in <code>name</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Max</code> – The highest count in the category you provide in <code>name</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute order
    #   <p>Specifies whether to sort the results in ascending or descending order.</p>
    #   @return [String]
    class AnalyticsSessionMetric < Struct.new(
      :name,
      :statistic,
      :order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing the results for a session metric you requested.</p>
    # @!attribute name
    #   <p>The metric that you requested.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Count</code> – The number of sessions.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Success</code> – The number of sessions that succeeded.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Failure</code> – The number of sessions that failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Dropped</code> – The number of sessions that the user dropped.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Duration</code> – The duration of sessions.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TurnPersession</code> – The number of turns in the sessions.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Concurrency</code> – The number of sessions occurring in the same period of time.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute statistic
    #   <p>The summary statistic that you requested to calculate.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Sum</code> – The total count for the category you provide in <code>name</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Average</code> – The total count divided by the number of sessions in the category you provide in <code>name</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Max</code> – The highest count in the category you provide in <code>name</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the summary statistic for the metric that you requested.</p>
    #   @return [Float]
    class AnalyticsSessionMetricResult < Struct.new(
      :name,
      :statistic,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing the results for the session metrics you requested and the bin and/or group(s) they refer to, if applicable.</p>
    # @!attribute bin_keys
    #   <p>A list of objects containing the criteria you requested for binning results and the values of the bins.</p>
    #   @return [Array<Types::AnalyticsBinKey>]
    # @!attribute group_by_keys
    #   <p>A list of objects containing the criteria you requested for grouping results and the values of the bins.</p>
    #   @return [Array<Types::AnalyticsSessionGroupByKey>]
    # @!attribute metrics_results
    #   <p>A list of objects, each of which contains a metric you want to list, the statistic for the metric you want to return, and the method by which to organize the results.</p>
    #   @return [Array<Types::AnalyticsSessionMetricResult>]
    class AnalyticsSessionResult < Struct.new(
      :bin_keys,
      :group_by_keys,
      :metrics_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that specifies the last used intent at the time of the utterance as an attribute to return.</p>
    # @!attribute name
    #   <p>An attribute to return. The only available attribute is the intent that the bot mapped the utterance to.</p>
    #   @return [String]
    class AnalyticsUtteranceAttribute < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing the intent that the bot mapped the utterance to.</p>
    # @!attribute last_used_intent
    #   <p>The intent that the bot mapped the utterance to.</p>
    #   @return [String]
    class AnalyticsUtteranceAttributeResult < Struct.new(
      :last_used_intent,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains fields describing a condition by which to filter the utterances. The expression may be understood as <code>name</code>
    #             <code>operator</code>
    #             <code>values</code>. For example:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>LocaleId EQ Book</code> – The locale is the string "en".</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>UtteranceText CO help</code> – The text of the utterance contains the string "help".</p>
    #             </li>
    #          </ul>
    #          <p>The operators that each filter supports are listed below:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>BotAlias</code> – <code>EQ</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>BotVersion</code> – <code>EQ</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LocaleId</code> – <code>EQ</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Modality</code> – <code>EQ</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Channel</code> – <code>EQ</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>SessionId</code> – <code>EQ</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>OriginatingRequestId</code> – <code>EQ</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>UtteranceState</code> – <code>EQ</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>UtteranceText</code> – <code>EQ</code>, <code>CO</code>.</p>
    #             </li>
    #          </ul>
    # @!attribute name
    #   <p>The category by which to filter the utterances. The descriptions for each option are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BotAlias</code> – The name of the bot alias.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BotVersion</code> – The version of the bot.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LocaleId</code> – The locale of the bot.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Modality</code> – The modality of the session with the bot (audio, DTMF, or text).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Channel</code> – The channel that the bot is integrated with.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SessionId</code> – The identifier of the session with the bot.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OriginatingRequestId</code> – The identifier of the first request in a session.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UtteranceState</code> – The state of the utterance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UtteranceText</code> – The text in the utterance.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute operator
    #   <p>The operation by which to filter the category. The following operations are possible:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CO</code> – Contains</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EQ</code> – Equals</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GT</code> – Greater than</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LT</code> – Less than</p>
    #               </li>
    #            </ul>
    #            <p>The operators that each filter supports are listed below:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BotAlias</code> – <code>EQ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BotVersion</code> – <code>EQ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LocaleId</code> – <code>EQ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Modality</code> – <code>EQ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Channel</code> – <code>EQ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SessionId</code> – <code>EQ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OriginatingRequestId</code> – <code>EQ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UtteranceState</code> – <code>EQ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UtteranceText</code> – <code>EQ</code>, <code>CO</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute values
    #   <p>An array containing the values of the category by which to apply the operator to filter the results. You can provide multiple values if the operator is <code>EQ</code> or <code>CO</code>. If you provide multiple values, you filter for results that equal/contain any of the values. For example, if the <code>name</code>, <code>operator</code>, and <code>values</code> fields are <code>Modality</code>, <code>EQ</code>, and <code>[Speech, Text]</code>, the operation filters for results where the modality was either <code>Speech</code> or <code>Text</code>.</p>
    #   @return [Array<String>]
    class AnalyticsUtteranceFilter < Struct.new(
      :name,
      :operator,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the category by which the utterance analytics were grouped and the values for that category.</p>
    # @!attribute name
    #   <p>The category by which the utterance analytics were grouped.</p>
    #   @return [String]
    # @!attribute value
    #   <p>A member of the category by which the utterance analytics were grouped.</p>
    #   @return [String]
    class AnalyticsUtteranceGroupByKey < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the category by which to group the utterances.</p>
    # @!attribute name
    #   <p>Specifies whether to group the utterances by their text or their state.</p>
    #   @return [String]
    class AnalyticsUtteranceGroupBySpecification < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the metric and the summary statistic you want to calculate, and the order in which to sort the results, for the utterances across the user sessions with the bot.</p>
    # @!attribute name
    #   <p>The metric for which you want to get utterance summary statistics.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Count</code> – The number of utterances.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Missed</code> – The number of utterances that Amazon Lex failed to recognize.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Detected</code> – The number of utterances that Amazon Lex managed to detect.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UtteranceTimestamp</code> – The date and time of the utterance.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute statistic
    #   <p>The summary statistic to calculate.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Sum</code> – The total count for the category you provide in <code>name</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Average</code> – The total count divided by the number of utterances in the category you provide in <code>name</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Max</code> – The highest count in the category you provide in <code>name</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute order
    #   <p>Specifies whether to sort the results in ascending or descending order.</p>
    #   @return [String]
    class AnalyticsUtteranceMetric < Struct.new(
      :name,
      :statistic,
      :order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing the results for the utterance metric you requested.</p>
    # @!attribute name
    #   <p>The metric that you requested.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Count</code> – The number of utterances.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Missed</code> – The number of utterances that Amazon Lex failed to recognize.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Detected</code> – The number of utterances that Amazon Lex managed to detect.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UtteranceTimestamp</code> – The date and time of the utterance.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute statistic
    #   <p>The summary statistic that you requested to calculate.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Sum</code> – The total count for the category you provide in <code>name</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Average</code> – The total count divided by the number of utterances in the category you provide in <code>name</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Max</code> – The highest count in the category you provide in <code>name</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the summary statistic for the metric that you requested.</p>
    #   @return [Float]
    class AnalyticsUtteranceMetricResult < Struct.new(
      :name,
      :statistic,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing the results for the utterance metrics you requested and the bin and/or group(s) they refer to, if applicable.</p>
    # @!attribute bin_keys
    #   <p>A list of objects containing the criteria you requested for binning results and the values of the bins.</p>
    #   @return [Array<Types::AnalyticsBinKey>]
    # @!attribute group_by_keys
    #   <p>A list of objects containing the criteria you requested for grouping results and the values of the bins.</p>
    #   @return [Array<Types::AnalyticsUtteranceGroupByKey>]
    # @!attribute metrics_results
    #   <p>A list of objects, each of which contains a metric you want to list, the statistic for the metric you want to return, and the method by which to organize the results.</p>
    #   @return [Array<Types::AnalyticsUtteranceMetricResult>]
    # @!attribute attribute_results
    #   <p>A list of objects containing information about the last used intent at the time of an utterance.</p>
    #   @return [Array<Types::AnalyticsUtteranceAttributeResult>]
    class AnalyticsUtteranceResult < Struct.new(
      :bin_keys,
      :group_by_keys,
      :metrics_results,
      :attribute_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The object containing information that associates the recommended
    #          intent/slot type with a conversation.</p>
    # @!attribute transcript
    #   <p>The content of the transcript that meets the search filter criteria.
    #            For the JSON format of the transcript, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/designing-output-format.html">Output transcript
    #               format</a>.</p>
    #   @return [String]
    class AssociatedTranscript < Struct.new(
      :transcript,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Filters to search for the associated transcript.</p>
    # @!attribute name
    #   <p>The name of the field to use for filtering. The allowed names are
    #            IntentId and SlotTypeId.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values to use to filter the transcript.</p>
    #   @return [Array<String>]
    class AssociatedTranscriptFilter < Struct.new(
      :name,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the audio and DTMF input specification.</p>
    # @!attribute start_timeout_ms
    #   <p>Time for which a bot waits before assuming that the customer isn't going to speak or press 
    #            a key. This timeout is shared between Audio and DTMF inputs.</p>
    #   @return [Integer]
    # @!attribute audio_specification
    #   <p>Specifies the settings on audio input.</p>
    #   @return [Types::AudioSpecification]
    # @!attribute dtmf_specification
    #   <p>Specifies the settings on DTMF input.</p>
    #   @return [Types::DTMFSpecification]
    class AudioAndDTMFInputSpecification < Struct.new(
      :start_timeout_ms,
      :audio_specification,
      :dtmf_specification,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The location of audio log files collected when conversation logging
    #          is enabled for a bot.</p>
    # @!attribute s3_bucket
    #   <p>The Amazon S3 bucket where the audio log files are stored. The IAM
    #            role specified in the <code>roleArn</code> parameter of the <a href="https://docs.aws.amazon.com/lexv2/latest/APIReference/API_CreateBot.html">CreateBot</a> operation must have permission to write to this
    #            bucket.</p>
    #   @return [Types::S3BucketLogDestination]
    class AudioLogDestination < Struct.new(
      :s3_bucket,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Settings for logging audio of conversations between Amazon Lex and a
    #          user. You specify whether to log audio and the Amazon S3 bucket where
    #          the audio file is stored.</p>
    # @!attribute enabled
    #   <p>Determines whether audio logging in enabled for the bot.</p>
    #   @return [Boolean]
    # @!attribute destination
    #   <p>The location of audio log files collected when conversation logging
    #            is enabled for a bot.</p>
    #   @return [Types::AudioLogDestination]
    # @!attribute selective_logging_enabled
    #   <p>The option to enable selective conversation log capture for audio.</p>
    #   @return [Boolean]
    class AudioLogSetting < Struct.new(
      :enabled,
      :destination,
      :selective_logging_enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>Specifies the audio input specifications.</p>
    # @!attribute max_length_ms
    #   <p>Time for how long Amazon Lex waits before speech input is truncated and the speech 
    #            is returned to application.</p>
    #   @return [Integer]
    # @!attribute end_timeout_ms
    #   <p>Time for which a bot waits after the customer stops speaking to assume the 
    #            utterance is finished.</p>
    #   @return [Integer]
    class AudioSpecification < Struct.new(
      :max_length_ms,
      :end_timeout_ms,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot associated with this custom vocabulary.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The identifier of the version of the bot associated with this 
    #            custom vocabulary.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale where this custom vocabulary 
    #            is used. The string must match one of the supported locales. For more 
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html"> Supported Languages </a>.</p>
    #   @return [String]
    # @!attribute custom_vocabulary_item_list
    #   <p>A list of new custom vocabulary items. Each entry must contain a phrase and
    #            can optionally contain a displayAs and/or a weight.</p>
    #   @return [Array<Types::NewCustomVocabularyItem>]
    class BatchCreateCustomVocabularyItemRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :custom_vocabulary_item_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot associated with this custom vocabulary.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The identifier of the version of the bot associated with this 
    #            custom vocabulary.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale where this custom vocabulary is used. 
    #            The string must match one of the supported locales. 
    #            For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html"> Supported Languages </a>.</p>
    #   @return [String]
    # @!attribute errors
    #   <p>A list of custom vocabulary items that failed to create during the operation.
    #            The reason for the error is contained within each error object.</p>
    #   @return [Array<Types::FailedCustomVocabularyItem>]
    # @!attribute resources
    #   <p>A list of custom vocabulary items that were 
    #            successfully created during the operation.</p>
    #   @return [Array<Types::CustomVocabularyItem>]
    class BatchCreateCustomVocabularyItemResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :errors,
      :resources,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot associated with this custom vocabulary.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The identifier of the version of the bot associated with this custom 
    #            vocabulary.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale where this custom vocabulary is 
    #            used. The string must match one of the supported locales. 
    #            For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html"> Supported Languages </a>.</p>
    #   @return [String]
    # @!attribute custom_vocabulary_item_list
    #   <p>A list of custom vocabulary items requested to be deleted.
    #            Each entry must contain the unique custom vocabulary entry identifier.</p>
    #   @return [Array<Types::CustomVocabularyEntryId>]
    class BatchDeleteCustomVocabularyItemRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :custom_vocabulary_item_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot associated with this custom vocabulary.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The identifier of the version of the bot associated with this custom 
    #            vocabulary.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale where this custom vocabulary is 
    #            used. The string must match one of the supported locales. 
    #            For more information, see Supported 
    #            languages (https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html).</p>
    #   @return [String]
    # @!attribute errors
    #   <p>A list of custom vocabulary items that failed to delete during the operation.
    #            The reason for the error is contained within each error object.</p>
    #   @return [Array<Types::FailedCustomVocabularyItem>]
    # @!attribute resources
    #   <p>A list of custom vocabulary items that were 
    #            successfully deleted during the operation.</p>
    #   @return [Array<Types::CustomVocabularyItem>]
    class BatchDeleteCustomVocabularyItemResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :errors,
      :resources,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot associated with this custom vocabulary</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The identifier of the version of the bot associated with this custom 
    #            vocabulary.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale where this custom vocabulary 
    #            is used. The string must match one of the supported locales. For more 
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html"> Supported Languages </a>.</p>
    #   @return [String]
    # @!attribute custom_vocabulary_item_list
    #   <p>A list of custom vocabulary items with updated fields. Each entry must contain a phrase
    #            and can optionally contain a displayAs and/or a weight.</p>
    #   @return [Array<Types::CustomVocabularyItem>]
    class BatchUpdateCustomVocabularyItemRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :custom_vocabulary_item_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot associated with this custom vocabulary.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The identifier of the version of the bot associated with this custom 
    #            vocabulary.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale where this custom vocabulary 
    #            is used. The string must match one of the supported locales. For more 
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html"> Supported Languages </a>.</p>
    #   @return [String]
    # @!attribute errors
    #   <p>A list of custom vocabulary items that failed to update during the operation.
    #            The reason for the error is contained within each error object.</p>
    #   @return [Array<Types::FailedCustomVocabularyItem>]
    # @!attribute resources
    #   <p>A list of custom vocabulary items that were 
    #            successfully updated during the operation.</p>
    #   @return [Array<Types::CustomVocabularyItem>]
    class BatchUpdateCustomVocabularyItemResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :errors,
      :resources,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The details on the Bedrock guardrail configuration.</p>
    # @!attribute identifier
    #   <p>The unique guardrail id for the Bedrock guardrail configuration.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The guardrail version for the Bedrock guardrail configuration.</p>
    #   @return [String]
    class BedrockGuardrailConfiguration < Struct.new(
      :identifier,
      :version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the configuration of a Amazon Bedrock knowledge base.</p>
    # @!attribute bedrock_knowledge_base_arn
    #   <p>The base ARN of the knowledge base used.</p>
    #   @return [String]
    # @!attribute exact_response
    #   <p>Specifies whether to return an exact response, or to return an answer generated by the model, using the fields you specify from the database.</p>
    #   @return [Boolean]
    # @!attribute exact_response_fields
    #   <p>Contains the names of the fields used for an exact response to the user.</p>
    #   @return [Types::BedrockKnowledgeStoreExactResponseFields]
    class BedrockKnowledgeStoreConfiguration < Struct.new(
      :bedrock_knowledge_base_arn,
      :exact_response,
      :exact_response_fields,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:exact_response] = false unless options.key?(:exact_response)
        super
      end
    end

    # <p>The exact response fields given by the Bedrock knowledge store.</p>
    # @!attribute answer_field
    #   <p>The answer field used for an exact response from Bedrock Knowledge Store.</p>
    #   @return [String]
    class BedrockKnowledgeStoreExactResponseFields < Struct.new(
      :answer_field,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the Amazon Bedrock model used to interpret the prompt used in descriptive bot building.</p>
    # @!attribute model_arn
    #   <p>The ARN of the foundation model used in descriptive bot building.</p>
    #   @return [String]
    # @!attribute guardrail
    #   <p>The guardrail configuration in the Bedrock model specification details.</p>
    #   @return [Types::BedrockGuardrailConfiguration]
    # @!attribute trace_status
    #   <p>The Bedrock trace status in the Bedrock model specification details.</p>
    #   @return [String]
    # @!attribute custom_prompt
    #   <p>The custom prompt used in the Bedrock model specification details.</p>
    #   @return [String]
    class BedrockModelSpecification < Struct.new(
      :model_arn,
      :guardrail,
      :trace_status,
      :custom_prompt,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a record of an event that affects a bot alias. For example,
    #          when the version of a bot that the alias points to changes.</p>
    # @!attribute bot_version
    #   <p>The version of the bot that was used in the event. </p>
    #   @return [String]
    # @!attribute start_date
    #   <p>The date and time that the event started.</p>
    #   @return [Time]
    # @!attribute end_date
    #   <p>The date and time that the event ended.</p>
    #   @return [Time]
    class BotAliasHistoryEvent < Struct.new(
      :bot_version,
      :start_date,
      :end_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies settings that are unique to a locale. For example, you can
    #          use different Lambda function depending on the bot's locale.</p>
    # @!attribute enabled
    #   <p>Determines whether the locale is enabled for the bot. If the value
    #            is <code>false</code>, the locale isn't available for use.</p>
    #   @return [Boolean]
    # @!attribute code_hook_specification
    #   <p>Specifies the Lambda function that should be used in the
    #            locale.</p>
    #   @return [Types::CodeHookSpecification]
    class BotAliasLocaleSettings < Struct.new(
      :enabled,
      :code_hook_specification,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>Contains information about all the aliases replication statuses applicable for global resiliency.</p>
    # @!attribute bot_alias_id
    #   <p>The bot alias ID for all the alias bot replications.</p>
    #   @return [String]
    # @!attribute bot_alias_replication_status
    #   <p>The replication statuses for all the alias bot replications.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The bot version for all the alias bot replications.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The creation time and date for all the alias bot replications.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The last time and date updated for all the alias bot replications.</p>
    #   @return [Time]
    # @!attribute failure_reasons
    #   <p>The reasons for failure for the aliases bot replications.</p>
    #   @return [Array<String>]
    class BotAliasReplicaSummary < Struct.new(
      :bot_alias_id,
      :bot_alias_replication_status,
      :bot_version,
      :creation_date_time,
      :last_updated_date_time,
      :failure_reasons,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about bot aliases returned from the <a href="https://docs.aws.amazon.com/lexv2/latest/APIReference/API_ListBotAliases.html">ListBotAliases</a> operation.</p>
    # @!attribute bot_alias_id
    #   <p>The unique identifier assigned to the bot alias. You can use this ID
    #            to get detailed information about the alias using the <a href="https://docs.aws.amazon.com/lexv2/latest/APIReference/API_DescribeBotAlias.html">DescribeBotAlias</a> operation.</p>
    #   @return [String]
    # @!attribute bot_alias_name
    #   <p>The name of the bot alias.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the bot alias.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot that the bot alias references.</p>
    #   @return [String]
    # @!attribute bot_alias_status
    #   <p>The current state of the bot alias. If the status is
    #            <code>Available</code>, the alias is ready for use.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>A timestamp of the date and time that the bot alias was
    #            created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>A timestamp of the date and time that the bot alias was last
    #            updated.</p>
    #   @return [Time]
    class BotAliasSummary < Struct.new(
      :bot_alias_id,
      :bot_alias_name,
      :description,
      :bot_version,
      :bot_alias_status,
      :creation_date_time,
      :last_updated_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The target Amazon S3 location for the test set execution using a bot alias.</p>
    # @!attribute bot_id
    #   <p>The bot Id of the bot alias used in the test set execution.</p>
    #   @return [String]
    # @!attribute bot_alias_id
    #   <p>The bot alias Id of the bot alias used in the test set execution.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The locale Id of the bot alias used in the test set execution.</p>
    #   @return [String]
    class BotAliasTestExecutionTarget < Struct.new(
      :bot_id,
      :bot_alias_id,
      :locale_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the identity of a the bot that was exported.</p>
    # @!attribute bot_id
    #   <p>The identifier of the bot assigned by Amazon Lex.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot that was exported. This will be either
    #               <code>DRAFT</code> or the version number.</p>
    #   @return [String]
    class BotExportSpecification < Struct.new(
      :bot_id,
      :bot_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Filters the responses returned by the <code>ListBots</code>
    #          operation.</p>
    # @!attribute name
    #   <p>The name of the field to filter the list of bots.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The value to use for filtering the list of bots.</p>
    #   @return [Array<String>]
    # @!attribute operator
    #   <p>The operator to use for the filter. Specify <code>EQ</code> when the
    #            <code>ListBots</code> operation should return only aliases that
    #            equal the specified value. Specify <code>CO</code> when the
    #            <code>ListBots</code> operation should return aliases that contain
    #            the specified value.</p>
    #   @return [String]
    class BotFilter < Struct.new(
      :name,
      :values,
      :operator,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the bot parameters required for importing a bot.</p>
    # @!attribute bot_name
    #   <p>The name that Amazon Lex should use for the bot.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used to build and run
    #            the bot.</p>
    #   @return [String]
    # @!attribute data_privacy
    #   <p>By default, data stored by Amazon Lex is encrypted. The
    #               <code>DataPrivacy</code> structure provides settings that determine
    #            how Amazon Lex handles special cases of securing the data for your bot.
    #         </p>
    #   @return [Types::DataPrivacy]
    # @!attribute error_log_settings
    #   <p>Allows you to configure destinations where error logs will be published during the bot import process.</p>
    #   @return [Types::ErrorLogSettings]
    # @!attribute idle_session_ttl_in_seconds
    #   <p>The time, in seconds, that Amazon Lex should keep information about a
    #            user's conversation with the bot. </p>
    #            <p>A user interaction remains active for the amount of time specified.
    #            If no conversation occurs during this time, the session expires and
    #            Amazon Lex deletes any data provided before the timeout.</p>
    #            <p>You can specify between 60 (1 minute) and 86,400 (24 hours)
    #            seconds.</p>
    #   @return [Integer]
    # @!attribute bot_tags
    #   <p>A list of tags to add to the bot. You can only add tags when you
    #            import a bot. You can't use the <code>UpdateBot</code> operation to
    #            update tags. To update tags, use the <code>TagResource</code>
    #            operation.</p>
    #   @return [Hash<String, String>]
    # @!attribute test_bot_alias_tags
    #   <p>A list of tags to add to the test alias for a bot. You can only add
    #            tags when you import a bot. You can't use the <code>UpdateAlias</code>
    #            operation to update tags. To update tags on the test alias, use the
    #               <code>TagResource</code> operation.</p>
    #   @return [Hash<String, String>]
    class BotImportSpecification < Struct.new(
      :bot_name,
      :role_arn,
      :data_privacy,
      :error_log_settings,
      :idle_session_ttl_in_seconds,
      :bot_tags,
      :test_bot_alias_tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the bot locale parameters required for exporting a bot
    #          locale.</p>
    # @!attribute bot_id
    #   <p>The identifier of the bot to create the locale for.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot to export.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale to export. The string must
    #            match one of the locales in the bot.</p>
    #   @return [String]
    class BotLocaleExportSpecification < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Filters responses returned by the <code>ListBotLocales</code>
    #          operation.</p>
    # @!attribute name
    #   <p>The name of the field to filter the list of bots.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The value to use for filtering the list of bots.</p>
    #   @return [Array<String>]
    # @!attribute operator
    #   <p>The operator to use for the filter. Specify <code>EQ</code> when the
    #            <code>ListBotLocales</code> operation should return only aliases
    #            that equal the specified value. Specify <code>CO</code> when the
    #            <code>ListBotLocales</code> operation should return aliases that
    #            contain the specified value.</p>
    #   @return [String]
    class BotLocaleFilter < Struct.new(
      :name,
      :values,
      :operator,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about an event that occurred affecting the bot
    #             locale.</p>
    # @!attribute event
    #   <p>A description of the event that occurred.</p>
    #   @return [String]
    # @!attribute event_date
    #   <p>A timestamp of the date and time that the event occurred.</p>
    #   @return [Time]
    class BotLocaleHistoryEvent < Struct.new(
      :event,
      :event_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the bot locale parameters required for importing a bot
    #          locale.</p>
    # @!attribute bot_id
    #   <p>The identifier of the bot to import the locale to.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot to import the locale to. This can only be the
    #               <code>DRAFT</code> version of the bot.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale that the bot will be used
    #            in. The string must match one of the supported locales. All of the
    #            intents, slot types, and slots used in the bot must have the same
    #            locale. For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported
    #            languages</a>.</p>
    #   @return [String]
    # @!attribute nlu_intent_confidence_threshold
    #   <p>Determines the threshold where Amazon Lex will insert the
    #               <code>AMAZON.FallbackIntent</code>,
    #               <code>AMAZON.KendraSearchIntent</code>, or both when returning
    #            alternative intents. <code>AMAZON.FallbackIntent</code> and
    #               <code>AMAZON.KendraSearchIntent</code> are only inserted if they are
    #            configured for the bot. </p>
    #            <p>For example, suppose a bot is configured with the confidence
    #            threshold of 0.80 and the <code>AMAZON.FallbackIntent</code>. Amazon
    #            Lex returns three alternative intents with the following confidence
    #            scores: IntentA (0.70), IntentB (0.60), IntentC (0.50). The response
    #            from the <code>PostText</code> operation would be:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AMAZON.FallbackIntent</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IntentA</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IntentB</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IntentC</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Float]
    # @!attribute voice_settings
    #   <p>Defines settings for using an Amazon Polly voice to communicate with a
    #            user.</p>
    #            <p>Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>standard</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>neural</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>long-form</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>generative</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Types::VoiceSettings]
    class BotLocaleImportSpecification < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :nlu_intent_confidence_threshold,
      :voice_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies attributes for sorting a list of bot locales.</p>
    # @!attribute attribute
    #   <p>The bot locale attribute to sort by.</p>
    #   @return [String]
    # @!attribute order
    #   <p>Specifies whether to sort the bot locales in ascending or descending
    #            order.</p>
    #   @return [String]
    class BotLocaleSortBy < Struct.new(
      :attribute,
      :order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about bot locales returned by the <a href="https://docs.aws.amazon.com/lexv2/latest/APIReference/API_ListBotLocales.html">ListBotLocales</a> operation.</p>
    # @!attribute locale_id
    #   <p>The language and locale of the bot locale.</p>
    #   @return [String]
    # @!attribute locale_name
    #   <p>The name of the bot locale.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the bot locale.</p>
    #   @return [String]
    # @!attribute bot_locale_status
    #   <p>The current status of the bot locale. When the status is
    #            <code>Built</code> the locale is ready for use.</p>
    #   @return [String]
    # @!attribute last_updated_date_time
    #   <p>A timestamp of the date and time that the bot locale was last
    #            updated.</p>
    #   @return [Time]
    # @!attribute last_build_submitted_date_time
    #   <p>A timestamp of the date and time that the bot locale was last
    #            built.</p>
    #   @return [Time]
    class BotLocaleSummary < Struct.new(
      :locale_id,
      :locale_name,
      :description,
      :bot_locale_status,
      :last_updated_date_time,
      :last_build_submitted_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A bot that is a member of a network of bots.</p>
    # @!attribute bot_member_id
    #   <p>The unique ID of a bot that is a member of this network of bots.</p>
    #   @return [String]
    # @!attribute bot_member_name
    #   <p>The unique name of a bot that is a member of this network of bots.</p>
    #   @return [String]
    # @!attribute bot_member_alias_id
    #   <p>The alias ID of a bot that is a member of this network of bots.</p>
    #   @return [String]
    # @!attribute bot_member_alias_name
    #   <p>The alias name of a bot that is a member of this network of bots.</p>
    #   @return [String]
    # @!attribute bot_member_version
    #   <p>The version of a bot that is a member of this network of bots.</p>
    #   @return [String]
    class BotMember < Struct.new(
      :bot_member_id,
      :bot_member_name,
      :bot_member_alias_id,
      :bot_member_alias_name,
      :bot_member_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A statistical summary of the bot recommendation results.</p>
    # @!attribute intents
    #   <p>Statistical information about about the intents associated with the
    #               bot recommendation results.</p>
    #   @return [Types::IntentStatistics]
    # @!attribute slot_types
    #   <p>Statistical information about the slot types associated with the bot
    #               recommendation results.</p>
    #   @return [Types::SlotTypeStatistics]
    class BotRecommendationResultStatistics < Struct.new(
      :intents,
      :slot_types,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The object representing the URL of the bot definition, the URL of
    #             the associated transcript, and a statistical summary of the bot
    #             recommendation results.</p>
    # @!attribute bot_locale_export_url
    #   <p>The presigned URL link of the recommended bot definition.</p>
    #   @return [String]
    # @!attribute associated_transcripts_url
    #   <p>The presigned url link of the associated transcript.</p>
    #   @return [String]
    # @!attribute statistics
    #   <p>The statistical summary of the bot recommendation results.</p>
    #   @return [Types::BotRecommendationResultStatistics]
    class BotRecommendationResults < Struct.new(
      :bot_locale_export_url,
      :associated_transcripts_url,
      :statistics,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the bot recommendation.</p>
    # @!attribute bot_recommendation_status
    #   <p>The status of the bot recommendation.</p>
    #            <p>If the status is Failed, then the reasons for the failure are listed
    #            in the failureReasons field. </p>
    #   @return [String]
    # @!attribute bot_recommendation_id
    #   <p>The unique identifier of the bot recommendation to be
    #            updated.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>A timestamp of the date and time that the bot recommendation was
    #            created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>A timestamp of the date and time that the bot recommendation was
    #            last updated.</p>
    #   @return [Time]
    class BotRecommendationSummary < Struct.new(
      :bot_recommendation_status,
      :bot_recommendation_id,
      :creation_date_time,
      :last_updated_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about all the replication statuses applicable for global resiliency.</p>
    # @!attribute replica_region
    #   <p>The replica region used in the replication statuses summary.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The creation time and date for the replicated bots.</p>
    #   @return [Time]
    # @!attribute bot_replica_status
    #   <p>The operation status for the replicated bot applicable.</p>
    #   @return [String]
    # @!attribute failure_reasons
    #   <p>The reasons for the failure for the replicated bot.</p>
    #   @return [Array<String>]
    class BotReplicaSummary < Struct.new(
      :replica_region,
      :creation_date_time,
      :bot_replica_status,
      :failure_reasons,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies attributes for sorting a list of bots.</p>
    # @!attribute attribute
    #   <p>The attribute to use to sort the list of bots.</p>
    #   @return [String]
    # @!attribute order
    #   <p>The order to sort the list. You can choose ascending or
    #            descending.</p>
    #   @return [String]
    class BotSortBy < Struct.new(
      :attribute,
      :order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a bot returned by the <a href="https://docs.aws.amazon.com/lexv2/latest/APIReference/API_ListBots.html">ListBots</a> operation.</p>
    # @!attribute bot_id
    #   <p>The unique identifier assigned to the bot. Use this ID to get
    #            detailed information about the bot with the <a href="https://docs.aws.amazon.com/lexv2/latest/APIReference/API_DescribeBot.html">DescribeBot</a> operation.</p>
    #   @return [String]
    # @!attribute bot_name
    #   <p>The name of the bot.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the bot.</p>
    #   @return [String]
    # @!attribute bot_status
    #   <p>The current status of the bot. When the status is
    #            <code>Available</code> the bot is ready for use.</p>
    #   @return [String]
    # @!attribute latest_bot_version
    #   <p>The latest numerical version in use for the bot.</p>
    #   @return [String]
    # @!attribute last_updated_date_time
    #   <p>The date and time that the bot was last updated.</p>
    #   @return [Time]
    # @!attribute bot_type
    #   <p>The type of the bot.</p>
    #   @return [String]
    class BotSummary < Struct.new(
      :bot_id,
      :bot_name,
      :description,
      :bot_status,
      :latest_bot_version,
      :last_updated_date_time,
      :bot_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The version of a bot used for a bot locale.</p>
    # @!attribute source_bot_version
    #   <p>The version of a bot used for a bot locale.</p>
    #   @return [String]
    class BotVersionLocaleDetails < Struct.new(
      :source_bot_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The sort category for the version replicated bots.</p>
    # @!attribute attribute
    #   <p>The attribute of the sort category for the version replicated bots.</p>
    #   @return [String]
    # @!attribute order
    #   <p>The order of the sort category for the version replicated bots.</p>
    #   @return [String]
    class BotVersionReplicaSortBy < Struct.new(
      :attribute,
      :order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information for all the version replication statuses applicable for Global resiliency.</p>
    # @!attribute bot_version
    #   <p>The bot version for the summary information for all the version replication statuses.</p>
    #   @return [String]
    # @!attribute bot_version_replication_status
    #   <p>The version replication status for all the replicated bots.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The creation date and time of the replication status for all the replicated bots.</p>
    #   @return [Time]
    # @!attribute failure_reasons
    #   <p>The reasons for replication failure for all the replicated bots.</p>
    #   @return [Array<String>]
    class BotVersionReplicaSummary < Struct.new(
      :bot_version,
      :bot_version_replication_status,
      :creation_date_time,
      :failure_reasons,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies attributes for sorting a list of bot versions.</p>
    # @!attribute attribute
    #   <p>The attribute to use to sort the list of versions.</p>
    #   @return [String]
    # @!attribute order
    #   <p>The order to sort the list. You can specify ascending or descending
    #            order.</p>
    #   @return [String]
    class BotVersionSortBy < Struct.new(
      :attribute,
      :order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a bot version returned by the <a href="https://docs.aws.amazon.com/lexv2/latest/APIReference/API_ListBotVersions.html">ListBotVersions</a> operation.</p>
    # @!attribute bot_name
    #   <p>The name of the bot associated with the version.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The numeric version of the bot, or <code>DRAFT</code> to indicate
    #            that this is the version of the bot that can be updated..</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the version.</p>
    #   @return [String]
    # @!attribute bot_status
    #   <p>The status of the bot. When the status is available, the version of
    #            the bot is ready for use.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>A timestamp of the date and time that the version was
    #            created.</p>
    #   @return [Time]
    class BotVersionSummary < Struct.new(
      :bot_name,
      :bot_version,
      :description,
      :bot_status,
      :creation_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot to build. The identifier is returned in
    #            the response from the <a href="https://docs.aws.amazon.com/lexv2/latest/APIReference/API_CreateBot.html">CreateBot</a> operation.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot to build. This can only be the draft version
    #            of the bot.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale that the bot will be used
    #            in. The string must match one of the supported locales. All of the
    #            intents, slot types, and slots used in the bot must have the same
    #            locale. For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #   @return [String]
    class BuildBotLocaleRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the specified bot.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot that was built. This is only the draft
    #            version of the bot.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The language and locale specified of where the bot can be
    #            used.</p>
    #   @return [String]
    # @!attribute bot_locale_status
    #   <p>The bot's build status. When the status is
    #               <code>ReadyExpressTesting</code> you can test the bot using the
    #            utterances defined for the intents and slot types. When the status is
    #               <code>Built</code>, the bot is ready for use and can be tested using
    #            any utterance.</p>
    #   @return [String]
    # @!attribute last_build_submitted_date_time
    #   <p>A timestamp indicating the date and time that the bot was last built
    #            for this locale.</p>
    #   @return [Time]
    class BuildBotLocaleResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_locale_status,
      :last_build_submitted_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains specifications about the Amazon Lex build time generative AI capabilities from Amazon Bedrock that you can turn on for your bot.</p>
    # @!attribute descriptive_bot_builder
    #   <p>An object containing specifications for the descriptive bot building feature.</p>
    #   @return [Types::DescriptiveBotBuilderSpecification]
    # @!attribute sample_utterance_generation
    #   <p>Contains specifications for the sample utterance generation feature.</p>
    #   @return [Types::SampleUtteranceGenerationSpecification]
    class BuildtimeSettings < Struct.new(
      :descriptive_bot_builder,
      :sample_utterance_generation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies attributes for sorting a list of built-in intents.</p>
    # @!attribute attribute
    #   <p>The attribute to use to sort the list of built-in intents.</p>
    #   @return [String]
    # @!attribute order
    #   <p>The order to sort the list. You can specify ascending or descending
    #            order.</p>
    #   @return [String]
    class BuiltInIntentSortBy < Struct.new(
      :attribute,
      :order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides summary information about a built-in intent for the <a href="https://docs.aws.amazon.com/lexv2/latest/APIReference/API_ListBuiltInIntents.html"> ListBuiltInIntents </a> operation.</p>
    # @!attribute intent_signature
    #   <p>The signature of the built-in intent. Use this to specify the parent
    #            intent of a derived intent.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the intent.</p>
    #   @return [String]
    class BuiltInIntentSummary < Struct.new(
      :intent_signature,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies attributes for sorting a list of built-in slot
    #          types.</p>
    # @!attribute attribute
    #   <p>The attribute to use to sort the list of built-in intents.</p>
    #   @return [String]
    # @!attribute order
    #   <p>The order to sort the list. You can choose ascending or
    #            descending.</p>
    #   @return [String]
    class BuiltInSlotTypeSortBy < Struct.new(
      :attribute,
      :order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides summary information about a built-in slot type for the
    #          <a href="https://docs.aws.amazon.com/lexv2/latest/APIReference/API_ListBuiltInSlotTypes.html"> ListBuiltInSlotTypes </a>
    #          operation.</p>
    # @!attribute slot_type_signature
    #   <p>The signature of the built-in slot type. Use this to specify the
    #            parent slot type of a derived slot type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the built-in slot type.</p>
    #   @return [String]
    class BuiltInSlotTypeSummary < Struct.new(
      :slot_type_signature,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a button to use on a response card used to gather slot
    #          values from a user.</p>
    # @!attribute text
    #   <p>The text that appears on the button. Use this to tell the user what
    #            value is returned when they choose this button.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value returned to Amazon Lex when the user chooses this button. This
    #            must be one of the slot values configured for the slot.</p>
    #   @return [String]
    class Button < Struct.new(
      :text,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon CloudWatch Logs log group where the text and metadata logs are
    #          delivered. The log group must exist before you enable logging.</p>
    # @!attribute cloud_watch_log_group_arn
    #   <p>The Amazon Resource Name (ARN) of the log group where text and
    #            metadata logs are delivered.</p>
    #   @return [String]
    # @!attribute log_prefix
    #   <p>The prefix of the log stream name within the log group that you
    #            specified </p>
    #   @return [String]
    class CloudWatchLogGroupLogDestination < Struct.new(
      :cloud_watch_log_group_arn,
      :log_prefix,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about code hooks that Amazon Lex calls during a
    #          conversation.</p>
    # @!attribute lambda_code_hook
    #   <p>Specifies a Lambda function that verifies requests to a bot or
    #            fulfills the user's request to a bot.</p>
    #   @return [Types::LambdaCodeHook]
    class CodeHookSpecification < Struct.new(
      :lambda_code_hook,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A composite slot is a combination of two or more slots 
    #        that capture multiple pieces of information in a single user input.</p>
    # @!attribute sub_slots
    #   <p>Subslots in the composite slot.</p>
    #   @return [Array<Types::SubSlotTypeComposition>]
    class CompositeSlotTypeSetting < Struct.new(
      :sub_slots,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides an expression that evaluates to true or false. </p>
    # @!attribute expression_string
    #   <p>The expression string that is evaluated. </p>
    #   @return [String]
    class Condition < Struct.new(
      :expression_string,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A set of actions that Amazon Lex should run if the condition
    #          is matched.</p>
    # @!attribute name
    #   <p>The name of the branch. </p>
    #   @return [String]
    # @!attribute condition
    #   <p>Contains the expression to evaluate. If the condition is true, the
    #            branch's actions are taken.</p>
    #   @return [Types::Condition]
    # @!attribute next_step
    #   <p>The next step in the conversation.</p>
    #   @return [Types::DialogState]
    # @!attribute response
    #   <p>Specifies a list of message groups that Amazon Lex uses to respond the
    #            user input.</p>
    #   @return [Types::ResponseSpecification]
    class ConditionalBranch < Struct.new(
      :name,
      :condition,
      :next_step,
      :response,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a list of conditional branches. Branches are evaluated in
    #          the order that they are entered in the list. The first branch with a
    #          condition that evaluates to true is executed. The last branch in the
    #          list is the default branch. The default branch should not have any condition
    #          expression. The default branch is executed if no other branch has a
    #          matching condition.</p>
    # @!attribute active
    #   <p>Determines whether a conditional branch is active. When
    #               <code>active</code> is false, the conditions are not
    #            evaluated.</p>
    #   @return [Boolean]
    # @!attribute conditional_branches
    #   <p>A list of conditional branches. A conditional branch is made up of a
    #            condition, a response and a next step. The response and next step are
    #            executed when the condition is true.</p>
    #   @return [Array<Types::ConditionalBranch>]
    # @!attribute default_branch
    #   <p>The conditional branch that should be followed when the conditions
    #            for other branches are not satisfied. A conditional branch is made up
    #            of a condition, a response and a next step.</p>
    #   @return [Types::DefaultConditionalBranch]
    class ConditionalSpecification < Struct.new(
      :active,
      :conditional_branches,
      :default_branch,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The action that you tried to perform couldn't be completed because
    #          the resource is in a conflicting state. For example, deleting a bot
    #          that is in the CREATING state. Try your request again. </p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The item listing the evaluation of intent level success or failure.</p>
    # @!attribute intent_name
    #   <p>The intent name used in the evaluation of intent level success or failure.</p>
    #   @return [String]
    # @!attribute match_result
    #   <p>The number of times the specific intent is used in the evaluation of intent level
    #         success or failure.</p>
    #   @return [String]
    class ConversationLevelIntentClassificationResultItem < Struct.new(
      :intent_name,
      :match_result,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The conversation level details of the conversation used in the test set.</p>
    # @!attribute end_to_end_result
    #   <p>The success or failure of the streaming of the conversation.</p>
    #   @return [String]
    # @!attribute speech_transcription_result
    #   <p>The speech transcription success or failure details of the conversation.</p>
    #   @return [String]
    class ConversationLevelResultDetail < Struct.new(
      :end_to_end_result,
      :speech_transcription_result,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The slots used for the slot resolution in the conversation.</p>
    # @!attribute intent_name
    #   <p>The intents used in the slots list for the slot resolution details.</p>
    #   @return [String]
    # @!attribute slot_name
    #   <p>The slot name in the slots list for the slot resolution details.</p>
    #   @return [String]
    # @!attribute match_result
    #   <p>The number of matching slots used in the slots listings for the slot resolution evaluation.</p>
    #   @return [String]
    class ConversationLevelSlotResolutionResultItem < Struct.new(
      :intent_name,
      :slot_name,
      :match_result,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The test result evaluation item at the conversation level.</p>
    # @!attribute conversation_id
    #   <p>The conversation Id of the test result evaluation item.</p>
    #   @return [String]
    # @!attribute end_to_end_result
    #   <p>The end-to-end success or failure of the test result evaluation item.</p>
    #   @return [String]
    # @!attribute speech_transcription_result
    #   <p>The speech transcription success or failure of the test result evaluation item.</p>
    #   @return [String]
    # @!attribute intent_classification_results
    #   <p>The intent classification of the test result evaluation item.</p>
    #   @return [Array<Types::ConversationLevelIntentClassificationResultItem>]
    # @!attribute slot_resolution_results
    #   <p>The slot success or failure of the test result evaluation item.</p>
    #   @return [Array<Types::ConversationLevelSlotResolutionResultItem>]
    class ConversationLevelTestResultItem < Struct.new(
      :conversation_id,
      :end_to_end_result,
      :speech_transcription_result,
      :intent_classification_results,
      :slot_resolution_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The test set results data at the conversation level.</p>
    # @!attribute items
    #   <p>The item list in the test set results data at the conversation level.</p>
    #   @return [Array<Types::ConversationLevelTestResultItem>]
    class ConversationLevelTestResults < Struct.new(
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The selection to filter the test set results data at the conversation level.</p>
    # @!attribute end_to_end_result
    #   <p>The selection of matched or mismatched end-to-end status to filter test set results data
    #         at the conversation level.</p>
    #   @return [String]
    class ConversationLevelTestResultsFilterBy < Struct.new(
      :end_to_end_result,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configures conversation logging that saves audio, text, and metadata
    #          for the conversations with your users.</p>
    # @!attribute text_log_settings
    #   <p>The Amazon CloudWatch Logs settings for logging text and metadata.</p>
    #   @return [Array<Types::TextLogSetting>]
    # @!attribute audio_log_settings
    #   <p>The Amazon S3 settings for logging audio to an S3 bucket.</p>
    #   @return [Array<Types::AudioLogSetting>]
    class ConversationLogSettings < Struct.new(
      :text_log_settings,
      :audio_log_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The data source that uses conversation logs.</p>
    # @!attribute bot_id
    #   <p>The bot Id from the conversation logs.</p>
    #   @return [String]
    # @!attribute bot_alias_id
    #   <p>The bot alias Id from the conversation logs.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The locale Id of the conversation log.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>The filter for the data source of the conversation log.</p>
    #   @return [Types::ConversationLogsDataSourceFilterBy]
    class ConversationLogsDataSource < Struct.new(
      :bot_id,
      :bot_alias_id,
      :locale_id,
      :filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The selected data source to filter the conversation log.</p>
    # @!attribute start_time
    #   <p>The start time for the conversation log.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time for the conversation log.</p>
    #   @return [Time]
    # @!attribute input_mode
    #   <p>The selection to filter by input mode for the conversation logs. </p>
    #   @return [String]
    class ConversationLogsDataSourceFilterBy < Struct.new(
      :start_time,
      :end_time,
      :input_mode,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_alias_name
    #   <p>The alias to create. The name must be unique for the bot.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the alias. Use this description to help identify
    #            the alias.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot that this alias points to. You can use the
    #               <a href="https://docs.aws.amazon.com/lexv2/latest/APIReference/API_UpdateBotAlias.html">UpdateBotAlias</a> operation to change the
    #            bot version associated with the alias.</p>
    #   @return [String]
    # @!attribute bot_alias_locale_settings
    #   <p>Maps configuration information to a specific locale. You can use
    #            this parameter to specify a specific Lambda function to run different
    #            functions in different locales.</p>
    #   @return [Hash<String, Types::BotAliasLocaleSettings>]
    # @!attribute conversation_log_settings
    #   <p>Specifies whether Amazon Lex logs text and audio for a conversation with
    #            the bot. When you enable conversation logs, text logs store text input,
    #            transcripts of audio input, and associated metadata in Amazon CloudWatch Logs. Audio
    #            logs store audio input in Amazon S3.</p>
    #   @return [Types::ConversationLogSettings]
    # @!attribute sentiment_analysis_settings
    #   <p>Determines whether Amazon Lex will use Amazon Comprehend to detect the sentiment of
    #            user utterances.</p>
    #   @return [Types::SentimentAnalysisSettings]
    # @!attribute bot_id
    #   <p>The unique identifier of the bot that the alias applies to.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags to add to the bot alias. You can only add tags when
    #            you create an alias, you can't use the <code>UpdateBotAlias</code>
    #            operation to update the tags on a bot alias. To update tags, use the
    #               <code>TagResource</code> operation.</p>
    #   @return [Hash<String, String>]
    class CreateBotAliasRequest < Struct.new(
      :bot_alias_name,
      :description,
      :bot_version,
      :bot_alias_locale_settings,
      :conversation_log_settings,
      :sentiment_analysis_settings,
      :bot_id,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_alias_id
    #   <p>The unique identifier of the bot alias.</p>
    #   @return [String]
    # @!attribute bot_alias_name
    #   <p>The name specified for the bot alias.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description specified for the bot alias.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot associated with this alias.</p>
    #   @return [String]
    # @!attribute bot_alias_locale_settings
    #   <p>Configuration information for a specific locale.</p>
    #   @return [Hash<String, Types::BotAliasLocaleSettings>]
    # @!attribute conversation_log_settings
    #   <p>The conversation log settings specified for the alias.</p>
    #   @return [Types::ConversationLogSettings]
    # @!attribute sentiment_analysis_settings
    #   <p>Determines whether Amazon Lex will use Amazon Comprehend to detect the sentiment of
    #            user utterances.</p>
    #   @return [Types::SentimentAnalysisSettings]
    # @!attribute bot_alias_status
    #   <p>The current status of the alias. The alias is first put into the
    #               <code>Creating</code> state. When the alias is ready to be used, it
    #            is put into the <code>Available</code> state. You can use the
    #               <code>DescribeBotAlias</code> operation to get the current state of
    #            an alias.</p>
    #   @return [String]
    # @!attribute bot_id
    #   <p>The unique identifier of the bot that this alias applies to.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>A Unix timestamp indicating the date and time that the bot alias was
    #            created.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>A list of tags associated with the bot alias.</p>
    #   @return [Hash<String, String>]
    class CreateBotAliasResponse < Struct.new(
      :bot_alias_id,
      :bot_alias_name,
      :description,
      :bot_version,
      :bot_alias_locale_settings,
      :conversation_log_settings,
      :sentiment_analysis_settings,
      :bot_alias_status,
      :bot_id,
      :creation_date_time,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot to create the locale for.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot to create the locale for. This can only be
    #            the draft version of the bot.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale that the bot will be used
    #            in. The string must match one of the supported locales. All of the
    #            intents, slot types, and slots used in the bot must have the same
    #            locale. For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the bot locale. Use this to help identify the bot
    #            locale in lists.</p>
    #   @return [String]
    # @!attribute nlu_intent_confidence_threshold
    #   <p>Determines the threshold where Amazon Lex will insert the
    #               <code>AMAZON.FallbackIntent</code>,
    #               <code>AMAZON.KendraSearchIntent</code>, or both when returning
    #            alternative intents. <code>AMAZON.FallbackIntent</code> and
    #               <code>AMAZON.KendraSearchIntent</code> are only inserted if they are
    #            configured for the bot.</p>
    #            <p>For example, suppose a bot is configured with the confidence
    #            threshold of 0.80 and the <code>AMAZON.FallbackIntent</code>. Amazon Lex
    #            returns three alternative intents with the following confidence scores:
    #            IntentA (0.70), IntentB (0.60), IntentC (0.50). The response from the
    #               <code>RecognizeText</code> operation would be:</p>
    #            <ul>
    #               <li>
    #                  <p>AMAZON.FallbackIntent</p>
    #               </li>
    #               <li>
    #                  <p>IntentA</p>
    #               </li>
    #               <li>
    #                  <p>IntentB</p>
    #               </li>
    #               <li>
    #                  <p>IntentC</p>
    #               </li>
    #            </ul>
    #   @return [Float]
    # @!attribute voice_settings
    #   <p>The Amazon Polly voice ID that Amazon Lex uses for voice interaction with the
    #            user.</p>
    #   @return [Types::VoiceSettings]
    # @!attribute generative_ai_settings
    #   <p>Contains specifications about the generative AI capabilities from Amazon Bedrock that you can turn on for your bot.</p>
    #   @return [Types::GenerativeAISettings]
    class CreateBotLocaleRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :description,
      :nlu_intent_confidence_threshold,
      :voice_settings,
      :generative_ai_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The specified bot identifier.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The specified bot version.</p>
    #   @return [String]
    # @!attribute locale_name
    #   <p>The specified locale name.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The specified locale identifier.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The specified description of the bot locale.</p>
    #   @return [String]
    # @!attribute nlu_intent_confidence_threshold
    #   <p>The specified confidence threshold for inserting the
    #               <code>AMAZON.FallbackIntent</code> and
    #               <code>AMAZON.KendraSearchIntent</code> intents.</p>
    #   @return [Float]
    # @!attribute voice_settings
    #   <p>The Amazon Polly voice ID that Amazon Lex uses for voice interaction with the
    #            user.</p>
    #   @return [Types::VoiceSettings]
    # @!attribute bot_locale_status
    #   <p>The status of the bot.</p>
    #            <p>When the status is <code>Creating</code> the bot locale is being
    #            configured. When the status is <code>Building</code> Amazon Lex is building
    #            the bot for testing and use.</p>
    #            <p>If the status of the bot is <code>ReadyExpressTesting</code>, you
    #            can test the bot using the exact utterances specified in the bots'
    #            intents. When the bot is ready for full testing or to run, the status
    #            is <code>Built</code>.</p>
    #            <p>If there was a problem with building the bot, the status is
    #               <code>Failed</code>. If the bot was saved but not built, the status
    #            is <code>NotBuilt</code>.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>A timestamp specifying the date and time that the bot locale was
    #            created.</p>
    #   @return [Time]
    # @!attribute generative_ai_settings
    #   <p>Contains specifications about the generative AI capabilities from Amazon Bedrock that you can turn on for your bot.</p>
    #   @return [Types::GenerativeAISettings]
    class CreateBotLocaleResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_name,
      :locale_id,
      :description,
      :nlu_intent_confidence_threshold,
      :voice_settings,
      :bot_locale_status,
      :creation_date_time,
      :generative_ai_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The request for the unique bot ID of the source bot to be replicated in the secondary region.</p>
    #   @return [String]
    # @!attribute replica_region
    #   <p>The request for the secondary region that will be used in the replication of the source bot.</p>
    #   @return [String]
    class CreateBotReplicaRequest < Struct.new(
      :bot_id,
      :replica_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique bot ID of the replicated bot generated.</p>
    #   @return [String]
    # @!attribute replica_region
    #   <p>The region of the replicated bot generated.</p>
    #   @return [String]
    # @!attribute source_region
    #   <p>The source region for the source bot used for the replicated bot generated.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The creation date and time of the replicated bot generated.</p>
    #   @return [Time]
    # @!attribute bot_replica_status
    #   <p>The operational status of the replicated bot generated.</p>
    #   @return [String]
    class CreateBotReplicaResponse < Struct.new(
      :bot_id,
      :replica_region,
      :source_region,
      :creation_date_time,
      :bot_replica_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_name
    #   <p>The name of the bot. The bot name must be unique in the account that
    #            creates the bot.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the bot. It appears in lists to help you identify a
    #            particular bot.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that has permission to
    #            access the bot.</p>
    #   @return [String]
    # @!attribute data_privacy
    #   <p>Provides information on additional privacy protections Amazon Lex should
    #            use with the bot's data.</p>
    #   @return [Types::DataPrivacy]
    # @!attribute idle_session_ttl_in_seconds
    #   <p>The time, in seconds, that Amazon Lex should keep information about a
    #            user's conversation with the bot. </p>
    #            <p>A user interaction remains active for the amount of time specified.
    #            If no conversation occurs during this time, the session expires and
    #            Amazon Lex deletes any data provided before the timeout.</p>
    #            <p>You can specify between 60 (1 minute) and 86,400 (24 hours)
    #            seconds.</p>
    #   @return [Integer]
    # @!attribute bot_tags
    #   <p>A list of tags to add to the bot. You can only add tags when you
    #            create a bot. You can't use the <code>UpdateBot</code> operation to
    #            update tags. To update tags, use the <code>TagResource</code>
    #            operation.</p>
    #   @return [Hash<String, String>]
    # @!attribute test_bot_alias_tags
    #   <p>A list of tags to add to the test alias for a bot. You can only add
    #            tags when you create a bot. You can't use the <code>UpdateAlias</code>
    #            operation to update tags. To update tags on the test alias, use the
    #               <code>TagResource</code> operation.</p>
    #   @return [Hash<String, String>]
    # @!attribute bot_type
    #   <p>The type of a bot to create.</p>
    #   @return [String]
    # @!attribute bot_members
    #   <p>The list of bot members in a network to be created.</p>
    #   @return [Array<Types::BotMember>]
    # @!attribute error_log_settings
    #   <p>Specifies the configuration for error logging during bot creation.</p>
    #   @return [Types::ErrorLogSettings]
    class CreateBotRequest < Struct.new(
      :bot_name,
      :description,
      :role_arn,
      :data_privacy,
      :idle_session_ttl_in_seconds,
      :bot_tags,
      :test_bot_alias_tags,
      :bot_type,
      :bot_members,
      :error_log_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>A unique identifier for a particular bot. You use this to identify
    #            the bot when you call other Amazon Lex API operations.</p>
    #   @return [String]
    # @!attribute bot_name
    #   <p>The name specified for the bot.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description specified for the bot.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The IAM role specified for the bot.</p>
    #   @return [String]
    # @!attribute data_privacy
    #   <p>The data privacy settings specified for the bot.</p>
    #   @return [Types::DataPrivacy]
    # @!attribute idle_session_ttl_in_seconds
    #   <p>The session idle time specified for the bot.</p>
    #   @return [Integer]
    # @!attribute bot_status
    #   <p>Shows the current status of the bot. The bot is first in the
    #               <code>Creating</code> status. Once the bot is read for use, it
    #            changes to the <code>Available</code> status. After the bot is created,
    #            you can use the <code>DRAFT</code> version of the bot.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>A timestamp indicating the date and time that the bot was
    #            created.</p>
    #   @return [Time]
    # @!attribute bot_tags
    #   <p>A list of tags associated with the bot.</p>
    #   @return [Hash<String, String>]
    # @!attribute test_bot_alias_tags
    #   <p>A list of tags associated with the test alias for the bot.</p>
    #   @return [Hash<String, String>]
    # @!attribute bot_type
    #   <p>The type of a bot that was created.</p>
    #   @return [String]
    # @!attribute bot_members
    #   <p>The list of bots in a network that was created.</p>
    #   @return [Array<Types::BotMember>]
    # @!attribute error_log_settings
    #   <p>Specifies configuration settings for delivering error logs to Cloudwatch Logs in an Amazon Lex bot response.</p>
    #   @return [Types::ErrorLogSettings]
    class CreateBotResponse < Struct.new(
      :bot_id,
      :bot_name,
      :description,
      :role_arn,
      :data_privacy,
      :idle_session_ttl_in_seconds,
      :bot_status,
      :creation_date_time,
      :bot_tags,
      :test_bot_alias_tags,
      :bot_type,
      :bot_members,
      :error_log_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot to create the version for.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the version. Use the description to help identify
    #            the version in lists.</p>
    #   @return [String]
    # @!attribute bot_version_locale_specification
    #   <p>Specifies the locales that Amazon Lex adds to this version. You can
    #            choose the <code>Draft</code> version or any other previously published
    #            version for each locale. When you specify a source version, the locale
    #            data is copied from the source version to the new version.</p>
    #   @return [Hash<String, Types::BotVersionLocaleDetails>]
    class CreateBotVersionRequest < Struct.new(
      :bot_id,
      :description,
      :bot_version_locale_specification,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The bot identifier specified in the request.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the version specified in the request.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version number assigned to the version.</p>
    #   @return [String]
    # @!attribute bot_version_locale_specification
    #   <p>The source versions used for each locale in the new version.</p>
    #   @return [Hash<String, Types::BotVersionLocaleDetails>]
    # @!attribute bot_status
    #   <p>When you send a request to create or update a bot, Amazon Lex sets the
    #            status response element to <code>Creating</code>. After Amazon Lex builds
    #            the bot, it sets status to <code>Available</code>. If Amazon Lex can't build
    #            the bot, it sets status to <code>Failed</code>.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>A timestamp of the date and time that the version was
    #            created.</p>
    #   @return [Time]
    class CreateBotVersionResponse < Struct.new(
      :bot_id,
      :description,
      :bot_version,
      :bot_version_locale_specification,
      :bot_status,
      :creation_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_specification
    #   <p>Specifies the type of resource to export, either a bot or a bot
    #            locale. You can only specify one type of resource to export.</p>
    #   @return [Types::ExportResourceSpecification]
    # @!attribute file_format
    #   <p>The file format of the bot or bot locale definition files.</p>
    #   @return [String]
    # @!attribute file_password
    #   <p>An password to use to encrypt the exported archive. Using a password
    #            is optional, but you should encrypt the archive to protect the data in
    #            transit between Amazon Lex and your local computer.</p>
    #   @return [String]
    class CreateExportRequest < Struct.new(
      :resource_specification,
      :file_format,
      :file_password,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_id
    #   <p>An identifier for a specific request to create an export.</p>
    #   @return [String]
    # @!attribute resource_specification
    #   <p>A description of the type of resource that was exported, either a
    #            bot or a bot locale.</p>
    #   @return [Types::ExportResourceSpecification]
    # @!attribute file_format
    #   <p>The file format used for the bot or bot locale definition
    #            files.</p>
    #   @return [String]
    # @!attribute export_status
    #   <p>The status of the export. When the status is <code>Completed</code>,
    #            you can use the <a href="https://docs.aws.amazon.com/lexv2/latest/APIReference/API_DescribeExport.html">DescribeExport</a> operation to get the
    #            pre-signed S3 URL link to your exported bot or bot locale.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time that the request to export a bot was
    #            created.</p>
    #   @return [Time]
    class CreateExportResponse < Struct.new(
      :export_id,
      :resource_specification,
      :file_format,
      :export_status,
      :creation_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute intent_name
    #   <p>The name of the intent. Intent names must be unique in the locale
    #            that contains the intent and cannot match the name of any built-in
    #            intent.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the intent. Use the description to help identify
    #            the intent in lists.</p>
    #   @return [String]
    # @!attribute parent_intent_signature
    #   <p>A unique identifier for the built-in intent to base this intent
    #            on.</p>
    #   @return [String]
    # @!attribute sample_utterances
    #   <p>An array of strings that a user might say to signal the intent. For
    #            example, "I want a pizza", or "I want a {PizzaSize} pizza". </p>
    #            <p>In an utterance, slot names are enclosed in curly braces ("{", "}")
    #            to indicate where they should be displayed in the utterance shown to
    #            the user.. </p>
    #   @return [Array<Types::SampleUtterance>]
    # @!attribute dialog_code_hook
    #   <p>Specifies that Amazon Lex invokes the alias Lambda function for each user
    #            input. You can invoke this Lambda function to personalize user
    #            interaction.</p>
    #            <p>For example, suppose that your bot determines that the user's name
    #            is John. You Lambda function might retrieve John's information from a
    #            backend database and prepopulate some of the values. For example, if
    #            you find that John is gluten intolerant, you might set the
    #            corresponding intent slot, <code>glutenIntolerant</code> to
    #               <code>true</code>. You might find John's phone number and set the
    #            corresponding session attribute.</p>
    #   @return [Types::DialogCodeHookSettings]
    # @!attribute fulfillment_code_hook
    #   <p>Specifies that Amazon Lex invokes the alias Lambda function when the
    #            intent is ready for fulfillment. You can invoke this function to
    #            complete the bot's transaction with the user.</p>
    #            <p>For example, in a pizza ordering bot, the Lambda function can look up
    #            the closest pizza restaurant to the customer's location and then place
    #            an order on the customer's behalf.</p>
    #   @return [Types::FulfillmentCodeHookSettings]
    # @!attribute intent_confirmation_setting
    #   <p>Provides prompts that Amazon Lex sends to the user to confirm the
    #            completion of an intent. If the user answers "no," the settings contain
    #            a statement that is sent to the user to end the intent.</p>
    #   @return [Types::IntentConfirmationSetting]
    # @!attribute intent_closing_setting
    #   <p>Sets the response that Amazon Lex sends to the user when the intent is
    #            closed.</p>
    #   @return [Types::IntentClosingSetting]
    # @!attribute input_contexts
    #   <p>A list of contexts that must be active for this intent to be
    #            considered by Amazon Lex.</p>
    #            <p>When an intent has an input context list, Amazon Lex only considers using
    #            the intent in an interaction with the user when the specified contexts
    #            are included in the active context list for the session. If the
    #            contexts are not active, then Amazon Lex will not use the intent.</p>
    #            <p>A context can be automatically activated using the
    #               <code>outputContexts</code> property or it can be set at
    #            runtime.</p>
    #            <p> For example, if there are two intents with different input contexts
    #            that respond to the same utterances, only the intent with the active
    #            context will respond.</p>
    #            <p>An intent may have up to 5 input contexts. If an intent has multiple
    #            input contexts, all of the contexts must be active to consider the
    #            intent.</p>
    #   @return [Array<Types::InputContext>]
    # @!attribute output_contexts
    #   <p>A lists of contexts that the intent activates when it is
    #            fulfilled.</p>
    #            <p>You can use an output context to indicate the intents that Amazon Lex
    #            should consider for the next turn of the conversation with a customer. </p>
    #            <p>When you use the <code>outputContextsList</code> property, all of
    #            the contexts specified in the list are activated when the intent is
    #            fulfilled. You can set up to 10 output contexts. You can also set the
    #            number of conversation turns that the context should be active, or the
    #            length of time that the context should be active.</p>
    #   @return [Array<Types::OutputContext>]
    # @!attribute kendra_configuration
    #   <p>Configuration information required to use the
    #               <code>AMAZON.KendraSearchIntent</code> intent to connect to an Amazon Kendra
    #            index. The <code>AMAZON.KendraSearchIntent</code> intent is called when
    #            Amazon Lex can't determine another intent to invoke.</p>
    #   @return [Types::KendraConfiguration]
    # @!attribute bot_id
    #   <p>The identifier of the bot associated with this intent.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot associated with this
    #            intent.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale where this intent is used.
    #            All of the bots, slot types, and slots used by the intent must have the
    #            same locale. For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #   @return [String]
    # @!attribute initial_response_setting
    #   <p>Configuration settings for the response that is sent to the user at
    #            the beginning of a conversation, before eliciting slot values.</p>
    #   @return [Types::InitialResponseSetting]
    # @!attribute qn_a_intent_configuration
    #   <p>Specifies the configuration of the built-in <code>Amazon.QnAIntent</code>. The <code>AMAZON.QnAIntent</code> intent is called when
    #            Amazon Lex can't determine another intent to invoke. If you specify this field, you can't specify the <code>kendraConfiguration</code> field.</p>
    #   @return [Types::QnAIntentConfiguration]
    # @!attribute q_in_connect_intent_configuration
    #   <p>Qinconnect intent configuration details for the create intent request.</p>
    #   @return [Types::QInConnectIntentConfiguration]
    class CreateIntentRequest < Struct.new(
      :intent_name,
      :description,
      :parent_intent_signature,
      :sample_utterances,
      :dialog_code_hook,
      :fulfillment_code_hook,
      :intent_confirmation_setting,
      :intent_closing_setting,
      :input_contexts,
      :output_contexts,
      :kendra_configuration,
      :bot_id,
      :bot_version,
      :locale_id,
      :initial_response_setting,
      :qn_a_intent_configuration,
      :q_in_connect_intent_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute intent_id
    #   <p>A unique identifier for the intent.</p>
    #   @return [String]
    # @!attribute intent_name
    #   <p>The name specified for the intent.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description specified for the intent.</p>
    #   @return [String]
    # @!attribute parent_intent_signature
    #   <p>The signature of the parent intent specified for the intent.</p>
    #   @return [String]
    # @!attribute sample_utterances
    #   <p>The sample utterances specified for the intent.</p>
    #   @return [Array<Types::SampleUtterance>]
    # @!attribute dialog_code_hook
    #   <p>The dialog Lambda function specified for the intent.</p>
    #   @return [Types::DialogCodeHookSettings]
    # @!attribute fulfillment_code_hook
    #   <p>The fulfillment Lambda function specified for the intent.</p>
    #   @return [Types::FulfillmentCodeHookSettings]
    # @!attribute intent_confirmation_setting
    #   <p>The confirmation setting specified for the intent.</p>
    #   @return [Types::IntentConfirmationSetting]
    # @!attribute intent_closing_setting
    #   <p>The closing setting specified for the intent.</p>
    #   @return [Types::IntentClosingSetting]
    # @!attribute input_contexts
    #   <p>The list of input contexts specified for the intent.</p>
    #   @return [Array<Types::InputContext>]
    # @!attribute output_contexts
    #   <p>The list of output contexts specified for the intent.</p>
    #   @return [Array<Types::OutputContext>]
    # @!attribute kendra_configuration
    #   <p>Configuration for searching a Amazon Kendra index specified for the
    #            intent.</p>
    #   @return [Types::KendraConfiguration]
    # @!attribute bot_id
    #   <p>The identifier of the bot associated with the intent.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot associated with the
    #            intent.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The locale that the intent is specified to use.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>A timestamp of the date and time that the intent was created.</p>
    #   @return [Time]
    # @!attribute initial_response_setting
    #   <p>Configuration settings for the response that is sent to the user at
    #            the beginning of a conversation, before eliciting slot values.</p>
    #   @return [Types::InitialResponseSetting]
    # @!attribute qn_a_intent_configuration
    #   <p>Details about the the configuration of the built-in <code>Amazon.QnAIntent</code>.</p>
    #   @return [Types::QnAIntentConfiguration]
    # @!attribute q_in_connect_intent_configuration
    #   <p>Qinconnect intent configuration details for the create intent response.</p>
    #   @return [Types::QInConnectIntentConfiguration]
    class CreateIntentResponse < Struct.new(
      :intent_id,
      :intent_name,
      :description,
      :parent_intent_signature,
      :sample_utterances,
      :dialog_code_hook,
      :fulfillment_code_hook,
      :intent_confirmation_setting,
      :intent_closing_setting,
      :input_contexts,
      :output_contexts,
      :kendra_configuration,
      :bot_id,
      :bot_version,
      :locale_id,
      :creation_date_time,
      :initial_response_setting,
      :qn_a_intent_configuration,
      :q_in_connect_intent_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the bot or bot alias that the
    #            resource policy is attached to.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>A resource policy to add to the resource. The policy is a JSON
    #            structure that contains one or more statements that define the policy.
    #            The policy must follow the IAM syntax. For more information about the
    #            contents of a JSON policy document, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html"> IAM JSON policy
    #               reference </a>. </p>
    #            <p>If the policy isn't valid, Amazon Lex returns a validation
    #            exception.</p>
    #   @return [String]
    class CreateResourcePolicyRequest < Struct.new(
      :resource_arn,
      :policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the bot or bot alias that the
    #            resource policy was attached to.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The current revision of the resource policy. Use the revision ID to
    #            make sure that you are updating the most current version of a resource
    #            policy when you add a policy statement to a resource, delete a
    #            resource, or update a resource.</p>
    #   @return [String]
    class CreateResourcePolicyResponse < Struct.new(
      :resource_arn,
      :revision_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the bot or bot alias that the
    #            resource policy is attached to.</p>
    #   @return [String]
    # @!attribute statement_id
    #   <p>The name of the statement. The ID is the same as the
    #               <code>Sid</code> IAM property. The statement name must be unique
    #            within the policy. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_sid.html">IAM
    #               JSON policy elements: Sid</a>. </p>
    #   @return [String]
    # @!attribute effect
    #   <p>Determines whether the statement allows or denies access to the
    #            resource.</p>
    #   @return [String]
    # @!attribute principal
    #   <p>An IAM principal, such as an IAM user, IAM role, 
    #            or Amazon Web Services services
    #            that is allowed or denied access to a resource. For more information,
    #            see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html">Amazon Web Services JSON policy elements: Principal</a>.</p>
    #   @return [Array<Types::Principal>]
    # @!attribute action
    #   <p>The Amazon Lex action that this policy either allows or denies. The
    #            action must apply to the resource type of the specified ARN. For more
    #            information, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonlexv2.html">
    #               Actions, resources, and condition keys for Amazon Lex V2</a>.</p>
    #   @return [Array<String>]
    # @!attribute condition
    #   <p>Specifies a condition when the policy is in effect. If the principal
    #            of the policy is a service principal, you must provide two condition
    #            blocks, one with a SourceAccount global condition key and one with a
    #            SourceArn global condition key.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_condition.html">IAM JSON policy elements: Condition </a>.</p>
    #   @return [Hash<String, Hash<String, String>>]
    # @!attribute expected_revision_id
    #   <p>The identifier of the revision of the policy to edit. If this
    #            revision ID doesn't match the current revision ID, Amazon Lex throws an
    #            exception.</p>
    #            <p>If you don't specify a revision, Amazon Lex overwrites the contents of
    #            the policy with the new values.</p>
    #   @return [String]
    class CreateResourcePolicyStatementRequest < Struct.new(
      :resource_arn,
      :statement_id,
      :effect,
      :principal,
      :action,
      :condition,
      :expected_revision_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the bot or bot alias that the
    #            resource policy is attached to.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The current revision of the resource policy. Use the revision ID to
    #            make sure that you are updating the most current version of a resource
    #            policy when you add a policy statement to a resource, delete a
    #            resource, or update a resource.</p>
    #   @return [String]
    class CreateResourcePolicyStatementResponse < Struct.new(
      :resource_arn,
      :revision_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute slot_name
    #   <p>The name of the slot. Slot names must be unique within the bot that
    #            contains the slot.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the slot. Use this to help identify the slot in
    #            lists.</p>
    #   @return [String]
    # @!attribute slot_type_id
    #   <p>The unique identifier for the slot type associated with this slot.
    #            The slot type determines the values that can be entered into the
    #            slot.</p>
    #   @return [String]
    # @!attribute value_elicitation_setting
    #   <p>Specifies prompts that Amazon Lex sends to the user to elicit a response
    #            that provides the value for the slot. </p>
    #   @return [Types::SlotValueElicitationSetting]
    # @!attribute obfuscation_setting
    #   <p>Determines how slot values are used in Amazon CloudWatch logs. If the value of
    #            the <code>obfuscationSetting</code> parameter is
    #               <code>DefaultObfuscation</code>, slot values are obfuscated in the
    #            log output. If the value is <code>None</code>, the actual value is
    #            present in the log output.</p>
    #            <p>The default is to obfuscate values in the CloudWatch logs.</p>
    #   @return [Types::ObfuscationSetting]
    # @!attribute bot_id
    #   <p>The identifier of the bot associated with the slot.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot associated with the slot.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale that the slot will be used
    #            in. The string must match one of the supported locales. All of the
    #            bots, intents, slot types used by the slot must have the same locale.
    #            For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #   @return [String]
    # @!attribute intent_id
    #   <p>The identifier of the intent that contains the slot.</p>
    #   @return [String]
    # @!attribute multiple_values_setting
    #   <p>Indicates whether the slot returns multiple values in one response.
    #            Multi-value slots are only available in the <code>en-US</code> locale. 
    #            If you set this value to <code>true</code> in any other locale, Amazon Lex throws a
    #               <code>ValidationException</code>. </p>
    #            <p>If the <code>multipleValuesSetting</code> is not set, the default
    #            value is <code>false</code>.</p>
    #   @return [Types::MultipleValuesSetting]
    # @!attribute sub_slot_setting
    #   <p>Specifications for the constituent sub slots and the  
    #           expression for the composite slot.</p>
    #   @return [Types::SubSlotSetting]
    class CreateSlotRequest < Struct.new(
      :slot_name,
      :description,
      :slot_type_id,
      :value_elicitation_setting,
      :obfuscation_setting,
      :bot_id,
      :bot_version,
      :locale_id,
      :intent_id,
      :multiple_values_setting,
      :sub_slot_setting,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute slot_id
    #   <p>The unique identifier associated with the slot. Use this to identify
    #            the slot when you update or delete it.</p>
    #   @return [String]
    # @!attribute slot_name
    #   <p>The name specified for the slot.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description associated with the slot.</p>
    #   @return [String]
    # @!attribute slot_type_id
    #   <p>The unique identifier of the slot type associated with this
    #            slot.</p>
    #   @return [String]
    # @!attribute value_elicitation_setting
    #   <p>The value elicitation settings specified for the slot.</p>
    #   @return [Types::SlotValueElicitationSetting]
    # @!attribute obfuscation_setting
    #   <p>Indicates whether the slot is configured to obfuscate values in Amazon CloudWatch
    #            logs.</p>
    #   @return [Types::ObfuscationSetting]
    # @!attribute bot_id
    #   <p>The unique identifier of the bot associated with the slot.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot associated with the slot.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The language and local specified for the slot.</p>
    #   @return [String]
    # @!attribute intent_id
    #   <p>The unique identifier of the intent associated with the slot.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The timestamp of the date and time that the slot was created.</p>
    #   @return [Time]
    # @!attribute multiple_values_setting
    #   <p>Indicates whether the slot returns multiple values in one
    #            response.</p>
    #   @return [Types::MultipleValuesSetting]
    # @!attribute sub_slot_setting
    #   <p>Specifications for the constituent sub slots and the  
    #           expression for the composite slot.</p>
    #   @return [Types::SubSlotSetting]
    class CreateSlotResponse < Struct.new(
      :slot_id,
      :slot_name,
      :description,
      :slot_type_id,
      :value_elicitation_setting,
      :obfuscation_setting,
      :bot_id,
      :bot_version,
      :locale_id,
      :intent_id,
      :creation_date_time,
      :multiple_values_setting,
      :sub_slot_setting,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute slot_type_name
    #   <p>The name for the slot. A slot type name must be unique within the
    #            intent.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the slot type. Use the description to help identify
    #            the slot type in lists.</p>
    #   @return [String]
    # @!attribute slot_type_values
    #   <p>A list of <code>SlotTypeValue</code> objects that defines the values
    #            that the slot type can take. Each value can have a list of synonyms,
    #            additional values that help train the machine learning model about the
    #            values that it resolves for a slot.</p>
    #   @return [Array<Types::SlotTypeValue>]
    # @!attribute value_selection_setting
    #   <p>Determines the strategy that Amazon Lex uses to select a value from the
    #            list of possible values. The field can be set to one of the following
    #            values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ORIGINAL_VALUE</code> - Returns the value entered by the
    #                  user, if the user value is similar to the slot value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOP_RESOLUTION</code> - If there is a resolution list for
    #                  the slot, return the first value in the resolution list. If there
    #                  is no resolution list, return null.</p>
    #               </li>
    #            </ul>
    #            <p>If you don't specify the <code>valueSelectionSetting</code>
    #            parameter, the default is <code>ORIGINAL_VALUE</code>.</p>
    #   @return [Types::SlotValueSelectionSetting]
    # @!attribute parent_slot_type_signature
    #   <p>The built-in slot type used as a parent of this slot type. When you
    #            define a parent slot type, the new slot type has the configuration of
    #            the parent slot type.</p>
    #            <p>Only <code>AMAZON.AlphaNumeric</code> is supported.</p>
    #   @return [String]
    # @!attribute bot_id
    #   <p>The identifier of the bot associated with this slot type.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The identifier of the bot version associated with this slot
    #            type.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale that the slot type will be
    #            used in. The string must match one of the supported locales. All of the
    #            bots, intents, and slots used by the slot type must have the same
    #            locale. For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #   @return [String]
    # @!attribute external_source_setting
    #   <p>Sets the type of external information used to create the slot
    #            type.</p>
    #   @return [Types::ExternalSourceSetting]
    # @!attribute composite_slot_type_setting
    #   <p>Specifications for a composite slot type.</p>
    #   @return [Types::CompositeSlotTypeSetting]
    class CreateSlotTypeRequest < Struct.new(
      :slot_type_name,
      :description,
      :slot_type_values,
      :value_selection_setting,
      :parent_slot_type_signature,
      :bot_id,
      :bot_version,
      :locale_id,
      :external_source_setting,
      :composite_slot_type_setting,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute slot_type_id
    #   <p>The unique identifier assigned to the slot type. Use this to
    #            identify the slot type in the <code>UpdateSlotType</code> and
    #               <code>DeleteSlotType</code> operations.</p>
    #   @return [String]
    # @!attribute slot_type_name
    #   <p>The name specified for the slot type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description specified for the slot type.</p>
    #   @return [String]
    # @!attribute slot_type_values
    #   <p>The list of values that the slot type can assume.</p>
    #   @return [Array<Types::SlotTypeValue>]
    # @!attribute value_selection_setting
    #   <p>The strategy that Amazon Lex uses to select a value from the list of
    #            possible values.</p>
    #   @return [Types::SlotValueSelectionSetting]
    # @!attribute parent_slot_type_signature
    #   <p>The signature of the base slot type specified for the slot
    #            type.</p>
    #   @return [String]
    # @!attribute bot_id
    #   <p>The identifier for the bot associated with the slot type.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot associated with the slot type.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The specified language and local specified for the slot type.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>A timestamp of the date and time that the slot type was
    #            created.</p>
    #   @return [Time]
    # @!attribute external_source_setting
    #   <p>The type of external information used to create the slot
    #            type.</p>
    #   @return [Types::ExternalSourceSetting]
    # @!attribute composite_slot_type_setting
    #   <p>Specifications for a composite slot type.</p>
    #   @return [Types::CompositeSlotTypeSetting]
    class CreateSlotTypeResponse < Struct.new(
      :slot_type_id,
      :slot_type_name,
      :description,
      :slot_type_values,
      :value_selection_setting,
      :parent_slot_type_signature,
      :bot_id,
      :bot_version,
      :locale_id,
      :creation_date_time,
      :external_source_setting,
      :composite_slot_type_setting,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_set_id
    #   <p>The test set Id for the test set discrepancy report.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The target bot for the test set discrepancy report.</p>
    #   @return [Types::TestSetDiscrepancyReportResourceTarget]
    class CreateTestSetDiscrepancyReportRequest < Struct.new(
      :test_set_id,
      :target,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_set_discrepancy_report_id
    #   <p>The unique identifier of the test set discrepancy report to describe.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The creation date and time for the test set discrepancy report.</p>
    #   @return [Time]
    # @!attribute test_set_id
    #   <p>The test set Id for the test set discrepancy report.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The target bot for the test set discrepancy report.</p>
    #   @return [Types::TestSetDiscrepancyReportResourceTarget]
    class CreateTestSetDiscrepancyReportResponse < Struct.new(
      :test_set_discrepancy_report_id,
      :creation_date_time,
      :test_set_id,
      :target,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class CreateUploadUrlRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute import_id
    #   <p>An identifier for a unique import job. Use it when you call the
    #               <a href="https://docs.aws.amazon.com/lexv2/latest/APIReference/API_StartImport.html">StartImport</a> operation.</p>
    #   @return [String]
    # @!attribute upload_url
    #   <p>A pre-signed S3 write URL. Upload the zip archive file that contains
    #            the definition of your bot or bot locale.</p>
    #   @return [String]
    class CreateUploadUrlResponse < Struct.new(
      :import_id,
      :upload_url,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A custom response string that Amazon Lex sends to your application. You
    #          define the content and structure the string.</p>
    # @!attribute value
    #   <p>The string that is sent to your application.</p>
    #   @return [String]
    class CustomPayload < Struct.new(
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The unique entry identifier for the custom vocabulary 
    #          items.</p>
    # @!attribute item_id
    #   <p>The unique item identifier for the custom vocabulary
    #            items.</p>
    #   @return [String]
    class CustomVocabularyEntryId < Struct.new(
      :item_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the parameters required for exporting a custom vocabulary.</p>
    # @!attribute bot_id
    #   <p>The identifier of the bot that contains the custom vocabulary to export.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot that contains the custom vocabulary to export.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The locale of the bot that contains the custom vocabulary to export.</p>
    #   @return [String]
    class CustomVocabularyExportSpecification < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the parameters required for importing a custom vocabulary.</p>
    # @!attribute bot_id
    #   <p>The identifier of the bot to import the custom vocabulary to.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot to import the custom vocabulary to.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the local to import the custom vocabulary to. The value must
    #               be <code>en_GB</code>.</p>
    #   @return [String]
    class CustomVocabularyImportSpecification < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The unique custom vocabulary item from the custom 
    #          vocabulary list.</p>
    # @!attribute item_id
    #   <p>The unique item identifer for the custom vocabulary item 
    #            from the custom vocabulary list.</p>
    #   @return [String]
    # @!attribute phrase
    #   <p>The unique phrase for the custom vocabulary item 
    #            from the custom vocabulary list.</p>
    #   @return [String]
    # @!attribute weight
    #   <p>The weight assigned for the custom vocabulary item 
    #            from the custom vocabulary list.</p>
    #   @return [Integer]
    # @!attribute display_as
    #   <p>The DisplayAs value for the custom vocabulary item 
    #            from the custom vocabulary list.</p>
    #   @return [String]
    class CustomVocabularyItem < Struct.new(
      :item_id,
      :phrase,
      :weight,
      :display_as,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the DTMF input specifications.</p>
    # @!attribute max_length
    #   <p>The maximum number of DTMF digits allowed in an utterance.</p>
    #   @return [Integer]
    # @!attribute end_timeout_ms
    #   <p>How long the bot should wait after the last DTMF character input before assuming 
    #            that the input has concluded.</p>
    #   @return [Integer]
    # @!attribute deletion_character
    #   <p>The DTMF character that clears the accumulated DTMF digits and immediately ends 
    #            the input.</p>
    #   @return [String]
    # @!attribute end_character
    #   <p>The DTMF character that immediately ends input. If the user does not press this 
    #            character, the input ends after the end timeout.</p>
    #   @return [String]
    class DTMFSpecification < Struct.new(
      :max_length,
      :end_timeout_ms,
      :deletion_character,
      :end_character,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>By default, data stored by Amazon Lex is encrypted. The
    #             <code>DataPrivacy</code> structure provides settings that determine
    #          how Amazon Lex handles special cases of securing the data for your bot.
    #       </p>
    # @!attribute child_directed
    #   <p>For each Amazon Lex bot created with the Amazon Lex Model Building Service,
    #            you must specify whether your use of Amazon Lex is related to a website,
    #            program, or other application that is directed or targeted, in whole or
    #            in part, to children under age 13 and subject to the Children's Online
    #            Privacy Protection Act (COPPA) by specifying <code>true</code> or
    #               <code>false</code> in the <code>childDirected</code> field. By
    #            specifying <code>true</code> in the <code>childDirected</code> field,
    #            you confirm that your use of Amazon Lex <b>is</b>
    #            related to a website, program, or other application that is directed or
    #            targeted, in whole or in part, to children under age 13 and subject to
    #            COPPA. By specifying <code>false</code> in the
    #               <code>childDirected</code> field, you confirm that your use of Amazon Lex
    #               <b>is not</b> related to a website,
    #            program, or other application that is directed or targeted, in whole or
    #            in part, to children under age 13 and subject to COPPA. You may not
    #            specify a default value for the <code>childDirected</code> field that
    #            does not accurately reflect whether your use of Amazon Lex is related to a
    #            website, program, or other application that is directed or targeted, in
    #            whole or in part, to children under age 13 and subject to COPPA. If
    #            your use of Amazon Lex relates to a website, program, or other application
    #            that is directed in whole or in part, to children under age 13, you
    #            must obtain any required verifiable parental consent under COPPA. For
    #            information regarding the use of Amazon Lex in connection with websites,
    #            programs, or other applications that are directed or targeted, in whole
    #            or in part, to children under age 13, see the <a href="http://aws.amazon.com/lex/faqs#data-security">Amazon Lex
    #               FAQ</a>.</p>
    #   @return [Boolean]
    class DataPrivacy < Struct.new(
      :child_directed,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:child_directed] = false unless options.key?(:child_directed)
        super
      end
    end

    # <p>Contains details about the configuration of the knowledge store used for the <code>AMAZON.QnAIntent</code>. You must have already created the knowledge store and indexed the documents within it.</p>
    # @!attribute opensearch_configuration
    #   <p>Contains details about the configuration of the Amazon OpenSearch Service database used for the <code>AMAZON.QnAIntent</code>. To create a domain, follow the steps at <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html">Creating and managing Amazon OpenSearch Service domains</a>.</p>
    #   @return [Types::OpensearchConfiguration]
    # @!attribute kendra_configuration
    #   <p>Contains details about the configuration of the Amazon Kendra index used for the <code>AMAZON.QnAIntent</code>. To create a Amazon Kendra index, follow the steps at <a href="https://docs.aws.amazon.com/kendra/latest/dg/create-index.html">Creating an index</a>.</p>
    #   @return [Types::QnAKendraConfiguration]
    # @!attribute bedrock_knowledge_store_configuration
    #   <p>Contains details about the configuration of the Amazon Bedrock knowledge base used for the <code>AMAZON.QnAIntent</code>. To set up a knowledge base, follow the steps at <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base.html">Building a knowledge base</a>.</p>
    #   @return [Types::BedrockKnowledgeStoreConfiguration]
    class DataSourceConfiguration < Struct.new(
      :opensearch_configuration,
      :kendra_configuration,
      :bedrock_knowledge_store_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The object used for specifying the data range that the customer
    #             wants Amazon Lex to read through in the input transcripts.</p>
    # @!attribute start_date_time
    #   <p>A timestamp indicating the start date for the date range
    #               filter.</p>
    #   @return [Time]
    # @!attribute end_date_time
    #   <p>A timestamp indicating the end date for the date range
    #               filter.</p>
    #   @return [Time]
    class DateRangeFilter < Struct.new(
      :start_date_time,
      :end_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A set of actions that Amazon Lex should run if none of the
    #          other conditions are met.</p>
    # @!attribute next_step
    #   <p>The next step in the conversation.</p>
    #   @return [Types::DialogState]
    # @!attribute response
    #   <p>Specifies a list of message groups that Amazon Lex uses to respond the
    #            user input.</p>
    #   @return [Types::ResponseSpecification]
    class DefaultConditionalBranch < Struct.new(
      :next_step,
      :response,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_alias_id
    #   <p>The unique identifier of the bot alias to delete.</p>
    #   @return [String]
    # @!attribute bot_id
    #   <p>The unique identifier of the bot associated with the alias to
    #            delete.</p>
    #   @return [String]
    # @!attribute skip_resource_in_use_check
    #   <p>By default, Amazon Lex checks if any other resource, such as a bot network, 
    #            is using the bot alias before it is deleted and throws a 
    #            <code>ResourceInUseException</code> exception if the alias is 
    #            being used by another resource. Set this parameter to <code>true</code>
    #            to skip this check and remove the alias even if it is being used by 
    #            another resource.</p>
    #   @return [Boolean]
    class DeleteBotAliasRequest < Struct.new(
      :bot_alias_id,
      :bot_id,
      :skip_resource_in_use_check,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_alias_id
    #   <p>The unique identifier of the bot alias to delete.</p>
    #   @return [String]
    # @!attribute bot_id
    #   <p>The unique identifier of the bot that contains the alias to
    #            delete.</p>
    #   @return [String]
    # @!attribute bot_alias_status
    #   <p>The current status of the alias. The status is <code>Deleting</code>
    #            while the alias is in the process of being deleted. Once the alias is
    #            deleted, it will no longer appear in the list of aliases returned by
    #            the <code>ListBotAliases</code> operation.</p>
    #   @return [String]
    class DeleteBotAliasResponse < Struct.new(
      :bot_alias_id,
      :bot_id,
      :bot_alias_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot that contains the locale.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot that contains the locale. </p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale that will be deleted. The
    #            string must match one of the supported locales. For more information,
    #            see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #   @return [String]
    class DeleteBotLocaleRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot that contained the deleted locale.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot that contained the deleted locale.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The language and locale of the deleted locale.</p>
    #   @return [String]
    # @!attribute bot_locale_status
    #   <p>The status of deleting the bot locale. The locale first enters the
    #               <code>Deleting</code> status. Once the locale is deleted it no
    #            longer appears in the list of locales for the bot.</p>
    #   @return [String]
    class DeleteBotLocaleResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_locale_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique ID of the replicated bot to be deleted from the secondary region</p>
    #   @return [String]
    # @!attribute replica_region
    #   <p>The secondary region of the replicated bot that will be deleted.</p>
    #   @return [String]
    class DeleteBotReplicaRequest < Struct.new(
      :bot_id,
      :replica_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique bot ID of the replicated bot generated.</p>
    #   @return [String]
    # @!attribute replica_region
    #   <p>The region of the replicated bot generated.</p>
    #   @return [String]
    # @!attribute bot_replica_status
    #   <p>The operational status of the replicated bot generated.</p>
    #   @return [String]
    class DeleteBotReplicaResponse < Struct.new(
      :bot_id,
      :replica_region,
      :bot_replica_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot to delete. </p>
    #   @return [String]
    # @!attribute skip_resource_in_use_check
    #   <p>By default, Amazon Lex checks if any other resource, such as an alias or 
    #            bot network, is using the bot version before it is deleted and throws a 
    #            <code>ResourceInUseException</code> exception if the bot is 
    #            being used by another resource. Set this parameter to <code>true</code>
    #            to skip this check and remove the bot even if it is being used by 
    #            another resource.</p>
    #   @return [Boolean]
    class DeleteBotRequest < Struct.new(
      :bot_id,
      :skip_resource_in_use_check,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot that Amazon Lex is deleting.</p>
    #   @return [String]
    # @!attribute bot_status
    #   <p>The current status of the bot. The status is <code>Deleting</code>
    #            while the bot and its associated resources are being deleted.</p>
    #   @return [String]
    class DeleteBotResponse < Struct.new(
      :bot_id,
      :bot_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot that contains the version.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot to delete.</p>
    #   @return [String]
    # @!attribute skip_resource_in_use_check
    #   <p>By default, Amazon Lex checks if any other resource, such as an alias or bot network, 
    #            is using the bot version before it is deleted and throws a 
    #            <code>ResourceInUseException</code> exception if the version is 
    #            being used by another resource. Set this parameter to <code>true</code>
    #            to skip this check and remove the version even if it is being used by 
    #            another resource.</p>
    #   @return [Boolean]
    class DeleteBotVersionRequest < Struct.new(
      :bot_id,
      :bot_version,
      :skip_resource_in_use_check,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot that is being deleted.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot that is being deleted.</p>
    #   @return [String]
    # @!attribute bot_status
    #   <p>The current status of the bot. </p>
    #   @return [String]
    class DeleteBotVersionResponse < Struct.new(
      :bot_id,
      :bot_version,
      :bot_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot to remove the custom
    #         vocabulary from.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot to remove the custom vocabulary
    #         from.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The locale identifier for the locale that contains the
    #         custom vocabulary to remove.</p>
    #   @return [String]
    class DeleteCustomVocabularyRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot that the custom vocabulary
    #         was removed from.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot that the custom vocabulary
    #            was removed from.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The locale identifier for the locale that the
    #            custom vocabulary was removed from.</p>
    #   @return [String]
    # @!attribute custom_vocabulary_status
    #   <p>The status of removing the custom vocabulary.</p>
    #   @return [String]
    class DeleteCustomVocabularyResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :custom_vocabulary_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_id
    #   <p>The unique identifier of the export to delete.</p>
    #   @return [String]
    class DeleteExportRequest < Struct.new(
      :export_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_id
    #   <p>The unique identifier of the deleted export.</p>
    #   @return [String]
    # @!attribute export_status
    #   <p>The current status of the deletion. When the deletion is complete,
    #            the export will no longer be returned by the <a href="https://docs.aws.amazon.com/lexv2/latest/APIReference/API_ListExports.html">ListExports</a> operation and calls to the <a href="https://docs.aws.amazon.com/lexv2/latest/APIReference/API_DescribeExport.html">
    #               DescribeExport</a> operation with the export identifier will
    #            fail.</p>
    #   @return [String]
    class DeleteExportResponse < Struct.new(
      :export_id,
      :export_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute import_id
    #   <p>The unique identifier of the import to delete.</p>
    #   @return [String]
    class DeleteImportRequest < Struct.new(
      :import_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute import_id
    #   <p>The unique identifier of the deleted import.</p>
    #   @return [String]
    # @!attribute import_status
    #   <p>The current status of the deletion. When the deletion is complete,
    #            the import will no longer be returned by the <a href="https://docs.aws.amazon.com/lexv2/latest/APIReference/API_ListImports.html">ListImports</a> operation and calls to the <a href="https://docs.aws.amazon.com/lexv2/latest/APIReference/API_DescribeImport.html">DescribeImport</a> operation with the import identifier will
    #            fail.</p>
    #   @return [String]
    class DeleteImportResponse < Struct.new(
      :import_id,
      :import_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute intent_id
    #   <p>The unique identifier of the intent to delete.</p>
    #   @return [String]
    # @!attribute bot_id
    #   <p>The identifier of the bot associated with the intent.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot associated with the intent.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale where the bot will be
    #            deleted. The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #   @return [String]
    class DeleteIntentRequest < Struct.new(
      :intent_id,
      :bot_id,
      :bot_version,
      :locale_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the bot or bot alias that has the
    #            resource policy attached.</p>
    #   @return [String]
    # @!attribute expected_revision_id
    #   <p>The identifier of the revision to edit. If this ID doesn't match the
    #            current revision number, Amazon Lex returns an exception</p>
    #            <p>If you don't specify a revision ID, Amazon Lex will delete the current
    #            policy.</p>
    #   @return [String]
    class DeleteResourcePolicyRequest < Struct.new(
      :resource_arn,
      :expected_revision_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the bot or bot alias that the
    #            resource policy was deleted from.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The current revision of the resource policy. Use the revision ID to
    #            make sure that you are updating the most current version of a resource
    #            policy when you add a policy statement to a resource, delete a
    #            resource, or update a resource.</p>
    #   @return [String]
    class DeleteResourcePolicyResponse < Struct.new(
      :resource_arn,
      :revision_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the bot or bot alias that the
    #            resource policy is attached to.</p>
    #   @return [String]
    # @!attribute statement_id
    #   <p>The name of the statement (SID) to delete from the policy.</p>
    #   @return [String]
    # @!attribute expected_revision_id
    #   <p>The identifier of the revision of the policy to delete the statement
    #            from. If this revision ID doesn't match the current revision ID, Amazon Lex
    #            throws an exception.</p>
    #            <p>If you don't specify a revision, Amazon Lex removes the current contents
    #            of the statement. </p>
    #   @return [String]
    class DeleteResourcePolicyStatementRequest < Struct.new(
      :resource_arn,
      :statement_id,
      :expected_revision_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the bot or bot alias that the
    #            resource policy statement was removed from.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The current revision of the resource policy. Use the revision ID to
    #            make sure that you are updating the most current version of a resource
    #            policy when you add a policy statement to a resource, delete a
    #            resource, or update a resource.</p>
    #   @return [String]
    class DeleteResourcePolicyStatementResponse < Struct.new(
      :resource_arn,
      :revision_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute slot_id
    #   <p>The identifier of the slot to delete. </p>
    #   @return [String]
    # @!attribute bot_id
    #   <p>The identifier of the bot associated with the slot to delete.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot associated with the slot to delete.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale that the slot will be
    #            deleted from. The string must match one of the supported locales. For
    #            more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #   @return [String]
    # @!attribute intent_id
    #   <p>The identifier of the intent associated with the slot.</p>
    #   @return [String]
    class DeleteSlotRequest < Struct.new(
      :slot_id,
      :bot_id,
      :bot_version,
      :locale_id,
      :intent_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute slot_type_id
    #   <p>The identifier of the slot type to delete.</p>
    #   @return [String]
    # @!attribute bot_id
    #   <p>The identifier of the bot associated with the slot type.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot associated with the slot type.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale that the slot type will be
    #            deleted from. The string must match one of the supported locales. For
    #            more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #   @return [String]
    # @!attribute skip_resource_in_use_check
    #   <p>By default, the <code>DeleteSlotType</code> operations throws a
    #               <code>ResourceInUseException</code> exception if you try to delete a
    #            slot type used by a slot. Set the <code>skipResourceInUseCheck</code>
    #            parameter to <code>true</code> to skip this check and remove the slot
    #            type even if a slot uses it.</p>
    #   @return [Boolean]
    class DeleteSlotTypeRequest < Struct.new(
      :slot_type_id,
      :bot_id,
      :bot_version,
      :locale_id,
      :skip_resource_in_use_check,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_set_id
    #   <p>The test set Id of the test set to be deleted.</p>
    #   @return [String]
    class DeleteTestSetRequest < Struct.new(
      :test_set_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot that contains the
    #            utterances.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale where the utterances were
    #            collected. The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported
    #            languages</a>.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the session with the user. The ID is
    #            returned in the response from the <a href="https://docs.aws.amazon.com/lexv2/latest/APIReference/API_runtime_RecognizeText.html">RecognizeText</a> and <a href="https://docs.aws.amazon.com/lexv2/latest/APIReference/API_runtime_RecognizeUtterance.html">RecognizeUtterance</a> operations.</p>
    #   @return [String]
    class DeleteUtterancesRequest < Struct.new(
      :bot_id,
      :locale_id,
      :session_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteUtterancesResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_alias_id
    #   <p>The identifier of the bot alias to describe.</p>
    #   @return [String]
    # @!attribute bot_id
    #   <p>The identifier of the bot associated with the bot alias to
    #            describe.</p>
    #   @return [String]
    class DescribeBotAliasRequest < Struct.new(
      :bot_alias_id,
      :bot_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_alias_id
    #   <p>The identifier of the bot alias.</p>
    #   @return [String]
    # @!attribute bot_alias_name
    #   <p>The name of the bot alias.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the bot alias.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot associated with the bot alias.</p>
    #   @return [String]
    # @!attribute bot_alias_locale_settings
    #   <p>The locale settings that are unique to the alias.</p>
    #   @return [Hash<String, Types::BotAliasLocaleSettings>]
    # @!attribute conversation_log_settings
    #   <p>Specifics of how Amazon Lex logs text and audio conversations with the
    #            bot associated with the alias.</p>
    #   @return [Types::ConversationLogSettings]
    # @!attribute sentiment_analysis_settings
    #   <p>Determines whether Amazon Lex will use Amazon Comprehend to detect the sentiment of
    #            user utterances.</p>
    #   @return [Types::SentimentAnalysisSettings]
    # @!attribute bot_alias_history_events
    #   <p>A list of events that affect a bot alias. For example, an event is
    #            recorded when the version that the alias points to changes.</p>
    #   @return [Array<Types::BotAliasHistoryEvent>]
    # @!attribute bot_alias_status
    #   <p>The current status of the alias. When the alias is
    #               <code>Available</code>, the alias is ready for use with your
    #            bot.</p>
    #   @return [String]
    # @!attribute bot_id
    #   <p>The identifier of the bot associated with the bot alias.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>A timestamp of the date and time that the alias was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>A timestamp of the date and time that the alias was last
    #            updated.</p>
    #   @return [Time]
    # @!attribute parent_bot_networks
    #   <p>A list of the networks to which the bot alias you described belongs.</p>
    #   @return [Array<Types::ParentBotNetwork>]
    class DescribeBotAliasResponse < Struct.new(
      :bot_alias_id,
      :bot_alias_name,
      :description,
      :bot_version,
      :bot_alias_locale_settings,
      :conversation_log_settings,
      :sentiment_analysis_settings,
      :bot_alias_history_events,
      :bot_alias_status,
      :bot_id,
      :creation_date_time,
      :last_updated_date_time,
      :parent_bot_networks,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot associated with the locale.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot associated with the
    #            locale.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The unique identifier of the locale to describe. The string must
    #            match one of the supported locales. For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>. </p>
    #   @return [String]
    class DescribeBotLocaleRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot associated with the locale.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot associated with the
    #            locale.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The unique identifier of the described locale.</p>
    #   @return [String]
    # @!attribute locale_name
    #   <p>The name of the locale.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the locale.</p>
    #   @return [String]
    # @!attribute nlu_intent_confidence_threshold
    #   <p>The confidence threshold where Amazon Lex inserts the
    #               <code>AMAZON.FallbackIntent</code> and
    #               <code>AMAZON.KendraSearchIntent</code> intents in the list of
    #            possible intents for an utterance.</p>
    #   @return [Float]
    # @!attribute voice_settings
    #   <p>The Amazon Polly voice Amazon Lex uses for voice interaction with the
    #            user.</p>
    #   @return [Types::VoiceSettings]
    # @!attribute intents_count
    #   <p>The number of intents defined for the locale.</p>
    #   @return [Integer]
    # @!attribute slot_types_count
    #   <p>The number of slot types defined for the locale.</p>
    #   @return [Integer]
    # @!attribute bot_locale_status
    #   <p>The status of the bot. If the status is <code>Failed</code>, the
    #            reasons for the failure are listed in the <code>failureReasons</code>
    #            field.</p>
    #   @return [String]
    # @!attribute failure_reasons
    #   <p>if <code>botLocaleStatus</code> is <code>Failed</code>, Amazon Lex
    #            explains why it failed to build the bot.</p>
    #   @return [Array<String>]
    # @!attribute creation_date_time
    #   <p>The date and time that the locale was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time that the locale was last updated.</p>
    #   @return [Time]
    # @!attribute last_build_submitted_date_time
    #   <p>The date and time that the locale was last submitted for
    #            building.</p>
    #   @return [Time]
    # @!attribute bot_locale_history_events
    #   <p>History of changes, such as when a locale is used in an alias, that
    #            have taken place for the locale.</p>
    #   @return [Array<Types::BotLocaleHistoryEvent>]
    # @!attribute recommended_actions
    #   <p>Recommended actions to take to resolve an error in the
    #               <code>failureReasons</code> field.</p>
    #   @return [Array<String>]
    # @!attribute generative_ai_settings
    #   <p>Contains settings for Amazon Bedrock's generative AI features for your bot locale.</p>
    #   @return [Types::GenerativeAISettings]
    class DescribeBotLocaleResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :locale_name,
      :description,
      :nlu_intent_confidence_threshold,
      :voice_settings,
      :intents_count,
      :slot_types_count,
      :bot_locale_status,
      :failure_reasons,
      :creation_date_time,
      :last_updated_date_time,
      :last_build_submitted_date_time,
      :bot_locale_history_events,
      :recommended_actions,
      :generative_ai_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot associated with the bot
    #            recommendation.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot associated with the bot
    #            recommendation.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the bot recommendation
    #            to describe. The string must match one of the supported locales. For
    #            more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #   @return [String]
    # @!attribute bot_recommendation_id
    #   <p>The identifier of the bot recommendation to describe.</p>
    #   @return [String]
    class DescribeBotRecommendationRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_recommendation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot associated with the bot
    #            recommendation.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot associated with the bot
    #            recommendation.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the bot recommendation
    #            to describe.</p>
    #   @return [String]
    # @!attribute bot_recommendation_status
    #   <p>The status of the bot recommendation. If the status is Failed, then
    #            the reasons for the failure are listed in the failureReasons field.
    #         </p>
    #   @return [String]
    # @!attribute bot_recommendation_id
    #   <p>The identifier of the bot recommendation being described.</p>
    #   @return [String]
    # @!attribute failure_reasons
    #   <p>If botRecommendationStatus is Failed, Amazon Lex explains why.</p>
    #   @return [Array<String>]
    # @!attribute creation_date_time
    #   <p>The date and time that the bot recommendation was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time that the bot recommendation was last
    #            updated.</p>
    #   @return [Time]
    # @!attribute transcript_source_setting
    #   <p>The object representing the Amazon S3 bucket containing the transcript,
    #            as well as the associated metadata.</p>
    #   @return [Types::TranscriptSourceSetting]
    # @!attribute encryption_setting
    #   <p>The object representing the passwords that were used to encrypt the
    #            data related to the bot recommendation results, as well as the KMS key
    #            ARN used to encrypt the associated metadata.</p>
    #   @return [Types::EncryptionSetting]
    # @!attribute bot_recommendation_results
    #   <p>The object representing the URL of the bot definition, the URL of
    #            the associated transcript and a statistical summary of the bot
    #            recommendation results.</p>
    #   @return [Types::BotRecommendationResults]
    class DescribeBotRecommendationResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_recommendation_status,
      :bot_recommendation_id,
      :failure_reasons,
      :creation_date_time,
      :last_updated_date_time,
      :transcript_source_setting,
      :encryption_setting,
      :bot_recommendation_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The request for the unique bot ID of the replicated bot being monitored.</p>
    #   @return [String]
    # @!attribute replica_region
    #   <p>The request for the region of the replicated bot being monitored.</p>
    #   @return [String]
    class DescribeBotReplicaRequest < Struct.new(
      :bot_id,
      :replica_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique bot ID of the replicated bot being monitored.</p>
    #   @return [String]
    # @!attribute replica_region
    #   <p>The region of the replicated bot being monitored.</p>
    #   @return [String]
    # @!attribute source_region
    #   <p>The source region of the replicated bot being monitored.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The creation date and time of the replicated bot being monitored.</p>
    #   @return [Time]
    # @!attribute bot_replica_status
    #   <p>The operational status of the replicated bot being monitored.</p>
    #   @return [String]
    # @!attribute failure_reasons
    #   <p>The failure reasons the bot being monitored failed to replicate.</p>
    #   @return [Array<String>]
    class DescribeBotReplicaResponse < Struct.new(
      :bot_id,
      :replica_region,
      :source_region,
      :creation_date_time,
      :bot_replica_status,
      :failure_reasons,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot to describe.</p>
    #   @return [String]
    class DescribeBotRequest < Struct.new(
      :bot_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot for which to return the generation details.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot for which to return the generation details.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The locale of the bot for which to return the generation details.</p>
    #   @return [String]
    # @!attribute generation_id
    #   <p>The unique identifier of the generation request for which to 
    #            return the generation details.</p>
    #   @return [String]
    class DescribeBotResourceGenerationRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :generation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot for which the generation request was 
    #         made.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot for which the generation request was made.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The locale of the bot for which the generation request was made.</p>
    #   @return [String]
    # @!attribute generation_id
    #   <p>The generation ID for which to return the generation details.</p>
    #   @return [String]
    # @!attribute failure_reasons
    #   <p>A list of reasons why the generation of bot resources through natural language description failed.</p>
    #   @return [Array<String>]
    # @!attribute generation_status
    #   <p>The status of the generation request.</p>
    #   @return [String]
    # @!attribute generation_input_prompt
    #   <p>The prompt used in the generation request.</p>
    #   @return [String]
    # @!attribute generated_bot_locale_url
    #   <p>The Amazon S3 location of the generated bot locale configuration.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time at which the item was generated.</p>
    #   @return [Time]
    # @!attribute model_arn
    #   <p>The ARN of the model used to generate the bot resources.</p>
    #   @return [String]
    # @!attribute last_updated_date_time
    #   <p>The date and time at which the generated item was updated.</p>
    #   @return [Time]
    class DescribeBotResourceGenerationResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :generation_id,
      :failure_reasons,
      :generation_status,
      :generation_input_prompt,
      :generated_bot_locale_url,
      :creation_date_time,
      :model_arn,
      :last_updated_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot.</p>
    #   @return [String]
    # @!attribute bot_name
    #   <p>The name of the bot.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the bot. </p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that has permission to
    #            access the bot.</p>
    #   @return [String]
    # @!attribute data_privacy
    #   <p>Settings for managing data privacy of the bot and its conversations
    #            with users.</p>
    #   @return [Types::DataPrivacy]
    # @!attribute idle_session_ttl_in_seconds
    #   <p>The maximum time in seconds that Amazon Lex retains the data gathered in
    #            a conversation.</p>
    #   @return [Integer]
    # @!attribute bot_status
    #   <p>The current status of the bot. When the status is
    #               <code>Available</code> the bot is ready to be used in conversations
    #            with users.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>A timestamp of the date and time that the bot was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>A timestamp of the date and time that the bot was last
    #            updated.</p>
    #   @return [Time]
    # @!attribute bot_type
    #   <p>The type of the bot that was described.</p>
    #   @return [String]
    # @!attribute bot_members
    #   <p>The list of bots in the network that was described.</p>
    #   @return [Array<Types::BotMember>]
    # @!attribute failure_reasons
    #   <p>If the <code>botStatus</code> is <code>Failed</code>, this contains
    #            a list of reasons that the bot couldn't be built.</p>
    #   @return [Array<String>]
    # @!attribute error_log_settings
    #   <p>Contains the configuration for error logging that specifies where and how bot errors are recorded, including destinations like CloudWatch Logs.</p>
    #   @return [Types::ErrorLogSettings]
    class DescribeBotResponse < Struct.new(
      :bot_id,
      :bot_name,
      :description,
      :role_arn,
      :data_privacy,
      :idle_session_ttl_in_seconds,
      :bot_status,
      :creation_date_time,
      :last_updated_date_time,
      :bot_type,
      :bot_members,
      :failure_reasons,
      :error_log_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot containing the version to return metadata
    #            for.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot to return metadata for.</p>
    #   @return [String]
    class DescribeBotVersionRequest < Struct.new(
      :bot_id,
      :bot_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot that contains the version.</p>
    #   @return [String]
    # @!attribute bot_name
    #   <p>The name of the bot that contains the version.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot that was described.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description specified for the bot.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that has permission to
    #            access the bot version.</p>
    #   @return [String]
    # @!attribute data_privacy
    #   <p>Data privacy settings for the bot version.</p>
    #   @return [Types::DataPrivacy]
    # @!attribute idle_session_ttl_in_seconds
    #   <p>The number of seconds that a session with the bot remains active
    #            before it is discarded by Amazon Lex.</p>
    #   @return [Integer]
    # @!attribute bot_status
    #   <p>The current status of the bot. When the status is
    #               <code>Available</code>, the bot version is ready for use.</p>
    #   @return [String]
    # @!attribute failure_reasons
    #   <p>If the <code>botStatus</code> is <code>Failed</code>, this contains
    #            a list of reasons that the version couldn't be built.</p>
    #   @return [Array<String>]
    # @!attribute creation_date_time
    #   <p>A timestamp of the date and time that the bot version was
    #            created.</p>
    #   @return [Time]
    # @!attribute parent_bot_networks
    #   <p>A list of the networks to which the bot version you described belongs.</p>
    #   @return [Array<Types::ParentBotNetwork>]
    # @!attribute bot_type
    #   <p>The type of the bot in the version that was described.</p>
    #   @return [String]
    # @!attribute bot_members
    #   <p>The members of bot network in the version that was described.</p>
    #   @return [Array<Types::BotMember>]
    class DescribeBotVersionResponse < Struct.new(
      :bot_id,
      :bot_name,
      :bot_version,
      :description,
      :role_arn,
      :data_privacy,
      :idle_session_ttl_in_seconds,
      :bot_status,
      :failure_reasons,
      :creation_date_time,
      :parent_bot_networks,
      :bot_type,
      :bot_members,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot that contains the custom vocabulary.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The bot version of the bot to return metadata for.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The locale to return the custom vocabulary information for.
    #         The locale must be <code>en_GB</code>.</p>
    #   @return [String]
    class DescribeCustomVocabularyMetadataRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot that contains the custom vocabulary.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot that contains the custom vocabulary to describe.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The locale that contains the custom vocabulary to describe.</p>
    #   @return [String]
    # @!attribute custom_vocabulary_status
    #   <p>The status of the custom vocabulary. If the status is 
    #         <code>Ready</code> the custom vocabulary is ready to use.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time that the custom vocabulary was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time that the custom vocabulary was last updated.</p>
    #   @return [Time]
    class DescribeCustomVocabularyMetadataResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :custom_vocabulary_status,
      :creation_date_time,
      :last_updated_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_id
    #   <p>The unique identifier of the export to describe.</p>
    #   @return [String]
    class DescribeExportRequest < Struct.new(
      :export_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_id
    #   <p>The unique identifier of the described export.</p>
    #   @return [String]
    # @!attribute resource_specification
    #   <p>The bot, bot ID, and optional locale ID of the exported bot or bot
    #            locale.</p>
    #   @return [Types::ExportResourceSpecification]
    # @!attribute file_format
    #   <p>The file format used in the files that describe the resource.
    #         </p>
    #   @return [String]
    # @!attribute export_status
    #   <p>The status of the export. When the status is <code>Complete</code>
    #            the export archive file is available for download.</p>
    #   @return [String]
    # @!attribute failure_reasons
    #   <p>If the <code>exportStatus</code> is failed, contains one or more
    #            reasons why the export could not be completed.</p>
    #   @return [Array<String>]
    # @!attribute download_url
    #   <p>A pre-signed S3 URL that points to the bot or bot locale archive.
    #            The URL is only available for 5 minutes after calling the
    #               <code>DescribeExport</code> operation.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time that the export was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The last date and time that the export was updated.</p>
    #   @return [Time]
    class DescribeExportResponse < Struct.new(
      :export_id,
      :resource_specification,
      :file_format,
      :export_status,
      :failure_reasons,
      :download_url,
      :creation_date_time,
      :last_updated_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute import_id
    #   <p>The unique identifier of the import to describe.</p>
    #   @return [String]
    class DescribeImportRequest < Struct.new(
      :import_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute import_id
    #   <p>The unique identifier of the described import.</p>
    #   @return [String]
    # @!attribute resource_specification
    #   <p>The specifications of the imported bot, bot locale, or custom
    #            vocabulary.</p>
    #   @return [Types::ImportResourceSpecification]
    # @!attribute imported_resource_id
    #   <p>The unique identifier that Amazon Lex assigned to the resource created by
    #            the import.</p>
    #   @return [String]
    # @!attribute imported_resource_name
    #   <p>The name of the imported resource.</p>
    #   @return [String]
    # @!attribute merge_strategy
    #   <p>The strategy used when there was a name conflict between the
    #            imported resource and an existing resource. When the merge strategy is
    #               <code>FailOnConflict</code> existing resources are not overwritten
    #            and the import fails.</p>
    #   @return [String]
    # @!attribute import_status
    #   <p>The status of the import process. When the status is
    #               <code>Completed</code> the resource is imported and ready for
    #            use.</p>
    #   @return [String]
    # @!attribute failure_reasons
    #   <p>If the <code>importStatus</code> field is <code>Failed</code>, this
    #            provides one or more reasons for the failure.</p>
    #   @return [Array<String>]
    # @!attribute creation_date_time
    #   <p>The date and time that the import was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time that the import was last updated.</p>
    #   @return [Time]
    class DescribeImportResponse < Struct.new(
      :import_id,
      :resource_specification,
      :imported_resource_id,
      :imported_resource_name,
      :merge_strategy,
      :import_status,
      :failure_reasons,
      :creation_date_time,
      :last_updated_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute intent_id
    #   <p>The identifier of the intent to describe.</p>
    #   @return [String]
    # @!attribute bot_id
    #   <p>The identifier of the bot associated with the intent.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot associated with the intent.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the intent to describe.
    #            The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #   @return [String]
    class DescribeIntentRequest < Struct.new(
      :intent_id,
      :bot_id,
      :bot_version,
      :locale_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute intent_id
    #   <p>The unique identifier assigned to the intent when it was
    #            created.</p>
    #   @return [String]
    # @!attribute intent_name
    #   <p>The name specified for the intent.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the intent.</p>
    #   @return [String]
    # @!attribute parent_intent_signature
    #   <p>The identifier of the built-in intent that this intent is derived
    #            from, if any.</p>
    #   @return [String]
    # @!attribute sample_utterances
    #   <p>User utterances that trigger this intent.</p>
    #   @return [Array<Types::SampleUtterance>]
    # @!attribute dialog_code_hook
    #   <p>The Lambda function called during each turn of a conversation with
    #            the intent.</p>
    #   @return [Types::DialogCodeHookSettings]
    # @!attribute fulfillment_code_hook
    #   <p>The Lambda function called when the intent is complete and ready for
    #            fulfillment.</p>
    #   @return [Types::FulfillmentCodeHookSettings]
    # @!attribute slot_priorities
    #   <p>The list that determines the priority that slots should be elicited
    #            from the user.</p>
    #   @return [Array<Types::SlotPriority>]
    # @!attribute intent_confirmation_setting
    #   <p>Prompts that Amazon Lex sends to the user to confirm completion of an
    #            intent.</p>
    #   @return [Types::IntentConfirmationSetting]
    # @!attribute intent_closing_setting
    #   <p>The response that Amazon Lex sends to when the intent is closed.</p>
    #   @return [Types::IntentClosingSetting]
    # @!attribute input_contexts
    #   <p>A list of contexts that must be active for the intent to be
    #            considered for sending to the user.</p>
    #   @return [Array<Types::InputContext>]
    # @!attribute output_contexts
    #   <p>A list of contexts that are activated when the intent is
    #            fulfilled.</p>
    #   @return [Array<Types::OutputContext>]
    # @!attribute kendra_configuration
    #   <p>Configuration information required to use the
    #               <code>AMAZON.KendraSearchIntent</code> intent.</p>
    #   @return [Types::KendraConfiguration]
    # @!attribute bot_id
    #   <p>The identifier of the bot associated with the intent.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot associated with the intent.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The language and locale specified for the intent.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>A timestamp of the date and time that the intent was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>A timestamp of the date and time that the intent was last
    #            updated.</p>
    #   @return [Time]
    # @!attribute initial_response_setting
    #   <p>Configuration setting for a response sent to the user before Amazon Lex starts eliciting slots.</p>
    #   @return [Types::InitialResponseSetting]
    # @!attribute qn_a_intent_configuration
    #   <p>Details about the configuration of the built-in <code>Amazon.QnAIntent</code>.</p>
    #   @return [Types::QnAIntentConfiguration]
    # @!attribute q_in_connect_intent_configuration
    #   <p>Qinconnect intent configuration details for the describe intent response.</p>
    #   @return [Types::QInConnectIntentConfiguration]
    class DescribeIntentResponse < Struct.new(
      :intent_id,
      :intent_name,
      :description,
      :parent_intent_signature,
      :sample_utterances,
      :dialog_code_hook,
      :fulfillment_code_hook,
      :slot_priorities,
      :intent_confirmation_setting,
      :intent_closing_setting,
      :input_contexts,
      :output_contexts,
      :kendra_configuration,
      :bot_id,
      :bot_version,
      :locale_id,
      :creation_date_time,
      :last_updated_date_time,
      :initial_response_setting,
      :qn_a_intent_configuration,
      :q_in_connect_intent_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the bot or bot alias that the
    #            resource policy is attached to.</p>
    #   @return [String]
    class DescribeResourcePolicyRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the bot or bot alias that the
    #            resource policy is attached to.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The JSON structure that contains the resource policy. For more
    #            information about the contents of a JSON policy document, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html"> IAM JSON policy
    #               reference </a>.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The current revision of the resource policy. Use the revision ID to
    #            make sure that you are updating the most current version of a resource
    #            policy when you add a policy statement to a resource, delete a
    #            resource, or update a resource.</p>
    #   @return [String]
    class DescribeResourcePolicyResponse < Struct.new(
      :resource_arn,
      :policy,
      :revision_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute slot_id
    #   <p>The unique identifier for the slot.</p>
    #   @return [String]
    # @!attribute bot_id
    #   <p>The identifier of the bot associated with the slot.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot associated with the slot.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the slot to describe.
    #            The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #   @return [String]
    # @!attribute intent_id
    #   <p>The identifier of the intent that contains the slot.</p>
    #   @return [String]
    class DescribeSlotRequest < Struct.new(
      :slot_id,
      :bot_id,
      :bot_version,
      :locale_id,
      :intent_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute slot_id
    #   <p>The unique identifier generated for the slot.</p>
    #   @return [String]
    # @!attribute slot_name
    #   <p>The name specified for the slot.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description specified for the slot.</p>
    #   @return [String]
    # @!attribute slot_type_id
    #   <p>The identifier of the slot type that determines the values entered
    #            into the slot.</p>
    #   @return [String]
    # @!attribute value_elicitation_setting
    #   <p>Prompts that Amazon Lex uses to elicit a value for the slot.</p>
    #   @return [Types::SlotValueElicitationSetting]
    # @!attribute obfuscation_setting
    #   <p>Whether slot values are shown in Amazon CloudWatch logs. If the value is
    #               <code>None</code>, the actual value of the slot is shown in
    #            logs.</p>
    #   @return [Types::ObfuscationSetting]
    # @!attribute bot_id
    #   <p>The identifier of the bot associated with the slot.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot associated with the slot.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The language and locale specified for the slot.</p>
    #   @return [String]
    # @!attribute intent_id
    #   <p>The identifier of the intent associated with the slot.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>A timestamp of the date and time that the slot was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>A timestamp of the date and time that the slot was last
    #            updated.</p>
    #   @return [Time]
    # @!attribute multiple_values_setting
    #   <p>Indicates whether the slot accepts multiple values in a single
    #            utterance.</p>
    #            <p>If the <code>multipleValuesSetting</code> is not set, the default
    #            value is <code>false</code>.</p>
    #   @return [Types::MultipleValuesSetting]
    # @!attribute sub_slot_setting
    #   <p>Specifications for the constituent sub slots and the  
    #           expression for the composite slot.</p>
    #   @return [Types::SubSlotSetting]
    class DescribeSlotResponse < Struct.new(
      :slot_id,
      :slot_name,
      :description,
      :slot_type_id,
      :value_elicitation_setting,
      :obfuscation_setting,
      :bot_id,
      :bot_version,
      :locale_id,
      :intent_id,
      :creation_date_time,
      :last_updated_date_time,
      :multiple_values_setting,
      :sub_slot_setting,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute slot_type_id
    #   <p>The identifier of the slot type.</p>
    #   @return [String]
    # @!attribute bot_id
    #   <p>The identifier of the bot associated with the slot type.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot associated with the slot type.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the slot type to
    #            describe. The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #   @return [String]
    class DescribeSlotTypeRequest < Struct.new(
      :slot_type_id,
      :bot_id,
      :bot_version,
      :locale_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute slot_type_id
    #   <p>The unique identifier for the slot type.</p>
    #   @return [String]
    # @!attribute slot_type_name
    #   <p>The name specified for the slot type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description specified for the slot type.</p>
    #   @return [String]
    # @!attribute slot_type_values
    #   <p>The values that the slot type can take. Includes any synonyms for
    #            the slot type values.</p>
    #   @return [Array<Types::SlotTypeValue>]
    # @!attribute value_selection_setting
    #   <p>The strategy that Amazon Lex uses to choose a value from a list of
    #            possible values.</p>
    #   @return [Types::SlotValueSelectionSetting]
    # @!attribute parent_slot_type_signature
    #   <p>The built in slot type used as a parent to this slot type.</p>
    #   @return [String]
    # @!attribute bot_id
    #   <p>The identifier of the bot associated with the slot type.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot associated with the slot type.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The language and locale specified for the slot type.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>A timestamp of the date and time that the slot type was
    #            created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>A timestamp of the date and time that the slot type was last
    #            updated.</p>
    #   @return [Time]
    # @!attribute external_source_setting
    #   <p>Provides information about the external source of the slot type's definition.</p>
    #   @return [Types::ExternalSourceSetting]
    # @!attribute composite_slot_type_setting
    #   <p>Specifications for a composite slot type.</p>
    #   @return [Types::CompositeSlotTypeSetting]
    class DescribeSlotTypeResponse < Struct.new(
      :slot_type_id,
      :slot_type_name,
      :description,
      :slot_type_values,
      :value_selection_setting,
      :parent_slot_type_signature,
      :bot_id,
      :bot_version,
      :locale_id,
      :creation_date_time,
      :last_updated_date_time,
      :external_source_setting,
      :composite_slot_type_setting,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_execution_id
    #   <p>The execution Id of the test set execution.</p>
    #   @return [String]
    class DescribeTestExecutionRequest < Struct.new(
      :test_execution_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_execution_id
    #   <p>The execution Id for the test set execution.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The execution creation date and time for the test set execution.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time of the last update for the execution.</p>
    #   @return [Time]
    # @!attribute test_execution_status
    #   <p>The test execution status for the test execution.</p>
    #   @return [String]
    # @!attribute test_set_id
    #   <p>The test set Id for the test set execution.</p>
    #   @return [String]
    # @!attribute test_set_name
    #   <p>The test set name of the test set execution.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The target bot for the test set execution details.</p>
    #   @return [Types::TestExecutionTarget]
    # @!attribute api_mode
    #   <p>Indicates whether we use streaming or non-streaming APIs are used for 
    #         the test set execution. For streaming, <code>StartConversation</code> 
    #         Amazon Lex Runtime API is used. Whereas for non-streaming, <code>RecognizeUtterance</code> 
    #         and <code>RecognizeText</code> Amazon Lex Runtime API is used.</p>
    #   @return [String]
    # @!attribute test_execution_modality
    #   <p>Indicates whether test set is audio or text.</p>
    #   @return [String]
    # @!attribute failure_reasons
    #   <p>Reasons for the failure of the test set execution.</p>
    #   @return [Array<String>]
    class DescribeTestExecutionResponse < Struct.new(
      :test_execution_id,
      :creation_date_time,
      :last_updated_date_time,
      :test_execution_status,
      :test_set_id,
      :test_set_name,
      :target,
      :api_mode,
      :test_execution_modality,
      :failure_reasons,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_set_discrepancy_report_id
    #   <p>The unique identifier of the test set discrepancy report.</p>
    #   @return [String]
    class DescribeTestSetDiscrepancyReportRequest < Struct.new(
      :test_set_discrepancy_report_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_set_discrepancy_report_id
    #   <p>The unique identifier of the test set discrepancy report to describe.</p>
    #   @return [String]
    # @!attribute test_set_id
    #   <p>The test set Id for the test set discrepancy report.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The time and date of creation for the test set discrepancy report.</p>
    #   @return [Time]
    # @!attribute target
    #   <p>The target bot location for the test set discrepancy report.</p>
    #   @return [Types::TestSetDiscrepancyReportResourceTarget]
    # @!attribute test_set_discrepancy_report_status
    #   <p>The status for the test set discrepancy report.</p>
    #   @return [String]
    # @!attribute last_updated_data_time
    #   <p>The date and time of the last update for the test set discrepancy report.</p>
    #   @return [Time]
    # @!attribute test_set_discrepancy_top_errors
    #   <p>The top 200 error results from the test set discrepancy report.</p>
    #   @return [Types::TestSetDiscrepancyErrors]
    # @!attribute test_set_discrepancy_raw_output_url
    #   <p>Pre-signed Amazon S3 URL to download the test set discrepancy report.</p>
    #   @return [String]
    # @!attribute failure_reasons
    #   <p>The failure report for the test set discrepancy report generation action.</p>
    #   @return [Array<String>]
    class DescribeTestSetDiscrepancyReportResponse < Struct.new(
      :test_set_discrepancy_report_id,
      :test_set_id,
      :creation_date_time,
      :target,
      :test_set_discrepancy_report_status,
      :last_updated_data_time,
      :test_set_discrepancy_top_errors,
      :test_set_discrepancy_raw_output_url,
      :failure_reasons,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_set_generation_id
    #   <p>The unique identifier of the test set generation.</p>
    #   @return [String]
    class DescribeTestSetGenerationRequest < Struct.new(
      :test_set_generation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_set_generation_id
    #   <p>The unique identifier of the test set generation.</p>
    #   @return [String]
    # @!attribute test_set_generation_status
    #   <p>The status for the test set generation.</p>
    #   @return [String]
    # @!attribute failure_reasons
    #   <p>The reasons the test set generation failed.</p>
    #   @return [Array<String>]
    # @!attribute test_set_id
    #   <p>The unique identifier for the test set created for the generated test set.</p>
    #   @return [String]
    # @!attribute test_set_name
    #   <p>The test set name for the generated test set.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The test set description for the test set generation.</p>
    #   @return [String]
    # @!attribute storage_location
    #   <p>The Amazon S3 storage location for the test set generation.</p>
    #   @return [Types::TestSetStorageLocation]
    # @!attribute generation_data_source
    #   <p>The data source of the test set used for the test set generation.</p>
    #   @return [Types::TestSetGenerationDataSource]
    # @!attribute role_arn
    #   <p> The roleARN of the test set used for the test set generation.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The creation date and time for the test set generation.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time of the last update for the test set generation.</p>
    #   @return [Time]
    class DescribeTestSetGenerationResponse < Struct.new(
      :test_set_generation_id,
      :test_set_generation_status,
      :failure_reasons,
      :test_set_id,
      :test_set_name,
      :description,
      :storage_location,
      :generation_data_source,
      :role_arn,
      :creation_date_time,
      :last_updated_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_set_id
    #   <p>The test set Id for the test set request.</p>
    #   @return [String]
    class DescribeTestSetRequest < Struct.new(
      :test_set_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_set_id
    #   <p>The test set Id for the test set response.</p>
    #   @return [String]
    # @!attribute test_set_name
    #   <p>The test set name of the test set.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the test set.</p>
    #   @return [String]
    # @!attribute modality
    #   <p>Indicates whether the test set is audio or text data.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the test set.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The roleARN used for any operation in the test set to access 
    #         resources in the Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute num_turns
    #   <p>The total number of agent and user turn in the test set.</p>
    #   @return [Integer]
    # @!attribute storage_location
    #   <p>The Amazon S3 storage location for the test set data.</p>
    #   @return [Types::TestSetStorageLocation]
    # @!attribute creation_date_time
    #   <p>The creation date and time for the test set data.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time for the last update of the test set data.</p>
    #   @return [Time]
    class DescribeTestSetResponse < Struct.new(
      :test_set_id,
      :test_set_name,
      :description,
      :modality,
      :status,
      :role_arn,
      :num_turns,
      :storage_location,
      :creation_date_time,
      :last_updated_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains specifications for the descriptive bot building feature.</p>
    # @!attribute enabled
    #   <p>Specifies whether the descriptive bot building feature is activated or not.</p>
    #   @return [Boolean]
    # @!attribute bedrock_model_specification
    #   <p>An object containing information about the Amazon Bedrock model used to interpret the prompt used in descriptive bot building.</p>
    #   @return [Types::BedrockModelSpecification]
    class DescriptiveBotBuilderSpecification < Struct.new(
      :enabled,
      :bedrock_model_specification,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>Defines the action that the bot executes at runtime when the
    #          conversation reaches this step.</p>
    # @!attribute type
    #   <p>The action that the bot should execute. </p>
    #   @return [String]
    # @!attribute slot_to_elicit
    #   <p>If the dialog action is <code>ElicitSlot</code>, defines the slot to
    #            elicit from the user.</p>
    #   @return [String]
    # @!attribute suppress_next_message
    #   <p>When true the next message for the intent is not used.</p>
    #   @return [Boolean]
    class DialogAction < Struct.new(
      :type,
      :slot_to_elicit,
      :suppress_next_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Settings that specify the dialog code hook that is
    #          called by Amazon Lex at a step of the conversation. </p>
    # @!attribute enable_code_hook_invocation
    #   <p>Indicates whether a Lambda function should be invoked
    #            for the dialog.</p>
    #   @return [Boolean]
    # @!attribute active
    #   <p>Determines whether a dialog code hook is used when the intent is
    #            activated.</p>
    #   @return [Boolean]
    # @!attribute invocation_label
    #   <p>A label that indicates the dialog step from which the dialog code
    #            hook is happening.</p>
    #   @return [String]
    # @!attribute post_code_hook_specification
    #   <p>Contains the responses and actions that Amazon Lex takes
    #            after the Lambda function is complete.</p>
    #   @return [Types::PostDialogCodeHookInvocationSpecification]
    class DialogCodeHookInvocationSetting < Struct.new(
      :enable_code_hook_invocation,
      :active,
      :invocation_label,
      :post_code_hook_specification,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Settings that determine the Lambda function that Amazon Lex uses for
    #          processing user responses.</p>
    # @!attribute enabled
    #   <p>Enables the dialog code hook so that it processes user
    #            requests.</p>
    #   @return [Boolean]
    class DialogCodeHookSettings < Struct.new(
      :enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>The current state of the conversation with the user.</p>
    # @!attribute dialog_action
    #   <p>Defines the action that the bot executes at runtime when the
    #            conversation reaches this step.</p>
    #   @return [Types::DialogAction]
    # @!attribute intent
    #   <p>Override settings to configure the intent state.</p>
    #   @return [Types::IntentOverride]
    # @!attribute session_attributes
    #   <p>Map of key/value pairs representing session-specific context
    #            information. It contains application information passed between Amazon Lex and a client application.</p>
    #   @return [Hash<String, String>]
    class DialogState < Struct.new(
      :dialog_action,
      :intent,
      :session_attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Settings that specify the dialog code hook that is called by Amazon Lex between eliciting slot values.</p>
    # @!attribute enable_code_hook_invocation
    #   <p>Indicates whether a Lambda function should be invoked
    #            for the dialog.</p>
    #   @return [Boolean]
    # @!attribute invocation_label
    #   <p>A label that indicates the dialog step from which the dialog code
    #            hook is happening.</p>
    #   @return [String]
    class ElicitationCodeHookInvocationSetting < Struct.new(
      :enable_code_hook_invocation,
      :invocation_label,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The object representing the passwords that were used to encrypt the
    #             data related to the bot recommendation, as well as the KMS key ARN used
    #             to encrypt the associated metadata.</p>
    # @!attribute kms_key_arn
    #   <p>The KMS key ARN used to encrypt the metadata associated with the bot
    #               recommendation.</p>
    #   @return [String]
    # @!attribute bot_locale_export_password
    #   <p>The password used to encrypt the recommended bot recommendation
    #               file.</p>
    #   @return [String]
    # @!attribute associated_transcripts_password
    #   <p>The password used to encrypt the associated transcript file.</p>
    #   @return [String]
    class EncryptionSetting < Struct.new(
      :kms_key_arn,
      :bot_locale_export_password,
      :associated_transcripts_password,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Settings parameters for the error logs, whether it is enabled or disabled.</p>
    # @!attribute enabled
    #   <p>Settings parameters for the error logs, when it is enabled.</p>
    #   @return [Boolean]
    class ErrorLogSettings < Struct.new(
      :enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the names of the fields used for an exact response to the user.</p>
    # @!attribute question_field
    #   <p>The name of the field that contains the query made to the OpenSearch Service database.</p>
    #   @return [String]
    # @!attribute answer_field
    #   <p>The name of the field that contains the answer to the query made to the OpenSearch Service database.</p>
    #   @return [String]
    class ExactResponseFields < Struct.new(
      :question_field,
      :answer_field,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about an error in an execution of a test set.</p>
    # @!attribute error_code
    #   <p>The error code for the error.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The message describing the error.</p>
    #   @return [String]
    class ExecutionErrorDetails < Struct.new(
      :error_code,
      :error_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Filters the response form the <a href="https://docs.aws.amazon.com/lexv2/latest/APIReference/API_ListExports.html">ListExports</a> operation</p>
    # @!attribute name
    #   <p>The name of the field to use for filtering.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values to use to filter the response. The values must be
    #            <code>Bot</code>, <code>BotLocale</code>, or
    #            <code>CustomVocabulary</code>.</p>
    #   @return [Array<String>]
    # @!attribute operator
    #   <p>The operator to use for the filter. Specify EQ when the
    #            <code>ListExports</code> operation should return only resource types
    #            that equal the specified value. Specify CO when the
    #            <code>ListExports</code> operation should return resource types that
    #            contain the specified value.</p>
    #   @return [String]
    class ExportFilter < Struct.new(
      :name,
      :values,
      :operator,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about the bot or bot locale that you want to
    #          export. You can specify the <code>botExportSpecification</code> or the
    #             <code>botLocaleExportSpecification</code>, but not both.</p>
    # @!attribute bot_export_specification
    #   <p>Parameters for exporting a bot.</p>
    #   @return [Types::BotExportSpecification]
    # @!attribute bot_locale_export_specification
    #   <p>Parameters for exporting a bot locale.</p>
    #   @return [Types::BotLocaleExportSpecification]
    # @!attribute custom_vocabulary_export_specification
    #   <p>The parameters required to export a custom vocabulary.</p>
    #   @return [Types::CustomVocabularyExportSpecification]
    # @!attribute test_set_export_specification
    #   <p>Specifications for the test set that is exported as a resource.</p>
    #   @return [Types::TestSetExportSpecification]
    class ExportResourceSpecification < Struct.new(
      :bot_export_specification,
      :bot_locale_export_specification,
      :custom_vocabulary_export_specification,
      :test_set_export_specification,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about sorting a list of exports.</p>
    # @!attribute attribute
    #   <p>The export field to use for sorting.</p>
    #   @return [String]
    # @!attribute order
    #   <p>The order to sort the list.</p>
    #   @return [String]
    class ExportSortBy < Struct.new(
      :attribute,
      :order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides summary information about an export in an export list.
    #       </p>
    # @!attribute export_id
    #   <p>The unique identifier that Amazon Lex assigned to the export.</p>
    #   @return [String]
    # @!attribute resource_specification
    #   <p>Information about the bot or bot locale that was exported.</p>
    #   @return [Types::ExportResourceSpecification]
    # @!attribute file_format
    #   <p>The file format used in the export files.</p>
    #   @return [String]
    # @!attribute export_status
    #   <p>The status of the export. When the status is <code>Completed</code>
    #            the export is ready to download.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time that the export was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time that the export was last updated.</p>
    #   @return [Time]
    class ExportSummary < Struct.new(
      :export_id,
      :resource_specification,
      :file_format,
      :export_status,
      :creation_date_time,
      :last_updated_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about the external source of the slot type's definition.</p>
    # @!attribute grammar_slot_type_setting
    #   <p>Settings required for a slot type based on a grammar that you provide.</p>
    #   @return [Types::GrammarSlotTypeSetting]
    class ExternalSourceSetting < Struct.new(
      :grammar_slot_type_setting,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The unique failed custom vocabulary item from the custom 
    #          vocabulary list.</p>
    # @!attribute item_id
    #   <p>The unique item identifer for the failed custom vocabulary item 
    #            from the custom vocabulary list.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message for the failed custom vocabulary item 
    #            from the custom vocabulary list.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The unique error code for the failed custom vocabulary item 
    #            from the custom vocabulary list.</p>
    #   @return [String]
    class FailedCustomVocabularyItem < Struct.new(
      :item_id,
      :error_message,
      :error_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Determines if a Lambda function should be invoked for a specific
    #          intent.</p>
    # @!attribute enabled
    #   <p>Indicates whether a Lambda function should be invoked to fulfill a
    #            specific intent.</p>
    #   @return [Boolean]
    # @!attribute post_fulfillment_status_specification
    #   <p>Provides settings for messages sent to the user for after the Lambda
    #            fulfillment function completes. Post-fulfillment messages can be sent
    #            for both streaming and non-streaming conversations.</p>
    #   @return [Types::PostFulfillmentStatusSpecification]
    # @!attribute fulfillment_updates_specification
    #   <p>Provides settings for update messages sent to the user for
    #            long-running Lambda fulfillment functions. Fulfillment updates can be
    #            used only with streaming conversations.</p>
    #   @return [Types::FulfillmentUpdatesSpecification]
    # @!attribute active
    #   <p>Determines whether the fulfillment code hook is used. When
    #               <code>active</code> is false, the code hook doesn't run.</p>
    #   @return [Boolean]
    class FulfillmentCodeHookSettings < Struct.new(
      :enabled,
      :post_fulfillment_status_specification,
      :fulfillment_updates_specification,
      :active,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>Provides settings for a message that is sent to the user when a
    #          fulfillment Lambda function starts running.</p>
    # @!attribute delay_in_seconds
    #   <p>The delay between when the Lambda fulfillment function starts running
    #            and the start message is played. If the Lambda function returns before
    #            the delay is over, the start message isn't played.</p>
    #   @return [Integer]
    # @!attribute message_groups
    #   <p>1 - 5 message groups that contain start messages. Amazon Lex chooses
    #            one of the messages to play to the user.</p>
    #   @return [Array<Types::MessageGroup>]
    # @!attribute allow_interrupt
    #   <p>Determines whether the user can interrupt the start message while it
    #            is playing.</p>
    #   @return [Boolean]
    class FulfillmentStartResponseSpecification < Struct.new(
      :delay_in_seconds,
      :message_groups,
      :allow_interrupt,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides settings for a message that is sent periodically to the
    #          user while a fulfillment Lambda function is running.</p>
    # @!attribute frequency_in_seconds
    #   <p>The frequency that a message is sent to the user. When the period
    #            ends, Amazon Lex chooses a message from the message groups and plays it to
    #            the user. If the fulfillment Lambda returns before the first period
    #            ends, an update message is not played to the user.</p>
    #   @return [Integer]
    # @!attribute message_groups
    #   <p>1 - 5 message groups that contain update messages. Amazon Lex chooses
    #            one of the messages to play to the user.</p>
    #   @return [Array<Types::MessageGroup>]
    # @!attribute allow_interrupt
    #   <p>Determines whether the user can interrupt an update message while it
    #            is playing.</p>
    #   @return [Boolean]
    class FulfillmentUpdateResponseSpecification < Struct.new(
      :frequency_in_seconds,
      :message_groups,
      :allow_interrupt,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information for updating the user on the progress of
    #          fulfilling an intent.</p>
    # @!attribute active
    #   <p>Determines whether fulfillment updates are sent to the user. When
    #            this field is true, updates are sent.</p>
    #            <p>If the <code>active</code> field is set to true, the
    #               <code>startResponse</code>, <code>updateResponse</code>, and
    #               <code>timeoutInSeconds</code> fields are required.</p>
    #   @return [Boolean]
    # @!attribute start_response
    #   <p>Provides configuration information for the message sent to users
    #            when the fulfillment Lambda functions starts running.</p>
    #   @return [Types::FulfillmentStartResponseSpecification]
    # @!attribute update_response
    #   <p>Provides configuration information for messages sent periodically to
    #            the user while the fulfillment Lambda function is running.</p>
    #   @return [Types::FulfillmentUpdateResponseSpecification]
    # @!attribute timeout_in_seconds
    #   <p>The length of time that the fulfillment Lambda function should run
    #            before it times out.</p>
    #   @return [Integer]
    class FulfillmentUpdatesSpecification < Struct.new(
      :active,
      :start_response,
      :update_response,
      :timeout_in_seconds,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute intent_id
    #   <p>The intent unique Id for the bot request to generate utterances.</p>
    #   @return [String]
    # @!attribute bot_id
    #   <p>The bot unique Id for the bot request to generate utterances.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The bot version for the bot request to generate utterances.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The unique locale Id for the bot request to generate utterances.</p>
    #   @return [String]
    class GenerateBotElementRequest < Struct.new(
      :intent_id,
      :bot_id,
      :bot_version,
      :locale_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique bot Id for the bot which received the response.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The unique bot version for the bot which received the response.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The unique locale Id for the bot which received the response.</p>
    #   @return [String]
    # @!attribute intent_id
    #   <p>The unique intent Id for the bot which received the response.</p>
    #   @return [String]
    # @!attribute sample_utterances
    #   <p>The sample utterances for the bot which received the response.</p>
    #   @return [Array<Types::SampleUtterance>]
    class GenerateBotElementResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :intent_id,
      :sample_utterances,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the attribute and method by which to sort the generation request information.</p>
    # @!attribute attribute
    #   <p>The attribute by which to sort the generation request information. You can sort by the following attributes.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>creationStartTime</code> – The time at which the generation request was created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>lastUpdatedTime</code> – The time at which the generation request was last updated.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute order
    #   <p>The order by which to sort the generation request information.</p>
    #   @return [String]
    class GenerationSortBy < Struct.new(
      :attribute,
      :order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a generation request made for the bot locale.</p>
    # @!attribute generation_id
    #   <p>The unique identifier of the generation request.</p>
    #   @return [String]
    # @!attribute generation_status
    #   <p>The status of the generation request.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time at which the generation request was made.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time at which the generation request was last updated.</p>
    #   @return [Time]
    class GenerationSummary < Struct.new(
      :generation_id,
      :generation_status,
      :creation_date_time,
      :last_updated_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains specifications about the generative AI capabilities from Amazon Bedrock that you can turn on for your bot.</p>
    # @!attribute runtime_settings
    #   <p>Contains specifications about the Amazon Lex runtime generative AI capabilities from Amazon Bedrock that you can turn on for your bot.</p>
    #   @return [Types::RuntimeSettings]
    # @!attribute buildtime_settings
    #   <p>Contains specifications about the Amazon Lex build time generative AI capabilities from Amazon Bedrock that you can turn on for your bot.</p>
    #   @return [Types::BuildtimeSettings]
    class GenerativeAISettings < Struct.new(
      :runtime_settings,
      :buildtime_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_execution_id
    #   <p>The unique identifier of the completed test execution.</p>
    #   @return [String]
    class GetTestExecutionArtifactsUrlRequest < Struct.new(
      :test_execution_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_execution_id
    #   <p>The unique identifier of the completed test execution.</p>
    #   @return [String]
    # @!attribute download_artifacts_url
    #   <p>The pre-signed Amazon S3 URL to download completed test execution.</p>
    #   @return [String]
    class GetTestExecutionArtifactsUrlResponse < Struct.new(
      :test_execution_id,
      :download_artifacts_url,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Settings requried for a slot type based on a grammar that you provide.</p>
    # @!attribute source
    #   <p>The source of the grammar used to create the slot type.</p>
    #   @return [Types::GrammarSlotTypeSource]
    class GrammarSlotTypeSetting < Struct.new(
      :source,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the Amazon S3 bucket name and location for the grammar
    #             that is the source for the slot type.</p>
    # @!attribute s3_bucket_name
    #   <p>The name of the Amazon S3 bucket that contains the grammar source.</p>
    #   @return [String]
    # @!attribute s3_object_key
    #   <p>The path to the grammar in the Amazon S3 bucket.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The KMS key required to decrypt the contents of the grammar, if any.</p>
    #   @return [String]
    class GrammarSlotTypeSource < Struct.new(
      :s3_bucket_name,
      :s3_object_key,
      :kms_key_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A card that is shown to the user by a messaging platform. You define
    #          the contents of the card, the card is displayed by the platform. </p>
    #          <p>When you use a response card, the response from the user is
    #          constrained to the text associated with a button on the card.</p>
    # @!attribute title
    #   <p>The title to display on the response card. The format of the title
    #            is determined by the platform displaying the response card.</p>
    #   @return [String]
    # @!attribute subtitle
    #   <p>The subtitle to display on the response card. The format of the
    #            subtitle is determined by the platform displaying the response
    #            card.</p>
    #   @return [String]
    # @!attribute image_url
    #   <p>The URL of an image to display on the response card. The image URL
    #            must be publicly available so that the platform displaying the response
    #            card has access to the image.</p>
    #   @return [String]
    # @!attribute buttons
    #   <p>A list of buttons that should be displayed on the response card. The
    #            arrangement of the buttons is determined by the platform that displays
    #            the button.</p>
    #   @return [Array<Types::Button>]
    class ImageResponseCard < Struct.new(
      :title,
      :subtitle,
      :image_url,
      :buttons,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Filters the response from the <a href="https://docs.aws.amazon.com/lexv2/latest/APIReference/API_ListImports.html">ListImports</a> operation.</p>
    # @!attribute name
    #   <p>The name of the field to use for filtering.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values to use to filter the response. The values must be
    #            <code>Bot</code>, <code>BotLocale</code>, or
    #            <code>CustomVocabulary</code>.</p>
    #   @return [Array<String>]
    # @!attribute operator
    #   <p>The operator to use for the filter. Specify EQ when the
    #            <code>ListImports</code> operation should return only resource types
    #            that equal the specified value. Specify CO when the
    #            <code>ListImports</code> operation should return resource types that
    #            contain the specified value.</p>
    #   @return [String]
    class ImportFilter < Struct.new(
      :name,
      :values,
      :operator,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about the bot or bot locale that you want to
    #          import. You can specify the <code>botImportSpecification</code> or the
    #             <code>botLocaleImportSpecification</code>, but not both.</p>
    # @!attribute bot_import_specification
    #   <p>Parameters for importing a bot.</p>
    #   @return [Types::BotImportSpecification]
    # @!attribute bot_locale_import_specification
    #   <p>Parameters for importing a bot locale.</p>
    #   @return [Types::BotLocaleImportSpecification]
    # @!attribute custom_vocabulary_import_specification
    #   <p>Provides the parameters required for importing a custom vocabulary.</p>
    #   @return [Types::CustomVocabularyImportSpecification]
    # @!attribute test_set_import_resource_specification
    #   <p>Specifications for the test set that is imported.</p>
    #   @return [Types::TestSetImportResourceSpecification]
    class ImportResourceSpecification < Struct.new(
      :bot_import_specification,
      :bot_locale_import_specification,
      :custom_vocabulary_import_specification,
      :test_set_import_resource_specification,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information for sorting a list of imports.</p>
    # @!attribute attribute
    #   <p>The export field to use for sorting.</p>
    #   @return [String]
    # @!attribute order
    #   <p>The order to sort the list.</p>
    #   @return [String]
    class ImportSortBy < Struct.new(
      :attribute,
      :order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides summary information about an import in an import
    #          list.</p>
    # @!attribute import_id
    #   <p>The unique identifier that Amazon Lex assigned to the import.</p>
    #   @return [String]
    # @!attribute imported_resource_id
    #   <p>The unique identifier that Amazon Lex assigned to the imported
    #            resource.</p>
    #   @return [String]
    # @!attribute imported_resource_name
    #   <p>The name that you gave the imported resource.</p>
    #   @return [String]
    # @!attribute import_status
    #   <p>The status of the resource. When the status is
    #            <code>Completed</code> the resource is ready to build.</p>
    #   @return [String]
    # @!attribute merge_strategy
    #   <p>The strategy used to merge existing bot or bot locale definitions
    #            with the imported definition.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time that the import was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time that the import was last updated.</p>
    #   @return [Time]
    # @!attribute imported_resource_type
    #   <p>The type of resource that was imported.</p>
    #   @return [String]
    class ImportSummary < Struct.new(
      :import_id,
      :imported_resource_id,
      :imported_resource_name,
      :import_status,
      :merge_strategy,
      :creation_date_time,
      :last_updated_date_time,
      :imported_resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration setting for a response sent to the user before Amazon Lex starts eliciting slots.</p>
    # @!attribute initial_response
    #   <p>Specifies a list of message groups that Amazon Lex uses to respond the
    #            user input.</p>
    #   @return [Types::ResponseSpecification]
    # @!attribute next_step
    #   <p>The next step in the conversation.</p>
    #   @return [Types::DialogState]
    # @!attribute conditional
    #   <p>Provides a list of conditional branches. Branches are evaluated in
    #            the order that they are entered in the list. The first branch with a
    #            condition that evaluates to true is executed. The last branch in the
    #            list is the default branch. The default branch should not have any condition
    #            expression. The default branch is executed if no other branch has a
    #            matching condition.</p>
    #   @return [Types::ConditionalSpecification]
    # @!attribute code_hook
    #   <p>Settings that specify the dialog code hook that is
    #            called by Amazon Lex at a step of the conversation. </p>
    #   @return [Types::DialogCodeHookInvocationSetting]
    class InitialResponseSetting < Struct.new(
      :initial_response,
      :next_step,
      :conditional,
      :code_hook,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A context that must be active for an intent to be
    #          selected by Amazon Lex.</p>
    # @!attribute name
    #   <p>The name of the context.</p>
    #   @return [String]
    class InputContext < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifications for the current state of the dialog 
    #    between the user and the bot in the test set.</p>
    # @!attribute session_attributes
    #   <p>Session attributes for the session state.</p>
    #   @return [Hash<String, String>]
    # @!attribute active_contexts
    #   <p>Active contexts for the session state.</p>
    #   @return [Array<Types::ActiveContext>]
    # @!attribute runtime_hints
    #   <p>Runtime hints for the session state.</p>
    #   @return [Types::RuntimeHints]
    class InputSessionStateSpecification < Struct.new(
      :session_attributes,
      :active_contexts,
      :runtime_hints,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information for an intent that is classified by the test workbench.</p>
    # @!attribute intent_name
    #   <p>The name of the intent.</p>
    #   @return [String]
    # @!attribute multi_turn_conversation
    #   <p>Indicates whether the conversation involves multiple turns or not.</p>
    #   @return [Boolean]
    # @!attribute result_counts
    #   <p>The result of the intent classification test.</p>
    #   @return [Types::IntentClassificationTestResultItemCounts]
    class IntentClassificationTestResultItem < Struct.new(
      :intent_name,
      :multi_turn_conversation,
      :result_counts,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:multi_turn_conversation] = false unless options.key?(:multi_turn_conversation)
        super
      end
    end

    # <p>The number of items in the intent classification test.</p>
    # @!attribute total_result_count
    #   <p>The total number of results in the intent classification test.</p>
    #   @return [Integer]
    # @!attribute speech_transcription_result_counts
    #   <p>The number of matched, mismatched, and execution error results for speech transcription for the intent.</p>
    #   @return [Hash<String, Integer>]
    # @!attribute intent_match_result_counts
    #   <p>The number of matched and mismatched results for intent recognition for the intent.</p>
    #   @return [Hash<String, Integer>]
    class IntentClassificationTestResultItemCounts < Struct.new(
      :total_result_count,
      :speech_transcription_result_counts,
      :intent_match_result_counts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information for the results of the intent classification test. </p>
    # @!attribute items
    #   <p>A list of the results for the intent classification test.</p>
    #   @return [Array<Types::IntentClassificationTestResultItem>]
    class IntentClassificationTestResults < Struct.new(
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a statement the Amazon Lex conveys to the user when the intent
    #          is successfully fulfilled.</p>
    # @!attribute closing_response
    #   <p>The response that Amazon Lex sends to the user when the intent is
    #            complete.</p>
    #   @return [Types::ResponseSpecification]
    # @!attribute active
    #   <p>Specifies whether an intent's closing response is used. When this
    #            field is false, the closing response isn't sent to the user. If the
    #               <code>active</code> field isn't specified, the default is
    #            true.</p>
    #   @return [Boolean]
    # @!attribute next_step
    #   <p>Specifies the next step that the bot executes after playing the
    #            intent's closing response.</p>
    #   @return [Types::DialogState]
    # @!attribute conditional
    #   <p>A list of conditional branches associated with the intent's closing
    #            response. These branches are executed when the <code>nextStep</code>
    #            attribute is set to <code>EvalutateConditional</code>.</p>
    #   @return [Types::ConditionalSpecification]
    class IntentClosingSetting < Struct.new(
      :closing_response,
      :active,
      :next_step,
      :conditional,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a prompt for making sure that the user is ready for the
    #          intent to be fulfilled.</p>
    # @!attribute prompt_specification
    #   <p>Prompts the user to confirm the intent. This question should have a
    #            yes or no answer.</p>
    #            <p>Amazon Lex uses this prompt to ensure that the user acknowledges that the
    #            intent is ready for fulfillment. For example, with the
    #               <code>OrderPizza</code> intent, you might want to confirm that the
    #            order is correct before placing it. For other intents, such as intents
    #            that simply respond to user questions, you might not need to ask the
    #            user for confirmation before providing the information. </p>
    #   @return [Types::PromptSpecification]
    # @!attribute declination_response
    #   <p>When the user answers "no" to the question defined in
    #               <code>promptSpecification</code>, Amazon Lex responds with this response
    #            to acknowledge that the intent was canceled. </p>
    #   @return [Types::ResponseSpecification]
    # @!attribute active
    #   <p>Specifies whether the intent's confirmation is sent to the user.
    #            When this field is false, confirmation and declination responses aren't
    #            sent. If the <code>active</code> field isn't specified, the default is
    #            true.</p>
    #   @return [Boolean]
    # @!attribute confirmation_response
    #   <p>Specifies a list of message groups that Amazon Lex uses to respond the
    #            user input.</p>
    #   @return [Types::ResponseSpecification]
    # @!attribute confirmation_next_step
    #   <p>Specifies the next step that the bot executes when the customer
    #            confirms the intent.</p>
    #   @return [Types::DialogState]
    # @!attribute confirmation_conditional
    #   <p>A list of conditional branches to evaluate after the intent is
    #            closed.</p>
    #   @return [Types::ConditionalSpecification]
    # @!attribute declination_next_step
    #   <p>Specifies the next step that the bot executes when the customer
    #            declines the intent.</p>
    #   @return [Types::DialogState]
    # @!attribute declination_conditional
    #   <p>A list of conditional branches to evaluate after the intent is
    #            declined.</p>
    #   @return [Types::ConditionalSpecification]
    # @!attribute failure_response
    #   <p>Specifies a list of message groups that Amazon Lex uses to respond the
    #            user input.</p>
    #   @return [Types::ResponseSpecification]
    # @!attribute failure_next_step
    #   <p>The next step to take in the conversation if the confirmation step
    #            fails.</p>
    #   @return [Types::DialogState]
    # @!attribute failure_conditional
    #   <p>Provides a list of conditional branches. Branches are evaluated in
    #            the order that they are entered in the list. The first branch with a
    #            condition that evaluates to true is executed. The last branch in the
    #            list is the default branch. The default branch should not have any condition
    #            expression. The default branch is executed if no other branch has a
    #            matching condition.</p>
    #   @return [Types::ConditionalSpecification]
    # @!attribute code_hook
    #   <p>The <code>DialogCodeHookInvocationSetting</code> object associated
    #            with intent's confirmation step. The dialog code hook is triggered
    #            based on these invocation settings when the confirmation next step or
    #            declination next step or failure next step is
    #               <code>InvokeDialogCodeHook</code>. </p>
    #   @return [Types::DialogCodeHookInvocationSetting]
    # @!attribute elicitation_code_hook
    #   <p>The <code>DialogCodeHookInvocationSetting</code> used when the code
    #            hook is invoked during confirmation prompt retries.</p>
    #   @return [Types::ElicitationCodeHookInvocationSetting]
    class IntentConfirmationSetting < Struct.new(
      :prompt_specification,
      :declination_response,
      :active,
      :confirmation_response,
      :confirmation_next_step,
      :confirmation_conditional,
      :declination_next_step,
      :declination_conditional,
      :failure_response,
      :failure_next_step,
      :failure_conditional,
      :code_hook,
      :elicitation_code_hook,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Filters the response from the <code>ListIntents</code>
    #          operation.</p>
    # @!attribute name
    #   <p>The name of the field to use for the filter.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The value to use for the filter.</p>
    #   @return [Array<String>]
    # @!attribute operator
    #   <p>The operator to use for the filter. Specify <code>EQ</code> when the
    #            <code>ListIntents</code> operation should return only aliases that
    #            equal the specified value. Specify <code>CO</code> when the
    #            <code>ListIntents</code> operation should return aliases that
    #            contain the specified value.</p>
    #   @return [String]
    class IntentFilter < Struct.new(
      :name,
      :values,
      :operator,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about intent-level slot resolution in a test result.</p>
    # @!attribute intent_name
    #   <p>The name of the intent that was recognized.</p>
    #   @return [String]
    # @!attribute multi_turn_conversation
    #   <p>Indicates whether the conversation involves multiple turns or not.</p>
    #   @return [Boolean]
    # @!attribute slot_resolution_results
    #   <p>The results for the slot resolution in the test execution result.</p>
    #   @return [Array<Types::SlotResolutionTestResultItem>]
    class IntentLevelSlotResolutionTestResultItem < Struct.new(
      :intent_name,
      :multi_turn_conversation,
      :slot_resolution_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:multi_turn_conversation] = false unless options.key?(:multi_turn_conversation)
        super
      end
    end

    # <p>Indicates the success or failure of slots at the intent level.</p>
    # @!attribute items
    #   <p>Indicates the items for the slot level resolution for the intents.</p>
    #   @return [Array<Types::IntentLevelSlotResolutionTestResultItem>]
    class IntentLevelSlotResolutionTestResults < Struct.new(
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Override settings to configure the intent state.</p>
    # @!attribute name
    #   <p>The name of the intent. Only required when you're switching
    #            intents.</p>
    #   @return [String]
    # @!attribute slots
    #   <p>A map of all of the slot value overrides for the intent. The name of
    #            the slot maps to the value of the slot. Slots that are not included in
    #            the map aren't overridden.</p>
    #   @return [Hash<String, Types::SlotValueOverride>]
    class IntentOverride < Struct.new(
      :name,
      :slots,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies attributes for sorting a list of intents.</p>
    # @!attribute attribute
    #   <p>The attribute to use to sort the list of intents.</p>
    #   @return [String]
    # @!attribute order
    #   <p>The order to sort the list. You can choose ascending or
    #            descending.</p>
    #   @return [String]
    class IntentSortBy < Struct.new(
      :attribute,
      :order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The object that contains the statistical summary of recommended
    #             intents associated with the bot recommendation.</p>
    # @!attribute discovered_intent_count
    #   <p>The number of recommended intents associated with the bot
    #               recommendation.</p>
    #   @return [Integer]
    class IntentStatistics < Struct.new(
      :discovered_intent_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about an intent returned by the
    #          <code>ListIntents</code> operation.</p>
    # @!attribute intent_id
    #   <p>The unique identifier assigned to the intent. Use this ID to get
    #            detailed information about the intent with the
    #            <code>DescribeIntent</code> operation.</p>
    #   @return [String]
    # @!attribute intent_name
    #   <p>The name of the intent.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the intent.</p>
    #   @return [String]
    # @!attribute parent_intent_signature
    #   <p>If this intent is derived from a built-in intent, the name of the
    #            parent intent.</p>
    #   @return [String]
    # @!attribute input_contexts
    #   <p>The input contexts that must be active for this intent to be
    #            considered for recognition.</p>
    #   @return [Array<Types::InputContext>]
    # @!attribute output_contexts
    #   <p>The output contexts that are activated when this intent is
    #            fulfilled.</p>
    #   @return [Array<Types::OutputContext>]
    # @!attribute last_updated_date_time
    #   <p>The timestamp of the date and time that the intent was last
    #            updated.</p>
    #   @return [Time]
    class IntentSummary < Struct.new(
      :intent_id,
      :intent_name,
      :description,
      :parent_intent_signature,
      :input_contexts,
      :output_contexts,
      :last_updated_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The service encountered an unexpected condition. Try your request
    #          again.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing the name of an intent that was invoked.</p>
    # @!attribute intent_name
    #   <p>The name of an intent that was invoked.</p>
    #   @return [String]
    class InvokedIntentSample < Struct.new(
      :intent_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides configuration information for the <code>AMAZON.KendraSearchIntent</code>
    #          intent. When you use this intent, Amazon Lex searches the specified Amazon Kendra
    #          index and returns documents from the index that match the user's
    #          utterance.</p>
    # @!attribute kendra_index
    #   <p>The Amazon Resource Name (ARN) of the Amazon Kendra index that you want the
    #            <code>AMAZON.KendraSearchIntent</code> intent to search. The index must be in the
    #            same account and Region as the Amazon Lex bot.</p>
    #   @return [String]
    # @!attribute query_filter_string_enabled
    #   <p>Determines whether the <code>AMAZON.KendraSearchIntent</code> intent uses a
    #            custom query string to query the Amazon Kendra index.</p>
    #   @return [Boolean]
    # @!attribute query_filter_string
    #   <p>A query filter that Amazon Lex sends to Amazon Kendra to filter the response from
    #            a query. The filter is in the format defined by Amazon Kendra. For more
    #            information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/filtering.html">Filtering
    #            queries</a>.</p>
    #   @return [String]
    class KendraConfiguration < Struct.new(
      :kendra_index,
      :query_filter_string_enabled,
      :query_filter_string,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:query_filter_string_enabled] = false unless options.key?(:query_filter_string_enabled)
        super
      end
    end

    # <p>Specifies a Lambda function that verifies requests to a bot or
    #          fulfills the user's request to a bot.</p>
    # @!attribute lambda_arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda function.</p>
    #   @return [String]
    # @!attribute code_hook_interface_version
    #   <p>The version of the request-response that you want Amazon Lex to use to
    #            invoke your Lambda function.</p>
    #   @return [String]
    class LambdaCodeHook < Struct.new(
      :lambda_arn,
      :code_hook_interface_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The object that contains transcript filter details that are
    #             associated with a bot recommendation.</p>
    # @!attribute date_range_filter
    #   <p>The object that contains a date range filter that will be applied to
    #               the transcript. Specify this object if you want Amazon Lex to only read the
    #               files that are within the date range.</p>
    #   @return [Types::DateRangeFilter]
    class LexTranscriptFilter < Struct.new(
      :date_range_filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot associated with this
    #            request.</p>
    #   @return [String]
    # @!attribute bot_alias_id
    #   <p>The identifier of the bot alias associated with this request. If you
    #            specify the bot alias, you can't specify the bot version.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The identifier of the bot version associated with this request. If
    #            you specify the bot version, you can't specify the bot alias.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale where the utterances were
    #            collected. For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported
    #            languages</a>.</p>
    #   @return [String]
    # @!attribute aggregation_duration
    #   <p>The time window for aggregating the utterance information. You can
    #            specify a time between one hour and two weeks.</p>
    #   @return [Types::UtteranceAggregationDuration]
    # @!attribute sort_by
    #   <p>Specifies sorting parameters for the list of utterances. You can
    #            sort by the hit count, the missed count, or the number of distinct
    #            sessions the utterance appeared in.</p>
    #   @return [Types::AggregatedUtterancesSortBy]
    # @!attribute filters
    #   <p>Provides the specification of a filter used to limit the utterances
    #            in the response to only those that match the filter specification. You
    #            can only specify one filter and one string to filter on.</p>
    #   @return [Array<Types::AggregatedUtterancesFilter>]
    # @!attribute max_results
    #   <p>The maximum number of utterances to return in each page of results.
    #            If there are fewer results than the maximum page size, only the actual
    #            number of results are returned. If you don't specify the
    #               <code>maxResults</code> parameter, 1,000 results are
    #            returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the response from the <code>ListAggregatedUtterances</code>
    #            operation contains more results that specified in the
    #               <code>maxResults</code> parameter, a token is returned in the
    #            response. Use that token in the <code>nextToken</code> parameter to
    #            return the next page of results.</p>
    #   @return [String]
    class ListAggregatedUtterancesRequest < Struct.new(
      :bot_id,
      :bot_alias_id,
      :bot_version,
      :locale_id,
      :aggregation_duration,
      :sort_by,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot that contains the utterances.</p>
    #   @return [String]
    # @!attribute bot_alias_id
    #   <p>The identifier of the bot alias that contains the utterances. If you
    #            specified the bot version, the bot alias ID isn't returned.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The identifier of the bot version that contains the utterances. If
    #            you specified the bot alias, the bot version isn't returned.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale that the utterances are
    #            in.</p>
    #   @return [String]
    # @!attribute aggregation_duration
    #   <p>The time period used to aggregate the utterance data.</p>
    #   @return [Types::UtteranceAggregationDuration]
    # @!attribute aggregation_window_start_time
    #   <p>The date and time that the aggregation window begins. Only data
    #            collected after this time is returned in the results.</p>
    #   @return [Time]
    # @!attribute aggregation_window_end_time
    #   <p>The date and time that the aggregation window ends. Only data
    #            collected between the start time and the end time are returned in the
    #            results. </p>
    #   @return [Time]
    # @!attribute aggregation_last_refreshed_date_time
    #   <p>The last date and time that the aggregated data was collected. The
    #            time period depends on the length of the aggregation window.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Hours</b> - for 1 hour time
    #                  window, every half hour; otherwise every hour.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Days</b> - every 6 hours</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Weeks</b> - for a one week time
    #                  window, every 12 hours; otherwise, every day</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    # @!attribute aggregated_utterances_summaries
    #   <p>Summaries of the aggregated utterance data. Each response contains
    #            information about the number of times that the utterance was seen
    #            during the time period, whether it was detected or missed, and when it
    #            was seen during the time period.</p>
    #   @return [Array<Types::AggregatedUtterancesSummary>]
    # @!attribute next_token
    #   <p>A token that indicates whether there are more results to return in a
    #            response to the <code>ListAggregatedUtterances</code> operation. If the
    #               <code>nextToken</code> field is present, you send the contents as
    #            the <code>nextToken</code> parameter of a
    #               <code>ListAggregatedUtterances</code> operation request to get the
    #            next page of results.</p>
    #   @return [String]
    class ListAggregatedUtterancesResponse < Struct.new(
      :bot_id,
      :bot_alias_id,
      :bot_version,
      :locale_id,
      :aggregation_duration,
      :aggregation_window_start_time,
      :aggregation_window_end_time,
      :aggregation_last_refreshed_date_time,
      :aggregated_utterances_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The request for the unique bot ID of the replicated bot created from the source bot alias.</p>
    #   @return [String]
    # @!attribute replica_region
    #   <p>The request for the secondary region of the replicated bot created from the source bot alias.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The request for maximum results to list the replicated bots created from the source bot alias.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The request for the next token for the replicated bot created from the source bot alias.</p>
    #   @return [String]
    class ListBotAliasReplicasRequest < Struct.new(
      :bot_id,
      :replica_region,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique bot ID of the replicated bot created from the source bot alias.</p>
    #   @return [String]
    # @!attribute source_region
    #   <p>The source region of the replicated bot created from the source bot alias.</p>
    #   @return [String]
    # @!attribute replica_region
    #   <p>The secondary region of the replicated bot created from the source bot alias.</p>
    #   @return [String]
    # @!attribute bot_alias_replica_summaries
    #   <p>The summary information of the replicated bot created from the source bot alias.</p>
    #   @return [Array<Types::BotAliasReplicaSummary>]
    # @!attribute next_token
    #   <p>The next token for the replicated bots created from the source bot alias.</p>
    #   @return [String]
    class ListBotAliasReplicasResponse < Struct.new(
      :bot_id,
      :source_region,
      :replica_region,
      :bot_alias_replica_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot to list aliases for.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of aliases to return in each page of results. If
    #            there are fewer results than the max page size, only the actual number
    #            of results are returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the response from the <code>ListBotAliases</code> operation
    #            contains more results than specified in the <code>maxResults</code>
    #            parameter, a token is returned in the response. Use that token in the
    #               <code>nextToken</code> parameter to return the next page of
    #            results.</p>
    #   @return [String]
    class ListBotAliasesRequest < Struct.new(
      :bot_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_alias_summaries
    #   <p>Summary information for the bot aliases that meet the filter
    #            criteria specified in the request. The length of the list is specified
    #            in the <code>maxResults</code> parameter of the request. If there are
    #            more aliases available, the <code>nextToken</code> field contains a
    #            token to get the next page of results.</p>
    #   @return [Array<Types::BotAliasSummary>]
    # @!attribute next_token
    #   <p>A token that indicates whether there are more results to return in a
    #            response to the <code>ListBotAliases</code> operation. If the
    #               <code>nextToken</code> field is present, you send the contents as
    #            the <code>nextToken</code> parameter of a <code>ListBotAliases</code>
    #            operation request to get the next page of results.</p>
    #   @return [String]
    # @!attribute bot_id
    #   <p>The identifier of the bot associated with the aliases.</p>
    #   @return [String]
    class ListBotAliasesResponse < Struct.new(
      :bot_alias_summaries,
      :next_token,
      :bot_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot to list locales for.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot to list locales for.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>Specifies sorting parameters for the list of locales. You can sort
    #            by locale name in ascending or descending order.</p>
    #   @return [Types::BotLocaleSortBy]
    # @!attribute filters
    #   <p>Provides the specification for a filter used to limit the response
    #            to only those locales that match the filter specification. You can only
    #            specify one filter and one value to filter on.</p>
    #   @return [Array<Types::BotLocaleFilter>]
    # @!attribute max_results
    #   <p>The maximum number of aliases to return in each page of results. If
    #            there are fewer results than the max page size, only the actual number
    #            of results are returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the response from the <code>ListBotLocales</code> operation
    #            contains more results than specified in the <code>maxResults</code>
    #            parameter, a token is returned in the response. Use that token as the
    #               <code>nextToken</code> parameter to return the next page of results.
    #         </p>
    #   @return [String]
    class ListBotLocalesRequest < Struct.new(
      :bot_id,
      :bot_version,
      :sort_by,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot to list locales for.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token that indicates whether there are more results to return in a
    #            response to the <code>ListBotLocales</code> operation. If the
    #               <code>nextToken</code> field is present, you send the contents as
    #            the <code>nextToken</code> parameter of a <code>ListBotLocales</code>
    #            operation request to get the next page of results.</p>
    #   @return [String]
    # @!attribute bot_locale_summaries
    #   <p>Summary information for the locales that meet the filter criteria
    #            specified in the request. The length of the list is specified in the
    #               <code>maxResults</code> parameter of the request. If there are more
    #            locales available, the <code>nextToken</code> field contains a token to
    #            get the next page of results.</p>
    #   @return [Array<Types::BotLocaleSummary>]
    class ListBotLocalesResponse < Struct.new(
      :bot_id,
      :bot_version,
      :next_token,
      :bot_locale_summaries,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot that contains the bot
    #            recommendation list.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot that contains the bot recommendation
    #            list.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the bot recommendation
    #            list.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of bot recommendations to return in each page of
    #            results. If there are fewer results than the max page size, only the
    #            actual number of results are returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the response from the ListBotRecommendation operation contains
    #            more results than specified in the maxResults parameter, a token is
    #            returned in the response. Use that token in the nextToken parameter to
    #            return the next page of results.</p>
    #   @return [String]
    class ListBotRecommendationsRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot that contains the bot
    #            recommendation list.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot that contains the bot recommendation
    #            list.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the bot recommendation
    #            list.</p>
    #   @return [String]
    # @!attribute bot_recommendation_summaries
    #   <p>Summary information for the bot recommendations that meet the filter
    #            specified in this request. The length of the list is specified in the
    #            maxResults parameter of the request. If there are more bot
    #            recommendations available, the nextToken field contains a token to get
    #            the next page of results.</p>
    #   @return [Array<Types::BotRecommendationSummary>]
    # @!attribute next_token
    #   <p>A token that indicates whether there are more results to return in a
    #            response to the ListBotRecommendations operation. If the nextToken
    #            field is present, you send the contents as the nextToken parameter of a
    #            ListBotRecommendations operation request to get the next page of
    #            results. </p>
    #   @return [String]
    class ListBotRecommendationsResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_recommendation_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The request for the unique bot IDs in the list of replicated bots.</p>
    #   @return [String]
    class ListBotReplicasRequest < Struct.new(
      :bot_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>the unique bot IDs in the list of replicated bots.</p>
    #   @return [String]
    # @!attribute source_region
    #   <p>The source region of the source bots in the list of replicated bots.</p>
    #   @return [String]
    # @!attribute bot_replica_summaries
    #   <p>The summary details for the replicated bots.</p>
    #   @return [Array<Types::BotReplicaSummary>]
    class ListBotReplicasResponse < Struct.new(
      :bot_id,
      :source_region,
      :bot_replica_summaries,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot whose generation 
    #         requests you want to view.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot whose generation 
    #            requests you want to view.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The locale of the bot whose generation 
    #            requests you want to view.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>An object containing information about the attribute and the 
    #         method by which to sort the results</p>
    #   @return [Types::GenerationSortBy]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the number 
    #         specified in the <code>maxResults</code>, the response returns a token 
    #         in the <code>nextToken</code> field. Use this token when making a request to 
    #         return the next batch of results.</p>
    #   @return [String]
    class ListBotResourceGenerationsRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :sort_by,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot for which the generation requests were made.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot for which the generation requests were made.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The locale of the bot for which the generation requests were made.</p>
    #   @return [String]
    # @!attribute generation_summaries
    #   <p>A list of objects, each containing information about a generation request for the bot locale.</p>
    #   @return [Array<Types::GenerationSummary>]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the number 
    #            specified in the <code>maxResults</code>, the response returns a token 
    #            in the <code>nextToken</code> field. Use this token when making a request to 
    #            return the next batch of results.</p>
    #   @return [String]
    class ListBotResourceGenerationsResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :generation_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The request for the unique ID in the list of replicated bots.</p>
    #   @return [String]
    # @!attribute replica_region
    #   <p>The request for the region used in the list of replicated bots.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum results given in the list of replicated bots.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The next token given in the list of replicated bots.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The requested sort category for the list of replicated bots.</p>
    #   @return [Types::BotVersionReplicaSortBy]
    class ListBotVersionReplicasRequest < Struct.new(
      :bot_id,
      :replica_region,
      :max_results,
      :next_token,
      :sort_by,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique ID of the bots in the list of replicated bots.</p>
    #   @return [String]
    # @!attribute source_region
    #   <p>The source region used for the bots in the list of replicated bots.</p>
    #   @return [String]
    # @!attribute replica_region
    #   <p>The region used for the replicated bots in the list of replicated bots.</p>
    #   @return [String]
    # @!attribute bot_version_replica_summaries
    #   <p>The information summary used for the replicated bots in the list of replicated bots.</p>
    #   @return [Array<Types::BotVersionReplicaSummary>]
    # @!attribute next_token
    #   <p>The next token used for the replicated bots in the list of replicated bots.</p>
    #   @return [String]
    class ListBotVersionReplicasResponse < Struct.new(
      :bot_id,
      :source_region,
      :replica_region,
      :bot_version_replica_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot to list versions for.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>Specifies sorting parameters for the list of versions. You can
    #            specify that the list be sorted by version name in either ascending or
    #            descending order.</p>
    #   @return [Types::BotVersionSortBy]
    # @!attribute max_results
    #   <p>The maximum number of versions to return in each page of results. If
    #            there are fewer results than the max page size, only the actual number
    #            of results are returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the response to the <code>ListBotVersion</code> operation
    #            contains more results than specified in the <code>maxResults</code>
    #            parameter, a token is returned in the response. Use that token in the
    #               <code>nextToken</code> parameter to return the next page of
    #            results.</p>
    #   @return [String]
    class ListBotVersionsRequest < Struct.new(
      :bot_id,
      :sort_by,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot to list versions for.</p>
    #   @return [String]
    # @!attribute bot_version_summaries
    #   <p>Summary information for the bot versions that meet the filter
    #            criteria specified in the request. The length of the list is specified
    #            in the <code>maxResults</code> parameter of the request. If there are
    #            more versions available, the <code>nextToken</code> field contains a
    #            token to get the next page of results.</p>
    #   @return [Array<Types::BotVersionSummary>]
    # @!attribute next_token
    #   <p>A token that indicates whether there are more results to return in a
    #            response to the <code>ListBotVersions</code> operation. If the
    #               <code>nextToken</code> field is present, you send the contents as
    #            the <code>nextToken</code> parameter of a <code>ListBotAliases</code>
    #            operation request to get the next page of results.</p>
    #   @return [String]
    class ListBotVersionsResponse < Struct.new(
      :bot_id,
      :bot_version_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute sort_by
    #   <p>Specifies sorting parameters for the list of bots. You can specify
    #            that the list be sorted by bot name in ascending or descending
    #            order.</p>
    #   @return [Types::BotSortBy]
    # @!attribute filters
    #   <p>Provides the specification of a filter used to limit the bots in the
    #            response to only those that match the filter specification. You can
    #            only specify one filter and one string to filter on.</p>
    #   @return [Array<Types::BotFilter>]
    # @!attribute max_results
    #   <p>The maximum number of bots to return in each page of results. If
    #            there are fewer results than the maximum page size, only the actual
    #            number of results are returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the response from the <code>ListBots</code> operation contains
    #            more results than specified in the <code>maxResults</code> parameter, a
    #            token is returned in the response. </p>
    #            <p>Use the returned token in the <code>nextToken</code> parameter of a
    #               <code>ListBots</code> request to return the next page of results.
    #            For a complete set of results, call the <code>ListBots</code> operation
    #            until the <code>nextToken</code> returned in the response is
    #            null.</p>
    #   @return [String]
    class ListBotsRequest < Struct.new(
      :sort_by,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_summaries
    #   <p>Summary information for the bots that meet the filter criteria
    #            specified in the request. The length of the list is specified in the
    #               <code>maxResults</code> parameter of the request. If there are more
    #            bots available, the <code>nextToken</code> field contains a token to
    #            the next page of results.</p>
    #   @return [Array<Types::BotSummary>]
    # @!attribute next_token
    #   <p>A token that indicates whether there are more results to return in a
    #            response to the <code>ListBots</code> operation. If the
    #               <code>nextToken</code> field is present, you send the contents as
    #            the <code>nextToken</code> parameter of a <code>ListBots</code>
    #            operation request to get the next page of results.</p>
    #   @return [String]
    class ListBotsResponse < Struct.new(
      :bot_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the intents to list.
    #            The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>Specifies sorting parameters for the list of built-in intents. You
    #            can specify that the list be sorted by the built-in intent signature in
    #            either ascending or descending order.</p>
    #   @return [Types::BuiltInIntentSortBy]
    # @!attribute max_results
    #   <p>The maximum number of built-in intents to return in each page of
    #            results. If there are fewer results than the max page size, only the
    #            actual number of results are returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the response from the <code>ListBuiltInIntents</code> operation
    #            contains more results than specified in the <code>maxResults</code>
    #            parameter, a token is returned in the response. Use that token in the
    #               <code>nextToken</code> parameter to return the next page of
    #            results.</p>
    #   @return [String]
    class ListBuiltInIntentsRequest < Struct.new(
      :locale_id,
      :sort_by,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute built_in_intent_summaries
    #   <p>Summary information for the built-in intents that meet the filter
    #            criteria specified in the request. The length of the list is specified
    #            in the <code>maxResults</code> parameter of the request. If there are
    #            more intents available, the <code>nextToken</code> field contains a
    #            token to get the next page of results.</p>
    #   @return [Array<Types::BuiltInIntentSummary>]
    # @!attribute next_token
    #   <p>A token that indicates whether there are more results to return in a
    #            response to the <code>ListBuiltInIntents</code> operation. If the
    #               <code>nextToken</code> field is present, you send the contents as
    #            the <code>nextToken</code> parameter of a <code>ListBotAliases</code>
    #            operation request to get the next page of results.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The language and locale of the intents in the list.</p>
    #   @return [String]
    class ListBuiltInIntentsResponse < Struct.new(
      :built_in_intent_summaries,
      :next_token,
      :locale_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the slot types to list.
    #            The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>Determines the sort order for the response from the
    #               <code>ListBuiltInSlotTypes</code> operation. You can choose to sort
    #            by the slot type signature in either ascending or descending
    #            order.</p>
    #   @return [Types::BuiltInSlotTypeSortBy]
    # @!attribute max_results
    #   <p>The maximum number of built-in slot types to return in each page of
    #            results. If there are fewer results than the max page size, only the
    #            actual number of results are returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the response from the <code>ListBuiltInSlotTypes</code> operation
    #            contains more results than specified in the <code>maxResults</code>
    #            parameter, a token is returned in the response. Use that token in the
    #               <code>nextToken</code> parameter to return the next page of
    #            results.</p>
    #   @return [String]
    class ListBuiltInSlotTypesRequest < Struct.new(
      :locale_id,
      :sort_by,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute built_in_slot_type_summaries
    #   <p>Summary information for the built-in slot types that meet the filter
    #            criteria specified in the request. The length of the list is specified
    #            in the <code>maxResults</code> parameter of the request. If there are
    #            more slot types available, the <code>nextToken</code> field contains a
    #            token to get the next page of results.</p>
    #   @return [Array<Types::BuiltInSlotTypeSummary>]
    # @!attribute next_token
    #   <p>A token that indicates whether there are more results to return in a
    #            response to the <code>ListBuiltInSlotTypes</code> operation. If the
    #               <code>nextToken</code> field is present, you send the contents as
    #            the <code>nextToken</code> parameter of a
    #               <code>LIstBuiltInSlotTypes</code> operation request to get the next
    #            page of results.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The language and locale of the slot types in the list.</p>
    #   @return [String]
    class ListBuiltInSlotTypesResponse < Struct.new(
      :built_in_slot_type_summaries,
      :next_token,
      :locale_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the version of the bot associated with this custom 
    #            vocabulary.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The bot version of the bot to the list custom vocabulary 
    #            request.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale where this custom vocabulary 
    #            is used. The string must match one of the supported locales. For more 
    #            information, see Supported 
    #            languages (https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html).</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items returned by the list operation.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The nextToken identifier to the list custom vocabulary 
    #            request.</p>
    #   @return [String]
    class ListCustomVocabularyItemsRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot associated with this custom vocabulary.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The identifier of the version of the bot associated with this custom 
    #            vocabulary.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale where this custom vocabulary 
    #            is used. The string must match one of the supported locales. For more 
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html"> Supported Languages </a>.</p>
    #   @return [String]
    # @!attribute custom_vocabulary_items
    #   <p>The custom vocabulary items from the list custom vocabulary 
    #            response.</p>
    #   @return [Array<Types::CustomVocabularyItem>]
    # @!attribute next_token
    #   <p>The nextToken identifier to the list custom vocabulary 
    #            response.</p>
    #   @return [String]
    class ListCustomVocabularyItemsResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :custom_vocabulary_items,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier that Amazon Lex assigned to the bot.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot to list exports for. </p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>Determines the field that the list of exports is sorted by. You can
    #            sort by the <code>LastUpdatedDateTime</code> field in ascending or
    #            descending order.</p>
    #   @return [Types::ExportSortBy]
    # @!attribute filters
    #   <p>Provides the specification of a filter used to limit the exports in
    #            the response to only those that match the filter specification. You can
    #            only specify one filter and one string to filter on.</p>
    #   @return [Array<Types::ExportFilter>]
    # @!attribute max_results
    #   <p>The maximum number of exports to return in each page of results. If
    #            there are fewer results than the max page size, only the actual number
    #            of results are returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the response from the <code>ListExports</code> operation contains
    #            more results that specified in the <code>maxResults</code> parameter, a
    #            token is returned in the response. </p>
    #            <p>Use the returned token in the <code>nextToken</code> parameter of a
    #               <code>ListExports</code> request to return the next page of results.
    #            For a complete set of results, call the <code>ListExports</code>
    #            operation until the <code>nextToken</code> returned in the response is
    #            null.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>Specifies the resources that should be exported. If you
    #         don't specify a resource type in the <code>filters</code> parameter,
    #         both bot locales and custom vocabularies are exported.</p>
    #   @return [String]
    class ListExportsRequest < Struct.new(
      :bot_id,
      :bot_version,
      :sort_by,
      :filters,
      :max_results,
      :next_token,
      :locale_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier assigned to the bot by Amazon Lex.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot that was exported.</p>
    #   @return [String]
    # @!attribute export_summaries
    #   <p>Summary information for the exports that meet the filter criteria
    #            specified in the request. The length of the list is specified in the
    #               <code>maxResults</code> parameter. If there are more exports
    #            available, the <code>nextToken</code> field contains a token to get the
    #            next page of results.</p>
    #   @return [Array<Types::ExportSummary>]
    # @!attribute next_token
    #   <p>A token that indicates whether there are more results to return in a
    #            response to the <code>ListExports</code> operation. If the
    #               <code>nextToken</code> field is present, you send the contents as
    #            the <code>nextToken</code> parameter of a <code>ListExports</code>
    #            operation request to get the next page of results.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The locale specified in the request.</p>
    #   @return [String]
    class ListExportsResponse < Struct.new(
      :bot_id,
      :bot_version,
      :export_summaries,
      :next_token,
      :locale_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier that Amazon Lex assigned to the bot.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot to list imports for.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>Determines the field that the list of imports is sorted by. You can
    #            sort by the <code>LastUpdatedDateTime</code> field in ascending or
    #            descending order.</p>
    #   @return [Types::ImportSortBy]
    # @!attribute filters
    #   <p>Provides the specification of a filter used to limit the bots in the
    #            response to only those that match the filter specification. You can
    #            only specify one filter and one string to filter on.</p>
    #   @return [Array<Types::ImportFilter>]
    # @!attribute max_results
    #   <p>The maximum number of imports to return in each page of results. If
    #            there are fewer results than the max page size, only the actual number
    #            of results are returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the response from the <code>ListImports</code> operation contains
    #            more results than specified in the <code>maxResults</code> parameter, a
    #            token is returned in the response.</p>
    #            <p>Use the returned token in the <code>nextToken</code> parameter of a
    #               <code>ListImports</code> request to return the next page of results.
    #            For a complete set of results, call the <code>ListImports</code>
    #            operation until the <code>nextToken</code> returned in the response is
    #            null.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>Specifies the locale that should be present in the list. If you
    #            don't specify a resource type in the <code>filters</code> parameter,
    #            the list contains both bot locales and custom vocabularies.</p>
    #   @return [String]
    class ListImportsRequest < Struct.new(
      :bot_id,
      :bot_version,
      :sort_by,
      :filters,
      :max_results,
      :next_token,
      :locale_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier assigned by Amazon Lex to the bot.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot that was imported. It will always be
    #               <code>DRAFT</code>.</p>
    #   @return [String]
    # @!attribute import_summaries
    #   <p>Summary information for the imports that meet the filter criteria
    #            specified in the request. The length of the list is specified in the
    #               <code>maxResults</code> parameter. If there are more imports
    #            available, the <code>nextToken</code> field contains a token to get the
    #            next page of results.</p>
    #   @return [Array<Types::ImportSummary>]
    # @!attribute next_token
    #   <p>A token that indicates whether there are more results to return in a
    #            response to the <code>ListImports</code> operation. If the
    #               <code>nextToken</code> field is present, you send the contents as
    #            the <code>nextToken</code> parameter of a <code>ListImports</code>
    #            operation request to get the next page of results.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The locale specified in the request.</p>
    #   @return [String]
    class ListImportsResponse < Struct.new(
      :bot_id,
      :bot_version,
      :import_summaries,
      :next_token,
      :locale_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier for the bot for which you want to retrieve intent metrics.</p>
    #   @return [String]
    # @!attribute start_date_time
    #   <p>The timestamp that marks the beginning of the range of time for which you want to see intent metrics.</p>
    #   @return [Time]
    # @!attribute end_date_time
    #   <p>The date and time that marks the end of the range of time for which you want to see intent metrics.</p>
    #   @return [Time]
    # @!attribute metrics
    #   <p>A list of objects, each of which contains a metric you want to list, the statistic for the metric you want to return, and the order by which to organize the results.</p>
    #   @return [Array<Types::AnalyticsIntentMetric>]
    # @!attribute bin_by
    #   <p>A list of objects, each of which contains specifications for organizing the results by time.</p>
    #   @return [Array<Types::AnalyticsBinBySpecification>]
    # @!attribute group_by
    #   <p>A list of objects, each of which specifies how to group the results. You can group by the following criteria:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IntentName</code> – The name of the intent.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IntentEndState</code> – The final state of the intent. The possible end states are detailed in <a href="https://docs.aws.amazon.com/analytics-key-definitions-intents">Key definitions</a> in the user guide.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::AnalyticsIntentGroupBySpecification>]
    # @!attribute filters
    #   <p>A list of objects, each of which describes a condition by which you want to filter the results.</p>
    #   @return [Array<Types::AnalyticsIntentFilter>]
    # @!attribute max_results
    #   <p>The maximum number of results to return in each page of results. If there are fewer results than the maximum page size, only the actual number of results are returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the response from the ListIntentMetrics operation contains more results than specified in the maxResults parameter, a token is returned in the response.</p>
    #            <p>Use the returned token in the nextToken parameter of a ListIntentMetrics request to return the next page of results. For a complete set of results, call the ListIntentMetrics operation until the nextToken returned in the response is null.</p>
    #   @return [String]
    class ListIntentMetricsRequest < Struct.new(
      :bot_id,
      :start_date_time,
      :end_date_time,
      :metrics,
      :bin_by,
      :group_by,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier for the bot for which you retrieved intent metrics.</p>
    #   @return [String]
    # @!attribute results
    #   <p>The results for the intent metrics.</p>
    #   @return [Array<Types::AnalyticsIntentResult>]
    # @!attribute next_token
    #   <p>If the response from the ListIntentMetrics operation contains more results than specified in the maxResults parameter, a token is returned in the response.</p>
    #            <p>Use the returned token in the nextToken parameter of a ListIntentMetrics request to return the next page of results. For a complete set of results, call the ListIntentMetrics operation until the nextToken returned in the response is null.</p>
    #   @return [String]
    class ListIntentMetricsResponse < Struct.new(
      :bot_id,
      :results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier for the bot for which you want to retrieve intent path metrics.</p>
    #   @return [String]
    # @!attribute start_date_time
    #   <p>The date and time that marks the beginning of the range of time for which you want to see intent path metrics.</p>
    #   @return [Time]
    # @!attribute end_date_time
    #   <p>The date and time that marks the end of the range of time for which you want to see intent path metrics.</p>
    #   @return [Time]
    # @!attribute intent_path
    #   <p>The intent path for which you want to retrieve metrics. Use a forward slash to separate intents in the path. For example:</p>
    #            <ul>
    #               <li>
    #                  <p>/BookCar</p>
    #               </li>
    #               <li>
    #                  <p>/BookCar/BookHotel</p>
    #               </li>
    #               <li>
    #                  <p>/BookHotel/BookCar</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute filters
    #   <p>A list of objects, each describes a condition by which you want to filter the results.</p>
    #   @return [Array<Types::AnalyticsPathFilter>]
    class ListIntentPathsRequest < Struct.new(
      :bot_id,
      :start_date_time,
      :end_date_time,
      :intent_path,
      :filters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute node_summaries
    #   <p>A list of objects, each of which contains information about a node in the intent path for which you requested metrics.</p>
    #   @return [Array<Types::AnalyticsIntentNodeSummary>]
    class ListIntentPathsResponse < Struct.new(
      :node_summaries,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier for the bot for which you want to retrieve intent stage metrics.</p>
    #   @return [String]
    # @!attribute start_date_time
    #   <p>The date and time that marks the beginning of the range of time for which you want to see intent stage metrics.</p>
    #   @return [Time]
    # @!attribute end_date_time
    #   <p>The date and time that marks the end of the range of time for which you want to see intent stage metrics.</p>
    #   @return [Time]
    # @!attribute metrics
    #   <p>A list of objects, each of which contains a metric you want to list, the statistic for the metric you want to return, and the method by which to organize the results.</p>
    #   @return [Array<Types::AnalyticsIntentStageMetric>]
    # @!attribute bin_by
    #   <p>A list of objects, each of which contains specifications for organizing the results by time.</p>
    #   @return [Array<Types::AnalyticsBinBySpecification>]
    # @!attribute group_by
    #   <p>A list of objects, each of which specifies how to group the results. You can group by the following criteria:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IntentStageName</code> – The name of the intent stage.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SwitchedToIntent</code> – The intent to which the conversation was switched (if any).</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::AnalyticsIntentStageGroupBySpecification>]
    # @!attribute filters
    #   <p>A list of objects, each of which describes a condition by which you want to filter the results.</p>
    #   @return [Array<Types::AnalyticsIntentStageFilter>]
    # @!attribute max_results
    #   <p>The maximum number of results to return in each page of results. If there are fewer results than the maximum page size, only the actual number of results are returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the response from the ListIntentStageMetrics operation contains more results than specified in the maxResults parameter, a token is returned in the response.</p>
    #            <p>Use the returned token in the nextToken parameter of a ListIntentStageMetrics request to return the next page of results. For a complete set of results, call the ListIntentStageMetrics operation until the nextToken returned in the response is null.</p>
    #   @return [String]
    class ListIntentStageMetricsRequest < Struct.new(
      :bot_id,
      :start_date_time,
      :end_date_time,
      :metrics,
      :bin_by,
      :group_by,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier for the bot for which you retrieved intent stage metrics.</p>
    #   @return [String]
    # @!attribute results
    #   <p>The results for the intent stage metrics.</p>
    #   @return [Array<Types::AnalyticsIntentStageResult>]
    # @!attribute next_token
    #   <p>If the response from the ListIntentStageMetrics operation contains more results than specified in the maxResults parameter, a token is returned in the response.</p>
    #            <p>Use the returned token in the nextToken parameter of a ListIntentStageMetrics request to return the next page of results. For a complete set of results, call the ListIntentStageMetrics operation until the nextToken returned in the response is null.</p>
    #   @return [String]
    class ListIntentStageMetricsResponse < Struct.new(
      :bot_id,
      :results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot that contains the intent.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot that contains the intent.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the intents to list.
    #            The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>Determines the sort order for the response from the
    #               <code>ListIntents</code> operation. You can choose to sort by the
    #            intent name or last updated date in either ascending or descending
    #            order.</p>
    #   @return [Types::IntentSortBy]
    # @!attribute filters
    #   <p>Provides the specification of a filter used to limit the intents in
    #            the response to only those that match the filter specification. You can
    #            only specify one filter and only one string to filter on.</p>
    #   @return [Array<Types::IntentFilter>]
    # @!attribute max_results
    #   <p>The maximum number of intents to return in each page of results. If
    #            there are fewer results than the max page size, only the actual number
    #            of results are returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the response from the <code>ListIntents</code> operation contains
    #            more results than specified in the <code>maxResults</code> parameter, a
    #            token is returned in the response.</p>
    #            <p>Use the returned token in the <code>nextToken</code> parameter of a
    #               <code>ListIntents</code> request to return the next page of results.
    #            For a complete set of results, call the <code>ListIntents</code>
    #            operation until the <code>nextToken</code> returned in the response is
    #            null.</p>
    #   @return [String]
    class ListIntentsRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :sort_by,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot that contains the intent.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot that contains the intent.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The language and locale of the intents in the list.</p>
    #   @return [String]
    # @!attribute intent_summaries
    #   <p>Summary information for the intents that meet the filter criteria
    #            specified in the request. The length of the list is specified in the
    #               <code>maxResults</code> parameter of the request. If there are more
    #            intents available, the <code>nextToken</code> field contains a token to
    #            get the next page of results.</p>
    #   @return [Array<Types::IntentSummary>]
    # @!attribute next_token
    #   <p>A token that indicates whether there are more results to return in a
    #            response to the <code>ListIntents</code> operation. If the
    #               <code>nextToken</code> field is present, you send the contents as
    #            the <code>nextToken</code> parameter of a <code>ListIntents</code>
    #            operation request to get the next page of results.</p>
    #   @return [String]
    class ListIntentsResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :intent_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot associated with the recommended
    #            intents.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot that contains the recommended intents.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the recommended
    #            intents.</p>
    #   @return [String]
    # @!attribute bot_recommendation_id
    #   <p>The identifier of the bot recommendation that contains the
    #            recommended intents.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the response from the ListRecommendedIntents operation contains
    #            more results than specified in the maxResults parameter, a token is
    #            returned in the response. Use that token in the nextToken parameter to
    #            return the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of bot recommendations to return in each page of
    #            results. If there are fewer results than the max page size, only the
    #            actual number of results are returned.</p>
    #   @return [Integer]
    class ListRecommendedIntentsRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_recommendation_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot associated with the recommended
    #            intent.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot that contains the intent.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the intents to list.
    #            The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #   @return [String]
    # @!attribute bot_recommendation_id
    #   <p>The identifier of the bot recommendation that contains the
    #            recommended intent.</p>
    #   @return [String]
    # @!attribute summary_list
    #   <p>Summary information for the intents that meet the filter criteria
    #            specified in the request. The length of the list is specified in the
    #            maxResults parameter of the request. If there are more intents
    #            available, the nextToken field contains a token to get the next page of
    #            results.</p>
    #   @return [Array<Types::RecommendedIntentSummary>]
    # @!attribute next_token
    #   <p>A token that indicates whether there are more results to return in a
    #            response to the ListRecommendedIntents operation. If the nextToken
    #            field is present, you send the contents as the nextToken parameter of a
    #            ListRecommendedIntents operation request to get the next page of
    #            results.</p>
    #   @return [String]
    class ListRecommendedIntentsResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_recommendation_id,
      :summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier for the bot for which you want to retrieve session analytics.</p>
    #   @return [String]
    # @!attribute start_date_time
    #   <p>The date and time that marks the beginning of the range of time for which you want to see session analytics.</p>
    #   @return [Time]
    # @!attribute end_date_time
    #   <p>The date and time that marks the end of the range of time for which you want to see session analytics.</p>
    #   @return [Time]
    # @!attribute sort_by
    #   <p>An object specifying the measure and method by which to sort the session analytics data.</p>
    #   @return [Types::SessionDataSortBy]
    # @!attribute filters
    #   <p>A list of objects, each of which describes a condition by which you want to filter the results.</p>
    #   @return [Array<Types::AnalyticsSessionFilter>]
    # @!attribute max_results
    #   <p>The maximum number of results to return in each page of results. If there are fewer results than the maximum page size, only the actual number of results are returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the response from the ListSessionAnalyticsData operation contains more results than specified in the maxResults parameter, a token is returned in the response.</p>
    #            <p>Use the returned token in the nextToken parameter of a ListSessionAnalyticsData request to return the next page of results. For a complete set of results, call the ListSessionAnalyticsData operation until the nextToken returned in the response is null.</p>
    #   @return [String]
    class ListSessionAnalyticsDataRequest < Struct.new(
      :bot_id,
      :start_date_time,
      :end_date_time,
      :sort_by,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot that the sessions belong to.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the response from the ListSessionAnalyticsData operation contains more results than specified in the maxResults parameter, a token is returned in the response.</p>
    #            <p>Use the returned token in the nextToken parameter of a ListSessionAnalyticsData request to return the next page of results. For a complete set of results, call the ListSessionAnalyticsData operation until the nextToken returned in the response is null.</p>
    #   @return [String]
    # @!attribute sessions
    #   <p>A list of objects, each of which contains information about a session with the bot.</p>
    #   @return [Array<Types::SessionSpecification>]
    class ListSessionAnalyticsDataResponse < Struct.new(
      :bot_id,
      :next_token,
      :sessions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier for the bot for which you want to retrieve session metrics.</p>
    #   @return [String]
    # @!attribute start_date_time
    #   <p>The date and time that marks the beginning of the range of time for which you want to see session metrics.</p>
    #   @return [Time]
    # @!attribute end_date_time
    #   <p>The date and time that marks the end of the range of time for which you want to see session metrics.</p>
    #   @return [Time]
    # @!attribute metrics
    #   <p>A list of objects, each of which contains a metric you want to list, the statistic for the metric you want to return, and the method by which to organize the results.</p>
    #   @return [Array<Types::AnalyticsSessionMetric>]
    # @!attribute bin_by
    #   <p>A list of objects, each of which contains specifications for organizing the results by time.</p>
    #   @return [Array<Types::AnalyticsBinBySpecification>]
    # @!attribute group_by
    #   <p>A list of objects, each of which specifies how to group the results. You can group by the following criteria:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ConversationEndState</code> – The final state of the conversation. The possible end states are detailed in <a href="https://docs.aws.amazon.com/analytics-key-definitions-conversations">Key definitions</a> in the user guide.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LocaleId</code> – The unique identifier of the bot locale.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::AnalyticsSessionGroupBySpecification>]
    # @!attribute filters
    #   <p>A list of objects, each of which describes a condition by which you want to filter the results.</p>
    #   @return [Array<Types::AnalyticsSessionFilter>]
    # @!attribute max_results
    #   <p>The maximum number of results to return in each page of results. If there are fewer results than the maximum page size, only the actual number of results are returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the response from the ListSessionMetrics operation contains more results than specified in the maxResults parameter, a token is returned in the response.</p>
    #            <p>Use the returned token in the nextToken parameter of a ListSessionMetrics request to return the next page of results. For a complete set of results, call the ListSessionMetrics operation until the nextToken returned in the response is null.</p>
    #   @return [String]
    class ListSessionMetricsRequest < Struct.new(
      :bot_id,
      :start_date_time,
      :end_date_time,
      :metrics,
      :bin_by,
      :group_by,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier for the bot for which you retrieved session metrics.</p>
    #   @return [String]
    # @!attribute results
    #   <p>The results for the session metrics.</p>
    #   @return [Array<Types::AnalyticsSessionResult>]
    # @!attribute next_token
    #   <p>If the response from the ListSessionMetrics operation contains more results than specified in the maxResults parameter, a token is returned in the response.</p>
    #            <p>Use the returned token in the nextToken parameter of a ListSessionMetrics request to return the next page of results. For a complete set of results, call the ListSessionMetrics operation until the nextToken returned in the response is null.</p>
    #   @return [String]
    class ListSessionMetricsResponse < Struct.new(
      :bot_id,
      :results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot that contains the slot
    #            types.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot that contains the slot type.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the slot types to list.
    #            The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>Determines the sort order for the response from the
    #               <code>ListSlotTypes</code> operation. You can choose to sort by the
    #            slot type name or last updated date in either ascending or descending
    #            order.</p>
    #   @return [Types::SlotTypeSortBy]
    # @!attribute filters
    #   <p>Provides the specification of a filter used to limit the slot types
    #            in the response to only those that match the filter specification. You
    #            can only specify one filter and only one string to filter on.</p>
    #   @return [Array<Types::SlotTypeFilter>]
    # @!attribute max_results
    #   <p>The maximum number of slot types to return in each page of results.
    #            If there are fewer results than the max page size, only the actual
    #            number of results are returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the response from the <code>ListSlotTypes</code> operation
    #            contains more results than specified in the <code>maxResults</code>
    #            parameter, a token is returned in the response. Use that token in the
    #               <code>nextToken</code> parameter to return the next page of
    #            results.</p>
    #   @return [String]
    class ListSlotTypesRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :sort_by,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot that contains the slot types.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot that contains the slot types.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The language and local of the slot types in the list.</p>
    #   @return [String]
    # @!attribute slot_type_summaries
    #   <p>Summary information for the slot types that meet the filter criteria
    #            specified in the request. The length of the list is specified in the
    #               <code>maxResults</code> parameter of the request. If there are more
    #            slot types available, the <code>nextToken</code> field contains a token
    #            to get the next page of results.</p>
    #   @return [Array<Types::SlotTypeSummary>]
    # @!attribute next_token
    #   <p>A token that indicates whether there are more results to return in a
    #            response to the <code>ListSlotTypes</code> operation. If the
    #               <code>nextToken</code> field is present, you send the contents as
    #            the <code>nextToken</code> parameter of a <code>ListSlotTypes</code>
    #            operation request to get the next page of results.</p>
    #   @return [String]
    class ListSlotTypesResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :slot_type_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot that contains the slot.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot that contains the slot.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the slots to list. The
    #            string must match one of the supported locales. For more information,
    #            see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #   @return [String]
    # @!attribute intent_id
    #   <p>The unique identifier of the intent that contains the slot.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>Determines the sort order for the response from the
    #               <code>ListSlots</code> operation. You can choose to sort by the slot
    #            name or last updated date in either ascending or descending
    #            order.</p>
    #   @return [Types::SlotSortBy]
    # @!attribute filters
    #   <p>Provides the specification of a filter used to limit the slots in
    #            the response to only those that match the filter specification. You can
    #            only specify one filter and only one string to filter on.</p>
    #   @return [Array<Types::SlotFilter>]
    # @!attribute max_results
    #   <p>The maximum number of slots to return in each page of results. If
    #            there are fewer results than the max page size, only the actual number
    #            of results are returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the response from the <code>ListSlots</code> operation contains
    #            more results than specified in the <code>maxResults</code> parameter, a
    #            token is returned in the response. Use that token in the
    #               <code>nextToken</code> parameter to return the next page of
    #            results.</p>
    #   @return [String]
    class ListSlotsRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :intent_id,
      :sort_by,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot that contains the slots.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot that contains the slots.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The language and locale of the slots in the list.</p>
    #   @return [String]
    # @!attribute intent_id
    #   <p>The identifier of the intent that contains the slots.</p>
    #   @return [String]
    # @!attribute slot_summaries
    #   <p>Summary information for the slots that meet the filter criteria
    #            specified in the request. The length of the list is specified in the
    #               <code>maxResults</code> parameter of the request. If there are more
    #            slots available, the <code>nextToken</code> field contains a token to
    #            get the next page of results.</p>
    #   @return [Array<Types::SlotSummary>]
    # @!attribute next_token
    #   <p>A token that indicates whether there are more results to return in a
    #            response to the <code>ListSlots</code> operation. If the
    #               <code>nextToken</code> field is present, you send the contents as
    #            the <code>nextToken</code> parameter of a <code>ListSlots</code>
    #            operation request to get the next page of results.</p>
    #   @return [String]
    class ListSlotsResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :intent_id,
      :slot_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to get a list of tags
    #            for.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags associated with a resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_execution_id
    #   <p>The unique identifier of the test execution to list the result items.</p>
    #   @return [String]
    # @!attribute result_filter_by
    #   <p>The filter for the list of results from the test set execution.</p>
    #   @return [Types::TestExecutionResultFilterBy]
    # @!attribute max_results
    #   <p>The maximum number of test execution result items to return in each 
    #         page. If there are fewer results than the max page size, only the actual 
    #         number of results are returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the response from the <code>ListTestExecutionResultItems</code> operation 
    #         contains more results than specified in the <code>maxResults</code> parameter, 
    #         a token is returned in the response. Use that token in the <code>nextToken</code> 
    #         parameter to return the next page of results.</p>
    #   @return [String]
    class ListTestExecutionResultItemsRequest < Struct.new(
      :test_execution_id,
      :result_filter_by,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_execution_results
    #   <p>The list of results from the test execution.</p>
    #   @return [Types::TestExecutionResultItems]
    # @!attribute next_token
    #   <p>A token that indicates whether there are more results to return in a response
    #         to the <code>ListTestExecutionResultItems</code> operation. If the 
    #         <code>nextToken</code> field is present, you send the contents as the 
    #         <code>nextToken</code> parameter of a <code>ListTestExecutionResultItems</code> 
    #         operation request to get the next page of results.</p>
    #   @return [String]
    class ListTestExecutionResultItemsResponse < Struct.new(
      :test_execution_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute sort_by
    #   <p>The sort order of the test set executions.</p>
    #   @return [Types::TestExecutionSortBy]
    # @!attribute max_results
    #   <p>The maximum number of test executions to return in each page. If there are 
    #         fewer results than the max page size, only the actual number of results are 
    #         returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the response from the ListTestExecutions operation contains more results 
    #         than specified in the maxResults parameter, a token is returned in the response. 
    #         Use that token in the nextToken parameter to return the next page of results.</p>
    #   @return [String]
    class ListTestExecutionsRequest < Struct.new(
      :sort_by,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_executions
    #   <p>The list of test executions.</p>
    #   @return [Array<Types::TestExecutionSummary>]
    # @!attribute next_token
    #   <p>A token that indicates whether there are more results to return in a response to 
    #         the ListTestExecutions operation. If the nextToken field is present, you send the 
    #         contents as the nextToken parameter of a ListTestExecutions operation request to 
    #         get the next page of results.</p>
    #   @return [String]
    class ListTestExecutionsResponse < Struct.new(
      :test_executions,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_set_id
    #   <p>The identifier of the test set to list its test set records.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of test set records to return in each page. If there are 
    #         fewer records than the max page size, only the actual number of records are 
    #         returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the response from the ListTestSetRecords operation contains more results 
    #         than specified in the maxResults parameter, a token is returned in the response. 
    #         Use that token in the nextToken parameter to return the next page of results.</p>
    #   @return [String]
    class ListTestSetRecordsRequest < Struct.new(
      :test_set_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_set_records
    #   <p>The list of records from the test set.</p>
    #   @return [Array<Types::TestSetTurnRecord>]
    # @!attribute next_token
    #   <p>A token that indicates whether there are more records to return in a response
    #         to the ListTestSetRecords operation. If the nextToken field is present, you 
    #         send the contents as the nextToken parameter of a ListTestSetRecords operation 
    #         request to get the next page of records.</p>
    #   @return [String]
    class ListTestSetRecordsResponse < Struct.new(
      :test_set_records,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute sort_by
    #   <p>The sort order for the list of test sets.</p>
    #   @return [Types::TestSetSortBy]
    # @!attribute max_results
    #   <p>The maximum number of test sets to return in each page. If there are fewer 
    #         results than the max page size, only the actual number of results are returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the response from the ListTestSets operation contains more results than 
    #         specified in the maxResults parameter, a token is returned in the response. Use 
    #         that token in the nextToken parameter to return the next page of results.</p>
    #   @return [String]
    class ListTestSetsRequest < Struct.new(
      :sort_by,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_sets
    #   <p>The selected test sets in a list of test sets.</p>
    #   @return [Array<Types::TestSetSummary>]
    # @!attribute next_token
    #   <p>A token that indicates whether there are more results to return in a response 
    #         to the ListTestSets operation. If the nextToken field is present, you send the 
    #         contents as the nextToken parameter of a ListTestSets operation request to get 
    #         the next page of results.</p>
    #   @return [String]
    class ListTestSetsResponse < Struct.new(
      :test_sets,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier for the bot for which you want to retrieve utterance analytics.</p>
    #   @return [String]
    # @!attribute start_date_time
    #   <p>The date and time that marks the beginning of the range of time for which you want to see utterance analytics.</p>
    #   @return [Time]
    # @!attribute end_date_time
    #   <p>The date and time that marks the end of the range of time for which you want to see utterance analytics.</p>
    #   @return [Time]
    # @!attribute sort_by
    #   <p>An object specifying the measure and method by which to sort the utterance analytics data.</p>
    #   @return [Types::UtteranceDataSortBy]
    # @!attribute filters
    #   <p>A list of objects, each of which describes a condition by which you want to filter the results.</p>
    #   @return [Array<Types::AnalyticsUtteranceFilter>]
    # @!attribute max_results
    #   <p>The maximum number of results to return in each page of results. If there are fewer results than the maximum page size, only the actual number of results are returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the response from the ListUtteranceAnalyticsData operation contains more results than specified in the maxResults parameter, a token is returned in the response.</p>
    #            <p>Use the returned token in the nextToken parameter of a ListUtteranceAnalyticsData request to return the next page of results. For a complete set of results, call the ListUtteranceAnalyticsData operation until the nextToken returned in the response is null.</p>
    #   @return [String]
    class ListUtteranceAnalyticsDataRequest < Struct.new(
      :bot_id,
      :start_date_time,
      :end_date_time,
      :sort_by,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot that the utterances belong to.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the response from the ListUtteranceAnalyticsData operation contains more results than specified in the maxResults parameter, a token is returned in the response.</p>
    #            <p>Use the returned token in the nextToken parameter of a ListUtteranceAnalyticsData request to return the next page of results. For a complete set of results, call the ListUtteranceAnalyticsData operation until the nextToken returned in the response is null.</p>
    #   @return [String]
    # @!attribute utterances
    #   <p>A list of objects, each of which contains information about an utterance in a user session with your bot.</p>
    #   @return [Array<Types::UtteranceSpecification>]
    class ListUtteranceAnalyticsDataResponse < Struct.new(
      :bot_id,
      :next_token,
      :utterances,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier for the bot for which you want to retrieve utterance metrics.</p>
    #   @return [String]
    # @!attribute start_date_time
    #   <p>The date and time that marks the beginning of the range of time for which you want to see utterance metrics.</p>
    #   @return [Time]
    # @!attribute end_date_time
    #   <p>The date and time that marks the end of the range of time for which you want to see utterance metrics.</p>
    #   @return [Time]
    # @!attribute metrics
    #   <p>A list of objects, each of which contains a metric you want to list, the statistic for the metric you want to return, and the method by which to organize the results.</p>
    #   @return [Array<Types::AnalyticsUtteranceMetric>]
    # @!attribute bin_by
    #   <p>A list of objects, each of which contains specifications for organizing the results by time.</p>
    #   @return [Array<Types::AnalyticsBinBySpecification>]
    # @!attribute group_by
    #   <p>A list of objects, each of which specifies how to group the results. You can group by the following criteria:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>UtteranceText</code> – The transcription of the utterance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UtteranceState</code> – The state of the utterance. The possible states are detailed in <a href="https://docs.aws.amazon.com/analytics-key-definitions-utterances">Key definitions</a> in the user guide.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::AnalyticsUtteranceGroupBySpecification>]
    # @!attribute attributes
    #   <p>A list containing attributes related to the utterance that you want the response to return. The following attributes are possible:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LastUsedIntent</code> – The last used intent at the time of the utterance.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::AnalyticsUtteranceAttribute>]
    # @!attribute filters
    #   <p>A list of objects, each of which describes a condition by which you want to filter the results.</p>
    #   @return [Array<Types::AnalyticsUtteranceFilter>]
    # @!attribute max_results
    #   <p>The maximum number of results to return in each page of results. If there are fewer results than the maximum page size, only the actual number of results are returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the response from the ListUtteranceMetrics operation contains more results than specified in the maxResults parameter, a token is returned in the response.</p>
    #            <p>Use the returned token in the nextToken parameter of a ListUtteranceMetrics request to return the next page of results. For a complete set of results, call the ListUtteranceMetrics operation until the nextToken returned in the response is null.</p>
    #   @return [String]
    class ListUtteranceMetricsRequest < Struct.new(
      :bot_id,
      :start_date_time,
      :end_date_time,
      :metrics,
      :bin_by,
      :group_by,
      :attributes,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier for the bot for which you retrieved utterance metrics.</p>
    #   @return [String]
    # @!attribute results
    #   <p>The results for the utterance metrics.</p>
    #   @return [Array<Types::AnalyticsUtteranceResult>]
    # @!attribute next_token
    #   <p>If the response from the ListUtteranceMetrics operation contains more results than specified in the maxResults parameter, a token is returned in the response.</p>
    #            <p>Use the returned token in the nextToken parameter of a ListUtteranceMetrics request to return the next page of results. For a complete set of results, call the ListUtteranceMetrics operation until the nextToken returned in the response is null.</p>
    #   @return [String]
    class ListUtteranceMetricsResponse < Struct.new(
      :bot_id,
      :results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The object that provides message text and its type.</p>
    # @!attribute plain_text_message
    #   <p>A message in plain text format.</p>
    #   @return [Types::PlainTextMessage]
    # @!attribute custom_payload
    #   <p>A message in a custom format defined by the client
    #            application.</p>
    #   @return [Types::CustomPayload]
    # @!attribute ssml_message
    #   <p>A message in Speech Synthesis Markup Language (SSML).</p>
    #   @return [Types::SSMLMessage]
    # @!attribute image_response_card
    #   <p>A message that defines a response card that the client application
    #            can show to the user.</p>
    #   @return [Types::ImageResponseCard]
    class Message < Struct.new(
      :plain_text_message,
      :custom_payload,
      :ssml_message,
      :image_response_card,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides one or more messages that Amazon Lex should send to the
    #          user.</p>
    # @!attribute message
    #   <p>The primary message that Amazon Lex should send to the user.</p>
    #   @return [Types::Message]
    # @!attribute variations
    #   <p>Message variations to send to the user. When variations are defined,
    #            Amazon Lex chooses the primary message or one of the variations to send to
    #            the user.</p>
    #   @return [Array<Types::Message>]
    class MessageGroup < Struct.new(
      :message,
      :variations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates whether a slot can return multiple values.</p>
    # @!attribute allow_multiple_values
    #   <p>Indicates whether a slot can return multiple values. When
    #               <code>true</code>, the slot may return more than one value in a
    #            response. When <code>false</code>, the slot returns only a single
    #            value.</p>
    #            <p>Multi-value slots are only available in the en-US locale. If you set
    #            this value to <code>true</code> in any other locale, Amazon Lex throws a
    #               <code>ValidationException</code>.</p>
    #            <p>If the <code>allowMutlipleValues</code> is not set, the default
    #            value is <code>false</code>.</p>
    #   @return [Boolean]
    class MultipleValuesSetting < Struct.new(
      :allow_multiple_values,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:allow_multiple_values] = false unless options.key?(:allow_multiple_values)
        super
      end
    end

    # <p>The new custom vocabulary item from the custom 
    #          vocabulary list.</p>
    # @!attribute phrase
    #   <p>The unique phrase for the new custom vocabulary item from the custom 
    #            vocabulary list.</p>
    #   @return [String]
    # @!attribute weight
    #   <p>The weight assigned to the new custom vocabulary item from the custom 
    #            vocabulary list.</p>
    #   @return [Integer]
    # @!attribute display_as
    #   <p>The display as value assigned to the new custom vocabulary item from the custom 
    #            vocabulary list.</p>
    #   @return [String]
    class NewCustomVocabularyItem < Struct.new(
      :phrase,
      :weight,
      :display_as,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies whether the assisted nlu feature is turned on or off.</p>
    # @!attribute enabled
    #   <p>Specifies whether the assisted nlu feature is enabled.</p>
    #   @return [Boolean]
    class NluImprovementSpecification < Struct.new(
      :enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>Determines whether Amazon Lex obscures slot values in conversation logs.
    #       </p>
    # @!attribute obfuscation_setting_type
    #   <p>Value that determines whether Amazon Lex obscures slot values in
    #            conversation logs. The default is to obscure the values.</p>
    #   @return [String]
    class ObfuscationSetting < Struct.new(
      :obfuscation_setting_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the configuration of the Amazon OpenSearch Service database used for the <code>AMAZON.QnAIntent</code>.</p>
    # @!attribute domain_endpoint
    #   <p>The endpoint of the Amazon OpenSearch Service domain.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The name of the Amazon OpenSearch Service index.</p>
    #   @return [String]
    # @!attribute exact_response
    #   <p>Specifies whether to return an exact response or to return an answer generated by the model using the fields you specify from the database.</p>
    #   @return [Boolean]
    # @!attribute exact_response_fields
    #   <p>Contains the names of the fields used for an exact response to the user.</p>
    #   @return [Types::ExactResponseFields]
    # @!attribute include_fields
    #   <p>Contains a list of fields from the Amazon OpenSearch Service that the model can use to generate the answer to the query.</p>
    #   @return [Array<String>]
    class OpensearchConfiguration < Struct.new(
      :domain_endpoint,
      :index_name,
      :exact_response,
      :exact_response_fields,
      :include_fields,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:exact_response] = false unless options.key?(:exact_response)
        super
      end
    end

    # <p>Describes a session context that is activated when an intent is
    #          fulfilled.</p>
    # @!attribute name
    #   <p>The name of the output context.</p>
    #   @return [String]
    # @!attribute time_to_live_in_seconds
    #   <p>The amount of time, in seconds, that the output context should
    #            remain active. The time is figured from the first time the context is
    #            sent to the user.</p>
    #   @return [Integer]
    # @!attribute turns_to_live
    #   <p>The number of conversation turns that the output context should
    #            remain active. The number of turns is counted from the first time that
    #            the context is sent to the user.</p>
    #   @return [Integer]
    class OutputContext < Struct.new(
      :name,
      :time_to_live_in_seconds,
      :turns_to_live,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the overall results for a test execution result.</p>
    # @!attribute multi_turn_conversation
    #   <p>Indicates whether the conversation contains multiple turns or not.</p>
    #   @return [Boolean]
    # @!attribute total_result_count
    #   <p>The total number of overall results in the result of the test execution.</p>
    #   @return [Integer]
    # @!attribute speech_transcription_result_counts
    #   <p>The number of speech transcription results in the overall test.</p>
    #   @return [Hash<String, Integer>]
    # @!attribute end_to_end_result_counts
    #   <p>The number of results that succeeded.</p>
    #   @return [Hash<String, Integer>]
    class OverallTestResultItem < Struct.new(
      :multi_turn_conversation,
      :total_result_count,
      :speech_transcription_result_counts,
      :end_to_end_result_counts,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:multi_turn_conversation] = false unless options.key?(:multi_turn_conversation)
        super
      end
    end

    # <p>Information about the overall test results.</p>
    # @!attribute items
    #   <p>A list of the overall test results.</p>
    #   @return [Array<Types::OverallTestResultItem>]
    class OverallTestResults < Struct.new(
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A network of bots.</p>
    # @!attribute bot_id
    #   <p>The identifier of the network of bots assigned by Amazon Lex.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the network of bots.</p>
    #   @return [String]
    class ParentBotNetwork < Struct.new(
      :bot_id,
      :bot_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The object that contains a path format that will be applied when
    #             Amazon Lex reads the transcript file in the bucket you provide. Specify this
    #             object if you only want Lex to read a subset of files in your Amazon S3
    #             bucket.</p>
    # @!attribute object_prefixes
    #   <p>A list of Amazon S3 prefixes that points to sub-folders in the Amazon S3
    #               bucket. Specify this list if you only want Lex to read the files under
    #               this set of sub-folders.</p>
    #   @return [Array<String>]
    class PathFormat < Struct.new(
      :object_prefixes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines an ASCII text message to send to the user.</p>
    # @!attribute value
    #   <p>The message to send to the user.</p>
    #   @return [String]
    class PlainTextMessage < Struct.new(
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies next steps to run after the dialog code hook
    #          finishes.</p>
    # @!attribute success_response
    #   <p>Specifies a list of message groups that Amazon Lex uses to respond the
    #            user input.</p>
    #   @return [Types::ResponseSpecification]
    # @!attribute success_next_step
    #   <p>Specifics the next step the bot runs after the dialog code hook
    #            finishes successfully. </p>
    #   @return [Types::DialogState]
    # @!attribute success_conditional
    #   <p>A list of conditional branches to evaluate after the dialog code
    #            hook finishes successfully.</p>
    #   @return [Types::ConditionalSpecification]
    # @!attribute failure_response
    #   <p>Specifies a list of message groups that Amazon Lex uses to respond the
    #            user input.</p>
    #   @return [Types::ResponseSpecification]
    # @!attribute failure_next_step
    #   <p>Specifies the next step the bot runs after the dialog code hook
    #            throws an exception or returns with the <code>State</code> field of the
    #               <code>Intent</code> object set to <code>Failed</code>.</p>
    #   @return [Types::DialogState]
    # @!attribute failure_conditional
    #   <p>A list of conditional branches to evaluate after the dialog code
    #            hook throws an exception or returns with the <code>State</code> field
    #            of the <code>Intent</code> object set to <code>Failed</code>.</p>
    #   @return [Types::ConditionalSpecification]
    # @!attribute timeout_response
    #   <p>Specifies a list of message groups that Amazon Lex uses to respond the
    #            user input.</p>
    #   @return [Types::ResponseSpecification]
    # @!attribute timeout_next_step
    #   <p>Specifies the next step that the bot runs when the code hook times
    #            out.</p>
    #   @return [Types::DialogState]
    # @!attribute timeout_conditional
    #   <p>A list of conditional branches to evaluate if the code hook times
    #            out.</p>
    #   @return [Types::ConditionalSpecification]
    class PostDialogCodeHookInvocationSpecification < Struct.new(
      :success_response,
      :success_next_step,
      :success_conditional,
      :failure_response,
      :failure_next_step,
      :failure_conditional,
      :timeout_response,
      :timeout_next_step,
      :timeout_conditional,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a setting that determines whether the post-fulfillment
    #          response is sent to the user. For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/streaming-progress.html#progress-complete">https://docs.aws.amazon.com/lexv2/latest/dg/streaming-progress.html#progress-complete</a>
    #          </p>
    # @!attribute success_response
    #   <p>Specifies a list of message groups that Amazon Lex uses to respond the
    #            user input.</p>
    #   @return [Types::ResponseSpecification]
    # @!attribute failure_response
    #   <p>Specifies a list of message groups that Amazon Lex uses to respond the
    #            user input.</p>
    #   @return [Types::ResponseSpecification]
    # @!attribute timeout_response
    #   <p>Specifies a list of message groups that Amazon Lex uses to respond the
    #            user input.</p>
    #   @return [Types::ResponseSpecification]
    # @!attribute success_next_step
    #   <p>Specifies the next step in the conversation that Amazon Lex
    #            invokes when the fulfillment code hook completes successfully.</p>
    #   @return [Types::DialogState]
    # @!attribute success_conditional
    #   <p>A list of conditional branches to evaluate after the fulfillment
    #            code hook finishes successfully.</p>
    #   @return [Types::ConditionalSpecification]
    # @!attribute failure_next_step
    #   <p>Specifies the next step the bot runs after the fulfillment code hook
    #            throws an exception or returns with the <code>State</code> field of the
    #               <code>Intent</code> object set to <code>Failed</code>.</p>
    #   @return [Types::DialogState]
    # @!attribute failure_conditional
    #   <p>A list of conditional branches to evaluate after the fulfillment
    #            code hook throws an exception or returns with the <code>State</code>
    #            field of the <code>Intent</code> object set to
    #            <code>Failed</code>.</p>
    #   @return [Types::ConditionalSpecification]
    # @!attribute timeout_next_step
    #   <p>Specifies the next step that the bot runs when the fulfillment code
    #            hook times out.</p>
    #   @return [Types::DialogState]
    # @!attribute timeout_conditional
    #   <p>A list of conditional branches to evaluate if the fulfillment code
    #            hook times out.</p>
    #   @return [Types::ConditionalSpecification]
    class PostFulfillmentStatusSpecification < Struct.new(
      :success_response,
      :failure_response,
      :timeout_response,
      :success_next_step,
      :success_conditional,
      :failure_next_step,
      :failure_conditional,
      :timeout_next_step,
      :timeout_conditional,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Your request couldn't be completed because one or more request
    #          fields aren't valid. Check the fields in your request and try
    #          again.</p>
    # @!attribute message
    #   @return [String]
    class PreconditionFailedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The IAM principal that you allowing or denying access to an Amazon Lex
    #          action. You must provide a <code>service</code> or an <code>arn</code>,
    #          but not both in the same statement. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html"> AWS JSON policy elements: Principal </a>.</p>
    # @!attribute service
    #   <p>The name of the Amazon Web Services service that should allowed or denied access to
    #            an Amazon Lex action.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the principal.</p>
    #   @return [String]
    class Principal < Struct.new(
      :service,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the settings on a prompt attempt.</p>
    # @!attribute allow_interrupt
    #   <p>Indicates whether the user can interrupt a speech prompt attempt from the bot.</p>
    #   @return [Boolean]
    # @!attribute allowed_input_types
    #   <p>Indicates the allowed input types of the prompt attempt.</p>
    #   @return [Types::AllowedInputTypes]
    # @!attribute audio_and_dtmf_input_specification
    #   <p>Specifies the settings on audio and DTMF input.</p>
    #   @return [Types::AudioAndDTMFInputSpecification]
    # @!attribute text_input_specification
    #   <p>Specifies the settings on text input.</p>
    #   @return [Types::TextInputSpecification]
    class PromptAttemptSpecification < Struct.new(
      :allow_interrupt,
      :allowed_input_types,
      :audio_and_dtmf_input_specification,
      :text_input_specification,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a list of message groups that Amazon Lex sends to a user to
    #          elicit a response.</p>
    # @!attribute message_groups
    #   <p>A collection of messages that Amazon Lex can send to the user. Amazon Lex
    #            chooses the actual message to send at runtime.</p>
    #   @return [Array<Types::MessageGroup>]
    # @!attribute max_retries
    #   <p>The maximum number of times the bot tries to elicit a response from
    #            the user using this prompt.</p>
    #   @return [Integer]
    # @!attribute allow_interrupt
    #   <p>Indicates whether the user can interrupt a speech prompt from the
    #            bot.</p>
    #   @return [Boolean]
    # @!attribute message_selection_strategy
    #   <p>Indicates how a message is selected from a message group among retries.</p>
    #   @return [String]
    # @!attribute prompt_attempts_specification
    #   <p>Specifies the advanced settings on each attempt of the prompt.</p>
    #   @return [Hash<String, Types::PromptAttemptSpecification>]
    class PromptSpecification < Struct.new(
      :message_groups,
      :max_retries,
      :allow_interrupt,
      :message_selection_strategy,
      :prompt_attempts_specification,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration details of the Qinconnect assistant.</p>
    # @!attribute assistant_arn
    #   <p>The assistant Arn details of the Qinconnect assistant configuration.</p>
    #   @return [String]
    class QInConnectAssistantConfiguration < Struct.new(
      :assistant_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration details of the Qinconnect intent.</p>
    # @!attribute q_in_connect_assistant_configuration
    #   <p>The Qinconnect assistant configuration details of the Qinconnect intent.</p>
    #   @return [Types::QInConnectAssistantConfiguration]
    class QInConnectIntentConfiguration < Struct.new(
      :q_in_connect_assistant_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the the configuration of the built-in <code>Amazon.QnAIntent</code>.</p>
    # @!attribute data_source_configuration
    #   <p>Contains details about the configuration of the data source used for the <code>AMAZON.QnAIntent</code>.</p>
    #   @return [Types::DataSourceConfiguration]
    # @!attribute bedrock_model_configuration
    #   <p>Contains information about the Amazon Bedrock model used to interpret the prompt used in descriptive bot building.</p>
    #   @return [Types::BedrockModelSpecification]
    class QnAIntentConfiguration < Struct.new(
      :data_source_configuration,
      :bedrock_model_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the configuration of the Amazon Kendra index used for the <code>AMAZON.QnAIntent</code>.</p>
    # @!attribute kendra_index
    #   <p>The ARN of the Amazon Kendra index to use.</p>
    #   @return [String]
    # @!attribute query_filter_string_enabled
    #   <p>Specifies whether to enable an Amazon Kendra filter string or not.</p>
    #   @return [Boolean]
    # @!attribute query_filter_string
    #   <p>Contains the Amazon Kendra filter string to use if enabled. For more information on the Amazon Kendra search filter JSON format, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/filtering.html#search-filtering">Using document attributes to filter search results</a>.</p>
    #   @return [String]
    # @!attribute exact_response
    #   <p>Specifies whether to return an exact response from the Amazon Kendra index or to let the Amazon Bedrock model you select generate a response based on the results. To use this feature, you must first add FAQ questions to your index by following the steps at <a href="https://docs.aws.amazon.com/kendra/latest/dg/in-creating-faq.html">Adding frequently asked questions (FAQs) to an index</a>.</p>
    #   @return [Boolean]
    class QnAKendraConfiguration < Struct.new(
      :kendra_index,
      :query_filter_string_enabled,
      :query_filter_string,
      :exact_response,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:query_filter_string_enabled] = false unless options.key?(:query_filter_string_enabled)
        options[:exact_response] = false unless options.key?(:exact_response)
        super
      end
    end

    # <p>An object that contains a summary of a recommended intent.</p>
    # @!attribute intent_id
    #   <p>The unique identifier of a recommended intent associated with the
    #               bot recommendation.</p>
    #   @return [String]
    # @!attribute intent_name
    #   <p>The name of a recommended intent associated with the bot
    #               recommendation.</p>
    #   @return [String]
    # @!attribute sample_utterances_count
    #   <p>The count of sample utterances of a recommended intent that is
    #               associated with a bot recommendation.</p>
    #   @return [Integer]
    class RecommendedIntentSummary < Struct.new(
      :intent_id,
      :intent_name,
      :sample_utterances_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the time window that utterance statistics are returned
    #             for. The time window is always relative to the last time that the that
    #             utterances were aggregated. For example, if the
    #             <code>ListAggregatedUtterances</code> operation is called at 1600,
    #             the time window is set to 1 hour, and the last refresh time was 1530,
    #             only utterances made between 1430 and 1530 are returned.</p>
    #          <p>You can choose the time window that statistics should be returned
    #             for.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Hours</b> - You can request
    #                     utterance statistics for 1, 3, 6, 12, or 24 hour time windows.
    #                     Statistics are refreshed every half hour for 1 hour time windows,
    #                     and hourly for the other time windows.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Days</b> - You can request
    #                     utterance statistics for 3 days. Statistics are refreshed every 6
    #                     hours.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Weeks</b> - You can see
    #                     statistics for one or two weeks. Statistics are refreshed every
    #                     12 hours for one week time windows, and once per day for two week
    #                     time windows.</p>
    #             </li>
    #          </ul>
    # @!attribute time_dimension
    #   <p>The type of time period that the <code>timeValue</code> field
    #               represents. </p>
    #   @return [String]
    # @!attribute time_value
    #   <p>The period of the time window to gather statistics for. The valid
    #               value depends on the setting of the <code>timeDimension</code>
    #               field.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Hours</code> - 1/3/6/12/24</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Days</code> - 3</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Weeks</code> - 1/2</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    class RelativeAggregationDuration < Struct.new(
      :time_dimension,
      :time_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You asked to describe a resource that doesn't exist. Check the
    #          resource that you are requesting and try again.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a list of message groups that Amazon Lex uses to respond the
    #          user input.</p>
    # @!attribute message_groups
    #   <p>A collection of responses that Amazon Lex can send to the user. Amazon Lex
    #            chooses the actual response to send at runtime.</p>
    #   @return [Array<Types::MessageGroup>]
    # @!attribute allow_interrupt
    #   <p>Indicates whether the user can interrupt a speech response from
    #            Amazon Lex.</p>
    #   @return [Boolean]
    class ResponseSpecification < Struct.new(
      :message_groups,
      :allow_interrupt,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides an array of phrases that should be given preference when
    #  resolving values for a slot.</p>
    # @!attribute runtime_hint_values
    #   <p>One or more strings that Amazon Lex should look for in the input to the
    #    bot. Each phrase is given preference when deciding on slot
    #    values.</p>
    #   @return [Array<Types::RuntimeHintValue>]
    # @!attribute sub_slot_hints
    #   <p>A map of constituent sub slot names inside a composite slot in the intent and the phrases 
    #    that should be added for each sub slot. Inside each composite slot hints, this structure provides 
    #    a mechanism to add granular sub slot phrases. Only sub slot hints are supported for composite slots. 
    #    The intent name, composite slot name and the constituent sub slot names must exist.</p>
    #   @return [Hash<String, Types::RuntimeHintDetails>]
    class RuntimeHintDetails < Struct.new(
      :runtime_hint_values,
      :sub_slot_hints,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the phrase that Amazon Lex should look for in the user's input
    #  to the bot.</p>
    # @!attribute phrase
    #   <p>The phrase that Amazon Lex should look for in the user's input to the
    #    bot.</p>
    #   @return [String]
    class RuntimeHintValue < Struct.new(
      :phrase,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You can provide Amazon Lex with hints to the phrases that a customer is
    #  likely to use for a slot. When a slot with hints is resolved, the
    #  phrases in the runtime hints are preferred in the resolution. You can
    #  provide hints for a maximum of 100 intents. You can provide a maximum
    #  of 100 slots.</p>
    #          <p>Before you can use runtime hints with an existing bot, you must
    #  first rebuild the bot.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/using-hints.html">Using runtime hints to
    #  improve recognition of slot values</a>.</p>
    # @!attribute slot_hints
    #   <p>A list of the slots in the intent that should have runtime hints
    #    added, and the phrases that should be added for each slot.</p>
    #            <p>The first level of the <code>slotHints</code> map is the name of the
    #    intent. The second level is the name of the slot within the intent. For
    #    more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/using-hints.html">Using hints to improve
    #    accuracy</a>.</p>
    #            <p>The intent name and slot name must exist.</p>
    #   @return [Hash<String, Hash<String, Types::RuntimeHintDetails>>]
    class RuntimeHints < Struct.new(
      :slot_hints,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains specifications about the Amazon Lex runtime generative AI capabilities from Amazon Bedrock that you can turn on for your bot.</p>
    # @!attribute slot_resolution_improvement
    #   <p>An object containing specifications for the assisted slot resolution feature.</p>
    #   @return [Types::SlotResolutionImprovementSpecification]
    # @!attribute nlu_improvement
    #   <p>An object containing specifications for the assisted nlu feature.</p>
    #   @return [Types::NluImprovementSpecification]
    class RuntimeSettings < Struct.new(
      :slot_resolution_improvement,
      :nlu_improvement,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies an Amazon S3 bucket for logging audio conversations</p>
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of an Amazon Web Services Key Management Service
    #            (KMS) key for encrypting audio log files stored in an S3 bucket.</p>
    #   @return [String]
    # @!attribute s3_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of an Amazon S3 bucket where audio
    #            log files are stored.</p>
    #   @return [String]
    # @!attribute log_prefix
    #   <p>The S3 prefix to assign to audio log files.</p>
    #   @return [String]
    class S3BucketLogDestination < Struct.new(
      :kms_key_arn,
      :s3_bucket_arn,
      :log_prefix,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The object representing the Amazon S3 bucket containing the transcript,
    #             as well as the associated metadata.</p>
    # @!attribute s3_bucket_name
    #   <p>The name of the bucket containing the transcript and the associated
    #               metadata.</p>
    #   @return [String]
    # @!attribute path_format
    #   <p>The object that contains a path format that will be applied when
    #               Amazon Lex reads the transcript file in the bucket you provide. Specify this
    #               object if you only want Lex to read a subset of files in your Amazon S3
    #               bucket.</p>
    #   @return [Types::PathFormat]
    # @!attribute transcript_format
    #   <p>The format of the transcript content. Currently, Genie only supports
    #               the Amazon Lex transcript format.</p>
    #   @return [String]
    # @!attribute transcript_filter
    #   <p>The object that contains the filter which will be applied when Amazon Lex
    #               reads through the Amazon S3 bucket. Specify this object if you want Amazon Lex to
    #               read only a subset of the Amazon S3 bucket based on the filter you
    #               provide.</p>
    #   @return [Types::TranscriptFilter]
    # @!attribute kms_key_arn
    #   <p>The ARN of the KMS key that customer use to encrypt their Amazon S3
    #               bucket. Only use this field if your bucket is encrypted using a
    #               customer managed KMS key.</p>
    #   @return [String]
    class S3BucketTranscriptSource < Struct.new(
      :s3_bucket_name,
      :path_format,
      :transcript_format,
      :transcript_filter,
      :kms_key_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a Speech Synthesis Markup Language (SSML) prompt.</p>
    # @!attribute value
    #   <p>The SSML text that defines the prompt.</p>
    #   @return [String]
    class SSMLMessage < Struct.new(
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A sample utterance that invokes an intent or respond to a slot
    #          elicitation prompt.</p>
    # @!attribute utterance
    #   <p>The sample utterance that Amazon Lex uses to build its machine-learning
    #            model to recognize intents.</p>
    #   @return [String]
    class SampleUtterance < Struct.new(
      :utterance,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains specifications for the sample utterance generation feature.</p>
    # @!attribute enabled
    #   <p>Specifies whether to enable sample utterance generation or not.</p>
    #   @return [Boolean]
    # @!attribute bedrock_model_specification
    #   <p>Contains information about the Amazon Bedrock model used to interpret the prompt used in descriptive bot building.</p>
    #   @return [Types::BedrockModelSpecification]
    class SampleUtteranceGenerationSpecification < Struct.new(
      :enabled,
      :bedrock_model_specification,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>Defines one of the values for a slot type.</p>
    # @!attribute value
    #   <p>The value that can be used for a slot type.</p>
    #   @return [String]
    class SampleValue < Struct.new(
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot associated with the transcripts
    #            that you are searching.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot containing the transcripts that you are
    #            searching.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the transcripts to
    #            search. The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>
    #            </p>
    #   @return [String]
    # @!attribute bot_recommendation_id
    #   <p>The unique identifier of the bot recommendation associated with the
    #            transcripts to search.</p>
    #   @return [String]
    # @!attribute search_order
    #   <p>How SearchResults are ordered. Valid values are Ascending or
    #            Descending. The default is Descending.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>A list of filter objects.</p>
    #   @return [Array<Types::AssociatedTranscriptFilter>]
    # @!attribute max_results
    #   <p>The maximum number of bot recommendations to return in each page of
    #            results. If there are fewer results than the max page size, only the
    #            actual number of results are returned.</p>
    #   @return [Integer]
    # @!attribute next_index
    #   <p>If the response from the SearchAssociatedTranscriptsRequest
    #            operation contains more results than specified in the maxResults
    #            parameter, an index is returned in the response. Use that index in the
    #            nextIndex parameter to return the next page of results.</p>
    #   @return [Integer]
    class SearchAssociatedTranscriptsRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_recommendation_id,
      :search_order,
      :filters,
      :max_results,
      :next_index,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot associated with the transcripts
    #            that you are searching.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot containing the transcripts that you are
    #            searching.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the transcripts to
    #            search. The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>
    #            </p>
    #   @return [String]
    # @!attribute bot_recommendation_id
    #   <p> The unique identifier of the bot recommendation associated with the
    #            transcripts to search.</p>
    #   @return [String]
    # @!attribute next_index
    #   <p>A index that indicates whether there are more results to return in a
    #            response to the SearchAssociatedTranscripts operation. If the nextIndex
    #            field is present, you send the contents as the nextIndex parameter of a
    #            SearchAssociatedTranscriptsRequest operation to get the next page of
    #            results.</p>
    #   @return [Integer]
    # @!attribute associated_transcripts
    #   <p>The object that contains the associated transcript that meet the
    #            criteria you specified.</p>
    #   @return [Array<Types::AssociatedTranscript>]
    # @!attribute total_results
    #   <p>The total number of transcripts returned by the search.</p>
    #   @return [Integer]
    class SearchAssociatedTranscriptsResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_recommendation_id,
      :next_index,
      :associated_transcripts,
      :total_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Determines whether Amazon Lex will use Amazon Comprehend to detect the sentiment of
    #          user utterances.</p>
    # @!attribute detect_sentiment
    #   <p>Sets whether Amazon Lex uses Amazon Comprehend to detect the sentiment of user
    #            utterances.</p>
    #   @return [Boolean]
    class SentimentAnalysisSettings < Struct.new(
      :detect_sentiment,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:detect_sentiment] = false unless options.key?(:detect_sentiment)
        super
      end
    end

    # <p>You have reached a quota for your bot. </p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object specifying the measure and method by which to sort the session analytics data.</p>
    # @!attribute name
    #   <p>The measure by which to sort the session analytics data.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>conversationStartTime</code> – The date and time when the conversation began. A conversation is defined as a unique combination of a <code>sessionId</code> and an <code>originatingRequestId</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>numberOfTurns</code> – The number of turns that the session took.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>conversationDurationSeconds</code> – The duration of the conversation in seconds.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute order
    #   <p>Specifies whether to sort the results in ascending or descending order.</p>
    #   @return [String]
    class SessionDataSortBy < Struct.new(
      :name,
      :order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing information about a specific session.</p>
    # @!attribute bot_alias_id
    #   <p>The identifier of the alias of the bot that the session was held with.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot that the session was held with.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The locale of the bot that the session was held with.</p>
    #   @return [String]
    # @!attribute channel
    #   <p>The channel that is integrated with the bot that the session was held with.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The identifier of the session.</p>
    #   @return [String]
    # @!attribute conversation_start_time
    #   <p>The date and time when the conversation began. A conversation is defined as a unique combination of a <code>sessionId</code> and an <code>originatingRequestId</code>.</p>
    #   @return [Time]
    # @!attribute conversation_end_time
    #   <p>The date and time when the conversation ended. A conversation is defined as a unique combination of a <code>sessionId</code> and an <code>originatingRequestId</code>.</p>
    #   @return [Time]
    # @!attribute conversation_duration_seconds
    #   <p>The duration of the conversation in seconds. A conversation is defined as a unique combination of a <code>sessionId</code> and an <code>originatingRequestId</code>.</p>
    #   @return [Integer]
    # @!attribute conversation_end_state
    #   <p>The final state of the conversation. A conversation is defined as a unique combination of a <code>sessionId</code> and an <code>originatingRequestId</code>.</p>
    #   @return [String]
    # @!attribute mode
    #   <p>The mode of the session. The possible values are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Speech</code> – The session was spoken.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Text</code> – The session was written.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DTMF</code> – The session used a touch-tone keypad (Dual Tone Multi-Frequency).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MultiMode</code> – The session used multiple modes.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute number_of_turns
    #   <p>The number of turns that the session took.</p>
    #   @return [Integer]
    # @!attribute invoked_intent_samples
    #   <p>A list of objects containing the name of an intent that was invoked.</p>
    #   @return [Array<Types::InvokedIntentSample>]
    # @!attribute originating_request_id
    #   <p>The identifier of the first request in a session.</p>
    #   @return [String]
    class SessionSpecification < Struct.new(
      :bot_alias_id,
      :bot_version,
      :locale_id,
      :channel,
      :session_id,
      :conversation_start_time,
      :conversation_end_time,
      :conversation_duration_seconds,
      :conversation_end_state,
      :mode,
      :number_of_turns,
      :invoked_intent_samples,
      :originating_request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Settings used when Amazon Lex successfully captures a slot
    #          value from a user.</p>
    # @!attribute capture_response
    #   <p>Specifies a list of message groups that Amazon Lex uses to respond the
    #            user input.</p>
    #   @return [Types::ResponseSpecification]
    # @!attribute capture_next_step
    #   <p>Specifies the next step that the bot runs when the slot value is
    #            captured before the code hook times out.</p>
    #   @return [Types::DialogState]
    # @!attribute capture_conditional
    #   <p>A list of conditional branches to evaluate after the slot value is
    #            captured.</p>
    #   @return [Types::ConditionalSpecification]
    # @!attribute failure_response
    #   <p>Specifies a list of message groups that Amazon Lex uses to respond the
    #            user input.</p>
    #   @return [Types::ResponseSpecification]
    # @!attribute failure_next_step
    #   <p>Specifies the next step that the bot runs when the slot value code
    #            is not recognized.</p>
    #   @return [Types::DialogState]
    # @!attribute failure_conditional
    #   <p>A list of conditional branches to evaluate when the slot value isn't
    #            captured.</p>
    #   @return [Types::ConditionalSpecification]
    # @!attribute code_hook
    #   <p>Code hook called after Amazon Lex successfully captures a
    #            slot value.</p>
    #   @return [Types::DialogCodeHookInvocationSetting]
    # @!attribute elicitation_code_hook
    #   <p>Code hook called when Amazon Lex doesn't capture a slot
    #            value.</p>
    #   @return [Types::ElicitationCodeHookInvocationSetting]
    class SlotCaptureSetting < Struct.new(
      :capture_response,
      :capture_next_step,
      :capture_conditional,
      :failure_response,
      :failure_next_step,
      :failure_conditional,
      :code_hook,
      :elicitation_code_hook,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the default value to use when a user doesn't provide a
    #          value for a slot.</p>
    # @!attribute default_value
    #   <p>The default value to use when a user doesn't provide a value for a
    #            slot.</p>
    #   @return [String]
    class SlotDefaultValue < Struct.new(
      :default_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a list of values that Amazon Lex should use as the default value
    #          for a slot.</p>
    # @!attribute default_value_list
    #   <p>A list of default values. Amazon Lex chooses the default value to use in
    #            the order that they are presented in the list.</p>
    #   @return [Array<Types::SlotDefaultValue>]
    class SlotDefaultValueSpecification < Struct.new(
      :default_value_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Filters the response from the <code>ListSlots</code>
    #          operation.</p>
    # @!attribute name
    #   <p>The name of the field to use for filtering.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The value to use to filter the response.</p>
    #   @return [Array<String>]
    # @!attribute operator
    #   <p>The operator to use for the filter. Specify <code>EQ</code> when the
    #            <code>ListSlots</code> operation should return only aliases that
    #            equal the specified value. Specify <code>CO</code> when the
    #            <code>ListSlots</code> operation should return aliases that contain
    #            the specified value.</p>
    #   @return [String]
    class SlotFilter < Struct.new(
      :name,
      :values,
      :operator,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Sets the priority that Amazon Lex should use when eliciting slot values
    #          from a user.</p>
    # @!attribute priority
    #   <p>The priority that Amazon Lex should apply to the slot.</p>
    #   @return [Integer]
    # @!attribute slot_id
    #   <p>The unique identifier of the slot.</p>
    #   @return [String]
    class SlotPriority < Struct.new(
      :priority,
      :slot_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains specifications for the assisted slot resolution feature.</p>
    # @!attribute enabled
    #   <p>Specifies whether assisted slot resolution is turned on or off.</p>
    #   @return [Boolean]
    # @!attribute bedrock_model_specification
    #   <p>An object containing information about the Amazon Bedrock model used to assist slot resolution.</p>
    #   @return [Types::BedrockModelSpecification]
    class SlotResolutionImprovementSpecification < Struct.new(
      :enabled,
      :bedrock_model_specification,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>Contains information about whether assisted slot resolution is turned on for the slot or not.</p>
    # @!attribute slot_resolution_strategy
    #   <p>Specifies whether assisted slot resolution is turned on for the slot or not. If the value is <code>EnhancedFallback</code>, assisted slot resolution is activated when Amazon Lex defaults to the <code>AMAZON.FallbackIntent</code>. If the value is <code>Default</code>, assisted slot resolution is turned off.</p>
    #   @return [String]
    class SlotResolutionSetting < Struct.new(
      :slot_resolution_strategy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the success and failure rate of slot resolution 
    #  in the results of a test execution.</p>
    # @!attribute slot_name
    #   <p>The name of the slot.</p>
    #   @return [String]
    # @!attribute result_counts
    #   <p>A result for slot resolution in the results of a test execution.</p>
    #   @return [Types::SlotResolutionTestResultItemCounts]
    class SlotResolutionTestResultItem < Struct.new(
      :slot_name,
      :result_counts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the counts for a slot resolution in the results of a test execution.</p>
    # @!attribute total_result_count
    #   <p>The total number of results.</p>
    #   @return [Integer]
    # @!attribute speech_transcription_result_counts
    #   <p>The number of matched, mismatched and execution error results for speech transcription for the slot.</p>
    #   @return [Hash<String, Integer>]
    # @!attribute slot_match_result_counts
    #   <p>The number of matched and mismatched results for slot resolution for the slot.</p>
    #   @return [Hash<String, Integer>]
    class SlotResolutionTestResultItemCounts < Struct.new(
      :total_result_count,
      :speech_transcription_result_counts,
      :slot_match_result_counts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies attributes for sorting a list of bots.</p>
    # @!attribute attribute
    #   <p>The attribute to use to sort the list.</p>
    #   @return [String]
    # @!attribute order
    #   <p>The order to sort the list. You can choose ascending or
    #            descending.</p>
    #   @return [String]
    class SlotSortBy < Struct.new(
      :attribute,
      :order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a slot, a value that the bot elicits from
    #          the user.</p>
    # @!attribute slot_id
    #   <p>The unique identifier of the slot.</p>
    #   @return [String]
    # @!attribute slot_name
    #   <p>The name given to the slot.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the slot.</p>
    #   @return [String]
    # @!attribute slot_constraint
    #   <p>Whether the slot is required or optional. An intent is complete when
    #            all required slots are filled.</p>
    #   @return [String]
    # @!attribute slot_type_id
    #   <p>The unique identifier for the slot type that defines the values for
    #            the slot.</p>
    #   @return [String]
    # @!attribute value_elicitation_prompt_specification
    #   <p>Prompts that are sent to the user to elicit a value for the
    #            slot.</p>
    #   @return [Types::PromptSpecification]
    # @!attribute last_updated_date_time
    #   <p>The timestamp of the last date and time that the slot was
    #            updated.</p>
    #   @return [Time]
    class SlotSummary < Struct.new(
      :slot_id,
      :slot_name,
      :description,
      :slot_constraint,
      :slot_type_id,
      :value_elicitation_prompt_specification,
      :last_updated_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Filters the response from the <code>ListSlotTypes</code>
    #          operation.</p>
    # @!attribute name
    #   <p>The name of the field to use for filtering.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The value to use to filter the response.</p>
    #   @return [Array<String>]
    # @!attribute operator
    #   <p>The operator to use for the filter. Specify <code>EQ</code> when the
    #            <code>ListSlotTypes</code> operation should return only aliases that
    #            equal the specified value. Specify <code>CO</code> when the
    #            <code>ListSlotTypes</code> operation should return aliases that
    #            contain the specified value.</p>
    #   @return [String]
    class SlotTypeFilter < Struct.new(
      :name,
      :values,
      :operator,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies attributes for sorting a list of slot types.</p>
    # @!attribute attribute
    #   <p>The attribute to use to sort the list of slot types.</p>
    #   @return [String]
    # @!attribute order
    #   <p>The order to sort the list. You can say ascending or
    #            descending.</p>
    #   @return [String]
    class SlotTypeSortBy < Struct.new(
      :attribute,
      :order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The object that contains the statistical summary of the recommended
    #             slot type associated with the bot recommendation.</p>
    # @!attribute discovered_slot_type_count
    #   <p>The number of recommended slot types associated with the bot
    #               recommendation.</p>
    #   @return [Integer]
    class SlotTypeStatistics < Struct.new(
      :discovered_slot_type_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides summary information about a slot type.</p>
    # @!attribute slot_type_id
    #   <p>The unique identifier assigned to the slot type.</p>
    #   @return [String]
    # @!attribute slot_type_name
    #   <p>The name of the slot type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the slot type.</p>
    #   @return [String]
    # @!attribute parent_slot_type_signature
    #   <p>If the slot type is derived from a built-on slot type, the name of
    #            the parent slot type.</p>
    #   @return [String]
    # @!attribute last_updated_date_time
    #   <p>A timestamp of the date and time that the slot type was last
    #            updated.</p>
    #   @return [Time]
    # @!attribute slot_type_category
    #   <p>Indicates the type of the slot type.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Custom</code> - A slot type that you created using
    #                  custom values. For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/custom-slot-types.html">Creating custom slot
    #                  types</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Extended</code> - A slot type created by extending the
    #                  <code>AMAZON.AlphaNumeric</code> built-in slot type. For more information, see
    #                     <a href="https://docs.aws.amazon.com/lexv2/latest/dg/built-in-slot-alphanumerice.html">
    #                        <code>AMAZON.AlphaNumeric</code>
    #                     </a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ExternalGrammar</code> - A slot type using a custom
    #                  GRXML grammar to define values. For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/building-grxml.html">Using a custom grammar slot type</a>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class SlotTypeSummary < Struct.new(
      :slot_type_id,
      :slot_type_name,
      :description,
      :parent_slot_type_signature,
      :last_updated_date_time,
      :slot_type_category,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Each slot type can have a set of values. Each
    #             <code>SlotTypeValue</code> represents a value that the slot type can
    #          take.</p>
    # @!attribute sample_value
    #   <p>The value of the slot type entry.</p>
    #   @return [Types::SampleValue]
    # @!attribute synonyms
    #   <p>Additional values related to the slot type entry.</p>
    #   @return [Array<Types::SampleValue>]
    class SlotTypeValue < Struct.new(
      :sample_value,
      :synonyms,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The value to set in a slot.</p>
    # @!attribute interpreted_value
    #   <p>The value that Amazon Lex determines for the slot. The
    #            actual value depends on the setting of the value selection strategy for
    #            the bot. You can choose to use the value entered by the user, or you
    #            can have Amazon Lex choose the first value in the
    #               <code>resolvedValues</code> list.</p>
    #   @return [String]
    class SlotValue < Struct.new(
      :interpreted_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the elicitation setting details eliciting a slot.</p>
    # @!attribute default_value_specification
    #   <p>A list of default values for a slot. Default values are used when
    #            Amazon Lex hasn't determined a value for a slot. You can specify default
    #            values from context variables, session attributes, and defined
    #            values.</p>
    #   @return [Types::SlotDefaultValueSpecification]
    # @!attribute slot_constraint
    #   <p>Specifies whether the slot is required or optional.</p>
    #   @return [String]
    # @!attribute prompt_specification
    #   <p>The prompt that Amazon Lex uses to elicit the slot value from the
    #            user.</p>
    #   @return [Types::PromptSpecification]
    # @!attribute sample_utterances
    #   <p>If you know a specific pattern that users might respond to an Amazon Lex
    #            request for a slot value, you can provide those utterances to improve
    #            accuracy. This is optional. In most cases, Amazon Lex is capable of
    #            understanding user utterances.</p>
    #   @return [Array<Types::SampleUtterance>]
    # @!attribute wait_and_continue_specification
    #   <p>Specifies the prompts that Amazon Lex uses while a bot is waiting for
    #            customer input. </p>
    #   @return [Types::WaitAndContinueSpecification]
    # @!attribute slot_capture_setting
    #   <p>Specifies the settings that Amazon Lex uses when a slot
    #            value is successfully entered by a user.</p>
    #   @return [Types::SlotCaptureSetting]
    # @!attribute slot_resolution_setting
    #   <p>An object containing information about whether assisted slot resolution is turned on for the slot or not.</p>
    #   @return [Types::SlotResolutionSetting]
    class SlotValueElicitationSetting < Struct.new(
      :default_value_specification,
      :slot_constraint,
      :prompt_specification,
      :sample_utterances,
      :wait_and_continue_specification,
      :slot_capture_setting,
      :slot_resolution_setting,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The slot values that Amazon Lex uses when it sets slot
    #          values in a dialog step.</p>
    # @!attribute shape
    #   <p>When the shape value is <code>List</code>, it indicates that the
    #               <code>values</code> field contains a list of slot values. When the
    #            value is <code>Scalar</code>, it indicates that the <code>value</code>
    #            field contains a single value.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The current value of the slot.</p>
    #   @return [Types::SlotValue]
    # @!attribute values
    #   <p>A list of one or more values that the user provided for the slot.
    #            For example, for a slot that elicits pizza toppings, the values
    #            might be "pepperoni" and "pineapple."</p>
    #   @return [Array<Types::SlotValueOverride>]
    class SlotValueOverride < Struct.new(
      :shape,
      :value,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a regular expression used to validate the value of a
    #          slot.</p>
    # @!attribute pattern
    #   <p>A regular expression used to validate the value of a slot.</p>
    #            <p> Use a standard regular expression. Amazon Lex supports the following
    #            characters in the regular expression: </p>
    #            <ul>
    #               <li>
    #                  <p>A-Z, a-z</p>
    #               </li>
    #               <li>
    #                  <p>0-9</p>
    #               </li>
    #               <li>
    #                  <p>Unicode characters ("\⁠u<Unicode>")</p>
    #               </li>
    #            </ul>
    #            <p> Represent Unicode characters with four digits, for example "\⁠u0041"
    #            or "\⁠u005A". </p>
    #            <p> The following regular expression operators are not supported: </p>
    #            <ul>
    #               <li>
    #                  <p>Infinite repeaters: *, +, or {x,} with no upper bound.</p>
    #               </li>
    #               <li>
    #                  <p>Wild card (.)</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class SlotValueRegexFilter < Struct.new(
      :pattern,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains settings used by Amazon Lex to select a slot value.</p>
    # @!attribute resolution_strategy
    #   <p>Determines the slot resolution strategy that Amazon Lex uses to
    #            return slot type values. The field can be set to one of the following
    #            values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ORIGINAL_VALUE</code> - Returns the value entered by the user, if the
    #                  user value is similar to the slot value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOP_RESOLUTION</code> - If there is a resolution list for the slot,
    #                  return the first value in the resolution list as the slot type
    #                  value. If there is no resolution list, null is returned.</p>
    #               </li>
    #            </ul>
    #            <p>If you don't specify the <code>valueSelectionStrategy</code>, the 
    #            default is <code>ORIGINAL_VALUE</code>.</p>
    #   @return [String]
    # @!attribute regex_filter
    #   <p>A regular expression used to validate the value of a slot.</p>
    #   @return [Types::SlotValueRegexFilter]
    # @!attribute advanced_recognition_setting
    #   <p>Provides settings that enable advanced recognition settings for slot
    #            values. You can use this to enable using slot values as a custom
    #            vocabulary for recognizing user utterances.</p>
    #   @return [Types::AdvancedRecognitionSetting]
    class SlotValueSelectionSetting < Struct.new(
      :resolution_strategy,
      :regex_filter,
      :advanced_recognition_setting,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Subslot specifications.</p>
    # @!attribute slot_type_id
    #   <p>The unique identifier assigned to the slot type.</p>
    #   @return [String]
    # @!attribute value_elicitation_setting
    #   <p>Specifies the elicitation setting details for constituent sub slots of a composite slot.</p>
    #   @return [Types::SubSlotValueElicitationSetting]
    class Specifications < Struct.new(
      :slot_type_id,
      :value_elicitation_setting,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot containing the bot
    #            recommendation.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot containing the bot recommendation.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the bot recommendation
    #            to start. The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>
    #            </p>
    #   @return [String]
    # @!attribute transcript_source_setting
    #   <p>The object representing the Amazon S3 bucket containing the transcript,
    #            as well as the associated metadata.</p>
    #   @return [Types::TranscriptSourceSetting]
    # @!attribute encryption_setting
    #   <p>The object representing the passwords that will be used to encrypt
    #            the data related to the bot recommendation results, as well as the KMS
    #            key ARN used to encrypt the associated metadata.</p>
    #   @return [Types::EncryptionSetting]
    class StartBotRecommendationRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :transcript_source_setting,
      :encryption_setting,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot containing the bot
    #            recommendation.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot containing the bot recommendation.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the bot recommendation
    #            to start. The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>
    #            </p>
    #   @return [String]
    # @!attribute bot_recommendation_status
    #   <p>The status of the bot recommendation.</p>
    #            <p>If the status is Failed, then the reasons for the failure are listed
    #            in the failureReasons field. </p>
    #   @return [String]
    # @!attribute bot_recommendation_id
    #   <p>The identifier of the bot recommendation that you have
    #            created.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>A timestamp of the date and time that the bot recommendation was
    #            created.</p>
    #   @return [Time]
    # @!attribute transcript_source_setting
    #   <p>The object representing the Amazon S3 bucket containing the transcript,
    #            as well as the associated metadata.</p>
    #   @return [Types::TranscriptSourceSetting]
    # @!attribute encryption_setting
    #   <p>The object representing the passwords that were used to encrypt the
    #            data related to the bot recommendation results, as well as the KMS key
    #            ARN used to encrypt the associated metadata.</p>
    #   @return [Types::EncryptionSetting]
    class StartBotRecommendationResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_recommendation_status,
      :bot_recommendation_id,
      :creation_date_time,
      :transcript_source_setting,
      :encryption_setting,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute generation_input_prompt
    #   <p>The prompt to generate intents and slot types for the bot locale. Your description should be both <i>detailed</i> and <i>precise</i> to help generate appropriate and sufficient intents for your bot. Include a list of actions to improve the intent creation process.</p>
    #   @return [String]
    # @!attribute bot_id
    #   <p>The unique identifier of the bot for which to generate intents and slot types.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot for which to generate intents and slot types.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The locale of the bot for which to generate intents and slot types.</p>
    #   @return [String]
    class StartBotResourceGenerationRequest < Struct.new(
      :generation_input_prompt,
      :bot_id,
      :bot_version,
      :locale_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute generation_input_prompt
    #   <p>The prompt that was used generate intents and slot types for the bot locale.</p>
    #   @return [String]
    # @!attribute generation_id
    #   <p>The unique identifier of the generation request.</p>
    #   @return [String]
    # @!attribute bot_id
    #   <p>The unique identifier of the bot for which the generation request was made.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot for which the generation request was made.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The locale of the bot for which the generation request was made.</p>
    #   @return [String]
    # @!attribute generation_status
    #   <p>The status of the generation request.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time at which the generation request was made.</p>
    #   @return [Time]
    class StartBotResourceGenerationResponse < Struct.new(
      :generation_input_prompt,
      :generation_id,
      :bot_id,
      :bot_version,
      :locale_id,
      :generation_status,
      :creation_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute import_id
    #   <p>The unique identifier for the import. It is included in the response
    #            from the <a href="https://docs.aws.amazon.com/lexv2/latest/APIReference/API_CreateUploadUrl.html">CreateUploadUrl</a> operation.</p>
    #   @return [String]
    # @!attribute resource_specification
    #   <p>Parameters for creating the bot, bot locale or custom
    #            vocabulary.</p>
    #   @return [Types::ImportResourceSpecification]
    # @!attribute merge_strategy
    #   <p>The strategy to use when there is a name conflict between the
    #            imported resource and an existing resource. When the merge strategy is
    #               <code>FailOnConflict</code> existing resources are not overwritten
    #            and the import fails.</p>
    #   @return [String]
    # @!attribute file_password
    #   <p>The password used to encrypt the zip archive that contains the
    #            resource definition. You should always encrypt the zip archive to
    #            protect it during transit between your site and Amazon Lex.</p>
    #   @return [String]
    class StartImportRequest < Struct.new(
      :import_id,
      :resource_specification,
      :merge_strategy,
      :file_password,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute import_id
    #   <p>A unique identifier for the import.</p>
    #   @return [String]
    # @!attribute resource_specification
    #   <p>The parameters used when importing the resource.</p>
    #   @return [Types::ImportResourceSpecification]
    # @!attribute merge_strategy
    #   <p>The strategy used when there was a name conflict between the
    #            imported resource and an existing resource. When the merge strategy is
    #               <code>FailOnConflict</code> existing resources are not overwritten
    #            and the import fails.</p>
    #   @return [String]
    # @!attribute import_status
    #   <p>The current status of the import. When the status is
    #               <code>Complete</code> the bot, bot alias, or custom vocabulary is
    #            ready to use.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time that the import request was created.</p>
    #   @return [Time]
    class StartImportResponse < Struct.new(
      :import_id,
      :resource_specification,
      :merge_strategy,
      :import_status,
      :creation_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_set_id
    #   <p>The test set Id for the test set execution.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The target bot for the test set execution.</p>
    #   @return [Types::TestExecutionTarget]
    # @!attribute api_mode
    #   <p>Indicates whether we use streaming or non-streaming APIs for the test set 
    #         execution. For streaming, StartConversation Runtime API is used. Whereas, for 
    #         non-streaming, RecognizeUtterance and RecognizeText Amazon Lex 
    #         Runtime API are used.</p>
    #   @return [String]
    # @!attribute test_execution_modality
    #   <p>Indicates whether audio or text is used.</p>
    #   @return [String]
    class StartTestExecutionRequest < Struct.new(
      :test_set_id,
      :target,
      :api_mode,
      :test_execution_modality,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_execution_id
    #   <p>The unique identifier of the test set execution.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The creation date and time for the test set execution.</p>
    #   @return [Time]
    # @!attribute test_set_id
    #   <p>The test set Id for the test set execution.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The target bot for the test set execution.</p>
    #   @return [Types::TestExecutionTarget]
    # @!attribute api_mode
    #   <p>Indicates whether we use streaming or non-streaming APIs for the test set 
    #         execution. For streaming, StartConversation Amazon Lex Runtime API is used. Whereas 
    #         for non-streaming, RecognizeUtterance and RecognizeText Amazon Lex Runtime API are used.</p>
    #   @return [String]
    # @!attribute test_execution_modality
    #   <p>Indicates whether audio or text is used.</p>
    #   @return [String]
    class StartTestExecutionResponse < Struct.new(
      :test_execution_id,
      :creation_date_time,
      :test_set_id,
      :target,
      :api_mode,
      :test_execution_modality,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_set_name
    #   <p>The test set name for the test set generation request.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The test set description for the test set generation request.</p>
    #   @return [String]
    # @!attribute storage_location
    #   <p>The Amazon S3 storage location for the test set generation.</p>
    #   @return [Types::TestSetStorageLocation]
    # @!attribute generation_data_source
    #   <p>The data source for the test set generation.</p>
    #   @return [Types::TestSetGenerationDataSource]
    # @!attribute role_arn
    #   <p>The roleARN used for any operation in the test set to access 
    #         resources in the Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute test_set_tags
    #   <p>A list of tags to add to the test set. You can only add tags when you import/generate a new test set. You can't use the <code>UpdateTestSet</code> operation to update tags. To update tags, use the <code>TagResource</code> operation.</p>
    #   @return [Hash<String, String>]
    class StartTestSetGenerationRequest < Struct.new(
      :test_set_name,
      :description,
      :storage_location,
      :generation_data_source,
      :role_arn,
      :test_set_tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_set_generation_id
    #   <p>The unique identifier of the test set generation to describe.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p> The creation date and time for the test set generation.</p>
    #   @return [Time]
    # @!attribute test_set_generation_status
    #   <p> The status for the test set generation.</p>
    #   @return [String]
    # @!attribute test_set_name
    #   <p>The test set name used for the test set generation.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description used for the test set generation.</p>
    #   @return [String]
    # @!attribute storage_location
    #   <p>The Amazon S3 storage location for the test set generation.</p>
    #   @return [Types::TestSetStorageLocation]
    # @!attribute generation_data_source
    #   <p> The data source for the test set generation.</p>
    #   @return [Types::TestSetGenerationDataSource]
    # @!attribute role_arn
    #   <p>The roleARN used for any operation in the test set to access resources 
    #         in the Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute test_set_tags
    #   <p>A list of tags that was used for the test set that is being generated.</p>
    #   @return [Hash<String, String>]
    class StartTestSetGenerationResponse < Struct.new(
      :test_set_generation_id,
      :creation_date_time,
      :test_set_generation_status,
      :test_set_name,
      :description,
      :storage_location,
      :generation_data_source,
      :role_arn,
      :test_set_tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the messages that Amazon Lex sends to a user to remind them that
    #          the bot is waiting for a response.</p>
    # @!attribute message_groups
    #   <p>One or more message groups, each containing one or more messages,
    #            that define the prompts that Amazon Lex sends to the user.</p>
    #   @return [Array<Types::MessageGroup>]
    # @!attribute frequency_in_seconds
    #   <p>How often a message should be sent to the user. Minimum of 1 second,
    #            maximum of 5 minutes.</p>
    #   @return [Integer]
    # @!attribute timeout_in_seconds
    #   <p>If Amazon Lex waits longer than this length of time for a response, it
    #            will stop sending messages.</p>
    #   @return [Integer]
    # @!attribute allow_interrupt
    #   <p>Indicates that the user can interrupt the response by speaking while
    #            the message is being played.</p>
    #   @return [Boolean]
    class StillWaitingResponseSpecification < Struct.new(
      :message_groups,
      :frequency_in_seconds,
      :timeout_in_seconds,
      :allow_interrupt,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot containing the bot
    #            recommendation to be stopped.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot containing the bot recommendation.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the bot recommendation
    #            to stop. The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>
    #            </p>
    #   @return [String]
    # @!attribute bot_recommendation_id
    #   <p>The unique identifier of the bot recommendation to be
    #            stopped.</p>
    #   @return [String]
    class StopBotRecommendationRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_recommendation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot containing the bot recommendation that 
    #            is being stopped.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot containing the recommendation that is being 
    #            stopped.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the bot response
    #            to stop. The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>
    #            </p>
    #   @return [String]
    # @!attribute bot_recommendation_status
    #   <p>The status of the bot recommendation. If the status is Failed, 
    #            then the reasons for the failure are listed in the failureReasons field.</p>
    #   @return [String]
    # @!attribute bot_recommendation_id
    #   <p>The unique identifier of the bot recommendation that is being
    #            stopped.</p>
    #   @return [String]
    class StopBotRecommendationResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_recommendation_status,
      :bot_recommendation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifications for the constituent sub slots and the  
    #         expression for the composite slot.</p>
    # @!attribute expression
    #   <p>The expression text for defining the constituent sub slots in the composite slot using logical AND and OR operators.</p>
    #   @return [String]
    # @!attribute slot_specifications
    #   <p>Specifications for the constituent sub slots of a composite slot.</p>
    #   @return [Hash<String, Types::Specifications>]
    class SubSlotSetting < Struct.new(
      :expression,
      :slot_specifications,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Subslot type composition.</p>
    # @!attribute name
    #   <p>Name of a constituent sub slot inside a composite slot.</p>
    #   @return [String]
    # @!attribute slot_type_id
    #   <p>The unique identifier assigned to a slot type. 
    #           This refers to either a built-in slot type or the unique slotTypeId of a custom slot type.</p>
    #   @return [String]
    class SubSlotTypeComposition < Struct.new(
      :name,
      :slot_type_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Subslot elicitation settings.</p>
    #          <p>
    #             <code>DefaultValueSpecification</code> is a list of default values for a constituent sub slot in a composite slot. Default values are used when 
    #         Amazon Lex hasn't determined a value for a slot. You can specify default values from context variables, 
    #         session attributes, and defined values. This is similar to <code>DefaultValueSpecification</code> for slots.</p>
    #          <p>
    #             <code>PromptSpecification</code> is the prompt that Amazon Lex uses to elicit the sub slot value from the user. 
    #         This is similar to <code>PromptSpecification</code> for slots.</p>
    # @!attribute default_value_specification
    #   <p>Defines a list of values that Amazon Lex should use as the default value
    #            for a slot.</p>
    #   @return [Types::SlotDefaultValueSpecification]
    # @!attribute prompt_specification
    #   <p>Specifies a list of message groups that Amazon Lex sends to a user to
    #            elicit a response.</p>
    #   @return [Types::PromptSpecification]
    # @!attribute sample_utterances
    #   <p>If you know a specific pattern that users might respond to an Amazon Lex request for a sub slot value, 
    #         you can provide those utterances to improve accuracy. This is optional. In most cases Amazon Lex is capable 
    #         of understanding user utterances. This is similar to <code>SampleUtterances</code> for slots.</p>
    #   @return [Array<Types::SampleUtterance>]
    # @!attribute wait_and_continue_specification
    #   <p>Specifies the prompts that Amazon Lex uses while a bot is waiting for
    #            customer input. </p>
    #   @return [Types::WaitAndContinueSpecification]
    class SubSlotValueElicitationSetting < Struct.new(
      :default_value_specification,
      :prompt_specification,
      :sample_utterances,
      :wait_and_continue_specification,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the bot, bot alias, or bot channel
    #            to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tag keys to add to the resource. If a tag key already
    #            exists, the existing value is replaced with the new value.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the method by which to filter the results of the test execution.</p>
    # @!attribute result_type_filter
    #   <p>Specifies which results to filter. See <a href="https://docs.aws.amazon.com/lexv2/latest/dg/test-results-details-test-set.html">Test result details">Test results details</a> 
    #    for details about different types of results.</p>
    #   @return [String]
    # @!attribute conversation_level_test_results_filter_by
    #   <p>Contains information about the method for filtering Conversation level test results.</p>
    #   @return [Types::ConversationLevelTestResultsFilterBy]
    class TestExecutionResultFilterBy < Struct.new(
      :result_type_filter,
      :conversation_level_test_results_filter_by,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the results of the test execution, grouped by type of results.
    #  See <a href="https://docs.aws.amazon.com/lexv2/latest/dg/test-results-details-test-set.html">Test result details">Test results details</a> 
    #  for details about different types of results.</p>
    # @!attribute overall_test_results
    #   <p>Overall results for the test execution, including the breakdown of conversations and 
    #    single-input utterances.</p>
    #   @return [Types::OverallTestResults]
    # @!attribute conversation_level_test_results
    #   <p>Results related to conversations in the test set, including metrics about success and failure of
    #    conversations and intent and slot failures.</p>
    #   @return [Types::ConversationLevelTestResults]
    # @!attribute intent_classification_test_results
    #   <p>Intent recognition results aggregated by intent name. The aggregated results contain success and failure rates of intent recognition,
    #          speech transcriptions, and end-to-end conversations.</p>
    #   @return [Types::IntentClassificationTestResults]
    # @!attribute intent_level_slot_resolution_test_results
    #   <p>Slot resolution results aggregated by intent and slot name. The aggregated results contain success and failure rates of slot resolution,
    #          speech transcriptions, and end-to-end conversations</p>
    #   @return [Types::IntentLevelSlotResolutionTestResults]
    # @!attribute utterance_level_test_results
    #   <p>Results related to utterances in the test set.</p>
    #   @return [Types::UtteranceLevelTestResults]
    class TestExecutionResultItems < Struct.new(
      :overall_test_results,
      :conversation_level_test_results,
      :intent_classification_test_results,
      :intent_level_slot_resolution_test_results,
      :utterance_level_test_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the method by which to sort the instances of 
    #       test executions you have carried out.</p>
    # @!attribute attribute
    #   <p>Specifies whether to sort the test set executions by the date and time at which the test sets were created.</p>
    #   @return [String]
    # @!attribute order
    #   <p>Specifies whether to sort in ascending or descending order.</p>
    #   @return [String]
    class TestExecutionSortBy < Struct.new(
      :attribute,
      :order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summarizes metadata about the test execution.</p>
    # @!attribute test_execution_id
    #   <p>The unique identifier of the test execution.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time at which the test execution was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time at which the test execution was last updated.</p>
    #   @return [Time]
    # @!attribute test_execution_status
    #   <p>The current status of the test execution.</p>
    #   @return [String]
    # @!attribute test_set_id
    #   <p>The unique identifier of the test set used in the test execution.</p>
    #   @return [String]
    # @!attribute test_set_name
    #   <p>The name of the test set used in the test execution.</p>
    #   @return [String]
    # @!attribute target
    #   <p>Contains information about the bot used for the test execution..</p>
    #   @return [Types::TestExecutionTarget]
    # @!attribute api_mode
    #   <p>Specifies whether the API mode for the test execution is streaming 
    #         or non-streaming.</p>
    #   @return [String]
    # @!attribute test_execution_modality
    #   <p>Specifies whether the data used for the test execution is written
    #         or spoken.</p>
    #   @return [String]
    class TestExecutionSummary < Struct.new(
      :test_execution_id,
      :creation_date_time,
      :last_updated_date_time,
      :test_execution_status,
      :test_set_id,
      :test_set_name,
      :target,
      :api_mode,
      :test_execution_modality,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the bot used for the test execution.</p>
    # @!attribute bot_alias_target
    #   <p>Contains information about the bot alias used for the test execution.</p>
    #   @return [Types::BotAliasTestExecutionTarget]
    class TestExecutionTarget < Struct.new(
      :bot_alias_target,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the errors in the test set discrepancy report</p>
    # @!attribute intent_discrepancies
    #   <p>Contains information about discrepancies found for intents between the test set and the bot.</p>
    #   @return [Array<Types::TestSetIntentDiscrepancyItem>]
    # @!attribute slot_discrepancies
    #   <p>Contains information about discrepancies found for slots between the test set and the bot.</p>
    #   @return [Array<Types::TestSetSlotDiscrepancyItem>]
    class TestSetDiscrepancyErrors < Struct.new(
      :intent_discrepancies,
      :slot_discrepancies,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the bot alias used for the 
    #  test set discrepancy report.</p>
    # @!attribute bot_id
    #   <p>The unique identifier for the bot alias.</p>
    #   @return [String]
    # @!attribute bot_alias_id
    #   <p>The unique identifier for the bot associated with the bot alias.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The unique identifier of the locale associated with the bot alias.</p>
    #   @return [String]
    class TestSetDiscrepancyReportBotAliasTarget < Struct.new(
      :bot_id,
      :bot_alias_id,
      :locale_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the resource used for the 
    #  test set discrepancy report.</p>
    # @!attribute bot_alias_target
    #   <p>Contains information about the bot alias used as the resource for the
    #    test set discrepancy report.</p>
    #   @return [Types::TestSetDiscrepancyReportBotAliasTarget]
    class TestSetDiscrepancyReportResourceTarget < Struct.new(
      :bot_alias_target,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the test set that is exported.</p>
    # @!attribute test_set_id
    #   <p>The unique identifier of the test set.</p>
    #   @return [String]
    class TestSetExportSpecification < Struct.new(
      :test_set_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the data source from which the test set is generated.</p>
    # @!attribute conversation_logs_data_source
    #   <p>Contains information about the bot from which the conversation logs are sourced.</p>
    #   @return [Types::ConversationLogsDataSource]
    class TestSetGenerationDataSource < Struct.new(
      :conversation_logs_data_source,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the Amazon S3 location from which the test set is imported.</p>
    # @!attribute s3_bucket_name
    #   <p>The name of the Amazon S3 bucket.</p>
    #   @return [String]
    # @!attribute s3_path
    #   <p>The path inside the Amazon S3 bucket pointing to the test-set CSV file.</p>
    #   @return [String]
    class TestSetImportInputLocation < Struct.new(
      :s3_bucket_name,
      :s3_path,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the test set that is imported.</p>
    # @!attribute test_set_name
    #   <p>The name of the test set.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the test set.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that has
    #    permission to access the test set.</p>
    #   @return [String]
    # @!attribute storage_location
    #   <p>Contains information about the location that Amazon Lex uses to store the test-set.</p>
    #   @return [Types::TestSetStorageLocation]
    # @!attribute import_input_location
    #   <p>Contains information about the input location from where test-set should be imported.</p>
    #   @return [Types::TestSetImportInputLocation]
    # @!attribute modality
    #   <p>Specifies whether the test-set being imported contains written or spoken data.</p>
    #   @return [String]
    # @!attribute test_set_tags
    #   <p>A list of tags to add to the test set. You can only add tags when you import/generate a new test set. You can't use the <code>UpdateTestSet</code> operation to update tags. To update tags, use the <code>TagResource</code> operation.</p>
    #   @return [Hash<String, String>]
    class TestSetImportResourceSpecification < Struct.new(
      :test_set_name,
      :description,
      :role_arn,
      :storage_location,
      :import_input_location,
      :modality,
      :test_set_tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about discrepancy in an intent information between the test set and the 
    #        bot.</p>
    # @!attribute intent_name
    #   <p>The name of the intent in the discrepancy report.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message for a discrepancy for an intent between the test set and the bot.</p>
    #   @return [String]
    class TestSetIntentDiscrepancyItem < Struct.new(
      :intent_name,
      :error_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about discrepancy in a slot information between the test set and the bot.</p>
    # @!attribute intent_name
    #   <p>The name of the intent associated with the slot in the discrepancy report.</p>
    #   @return [String]
    # @!attribute slot_name
    #   <p>The name of the slot in the discrepancy report.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message for a discrepancy for an intent between the test set and the bot.</p>
    #   @return [String]
    class TestSetSlotDiscrepancyItem < Struct.new(
      :intent_name,
      :slot_name,
      :error_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the methods by which to sort the test set.</p>
    # @!attribute attribute
    #   <p>Specifies whether to sort the test sets by name or by the time they were last updated.</p>
    #   @return [String]
    # @!attribute order
    #   <p>Specifies whether to sort in ascending or descending order.</p>
    #   @return [String]
    class TestSetSortBy < Struct.new(
      :attribute,
      :order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the location in which the test set is stored.</p>
    # @!attribute s3_bucket_name
    #   <p>The name of the Amazon S3 bucket in which the test set is stored.</p>
    #   @return [String]
    # @!attribute s3_path
    #   <p>The path inside the Amazon S3 bucket where the test set is stored.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of an Amazon Web Services Key Management Service
    #    (KMS) key for encrypting the test set.</p>
    #   @return [String]
    class TestSetStorageLocation < Struct.new(
      :s3_bucket_name,
      :s3_path,
      :kms_key_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about the test set.</p>
    # @!attribute test_set_id
    #   <p>The unique identifier of the test set.</p>
    #   @return [String]
    # @!attribute test_set_name
    #   <p>The name of the test set.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the test set.</p>
    #   @return [String]
    # @!attribute modality
    #   <p>Specifies whether the test set contains written or spoken data.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the test set.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role
    #         that has permission to access the test set.</p>
    #   @return [String]
    # @!attribute num_turns
    #   <p>The number of turns in the test set.</p>
    #   @return [Integer]
    # @!attribute storage_location
    #   <p>Contains information about the location at which the test set is stored.</p>
    #   @return [Types::TestSetStorageLocation]
    # @!attribute creation_date_time
    #   <p>The date and time at which the test set was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time at which the test set was last updated.</p>
    #   @return [Time]
    class TestSetSummary < Struct.new(
      :test_set_id,
      :test_set_name,
      :description,
      :modality,
      :status,
      :role_arn,
      :num_turns,
      :storage_location,
      :creation_date_time,
      :last_updated_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a turn in a test set.</p>
    # @!attribute record_number
    #   <p>The record number associated with the turn.</p>
    #   @return [Integer]
    # @!attribute conversation_id
    #   <p>The unique identifier for the conversation associated with the turn.</p>
    #   @return [String]
    # @!attribute turn_number
    #   <p>The number of turns that has elapsed up to that turn.</p>
    #   @return [Integer]
    # @!attribute turn_specification
    #   <p>Contains information about the agent or user turn depending upon type of turn.</p>
    #   @return [Types::TurnSpecification]
    class TestSetTurnRecord < Struct.new(
      :record_number,
      :conversation_id,
      :turn_number,
      :turn_specification,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the results of the analysis of a turn in the test set.</p>
    # @!attribute agent
    #   <p>Contains information about the agent messages in the turn.</p>
    #   @return [Types::AgentTurnResult]
    # @!attribute user
    #   <p>Contains information about the user messages in the turn.</p>
    #   @return [Types::UserTurnResult]
    class TestSetTurnResult < Struct.new(
      :agent,
      :user,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the text input specifications.</p>
    # @!attribute start_timeout_ms
    #   <p>Time for which a bot waits before re-prompting a customer for text input.</p>
    #   @return [Integer]
    class TextInputSpecification < Struct.new(
      :start_timeout_ms,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the Amazon CloudWatch Logs destination log group for
    #          conversation text logs.</p>
    # @!attribute cloud_watch
    #   <p>Defines the Amazon CloudWatch Logs log group where text and metadata logs are
    #            delivered.</p>
    #   @return [Types::CloudWatchLogGroupLogDestination]
    class TextLogDestination < Struct.new(
      :cloud_watch,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines settings to enable text conversation logs.</p>
    # @!attribute enabled
    #   <p>Determines whether conversation logs should be stored for an
    #            alias.</p>
    #   @return [Boolean]
    # @!attribute destination
    #   <p>Defines the Amazon CloudWatch Logs destination log group for
    #            conversation text logs.</p>
    #   @return [Types::TextLogDestination]
    # @!attribute selective_logging_enabled
    #   <p>The option to enable selective conversation log capture for text.</p>
    #   @return [Boolean]
    class TextLogSetting < Struct.new(
      :enabled,
      :destination,
      :selective_logging_enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>Your request rate is too high. Reduce the frequency of
    #          requests.</p>
    # @!attribute retry_after_seconds
    #   <p>The number of seconds after which the user can invoke the API again.</p>
    #   @return [Integer]
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :retry_after_seconds,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:retry_after_seconds] = 0 unless options.key?(:retry_after_seconds)
        super
      end
    end

    # <p>The object representing the filter that Amazon Lex will use to select the
    #             appropriate transcript.</p>
    # @!attribute lex_transcript_filter
    #   <p>The object representing the filter that Amazon Lex will use to select the
    #               appropriate transcript when the transcript format is the Amazon Lex
    #               format.</p>
    #   @return [Types::LexTranscriptFilter]
    class TranscriptFilter < Struct.new(
      :lex_transcript_filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates the setting of the location where the transcript is
    #             stored.</p>
    # @!attribute s3_bucket_transcript_source
    #   <p>Indicates the setting of the Amazon S3 bucket where the transcript is
    #               stored.</p>
    #   @return [Types::S3BucketTranscriptSource]
    class TranscriptSourceSetting < Struct.new(
      :s3_bucket_transcript_source,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the messages in the turn.</p>
    # @!attribute agent_turn
    #   <p>Contains information about the agent messages in the turn.</p>
    #   @return [Types::AgentTurnSpecification]
    # @!attribute user_turn
    #   <p>Contains information about the user messages in the turn.</p>
    #   @return [Types::UserTurnSpecification]
    class TurnSpecification < Struct.new(
      :agent_turn,
      :user_turn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove the tags
    #            from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of tag keys to remove from the resource. If a tag key does
    #            not exist on the resource, it is ignored.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_alias_id
    #   <p>The unique identifier of the bot alias.</p>
    #   @return [String]
    # @!attribute bot_alias_name
    #   <p>The new name to assign to the bot alias.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The new description to assign to the bot alias.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The new bot version to assign to the bot alias.</p>
    #   @return [String]
    # @!attribute bot_alias_locale_settings
    #   <p>The new Lambda functions to use in each locale for the bot
    #            alias.</p>
    #   @return [Hash<String, Types::BotAliasLocaleSettings>]
    # @!attribute conversation_log_settings
    #   <p>The new settings for storing conversation logs in Amazon CloudWatch Logs and
    #            Amazon S3 buckets.</p>
    #   @return [Types::ConversationLogSettings]
    # @!attribute sentiment_analysis_settings
    #   <p>Determines whether Amazon Lex will use Amazon Comprehend to detect the sentiment of
    #            user utterances.</p>
    #   @return [Types::SentimentAnalysisSettings]
    # @!attribute bot_id
    #   <p>The identifier of the bot with the updated alias.</p>
    #   @return [String]
    class UpdateBotAliasRequest < Struct.new(
      :bot_alias_id,
      :bot_alias_name,
      :description,
      :bot_version,
      :bot_alias_locale_settings,
      :conversation_log_settings,
      :sentiment_analysis_settings,
      :bot_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_alias_id
    #   <p>The identifier of the updated bot alias.</p>
    #   @return [String]
    # @!attribute bot_alias_name
    #   <p>The updated name of the bot alias.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description of the bot alias.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The updated version of the bot that the alias points to.</p>
    #   @return [String]
    # @!attribute bot_alias_locale_settings
    #   <p>The updated Lambda functions to use in each locale for the bot
    #            alias.</p>
    #   @return [Hash<String, Types::BotAliasLocaleSettings>]
    # @!attribute conversation_log_settings
    #   <p>The updated settings for storing conversation logs in Amazon CloudWatch Logs and
    #            Amazon S3 buckets.</p>
    #   @return [Types::ConversationLogSettings]
    # @!attribute sentiment_analysis_settings
    #   <p>Determines whether Amazon Lex will use Amazon Comprehend to detect the sentiment of
    #            user utterances.</p>
    #   @return [Types::SentimentAnalysisSettings]
    # @!attribute bot_alias_status
    #   <p>The current status of the bot alias. When the status is
    #               <code>Available</code> the alias is ready for use.</p>
    #   @return [String]
    # @!attribute bot_id
    #   <p>The identifier of the bot with the updated alias.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>A timestamp of the date and time that the bot was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>A timestamp of the date and time that the bot was last
    #            updated.</p>
    #   @return [Time]
    class UpdateBotAliasResponse < Struct.new(
      :bot_alias_id,
      :bot_alias_name,
      :description,
      :bot_version,
      :bot_alias_locale_settings,
      :conversation_log_settings,
      :sentiment_analysis_settings,
      :bot_alias_status,
      :bot_id,
      :creation_date_time,
      :last_updated_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot that contains the locale.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot that contains the locale to be updated. The
    #            version can only be the <code>DRAFT</code> version.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale to update. The string must
    #            match one of the supported locales. For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The new description of the locale.</p>
    #   @return [String]
    # @!attribute nlu_intent_confidence_threshold
    #   <p>The new confidence threshold where Amazon Lex inserts the
    #               <code>AMAZON.FallbackIntent</code> and
    #               <code>AMAZON.KendraSearchIntent</code> intents in the list of
    #            possible intents for an utterance.</p>
    #   @return [Float]
    # @!attribute voice_settings
    #   <p>The new Amazon Polly voice Amazon Lex should use for voice interaction with the
    #            user.</p>
    #   @return [Types::VoiceSettings]
    # @!attribute generative_ai_settings
    #   <p>Contains settings for generative AI features powered by Amazon Bedrock for your bot locale. Use this object to turn generative AI features on and off. Pricing 
    #         may differ if you turn a feature on. For more information, see LINK.</p>
    #   @return [Types::GenerativeAISettings]
    class UpdateBotLocaleRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :description,
      :nlu_intent_confidence_threshold,
      :voice_settings,
      :generative_ai_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot that contains the updated locale.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot that contains the updated locale.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The language and locale of the updated bot locale.</p>
    #   @return [String]
    # @!attribute locale_name
    #   <p>The updated locale name for the locale.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description of the locale.</p>
    #   @return [String]
    # @!attribute nlu_intent_confidence_threshold
    #   <p>The updated confidence threshold for inserting the
    #               <code>AMAZON.FallbackIntent</code> and
    #               <code>AMAZON.KendraSearchIntent</code> intents in the list of
    #            possible intents for an utterance.</p>
    #   @return [Float]
    # @!attribute voice_settings
    #   <p>The updated Amazon Polly voice to use for voice interaction with the
    #            user.</p>
    #   @return [Types::VoiceSettings]
    # @!attribute bot_locale_status
    #   <p>The current status of the locale. When the bot status is
    #               <code>Built</code> the locale is ready for use.</p>
    #   @return [String]
    # @!attribute failure_reasons
    #   <p>If the <code>botLocaleStatus</code> is <code>Failed</code>, the
    #               <code>failureReasons</code> field lists the errors that occurred
    #            while building the bot.</p>
    #   @return [Array<String>]
    # @!attribute creation_date_time
    #   <p>A timestamp of the date and time that the locale was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>A timestamp of the date and time that the locale was last
    #            updated.</p>
    #   @return [Time]
    # @!attribute recommended_actions
    #   <p>Recommended actions to take to resolve an error in the
    #               <code>failureReasons</code> field.</p>
    #   @return [Array<String>]
    # @!attribute generative_ai_settings
    #   <p>Contains settings for generative AI features powered by Amazon Bedrock for your bot locale.</p>
    #   @return [Types::GenerativeAISettings]
    class UpdateBotLocaleResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :locale_name,
      :description,
      :nlu_intent_confidence_threshold,
      :voice_settings,
      :bot_locale_status,
      :failure_reasons,
      :creation_date_time,
      :last_updated_date_time,
      :recommended_actions,
      :generative_ai_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot containing the bot recommendation
    #            to be updated.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot containing the bot recommendation to be
    #            updated.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the bot recommendation
    #            to update. The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>
    #            </p>
    #   @return [String]
    # @!attribute bot_recommendation_id
    #   <p>The unique identifier of the bot recommendation to be
    #            updated.</p>
    #   @return [String]
    # @!attribute encryption_setting
    #   <p>The object representing the passwords that will be used to encrypt
    #            the data related to the bot recommendation results, as well as the KMS
    #            key ARN used to encrypt the associated metadata.</p>
    #   @return [Types::EncryptionSetting]
    class UpdateBotRecommendationRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_recommendation_id,
      :encryption_setting,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot containing the bot recommendation
    #            that has been updated.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot containing the bot recommendation that has
    #            been updated.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the bot recommendation
    #            to update. The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>
    #            </p>
    #   @return [String]
    # @!attribute bot_recommendation_status
    #   <p>The status of the bot recommendation.</p>
    #            <p>If the status is Failed, then the reasons for the failure are listed
    #            in the failureReasons field. </p>
    #   @return [String]
    # @!attribute bot_recommendation_id
    #   <p>The unique identifier of the bot recommendation to be
    #            updated.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>A timestamp of the date and time that the bot recommendation was
    #            created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>A timestamp of the date and time that the bot recommendation was
    #            last updated.</p>
    #   @return [Time]
    # @!attribute transcript_source_setting
    #   <p>The object representing the Amazon S3 bucket containing the transcript,
    #            as well as the associated metadata.</p>
    #   @return [Types::TranscriptSourceSetting]
    # @!attribute encryption_setting
    #   <p>The object representing the passwords that were used to encrypt the
    #            data related to the bot recommendation results, as well as the KMS key
    #            ARN used to encrypt the associated metadata.</p>
    #   @return [Types::EncryptionSetting]
    class UpdateBotRecommendationResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_recommendation_status,
      :bot_recommendation_id,
      :creation_date_time,
      :last_updated_date_time,
      :transcript_source_setting,
      :encryption_setting,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot to update. This identifier is
    #            returned by the <a href="https://docs.aws.amazon.com/lexv2/latest/APIReference/API_CreateBot.html">CreateBot</a> operation.</p>
    #   @return [String]
    # @!attribute bot_name
    #   <p>The new name of the bot. The name must be unique in the account that
    #            creates the bot.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the bot.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that has permissions
    #            to access the bot.</p>
    #   @return [String]
    # @!attribute data_privacy
    #   <p>Provides information on additional privacy protections Amazon Lex should
    #            use with the bot's data.</p>
    #   @return [Types::DataPrivacy]
    # @!attribute idle_session_ttl_in_seconds
    #   <p>The time, in seconds, that Amazon Lex should keep information about a
    #            user's conversation with the bot.</p>
    #            <p>A user interaction remains active for the amount of time specified.
    #            If no conversation occurs during this time, the session expires and
    #            Amazon Lex deletes any data provided before the timeout.</p>
    #            <p>You can specify between 60 (1 minute) and 86,400 (24 hours)
    #            seconds.</p>
    #   @return [Integer]
    # @!attribute bot_type
    #   <p>The type of the bot to be updated.</p>
    #   @return [String]
    # @!attribute bot_members
    #   <p>The list of bot members in the network associated 
    #            with the update action.</p>
    #   @return [Array<Types::BotMember>]
    # @!attribute error_log_settings
    #   <p>Allows you to modify how Amazon Lex logs errors during bot interactions, including destinations for error logs and the types of errors to be captured.</p>
    #   @return [Types::ErrorLogSettings]
    class UpdateBotRequest < Struct.new(
      :bot_id,
      :bot_name,
      :description,
      :role_arn,
      :data_privacy,
      :idle_session_ttl_in_seconds,
      :bot_type,
      :bot_members,
      :error_log_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot that was updated.</p>
    #   @return [String]
    # @!attribute bot_name
    #   <p>The name of the bot after the update.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the bot after the update.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used by the bot after
    #            the update.</p>
    #   @return [String]
    # @!attribute data_privacy
    #   <p>The data privacy settings for the bot after the update.</p>
    #   @return [Types::DataPrivacy]
    # @!attribute idle_session_ttl_in_seconds
    #   <p>The session timeout, in seconds, for the bot after the
    #            update.</p>
    #   @return [Integer]
    # @!attribute bot_status
    #   <p>Shows the current status of the bot. The bot is first in the
    #               <code>Creating</code> status. Once the bot is read for use, it
    #            changes to the <code>Available</code> status. After the bot is created,
    #            you can use the <code>DRAFT</code> version of the bot.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>A timestamp of the date and time that the bot was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>A timestamp of the date and time that the bot was last
    #            updated.</p>
    #   @return [Time]
    # @!attribute bot_type
    #   <p>The type of the bot that was updated.</p>
    #   @return [String]
    # @!attribute bot_members
    #   <p>The list of bot members in the network that was updated.</p>
    #   @return [Array<Types::BotMember>]
    # @!attribute error_log_settings
    #   <p>Settings for managing error logs within the response of an update bot operation.</p>
    #   @return [Types::ErrorLogSettings]
    class UpdateBotResponse < Struct.new(
      :bot_id,
      :bot_name,
      :description,
      :role_arn,
      :data_privacy,
      :idle_session_ttl_in_seconds,
      :bot_status,
      :creation_date_time,
      :last_updated_date_time,
      :bot_type,
      :bot_members,
      :error_log_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_id
    #   <p>The unique identifier Amazon Lex assigned to the export.</p>
    #   @return [String]
    # @!attribute file_password
    #   <p>The new password to use to encrypt the export zip archive.</p>
    #   @return [String]
    class UpdateExportRequest < Struct.new(
      :export_id,
      :file_password,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_id
    #   <p>The unique identifier Amazon Lex assigned to the export.</p>
    #   @return [String]
    # @!attribute resource_specification
    #   <p>A description of the type of resource that was exported, either a
    #            bot or a bot locale.</p>
    #   @return [Types::ExportResourceSpecification]
    # @!attribute file_format
    #   <p>The file format used for the files that define the resource. The
    #               <code>TSV</code> format is required to export a custom vocabulary
    #            only; otherwise use <code>LexJson</code> format.</p>
    #   @return [String]
    # @!attribute export_status
    #   <p>The status of the export. When the status is <code>Completed</code>
    #            the export archive is available for download.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time that the export was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time that the export was last updated.</p>
    #   @return [Time]
    class UpdateExportResponse < Struct.new(
      :export_id,
      :resource_specification,
      :file_format,
      :export_status,
      :creation_date_time,
      :last_updated_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute intent_id
    #   <p>The unique identifier of the intent to update.</p>
    #   @return [String]
    # @!attribute intent_name
    #   <p>The new name for the intent.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The new description of the intent.</p>
    #   @return [String]
    # @!attribute parent_intent_signature
    #   <p>The signature of the new built-in intent to use as the parent of
    #            this intent.</p>
    #   @return [String]
    # @!attribute sample_utterances
    #   <p>New utterances used to invoke the intent.</p>
    #   @return [Array<Types::SampleUtterance>]
    # @!attribute dialog_code_hook
    #   <p>The new Lambda function to use between each turn of the conversation
    #            with the bot.</p>
    #   @return [Types::DialogCodeHookSettings]
    # @!attribute fulfillment_code_hook
    #   <p>The new Lambda function to call when all of the intents required
    #            slots are provided and the intent is ready for fulfillment.</p>
    #   @return [Types::FulfillmentCodeHookSettings]
    # @!attribute slot_priorities
    #   <p>A new list of slots and their priorities that are contained by the
    #            intent.</p>
    #   @return [Array<Types::SlotPriority>]
    # @!attribute intent_confirmation_setting
    #   <p>New prompts that Amazon Lex sends to the user to confirm the completion
    #            of an intent.</p>
    #   @return [Types::IntentConfirmationSetting]
    # @!attribute intent_closing_setting
    #   <p>The new response that Amazon Lex sends the user when the intent is
    #            closed.</p>
    #   @return [Types::IntentClosingSetting]
    # @!attribute input_contexts
    #   <p>A new list of contexts that must be active in order for Amazon Lex to
    #            consider the intent.</p>
    #   @return [Array<Types::InputContext>]
    # @!attribute output_contexts
    #   <p>A new list of contexts that Amazon Lex activates when the intent is
    #            fulfilled.</p>
    #   @return [Array<Types::OutputContext>]
    # @!attribute kendra_configuration
    #   <p>New configuration settings for connecting to an Amazon Kendra index.</p>
    #   @return [Types::KendraConfiguration]
    # @!attribute bot_id
    #   <p>The identifier of the bot that contains the intent.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot that contains the intent. Must be
    #               <code>DRAFT</code>.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale where this intent is used.
    #            The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #   @return [String]
    # @!attribute initial_response_setting
    #   <p>Configuration settings for a response sent to the user before Amazon Lex starts eliciting slots.</p>
    #   @return [Types::InitialResponseSetting]
    # @!attribute qn_a_intent_configuration
    #   <p>Specifies the configuration of the built-in <code>Amazon.QnAIntent</code>. The <code>AMAZON.QnAIntent</code> intent is called when
    #            Amazon Lex can't determine another intent to invoke. If you specify this field, you can't specify the <code>kendraConfiguration</code> field.</p>
    #   @return [Types::QnAIntentConfiguration]
    # @!attribute q_in_connect_intent_configuration
    #   <p>Qinconnect intent configuration details for the update intent request.</p>
    #   @return [Types::QInConnectIntentConfiguration]
    class UpdateIntentRequest < Struct.new(
      :intent_id,
      :intent_name,
      :description,
      :parent_intent_signature,
      :sample_utterances,
      :dialog_code_hook,
      :fulfillment_code_hook,
      :slot_priorities,
      :intent_confirmation_setting,
      :intent_closing_setting,
      :input_contexts,
      :output_contexts,
      :kendra_configuration,
      :bot_id,
      :bot_version,
      :locale_id,
      :initial_response_setting,
      :qn_a_intent_configuration,
      :q_in_connect_intent_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute intent_id
    #   <p>The identifier of the intent that was updated.</p>
    #   @return [String]
    # @!attribute intent_name
    #   <p>The updated name of the intent.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description of the intent.</p>
    #   @return [String]
    # @!attribute parent_intent_signature
    #   <p>The updated built-in intent that is the parent of this
    #            intent.</p>
    #   @return [String]
    # @!attribute sample_utterances
    #   <p>The updated list of sample utterances for the intent.</p>
    #   @return [Array<Types::SampleUtterance>]
    # @!attribute dialog_code_hook
    #   <p>The updated Lambda function called during each turn of the
    #            conversation with the user.</p>
    #   @return [Types::DialogCodeHookSettings]
    # @!attribute fulfillment_code_hook
    #   <p>The updated Lambda function called when the intent is ready for
    #            fulfillment.</p>
    #   @return [Types::FulfillmentCodeHookSettings]
    # @!attribute slot_priorities
    #   <p>The updated list of slots and their priorities that are elicited
    #            from the user for the intent.</p>
    #   @return [Array<Types::SlotPriority>]
    # @!attribute intent_confirmation_setting
    #   <p>The updated prompts that Amazon Lex sends to the user to confirm the
    #            completion of an intent.</p>
    #   @return [Types::IntentConfirmationSetting]
    # @!attribute intent_closing_setting
    #   <p>The updated response that Amazon Lex sends the user when the intent is
    #            closed.</p>
    #   @return [Types::IntentClosingSetting]
    # @!attribute input_contexts
    #   <p>The updated list of contexts that must be active for the intent to
    #            be considered by Amazon Lex.</p>
    #   @return [Array<Types::InputContext>]
    # @!attribute output_contexts
    #   <p>The updated list of contexts that Amazon Lex activates when the intent is
    #            fulfilled.</p>
    #   @return [Array<Types::OutputContext>]
    # @!attribute kendra_configuration
    #   <p>The updated configuration for connecting to an Amazon Kendra index with the
    #               <code>AMAZON.KendraSearchIntent</code> intent.</p>
    #   @return [Types::KendraConfiguration]
    # @!attribute bot_id
    #   <p>The identifier of the bot that contains the intent.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot that contains the intent. Will always be
    #               <code>DRAFT</code>.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The updated language and locale of the intent.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>A timestamp of when the intent was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>A timestamp of the last time that the intent was modified.</p>
    #   @return [Time]
    # @!attribute initial_response_setting
    #   <p>Configuration settings for a response sent to the user before Amazon Lex starts eliciting slots.</p>
    #   @return [Types::InitialResponseSetting]
    # @!attribute qn_a_intent_configuration
    #   <p>Details about the configuration of the built-in <code>Amazon.QnAIntent</code>.</p>
    #   @return [Types::QnAIntentConfiguration]
    # @!attribute q_in_connect_intent_configuration
    #   <p>Qinconnect intent configuration details for the update intent response.</p>
    #   @return [Types::QInConnectIntentConfiguration]
    class UpdateIntentResponse < Struct.new(
      :intent_id,
      :intent_name,
      :description,
      :parent_intent_signature,
      :sample_utterances,
      :dialog_code_hook,
      :fulfillment_code_hook,
      :slot_priorities,
      :intent_confirmation_setting,
      :intent_closing_setting,
      :input_contexts,
      :output_contexts,
      :kendra_configuration,
      :bot_id,
      :bot_version,
      :locale_id,
      :creation_date_time,
      :last_updated_date_time,
      :initial_response_setting,
      :qn_a_intent_configuration,
      :q_in_connect_intent_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the bot or bot alias that the
    #            resource policy is attached to.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>A resource policy to add to the resource. The policy is a JSON
    #            structure that contains one or more statements that define the policy.
    #            The policy must follow the IAM syntax. For more information about the
    #            contents of a JSON policy document, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html"> IAM JSON policy
    #               reference </a>. </p>
    #            <p>If the policy isn't valid, Amazon Lex returns a validation
    #            exception.</p>
    #   @return [String]
    # @!attribute expected_revision_id
    #   <p>The identifier of the revision of the policy to update. If this
    #            revision ID doesn't match the current revision ID, Amazon Lex throws an
    #            exception.</p>
    #            <p>If you don't specify a revision, Amazon Lex overwrites the contents of
    #            the policy with the new values.</p>
    #   @return [String]
    class UpdateResourcePolicyRequest < Struct.new(
      :resource_arn,
      :policy,
      :expected_revision_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the bot or bot alias that the
    #            resource policy is attached to.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The current revision of the resource policy. Use the revision ID to
    #            make sure that you are updating the most current version of a resource
    #            policy when you add a policy statement to a resource, delete a
    #            resource, or update a resource.</p>
    #   @return [String]
    class UpdateResourcePolicyResponse < Struct.new(
      :resource_arn,
      :revision_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute slot_id
    #   <p>The unique identifier for the slot to update.</p>
    #   @return [String]
    # @!attribute slot_name
    #   <p>The new name for the slot.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The new description for the slot.</p>
    #   @return [String]
    # @!attribute slot_type_id
    #   <p>The unique identifier of the new slot type to associate with this
    #            slot. </p>
    #   @return [String]
    # @!attribute value_elicitation_setting
    #   <p>A new set of prompts that Amazon Lex sends to the user to elicit a
    #            response the provides a value for the slot.</p>
    #   @return [Types::SlotValueElicitationSetting]
    # @!attribute obfuscation_setting
    #   <p>New settings that determine how slot values are formatted in Amazon CloudWatch
    #            logs. </p>
    #   @return [Types::ObfuscationSetting]
    # @!attribute bot_id
    #   <p>The unique identifier of the bot that contains the slot.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot that contains the slot. Must always be
    #               <code>DRAFT</code>.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale that contains the slot.
    #            The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #   @return [String]
    # @!attribute intent_id
    #   <p>The identifier of the intent that contains the slot.</p>
    #   @return [String]
    # @!attribute multiple_values_setting
    #   <p>Determines whether the slot accepts multiple values in one response.
    #            Multiple value slots are only available in the en-US locale. If you set
    #            this value to <code>true</code> in any other locale, Amazon Lex throws a
    #               <code>ValidationException</code>.</p>
    #            <p>If the <code>multipleValuesSetting</code> is not set, the default
    #            value is <code>false</code>.</p>
    #   @return [Types::MultipleValuesSetting]
    # @!attribute sub_slot_setting
    #   <p>Specifications for the constituent sub slots and the  
    #           expression for the composite slot.</p>
    #   @return [Types::SubSlotSetting]
    class UpdateSlotRequest < Struct.new(
      :slot_id,
      :slot_name,
      :description,
      :slot_type_id,
      :value_elicitation_setting,
      :obfuscation_setting,
      :bot_id,
      :bot_version,
      :locale_id,
      :intent_id,
      :multiple_values_setting,
      :sub_slot_setting,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute slot_id
    #   <p>The unique identifier of the slot that was updated.</p>
    #   @return [String]
    # @!attribute slot_name
    #   <p>The updated name of the slot.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description of the bot.</p>
    #   @return [String]
    # @!attribute slot_type_id
    #   <p>The updated identifier of the slot type that provides values for the
    #            slot.</p>
    #   @return [String]
    # @!attribute value_elicitation_setting
    #   <p>The updated prompts that Amazon Lex sends to the user to elicit a
    #            response that provides a value for the slot.</p>
    #   @return [Types::SlotValueElicitationSetting]
    # @!attribute obfuscation_setting
    #   <p>The updated setting that determines whether the slot value is
    #            obfuscated in the Amazon CloudWatch logs.</p>
    #   @return [Types::ObfuscationSetting]
    # @!attribute bot_id
    #   <p>The identifier of the bot that contains the slot.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot that contains the slot. Will
    #            always be <code>DRAFT</code>.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The locale that contains the slot.</p>
    #   @return [String]
    # @!attribute intent_id
    #   <p>The intent that contains the slot.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The timestamp of the date and time that the slot was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The timestamp of the date and time that the slot was last
    #            updated.</p>
    #   @return [Time]
    # @!attribute multiple_values_setting
    #   <p>Indicates whether the slot accepts multiple values in one
    #            response.</p>
    #   @return [Types::MultipleValuesSetting]
    # @!attribute sub_slot_setting
    #   <p>Specifications for the constituent sub slots and the  
    #           expression for the composite slot.</p>
    #   @return [Types::SubSlotSetting]
    class UpdateSlotResponse < Struct.new(
      :slot_id,
      :slot_name,
      :description,
      :slot_type_id,
      :value_elicitation_setting,
      :obfuscation_setting,
      :bot_id,
      :bot_version,
      :locale_id,
      :intent_id,
      :creation_date_time,
      :last_updated_date_time,
      :multiple_values_setting,
      :sub_slot_setting,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute slot_type_id
    #   <p>The unique identifier of the slot type to update.</p>
    #   @return [String]
    # @!attribute slot_type_name
    #   <p>The new name of the slot type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The new description of the slot type.</p>
    #   @return [String]
    # @!attribute slot_type_values
    #   <p>A new list of values and their optional synonyms that define the
    #            values that the slot type can take.</p>
    #   @return [Array<Types::SlotTypeValue>]
    # @!attribute value_selection_setting
    #   <p>The strategy that Amazon Lex should use when deciding on a value from the
    #            list of slot type values.</p>
    #   @return [Types::SlotValueSelectionSetting]
    # @!attribute parent_slot_type_signature
    #   <p>The new built-in slot type that should be used as the parent of this
    #            slot type.</p>
    #   @return [String]
    # @!attribute bot_id
    #   <p>The identifier of the bot that contains the slot type.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot that contains the slot type. Must be
    #               <code>DRAFT</code>.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The identifier of the language and locale that contains the slot
    #            type. The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #   @return [String]
    # @!attribute external_source_setting
    #   <p>Provides information about the external source of the slot type's definition.</p>
    #   @return [Types::ExternalSourceSetting]
    # @!attribute composite_slot_type_setting
    #   <p>Specifications for a composite slot type.</p>
    #   @return [Types::CompositeSlotTypeSetting]
    class UpdateSlotTypeRequest < Struct.new(
      :slot_type_id,
      :slot_type_name,
      :description,
      :slot_type_values,
      :value_selection_setting,
      :parent_slot_type_signature,
      :bot_id,
      :bot_version,
      :locale_id,
      :external_source_setting,
      :composite_slot_type_setting,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute slot_type_id
    #   <p>The unique identifier of the updated slot type.</p>
    #   @return [String]
    # @!attribute slot_type_name
    #   <p>The updated name of the slot type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description of the slot type.</p>
    #   @return [String]
    # @!attribute slot_type_values
    #   <p>The updated values that the slot type provides.</p>
    #   @return [Array<Types::SlotTypeValue>]
    # @!attribute value_selection_setting
    #   <p>The updated strategy that Amazon Lex uses to determine which value to
    #            select from the slot type.</p>
    #   @return [Types::SlotValueSelectionSetting]
    # @!attribute parent_slot_type_signature
    #   <p>The updated signature of the built-in slot type that is the parent
    #            of this slot type.</p>
    #   @return [String]
    # @!attribute bot_id
    #   <p>The identifier of the bot that contains the slot type.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot that contains the slot type. This is always
    #               <code>DRAFT</code>.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The language and locale of the updated slot type.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The timestamp of the date and time that the slot type was
    #            created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>A timestamp of the date and time that the slot type was last
    #            updated.</p>
    #   @return [Time]
    # @!attribute external_source_setting
    #   <p>Provides information about the external source of the slot type's definition.</p>
    #   @return [Types::ExternalSourceSetting]
    # @!attribute composite_slot_type_setting
    #   <p>Specifications for a composite slot type.</p>
    #   @return [Types::CompositeSlotTypeSetting]
    class UpdateSlotTypeResponse < Struct.new(
      :slot_type_id,
      :slot_type_name,
      :description,
      :slot_type_values,
      :value_selection_setting,
      :parent_slot_type_signature,
      :bot_id,
      :bot_version,
      :locale_id,
      :creation_date_time,
      :last_updated_date_time,
      :external_source_setting,
      :composite_slot_type_setting,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_set_id
    #   <p>The test set Id for which update test operation to be performed.</p>
    #   @return [String]
    # @!attribute test_set_name
    #   <p>The new test set name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The new test set description.</p>
    #   @return [String]
    class UpdateTestSetRequest < Struct.new(
      :test_set_id,
      :test_set_name,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_set_id
    #   <p>The test set Id for which update test operation to be performed.</p>
    #   @return [String]
    # @!attribute test_set_name
    #   <p>The test set name for the updated test set.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The test set description for the updated test set.</p>
    #   @return [String]
    # @!attribute modality
    #   <p>Indicates whether audio or text is used for the updated test set.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status for the updated test set.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The roleARN used for any operation in the test set to access 
    #         resources in the Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute num_turns
    #   <p>The number of conversation turns from the updated test set.</p>
    #   @return [Integer]
    # @!attribute storage_location
    #   <p>The Amazon S3 storage location for the updated test set.</p>
    #   @return [Types::TestSetStorageLocation]
    # @!attribute creation_date_time
    #   <p>The creation date and time for the updated test set.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p> The date and time of the last update for the updated test set.</p>
    #   @return [Time]
    class UpdateTestSetResponse < Struct.new(
      :test_set_id,
      :test_set_name,
      :description,
      :modality,
      :status,
      :role_arn,
      :num_turns,
      :storage_location,
      :creation_date_time,
      :last_updated_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the user messages in the turn in the input.</p>
    # @!attribute utterance_input
    #   <p>The utterance input in the user turn.</p>
    #   @return [Types::UtteranceInputSpecification]
    # @!attribute request_attributes
    #   <p>Request attributes of the user turn.</p>
    #   @return [Hash<String, String>]
    # @!attribute session_state
    #   <p>Contains information about the session state in the input.</p>
    #   @return [Types::InputSessionStateSpecification]
    class UserTurnInputSpecification < Struct.new(
      :utterance_input,
      :request_attributes,
      :session_state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the intent that is output for the turn by the test execution.</p>
    # @!attribute name
    #   <p>The name of the intent.</p>
    #   @return [String]
    # @!attribute slots
    #   <p>The slots associated with the intent.</p>
    #   @return [Hash<String, Types::UserTurnSlotOutput>]
    class UserTurnIntentOutput < Struct.new(
      :name,
      :slots,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains results that are output for the user turn by the test execution.</p>
    # @!attribute intent
    #   <p>Contains information about the intent.</p>
    #   @return [Types::UserTurnIntentOutput]
    # @!attribute active_contexts
    #   <p>The contexts that are active in the turn.</p>
    #   @return [Array<Types::ActiveContext>]
    # @!attribute transcript
    #   <p>The transcript that is output for the user turn by the test execution.</p>
    #   @return [String]
    class UserTurnOutputSpecification < Struct.new(
      :intent,
      :active_contexts,
      :transcript,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the results for the user turn by the test execution.</p>
    # @!attribute input
    #   <p>Contains information about the user messages in the turn in the input.</p>
    #   @return [Types::UserTurnInputSpecification]
    # @!attribute expected_output
    #   <p>Contains information about the expected output for the user turn.</p>
    #   @return [Types::UserTurnOutputSpecification]
    # @!attribute actual_output
    #   <p>Contains information about the actual output for the user turn.</p>
    #   @return [Types::UserTurnOutputSpecification]
    # @!attribute error_details
    #   <p>Details about an error in an execution of a test set.</p>
    #   @return [Types::ExecutionErrorDetails]
    # @!attribute end_to_end_result
    #   <p>Specifies whether the expected and actual outputs match or not, or if there is an error in execution.</p>
    #   @return [String]
    # @!attribute intent_match_result
    #   <p>Specifies whether the expected and actual intents match or not.</p>
    #   @return [String]
    # @!attribute slot_match_result
    #   <p>Specifies whether the expected and actual slots match or not.</p>
    #   @return [String]
    # @!attribute speech_transcription_result
    #   <p>Specifies whether the expected and actual speech transcriptions match or not, or if there is an error in execution.</p>
    #   @return [String]
    # @!attribute conversation_level_result
    #   <p>Contains information about the results related to the conversation associated with the user turn.</p>
    #   @return [Types::ConversationLevelResultDetail]
    class UserTurnResult < Struct.new(
      :input,
      :expected_output,
      :actual_output,
      :error_details,
      :end_to_end_result,
      :intent_match_result,
      :slot_match_result,
      :speech_transcription_result,
      :conversation_level_result,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a slot output by the test set execution.</p>
    # @!attribute value
    #   <p>The value output by the slot recognition.</p>
    #   @return [String]
    # @!attribute values
    #   <p>Values that are output by the slot recognition.</p>
    #   @return [Array<Types::UserTurnSlotOutput>]
    # @!attribute sub_slots
    #   <p>A list of items mapping the name of the subslots to information about those subslots.</p>
    #   @return [Hash<String, Types::UserTurnSlotOutput>]
    class UserTurnSlotOutput < Struct.new(
      :value,
      :values,
      :sub_slots,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the expected and input values for the user turn.</p>
    # @!attribute input
    #   <p>Contains information about the user messages in the turn in the input.</p>
    #   @return [Types::UserTurnInputSpecification]
    # @!attribute expected
    #   <p>Contains results about the expected output for the user turn.</p>
    #   @return [Types::UserTurnOutputSpecification]
    class UserTurnSpecification < Struct.new(
      :input,
      :expected,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides parameters for setting the time window and duration for
    #             aggregating utterance data.</p>
    # @!attribute relative_aggregation_duration
    #   <p>The desired time window for aggregating utterances. </p>
    #   @return [Types::RelativeAggregationDuration]
    class UtteranceAggregationDuration < Struct.new(
      :relative_aggregation_duration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the audio for an utterance.</p>
    # @!attribute audio_file_s3_location
    #   <p>Amazon S3 file pointing to the audio.</p>
    #   @return [String]
    class UtteranceAudioInputSpecification < Struct.new(
      :audio_file_s3_location,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains a response to the utterance from the bot.</p>
    # @!attribute content
    #   <p>The text of the response to the utterance from the bot.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The type of the response. The following values are possible:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PlainText</code> – A plain text string.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CustomPayload</code> – A response string that you can customize to include data or metadata for your application.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SSML</code> – A string that includes Speech Synthesis Markup Language to customize the audio response.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ImageResponseCard</code> – An image with buttons that the customer can select. See <a href="https://docs.aws.amazon.com/lexv2/latest/APIReference/API_runtime_ImageResponseCard.html">ImageResponseCard</a> for more information.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute image_response_card
    #   <p>A card that is shown to the user by a messaging platform. You define
    #            the contents of the card, the card is displayed by the platform. </p>
    #            <p>When you use a response card, the response from the user is
    #            constrained to the text associated with a button on the card.</p>
    #   @return [Types::ImageResponseCard]
    class UtteranceBotResponse < Struct.new(
      :content,
      :content_type,
      :image_response_card,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object specifying the measure and method by which to sort the utterance data.</p>
    # @!attribute name
    #   <p>The measure by which to sort the utterance analytics data.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Count</code> – The number of utterances.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UtteranceTimestamp</code> – The date and time of the utterance.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute order
    #   <p>Specifies whether to sort the results in ascending or descending order.</p>
    #   @return [String]
    class UtteranceDataSortBy < Struct.new(
      :name,
      :order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about input of an utterance.</p>
    # @!attribute text_input
    #   <p>A text input transcription of the utterance. It is only applicable for test-sets containing text data.</p>
    #   @return [String]
    # @!attribute audio_input
    #   <p>Contains information about the audio input for an utterance.</p>
    #   @return [Types::UtteranceAudioInputSpecification]
    class UtteranceInputSpecification < Struct.new(
      :text_input,
      :audio_input,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about multiple utterances in the results of a test set execution.</p>
    # @!attribute record_number
    #   <p>The record number of the result.</p>
    #   @return [Integer]
    # @!attribute conversation_id
    #   <p>The unique identifier for the conversation associated with the result.</p>
    #   @return [String]
    # @!attribute turn_result
    #   <p>Contains information about the turn associated with the result.</p>
    #   @return [Types::TestSetTurnResult]
    class UtteranceLevelTestResultItem < Struct.new(
      :record_number,
      :conversation_id,
      :turn_result,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the utterances in the results of the test set execution.</p>
    # @!attribute items
    #   <p>Contains information about an utterance in the results of the test set execution.</p>
    #   @return [Array<Types::UtteranceLevelTestResultItem>]
    class UtteranceLevelTestResults < Struct.new(
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing information about a specific utterance.</p>
    # @!attribute bot_alias_id
    #   <p>The identifier of the alias of the bot that the utterance was made to.</p>
    #   @return [String]
    # @!attribute bot_version
    #   <p>The version of the bot that the utterance was made to.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The locale of the bot that the utterance was made to.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The identifier of the session that the utterance was made in.</p>
    #   @return [String]
    # @!attribute channel
    #   <p>The channel that is integrated with the bot that the utterance was made to.</p>
    #   @return [String]
    # @!attribute mode
    #   <p>The mode of the session. The possible values are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Speech</code> – The session consisted of spoken dialogue.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Text</code> – The session consisted of written dialogue.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DTMF</code> – The session consisted of touch-tone keypad (Dual Tone Multi-Frequency) key presses.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MultiMode</code> – The session consisted of multiple modes.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute conversation_start_time
    #   <p>The date and time when the conversation in which the utterance took place began. A conversation is defined as a unique combination of a <code>sessionId</code> and an <code>originatingRequestId</code>.</p>
    #   @return [Time]
    # @!attribute conversation_end_time
    #   <p>The date and time when the conversation in which the utterance took place ended. A conversation is defined as a unique combination of a <code>sessionId</code> and an <code>originatingRequestId</code>.</p>
    #   @return [Time]
    # @!attribute utterance
    #   <p>The text of the utterance.</p>
    #   @return [String]
    # @!attribute utterance_timestamp
    #   <p>The date and time when the utterance took place.</p>
    #   @return [Time]
    # @!attribute audio_voice_duration_millis
    #   <p>The duration in milliseconds of the audio associated with the utterance.</p>
    #   @return [Integer]
    # @!attribute utterance_understood
    #   <p>Specifies whether the bot understood the utterance or not.</p>
    #   @return [Boolean]
    # @!attribute input_type
    #   <p>The input type of the utterance. The possible values are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>PCM format: audio data must be in little-endian byte order.</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>audio/l16; rate=16000; channels=1</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>audio/x-l16; sample-rate=16000; channel-count=1</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>audio/lpcm; sample-rate=8000; sample-size-bits=16; channel-count=1; is-big-endian=false</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Opus format</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>audio/x-cbr-opus-with-preamble;preamble-size=0;bit-rate=256000;frame-size-milliseconds=4</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Text format</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>text/plain; charset=utf-8</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute output_type
    #   <p>The output type of the utterance. The possible values are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>audio/mpeg</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>audio/ogg</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>audio/pcm (16 KHz)</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>audio/</code> (defaults to <code>mpeg</code>)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>text/plain; charset=utf-8</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute associated_intent_name
    #   <p>The name of the intent that the utterance is associated to.</p>
    #   @return [String]
    # @!attribute associated_slot_name
    #   <p>The name of the slot that the utterance is associated to.</p>
    #   @return [String]
    # @!attribute intent_state
    #   <p>The state of the intent that the utterance is associated to.</p>
    #   @return [String]
    # @!attribute dialog_action_type
    #   <p>The type of dialog action that the utterance is associated to. See the <code>type</code> field in <a href="https://docs.aws.amazon.com/lexv2/latest/APIReference/API_runtime_DialogAction.html">DialogAction</a> for more information.</p>
    #   @return [String]
    # @!attribute bot_response_audio_voice_id
    #   <p>The identifier for the audio of the bot response.</p>
    #   @return [String]
    # @!attribute slots_filled_in_session
    #   <p>The slots that have been filled in the session by the time of the utterance.</p>
    #   @return [String]
    # @!attribute utterance_request_id
    #   <p>The identifier of the request associated with the utterance.</p>
    #   @return [String]
    # @!attribute bot_responses
    #   <p>A list of objects containing information about the bot response to the utterance.</p>
    #   @return [Array<Types::UtteranceBotResponse>]
    class UtteranceSpecification < Struct.new(
      :bot_alias_id,
      :bot_version,
      :locale_id,
      :session_id,
      :channel,
      :mode,
      :conversation_start_time,
      :conversation_end_time,
      :utterance,
      :utterance_timestamp,
      :audio_voice_duration_millis,
      :utterance_understood,
      :input_type,
      :output_type,
      :associated_intent_name,
      :associated_slot_name,
      :intent_state,
      :dialog_action_type,
      :bot_response_audio_voice_id,
      :slots_filled_in_session,
      :utterance_request_id,
      :bot_responses,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:utterance_understood] = false unless options.key?(:utterance_understood)
        super
      end
    end

    # <p>One of the input parameters in your request isn't valid. Check the
    #          parameters and try your request again.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines settings for using an Amazon Polly voice to communicate with a
    #          user.</p>
    #          <p>Valid values include:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>standard</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>neural</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>long-form</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>generative</code>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute voice_id
    #   <p>The identifier of the Amazon Polly voice to use.</p>
    #   @return [String]
    # @!attribute engine
    #   <p>Indicates the type of Amazon Polly voice that Amazon Lex should use for voice interaction with the user. For more information, see the <a href="https://docs.aws.amazon.com/polly/latest/dg/API_SynthesizeSpeech.html#polly-SynthesizeSpeech-request-Engine">
    #                  <code>engine</code> parameter of the <code>SynthesizeSpeech</code> operation</a> in the <i>Amazon Polly developer guide</i>.</p>
    #            <p>If you do not specify a value, the default is <code>standard</code>.</p>
    #   @return [String]
    class VoiceSettings < Struct.new(
      :voice_id,
      :engine,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the prompts that Amazon Lex uses while a bot is waiting for
    #          customer input. </p>
    # @!attribute waiting_response
    #   <p>The response that Amazon Lex sends to indicate that the bot is waiting
    #            for the conversation to continue.</p>
    #   @return [Types::ResponseSpecification]
    # @!attribute continue_response
    #   <p>The response that Amazon Lex sends to indicate that the bot is ready to
    #            continue the conversation.</p>
    #   @return [Types::ResponseSpecification]
    # @!attribute still_waiting_response
    #   <p>A response that Amazon Lex sends periodically to the user to indicate
    #            that the bot is still waiting for input from the user.</p>
    #   @return [Types::StillWaitingResponseSpecification]
    # @!attribute active
    #   <p>Specifies whether the bot will wait for a user to respond. When this
    #            field is false, wait and continue responses for a slot aren't used. If
    #            the <code>active</code> field isn't specified, the default is
    #            true.</p>
    #   @return [Boolean]
    class WaitAndContinueSpecification < Struct.new(
      :waiting_response,
      :continue_response,
      :still_waiting_response,
      :active,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
