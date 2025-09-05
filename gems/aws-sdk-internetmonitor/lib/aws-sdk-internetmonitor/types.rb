# frozen_string_literal: true

# This is generated code!

module Aws::InternetMonitor
  # This module contains the types returned by client operations.
  module Types

    # <p>You don't have sufficient permission to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon CloudWatch Internet Monitor calculates measurements about the availability for your application's internet traffic between client locations and Amazon Web Services.
    # 			Amazon Web Services has substantial historical data about internet
    # 			performance and availability between Amazon Web Services services and different network providers and geographies. By applying statistical analysis to the data, Internet Monitor
    # 			can detect when the performance and availability for your application has dropped, compared to an estimated baseline that's already calculated. To make it
    # 			easier to see those drops, we report that information to you in the form of health scores: a performance score and an availability score.</p>
    #          <p>Availability in Internet Monitor represents the estimated percentage of traffic that is not seeing an availability drop. For example, an availability score of 99%
    # 			for an end user and service location pair is equivalent to 1% of the traffic experiencing an availability drop for that pair.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-inside-internet-monitor.html#IMExperienceScores">How Internet Monitor calculates performance and availability
    # 				scores</a> in the Amazon CloudWatch Internet Monitor section of the <i>Amazon CloudWatch User Guide</i>.</p>
    # @!attribute experience_score
    #   <p>Experience scores, or health scores are calculated for different geographic and network provider combinations (that is, different granularities) and
    #   			also summed into global scores. If you view performance or availability scores without filtering for any specific geography or service provider, Amazon CloudWatch Internet Monitor
    #   			provides global health scores.</p>
    #            <p>The Amazon CloudWatch Internet Monitor chapter in the <i>CloudWatch User Guide</i> includes detailed information about how Internet Monitor calculates health scores, including performance and
    #   			availability scores, and when it creates and resolves health events. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-inside-internet-monitor.html#IMExperienceScores">How Amazon Web Services calculates performance and
    #   				availability scores</a> in the Amazon CloudWatch Internet Monitor section of the <i>CloudWatch User Guide</i>.</p>
    #   @return [Float]
    # @!attribute percent_of_total_traffic_impacted
    #   <p>The impact on total traffic that a health event has, in increased latency or reduced availability. This is the 
    #   			percentage of how much latency has increased or availability has decreased during the event, compared to what is typical for traffic from this 
    #   			client location to the Amazon Web Services location using this client network.</p>
    #            <p>For information about how Internet Monitor calculates impact, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-inside-internet-monitor.html">How Internet Monitor works</a> in the Amazon CloudWatch Internet Monitor section of the Amazon CloudWatch User
    #   			Guide.</p>
    #   @return [Float]
    # @!attribute percent_of_client_location_impacted
    #   <p>The percentage of impact caused by a health event for client location traffic globally.</p>
    #            <p>For information about how Internet Monitor calculates impact, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-inside-internet-monitor.html">Inside Internet Monitor</a> in the Amazon CloudWatch Internet Monitor section of the Amazon CloudWatch User
    #   			Guide.</p>
    #   @return [Float]
    class AvailabilityMeasurement < Struct.new(
      :experience_score,
      :percent_of_total_traffic_impacted,
      :percent_of_client_location_impacted,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A bad request was received.</p>
    # @!attribute message
    #   @return [String]
    class BadRequestException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The impacted location, such as a city, that Amazon Web Services clients access application resources from.</p>
    # @!attribute as_name
    #   <p>The name of the internet service provider (ISP) or network (ASN).</p>
    #   @return [String]
    # @!attribute as_number
    #   <p>The Autonomous System Number (ASN) of the network at an impacted location.</p>
    #   @return [Integer]
    # @!attribute country
    #   <p>The name of the country where the internet event is located.</p>
    #   @return [String]
    # @!attribute subdivision
    #   <p>The subdivision location where the health event is located. The subdivision usually maps to states in most countries 
    #   			(including the United States). For United Kingdom, it maps to a country (England, Scotland, Wales) or province (Northern Ireland).</p>
    #   @return [String]
    # @!attribute metro
    #   <p>The metro area where the health event is located.</p>
    #            <p>Metro indicates a metropolitan region in the United States, such as the region around New York City. In non-US countries, 
    #   			this is a second-level subdivision. For example, in the United Kingdom, it could be a county, a London borough, a unitary 
    #   			authority, council area, and so on.</p>
    #   @return [String]
    # @!attribute city
    #   <p>The name of the city where the internet event is located.</p>
    #   @return [String]
    # @!attribute latitude
    #   <p>The latitude where the internet event is located.</p>
    #   @return [Float]
    # @!attribute longitude
    #   <p>The longitude where the internet event is located.</p>
    #   @return [Float]
    class ClientLocation < Struct.new(
      :as_name,
      :as_number,
      :country,
      :subdivision,
      :metro,
      :city,
      :latitude,
      :longitude,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The requested resource is in use.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_name
    #   <p>The name of the monitor. </p>
    #   @return [String]
    # @!attribute resources
    #   <p>The resources to include in a monitor, which you provide as a set of Amazon Resource Names (ARNs). Resources can be VPCs, NLBs,
    #   			Amazon CloudFront distributions, or Amazon WorkSpaces directories.</p>
    #            <p>You can add a combination of VPCs and CloudFront distributions, or you can add WorkSpaces directories, or you can add NLBs. You can't add 
    #   			NLBs or WorkSpaces directories together with any other resources.</p>
    #            <note>
    #               <p>If you add only Amazon VPC resources, at least one VPC must have an Internet Gateway attached to it, to make sure that it has 
    #   			internet connectivity.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive string of up to 64 ASCII characters that you specify to make an idempotent API request. Don't reuse the same client token for
    #   			other API requests.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for a monitor. You can add a maximum of 50 tags in Internet Monitor.</p>
    #   @return [Hash<String, String>]
    # @!attribute max_city_networks_to_monitor
    #   <p>The maximum number of city-networks to monitor for your resources. A city-network is the location (city) where clients access your 
    #   			application resources from and the ASN or network provider, such as an internet service provider (ISP), that clients access the resources 
    #   			through. Setting this limit can help control billing costs.</p>
    #            <p>To learn more, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/IMCityNetworksMaximum.html">Choosing a city-network maximum value
    #   		</a> in the Amazon CloudWatch Internet Monitor section of the <i>CloudWatch User Guide</i>.</p>
    #   @return [Integer]
    # @!attribute internet_measurements_log_delivery
    #   <p>Publish internet measurements for Internet Monitor to an Amazon S3 bucket in addition to CloudWatch Logs.</p>
    #   @return [Types::InternetMeasurementsLogDelivery]
    # @!attribute traffic_percentage_to_monitor
    #   <p>The percentage of the internet-facing traffic for your application that you want to monitor with this monitor. If you set a city-networks
    #   			maximum, that limit overrides the traffic percentage that you set.</p>
    #            <p>To learn more, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/IMTrafficPercentage.html">Choosing an application traffic percentage to monitor
    #   		</a> in the Amazon CloudWatch Internet Monitor section of the <i>CloudWatch User Guide</i>.</p>
    #   @return [Integer]
    # @!attribute health_events_config
    #   <p>Defines the threshold percentages and other configuration information for when Amazon CloudWatch Internet Monitor creates a health event. Internet Monitor creates a
    #   			health event when an internet issue that affects your application end users has a health score percentage that is at or below a 
    #   			specific threshold, and, sometimes, when other criteria are met.</p>
    #            <p>If you don't set a health event threshold, the default value is 95%.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-overview.html#IMUpdateThresholdFromOverview">
    #   			Change health event thresholds</a> in the Internet Monitor section of the <i>CloudWatch User Guide</i>.</p>
    #   @return [Types::HealthEventsConfig]
    class CreateMonitorInput < Struct.new(
      :monitor_name,
      :resources,
      :client_token,
      :tags,
      :max_city_networks_to_monitor,
      :internet_measurements_log_delivery,
      :traffic_percentage_to_monitor,
      :health_events_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the monitor.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of a monitor.</p>
    #   @return [String]
    class CreateMonitorOutput < Struct.new(
      :arn,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_name
    #   <p>The name of the monitor to delete.</p>
    #   @return [String]
    class DeleteMonitorInput < Struct.new(
      :monitor_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteMonitorOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A filter that you use with the results of a Amazon CloudWatch Internet Monitor query that you created and ran. The query sets up a 
    # 			repository of data that is a subset of your application's Internet Monitor data. <code>FilterParameter</code> is a string 
    # 			that defines how you want to filter the repository of data to return a set of results, based on your criteria.</p>
    #          <p>The filter parameters that you can specify depend on the query type that you used to create the repository, since 
    # 			each query type returns a different set of Internet Monitor data.</p>
    #          <p>For each filter, you specify a field (such as <code>city</code>), an operator (such as <code>not_equals</code>,
    # 			and a value or array of values (such as <code>["Seattle", "Redmond"]</code>). Separate values in the array with
    # 			commas.</p>
    #          <p>For more information about specifying filter parameters, see
    # 			<a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-view-cw-tools-cwim-query.html">Using the Amazon CloudWatch Internet Monitor query interface</a>
    # 			in the Amazon CloudWatch Internet Monitor User Guide.</p>
    # @!attribute field
    #   <p>A data field that you want to filter, to further scope your application's Internet Monitor data in a repository that you 
    #   			created by running a query. A field might be <code>city</code>, for example. The field must be one of the fields
    #   			that was returned by the specific query that you used to create the repository.</p>
    #   @return [String]
    # @!attribute operator
    #   <p>The operator to use with the filter field and a value, such as <code>not_equals</code>.</p>
    #   @return [String]
    # @!attribute values
    #   <p>One or more values to be used, together with the specified operator, to filter data for a query.
    #   			For example, you could specify an array of values such as <code>["Seattle", "Redmond"]</code>. Values in the array are separated by
    #   			commas.</p>
    #   @return [Array<String>]
    class FilterParameter < Struct.new(
      :field,
      :operator,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_name
    #   <p>The name of the monitor.</p>
    #   @return [String]
    # @!attribute event_id
    #   <p>The internally-generated identifier of a health event. Because <code>EventID</code> contains the forward slash (“/”) character, you must 
    #   			URL-encode the <code>EventID</code> field in the request URL.</p>
    #   @return [String]
    # @!attribute linked_account_id
    #   <p>The account ID for an account that you've set up cross-account sharing for in Amazon CloudWatch Internet Monitor. You configure cross-account
    #   			sharing by using Amazon CloudWatch Observability Access Manager. For more information, see 
    #   			<a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cwim-cross-account.html">Internet Monitor cross-account
    #   			observability</a> in the Amazon CloudWatch Internet Monitor User Guide.</p>
    #   @return [String]
    class GetHealthEventOperationInput < Struct.new(
      :monitor_name,
      :event_id,
      :linked_account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_arn
    #   <p>The Amazon Resource Name (ARN) of the event.</p>
    #   @return [String]
    # @!attribute event_id
    #   <p>The internally-generated identifier of a health event.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The time when a health event started.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The time when a health event was resolved. If the health event is still active, the end time is not set.</p>
    #   @return [Time]
    # @!attribute created_at
    #   <p>The time when a health event was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The time when a health event was last updated or recalculated.</p>
    #   @return [Time]
    # @!attribute impacted_locations
    #   <p>The locations affected by a health event.</p>
    #   @return [Array<Types::ImpactedLocation>]
    # @!attribute status
    #   <p>The status of a health event.</p>
    #   @return [String]
    # @!attribute percent_of_total_traffic_impacted
    #   <p>The impact on total traffic that a health event has, in increased latency or reduced availability. This is the 
    #   			percentage of how much latency has increased or availability has decreased during the event, compared to what is typical for traffic from this 
    #   			client location to the Amazon Web Services location using this client network.</p>
    #   @return [Float]
    # @!attribute impact_type
    #   <p>The type of impairment of a specific health event.</p>
    #   @return [String]
    # @!attribute health_score_threshold
    #   <p>The threshold percentage for a health score that determines, along with other configuration information,
    #   			when Internet Monitor creates a health event when there's an internet issue that affects your application end users.</p>
    #   @return [Float]
    class GetHealthEventOperationOutput < Struct.new(
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
      :health_score_threshold,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:health_score_threshold] = 0 unless options.key?(:health_score_threshold)
        super
      end
    end

    # @!attribute event_id
    #   <p>The <code>EventId</code> of the internet event to return information for. </p>
    #   @return [String]
    class GetInternetEventInput < Struct.new(
      :event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_id
    #   <p>The internally-generated identifier of an internet event.</p>
    #   @return [String]
    # @!attribute event_arn
    #   <p>The Amazon Resource Name (ARN) of the internet event.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The time when the internet event started.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The time when the internet event ended. If the event hasn't ended yet, this value is empty.</p>
    #   @return [Time]
    # @!attribute client_location
    #   <p>The impacted location, such as a city, where clients access Amazon Web Services application resources.</p>
    #   @return [Types::ClientLocation]
    # @!attribute event_type
    #   <p>The type of network impairment.</p>
    #   @return [String]
    # @!attribute event_status
    #   <p>The status of the internet event.</p>
    #   @return [String]
    class GetInternetEventOutput < Struct.new(
      :event_id,
      :event_arn,
      :started_at,
      :ended_at,
      :client_location,
      :event_type,
      :event_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_name
    #   <p>The name of the monitor.</p>
    #   @return [String]
    # @!attribute linked_account_id
    #   <p>The account ID for an account that you've set up cross-account sharing for in Amazon CloudWatch Internet Monitor. You configure cross-account
    #   			sharing by using Amazon CloudWatch Observability Access Manager. For more information, see 
    #   			<a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cwim-cross-account.html">Internet Monitor cross-account
    #   				observability</a> in the Amazon CloudWatch Internet Monitor User Guide.</p>
    #   @return [String]
    class GetMonitorInput < Struct.new(
      :monitor_name,
      :linked_account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_name
    #   <p>The name of the monitor.</p>
    #   @return [String]
    # @!attribute monitor_arn
    #   <p>The Amazon Resource Name (ARN) of the monitor.</p>
    #   @return [String]
    # @!attribute resources
    #   <p>The resources monitored by the monitor. Resources are listed by their Amazon Resource Names (ARNs).</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The status of the monitor.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the monitor was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The last time that the monitor was modified.</p>
    #   @return [Time]
    # @!attribute processing_status
    #   <p>The health of the data processing for the monitor.</p>
    #   @return [String]
    # @!attribute processing_status_info
    #   <p>Additional information about the health of the data processing for the monitor.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags that have been added to monitor.</p>
    #   @return [Hash<String, String>]
    # @!attribute max_city_networks_to_monitor
    #   <p>The maximum number of city-networks to monitor for your resources. A city-network is the location (city) where clients access your 
    #   			application resources from and the ASN or network provider, such as an internet service provider (ISP), that clients access the resources 
    #   			through. This limit can help control billing costs.</p>
    #            <p>To learn more, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/IMCityNetworksMaximum.html">Choosing a city-network maximum value
    #   		</a> in the Amazon CloudWatch Internet Monitor section of the <i>CloudWatch User Guide</i>.</p>
    #   @return [Integer]
    # @!attribute internet_measurements_log_delivery
    #   <p>Publish internet measurements for Internet Monitor to another location, such as an Amazon S3 bucket. The measurements are also published to Amazon CloudWatch Logs.</p>
    #   @return [Types::InternetMeasurementsLogDelivery]
    # @!attribute traffic_percentage_to_monitor
    #   <p>The percentage of the internet-facing traffic for your application to monitor with this monitor. If you set a city-networks
    #   			maximum, that limit overrides the traffic percentage that you set.</p>
    #            <p>To learn more, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/IMTrafficPercentage.html">Choosing an application traffic percentage to monitor
    #   		</a> in the Amazon CloudWatch Internet Monitor section of the <i>CloudWatch User Guide</i>.</p>
    #   @return [Integer]
    # @!attribute health_events_config
    #   <p>The list of health event threshold configurations. The threshold percentage for a health score determines, along with other configuration 
    #   			information, when Internet Monitor creates a health event when there's an internet issue that affects your application end users.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-overview.html#IMUpdateThresholdFromOverview">
    #   			Change health event thresholds</a> in the Internet Monitor section of the <i>CloudWatch User Guide</i>.</p>
    #   @return [Types::HealthEventsConfig]
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
      :health_events_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_name
    #   <p>The name of the monitor to return data for.</p>
    #   @return [String]
    # @!attribute query_id
    #   <p>The ID of the query that you want to return data results for. A <code>QueryId</code> is an 
    #   			internally-generated identifier for a specific query.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of query results that you want to return with this call.</p>
    #   @return [Integer]
    class GetQueryResultsInput < Struct.new(
      :monitor_name,
      :query_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute fields
    #   <p>The fields that the query returns data for. Fields are name-data type pairs, such as 
    #   			<code>availability_score</code>-<code>float</code>.</p>
    #   @return [Array<Types::QueryField>]
    # @!attribute data
    #   <p>The data results that the query returns. Data is returned in arrays, aligned with the <code>Fields</code>
    #   		for the query, which creates a repository of Amazon CloudWatch Internet Monitor information for your application. Then, you can filter
    #   		the information in the repository by using <code>FilterParameters</code> that you define.</p>
    #   @return [Array<Array<String>>]
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    class GetQueryResultsOutput < Struct.new(
      :fields,
      :data,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_name
    #   <p>The name of the monitor.</p>
    #   @return [String]
    # @!attribute query_id
    #   <p>The ID of the query that you want to return the status for. A <code>QueryId</code> is an internally-generated 
    #   			dentifier for a specific query.</p>
    #   @return [String]
    class GetQueryStatusInput < Struct.new(
      :monitor_name,
      :query_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The current status for a query.</p>
    #   @return [String]
    class GetQueryStatusOutput < Struct.new(
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a health event created in a monitor in Amazon CloudWatch Internet Monitor.</p>
    # @!attribute event_arn
    #   <p>The Amazon Resource Name (ARN) of the event.</p>
    #   @return [String]
    # @!attribute event_id
    #   <p>The internally-generated identifier of a specific network traffic impairment health event.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>When a health event started.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The time when a health event ended. If the health event is still active, then the end time is not set.</p>
    #   @return [Time]
    # @!attribute created_at
    #   <p>When the health event was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>When the health event was last updated.</p>
    #   @return [Time]
    # @!attribute impacted_locations
    #   <p>The locations impacted by the health event.</p>
    #   @return [Array<Types::ImpactedLocation>]
    # @!attribute status
    #   <p>The status of a health event.</p>
    #   @return [String]
    # @!attribute percent_of_total_traffic_impacted
    #   <p>The impact on total traffic that a health event has, in increased latency or reduced availability. This is the 
    #   			percentage of how much latency has increased or availability has decreased during the event, compared to what is typical for traffic from this 
    #   			client location to the Amazon Web Services location using this client network.</p>
    #   @return [Float]
    # @!attribute impact_type
    #   <p>The type of impairment for a health event.</p>
    #   @return [String]
    # @!attribute health_score_threshold
    #   <p>The value of the threshold percentage for performance or availability that was configured when Amazon CloudWatch Internet Monitor created the health event.</p>
    #   @return [Float]
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
      :health_score_threshold,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:health_score_threshold] = 0 unless options.key?(:health_score_threshold)
        super
      end
    end

    # <p>A complex type with the configuration information that determines the threshold and other conditions for when Internet Monitor creates a health event 
    # 			for an overall performance or availability issue, across an application's geographies.</p>
    #          <p>Defines the percentages, for overall performance scores and availability scores for an application, that are the thresholds
    # 			for when Amazon CloudWatch Internet Monitor creates a health event. You can override the defaults to set a custom threshold for overall performance or availability scores,
    # 			or both.</p>
    #          <p>You can also set thresholds for local health scores,, where Internet Monitor creates a health event when scores cross a threshold for one or more city-networks,
    # 			in addition to creating an event when an overall score crosses a threshold.</p>
    #          <p>If you don't set a health event threshold, the default value is 95%.</p>
    #          <p>For local thresholds, you also set a minimum percentage of overall traffic that is impacted by an issue before Internet Monitor creates an event.
    # 			In addition, you can disable local thresholds, for performance scores, availability scores, or both.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-overview.html#IMUpdateThresholdFromOverview">
    # 			Change health event thresholds</a> in the Internet Monitor section of the <i>CloudWatch User Guide</i>.</p>
    # @!attribute availability_score_threshold
    #   <p>The health event threshold percentage set for availability scores.</p>
    #   @return [Float]
    # @!attribute performance_score_threshold
    #   <p>The health event threshold percentage set for performance scores.</p>
    #   @return [Float]
    # @!attribute availability_local_health_events_config
    #   <p>The configuration that determines the threshold and other conditions for when Internet Monitor creates a health event for a local availability issue.</p>
    #   @return [Types::LocalHealthEventsConfig]
    # @!attribute performance_local_health_events_config
    #   <p>The configuration that determines the threshold and other conditions for when Internet Monitor creates a health event for a local performance issue.</p>
    #   @return [Types::LocalHealthEventsConfig]
    class HealthEventsConfig < Struct.new(
      :availability_score_threshold,
      :performance_score_threshold,
      :availability_local_health_events_config,
      :performance_local_health_events_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:availability_score_threshold] = 0 unless options.key?(:availability_score_threshold)
        options[:performance_score_threshold] = 0 unless options.key?(:performance_score_threshold)
        super
      end
    end

    # <p>Information about a location impacted by a health event in Amazon CloudWatch Internet Monitor.</p>
    #          <p>Geographic regions are hierarchically categorized into country, subdivision, 
    #    		metro and city geographic granularities. The geographic region is identified based 
    #    		on the IP address used at the client locations.</p>
    # @!attribute as_name
    #   <p>The name of the internet service provider (ISP) or network (ASN).</p>
    #   @return [String]
    # @!attribute as_number
    #   <p>The Autonomous System Number (ASN) of the network at an impacted location.</p>
    #   @return [Integer]
    # @!attribute country
    #   <p>The name of the country where the health event is located.</p>
    #   @return [String]
    # @!attribute subdivision
    #   <p>The subdivision location where the health event is located. The subdivision usually maps to 
    #   				states in most countries (including the United States). For United Kingdom, it maps to a country (England, 
    #   				Scotland, Wales) or province (Northern Ireland).</p>
    #   @return [String]
    # @!attribute metro
    #   <p>The metro area where the health event is located.</p>
    #            <p>Metro indicates a metropolitan region in the United States, such as the region around New York City.
    #      		In non-US countries, this is a second-level subdivision. For example, in the United Kingdom, it could be
    #      		a county, a London borough, a unitary authority, council area, and so on.</p>
    #   @return [String]
    # @!attribute city
    #   <p>The name of the city where the health event is located.</p>
    #   @return [String]
    # @!attribute latitude
    #   <p>The latitude where the health event is located.</p>
    #   @return [Float]
    # @!attribute longitude
    #   <p>The longitude where the health event is located.</p>
    #   @return [Float]
    # @!attribute country_code
    #   <p>The country code where the health event is located. The ISO 3166-2 codes for the
    #      		country is provided, when available. </p>
    #   @return [String]
    # @!attribute subdivision_code
    #   <p>The subdivision code where the health event is located. The ISO 3166-2 codes for 
    #   			country subdivisions is provided, when available. </p>
    #   @return [String]
    # @!attribute service_location
    #   <p>The service location where the health event is located.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the health event at an impacted location.</p>
    #   @return [String]
    # @!attribute caused_by
    #   <p>The cause of the impairment. There are two types of network impairments: Amazon Web Services network issues
    #         	or internet issues. Internet issues are typically a problem with a network provider, like an internet service provider (ISP).</p>
    #   @return [Types::NetworkImpairment]
    # @!attribute internet_health
    #   <p>The calculated health at a specific location.</p>
    #   @return [Types::InternetHealth]
    # @!attribute ipv4_prefixes
    #   <p>The IPv4 prefixes at the client location that was impacted by the health event.</p>
    #   @return [Array<String>]
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
      :ipv4_prefixes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>There was an internal server error.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerErrorException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An internal error occurred.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of information about an internet event in Amazon CloudWatch Internet Monitor. Internet events are issues that cause performance degradation
    # 			or availability problems for impacted Amazon Web Services client locations. Internet Monitor displays information about 
    # 			recent global health events, called internet events, on a global outages map that is available to all Amazon Web Services
    # 			customers. </p>
    # @!attribute event_id
    #   <p>The internally-generated identifier of an internet event.</p>
    #   @return [String]
    # @!attribute event_arn
    #   <p>The Amazon Resource Name (ARN) of the internet event.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The time when an internet event started.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The time when an internet event ended. If the event hasn't ended yet, this value
    #   		is empty.</p>
    #   @return [Time]
    # @!attribute client_location
    #   <p>The impacted location, such as a city, that Amazon Web Services clients access application resources from.</p>
    #   @return [Types::ClientLocation]
    # @!attribute event_type
    #   <p>The type of network impairment.</p>
    #   @return [String]
    # @!attribute event_status
    #   <p>The status of an internet event.</p>
    #   @return [String]
    class InternetEventSummary < Struct.new(
      :event_id,
      :event_arn,
      :started_at,
      :ended_at,
      :client_location,
      :event_type,
      :event_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Internet health includes measurements calculated by Amazon CloudWatch Internet Monitor about the performance and availability for your application on the internet. Amazon Web Services has
    # 			substantial historical data about internet performance and availability between Amazon Web Services services and different network providers and geographies. By
    # 			applying statistical analysis to the data, Internet Monitor can detect when the performance and availability for your application has dropped, compared to an
    # 			estimated baseline that's already calculated. To make it easier to see those drops, Internet Monitor reports the information to you in the form of health scores: a
    # 			performance score and an availability score.</p>
    # @!attribute availability
    #   <p>Availability in Internet Monitor represents the estimated percentage of traffic that is not seeing an availability drop. For example, an availability score of 99%
    #   			for an end user and service location pair is equivalent to 1% of the traffic experiencing an availability drop for that pair.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-inside-internet-monitor.html#IMExperienceScores">How Internet Monitor calculates performance and availability
    #   			scores</a> in the Amazon CloudWatch Internet Monitor section of the <i>CloudWatch User Guide</i>.</p>
    #   @return [Types::AvailabilityMeasurement]
    # @!attribute performance
    #   <p>Performance in Internet Monitor represents the estimated percentage of traffic that is not seeing a performance drop. For example, a performance score of 99% for
    #   			an end user and service location pair is equivalent to 1% of the traffic experiencing a performance drop for that pair.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-inside-internet-monitor.html#IMExperienceScores">How Internet Monitor calculates performance and availability
    #   			scores</a> in the Amazon CloudWatch Internet Monitor section of the <i>CloudWatch User Guide</i>.</p>
    #   @return [Types::PerformanceMeasurement]
    class InternetHealth < Struct.new(
      :availability,
      :performance,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Publish internet measurements to an Amazon S3 bucket in addition to CloudWatch Logs.</p>
    # @!attribute s3_config
    #   <p>The configuration information for publishing Internet Monitor internet measurements to Amazon S3. The configuration includes the bucket name and (optionally) prefix 
    #   			for the S3 bucket to store the measurements, and the delivery status. The delivery status is <code>ENABLED</code> or <code>DISABLED</code>, depending on
    #   			whether you choose to deliver internet measurements to S3 logs.</p>
    #   @return [Types::S3Config]
    class InternetMeasurementsLogDelivery < Struct.new(
      :s3_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request exceeded a service quota.</p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_name
    #   <p>The name of the monitor.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time when a health event started.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time when a health event ended. If the health event is still ongoing, then the end time is not set.</p>
    #   @return [Time]
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of health event objects that you want to return with this call. </p>
    #   @return [Integer]
    # @!attribute event_status
    #   <p>The status of a health event.</p>
    #   @return [String]
    # @!attribute linked_account_id
    #   <p>The account ID for an account that you've set up cross-account sharing for in Amazon CloudWatch Internet Monitor. You configure cross-account
    #   			sharing by using Amazon CloudWatch Observability Access Manager. For more information, see 
    #   			<a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cwim-cross-account.html">Internet Monitor cross-account
    #   				observability</a> in the Amazon CloudWatch Internet Monitor User Guide.</p>
    #   @return [String]
    class ListHealthEventsOperationInput < Struct.new(
      :monitor_name,
      :start_time,
      :end_time,
      :next_token,
      :max_results,
      :event_status,
      :linked_account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute health_events
    #   <p>A list of health events.</p>
    #   @return [Array<Types::HealthEvent>]
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    class ListHealthEventsOperationOutput < Struct.new(
      :health_events,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of query results that you want to return with this call.</p>
    #   @return [Integer]
    # @!attribute start_time
    #   <p>The start time of the time window that you want to get a list of internet events for.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time of the time window that you want to get a list of internet events for.</p>
    #   @return [Time]
    # @!attribute event_status
    #   <p>The status of an internet event.</p>
    #   @return [String]
    # @!attribute event_type
    #   <p>The type of network impairment.</p>
    #   @return [String]
    class ListInternetEventsInput < Struct.new(
      :next_token,
      :max_results,
      :start_time,
      :end_time,
      :event_status,
      :event_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute internet_events
    #   <p>A set of internet events returned for the list operation.</p>
    #   @return [Array<Types::InternetEventSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    class ListInternetEventsOutput < Struct.new(
      :internet_events,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of monitor objects that you want to return with this call.</p>
    #   @return [Integer]
    # @!attribute monitor_status
    #   <p>The status of a monitor. This includes the status of the data processing for the monitor and the status of the monitor itself.</p>
    #            <p>For information about the statuses for a monitor, see <a href="https://docs.aws.amazon.com/internet-monitor/latest/api/API_Monitor.html">
    #   				Monitor</a>.</p>
    #   @return [String]
    # @!attribute include_linked_accounts
    #   <p>A boolean option that you can set to <code>TRUE</code> to include monitors for linked accounts in a list of
    #   			monitors, when you've set up cross-account sharing in Amazon CloudWatch Internet Monitor. You configure cross-account
    #   			sharing by using Amazon CloudWatch Observability Access Manager. For more information, see 
    #   			<a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cwim-cross-account.html">Internet Monitor cross-account
    #   				observability</a> in the Amazon CloudWatch Internet Monitor User Guide.</p>
    #   @return [Boolean]
    class ListMonitorsInput < Struct.new(
      :next_token,
      :max_results,
      :monitor_status,
      :include_linked_accounts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitors
    #   <p>A list of monitors.</p>
    #   @return [Array<Types::Monitor>]
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    class ListMonitorsOutput < Struct.new(
      :monitors,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for a resource.</p>
    #   @return [String]
    class ListTagsForResourceOperationInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Tags for a resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOperationOutput < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type with the configuration information that determines the threshold and other conditions for when Internet Monitor creates a health event 
    # 			for a local performance or availability issue, when scores cross a threshold for one or more city-networks.</p>
    #          <p>Defines the percentages, for performance scores or availability scores, that are the local thresholds
    # 			for when Amazon CloudWatch Internet Monitor creates a health event. Also defines whether a local threshold is enabled or disabled, and the minimum percentage
    # 			of overall traffic that must be impacted by an issue before Internet Monitor creates an event when a	threshold is crossed for a local health score.</p>
    #          <p>If you don't set a local health event threshold, the default value is 60%.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-overview.html#IMUpdateThresholdFromOverview">
    # 			Change health event thresholds</a> in the Internet Monitor section of the <i>CloudWatch User Guide</i>.</p>
    # @!attribute status
    #   <p>The status of whether Internet Monitor creates a health event based on a threshold percentage set for a local health score. The status can be <code>ENABLED</code>
    #   		or <code>DISABLED</code>.</p>
    #   @return [String]
    # @!attribute health_score_threshold
    #   <p>The health event threshold percentage set for a local health score.</p>
    #   @return [Float]
    # @!attribute min_traffic_impact
    #   <p>The minimum percentage of overall traffic for an application that must be impacted by an issue before Internet Monitor creates an event when a
    #   			threshold is crossed for a local health score.</p>
    #            <p>If you don't set a minimum traffic impact threshold, the default value is 0.1%.</p>
    #   @return [Float]
    class LocalHealthEventsConfig < Struct.new(
      :status,
      :health_score_threshold,
      :min_traffic_impact,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:health_score_threshold] = 0 unless options.key?(:health_score_threshold)
        options[:min_traffic_impact] = 0 unless options.key?(:min_traffic_impact)
        super
      end
    end

    # <p>The description of and information about a monitor in Amazon CloudWatch Internet Monitor. </p>
    # @!attribute monitor_name
    #   <p>The name of the monitor.</p>
    #   @return [String]
    # @!attribute monitor_arn
    #   <p>The Amazon Resource Name (ARN) of the monitor.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of a monitor.</p>
    #   @return [String]
    # @!attribute processing_status
    #   <p>The health of data processing for the monitor.</p>
    #   @return [String]
    class Monitor < Struct.new(
      :monitor_name,
      :monitor_arn,
      :status,
      :processing_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An internet service provider (ISP) or network (ASN) in Amazon CloudWatch Internet Monitor.</p>
    # @!attribute as_name
    #   <p>The name of the internet service provider (ISP) or network (ASN).</p>
    #   @return [String]
    # @!attribute as_number
    #   <p>The Autonomous System Number (ASN) of the internet provider or network.</p>
    #   @return [Integer]
    class Network < Struct.new(
      :as_name,
      :as_number,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the network impairment for a specific network measured by Amazon CloudWatch Internet Monitor.</p>
    # @!attribute networks
    #   <p>The networks that could be impacted by a network impairment event.</p>
    #   @return [Array<Types::Network>]
    # @!attribute as_path
    #   <p>The combination of the Autonomous System Number (ASN) of the network and the name of the network.</p>
    #   @return [Array<Types::Network>]
    # @!attribute network_event_type
    #   <p>The type of network impairment.</p>
    #   @return [String]
    class NetworkImpairment < Struct.new(
      :networks,
      :as_path,
      :network_event_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request specifies something that doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    class NotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon CloudWatch Internet Monitor calculates measurements about the performance for your application's internet traffic between client locations and Amazon Web Services. 
    # 			Amazon Web Services has substantial historical data about internet
    # 			performance and availability between Amazon Web Services services and different network providers and geographies. By applying statistical analysis to the data, Internet Monitor
    # 			can detect when the performance and availability for your application has dropped, compared to an estimated baseline that's already calculated. To make it
    # 			easier to see those drops, we report that information to you in the form of health scores: a performance score and an availability score.</p>
    #          <p>Performance in Internet Monitor represents the estimated percentage of traffic that is not seeing a performance drop. For example, a performance score of 99% for
    # 			an end user and service location pair is equivalent to 1% of the traffic experiencing a performance drop for that pair.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-inside-internet-monitor.html#IMExperienceScores">How Internet Monitor calculates performance and availability
    # 			scores</a> in the Amazon CloudWatch Internet Monitor section of the <i>CloudWatch User Guide</i>.</p>
    # @!attribute experience_score
    #   <p>Experience scores, or health scores, are calculated for different geographic and network provider combinations (that is, different granularities) and
    #   			also totaled into global scores. If you view performance or availability scores without filtering for any specific geography or service provider, Amazon CloudWatch Internet Monitor
    #   			provides global health scores.</p>
    #            <p>The Amazon CloudWatch Internet Monitor chapter in the CloudWatch User Guide includes detailed information about how Internet Monitor calculates health scores, including performance and
    #   			availability scores, and when it creates and resolves health events. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-inside-internet-monitor.html#IMExperienceScores">How Amazon Web Services calculates performance and
    #   				availability scores</a> in the Amazon CloudWatch Internet Monitor section of the <i>CloudWatch User Guide</i>.</p>
    #   @return [Float]
    # @!attribute percent_of_total_traffic_impacted
    #   <p>The impact on total traffic that a health event has, in increased latency or reduced availability. This is the 
    #   			percentage of how much latency has increased or availability has decreased during the event, compared to what is typical for traffic from this 
    #   			client location to the Amazon Web Services location using this client network.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-inside-internet-monitor.html#IMHealthEventStartStop">When Amazon Web Services creates and resolves health
    #   			events</a> in the Amazon CloudWatch Internet Monitor section of the <i>CloudWatch User Guide</i>.</p>
    #   @return [Float]
    # @!attribute percent_of_client_location_impacted
    #   <p>How much performance impact was caused by a health event at a client location. For performance, this is the percentage of how much latency increased
    #   			during the event compared to typical performance for traffic, from this client location to an Amazon Web Services location, using a specific client network. </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-inside-internet-monitor.html#IMHealthEventStartStop">When Amazon Web Services creates and resolves health
    #   			events</a> in the Amazon CloudWatch Internet Monitor section of the <i>CloudWatch User Guide</i>.</p>
    #   @return [Float]
    # @!attribute round_trip_time
    #   <p>This is the percentage of how much round-trip time increased during the event compared to typical round-trip time for your application for traffic. </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-inside-internet-monitor.html#IMHealthEventStartStop">When Amazon Web Services creates and resolves health
    #   			events</a> in the Amazon CloudWatch Internet Monitor section of the <i>CloudWatch User Guide</i>.</p>
    #   @return [Types::RoundTripTime]
    class PerformanceMeasurement < Struct.new(
      :experience_score,
      :percent_of_total_traffic_impacted,
      :percent_of_client_location_impacted,
      :round_trip_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a field to query for your application's Amazon CloudWatch Internet Monitor data. You create a data repository by running a query of a specific
    # 			type. Each <code>QueryType</code> includes a specific set of fields and datatypes to retrieve data for. </p>
    # @!attribute name
    #   <p>The name of a field to query your application's Amazon CloudWatch Internet Monitor data for, such as <code>availability_score</code>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The data type for a query field, which must correspond to the field you're defining for <code>QueryField</code>. For example, if the query 
    #   			field name is <code>availability_score</code>, the data type is <code>float</code>.</p>
    #   @return [String]
    class QueryField < Struct.new(
      :name,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request specifies a resource that doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Round-trip time (RTT) is how long it takes for a request from the user to return a response to the user. Amazon CloudWatch Internet Monitor calculates RTT at different
    # 			percentiles: p50, p90, and p95.</p>
    # @!attribute p50
    #   <p>RTT at the 50th percentile (p50).</p>
    #   @return [Float]
    # @!attribute p90
    #   <p>RTT at the 90th percentile (p90). </p>
    #   @return [Float]
    # @!attribute p95
    #   <p>RTT at the 95th percentile (p95). </p>
    #   @return [Float]
    class RoundTripTime < Struct.new(
      :p50,
      :p90,
      :p95,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for publishing Amazon CloudWatch Internet Monitor internet measurements to Amazon S3. The configuration includes the bucket name and (optionally) prefix 
    # 			for the S3 bucket to store the measurements, and the delivery status. The delivery status is <code>ENABLED</code> or <code>DISABLED</code>, depending on
    # 			whether you choose to deliver internet measurements to S3 logs.</p>
    # @!attribute bucket_name
    #   <p>The Amazon S3 bucket name.</p>
    #   @return [String]
    # @!attribute bucket_prefix
    #   <p>The Amazon S3 bucket prefix.</p>
    #   @return [String]
    # @!attribute log_delivery_status
    #   <p>The status of publishing Internet Monitor internet measurements to an Amazon S3 bucket.</p>
    #   @return [String]
    class S3Config < Struct.new(
      :bucket_name,
      :bucket_prefix,
      :log_delivery_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_name
    #   <p>The name of the monitor to query.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The timestamp that is the beginning of the period that you want to retrieve data for with your query.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The timestamp that is the end of the period that you want to retrieve data for with your query.</p>
    #   @return [Time]
    # @!attribute query_type
    #   <p>The type of query to run. The following are the three types of queries that you can run using the Internet Monitor query interface:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>MEASUREMENTS</code>: Provides availability score, performance score, total traffic, 
    #   				and round-trip times, at 5 minute intervals.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOP_LOCATIONS</code>: Provides availability score, performance score, total traffic, 
    #   				and time to first byte (TTFB) information, for the top location and ASN combinations that you're monitoring, by traffic volume.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOP_LOCATION_DETAILS</code>: Provides TTFB for Amazon CloudFront, your 
    #   				current configuration, and the best performing EC2 configuration, at 1 hour intervals.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OVERALL_TRAFFIC_SUGGESTIONS</code>: Provides TTFB, using a 30-day weighted average, for all traffic in 
    #   				each Amazon Web Services location that is monitored.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OVERALL_TRAFFIC_SUGGESTIONS_DETAILS</code>: Provides TTFB, using a 30-day weighted average, for each top 
    #   				location, for a proposed Amazon Web Services location. Must provide an Amazon Web Services location to search.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ROUTING_SUGGESTIONS</code>: Provides the predicted average round-trip time (RTT) from an IP prefix toward 
    #   				an Amazon Web Services location for a DNS resolver. The RTT is calculated at one hour intervals, over a one hour period.</p>
    #               </li>
    #            </ul>
    #            <p>For lists of the fields returned with each query type and more information about how each type of query is
    #   			performed, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-view-cw-tools-cwim-query.html">
    #   				Using the Amazon CloudWatch Internet Monitor query interface</a> in the Amazon CloudWatch Internet Monitor User Guide.</p>
    #   @return [String]
    # @!attribute filter_parameters
    #   <p>The <code>FilterParameters</code> field that you use with Amazon CloudWatch Internet Monitor queries is a string the defines 
    #   			how you want a query to be filtered. The filter parameters that you can specify depend on the query type, since 
    #   			each query type returns a different set of Internet Monitor data.</p>
    #            <p>For more information about specifying filter parameters, see
    #   			<a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-view-cw-tools-cwim-query.html">Using the Amazon CloudWatch Internet Monitor query interface</a>
    #   			in the Amazon CloudWatch Internet Monitor User Guide.</p>
    #   @return [Array<Types::FilterParameter>]
    # @!attribute linked_account_id
    #   <p>The account ID for an account that you've set up cross-account sharing for in Amazon CloudWatch Internet Monitor. You configure cross-account
    #   			sharing by using Amazon CloudWatch Observability Access Manager. For more information, see 
    #   			<a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cwim-cross-account.html">Internet Monitor cross-account
    #   				observability</a> in the Amazon CloudWatch Internet Monitor User Guide.</p>
    #   @return [String]
    class StartQueryInput < Struct.new(
      :monitor_name,
      :start_time,
      :end_time,
      :query_type,
      :filter_parameters,
      :linked_account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute query_id
    #   <p>The internally-generated identifier of a specific query.</p>
    #   @return [String]
    class StartQueryOutput < Struct.new(
      :query_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_name
    #   <p>The name of the monitor.</p>
    #   @return [String]
    # @!attribute query_id
    #   <p>The ID of the query that you want to stop. A <code>QueryId</code> is an internally-generated identifier for a specific query.</p>
    #   @return [String]
    class StopQueryInput < Struct.new(
      :monitor_name,
      :query_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class StopQueryOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for a tag that you add to a resource. Tags are supported only for monitors in Amazon CloudWatch Internet Monitor.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags that you add to a resource. You can add a maximum of 50 tags in Internet Monitor.</p>
    #   @return [Hash<String, String>]
    class TagResourceOperationInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceOperationOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>There were too many requests.</p>
    # @!attribute message
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for a tag you remove a resource from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Tag keys that you remove from a resource.</p>
    #   @return [Array<String>]
    class UntagResourceOperationInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOperationOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_name
    #   <p>The name of the monitor. </p>
    #   @return [String]
    # @!attribute resources_to_add
    #   <p>The resources to include in a monitor, which you provide as a set of Amazon Resource Names (ARNs). Resources can be VPCs, NLBs,
    #   			Amazon CloudFront distributions, or Amazon WorkSpaces directories.</p>
    #            <p>You can add a combination of VPCs and CloudFront distributions, or you can add WorkSpaces directories, or you can add NLBs. You can't add 
    #   			NLBs or WorkSpaces directories together with any other resources.</p>
    #            <note>
    #               <p>If you add only Amazon Virtual Private Clouds resources, at least one VPC must have an Internet Gateway attached to it, to make sure that it has internet
    #   			connectivity.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute resources_to_remove
    #   <p>The resources to remove from a monitor, which you provide as a set of Amazon Resource Names (ARNs).</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The status for a monitor. The accepted values for <code>Status</code> with the <code>UpdateMonitor</code> API call are the following: <code>ACTIVE</code> and
    #   			<code>INACTIVE</code>. The following values are <i>not</i> accepted: <code>PENDING</code>, and <code>ERROR</code>.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive string of up to 64 ASCII characters that you specify to make an idempotent API request. You should not reuse the same client
    #   			token for other API requests.</p>
    #   @return [String]
    # @!attribute max_city_networks_to_monitor
    #   <p>The maximum number of city-networks to monitor for your application. A city-network is the location (city) where clients access your 
    #   			application resources from and the ASN or network provider, such as an internet service provider (ISP), that clients access the resources 
    #   			through. Setting this limit can help control billing costs.</p>
    #   @return [Integer]
    # @!attribute internet_measurements_log_delivery
    #   <p>Publish internet measurements for Internet Monitor to another location, such as an Amazon S3 bucket. The measurements are also published to Amazon CloudWatch Logs.</p>
    #   @return [Types::InternetMeasurementsLogDelivery]
    # @!attribute traffic_percentage_to_monitor
    #   <p>The percentage of the internet-facing traffic for your application that you want to monitor with this monitor. If you set a city-networks
    #   			maximum, that limit overrides the traffic percentage that you set.</p>
    #            <p>To learn more, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/IMTrafficPercentage.html">Choosing an application traffic percentage to monitor
    #   		</a> in the Amazon CloudWatch Internet Monitor section of the <i>CloudWatch User Guide</i>.</p>
    #   @return [Integer]
    # @!attribute health_events_config
    #   <p>The list of health score thresholds. A threshold percentage for health scores, along with other configuration information,
    #   			determines when Internet Monitor creates a health event when there's an internet issue that affects your application end users.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-overview.html#IMUpdateThresholdFromOverview">
    #   			Change health event thresholds</a> in the Internet Monitor section of the <i>CloudWatch User Guide</i>.</p>
    #   @return [Types::HealthEventsConfig]
    class UpdateMonitorInput < Struct.new(
      :monitor_name,
      :resources_to_add,
      :resources_to_remove,
      :status,
      :client_token,
      :max_city_networks_to_monitor,
      :internet_measurements_log_delivery,
      :traffic_percentage_to_monitor,
      :health_events_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_arn
    #   <p>The Amazon Resource Name (ARN) of the monitor.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of a monitor.</p>
    #   @return [String]
    class UpdateMonitorOutput < Struct.new(
      :monitor_arn,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Invalid request.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
