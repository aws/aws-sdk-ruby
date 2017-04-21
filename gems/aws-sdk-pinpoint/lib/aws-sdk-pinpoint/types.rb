# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Pinpoint
  module Types

    # Apple Push Notification Service channel definition.
    #
    # @note When making an API call, you may pass APNSChannelRequest
    #   data as a hash:
    #
    #       {
    #         certificate: "__string",
    #         private_key: "__string",
    #       }
    #
    # @!attribute [rw] certificate
    #   The distribution certificate from Apple.
    #   @return [String]
    #
    # @!attribute [rw] private_key
    #   The certificate private key.
    #   @return [String]
    #
    class APNSChannelRequest < Struct.new(
      :certificate,
      :private_key)
      include Aws::Structure
    end

    # Apple Distribution Push Notification Service channel definition.
    #
    # @!attribute [rw] application_id
    #   The ID of the application to which the channel applies.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   When was this segment created
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique channel ID.
    #   @return [String]
    #
    # @!attribute [rw] is_archived
    #   Is this channel archived
    #   @return [Boolean]
    #
    # @!attribute [rw] last_modified_by
    #   Who last updated this entry
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   Last date this was updated
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform type. Will be APNS.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version of channel
    #   @return [Integer]
    #
    class APNSChannelResponse < Struct.new(
      :application_id,
      :creation_date,
      :id,
      :is_archived,
      :last_modified_by,
      :last_modified_date,
      :platform,
      :version)
      include Aws::Structure
    end

    # Activities for campaign.
    #
    # @!attribute [rw] item
    #   List of campaign activities
    #   @return [Array<Types::ActivityResponse>]
    #
    class ActivitiesResponse < Struct.new(
      :item)
      include Aws::Structure
    end

    # Activity definition
    #
    # @!attribute [rw] application_id
    #   The ID of the application to which the campaign applies.
    #   @return [String]
    #
    # @!attribute [rw] campaign_id
    #   The ID of the campaign to which the activity applies.
    #   @return [String]
    #
    # @!attribute [rw] end
    #   The actual time the activity was marked CANCELLED or COMPLETED.
    #   Provided in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique activity ID.
    #   @return [String]
    #
    # @!attribute [rw] result
    #   Indicates whether the activity succeeded. Valid values: SUCCESS,
    #   FAIL
    #   @return [String]
    #
    # @!attribute [rw] scheduled_start
    #   The scheduled start time for the activity in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] start
    #   The actual start time of the activity in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the activity. Valid values: PENDING, INITIALIZING,
    #   RUNNING, PAUSED, CANCELLED, COMPLETED
    #   @return [String]
    #
    # @!attribute [rw] successful_endpoint_count
    #   The total number of endpoints to which the campaign successfully
    #   delivered messages.
    #   @return [Integer]
    #
    # @!attribute [rw] timezones_completed_count
    #   The total number of timezones completed.
    #   @return [Integer]
    #
    # @!attribute [rw] timezones_total_count
    #   The total number of unique timezones present in the segment.
    #   @return [Integer]
    #
    # @!attribute [rw] total_endpoint_count
    #   The total number of endpoints to which the campaign attempts to
    #   deliver messages.
    #   @return [Integer]
    #
    # @!attribute [rw] treatment_id
    #   The ID of a variation of the campaign used for A/B testing.
    #   @return [String]
    #
    class ActivityResponse < Struct.new(
      :application_id,
      :campaign_id,
      :end,
      :id,
      :result,
      :scheduled_start,
      :start,
      :state,
      :successful_endpoint_count,
      :timezones_completed_count,
      :timezones_total_count,
      :total_endpoint_count,
      :treatment_id)
      include Aws::Structure
    end

    # Application settings.
    #
    # @!attribute [rw] application_id
    #   The unique ID for the application.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date that the settings were last updated in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] limits
    #   The default campaign limits for the app. These limits apply to each
    #   campaign for the app, unless the campaign overrides the default with
    #   limits of its own.
    #   @return [Types::CampaignLimits]
    #
    # @!attribute [rw] quiet_time
    #   The default quiet time for the app. Each campaign for this app sends
    #   no messages during this time unless the campaign overrides the
    #   default with a quiet time of its own.
    #   @return [Types::QuietTime]
    #
    class ApplicationSettingsResource < Struct.new(
      :application_id,
      :last_modified_date,
      :limits,
      :quiet_time)
      include Aws::Structure
    end

    # Custom attibute dimension
    #
    # @note When making an API call, you may pass AttributeDimension
    #   data as a hash:
    #
    #       {
    #         attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #         values: ["__string"],
    #       }
    #
    # @!attribute [rw] attribute_type
    #   The type of dimension: INCLUSIVE – Endpoints that match the criteria
    #   are included in the segment. EXCLUSIVE – Endpoints that match the
    #   criteria are excluded from the segment.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   @return [Array<String>]
    #
    class AttributeDimension < Struct.new(
      :attribute_type,
      :values)
      include Aws::Structure
    end

    # Campaign Limits are used to limit the number of messages that can be
    # sent to a user.
    #
    # @note When making an API call, you may pass CampaignLimits
    #   data as a hash:
    #
    #       {
    #         daily: 1,
    #         total: 1,
    #       }
    #
    # @!attribute [rw] daily
    #   The maximum number of messages that the campaign can send daily.
    #   @return [Integer]
    #
    # @!attribute [rw] total
    #   The maximum total number of messages that the campaign can send.
    #   @return [Integer]
    #
    class CampaignLimits < Struct.new(
      :daily,
      :total)
      include Aws::Structure
    end

    # Campaign definition
    #
    # @!attribute [rw] additional_treatments
    #   Treatments that are defined in addition to the default treatment.
    #   @return [Array<Types::TreatmentResource>]
    #
    # @!attribute [rw] application_id
    #   The ID of the application to which the campaign applies.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date the campaign was created in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] default_state
    #   The status of the campaign's default treatment. Only present for
    #   A/B test campaigns.
    #   @return [Types::CampaignState]
    #
    # @!attribute [rw] description
    #   A description of the campaign.
    #   @return [String]
    #
    # @!attribute [rw] holdout_percent
    #   The allocated percentage of end users who will not receive messages
    #   from this campaign.
    #   @return [Integer]
    #
    # @!attribute [rw] id
    #   The unique campaign ID.
    #   @return [String]
    #
    # @!attribute [rw] is_paused
    #   Indicates whether the campaign is paused. A paused campaign does not
    #   send messages unless you resume it by setting IsPaused to false.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_modified_date
    #   The date the campaign was last updated in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] limits
    #   The campaign limits settings.
    #   @return [Types::CampaignLimits]
    #
    # @!attribute [rw] message_configuration
    #   The message configuration settings.
    #   @return [Types::MessageConfiguration]
    #
    # @!attribute [rw] name
    #   The custom name of the campaign.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The campaign schedule.
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] segment_id
    #   The ID of the segment to which the campaign sends messages.
    #   @return [String]
    #
    # @!attribute [rw] segment_version
    #   The version of the segment to which the campaign sends messages.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The campaign status. An A/B test campaign will have a status of
    #   COMPLETED only when all treatments have a status of COMPLETED.
    #   @return [Types::CampaignState]
    #
    # @!attribute [rw] treatment_description
    #   A custom description for the treatment.
    #   @return [String]
    #
    # @!attribute [rw] treatment_name
    #   The custom name of a variation of the campaign used for A/B testing.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The campaign version number.
    #   @return [Integer]
    #
    class CampaignResponse < Struct.new(
      :additional_treatments,
      :application_id,
      :creation_date,
      :default_state,
      :description,
      :holdout_percent,
      :id,
      :is_paused,
      :last_modified_date,
      :limits,
      :message_configuration,
      :name,
      :schedule,
      :segment_id,
      :segment_version,
      :state,
      :treatment_description,
      :treatment_name,
      :version)
      include Aws::Structure
    end

    # State of the Campaign
    #
    # @!attribute [rw] campaign_status
    #   The status of the campaign, or the status of a treatment that
    #   belongs to an A/B test campaign. Valid values: SCHEDULED, EXECUTING,
    #   PENDING\_NEXT\_RUN, COMPLETED, PAUSED
    #   @return [String]
    #
    class CampaignState < Struct.new(
      :campaign_status)
      include Aws::Structure
    end

    # List of available campaigns.
    #
    # @!attribute [rw] item
    #   A list of campaigns.
    #   @return [Array<Types::CampaignResponse>]
    #
    # @!attribute [rw] next_token
    #   The string that you use in a subsequent request to get the next page
    #   of results in a paginated response.
    #   @return [String]
    #
    class CampaignsResponse < Struct.new(
      :item,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateCampaignRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         write_campaign_request: { # required
    #           additional_treatments: [
    #             {
    #               message_configuration: {
    #                 apns_message: {
    #                   action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #                   body: "__string",
    #                   image_icon_url: "__string",
    #                   image_url: "__string",
    #                   json_body: "__string",
    #                   media_url: "__string",
    #                   silent_push: false,
    #                   title: "__string",
    #                   url: "__string",
    #                 },
    #                 default_message: {
    #                   action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #                   body: "__string",
    #                   image_icon_url: "__string",
    #                   image_url: "__string",
    #                   json_body: "__string",
    #                   media_url: "__string",
    #                   silent_push: false,
    #                   title: "__string",
    #                   url: "__string",
    #                 },
    #                 gcm_message: {
    #                   action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #                   body: "__string",
    #                   image_icon_url: "__string",
    #                   image_url: "__string",
    #                   json_body: "__string",
    #                   media_url: "__string",
    #                   silent_push: false,
    #                   title: "__string",
    #                   url: "__string",
    #                 },
    #               },
    #               schedule: {
    #                 end_time: "__string",
    #                 frequency: "ONCE", # accepts ONCE, HOURLY, DAILY, WEEKLY, MONTHLY
    #                 is_local_time: false,
    #                 quiet_time: {
    #                   end: "__string",
    #                   start: "__string",
    #                 },
    #                 start_time: "__string",
    #                 timezone: "__string",
    #               },
    #               size_percent: 1,
    #               treatment_description: "__string",
    #               treatment_name: "__string",
    #             },
    #           ],
    #           description: "__string",
    #           holdout_percent: 1,
    #           is_paused: false,
    #           limits: {
    #             daily: 1,
    #             total: 1,
    #           },
    #           message_configuration: {
    #             apns_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               silent_push: false,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             default_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               silent_push: false,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             gcm_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               silent_push: false,
    #               title: "__string",
    #               url: "__string",
    #             },
    #           },
    #           name: "__string",
    #           schedule: {
    #             end_time: "__string",
    #             frequency: "ONCE", # accepts ONCE, HOURLY, DAILY, WEEKLY, MONTHLY
    #             is_local_time: false,
    #             quiet_time: {
    #               end: "__string",
    #               start: "__string",
    #             },
    #             start_time: "__string",
    #             timezone: "__string",
    #           },
    #           segment_id: "__string",
    #           segment_version: 1,
    #           treatment_description: "__string",
    #           treatment_name: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] write_campaign_request
    #   Used to create a campaign.
    #   @return [Types::WriteCampaignRequest]
    #
    class CreateCampaignRequest < Struct.new(
      :application_id,
      :write_campaign_request)
      include Aws::Structure
    end

    # @!attribute [rw] campaign_response
    #   Campaign definition
    #   @return [Types::CampaignResponse]
    #
    class CreateCampaignResponse < Struct.new(
      :campaign_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateImportJobRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         import_job_request: { # required
    #           define_segment: false,
    #           external_id: "__string",
    #           format: "CSV", # accepts CSV, JSON
    #           register_endpoints: false,
    #           role_arn: "__string",
    #           s3_url: "__string",
    #           segment_id: "__string",
    #           segment_name: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] import_job_request
    #   @return [Types::ImportJobRequest]
    #
    class CreateImportJobRequest < Struct.new(
      :application_id,
      :import_job_request)
      include Aws::Structure
    end

    # @!attribute [rw] import_job_response
    #   @return [Types::ImportJobResponse]
    #
    class CreateImportJobResponse < Struct.new(
      :import_job_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSegmentRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         write_segment_request: { # required
    #           dimensions: {
    #             attributes: {
    #               "__string" => {
    #                 attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #             },
    #             behavior: {
    #               recency: {
    #                 duration: "HR_24", # accepts HR_24, DAY_7, DAY_14, DAY_30
    #                 recency_type: "ACTIVE", # accepts ACTIVE, INACTIVE
    #               },
    #             },
    #             demographic: {
    #               app_version: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #               device_type: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #               make: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #               model: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #               platform: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #             },
    #             location: {
    #               country: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #             },
    #             user_attributes: {
    #               "__string" => {
    #                 attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #             },
    #           },
    #           name: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] write_segment_request
    #   Segment definition.
    #   @return [Types::WriteSegmentRequest]
    #
    class CreateSegmentRequest < Struct.new(
      :application_id,
      :write_segment_request)
      include Aws::Structure
    end

    # @!attribute [rw] segment_response
    #   Segment definition.
    #   @return [Types::SegmentResponse]
    #
    class CreateSegmentResponse < Struct.new(
      :segment_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteApnsChannelRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    class DeleteApnsChannelRequest < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] apns_channel_response
    #   Apple Distribution Push Notification Service channel definition.
    #   @return [Types::APNSChannelResponse]
    #
    class DeleteApnsChannelResponse < Struct.new(
      :apns_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteCampaignRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         campaign_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] campaign_id
    #   @return [String]
    #
    class DeleteCampaignRequest < Struct.new(
      :application_id,
      :campaign_id)
      include Aws::Structure
    end

    # @!attribute [rw] campaign_response
    #   Campaign definition
    #   @return [Types::CampaignResponse]
    #
    class DeleteCampaignResponse < Struct.new(
      :campaign_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteEventStreamRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   Application Id.
    #   @return [String]
    #
    class DeleteEventStreamRequest < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] event_stream
    #   Model for an event publishing subscription export.
    #   @return [Types::EventStream]
    #
    class DeleteEventStreamResponse < Struct.new(
      :event_stream)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteGcmChannelRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    class DeleteGcmChannelRequest < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] gcm_channel_response
    #   Google Cloud Messaging channel definition
    #   @return [Types::GCMChannelResponse]
    #
    class DeleteGcmChannelResponse < Struct.new(
      :gcm_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteSegmentRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         segment_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] segment_id
    #   @return [String]
    #
    class DeleteSegmentRequest < Struct.new(
      :application_id,
      :segment_id)
      include Aws::Structure
    end

    # @!attribute [rw] segment_response
    #   Segment definition.
    #   @return [Types::SegmentResponse]
    #
    class DeleteSegmentResponse < Struct.new(
      :segment_response)
      include Aws::Structure
    end

    # Endpoint update request
    #
    # @note When making an API call, you may pass EndpointBatchItem
    #   data as a hash:
    #
    #       {
    #         address: "__string",
    #         attributes: {
    #           "__string" => ["__string"],
    #         },
    #         channel_type: "APNS", # accepts APNS, GCM
    #         demographic: {
    #           app_version: "__string",
    #           locale: "__string",
    #           make: "__string",
    #           model: "__string",
    #           model_version: "__string",
    #           platform: "__string",
    #           platform_version: "__string",
    #           timezone: "__string",
    #         },
    #         effective_date: "__string",
    #         endpoint_status: "__string",
    #         id: "__string",
    #         location: {
    #           city: "__string",
    #           country: "__string",
    #           latitude: 1.0,
    #           longitude: 1.0,
    #           postal_code: "__string",
    #           region: "__string",
    #         },
    #         metrics: {
    #           "__string" => 1.0,
    #         },
    #         opt_out: "__string",
    #         request_id: "__string",
    #         user: {
    #           user_attributes: {
    #             "__string" => ["__string"],
    #           },
    #           user_id: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] address
    #   The address or token of the endpoint as provided by your push
    #   provider (e.g. DeviceToken or RegistrationId).
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] channel_type
    #   The channel type. Valid values: APNS, GCM
    #   @return [String]
    #
    # @!attribute [rw] demographic
    #   The endpoint demographic attributes.
    #   @return [Types::EndpointDemographic]
    #
    # @!attribute [rw] effective_date
    #   The last time the endpoint was updated. Provided in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_status
    #   The endpoint status. Can be either ACTIVE or INACTIVE. Will be set
    #   to INACTIVE if a delivery fails. Will be set to ACTIVE if the
    #   address is updated.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique Id for the Endpoint in the batch.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The endpoint location attributes.
    #   @return [Types::EndpointLocation]
    #
    # @!attribute [rw] metrics
    #   @return [Hash<String,Float>]
    #
    # @!attribute [rw] opt_out
    #   Indicates whether a user has opted out of receiving messages with
    #   one of the following values: ALL – User receives all messages. NONE
    #   – User receives no messages.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The unique ID for the most recent request to update the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] user
    #   Custom user-specific attributes that your app reports to Amazon
    #   Pinpoint.
    #   @return [Types::EndpointUser]
    #
    class EndpointBatchItem < Struct.new(
      :address,
      :attributes,
      :channel_type,
      :demographic,
      :effective_date,
      :endpoint_status,
      :id,
      :location,
      :metrics,
      :opt_out,
      :request_id,
      :user)
      include Aws::Structure
    end

    # Endpoint batch update request.
    #
    # @note When making an API call, you may pass EndpointBatchRequest
    #   data as a hash:
    #
    #       {
    #         item: [
    #           {
    #             address: "__string",
    #             attributes: {
    #               "__string" => ["__string"],
    #             },
    #             channel_type: "APNS", # accepts APNS, GCM
    #             demographic: {
    #               app_version: "__string",
    #               locale: "__string",
    #               make: "__string",
    #               model: "__string",
    #               model_version: "__string",
    #               platform: "__string",
    #               platform_version: "__string",
    #               timezone: "__string",
    #             },
    #             effective_date: "__string",
    #             endpoint_status: "__string",
    #             id: "__string",
    #             location: {
    #               city: "__string",
    #               country: "__string",
    #               latitude: 1.0,
    #               longitude: 1.0,
    #               postal_code: "__string",
    #               region: "__string",
    #             },
    #             metrics: {
    #               "__string" => 1.0,
    #             },
    #             opt_out: "__string",
    #             request_id: "__string",
    #             user: {
    #               user_attributes: {
    #                 "__string" => ["__string"],
    #               },
    #               user_id: "__string",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] item
    #   List of items to update. Maximum 100 items
    #   @return [Array<Types::EndpointBatchItem>]
    #
    class EndpointBatchRequest < Struct.new(
      :item)
      include Aws::Structure
    end

    # Endpoint demographic data
    #
    # @note When making an API call, you may pass EndpointDemographic
    #   data as a hash:
    #
    #       {
    #         app_version: "__string",
    #         locale: "__string",
    #         make: "__string",
    #         model: "__string",
    #         model_version: "__string",
    #         platform: "__string",
    #         platform_version: "__string",
    #         timezone: "__string",
    #       }
    #
    # @!attribute [rw] app_version
    #   The version of the application associated with the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] locale
    #   The endpoint locale in the following format: The ISO 639-1 alpha-2
    #   code, followed by an underscore, followed by an ISO 3166-1 alpha-2
    #   value.
    #   @return [String]
    #
    # @!attribute [rw] make
    #   The endpoint make, such as such as Apple or Samsung.
    #   @return [String]
    #
    # @!attribute [rw] model
    #   The endpoint model, such as iPhone.
    #   @return [String]
    #
    # @!attribute [rw] model_version
    #   The endpoint model version.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The endpoint platform, such as ios or android.
    #   @return [String]
    #
    # @!attribute [rw] platform_version
    #   The endpoint platform version.
    #   @return [String]
    #
    # @!attribute [rw] timezone
    #   The timezone of the endpoint. Specified as a tz database value, such
    #   as Americas/Los\_Angeles.
    #   @return [String]
    #
    class EndpointDemographic < Struct.new(
      :app_version,
      :locale,
      :make,
      :model,
      :model_version,
      :platform,
      :platform_version,
      :timezone)
      include Aws::Structure
    end

    # Endpoint location data
    #
    # @note When making an API call, you may pass EndpointLocation
    #   data as a hash:
    #
    #       {
    #         city: "__string",
    #         country: "__string",
    #         latitude: 1.0,
    #         longitude: 1.0,
    #         postal_code: "__string",
    #         region: "__string",
    #       }
    #
    # @!attribute [rw] city
    #   The city where the endpoint is located.
    #   @return [String]
    #
    # @!attribute [rw] country
    #   Country according to ISO 3166-1 Alpha-2 codes. For example, US.
    #   @return [String]
    #
    # @!attribute [rw] latitude
    #   The latitude of the endpoint location. Rounded to one decimal
    #   (Roughly corresponding to a mile).
    #   @return [Float]
    #
    # @!attribute [rw] longitude
    #   The longitude of the endpoint location. Rounded to one decimal
    #   (Roughly corresponding to a mile).
    #   @return [Float]
    #
    # @!attribute [rw] postal_code
    #   The postal code or zip code of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The region of the endpoint location. For example, corresponds to a
    #   state in US.
    #   @return [String]
    #
    class EndpointLocation < Struct.new(
      :city,
      :country,
      :latitude,
      :longitude,
      :postal_code,
      :region)
      include Aws::Structure
    end

    # Endpoint update request
    #
    # @note When making an API call, you may pass EndpointRequest
    #   data as a hash:
    #
    #       {
    #         address: "__string",
    #         attributes: {
    #           "__string" => ["__string"],
    #         },
    #         channel_type: "APNS", # accepts APNS, GCM
    #         demographic: {
    #           app_version: "__string",
    #           locale: "__string",
    #           make: "__string",
    #           model: "__string",
    #           model_version: "__string",
    #           platform: "__string",
    #           platform_version: "__string",
    #           timezone: "__string",
    #         },
    #         effective_date: "__string",
    #         endpoint_status: "__string",
    #         location: {
    #           city: "__string",
    #           country: "__string",
    #           latitude: 1.0,
    #           longitude: 1.0,
    #           postal_code: "__string",
    #           region: "__string",
    #         },
    #         metrics: {
    #           "__string" => 1.0,
    #         },
    #         opt_out: "__string",
    #         request_id: "__string",
    #         user: {
    #           user_attributes: {
    #             "__string" => ["__string"],
    #           },
    #           user_id: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] address
    #   The address or token of the endpoint as provided by your push
    #   provider (e.g. DeviceToken or RegistrationId).
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] channel_type
    #   The channel type. Valid values: APNS, GCM
    #   @return [String]
    #
    # @!attribute [rw] demographic
    #   The endpoint demographic attributes.
    #   @return [Types::EndpointDemographic]
    #
    # @!attribute [rw] effective_date
    #   The last time the endpoint was updated. Provided in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_status
    #   The endpoint status. Can be either ACTIVE or INACTIVE. Will be set
    #   to INACTIVE if a delivery fails. Will be set to ACTIVE if the
    #   address is updated.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The endpoint location attributes.
    #   @return [Types::EndpointLocation]
    #
    # @!attribute [rw] metrics
    #   @return [Hash<String,Float>]
    #
    # @!attribute [rw] opt_out
    #   Indicates whether a user has opted out of receiving messages with
    #   one of the following values: ALL – User receives all messages. NONE
    #   – User receives no messages.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The unique ID for the most recent request to update the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] user
    #   Custom user-specific attributes that your app reports to Amazon
    #   Pinpoint.
    #   @return [Types::EndpointUser]
    #
    class EndpointRequest < Struct.new(
      :address,
      :attributes,
      :channel_type,
      :demographic,
      :effective_date,
      :endpoint_status,
      :location,
      :metrics,
      :opt_out,
      :request_id,
      :user)
      include Aws::Structure
    end

    # Endpoint response
    #
    # @!attribute [rw] address
    #   The address or token of the endpoint as provided by your push
    #   provider (e.g. DeviceToken or RegistrationId).
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   The ID of the application associated with the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] channel_type
    #   The channel type. Valid values: APNS, GCM
    #   @return [String]
    #
    # @!attribute [rw] cohort_id
    #   A number from 0 - 99 that represents the cohort the endpoint is
    #   assigned to. Endpoints are grouped into cohorts randomly, and each
    #   cohort contains approximately 1 percent of the endpoints for an app.
    #   Amazon Pinpoint assigns cohorts to the holdout or treatment
    #   allocations for a campaign.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The last time the endpoint was created. Provided in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] demographic
    #   The endpoint demographic attributes.
    #   @return [Types::EndpointDemographic]
    #
    # @!attribute [rw] effective_date
    #   The last time the endpoint was updated. Provided in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_status
    #   The endpoint status. Can be either ACTIVE or INACTIVE. Will be set
    #   to INACTIVE if a delivery fails. Will be set to ACTIVE if the
    #   address is updated.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique ID that you assigned to the endpoint. The ID should be a
    #   globally unique identifier (GUID) to ensure that it is unique
    #   compared to all other endpoints for the application.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The endpoint location attributes.
    #   @return [Types::EndpointLocation]
    #
    # @!attribute [rw] metrics
    #   @return [Hash<String,Float>]
    #
    # @!attribute [rw] opt_out
    #   Indicates whether a user has opted out of receiving messages with
    #   one of the following values: ALL – User receives all messages. NONE
    #   – User receives no messages.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The unique ID for the most recent request to update the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] user
    #   Custom user-specific attributes that your app reports to Amazon
    #   Pinpoint.
    #   @return [Types::EndpointUser]
    #
    # @!attribute [rw] shard_id
    #   The ShardId of endpoint
    #   @return [String]
    #
    class EndpointResponse < Struct.new(
      :address,
      :application_id,
      :attributes,
      :channel_type,
      :cohort_id,
      :creation_date,
      :demographic,
      :effective_date,
      :endpoint_status,
      :id,
      :location,
      :metrics,
      :opt_out,
      :request_id,
      :user,
      :shard_id)
      include Aws::Structure
    end

    # Endpoint user specific custom userAttributes
    #
    # @note When making an API call, you may pass EndpointUser
    #   data as a hash:
    #
    #       {
    #         user_attributes: {
    #           "__string" => ["__string"],
    #         },
    #         user_id: "__string",
    #       }
    #
    # @!attribute [rw] user_attributes
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] user_id
    #   The unique ID of the user.
    #   @return [String]
    #
    class EndpointUser < Struct.new(
      :user_attributes,
      :user_id)
      include Aws::Structure
    end

    # Model for an event publishing subscription export.
    #
    # @!attribute [rw] application_id
    #   The ID of the application from which events should be published.
    #   @return [String]
    #
    # @!attribute [rw] destination_stream_arn
    #   The Amazon Resource Name (ARN) of the Amazon Kinesis stream or
    #   Firehose delivery stream to which you want to publish events.
    #   Firehose ARN:
    #   arn:aws:firehose:REGION:ACCOUNT\_ID:deliverystream/STREAM\_NAME
    #   Kinesis ARN: arn:aws:kinesis:REGION:ACCOUNT\_ID:stream/STREAM\_NAME
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The external ID assigned the IAM role that authorizes Amazon
    #   Pinpoint to publish to the stream.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date the event stream was last updated in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_by
    #   The IAM user who last modified the event stream.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The IAM role that authorizes Amazon Pinpoint to publish events to
    #   the stream in your account.
    #   @return [String]
    #
    class EventStream < Struct.new(
      :application_id,
      :destination_stream_arn,
      :external_id,
      :last_modified_date,
      :last_updated_by,
      :role_arn)
      include Aws::Structure
    end

    # Google Cloud Messaging credentials
    #
    # @note When making an API call, you may pass GCMChannelRequest
    #   data as a hash:
    #
    #       {
    #         api_key: "__string",
    #       }
    #
    # @!attribute [rw] api_key
    #   Platform credential API key from Google.
    #   @return [String]
    #
    class GCMChannelRequest < Struct.new(
      :api_key)
      include Aws::Structure
    end

    # Google Cloud Messaging channel definition
    #
    # @!attribute [rw] application_id
    #   The ID of the application to which the channel applies.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   When was this segment created
    #   @return [String]
    #
    # @!attribute [rw] credential
    #   The GCM API key from Google.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique channel ID.
    #   @return [String]
    #
    # @!attribute [rw] is_archived
    #   Is this channel archived
    #   @return [Boolean]
    #
    # @!attribute [rw] last_modified_by
    #   Who last updated this entry
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   Last date this was updated
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform type. Will be GCM
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version of channel
    #   @return [Integer]
    #
    class GCMChannelResponse < Struct.new(
      :application_id,
      :creation_date,
      :credential,
      :id,
      :is_archived,
      :last_modified_by,
      :last_modified_date,
      :platform,
      :version)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetApnsChannelRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    class GetApnsChannelRequest < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] apns_channel_response
    #   Apple Distribution Push Notification Service channel definition.
    #   @return [Types::APNSChannelResponse]
    #
    class GetApnsChannelResponse < Struct.new(
      :apns_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetApplicationSettingsRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    class GetApplicationSettingsRequest < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] application_settings_resource
    #   Application settings.
    #   @return [Types::ApplicationSettingsResource]
    #
    class GetApplicationSettingsResponse < Struct.new(
      :application_settings_resource)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCampaignActivitiesRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         campaign_id: "__string", # required
    #         page_size: "__string",
    #         token: "__string",
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] campaign_id
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   @return [String]
    #
    # @!attribute [rw] token
    #   @return [String]
    #
    class GetCampaignActivitiesRequest < Struct.new(
      :application_id,
      :campaign_id,
      :page_size,
      :token)
      include Aws::Structure
    end

    # @!attribute [rw] activities_response
    #   Activities for campaign.
    #   @return [Types::ActivitiesResponse]
    #
    class GetCampaignActivitiesResponse < Struct.new(
      :activities_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCampaignRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         campaign_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] campaign_id
    #   @return [String]
    #
    class GetCampaignRequest < Struct.new(
      :application_id,
      :campaign_id)
      include Aws::Structure
    end

    # @!attribute [rw] campaign_response
    #   Campaign definition
    #   @return [Types::CampaignResponse]
    #
    class GetCampaignResponse < Struct.new(
      :campaign_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCampaignVersionRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         campaign_id: "__string", # required
    #         version: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] campaign_id
    #   @return [String]
    #
    # @!attribute [rw] version
    #   @return [String]
    #
    class GetCampaignVersionRequest < Struct.new(
      :application_id,
      :campaign_id,
      :version)
      include Aws::Structure
    end

    # @!attribute [rw] campaign_response
    #   Campaign definition
    #   @return [Types::CampaignResponse]
    #
    class GetCampaignVersionResponse < Struct.new(
      :campaign_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCampaignVersionsRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         campaign_id: "__string", # required
    #         page_size: "__string",
    #         token: "__string",
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] campaign_id
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   @return [String]
    #
    # @!attribute [rw] token
    #   @return [String]
    #
    class GetCampaignVersionsRequest < Struct.new(
      :application_id,
      :campaign_id,
      :page_size,
      :token)
      include Aws::Structure
    end

    # @!attribute [rw] campaigns_response
    #   List of available campaigns.
    #   @return [Types::CampaignsResponse]
    #
    class GetCampaignVersionsResponse < Struct.new(
      :campaigns_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCampaignsRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         page_size: "__string",
    #         token: "__string",
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   @return [String]
    #
    # @!attribute [rw] token
    #   @return [String]
    #
    class GetCampaignsRequest < Struct.new(
      :application_id,
      :page_size,
      :token)
      include Aws::Structure
    end

    # @!attribute [rw] campaigns_response
    #   List of available campaigns.
    #   @return [Types::CampaignsResponse]
    #
    class GetCampaignsResponse < Struct.new(
      :campaigns_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetEndpointRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         endpoint_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] endpoint_id
    #   @return [String]
    #
    class GetEndpointRequest < Struct.new(
      :application_id,
      :endpoint_id)
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_response
    #   Endpoint response
    #   @return [Types::EndpointResponse]
    #
    class GetEndpointResponse < Struct.new(
      :endpoint_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetEventStreamRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   Application Id.
    #   @return [String]
    #
    class GetEventStreamRequest < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] event_stream
    #   Model for an event publishing subscription export.
    #   @return [Types::EventStream]
    #
    class GetEventStreamResponse < Struct.new(
      :event_stream)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetGcmChannelRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    class GetGcmChannelRequest < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] gcm_channel_response
    #   Google Cloud Messaging channel definition
    #   @return [Types::GCMChannelResponse]
    #
    class GetGcmChannelResponse < Struct.new(
      :gcm_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetImportJobRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         job_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   @return [String]
    #
    class GetImportJobRequest < Struct.new(
      :application_id,
      :job_id)
      include Aws::Structure
    end

    # @!attribute [rw] import_job_response
    #   @return [Types::ImportJobResponse]
    #
    class GetImportJobResponse < Struct.new(
      :import_job_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetImportJobsRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         page_size: "__string",
    #         token: "__string",
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   @return [String]
    #
    # @!attribute [rw] token
    #   @return [String]
    #
    class GetImportJobsRequest < Struct.new(
      :application_id,
      :page_size,
      :token)
      include Aws::Structure
    end

    # @!attribute [rw] import_jobs_response
    #   Import job list.
    #   @return [Types::ImportJobsResponse]
    #
    class GetImportJobsResponse < Struct.new(
      :import_jobs_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSegmentImportJobsRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         page_size: "__string",
    #         segment_id: "__string", # required
    #         token: "__string",
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   @return [String]
    #
    # @!attribute [rw] segment_id
    #   @return [String]
    #
    # @!attribute [rw] token
    #   @return [String]
    #
    class GetSegmentImportJobsRequest < Struct.new(
      :application_id,
      :page_size,
      :segment_id,
      :token)
      include Aws::Structure
    end

    # @!attribute [rw] import_jobs_response
    #   Import job list.
    #   @return [Types::ImportJobsResponse]
    #
    class GetSegmentImportJobsResponse < Struct.new(
      :import_jobs_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSegmentRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         segment_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] segment_id
    #   @return [String]
    #
    class GetSegmentRequest < Struct.new(
      :application_id,
      :segment_id)
      include Aws::Structure
    end

    # @!attribute [rw] segment_response
    #   Segment definition.
    #   @return [Types::SegmentResponse]
    #
    class GetSegmentResponse < Struct.new(
      :segment_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSegmentVersionRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         segment_id: "__string", # required
    #         version: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] segment_id
    #   @return [String]
    #
    # @!attribute [rw] version
    #   @return [String]
    #
    class GetSegmentVersionRequest < Struct.new(
      :application_id,
      :segment_id,
      :version)
      include Aws::Structure
    end

    # @!attribute [rw] segment_response
    #   Segment definition.
    #   @return [Types::SegmentResponse]
    #
    class GetSegmentVersionResponse < Struct.new(
      :segment_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSegmentVersionsRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         page_size: "__string",
    #         segment_id: "__string", # required
    #         token: "__string",
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   @return [String]
    #
    # @!attribute [rw] segment_id
    #   @return [String]
    #
    # @!attribute [rw] token
    #   @return [String]
    #
    class GetSegmentVersionsRequest < Struct.new(
      :application_id,
      :page_size,
      :segment_id,
      :token)
      include Aws::Structure
    end

    # @!attribute [rw] segments_response
    #   Segments in your account.
    #   @return [Types::SegmentsResponse]
    #
    class GetSegmentVersionsResponse < Struct.new(
      :segments_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSegmentsRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         page_size: "__string",
    #         token: "__string",
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   @return [String]
    #
    # @!attribute [rw] token
    #   @return [String]
    #
    class GetSegmentsRequest < Struct.new(
      :application_id,
      :page_size,
      :token)
      include Aws::Structure
    end

    # @!attribute [rw] segments_response
    #   Segments in your account.
    #   @return [Types::SegmentsResponse]
    #
    class GetSegmentsResponse < Struct.new(
      :segments_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ImportJobRequest
    #   data as a hash:
    #
    #       {
    #         define_segment: false,
    #         external_id: "__string",
    #         format: "CSV", # accepts CSV, JSON
    #         register_endpoints: false,
    #         role_arn: "__string",
    #         s3_url: "__string",
    #         segment_id: "__string",
    #         segment_name: "__string",
    #       }
    #
    # @!attribute [rw] define_segment
    #   Sets whether the endpoints create a segment when they are imported.
    #   @return [Boolean]
    #
    # @!attribute [rw] external_id
    #   A unique, custom ID assigned to the IAM role that restricts who can
    #   assume the role.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the files that contain the endpoint definitions. Valid
    #   values: CSV, JSON
    #   @return [String]
    #
    # @!attribute [rw] register_endpoints
    #   Sets whether the endpoints are registered with Amazon Pinpoint when
    #   they are imported.
    #   @return [Boolean]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that grants Amazon
    #   Pinpoint access to the Amazon S3 location that contains the
    #   endpoints to import.
    #   @return [String]
    #
    # @!attribute [rw] s3_url
    #   A URL that points to the location within an Amazon S3 bucket that
    #   contains the endpoints to import. The location can be a folder or a
    #   single file. The URL should follow this format:
    #   s3://bucket-name/folder-name/file-name Amazon Pinpoint will import
    #   endpoints from this location and any subfolders it contains.
    #   @return [String]
    #
    # @!attribute [rw] segment_id
    #   The ID of the segment to update if the import job is meant to update
    #   an existing segment.
    #   @return [String]
    #
    # @!attribute [rw] segment_name
    #   A custom name for the segment created by the import job. Use if
    #   DefineSegment is true.
    #   @return [String]
    #
    class ImportJobRequest < Struct.new(
      :define_segment,
      :external_id,
      :format,
      :register_endpoints,
      :role_arn,
      :s3_url,
      :segment_id,
      :segment_name)
      include Aws::Structure
    end

    # @!attribute [rw] define_segment
    #   Sets whether the endpoints create a segment when they are imported.
    #   @return [Boolean]
    #
    # @!attribute [rw] external_id
    #   A unique, custom ID assigned to the IAM role that restricts who can
    #   assume the role.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the files that contain the endpoint definitions. Valid
    #   values: CSV, JSON
    #   @return [String]
    #
    # @!attribute [rw] register_endpoints
    #   Sets whether the endpoints are registered with Amazon Pinpoint when
    #   they are imported.
    #   @return [Boolean]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that grants Amazon
    #   Pinpoint access to the Amazon S3 location that contains the
    #   endpoints to import.
    #   @return [String]
    #
    # @!attribute [rw] s3_url
    #   A URL that points to the location within an Amazon S3 bucket that
    #   contains the endpoints to import. The location can be a folder or a
    #   single file. The URL should follow this format:
    #   s3://bucket-name/folder-name/file-name Amazon Pinpoint will import
    #   endpoints from this location and any subfolders it contains.
    #   @return [String]
    #
    # @!attribute [rw] segment_id
    #   The ID of the segment to update if the import job is meant to update
    #   an existing segment.
    #   @return [String]
    #
    # @!attribute [rw] segment_name
    #   A custom name for the segment created by the import job. Use if
    #   DefineSegment is true.
    #   @return [String]
    #
    class ImportJobResource < Struct.new(
      :define_segment,
      :external_id,
      :format,
      :register_endpoints,
      :role_arn,
      :s3_url,
      :segment_id,
      :segment_name)
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The unique ID of the application to which the import job applies.
    #   @return [String]
    #
    # @!attribute [rw] completed_pieces
    #   The number of pieces that have successfully imported as of the time
    #   of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] completion_date
    #   The date the import job completed in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date the import job was created in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The import job settings.
    #   @return [Types::ImportJobResource]
    #
    # @!attribute [rw] failed_pieces
    #   The number of pieces that have failed to import as of the time of
    #   the request.
    #   @return [Integer]
    #
    # @!attribute [rw] failures
    #   @return [Array<String>]
    #
    # @!attribute [rw] id
    #   The unique ID of the import job.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The status of the import job. Valid values: CREATED, INITIALIZING,
    #   PROCESSING, COMPLETING, COMPLETED, FAILING, FAILED The job status is
    #   FAILED if one or more pieces failed to import.
    #   @return [String]
    #
    # @!attribute [rw] total_failures
    #   The number of endpoints that failed to import; for example, because
    #   of syntax errors.
    #   @return [Integer]
    #
    # @!attribute [rw] total_pieces
    #   The total number of pieces that must be imported to finish the job.
    #   Each piece is an approximately equal portion of the endpoints to
    #   import.
    #   @return [Integer]
    #
    # @!attribute [rw] total_processed
    #   The number of endpoints that were processed by the import job.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   The job type. Will be Import.
    #   @return [String]
    #
    class ImportJobResponse < Struct.new(
      :application_id,
      :completed_pieces,
      :completion_date,
      :creation_date,
      :definition,
      :failed_pieces,
      :failures,
      :id,
      :job_status,
      :total_failures,
      :total_pieces,
      :total_processed,
      :type)
      include Aws::Structure
    end

    # Import job list.
    #
    # @!attribute [rw] item
    #   A list of import jobs for the application.
    #   @return [Array<Types::ImportJobResponse>]
    #
    # @!attribute [rw] next_token
    #   The string that you use in a subsequent request to get the next page
    #   of results in a paginated response.
    #   @return [String]
    #
    class ImportJobsResponse < Struct.new(
      :item,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass Message
    #   data as a hash:
    #
    #       {
    #         action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #         body: "__string",
    #         image_icon_url: "__string",
    #         image_url: "__string",
    #         json_body: "__string",
    #         media_url: "__string",
    #         silent_push: false,
    #         title: "__string",
    #         url: "__string",
    #       }
    #
    # @!attribute [rw] action
    #   The action that occurs if the user taps a push notification
    #   delivered by the campaign: OPEN\_APP – Your app launches, or it
    #   becomes the foreground app if it has been sent to the background.
    #   This is the default action. DEEP\_LINK – Uses deep linking features
    #   in iOS and Android to open your app and display a designated user
    #   interface within the app. URL – The default mobile browser on the
    #   user's device launches and opens a web page at the URL you specify.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The message body. Can include up to 140 characters.
    #   @return [String]
    #
    # @!attribute [rw] image_icon_url
    #   The URL that points to the icon image for the push notification
    #   icon, for example, the app icon.
    #   @return [String]
    #
    # @!attribute [rw] image_url
    #   The URL that points to an image used in the push notification.
    #   @return [String]
    #
    # @!attribute [rw] json_body
    #   The JSON payload used for a silent push.
    #   @return [String]
    #
    # @!attribute [rw] media_url
    #   The URL that points to the media resource, for example a .mp4 or
    #   .gif file.
    #   @return [String]
    #
    # @!attribute [rw] silent_push
    #   Indicates if the message should display on the users device. Silent
    #   pushes can be used for Remote Configuration and Phone Home use
    #   cases.
    #   @return [Boolean]
    #
    # @!attribute [rw] title
    #   The message title that displays above the message on the user's
    #   device.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL to open in the user's mobile browser. Used if the value for
    #   Action is URL.
    #   @return [String]
    #
    class Message < Struct.new(
      :action,
      :body,
      :image_icon_url,
      :image_url,
      :json_body,
      :media_url,
      :silent_push,
      :title,
      :url)
      include Aws::Structure
    end

    # Simple message object.
    #
    # @!attribute [rw] message
    #   The error message returned from the API.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The unique message body ID.
    #   @return [String]
    #
    class MessageBody < Struct.new(
      :message,
      :request_id)
      include Aws::Structure
    end

    # Message configuration for a campaign.
    #
    # @note When making an API call, you may pass MessageConfiguration
    #   data as a hash:
    #
    #       {
    #         apns_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           silent_push: false,
    #           title: "__string",
    #           url: "__string",
    #         },
    #         default_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           silent_push: false,
    #           title: "__string",
    #           url: "__string",
    #         },
    #         gcm_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           silent_push: false,
    #           title: "__string",
    #           url: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] apns_message
    #   The message that the campaign delivers to APNS channels. Overrides
    #   the default message.
    #   @return [Types::Message]
    #
    # @!attribute [rw] default_message
    #   The default message for all channels.
    #   @return [Types::Message]
    #
    # @!attribute [rw] gcm_message
    #   The message that the campaign delivers to GCM channels. Overrides
    #   the default message.
    #   @return [Types::Message]
    #
    class MessageConfiguration < Struct.new(
      :apns_message,
      :default_message,
      :gcm_message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutEventStreamRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         write_event_stream: { # required
    #           destination_stream_arn: "__string",
    #           external_id: "__string",
    #           role_arn: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   Application Id.
    #   @return [String]
    #
    # @!attribute [rw] write_event_stream
    #   Write event stream wrapper.
    #   @return [Types::WriteEventStream]
    #
    class PutEventStreamRequest < Struct.new(
      :application_id,
      :write_event_stream)
      include Aws::Structure
    end

    # @!attribute [rw] event_stream
    #   Model for an event publishing subscription export.
    #   @return [Types::EventStream]
    #
    class PutEventStreamResponse < Struct.new(
      :event_stream)
      include Aws::Structure
    end

    # Quiet Time
    #
    # @note When making an API call, you may pass QuietTime
    #   data as a hash:
    #
    #       {
    #         end: "__string",
    #         start: "__string",
    #       }
    #
    # @!attribute [rw] end
    #   The default end time for quiet time in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] start
    #   The default start time for quiet time in ISO 8601 format.
    #   @return [String]
    #
    class QuietTime < Struct.new(
      :end,
      :start)
      include Aws::Structure
    end

    # Define how a segment based on recency of use.
    #
    # @note When making an API call, you may pass RecencyDimension
    #   data as a hash:
    #
    #       {
    #         duration: "HR_24", # accepts HR_24, DAY_7, DAY_14, DAY_30
    #         recency_type: "ACTIVE", # accepts ACTIVE, INACTIVE
    #       }
    #
    # @!attribute [rw] duration
    #   The length of time during which users have been active or inactive
    #   with your app. Valid values: HR\_24, DAY\_7, DAY\_14, DAY\_30
    #   @return [String]
    #
    # @!attribute [rw] recency_type
    #   The recency dimension type: ACTIVE – Users who have used your app
    #   within the specified duration are included in the segment. INACTIVE
    #   – Users who have not used your app within the specified duration are
    #   included in the segment.
    #   @return [String]
    #
    class RecencyDimension < Struct.new(
      :duration,
      :recency_type)
      include Aws::Structure
    end

    # Shcedule that defines when a campaign is run.
    #
    # @note When making an API call, you may pass Schedule
    #   data as a hash:
    #
    #       {
    #         end_time: "__string",
    #         frequency: "ONCE", # accepts ONCE, HOURLY, DAILY, WEEKLY, MONTHLY
    #         is_local_time: false,
    #         quiet_time: {
    #           end: "__string",
    #           start: "__string",
    #         },
    #         start_time: "__string",
    #         timezone: "__string",
    #       }
    #
    # @!attribute [rw] end_time
    #   The scheduled time that the campaign ends in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] frequency
    #   How often the campaign delivers messages. Valid values: ONCE,
    #   HOURLY, DAILY, WEEKLY, MONTHLY
    #   @return [String]
    #
    # @!attribute [rw] is_local_time
    #   Indicates whether the campaign schedule takes effect according to
    #   each user's local time.
    #   @return [Boolean]
    #
    # @!attribute [rw] quiet_time
    #   The time during which the campaign sends no messages.
    #   @return [Types::QuietTime]
    #
    # @!attribute [rw] start_time
    #   The scheduled time that the campaign begins in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] timezone
    #   The starting UTC offset for the schedule if the value for
    #   isLocalTime is true Valid values: UTC UTC+01 UTC+02 UTC+03 UTC+03:30
    #   UTC+04 UTC+04:30 UTC+05 UTC+05:30 UTC+05:45 UTC+06 UTC+06:30 UTC+07
    #   UTC+08 UTC+09 UTC+09:30 UTC+10 UTC+10:30 UTC+11 UTC+12 UTC+13 UTC-02
    #   UTC-03 UTC-04 UTC-05 UTC-06 UTC-07 UTC-08 UTC-09 UTC-10 UTC-11
    #   @return [String]
    #
    class Schedule < Struct.new(
      :end_time,
      :frequency,
      :is_local_time,
      :quiet_time,
      :start_time,
      :timezone)
      include Aws::Structure
    end

    # Segment behavior dimensions
    #
    # @note When making an API call, you may pass SegmentBehaviors
    #   data as a hash:
    #
    #       {
    #         recency: {
    #           duration: "HR_24", # accepts HR_24, DAY_7, DAY_14, DAY_30
    #           recency_type: "ACTIVE", # accepts ACTIVE, INACTIVE
    #         },
    #       }
    #
    # @!attribute [rw] recency
    #   The recency of use.
    #   @return [Types::RecencyDimension]
    #
    class SegmentBehaviors < Struct.new(
      :recency)
      include Aws::Structure
    end

    # Segment demographic dimensions
    #
    # @note When making an API call, you may pass SegmentDemographics
    #   data as a hash:
    #
    #       {
    #         app_version: {
    #           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #           values: ["__string"],
    #         },
    #         device_type: {
    #           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #           values: ["__string"],
    #         },
    #         make: {
    #           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #           values: ["__string"],
    #         },
    #         model: {
    #           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #           values: ["__string"],
    #         },
    #         platform: {
    #           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #           values: ["__string"],
    #         },
    #       }
    #
    # @!attribute [rw] app_version
    #   The app version criteria for the segment.
    #   @return [Types::SetDimension]
    #
    # @!attribute [rw] device_type
    #   The device type criteria for the segment.
    #   @return [Types::SetDimension]
    #
    # @!attribute [rw] make
    #   The device make criteria for the segment.
    #   @return [Types::SetDimension]
    #
    # @!attribute [rw] model
    #   The device model criteria for the segment.
    #   @return [Types::SetDimension]
    #
    # @!attribute [rw] platform
    #   The device platform criteria for the segment.
    #   @return [Types::SetDimension]
    #
    class SegmentDemographics < Struct.new(
      :app_version,
      :device_type,
      :make,
      :model,
      :platform)
      include Aws::Structure
    end

    # Segment dimensions
    #
    # @note When making an API call, you may pass SegmentDimensions
    #   data as a hash:
    #
    #       {
    #         attributes: {
    #           "__string" => {
    #             attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"],
    #           },
    #         },
    #         behavior: {
    #           recency: {
    #             duration: "HR_24", # accepts HR_24, DAY_7, DAY_14, DAY_30
    #             recency_type: "ACTIVE", # accepts ACTIVE, INACTIVE
    #           },
    #         },
    #         demographic: {
    #           app_version: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"],
    #           },
    #           device_type: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"],
    #           },
    #           make: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"],
    #           },
    #           model: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"],
    #           },
    #           platform: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"],
    #           },
    #         },
    #         location: {
    #           country: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"],
    #           },
    #         },
    #         user_attributes: {
    #           "__string" => {
    #             attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"],
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] attributes
    #   Custom segment attributes.
    #   @return [Hash<String,Types::AttributeDimension>]
    #
    # @!attribute [rw] behavior
    #   The segment behaviors attributes.
    #   @return [Types::SegmentBehaviors]
    #
    # @!attribute [rw] demographic
    #   The segment demographics attributes.
    #   @return [Types::SegmentDemographics]
    #
    # @!attribute [rw] location
    #   The segment location attributes.
    #   @return [Types::SegmentLocation]
    #
    # @!attribute [rw] user_attributes
    #   Custom segment user attributes.
    #   @return [Hash<String,Types::AttributeDimension>]
    #
    class SegmentDimensions < Struct.new(
      :attributes,
      :behavior,
      :demographic,
      :location,
      :user_attributes)
      include Aws::Structure
    end

    # Segment import definition.
    #
    # @!attribute [rw] external_id
    #   A unique, custom ID assigned to the IAM role that restricts who can
    #   assume the role.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the endpoint files that were imported to create this
    #   segment. Valid values: CSV, JSON
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that grants Amazon
    #   Pinpoint access to the endpoints in Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] s3_url
    #   A URL that points to the Amazon S3 location from which the endpoints
    #   for this segment were imported.
    #   @return [String]
    #
    # @!attribute [rw] size
    #   The number of endpoints that were successfully imported to create
    #   this segment.
    #   @return [Integer]
    #
    class SegmentImportResource < Struct.new(
      :external_id,
      :format,
      :role_arn,
      :s3_url,
      :size)
      include Aws::Structure
    end

    # Segment location dimensions
    #
    # @note When making an API call, you may pass SegmentLocation
    #   data as a hash:
    #
    #       {
    #         country: {
    #           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #           values: ["__string"],
    #         },
    #       }
    #
    # @!attribute [rw] country
    #   The country filter according to ISO 3166-1 Alpha-2 codes.
    #   @return [Types::SetDimension]
    #
    class SegmentLocation < Struct.new(
      :country)
      include Aws::Structure
    end

    # Segment definition.
    #
    # @!attribute [rw] application_id
    #   The ID of the application to which the segment applies.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date the segment was created in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   The segment dimensions attributes.
    #   @return [Types::SegmentDimensions]
    #
    # @!attribute [rw] id
    #   The unique segment ID.
    #   @return [String]
    #
    # @!attribute [rw] import_definition
    #   The import job settings.
    #   @return [Types::SegmentImportResource]
    #
    # @!attribute [rw] last_modified_date
    #   The date the segment was last updated in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of segment
    #   @return [String]
    #
    # @!attribute [rw] segment_type
    #   The segment type: DIMENSIONAL – A dynamic segment built from
    #   selection criteria based on endpoint data reported by your app. You
    #   create this type of segment by using the segment builder in the
    #   Amazon Pinpoint console or by making a POST request to the segments
    #   resource. IMPORT – A static segment built from an imported set of
    #   endpoint definitions. You create this type of segment by importing a
    #   segment in the Amazon Pinpoint console or by making a POST request
    #   to the jobs/import resource.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The segment version number.
    #   @return [Integer]
    #
    class SegmentResponse < Struct.new(
      :application_id,
      :creation_date,
      :dimensions,
      :id,
      :import_definition,
      :last_modified_date,
      :name,
      :segment_type,
      :version)
      include Aws::Structure
    end

    # Segments in your account.
    #
    # @!attribute [rw] item
    #   The list of segments.
    #   @return [Array<Types::SegmentResponse>]
    #
    # @!attribute [rw] next_token
    #   An identifier used to retrieve the next page of results. The token
    #   is null if no additional pages exist.
    #   @return [String]
    #
    class SegmentsResponse < Struct.new(
      :item,
      :next_token)
      include Aws::Structure
    end

    # Dimension specification of a segment.
    #
    # @note When making an API call, you may pass SetDimension
    #   data as a hash:
    #
    #       {
    #         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #         values: ["__string"],
    #       }
    #
    # @!attribute [rw] dimension_type
    #   The type of dimension: INCLUSIVE – Endpoints that match the criteria
    #   are included in the segment. EXCLUSIVE – Endpoints that match the
    #   criteria are excluded from the segment.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   @return [Array<String>]
    #
    class SetDimension < Struct.new(
      :dimension_type,
      :values)
      include Aws::Structure
    end

    # Treatment resource
    #
    # @!attribute [rw] id
    #   The unique treatment ID.
    #   @return [String]
    #
    # @!attribute [rw] message_configuration
    #   The message configuration settings.
    #   @return [Types::MessageConfiguration]
    #
    # @!attribute [rw] schedule
    #   The campaign schedule.
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] size_percent
    #   The allocated percentage of users for this treatment.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The treatment status.
    #   @return [Types::CampaignState]
    #
    # @!attribute [rw] treatment_description
    #   A custom description for the treatment.
    #   @return [String]
    #
    # @!attribute [rw] treatment_name
    #   The custom name of a variation of the campaign used for A/B testing.
    #   @return [String]
    #
    class TreatmentResource < Struct.new(
      :id,
      :message_configuration,
      :schedule,
      :size_percent,
      :state,
      :treatment_description,
      :treatment_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateApnsChannelRequest
    #   data as a hash:
    #
    #       {
    #         apns_channel_request: { # required
    #           certificate: "__string",
    #           private_key: "__string",
    #         },
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] apns_channel_request
    #   Apple Push Notification Service channel definition.
    #   @return [Types::APNSChannelRequest]
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    class UpdateApnsChannelRequest < Struct.new(
      :apns_channel_request,
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] apns_channel_response
    #   Apple Distribution Push Notification Service channel definition.
    #   @return [Types::APNSChannelResponse]
    #
    class UpdateApnsChannelResponse < Struct.new(
      :apns_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateApplicationSettingsRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         write_application_settings_request: { # required
    #           limits: {
    #             daily: 1,
    #             total: 1,
    #           },
    #           quiet_time: {
    #             end: "__string",
    #             start: "__string",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] write_application_settings_request
    #   Creating application setting request
    #   @return [Types::WriteApplicationSettingsRequest]
    #
    class UpdateApplicationSettingsRequest < Struct.new(
      :application_id,
      :write_application_settings_request)
      include Aws::Structure
    end

    # @!attribute [rw] application_settings_resource
    #   Application settings.
    #   @return [Types::ApplicationSettingsResource]
    #
    class UpdateApplicationSettingsResponse < Struct.new(
      :application_settings_resource)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateCampaignRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         campaign_id: "__string", # required
    #         write_campaign_request: { # required
    #           additional_treatments: [
    #             {
    #               message_configuration: {
    #                 apns_message: {
    #                   action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #                   body: "__string",
    #                   image_icon_url: "__string",
    #                   image_url: "__string",
    #                   json_body: "__string",
    #                   media_url: "__string",
    #                   silent_push: false,
    #                   title: "__string",
    #                   url: "__string",
    #                 },
    #                 default_message: {
    #                   action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #                   body: "__string",
    #                   image_icon_url: "__string",
    #                   image_url: "__string",
    #                   json_body: "__string",
    #                   media_url: "__string",
    #                   silent_push: false,
    #                   title: "__string",
    #                   url: "__string",
    #                 },
    #                 gcm_message: {
    #                   action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #                   body: "__string",
    #                   image_icon_url: "__string",
    #                   image_url: "__string",
    #                   json_body: "__string",
    #                   media_url: "__string",
    #                   silent_push: false,
    #                   title: "__string",
    #                   url: "__string",
    #                 },
    #               },
    #               schedule: {
    #                 end_time: "__string",
    #                 frequency: "ONCE", # accepts ONCE, HOURLY, DAILY, WEEKLY, MONTHLY
    #                 is_local_time: false,
    #                 quiet_time: {
    #                   end: "__string",
    #                   start: "__string",
    #                 },
    #                 start_time: "__string",
    #                 timezone: "__string",
    #               },
    #               size_percent: 1,
    #               treatment_description: "__string",
    #               treatment_name: "__string",
    #             },
    #           ],
    #           description: "__string",
    #           holdout_percent: 1,
    #           is_paused: false,
    #           limits: {
    #             daily: 1,
    #             total: 1,
    #           },
    #           message_configuration: {
    #             apns_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               silent_push: false,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             default_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               silent_push: false,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             gcm_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               silent_push: false,
    #               title: "__string",
    #               url: "__string",
    #             },
    #           },
    #           name: "__string",
    #           schedule: {
    #             end_time: "__string",
    #             frequency: "ONCE", # accepts ONCE, HOURLY, DAILY, WEEKLY, MONTHLY
    #             is_local_time: false,
    #             quiet_time: {
    #               end: "__string",
    #               start: "__string",
    #             },
    #             start_time: "__string",
    #             timezone: "__string",
    #           },
    #           segment_id: "__string",
    #           segment_version: 1,
    #           treatment_description: "__string",
    #           treatment_name: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] campaign_id
    #   @return [String]
    #
    # @!attribute [rw] write_campaign_request
    #   Used to create a campaign.
    #   @return [Types::WriteCampaignRequest]
    #
    class UpdateCampaignRequest < Struct.new(
      :application_id,
      :campaign_id,
      :write_campaign_request)
      include Aws::Structure
    end

    # @!attribute [rw] campaign_response
    #   Campaign definition
    #   @return [Types::CampaignResponse]
    #
    class UpdateCampaignResponse < Struct.new(
      :campaign_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateEndpointRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         endpoint_id: "__string", # required
    #         endpoint_request: { # required
    #           address: "__string",
    #           attributes: {
    #             "__string" => ["__string"],
    #           },
    #           channel_type: "APNS", # accepts APNS, GCM
    #           demographic: {
    #             app_version: "__string",
    #             locale: "__string",
    #             make: "__string",
    #             model: "__string",
    #             model_version: "__string",
    #             platform: "__string",
    #             platform_version: "__string",
    #             timezone: "__string",
    #           },
    #           effective_date: "__string",
    #           endpoint_status: "__string",
    #           location: {
    #             city: "__string",
    #             country: "__string",
    #             latitude: 1.0,
    #             longitude: 1.0,
    #             postal_code: "__string",
    #             region: "__string",
    #           },
    #           metrics: {
    #             "__string" => 1.0,
    #           },
    #           opt_out: "__string",
    #           request_id: "__string",
    #           user: {
    #             user_attributes: {
    #               "__string" => ["__string"],
    #             },
    #             user_id: "__string",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] endpoint_id
    #   @return [String]
    #
    # @!attribute [rw] endpoint_request
    #   Endpoint update request
    #   @return [Types::EndpointRequest]
    #
    class UpdateEndpointRequest < Struct.new(
      :application_id,
      :endpoint_id,
      :endpoint_request)
      include Aws::Structure
    end

    # @!attribute [rw] message_body
    #   Simple message object.
    #   @return [Types::MessageBody]
    #
    class UpdateEndpointResponse < Struct.new(
      :message_body)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateEndpointsBatchRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         endpoint_batch_request: { # required
    #           item: [
    #             {
    #               address: "__string",
    #               attributes: {
    #                 "__string" => ["__string"],
    #               },
    #               channel_type: "APNS", # accepts APNS, GCM
    #               demographic: {
    #                 app_version: "__string",
    #                 locale: "__string",
    #                 make: "__string",
    #                 model: "__string",
    #                 model_version: "__string",
    #                 platform: "__string",
    #                 platform_version: "__string",
    #                 timezone: "__string",
    #               },
    #               effective_date: "__string",
    #               endpoint_status: "__string",
    #               id: "__string",
    #               location: {
    #                 city: "__string",
    #                 country: "__string",
    #                 latitude: 1.0,
    #                 longitude: 1.0,
    #                 postal_code: "__string",
    #                 region: "__string",
    #               },
    #               metrics: {
    #                 "__string" => 1.0,
    #               },
    #               opt_out: "__string",
    #               request_id: "__string",
    #               user: {
    #                 user_attributes: {
    #                   "__string" => ["__string"],
    #                 },
    #                 user_id: "__string",
    #               },
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] endpoint_batch_request
    #   Endpoint batch update request.
    #   @return [Types::EndpointBatchRequest]
    #
    class UpdateEndpointsBatchRequest < Struct.new(
      :application_id,
      :endpoint_batch_request)
      include Aws::Structure
    end

    # @!attribute [rw] message_body
    #   Simple message object.
    #   @return [Types::MessageBody]
    #
    class UpdateEndpointsBatchResponse < Struct.new(
      :message_body)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateGcmChannelRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         gcm_channel_request: { # required
    #           api_key: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] gcm_channel_request
    #   Google Cloud Messaging credentials
    #   @return [Types::GCMChannelRequest]
    #
    class UpdateGcmChannelRequest < Struct.new(
      :application_id,
      :gcm_channel_request)
      include Aws::Structure
    end

    # @!attribute [rw] gcm_channel_response
    #   Google Cloud Messaging channel definition
    #   @return [Types::GCMChannelResponse]
    #
    class UpdateGcmChannelResponse < Struct.new(
      :gcm_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateSegmentRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         segment_id: "__string", # required
    #         write_segment_request: { # required
    #           dimensions: {
    #             attributes: {
    #               "__string" => {
    #                 attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #             },
    #             behavior: {
    #               recency: {
    #                 duration: "HR_24", # accepts HR_24, DAY_7, DAY_14, DAY_30
    #                 recency_type: "ACTIVE", # accepts ACTIVE, INACTIVE
    #               },
    #             },
    #             demographic: {
    #               app_version: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #               device_type: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #               make: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #               model: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #               platform: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #             },
    #             location: {
    #               country: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #             },
    #             user_attributes: {
    #               "__string" => {
    #                 attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #             },
    #           },
    #           name: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] segment_id
    #   @return [String]
    #
    # @!attribute [rw] write_segment_request
    #   Segment definition.
    #   @return [Types::WriteSegmentRequest]
    #
    class UpdateSegmentRequest < Struct.new(
      :application_id,
      :segment_id,
      :write_segment_request)
      include Aws::Structure
    end

    # @!attribute [rw] segment_response
    #   Segment definition.
    #   @return [Types::SegmentResponse]
    #
    class UpdateSegmentResponse < Struct.new(
      :segment_response)
      include Aws::Structure
    end

    # Creating application setting request
    #
    # @note When making an API call, you may pass WriteApplicationSettingsRequest
    #   data as a hash:
    #
    #       {
    #         limits: {
    #           daily: 1,
    #           total: 1,
    #         },
    #         quiet_time: {
    #           end: "__string",
    #           start: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] limits
    #   The default campaign limits for the app. These limits apply to each
    #   campaign for the app, unless the campaign overrides the default with
    #   limits of its own.
    #   @return [Types::CampaignLimits]
    #
    # @!attribute [rw] quiet_time
    #   The default quiet time for the app. Each campaign for this app sends
    #   no messages during this time unless the campaign overrides the
    #   default with a quiet time of its own.
    #   @return [Types::QuietTime]
    #
    class WriteApplicationSettingsRequest < Struct.new(
      :limits,
      :quiet_time)
      include Aws::Structure
    end

    # Used to create a campaign.
    #
    # @note When making an API call, you may pass WriteCampaignRequest
    #   data as a hash:
    #
    #       {
    #         additional_treatments: [
    #           {
    #             message_configuration: {
    #               apns_message: {
    #                 action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #                 body: "__string",
    #                 image_icon_url: "__string",
    #                 image_url: "__string",
    #                 json_body: "__string",
    #                 media_url: "__string",
    #                 silent_push: false,
    #                 title: "__string",
    #                 url: "__string",
    #               },
    #               default_message: {
    #                 action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #                 body: "__string",
    #                 image_icon_url: "__string",
    #                 image_url: "__string",
    #                 json_body: "__string",
    #                 media_url: "__string",
    #                 silent_push: false,
    #                 title: "__string",
    #                 url: "__string",
    #               },
    #               gcm_message: {
    #                 action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #                 body: "__string",
    #                 image_icon_url: "__string",
    #                 image_url: "__string",
    #                 json_body: "__string",
    #                 media_url: "__string",
    #                 silent_push: false,
    #                 title: "__string",
    #                 url: "__string",
    #               },
    #             },
    #             schedule: {
    #               end_time: "__string",
    #               frequency: "ONCE", # accepts ONCE, HOURLY, DAILY, WEEKLY, MONTHLY
    #               is_local_time: false,
    #               quiet_time: {
    #                 end: "__string",
    #                 start: "__string",
    #               },
    #               start_time: "__string",
    #               timezone: "__string",
    #             },
    #             size_percent: 1,
    #             treatment_description: "__string",
    #             treatment_name: "__string",
    #           },
    #         ],
    #         description: "__string",
    #         holdout_percent: 1,
    #         is_paused: false,
    #         limits: {
    #           daily: 1,
    #           total: 1,
    #         },
    #         message_configuration: {
    #           apns_message: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             body: "__string",
    #             image_icon_url: "__string",
    #             image_url: "__string",
    #             json_body: "__string",
    #             media_url: "__string",
    #             silent_push: false,
    #             title: "__string",
    #             url: "__string",
    #           },
    #           default_message: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             body: "__string",
    #             image_icon_url: "__string",
    #             image_url: "__string",
    #             json_body: "__string",
    #             media_url: "__string",
    #             silent_push: false,
    #             title: "__string",
    #             url: "__string",
    #           },
    #           gcm_message: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             body: "__string",
    #             image_icon_url: "__string",
    #             image_url: "__string",
    #             json_body: "__string",
    #             media_url: "__string",
    #             silent_push: false,
    #             title: "__string",
    #             url: "__string",
    #           },
    #         },
    #         name: "__string",
    #         schedule: {
    #           end_time: "__string",
    #           frequency: "ONCE", # accepts ONCE, HOURLY, DAILY, WEEKLY, MONTHLY
    #           is_local_time: false,
    #           quiet_time: {
    #             end: "__string",
    #             start: "__string",
    #           },
    #           start_time: "__string",
    #           timezone: "__string",
    #         },
    #         segment_id: "__string",
    #         segment_version: 1,
    #         treatment_description: "__string",
    #         treatment_name: "__string",
    #       }
    #
    # @!attribute [rw] additional_treatments
    #   Treatments that are defined in addition to the default treatment.
    #   @return [Array<Types::WriteTreatmentResource>]
    #
    # @!attribute [rw] description
    #   A description of the campaign.
    #   @return [String]
    #
    # @!attribute [rw] holdout_percent
    #   The allocated percentage of end users who will not receive messages
    #   from this campaign.
    #   @return [Integer]
    #
    # @!attribute [rw] is_paused
    #   Indicates whether the campaign is paused. A paused campaign does not
    #   send messages unless you resume it by setting IsPaused to false.
    #   @return [Boolean]
    #
    # @!attribute [rw] limits
    #   The campaign limits settings.
    #   @return [Types::CampaignLimits]
    #
    # @!attribute [rw] message_configuration
    #   The message configuration settings.
    #   @return [Types::MessageConfiguration]
    #
    # @!attribute [rw] name
    #   The custom name of the campaign.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The campaign schedule.
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] segment_id
    #   The ID of the segment to which the campaign sends messages.
    #   @return [String]
    #
    # @!attribute [rw] segment_version
    #   The version of the segment to which the campaign sends messages.
    #   @return [Integer]
    #
    # @!attribute [rw] treatment_description
    #   A custom description for the treatment.
    #   @return [String]
    #
    # @!attribute [rw] treatment_name
    #   The custom name of a variation of the campaign used for A/B testing.
    #   @return [String]
    #
    class WriteCampaignRequest < Struct.new(
      :additional_treatments,
      :description,
      :holdout_percent,
      :is_paused,
      :limits,
      :message_configuration,
      :name,
      :schedule,
      :segment_id,
      :segment_version,
      :treatment_description,
      :treatment_name)
      include Aws::Structure
    end

    # Request to save an EventStream.
    #
    # @note When making an API call, you may pass WriteEventStream
    #   data as a hash:
    #
    #       {
    #         destination_stream_arn: "__string",
    #         external_id: "__string",
    #         role_arn: "__string",
    #       }
    #
    # @!attribute [rw] destination_stream_arn
    #   The Amazon Resource Name (ARN) of the Amazon Kinesis stream or
    #   Firehose delivery stream to which you want to publish events.
    #   Firehose ARN:
    #   arn:aws:firehose:REGION:ACCOUNT\_ID:deliverystream/STREAM\_NAME
    #   Kinesis ARN: arn:aws:kinesis:REGION:ACCOUNT\_ID:stream/STREAM\_NAME
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The external ID assigned the IAM role that authorizes Amazon
    #   Pinpoint to publish to the stream.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The IAM role that authorizes Amazon Pinpoint to publish events to
    #   the stream in your account.
    #   @return [String]
    #
    class WriteEventStream < Struct.new(
      :destination_stream_arn,
      :external_id,
      :role_arn)
      include Aws::Structure
    end

    # Segment definition.
    #
    # @note When making an API call, you may pass WriteSegmentRequest
    #   data as a hash:
    #
    #       {
    #         dimensions: {
    #           attributes: {
    #             "__string" => {
    #               attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"],
    #             },
    #           },
    #           behavior: {
    #             recency: {
    #               duration: "HR_24", # accepts HR_24, DAY_7, DAY_14, DAY_30
    #               recency_type: "ACTIVE", # accepts ACTIVE, INACTIVE
    #             },
    #           },
    #           demographic: {
    #             app_version: {
    #               dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"],
    #             },
    #             device_type: {
    #               dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"],
    #             },
    #             make: {
    #               dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"],
    #             },
    #             model: {
    #               dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"],
    #             },
    #             platform: {
    #               dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"],
    #             },
    #           },
    #           location: {
    #             country: {
    #               dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"],
    #             },
    #           },
    #           user_attributes: {
    #             "__string" => {
    #               attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"],
    #             },
    #           },
    #         },
    #         name: "__string",
    #       }
    #
    # @!attribute [rw] dimensions
    #   The segment dimensions attributes.
    #   @return [Types::SegmentDimensions]
    #
    # @!attribute [rw] name
    #   The name of segment
    #   @return [String]
    #
    class WriteSegmentRequest < Struct.new(
      :dimensions,
      :name)
      include Aws::Structure
    end

    # Used to create a campaign treatment.
    #
    # @note When making an API call, you may pass WriteTreatmentResource
    #   data as a hash:
    #
    #       {
    #         message_configuration: {
    #           apns_message: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             body: "__string",
    #             image_icon_url: "__string",
    #             image_url: "__string",
    #             json_body: "__string",
    #             media_url: "__string",
    #             silent_push: false,
    #             title: "__string",
    #             url: "__string",
    #           },
    #           default_message: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             body: "__string",
    #             image_icon_url: "__string",
    #             image_url: "__string",
    #             json_body: "__string",
    #             media_url: "__string",
    #             silent_push: false,
    #             title: "__string",
    #             url: "__string",
    #           },
    #           gcm_message: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             body: "__string",
    #             image_icon_url: "__string",
    #             image_url: "__string",
    #             json_body: "__string",
    #             media_url: "__string",
    #             silent_push: false,
    #             title: "__string",
    #             url: "__string",
    #           },
    #         },
    #         schedule: {
    #           end_time: "__string",
    #           frequency: "ONCE", # accepts ONCE, HOURLY, DAILY, WEEKLY, MONTHLY
    #           is_local_time: false,
    #           quiet_time: {
    #             end: "__string",
    #             start: "__string",
    #           },
    #           start_time: "__string",
    #           timezone: "__string",
    #         },
    #         size_percent: 1,
    #         treatment_description: "__string",
    #         treatment_name: "__string",
    #       }
    #
    # @!attribute [rw] message_configuration
    #   The message configuration settings.
    #   @return [Types::MessageConfiguration]
    #
    # @!attribute [rw] schedule
    #   The campaign schedule.
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] size_percent
    #   The allocated percentage of users for this treatment.
    #   @return [Integer]
    #
    # @!attribute [rw] treatment_description
    #   A custom description for the treatment.
    #   @return [String]
    #
    # @!attribute [rw] treatment_name
    #   The custom name of a variation of the campaign used for A/B testing.
    #   @return [String]
    #
    class WriteTreatmentResource < Struct.new(
      :message_configuration,
      :schedule,
      :size_percent,
      :treatment_description,
      :treatment_name)
      include Aws::Structure
    end

  end
end
