# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ForecastQueryService
  module Types

    # The forecast value for a specific date. Part of the Forecast object.
    #
    # @!attribute [rw] timestamp
    #   The timestamp of the specific forecast.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The forecast value.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecastquery-2018-06-26/DataPoint AWS API Documentation
    #
    class DataPoint < Struct.new(
      :timestamp,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a forecast. Returned as part of the
    # QueryForecast response.
    #
    # @!attribute [rw] predictions
    #   The forecast.
    #
    #   The *string* of the string-to-array map is one of the following
    #   values:
    #
    #   * p10
    #
    #   * p50
    #
    #   * p90
    #
    #   The default setting is `["0.1", "0.5", "0.9"]`. Use the optional
    #   `ForecastTypes` parameter of the [CreateForecast][1] operation to
    #   change the values. The values will vary depending on how this is
    #   set, with a minimum of `1` and a maximum of `5.`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/forecast/latest/dg/API_CreateForecast.html
    #   @return [Hash<String,Array<Types::DataPoint>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecastquery-2018-06-26/Forecast AWS API Documentation
    #
    class Forecast < Struct.new(
      :predictions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value is invalid or is too long.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecastquery-2018-06-26/InvalidInputException AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecastquery-2018-06-26/InvalidNextTokenException AWS API Documentation
    #
    class InvalidNextTokenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The limit on the number of requests per second has been exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecastquery-2018-06-26/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] forecast_arn
    #   The Amazon Resource Name (ARN) of the forecast to query.
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The start date for the forecast. Specify the date using this format:
    #   yyyy-MM-dd'T'HH:mm:ss (ISO 8601 format). For example,
    #   2015-01-01T08:00:00.
    #   @return [String]
    #
    # @!attribute [rw] end_date
    #   The end date for the forecast. Specify the date using this format:
    #   yyyy-MM-dd'T'HH:mm:ss (ISO 8601 format). For example,
    #   2015-01-01T20:00:00.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The filtering criteria to apply when retrieving the forecast. For
    #   example, to get the forecast for `client_21` in the electricity
    #   usage dataset, specify the following:
    #
    #   `\{"item_id" : "client_21"\}`
    #
    #   To get the full forecast, use the [CreateForecastExportJob][1]
    #   operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/en_us/forecast/latest/dg/API_CreateForecastExportJob.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] next_token
    #   If the result of the previous request was truncated, the response
    #   includes a `NextToken`. To retrieve the next set of results, use the
    #   token in the next request. Tokens expire after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecastquery-2018-06-26/QueryForecastRequest AWS API Documentation
    #
    class QueryForecastRequest < Struct.new(
      :forecast_arn,
      :start_date,
      :end_date,
      :filters,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] forecast
    #   The forecast.
    #   @return [Types::Forecast]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecastquery-2018-06-26/QueryForecastResponse AWS API Documentation
    #
    class QueryForecastResponse < Struct.new(
      :forecast)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] what_if_forecast_arn
    #   The Amazon Resource Name (ARN) of the what-if forecast to query.
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The start date for the what-if forecast. Specify the date using this
    #   format: yyyy-MM-dd'T'HH:mm:ss (ISO 8601 format). For example,
    #   2015-01-01T08:00:00.
    #   @return [String]
    #
    # @!attribute [rw] end_date
    #   The end date for the what-if forecast. Specify the date using this
    #   format: yyyy-MM-dd'T'HH:mm:ss (ISO 8601 format). For example,
    #   2015-01-01T20:00:00.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The filtering criteria to apply when retrieving the forecast. For
    #   example, to get the forecast for `client_21` in the electricity
    #   usage dataset, specify the following:
    #
    #   `\{"item_id" : "client_21"\}`
    #
    #   To get the full what-if forecast, use the
    #   [CreateForecastExportJob][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/en_us/forecast/latest/dg/API_CreateWhatIfForecastExport.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] next_token
    #   If the result of the previous request was truncated, the response
    #   includes a `NextToken`. To retrieve the next set of results, use the
    #   token in the next request. Tokens expire after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecastquery-2018-06-26/QueryWhatIfForecastRequest AWS API Documentation
    #
    class QueryWhatIfForecastRequest < Struct.new(
      :what_if_forecast_arn,
      :start_date,
      :end_date,
      :filters,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] forecast
    #   Provides information about a forecast. Returned as part of the
    #   QueryForecast response.
    #   @return [Types::Forecast]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecastquery-2018-06-26/QueryWhatIfForecastResponse AWS API Documentation
    #
    class QueryWhatIfForecastResponse < Struct.new(
      :forecast)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource is in use.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecastquery-2018-06-26/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # We can't find that resource. Check the information that you've
    # provided and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/forecastquery-2018-06-26/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
