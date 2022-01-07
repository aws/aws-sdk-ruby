# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ForecastService
  module Types

    # Describes an additional dataset. This object is part of the DataConfig
    # object. Forecast supports the Weather Index and Holidays additional
    # datasets.
    #
    # **Weather Index**
    #
    # The Amazon Forecast Weather Index is a built-in dataset that
    # incorporates historical and projected weather information into your
    # model. The Weather Index supplements your datasets with over two years
    # of historical weather data and up to 14 days of projected weather
    # data. For more information, see [Amazon Forecast Weather Index][1].
    #
    # **Holidays**
    #
    # Holidays is a built-in dataset that incorporates national holiday
    # information into your model. It provides native support for the
    # holiday calendars of 66 countries. To view the holiday calendars,
    # refer to the [Jollyday][2] library. For more information, see
    # [Holidays Featurization][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/forecast/latest/dg/weather.html
    # [2]: http://jollyday.sourceforge.net/data.html
    # [3]: https://docs.aws.amazon.com/forecast/latest/dg/holidays.html
    #
    # @note When making an API call, you may pass AdditionalDataset
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         configuration: {
    #           "Name" => ["Value"],
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the additional dataset. Valid names: `"holiday"` and
    #   `"weather"`.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   **Weather Index**
    #
    #   To enable the Weather Index, do not specify a value for
    #   `Configuration`.
    #
    #   **Holidays**
    #
    #   To enable Holidays, set `CountryCode` to one of the following
    #   two-letter country codes:
    #
    #   * "AL" - ALBANIA
    #
    #   * "AR" - ARGENTINA
    #
    #   * "AT" - AUSTRIA
    #
    #   * "AU" - AUSTRALIA
    #
    #   * "BA" - BOSNIA HERZEGOVINA
    #
    #   * "BE" - BELGIUM
    #
    #   * "BG" - BULGARIA
    #
    #   * "BO" - BOLIVIA
    #
    #   * "BR" - BRAZIL
    #
    #   * "BY" - BELARUS
    #
    #   * "CA" - CANADA
    #
    #   * "CL" - CHILE
    #
    #   * "CO" - COLOMBIA
    #
    #   * "CR" - COSTA RICA
    #
    #   * "HR" - CROATIA
    #
    #   * "CZ" - CZECH REPUBLIC
    #
    #   * "DK" - DENMARK
    #
    #   * "EC" - ECUADOR
    #
    #   * "EE" - ESTONIA
    #
    #   * "ET" - ETHIOPIA
    #
    #   * "FI" - FINLAND
    #
    #   * "FR" - FRANCE
    #
    #   * "DE" - GERMANY
    #
    #   * "GR" - GREECE
    #
    #   * "HU" - HUNGARY
    #
    #   * "IS" - ICELAND
    #
    #   * "IN" - INDIA
    #
    #   * "IE" - IRELAND
    #
    #   * "IT" - ITALY
    #
    #   * "JP" - JAPAN
    #
    #   * "KZ" - KAZAKHSTAN
    #
    #   * "KR" - KOREA
    #
    #   * "LV" - LATVIA
    #
    #   * "LI" - LIECHTENSTEIN
    #
    #   * "LT" - LITHUANIA
    #
    #   * "LU" - LUXEMBOURG
    #
    #   * "MK" - MACEDONIA
    #
    #   * "MT" - MALTA
    #
    #   * "MX" - MEXICO
    #
    #   * "MD" - MOLDOVA
    #
    #   * "ME" - MONTENEGRO
    #
    #   * "NL" - NETHERLANDS
    #
    #   * "NZ" - NEW ZEALAND
    #
    #   * "NI" - NICARAGUA
    #
    #   * "NG" - NIGERIA
    #
    #   * "NO" - NORWAY
    #
    #   * "PA" - PANAMA
    #
    #   * "PY" - PARAGUAY
    #
    #   * "PE" - PERU
    #
    #   * "PL" - POLAND
    #
    #   * "PT" - PORTUGAL
    #
    #   * "RO" - ROMANIA
    #
    #   * "RU" - RUSSIA
    #
    #   * "RS" - SERBIA
    #
    #   * "SK" - SLOVAKIA
    #
    #   * "SI" - SLOVENIA
    #
    #   * "ZA" - SOUTH AFRICA
    #
    #   * "ES" - SPAIN
    #
    #   * "SE" - SWEDEN
    #
    #   * "CH" - SWITZERLAND
    #
    #   * "UA" - UKRAINE
    #
    #   * "AE" - UNITED ARAB EMIRATES
    #
    #   * "US" - UNITED STATES
    #
    #   * "UK" - UNITED KINGDOM
    #
    #   * "UY" - URUGUAY
    #
    #   * "VE" - VENEZUELA
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/AdditionalDataset AWS API Documentation
    #
    class AdditionalDataset < Struct.new(
      :name,
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the method used to transform attributes.
    #
    # The following is an example using the RETAIL domain:
    #
    # `\{`
    #
    # `"AttributeName": "demand",`
    #
    # `"Transformations": \{"aggregation": "sum", "middlefill": "zero",
    # "backfill": "zero"\}`
    #
    # `\}`
    #
    # @note When making an API call, you may pass AttributeConfig
    #   data as a hash:
    #
    #       {
    #         attribute_name: "Name", # required
    #         transformations: { # required
    #           "Name" => "Value",
    #         },
    #       }
    #
    # @!attribute [rw] attribute_name
    #   The name of the attribute as specified in the schema. Amazon
    #   Forecast supports the target field of the target time series and the
    #   related time series datasets. For example, for the RETAIL domain,
    #   the target is `demand`.
    #   @return [String]
    #
    # @!attribute [rw] transformations
    #   The method parameters (key-value pairs), which are a map of override
    #   parameters. Specify these parameters to override the default values.
    #   Related Time Series attributes do not accept aggregation parameters.
    #
    #   The following list shows the parameters and their valid values for
    #   the "filling" featurization method for a **Target Time Series**
    #   dataset. Default values are bolded.
    #
    #   * `aggregation`\: **sum**, `avg`, `first`, `min`, `max`
    #
    #   * `frontfill`\: **none**
    #
    #   * `middlefill`\: **zero**, `nan` (not a number), `value`, `median`,
    #     `mean`, `min`, `max`
    #
    #   * `backfill`\: **zero**, `nan`, `value`, `median`, `mean`, `min`,
    #     `max`
    #
    #   The following list shows the parameters and their valid values for a
    #   **Related Time Series** featurization method (there are no
    #   defaults):
    #
    #   * `middlefill`\: `zero`, `value`, `median`, `mean`, `min`, `max`
    #
    #   * `backfill`\: `zero`, `value`, `median`, `mean`, `min`, `max`
    #
    #   * `futurefill`\: `zero`, `value`, `median`, `mean`, `min`, `max`
    #
    #   To set a filling method to a specific value, set the fill parameter
    #   to `value` and define the value in a corresponding `_value`
    #   parameter. For example, to set backfilling to a value of 2, include
    #   the following: `"backfill": "value"` and `"backfill_value":"2"`.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/AttributeConfig AWS API Documentation
    #
    class AttributeConfig < Struct.new(
      :attribute_name,
      :transformations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a categorical hyperparameter and it's range of tunable
    # values. This object is part of the ParameterRanges object.
    #
    # @note When making an API call, you may pass CategoricalParameterRange
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         values: ["Value"], # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the categorical hyperparameter to tune.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   A list of the tunable categories for the hyperparameter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/CategoricalParameterRange AWS API Documentation
    #
    class CategoricalParameterRange < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a continuous hyperparameter and it's range of tunable
    # values. This object is part of the ParameterRanges object.
    #
    # @note When making an API call, you may pass ContinuousParameterRange
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         max_value: 1.0, # required
    #         min_value: 1.0, # required
    #         scaling_type: "Auto", # accepts Auto, Linear, Logarithmic, ReverseLogarithmic
    #       }
    #
    # @!attribute [rw] name
    #   The name of the hyperparameter to tune.
    #   @return [String]
    #
    # @!attribute [rw] max_value
    #   The maximum tunable value of the hyperparameter.
    #   @return [Float]
    #
    # @!attribute [rw] min_value
    #   The minimum tunable value of the hyperparameter.
    #   @return [Float]
    #
    # @!attribute [rw] scaling_type
    #   The scale that hyperparameter tuning uses to search the
    #   hyperparameter range. Valid values:
    #
    #   Auto
    #
    #   : Amazon Forecast hyperparameter tuning chooses the best scale for
    #     the hyperparameter.
    #
    #   Linear
    #
    #   : Hyperparameter tuning searches the values in the hyperparameter
    #     range by using a linear scale.
    #
    #   Logarithmic
    #
    #   : Hyperparameter tuning searches the values in the hyperparameter
    #     range by using a logarithmic scale.
    #
    #     Logarithmic scaling works only for ranges that have values greater
    #     than 0.
    #
    #   ReverseLogarithmic
    #
    #   : hyperparameter tuning searches the values in the hyperparameter
    #     range by using a reverse logarithmic scale.
    #
    #     Reverse logarithmic scaling works only for ranges that are
    #     entirely within the range 0 &lt;= x &lt; 1.0.
    #
    #   For information about choosing a hyperparameter scale, see
    #   [Hyperparameter Scaling][1]. One of the following values:
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/automatic-model-tuning-define-ranges.html#scaling-type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ContinuousParameterRange AWS API Documentation
    #
    class ContinuousParameterRange < Struct.new(
      :name,
      :max_value,
      :min_value,
      :scaling_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAutoPredictorRequest
    #   data as a hash:
    #
    #       {
    #         predictor_name: "Name", # required
    #         forecast_horizon: 1,
    #         forecast_types: ["ForecastType"],
    #         forecast_dimensions: ["Name"],
    #         forecast_frequency: "Frequency",
    #         data_config: {
    #           dataset_group_arn: "Arn", # required
    #           attribute_configs: [
    #             {
    #               attribute_name: "Name", # required
    #               transformations: { # required
    #                 "Name" => "Value",
    #               },
    #             },
    #           ],
    #           additional_datasets: [
    #             {
    #               name: "Name", # required
    #               configuration: {
    #                 "Name" => ["Value"],
    #               },
    #             },
    #           ],
    #         },
    #         encryption_config: {
    #           role_arn: "Arn", # required
    #           kms_key_arn: "KMSKeyArn", # required
    #         },
    #         reference_predictor_arn: "Arn",
    #         optimization_metric: "WAPE", # accepts WAPE, RMSE, AverageWeightedQuantileLoss, MASE, MAPE
    #         explain_predictor: false,
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] predictor_name
    #   A unique name for the predictor
    #   @return [String]
    #
    # @!attribute [rw] forecast_horizon
    #   The number of time-steps that the model predicts. The forecast
    #   horizon is also called the prediction length.
    #   @return [Integer]
    #
    # @!attribute [rw] forecast_types
    #   The forecast types used to train a predictor. You can specify up to
    #   five forecast types. Forecast types can be quantiles from 0.01 to
    #   0.99, by increments of 0.01 or higher. You can also specify the mean
    #   forecast with `mean`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] forecast_dimensions
    #   An array of dimension (field) names that specify how to group the
    #   generated forecast.
    #
    #   For example, if you are generating forecasts for item sales across
    #   all your stores, and your dataset contains a `store_id` field, you
    #   would specify `store_id` as a dimension to group sales forecasts for
    #   each store.
    #   @return [Array<String>]
    #
    # @!attribute [rw] forecast_frequency
    #   The frequency of predictions in a forecast.
    #
    #   Valid intervals are Y (Year), M (Month), W (Week), D (Day), H
    #   (Hour), 30min (30 minutes), 15min (15 minutes), 10min (10 minutes),
    #   5min (5 minutes), and 1min (1 minute). For example, "Y" indicates
    #   every year and "5min" indicates every five minutes.
    #
    #   The frequency must be greater than or equal to the
    #   TARGET\_TIME\_SERIES dataset frequency.
    #
    #   When a RELATED\_TIME\_SERIES dataset is provided, the frequency must
    #   be equal to the RELATED\_TIME\_SERIES dataset frequency.
    #   @return [String]
    #
    # @!attribute [rw] data_config
    #   The data configuration for your dataset group and any additional
    #   datasets.
    #   @return [Types::DataConfig]
    #
    # @!attribute [rw] encryption_config
    #   An AWS Key Management Service (KMS) key and an AWS Identity and
    #   Access Management (IAM) role that Amazon Forecast can assume to
    #   access the key. You can specify this optional object in the
    #   CreateDataset and CreatePredictor requests.
    #   @return [Types::EncryptionConfig]
    #
    # @!attribute [rw] reference_predictor_arn
    #   The ARN of the predictor to retrain or upgrade. This parameter is
    #   only used when retraining or upgrading a predictor. When creating a
    #   new predictor, do not specify a value for this parameter.
    #
    #   When upgrading or retraining a predictor, only specify values for
    #   the `ReferencePredictorArn` and `PredictorName`. The value for
    #   `PredictorName` must be a unique predictor name.
    #   @return [String]
    #
    # @!attribute [rw] optimization_metric
    #   The accuracy metric used to optimize the predictor.
    #   @return [String]
    #
    # @!attribute [rw] explain_predictor
    #   Create an Explainability resource for the predictor.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   Optional metadata to help you categorize and organize your
    #   predictors. Each tag consists of a key and an optional value, both
    #   of which you define. Tag keys and values are case sensitive.
    #
    #   The following restrictions apply to tags:
    #
    #   * For each resource, each tag key must be unique and each tag key
    #     must have one value.
    #
    #   * Maximum number of tags per resource: 50.
    #
    #   * Maximum key length: 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length: 256 Unicode characters in UTF-8.
    #
    #   * Accepted characters: all letters and numbers, spaces representable
    #     in UTF-8, and + - = . \_ : / @. If your tagging schema is used
    #     across other services and resources, the character restrictions of
    #     those services also apply.
    #
    #   * Key prefixes cannot include any upper or lowercase combination of
    #     `aws:` or `AWS:`. Values can have this prefix. If a tag value has
    #     `aws` as its prefix but the key does not, Forecast considers it to
    #     be a user tag and will count against the limit of 50 tags. Tags
    #     with only the key prefix of `aws` do not count against your tags
    #     per resource limit. You cannot edit or delete tag keys with this
    #     prefix.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/CreateAutoPredictorRequest AWS API Documentation
    #
    class CreateAutoPredictorRequest < Struct.new(
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
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] predictor_arn
    #   The Amazon Resource Name (ARN) of the predictor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/CreateAutoPredictorResponse AWS API Documentation
    #
    class CreateAutoPredictorResponse < Struct.new(
      :predictor_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDatasetGroupRequest
    #   data as a hash:
    #
    #       {
    #         dataset_group_name: "Name", # required
    #         domain: "RETAIL", # required, accepts RETAIL, CUSTOM, INVENTORY_PLANNING, EC2_CAPACITY, WORK_FORCE, WEB_TRAFFIC, METRICS
    #         dataset_arns: ["Arn"],
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] dataset_group_name
    #   A name for the dataset group.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain associated with the dataset group. When you add a dataset
    #   to a dataset group, this value and the value specified for the
    #   `Domain` parameter of the CreateDataset operation must match.
    #
    #   The `Domain` and `DatasetType` that you choose determine the fields
    #   that must be present in training data that you import to a dataset.
    #   For example, if you choose the `RETAIL` domain and
    #   `TARGET_TIME_SERIES` as the `DatasetType`, Amazon Forecast requires
    #   that `item_id`, `timestamp`, and `demand` fields are present in your
    #   data. For more information, see howitworks-datasets-groups.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arns
    #   An array of Amazon Resource Names (ARNs) of the datasets that you
    #   want to include in the dataset group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The optional metadata that you apply to the dataset group to help
    #   you categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination
    #     of such as a prefix for keys as it is reserved for AWS use. You
    #     cannot edit or delete tag keys with this prefix. Values can have
    #     this prefix. If a tag value has `aws` as its prefix but the key
    #     does not, then Forecast considers it to be a user tag and will
    #     count against the limit of 50 tags. Tags with only the key prefix
    #     of `aws` do not count against your tags per resource limit.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/CreateDatasetGroupRequest AWS API Documentation
    #
    class CreateDatasetGroupRequest < Struct.new(
      :dataset_group_name,
      :domain,
      :dataset_arns,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_group_arn
    #   The Amazon Resource Name (ARN) of the dataset group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/CreateDatasetGroupResponse AWS API Documentation
    #
    class CreateDatasetGroupResponse < Struct.new(
      :dataset_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDatasetImportJobRequest
    #   data as a hash:
    #
    #       {
    #         dataset_import_job_name: "Name", # required
    #         dataset_arn: "Arn", # required
    #         data_source: { # required
    #           s3_config: { # required
    #             path: "S3Path", # required
    #             role_arn: "Arn", # required
    #             kms_key_arn: "KMSKeyArn",
    #           },
    #         },
    #         timestamp_format: "TimestampFormat",
    #         time_zone: "TimeZone",
    #         use_geolocation_for_time_zone: false,
    #         geolocation_format: "GeolocationFormat",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] dataset_import_job_name
    #   The name for the dataset import job. We recommend including the
    #   current timestamp in the name, for example, `20190721DatasetImport`.
    #   This can help you avoid getting a `ResourceAlreadyExistsException`
    #   exception.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the Amazon Forecast dataset that
    #   you want to import data to.
    #   @return [String]
    #
    # @!attribute [rw] data_source
    #   The location of the training data to import and an AWS Identity and
    #   Access Management (IAM) role that Amazon Forecast can assume to
    #   access the data. The training data must be stored in an Amazon S3
    #   bucket.
    #
    #   If encryption is used, `DataSource` must include an AWS Key
    #   Management Service (KMS) key and the IAM role must allow Amazon
    #   Forecast permission to access the key. The KMS key and IAM role must
    #   match those specified in the `EncryptionConfig` parameter of the
    #   CreateDataset operation.
    #   @return [Types::DataSource]
    #
    # @!attribute [rw] timestamp_format
    #   The format of timestamps in the dataset. The format that you specify
    #   depends on the `DataFrequency` specified when the dataset was
    #   created. The following formats are supported
    #
    #   * "yyyy-MM-dd"
    #
    #     For the following data frequencies: Y, M, W, and D
    #
    #   * "yyyy-MM-dd HH:mm:ss"
    #
    #     For the following data frequencies: H, 30min, 15min, and 1min; and
    #     optionally, for: Y, M, W, and D
    #
    #   If the format isn't specified, Amazon Forecast expects the format
    #   to be "yyyy-MM-dd HH:mm:ss".
    #   @return [String]
    #
    # @!attribute [rw] time_zone
    #   A single time zone for every item in your dataset. This option is
    #   ideal for datasets with all timestamps within a single time zone, or
    #   if all timestamps are normalized to a single time zone.
    #
    #   Refer to the [Joda-Time API][1] for a complete list of valid time
    #   zone names.
    #
    #
    #
    #   [1]: http://joda-time.sourceforge.net/timezones.html
    #   @return [String]
    #
    # @!attribute [rw] use_geolocation_for_time_zone
    #   Automatically derive time zone information from the geolocation
    #   attribute. This option is ideal for datasets that contain timestamps
    #   in multiple time zones and those timestamps are expressed in local
    #   time.
    #   @return [Boolean]
    #
    # @!attribute [rw] geolocation_format
    #   The format of the geolocation attribute. The geolocation attribute
    #   can be formatted in one of two ways:
    #
    #   * `LAT_LONG` - the latitude and longitude in decimal format
    #     (Example: 47.61\_-122.33).
    #
    #   * `CC_POSTALCODE` (US Only) - the country code (US), followed by the
    #     5-digit ZIP code (Example: US\_98121).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The optional metadata that you apply to the dataset import job to
    #   help you categorize and organize them. Each tag consists of a key
    #   and an optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination
    #     of such as a prefix for keys as it is reserved for AWS use. You
    #     cannot edit or delete tag keys with this prefix. Values can have
    #     this prefix. If a tag value has `aws` as its prefix but the key
    #     does not, then Forecast considers it to be a user tag and will
    #     count against the limit of 50 tags. Tags with only the key prefix
    #     of `aws` do not count against your tags per resource limit.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/CreateDatasetImportJobRequest AWS API Documentation
    #
    class CreateDatasetImportJobRequest < Struct.new(
      :dataset_import_job_name,
      :dataset_arn,
      :data_source,
      :timestamp_format,
      :time_zone,
      :use_geolocation_for_time_zone,
      :geolocation_format,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_import_job_arn
    #   The Amazon Resource Name (ARN) of the dataset import job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/CreateDatasetImportJobResponse AWS API Documentation
    #
    class CreateDatasetImportJobResponse < Struct.new(
      :dataset_import_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDatasetRequest
    #   data as a hash:
    #
    #       {
    #         dataset_name: "Name", # required
    #         domain: "RETAIL", # required, accepts RETAIL, CUSTOM, INVENTORY_PLANNING, EC2_CAPACITY, WORK_FORCE, WEB_TRAFFIC, METRICS
    #         dataset_type: "TARGET_TIME_SERIES", # required, accepts TARGET_TIME_SERIES, RELATED_TIME_SERIES, ITEM_METADATA
    #         data_frequency: "Frequency",
    #         schema: { # required
    #           attributes: [
    #             {
    #               attribute_name: "Name",
    #               attribute_type: "string", # accepts string, integer, float, timestamp, geolocation
    #             },
    #           ],
    #         },
    #         encryption_config: {
    #           role_arn: "Arn", # required
    #           kms_key_arn: "KMSKeyArn", # required
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] dataset_name
    #   A name for the dataset.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain associated with the dataset. When you add a dataset to a
    #   dataset group, this value and the value specified for the `Domain`
    #   parameter of the CreateDatasetGroup operation must match.
    #
    #   The `Domain` and `DatasetType` that you choose determine the fields
    #   that must be present in the training data that you import to the
    #   dataset. For example, if you choose the `RETAIL` domain and
    #   `TARGET_TIME_SERIES` as the `DatasetType`, Amazon Forecast requires
    #   `item_id`, `timestamp`, and `demand` fields to be present in your
    #   data. For more information, see howitworks-datasets-groups.
    #   @return [String]
    #
    # @!attribute [rw] dataset_type
    #   The dataset type. Valid values depend on the chosen `Domain`.
    #   @return [String]
    #
    # @!attribute [rw] data_frequency
    #   The frequency of data collection. This parameter is required for
    #   RELATED\_TIME\_SERIES datasets.
    #
    #   Valid intervals are Y (Year), M (Month), W (Week), D (Day), H
    #   (Hour), 30min (30 minutes), 15min (15 minutes), 10min (10 minutes),
    #   5min (5 minutes), and 1min (1 minute). For example, "D" indicates
    #   every day and "15min" indicates every 15 minutes.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The schema for the dataset. The schema attributes and their order
    #   must match the fields in your data. The dataset `Domain` and
    #   `DatasetType` that you choose determine the minimum required fields
    #   in your training data. For information about the required fields for
    #   a specific dataset domain and type, see howitworks-domains-ds-types.
    #   @return [Types::Schema]
    #
    # @!attribute [rw] encryption_config
    #   An AWS Key Management Service (KMS) key and the AWS Identity and
    #   Access Management (IAM) role that Amazon Forecast can assume to
    #   access the key.
    #   @return [Types::EncryptionConfig]
    #
    # @!attribute [rw] tags
    #   The optional metadata that you apply to the dataset to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination
    #     of such as a prefix for keys as it is reserved for AWS use. You
    #     cannot edit or delete tag keys with this prefix. Values can have
    #     this prefix. If a tag value has `aws` as its prefix but the key
    #     does not, then Forecast considers it to be a user tag and will
    #     count against the limit of 50 tags. Tags with only the key prefix
    #     of `aws` do not count against your tags per resource limit.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/CreateDatasetRequest AWS API Documentation
    #
    class CreateDatasetRequest < Struct.new(
      :dataset_name,
      :domain,
      :dataset_type,
      :data_frequency,
      :schema,
      :encryption_config,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/CreateDatasetResponse AWS API Documentation
    #
    class CreateDatasetResponse < Struct.new(
      :dataset_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateExplainabilityExportRequest
    #   data as a hash:
    #
    #       {
    #         explainability_export_name: "Name", # required
    #         explainability_arn: "Arn", # required
    #         destination: { # required
    #           s3_config: { # required
    #             path: "S3Path", # required
    #             role_arn: "Arn", # required
    #             kms_key_arn: "KMSKeyArn",
    #           },
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] explainability_export_name
    #   A unique name for the Explainability export.
    #   @return [String]
    #
    # @!attribute [rw] explainability_arn
    #   The Amazon Resource Name (ARN) of the Explainability to export.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The destination for an export job. Provide an S3 path, an AWS
    #   Identity and Access Management (IAM) role that allows Amazon
    #   Forecast to access the location, and an AWS Key Management Service
    #   (KMS) key (optional).
    #   @return [Types::DataDestination]
    #
    # @!attribute [rw] tags
    #   Optional metadata to help you categorize and organize your
    #   resources. Each tag consists of a key and an optional value, both of
    #   which you define. Tag keys and values are case sensitive.
    #
    #   The following restrictions apply to tags:
    #
    #   * For each resource, each tag key must be unique and each tag key
    #     must have one value.
    #
    #   * Maximum number of tags per resource: 50.
    #
    #   * Maximum key length: 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length: 256 Unicode characters in UTF-8.
    #
    #   * Accepted characters: all letters and numbers, spaces representable
    #     in UTF-8, and + - = . \_ : / @. If your tagging schema is used
    #     across other services and resources, the character restrictions of
    #     those services also apply.
    #
    #   * Key prefixes cannot include any upper or lowercase combination of
    #     `aws:` or `AWS:`. Values can have this prefix. If a tag value has
    #     `aws` as its prefix but the key does not, Forecast considers it to
    #     be a user tag and will count against the limit of 50 tags. Tags
    #     with only the key prefix of `aws` do not count against your tags
    #     per resource limit. You cannot edit or delete tag keys with this
    #     prefix.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/CreateExplainabilityExportRequest AWS API Documentation
    #
    class CreateExplainabilityExportRequest < Struct.new(
      :explainability_export_name,
      :explainability_arn,
      :destination,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] explainability_export_arn
    #   The Amazon Resource Name (ARN) of the export.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/CreateExplainabilityExportResponse AWS API Documentation
    #
    class CreateExplainabilityExportResponse < Struct.new(
      :explainability_export_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateExplainabilityRequest
    #   data as a hash:
    #
    #       {
    #         explainability_name: "Name", # required
    #         resource_arn: "Arn", # required
    #         explainability_config: { # required
    #           time_series_granularity: "ALL", # required, accepts ALL, SPECIFIC
    #           time_point_granularity: "ALL", # required, accepts ALL, SPECIFIC
    #         },
    #         data_source: {
    #           s3_config: { # required
    #             path: "S3Path", # required
    #             role_arn: "Arn", # required
    #             kms_key_arn: "KMSKeyArn",
    #           },
    #         },
    #         schema: {
    #           attributes: [
    #             {
    #               attribute_name: "Name",
    #               attribute_type: "string", # accepts string, integer, float, timestamp, geolocation
    #             },
    #           ],
    #         },
    #         enable_visualization: false,
    #         start_date_time: "LocalDateTime",
    #         end_date_time: "LocalDateTime",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] explainability_name
    #   A unique name for the Explainability.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Predictor or Forecast used to
    #   create the Explainability.
    #   @return [String]
    #
    # @!attribute [rw] explainability_config
    #   The configuration settings that define the granularity of time
    #   series and time points for the Explainability.
    #   @return [Types::ExplainabilityConfig]
    #
    # @!attribute [rw] data_source
    #   The source of your data, an AWS Identity and Access Management (IAM)
    #   role that allows Amazon Forecast to access the data and, optionally,
    #   an AWS Key Management Service (KMS) key.
    #   @return [Types::DataSource]
    #
    # @!attribute [rw] schema
    #   Defines the fields of a dataset.
    #   @return [Types::Schema]
    #
    # @!attribute [rw] enable_visualization
    #   Create an Expainability visualization that is viewable within the
    #   AWS console.
    #   @return [Boolean]
    #
    # @!attribute [rw] start_date_time
    #   If `TimePointGranularity` is set to `SPECIFIC`, define the first
    #   point for the Explainability.
    #
    #   Use the following timestamp format: yyyy-MM-ddTHH:mm:ss (example:
    #   2015-01-01T20:00:00)
    #   @return [String]
    #
    # @!attribute [rw] end_date_time
    #   If `TimePointGranularity` is set to `SPECIFIC`, define the last time
    #   point for the Explainability.
    #
    #   Use the following timestamp format: yyyy-MM-ddTHH:mm:ss (example:
    #   2015-01-01T20:00:00)
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Optional metadata to help you categorize and organize your
    #   resources. Each tag consists of a key and an optional value, both of
    #   which you define. Tag keys and values are case sensitive.
    #
    #   The following restrictions apply to tags:
    #
    #   * For each resource, each tag key must be unique and each tag key
    #     must have one value.
    #
    #   * Maximum number of tags per resource: 50.
    #
    #   * Maximum key length: 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length: 256 Unicode characters in UTF-8.
    #
    #   * Accepted characters: all letters and numbers, spaces representable
    #     in UTF-8, and + - = . \_ : / @. If your tagging schema is used
    #     across other services and resources, the character restrictions of
    #     those services also apply.
    #
    #   * Key prefixes cannot include any upper or lowercase combination of
    #     `aws:` or `AWS:`. Values can have this prefix. If a tag value has
    #     `aws` as its prefix but the key does not, Forecast considers it to
    #     be a user tag and will count against the limit of 50 tags. Tags
    #     with only the key prefix of `aws` do not count against your tags
    #     per resource limit. You cannot edit or delete tag keys with this
    #     prefix.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/CreateExplainabilityRequest AWS API Documentation
    #
    class CreateExplainabilityRequest < Struct.new(
      :explainability_name,
      :resource_arn,
      :explainability_config,
      :data_source,
      :schema,
      :enable_visualization,
      :start_date_time,
      :end_date_time,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] explainability_arn
    #   The Amazon Resource Name (ARN) of the Explainability.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/CreateExplainabilityResponse AWS API Documentation
    #
    class CreateExplainabilityResponse < Struct.new(
      :explainability_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateForecastExportJobRequest
    #   data as a hash:
    #
    #       {
    #         forecast_export_job_name: "Name", # required
    #         forecast_arn: "Arn", # required
    #         destination: { # required
    #           s3_config: { # required
    #             path: "S3Path", # required
    #             role_arn: "Arn", # required
    #             kms_key_arn: "KMSKeyArn",
    #           },
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] forecast_export_job_name
    #   The name for the forecast export job.
    #   @return [String]
    #
    # @!attribute [rw] forecast_arn
    #   The Amazon Resource Name (ARN) of the forecast that you want to
    #   export.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The location where you want to save the forecast and an AWS Identity
    #   and Access Management (IAM) role that Amazon Forecast can assume to
    #   access the location. The forecast must be exported to an Amazon S3
    #   bucket.
    #
    #   If encryption is used, `Destination` must include an AWS Key
    #   Management Service (KMS) key. The IAM role must allow Amazon
    #   Forecast permission to access the key.
    #   @return [Types::DataDestination]
    #
    # @!attribute [rw] tags
    #   The optional metadata that you apply to the forecast export job to
    #   help you categorize and organize them. Each tag consists of a key
    #   and an optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination
    #     of such as a prefix for keys as it is reserved for AWS use. You
    #     cannot edit or delete tag keys with this prefix. Values can have
    #     this prefix. If a tag value has `aws` as its prefix but the key
    #     does not, then Forecast considers it to be a user tag and will
    #     count against the limit of 50 tags. Tags with only the key prefix
    #     of `aws` do not count against your tags per resource limit.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/CreateForecastExportJobRequest AWS API Documentation
    #
    class CreateForecastExportJobRequest < Struct.new(
      :forecast_export_job_name,
      :forecast_arn,
      :destination,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] forecast_export_job_arn
    #   The Amazon Resource Name (ARN) of the export job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/CreateForecastExportJobResponse AWS API Documentation
    #
    class CreateForecastExportJobResponse < Struct.new(
      :forecast_export_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateForecastRequest
    #   data as a hash:
    #
    #       {
    #         forecast_name: "Name", # required
    #         predictor_arn: "Arn", # required
    #         forecast_types: ["ForecastType"],
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] forecast_name
    #   A name for the forecast.
    #   @return [String]
    #
    # @!attribute [rw] predictor_arn
    #   The Amazon Resource Name (ARN) of the predictor to use to generate
    #   the forecast.
    #   @return [String]
    #
    # @!attribute [rw] forecast_types
    #   The quantiles at which probabilistic forecasts are generated. **You
    #   can currently specify up to 5 quantiles per forecast**. Accepted
    #   values include `0.01 to 0.99` (increments of .01 only) and `mean`.
    #   The mean forecast is different from the median (0.50) when the
    #   distribution is not symmetric (for example, Beta and Negative
    #   Binomial). The default value is `["0.1", "0.5", "0.9"]`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The optional metadata that you apply to the forecast to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination
    #     of such as a prefix for keys as it is reserved for AWS use. You
    #     cannot edit or delete tag keys with this prefix. Values can have
    #     this prefix. If a tag value has `aws` as its prefix but the key
    #     does not, then Forecast considers it to be a user tag and will
    #     count against the limit of 50 tags. Tags with only the key prefix
    #     of `aws` do not count against your tags per resource limit.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/CreateForecastRequest AWS API Documentation
    #
    class CreateForecastRequest < Struct.new(
      :forecast_name,
      :predictor_arn,
      :forecast_types,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] forecast_arn
    #   The Amazon Resource Name (ARN) of the forecast.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/CreateForecastResponse AWS API Documentation
    #
    class CreateForecastResponse < Struct.new(
      :forecast_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreatePredictorBacktestExportJobRequest
    #   data as a hash:
    #
    #       {
    #         predictor_backtest_export_job_name: "Name", # required
    #         predictor_arn: "Arn", # required
    #         destination: { # required
    #           s3_config: { # required
    #             path: "S3Path", # required
    #             role_arn: "Arn", # required
    #             kms_key_arn: "KMSKeyArn",
    #           },
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] predictor_backtest_export_job_name
    #   The name for the backtest export job.
    #   @return [String]
    #
    # @!attribute [rw] predictor_arn
    #   The Amazon Resource Name (ARN) of the predictor that you want to
    #   export.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The destination for an export job. Provide an S3 path, an AWS
    #   Identity and Access Management (IAM) role that allows Amazon
    #   Forecast to access the location, and an AWS Key Management Service
    #   (KMS) key (optional).
    #   @return [Types::DataDestination]
    #
    # @!attribute [rw] tags
    #   Optional metadata to help you categorize and organize your
    #   backtests. Each tag consists of a key and an optional value, both of
    #   which you define. Tag keys and values are case sensitive.
    #
    #   The following restrictions apply to tags:
    #
    #   * For each resource, each tag key must be unique and each tag key
    #     must have one value.
    #
    #   * Maximum number of tags per resource: 50.
    #
    #   * Maximum key length: 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length: 256 Unicode characters in UTF-8.
    #
    #   * Accepted characters: all letters and numbers, spaces representable
    #     in UTF-8, and + - = . \_ : / @. If your tagging schema is used
    #     across other services and resources, the character restrictions of
    #     those services also apply.
    #
    #   * Key prefixes cannot include any upper or lowercase combination of
    #     `aws:` or `AWS:`. Values can have this prefix. If a tag value has
    #     `aws` as its prefix but the key does not, Forecast considers it to
    #     be a user tag and will count against the limit of 50 tags. Tags
    #     with only the key prefix of `aws` do not count against your tags
    #     per resource limit. You cannot edit or delete tag keys with this
    #     prefix.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/CreatePredictorBacktestExportJobRequest AWS API Documentation
    #
    class CreatePredictorBacktestExportJobRequest < Struct.new(
      :predictor_backtest_export_job_name,
      :predictor_arn,
      :destination,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] predictor_backtest_export_job_arn
    #   The Amazon Resource Name (ARN) of the predictor backtest export job
    #   that you want to export.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/CreatePredictorBacktestExportJobResponse AWS API Documentation
    #
    class CreatePredictorBacktestExportJobResponse < Struct.new(
      :predictor_backtest_export_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreatePredictorRequest
    #   data as a hash:
    #
    #       {
    #         predictor_name: "Name", # required
    #         algorithm_arn: "Arn",
    #         forecast_horizon: 1, # required
    #         forecast_types: ["ForecastType"],
    #         perform_auto_ml: false,
    #         auto_ml_override_strategy: "LatencyOptimized", # accepts LatencyOptimized, AccuracyOptimized
    #         perform_hpo: false,
    #         training_parameters: {
    #           "ParameterKey" => "ParameterValue",
    #         },
    #         evaluation_parameters: {
    #           number_of_backtest_windows: 1,
    #           back_test_window_offset: 1,
    #         },
    #         hpo_config: {
    #           parameter_ranges: {
    #             categorical_parameter_ranges: [
    #               {
    #                 name: "Name", # required
    #                 values: ["Value"], # required
    #               },
    #             ],
    #             continuous_parameter_ranges: [
    #               {
    #                 name: "Name", # required
    #                 max_value: 1.0, # required
    #                 min_value: 1.0, # required
    #                 scaling_type: "Auto", # accepts Auto, Linear, Logarithmic, ReverseLogarithmic
    #               },
    #             ],
    #             integer_parameter_ranges: [
    #               {
    #                 name: "Name", # required
    #                 max_value: 1, # required
    #                 min_value: 1, # required
    #                 scaling_type: "Auto", # accepts Auto, Linear, Logarithmic, ReverseLogarithmic
    #               },
    #             ],
    #           },
    #         },
    #         input_data_config: { # required
    #           dataset_group_arn: "Arn", # required
    #           supplementary_features: [
    #             {
    #               name: "Name", # required
    #               value: "Value", # required
    #             },
    #           ],
    #         },
    #         featurization_config: { # required
    #           forecast_frequency: "Frequency", # required
    #           forecast_dimensions: ["Name"],
    #           featurizations: [
    #             {
    #               attribute_name: "Name", # required
    #               featurization_pipeline: [
    #                 {
    #                   featurization_method_name: "filling", # required, accepts filling
    #                   featurization_method_parameters: {
    #                     "ParameterKey" => "ParameterValue",
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #         },
    #         encryption_config: {
    #           role_arn: "Arn", # required
    #           kms_key_arn: "KMSKeyArn", # required
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         optimization_metric: "WAPE", # accepts WAPE, RMSE, AverageWeightedQuantileLoss, MASE, MAPE
    #       }
    #
    # @!attribute [rw] predictor_name
    #   A name for the predictor.
    #   @return [String]
    #
    # @!attribute [rw] algorithm_arn
    #   The Amazon Resource Name (ARN) of the algorithm to use for model
    #   training. Required if `PerformAutoML` is not set to `true`.
    #
    #   **Supported algorithms:**
    #
    #   * `arn:aws:forecast:::algorithm/ARIMA`
    #
    #   * `arn:aws:forecast:::algorithm/CNN-QR`
    #
    #   * `arn:aws:forecast:::algorithm/Deep_AR_Plus`
    #
    #   * `arn:aws:forecast:::algorithm/ETS`
    #
    #   * `arn:aws:forecast:::algorithm/NPTS`
    #
    #   * `arn:aws:forecast:::algorithm/Prophet`
    #   @return [String]
    #
    # @!attribute [rw] forecast_horizon
    #   Specifies the number of time-steps that the model is trained to
    #   predict. The forecast horizon is also called the prediction length.
    #
    #   For example, if you configure a dataset for daily data collection
    #   (using the `DataFrequency` parameter of the CreateDataset operation)
    #   and set the forecast horizon to 10, the model returns predictions
    #   for 10 days.
    #
    #   The maximum forecast horizon is the lesser of 500 time-steps or 1/3
    #   of the TARGET\_TIME\_SERIES dataset length.
    #   @return [Integer]
    #
    # @!attribute [rw] forecast_types
    #   Specifies the forecast types used to train a predictor. You can
    #   specify up to five forecast types. Forecast types can be quantiles
    #   from 0.01 to 0.99, by increments of 0.01 or higher. You can also
    #   specify the mean forecast with `mean`.
    #
    #   The default value is `["0.10", "0.50", "0.9"]`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] perform_auto_ml
    #   Whether to perform AutoML. When Amazon Forecast performs AutoML, it
    #   evaluates the algorithms it provides and chooses the best algorithm
    #   and configuration for your training dataset.
    #
    #   The default value is `false`. In this case, you are required to
    #   specify an algorithm.
    #
    #   Set `PerformAutoML` to `true` to have Amazon Forecast perform
    #   AutoML. This is a good option if you aren't sure which algorithm is
    #   suitable for your training data. In this case, `PerformHPO` must be
    #   false.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_ml_override_strategy
    #   <note markdown="1"> The `LatencyOptimized` AutoML override strategy is only available in
    #   private beta. Contact AWS Support or your account manager to learn
    #   more about access privileges.
    #
    #    </note>
    #
    #   Used to overide the default AutoML strategy, which is to optimize
    #   predictor accuracy. To apply an AutoML strategy that minimizes
    #   training time, use `LatencyOptimized`.
    #
    #   This parameter is only valid for predictors trained using AutoML.
    #   @return [String]
    #
    # @!attribute [rw] perform_hpo
    #   Whether to perform hyperparameter optimization (HPO). HPO finds
    #   optimal hyperparameter values for your training data. The process of
    #   performing HPO is known as running a hyperparameter tuning job.
    #
    #   The default value is `false`. In this case, Amazon Forecast uses
    #   default hyperparameter values from the chosen algorithm.
    #
    #   To override the default values, set `PerformHPO` to `true` and,
    #   optionally, supply the HyperParameterTuningJobConfig object. The
    #   tuning job specifies a metric to optimize, which hyperparameters
    #   participate in tuning, and the valid range for each tunable
    #   hyperparameter. In this case, you are required to specify an
    #   algorithm and `PerformAutoML` must be false.
    #
    #   The following algorithms support HPO:
    #
    #   * DeepAR+
    #
    #   * CNN-QR
    #   @return [Boolean]
    #
    # @!attribute [rw] training_parameters
    #   The hyperparameters to override for model training. The
    #   hyperparameters that you can override are listed in the individual
    #   algorithms. For the list of supported algorithms, see
    #   aws-forecast-choosing-recipes.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] evaluation_parameters
    #   Used to override the default evaluation parameters of the specified
    #   algorithm. Amazon Forecast evaluates a predictor by splitting a
    #   dataset into training data and testing data. The evaluation
    #   parameters define how to perform the split and the number of
    #   iterations.
    #   @return [Types::EvaluationParameters]
    #
    # @!attribute [rw] hpo_config
    #   Provides hyperparameter override values for the algorithm. If you
    #   don't provide this parameter, Amazon Forecast uses default values.
    #   The individual algorithms specify which hyperparameters support
    #   hyperparameter optimization (HPO). For more information, see
    #   aws-forecast-choosing-recipes.
    #
    #   If you included the `HPOConfig` object, you must set `PerformHPO` to
    #   true.
    #   @return [Types::HyperParameterTuningJobConfig]
    #
    # @!attribute [rw] input_data_config
    #   Describes the dataset group that contains the data to use to train
    #   the predictor.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] featurization_config
    #   The featurization configuration.
    #   @return [Types::FeaturizationConfig]
    #
    # @!attribute [rw] encryption_config
    #   An AWS Key Management Service (KMS) key and the AWS Identity and
    #   Access Management (IAM) role that Amazon Forecast can assume to
    #   access the key.
    #   @return [Types::EncryptionConfig]
    #
    # @!attribute [rw] tags
    #   The optional metadata that you apply to the predictor to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination
    #     of such as a prefix for keys as it is reserved for AWS use. You
    #     cannot edit or delete tag keys with this prefix. Values can have
    #     this prefix. If a tag value has `aws` as its prefix but the key
    #     does not, then Forecast considers it to be a user tag and will
    #     count against the limit of 50 tags. Tags with only the key prefix
    #     of `aws` do not count against your tags per resource limit.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] optimization_metric
    #   The accuracy metric used to optimize the predictor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/CreatePredictorRequest AWS API Documentation
    #
    class CreatePredictorRequest < Struct.new(
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
      :optimization_metric)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] predictor_arn
    #   The Amazon Resource Name (ARN) of the predictor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/CreatePredictorResponse AWS API Documentation
    #
    class CreatePredictorResponse < Struct.new(
      :predictor_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data configuration for your dataset group and any additional
    # datasets.
    #
    # @note When making an API call, you may pass DataConfig
    #   data as a hash:
    #
    #       {
    #         dataset_group_arn: "Arn", # required
    #         attribute_configs: [
    #           {
    #             attribute_name: "Name", # required
    #             transformations: { # required
    #               "Name" => "Value",
    #             },
    #           },
    #         ],
    #         additional_datasets: [
    #           {
    #             name: "Name", # required
    #             configuration: {
    #               "Name" => ["Value"],
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] dataset_group_arn
    #   The ARN of the dataset group used to train the predictor.
    #   @return [String]
    #
    # @!attribute [rw] attribute_configs
    #   Aggregation and filling options for attributes in your dataset
    #   group.
    #   @return [Array<Types::AttributeConfig>]
    #
    # @!attribute [rw] additional_datasets
    #   Additional built-in datasets like Holidays and the Weather Index.
    #   @return [Array<Types::AdditionalDataset>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DataConfig AWS API Documentation
    #
    class DataConfig < Struct.new(
      :dataset_group_arn,
      :attribute_configs,
      :additional_datasets)
      SENSITIVE = []
      include Aws::Structure
    end

    # The destination for an export job. Provide an S3 path, an AWS Identity
    # and Access Management (IAM) role that allows Amazon Forecast to access
    # the location, and an AWS Key Management Service (KMS) key (optional).
    #
    # @note When making an API call, you may pass DataDestination
    #   data as a hash:
    #
    #       {
    #         s3_config: { # required
    #           path: "S3Path", # required
    #           role_arn: "Arn", # required
    #           kms_key_arn: "KMSKeyArn",
    #         },
    #       }
    #
    # @!attribute [rw] s3_config
    #   The path to an Amazon Simple Storage Service (Amazon S3) bucket
    #   along with the credentials to access the bucket.
    #   @return [Types::S3Config]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DataDestination AWS API Documentation
    #
    class DataDestination < Struct.new(
      :s3_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source of your data, an AWS Identity and Access Management (IAM)
    # role that allows Amazon Forecast to access the data and, optionally,
    # an AWS Key Management Service (KMS) key.
    #
    # @note When making an API call, you may pass DataSource
    #   data as a hash:
    #
    #       {
    #         s3_config: { # required
    #           path: "S3Path", # required
    #           role_arn: "Arn", # required
    #           kms_key_arn: "KMSKeyArn",
    #         },
    #       }
    #
    # @!attribute [rw] s3_config
    #   The path to the data stored in an Amazon Simple Storage Service
    #   (Amazon S3) bucket along with the credentials to access the data.
    #   @return [Types::S3Config]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DataSource AWS API Documentation
    #
    class DataSource < Struct.new(
      :s3_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of the dataset group properties used in the
    # ListDatasetGroups operation. To get the complete set of properties,
    # call the DescribeDatasetGroup operation, and provide the
    # `DatasetGroupArn`.
    #
    # @!attribute [rw] dataset_group_arn
    #   The Amazon Resource Name (ARN) of the dataset group.
    #   @return [String]
    #
    # @!attribute [rw] dataset_group_name
    #   The name of the dataset group.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the dataset group was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   When the dataset group was created or last updated from a call to
    #   the UpdateDatasetGroup operation. While the dataset group is being
    #   updated, `LastModificationTime` is the current time of the
    #   `ListDatasetGroups` call.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DatasetGroupSummary AWS API Documentation
    #
    class DatasetGroupSummary < Struct.new(
      :dataset_group_arn,
      :dataset_group_name,
      :creation_time,
      :last_modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of the dataset import job properties used in the
    # ListDatasetImportJobs operation. To get the complete set of
    # properties, call the DescribeDatasetImportJob operation, and provide
    # the `DatasetImportJobArn`.
    #
    # @!attribute [rw] dataset_import_job_arn
    #   The Amazon Resource Name (ARN) of the dataset import job.
    #   @return [String]
    #
    # @!attribute [rw] dataset_import_job_name
    #   The name of the dataset import job.
    #   @return [String]
    #
    # @!attribute [rw] data_source
    #   The location of the training data to import and an AWS Identity and
    #   Access Management (IAM) role that Amazon Forecast can assume to
    #   access the data. The training data must be stored in an Amazon S3
    #   bucket.
    #
    #   If encryption is used, `DataSource` includes an AWS Key Management
    #   Service (KMS) key.
    #   @return [Types::DataSource]
    #
    # @!attribute [rw] status
    #   The status of the dataset import job. States include:
    #
    #   * `ACTIVE`
    #
    #   * `CREATE_PENDING`, `CREATE_IN_PROGRESS`, `CREATE_FAILED`
    #
    #   * `DELETE_PENDING`, `DELETE_IN_PROGRESS`, `DELETE_FAILED`
    #
    #   * `CREATE_STOPPING`, `CREATE_STOPPED`
    #   @return [String]
    #
    # @!attribute [rw] message
    #   If an error occurred, an informational message about the error.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the dataset import job was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   The last time the resource was modified. The timestamp depends on
    #   the status of the job:
    #
    #   * `CREATE_PENDING` - The `CreationTime`.
    #
    #   * `CREATE_IN_PROGRESS` - The current timestamp.
    #
    #   * `CREATE_STOPPING` - The current timestamp.
    #
    #   * `CREATE_STOPPED` - When the job stopped.
    #
    #   * `ACTIVE` or `CREATE_FAILED` - When the job finished or failed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DatasetImportJobSummary AWS API Documentation
    #
    class DatasetImportJobSummary < Struct.new(
      :dataset_import_job_arn,
      :dataset_import_job_name,
      :data_source,
      :status,
      :message,
      :creation_time,
      :last_modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of the dataset properties used in the ListDatasets
    # operation. To get the complete set of properties, call the
    # DescribeDataset operation, and provide the `DatasetArn`.
    #
    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_name
    #   The name of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_type
    #   The dataset type.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain associated with the dataset.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the dataset was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   When you create a dataset, `LastModificationTime` is the same as
    #   `CreationTime`. While data is being imported to the dataset,
    #   `LastModificationTime` is the current time of the `ListDatasets`
    #   call. After a CreateDatasetImportJob operation has finished,
    #   `LastModificationTime` is when the import job completed or failed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DatasetSummary AWS API Documentation
    #
    class DatasetSummary < Struct.new(
      :dataset_arn,
      :dataset_name,
      :dataset_type,
      :domain,
      :creation_time,
      :last_modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDatasetGroupRequest
    #   data as a hash:
    #
    #       {
    #         dataset_group_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] dataset_group_arn
    #   The Amazon Resource Name (ARN) of the dataset group to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DeleteDatasetGroupRequest AWS API Documentation
    #
    class DeleteDatasetGroupRequest < Struct.new(
      :dataset_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDatasetImportJobRequest
    #   data as a hash:
    #
    #       {
    #         dataset_import_job_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] dataset_import_job_arn
    #   The Amazon Resource Name (ARN) of the dataset import job to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DeleteDatasetImportJobRequest AWS API Documentation
    #
    class DeleteDatasetImportJobRequest < Struct.new(
      :dataset_import_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDatasetRequest
    #   data as a hash:
    #
    #       {
    #         dataset_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DeleteDatasetRequest AWS API Documentation
    #
    class DeleteDatasetRequest < Struct.new(
      :dataset_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteExplainabilityExportRequest
    #   data as a hash:
    #
    #       {
    #         explainability_export_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] explainability_export_arn
    #   The Amazon Resource Name (ARN) of the Explainability export to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DeleteExplainabilityExportRequest AWS API Documentation
    #
    class DeleteExplainabilityExportRequest < Struct.new(
      :explainability_export_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteExplainabilityRequest
    #   data as a hash:
    #
    #       {
    #         explainability_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] explainability_arn
    #   The Amazon Resource Name (ARN) of the Explainability resource to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DeleteExplainabilityRequest AWS API Documentation
    #
    class DeleteExplainabilityRequest < Struct.new(
      :explainability_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteForecastExportJobRequest
    #   data as a hash:
    #
    #       {
    #         forecast_export_job_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] forecast_export_job_arn
    #   The Amazon Resource Name (ARN) of the forecast export job to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DeleteForecastExportJobRequest AWS API Documentation
    #
    class DeleteForecastExportJobRequest < Struct.new(
      :forecast_export_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteForecastRequest
    #   data as a hash:
    #
    #       {
    #         forecast_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] forecast_arn
    #   The Amazon Resource Name (ARN) of the forecast to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DeleteForecastRequest AWS API Documentation
    #
    class DeleteForecastRequest < Struct.new(
      :forecast_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeletePredictorBacktestExportJobRequest
    #   data as a hash:
    #
    #       {
    #         predictor_backtest_export_job_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] predictor_backtest_export_job_arn
    #   The Amazon Resource Name (ARN) of the predictor backtest export job
    #   to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DeletePredictorBacktestExportJobRequest AWS API Documentation
    #
    class DeletePredictorBacktestExportJobRequest < Struct.new(
      :predictor_backtest_export_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeletePredictorRequest
    #   data as a hash:
    #
    #       {
    #         predictor_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] predictor_arn
    #   The Amazon Resource Name (ARN) of the predictor to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DeletePredictorRequest AWS API Documentation
    #
    class DeletePredictorRequest < Struct.new(
      :predictor_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteResourceTreeRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the parent resource to delete. All
    #   child resources of the parent resource will also be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DeleteResourceTreeRequest AWS API Documentation
    #
    class DeleteResourceTreeRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAutoPredictorRequest
    #   data as a hash:
    #
    #       {
    #         predictor_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] predictor_arn
    #   The Amazon Resource Name (ARN) of the predictor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DescribeAutoPredictorRequest AWS API Documentation
    #
    class DescribeAutoPredictorRequest < Struct.new(
      :predictor_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] predictor_arn
    #   The Amazon Resource Name (ARN) of the predictor
    #   @return [String]
    #
    # @!attribute [rw] predictor_name
    #   The name of the predictor.
    #   @return [String]
    #
    # @!attribute [rw] forecast_horizon
    #   The number of time-steps that the model predicts. The forecast
    #   horizon is also called the prediction length.
    #   @return [Integer]
    #
    # @!attribute [rw] forecast_types
    #   The forecast types used during predictor training. Default value is
    #   \["0.1","0.5","0.9"\].
    #   @return [Array<String>]
    #
    # @!attribute [rw] forecast_frequency
    #   The frequency of predictions in a forecast.
    #
    #   Valid intervals are Y (Year), M (Month), W (Week), D (Day), H
    #   (Hour), 30min (30 minutes), 15min (15 minutes), 10min (10 minutes),
    #   5min (5 minutes), and 1min (1 minute). For example, "Y" indicates
    #   every year and "5min" indicates every five minutes.
    #   @return [String]
    #
    # @!attribute [rw] forecast_dimensions
    #   An array of dimension (field) names that specify the attributes used
    #   to group your time series.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dataset_import_job_arns
    #   An array of the ARNs of the dataset import jobs used to import
    #   training data for the predictor.
    #   @return [Array<String>]
    #
    # @!attribute [rw] data_config
    #   The data configuration for your dataset group and any additional
    #   datasets.
    #   @return [Types::DataConfig]
    #
    # @!attribute [rw] encryption_config
    #   An AWS Key Management Service (KMS) key and an AWS Identity and
    #   Access Management (IAM) role that Amazon Forecast can assume to
    #   access the key. You can specify this optional object in the
    #   CreateDataset and CreatePredictor requests.
    #   @return [Types::EncryptionConfig]
    #
    # @!attribute [rw] reference_predictor_summary
    #   The ARN and state of the reference predictor. This parameter is only
    #   valid for retrained or upgraded predictors.
    #   @return [Types::ReferencePredictorSummary]
    #
    # @!attribute [rw] estimated_time_remaining_in_minutes
    #   The estimated time remaining in minutes for the predictor training
    #   job to complete.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the predictor. States include:
    #
    #   * `ACTIVE`
    #
    #   * `CREATE_PENDING`, `CREATE_IN_PROGRESS`, `CREATE_FAILED`
    #
    #   * `CREATE_STOPPING`, `CREATE_STOPPED`
    #
    #   * `DELETE_PENDING`, `DELETE_IN_PROGRESS`, `DELETE_FAILED`
    #   @return [String]
    #
    # @!attribute [rw] message
    #   In the event of an error, a message detailing the cause of the
    #   error.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The timestamp of the CreateAutoPredictor request.
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   The last time the resource was modified. The timestamp depends on
    #   the status of the job:
    #
    #   * `CREATE_PENDING` - The `CreationTime`.
    #
    #   * `CREATE_IN_PROGRESS` - The current timestamp.
    #
    #   * `CREATE_STOPPING` - The current timestamp.
    #
    #   * `CREATE_STOPPED` - When the job stopped.
    #
    #   * `ACTIVE` or `CREATE_FAILED` - When the job finished or failed.
    #   @return [Time]
    #
    # @!attribute [rw] optimization_metric
    #   The accuracy metric used to optimize the predictor.
    #   @return [String]
    #
    # @!attribute [rw] explainability_info
    #   Provides the status and ARN of the Predictor Explainability.
    #   @return [Types::ExplainabilityInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DescribeAutoPredictorResponse AWS API Documentation
    #
    class DescribeAutoPredictorResponse < Struct.new(
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
      :explainability_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDatasetGroupRequest
    #   data as a hash:
    #
    #       {
    #         dataset_group_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] dataset_group_arn
    #   The Amazon Resource Name (ARN) of the dataset group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DescribeDatasetGroupRequest AWS API Documentation
    #
    class DescribeDatasetGroupRequest < Struct.new(
      :dataset_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_group_name
    #   The name of the dataset group.
    #   @return [String]
    #
    # @!attribute [rw] dataset_group_arn
    #   The ARN of the dataset group.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arns
    #   An array of Amazon Resource Names (ARNs) of the datasets contained
    #   in the dataset group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] domain
    #   The domain associated with the dataset group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the dataset group. States include:
    #
    #   * `ACTIVE`
    #
    #   * `CREATE_PENDING`, `CREATE_IN_PROGRESS`, `CREATE_FAILED`
    #
    #   * `DELETE_PENDING`, `DELETE_IN_PROGRESS`, `DELETE_FAILED`
    #
    #   * `UPDATE_PENDING`, `UPDATE_IN_PROGRESS`, `UPDATE_FAILED`
    #
    #   The `UPDATE` states apply when you call the UpdateDatasetGroup
    #   operation.
    #
    #   <note markdown="1"> The `Status` of the dataset group must be `ACTIVE` before you can
    #   use the dataset group to create a predictor.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the dataset group was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   When the dataset group was created or last updated from a call to
    #   the UpdateDatasetGroup operation. While the dataset group is being
    #   updated, `LastModificationTime` is the current time of the
    #   `DescribeDatasetGroup` call.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DescribeDatasetGroupResponse AWS API Documentation
    #
    class DescribeDatasetGroupResponse < Struct.new(
      :dataset_group_name,
      :dataset_group_arn,
      :dataset_arns,
      :domain,
      :status,
      :creation_time,
      :last_modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDatasetImportJobRequest
    #   data as a hash:
    #
    #       {
    #         dataset_import_job_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] dataset_import_job_arn
    #   The Amazon Resource Name (ARN) of the dataset import job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DescribeDatasetImportJobRequest AWS API Documentation
    #
    class DescribeDatasetImportJobRequest < Struct.new(
      :dataset_import_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_import_job_name
    #   The name of the dataset import job.
    #   @return [String]
    #
    # @!attribute [rw] dataset_import_job_arn
    #   The ARN of the dataset import job.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset that the training data
    #   was imported to.
    #   @return [String]
    #
    # @!attribute [rw] timestamp_format
    #   The format of timestamps in the dataset. The format that you specify
    #   depends on the `DataFrequency` specified when the dataset was
    #   created. The following formats are supported
    #
    #   * "yyyy-MM-dd"
    #
    #     For the following data frequencies: Y, M, W, and D
    #
    #   * "yyyy-MM-dd HH:mm:ss"
    #
    #     For the following data frequencies: H, 30min, 15min, and 1min; and
    #     optionally, for: Y, M, W, and D
    #   @return [String]
    #
    # @!attribute [rw] time_zone
    #   The single time zone applied to every item in the dataset
    #   @return [String]
    #
    # @!attribute [rw] use_geolocation_for_time_zone
    #   Whether `TimeZone` is automatically derived from the geolocation
    #   attribute.
    #   @return [Boolean]
    #
    # @!attribute [rw] geolocation_format
    #   The format of the geolocation attribute. Valid Values:`"LAT_LONG"`
    #   and `"CC_POSTALCODE"`.
    #   @return [String]
    #
    # @!attribute [rw] data_source
    #   The location of the training data to import and an AWS Identity and
    #   Access Management (IAM) role that Amazon Forecast can assume to
    #   access the data.
    #
    #   If encryption is used, `DataSource` includes an AWS Key Management
    #   Service (KMS) key.
    #   @return [Types::DataSource]
    #
    # @!attribute [rw] estimated_time_remaining_in_minutes
    #   The estimated time remaining in minutes for the dataset import job
    #   to complete.
    #   @return [Integer]
    #
    # @!attribute [rw] field_statistics
    #   Statistical information about each field in the input data.
    #   @return [Hash<String,Types::Statistics>]
    #
    # @!attribute [rw] data_size
    #   The size of the dataset in gigabytes (GB) after the import job has
    #   finished.
    #   @return [Float]
    #
    # @!attribute [rw] status
    #   The status of the dataset import job. States include:
    #
    #   * `ACTIVE`
    #
    #   * `CREATE_PENDING`, `CREATE_IN_PROGRESS`, `CREATE_FAILED`
    #
    #   * `DELETE_PENDING`, `DELETE_IN_PROGRESS`, `DELETE_FAILED`
    #
    #   * `CREATE_STOPPING`, `CREATE_STOPPED`
    #   @return [String]
    #
    # @!attribute [rw] message
    #   If an error occurred, an informational message about the error.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the dataset import job was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   The last time the resource was modified. The timestamp depends on
    #   the status of the job:
    #
    #   * `CREATE_PENDING` - The `CreationTime`.
    #
    #   * `CREATE_IN_PROGRESS` - The current timestamp.
    #
    #   * `CREATE_STOPPING` - The current timestamp.
    #
    #   * `CREATE_STOPPED` - When the job stopped.
    #
    #   * `ACTIVE` or `CREATE_FAILED` - When the job finished or failed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DescribeDatasetImportJobResponse AWS API Documentation
    #
    class DescribeDatasetImportJobResponse < Struct.new(
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
      :last_modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDatasetRequest
    #   data as a hash:
    #
    #       {
    #         dataset_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DescribeDatasetRequest AWS API Documentation
    #
    class DescribeDatasetRequest < Struct.new(
      :dataset_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_name
    #   The name of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain associated with the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_type
    #   The dataset type.
    #   @return [String]
    #
    # @!attribute [rw] data_frequency
    #   The frequency of data collection.
    #
    #   Valid intervals are Y (Year), M (Month), W (Week), D (Day), H
    #   (Hour), 30min (30 minutes), 15min (15 minutes), 10min (10 minutes),
    #   5min (5 minutes), and 1min (1 minute). For example, "M" indicates
    #   every month and "30min" indicates every 30 minutes.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   An array of `SchemaAttribute` objects that specify the dataset
    #   fields. Each `SchemaAttribute` specifies the name and data type of a
    #   field.
    #   @return [Types::Schema]
    #
    # @!attribute [rw] encryption_config
    #   The AWS Key Management Service (KMS) key and the AWS Identity and
    #   Access Management (IAM) role that Amazon Forecast can assume to
    #   access the key.
    #   @return [Types::EncryptionConfig]
    #
    # @!attribute [rw] status
    #   The status of the dataset. States include:
    #
    #   * `ACTIVE`
    #
    #   * `CREATE_PENDING`, `CREATE_IN_PROGRESS`, `CREATE_FAILED`
    #
    #   * `DELETE_PENDING`, `DELETE_IN_PROGRESS`, `DELETE_FAILED`
    #
    #   * `UPDATE_PENDING`, `UPDATE_IN_PROGRESS`, `UPDATE_FAILED`
    #
    #   The `UPDATE` states apply while data is imported to the dataset from
    #   a call to the CreateDatasetImportJob operation and reflect the
    #   status of the dataset import job. For example, when the import job
    #   status is `CREATE_IN_PROGRESS`, the status of the dataset is
    #   `UPDATE_IN_PROGRESS`.
    #
    #   <note markdown="1"> The `Status` of the dataset must be `ACTIVE` before you can import
    #   training data.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the dataset was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   When you create a dataset, `LastModificationTime` is the same as
    #   `CreationTime`. While data is being imported to the dataset,
    #   `LastModificationTime` is the current time of the `DescribeDataset`
    #   call. After a CreateDatasetImportJob operation has finished,
    #   `LastModificationTime` is when the import job completed or failed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DescribeDatasetResponse AWS API Documentation
    #
    class DescribeDatasetResponse < Struct.new(
      :dataset_arn,
      :dataset_name,
      :domain,
      :dataset_type,
      :data_frequency,
      :schema,
      :encryption_config,
      :status,
      :creation_time,
      :last_modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeExplainabilityExportRequest
    #   data as a hash:
    #
    #       {
    #         explainability_export_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] explainability_export_arn
    #   The Amazon Resource Name (ARN) of the Explainability export.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DescribeExplainabilityExportRequest AWS API Documentation
    #
    class DescribeExplainabilityExportRequest < Struct.new(
      :explainability_export_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] explainability_export_arn
    #   The Amazon Resource Name (ARN) of the Explainability export.
    #   @return [String]
    #
    # @!attribute [rw] explainability_export_name
    #   The name of the Explainability export.
    #   @return [String]
    #
    # @!attribute [rw] explainability_arn
    #   The Amazon Resource Name (ARN) of the Explainability.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The destination for an export job. Provide an S3 path, an AWS
    #   Identity and Access Management (IAM) role that allows Amazon
    #   Forecast to access the location, and an AWS Key Management Service
    #   (KMS) key (optional).
    #   @return [Types::DataDestination]
    #
    # @!attribute [rw] message
    #   Information about any errors that occurred during the export.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Explainability export. States include:
    #
    #   * `ACTIVE`
    #
    #   * `CREATE_PENDING`, `CREATE_IN_PROGRESS`, `CREATE_FAILED`
    #
    #   * `CREATE_STOPPING`, `CREATE_STOPPED`
    #
    #   * `DELETE_PENDING`, `DELETE_IN_PROGRESS`, `DELETE_FAILED`
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the Explainability export was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   The last time the resource was modified. The timestamp depends on
    #   the status of the job:
    #
    #   * `CREATE_PENDING` - The `CreationTime`.
    #
    #   * `CREATE_IN_PROGRESS` - The current timestamp.
    #
    #   * `CREATE_STOPPING` - The current timestamp.
    #
    #   * `CREATE_STOPPED` - When the job stopped.
    #
    #   * `ACTIVE` or `CREATE_FAILED` - When the job finished or failed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DescribeExplainabilityExportResponse AWS API Documentation
    #
    class DescribeExplainabilityExportResponse < Struct.new(
      :explainability_export_arn,
      :explainability_export_name,
      :explainability_arn,
      :destination,
      :message,
      :status,
      :creation_time,
      :last_modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeExplainabilityRequest
    #   data as a hash:
    #
    #       {
    #         explainability_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] explainability_arn
    #   The Amazon Resource Name (ARN) of the Explaianability to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DescribeExplainabilityRequest AWS API Documentation
    #
    class DescribeExplainabilityRequest < Struct.new(
      :explainability_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] explainability_arn
    #   The Amazon Resource Name (ARN) of the Explainability.
    #   @return [String]
    #
    # @!attribute [rw] explainability_name
    #   The name of the Explainability.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Predictor or Forecast used to
    #   create the Explainability resource.
    #   @return [String]
    #
    # @!attribute [rw] explainability_config
    #   The configuration settings that define the granularity of time
    #   series and time points for the Explainability.
    #   @return [Types::ExplainabilityConfig]
    #
    # @!attribute [rw] enable_visualization
    #   Whether the visualization was enabled for the Explainability
    #   resource.
    #   @return [Boolean]
    #
    # @!attribute [rw] data_source
    #   The source of your data, an AWS Identity and Access Management (IAM)
    #   role that allows Amazon Forecast to access the data and, optionally,
    #   an AWS Key Management Service (KMS) key.
    #   @return [Types::DataSource]
    #
    # @!attribute [rw] schema
    #   Defines the fields of a dataset.
    #   @return [Types::Schema]
    #
    # @!attribute [rw] start_date_time
    #   If `TimePointGranularity` is set to `SPECIFIC`, the first time point
    #   in the Explainability.
    #   @return [String]
    #
    # @!attribute [rw] end_date_time
    #   If `TimePointGranularity` is set to `SPECIFIC`, the last time point
    #   in the Explainability.
    #   @return [String]
    #
    # @!attribute [rw] estimated_time_remaining_in_minutes
    #   The estimated time remaining in minutes for the CreateExplainability
    #   job to complete.
    #   @return [Integer]
    #
    # @!attribute [rw] message
    #   If an error occurred, a message about the error.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Explainability resource. States include:
    #
    #   * `ACTIVE`
    #
    #   * `CREATE_PENDING`, `CREATE_IN_PROGRESS`, `CREATE_FAILED`
    #
    #   * `CREATE_STOPPING`, `CREATE_STOPPED`
    #
    #   * `DELETE_PENDING`, `DELETE_IN_PROGRESS`, `DELETE_FAILED`
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the Explainability resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   The last time the resource was modified. The timestamp depends on
    #   the status of the job:
    #
    #   * `CREATE_PENDING` - The `CreationTime`.
    #
    #   * `CREATE_IN_PROGRESS` - The current timestamp.
    #
    #   * `CREATE_STOPPING` - The current timestamp.
    #
    #   * `CREATE_STOPPED` - When the job stopped.
    #
    #   * `ACTIVE` or `CREATE_FAILED` - When the job finished or failed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DescribeExplainabilityResponse AWS API Documentation
    #
    class DescribeExplainabilityResponse < Struct.new(
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
      :last_modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeForecastExportJobRequest
    #   data as a hash:
    #
    #       {
    #         forecast_export_job_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] forecast_export_job_arn
    #   The Amazon Resource Name (ARN) of the forecast export job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DescribeForecastExportJobRequest AWS API Documentation
    #
    class DescribeForecastExportJobRequest < Struct.new(
      :forecast_export_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] forecast_export_job_arn
    #   The ARN of the forecast export job.
    #   @return [String]
    #
    # @!attribute [rw] forecast_export_job_name
    #   The name of the forecast export job.
    #   @return [String]
    #
    # @!attribute [rw] forecast_arn
    #   The Amazon Resource Name (ARN) of the exported forecast.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The path to the Amazon Simple Storage Service (Amazon S3) bucket
    #   where the forecast is exported.
    #   @return [Types::DataDestination]
    #
    # @!attribute [rw] message
    #   If an error occurred, an informational message about the error.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the forecast export job. States include:
    #
    #   * `ACTIVE`
    #
    #   * `CREATE_PENDING`, `CREATE_IN_PROGRESS`, `CREATE_FAILED`
    #
    #   * `CREATE_STOPPING`, `CREATE_STOPPED`
    #
    #   * `DELETE_PENDING`, `DELETE_IN_PROGRESS`, `DELETE_FAILED`
    #
    #   <note markdown="1"> The `Status` of the forecast export job must be `ACTIVE` before you
    #   can access the forecast in your S3 bucket.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the forecast export job was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   The last time the resource was modified. The timestamp depends on
    #   the status of the job:
    #
    #   * `CREATE_PENDING` - The `CreationTime`.
    #
    #   * `CREATE_IN_PROGRESS` - The current timestamp.
    #
    #   * `CREATE_STOPPING` - The current timestamp.
    #
    #   * `CREATE_STOPPED` - When the job stopped.
    #
    #   * `ACTIVE` or `CREATE_FAILED` - When the job finished or failed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DescribeForecastExportJobResponse AWS API Documentation
    #
    class DescribeForecastExportJobResponse < Struct.new(
      :forecast_export_job_arn,
      :forecast_export_job_name,
      :forecast_arn,
      :destination,
      :message,
      :status,
      :creation_time,
      :last_modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeForecastRequest
    #   data as a hash:
    #
    #       {
    #         forecast_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] forecast_arn
    #   The Amazon Resource Name (ARN) of the forecast.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DescribeForecastRequest AWS API Documentation
    #
    class DescribeForecastRequest < Struct.new(
      :forecast_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] forecast_arn
    #   The forecast ARN as specified in the request.
    #   @return [String]
    #
    # @!attribute [rw] forecast_name
    #   The name of the forecast.
    #   @return [String]
    #
    # @!attribute [rw] forecast_types
    #   The quantiles at which probabilistic forecasts were generated.
    #   @return [Array<String>]
    #
    # @!attribute [rw] predictor_arn
    #   The ARN of the predictor used to generate the forecast.
    #   @return [String]
    #
    # @!attribute [rw] dataset_group_arn
    #   The ARN of the dataset group that provided the data used to train
    #   the predictor.
    #   @return [String]
    #
    # @!attribute [rw] estimated_time_remaining_in_minutes
    #   The estimated time remaining in minutes for the forecast job to
    #   complete.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the forecast. States include:
    #
    #   * `ACTIVE`
    #
    #   * `CREATE_PENDING`, `CREATE_IN_PROGRESS`, `CREATE_FAILED`
    #
    #   * `CREATE_STOPPING`, `CREATE_STOPPED`
    #
    #   * `DELETE_PENDING`, `DELETE_IN_PROGRESS`, `DELETE_FAILED`
    #
    #   <note markdown="1"> The `Status` of the forecast must be `ACTIVE` before you can query
    #   or export the forecast.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] message
    #   If an error occurred, an informational message about the error.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the forecast creation task was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   The last time the resource was modified. The timestamp depends on
    #   the status of the job:
    #
    #   * `CREATE_PENDING` - The `CreationTime`.
    #
    #   * `CREATE_IN_PROGRESS` - The current timestamp.
    #
    #   * `CREATE_STOPPING` - The current timestamp.
    #
    #   * `CREATE_STOPPED` - When the job stopped.
    #
    #   * `ACTIVE` or `CREATE_FAILED` - When the job finished or failed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DescribeForecastResponse AWS API Documentation
    #
    class DescribeForecastResponse < Struct.new(
      :forecast_arn,
      :forecast_name,
      :forecast_types,
      :predictor_arn,
      :dataset_group_arn,
      :estimated_time_remaining_in_minutes,
      :status,
      :message,
      :creation_time,
      :last_modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribePredictorBacktestExportJobRequest
    #   data as a hash:
    #
    #       {
    #         predictor_backtest_export_job_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] predictor_backtest_export_job_arn
    #   The Amazon Resource Name (ARN) of the predictor backtest export job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DescribePredictorBacktestExportJobRequest AWS API Documentation
    #
    class DescribePredictorBacktestExportJobRequest < Struct.new(
      :predictor_backtest_export_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] predictor_backtest_export_job_arn
    #   The Amazon Resource Name (ARN) of the predictor backtest export job.
    #   @return [String]
    #
    # @!attribute [rw] predictor_backtest_export_job_name
    #   The name of the predictor backtest export job.
    #   @return [String]
    #
    # @!attribute [rw] predictor_arn
    #   The Amazon Resource Name (ARN) of the predictor.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The destination for an export job. Provide an S3 path, an AWS
    #   Identity and Access Management (IAM) role that allows Amazon
    #   Forecast to access the location, and an AWS Key Management Service
    #   (KMS) key (optional).
    #   @return [Types::DataDestination]
    #
    # @!attribute [rw] message
    #   Information about any errors that may have occurred during the
    #   backtest export.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the predictor backtest export job. States include:
    #
    #   * `ACTIVE`
    #
    #   * `CREATE_PENDING`, `CREATE_IN_PROGRESS`, `CREATE_FAILED`
    #
    #   * `CREATE_STOPPING`, `CREATE_STOPPED`
    #
    #   * `DELETE_PENDING`, `DELETE_IN_PROGRESS`, `DELETE_FAILED`
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the predictor backtest export job was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   The last time the resource was modified. The timestamp depends on
    #   the status of the job:
    #
    #   * `CREATE_PENDING` - The `CreationTime`.
    #
    #   * `CREATE_IN_PROGRESS` - The current timestamp.
    #
    #   * `CREATE_STOPPING` - The current timestamp.
    #
    #   * `CREATE_STOPPED` - When the job stopped.
    #
    #   * `ACTIVE` or `CREATE_FAILED` - When the job finished or failed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DescribePredictorBacktestExportJobResponse AWS API Documentation
    #
    class DescribePredictorBacktestExportJobResponse < Struct.new(
      :predictor_backtest_export_job_arn,
      :predictor_backtest_export_job_name,
      :predictor_arn,
      :destination,
      :message,
      :status,
      :creation_time,
      :last_modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribePredictorRequest
    #   data as a hash:
    #
    #       {
    #         predictor_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] predictor_arn
    #   The Amazon Resource Name (ARN) of the predictor that you want
    #   information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DescribePredictorRequest AWS API Documentation
    #
    class DescribePredictorRequest < Struct.new(
      :predictor_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] predictor_arn
    #   The ARN of the predictor.
    #   @return [String]
    #
    # @!attribute [rw] predictor_name
    #   The name of the predictor.
    #   @return [String]
    #
    # @!attribute [rw] algorithm_arn
    #   The Amazon Resource Name (ARN) of the algorithm used for model
    #   training.
    #   @return [String]
    #
    # @!attribute [rw] auto_ml_algorithm_arns
    #   When `PerformAutoML` is specified, the ARN of the chosen algorithm.
    #   @return [Array<String>]
    #
    # @!attribute [rw] forecast_horizon
    #   The number of time-steps of the forecast. The forecast horizon is
    #   also called the prediction length.
    #   @return [Integer]
    #
    # @!attribute [rw] forecast_types
    #   The forecast types used during predictor training. Default value is
    #   `["0.1","0.5","0.9"]`
    #   @return [Array<String>]
    #
    # @!attribute [rw] perform_auto_ml
    #   Whether the predictor is set to perform AutoML.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_ml_override_strategy
    #   <note markdown="1"> The `LatencyOptimized` AutoML override strategy is only available in
    #   private beta. Contact AWS Support or your account manager to learn
    #   more about access privileges.
    #
    #    </note>
    #
    #   The AutoML strategy used to train the predictor. Unless
    #   `LatencyOptimized` is specified, the AutoML strategy optimizes
    #   predictor accuracy.
    #
    #   This parameter is only valid for predictors trained using AutoML.
    #   @return [String]
    #
    # @!attribute [rw] perform_hpo
    #   Whether the predictor is set to perform hyperparameter optimization
    #   (HPO).
    #   @return [Boolean]
    #
    # @!attribute [rw] training_parameters
    #   The default training parameters or overrides selected during model
    #   training. When running AutoML or choosing HPO with CNN-QR or
    #   DeepAR+, the optimized values for the chosen hyperparameters are
    #   returned. For more information, see aws-forecast-choosing-recipes.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] evaluation_parameters
    #   Used to override the default evaluation parameters of the specified
    #   algorithm. Amazon Forecast evaluates a predictor by splitting a
    #   dataset into training data and testing data. The evaluation
    #   parameters define how to perform the split and the number of
    #   iterations.
    #   @return [Types::EvaluationParameters]
    #
    # @!attribute [rw] hpo_config
    #   The hyperparameter override values for the algorithm.
    #   @return [Types::HyperParameterTuningJobConfig]
    #
    # @!attribute [rw] input_data_config
    #   Describes the dataset group that contains the data to use to train
    #   the predictor.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] featurization_config
    #   The featurization configuration.
    #   @return [Types::FeaturizationConfig]
    #
    # @!attribute [rw] encryption_config
    #   An AWS Key Management Service (KMS) key and the AWS Identity and
    #   Access Management (IAM) role that Amazon Forecast can assume to
    #   access the key.
    #   @return [Types::EncryptionConfig]
    #
    # @!attribute [rw] predictor_execution_details
    #   Details on the the status and results of the backtests performed to
    #   evaluate the accuracy of the predictor. You specify the number of
    #   backtests to perform when you call the operation.
    #   @return [Types::PredictorExecutionDetails]
    #
    # @!attribute [rw] estimated_time_remaining_in_minutes
    #   The estimated time remaining in minutes for the predictor training
    #   job to complete.
    #   @return [Integer]
    #
    # @!attribute [rw] is_auto_predictor
    #   Whether the predictor was created with CreateAutoPredictor.
    #   @return [Boolean]
    #
    # @!attribute [rw] dataset_import_job_arns
    #   An array of the ARNs of the dataset import jobs used to import
    #   training data for the predictor.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The status of the predictor. States include:
    #
    #   * `ACTIVE`
    #
    #   * `CREATE_PENDING`, `CREATE_IN_PROGRESS`, `CREATE_FAILED`
    #
    #   * `DELETE_PENDING`, `DELETE_IN_PROGRESS`, `DELETE_FAILED`
    #
    #   * `CREATE_STOPPING`, `CREATE_STOPPED`
    #
    #   <note markdown="1"> The `Status` of the predictor must be `ACTIVE` before you can use
    #   the predictor to create a forecast.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] message
    #   If an error occurred, an informational message about the error.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the model training task was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   The last time the resource was modified. The timestamp depends on
    #   the status of the job:
    #
    #   * `CREATE_PENDING` - The `CreationTime`.
    #
    #   * `CREATE_IN_PROGRESS` - The current timestamp.
    #
    #   * `CREATE_STOPPING` - The current timestamp.
    #
    #   * `CREATE_STOPPED` - When the job stopped.
    #
    #   * `ACTIVE` or `CREATE_FAILED` - When the job finished or failed.
    #   @return [Time]
    #
    # @!attribute [rw] optimization_metric
    #   The accuracy metric used to optimize the predictor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/DescribePredictorResponse AWS API Documentation
    #
    class DescribePredictorResponse < Struct.new(
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
      :optimization_metric)
      SENSITIVE = []
      include Aws::Structure
    end

    # An AWS Key Management Service (KMS) key and an AWS Identity and Access
    # Management (IAM) role that Amazon Forecast can assume to access the
    # key. You can specify this optional object in the CreateDataset and
    # CreatePredictor requests.
    #
    # @note When making an API call, you may pass EncryptionConfig
    #   data as a hash:
    #
    #       {
    #         role_arn: "Arn", # required
    #         kms_key_arn: "KMSKeyArn", # required
    #       }
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that Amazon Forecast can assume to access
    #   the AWS KMS key.
    #
    #   Passing a role across AWS accounts is not allowed. If you pass a
    #   role that isn't in your account, you get an `InvalidInputException`
    #   error.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/EncryptionConfig AWS API Documentation
    #
    class EncryptionConfig < Struct.new(
      :role_arn,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides detailed error metrics to evaluate the performance of a
    # predictor. This object is part of the Metrics object.
    #
    # @!attribute [rw] forecast_type
    #   The Forecast type used to compute WAPE, MAPE, MASE, and RMSE.
    #   @return [String]
    #
    # @!attribute [rw] wape
    #   The weighted absolute percentage error (WAPE).
    #   @return [Float]
    #
    # @!attribute [rw] rmse
    #   The root-mean-square error (RMSE).
    #   @return [Float]
    #
    # @!attribute [rw] mase
    #   The Mean Absolute Scaled Error (MASE)
    #   @return [Float]
    #
    # @!attribute [rw] mape
    #   The Mean Absolute Percentage Error (MAPE)
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ErrorMetric AWS API Documentation
    #
    class ErrorMetric < Struct.new(
      :forecast_type,
      :wape,
      :rmse,
      :mase,
      :mape)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters that define how to split a dataset into training data and
    # testing data, and the number of iterations to perform. These
    # parameters are specified in the predefined algorithms but you can
    # override them in the CreatePredictor request.
    #
    # @note When making an API call, you may pass EvaluationParameters
    #   data as a hash:
    #
    #       {
    #         number_of_backtest_windows: 1,
    #         back_test_window_offset: 1,
    #       }
    #
    # @!attribute [rw] number_of_backtest_windows
    #   The number of times to split the input data. The default is 1. Valid
    #   values are 1 through 5.
    #   @return [Integer]
    #
    # @!attribute [rw] back_test_window_offset
    #   The point from the end of the dataset where you want to split the
    #   data for model training and testing (evaluation). Specify the value
    #   as the number of data points. The default is the value of the
    #   forecast horizon. `BackTestWindowOffset` can be used to mimic a past
    #   virtual forecast start date. This value must be greater than or
    #   equal to the forecast horizon and less than half of the
    #   TARGET\_TIME\_SERIES dataset length.
    #
    #   `ForecastHorizon` &lt;= `BackTestWindowOffset` &lt; 1/2 *
    #   TARGET\_TIME\_SERIES dataset length
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/EvaluationParameters AWS API Documentation
    #
    class EvaluationParameters < Struct.new(
      :number_of_backtest_windows,
      :back_test_window_offset)
      SENSITIVE = []
      include Aws::Structure
    end

    # The results of evaluating an algorithm. Returned as part of the
    # GetAccuracyMetrics response.
    #
    # @!attribute [rw] algorithm_arn
    #   The Amazon Resource Name (ARN) of the algorithm that was evaluated.
    #   @return [String]
    #
    # @!attribute [rw] test_windows
    #   The array of test windows used for evaluating the algorithm. The
    #   `NumberOfBacktestWindows` from the EvaluationParameters object
    #   determines the number of windows in the array.
    #   @return [Array<Types::WindowSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/EvaluationResult AWS API Documentation
    #
    class EvaluationResult < Struct.new(
      :algorithm_arn,
      :test_windows)
      SENSITIVE = []
      include Aws::Structure
    end

    # The ExplainabilityConfig data type defines the number of time series
    # and time points included in CreateExplainability.
    #
    # If you provide a predictor ARN for `ResourceArn`, you must set both
    # `TimePointGranularity` and `TimeSeriesGranularity` to “ALL”. When
    # creating Predictor Explainability, Amazon Forecast considers all time
    # series and time points.
    #
    # If you provide a forecast ARN for `ResourceArn`, you can set
    # `TimePointGranularity` and `TimeSeriesGranularity` to either “ALL” or
    # “Specific”.
    #
    # @note When making an API call, you may pass ExplainabilityConfig
    #   data as a hash:
    #
    #       {
    #         time_series_granularity: "ALL", # required, accepts ALL, SPECIFIC
    #         time_point_granularity: "ALL", # required, accepts ALL, SPECIFIC
    #       }
    #
    # @!attribute [rw] time_series_granularity
    #   To create an Explainability for all time series in your datasets,
    #   use `ALL`. To create an Explainability for specific time series in
    #   your datasets, use `SPECIFIC`.
    #
    #   Specify time series by uploading a CSV file to an Amazon S3 bucket
    #   and set the location within the DataDestination data type.
    #   @return [String]
    #
    # @!attribute [rw] time_point_granularity
    #   To create an Explainability for all time points in your forecast
    #   horizon, use `ALL`. To create an Explainability for specific time
    #   points in your forecast horizon, use `SPECIFIC`.
    #
    #   Specify time points with the `StartDateTime` and `EndDateTime`
    #   parameters within the CreateExplainability operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ExplainabilityConfig AWS API Documentation
    #
    class ExplainabilityConfig < Struct.new(
      :time_series_granularity,
      :time_point_granularity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of the Explainability export properties used in the
    # ListExplainabilityExports operation. To get a complete set of
    # properties, call the DescribeExplainabilityExport operation, and
    # provide the `ExplainabilityExportArn`.
    #
    # @!attribute [rw] explainability_export_arn
    #   The Amazon Resource Name (ARN) of the Explainability export.
    #   @return [String]
    #
    # @!attribute [rw] explainability_export_name
    #   The name of the Explainability export
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The destination for an export job. Provide an S3 path, an AWS
    #   Identity and Access Management (IAM) role that allows Amazon
    #   Forecast to access the location, and an AWS Key Management Service
    #   (KMS) key (optional).
    #   @return [Types::DataDestination]
    #
    # @!attribute [rw] status
    #   The status of the Explainability export. States include:
    #
    #   * `ACTIVE`
    #
    #   * `CREATE_PENDING`, `CREATE_IN_PROGRESS`, `CREATE_FAILED`
    #
    #   * `CREATE_STOPPING`, `CREATE_STOPPED`
    #
    #   * `DELETE_PENDING`, `DELETE_IN_PROGRESS`, `DELETE_FAILED`
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Information about any errors that may have occurred during the
    #   Explainability export.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the Explainability was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   The last time the resource was modified. The timestamp depends on
    #   the status of the job:
    #
    #   * `CREATE_PENDING` - The `CreationTime`.
    #
    #   * `CREATE_IN_PROGRESS` - The current timestamp.
    #
    #   * `CREATE_STOPPING` - The current timestamp.
    #
    #   * `CREATE_STOPPED` - When the job stopped.
    #
    #   * `ACTIVE` or `CREATE_FAILED` - When the job finished or failed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ExplainabilityExportSummary AWS API Documentation
    #
    class ExplainabilityExportSummary < Struct.new(
      :explainability_export_arn,
      :explainability_export_name,
      :destination,
      :status,
      :message,
      :creation_time,
      :last_modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the Explainability resource.
    #
    # @!attribute [rw] explainability_arn
    #   The Amazon Resource Name (ARN) of the Explainability.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Explainability. States include:
    #
    #   * `ACTIVE`
    #
    #   * `CREATE_PENDING`, `CREATE_IN_PROGRESS`, `CREATE_FAILED`
    #
    #   * `CREATE_STOPPING`, `CREATE_STOPPED`
    #
    #   * `DELETE_PENDING`, `DELETE_IN_PROGRESS`, `DELETE_FAILED`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ExplainabilityInfo AWS API Documentation
    #
    class ExplainabilityInfo < Struct.new(
      :explainability_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of the Explainability properties used in the
    # ListExplainabilities operation. To get a complete set of properties,
    # call the DescribeExplainability operation, and provide the listed
    # `ExplainabilityArn`.
    #
    # @!attribute [rw] explainability_arn
    #   The Amazon Resource Name (ARN) of the Explainability.
    #   @return [String]
    #
    # @!attribute [rw] explainability_name
    #   The name of the Explainability.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Predictor or Forecast used to
    #   create the Explainability.
    #   @return [String]
    #
    # @!attribute [rw] explainability_config
    #   The configuration settings that define the granularity of time
    #   series and time points for the Explainability.
    #   @return [Types::ExplainabilityConfig]
    #
    # @!attribute [rw] status
    #   The status of the Explainability. States include:
    #
    #   * `ACTIVE`
    #
    #   * `CREATE_PENDING`, `CREATE_IN_PROGRESS`, `CREATE_FAILED`
    #
    #   * `CREATE_STOPPING`, `CREATE_STOPPED`
    #
    #   * `DELETE_PENDING`, `DELETE_IN_PROGRESS`, `DELETE_FAILED`
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Information about any errors that may have occurred during the
    #   Explainability creation process.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the Explainability was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   The last time the resource was modified. The timestamp depends on
    #   the status of the job:
    #
    #   * `CREATE_PENDING` - The `CreationTime`.
    #
    #   * `CREATE_IN_PROGRESS` - The current timestamp.
    #
    #   * `CREATE_STOPPING` - The current timestamp.
    #
    #   * `CREATE_STOPPED` - When the job stopped.
    #
    #   * `ACTIVE` or `CREATE_FAILED` - When the job finished or failed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ExplainabilitySummary AWS API Documentation
    #
    class ExplainabilitySummary < Struct.new(
      :explainability_arn,
      :explainability_name,
      :resource_arn,
      :explainability_config,
      :status,
      :message,
      :creation_time,
      :last_modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> This object belongs to the CreatePredictor operation. If you created
    # your predictor with CreateAutoPredictor, see AttributeConfig.
    #
    #  </note>
    #
    # Provides featurization (transformation) information for a dataset
    # field. This object is part of the FeaturizationConfig object.
    #
    # For example:
    #
    # `\{`
    #
    # `"AttributeName": "demand",`
    #
    # `FeaturizationPipeline [ \{`
    #
    # `"FeaturizationMethodName": "filling",`
    #
    # `"FeaturizationMethodParameters": \{"aggregation": "avg", "backfill":
    # "nan"\}`
    #
    # `\} ]`
    #
    # `\}`
    #
    # @note When making an API call, you may pass Featurization
    #   data as a hash:
    #
    #       {
    #         attribute_name: "Name", # required
    #         featurization_pipeline: [
    #           {
    #             featurization_method_name: "filling", # required, accepts filling
    #             featurization_method_parameters: {
    #               "ParameterKey" => "ParameterValue",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] attribute_name
    #   The name of the schema attribute that specifies the data field to be
    #   featurized. Amazon Forecast supports the target field of the
    #   `TARGET_TIME_SERIES` and the `RELATED_TIME_SERIES` datasets. For
    #   example, for the `RETAIL` domain, the target is `demand`, and for
    #   the `CUSTOM` domain, the target is `target_value`. For more
    #   information, see howitworks-missing-values.
    #   @return [String]
    #
    # @!attribute [rw] featurization_pipeline
    #   An array of one `FeaturizationMethod` object that specifies the
    #   feature transformation method.
    #   @return [Array<Types::FeaturizationMethod>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/Featurization AWS API Documentation
    #
    class Featurization < Struct.new(
      :attribute_name,
      :featurization_pipeline)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> This object belongs to the CreatePredictor operation. If you created
    # your predictor with CreateAutoPredictor, see AttributeConfig.
    #
    #  </note>
    #
    # In a CreatePredictor operation, the specified algorithm trains a model
    # using the specified dataset group. You can optionally tell the
    # operation to modify data fields prior to training a model. These
    # modifications are referred to as *featurization*.
    #
    # You define featurization using the `FeaturizationConfig` object. You
    # specify an array of transformations, one for each field that you want
    # to featurize. You then include the `FeaturizationConfig` object in
    # your `CreatePredictor` request. Amazon Forecast applies the
    # featurization to the `TARGET_TIME_SERIES` and `RELATED_TIME_SERIES`
    # datasets before model training.
    #
    # You can create multiple featurization configurations. For example, you
    # might call the `CreatePredictor` operation twice by specifying
    # different featurization configurations.
    #
    # @note When making an API call, you may pass FeaturizationConfig
    #   data as a hash:
    #
    #       {
    #         forecast_frequency: "Frequency", # required
    #         forecast_dimensions: ["Name"],
    #         featurizations: [
    #           {
    #             attribute_name: "Name", # required
    #             featurization_pipeline: [
    #               {
    #                 featurization_method_name: "filling", # required, accepts filling
    #                 featurization_method_parameters: {
    #                   "ParameterKey" => "ParameterValue",
    #                 },
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] forecast_frequency
    #   The frequency of predictions in a forecast.
    #
    #   Valid intervals are Y (Year), M (Month), W (Week), D (Day), H
    #   (Hour), 30min (30 minutes), 15min (15 minutes), 10min (10 minutes),
    #   5min (5 minutes), and 1min (1 minute). For example, "Y" indicates
    #   every year and "5min" indicates every five minutes.
    #
    #   The frequency must be greater than or equal to the
    #   TARGET\_TIME\_SERIES dataset frequency.
    #
    #   When a RELATED\_TIME\_SERIES dataset is provided, the frequency must
    #   be equal to the RELATED\_TIME\_SERIES dataset frequency.
    #   @return [String]
    #
    # @!attribute [rw] forecast_dimensions
    #   An array of dimension (field) names that specify how to group the
    #   generated forecast.
    #
    #   For example, suppose that you are generating a forecast for item
    #   sales across all of your stores, and your dataset contains a
    #   `store_id` field. If you want the sales forecast for each item by
    #   store, you would specify `store_id` as the dimension.
    #
    #   All forecast dimensions specified in the `TARGET_TIME_SERIES`
    #   dataset don't need to be specified in the `CreatePredictor`
    #   request. All forecast dimensions specified in the
    #   `RELATED_TIME_SERIES` dataset must be specified in the
    #   `CreatePredictor` request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] featurizations
    #   An array of featurization (transformation) information for the
    #   fields of a dataset.
    #   @return [Array<Types::Featurization>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/FeaturizationConfig AWS API Documentation
    #
    class FeaturizationConfig < Struct.new(
      :forecast_frequency,
      :forecast_dimensions,
      :featurizations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the method that featurizes (transforms) a
    # dataset field. The method is part of the `FeaturizationPipeline` of
    # the Featurization object.
    #
    # The following is an example of how you specify a `FeaturizationMethod`
    # object.
    #
    # `\{`
    #
    # `"FeaturizationMethodName": "filling",`
    #
    # `"FeaturizationMethodParameters": \{"aggregation": "sum",
    # "middlefill": "zero", "backfill": "zero"\}`
    #
    # `\}`
    #
    # @note When making an API call, you may pass FeaturizationMethod
    #   data as a hash:
    #
    #       {
    #         featurization_method_name: "filling", # required, accepts filling
    #         featurization_method_parameters: {
    #           "ParameterKey" => "ParameterValue",
    #         },
    #       }
    #
    # @!attribute [rw] featurization_method_name
    #   The name of the method. The "filling" method is the only supported
    #   method.
    #   @return [String]
    #
    # @!attribute [rw] featurization_method_parameters
    #   The method parameters (key-value pairs), which are a map of override
    #   parameters. Specify these parameters to override the default values.
    #   Related Time Series attributes do not accept aggregation parameters.
    #
    #   The following list shows the parameters and their valid values for
    #   the "filling" featurization method for a **Target Time Series**
    #   dataset. Bold signifies the default value.
    #
    #   * `aggregation`\: **sum**, `avg`, `first`, `min`, `max`
    #
    #   * `frontfill`\: **none**
    #
    #   * `middlefill`\: **zero**, `nan` (not a number), `value`, `median`,
    #     `mean`, `min`, `max`
    #
    #   * `backfill`\: **zero**, `nan`, `value`, `median`, `mean`, `min`,
    #     `max`
    #
    #   The following list shows the parameters and their valid values for a
    #   **Related Time Series** featurization method (there are no
    #   defaults):
    #
    #   * `middlefill`\: `zero`, `value`, `median`, `mean`, `min`, `max`
    #
    #   * `backfill`\: `zero`, `value`, `median`, `mean`, `min`, `max`
    #
    #   * `futurefill`\: `zero`, `value`, `median`, `mean`, `min`, `max`
    #
    #   To set a filling method to a specific value, set the fill parameter
    #   to `value` and define the value in a corresponding `_value`
    #   parameter. For example, to set backfilling to a value of 2, include
    #   the following: `"backfill": "value"` and `"backfill_value":"2"`.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/FeaturizationMethod AWS API Documentation
    #
    class FeaturizationMethod < Struct.new(
      :featurization_method_name,
      :featurization_method_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a filter for choosing a subset of objects. Each filter
    # consists of a condition and a match statement. The condition is either
    # `IS` or `IS_NOT`, which specifies whether to include or exclude the
    # objects that match the statement, respectively. The match statement
    # consists of a key and a value.
    #
    # @note When making an API call, you may pass Filter
    #   data as a hash:
    #
    #       {
    #         key: "String", # required
    #         value: "Arn", # required
    #         condition: "IS", # required, accepts IS, IS_NOT
    #       }
    #
    # @!attribute [rw] key
    #   The name of the parameter to filter on.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value to match.
    #   @return [String]
    #
    # @!attribute [rw] condition
    #   The condition to apply. To include the objects that match the
    #   statement, specify `IS`. To exclude matching objects, specify
    #   `IS_NOT`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :key,
      :value,
      :condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of the forecast export job properties used in the
    # ListForecastExportJobs operation. To get the complete set of
    # properties, call the DescribeForecastExportJob operation, and provide
    # the listed `ForecastExportJobArn`.
    #
    # @!attribute [rw] forecast_export_job_arn
    #   The Amazon Resource Name (ARN) of the forecast export job.
    #   @return [String]
    #
    # @!attribute [rw] forecast_export_job_name
    #   The name of the forecast export job.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The path to the Amazon Simple Storage Service (Amazon S3) bucket
    #   where the forecast is exported.
    #   @return [Types::DataDestination]
    #
    # @!attribute [rw] status
    #   The status of the forecast export job. States include:
    #
    #   * `ACTIVE`
    #
    #   * `CREATE_PENDING`, `CREATE_IN_PROGRESS`, `CREATE_FAILED`
    #
    #   * `CREATE_STOPPING`, `CREATE_STOPPED`
    #
    #   * `DELETE_PENDING`, `DELETE_IN_PROGRESS`, `DELETE_FAILED`
    #
    #   <note markdown="1"> The `Status` of the forecast export job must be `ACTIVE` before you
    #   can access the forecast in your S3 bucket.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] message
    #   If an error occurred, an informational message about the error.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the forecast export job was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   The last time the resource was modified. The timestamp depends on
    #   the status of the job:
    #
    #   * `CREATE_PENDING` - The `CreationTime`.
    #
    #   * `CREATE_IN_PROGRESS` - The current timestamp.
    #
    #   * `CREATE_STOPPING` - The current timestamp.
    #
    #   * `CREATE_STOPPED` - When the job stopped.
    #
    #   * `ACTIVE` or `CREATE_FAILED` - When the job finished or failed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ForecastExportJobSummary AWS API Documentation
    #
    class ForecastExportJobSummary < Struct.new(
      :forecast_export_job_arn,
      :forecast_export_job_name,
      :destination,
      :status,
      :message,
      :creation_time,
      :last_modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of the forecast properties used in the
    # ListForecasts operation. To get the complete set of properties, call
    # the DescribeForecast operation, and provide the `ForecastArn` that is
    # listed in the summary.
    #
    # @!attribute [rw] forecast_arn
    #   The ARN of the forecast.
    #   @return [String]
    #
    # @!attribute [rw] forecast_name
    #   The name of the forecast.
    #   @return [String]
    #
    # @!attribute [rw] predictor_arn
    #   The ARN of the predictor used to generate the forecast.
    #   @return [String]
    #
    # @!attribute [rw] created_using_auto_predictor
    #   Whether the Forecast was created from an AutoPredictor.
    #   @return [Boolean]
    #
    # @!attribute [rw] dataset_group_arn
    #   The Amazon Resource Name (ARN) of the dataset group that provided
    #   the data used to train the predictor.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the forecast. States include:
    #
    #   * `ACTIVE`
    #
    #   * `CREATE_PENDING`, `CREATE_IN_PROGRESS`, `CREATE_FAILED`
    #
    #   * `CREATE_STOPPING`, `CREATE_STOPPED`
    #
    #   * `DELETE_PENDING`, `DELETE_IN_PROGRESS`, `DELETE_FAILED`
    #
    #   <note markdown="1"> The `Status` of the forecast must be `ACTIVE` before you can query
    #   or export the forecast.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] message
    #   If an error occurred, an informational message about the error.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the forecast creation task was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   The last time the resource was modified. The timestamp depends on
    #   the status of the job:
    #
    #   * `CREATE_PENDING` - The `CreationTime`.
    #
    #   * `CREATE_IN_PROGRESS` - The current timestamp.
    #
    #   * `CREATE_STOPPING` - The current timestamp.
    #
    #   * `CREATE_STOPPED` - When the job stopped.
    #
    #   * `ACTIVE` or `CREATE_FAILED` - When the job finished or failed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ForecastSummary AWS API Documentation
    #
    class ForecastSummary < Struct.new(
      :forecast_arn,
      :forecast_name,
      :predictor_arn,
      :created_using_auto_predictor,
      :dataset_group_arn,
      :status,
      :message,
      :creation_time,
      :last_modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAccuracyMetricsRequest
    #   data as a hash:
    #
    #       {
    #         predictor_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] predictor_arn
    #   The Amazon Resource Name (ARN) of the predictor to get metrics for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/GetAccuracyMetricsRequest AWS API Documentation
    #
    class GetAccuracyMetricsRequest < Struct.new(
      :predictor_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] predictor_evaluation_results
    #   An array of results from evaluating the predictor.
    #   @return [Array<Types::EvaluationResult>]
    #
    # @!attribute [rw] is_auto_predictor
    #   Whether the predictor was created with CreateAutoPredictor.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_ml_override_strategy
    #   <note markdown="1"> The `LatencyOptimized` AutoML override strategy is only available in
    #   private beta. Contact AWS Support or your account manager to learn
    #   more about access privileges.
    #
    #    </note>
    #
    #   The AutoML strategy used to train the predictor. Unless
    #   `LatencyOptimized` is specified, the AutoML strategy optimizes
    #   predictor accuracy.
    #
    #   This parameter is only valid for predictors trained using AutoML.
    #   @return [String]
    #
    # @!attribute [rw] optimization_metric
    #   The accuracy metric used to optimize the predictor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/GetAccuracyMetricsResponse AWS API Documentation
    #
    class GetAccuracyMetricsResponse < Struct.new(
      :predictor_evaluation_results,
      :is_auto_predictor,
      :auto_ml_override_strategy,
      :optimization_metric)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information for a hyperparameter tuning job. You specify
    # this object in the CreatePredictor request.
    #
    # A *hyperparameter* is a parameter that governs the model training
    # process. You set hyperparameters before training starts, unlike model
    # parameters, which are determined during training. The values of the
    # hyperparameters effect which values are chosen for the model
    # parameters.
    #
    # In a *hyperparameter tuning job*, Amazon Forecast chooses the set of
    # hyperparameter values that optimize a specified metric. Forecast
    # accomplishes this by running many training jobs over a range of
    # hyperparameter values. The optimum set of values depends on the
    # algorithm, the training data, and the specified metric objective.
    #
    # @note When making an API call, you may pass HyperParameterTuningJobConfig
    #   data as a hash:
    #
    #       {
    #         parameter_ranges: {
    #           categorical_parameter_ranges: [
    #             {
    #               name: "Name", # required
    #               values: ["Value"], # required
    #             },
    #           ],
    #           continuous_parameter_ranges: [
    #             {
    #               name: "Name", # required
    #               max_value: 1.0, # required
    #               min_value: 1.0, # required
    #               scaling_type: "Auto", # accepts Auto, Linear, Logarithmic, ReverseLogarithmic
    #             },
    #           ],
    #           integer_parameter_ranges: [
    #             {
    #               name: "Name", # required
    #               max_value: 1, # required
    #               min_value: 1, # required
    #               scaling_type: "Auto", # accepts Auto, Linear, Logarithmic, ReverseLogarithmic
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] parameter_ranges
    #   Specifies the ranges of valid values for the hyperparameters.
    #   @return [Types::ParameterRanges]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/HyperParameterTuningJobConfig AWS API Documentation
    #
    class HyperParameterTuningJobConfig < Struct.new(
      :parameter_ranges)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> This object belongs to the CreatePredictor operation. If you created
    # your predictor with CreateAutoPredictor, see DataConfig.
    #
    #  </note>
    #
    # The data used to train a predictor. The data includes a dataset group
    # and any supplementary features. You specify this object in the
    # CreatePredictor request.
    #
    # @note When making an API call, you may pass InputDataConfig
    #   data as a hash:
    #
    #       {
    #         dataset_group_arn: "Arn", # required
    #         supplementary_features: [
    #           {
    #             name: "Name", # required
    #             value: "Value", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] dataset_group_arn
    #   The Amazon Resource Name (ARN) of the dataset group.
    #   @return [String]
    #
    # @!attribute [rw] supplementary_features
    #   An array of supplementary features. The only supported feature is a
    #   holiday calendar.
    #   @return [Array<Types::SupplementaryFeature>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/InputDataConfig AWS API Documentation
    #
    class InputDataConfig < Struct.new(
      :dataset_group_arn,
      :supplementary_features)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an integer hyperparameter and it's range of tunable values.
    # This object is part of the ParameterRanges object.
    #
    # @note When making an API call, you may pass IntegerParameterRange
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         max_value: 1, # required
    #         min_value: 1, # required
    #         scaling_type: "Auto", # accepts Auto, Linear, Logarithmic, ReverseLogarithmic
    #       }
    #
    # @!attribute [rw] name
    #   The name of the hyperparameter to tune.
    #   @return [String]
    #
    # @!attribute [rw] max_value
    #   The maximum tunable value of the hyperparameter.
    #   @return [Integer]
    #
    # @!attribute [rw] min_value
    #   The minimum tunable value of the hyperparameter.
    #   @return [Integer]
    #
    # @!attribute [rw] scaling_type
    #   The scale that hyperparameter tuning uses to search the
    #   hyperparameter range. Valid values:
    #
    #   Auto
    #
    #   : Amazon Forecast hyperparameter tuning chooses the best scale for
    #     the hyperparameter.
    #
    #   Linear
    #
    #   : Hyperparameter tuning searches the values in the hyperparameter
    #     range by using a linear scale.
    #
    #   Logarithmic
    #
    #   : Hyperparameter tuning searches the values in the hyperparameter
    #     range by using a logarithmic scale.
    #
    #     Logarithmic scaling works only for ranges that have values greater
    #     than 0.
    #
    #   ReverseLogarithmic
    #
    #   : Not supported for `IntegerParameterRange`.
    #
    #     Reverse logarithmic scaling works only for ranges that are
    #     entirely within the range 0 &lt;= x &lt; 1.0.
    #
    #   For information about choosing a hyperparameter scale, see
    #   [Hyperparameter Scaling][1]. One of the following values:
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/automatic-model-tuning-define-ranges.html#scaling-type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/IntegerParameterRange AWS API Documentation
    #
    class IntegerParameterRange < Struct.new(
      :name,
      :max_value,
      :min_value,
      :scaling_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # We can't process the request because it includes an invalid value or
    # a value that exceeds the valid range.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/InvalidInputException AWS API Documentation
    #
    class InvalidInputException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The token is not valid. Tokens expire after 24 hours.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/InvalidNextTokenException AWS API Documentation
    #
    class InvalidNextTokenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The limit on the number of resources per account has been exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDatasetGroupsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   If the result of the previous request was truncated, the response
    #   includes a `NextToken`. To retrieve the next set of results, use the
    #   token in the next request. Tokens expire after 24 hours.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of items to return in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ListDatasetGroupsRequest AWS API Documentation
    #
    class ListDatasetGroupsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_groups
    #   An array of objects that summarize each dataset group's properties.
    #   @return [Array<Types::DatasetGroupSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Forecast returns this token. To
    #   retrieve the next set of results, use the token in the next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ListDatasetGroupsResponse AWS API Documentation
    #
    class ListDatasetGroupsResponse < Struct.new(
      :dataset_groups,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDatasetImportJobsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         filters: [
    #           {
    #             key: "String", # required
    #             value: "Arn", # required
    #             condition: "IS", # required, accepts IS, IS_NOT
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] next_token
    #   If the result of the previous request was truncated, the response
    #   includes a `NextToken`. To retrieve the next set of results, use the
    #   token in the next request. Tokens expire after 24 hours.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of items to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   An array of filters. For each filter, you provide a condition and a
    #   match statement. The condition is either `IS` or `IS_NOT`, which
    #   specifies whether to include or exclude the datasets that match the
    #   statement from the list, respectively. The match statement consists
    #   of a key and a value.
    #
    #   **Filter properties**
    #
    #   * `Condition` - The condition to apply. Valid values are `IS` and
    #     `IS_NOT`. To include the datasets that match the statement,
    #     specify `IS`. To exclude matching datasets, specify `IS_NOT`.
    #
    #   * `Key` - The name of the parameter to filter on. Valid values are
    #     `DatasetArn` and `Status`.
    #
    #   * `Value` - The value to match.
    #
    #   For example, to list all dataset import jobs whose status is ACTIVE,
    #   you specify the following filter:
    #
    #   `"Filters": [ \{ "Condition": "IS", "Key": "Status", "Value":
    #   "ACTIVE" \} ]`
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ListDatasetImportJobsRequest AWS API Documentation
    #
    class ListDatasetImportJobsRequest < Struct.new(
      :next_token,
      :max_results,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_import_jobs
    #   An array of objects that summarize each dataset import job's
    #   properties.
    #   @return [Array<Types::DatasetImportJobSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Forecast returns this token. To
    #   retrieve the next set of results, use the token in the next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ListDatasetImportJobsResponse AWS API Documentation
    #
    class ListDatasetImportJobsResponse < Struct.new(
      :dataset_import_jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDatasetsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   If the result of the previous request was truncated, the response
    #   includes a `NextToken`. To retrieve the next set of results, use the
    #   token in the next request. Tokens expire after 24 hours.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of items to return in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ListDatasetsRequest AWS API Documentation
    #
    class ListDatasetsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datasets
    #   An array of objects that summarize each dataset's properties.
    #   @return [Array<Types::DatasetSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Forecast returns this token. To
    #   retrieve the next set of results, use the token in the next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ListDatasetsResponse AWS API Documentation
    #
    class ListDatasetsResponse < Struct.new(
      :datasets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListExplainabilitiesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         filters: [
    #           {
    #             key: "String", # required
    #             value: "Arn", # required
    #             condition: "IS", # required, accepts IS, IS_NOT
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] next_token
    #   If the result of the previous request was truncated, the response
    #   includes a NextToken. To retrieve the next set of results, use the
    #   token in the next request. Tokens expire after 24 hours.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of items returned in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   An array of filters. For each filter, provide a condition and a
    #   match statement. The condition is either `IS` or `IS_NOT`, which
    #   specifies whether to include or exclude the resources that match the
    #   statement from the list. The match statement consists of a key and a
    #   value.
    #
    #   **Filter properties**
    #
    #   * `Condition` - The condition to apply. Valid values are `IS` and
    #     `IS_NOT`.
    #
    #   * `Key` - The name of the parameter to filter on. Valid values are
    #     `ResourceArn` and `Status`.
    #
    #   * `Value` - The value to match.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ListExplainabilitiesRequest AWS API Documentation
    #
    class ListExplainabilitiesRequest < Struct.new(
      :next_token,
      :max_results,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] explainabilities
    #   An array of objects that summarize the properties of each
    #   Explainability resource.
    #   @return [Array<Types::ExplainabilitySummary>]
    #
    # @!attribute [rw] next_token
    #   Returns this token if the response is truncated. To retrieve the
    #   next set of results, use the token in the next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ListExplainabilitiesResponse AWS API Documentation
    #
    class ListExplainabilitiesResponse < Struct.new(
      :explainabilities,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListExplainabilityExportsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         filters: [
    #           {
    #             key: "String", # required
    #             value: "Arn", # required
    #             condition: "IS", # required, accepts IS, IS_NOT
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] next_token
    #   If the result of the previous request was truncated, the response
    #   includes a NextToken. To retrieve the next set of results, use the
    #   token in the next request. Tokens expire after 24 hours.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of items to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   An array of filters. For each filter, provide a condition and a
    #   match statement. The condition is either `IS` or `IS_NOT`, which
    #   specifies whether to include or exclude resources that match the
    #   statement from the list. The match statement consists of a key and a
    #   value.
    #
    #   **Filter properties**
    #
    #   * `Condition` - The condition to apply. Valid values are `IS` and
    #     `IS_NOT`.
    #
    #   * `Key` - The name of the parameter to filter on. Valid values are
    #     `ResourceArn` and `Status`.
    #
    #   * `Value` - The value to match.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ListExplainabilityExportsRequest AWS API Documentation
    #
    class ListExplainabilityExportsRequest < Struct.new(
      :next_token,
      :max_results,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] explainability_exports
    #   An array of objects that summarize the properties of each
    #   Explainability export.
    #   @return [Array<Types::ExplainabilityExportSummary>]
    #
    # @!attribute [rw] next_token
    #   Returns this token if the response is truncated. To retrieve the
    #   next set of results, use the token in the next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ListExplainabilityExportsResponse AWS API Documentation
    #
    class ListExplainabilityExportsResponse < Struct.new(
      :explainability_exports,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListForecastExportJobsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         filters: [
    #           {
    #             key: "String", # required
    #             value: "Arn", # required
    #             condition: "IS", # required, accepts IS, IS_NOT
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] next_token
    #   If the result of the previous request was truncated, the response
    #   includes a `NextToken`. To retrieve the next set of results, use the
    #   token in the next request. Tokens expire after 24 hours.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of items to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   An array of filters. For each filter, you provide a condition and a
    #   match statement. The condition is either `IS` or `IS_NOT`, which
    #   specifies whether to include or exclude the forecast export jobs
    #   that match the statement from the list, respectively. The match
    #   statement consists of a key and a value.
    #
    #   **Filter properties**
    #
    #   * `Condition` - The condition to apply. Valid values are `IS` and
    #     `IS_NOT`. To include the forecast export jobs that match the
    #     statement, specify `IS`. To exclude matching forecast export jobs,
    #     specify `IS_NOT`.
    #
    #   * `Key` - The name of the parameter to filter on. Valid values are
    #     `ForecastArn` and `Status`.
    #
    #   * `Value` - The value to match.
    #
    #   For example, to list all jobs that export a forecast named
    #   *electricityforecast*, specify the following filter:
    #
    #   `"Filters": [ \{ "Condition": "IS", "Key": "ForecastArn", "Value":
    #   "arn:aws:forecast:us-west-2:<acct-id>:forecast/electricityforecast"
    #   \} ]`
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ListForecastExportJobsRequest AWS API Documentation
    #
    class ListForecastExportJobsRequest < Struct.new(
      :next_token,
      :max_results,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] forecast_export_jobs
    #   An array of objects that summarize each export job's properties.
    #   @return [Array<Types::ForecastExportJobSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Forecast returns this token. To
    #   retrieve the next set of results, use the token in the next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ListForecastExportJobsResponse AWS API Documentation
    #
    class ListForecastExportJobsResponse < Struct.new(
      :forecast_export_jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListForecastsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         filters: [
    #           {
    #             key: "String", # required
    #             value: "Arn", # required
    #             condition: "IS", # required, accepts IS, IS_NOT
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] next_token
    #   If the result of the previous request was truncated, the response
    #   includes a `NextToken`. To retrieve the next set of results, use the
    #   token in the next request. Tokens expire after 24 hours.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of items to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   An array of filters. For each filter, you provide a condition and a
    #   match statement. The condition is either `IS` or `IS_NOT`, which
    #   specifies whether to include or exclude the forecasts that match the
    #   statement from the list, respectively. The match statement consists
    #   of a key and a value.
    #
    #   **Filter properties**
    #
    #   * `Condition` - The condition to apply. Valid values are `IS` and
    #     `IS_NOT`. To include the forecasts that match the statement,
    #     specify `IS`. To exclude matching forecasts, specify `IS_NOT`.
    #
    #   * `Key` - The name of the parameter to filter on. Valid values are
    #     `DatasetGroupArn`, `PredictorArn`, and `Status`.
    #
    #   * `Value` - The value to match.
    #
    #   For example, to list all forecasts whose status is not ACTIVE, you
    #   would specify:
    #
    #   `"Filters": [ \{ "Condition": "IS_NOT", "Key": "Status", "Value":
    #   "ACTIVE" \} ]`
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ListForecastsRequest AWS API Documentation
    #
    class ListForecastsRequest < Struct.new(
      :next_token,
      :max_results,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] forecasts
    #   An array of objects that summarize each forecast's properties.
    #   @return [Array<Types::ForecastSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Forecast returns this token. To
    #   retrieve the next set of results, use the token in the next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ListForecastsResponse AWS API Documentation
    #
    class ListForecastsResponse < Struct.new(
      :forecasts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPredictorBacktestExportJobsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         filters: [
    #           {
    #             key: "String", # required
    #             value: "Arn", # required
    #             condition: "IS", # required, accepts IS, IS_NOT
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] next_token
    #   If the result of the previous request was truncated, the response
    #   includes a NextToken. To retrieve the next set of results, use the
    #   token in the next request. Tokens expire after 24 hours.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of items to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   An array of filters. For each filter, provide a condition and a
    #   match statement. The condition is either `IS` or `IS_NOT`, which
    #   specifies whether to include or exclude the predictor backtest
    #   export jobs that match the statement from the list. The match
    #   statement consists of a key and a value.
    #
    #   **Filter properties**
    #
    #   * `Condition` - The condition to apply. Valid values are `IS` and
    #     `IS_NOT`. To include the predictor backtest export jobs that match
    #     the statement, specify `IS`. To exclude matching predictor
    #     backtest export jobs, specify `IS_NOT`.
    #
    #   * `Key` - The name of the parameter to filter on. Valid values are
    #     `PredictorArn` and `Status`.
    #
    #   * `Value` - The value to match.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ListPredictorBacktestExportJobsRequest AWS API Documentation
    #
    class ListPredictorBacktestExportJobsRequest < Struct.new(
      :next_token,
      :max_results,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] predictor_backtest_export_jobs
    #   An array of objects that summarize the properties of each predictor
    #   backtest export job.
    #   @return [Array<Types::PredictorBacktestExportJobSummary>]
    #
    # @!attribute [rw] next_token
    #   Returns this token if the response is truncated. To retrieve the
    #   next set of results, use the token in the next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ListPredictorBacktestExportJobsResponse AWS API Documentation
    #
    class ListPredictorBacktestExportJobsResponse < Struct.new(
      :predictor_backtest_export_jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPredictorsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         filters: [
    #           {
    #             key: "String", # required
    #             value: "Arn", # required
    #             condition: "IS", # required, accepts IS, IS_NOT
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] next_token
    #   If the result of the previous request was truncated, the response
    #   includes a `NextToken`. To retrieve the next set of results, use the
    #   token in the next request. Tokens expire after 24 hours.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of items to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   An array of filters. For each filter, you provide a condition and a
    #   match statement. The condition is either `IS` or `IS_NOT`, which
    #   specifies whether to include or exclude the predictors that match
    #   the statement from the list, respectively. The match statement
    #   consists of a key and a value.
    #
    #   **Filter properties**
    #
    #   * `Condition` - The condition to apply. Valid values are `IS` and
    #     `IS_NOT`. To include the predictors that match the statement,
    #     specify `IS`. To exclude matching predictors, specify `IS_NOT`.
    #
    #   * `Key` - The name of the parameter to filter on. Valid values are
    #     `DatasetGroupArn` and `Status`.
    #
    #   * `Value` - The value to match.
    #
    #   For example, to list all predictors whose status is ACTIVE, you
    #   would specify:
    #
    #   `"Filters": [ \{ "Condition": "IS", "Key": "Status", "Value":
    #   "ACTIVE" \} ]`
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ListPredictorsRequest AWS API Documentation
    #
    class ListPredictorsRequest < Struct.new(
      :next_token,
      :max_results,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] predictors
    #   An array of objects that summarize each predictor's properties.
    #   @return [Array<Types::PredictorSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Forecast returns this token. To
    #   retrieve the next set of results, use the token in the next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ListPredictorsResponse AWS API Documentation
    #
    class ListPredictorsResponse < Struct.new(
      :predictors,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource for
    #   which to list the tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags for the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides metrics that are used to evaluate the performance of a
    # predictor. This object is part of the WindowSummary object.
    #
    # @!attribute [rw] rmse
    #   The root-mean-square error (RMSE).
    #   @return [Float]
    #
    # @!attribute [rw] weighted_quantile_losses
    #   An array of weighted quantile losses. Quantiles divide a probability
    #   distribution into regions of equal probability. The distribution in
    #   this case is the loss function.
    #   @return [Array<Types::WeightedQuantileLoss>]
    #
    # @!attribute [rw] error_metrics
    #   Provides detailed error metrics for each forecast type. Metrics
    #   include root-mean square-error (RMSE), mean absolute percentage
    #   error (MAPE), mean absolute scaled error (MASE), and weighted
    #   average percentage error (WAPE).
    #   @return [Array<Types::ErrorMetric>]
    #
    # @!attribute [rw] average_weighted_quantile_loss
    #   The average value of all weighted quantile losses.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/Metrics AWS API Documentation
    #
    class Metrics < Struct.new(
      :rmse,
      :weighted_quantile_losses,
      :error_metrics,
      :average_weighted_quantile_loss)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the categorical, continuous, and integer hyperparameters,
    # and their ranges of tunable values. The range of tunable values
    # determines which values that a hyperparameter tuning job can choose
    # for the specified hyperparameter. This object is part of the
    # HyperParameterTuningJobConfig object.
    #
    # @note When making an API call, you may pass ParameterRanges
    #   data as a hash:
    #
    #       {
    #         categorical_parameter_ranges: [
    #           {
    #             name: "Name", # required
    #             values: ["Value"], # required
    #           },
    #         ],
    #         continuous_parameter_ranges: [
    #           {
    #             name: "Name", # required
    #             max_value: 1.0, # required
    #             min_value: 1.0, # required
    #             scaling_type: "Auto", # accepts Auto, Linear, Logarithmic, ReverseLogarithmic
    #           },
    #         ],
    #         integer_parameter_ranges: [
    #           {
    #             name: "Name", # required
    #             max_value: 1, # required
    #             min_value: 1, # required
    #             scaling_type: "Auto", # accepts Auto, Linear, Logarithmic, ReverseLogarithmic
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] categorical_parameter_ranges
    #   Specifies the tunable range for each categorical hyperparameter.
    #   @return [Array<Types::CategoricalParameterRange>]
    #
    # @!attribute [rw] continuous_parameter_ranges
    #   Specifies the tunable range for each continuous hyperparameter.
    #   @return [Array<Types::ContinuousParameterRange>]
    #
    # @!attribute [rw] integer_parameter_ranges
    #   Specifies the tunable range for each integer hyperparameter.
    #   @return [Array<Types::IntegerParameterRange>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ParameterRanges AWS API Documentation
    #
    class ParameterRanges < Struct.new(
      :categorical_parameter_ranges,
      :continuous_parameter_ranges,
      :integer_parameter_ranges)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of the predictor backtest export job properties
    # used in the ListPredictorBacktestExportJobs operation. To get a
    # complete set of properties, call the
    # DescribePredictorBacktestExportJob operation, and provide the listed
    # `PredictorBacktestExportJobArn`.
    #
    # @!attribute [rw] predictor_backtest_export_job_arn
    #   The Amazon Resource Name (ARN) of the predictor backtest export job.
    #   @return [String]
    #
    # @!attribute [rw] predictor_backtest_export_job_name
    #   The name of the predictor backtest export job.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The destination for an export job. Provide an S3 path, an AWS
    #   Identity and Access Management (IAM) role that allows Amazon
    #   Forecast to access the location, and an AWS Key Management Service
    #   (KMS) key (optional).
    #   @return [Types::DataDestination]
    #
    # @!attribute [rw] status
    #   The status of the predictor backtest export job. States include:
    #
    #   * `ACTIVE`
    #
    #   * `CREATE_PENDING`, `CREATE_IN_PROGRESS`, `CREATE_FAILED`
    #
    #   * `CREATE_STOPPING`, `CREATE_STOPPED`
    #
    #   * `DELETE_PENDING`, `DELETE_IN_PROGRESS`, `DELETE_FAILED`
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Information about any errors that may have occurred during the
    #   backtest export.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the predictor backtest export job was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   The last time the resource was modified. The timestamp depends on
    #   the status of the job:
    #
    #   * `CREATE_PENDING` - The `CreationTime`.
    #
    #   * `CREATE_IN_PROGRESS` - The current timestamp.
    #
    #   * `CREATE_STOPPING` - The current timestamp.
    #
    #   * `CREATE_STOPPED` - When the job stopped.
    #
    #   * `ACTIVE` or `CREATE_FAILED` - When the job finished or failed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/PredictorBacktestExportJobSummary AWS API Documentation
    #
    class PredictorBacktestExportJobSummary < Struct.new(
      :predictor_backtest_export_job_arn,
      :predictor_backtest_export_job_name,
      :destination,
      :status,
      :message,
      :creation_time,
      :last_modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The algorithm used to perform a backtest and the status of those
    # tests.
    #
    # @!attribute [rw] algorithm_arn
    #   The ARN of the algorithm used to test the predictor.
    #   @return [String]
    #
    # @!attribute [rw] test_windows
    #   An array of test windows used to evaluate the algorithm. The
    #   `NumberOfBacktestWindows` from the object determines the number of
    #   windows in the array.
    #   @return [Array<Types::TestWindowSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/PredictorExecution AWS API Documentation
    #
    class PredictorExecution < Struct.new(
      :algorithm_arn,
      :test_windows)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details on the backtests performed to evaluate the accuracy
    # of the predictor. The tests are returned in descending order of
    # accuracy, with the most accurate backtest appearing first. You specify
    # the number of backtests to perform when you call the operation.
    #
    # @!attribute [rw] predictor_executions
    #   An array of the backtests performed to evaluate the accuracy of the
    #   predictor against a particular algorithm. The
    #   `NumberOfBacktestWindows` from the object determines the number of
    #   windows in the array.
    #   @return [Array<Types::PredictorExecution>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/PredictorExecutionDetails AWS API Documentation
    #
    class PredictorExecutionDetails < Struct.new(
      :predictor_executions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of the predictor properties that are used in the
    # ListPredictors operation. To get the complete set of properties, call
    # the DescribePredictor operation, and provide the listed
    # `PredictorArn`.
    #
    # @!attribute [rw] predictor_arn
    #   The ARN of the predictor.
    #   @return [String]
    #
    # @!attribute [rw] predictor_name
    #   The name of the predictor.
    #   @return [String]
    #
    # @!attribute [rw] dataset_group_arn
    #   The Amazon Resource Name (ARN) of the dataset group that contains
    #   the data used to train the predictor.
    #   @return [String]
    #
    # @!attribute [rw] is_auto_predictor
    #   Whether AutoPredictor was used to create the predictor.
    #   @return [Boolean]
    #
    # @!attribute [rw] reference_predictor_summary
    #   A summary of the reference predictor used if the predictor was
    #   retrained or upgraded.
    #   @return [Types::ReferencePredictorSummary]
    #
    # @!attribute [rw] status
    #   The status of the predictor. States include:
    #
    #   * `ACTIVE`
    #
    #   * `CREATE_PENDING`, `CREATE_IN_PROGRESS`, `CREATE_FAILED`
    #
    #   * `DELETE_PENDING`, `DELETE_IN_PROGRESS`, `DELETE_FAILED`
    #
    #   * `CREATE_STOPPING`, `CREATE_STOPPED`
    #
    #   <note markdown="1"> The `Status` of the predictor must be `ACTIVE` before you can use
    #   the predictor to create a forecast.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] message
    #   If an error occurred, an informational message about the error.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the model training task was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   The last time the resource was modified. The timestamp depends on
    #   the status of the job:
    #
    #   * `CREATE_PENDING` - The `CreationTime`.
    #
    #   * `CREATE_IN_PROGRESS` - The current timestamp.
    #
    #   * `CREATE_STOPPING` - The current timestamp.
    #
    #   * `CREATE_STOPPED` - When the job stopped.
    #
    #   * `ACTIVE` or `CREATE_FAILED` - When the job finished or failed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/PredictorSummary AWS API Documentation
    #
    class PredictorSummary < Struct.new(
      :predictor_arn,
      :predictor_name,
      :dataset_group_arn,
      :is_auto_predictor,
      :reference_predictor_summary,
      :status,
      :message,
      :creation_time,
      :last_modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of the reference predictor used when retraining or
    # upgrading a predictor.
    #
    # @!attribute [rw] arn
    #   The ARN of the reference predictor.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Whether the reference predictor is `Active` or `Deleted`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ReferencePredictorSummary AWS API Documentation
    #
    class ReferencePredictorSummary < Struct.new(
      :arn,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # There is already a resource with this name. Try again with a different
    # name.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ResourceAlreadyExistsException AWS API Documentation
    #
    class ResourceAlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource is in use.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # We can't find a resource with that Amazon Resource Name (ARN). Check
    # the ARN and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The path to the file(s) in an Amazon Simple Storage Service (Amazon
    # S3) bucket, and an AWS Identity and Access Management (IAM) role that
    # Amazon Forecast can assume to access the file(s). Optionally, includes
    # an AWS Key Management Service (KMS) key. This object is part of the
    # DataSource object that is submitted in the CreateDatasetImportJob
    # request, and part of the DataDestination object.
    #
    # @note When making an API call, you may pass S3Config
    #   data as a hash:
    #
    #       {
    #         path: "S3Path", # required
    #         role_arn: "Arn", # required
    #         kms_key_arn: "KMSKeyArn",
    #       }
    #
    # @!attribute [rw] path
    #   The path to an Amazon Simple Storage Service (Amazon S3) bucket or
    #   file(s) in an Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the AWS Identity and Access Management (IAM) role that
    #   Amazon Forecast can assume to access the Amazon S3 bucket or files.
    #   If you provide a value for the `KMSKeyArn` key, the role must allow
    #   access to the key.
    #
    #   Passing a role across AWS accounts is not allowed. If you pass a
    #   role that isn't in your account, you get an `InvalidInputException`
    #   error.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of an AWS Key Management Service
    #   (KMS) key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/S3Config AWS API Documentation
    #
    class S3Config < Struct.new(
      :path,
      :role_arn,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the fields of a dataset.
    #
    # @note When making an API call, you may pass Schema
    #   data as a hash:
    #
    #       {
    #         attributes: [
    #           {
    #             attribute_name: "Name",
    #             attribute_type: "string", # accepts string, integer, float, timestamp, geolocation
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] attributes
    #   An array of attributes specifying the name and type of each field in
    #   a dataset.
    #   @return [Array<Types::SchemaAttribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/Schema AWS API Documentation
    #
    class Schema < Struct.new(
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # An attribute of a schema, which defines a dataset field. A schema
    # attribute is required for every field in a dataset. The Schema object
    # contains an array of `SchemaAttribute` objects.
    #
    # @note When making an API call, you may pass SchemaAttribute
    #   data as a hash:
    #
    #       {
    #         attribute_name: "Name",
    #         attribute_type: "string", # accepts string, integer, float, timestamp, geolocation
    #       }
    #
    # @!attribute [rw] attribute_name
    #   The name of the dataset field.
    #   @return [String]
    #
    # @!attribute [rw] attribute_type
    #   The data type of the field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/SchemaAttribute AWS API Documentation
    #
    class SchemaAttribute < Struct.new(
      :attribute_name,
      :attribute_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides statistics for each data field imported into to an Amazon
    # Forecast dataset with the CreateDatasetImportJob operation.
    #
    # @!attribute [rw] count
    #   The number of values in the field. If the response value is -1,
    #   refer to `CountLong`.
    #   @return [Integer]
    #
    # @!attribute [rw] count_distinct
    #   The number of distinct values in the field. If the response value is
    #   -1, refer to `CountDistinctLong`.
    #   @return [Integer]
    #
    # @!attribute [rw] count_null
    #   The number of null values in the field. If the response value is -1,
    #   refer to `CountNullLong`.
    #   @return [Integer]
    #
    # @!attribute [rw] count_nan
    #   The number of NAN (not a number) values in the field. If the
    #   response value is -1, refer to `CountNanLong`.
    #   @return [Integer]
    #
    # @!attribute [rw] min
    #   For a numeric field, the minimum value in the field.
    #   @return [String]
    #
    # @!attribute [rw] max
    #   For a numeric field, the maximum value in the field.
    #   @return [String]
    #
    # @!attribute [rw] avg
    #   For a numeric field, the average value in the field.
    #   @return [Float]
    #
    # @!attribute [rw] stddev
    #   For a numeric field, the standard deviation.
    #   @return [Float]
    #
    # @!attribute [rw] count_long
    #   The number of values in the field. `CountLong` is used instead of
    #   `Count` if the value is greater than 2,147,483,647.
    #   @return [Integer]
    #
    # @!attribute [rw] count_distinct_long
    #   The number of distinct values in the field. `CountDistinctLong` is
    #   used instead of `CountDistinct` if the value is greater than
    #   2,147,483,647.
    #   @return [Integer]
    #
    # @!attribute [rw] count_null_long
    #   The number of null values in the field. `CountNullLong` is used
    #   instead of `CountNull` if the value is greater than 2,147,483,647.
    #   @return [Integer]
    #
    # @!attribute [rw] count_nan_long
    #   The number of NAN (not a number) values in the field. `CountNanLong`
    #   is used instead of `CountNan` if the value is greater than
    #   2,147,483,647.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/Statistics AWS API Documentation
    #
    class Statistics < Struct.new(
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
      :count_nan_long)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource to stop.
    #   The supported ARNs are `DatasetImportJobArn`, `PredictorArn`,
    #   `PredictorBacktestExportJobArn`, `ForecastArn`,
    #   `ForecastExportJobArn`, `ExplainabilityArn`, and
    #   `ExplainabilityExportArn`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/StopResourceRequest AWS API Documentation
    #
    class StopResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> This object belongs to the CreatePredictor operation. If you created
    # your predictor with CreateAutoPredictor, see AdditionalDataset.
    #
    #  </note>
    #
    # Describes a supplementary feature of a dataset group. This object is
    # part of the InputDataConfig object. Forecast supports the Weather
    # Index and Holidays built-in featurizations.
    #
    # **Weather Index**
    #
    # The Amazon Forecast Weather Index is a built-in featurization that
    # incorporates historical and projected weather information into your
    # model. The Weather Index supplements your datasets with over two years
    # of historical weather data and up to 14 days of projected weather
    # data. For more information, see [Amazon Forecast Weather Index][1].
    #
    # **Holidays**
    #
    # Holidays is a built-in featurization that incorporates a
    # feature-engineered dataset of national holiday information into your
    # model. It provides native support for the holiday calendars of 66
    # countries. To view the holiday calendars, refer to the [Jollyday][2]
    # library. For more information, see [Holidays Featurization][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/forecast/latest/dg/weather.html
    # [2]: http://jollyday.sourceforge.net/data.html
    # [3]: https://docs.aws.amazon.com/forecast/latest/dg/holidays.html
    #
    # @note When making an API call, you may pass SupplementaryFeature
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         value: "Value", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the feature. Valid values: `"holiday"` and `"weather"`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   **Weather Index**
    #
    #   To enable the Weather Index, set the value to `"true"`
    #
    #   **Holidays**
    #
    #   To enable Holidays, specify a country with one of the following
    #   two-letter country codes:
    #
    #   * "AL" - ALBANIA
    #
    #   * "AR" - ARGENTINA
    #
    #   * "AT" - AUSTRIA
    #
    #   * "AU" - AUSTRALIA
    #
    #   * "BA" - BOSNIA HERZEGOVINA
    #
    #   * "BE" - BELGIUM
    #
    #   * "BG" - BULGARIA
    #
    #   * "BO" - BOLIVIA
    #
    #   * "BR" - BRAZIL
    #
    #   * "BY" - BELARUS
    #
    #   * "CA" - CANADA
    #
    #   * "CL" - CHILE
    #
    #   * "CO" - COLOMBIA
    #
    #   * "CR" - COSTA RICA
    #
    #   * "HR" - CROATIA
    #
    #   * "CZ" - CZECH REPUBLIC
    #
    #   * "DK" - DENMARK
    #
    #   * "EC" - ECUADOR
    #
    #   * "EE" - ESTONIA
    #
    #   * "ET" - ETHIOPIA
    #
    #   * "FI" - FINLAND
    #
    #   * "FR" - FRANCE
    #
    #   * "DE" - GERMANY
    #
    #   * "GR" - GREECE
    #
    #   * "HU" - HUNGARY
    #
    #   * "IS" - ICELAND
    #
    #   * "IN" - INDIA
    #
    #   * "IE" - IRELAND
    #
    #   * "IT" - ITALY
    #
    #   * "JP" - JAPAN
    #
    #   * "KZ" - KAZAKHSTAN
    #
    #   * "KR" - KOREA
    #
    #   * "LV" - LATVIA
    #
    #   * "LI" - LIECHTENSTEIN
    #
    #   * "LT" - LITHUANIA
    #
    #   * "LU" - LUXEMBOURG
    #
    #   * "MK" - MACEDONIA
    #
    #   * "MT" - MALTA
    #
    #   * "MX" - MEXICO
    #
    #   * "MD" - MOLDOVA
    #
    #   * "ME" - MONTENEGRO
    #
    #   * "NL" - NETHERLANDS
    #
    #   * "NZ" - NEW ZEALAND
    #
    #   * "NI" - NICARAGUA
    #
    #   * "NG" - NIGERIA
    #
    #   * "NO" - NORWAY
    #
    #   * "PA" - PANAMA
    #
    #   * "PY" - PARAGUAY
    #
    #   * "PE" - PERU
    #
    #   * "PL" - POLAND
    #
    #   * "PT" - PORTUGAL
    #
    #   * "RO" - ROMANIA
    #
    #   * "RU" - RUSSIA
    #
    #   * "RS" - SERBIA
    #
    #   * "SK" - SLOVAKIA
    #
    #   * "SI" - SLOVENIA
    #
    #   * "ZA" - SOUTH AFRICA
    #
    #   * "ES" - SPAIN
    #
    #   * "SE" - SWEDEN
    #
    #   * "CH" - SWITZERLAND
    #
    #   * "UA" - UKRAINE
    #
    #   * "AE" - UNITED ARAB EMIRATES
    #
    #   * "US" - UNITED STATES
    #
    #   * "UK" - UNITED KINGDOM
    #
    #   * "UY" - URUGUAY
    #
    #   * "VE" - VENEZUELA
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/SupplementaryFeature AWS API Documentation
    #
    class SupplementaryFeature < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The optional metadata that you apply to a resource to help you
    # categorize and organize them. Each tag consists of a key and an
    # optional value, both of which you define.
    #
    # The following basic restrictions apply to tags:
    #
    # * Maximum number of tags per resource - 50.
    #
    # * For each resource, each tag key must be unique, and each tag key can
    #   have only one value.
    #
    # * Maximum key length - 128 Unicode characters in UTF-8.
    #
    # * Maximum value length - 256 Unicode characters in UTF-8.
    #
    # * If your tagging schema is used across multiple services and
    #   resources, remember that other services may have restrictions on
    #   allowed characters. Generally allowed characters are: letters,
    #   numbers, and spaces representable in UTF-8, and the following
    #   characters: + - = . \_ : / @.
    #
    # * Tag keys and values are case sensitive.
    #
    # * Do not use `aws:`, `AWS:`, or any upper or lowercase combination of
    #   such as a prefix for keys as it is reserved for AWS use. You cannot
    #   edit or delete tag keys with this prefix. Values can have this
    #   prefix. If a tag value has `aws` as its prefix but the key does not,
    #   then Forecast considers it to be a user tag and will count against
    #   the limit of 50 tags. Tags with only the key prefix of `aws` do not
    #   count against your tags per resource limit.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   One part of a key-value pair that makes up a tag. A `key` is a
    #   general label that acts like a category for more specific tag
    #   values.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The optional part of a key-value pair that makes up a tag. A `value`
    #   acts as a descriptor within a tag category (key).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = [:key, :value]
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource for
    #   which to list the tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the resource. A tag is an array of key-value
    #   pairs.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination
    #     of such as a prefix for keys as it is reserved for AWS use. You
    #     cannot edit or delete tag keys with this prefix. Values can have
    #     this prefix. If a tag value has `aws` as its prefix but the key
    #     does not, then Forecast considers it to be a user tag and will
    #     count against the limit of 50 tags. Tags with only the key prefix
    #     of `aws` do not count against your tags per resource limit.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The status, start time, and end time of a backtest, as well as a
    # failure reason if applicable.
    #
    # @!attribute [rw] test_window_start
    #   The time at which the test began.
    #   @return [Time]
    #
    # @!attribute [rw] test_window_end
    #   The time at which the test ended.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the test. Possible status values are:
    #
    #   * `ACTIVE`
    #
    #   * `CREATE_IN_PROGRESS`
    #
    #   * `CREATE_FAILED`
    #   @return [String]
    #
    # @!attribute [rw] message
    #   If the test failed, the reason why it failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/TestWindowSummary AWS API Documentation
    #
    class TestWindowSummary < Struct.new(
      :test_window_start,
      :test_window_end,
      :status,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource for
    #   which to list the tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags to be removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateDatasetGroupRequest
    #   data as a hash:
    #
    #       {
    #         dataset_group_arn: "Arn", # required
    #         dataset_arns: ["Arn"], # required
    #       }
    #
    # @!attribute [rw] dataset_group_arn
    #   The ARN of the dataset group.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arns
    #   An array of the Amazon Resource Names (ARNs) of the datasets to add
    #   to the dataset group.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/UpdateDatasetGroupRequest AWS API Documentation
    #
    class UpdateDatasetGroupRequest < Struct.new(
      :dataset_group_arn,
      :dataset_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/UpdateDatasetGroupResponse AWS API Documentation
    #
    class UpdateDatasetGroupResponse < Aws::EmptyStructure; end

    # The weighted loss value for a quantile. This object is part of the
    # Metrics object.
    #
    # @!attribute [rw] quantile
    #   The quantile. Quantiles divide a probability distribution into
    #   regions of equal probability. For example, if the distribution was
    #   divided into 5 regions of equal probability, the quantiles would be
    #   0.2, 0.4, 0.6, and 0.8.
    #   @return [Float]
    #
    # @!attribute [rw] loss_value
    #   The difference between the predicted value and the actual value over
    #   the quantile, weighted (normalized) by dividing by the sum over all
    #   quantiles.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/WeightedQuantileLoss AWS API Documentation
    #
    class WeightedQuantileLoss < Struct.new(
      :quantile,
      :loss_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metrics for a time range within the evaluation portion of a
    # dataset. This object is part of the EvaluationResult object.
    #
    # The `TestWindowStart` and `TestWindowEnd` parameters are determined by
    # the `BackTestWindowOffset` parameter of the EvaluationParameters
    # object.
    #
    # @!attribute [rw] test_window_start
    #   The timestamp that defines the start of the window.
    #   @return [Time]
    #
    # @!attribute [rw] test_window_end
    #   The timestamp that defines the end of the window.
    #   @return [Time]
    #
    # @!attribute [rw] item_count
    #   The number of data points within the window.
    #   @return [Integer]
    #
    # @!attribute [rw] evaluation_type
    #   The type of evaluation.
    #
    #   * `SUMMARY` - The average metrics across all windows.
    #
    #   * `COMPUTED` - The metrics for the specified window.
    #   @return [String]
    #
    # @!attribute [rw] metrics
    #   Provides metrics used to evaluate the performance of a predictor.
    #   @return [Types::Metrics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26/WindowSummary AWS API Documentation
    #
    class WindowSummary < Struct.new(
      :test_window_start,
      :test_window_end,
      :item_count,
      :evaluation_type,
      :metrics)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
