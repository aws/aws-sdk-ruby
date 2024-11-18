# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::InternetMonitor
  module Types

    # You don't have sufficient permission to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon CloudWatch Internet Monitor calculates measurements about the
    # availability for your application's internet traffic between client
    # locations and Amazon Web Services. Amazon Web Services has substantial
    # historical data about internet performance and availability between
    # Amazon Web Services services and different network providers and
    # geographies. By applying statistical analysis to the data, Internet
    # Monitor can detect when the performance and availability for your
    # application has dropped, compared to an estimated baseline that's
    # already calculated. To make it easier to see those drops, we report
    # that information to you in the form of health scores: a performance
    # score and an availability score.
    #
    # Availability in Internet Monitor represents the estimated percentage
    # of traffic that is not seeing an availability drop. For example, an
    # availability score of 99% for an end user and service location pair is
    # equivalent to 1% of the traffic experiencing an availability drop for
    # that pair.
    #
    # For more information, see [How Internet Monitor calculates performance
    # and availability scores][1] in the Amazon CloudWatch Internet Monitor
    # section of the *Amazon CloudWatch User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-inside-internet-monitor.html#IMExperienceScores
    #
    # @!attribute [rw] experience_score
    #   Experience scores, or health scores are calculated for different
    #   geographic and network provider combinations (that is, different
    #   granularities) and also summed into global scores. If you view
    #   performance or availability scores without filtering for any
    #   specific geography or service provider, Amazon CloudWatch Internet
    #   Monitor provides global health scores.
    #
    #   The Amazon CloudWatch Internet Monitor chapter in the *CloudWatch
    #   User Guide* includes detailed information about how Internet Monitor
    #   calculates health scores, including performance and availability
    #   scores, and when it creates and resolves health events. For more
    #   information, see [How Amazon Web Services calculates performance and
    #   availability scores][1] in the Amazon CloudWatch Internet Monitor
    #   section of the *CloudWatch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-inside-internet-monitor.html#IMExperienceScores
    #   @return [Float]
    #
    # @!attribute [rw] percent_of_total_traffic_impacted
    #   The impact on total traffic that a health event has, in increased
    #   latency or reduced availability. This is the percentage of how much
    #   latency has increased or availability has decreased during the
    #   event, compared to what is typical for traffic from this client
    #   location to the Amazon Web Services location using this client
    #   network.
    #
    #   For information about how Internet Monitor calculates impact, see
    #   [How Internet Monitor works][1] in the Amazon CloudWatch Internet
    #   Monitor section of the Amazon CloudWatch User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-inside-internet-monitor.html
    #   @return [Float]
    #
    # @!attribute [rw] percent_of_client_location_impacted
    #   The percentage of impact caused by a health event for client
    #   location traffic globally.
    #
    #   For information about how Internet Monitor calculates impact, see
    #   [Inside Internet Monitor][1] in the Amazon CloudWatch Internet
    #   Monitor section of the Amazon CloudWatch User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-inside-internet-monitor.html
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/AvailabilityMeasurement AWS API Documentation
    #
    class AvailabilityMeasurement < Struct.new(
      :experience_score,
      :percent_of_total_traffic_impacted,
      :percent_of_client_location_impacted)
      SENSITIVE = []
      include Aws::Structure
    end

    # A bad request was received.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The impacted location, such as a city, that Amazon Web Services
    # clients access application resources from.
    #
    # @!attribute [rw] as_name
    #   The name of the internet service provider (ISP) or network (ASN).
    #   @return [String]
    #
    # @!attribute [rw] as_number
    #   The Autonomous System Number (ASN) of the network at an impacted
    #   location.
    #   @return [Integer]
    #
    # @!attribute [rw] country
    #   The name of the country where the internet event is located.
    #   @return [String]
    #
    # @!attribute [rw] subdivision
    #   The subdivision location where the health event is located. The
    #   subdivision usually maps to states in most countries (including the
    #   United States). For United Kingdom, it maps to a country (England,
    #   Scotland, Wales) or province (Northern Ireland).
    #   @return [String]
    #
    # @!attribute [rw] metro
    #   The metro area where the health event is located.
    #
    #   Metro indicates a metropolitan region in the United States, such as
    #   the region around New York City. In non-US countries, this is a
    #   second-level subdivision. For example, in the United Kingdom, it
    #   could be a county, a London borough, a unitary authority, council
    #   area, and so on.
    #   @return [String]
    #
    # @!attribute [rw] city
    #   The name of the city where the internet event is located.
    #   @return [String]
    #
    # @!attribute [rw] latitude
    #   The latitude where the internet event is located.
    #   @return [Float]
    #
    # @!attribute [rw] longitude
    #   The longitude where the internet event is located.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/ClientLocation AWS API Documentation
    #
    class ClientLocation < Struct.new(
      :as_name,
      :as_number,
      :country,
      :subdivision,
      :metro,
      :city,
      :latitude,
      :longitude)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested resource is in use.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor_name
    #   The name of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   The resources to include in a monitor, which you provide as a set of
    #   Amazon Resource Names (ARNs). Resources can be VPCs, NLBs, Amazon
    #   CloudFront distributions, or Amazon WorkSpaces directories.
    #
    #   You can add a combination of VPCs and CloudFront distributions, or
    #   you can add WorkSpaces directories, or you can add NLBs. You can't
    #   add NLBs or WorkSpaces directories together with any other
    #   resources.
    #
    #   <note markdown="1"> If you add only Amazon VPC resources, at least one VPC must have an
    #   Internet Gateway attached to it, to make sure that it has internet
    #   connectivity.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive string of up to 64 ASCII characters that
    #   you specify to make an idempotent API request. Don't reuse the same
    #   client token for other API requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for a monitor. You can add a maximum of 50 tags in Internet
    #   Monitor.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] max_city_networks_to_monitor
    #   The maximum number of city-networks to monitor for your resources. A
    #   city-network is the location (city) where clients access your
    #   application resources from and the ASN or network provider, such as
    #   an internet service provider (ISP), that clients access the
    #   resources through. Setting this limit can help control billing
    #   costs.
    #
    #   To learn more, see [Choosing a city-network maximum value ][1] in
    #   the Amazon CloudWatch Internet Monitor section of the *CloudWatch
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/IMCityNetworksMaximum.html
    #   @return [Integer]
    #
    # @!attribute [rw] internet_measurements_log_delivery
    #   Publish internet measurements for Internet Monitor to an Amazon S3
    #   bucket in addition to CloudWatch Logs.
    #   @return [Types::InternetMeasurementsLogDelivery]
    #
    # @!attribute [rw] traffic_percentage_to_monitor
    #   The percentage of the internet-facing traffic for your application
    #   that you want to monitor with this monitor. If you set a
    #   city-networks maximum, that limit overrides the traffic percentage
    #   that you set.
    #
    #   To learn more, see [Choosing an application traffic percentage to
    #   monitor ][1] in the Amazon CloudWatch Internet Monitor section of
    #   the *CloudWatch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/IMTrafficPercentage.html
    #   @return [Integer]
    #
    # @!attribute [rw] health_events_config
    #   Defines the threshold percentages and other configuration
    #   information for when Amazon CloudWatch Internet Monitor creates a
    #   health event. Internet Monitor creates a health event when an
    #   internet issue that affects your application end users has a health
    #   score percentage that is at or below a specific threshold, and,
    #   sometimes, when other criteria are met.
    #
    #   If you don't set a health event threshold, the default value is
    #   95%.
    #
    #   For more information, see [ Change health event thresholds][1] in
    #   the Internet Monitor section of the *CloudWatch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-overview.html#IMUpdateThresholdFromOverview
    #   @return [Types::HealthEventsConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/CreateMonitorInput AWS API Documentation
    #
    class CreateMonitorInput < Struct.new(
      :monitor_name,
      :resources,
      :client_token,
      :tags,
      :max_city_networks_to_monitor,
      :internet_measurements_log_delivery,
      :traffic_percentage_to_monitor,
      :health_events_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a monitor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/CreateMonitorOutput AWS API Documentation
    #
    class CreateMonitorOutput < Struct.new(
      :arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor_name
    #   The name of the monitor to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/DeleteMonitorInput AWS API Documentation
    #
    class DeleteMonitorInput < Struct.new(
      :monitor_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/DeleteMonitorOutput AWS API Documentation
    #
    class DeleteMonitorOutput < Aws::EmptyStructure; end

    # A filter that you use with the results of a Amazon CloudWatch Internet
    # Monitor query that you created and ran. The query sets up a repository
    # of data that is a subset of your application's Internet Monitor data.
    # `FilterParameter` is a string that defines how you want to filter the
    # repository of data to return a set of results, based on your criteria.
    #
    # The filter parameters that you can specify depend on the query type
    # that you used to create the repository, since each query type returns
    # a different set of Internet Monitor data.
    #
    # For each filter, you specify a field (such as `city`), an operator
    # (such as `not_equals`, and a value or array of values (such as
    # `["Seattle", "Redmond"]`). Separate values in the array with commas.
    #
    # For more information about specifying filter parameters, see [Using
    # the Amazon CloudWatch Internet Monitor query interface][1] in the
    # Amazon CloudWatch Internet Monitor User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-view-cw-tools-cwim-query.html
    #
    # @!attribute [rw] field
    #   A data field that you want to filter, to further scope your
    #   application's Internet Monitor data in a repository that you
    #   created by running a query. A field might be `city`, for example.
    #   The field must be one of the fields that was returned by the
    #   specific query that you used to create the repository.
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   The operator to use with the filter field and a value, such as
    #   `not_equals`.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   One or more values to be used, together with the specified operator,
    #   to filter data for a query. For example, you could specify an array
    #   of values such as `["Seattle", "Redmond"]`. Values in the array are
    #   separated by commas.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/FilterParameter AWS API Documentation
    #
    class FilterParameter < Struct.new(
      :field,
      :operator,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor_name
    #   The name of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] event_id
    #   The internally-generated identifier of a health event. Because
    #   `EventID` contains the forward slash (“/”) character, you must
    #   URL-encode the `EventID` field in the request URL.
    #   @return [String]
    #
    # @!attribute [rw] linked_account_id
    #   The account ID for an account that you've set up cross-account
    #   sharing for in Amazon CloudWatch Internet Monitor. You configure
    #   cross-account sharing by using Amazon CloudWatch Observability
    #   Access Manager. For more information, see [Internet Monitor
    #   cross-account observability][1] in the Amazon CloudWatch Internet
    #   Monitor User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cwim-cross-account.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/GetHealthEventInput AWS API Documentation
    #
    class GetHealthEventInput < Struct.new(
      :monitor_name,
      :event_id,
      :linked_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_arn
    #   The Amazon Resource Name (ARN) of the event.
    #   @return [String]
    #
    # @!attribute [rw] event_id
    #   The internally-generated identifier of a health event.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The time when a health event started.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   The time when a health event was resolved. If the health event is
    #   still active, the end time is not set.
    #   @return [Time]
    #
    # @!attribute [rw] created_at
    #   The time when a health event was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The time when a health event was last updated or recalculated.
    #   @return [Time]
    #
    # @!attribute [rw] impacted_locations
    #   The locations affected by a health event.
    #   @return [Array<Types::ImpactedLocation>]
    #
    # @!attribute [rw] status
    #   The status of a health event.
    #   @return [String]
    #
    # @!attribute [rw] percent_of_total_traffic_impacted
    #   The impact on total traffic that a health event has, in increased
    #   latency or reduced availability. This is the percentage of how much
    #   latency has increased or availability has decreased during the
    #   event, compared to what is typical for traffic from this client
    #   location to the Amazon Web Services location using this client
    #   network.
    #   @return [Float]
    #
    # @!attribute [rw] impact_type
    #   The type of impairment of a specific health event.
    #   @return [String]
    #
    # @!attribute [rw] health_score_threshold
    #   The threshold percentage for a health score that determines, along
    #   with other configuration information, when Internet Monitor creates
    #   a health event when there's an internet issue that affects your
    #   application end users.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/GetHealthEventOutput AWS API Documentation
    #
    class GetHealthEventOutput < Struct.new(
      :event_arn,
      :event_id,
      :started_at,
      :ended_at,
      :created_at,
      :last_updated_at,
      :impacted_locations,
      :status,
      :percent_of_total_traffic_impacted,
      :impact_type,
      :health_score_threshold)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_id
    #   The `EventId` of the internet event to return information for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/GetInternetEventInput AWS API Documentation
    #
    class GetInternetEventInput < Struct.new(
      :event_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_id
    #   The internally-generated identifier of an internet event.
    #   @return [String]
    #
    # @!attribute [rw] event_arn
    #   The Amazon Resource Name (ARN) of the internet event.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The time when the internet event started.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   The time when the internet event ended. If the event hasn't ended
    #   yet, this value is empty.
    #   @return [Time]
    #
    # @!attribute [rw] client_location
    #   The impacted location, such as a city, where clients access Amazon
    #   Web Services application resources.
    #   @return [Types::ClientLocation]
    #
    # @!attribute [rw] event_type
    #   The type of network impairment.
    #   @return [String]
    #
    # @!attribute [rw] event_status
    #   The status of the internet event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/GetInternetEventOutput AWS API Documentation
    #
    class GetInternetEventOutput < Struct.new(
      :event_id,
      :event_arn,
      :started_at,
      :ended_at,
      :client_location,
      :event_type,
      :event_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor_name
    #   The name of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] linked_account_id
    #   The account ID for an account that you've set up cross-account
    #   sharing for in Amazon CloudWatch Internet Monitor. You configure
    #   cross-account sharing by using Amazon CloudWatch Observability
    #   Access Manager. For more information, see [Internet Monitor
    #   cross-account observability][1] in the Amazon CloudWatch Internet
    #   Monitor User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cwim-cross-account.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/GetMonitorInput AWS API Documentation
    #
    class GetMonitorInput < Struct.new(
      :monitor_name,
      :linked_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor_name
    #   The name of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] monitor_arn
    #   The Amazon Resource Name (ARN) of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   The resources monitored by the monitor. Resources are listed by
    #   their Amazon Resource Names (ARNs).
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The status of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when the monitor was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The last time that the monitor was modified.
    #   @return [Time]
    #
    # @!attribute [rw] processing_status
    #   The health of the data processing for the monitor.
    #   @return [String]
    #
    # @!attribute [rw] processing_status_info
    #   Additional information about the health of the data processing for
    #   the monitor.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags that have been added to monitor.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] max_city_networks_to_monitor
    #   The maximum number of city-networks to monitor for your resources. A
    #   city-network is the location (city) where clients access your
    #   application resources from and the ASN or network provider, such as
    #   an internet service provider (ISP), that clients access the
    #   resources through. This limit can help control billing costs.
    #
    #   To learn more, see [Choosing a city-network maximum value ][1] in
    #   the Amazon CloudWatch Internet Monitor section of the *CloudWatch
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/IMCityNetworksMaximum.html
    #   @return [Integer]
    #
    # @!attribute [rw] internet_measurements_log_delivery
    #   Publish internet measurements for Internet Monitor to another
    #   location, such as an Amazon S3 bucket. The measurements are also
    #   published to Amazon CloudWatch Logs.
    #   @return [Types::InternetMeasurementsLogDelivery]
    #
    # @!attribute [rw] traffic_percentage_to_monitor
    #   The percentage of the internet-facing traffic for your application
    #   to monitor with this monitor. If you set a city-networks maximum,
    #   that limit overrides the traffic percentage that you set.
    #
    #   To learn more, see [Choosing an application traffic percentage to
    #   monitor ][1] in the Amazon CloudWatch Internet Monitor section of
    #   the *CloudWatch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/IMTrafficPercentage.html
    #   @return [Integer]
    #
    # @!attribute [rw] health_events_config
    #   The list of health event threshold configurations. The threshold
    #   percentage for a health score determines, along with other
    #   configuration information, when Internet Monitor creates a health
    #   event when there's an internet issue that affects your application
    #   end users.
    #
    #   For more information, see [ Change health event thresholds][1] in
    #   the Internet Monitor section of the *CloudWatch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-overview.html#IMUpdateThresholdFromOverview
    #   @return [Types::HealthEventsConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/GetMonitorOutput AWS API Documentation
    #
    class GetMonitorOutput < Struct.new(
      :monitor_name,
      :monitor_arn,
      :resources,
      :status,
      :created_at,
      :modified_at,
      :processing_status,
      :processing_status_info,
      :tags,
      :max_city_networks_to_monitor,
      :internet_measurements_log_delivery,
      :traffic_percentage_to_monitor,
      :health_events_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor_name
    #   The name of the monitor to return data for.
    #   @return [String]
    #
    # @!attribute [rw] query_id
    #   The ID of the query that you want to return data results for. A
    #   `QueryId` is an internally-generated identifier for a specific
    #   query.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of query results that you want to return with this call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/GetQueryResultsInput AWS API Documentation
    #
    class GetQueryResultsInput < Struct.new(
      :monitor_name,
      :query_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fields
    #   The fields that the query returns data for. Fields are name-data
    #   type pairs, such as `availability_score`-`float`.
    #   @return [Array<Types::QueryField>]
    #
    # @!attribute [rw] data
    #   The data results that the query returns. Data is returned in arrays,
    #   aligned with the `Fields` for the query, which creates a repository
    #   of Amazon CloudWatch Internet Monitor information for your
    #   application. Then, you can filter the information in the repository
    #   by using `FilterParameters` that you define.
    #   @return [Array<Array<String>>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/GetQueryResultsOutput AWS API Documentation
    #
    class GetQueryResultsOutput < Struct.new(
      :fields,
      :data,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor_name
    #   The name of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] query_id
    #   The ID of the query that you want to return the status for. A
    #   `QueryId` is an internally-generated dentifier for a specific query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/GetQueryStatusInput AWS API Documentation
    #
    class GetQueryStatusInput < Struct.new(
      :monitor_name,
      :query_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The current status for a query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/GetQueryStatusOutput AWS API Documentation
    #
    class GetQueryStatusOutput < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a health event created in a monitor in Amazon
    # CloudWatch Internet Monitor.
    #
    # @!attribute [rw] event_arn
    #   The Amazon Resource Name (ARN) of the event.
    #   @return [String]
    #
    # @!attribute [rw] event_id
    #   The internally-generated identifier of a specific network traffic
    #   impairment health event.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   When a health event started.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   The time when a health event ended. If the health event is still
    #   active, then the end time is not set.
    #   @return [Time]
    #
    # @!attribute [rw] created_at
    #   When the health event was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   When the health event was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] impacted_locations
    #   The locations impacted by the health event.
    #   @return [Array<Types::ImpactedLocation>]
    #
    # @!attribute [rw] status
    #   The status of a health event.
    #   @return [String]
    #
    # @!attribute [rw] percent_of_total_traffic_impacted
    #   The impact on total traffic that a health event has, in increased
    #   latency or reduced availability. This is the percentage of how much
    #   latency has increased or availability has decreased during the
    #   event, compared to what is typical for traffic from this client
    #   location to the Amazon Web Services location using this client
    #   network.
    #   @return [Float]
    #
    # @!attribute [rw] impact_type
    #   The type of impairment for a health event.
    #   @return [String]
    #
    # @!attribute [rw] health_score_threshold
    #   The value of the threshold percentage for performance or
    #   availability that was configured when Amazon CloudWatch Internet
    #   Monitor created the health event.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/HealthEvent AWS API Documentation
    #
    class HealthEvent < Struct.new(
      :event_arn,
      :event_id,
      :started_at,
      :ended_at,
      :created_at,
      :last_updated_at,
      :impacted_locations,
      :status,
      :percent_of_total_traffic_impacted,
      :impact_type,
      :health_score_threshold)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type with the configuration information that determines the
    # threshold and other conditions for when Internet Monitor creates a
    # health event for an overall performance or availability issue, across
    # an application's geographies.
    #
    # Defines the percentages, for overall performance scores and
    # availability scores for an application, that are the thresholds for
    # when Amazon CloudWatch Internet Monitor creates a health event. You
    # can override the defaults to set a custom threshold for overall
    # performance or availability scores, or both.
    #
    # You can also set thresholds for local health scores,, where Internet
    # Monitor creates a health event when scores cross a threshold for one
    # or more city-networks, in addition to creating an event when an
    # overall score crosses a threshold.
    #
    # If you don't set a health event threshold, the default value is 95%.
    #
    # For local thresholds, you also set a minimum percentage of overall
    # traffic that is impacted by an issue before Internet Monitor creates
    # an event. In addition, you can disable local thresholds, for
    # performance scores, availability scores, or both.
    #
    # For more information, see [ Change health event thresholds][1] in the
    # Internet Monitor section of the *CloudWatch User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-overview.html#IMUpdateThresholdFromOverview
    #
    # @!attribute [rw] availability_score_threshold
    #   The health event threshold percentage set for availability scores.
    #   @return [Float]
    #
    # @!attribute [rw] performance_score_threshold
    #   The health event threshold percentage set for performance scores.
    #   @return [Float]
    #
    # @!attribute [rw] availability_local_health_events_config
    #   The configuration that determines the threshold and other conditions
    #   for when Internet Monitor creates a health event for a local
    #   availability issue.
    #   @return [Types::LocalHealthEventsConfig]
    #
    # @!attribute [rw] performance_local_health_events_config
    #   The configuration that determines the threshold and other conditions
    #   for when Internet Monitor creates a health event for a local
    #   performance issue.
    #   @return [Types::LocalHealthEventsConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/HealthEventsConfig AWS API Documentation
    #
    class HealthEventsConfig < Struct.new(
      :availability_score_threshold,
      :performance_score_threshold,
      :availability_local_health_events_config,
      :performance_local_health_events_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a location impacted by a health event in Amazon
    # CloudWatch Internet Monitor.
    #
    # Geographic regions are hierarchically categorized into country,
    # subdivision, metro and city geographic granularities. The geographic
    # region is identified based on the IP address used at the client
    # locations.
    #
    # @!attribute [rw] as_name
    #   The name of the internet service provider (ISP) or network (ASN).
    #   @return [String]
    #
    # @!attribute [rw] as_number
    #   The Autonomous System Number (ASN) of the network at an impacted
    #   location.
    #   @return [Integer]
    #
    # @!attribute [rw] country
    #   The name of the country where the health event is located.
    #   @return [String]
    #
    # @!attribute [rw] subdivision
    #   The subdivision location where the health event is located. The
    #   subdivision usually maps to states in most countries (including the
    #   United States). For United Kingdom, it maps to a country (England,
    #   Scotland, Wales) or province (Northern Ireland).
    #   @return [String]
    #
    # @!attribute [rw] metro
    #   The metro area where the health event is located.
    #
    #   Metro indicates a metropolitan region in the United States, such as
    #   the region around New York City. In non-US countries, this is a
    #   second-level subdivision. For example, in the United Kingdom, it
    #   could be a county, a London borough, a unitary authority, council
    #   area, and so on.
    #   @return [String]
    #
    # @!attribute [rw] city
    #   The name of the city where the health event is located.
    #   @return [String]
    #
    # @!attribute [rw] latitude
    #   The latitude where the health event is located.
    #   @return [Float]
    #
    # @!attribute [rw] longitude
    #   The longitude where the health event is located.
    #   @return [Float]
    #
    # @!attribute [rw] country_code
    #   The country code where the health event is located. The ISO 3166-2
    #   codes for the country is provided, when available.
    #   @return [String]
    #
    # @!attribute [rw] subdivision_code
    #   The subdivision code where the health event is located. The ISO
    #   3166-2 codes for country subdivisions is provided, when available.
    #   @return [String]
    #
    # @!attribute [rw] service_location
    #   The service location where the health event is located.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the health event at an impacted location.
    #   @return [String]
    #
    # @!attribute [rw] caused_by
    #   The cause of the impairment. There are two types of network
    #   impairments: Amazon Web Services network issues or internet issues.
    #   Internet issues are typically a problem with a network provider,
    #   like an internet service provider (ISP).
    #   @return [Types::NetworkImpairment]
    #
    # @!attribute [rw] internet_health
    #   The calculated health at a specific location.
    #   @return [Types::InternetHealth]
    #
    # @!attribute [rw] ipv_4_prefixes
    #   The IPv4 prefixes at the client location that was impacted by the
    #   health event.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/ImpactedLocation AWS API Documentation
    #
    class ImpactedLocation < Struct.new(
      :as_name,
      :as_number,
      :country,
      :subdivision,
      :metro,
      :city,
      :latitude,
      :longitude,
      :country_code,
      :subdivision_code,
      :service_location,
      :status,
      :caused_by,
      :internet_health,
      :ipv_4_prefixes)
      SENSITIVE = []
      include Aws::Structure
    end

    # There was an internal server error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/InternalServerErrorException AWS API Documentation
    #
    class InternalServerErrorException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal error occurred.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of information about an internet event in Amazon CloudWatch
    # Internet Monitor. Internet events are issues that cause performance
    # degradation or availability problems for impacted Amazon Web Services
    # client locations. Internet Monitor displays information about recent
    # global health events, called internet events, on a global outages map
    # that is available to all Amazon Web Services customers.
    #
    # @!attribute [rw] event_id
    #   The internally-generated identifier of an internet event.
    #   @return [String]
    #
    # @!attribute [rw] event_arn
    #   The Amazon Resource Name (ARN) of the internet event.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The time when an internet event started.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   The time when an internet event ended. If the event hasn't ended
    #   yet, this value is empty.
    #   @return [Time]
    #
    # @!attribute [rw] client_location
    #   The impacted location, such as a city, that Amazon Web Services
    #   clients access application resources from.
    #   @return [Types::ClientLocation]
    #
    # @!attribute [rw] event_type
    #   The type of network impairment.
    #   @return [String]
    #
    # @!attribute [rw] event_status
    #   The status of an internet event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/InternetEventSummary AWS API Documentation
    #
    class InternetEventSummary < Struct.new(
      :event_id,
      :event_arn,
      :started_at,
      :ended_at,
      :client_location,
      :event_type,
      :event_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Internet health includes measurements calculated by Amazon CloudWatch
    # Internet Monitor about the performance and availability for your
    # application on the internet. Amazon Web Services has substantial
    # historical data about internet performance and availability between
    # Amazon Web Services services and different network providers and
    # geographies. By applying statistical analysis to the data, Internet
    # Monitor can detect when the performance and availability for your
    # application has dropped, compared to an estimated baseline that's
    # already calculated. To make it easier to see those drops, Internet
    # Monitor reports the information to you in the form of health scores: a
    # performance score and an availability score.
    #
    # @!attribute [rw] availability
    #   Availability in Internet Monitor represents the estimated percentage
    #   of traffic that is not seeing an availability drop. For example, an
    #   availability score of 99% for an end user and service location pair
    #   is equivalent to 1% of the traffic experiencing an availability drop
    #   for that pair.
    #
    #   For more information, see [How Internet Monitor calculates
    #   performance and availability scores][1] in the Amazon CloudWatch
    #   Internet Monitor section of the *CloudWatch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-inside-internet-monitor.html#IMExperienceScores
    #   @return [Types::AvailabilityMeasurement]
    #
    # @!attribute [rw] performance
    #   Performance in Internet Monitor represents the estimated percentage
    #   of traffic that is not seeing a performance drop. For example, a
    #   performance score of 99% for an end user and service location pair
    #   is equivalent to 1% of the traffic experiencing a performance drop
    #   for that pair.
    #
    #   For more information, see [How Internet Monitor calculates
    #   performance and availability scores][1] in the Amazon CloudWatch
    #   Internet Monitor section of the *CloudWatch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-inside-internet-monitor.html#IMExperienceScores
    #   @return [Types::PerformanceMeasurement]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/InternetHealth AWS API Documentation
    #
    class InternetHealth < Struct.new(
      :availability,
      :performance)
      SENSITIVE = []
      include Aws::Structure
    end

    # Publish internet measurements to an Amazon S3 bucket in addition to
    # CloudWatch Logs.
    #
    # @!attribute [rw] s3_config
    #   The configuration information for publishing Internet Monitor
    #   internet measurements to Amazon S3. The configuration includes the
    #   bucket name and (optionally) prefix for the S3 bucket to store the
    #   measurements, and the delivery status. The delivery status is
    #   `ENABLED` or `DISABLED`, depending on whether you choose to deliver
    #   internet measurements to S3 logs.
    #   @return [Types::S3Config]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/InternetMeasurementsLogDelivery AWS API Documentation
    #
    class InternetMeasurementsLogDelivery < Struct.new(
      :s3_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request exceeded a service quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor_name
    #   The name of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time when a health event started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time when a health event ended. If the health event is still
    #   ongoing, then the end time is not set.
    #   @return [Time]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of health event objects that you want to return with this
    #   call.
    #   @return [Integer]
    #
    # @!attribute [rw] event_status
    #   The status of a health event.
    #   @return [String]
    #
    # @!attribute [rw] linked_account_id
    #   The account ID for an account that you've set up cross-account
    #   sharing for in Amazon CloudWatch Internet Monitor. You configure
    #   cross-account sharing by using Amazon CloudWatch Observability
    #   Access Manager. For more information, see [Internet Monitor
    #   cross-account observability][1] in the Amazon CloudWatch Internet
    #   Monitor User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cwim-cross-account.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/ListHealthEventsInput AWS API Documentation
    #
    class ListHealthEventsInput < Struct.new(
      :monitor_name,
      :start_time,
      :end_time,
      :next_token,
      :max_results,
      :event_status,
      :linked_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] health_events
    #   A list of health events.
    #   @return [Array<Types::HealthEvent>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/ListHealthEventsOutput AWS API Documentation
    #
    class ListHealthEventsOutput < Struct.new(
      :health_events,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of query results that you want to return with this call.
    #   @return [Integer]
    #
    # @!attribute [rw] start_time
    #   The start time of the time window that you want to get a list of
    #   internet events for.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of the time window that you want to get a list of
    #   internet events for.
    #   @return [Time]
    #
    # @!attribute [rw] event_status
    #   The status of an internet event.
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   The type of network impairment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/ListInternetEventsInput AWS API Documentation
    #
    class ListInternetEventsInput < Struct.new(
      :next_token,
      :max_results,
      :start_time,
      :end_time,
      :event_status,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] internet_events
    #   A set of internet events returned for the list operation.
    #   @return [Array<Types::InternetEventSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/ListInternetEventsOutput AWS API Documentation
    #
    class ListInternetEventsOutput < Struct.new(
      :internet_events,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of monitor objects that you want to return with this
    #   call.
    #   @return [Integer]
    #
    # @!attribute [rw] monitor_status
    #   The status of a monitor. This includes the status of the data
    #   processing for the monitor and the status of the monitor itself.
    #
    #   For information about the statuses for a monitor, see [ Monitor][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/internet-monitor/latest/api/API_Monitor.html
    #   @return [String]
    #
    # @!attribute [rw] include_linked_accounts
    #   A boolean option that you can set to `TRUE` to include monitors for
    #   linked accounts in a list of monitors, when you've set up
    #   cross-account sharing in Amazon CloudWatch Internet Monitor. You
    #   configure cross-account sharing by using Amazon CloudWatch
    #   Observability Access Manager. For more information, see [Internet
    #   Monitor cross-account observability][1] in the Amazon CloudWatch
    #   Internet Monitor User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cwim-cross-account.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/ListMonitorsInput AWS API Documentation
    #
    class ListMonitorsInput < Struct.new(
      :next_token,
      :max_results,
      :monitor_status,
      :include_linked_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitors
    #   A list of monitors.
    #   @return [Array<Types::Monitor>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/ListMonitorsOutput AWS API Documentation
    #
    class ListMonitorsOutput < Struct.new(
      :monitors,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for a resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Tags for a resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type with the configuration information that determines the
    # threshold and other conditions for when Internet Monitor creates a
    # health event for a local performance or availability issue, when
    # scores cross a threshold for one or more city-networks.
    #
    # Defines the percentages, for performance scores or availability
    # scores, that are the local thresholds for when Amazon CloudWatch
    # Internet Monitor creates a health event. Also defines whether a local
    # threshold is enabled or disabled, and the minimum percentage of
    # overall traffic that must be impacted by an issue before Internet
    # Monitor creates an event when a threshold is crossed for a local
    # health score.
    #
    # If you don't set a local health event threshold, the default value is
    # 60%.
    #
    # For more information, see [ Change health event thresholds][1] in the
    # Internet Monitor section of the *CloudWatch User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-overview.html#IMUpdateThresholdFromOverview
    #
    # @!attribute [rw] status
    #   The status of whether Internet Monitor creates a health event based
    #   on a threshold percentage set for a local health score. The status
    #   can be `ENABLED` or `DISABLED`.
    #   @return [String]
    #
    # @!attribute [rw] health_score_threshold
    #   The health event threshold percentage set for a local health score.
    #   @return [Float]
    #
    # @!attribute [rw] min_traffic_impact
    #   The minimum percentage of overall traffic for an application that
    #   must be impacted by an issue before Internet Monitor creates an
    #   event when a threshold is crossed for a local health score.
    #
    #   If you don't set a minimum traffic impact threshold, the default
    #   value is 0.1%.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/LocalHealthEventsConfig AWS API Documentation
    #
    class LocalHealthEventsConfig < Struct.new(
      :status,
      :health_score_threshold,
      :min_traffic_impact)
      SENSITIVE = []
      include Aws::Structure
    end

    # The description of and information about a monitor in Amazon
    # CloudWatch Internet Monitor.
    #
    # @!attribute [rw] monitor_name
    #   The name of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] monitor_arn
    #   The Amazon Resource Name (ARN) of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a monitor.
    #   @return [String]
    #
    # @!attribute [rw] processing_status
    #   The health of data processing for the monitor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/Monitor AWS API Documentation
    #
    class Monitor < Struct.new(
      :monitor_name,
      :monitor_arn,
      :status,
      :processing_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internet service provider (ISP) or network (ASN) in Amazon
    # CloudWatch Internet Monitor.
    #
    # @!attribute [rw] as_name
    #   The name of the internet service provider (ISP) or network (ASN).
    #   @return [String]
    #
    # @!attribute [rw] as_number
    #   The Autonomous System Number (ASN) of the internet provider or
    #   network.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/Network AWS API Documentation
    #
    class Network < Struct.new(
      :as_name,
      :as_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the network impairment for a specific network
    # measured by Amazon CloudWatch Internet Monitor.
    #
    # @!attribute [rw] networks
    #   The networks that could be impacted by a network impairment event.
    #   @return [Array<Types::Network>]
    #
    # @!attribute [rw] as_path
    #   The combination of the Autonomous System Number (ASN) of the network
    #   and the name of the network.
    #   @return [Array<Types::Network>]
    #
    # @!attribute [rw] network_event_type
    #   The type of network impairment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/NetworkImpairment AWS API Documentation
    #
    class NetworkImpairment < Struct.new(
      :networks,
      :as_path,
      :network_event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request specifies something that doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon CloudWatch Internet Monitor calculates measurements about the
    # performance for your application's internet traffic between client
    # locations and Amazon Web Services. Amazon Web Services has substantial
    # historical data about internet performance and availability between
    # Amazon Web Services services and different network providers and
    # geographies. By applying statistical analysis to the data, Internet
    # Monitor can detect when the performance and availability for your
    # application has dropped, compared to an estimated baseline that's
    # already calculated. To make it easier to see those drops, we report
    # that information to you in the form of health scores: a performance
    # score and an availability score.
    #
    # Performance in Internet Monitor represents the estimated percentage of
    # traffic that is not seeing a performance drop. For example, a
    # performance score of 99% for an end user and service location pair is
    # equivalent to 1% of the traffic experiencing a performance drop for
    # that pair.
    #
    # For more information, see [How Internet Monitor calculates performance
    # and availability scores][1] in the Amazon CloudWatch Internet Monitor
    # section of the *CloudWatch User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-inside-internet-monitor.html#IMExperienceScores
    #
    # @!attribute [rw] experience_score
    #   Experience scores, or health scores, are calculated for different
    #   geographic and network provider combinations (that is, different
    #   granularities) and also totaled into global scores. If you view
    #   performance or availability scores without filtering for any
    #   specific geography or service provider, Amazon CloudWatch Internet
    #   Monitor provides global health scores.
    #
    #   The Amazon CloudWatch Internet Monitor chapter in the CloudWatch
    #   User Guide includes detailed information about how Internet Monitor
    #   calculates health scores, including performance and availability
    #   scores, and when it creates and resolves health events. For more
    #   information, see [How Amazon Web Services calculates performance and
    #   availability scores][1] in the Amazon CloudWatch Internet Monitor
    #   section of the *CloudWatch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-inside-internet-monitor.html#IMExperienceScores
    #   @return [Float]
    #
    # @!attribute [rw] percent_of_total_traffic_impacted
    #   The impact on total traffic that a health event has, in increased
    #   latency or reduced availability. This is the percentage of how much
    #   latency has increased or availability has decreased during the
    #   event, compared to what is typical for traffic from this client
    #   location to the Amazon Web Services location using this client
    #   network.
    #
    #   For more information, see [When Amazon Web Services creates and
    #   resolves health events][1] in the Amazon CloudWatch Internet Monitor
    #   section of the *CloudWatch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-inside-internet-monitor.html#IMHealthEventStartStop
    #   @return [Float]
    #
    # @!attribute [rw] percent_of_client_location_impacted
    #   How much performance impact was caused by a health event at a client
    #   location. For performance, this is the percentage of how much
    #   latency increased during the event compared to typical performance
    #   for traffic, from this client location to an Amazon Web Services
    #   location, using a specific client network.
    #
    #   For more information, see [When Amazon Web Services creates and
    #   resolves health events][1] in the Amazon CloudWatch Internet Monitor
    #   section of the *CloudWatch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-inside-internet-monitor.html#IMHealthEventStartStop
    #   @return [Float]
    #
    # @!attribute [rw] round_trip_time
    #   This is the percentage of how much round-trip time increased during
    #   the event compared to typical round-trip time for your application
    #   for traffic.
    #
    #   For more information, see [When Amazon Web Services creates and
    #   resolves health events][1] in the Amazon CloudWatch Internet Monitor
    #   section of the *CloudWatch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-inside-internet-monitor.html#IMHealthEventStartStop
    #   @return [Types::RoundTripTime]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/PerformanceMeasurement AWS API Documentation
    #
    class PerformanceMeasurement < Struct.new(
      :experience_score,
      :percent_of_total_traffic_impacted,
      :percent_of_client_location_impacted,
      :round_trip_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a field to query for your application's Amazon CloudWatch
    # Internet Monitor data. You create a data repository by running a query
    # of a specific type. Each `QueryType` includes a specific set of fields
    # and datatypes to retrieve data for.
    #
    # @!attribute [rw] name
    #   The name of a field to query your application's Amazon CloudWatch
    #   Internet Monitor data for, such as `availability_score`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The data type for a query field, which must correspond to the field
    #   you're defining for `QueryField`. For example, if the query field
    #   name is `availability_score`, the data type is `float`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/QueryField AWS API Documentation
    #
    class QueryField < Struct.new(
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request specifies a resource that doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Round-trip time (RTT) is how long it takes for a request from the user
    # to return a response to the user. Amazon CloudWatch Internet Monitor
    # calculates RTT at different percentiles: p50, p90, and p95.
    #
    # @!attribute [rw] p50
    #   RTT at the 50th percentile (p50).
    #   @return [Float]
    #
    # @!attribute [rw] p90
    #   RTT at the 90th percentile (p90).
    #   @return [Float]
    #
    # @!attribute [rw] p95
    #   RTT at the 95th percentile (p95).
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/RoundTripTime AWS API Documentation
    #
    class RoundTripTime < Struct.new(
      :p50,
      :p90,
      :p95)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for publishing Amazon CloudWatch Internet Monitor
    # internet measurements to Amazon S3. The configuration includes the
    # bucket name and (optionally) prefix for the S3 bucket to store the
    # measurements, and the delivery status. The delivery status is
    # `ENABLED` or `DISABLED`, depending on whether you choose to deliver
    # internet measurements to S3 logs.
    #
    # @!attribute [rw] bucket_name
    #   The Amazon S3 bucket name.
    #   @return [String]
    #
    # @!attribute [rw] bucket_prefix
    #   The Amazon S3 bucket prefix.
    #   @return [String]
    #
    # @!attribute [rw] log_delivery_status
    #   The status of publishing Internet Monitor internet measurements to
    #   an Amazon S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/S3Config AWS API Documentation
    #
    class S3Config < Struct.new(
      :bucket_name,
      :bucket_prefix,
      :log_delivery_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor_name
    #   The name of the monitor to query.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The timestamp that is the beginning of the period that you want to
    #   retrieve data for with your query.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The timestamp that is the end of the period that you want to
    #   retrieve data for with your query.
    #   @return [Time]
    #
    # @!attribute [rw] query_type
    #   The type of query to run. The following are the three types of
    #   queries that you can run using the Internet Monitor query interface:
    #
    #   * `MEASUREMENTS`: Provides availability score, performance score,
    #     total traffic, and round-trip times, at 5 minute intervals.
    #
    #   * `TOP_LOCATIONS`: Provides availability score, performance score,
    #     total traffic, and time to first byte (TTFB) information, for the
    #     top location and ASN combinations that you're monitoring, by
    #     traffic volume.
    #
    #   * `TOP_LOCATION_DETAILS`: Provides TTFB for Amazon CloudFront, your
    #     current configuration, and the best performing EC2 configuration,
    #     at 1 hour intervals.
    #
    #   * `OVERALL_TRAFFIC_SUGGESTIONS`: Provides TTFB, using a 30-day
    #     weighted average, for all traffic in each Amazon Web Services
    #     location that is monitored.
    #
    #   * `OVERALL_TRAFFIC_SUGGESTIONS_DETAILS`: Provides TTFB, using a
    #     30-day weighted average, for each top location, for a proposed
    #     Amazon Web Services location. Must provide an Amazon Web Services
    #     location to search.
    #
    #   * `ROUTING_SUGGESTIONS`: Provides the predicted average round-trip
    #     time (RTT) from an IP prefix toward an Amazon Web Services
    #     location for a DNS resolver. The RTT is calculated at one hour
    #     intervals, over a one hour period.
    #
    #   For lists of the fields returned with each query type and more
    #   information about how each type of query is performed, see [ Using
    #   the Amazon CloudWatch Internet Monitor query interface][1] in the
    #   Amazon CloudWatch Internet Monitor User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-view-cw-tools-cwim-query.html
    #   @return [String]
    #
    # @!attribute [rw] filter_parameters
    #   The `FilterParameters` field that you use with Amazon CloudWatch
    #   Internet Monitor queries is a string the defines how you want a
    #   query to be filtered. The filter parameters that you can specify
    #   depend on the query type, since each query type returns a different
    #   set of Internet Monitor data.
    #
    #   For more information about specifying filter parameters, see [Using
    #   the Amazon CloudWatch Internet Monitor query interface][1] in the
    #   Amazon CloudWatch Internet Monitor User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-view-cw-tools-cwim-query.html
    #   @return [Array<Types::FilterParameter>]
    #
    # @!attribute [rw] linked_account_id
    #   The account ID for an account that you've set up cross-account
    #   sharing for in Amazon CloudWatch Internet Monitor. You configure
    #   cross-account sharing by using Amazon CloudWatch Observability
    #   Access Manager. For more information, see [Internet Monitor
    #   cross-account observability][1] in the Amazon CloudWatch Internet
    #   Monitor User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cwim-cross-account.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/StartQueryInput AWS API Documentation
    #
    class StartQueryInput < Struct.new(
      :monitor_name,
      :start_time,
      :end_time,
      :query_type,
      :filter_parameters,
      :linked_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_id
    #   The internally-generated identifier of a specific query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/StartQueryOutput AWS API Documentation
    #
    class StartQueryOutput < Struct.new(
      :query_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor_name
    #   The name of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] query_id
    #   The ID of the query that you want to stop. A `QueryId` is an
    #   internally-generated identifier for a specific query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/StopQueryInput AWS API Documentation
    #
    class StopQueryInput < Struct.new(
      :monitor_name,
      :query_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/StopQueryOutput AWS API Documentation
    #
    class StopQueryOutput < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for a tag that you add to a resource.
    #   Tags are supported only for monitors in Amazon CloudWatch Internet
    #   Monitor.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags that you add to a resource. You can add a maximum of 50 tags in
    #   Internet Monitor.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # There were too many requests.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for a tag you remove a resource from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Tag keys that you remove from a resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # @!attribute [rw] monitor_name
    #   The name of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] resources_to_add
    #   The resources to include in a monitor, which you provide as a set of
    #   Amazon Resource Names (ARNs). Resources can be VPCs, NLBs, Amazon
    #   CloudFront distributions, or Amazon WorkSpaces directories.
    #
    #   You can add a combination of VPCs and CloudFront distributions, or
    #   you can add WorkSpaces directories, or you can add NLBs. You can't
    #   add NLBs or WorkSpaces directories together with any other
    #   resources.
    #
    #   <note markdown="1"> If you add only Amazon Virtual Private Clouds resources, at least
    #   one VPC must have an Internet Gateway attached to it, to make sure
    #   that it has internet connectivity.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] resources_to_remove
    #   The resources to remove from a monitor, which you provide as a set
    #   of Amazon Resource Names (ARNs).
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The status for a monitor. The accepted values for `Status` with the
    #   `UpdateMonitor` API call are the following: `ACTIVE` and `INACTIVE`.
    #   The following values are *not* accepted: `PENDING`, and `ERROR`.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive string of up to 64 ASCII characters that
    #   you specify to make an idempotent API request. You should not reuse
    #   the same client token for other API requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] max_city_networks_to_monitor
    #   The maximum number of city-networks to monitor for your application.
    #   A city-network is the location (city) where clients access your
    #   application resources from and the ASN or network provider, such as
    #   an internet service provider (ISP), that clients access the
    #   resources through. Setting this limit can help control billing
    #   costs.
    #   @return [Integer]
    #
    # @!attribute [rw] internet_measurements_log_delivery
    #   Publish internet measurements for Internet Monitor to another
    #   location, such as an Amazon S3 bucket. The measurements are also
    #   published to Amazon CloudWatch Logs.
    #   @return [Types::InternetMeasurementsLogDelivery]
    #
    # @!attribute [rw] traffic_percentage_to_monitor
    #   The percentage of the internet-facing traffic for your application
    #   that you want to monitor with this monitor. If you set a
    #   city-networks maximum, that limit overrides the traffic percentage
    #   that you set.
    #
    #   To learn more, see [Choosing an application traffic percentage to
    #   monitor ][1] in the Amazon CloudWatch Internet Monitor section of
    #   the *CloudWatch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/IMTrafficPercentage.html
    #   @return [Integer]
    #
    # @!attribute [rw] health_events_config
    #   The list of health score thresholds. A threshold percentage for
    #   health scores, along with other configuration information,
    #   determines when Internet Monitor creates a health event when
    #   there's an internet issue that affects your application end users.
    #
    #   For more information, see [ Change health event thresholds][1] in
    #   the Internet Monitor section of the *CloudWatch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-overview.html#IMUpdateThresholdFromOverview
    #   @return [Types::HealthEventsConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/UpdateMonitorInput AWS API Documentation
    #
    class UpdateMonitorInput < Struct.new(
      :monitor_name,
      :resources_to_add,
      :resources_to_remove,
      :status,
      :client_token,
      :max_city_networks_to_monitor,
      :internet_measurements_log_delivery,
      :traffic_percentage_to_monitor,
      :health_events_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor_arn
    #   The Amazon Resource Name (ARN) of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a monitor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/UpdateMonitorOutput AWS API Documentation
    #
    class UpdateMonitorOutput < Struct.new(
      :monitor_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Invalid request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

