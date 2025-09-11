# frozen_string_literal: true

# This is generated code!

module Aws::Forecastquery
  # This module contains the types returned by client operations.
  module Types

    # <p>The forecast value for a specific date. Part of the <a>Forecast</a>
    #       object.</p>
    # @!attribute timestamp
    #   <p>The timestamp of the specific forecast.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The forecast value.</p>
    #   @return [Float]
    class DataPoint < Struct.new(
      :timestamp,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about a forecast. Returned as part of the <a>QueryForecast</a> response.</p>
    # @!attribute predictions
    #   <p>The forecast.</p>
    #            <p>The <i>string</i> of the string-to-array map is one of the following
    #         values:</p>
    #            <ul>
    #               <li>
    #                  <p>p10</p>
    #               </li>
    #               <li>
    #                  <p>p50</p>
    #               </li>
    #               <li>
    #                  <p>p90</p>
    #               </li>
    #            </ul>
    #            <p>The default setting is <code>["0.1", "0.5", "0.9"]</code>. Use the optional <code>ForecastTypes</code> parameter of the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_CreateForecast.html">CreateForecast</a> operation to change the values. The values will vary depending on how this is set, with a minimum of <code>1</code> and a maximum of <code>5.</code>
    #            </p>
    #   @return [Hash<String, Array<Types::DataPoint>>]
    class Forecast < Struct.new(
      :predictions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The value is invalid or is too long.</p>
    # @!attribute message
    #   @return [String]
    class InvalidInputException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The token is not valid. Tokens expire after 24 hours.</p>
    # @!attribute message
    #   @return [String]
    class InvalidNextTokenException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The limit on the number of requests per second has been exceeded.</p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute forecast_arn
    #   <p>The Amazon Resource Name (ARN) of the forecast to query.</p>
    #   @return [String]
    # @!attribute start_date
    #   <p>The start date for the forecast. Specify the date using this format: yyyy-MM-dd'T'HH:mm:ss
    #         (ISO 8601 format). For example, 2015-01-01T08:00:00.</p>
    #   @return [String]
    # @!attribute end_date
    #   <p>The end date for the forecast. Specify the date using this format: yyyy-MM-dd'T'HH:mm:ss
    #         (ISO 8601 format). For example, 2015-01-01T20:00:00. </p>
    #   @return [String]
    # @!attribute filters
    #   <p>The filtering criteria to apply when retrieving the forecast. For example, to get the
    #         forecast for <code>client_21</code> in the electricity usage dataset, specify the
    #         following:</p>
    #            <p>
    #               <code>{"item_id" : "client_21"}</code>
    #            </p>
    #         
    #         
    #            <p>To get the full forecast, use the <a href="https://docs.aws.amazon.com/en_us/forecast/latest/dg/API_CreateForecastExportJob.html">CreateForecastExportJob</a> operation.</p>
    #   @return [Hash<String, String>]
    # @!attribute next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #           <code>NextToken</code>. To retrieve the next set of results, use the token in the next
    #         request. Tokens expire after 24 hours.</p>
    #   @return [String]
    class QueryForecastRequest < Struct.new(
      :forecast_arn,
      :start_date,
      :end_date,
      :filters,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute forecast
    #   <p>The forecast.</p>
    #   @return [Types::Forecast]
    class QueryForecastResponse < Struct.new(
      :forecast,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute what_if_forecast_arn
    #   <p>The Amazon Resource Name (ARN) of the what-if forecast to query.</p>
    #   @return [String]
    # @!attribute start_date
    #   <p>The start date for the what-if forecast. Specify the date using this format: yyyy-MM-dd'T'HH:mm:ss
    #         (ISO 8601 format). For example, 2015-01-01T08:00:00.</p>
    #   @return [String]
    # @!attribute end_date
    #   <p>The end date for the what-if forecast. Specify the date using this format: yyyy-MM-dd'T'HH:mm:ss
    #         (ISO 8601 format). For example, 2015-01-01T20:00:00. </p>
    #   @return [String]
    # @!attribute filters
    #   <p>The filtering criteria to apply when retrieving the forecast. For example, to get the
    #         forecast for <code>client_21</code> in the electricity usage dataset, specify the
    #         following:</p>
    #            <p>
    #               <code>{"item_id" : "client_21"}</code>
    #            </p>
    #            <p>To get the full what-if forecast, use the <a href="https://docs.aws.amazon.com/en_us/forecast/latest/dg/API_CreateWhatIfForecastExport.html">CreateForecastExportJob</a> operation.</p>
    #   @return [Hash<String, String>]
    # @!attribute next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #         <code>NextToken</code>. To retrieve the next set of results, use the token in the next
    #         request. Tokens expire after 24 hours.</p>
    #   @return [String]
    class QueryWhatIfForecastRequest < Struct.new(
      :what_if_forecast_arn,
      :start_date,
      :end_date,
      :filters,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute forecast
    #   <p>Provides information about a forecast. Returned as part of the <a>QueryForecast</a> response.</p>
    #   @return [Types::Forecast]
    class QueryWhatIfForecastResponse < Struct.new(
      :forecast,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource is in use.</p>
    # @!attribute message
    #   @return [String]
    class ResourceInUseException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>We can't find that resource. Check the information that you've provided and try
    #       again.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
