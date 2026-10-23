# frozen_string_literal: true

# This is generated code!

module Aws::Forecast
  # This module contains the types returned by client operations.
  module Types

    # <p>Defines the modifications that you are making to an attribute for a what-if forecast. For example, you can use this operation to create a what-if forecast that investigates a 10% off sale on all shoes. To do this, you specify <code>"AttributeName": "shoes"</code>, <code>"Operation": "MULTIPLY"</code>, and <code>"Value": "0.90"</code>. Pair this operation with the <a>TimeSeriesCondition</a> operation within the <a>CreateWhatIfForecastRequest$TimeSeriesTransformations</a> operation to define a subset of attribute items that are modified.</p>
    # @!attribute attribute_name
    #   <p>The related time series that you are modifying. This value is case insensitive.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>The operation that is applied to the provided attribute. Operations include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ADD</code> - adds <code>Value</code> to all rows of <code>AttributeName</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUBTRACT</code> - subtracts <code>Value</code> from all rows of <code>AttributeName</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MULTIPLY</code> - multiplies all rows of <code>AttributeName</code> by <code>Value</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DIVIDE</code> - divides all rows of <code>AttributeName</code> by <code>Value</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute value
    #   <p>The value that is applied for the chosen <code>Operation</code>.</p>
    #   @return [Float]
    class Action < Struct.new(
      nil,
      :attribute_name,
      :operation,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an additional dataset. This object is part of the <a>DataConfig</a> object. Forecast supports the Weather Index and Holidays additional datasets.</p>
    #          <p>
    #             <b>Weather Index</b>
    #          </p>
    #          <p>The Amazon Forecast Weather Index is a built-in dataset that incorporates historical and
    #             projected weather information into your model. The Weather Index supplements your
    #             datasets with over two years of historical weather data and up to 14 days of projected
    #             weather data. For more information, see <a href="https://docs.aws.amazon.com/forecast/latest/dg/weather.html">Amazon Forecast
    #                 Weather Index</a>.</p>
    #          <p>
    #             <b>Holidays</b>
    #          </p>
    #          <p>Holidays is a built-in dataset that incorporates national holiday information into
    #             your model. It provides native support for the holiday calendars of 66 countries. To
    #             view the holiday calendars, refer to the <a href="http://jollyday.sourceforge.net/data.html">Jollyday</a> library. For more
    #             information, see <a href="https://docs.aws.amazon.com/forecast/latest/dg/holidays.html">Holidays
    #                 Featurization</a>.</p>
    # @!attribute name
    #   <p>The name of the additional dataset. Valid names: <code>"holiday"</code> and
    #                   <code>"weather"</code>.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>
    #               <b>Weather Index</b>
    #            </p>
    #            <p>To enable the Weather Index, do not specify a value for
    #               <code>Configuration</code>.</p>
    #            <p>
    #               <b>Holidays</b>
    #            </p>
    #            <p>
    #               <b>Holidays</b>
    #            </p>
    #            <p>To enable Holidays, set <code>CountryCode</code> to one of the following two-letter
    #               country codes:</p>
    #            <ul>
    #               <li>
    #                  <p>"AL" - ALBANIA</p>
    #               </li>
    #               <li>
    #                  <p>"AR" - ARGENTINA</p>
    #               </li>
    #               <li>
    #                  <p>"AT" - AUSTRIA</p>
    #               </li>
    #               <li>
    #                  <p>"AU" - AUSTRALIA</p>
    #               </li>
    #               <li>
    #                  <p>"BA" - BOSNIA HERZEGOVINA</p>
    #               </li>
    #               <li>
    #                  <p>"BE" - BELGIUM</p>
    #               </li>
    #               <li>
    #                  <p>"BG" - BULGARIA</p>
    #               </li>
    #               <li>
    #                  <p>"BO" - BOLIVIA</p>
    #               </li>
    #               <li>
    #                  <p>"BR" - BRAZIL</p>
    #               </li>
    #               <li>
    #                  <p>"BY" - BELARUS</p>
    #               </li>
    #               <li>
    #                  <p>"CA" - CANADA</p>
    #               </li>
    #               <li>
    #                  <p>"CL" - CHILE</p>
    #               </li>
    #               <li>
    #                  <p>"CO" - COLOMBIA</p>
    #               </li>
    #               <li>
    #                  <p>"CR" - COSTA RICA</p>
    #               </li>
    #               <li>
    #                  <p>"HR" - CROATIA</p>
    #               </li>
    #               <li>
    #                  <p>"CZ" - CZECH REPUBLIC</p>
    #               </li>
    #               <li>
    #                  <p>"DK" - DENMARK</p>
    #               </li>
    #               <li>
    #                  <p>"EC" - ECUADOR</p>
    #               </li>
    #               <li>
    #                  <p>"EE" - ESTONIA</p>
    #               </li>
    #               <li>
    #                  <p>"ET" - ETHIOPIA</p>
    #               </li>
    #               <li>
    #                  <p>"FI" - FINLAND</p>
    #               </li>
    #               <li>
    #                  <p>"FR" - FRANCE</p>
    #               </li>
    #               <li>
    #                  <p>"DE" - GERMANY</p>
    #               </li>
    #               <li>
    #                  <p>"GR" - GREECE</p>
    #               </li>
    #               <li>
    #                  <p>"HU" - HUNGARY</p>
    #               </li>
    #               <li>
    #                  <p>"IS" - ICELAND</p>
    #               </li>
    #               <li>
    #                  <p>"IN" - INDIA</p>
    #               </li>
    #               <li>
    #                  <p>"IE" - IRELAND</p>
    #               </li>
    #               <li>
    #                  <p>"IT" - ITALY</p>
    #               </li>
    #               <li>
    #                  <p>"JP" - JAPAN</p>
    #               </li>
    #               <li>
    #                  <p>"KZ" - KAZAKHSTAN</p>
    #               </li>
    #               <li>
    #                  <p>"KR" - KOREA</p>
    #               </li>
    #               <li>
    #                  <p>"LV" - LATVIA</p>
    #               </li>
    #               <li>
    #                  <p>"LI" - LIECHTENSTEIN</p>
    #               </li>
    #               <li>
    #                  <p>"LT" - LITHUANIA</p>
    #               </li>
    #               <li>
    #                  <p>"LU" - LUXEMBOURG</p>
    #               </li>
    #               <li>
    #                  <p>"MK" - MACEDONIA</p>
    #               </li>
    #               <li>
    #                  <p>"MT" - MALTA</p>
    #               </li>
    #               <li>
    #                  <p>"MX" - MEXICO</p>
    #               </li>
    #               <li>
    #                  <p>"MD" - MOLDOVA</p>
    #               </li>
    #               <li>
    #                  <p>"ME" - MONTENEGRO</p>
    #               </li>
    #               <li>
    #                  <p>"NL" - NETHERLANDS</p>
    #               </li>
    #               <li>
    #                  <p>"NZ" - NEW ZEALAND</p>
    #               </li>
    #               <li>
    #                  <p>"NI" - NICARAGUA</p>
    #               </li>
    #               <li>
    #                  <p>"NG" - NIGERIA</p>
    #               </li>
    #               <li>
    #                  <p>"NO" - NORWAY</p>
    #               </li>
    #               <li>
    #                  <p>"PA" - PANAMA</p>
    #               </li>
    #               <li>
    #                  <p>"PY" - PARAGUAY</p>
    #               </li>
    #               <li>
    #                  <p>"PE" - PERU</p>
    #               </li>
    #               <li>
    #                  <p>"PL" - POLAND</p>
    #               </li>
    #               <li>
    #                  <p>"PT" - PORTUGAL</p>
    #               </li>
    #               <li>
    #                  <p>"RO" - ROMANIA</p>
    #               </li>
    #               <li>
    #                  <p>"RU" - RUSSIA</p>
    #               </li>
    #               <li>
    #                  <p>"RS" - SERBIA</p>
    #               </li>
    #               <li>
    #                  <p>"SK" - SLOVAKIA</p>
    #               </li>
    #               <li>
    #                  <p>"SI" - SLOVENIA</p>
    #               </li>
    #               <li>
    #                  <p>"ZA" - SOUTH AFRICA</p>
    #               </li>
    #               <li>
    #                  <p>"ES" - SPAIN</p>
    #               </li>
    #               <li>
    #                  <p>"SE" - SWEDEN</p>
    #               </li>
    #               <li>
    #                  <p>"CH" - SWITZERLAND</p>
    #               </li>
    #               <li>
    #                  <p>"UA" - UKRAINE</p>
    #               </li>
    #               <li>
    #                  <p>"AE" - UNITED ARAB EMIRATES</p>
    #               </li>
    #               <li>
    #                  <p>"US" - UNITED STATES</p>
    #               </li>
    #               <li>
    #                  <p>"UK" - UNITED KINGDOM</p>
    #               </li>
    #               <li>
    #                  <p>"UY" - URUGUAY</p>
    #               </li>
    #               <li>
    #                  <p>"VE" - VENEZUELA</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, Array<String>>]
    class AdditionalDataset < Struct.new(
      nil,
      :name,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about the method used to transform attributes.</p>
    #          <p>The following is an example using the RETAIL domain:</p>
    #          <p>
    #             <code>{</code>
    #          </p>
    #          <p>
    #             <code>"AttributeName": "demand",</code>
    #          </p>
    #          <p>
    #             <code>"Transformations": {"aggregation": "sum", "middlefill": "zero", "backfill":
    #                 "zero"}</code>
    #          </p>
    #          <p>
    #             <code>}</code>
    #          </p>
    # @!attribute attribute_name
    #   <p>The name of the attribute as specified in the schema. Amazon Forecast supports the
    #               target field of the target time series and the related time series datasets. For
    #               example, for the RETAIL domain, the target is <code>demand</code>.</p>
    #   @return [String]
    # @!attribute transformations
    #   <p>The method parameters (key-value pairs), which are a map of override parameters.
    #               Specify these parameters to override the default values. Related Time Series attributes
    #               do not accept aggregation parameters.</p>
    #            <p>The following list shows the parameters and their valid values for the "filling"
    #               featurization method for a <b>Target Time Series</b> dataset.
    #               Default values are bolded.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>aggregation</code>: <b>sum</b>,
    #                           <code>avg</code>, <code>first</code>, <code>min</code>,
    #                       <code>max</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>frontfill</code>: <b>none</b>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>middlefill</code>: <b>zero</b>,
    #                           <code>nan</code> (not a number), <code>value</code>, <code>median</code>,
    #                           <code>mean</code>, <code>min</code>, <code>max</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>backfill</code>: <b>zero</b>,
    #                       <code>nan</code>, <code>value</code>, <code>median</code>, <code>mean</code>,
    #                           <code>min</code>, <code>max</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The following list shows the parameters and their valid values for a <b>Related Time Series</b> featurization method (there are no
    #               defaults):</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>middlefill</code>: <code>zero</code>, <code>value</code>,
    #                           <code>median</code>, <code>mean</code>, <code>min</code>,
    #                       <code>max</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>backfill</code>: <code>zero</code>, <code>value</code>,
    #                           <code>median</code>, <code>mean</code>, <code>min</code>,
    #                       <code>max</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>futurefill</code>: <code>zero</code>, <code>value</code>,
    #                           <code>median</code>, <code>mean</code>, <code>min</code>,
    #                       <code>max</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To set a filling method to a specific value, set the fill parameter to
    #                   <code>value</code> and define the value in a corresponding <code>_value</code>
    #               parameter. For example, to set backfilling to a value of 2, include the following:
    #                   <code>"backfill": "value"</code> and <code>"backfill_value":"2"</code>. </p>
    #   @return [Hash<String, String>]
    class AttributeConfig < Struct.new(
      nil,
      :attribute_name,
      :transformations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metrics you can use as a baseline for comparison purposes. Use these metrics when you interpret monitoring results for an auto predictor.</p>
    # @!attribute predictor_baseline
    #   <p>The initial <a href="https://docs.aws.amazon.com/forecast/latest/dg/metrics.html">accuracy metrics</a> for the predictor you are monitoring. Use these metrics as a baseline for comparison purposes as you
    #            use your predictor and the metrics change.</p>
    #   @return [Types::PredictorBaseline]
    class Baseline < Struct.new(
      nil,
      :predictor_baseline,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An individual metric that you can use for comparison as you evaluate your monitoring results.</p>
    # @!attribute name
    #   <p>The name of the metric.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value for the metric.</p>
    #   @return [Float]
    class BaselineMetric < Struct.new(
      nil,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a categorical hyperparameter and it's range of tunable values.
    #       This object is part of the <a>ParameterRanges</a> object.</p>
    # @!attribute name
    #   <p>The name of the categorical hyperparameter to tune.</p>
    #   @return [String]
    # @!attribute values
    #   <p>A list of the tunable categories for the hyperparameter.</p>
    #   @return [Array<String>]
    class CategoricalParameterRange < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a continuous hyperparameter and it's range of tunable values.
    #       This object is part of the <a>ParameterRanges</a> object.</p>
    # @!attribute name
    #   <p>The name of the hyperparameter to tune.</p>
    #   @return [String]
    # @!attribute max_value
    #   <p>The maximum tunable value of the hyperparameter.</p>
    #   @return [Float]
    # @!attribute min_value
    #   <p>The minimum tunable value of the hyperparameter.</p>
    #   @return [Float]
    # @!attribute scaling_type
    #   <p>The scale that hyperparameter tuning uses to search the hyperparameter range.
    #         Valid values:</p>
    #            <dl>
    #               <dt>Auto</dt>
    #               <dd>
    #                  <p>Amazon Forecast hyperparameter tuning chooses the best scale for the hyperparameter.</p>
    #               </dd>
    #               <dt>Linear</dt>
    #               <dd>
    #                  <p>Hyperparameter tuning searches the values in the hyperparameter range by using a
    #               linear scale.</p>
    #               </dd>
    #               <dt>Logarithmic</dt>
    #               <dd>
    #                  <p>Hyperparameter tuning searches the values in the hyperparameter range by using a
    #               logarithmic scale.</p>
    #                  <p>Logarithmic scaling works only for ranges that have values greater than 0.</p>
    #               </dd>
    #               <dt>ReverseLogarithmic</dt>
    #               <dd>
    #                  <p>hyperparameter tuning searches the values in the hyperparameter range by using a
    #               reverse logarithmic scale.</p>
    #                  <p>Reverse logarithmic scaling works only for ranges that are entirely within the
    #               range 0 <= x < 1.0.</p>
    #               </dd>
    #            </dl>
    #            <p>For information about choosing a hyperparameter scale, see
    #         <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/automatic-model-tuning-define-ranges.html#scaling-type">Hyperparameter Scaling</a>.
    #         One of the following values:</p>
    #   @return [String]
    class ContinuousParameterRange < Struct.new(
      nil,
      :name,
      :max_value,
      :min_value,
      :scaling_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute predictor_name
    #   <p>A unique name for the predictor</p>
    #   @return [String]
    # @!attribute forecast_horizon
    #   <p>The number of time-steps that the model predicts. The forecast horizon is also called
    #               the prediction length.</p>
    #            <p>The maximum forecast horizon is the lesser of 500 time-steps or 1/4 of the
    #               TARGET_TIME_SERIES dataset length. If you are retraining an existing AutoPredictor, then
    #               the maximum forecast horizon is the lesser of 500 time-steps or 1/3 of the
    #               TARGET_TIME_SERIES dataset length.</p>
    #            <p>If you are upgrading to an AutoPredictor or retraining an existing AutoPredictor, you
    #               cannot update the forecast horizon parameter. You can meet this requirement by providing
    #               longer time-series in the dataset.</p>
    #   @return [Integer]
    # @!attribute forecast_types
    #   <p>The forecast types used to train a predictor. You can specify up to five forecast
    #               types. Forecast types can be quantiles from 0.01 to 0.99, by increments of 0.01 or
    #               higher. You can also specify the mean forecast with <code>mean</code>.</p>
    #   @return [Array<String>]
    # @!attribute forecast_dimensions
    #   <p>An array of dimension (field) names that specify how to group the generated
    #               forecast.</p>
    #            <p>For example, if you are generating forecasts for item sales across all your stores,
    #               and your dataset contains a <code>store_id</code> field, you would specify
    #                   <code>store_id</code> as a dimension to group sales forecasts for each store.</p>
    #   @return [Array<String>]
    # @!attribute forecast_frequency
    #   <p>The frequency of predictions in a forecast.</p>
    #            <p>Valid intervals are an integer followed by Y (Year), M (Month), W (Week), D (Day), H (Hour), and min (Minute). For example,
    #           "1D" indicates every day and "15min" indicates every 15 minutes. You cannot specify a value that would overlap with the next larger frequency. That means, for example, you cannot specify a frequency of 60 minutes, because that is equivalent to 1 hour. The valid values for each frequency are the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Minute - 1-59</p>
    #               </li>
    #               <li>
    #                  <p>Hour - 1-23</p>
    #               </li>
    #               <li>
    #                  <p>Day - 1-6</p>
    #               </li>
    #               <li>
    #                  <p>Week - 1-4</p>
    #               </li>
    #               <li>
    #                  <p>Month - 1-11</p>
    #               </li>
    #               <li>
    #                  <p>Year - 1</p>
    #               </li>
    #            </ul>
    #            <p>Thus, if you want every other week forecasts, specify "2W". Or, if you want quarterly forecasts, you specify "3M".</p>
    #            <p>The frequency must be greater than or equal to the TARGET_TIME_SERIES dataset
    #               frequency.</p>
    #            <p>When a RELATED_TIME_SERIES dataset is provided, the frequency must be equal to the
    #               RELATED_TIME_SERIES dataset frequency.</p>
    #   @return [String]
    # @!attribute data_config
    #   <p>The data configuration for your dataset group and any additional datasets.</p>
    #   @return [Types::DataConfig]
    # @!attribute encryption_config
    #   <p>An Key Management Service (KMS) key and an Identity and Access Management (IAM) role that Amazon Forecast can assume to
    #         access the key. You can specify this optional object in the
    #         <a>CreateDataset</a> and <a>CreatePredictor</a> requests.</p>
    #   @return [Types::EncryptionConfig]
    # @!attribute reference_predictor_arn
    #   <p>The ARN of the predictor to retrain or upgrade. This parameter is only used when
    #               retraining or upgrading a predictor. When creating a new predictor, do not specify a
    #               value for this parameter.</p>
    #            <p>When upgrading or retraining a predictor, only specify values for the
    #                   <code>ReferencePredictorArn</code> and <code>PredictorName</code>. The value for
    #                   <code>PredictorName</code> must be a unique predictor name.</p>
    #   @return [String]
    # @!attribute optimization_metric
    #   <p>The accuracy metric used to optimize the predictor.</p>
    #   @return [String]
    # @!attribute explain_predictor
    #   <p>Create an Explainability resource for the predictor.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>Optional metadata to help you categorize and organize your predictors. Each tag
    #               consists of a key and an optional value, both of which you define. Tag keys and values
    #               are case sensitive.</p>
    #            <p>The following restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>For each resource, each tag key must be unique and each tag key must have one
    #                       value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum number of tags per resource: 50.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length: 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length: 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Accepted characters: all letters and numbers, spaces representable in UTF-8,
    #                       and + - = . _ : / @. If your tagging schema is used across other services and
    #                       resources, the character restrictions of those services also apply. </p>
    #               </li>
    #               <li>
    #                  <p>Key prefixes cannot include any upper or lowercase combination of
    #                           <code>aws:</code> or <code>AWS:</code>. Values can have this prefix. If a
    #                       tag value has <code>aws</code> as its prefix but the key does not, Forecast
    #                       considers it to be a user tag and will count against the limit of 50 tags. Tags
    #                       with only the key prefix of <code>aws</code> do not count against your tags per
    #                       resource limit. You cannot edit or delete tag keys with this prefix.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Tag>]
    # @!attribute monitor_config
    #   <p>The configuration details for predictor monitoring. Provide a name for the monitor resource to enable predictor monitoring.</p>
    #            <p>Predictor monitoring allows you to see how your predictor's performance changes over time.
    #            For more information, see <a href="https://docs.aws.amazon.com/forecast/latest/dg/predictor-monitoring.html">Predictor Monitoring</a>.</p>
    #   @return [Types::MonitorConfig]
    # @!attribute time_alignment_boundary
    #   <p>The time boundary Forecast uses to align and aggregate any data that doesn't align with your forecast frequency. Provide the unit of time and the time boundary as a key value pair. 
    #               For more information on specifying a time boundary, see <a href="https://docs.aws.amazon.com/forecast/latest/dg/data-aggregation.html#specifying-time-boundary">Specifying a Time Boundary</a>.
    #               If you
    #               don't provide a time boundary, Forecast uses a set of <a href="https://docs.aws.amazon.com/forecast/latest/dg/data-aggregation.html#default-time-boundaries">Default Time Boundaries</a>.</p>
    #   @return [Types::TimeAlignmentBoundary]
    class CreateAutoPredictorRequest < Struct.new(
      nil,
      :predictor_name,
      :forecast_horizon,
      :forecast_types,
      :forecast_dimensions,
      :forecast_frequency,
      :data_config,
      :encryption_config,
      :reference_predictor_arn,
      :optimization_metric,
      :explain_predictor,
      :tags,
      :monitor_config,
      :time_alignment_boundary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute predictor_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor.</p>
    #   @return [String]
    class CreateAutoPredictorResponse < Struct.new(
      nil,
      :predictor_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_group_name
    #   <p>A name for the dataset group.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The domain associated with the dataset group. When you add a dataset to a dataset group,
    #         this value and the value specified for the <code>Domain</code> parameter of the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDataset.html">CreateDataset</a>
    #         operation must match.</p>
    #            <p>The <code>Domain</code> and <code>DatasetType</code> that you choose determine the fields
    #         that must be present in training data that you import to a dataset. For example, if you choose
    #         the <code>RETAIL</code> domain and <code>TARGET_TIME_SERIES</code> as the
    #           <code>DatasetType</code>, Amazon Forecast requires that <code>item_id</code>,
    #           <code>timestamp</code>, and <code>demand</code> fields are present in your data. For more
    #         information, see <a href="https://docs.aws.amazon.com/forecast/latest/dg/howitworks-datasets-groups.html">Dataset groups</a>.</p>
    #   @return [String]
    # @!attribute dataset_arns
    #   <p>An array of Amazon Resource Names (ARNs) of the datasets that you want to include in the
    #         dataset group.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The optional metadata that you apply to the dataset group to help you categorize and
    #         organize them. Each tag consists of a key and an optional value, both of which you
    #         define.</p>
    #            <p>The following basic restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of tags per resource - 50.</p>
    #               </li>
    #               <li>
    #                  <p>For each resource, each tag key must be unique, and each tag key can have only one
    #             value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length - 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length - 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>If your tagging schema is used across multiple services and resources, remember that
    #             other services may have restrictions on allowed characters. Generally allowed characters
    #             are: letters, numbers, and spaces representable in UTF-8, and the following characters: +
    #             - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination
    #             of such as a prefix for keys as it is reserved for Amazon Web Services use. You cannot edit or delete tag
    #             keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as
    #             its prefix but the key does not, then Forecast considers it to be a user tag and will
    #             count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do
    #             not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Tag>]
    class CreateDatasetGroupRequest < Struct.new(
      nil,
      :dataset_group_name,
      :domain,
      :dataset_arns,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group.</p>
    #   @return [String]
    class CreateDatasetGroupResponse < Struct.new(
      nil,
      :dataset_group_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_import_job_name
    #   <p>The name for the dataset import job. We recommend including the current timestamp in the
    #         name, for example, <code>20190721DatasetImport</code>. This can help you avoid getting a
    #           <code>ResourceAlreadyExistsException</code> exception.</p>
    #   @return [String]
    # @!attribute dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Forecast dataset that you want to import data
    #         to.</p>
    #   @return [String]
    # @!attribute data_source
    #   <p>The location of the training data to import and an Identity and Access Management (IAM) role that Amazon Forecast
    #         can assume to access the data. The training data must be stored in an Amazon S3 bucket.</p>
    #            <p>If encryption is used, <code>DataSource</code> must include an Key Management Service (KMS) key and the
    #         IAM role must allow Amazon Forecast permission to access the key. The KMS key and IAM role must
    #         match those specified in the <code>EncryptionConfig</code> parameter of the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDataset.html">CreateDataset</a>
    #         operation.</p>
    #   @return [Types::DataSource]
    # @!attribute timestamp_format
    #   <p>The format of timestamps in the dataset. The format that you specify depends on the
    #           <code>DataFrequency</code> specified when the dataset was created. The following formats are
    #         supported</p>
    #            <ul>
    #               <li>
    #                  <p>"yyyy-MM-dd"</p>
    #                  <p>For the following data frequencies: Y, M, W, and D</p>
    #               </li>
    #               <li>
    #                  <p>"yyyy-MM-dd HH:mm:ss"</p>
    #                  <p>For the following data frequencies: H, 30min, 15min, and 1min; and optionally, for: Y,
    #             M, W, and D</p>
    #               </li>
    #            </ul>
    #            <p>If the format isn't specified, Amazon Forecast expects the format to be "yyyy-MM-dd
    #         HH:mm:ss".</p>
    #   @return [String]
    # @!attribute time_zone
    #   <p>A single time zone for every item in your dataset. This option is ideal for datasets
    #               with all timestamps within a single time zone, or if all timestamps are normalized to a
    #               single time zone. </p>
    #            <p>Refer to the <a href="http://joda-time.sourceforge.net/timezones.html">Joda-Time
    #                   API</a> for a complete list of valid time zone names.</p>
    #   @return [String]
    # @!attribute use_geolocation_for_time_zone
    #   <p>Automatically derive time zone information from the geolocation attribute. This option
    #               is ideal for datasets that contain timestamps in multiple time zones and those
    #               timestamps are expressed in local time.</p>
    #   @return [Boolean]
    # @!attribute geolocation_format
    #   <p>The format of the geolocation attribute. The geolocation attribute can be formatted in
    #               one of two ways:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LAT_LONG</code> - the latitude and longitude in decimal format (Example: 47.61_-122.33).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CC_POSTALCODE</code> (US Only) - the country code (US), followed by the 5-digit ZIP code (Example: US_98121).</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute tags
    #   <p>The optional metadata that you apply to the dataset import job to help you categorize and
    #         organize them. Each tag consists of a key and an optional value, both of which you
    #         define.</p>
    #            <p>The following basic restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of tags per resource - 50.</p>
    #               </li>
    #               <li>
    #                  <p>For each resource, each tag key must be unique, and each tag key can have only one
    #             value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length - 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length - 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>If your tagging schema is used across multiple services and resources, remember that
    #             other services may have restrictions on allowed characters. Generally allowed characters
    #             are: letters, numbers, and spaces representable in UTF-8, and the following characters: +
    #             - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination
    #             of such as a prefix for keys as it is reserved for Amazon Web Services use. You cannot edit or delete tag
    #             keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as
    #             its prefix but the key does not, then Forecast considers it to be a user tag and will
    #             count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do
    #             not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Tag>]
    # @!attribute format
    #   <p>The format of the imported data, CSV or PARQUET. The default value is CSV.</p>
    #   @return [String]
    # @!attribute import_mode
    #   <p>Specifies whether the dataset import job is a <code>FULL</code> or <code>INCREMENTAL</code> import. A <code>FULL</code> dataset import replaces all of the existing data with the newly imported data. An <code>INCREMENTAL</code> import appends the imported data to the existing data.</p>
    #   @return [String]
    class CreateDatasetImportJobRequest < Struct.new(
      nil,
      :dataset_import_job_name,
      :dataset_arn,
      :data_source,
      :timestamp_format,
      :time_zone,
      :use_geolocation_for_time_zone,
      :geolocation_format,
      :tags,
      :format,
      :import_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_import_job_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset import job.</p>
    #   @return [String]
    class CreateDatasetImportJobResponse < Struct.new(
      nil,
      :dataset_import_job_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_name
    #   <p>A name for the dataset.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The domain associated with the dataset. When you add a dataset to a dataset group, this
    #         value and the value specified for the <code>Domain</code> parameter of the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetGroup.html">CreateDatasetGroup</a> operation must match.</p>
    #            <p>The <code>Domain</code> and <code>DatasetType</code> that you choose determine the fields
    #         that must be present in the training data that you import to the dataset. For example, if you
    #         choose the <code>RETAIL</code> domain and <code>TARGET_TIME_SERIES</code> as the
    #           <code>DatasetType</code>, Amazon Forecast requires <code>item_id</code>, <code>timestamp</code>,
    #         and <code>demand</code> fields to be present in your data. For more information, see <a href="https://docs.aws.amazon.com/forecast/latest/dg/howitworks-datasets-groups.html">Importing
    #           datasets</a>.</p>
    #   @return [String]
    # @!attribute dataset_type
    #   <p>The dataset type. Valid values depend on the chosen <code>Domain</code>.</p>
    #   @return [String]
    # @!attribute data_frequency
    #   <p>The frequency of data collection. This parameter is required for RELATED_TIME_SERIES
    #         datasets.</p>
    #            <p>Valid intervals are an integer followed by Y (Year), M (Month), W (Week), D (Day), H (Hour), and min (Minute). For example,
    #         "1D" indicates every day and "15min" indicates every 15 minutes. You cannot specify a value that would overlap with the next larger frequency. That means, for example, you cannot specify a frequency of 60 minutes, because that is equivalent to 1 hour. The valid values for each frequency are the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Minute - 1-59</p>
    #               </li>
    #               <li>
    #                  <p>Hour - 1-23</p>
    #               </li>
    #               <li>
    #                  <p>Day - 1-6</p>
    #               </li>
    #               <li>
    #                  <p>Week - 1-4</p>
    #               </li>
    #               <li>
    #                  <p>Month - 1-11</p>
    #               </li>
    #               <li>
    #                  <p>Year - 1</p>
    #               </li>
    #            </ul>
    #            <p>Thus, if you want every other week forecasts, specify "2W". Or, if you want quarterly forecasts, you specify "3M".</p>
    #   @return [String]
    # @!attribute schema
    #   <p>The schema for the dataset. The schema attributes and their order must match the fields in
    #         your data. The dataset <code>Domain</code> and <code>DatasetType</code> that you choose
    #         determine the minimum required fields in your training data. For information about the
    #         required fields for a specific dataset domain and type, see <a href="https://docs.aws.amazon.com/forecast/latest/dg/howitworks-domains-ds-types.html">Dataset Domains and Dataset
    #           Types</a>.</p>
    #   @return [Types::Schema]
    # @!attribute encryption_config
    #   <p>An Key Management Service (KMS) key and the Identity and Access Management (IAM) role that Amazon Forecast can assume to access
    #         the key.</p>
    #   @return [Types::EncryptionConfig]
    # @!attribute tags
    #   <p>The optional metadata that you apply to the dataset to help you categorize and organize
    #         them. Each tag consists of a key and an optional value, both of which you define.</p>
    #            <p>The following basic restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of tags per resource - 50.</p>
    #               </li>
    #               <li>
    #                  <p>For each resource, each tag key must be unique, and each tag key can have only one
    #             value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length - 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length - 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>If your tagging schema is used across multiple services and resources, remember that
    #             other services may have restrictions on allowed characters. Generally allowed characters
    #             are: letters, numbers, and spaces representable in UTF-8, and the following characters: +
    #             - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination
    #             of such as a prefix for keys as it is reserved for Amazon Web Services use. You cannot edit or delete tag
    #             keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as
    #             its prefix but the key does not, then Forecast considers it to be a user tag and will
    #             count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do
    #             not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Tag>]
    class CreateDatasetRequest < Struct.new(
      nil,
      :dataset_name,
      :domain,
      :dataset_type,
      :data_frequency,
      :schema,
      :encryption_config,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset.</p>
    #   @return [String]
    class CreateDatasetResponse < Struct.new(
      nil,
      :dataset_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute explainability_export_name
    #   <p>A unique name for the Explainability export.</p>
    #   @return [String]
    # @!attribute explainability_arn
    #   <p>The Amazon Resource Name (ARN) of the Explainability to export.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The destination for an export job. Provide an S3 path, an Identity and Access Management (IAM) role that allows Amazon Forecast
    #         to access the location, and an Key Management Service (KMS) key (optional). </p>
    #   @return [Types::DataDestination]
    # @!attribute tags
    #   <p>Optional metadata to help you categorize and organize your resources. Each tag
    #               consists of a key and an optional value, both of which you define. Tag keys and values
    #               are case sensitive.</p>
    #            <p>The following restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>For each resource, each tag key must be unique and each tag key must have one
    #                       value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum number of tags per resource: 50.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length: 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length: 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Accepted characters: all letters and numbers, spaces representable in UTF-8,
    #                       and + - = . _ : / @. If your tagging schema is used across other services and
    #                       resources, the character restrictions of those services also apply. </p>
    #               </li>
    #               <li>
    #                  <p>Key prefixes cannot include any upper or lowercase combination of
    #                           <code>aws:</code> or <code>AWS:</code>. Values can have this prefix. If a
    #                       tag value has <code>aws</code> as its prefix but the key does not, Forecast
    #                       considers it to be a user tag and will count against the limit of 50 tags. Tags
    #                       with only the key prefix of <code>aws</code> do not count against your tags per
    #                       resource limit. You cannot edit or delete tag keys with this prefix.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Tag>]
    # @!attribute format
    #   <p>The format of the exported data, CSV or PARQUET.</p>
    #   @return [String]
    class CreateExplainabilityExportRequest < Struct.new(
      nil,
      :explainability_export_name,
      :explainability_arn,
      :destination,
      :tags,
      :format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute explainability_export_arn
    #   <p>The Amazon Resource Name (ARN) of the export.</p>
    #   @return [String]
    class CreateExplainabilityExportResponse < Struct.new(
      nil,
      :explainability_export_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute explainability_name
    #   <p>A unique name for the Explainability.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Predictor or Forecast used to create the
    #               Explainability.</p>
    #   @return [String]
    # @!attribute explainability_config
    #   <p>The configuration settings that define the granularity of time series and time points
    #               for the Explainability.</p>
    #   @return [Types::ExplainabilityConfig]
    # @!attribute data_source
    #   <p>The source of your data, an Identity and Access Management (IAM) role that allows Amazon Forecast to
    #         access the data and, optionally, an Key Management Service (KMS) key.</p>
    #   @return [Types::DataSource]
    # @!attribute schema
    #   <p>Defines the fields of a dataset.</p>
    #   @return [Types::Schema]
    # @!attribute enable_visualization
    #   <p>Create an Explainability visualization that is viewable within the Amazon Web Services console.</p>
    #   @return [Boolean]
    # @!attribute start_date_time
    #   <p>If <code>TimePointGranularity</code> is set to <code>SPECIFIC</code>, define the first
    #               point for the Explainability.</p>
    #            <p>Use the following timestamp format: yyyy-MM-ddTHH:mm:ss (example:
    #               2015-01-01T20:00:00)</p>
    #   @return [String]
    # @!attribute end_date_time
    #   <p>If <code>TimePointGranularity</code> is set to <code>SPECIFIC</code>, define the last
    #               time point for the Explainability.</p>
    #            <p>Use the following timestamp format: yyyy-MM-ddTHH:mm:ss (example:
    #               2015-01-01T20:00:00)</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Optional metadata to help you categorize and organize your resources. Each tag
    #               consists of a key and an optional value, both of which you define. Tag keys and values
    #               are case sensitive.</p>
    #            <p>The following restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>For each resource, each tag key must be unique and each tag key must have one
    #                       value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum number of tags per resource: 50.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length: 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length: 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Accepted characters: all letters and numbers, spaces representable in UTF-8,
    #                       and + - = . _ : / @. If your tagging schema is used across other services and
    #                       resources, the character restrictions of those services also apply. </p>
    #               </li>
    #               <li>
    #                  <p>Key prefixes cannot include any upper or lowercase combination of
    #                           <code>aws:</code> or <code>AWS:</code>. Values can have this prefix. If a
    #                       tag value has <code>aws</code> as its prefix but the key does not, Forecast
    #                       considers it to be a user tag and will count against the limit of 50 tags. Tags
    #                       with only the key prefix of <code>aws</code> do not count against your tags per
    #                       resource limit. You cannot edit or delete tag keys with this prefix.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Tag>]
    class CreateExplainabilityRequest < Struct.new(
      nil,
      :explainability_name,
      :resource_arn,
      :explainability_config,
      :data_source,
      :schema,
      :enable_visualization,
      :start_date_time,
      :end_date_time,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute explainability_arn
    #   <p>The Amazon Resource Name (ARN) of the Explainability.</p>
    #   @return [String]
    class CreateExplainabilityResponse < Struct.new(
      nil,
      :explainability_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute forecast_export_job_name
    #   <p>The name for the forecast export job.</p>
    #   @return [String]
    # @!attribute forecast_arn
    #   <p>The Amazon Resource Name (ARN) of the forecast that you want to export.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The location where you want to save the forecast and an Identity and Access Management (IAM) role that
    #         Amazon Forecast can assume to access the location. The forecast must be exported to an Amazon S3
    #         bucket.</p>
    #            <p>If encryption is used, <code>Destination</code> must include an Key Management Service (KMS) key. The
    #         IAM role must allow Amazon Forecast permission to access the key.</p>
    #   @return [Types::DataDestination]
    # @!attribute tags
    #   <p>The optional metadata that you apply to the forecast export job to help you categorize and
    #         organize them. Each tag consists of a key and an optional value, both of which you
    #         define.</p>
    #            <p>The following basic restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of tags per resource - 50.</p>
    #               </li>
    #               <li>
    #                  <p>For each resource, each tag key must be unique, and each tag key can have only one
    #             value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length - 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length - 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>If your tagging schema is used across multiple services and resources, remember that
    #             other services may have restrictions on allowed characters. Generally allowed characters
    #             are: letters, numbers, and spaces representable in UTF-8, and the following characters: +
    #             - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination
    #             of such as a prefix for keys as it is reserved for Amazon Web Services use. You cannot edit or delete tag
    #             keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as
    #             its prefix but the key does not, then Forecast considers it to be a user tag and will
    #             count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do
    #             not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Tag>]
    # @!attribute format
    #   <p>The format of the exported data, CSV or PARQUET. The default value is CSV.</p>
    #   @return [String]
    class CreateForecastExportJobRequest < Struct.new(
      nil,
      :forecast_export_job_name,
      :forecast_arn,
      :destination,
      :tags,
      :format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute forecast_export_job_arn
    #   <p>The Amazon Resource Name (ARN) of the export job.</p>
    #   @return [String]
    class CreateForecastExportJobResponse < Struct.new(
      nil,
      :forecast_export_job_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute forecast_name
    #   <p>A name for the forecast.</p>
    #   @return [String]
    # @!attribute predictor_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor to use to generate the forecast.</p>
    #   @return [String]
    # @!attribute forecast_types
    #   <p>The quantiles at which probabilistic forecasts are generated. <b>You
    #           can currently specify up to 5 quantiles per forecast</b>. Accepted values include
    #           <code>0.01 to 0.99</code> (increments of .01 only) and <code>mean</code>. The mean forecast
    #         is different from the median (0.50) when the distribution is not symmetric (for example, Beta
    #         and Negative Binomial).
    #         </p>
    #            <p>The default quantiles are the quantiles you specified during predictor creation.
    #         If you didn't specify quantiles, the default values are <code>["0.1", "0.5", "0.9"]</code>.
    #       </p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The optional metadata that you apply to the forecast to help you categorize and organize
    #         them. Each tag consists of a key and an optional value, both of which you define.</p>
    #            <p>The following basic restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of tags per resource - 50.</p>
    #               </li>
    #               <li>
    #                  <p>For each resource, each tag key must be unique, and each tag key can have only one
    #             value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length - 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length - 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>If your tagging schema is used across multiple services and resources, remember that
    #             other services may have restrictions on allowed characters. Generally allowed characters
    #             are: letters, numbers, and spaces representable in UTF-8, and the following characters: +
    #             - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination
    #             of such as a prefix for keys as it is reserved for Amazon Web Services use. You cannot edit or delete tag
    #             keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as
    #             its prefix but the key does not, then Forecast considers it to be a user tag and will
    #             count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do
    #             not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Tag>]
    # @!attribute time_series_selector
    #   <p>Defines the set of time series that are used to create the forecasts in a <code>TimeSeriesIdentifiers</code> object.</p>
    #            <p>The <code>TimeSeriesIdentifiers</code> object needs the following information:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DataSource</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Format</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Schema</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Types::TimeSeriesSelector]
    class CreateForecastRequest < Struct.new(
      nil,
      :forecast_name,
      :predictor_arn,
      :forecast_types,
      :tags,
      :time_series_selector,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute forecast_arn
    #   <p>The Amazon Resource Name (ARN) of the forecast.</p>
    #   @return [String]
    class CreateForecastResponse < Struct.new(
      nil,
      :forecast_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_name
    #   <p>The name of the monitor resource.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor to monitor.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/forecast/latest/dg/tagging-forecast-resources.html">tags</a> to apply to the monitor resource.</p>
    #   @return [Array<Types::Tag>]
    class CreateMonitorRequest < Struct.new(
      nil,
      :monitor_name,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_arn
    #   <p>The Amazon Resource Name (ARN) of the monitor resource.</p>
    #   @return [String]
    class CreateMonitorResponse < Struct.new(
      nil,
      :monitor_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute predictor_backtest_export_job_name
    #   <p>The name for the backtest export job.</p>
    #   @return [String]
    # @!attribute predictor_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor that you want to export.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The destination for an export job. Provide an S3 path, an Identity and Access Management (IAM) role that allows Amazon Forecast
    #         to access the location, and an Key Management Service (KMS) key (optional). </p>
    #   @return [Types::DataDestination]
    # @!attribute tags
    #   <p>Optional metadata to help you categorize and organize your backtests. Each tag
    #               consists of a key and an optional value, both of which you define. Tag keys and values
    #               are case sensitive.</p>
    #            <p>The following restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>For each resource, each tag key must be unique and each tag key must have one
    #                       value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum number of tags per resource: 50.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length: 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length: 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Accepted characters: all letters and numbers, spaces representable in UTF-8,
    #                       and + - = . _ : / @. If your tagging schema is used across other services and
    #                       resources, the character restrictions of those services also apply. </p>
    #               </li>
    #               <li>
    #                  <p>Key prefixes cannot include any upper or lowercase combination of
    #                           <code>aws:</code> or <code>AWS:</code>. Values can have this prefix. If a
    #                       tag value has <code>aws</code> as its prefix but the key does not, Forecast
    #                       considers it to be a user tag and will count against the limit of 50 tags. Tags
    #                       with only the key prefix of <code>aws</code> do not count against your tags per
    #                       resource limit. You cannot edit or delete tag keys with this prefix.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Tag>]
    # @!attribute format
    #   <p>The format of the exported data, CSV or PARQUET. The default value is CSV.</p>
    #   @return [String]
    class CreatePredictorBacktestExportJobRequest < Struct.new(
      nil,
      :predictor_backtest_export_job_name,
      :predictor_arn,
      :destination,
      :tags,
      :format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute predictor_backtest_export_job_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor backtest export job that you want to
    #               export.</p>
    #   @return [String]
    class CreatePredictorBacktestExportJobResponse < Struct.new(
      nil,
      :predictor_backtest_export_job_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute predictor_name
    #   <p>A name for the predictor.</p>
    #   @return [String]
    # @!attribute algorithm_arn
    #   <p>The Amazon Resource Name (ARN) of the algorithm to use for model training. Required if
    #           <code>PerformAutoML</code> is not set to <code>true</code>.</p>
    #            <p class="title">
    #               <b>Supported algorithms:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:forecast:::algorithm/ARIMA</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:forecast:::algorithm/CNN-QR</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:forecast:::algorithm/Deep_AR_Plus</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:forecast:::algorithm/ETS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:forecast:::algorithm/NPTS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:forecast:::algorithm/Prophet</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute forecast_horizon
    #   <p>Specifies the number of time-steps that the model is trained to predict. The forecast
    #         horizon is also called the prediction length.</p>
    #            <p>For example, if you configure a dataset for daily data collection (using the
    #           <code>DataFrequency</code> parameter of the <a>CreateDataset</a> operation) and
    #         set the forecast horizon to 10, the model returns predictions for 10 days.</p>
    #            <p>The maximum forecast horizon is the lesser of 500 time-steps or 1/3 of the
    #         TARGET_TIME_SERIES dataset length.</p>
    #   @return [Integer]
    # @!attribute forecast_types
    #   <p>Specifies the forecast types used to train a predictor. You can specify up to five
    #         forecast types. Forecast types can be quantiles from 0.01 to 0.99, by increments of 0.01 or
    #         higher. You can also specify the mean forecast with <code>mean</code>. </p>
    #            <p>The default value is <code>["0.10", "0.50", "0.9"]</code>.</p>
    #   @return [Array<String>]
    # @!attribute perform_auto_ml
    #   <p>Whether to perform AutoML. When Amazon Forecast performs AutoML, it evaluates the algorithms it
    #         provides and chooses the best algorithm and configuration for your training dataset.</p>
    #            <p>The default value is <code>false</code>. In this case, you are required to specify an
    #         algorithm.</p>
    #            <p>Set <code>PerformAutoML</code> to <code>true</code> to have Amazon Forecast perform AutoML. This
    #         is a good option if you aren't sure which algorithm is suitable for your training data. In
    #         this case, <code>PerformHPO</code> must be false.</p>
    #   @return [Boolean]
    # @!attribute auto_ml_override_strategy
    #   <note>
    #               <p> The <code>LatencyOptimized</code> AutoML override strategy is only available in private beta.
    #                   Contact Amazon Web Services Support or your account manager to learn more about access privileges.
    #               </p>
    #            </note>
    #            <p>Used to overide the default AutoML strategy, which is to optimize predictor accuracy.
    #               To apply an AutoML strategy that minimizes training time, use
    #                   <code>LatencyOptimized</code>.</p>
    #            <p>This parameter is only valid for predictors trained using AutoML.</p>
    #   @return [String]
    # @!attribute perform_hpo
    #   <p>Whether to perform hyperparameter optimization (HPO). HPO finds optimal hyperparameter
    #         values for your training data. The process of performing HPO is known as running a
    #         hyperparameter tuning job.</p>
    #            <p>The default value is <code>false</code>. In this case, Amazon Forecast uses default
    #         hyperparameter values from the chosen algorithm.</p>
    #            <p>To override the default values, set <code>PerformHPO</code> to <code>true</code> and,
    #         optionally, supply the <a>HyperParameterTuningJobConfig</a> object. The tuning job
    #         specifies a metric to optimize, which hyperparameters participate in tuning, and the valid
    #         range for each tunable hyperparameter. In this case, you are required to specify an algorithm
    #         and <code>PerformAutoML</code> must be false.</p>
    #            <p>The following algorithms support HPO:</p>
    #            <ul>
    #               <li>
    #                  <p>DeepAR+</p>
    #               </li>
    #               <li>
    #                  <p>CNN-QR</p>
    #               </li>
    #            </ul>
    #   @return [Boolean]
    # @!attribute training_parameters
    #   <p>The hyperparameters to override for model training. The hyperparameters that you can
    #         override are listed in the individual algorithms. For the list of supported algorithms, see
    #           <a>aws-forecast-choosing-recipes</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute evaluation_parameters
    #   <p>Used to override the default evaluation parameters of the specified algorithm. Amazon Forecast
    #         evaluates a predictor by splitting a dataset into training data and testing data. The
    #         evaluation parameters define how to perform the split and the number of iterations.</p>
    #   @return [Types::EvaluationParameters]
    # @!attribute hpo_config
    #   <p>Provides hyperparameter override values for the algorithm. If you don't provide this
    #         parameter, Amazon Forecast uses default values. The individual algorithms specify which
    #         hyperparameters support hyperparameter optimization (HPO). For more information, see <a>aws-forecast-choosing-recipes</a>.</p>
    #            <p>If you included the <code>HPOConfig</code> object, you must set <code>PerformHPO</code> to
    #         true.</p>
    #   @return [Types::HyperParameterTuningJobConfig]
    # @!attribute input_data_config
    #   <p>Describes the dataset group that contains the data to use to train the predictor.</p>
    #   @return [Types::InputDataConfig]
    # @!attribute featurization_config
    #   <p>The featurization configuration.</p>
    #   @return [Types::FeaturizationConfig]
    # @!attribute encryption_config
    #   <p>An Key Management Service (KMS) key and the Identity and Access Management (IAM) role that Amazon Forecast can assume to access
    #         the key.</p>
    #   @return [Types::EncryptionConfig]
    # @!attribute tags
    #   <p>The optional metadata that you apply to the predictor to help you categorize and organize
    #         them. Each tag consists of a key and an optional value, both of which you define.</p>
    #            <p>The following basic restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of tags per resource - 50.</p>
    #               </li>
    #               <li>
    #                  <p>For each resource, each tag key must be unique, and each tag key can have only one
    #             value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length - 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length - 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>If your tagging schema is used across multiple services and resources, remember that
    #             other services may have restrictions on allowed characters. Generally allowed characters
    #             are: letters, numbers, and spaces representable in UTF-8, and the following characters: +
    #             - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination
    #             of such as a prefix for keys as it is reserved for Amazon Web Services use. You cannot edit or delete tag
    #             keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as
    #             its prefix but the key does not, then Forecast considers it to be a user tag and will
    #             count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do
    #             not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Tag>]
    # @!attribute optimization_metric
    #   <p>The accuracy metric used to optimize the predictor.</p>
    #   @return [String]
    class CreatePredictorRequest < Struct.new(
      nil,
      :predictor_name,
      :algorithm_arn,
      :forecast_horizon,
      :forecast_types,
      :perform_auto_ml,
      :auto_ml_override_strategy,
      :perform_hpo,
      :training_parameters,
      :evaluation_parameters,
      :hpo_config,
      :input_data_config,
      :featurization_config,
      :encryption_config,
      :tags,
      :optimization_metric,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute predictor_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor.</p>
    #   @return [String]
    class CreatePredictorResponse < Struct.new(
      nil,
      :predictor_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute what_if_analysis_name
    #   <p>The name of the what-if analysis. Each name must be unique.</p>
    #   @return [String]
    # @!attribute forecast_arn
    #   <p>The Amazon Resource Name (ARN) of the baseline forecast.</p>
    #   @return [String]
    # @!attribute time_series_selector
    #   <p>Defines the set of time series that are used in the what-if analysis with a <code>TimeSeriesIdentifiers</code>
    #         object. What-if analyses are performed only for the time series in this object.</p>
    #            <p>The <code>TimeSeriesIdentifiers</code> object needs the following information:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DataSource</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Format</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Schema</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Types::TimeSeriesSelector]
    # @!attribute tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/forecast/latest/dg/tagging-forecast-resources.html">tags</a> to apply to the what if forecast.</p>
    #   @return [Array<Types::Tag>]
    class CreateWhatIfAnalysisRequest < Struct.new(
      nil,
      :what_if_analysis_name,
      :forecast_arn,
      :time_series_selector,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute what_if_analysis_arn
    #   <p>The Amazon Resource Name (ARN) of the what-if analysis.</p>
    #   @return [String]
    class CreateWhatIfAnalysisResponse < Struct.new(
      nil,
      :what_if_analysis_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute what_if_forecast_export_name
    #   <p>The name of the what-if forecast to export.</p>
    #   @return [String]
    # @!attribute what_if_forecast_arns
    #   <p>The list of what-if forecast Amazon Resource Names (ARNs) to export.</p>
    #   @return [Array<String>]
    # @!attribute destination
    #   <p>The location where you want to save the forecast and an Identity and Access Management (IAM) role that
    #         Amazon Forecast can assume to access the location. The forecast must be exported to an Amazon S3
    #         bucket.</p>
    #            <p>If encryption is used, <code>Destination</code> must include an Key Management Service (KMS) key. The
    #         IAM role must allow Amazon Forecast permission to access the key.</p>
    #   @return [Types::DataDestination]
    # @!attribute tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/forecast/latest/dg/tagging-forecast-resources.html">tags</a> to apply to the what if forecast.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute format
    #   <p>The format of the exported data, CSV or PARQUET.</p>
    #   @return [String]
    class CreateWhatIfForecastExportRequest < Struct.new(
      nil,
      :what_if_forecast_export_name,
      :what_if_forecast_arns,
      :destination,
      :tags,
      :format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute what_if_forecast_export_arn
    #   <p>The Amazon Resource Name (ARN) of the what-if forecast.</p>
    #   @return [String]
    class CreateWhatIfForecastExportResponse < Struct.new(
      nil,
      :what_if_forecast_export_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute what_if_forecast_name
    #   <p>The name of the what-if forecast. Names must be unique within each what-if analysis.</p>
    #   @return [String]
    # @!attribute what_if_analysis_arn
    #   <p>The Amazon Resource Name (ARN) of the what-if analysis.</p>
    #   @return [String]
    # @!attribute time_series_transformations
    #   <p>The transformations that are applied to the baseline time series. Each transformation contains an action and a set of conditions. An action is applied only when all conditions are met. If no conditions are provided, the action is applied to all items.</p>
    #   @return [Array<Types::TimeSeriesTransformation>]
    # @!attribute time_series_replacements_data_source
    #   <p>The replacement time series dataset, which contains the rows that you want to change in the related time
    #         series dataset. A replacement time series does not need to contain all rows that are in the baseline related time
    #         series. Include only the rows (measure-dimension combinations) that you want to include in the what-if
    #         forecast.</p>
    #            <p>This dataset is merged with the
    #         original time series to create a transformed dataset that is used for the what-if analysis.</p>
    #            <p>This dataset should contain the items to modify (such as item_id or workforce_type), any relevant dimensions, the timestamp column, and at least one of the related time series columns. This file should not contain duplicate timestamps for the same time series.</p>
    #            <p>Timestamps and item_ids not included in this dataset are not included in the what-if analysis. </p>
    #   @return [Types::TimeSeriesReplacementsDataSource]
    # @!attribute tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/forecast/latest/dg/tagging-forecast-resources.html">tags</a> to apply to the what if forecast.</p>
    #   @return [Array<Types::Tag>]
    class CreateWhatIfForecastRequest < Struct.new(
      nil,
      :what_if_forecast_name,
      :what_if_analysis_arn,
      :time_series_transformations,
      :time_series_replacements_data_source,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute what_if_forecast_arn
    #   <p>The Amazon Resource Name (ARN) of the what-if forecast.</p>
    #   @return [String]
    class CreateWhatIfForecastResponse < Struct.new(
      nil,
      :what_if_forecast_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The data configuration for your dataset group and any additional datasets.</p>
    # @!attribute dataset_group_arn
    #   <p>The ARN of the dataset group used to train the predictor.</p>
    #   @return [String]
    # @!attribute attribute_configs
    #   <p>Aggregation and filling options for attributes in your dataset group.</p>
    #   @return [Array<Types::AttributeConfig>]
    # @!attribute additional_datasets
    #   <p>Additional built-in datasets like Holidays and the Weather Index.</p>
    #   @return [Array<Types::AdditionalDataset>]
    class DataConfig < Struct.new(
      nil,
      :dataset_group_arn,
      :attribute_configs,
      :additional_datasets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The destination for an export job. Provide an S3 path, an Identity and Access Management (IAM) role that allows Amazon Forecast
    #       to access the location, and an Key Management Service (KMS) key (optional). </p>
    # @!attribute s3_config
    #   <p>The path to an Amazon Simple Storage Service (Amazon S3) bucket along with the credentials to access the
    #         bucket.</p>
    #   @return [Types::S3Config]
    class DataDestination < Struct.new(
      nil,
      :s3_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The source of your data, an Identity and Access Management (IAM) role that allows Amazon Forecast to
    #       access the data and, optionally, an Key Management Service (KMS) key.</p>
    # @!attribute s3_config
    #   <p>The path to the data stored in an Amazon Simple Storage Service (Amazon S3) bucket along with the
    #         credentials to access the data.</p>
    #   @return [Types::S3Config]
    class DataSource < Struct.new(
      nil,
      :s3_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of the dataset group properties used in the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_ListDatasetGroups.html">ListDatasetGroups</a> operation. To
    #       get the complete set of properties, call the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetGroup.html">DescribeDatasetGroup</a>
    #       operation, and provide the <code>DatasetGroupArn</code>.</p>
    # @!attribute dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group.</p>
    #   @return [String]
    # @!attribute dataset_group_name
    #   <p>The name of the dataset group.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the dataset group was created.</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>When the dataset group was created or last updated from a call to the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_UpdateDatasetGroup.html">UpdateDatasetGroup</a> operation. While the dataset group is being updated,
    #           <code>LastModificationTime</code> is the current time of the <code>ListDatasetGroups</code>
    #         call.</p>
    #   @return [Time]
    class DatasetGroupSummary < Struct.new(
      nil,
      :dataset_group_arn,
      :dataset_group_name,
      :creation_time,
      :last_modification_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of the dataset import job properties used in the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_ListDatasetImportJobs.html">ListDatasetImportJobs</a> operation. To get the complete set of properties, call the
    #         <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetImportJob.html">DescribeDatasetImportJob</a> operation, and provide the
    #         <code>DatasetImportJobArn</code>.</p>
    # @!attribute dataset_import_job_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset import job.</p>
    #   @return [String]
    # @!attribute dataset_import_job_name
    #   <p>The name of the dataset import job.</p>
    #   @return [String]
    # @!attribute data_source
    #   <p>The location of the training data to import and an Identity and Access Management (IAM) role that Amazon Forecast
    #         can assume to access the data. The training data must be stored in an Amazon S3 bucket.</p>
    #            <p>If encryption is used, <code>DataSource</code> includes an Key Management Service (KMS) key.</p>
    #   @return [Types::DataSource]
    # @!attribute status
    #   <p>The status of the dataset import job. States include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
    #               <code>CREATE_FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
    #               <code>DELETE_FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code>, <code>CREATE_STOPPED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute message
    #   <p>If an error occurred, an informational message about the error.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the dataset import job was created.</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The last time the resource was modified. The timestamp depends on the status of the
    #         job:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code> - The <code>CreationTime</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPED</code> - When the job stopped.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> or <code>CREATE_FAILED</code> - When the job finished or
    #             failed.</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    # @!attribute import_mode
    #   <p>The import mode of the dataset import job, FULL or INCREMENTAL.</p>
    #   @return [String]
    class DatasetImportJobSummary < Struct.new(
      nil,
      :dataset_import_job_arn,
      :dataset_import_job_name,
      :data_source,
      :status,
      :message,
      :creation_time,
      :last_modification_time,
      :import_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of the dataset properties used in the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_ListDatasets.html">ListDatasets</a> operation. To get the
    #       complete set of properties, call the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDataset.html">DescribeDataset</a> operation, and
    #       provide the <code>DatasetArn</code>.</p>
    # @!attribute dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset.</p>
    #   @return [String]
    # @!attribute dataset_name
    #   <p>The name of the dataset.</p>
    #   @return [String]
    # @!attribute dataset_type
    #   <p>The dataset type.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The domain associated with the dataset.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the dataset was created.</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>When you create a dataset, <code>LastModificationTime</code> is the same as
    #           <code>CreationTime</code>. While data is being imported to the dataset,
    #           <code>LastModificationTime</code> is the current time of the <code>ListDatasets</code> call.
    #         After a <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetImportJob.html">CreateDatasetImportJob</a> operation has finished, <code>LastModificationTime</code> is
    #         when the import job completed or failed.</p>
    #   @return [Time]
    class DatasetSummary < Struct.new(
      nil,
      :dataset_arn,
      :dataset_name,
      :dataset_type,
      :domain,
      :creation_time,
      :last_modification_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group to delete.</p>
    #   @return [String]
    class DeleteDatasetGroupRequest < Struct.new(
      nil,
      :dataset_group_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_import_job_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset import job to delete.</p>
    #   @return [String]
    class DeleteDatasetImportJobRequest < Struct.new(
      nil,
      :dataset_import_job_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset to delete.</p>
    #   @return [String]
    class DeleteDatasetRequest < Struct.new(
      nil,
      :dataset_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute explainability_export_arn
    #   <p>The Amazon Resource Name (ARN) of the Explainability export to delete. </p>
    #   @return [String]
    class DeleteExplainabilityExportRequest < Struct.new(
      nil,
      :explainability_export_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute explainability_arn
    #   <p>The Amazon Resource Name (ARN) of the Explainability resource to delete.</p>
    #   @return [String]
    class DeleteExplainabilityRequest < Struct.new(
      nil,
      :explainability_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute forecast_export_job_arn
    #   <p>The Amazon Resource Name (ARN) of the forecast export job to delete.</p>
    #   @return [String]
    class DeleteForecastExportJobRequest < Struct.new(
      nil,
      :forecast_export_job_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute forecast_arn
    #   <p>The Amazon Resource Name (ARN) of the forecast to delete.</p>
    #   @return [String]
    class DeleteForecastRequest < Struct.new(
      nil,
      :forecast_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_arn
    #   <p>The Amazon Resource Name (ARN) of the monitor resource to delete.</p>
    #   @return [String]
    class DeleteMonitorRequest < Struct.new(
      nil,
      :monitor_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute predictor_backtest_export_job_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor backtest export job to delete.</p>
    #   @return [String]
    class DeletePredictorBacktestExportJobRequest < Struct.new(
      nil,
      :predictor_backtest_export_job_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute predictor_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor to delete.</p>
    #   @return [String]
    class DeletePredictorRequest < Struct.new(
      nil,
      :predictor_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the parent resource to delete. All child resources
    #               of the parent resource will also be deleted.</p>
    #   @return [String]
    class DeleteResourceTreeRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute what_if_analysis_arn
    #   <p>The Amazon Resource Name (ARN) of the what-if analysis that you want to delete.</p>
    #   @return [String]
    class DeleteWhatIfAnalysisRequest < Struct.new(
      nil,
      :what_if_analysis_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute what_if_forecast_export_arn
    #   <p>The Amazon Resource Name (ARN) of the what-if forecast export that you want to delete.</p>
    #   @return [String]
    class DeleteWhatIfForecastExportRequest < Struct.new(
      nil,
      :what_if_forecast_export_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute what_if_forecast_arn
    #   <p>The Amazon Resource Name (ARN) of the what-if forecast that you want to delete.</p>
    #   @return [String]
    class DeleteWhatIfForecastRequest < Struct.new(
      nil,
      :what_if_forecast_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute predictor_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor.</p>
    #   @return [String]
    class DescribeAutoPredictorRequest < Struct.new(
      nil,
      :predictor_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute predictor_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor</p>
    #   @return [String]
    # @!attribute predictor_name
    #   <p>The name of the predictor.</p>
    #   @return [String]
    # @!attribute forecast_horizon
    #   <p>The number of time-steps that the model predicts. The forecast horizon is also called
    #               the prediction length.</p>
    #   @return [Integer]
    # @!attribute forecast_types
    #   <p>The forecast types used during predictor training. Default value is
    #               ["0.1","0.5","0.9"].</p>
    #   @return [Array<String>]
    # @!attribute forecast_frequency
    #   <p>The frequency of predictions in a forecast.</p>
    #            <p>Valid intervals are Y (Year), M (Month), W (Week), D (Day), H (Hour), 30min (30
    #               minutes), 15min (15 minutes), 10min (10 minutes), 5min (5 minutes), and 1min (1 minute).
    #               For example, "Y" indicates every year and "5min" indicates every five minutes.</p>
    #   @return [String]
    # @!attribute forecast_dimensions
    #   <p>An array of dimension (field) names that specify the attributes used to group your
    #               time series.</p>
    #   @return [Array<String>]
    # @!attribute dataset_import_job_arns
    #   <p>An array of the ARNs of the dataset import jobs used to import training data for the
    #               predictor.</p>
    #   @return [Array<String>]
    # @!attribute data_config
    #   <p>The data configuration for your dataset group and any additional datasets.</p>
    #   @return [Types::DataConfig]
    # @!attribute encryption_config
    #   <p>An Key Management Service (KMS) key and an Identity and Access Management (IAM) role that Amazon Forecast can assume to
    #         access the key. You can specify this optional object in the
    #         <a>CreateDataset</a> and <a>CreatePredictor</a> requests.</p>
    #   @return [Types::EncryptionConfig]
    # @!attribute reference_predictor_summary
    #   <p>The ARN and state of the reference predictor. This parameter is only valid for
    #               retrained or upgraded predictors.</p>
    #   @return [Types::ReferencePredictorSummary]
    # @!attribute estimated_time_remaining_in_minutes
    #   <p>The estimated time remaining in minutes for the predictor training job to
    #               complete.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the predictor. States include: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
    #                           <code>CREATE_FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code>, <code>CREATE_STOPPED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
    #                           <code>DELETE_FAILED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute message
    #   <p>In the event of an error, a message detailing the cause of the error.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The timestamp of the CreateAutoPredictor request.</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The last time the resource was modified. The timestamp depends on the status of the
    #               job:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code> - The <code>CreationTime</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPED</code> - When the job stopped.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> or <code>CREATE_FAILED</code> - When the job finished or
    #                       failed.</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    # @!attribute optimization_metric
    #   <p>The accuracy metric used to optimize the predictor.</p>
    #   @return [String]
    # @!attribute explainability_info
    #   <p>Provides the status and ARN of the Predictor Explainability.</p>
    #   @return [Types::ExplainabilityInfo]
    # @!attribute monitor_info
    #   <p>A  object with the Amazon Resource Name (ARN) and status of the monitor resource.</p>
    #   @return [Types::MonitorInfo]
    # @!attribute time_alignment_boundary
    #   <p>The time boundary Forecast uses when aggregating data.</p>
    #   @return [Types::TimeAlignmentBoundary]
    class DescribeAutoPredictorResponse < Struct.new(
      nil,
      :predictor_arn,
      :predictor_name,
      :forecast_horizon,
      :forecast_types,
      :forecast_frequency,
      :forecast_dimensions,
      :dataset_import_job_arns,
      :data_config,
      :encryption_config,
      :reference_predictor_summary,
      :estimated_time_remaining_in_minutes,
      :status,
      :message,
      :creation_time,
      :last_modification_time,
      :optimization_metric,
      :explainability_info,
      :monitor_info,
      :time_alignment_boundary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group.</p>
    #   @return [String]
    class DescribeDatasetGroupRequest < Struct.new(
      nil,
      :dataset_group_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_group_name
    #   <p>The name of the dataset group.</p>
    #   @return [String]
    # @!attribute dataset_group_arn
    #   <p>The ARN of the dataset group.</p>
    #   @return [String]
    # @!attribute dataset_arns
    #   <p>An array of Amazon Resource Names (ARNs) of the datasets contained in the dataset
    #         group.</p>
    #   @return [Array<String>]
    # @!attribute domain
    #   <p>The domain associated with the dataset group.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the dataset group. States include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
    #               <code>CREATE_FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
    #               <code>DELETE_FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_PENDING</code>, <code>UPDATE_IN_PROGRESS</code>,
    #               <code>UPDATE_FAILED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The <code>UPDATE</code> states apply when you call the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_UpdateDatasetGroup.html">UpdateDatasetGroup</a>
    #         operation.</p>
    #            <note>
    #               <p>The <code>Status</code> of the dataset group must be <code>ACTIVE</code> before you can
    #           use the dataset group to create a predictor.</p>
    #            </note>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the dataset group was created.</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>When the dataset group was created or last updated from a call to the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_UpdateDatasetGroup.html">UpdateDatasetGroup</a> operation. While the dataset group is being updated,
    #           <code>LastModificationTime</code> is the current time of the
    #           <code>DescribeDatasetGroup</code> call.</p>
    #   @return [Time]
    class DescribeDatasetGroupResponse < Struct.new(
      nil,
      :dataset_group_name,
      :dataset_group_arn,
      :dataset_arns,
      :domain,
      :status,
      :creation_time,
      :last_modification_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_import_job_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset import job.</p>
    #   @return [String]
    class DescribeDatasetImportJobRequest < Struct.new(
      nil,
      :dataset_import_job_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_import_job_name
    #   <p>The name of the dataset import job.</p>
    #   @return [String]
    # @!attribute dataset_import_job_arn
    #   <p>The ARN of the dataset import job.</p>
    #   @return [String]
    # @!attribute dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset that the training data was imported
    #         to.</p>
    #   @return [String]
    # @!attribute timestamp_format
    #   <p>The format of timestamps in the dataset. The format that you specify depends on the
    #           <code>DataFrequency</code> specified when the dataset was created. The following formats are
    #         supported</p>
    #            <ul>
    #               <li>
    #                  <p>"yyyy-MM-dd"</p>
    #                  <p>For the following data frequencies: Y, M, W, and D</p>
    #               </li>
    #               <li>
    #                  <p>"yyyy-MM-dd HH:mm:ss"</p>
    #                  <p>For the following data frequencies: H, 30min, 15min, and 1min; and optionally, for: Y,
    #             M, W, and D</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute time_zone
    #   <p>The single time zone applied to every item in the dataset</p>
    #   @return [String]
    # @!attribute use_geolocation_for_time_zone
    #   <p>Whether <code>TimeZone</code> is automatically derived from the geolocation
    #               attribute.</p>
    #   @return [Boolean]
    # @!attribute geolocation_format
    #   <p>The format of the geolocation attribute. Valid Values:<code>"LAT_LONG"</code> and
    #                   <code>"CC_POSTALCODE"</code>.</p>
    #   @return [String]
    # @!attribute data_source
    #   <p>The location of the training data to import and an Identity and Access Management (IAM) role that Amazon Forecast
    #         can assume to access the data.</p>
    #            <p>If encryption is used, <code>DataSource</code> includes an Key Management Service (KMS) key.</p>
    #   @return [Types::DataSource]
    # @!attribute estimated_time_remaining_in_minutes
    #   <p>The estimated time remaining in minutes for the dataset import job to complete.</p>
    #   @return [Integer]
    # @!attribute field_statistics
    #   <p>Statistical information about each field in the input data.</p>
    #   @return [Hash<String, Types::Statistics>]
    # @!attribute data_size
    #   <p>The size of the dataset in gigabytes (GB) after the import job has finished.</p>
    #   @return [Float]
    # @!attribute status
    #   <p>The status of the dataset import job. States include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
    #               <code>CREATE_FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
    #               <code>DELETE_FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code>, <code>CREATE_STOPPED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute message
    #   <p>If an error occurred, an informational message about the error.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the dataset import job was created.</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The last time the resource was modified. The timestamp depends on the status of the
    #         job:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code> - The <code>CreationTime</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPED</code> - When the job stopped.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> or <code>CREATE_FAILED</code> - When the job finished or
    #             failed.</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    # @!attribute format
    #   <p>The format of the imported data, CSV or PARQUET.</p>
    #   @return [String]
    # @!attribute import_mode
    #   <p>The import mode of the dataset import job, FULL or INCREMENTAL.</p>
    #   @return [String]
    class DescribeDatasetImportJobResponse < Struct.new(
      nil,
      :dataset_import_job_name,
      :dataset_import_job_arn,
      :dataset_arn,
      :timestamp_format,
      :time_zone,
      :use_geolocation_for_time_zone,
      :geolocation_format,
      :data_source,
      :estimated_time_remaining_in_minutes,
      :field_statistics,
      :data_size,
      :status,
      :message,
      :creation_time,
      :last_modification_time,
      :format,
      :import_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:use_geolocation_for_time_zone] = false unless options.key?(:use_geolocation_for_time_zone)
        super
      end
    end

    # @!attribute dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset.</p>
    #   @return [String]
    class DescribeDatasetRequest < Struct.new(
      nil,
      :dataset_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset.</p>
    #   @return [String]
    # @!attribute dataset_name
    #   <p>The name of the dataset.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The domain associated with the dataset.</p>
    #   @return [String]
    # @!attribute dataset_type
    #   <p>The dataset type.</p>
    #   @return [String]
    # @!attribute data_frequency
    #   <p>The frequency of data collection.</p>
    #            <p>Valid intervals are Y (Year), M (Month), W (Week), D (Day), H (Hour), 30min (30 minutes),
    #         15min (15 minutes), 10min (10 minutes), 5min (5 minutes), and 1min (1 minute). For example,
    #         "M" indicates every month and "30min" indicates every 30 minutes.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>An array of <code>SchemaAttribute</code> objects that specify the dataset fields. Each
    #           <code>SchemaAttribute</code> specifies the name and data type of a field.</p>
    #   @return [Types::Schema]
    # @!attribute encryption_config
    #   <p>The Key Management Service (KMS) key and the Identity and Access Management (IAM) role that Amazon Forecast can assume to access
    #         the key.</p>
    #   @return [Types::EncryptionConfig]
    # @!attribute status
    #   <p>The status of the dataset. States include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
    #               <code>CREATE_FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
    #               <code>DELETE_FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_PENDING</code>, <code>UPDATE_IN_PROGRESS</code>,
    #               <code>UPDATE_FAILED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The <code>UPDATE</code> states apply while data is imported to the dataset from a call to
    #         the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetImportJob.html">CreateDatasetImportJob</a> operation and reflect the status of the dataset import job.
    #         For example, when the import job status is <code>CREATE_IN_PROGRESS</code>, the status of the
    #         dataset is <code>UPDATE_IN_PROGRESS</code>.</p>
    #            <note>
    #               <p>The <code>Status</code> of the dataset must be <code>ACTIVE</code> before you can import
    #           training data.</p>
    #            </note>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the dataset was created.</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>When you create a dataset, <code>LastModificationTime</code> is the same as
    #           <code>CreationTime</code>. While data is being imported to the dataset,
    #           <code>LastModificationTime</code> is the current time of the <code>DescribeDataset</code>
    #         call. After a <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetImportJob.html">CreateDatasetImportJob</a>
    #         operation has finished, <code>LastModificationTime</code> is when the import job completed or
    #         failed.</p>
    #   @return [Time]
    class DescribeDatasetResponse < Struct.new(
      nil,
      :dataset_arn,
      :dataset_name,
      :domain,
      :dataset_type,
      :data_frequency,
      :schema,
      :encryption_config,
      :status,
      :creation_time,
      :last_modification_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute explainability_export_arn
    #   <p>The Amazon Resource Name (ARN) of the Explainability export.</p>
    #   @return [String]
    class DescribeExplainabilityExportRequest < Struct.new(
      nil,
      :explainability_export_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute explainability_export_arn
    #   <p>The Amazon Resource Name (ARN) of the Explainability export.</p>
    #   @return [String]
    # @!attribute explainability_export_name
    #   <p>The name of the Explainability export.</p>
    #   @return [String]
    # @!attribute explainability_arn
    #   <p>The Amazon Resource Name (ARN) of the Explainability export.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The destination for an export job. Provide an S3 path, an Identity and Access Management (IAM) role that allows Amazon Forecast
    #         to access the location, and an Key Management Service (KMS) key (optional). </p>
    #   @return [Types::DataDestination]
    # @!attribute message
    #   <p>Information about any errors that occurred during the export.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Explainability export. States include: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
    #                           <code>CREATE_FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code>, <code>CREATE_STOPPED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
    #                           <code>DELETE_FAILED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the Explainability export was created.</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The last time the resource was modified. The timestamp depends on the status of the
    #               job:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code> - The <code>CreationTime</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPED</code> - When the job stopped.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> or <code>CREATE_FAILED</code> - When the job finished or
    #                       failed.</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    # @!attribute format
    #   <p>The format of the exported data, CSV or PARQUET.</p>
    #   @return [String]
    class DescribeExplainabilityExportResponse < Struct.new(
      nil,
      :explainability_export_arn,
      :explainability_export_name,
      :explainability_arn,
      :destination,
      :message,
      :status,
      :creation_time,
      :last_modification_time,
      :format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute explainability_arn
    #   <p>The Amazon Resource Name (ARN) of the Explaianability to describe.</p>
    #   @return [String]
    class DescribeExplainabilityRequest < Struct.new(
      nil,
      :explainability_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute explainability_arn
    #   <p>The Amazon Resource Name (ARN) of the Explainability.</p>
    #   @return [String]
    # @!attribute explainability_name
    #   <p>The name of the Explainability.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Predictor or Forecast used to create the
    #               Explainability resource.</p>
    #   @return [String]
    # @!attribute explainability_config
    #   <p>The configuration settings that define the granularity of time series and time points
    #               for the Explainability.</p>
    #   @return [Types::ExplainabilityConfig]
    # @!attribute enable_visualization
    #   <p>Whether the visualization was enabled for the Explainability resource.</p>
    #   @return [Boolean]
    # @!attribute data_source
    #   <p>The source of your data, an Identity and Access Management (IAM) role that allows Amazon Forecast to
    #         access the data and, optionally, an Key Management Service (KMS) key.</p>
    #   @return [Types::DataSource]
    # @!attribute schema
    #   <p>Defines the fields of a dataset.</p>
    #   @return [Types::Schema]
    # @!attribute start_date_time
    #   <p>If <code>TimePointGranularity</code> is set to <code>SPECIFIC</code>, the first time
    #               point in the Explainability.</p>
    #   @return [String]
    # @!attribute end_date_time
    #   <p>If <code>TimePointGranularity</code> is set to <code>SPECIFIC</code>, the last time
    #               point in the Explainability.</p>
    #   @return [String]
    # @!attribute estimated_time_remaining_in_minutes
    #   <p>The estimated time remaining in minutes for the <a>CreateExplainability</a>
    #               job to complete.</p>
    #   @return [Integer]
    # @!attribute message
    #   <p>If an error occurred, a message about the error.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Explainability resource. States include: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
    #                           <code>CREATE_FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code>, <code>CREATE_STOPPED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
    #                           <code>DELETE_FAILED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the Explainability resource was created.</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The last time the resource was modified. The timestamp depends on the status of the
    #               job:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code> - The <code>CreationTime</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPED</code> - When the job stopped.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> or <code>CREATE_FAILED</code> - When the job finished or
    #                       failed.</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    class DescribeExplainabilityResponse < Struct.new(
      nil,
      :explainability_arn,
      :explainability_name,
      :resource_arn,
      :explainability_config,
      :enable_visualization,
      :data_source,
      :schema,
      :start_date_time,
      :end_date_time,
      :estimated_time_remaining_in_minutes,
      :message,
      :status,
      :creation_time,
      :last_modification_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute forecast_export_job_arn
    #   <p>The Amazon Resource Name (ARN) of the forecast export job.</p>
    #   @return [String]
    class DescribeForecastExportJobRequest < Struct.new(
      nil,
      :forecast_export_job_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute forecast_export_job_arn
    #   <p>The ARN of the forecast export job.</p>
    #   @return [String]
    # @!attribute forecast_export_job_name
    #   <p>The name of the forecast export job.</p>
    #   @return [String]
    # @!attribute forecast_arn
    #   <p>The Amazon Resource Name (ARN) of the exported forecast.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The path to the Amazon Simple Storage Service (Amazon S3) bucket where the forecast is exported.</p>
    #   @return [Types::DataDestination]
    # @!attribute message
    #   <p>If an error occurred, an informational message about the error.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the forecast export job. States include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
    #             <code>CREATE_FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code>, <code>CREATE_STOPPED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
    #             <code>DELETE_FAILED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The <code>Status</code> of the forecast export job must be <code>ACTIVE</code> before
    #           you can access the forecast in your S3 bucket.</p>
    #            </note>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the forecast export job was created.</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The last time the resource was modified. The timestamp depends on the status of the job:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code> - The <code>CreationTime</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPED</code> - When the job stopped.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> or <code>CREATE_FAILED</code> - When the job finished or
    #             failed.</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    # @!attribute format
    #   <p>The format of the exported data, CSV or PARQUET.</p>
    #   @return [String]
    class DescribeForecastExportJobResponse < Struct.new(
      nil,
      :forecast_export_job_arn,
      :forecast_export_job_name,
      :forecast_arn,
      :destination,
      :message,
      :status,
      :creation_time,
      :last_modification_time,
      :format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute forecast_arn
    #   <p>The Amazon Resource Name (ARN) of the forecast.</p>
    #   @return [String]
    class DescribeForecastRequest < Struct.new(
      nil,
      :forecast_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute forecast_arn
    #   <p>The forecast ARN as specified in the request.</p>
    #   @return [String]
    # @!attribute forecast_name
    #   <p>The name of the forecast.</p>
    #   @return [String]
    # @!attribute forecast_types
    #   <p>The quantiles at which probabilistic forecasts were generated.</p>
    #   @return [Array<String>]
    # @!attribute predictor_arn
    #   <p>The ARN of the predictor used to generate the forecast.</p>
    #   @return [String]
    # @!attribute dataset_group_arn
    #   <p>The ARN of the dataset group that provided the data used to train the predictor.</p>
    #   @return [String]
    # @!attribute estimated_time_remaining_in_minutes
    #   <p>The estimated time remaining in minutes for the forecast job to complete.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the forecast. States include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
    #             <code>CREATE_FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code>, <code>CREATE_STOPPED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
    #             <code>DELETE_FAILED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The <code>Status</code> of the forecast must be <code>ACTIVE</code> before you can query
    #           or export the forecast.</p>
    #            </note>
    #   @return [String]
    # @!attribute message
    #   <p>If an error occurred, an informational message about the error.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the forecast creation task was created.</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The last time the resource was modified. The timestamp depends on the status of the job:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code> - The <code>CreationTime</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPED</code> - When the job stopped.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> or <code>CREATE_FAILED</code> - When the job finished or
    #             failed.</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    # @!attribute time_series_selector
    #   <p>The time series to include in the forecast.</p>
    #   @return [Types::TimeSeriesSelector]
    class DescribeForecastResponse < Struct.new(
      nil,
      :forecast_arn,
      :forecast_name,
      :forecast_types,
      :predictor_arn,
      :dataset_group_arn,
      :estimated_time_remaining_in_minutes,
      :status,
      :message,
      :creation_time,
      :last_modification_time,
      :time_series_selector,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_arn
    #   <p>The Amazon Resource Name (ARN) of the monitor resource to describe.</p>
    #   @return [String]
    class DescribeMonitorRequest < Struct.new(
      nil,
      :monitor_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_name
    #   <p>The name of the monitor.</p>
    #   @return [String]
    # @!attribute monitor_arn
    #   <p>The Amazon Resource Name (ARN) of the monitor resource described.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the auto predictor being monitored.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the monitor resource.</p>
    #   @return [String]
    # @!attribute last_evaluation_time
    #   <p>The timestamp of the latest evaluation completed by the monitor.</p>
    #   @return [Time]
    # @!attribute last_evaluation_state
    #   <p>The state of the monitor's latest evaluation.</p>
    #   @return [String]
    # @!attribute baseline
    #   <p>Metrics you can use as a baseline for comparison purposes. Use these values you interpret monitoring results for an auto predictor.</p>
    #   @return [Types::Baseline]
    # @!attribute message
    #   <p>An error message, if any, for the monitor.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The timestamp for when the monitor resource was created.</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The timestamp of the latest modification to the monitor.</p>
    #   @return [Time]
    # @!attribute estimated_evaluation_time_remaining_in_minutes
    #   <p>The estimated number of minutes remaining before the monitor resource finishes its current evaluation.</p>
    #   @return [Integer]
    class DescribeMonitorResponse < Struct.new(
      nil,
      :monitor_name,
      :monitor_arn,
      :resource_arn,
      :status,
      :last_evaluation_time,
      :last_evaluation_state,
      :baseline,
      :message,
      :creation_time,
      :last_modification_time,
      :estimated_evaluation_time_remaining_in_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute predictor_backtest_export_job_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor backtest export job.</p>
    #   @return [String]
    class DescribePredictorBacktestExportJobRequest < Struct.new(
      nil,
      :predictor_backtest_export_job_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute predictor_backtest_export_job_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor backtest export job.</p>
    #   @return [String]
    # @!attribute predictor_backtest_export_job_name
    #   <p>The name of the predictor backtest export job.</p>
    #   @return [String]
    # @!attribute predictor_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The destination for an export job. Provide an S3 path, an Identity and Access Management (IAM) role that allows Amazon Forecast
    #         to access the location, and an Key Management Service (KMS) key (optional). </p>
    #   @return [Types::DataDestination]
    # @!attribute message
    #   <p>Information about any errors that may have occurred during the backtest export.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the predictor backtest export job. States include: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
    #                           <code>CREATE_FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code>, <code>CREATE_STOPPED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
    #                           <code>DELETE_FAILED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the predictor backtest export job was created.</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The last time the resource was modified. The timestamp depends on the status of the
    #               job:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code> - The <code>CreationTime</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPED</code> - When the job stopped.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> or <code>CREATE_FAILED</code> - When the job finished or
    #                       failed.</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    # @!attribute format
    #   <p>The format of the exported data, CSV or PARQUET.</p>
    #   @return [String]
    class DescribePredictorBacktestExportJobResponse < Struct.new(
      nil,
      :predictor_backtest_export_job_arn,
      :predictor_backtest_export_job_name,
      :predictor_arn,
      :destination,
      :message,
      :status,
      :creation_time,
      :last_modification_time,
      :format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute predictor_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor that you want information about.</p>
    #   @return [String]
    class DescribePredictorRequest < Struct.new(
      nil,
      :predictor_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute predictor_arn
    #   <p>The ARN of the predictor.</p>
    #   @return [String]
    # @!attribute predictor_name
    #   <p>The name of the predictor.</p>
    #   @return [String]
    # @!attribute algorithm_arn
    #   <p>The Amazon Resource Name (ARN) of the algorithm used for model training.</p>
    #   @return [String]
    # @!attribute auto_ml_algorithm_arns
    #   <p>When <code>PerformAutoML</code> is specified, the ARN of the chosen algorithm.</p>
    #   @return [Array<String>]
    # @!attribute forecast_horizon
    #   <p>The number of time-steps of the forecast. The forecast horizon is also called the
    #         prediction length.</p>
    #   @return [Integer]
    # @!attribute forecast_types
    #   <p>The forecast types used during predictor training. Default value is
    #           <code>["0.1","0.5","0.9"]</code>
    #            </p>
    #   @return [Array<String>]
    # @!attribute perform_auto_ml
    #   <p>Whether the predictor is set to perform AutoML.</p>
    #   @return [Boolean]
    # @!attribute auto_ml_override_strategy
    #   <note>
    #               <p> The <code>LatencyOptimized</code> AutoML override strategy is only available in private beta.
    #                   Contact Amazon Web Services Support or your account manager to learn more about access privileges.
    #               </p>
    #            </note>
    #            <p>The AutoML strategy used to train the predictor. Unless <code>LatencyOptimized</code>
    #               is specified, the AutoML strategy optimizes predictor accuracy.</p>
    #            <p>This parameter is only valid for predictors trained using AutoML.</p>
    #   @return [String]
    # @!attribute perform_hpo
    #   <p>Whether the predictor is set to perform hyperparameter optimization (HPO).</p>
    #   @return [Boolean]
    # @!attribute training_parameters
    #   <p>The default training parameters or overrides selected during model training. When running
    #         AutoML or choosing HPO with CNN-QR or DeepAR+, the optimized values for the chosen
    #         hyperparameters are returned. For more information, see <a>aws-forecast-choosing-recipes</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute evaluation_parameters
    #   <p>Used to override the default evaluation parameters of the specified algorithm. Amazon Forecast
    #         evaluates a predictor by splitting a dataset into training data and testing data. The
    #         evaluation parameters define how to perform the split and the number of iterations.</p>
    #   @return [Types::EvaluationParameters]
    # @!attribute hpo_config
    #   <p>The hyperparameter override values for the algorithm.</p>
    #   @return [Types::HyperParameterTuningJobConfig]
    # @!attribute input_data_config
    #   <p>Describes the dataset group that contains the data to use to train the predictor.</p>
    #   @return [Types::InputDataConfig]
    # @!attribute featurization_config
    #   <p>The featurization configuration.</p>
    #   @return [Types::FeaturizationConfig]
    # @!attribute encryption_config
    #   <p>An Key Management Service (KMS) key and the Identity and Access Management (IAM) role that Amazon Forecast can assume to access
    #         the key.</p>
    #   @return [Types::EncryptionConfig]
    # @!attribute predictor_execution_details
    #   <p>Details on the the status and results of the backtests performed to evaluate the accuracy
    #         of the predictor. You specify the number of backtests to perform when you call the  operation.</p>
    #   @return [Types::PredictorExecutionDetails]
    # @!attribute estimated_time_remaining_in_minutes
    #   <p>The estimated time remaining in minutes for the predictor training job to complete.</p>
    #   @return [Integer]
    # @!attribute is_auto_predictor
    #   <p>Whether the predictor was created with <a>CreateAutoPredictor</a>.</p>
    #   @return [Boolean]
    # @!attribute dataset_import_job_arns
    #   <p>An array of the ARNs of the dataset import jobs used to import training data for the
    #         predictor.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The status of the predictor. States include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
    #               <code>CREATE_FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
    #               <code>DELETE_FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code>, <code>CREATE_STOPPED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The <code>Status</code> of the predictor must be <code>ACTIVE</code> before you can use
    #           the predictor to create a forecast.</p>
    #            </note>
    #   @return [String]
    # @!attribute message
    #   <p>If an error occurred, an informational message about the error.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the model training task was created.</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The last time the resource was modified. The timestamp depends on the status of the
    #         job:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code> - The <code>CreationTime</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPED</code> - When the job stopped.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> or <code>CREATE_FAILED</code> - When the job finished or
    #             failed.</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    # @!attribute optimization_metric
    #   <p>The accuracy metric used to optimize the predictor.</p>
    #   @return [String]
    class DescribePredictorResponse < Struct.new(
      nil,
      :predictor_arn,
      :predictor_name,
      :algorithm_arn,
      :auto_ml_algorithm_arns,
      :forecast_horizon,
      :forecast_types,
      :perform_auto_ml,
      :auto_ml_override_strategy,
      :perform_hpo,
      :training_parameters,
      :evaluation_parameters,
      :hpo_config,
      :input_data_config,
      :featurization_config,
      :encryption_config,
      :predictor_execution_details,
      :estimated_time_remaining_in_minutes,
      :is_auto_predictor,
      :dataset_import_job_arns,
      :status,
      :message,
      :creation_time,
      :last_modification_time,
      :optimization_metric,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute what_if_analysis_arn
    #   <p>The Amazon Resource Name (ARN) of the what-if analysis that you are interested in.</p>
    #   @return [String]
    class DescribeWhatIfAnalysisRequest < Struct.new(
      nil,
      :what_if_analysis_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute what_if_analysis_name
    #   <p>The name of the what-if analysis.</p>
    #   @return [String]
    # @!attribute what_if_analysis_arn
    #   <p>The Amazon Resource Name (ARN) of the what-if analysis.</p>
    #   @return [String]
    # @!attribute forecast_arn
    #   <p>The Amazon Resource Name (ARN) of the what-if forecast.</p>
    #   @return [String]
    # @!attribute estimated_time_remaining_in_minutes
    #   <p>The approximate time remaining to complete the what-if analysis, in minutes.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the what-if analysis. States include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
    #             <code>CREATE_FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code>, <code>CREATE_STOPPED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
    #             <code>DELETE_FAILED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The <code>Status</code> of the what-if analysis must be <code>ACTIVE</code> before you can access the
    #           analysis.</p>
    #            </note>
    #   @return [String]
    # @!attribute message
    #   <p>If an error occurred, an informational message about the error.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the what-if analysis was created.</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The last time the resource was modified. The timestamp depends on the status of the job:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code> - The <code>CreationTime</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPED</code> - When the job stopped.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> or <code>CREATE_FAILED</code> - When the job finished or
    #             failed.</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    # @!attribute time_series_selector
    #   <p>Defines the set of time series that are used to create the forecasts in a <code>TimeSeriesIdentifiers</code> object.</p>
    #            <p>The <code>TimeSeriesIdentifiers</code> object needs the following information:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DataSource</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Format</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Schema</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Types::TimeSeriesSelector]
    class DescribeWhatIfAnalysisResponse < Struct.new(
      nil,
      :what_if_analysis_name,
      :what_if_analysis_arn,
      :forecast_arn,
      :estimated_time_remaining_in_minutes,
      :status,
      :message,
      :creation_time,
      :last_modification_time,
      :time_series_selector,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute what_if_forecast_export_arn
    #   <p>The Amazon Resource Name (ARN) of the what-if forecast export that you are interested in.</p>
    #   @return [String]
    class DescribeWhatIfForecastExportRequest < Struct.new(
      nil,
      :what_if_forecast_export_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute what_if_forecast_export_arn
    #   <p>The Amazon Resource Name (ARN) of the what-if forecast export.</p>
    #   @return [String]
    # @!attribute what_if_forecast_export_name
    #   <p>The name of the what-if forecast export.</p>
    #   @return [String]
    # @!attribute what_if_forecast_arns
    #   <p>An array of Amazon Resource Names (ARNs) that represent all of the what-if forecasts exported in this
    #         resource.</p>
    #   @return [Array<String>]
    # @!attribute destination
    #   <p>The destination for an export job. Provide an S3 path, an Identity and Access Management (IAM) role that allows Amazon Forecast
    #         to access the location, and an Key Management Service (KMS) key (optional). </p>
    #   @return [Types::DataDestination]
    # @!attribute message
    #   <p>If an error occurred, an informational message about the error.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the what-if forecast. States include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
    #             <code>CREATE_FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code>, <code>CREATE_STOPPED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
    #             <code>DELETE_FAILED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The <code>Status</code> of the what-if forecast export must be <code>ACTIVE</code> before you can access the
    #           forecast export.</p>
    #            </note>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the what-if forecast export was created.</p>
    #   @return [Time]
    # @!attribute estimated_time_remaining_in_minutes
    #   <p>The approximate time remaining to complete the what-if forecast export, in minutes.</p>
    #   @return [Integer]
    # @!attribute last_modification_time
    #   <p>The last time the resource was modified. The timestamp depends on the status of the job:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code> - The <code>CreationTime</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPED</code> - When the job stopped.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> or <code>CREATE_FAILED</code> - When the job finished or
    #             failed.</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    # @!attribute format
    #   <p>The format of the exported data, CSV or PARQUET.</p>
    #   @return [String]
    class DescribeWhatIfForecastExportResponse < Struct.new(
      nil,
      :what_if_forecast_export_arn,
      :what_if_forecast_export_name,
      :what_if_forecast_arns,
      :destination,
      :message,
      :status,
      :creation_time,
      :estimated_time_remaining_in_minutes,
      :last_modification_time,
      :format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute what_if_forecast_arn
    #   <p>The Amazon Resource Name (ARN) of the what-if forecast that you are interested in.</p>
    #   @return [String]
    class DescribeWhatIfForecastRequest < Struct.new(
      nil,
      :what_if_forecast_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute what_if_forecast_name
    #   <p>The name of the what-if forecast.</p>
    #   @return [String]
    # @!attribute what_if_forecast_arn
    #   <p>The Amazon Resource Name (ARN) of the what-if forecast.</p>
    #   @return [String]
    # @!attribute what_if_analysis_arn
    #   <p>The Amazon Resource Name (ARN) of the what-if analysis that contains this forecast.</p>
    #   @return [String]
    # @!attribute estimated_time_remaining_in_minutes
    #   <p>The approximate time remaining to complete the what-if forecast, in minutes.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the what-if forecast. States include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
    #             <code>CREATE_FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code>, <code>CREATE_STOPPED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
    #             <code>DELETE_FAILED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The <code>Status</code> of the what-if forecast must be <code>ACTIVE</code> before you can access the
    #           forecast.</p>
    #            </note>
    #   @return [String]
    # @!attribute message
    #   <p>If an error occurred, an informational message about the error.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the what-if forecast was created.</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The last time the resource was modified. The timestamp depends on the status of the job:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code> - The <code>CreationTime</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPED</code> - When the job stopped.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> or <code>CREATE_FAILED</code> - When the job finished or
    #             failed.</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    # @!attribute time_series_transformations
    #   <p>An array of <code>Action</code> and <code>TimeSeriesConditions</code> elements that describe what transformations were applied to which time series.</p>
    #   @return [Array<Types::TimeSeriesTransformation>]
    # @!attribute time_series_replacements_data_source
    #   <p>An array of <code>S3Config</code>, <code>Schema</code>, and <code>Format</code> elements that describe the replacement time series.</p>
    #   @return [Types::TimeSeriesReplacementsDataSource]
    # @!attribute forecast_types
    #   <p>The quantiles at which probabilistic forecasts are generated. You can specify up to five quantiles per what-if
    #         forecast in the <a>CreateWhatIfForecast</a> operation. If you didn't specify quantiles, the default
    #         values are <code>["0.1", "0.5", "0.9"]</code>. </p>
    #   @return [Array<String>]
    class DescribeWhatIfForecastResponse < Struct.new(
      nil,
      :what_if_forecast_name,
      :what_if_forecast_arn,
      :what_if_analysis_arn,
      :estimated_time_remaining_in_minutes,
      :status,
      :message,
      :creation_time,
      :last_modification_time,
      :time_series_transformations,
      :time_series_replacements_data_source,
      :forecast_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An Key Management Service (KMS) key and an Identity and Access Management (IAM) role that Amazon Forecast can assume to
    #       access the key. You can specify this optional object in the
    #       <a>CreateDataset</a> and <a>CreatePredictor</a> requests.</p>
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that Amazon Forecast can assume to access the KMS key.</p>
    #            <p>Passing a role across Amazon Web Services accounts is not allowed. If you pass a role that isn't in your
    #         account, you get an <code>InvalidInputException</code> error.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key.</p>
    #   @return [String]
    class EncryptionConfig < Struct.new(
      nil,
      :role_arn,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Provides detailed error metrics to evaluate the performance of a predictor. This object
    #       is part of the <a>Metrics</a> object. </p>
    # @!attribute forecast_type
    #   <p> The Forecast type used to compute WAPE, MAPE, MASE, and RMSE. </p>
    #   @return [String]
    # @!attribute wape
    #   <p> The weighted absolute percentage error (WAPE). </p>
    #   @return [Float]
    # @!attribute rmse
    #   <p> The root-mean-square error (RMSE). </p>
    #   @return [Float]
    # @!attribute mase
    #   <p>The Mean Absolute Scaled Error (MASE)</p>
    #   @return [Float]
    # @!attribute mape
    #   <p>The Mean Absolute Percentage Error (MAPE)</p>
    #   @return [Float]
    class ErrorMetric < Struct.new(
      nil,
      :forecast_type,
      :wape,
      :rmse,
      :mase,
      :mape,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters that define how to split a dataset into training data and testing data, and the
    #       number of iterations to perform. These parameters are specified in the predefined algorithms
    #       but you can override them in the <a>CreatePredictor</a> request.</p>
    # @!attribute number_of_backtest_windows
    #   <p>The number of times to split the input data. The default is 1. Valid values are 1 through
    #         5.</p>
    #   @return [Integer]
    # @!attribute back_test_window_offset
    #   <p>The point from the end of the dataset where you want to split the data for model training
    #         and testing (evaluation). Specify the value as the number of data points. The default is the
    #         value of the forecast horizon. <code>BackTestWindowOffset</code> can be used to mimic a past
    #         virtual forecast start date. This value must be greater than or equal to the forecast horizon
    #         and less than half of the TARGET_TIME_SERIES dataset length.</p>
    #            <p>
    #               <code>ForecastHorizon</code> <= <code>BackTestWindowOffset</code> < 1/2 *
    #         TARGET_TIME_SERIES dataset length</p>
    #   @return [Integer]
    class EvaluationParameters < Struct.new(
      nil,
      :number_of_backtest_windows,
      :back_test_window_offset,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The results of evaluating an algorithm. Returned as part of the <a>GetAccuracyMetrics</a> response.</p>
    # @!attribute algorithm_arn
    #   <p>The Amazon Resource Name (ARN) of the algorithm that was evaluated.</p>
    #   @return [String]
    # @!attribute test_windows
    #   <p>The array of test windows used for evaluating the algorithm. The
    #           <code>NumberOfBacktestWindows</code> from the <a>EvaluationParameters</a> object
    #         determines the number of windows in the array.</p>
    #   @return [Array<Types::WindowSummary>]
    class EvaluationResult < Struct.new(
      nil,
      :algorithm_arn,
      :test_windows,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The ExplainabilityConfig data type defines the number of time series and time points
    #             included in <a>CreateExplainability</a>.</p>
    #          <p>If you provide a predictor ARN for <code>ResourceArn</code>, you must set both
    #                 <code>TimePointGranularity</code> and <code>TimeSeriesGranularity</code> to “ALL”.
    #             When creating Predictor Explainability, Amazon Forecast considers all time series and
    #             time points.</p>
    #          <p>If you provide a forecast ARN for <code>ResourceArn</code>, you can set
    #                 <code>TimePointGranularity</code> and <code>TimeSeriesGranularity</code> to either
    #             “ALL” or “Specific”.</p>
    # @!attribute time_series_granularity
    #   <p>To create an Explainability for all time series in your datasets, use
    #               <code>ALL</code>. To create an Explainability for specific time series in your datasets,
    #               use <code>SPECIFIC</code>.</p>
    #            <p>Specify time series by uploading a CSV or Parquet file to an Amazon S3 bucket and set the location
    #               within the <a>DataDestination</a> data type.</p>
    #   @return [String]
    # @!attribute time_point_granularity
    #   <p>To create an Explainability for all time points in your forecast horizon, use
    #                   <code>ALL</code>. To create an Explainability for specific time points in your
    #               forecast horizon, use <code>SPECIFIC</code>.</p>
    #            <p>Specify time points with the <code>StartDateTime</code> and <code>EndDateTime</code>
    #               parameters within the <a>CreateExplainability</a> operation.</p>
    #   @return [String]
    class ExplainabilityConfig < Struct.new(
      nil,
      :time_series_granularity,
      :time_point_granularity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of the Explainability export properties used in the <a>ListExplainabilityExports</a> operation. To get a complete set of
    #             properties, call the <a>DescribeExplainabilityExport</a> operation, and
    #             provide the <code>ExplainabilityExportArn</code>.</p>
    # @!attribute explainability_export_arn
    #   <p>The Amazon Resource Name (ARN) of the Explainability export.</p>
    #   @return [String]
    # @!attribute explainability_export_name
    #   <p>The name of the Explainability export</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The destination for an export job. Provide an S3 path, an Identity and Access Management (IAM) role that allows Amazon Forecast
    #         to access the location, and an Key Management Service (KMS) key (optional). </p>
    #   @return [Types::DataDestination]
    # @!attribute status
    #   <p>The status of the Explainability export. States include: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
    #                           <code>CREATE_FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code>, <code>CREATE_STOPPED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
    #                           <code>DELETE_FAILED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute message
    #   <p>Information about any errors that may have occurred during the Explainability
    #               export.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the Explainability was created.</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The last time the resource was modified. The timestamp depends on the status of the
    #               job:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code> - The <code>CreationTime</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPED</code> - When the job stopped.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> or <code>CREATE_FAILED</code> - When the job finished or
    #                       failed.</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    class ExplainabilityExportSummary < Struct.new(
      nil,
      :explainability_export_arn,
      :explainability_export_name,
      :destination,
      :status,
      :message,
      :creation_time,
      :last_modification_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about the Explainability resource.</p>
    # @!attribute explainability_arn
    #   <p>The Amazon Resource Name (ARN) of the Explainability.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Explainability. States include: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
    #                           <code>CREATE_FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code>, <code>CREATE_STOPPED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
    #                           <code>DELETE_FAILED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ExplainabilityInfo < Struct.new(
      nil,
      :explainability_arn,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of the Explainability properties used in the <a>ListExplainabilities</a> operation. To get a complete set of properties,
    #             call the <a>DescribeExplainability</a> operation, and provide the listed
    #                 <code>ExplainabilityArn</code>.</p>
    # @!attribute explainability_arn
    #   <p>The Amazon Resource Name (ARN) of the Explainability.</p>
    #   @return [String]
    # @!attribute explainability_name
    #   <p>The name of the Explainability.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Predictor or Forecast used to create the
    #               Explainability.</p>
    #   @return [String]
    # @!attribute explainability_config
    #   <p>The configuration settings that define the granularity of time series and time points
    #               for the Explainability.</p>
    #   @return [Types::ExplainabilityConfig]
    # @!attribute status
    #   <p>The status of the Explainability. States include: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
    #                           <code>CREATE_FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code>, <code>CREATE_STOPPED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
    #                           <code>DELETE_FAILED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute message
    #   <p>Information about any errors that may have occurred during the Explainability creation
    #               process.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the Explainability was created.</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The last time the resource was modified. The timestamp depends on the status of the
    #               job:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code> - The <code>CreationTime</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPED</code> - When the job stopped.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> or <code>CREATE_FAILED</code> - When the job finished or
    #                       failed.</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    class ExplainabilitySummary < Struct.new(
      nil,
      :explainability_arn,
      :explainability_name,
      :resource_arn,
      :explainability_config,
      :status,
      :message,
      :creation_time,
      :last_modification_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <note>
    #             <p>This object belongs to the <a>CreatePredictor</a> operation. If you created
    #         your predictor with <a>CreateAutoPredictor</a>, see <a>AttributeConfig</a>.</p>
    #          </note>
    #          <p>Provides featurization (transformation) information for a dataset field. This object is
    #       part of the <a>FeaturizationConfig</a> object.</p>
    #          <p>For example:</p>
    #          <p>
    #             <code>{</code>
    #          </p>
    #          <p>
    #             <code>"AttributeName": "demand",</code>
    #          </p>
    #          <p>
    #             <code>FeaturizationPipeline [ {</code>
    #          </p>
    #          <p>
    #             <code>"FeaturizationMethodName": "filling",</code>
    #          </p>
    #          <p>
    #             <code>"FeaturizationMethodParameters": {"aggregation": "avg", "backfill":
    #       "nan"}</code>
    #          </p>
    #          <p>
    #             <code>} ]</code>
    #          </p>
    #          <p>
    #             <code>}</code>
    #          </p>
    # @!attribute attribute_name
    #   <p>The name of the schema attribute that specifies the data field to be featurized. Amazon
    #         Forecast supports the target field of the <code>TARGET_TIME_SERIES</code> and the
    #           <code>RELATED_TIME_SERIES</code> datasets. For example, for the <code>RETAIL</code> domain,
    #         the target is <code>demand</code>, and for the <code>CUSTOM</code> domain, the target is
    #           <code>target_value</code>. For more information, see <a>howitworks-missing-values</a>.</p>
    #   @return [String]
    # @!attribute featurization_pipeline
    #   <p>An array of one <code>FeaturizationMethod</code> object that specifies the feature
    #         transformation method.</p>
    #   @return [Array<Types::FeaturizationMethod>]
    class Featurization < Struct.new(
      nil,
      :attribute_name,
      :featurization_pipeline,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <note>
    #             <p>This object belongs to the <a>CreatePredictor</a> operation. If you created
    #         your predictor with <a>CreateAutoPredictor</a>, see <a>AttributeConfig</a>.</p>
    #          </note>
    #          <p>In a <a>CreatePredictor</a> operation, the specified algorithm trains a model
    #       using the specified dataset group. You can optionally tell the operation to modify data fields
    #       prior to training a model. These modifications are referred to as
    #         <i>featurization</i>.</p>
    #          <p>You define featurization using the <code>FeaturizationConfig</code> object. You specify an
    #       array of transformations, one for each field that you want to featurize. You then include the
    #         <code>FeaturizationConfig</code> object in your <code>CreatePredictor</code> request.
    #       Amazon Forecast applies the featurization to the <code>TARGET_TIME_SERIES</code> and
    #         <code>RELATED_TIME_SERIES</code> datasets before model training.</p>
    #          <p>You can create multiple featurization configurations. For example, you might call the
    #         <code>CreatePredictor</code> operation twice by specifying different featurization
    #       configurations.</p>
    # @!attribute forecast_frequency
    #   <p>The frequency of predictions in a forecast.</p>
    #            <p>Valid intervals are an integer followed by Y (Year), M (Month), W (Week), D (Day), H (Hour), and min (Minute). For example,
    #         "1D" indicates every day and "15min" indicates every 15 minutes. You cannot specify a value that would overlap with the next larger frequency. That means, for example, you cannot specify a frequency of 60 minutes, because that is equivalent to 1 hour. The valid values for each frequency are the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Minute - 1-59</p>
    #               </li>
    #               <li>
    #                  <p>Hour - 1-23</p>
    #               </li>
    #               <li>
    #                  <p>Day - 1-6</p>
    #               </li>
    #               <li>
    #                  <p>Week - 1-4</p>
    #               </li>
    #               <li>
    #                  <p>Month - 1-11</p>
    #               </li>
    #               <li>
    #                  <p>Year - 1</p>
    #               </li>
    #            </ul>
    #            <p>Thus, if you want every other week forecasts, specify "2W". Or, if you want quarterly forecasts, you specify "3M".</p>
    #            <p>The frequency must be greater than or equal to the TARGET_TIME_SERIES dataset
    #         frequency.</p>
    #            <p>When a RELATED_TIME_SERIES dataset is provided, the frequency must be equal to the
    #         TARGET_TIME_SERIES dataset frequency.</p>
    #   @return [String]
    # @!attribute forecast_dimensions
    #   <p>An array of dimension (field) names that specify how to group the generated
    #         forecast.</p>
    #            <p>For example, suppose that you are generating a forecast for item sales across all of your
    #         stores, and your dataset contains a <code>store_id</code> field. If you want the sales
    #         forecast for each item by store, you would specify <code>store_id</code> as the
    #         dimension.</p>
    #            <p>All forecast dimensions specified in the <code>TARGET_TIME_SERIES</code> dataset don't
    #         need to be specified in the <code>CreatePredictor</code> request. All forecast dimensions
    #         specified in the <code>RELATED_TIME_SERIES</code> dataset must be specified in the
    #           <code>CreatePredictor</code> request.</p>
    #   @return [Array<String>]
    # @!attribute featurizations
    #   <p>An array of featurization (transformation) information for the fields of a dataset.</p>
    #   @return [Array<Types::Featurization>]
    class FeaturizationConfig < Struct.new(
      nil,
      :forecast_frequency,
      :forecast_dimensions,
      :featurizations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about the method that featurizes (transforms) a dataset field. The
    #       method is part of the <code>FeaturizationPipeline</code> of the <a>Featurization</a> object. </p>
    #          <p>The following is an example of how you specify a <code>FeaturizationMethod</code>
    #       object.</p>
    #          <p>
    #             <code>{</code>
    #          </p>
    #          <p>
    #             <code>"FeaturizationMethodName": "filling",</code>
    #          </p>
    #          <p>
    #             <code>"FeaturizationMethodParameters": {"aggregation": "sum", "middlefill": "zero",
    #         "backfill": "zero"}</code>
    #          </p>
    #          <p>
    #             <code>}</code>
    #          </p>
    # @!attribute featurization_method_name
    #   <p>The name of the method. The "filling" method is the only supported method.</p>
    #   @return [String]
    # @!attribute featurization_method_parameters
    #   <p>The method parameters (key-value pairs), which are a map of override parameters. Specify
    #         these parameters to override the default values. Related Time Series attributes do not accept
    #         aggregation parameters.</p>
    #            <p>The following list shows the parameters and their valid values for the "filling"
    #         featurization method for a <b>Target Time Series</b> dataset. Bold
    #         signifies the default value.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>aggregation</code>: <b>sum</b>, <code>avg</code>,
    #               <code>first</code>, <code>min</code>, <code>max</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>frontfill</code>: <b>none</b>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>middlefill</code>: <b>zero</b>, <code>nan</code> (not
    #             a number), <code>value</code>, <code>median</code>, <code>mean</code>, <code>min</code>,
    #               <code>max</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>backfill</code>: <b>zero</b>, <code>nan</code>,
    #               <code>value</code>, <code>median</code>, <code>mean</code>, <code>min</code>,
    #               <code>max</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The following list shows the parameters and their valid values for a <b>Related Time Series</b> featurization method (there are no defaults):</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>middlefill</code>: <code>zero</code>, <code>value</code>, <code>median</code>,
    #               <code>mean</code>, <code>min</code>, <code>max</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>backfill</code>: <code>zero</code>, <code>value</code>, <code>median</code>,
    #               <code>mean</code>, <code>min</code>, <code>max</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>futurefill</code>: <code>zero</code>, <code>value</code>, <code>median</code>,
    #               <code>mean</code>, <code>min</code>, <code>max</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To set a filling method to a specific value, set the fill parameter to <code>value</code>
    #         and define the value in a corresponding <code>_value</code> parameter. For example, to set
    #         backfilling to a value of 2, include the following: <code>"backfill": "value"</code> and
    #           <code>"backfill_value":"2"</code>. </p>
    #   @return [Hash<String, String>]
    class FeaturizationMethod < Struct.new(
      nil,
      :featurization_method_name,
      :featurization_method_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a filter for choosing a subset of objects. Each filter consists of a
    #       condition and a match statement. The condition is either <code>IS</code> or
    #       <code>IS_NOT</code>, which specifies whether to include or exclude
    #       the objects that match the statement, respectively. The match statement consists of a key and a
    #       value.</p>
    # @!attribute key
    #   <p>The name of the parameter to filter on.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value to match.</p>
    #   @return [String]
    # @!attribute condition
    #   <p>The condition to apply. To include the objects that match the statement, specify
    #         <code>IS</code>. To exclude matching objects, specify <code>IS_NOT</code>.</p>
    #   @return [String]
    class Filter < Struct.new(
      nil,
      :key,
      :value,
      :condition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of the forecast export job properties used in the <a>ListForecastExportJobs</a> operation. To get the complete set of properties, call
    #       the <a>DescribeForecastExportJob</a> operation, and provide the listed
    #         <code>ForecastExportJobArn</code>.</p>
    # @!attribute forecast_export_job_arn
    #   <p>The Amazon Resource Name (ARN) of the forecast export job.</p>
    #   @return [String]
    # @!attribute forecast_export_job_name
    #   <p>The name of the forecast export job.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The path to the Amazon Simple Storage Service (Amazon S3) bucket where the forecast is exported.</p>
    #   @return [Types::DataDestination]
    # @!attribute status
    #   <p>The status of the forecast export job. States include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
    #             <code>CREATE_FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code>, <code>CREATE_STOPPED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
    #             <code>DELETE_FAILED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The <code>Status</code> of the forecast export job must be <code>ACTIVE</code> before
    #           you can access the forecast in your S3 bucket.</p>
    #            </note>
    #   @return [String]
    # @!attribute message
    #   <p>If an error occurred, an informational message about the error.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the forecast export job was created.</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The last time the resource was modified. The timestamp depends on the status of the job:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code> - The <code>CreationTime</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPED</code> - When the job stopped.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> or <code>CREATE_FAILED</code> - When the job finished or
    #             failed.</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    class ForecastExportJobSummary < Struct.new(
      nil,
      :forecast_export_job_arn,
      :forecast_export_job_name,
      :destination,
      :status,
      :message,
      :creation_time,
      :last_modification_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of the forecast properties used in the <a>ListForecasts</a>
    #       operation. To get the complete set of properties, call the <a>DescribeForecast</a>
    #       operation, and provide the <code>ForecastArn</code> that is listed in the summary.</p>
    # @!attribute forecast_arn
    #   <p>The ARN of the forecast.</p>
    #   @return [String]
    # @!attribute forecast_name
    #   <p>The name of the forecast.</p>
    #   @return [String]
    # @!attribute predictor_arn
    #   <p>The ARN of the predictor used to generate the forecast.</p>
    #   @return [String]
    # @!attribute created_using_auto_predictor
    #   <p>Whether the Forecast was created from an AutoPredictor.</p>
    #   @return [Boolean]
    # @!attribute dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group that provided the data used to train
    #         the predictor.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the forecast. States include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
    #             <code>CREATE_FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code>, <code>CREATE_STOPPED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
    #             <code>DELETE_FAILED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The <code>Status</code> of the forecast must be <code>ACTIVE</code> before you can query
    #           or export the forecast.</p>
    #            </note>
    #   @return [String]
    # @!attribute message
    #   <p>If an error occurred, an informational message about the error.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the forecast creation task was created.</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The last time the resource was modified. The timestamp depends on the status of the job:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code> - The <code>CreationTime</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPED</code> - When the job stopped.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> or <code>CREATE_FAILED</code> - When the job finished or
    #             failed.</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    class ForecastSummary < Struct.new(
      nil,
      :forecast_arn,
      :forecast_name,
      :predictor_arn,
      :created_using_auto_predictor,
      :dataset_group_arn,
      :status,
      :message,
      :creation_time,
      :last_modification_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute predictor_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor to get metrics for.</p>
    #   @return [String]
    class GetAccuracyMetricsRequest < Struct.new(
      nil,
      :predictor_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute predictor_evaluation_results
    #   <p>An array of results from evaluating the predictor.</p>
    #   @return [Array<Types::EvaluationResult>]
    # @!attribute is_auto_predictor
    #   <p>Whether the predictor was created with <a>CreateAutoPredictor</a>.</p>
    #   @return [Boolean]
    # @!attribute auto_ml_override_strategy
    #   <note>
    #               <p> The <code>LatencyOptimized</code> AutoML override strategy is only available in private beta.
    #                   Contact Amazon Web Services Support or your account manager to learn more about access privileges.
    #               </p>
    #            </note>
    #            <p>The AutoML strategy used to train the predictor. Unless <code>LatencyOptimized</code>
    #               is specified, the AutoML strategy optimizes predictor accuracy.</p>
    #            <p>This parameter is only valid for predictors trained using AutoML.</p>
    #   @return [String]
    # @!attribute optimization_metric
    #   <p>The accuracy metric used to optimize the predictor.</p>
    #   @return [String]
    class GetAccuracyMetricsResponse < Struct.new(
      nil,
      :predictor_evaluation_results,
      :is_auto_predictor,
      :auto_ml_override_strategy,
      :optimization_metric,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration information for a hyperparameter tuning job. You specify this object in
    #       the <a>CreatePredictor</a> request.</p>
    #          <p>A <i>hyperparameter</i> is a parameter that governs the model training process. You set
    #       hyperparameters before training starts, unlike model parameters, which are determined during
    #       training. The values of the hyperparameters effect which values are chosen for the model parameters.</p>
    #          <p>In a <i>hyperparameter tuning job</i>, Amazon Forecast chooses the set of hyperparameter
    #       values that optimize a specified metric.  Forecast accomplishes this by running many training jobs
    #       over a range of hyperparameter values. The optimum set of values depends on the
    #       algorithm, the training data, and the specified metric objective.</p>
    # @!attribute parameter_ranges
    #   <p>Specifies the ranges of valid values for the hyperparameters.</p>
    #   @return [Types::ParameterRanges]
    class HyperParameterTuningJobConfig < Struct.new(
      nil,
      :parameter_ranges,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <note>
    #             <p>This object belongs to the <a>CreatePredictor</a> operation. If you created
    #         your predictor with <a>CreateAutoPredictor</a>, see <a>DataConfig</a>.</p>
    #          </note>
    #          <p>The data used to train a predictor. The data includes a dataset group and any
    #       supplementary features. You specify this object in the <a>CreatePredictor</a>
    #       request.</p>
    # @!attribute dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group.</p>
    #   @return [String]
    # @!attribute supplementary_features
    #   <p>An array of supplementary features. The only supported feature is a holiday
    #         calendar.</p>
    #   @return [Array<Types::SupplementaryFeature>]
    class InputDataConfig < Struct.new(
      nil,
      :dataset_group_arn,
      :supplementary_features,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies an integer hyperparameter and it's range of tunable values.
    #       This object is part of the <a>ParameterRanges</a> object.</p>
    # @!attribute name
    #   <p>The name of the hyperparameter to tune.</p>
    #   @return [String]
    # @!attribute max_value
    #   <p>The maximum tunable value of the hyperparameter.</p>
    #   @return [Integer]
    # @!attribute min_value
    #   <p>The minimum tunable value of the hyperparameter.</p>
    #   @return [Integer]
    # @!attribute scaling_type
    #   <p>The scale that hyperparameter tuning uses to search the hyperparameter range.
    #         Valid values:</p>
    #            <dl>
    #               <dt>Auto</dt>
    #               <dd>
    #                  <p>Amazon Forecast hyperparameter tuning chooses the best scale for the hyperparameter.</p>
    #               </dd>
    #               <dt>Linear</dt>
    #               <dd>
    #                  <p>Hyperparameter tuning searches the values in the hyperparameter range by using a
    #               linear scale.</p>
    #               </dd>
    #               <dt>Logarithmic</dt>
    #               <dd>
    #                  <p>Hyperparameter tuning searches the values in the hyperparameter range by using a
    #               logarithmic scale.</p>
    #                  <p>Logarithmic scaling works only for ranges that have values greater than 0.</p>
    #               </dd>
    #               <dt>ReverseLogarithmic</dt>
    #               <dd>
    #                  <p>Not supported for <code>IntegerParameterRange</code>.</p>
    #                  <p>Reverse logarithmic scaling works only for ranges that are entirely within the
    #               range 0 <= x < 1.0.</p>
    #               </dd>
    #            </dl>
    #            <p>For information about choosing a hyperparameter scale, see
    #         <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/automatic-model-tuning-define-ranges.html#scaling-type">Hyperparameter Scaling</a>.
    #         One of the following values:</p>
    #   @return [String]
    class IntegerParameterRange < Struct.new(
      nil,
      :name,
      :max_value,
      :min_value,
      :scaling_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>We can't process the request because it includes an invalid value or a value that exceeds
    #       the valid range.</p>
    # @!attribute message
    #   @return [String]
    class InvalidInputException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The token is not valid. Tokens expire after 24 hours.</p>
    # @!attribute message
    #   @return [String]
    class InvalidNextTokenException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The limit on the number of resources per account has been exceeded.</p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #           <code>NextToken</code>. To retrieve the next set of results, use the token in the next
    #         request. Tokens expire after 24 hours.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of items to return in the response.</p>
    #   @return [Integer]
    class ListDatasetGroupsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_groups
    #   <p>An array of objects that summarize each dataset group's properties.</p>
    #   @return [Array<Types::DatasetGroupSummary>]
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Forecast returns this token. To retrieve the next set of
    #         results, use the token in the next request.</p>
    #   @return [String]
    class ListDatasetGroupsResponse < Struct.new(
      nil,
      :dataset_groups,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #           <code>NextToken</code>. To retrieve the next set of results, use the token in the next
    #         request. Tokens expire after 24 hours.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of items to return in the response.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>An array of filters. For each filter, you provide a condition and a match statement. The
    #         condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to include
    #         or exclude the datasets that match the statement from the list, respectively. The match
    #         statement consists of a key and a value.</p>
    #            <p>
    #               <b>Filter properties</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Condition</code> - The condition to apply. Valid values are <code>IS</code> and
    #               <code>IS_NOT</code>. To include the datasets that match the statement, specify
    #               <code>IS</code>. To exclude matching datasets, specify <code>IS_NOT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key</code> - The name of the parameter to filter on. Valid values are
    #               <code>DatasetArn</code> and <code>Status</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Value</code> - The value to match.</p>
    #               </li>
    #            </ul>
    #            <p>For example, to list all dataset import jobs whose status is ACTIVE, you specify the
    #         following filter:</p>
    #            <p>
    #               <code>"Filters": [ { "Condition": "IS", "Key": "Status", "Value": "ACTIVE" } ]</code>
    #            </p>
    #   @return [Array<Types::Filter>]
    class ListDatasetImportJobsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_import_jobs
    #   <p>An array of objects that summarize each dataset import job's properties.</p>
    #   @return [Array<Types::DatasetImportJobSummary>]
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Forecast returns this token. To retrieve the next set of
    #         results, use the token in the next request.</p>
    #   @return [String]
    class ListDatasetImportJobsResponse < Struct.new(
      nil,
      :dataset_import_jobs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #           <code>NextToken</code>. To retrieve the next set of results, use the token in the next
    #         request. Tokens expire after 24 hours.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of items to return in the response.</p>
    #   @return [Integer]
    class ListDatasetsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datasets
    #   <p>An array of objects that summarize each dataset's properties.</p>
    #   @return [Array<Types::DatasetSummary>]
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Forecast returns this token. To retrieve the next set of
    #         results, use the token in the next request.</p>
    #   @return [String]
    class ListDatasetsResponse < Struct.new(
      nil,
      :datasets,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #               NextToken. To retrieve the next set of results, use the token in the next request.
    #               Tokens expire after 24 hours.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of items returned in the response.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>An array of filters. For each filter, provide a condition and a match statement. The
    #               condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to
    #               include or exclude the resources that match the statement from the list. The match
    #               statement consists of a key and a value.</p>
    #            <p>
    #               <b>Filter properties</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Condition</code> - The condition to apply. Valid values are
    #                           <code>IS</code> and <code>IS_NOT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key</code> - The name of the parameter to filter on. Valid values are
    #                           <code>ResourceArn</code> and <code>Status</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Value</code> - The value to match.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Filter>]
    class ListExplainabilitiesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute explainabilities
    #   <p>An array of objects that summarize the properties of each Explainability
    #               resource.</p>
    #   @return [Array<Types::ExplainabilitySummary>]
    # @!attribute next_token
    #   <p>Returns this token if the response is truncated. To retrieve the next set of results,
    #               use the token in the next request.</p>
    #   @return [String]
    class ListExplainabilitiesResponse < Struct.new(
      nil,
      :explainabilities,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #               NextToken. To retrieve the next set of results, use the token in the next request.
    #               Tokens expire after 24 hours.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of items to return in the response.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>An array of filters. For each filter, provide a condition and a match statement. The
    #               condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to
    #               include or exclude resources that match the statement from the list. The match statement
    #               consists of a key and a value.</p>
    #            <p>
    #               <b>Filter properties</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Condition</code> - The condition to apply. Valid values are
    #                           <code>IS</code> and <code>IS_NOT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key</code> - The name of the parameter to filter on. Valid values are
    #                           <code>ResourceArn</code> and <code>Status</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Value</code> - The value to match.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Filter>]
    class ListExplainabilityExportsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute explainability_exports
    #   <p>An array of objects that summarize the properties of each Explainability
    #               export.</p>
    #   @return [Array<Types::ExplainabilityExportSummary>]
    # @!attribute next_token
    #   <p>Returns this token if the response is truncated. To retrieve the next set of results,
    #               use the token in the next request.</p>
    #   @return [String]
    class ListExplainabilityExportsResponse < Struct.new(
      nil,
      :explainability_exports,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #           <code>NextToken</code>. To retrieve the next set of results, use the token in the next
    #         request. Tokens expire after 24 hours.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of items to return in the response.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>An array of filters. For each filter, you provide a condition and a match statement. The
    #         condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to include
    #         or exclude the forecast export jobs that match the statement from the list, respectively. The
    #         match statement consists of a key and a value.</p>
    #            <p>
    #               <b>Filter properties</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Condition</code> - The condition to apply. Valid values are <code>IS</code> and
    #               <code>IS_NOT</code>. To include the forecast export jobs that match the statement,
    #             specify <code>IS</code>. To exclude matching forecast export jobs, specify
    #               <code>IS_NOT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key</code> - The name of the parameter to filter on. Valid values are
    #               <code>ForecastArn</code> and <code>Status</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Value</code> - The value to match.</p>
    #               </li>
    #            </ul>
    #            <p>For example, to list all jobs that export a forecast named
    #           <i>electricityforecast</i>, specify the following filter:</p>
    #            <p>
    #               <code>"Filters": [ { "Condition": "IS", "Key": "ForecastArn", "Value":
    #           "arn:aws:forecast:us-west-2:<acct-id>:forecast/electricityforecast" } ]</code>
    #            </p>
    #   @return [Array<Types::Filter>]
    class ListForecastExportJobsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute forecast_export_jobs
    #   <p>An array of objects that summarize each export job's properties.</p>
    #   @return [Array<Types::ForecastExportJobSummary>]
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Forecast returns this token. To retrieve the next set of
    #         results, use the token in the next request.</p>
    #   @return [String]
    class ListForecastExportJobsResponse < Struct.new(
      nil,
      :forecast_export_jobs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #           <code>NextToken</code>. To retrieve the next set of results, use the token in the next
    #         request. Tokens expire after 24 hours.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of items to return in the response.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>An array of filters. For each filter, you provide a condition and a match statement. The
    #         condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to include
    #         or exclude the forecasts that match the statement from the list, respectively. The match
    #         statement consists of a key and a value.</p>
    #            <p>
    #               <b>Filter properties</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Condition</code> - The condition to apply. Valid values are <code>IS</code> and
    #               <code>IS_NOT</code>. To include the forecasts that match the statement, specify
    #               <code>IS</code>. To exclude matching forecasts, specify <code>IS_NOT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key</code> - The name of the parameter to filter on. Valid values are
    #               <code>DatasetGroupArn</code>, <code>PredictorArn</code>, and <code>Status</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Value</code> - The value to match.</p>
    #               </li>
    #            </ul>
    #            <p>For example, to list all forecasts whose status is not ACTIVE, you would specify:</p>
    #            <p>
    #               <code>"Filters": [ { "Condition": "IS_NOT", "Key": "Status", "Value": "ACTIVE" }
    #         ]</code>
    #            </p>
    #   @return [Array<Types::Filter>]
    class ListForecastsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute forecasts
    #   <p>An array of objects that summarize each forecast's properties.</p>
    #   @return [Array<Types::ForecastSummary>]
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Forecast returns this token. To retrieve the next set
    #         of results, use the token in the next request.</p>
    #   @return [String]
    class ListForecastsResponse < Struct.new(
      nil,
      :forecasts,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #            <code>NextToken</code>. To retrieve the next set of results, use the token in the next
    #            request. Tokens expire after 24 hours.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of monitoring results to return.</p>
    #   @return [Integer]
    # @!attribute monitor_arn
    #   <p>The Amazon Resource Name (ARN) of the monitor resource to get results from.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>An array of filters. For each filter, provide a condition and a match statement. The
    #            condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to
    #            include or exclude the resources that match the statement from the list. The match
    #            statement consists of a key and a value.</p>
    #            <p>
    #               <b>Filter properties</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Condition</code> - The condition to apply. Valid values are
    #                  <code>IS</code> and <code>IS_NOT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key</code> - The name of the parameter to filter on. The only valid value is 
    #                  <code>EvaluationState</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Value</code> - The value to match. Valid values are only <code>SUCCESS</code> or <code>FAILURE</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For example, to list only successful monitor evaluations, you would specify:</p>
    #            <p>
    #               <code>"Filters": [ { "Condition": "IS", "Key": "EvaluationState", "Value": "SUCCESS" } ]</code>
    #            </p>
    #   @return [Array<Types::Filter>]
    class ListMonitorEvaluationsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :monitor_arn,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Forecast returns this token. To retrieve the next set of
    #            results, use the token in the next request. Tokens expire after 24 hours.</p>
    #   @return [String]
    # @!attribute predictor_monitor_evaluations
    #   <p>The monitoring results and predictor events collected by the monitor resource during different windows of time.</p>
    #            <p>For information about monitoring see <a href="https://docs.aws.amazon.com/forecast/latest/dg/predictor-monitoring-results.html">Viewing Monitoring Results</a>. For more information about retrieving monitoring results see <a href="https://docs.aws.amazon.com/forecast/latest/dg/predictor-monitoring-results.html">Viewing Monitoring Results</a>.</p>
    #   @return [Array<Types::PredictorMonitorEvaluation>]
    class ListMonitorEvaluationsResponse < Struct.new(
      nil,
      :next_token,
      :predictor_monitor_evaluations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #            <code>NextToken</code>. To retrieve the next set of results, use the token in the next
    #            request. Tokens expire after 24 hours.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of monitors to include in the response.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>An array of filters. For each filter, provide a condition and a match statement. The
    #            condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to
    #            include or exclude the resources that match the statement from the list. The match
    #            statement consists of a key and a value.</p>
    #            <p>
    #               <b>Filter properties</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Condition</code> - The condition to apply. Valid values are
    #                  <code>IS</code> and <code>IS_NOT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key</code> - The name of the parameter to filter on. The only valid value is 
    #                  <code>Status</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Value</code> - The value to match.</p>
    #               </li>
    #            </ul>
    #            <p>For example, to list all monitors who's status is ACTIVE, you would specify:</p>
    #            <p>
    #               <code>"Filters": [ { "Condition": "IS", "Key": "Status", "Value": "ACTIVE" } ]</code>
    #            </p>
    #   @return [Array<Types::Filter>]
    class ListMonitorsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitors
    #   <p>An array of objects that summarize each monitor's properties.</p>
    #   @return [Array<Types::MonitorSummary>]
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Forecast returns this token. To retrieve the next set of
    #            results, use the token in the next request.</p>
    #   @return [String]
    class ListMonitorsResponse < Struct.new(
      nil,
      :monitors,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #               NextToken. To retrieve the next set of results, use the token in the next request.
    #               Tokens expire after 24 hours.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of items to return in the response.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>An array of filters. For each filter, provide a condition and a match statement. The
    #               condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to
    #               include or exclude the predictor backtest export jobs that match the statement from the
    #               list. The match statement consists of a key and a value.</p>
    #            <p>
    #               <b>Filter properties</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Condition</code> - The condition to apply. Valid values are
    #                           <code>IS</code> and <code>IS_NOT</code>. To include the predictor backtest
    #                       export jobs that match the statement, specify <code>IS</code>. To exclude
    #                       matching predictor backtest export jobs, specify <code>IS_NOT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key</code> - The name of the parameter to filter on. Valid values are
    #                           <code>PredictorArn</code> and <code>Status</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Value</code> - The value to match.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Filter>]
    class ListPredictorBacktestExportJobsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute predictor_backtest_export_jobs
    #   <p>An array of objects that summarize the properties of each predictor backtest export
    #               job.</p>
    #   @return [Array<Types::PredictorBacktestExportJobSummary>]
    # @!attribute next_token
    #   <p>Returns this token if the response is truncated. To retrieve the next set of results,
    #               use the token in the next request.</p>
    #   @return [String]
    class ListPredictorBacktestExportJobsResponse < Struct.new(
      nil,
      :predictor_backtest_export_jobs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #           <code>NextToken</code>. To retrieve the next set of results, use the token in the next
    #         request. Tokens expire after 24 hours.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of items to return in the response.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>An array of filters. For each filter, you provide a condition and a match statement. The
    #         condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to include
    #         or exclude the predictors that match the statement from the list, respectively. The match
    #         statement consists of a key and a value.</p>
    #            <p>
    #               <b>Filter properties</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Condition</code> - The condition to apply. Valid values are <code>IS</code> and
    #               <code>IS_NOT</code>. To include the predictors that match the statement, specify
    #               <code>IS</code>. To exclude matching predictors, specify <code>IS_NOT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key</code> - The name of the parameter to filter on. Valid values are
    #               <code>DatasetGroupArn</code> and <code>Status</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Value</code> - The value to match.</p>
    #               </li>
    #            </ul>
    #            <p>For example, to list all predictors whose status is ACTIVE, you would specify:</p>
    #            <p>
    #               <code>"Filters": [ { "Condition": "IS", "Key": "Status", "Value": "ACTIVE" }
    #         ]</code>
    #            </p>
    #   @return [Array<Types::Filter>]
    class ListPredictorsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute predictors
    #   <p>An array of objects that summarize each predictor's properties.</p>
    #   @return [Array<Types::PredictorSummary>]
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Forecast returns this token. To retrieve the next set of
    #         results, use the token in the next request.</p>
    #   @return [String]
    class ListPredictorsResponse < Struct.new(
      nil,
      :predictors,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags.
    #       </p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags for the resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #         <code>NextToken</code>. To retrieve the next set of results, use the token in the next
    #         request. Tokens expire after 24 hours.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of items to return in the response.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>An array of filters. For each filter, you provide a condition and a match statement. The condition is either
    #           <code>IS</code> or <code>IS_NOT</code>, which specifies whether to include or exclude the what-if analysis jobs
    #         that match the statement from the list, respectively. The match statement consists of a key and a value.</p>
    #            <p>
    #               <b>Filter properties</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Condition</code> - The condition to apply. Valid values are <code>IS</code> and
    #               <code>IS_NOT</code>. To include the what-if analysis jobs that match the statement, specify <code>IS</code>.
    #             To exclude matching what-if analysis jobs, specify <code>IS_NOT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key</code> - The name of the parameter to filter on. Valid values are
    #               <code>WhatIfAnalysisArn</code> and <code>Status</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Value</code> - The value to match.</p>
    #               </li>
    #            </ul>
    #            <p>For example, to list all jobs that export a forecast named
    #           <i>electricityWhatIf</i>, specify the following filter:</p>
    #            <p>
    #               <code>"Filters": [ { "Condition": "IS", "Key": "WhatIfAnalysisArn", "Value":
    #           "arn:aws:forecast:us-west-2:<acct-id>:forecast/electricityWhatIf" } ]</code>
    #            </p>
    #   @return [Array<Types::Filter>]
    class ListWhatIfAnalysesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute what_if_analyses
    #   <p>An array of <code>WhatIfAnalysisSummary</code> objects that describe the matched analyses.</p>
    #   @return [Array<Types::WhatIfAnalysisSummary>]
    # @!attribute next_token
    #   <p>If the response is truncated, Forecast returns this token. To retrieve the next set of results, use the token in the next request.</p>
    #   @return [String]
    class ListWhatIfAnalysesResponse < Struct.new(
      nil,
      :what_if_analyses,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the result of the previous request was truncated, the response includes a <code>NextToken</code>. To retrieve the next set of results, use the token in the next  request. Tokens expire after 24 hours.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of items to return in the response.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>An array of filters. For each filter, you provide a condition and a match statement. The condition is either
    #           <code>IS</code> or <code>IS_NOT</code>, which specifies whether to include or exclude the what-if forecast
    #         export jobs that match the statement from the list, respectively. The match statement consists of a key and a
    #         value.</p>
    #            <p>
    #               <b>Filter properties</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Condition</code> - The condition to apply. Valid values are <code>IS</code> and
    #             <code>IS_NOT</code>. To include the forecast export jobs that match the statement,
    #             specify <code>IS</code>. To exclude matching forecast export jobs, specify
    #             <code>IS_NOT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key</code> - The name of the parameter to filter on. Valid values are
    #             <code>WhatIfForecastExportArn</code> and <code>Status</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Value</code> - The value to match.</p>
    #               </li>
    #            </ul>
    #            <p>For example, to list all jobs that export a forecast named
    #         <i>electricityWIFExport</i>, specify the following filter:</p>
    #            <p>
    #               <code>"Filters": [ { "Condition": "IS", "Key": "WhatIfForecastExportArn", "Value":
    #         "arn:aws:forecast:us-west-2:<acct-id>:forecast/electricityWIFExport" } ]</code>
    #            </p>
    #   @return [Array<Types::Filter>]
    class ListWhatIfForecastExportsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute what_if_forecast_exports
    #   <p>An array of <code>WhatIfForecastExports</code> objects that describe the matched forecast exports.</p>
    #   @return [Array<Types::WhatIfForecastExportSummary>]
    # @!attribute next_token
    #   <p>If the response is truncated, Forecast returns this token. To retrieve the next set of results, use the token in the next request.</p>
    #   @return [String]
    class ListWhatIfForecastExportsResponse < Struct.new(
      nil,
      :what_if_forecast_exports,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the result of the previous request was truncated, the response includes a <code>NextToken</code>. To retrieve the next set of results, use the token in the next  request. Tokens expire after 24 hours.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of items to return in the response.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>An array of filters. For each filter, you provide a condition and a match statement. The condition is either
    #           <code>IS</code> or <code>IS_NOT</code>, which specifies whether to include or exclude the what-if forecast
    #         export jobs that match the statement from the list, respectively. The match statement consists of a key and a
    #         value.</p>
    #            <p>
    #               <b>Filter properties</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Condition</code> - The condition to apply. Valid values are <code>IS</code> and
    #             <code>IS_NOT</code>. To include the forecast export jobs that match the statement,
    #             specify <code>IS</code>. To exclude matching forecast export jobs, specify
    #             <code>IS_NOT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key</code> - The name of the parameter to filter on. Valid values are
    #             <code>WhatIfForecastArn</code> and <code>Status</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Value</code> - The value to match.</p>
    #               </li>
    #            </ul>
    #            <p>For example, to list all jobs that export a forecast named
    #         <i>electricityWhatIfForecast</i>, specify the following filter:</p>
    #            <p>
    #               <code>"Filters": [ { "Condition": "IS", "Key": "WhatIfForecastArn", "Value":
    #         "arn:aws:forecast:us-west-2:<acct-id>:forecast/electricityWhatIfForecast" } ]</code>
    #            </p>
    #   @return [Array<Types::Filter>]
    class ListWhatIfForecastsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute what_if_forecasts
    #   <p>An array of <code>WhatIfForecasts</code> objects that describe the matched forecasts.</p>
    #   @return [Array<Types::WhatIfForecastSummary>]
    # @!attribute next_token
    #   <p>If the result of the previous request was truncated, the response includes a <code>NextToken</code>. To retrieve the next set of results, use the token in the next  request. Tokens expire after 24 hours.</p>
    #   @return [String]
    class ListWhatIfForecastsResponse < Struct.new(
      nil,
      :what_if_forecasts,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An individual metric Forecast calculated when monitoring predictor usage. You can compare the value for this metric to the metric's value in the <a>Baseline</a> to see how your predictor's performance is changing.</p>
    #          <p>For more information about metrics generated by Forecast see <a href="https://docs.aws.amazon.com/forecast/latest/dg/metrics.html">Evaluating Predictor Accuracy</a>
    #          </p>
    # @!attribute metric_name
    #   <p>The name of the metric.</p>
    #   @return [String]
    # @!attribute metric_value
    #   <p>The value for the metric.</p>
    #   @return [Float]
    class MetricResult < Struct.new(
      nil,
      :metric_name,
      :metric_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides metrics that are used to evaluate the performance of a predictor. This object is
    #       part of the <a>WindowSummary</a> object.</p>
    # @!attribute rmse
    #   <p>The root-mean-square error (RMSE).</p>
    #   @deprecated
    #     This property is deprecated, please refer to ErrorMetrics for both RMSE and WAPE
    #   @return [Float]
    # @!attribute weighted_quantile_losses
    #   <p>An array of weighted quantile losses. Quantiles divide a probability distribution into
    #         regions of equal probability. The distribution in this case is the loss function.</p>
    #   @return [Array<Types::WeightedQuantileLoss>]
    # @!attribute error_metrics
    #   <p> Provides detailed error metrics for each forecast type. Metrics include root-mean
    #         square-error (RMSE), mean absolute percentage error (MAPE), mean absolute scaled error (MASE),
    #         and weighted average percentage error (WAPE). </p>
    #   @return [Array<Types::ErrorMetric>]
    # @!attribute average_weighted_quantile_loss
    #   <p>The average value of all weighted quantile losses.</p>
    #   @return [Float]
    class Metrics < Struct.new(
      nil,
      :rmse,
      :weighted_quantile_losses,
      :error_metrics,
      :average_weighted_quantile_loss,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration details for the predictor monitor.</p>
    # @!attribute monitor_name
    #   <p>The name of the monitor resource.</p>
    #   @return [String]
    class MonitorConfig < Struct.new(
      nil,
      :monitor_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The source of the data the monitor used during the evaluation.</p>
    # @!attribute dataset_import_job_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset import job used to import the data that initiated the monitor evaluation.</p>
    #   @return [String]
    # @!attribute forecast_arn
    #   <p>The Amazon Resource Name (ARN) of the forecast the monitor used during the evaluation.</p>
    #   @return [String]
    # @!attribute predictor_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor resource you are monitoring.</p>
    #   @return [String]
    class MonitorDataSource < Struct.new(
      nil,
      :dataset_import_job_arn,
      :forecast_arn,
      :predictor_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about the monitor resource.</p>
    # @!attribute monitor_arn
    #   <p>The Amazon Resource Name (ARN) of the monitor resource.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the monitor. States include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE_STOPPING</code>, <code>ACTIVE_STOPPED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_IN_PROGRESS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>, <code>CREATE_FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>, <code>DELETE_FAILED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class MonitorInfo < Struct.new(
      nil,
      :monitor_arn,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of the monitor properties used in the <a>ListMonitors</a> operation. To get a complete set of properties,
    #          call the <a>DescribeMonitor</a> operation, and provide the listed
    #          <code>MonitorArn</code>.</p>
    # @!attribute monitor_arn
    #   <p>The Amazon Resource Name (ARN) of the monitor resource.</p>
    #   @return [String]
    # @!attribute monitor_name
    #   <p>The name of the monitor resource.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor being monitored.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the monitor. States include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE_STOPPING</code>, <code>ACTIVE_STOPPED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_IN_PROGRESS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>, <code>CREATE_FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>, <code>DELETE_FAILED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the monitor resource was created.</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The last time the monitor resource was modified. The timestamp depends on the status of the
    #            job:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code> - The <code>CreationTime</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOPPED</code> - When the resource stopped.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> or <code>CREATE_FAILED</code> - When the monitor creation finished or
    #                  failed.</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    class MonitorSummary < Struct.new(
      nil,
      :monitor_arn,
      :monitor_name,
      :resource_arn,
      :status,
      :creation_time,
      :last_modification_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the categorical, continuous, and integer hyperparameters, and their ranges of
    #       tunable values. The range of tunable values determines which values that a hyperparameter
    #       tuning job can choose for the specified hyperparameter. This object is part of the
    #       <a>HyperParameterTuningJobConfig</a> object.</p>
    # @!attribute categorical_parameter_ranges
    #   <p>Specifies the tunable range for each categorical hyperparameter.</p>
    #   @return [Array<Types::CategoricalParameterRange>]
    # @!attribute continuous_parameter_ranges
    #   <p>Specifies the tunable range for each continuous hyperparameter.</p>
    #   @return [Array<Types::ContinuousParameterRange>]
    # @!attribute integer_parameter_ranges
    #   <p>Specifies the tunable range for each integer hyperparameter.</p>
    #   @return [Array<Types::IntegerParameterRange>]
    class ParameterRanges < Struct.new(
      nil,
      :categorical_parameter_ranges,
      :continuous_parameter_ranges,
      :integer_parameter_ranges,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of the predictor backtest export job properties used in the <a>ListPredictorBacktestExportJobs</a> operation. To get a complete set of
    #             properties, call the <a>DescribePredictorBacktestExportJob</a> operation, and
    #             provide the listed <code>PredictorBacktestExportJobArn</code>.</p>
    # @!attribute predictor_backtest_export_job_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor backtest export job.</p>
    #   @return [String]
    # @!attribute predictor_backtest_export_job_name
    #   <p>The name of the predictor backtest export job.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The destination for an export job. Provide an S3 path, an Identity and Access Management (IAM) role that allows Amazon Forecast
    #         to access the location, and an Key Management Service (KMS) key (optional). </p>
    #   @return [Types::DataDestination]
    # @!attribute status
    #   <p>The status of the predictor backtest export job. States include: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
    #                           <code>CREATE_FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code>, <code>CREATE_STOPPED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
    #                           <code>DELETE_FAILED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute message
    #   <p>Information about any errors that may have occurred during the backtest export.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the predictor backtest export job was created.</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The last time the resource was modified. The timestamp depends on the status of the
    #               job:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code> - The <code>CreationTime</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPED</code> - When the job stopped.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> or <code>CREATE_FAILED</code> - When the job finished or
    #                       failed.</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    class PredictorBacktestExportJobSummary < Struct.new(
      nil,
      :predictor_backtest_export_job_arn,
      :predictor_backtest_export_job_name,
      :destination,
      :status,
      :message,
      :creation_time,
      :last_modification_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metrics you can use as a baseline for comparison purposes. Use these metrics when you interpret monitoring results for an auto predictor.</p>
    # @!attribute baseline_metrics
    #   <p>The initial <a href="https://docs.aws.amazon.com/forecast/latest/dg/metrics.html">accuracy metrics</a> for the predictor. Use these metrics as a baseline for comparison purposes as you
    #            use your predictor and the metrics change.</p>
    #   @return [Array<Types::BaselineMetric>]
    class PredictorBaseline < Struct.new(
      nil,
      :baseline_metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides details about a predictor event, such as a retraining.</p>
    # @!attribute detail
    #   <p>The type of event. For example, <code>Retrain</code>. A retraining event denotes the timepoint when a predictor was retrained. Any monitor results from before the <code>Datetime</code> are from the previous predictor. Any new metrics are for the newly retrained predictor.</p>
    #   @return [String]
    # @!attribute datetime
    #   <p>The timestamp for when the event occurred.</p>
    #   @return [Time]
    class PredictorEvent < Struct.new(
      nil,
      :detail,
      :datetime,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The algorithm used to perform a backtest and the status of those tests.</p>
    # @!attribute algorithm_arn
    #   <p>The ARN of the algorithm used to test the predictor.</p>
    #   @return [String]
    # @!attribute test_windows
    #   <p>An array of test windows used to evaluate the algorithm. The
    #           <code>NumberOfBacktestWindows</code> from the 
    #         object determines the number of windows in the array.</p>
    #   @return [Array<Types::TestWindowSummary>]
    class PredictorExecution < Struct.new(
      nil,
      :algorithm_arn,
      :test_windows,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details on the backtests performed to evaluate the accuracy of the predictor. The
    #       tests are returned in descending order of accuracy, with the most accurate backtest appearing
    #       first. You specify the number of backtests to perform when you call the  operation.</p>
    # @!attribute predictor_executions
    #   <p>An array of the backtests performed to evaluate the accuracy of the predictor against a
    #         particular algorithm. The <code>NumberOfBacktestWindows</code> from the  object determines the number of windows in the
    #         array.</p>
    #   @return [Array<Types::PredictorExecution>]
    class PredictorExecutionDetails < Struct.new(
      nil,
      :predictor_executions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the results of a monitor evaluation.</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to monitor.</p>
    #   @return [String]
    # @!attribute monitor_arn
    #   <p>The Amazon Resource Name (ARN) of the monitor resource.</p>
    #   @return [String]
    # @!attribute evaluation_time
    #   <p>The timestamp that indicates when the monitor evaluation was started. </p>
    #   @return [Time]
    # @!attribute evaluation_state
    #   <p>The status of the monitor evaluation. The state can be <code>SUCCESS</code> or <code>FAILURE</code>.</p>
    #   @return [String]
    # @!attribute window_start_datetime
    #   <p>The timestamp that indicates the start of the window that is used for monitor evaluation.</p>
    #   @return [Time]
    # @!attribute window_end_datetime
    #   <p>The timestamp that indicates the end of the window that is used for monitor evaluation.</p>
    #   @return [Time]
    # @!attribute predictor_event
    #   <p>Provides details about a predictor event, such as a retraining.</p>
    #   @return [Types::PredictorEvent]
    # @!attribute monitor_data_source
    #   <p>The source of the data the monitor resource used during the evaluation.</p>
    #   @return [Types::MonitorDataSource]
    # @!attribute metric_results
    #   <p>A list of metrics Forecast calculated when monitoring a predictor. You can compare the value for each metric in the list to the metric's value in the <a>Baseline</a> to see how your predictor's performance is changing.</p>
    #   @return [Array<Types::MetricResult>]
    # @!attribute num_items_evaluated
    #   <p>The number of items considered during the evaluation.</p>
    #   @return [Integer]
    # @!attribute message
    #   <p>Information about any errors that may have occurred during the monitor evaluation.</p>
    #   @return [String]
    class PredictorMonitorEvaluation < Struct.new(
      nil,
      :resource_arn,
      :monitor_arn,
      :evaluation_time,
      :evaluation_state,
      :window_start_datetime,
      :window_end_datetime,
      :predictor_event,
      :monitor_data_source,
      :metric_results,
      :num_items_evaluated,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of the predictor properties that are used in the <a>ListPredictors</a> operation. To get the complete set of properties, call the <a>DescribePredictor</a> operation, and provide the listed
    #       <code>PredictorArn</code>.</p>
    # @!attribute predictor_arn
    #   <p>The ARN of the predictor.</p>
    #   @return [String]
    # @!attribute predictor_name
    #   <p>The name of the predictor.</p>
    #   @return [String]
    # @!attribute dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group that contains the data used to train
    #         the predictor.</p>
    #   @return [String]
    # @!attribute is_auto_predictor
    #   <p>Whether AutoPredictor was used to create the predictor.</p>
    #   @return [Boolean]
    # @!attribute reference_predictor_summary
    #   <p>A summary of the reference predictor used if the predictor was retrained or
    #               upgraded.</p>
    #   @return [Types::ReferencePredictorSummary]
    # @!attribute status
    #   <p>The status of the predictor. States include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
    #               <code>CREATE_FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
    #               <code>DELETE_FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code>, <code>CREATE_STOPPED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The <code>Status</code> of the predictor must be <code>ACTIVE</code> before you can use
    #           the predictor to create a forecast.</p>
    #            </note>
    #   @return [String]
    # @!attribute message
    #   <p>If an error occurred, an informational message about the error.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the model training task was created.</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The last time the resource was modified. The timestamp depends on the status of the
    #         job:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code> - The <code>CreationTime</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPED</code> - When the job stopped.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> or <code>CREATE_FAILED</code> - When the job finished or
    #             failed.</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    class PredictorSummary < Struct.new(
      nil,
      :predictor_arn,
      :predictor_name,
      :dataset_group_arn,
      :is_auto_predictor,
      :reference_predictor_summary,
      :status,
      :message,
      :creation_time,
      :last_modification_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of the reference predictor used when retraining or upgrading a
    #             predictor.</p>
    # @!attribute arn
    #   <p>The ARN of the reference predictor.</p>
    #   @return [String]
    # @!attribute state
    #   <p>Whether the reference predictor is <code>Active</code> or <code>Deleted</code>.</p>
    #   @return [String]
    class ReferencePredictorSummary < Struct.new(
      nil,
      :arn,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>There is already a resource with this name. Try again with a different name.</p>
    # @!attribute message
    #   @return [String]
    class ResourceAlreadyExistsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource is in use.</p>
    # @!attribute message
    #   @return [String]
    class ResourceInUseException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>We can't find a resource with that Amazon Resource Name (ARN). Check the ARN and try
    #       again.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the monitor resource to resume.</p>
    #   @return [String]
    class ResumeResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The path to the file(s) in an Amazon Simple Storage Service (Amazon S3) bucket, and an Identity and Access Management (IAM) role that
    #       Amazon Forecast can assume to access the file(s). Optionally, includes an Key Management Service (KMS) key. This
    #       object is part of the <a>DataSource</a> object that is submitted in the <a>CreateDatasetImportJob</a> request, and part of the <a>DataDestination</a> object.</p>
    # @!attribute path
    #   <p>The path to an Amazon Simple Storage Service (Amazon S3) bucket or file(s) in an Amazon S3 bucket.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the Identity and Access Management (IAM) role that Amazon Forecast can assume to access the Amazon S3
    #         bucket or files. If you provide a value for the <code>KMSKeyArn</code> key, the role must
    #         allow access to the key.</p>
    #            <p>Passing a role across Amazon Web Services accounts is not allowed. If you pass a role that isn't in your
    #         account, you get an <code>InvalidInputException</code> error.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of an Key Management Service (KMS) key.</p>
    #   @return [String]
    class S3Config < Struct.new(
      nil,
      :path,
      :role_arn,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the fields of a dataset.</p>
    # @!attribute attributes
    #   <p>An array of attributes specifying the name and type of each field in a dataset.</p>
    #   @return [Array<Types::SchemaAttribute>]
    class Schema < Struct.new(
      nil,
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An attribute of a schema, which defines a dataset field. A schema attribute is required
    #       for every field in a dataset. The <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_Schema.html">Schema</a> object contains an array of
    #         <code>SchemaAttribute</code> objects.</p>
    # @!attribute attribute_name
    #   <p>The name of the dataset field.</p>
    #   @return [String]
    # @!attribute attribute_type
    #   <p>The data type of the field.</p>
    #            <p>For a related time series dataset, other than date, item_id, and forecast dimensions attributes, all attributes should be of numerical type (integer/float).</p>
    #   @return [String]
    class SchemaAttribute < Struct.new(
      nil,
      :attribute_name,
      :attribute_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides statistics for each data field imported into to an Amazon Forecast dataset with
    #       the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetImportJob.html">CreateDatasetImportJob</a> operation.</p>
    # @!attribute count
    #   <p>The number of values in the field. If the response value is -1, refer to
    #           <code>CountLong</code>.</p>
    #   @return [Integer]
    # @!attribute count_distinct
    #   <p>The number of distinct values in the field. If the response value is -1, refer to
    #           <code>CountDistinctLong</code>.</p>
    #   @return [Integer]
    # @!attribute count_null
    #   <p>The number of null values in the field. If the response value is -1, refer to
    #           <code>CountNullLong</code>.</p>
    #   @return [Integer]
    # @!attribute count_nan
    #   <p>The number of NAN (not a number) values in the field. If the response value is -1, refer
    #         to <code>CountNanLong</code>.</p>
    #   @return [Integer]
    # @!attribute min
    #   <p>For a numeric field, the minimum value in the field.</p>
    #   @return [String]
    # @!attribute max
    #   <p>For a numeric field, the maximum value in the field.</p>
    #   @return [String]
    # @!attribute avg
    #   <p>For a numeric field, the average value in the field.</p>
    #   @return [Float]
    # @!attribute stddev
    #   <p>For a numeric field, the standard deviation.</p>
    #   @return [Float]
    # @!attribute count_long
    #   <p>The number of values in the field. <code>CountLong</code> is used instead of
    #           <code>Count</code> if the value is greater than 2,147,483,647.</p>
    #   @return [Integer]
    # @!attribute count_distinct_long
    #   <p>The number of distinct values in the field. <code>CountDistinctLong</code> is used instead
    #         of <code>CountDistinct</code> if the value is greater than 2,147,483,647.</p>
    #   @return [Integer]
    # @!attribute count_null_long
    #   <p>The number of null values in the field. <code>CountNullLong</code> is used instead of
    #           <code>CountNull</code> if the value is greater than 2,147,483,647.</p>
    #   @return [Integer]
    # @!attribute count_nan_long
    #   <p>The number of NAN (not a number) values in the field. <code>CountNanLong</code> is used
    #         instead of <code>CountNan</code> if the value is greater than 2,147,483,647.</p>
    #   @return [Integer]
    class Statistics < Struct.new(
      nil,
      :count,
      :count_distinct,
      :count_null,
      :count_nan,
      :min,
      :max,
      :avg,
      :stddev,
      :count_long,
      :count_distinct_long,
      :count_null_long,
      :count_nan_long,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource to stop. The supported ARNs
    #            are <code>DatasetImportJobArn</code>, <code>PredictorArn</code>,
    #               <code>PredictorBacktestExportJobArn</code>, <code>ForecastArn</code>,
    #               <code>ForecastExportJobArn</code>, <code>ExplainabilityArn</code>, and
    #               <code>ExplainabilityExportArn</code>. </p>
    #   @return [String]
    class StopResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <note>
    #             <p>This object belongs to the <a>CreatePredictor</a> operation. If you created
    #         your predictor with <a>CreateAutoPredictor</a>, see <a>AdditionalDataset</a>.</p>
    #          </note>
    #          <p>Describes a supplementary feature of a dataset group. This object is part of the <a>InputDataConfig</a> object. Forecast supports the Weather Index and Holidays built-in
    #       featurizations.</p>
    #          <p>
    #             <b>Weather Index</b>
    #          </p>
    #          <p>The Amazon Forecast Weather Index is a built-in featurization that incorporates historical and
    #       projected weather information into your model. The Weather Index supplements your datasets
    #       with over two years of historical weather data and up to 14 days of projected weather data.
    #       For more information, see <a href="https://docs.aws.amazon.com/forecast/latest/dg/weather.html">Amazon Forecast Weather
    #         Index</a>.</p>
    #          <p>
    #             <b>Holidays</b>
    #          </p>
    #          <p>Holidays is a built-in featurization that incorporates a feature-engineered dataset of
    #       national holiday information into your model. It provides native support for the holiday
    #       calendars of 66 countries. To view the holiday calendars, refer to the <a href="http://jollyday.sourceforge.net/data.html">Jollyday</a> library. For more
    #       information, see <a href="https://docs.aws.amazon.com/forecast/latest/dg/holidays.html">Holidays Featurization</a>.</p>
    # @!attribute name
    #   <p>The name of the feature. Valid values: <code>"holiday"</code> and
    #         <code>"weather"</code>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>
    #               <b>Weather Index</b>
    #            </p>
    #            <p>To enable the Weather Index, set the value to <code>"true"</code>
    #            </p>
    #            <p>
    #               <b>Holidays</b>
    #            </p>
    #            <p>To enable Holidays, specify a country with one of the following two-letter country
    #         codes:</p>
    #            <ul>
    #               <li>
    #                  <p>"AL" - ALBANIA</p>
    #               </li>
    #               <li>
    #                  <p>"AR" - ARGENTINA</p>
    #               </li>
    #               <li>
    #                  <p>"AT" - AUSTRIA</p>
    #               </li>
    #               <li>
    #                  <p>"AU" - AUSTRALIA</p>
    #               </li>
    #               <li>
    #                  <p>"BA" - BOSNIA HERZEGOVINA</p>
    #               </li>
    #               <li>
    #                  <p>"BE" - BELGIUM</p>
    #               </li>
    #               <li>
    #                  <p>"BG" - BULGARIA</p>
    #               </li>
    #               <li>
    #                  <p>"BO" - BOLIVIA</p>
    #               </li>
    #               <li>
    #                  <p>"BR" - BRAZIL</p>
    #               </li>
    #               <li>
    #                  <p>"BY" - BELARUS</p>
    #               </li>
    #               <li>
    #                  <p>"CA" - CANADA</p>
    #               </li>
    #               <li>
    #                  <p>"CL" - CHILE</p>
    #               </li>
    #               <li>
    #                  <p>"CO" - COLOMBIA</p>
    #               </li>
    #               <li>
    #                  <p>"CR" - COSTA RICA</p>
    #               </li>
    #               <li>
    #                  <p>"HR" - CROATIA</p>
    #               </li>
    #               <li>
    #                  <p>"CZ" - CZECH REPUBLIC</p>
    #               </li>
    #               <li>
    #                  <p>"DK" - DENMARK</p>
    #               </li>
    #               <li>
    #                  <p>"EC" - ECUADOR</p>
    #               </li>
    #               <li>
    #                  <p>"EE" - ESTONIA</p>
    #               </li>
    #               <li>
    #                  <p>"ET" - ETHIOPIA</p>
    #               </li>
    #               <li>
    #                  <p>"FI" - FINLAND</p>
    #               </li>
    #               <li>
    #                  <p>"FR" - FRANCE</p>
    #               </li>
    #               <li>
    #                  <p>"DE" - GERMANY</p>
    #               </li>
    #               <li>
    #                  <p>"GR" - GREECE</p>
    #               </li>
    #               <li>
    #                  <p>"HU" - HUNGARY</p>
    #               </li>
    #               <li>
    #                  <p>"IS" - ICELAND</p>
    #               </li>
    #               <li>
    #                  <p>"IN" - INDIA</p>
    #               </li>
    #               <li>
    #                  <p>"IE" - IRELAND</p>
    #               </li>
    #               <li>
    #                  <p>"IT" - ITALY</p>
    #               </li>
    #               <li>
    #                  <p>"JP" - JAPAN</p>
    #               </li>
    #               <li>
    #                  <p>"KZ" - KAZAKHSTAN</p>
    #               </li>
    #               <li>
    #                  <p>"KR" - KOREA</p>
    #               </li>
    #               <li>
    #                  <p>"LV" - LATVIA</p>
    #               </li>
    #               <li>
    #                  <p>"LI" - LIECHTENSTEIN</p>
    #               </li>
    #               <li>
    #                  <p>"LT" - LITHUANIA</p>
    #               </li>
    #               <li>
    #                  <p>"LU" - LUXEMBOURG</p>
    #               </li>
    #               <li>
    #                  <p>"MK" - MACEDONIA</p>
    #               </li>
    #               <li>
    #                  <p>"MT" - MALTA</p>
    #               </li>
    #               <li>
    #                  <p>"MX" - MEXICO</p>
    #               </li>
    #               <li>
    #                  <p>"MD" - MOLDOVA</p>
    #               </li>
    #               <li>
    #                  <p>"ME" - MONTENEGRO</p>
    #               </li>
    #               <li>
    #                  <p>"NL" - NETHERLANDS</p>
    #               </li>
    #               <li>
    #                  <p>"NZ" - NEW ZEALAND</p>
    #               </li>
    #               <li>
    #                  <p>"NI" - NICARAGUA</p>
    #               </li>
    #               <li>
    #                  <p>"NG" - NIGERIA</p>
    #               </li>
    #               <li>
    #                  <p>"NO" - NORWAY</p>
    #               </li>
    #               <li>
    #                  <p>"PA" - PANAMA</p>
    #               </li>
    #               <li>
    #                  <p>"PY" - PARAGUAY</p>
    #               </li>
    #               <li>
    #                  <p>"PE" - PERU</p>
    #               </li>
    #               <li>
    #                  <p>"PL" - POLAND</p>
    #               </li>
    #               <li>
    #                  <p>"PT" - PORTUGAL</p>
    #               </li>
    #               <li>
    #                  <p>"RO" - ROMANIA</p>
    #               </li>
    #               <li>
    #                  <p>"RU" - RUSSIA</p>
    #               </li>
    #               <li>
    #                  <p>"RS" - SERBIA</p>
    #               </li>
    #               <li>
    #                  <p>"SK" - SLOVAKIA</p>
    #               </li>
    #               <li>
    #                  <p>"SI" - SLOVENIA</p>
    #               </li>
    #               <li>
    #                  <p>"ZA" - SOUTH AFRICA</p>
    #               </li>
    #               <li>
    #                  <p>"ES" - SPAIN</p>
    #               </li>
    #               <li>
    #                  <p>"SE" - SWEDEN</p>
    #               </li>
    #               <li>
    #                  <p>"CH" - SWITZERLAND</p>
    #               </li>
    #               <li>
    #                  <p>"UA" - UKRAINE</p>
    #               </li>
    #               <li>
    #                  <p>"AE" - UNITED ARAB EMIRATES</p>
    #               </li>
    #               <li>
    #                  <p>"US" - UNITED STATES</p>
    #               </li>
    #               <li>
    #                  <p>"UK" - UNITED KINGDOM</p>
    #               </li>
    #               <li>
    #                  <p>"UY" - URUGUAY</p>
    #               </li>
    #               <li>
    #                  <p>"VE" - VENEZUELA</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class SupplementaryFeature < Struct.new(
      nil,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The optional metadata that you apply to a resource to help you categorize and organize
    #       them. Each tag consists of a key and an optional value, both of which you define.</p>
    #          <p>The following basic restrictions apply to tags:</p>
    #          <ul>
    #             <li>
    #                <p>Maximum number of tags per resource - 50.</p>
    #             </li>
    #             <li>
    #                <p>For each resource, each tag key must be unique, and each tag key can have only one
    #           value.</p>
    #             </li>
    #             <li>
    #                <p>Maximum key length - 128 Unicode characters in UTF-8.</p>
    #             </li>
    #             <li>
    #                <p>Maximum value length - 256 Unicode characters in UTF-8.</p>
    #             </li>
    #             <li>
    #                <p>If your tagging schema is used across multiple services and resources, remember that
    #           other services may have restrictions on allowed characters. Generally allowed characters
    #           are: letters, numbers, and spaces representable in UTF-8, and the following characters: +
    #           - = . _ : / @.</p>
    #             </li>
    #             <li>
    #                <p>Tag keys and values are case sensitive.</p>
    #             </li>
    #             <li>
    #                <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination
    #           of such as a prefix for keys as it is reserved for Amazon Web Services use. You cannot edit or delete tag
    #           keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as
    #           its prefix but the key does not, then Forecast considers it to be a user tag and will
    #           count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do
    #           not count against your tags per resource limit.</p>
    #             </li>
    #          </ul>
    # @!attribute key
    #   <p>One part of a key-value pair that makes up a tag. A <code>key</code> is a general label
    #         that acts like a category for more specific tag values.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The optional part of a key-value pair that makes up a tag. A <code>value</code> acts as a
    #         descriptor within a tag category (key).</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags.
    #       </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to the resource. A tag is an array of key-value pairs.</p>
    #            <p>The following basic restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of tags per resource - 50.</p>
    #               </li>
    #               <li>
    #                  <p>For each resource, each tag key must be unique, and each tag key can have only one
    #             value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length - 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length - 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>If your tagging schema is used across multiple services and resources, remember that
    #             other services may have restrictions on allowed characters. Generally allowed characters
    #             are: letters, numbers, and spaces representable in UTF-8, and the following characters: +
    #             - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination
    #             of such as a prefix for keys as it is reserved for Amazon Web Services use. You cannot edit or delete tag
    #             keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as
    #             its prefix but the key does not, then Forecast considers it to be a user tag and will
    #             count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do
    #             not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The status, start time, and end time of a backtest, as well as a failure reason if
    #       applicable.</p>
    # @!attribute test_window_start
    #   <p>The time at which the test began.</p>
    #   @return [Time]
    # @!attribute test_window_end
    #   <p>The time at which the test ended.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the test. Possible status values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_FAILED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute message
    #   <p>If the test failed, the reason why it failed.</p>
    #   @return [String]
    class TestWindowSummary < Struct.new(
      nil,
      :test_window_start,
      :test_window_end,
      :status,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The time boundary Forecast uses to align and aggregate your data to match your forecast frequency. Provide the unit of time and the time boundary as a key value pair. If you
    #             don't provide a time boundary, Forecast uses a set of <a href="https://docs.aws.amazon.com/forecast/latest/dg/data-aggregation.html#default-time-boundaries">Default Time Boundaries</a>.
    #         </p>
    #          <p>For more information about aggregation,
    #             see <a href="https://docs.aws.amazon.com/forecast/latest/dg/data-aggregation.html">Data Aggregation for Different Forecast Frequencies</a>.
    #             For more information setting a custom time boundary,
    #             see <a href="https://docs.aws.amazon.com/forecast/latest/dg/data-aggregation.html#specifying-time-boundary">Specifying a Time Boundary</a>.
    #         
    #         </p>
    # @!attribute month
    #   <p>The month to use for time alignment during aggregation. The month must be in uppercase.</p>
    #   @return [String]
    # @!attribute day_of_month
    #   <p>The day of the month to use for time alignment during aggregation.</p>
    #   @return [Integer]
    # @!attribute day_of_week
    #   <p>The day of week to use for time alignment during aggregation. The day must be in uppercase.</p>
    #   @return [String]
    # @!attribute hour
    #   <p>The hour of day to use for time alignment during aggregation.</p>
    #   @return [Integer]
    class TimeAlignmentBoundary < Struct.new(
      nil,
      :month,
      :day_of_month,
      :day_of_week,
      :hour,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Creates a subset of items within an attribute that are modified. For example, you can use this operation to create a subset of items that cost $5 or less. To do this, you specify <code>"AttributeName": "price"</code>, <code>"AttributeValue": "5"</code>, and <code>"Condition": "LESS_THAN"</code>. Pair this operation with the <a>Action</a> operation within the <a>CreateWhatIfForecastRequest$TimeSeriesTransformations</a> operation to define how the attribute is modified.</p>
    # @!attribute attribute_name
    #   <p>The item_id, dimension name, IM name, or timestamp that you are modifying.</p>
    #   @return [String]
    # @!attribute attribute_value
    #   <p>The value that is applied for the chosen <code>Condition</code>.</p>
    #   @return [String]
    # @!attribute condition
    #   <p>The condition to apply. Valid values are <code>EQUALS</code>, <code>NOT_EQUALS</code>, <code>LESS_THAN</code> and
    #         <code>GREATER_THAN</code>.</p>
    #   @return [String]
    class TimeSeriesCondition < Struct.new(
      nil,
      :attribute_name,
      :attribute_value,
      :condition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the import file that contains the time series for which you want to create forecasts.</p>
    # @!attribute data_source
    #   <p>The source of your data, an Identity and Access Management (IAM) role that allows Amazon Forecast to
    #         access the data and, optionally, an Key Management Service (KMS) key.</p>
    #   @return [Types::DataSource]
    # @!attribute schema
    #   <p>Defines the fields of a dataset.</p>
    #   @return [Types::Schema]
    # @!attribute format
    #   <p>The format of the data, either CSV or PARQUET.</p>
    #   @return [String]
    class TimeSeriesIdentifiers < Struct.new(
      nil,
      :data_source,
      :schema,
      :format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A replacement dataset is a modified version of the baseline related time series that contains only the values
    #       that you want to include in a what-if forecast. The replacement dataset must contain the forecast dimensions and
    #       item identifiers in the baseline related time series as well as at least 1 changed time series. This dataset is
    #       merged with the baseline related time series to create a transformed dataset that is used for the what-if
    #       forecast.</p>
    # @!attribute s3_config
    #   <p>The path to the file(s) in an Amazon Simple Storage Service (Amazon S3) bucket, and an Identity and Access Management (IAM) role that
    #         Amazon Forecast can assume to access the file(s). Optionally, includes an Key Management Service (KMS) key. This
    #         object is part of the <a>DataSource</a> object that is submitted in the <a>CreateDatasetImportJob</a> request, and part of the <a>DataDestination</a> object.</p>
    #   @return [Types::S3Config]
    # @!attribute schema
    #   <p>Defines the fields of a dataset.</p>
    #   @return [Types::Schema]
    # @!attribute format
    #   <p>The format of the replacement data, CSV or PARQUET.</p>
    #   @return [String]
    # @!attribute timestamp_format
    #   <p>The timestamp format of the replacement data.</p>
    #   @return [String]
    class TimeSeriesReplacementsDataSource < Struct.new(
      nil,
      :s3_config,
      :schema,
      :format,
      :timestamp_format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the set of time series that are used to create the forecasts in a <code>TimeSeriesIdentifiers</code> object.</p>
    #          <p>The <code>TimeSeriesIdentifiers</code> object needs the following information:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>DataSource</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Format</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Schema</code>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute time_series_identifiers
    #   <p>Details about the import file that contains the time series for which you want to create forecasts.</p>
    #   @return [Types::TimeSeriesIdentifiers]
    class TimeSeriesSelector < Struct.new(
      nil,
      :time_series_identifiers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A transformation function is a pair of operations that select and modify the rows in a related time series. You select the rows that you want with a condition operation and you modify the rows with a transformation operation. All conditions are joined with an AND operation, meaning that all conditions must be true for the transformation to be applied. Transformations are applied in the order that they are listed.</p>
    # @!attribute action
    #   <p>An array of actions that define a time series and how it is transformed. These transformations create a new
    #         time series that is used for the what-if analysis.</p>
    #   @return [Types::Action]
    # @!attribute time_series_conditions
    #   <p>An array of conditions that define which members of the related time series are transformed.</p>
    #   @return [Array<Types::TimeSeriesCondition>]
    class TimeSeriesTransformation < Struct.new(
      nil,
      :action,
      :time_series_conditions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags.
    #       </p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys of the tags to be removed.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_group_arn
    #   <p>The ARN of the dataset group.</p>
    #   @return [String]
    # @!attribute dataset_arns
    #   <p>An array of the Amazon Resource Names (ARNs) of the datasets to add to the dataset
    #         group.</p>
    #   @return [Array<String>]
    class UpdateDatasetGroupRequest < Struct.new(
      nil,
      :dataset_group_arn,
      :dataset_arns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateDatasetGroupResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The weighted loss value for a quantile. This object is part of the <a>Metrics</a> object.</p>
    # @!attribute quantile
    #   <p>The quantile. Quantiles divide a probability distribution into regions of equal
    #         probability. For example, if the distribution was divided into 5 regions of equal probability,
    #         the quantiles would be 0.2, 0.4, 0.6, and 0.8.</p>
    #   @return [Float]
    # @!attribute loss_value
    #   <p>The difference between the predicted value and the actual value over the quantile,
    #         weighted (normalized) by dividing by the sum over all quantiles.</p>
    #   @return [Float]
    class WeightedQuantileLoss < Struct.new(
      nil,
      :quantile,
      :loss_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of the what-if analysis properties used in the <a>ListWhatIfAnalyses</a> operation. To get the complete set of properties, call the <a>DescribeWhatIfAnalysis</a> operation, and provide the <code>WhatIfAnalysisArn</code> that is listed in the summary.</p>
    # @!attribute what_if_analysis_arn
    #   <p>The Amazon Resource Name (ARN) of the what-if analysis.</p>
    #   @return [String]
    # @!attribute what_if_analysis_name
    #   <p>The name of the what-if analysis.</p>
    #   @return [String]
    # @!attribute forecast_arn
    #   <p>The Amazon Resource Name (ARN) of the baseline forecast that is being used in this what-if analysis.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the what-if analysis. States include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
    #             <code>CREATE_FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code>, <code>CREATE_STOPPED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
    #             <code>DELETE_FAILED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The <code>Status</code> of the what-if analysis must be <code>ACTIVE</code> before you can access the
    #           analysis.</p>
    #            </note>
    #   @return [String]
    # @!attribute message
    #   <p>If an error occurred, an informational message about the error.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the what-if analysis was created.</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The last time the resource was modified. The timestamp depends on the status of the job:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code> - The <code>CreationTime</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPED</code> - When the job stopped.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> or <code>CREATE_FAILED</code> - When the job finished or
    #               failed.</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    class WhatIfAnalysisSummary < Struct.new(
      nil,
      :what_if_analysis_arn,
      :what_if_analysis_name,
      :forecast_arn,
      :status,
      :message,
      :creation_time,
      :last_modification_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of the what-if forecast export properties used in the <a>ListWhatIfForecastExports</a> operation. To get the complete set of properties, call the <a>DescribeWhatIfForecastExport</a> operation, and provide the <code>WhatIfForecastExportArn</code> that is listed in the summary.</p>
    # @!attribute what_if_forecast_export_arn
    #   <p>The Amazon Resource Name (ARN) of the what-if forecast export.</p>
    #   @return [String]
    # @!attribute what_if_forecast_arns
    #   <p>An array of Amazon Resource Names (ARNs) that define the what-if forecasts included in the export.</p>
    #   @return [Array<String>]
    # @!attribute what_if_forecast_export_name
    #   <p>The what-if forecast export name.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The path to the Amazon Simple Storage Service (Amazon S3) bucket where the forecast is exported.</p>
    #   @return [Types::DataDestination]
    # @!attribute status
    #   <p>The status of the what-if forecast export. States include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
    #             <code>CREATE_FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code>, <code>CREATE_STOPPED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
    #             <code>DELETE_FAILED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The <code>Status</code> of the what-if analysis must be <code>ACTIVE</code> before you can access the
    #           analysis.</p>
    #            </note>
    #   @return [String]
    # @!attribute message
    #   <p>If an error occurred, an informational message about the error.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the what-if forecast export was created.</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The last time the resource was modified. The timestamp depends on the status of the job:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code> - The <code>CreationTime</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPED</code> - When the job stopped.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> or <code>CREATE_FAILED</code> - When the job finished or
    #             failed.</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    class WhatIfForecastExportSummary < Struct.new(
      nil,
      :what_if_forecast_export_arn,
      :what_if_forecast_arns,
      :what_if_forecast_export_name,
      :destination,
      :status,
      :message,
      :creation_time,
      :last_modification_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of the what-if forecast properties used in the <a>ListWhatIfForecasts</a> operation. To get the complete set of properties, call the <a>DescribeWhatIfForecast</a> operation, and provide the <code>WhatIfForecastArn</code> that is listed in the summary.</p>
    # @!attribute what_if_forecast_arn
    #   <p>The Amazon Resource Name (ARN) of the what-if forecast.</p>
    #   @return [String]
    # @!attribute what_if_forecast_name
    #   <p>The name of the what-if forecast.</p>
    #   @return [String]
    # @!attribute what_if_analysis_arn
    #   <p>The Amazon Resource Name (ARN) of the what-if analysis that contains this what-if forecast.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the what-if forecast. States include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
    #             <code>CREATE_FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code>, <code>CREATE_STOPPED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
    #             <code>DELETE_FAILED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The <code>Status</code> of the what-if analysis must be <code>ACTIVE</code> before you can access the
    #           analysis.</p>
    #            </note>
    #   @return [String]
    # @!attribute message
    #   <p>If an error occurred, an informational message about the error.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the what-if forecast was created.</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The last time the resource was modified. The timestamp depends on the status of the job:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_PENDING</code> - The <code>CreationTime</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPING</code> - The current timestamp.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_STOPPED</code> - When the job stopped.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> or <code>CREATE_FAILED</code> - When the job finished or
    #             failed.</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    class WhatIfForecastSummary < Struct.new(
      nil,
      :what_if_forecast_arn,
      :what_if_forecast_name,
      :what_if_analysis_arn,
      :status,
      :message,
      :creation_time,
      :last_modification_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The metrics for a time range within the evaluation portion of a dataset. This object is
    #       part of the <a>EvaluationResult</a> object.</p>
    #          <p>The <code>TestWindowStart</code> and <code>TestWindowEnd</code> parameters are determined
    #       by the <code>BackTestWindowOffset</code> parameter of the <a>EvaluationParameters</a> object.</p>
    # @!attribute test_window_start
    #   <p>The timestamp that defines the start of the window.</p>
    #   @return [Time]
    # @!attribute test_window_end
    #   <p>The timestamp that defines the end of the window.</p>
    #   @return [Time]
    # @!attribute item_count
    #   <p>The number of data points within the window.</p>
    #   @return [Integer]
    # @!attribute evaluation_type
    #   <p>The type of evaluation.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SUMMARY</code> - The average metrics across all windows.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPUTED</code> - The metrics for the specified window.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute metrics
    #   <p>Provides metrics used to evaluate the performance of a predictor.</p>
    #   @return [Types::Metrics]
    class WindowSummary < Struct.new(
      nil,
      :test_window_start,
      :test_window_end,
      :item_count,
      :evaluation_type,
      :metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
