# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MediaTailor
  # @api private
  module ClientApi

    include Seahorse::Model

    AvailSuppression = Shapes::StructureShape.new(name: 'AvailSuppression')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    Bumper = Shapes::StructureShape.new(name: 'Bumper')
    CdnConfiguration = Shapes::StructureShape.new(name: 'CdnConfiguration')
    DashConfiguration = Shapes::StructureShape.new(name: 'DashConfiguration')
    DashConfigurationForPut = Shapes::StructureShape.new(name: 'DashConfigurationForPut')
    DeletePlaybackConfigurationRequest = Shapes::StructureShape.new(name: 'DeletePlaybackConfigurationRequest')
    DeletePlaybackConfigurationResponse = Shapes::StructureShape.new(name: 'DeletePlaybackConfigurationResponse')
    GetPlaybackConfigurationRequest = Shapes::StructureShape.new(name: 'GetPlaybackConfigurationRequest')
    GetPlaybackConfigurationResponse = Shapes::StructureShape.new(name: 'GetPlaybackConfigurationResponse')
    HlsConfiguration = Shapes::StructureShape.new(name: 'HlsConfiguration')
    ListPlaybackConfigurationsRequest = Shapes::StructureShape.new(name: 'ListPlaybackConfigurationsRequest')
    ListPlaybackConfigurationsResponse = Shapes::StructureShape.new(name: 'ListPlaybackConfigurationsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LivePreRollConfiguration = Shapes::StructureShape.new(name: 'LivePreRollConfiguration')
    Mode = Shapes::StringShape.new(name: 'Mode')
    OriginManifestType = Shapes::StringShape.new(name: 'OriginManifestType')
    PlaybackConfiguration = Shapes::StructureShape.new(name: 'PlaybackConfiguration')
    PutPlaybackConfigurationRequest = Shapes::StructureShape.new(name: 'PutPlaybackConfigurationRequest')
    PutPlaybackConfigurationResponse = Shapes::StructureShape.new(name: 'PutPlaybackConfigurationResponse')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagsModel = Shapes::StructureShape.new(name: 'TagsModel')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    __boolean = Shapes::BooleanShape.new(name: '__boolean')
    __double = Shapes::FloatShape.new(name: '__double')
    __integer = Shapes::IntegerShape.new(name: '__integer')
    __integerMin1 = Shapes::IntegerShape.new(name: '__integerMin1')
    __integerMin1Max100 = Shapes::IntegerShape.new(name: '__integerMin1Max100')
    __listOfPlaybackConfigurations = Shapes::ListShape.new(name: '__listOfPlaybackConfigurations')
    __listOf__string = Shapes::ListShape.new(name: '__listOf__string')
    __long = Shapes::IntegerShape.new(name: '__long')
    __mapOf__string = Shapes::MapShape.new(name: '__mapOf__string')
    __string = Shapes::StringShape.new(name: '__string')
    __timestampIso8601 = Shapes::TimestampShape.new(name: '__timestampIso8601', timestampFormat: "iso8601")
    __timestampUnix = Shapes::TimestampShape.new(name: '__timestampUnix', timestampFormat: "unixTimestamp")

    AvailSuppression.add_member(:mode, Shapes::ShapeRef.new(shape: Mode, location_name: "Mode"))
    AvailSuppression.add_member(:value, Shapes::ShapeRef.new(shape: __string, location_name: "Value"))
    AvailSuppression.struct_class = Types::AvailSuppression

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "Message"))
    BadRequestException.struct_class = Types::BadRequestException

    Bumper.add_member(:end_url, Shapes::ShapeRef.new(shape: __string, location_name: "EndUrl"))
    Bumper.add_member(:start_url, Shapes::ShapeRef.new(shape: __string, location_name: "StartUrl"))
    Bumper.struct_class = Types::Bumper

    CdnConfiguration.add_member(:ad_segment_url_prefix, Shapes::ShapeRef.new(shape: __string, location_name: "AdSegmentUrlPrefix"))
    CdnConfiguration.add_member(:content_segment_url_prefix, Shapes::ShapeRef.new(shape: __string, location_name: "ContentSegmentUrlPrefix"))
    CdnConfiguration.struct_class = Types::CdnConfiguration

    DashConfiguration.add_member(:manifest_endpoint_prefix, Shapes::ShapeRef.new(shape: __string, location_name: "ManifestEndpointPrefix"))
    DashConfiguration.add_member(:mpd_location, Shapes::ShapeRef.new(shape: __string, location_name: "MpdLocation"))
    DashConfiguration.add_member(:origin_manifest_type, Shapes::ShapeRef.new(shape: OriginManifestType, location_name: "OriginManifestType"))
    DashConfiguration.struct_class = Types::DashConfiguration

    DashConfigurationForPut.add_member(:mpd_location, Shapes::ShapeRef.new(shape: __string, location_name: "MpdLocation"))
    DashConfigurationForPut.add_member(:origin_manifest_type, Shapes::ShapeRef.new(shape: OriginManifestType, location_name: "OriginManifestType"))
    DashConfigurationForPut.struct_class = Types::DashConfigurationForPut

    DeletePlaybackConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "Name"))
    DeletePlaybackConfigurationRequest.struct_class = Types::DeletePlaybackConfigurationRequest

    DeletePlaybackConfigurationResponse.struct_class = Types::DeletePlaybackConfigurationResponse

    GetPlaybackConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "Name"))
    GetPlaybackConfigurationRequest.struct_class = Types::GetPlaybackConfigurationRequest

    GetPlaybackConfigurationResponse.add_member(:ad_decision_server_url, Shapes::ShapeRef.new(shape: __string, location_name: "AdDecisionServerUrl"))
    GetPlaybackConfigurationResponse.add_member(:avail_suppression, Shapes::ShapeRef.new(shape: AvailSuppression, location_name: "AvailSuppression"))
    GetPlaybackConfigurationResponse.add_member(:bumper, Shapes::ShapeRef.new(shape: Bumper, location_name: "Bumper"))
    GetPlaybackConfigurationResponse.add_member(:cdn_configuration, Shapes::ShapeRef.new(shape: CdnConfiguration, location_name: "CdnConfiguration"))
    GetPlaybackConfigurationResponse.add_member(:personalization_threshold_seconds, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "PersonalizationThresholdSeconds"))
    GetPlaybackConfigurationResponse.add_member(:dash_configuration, Shapes::ShapeRef.new(shape: DashConfiguration, location_name: "DashConfiguration"))
    GetPlaybackConfigurationResponse.add_member(:hls_configuration, Shapes::ShapeRef.new(shape: HlsConfiguration, location_name: "HlsConfiguration"))
    GetPlaybackConfigurationResponse.add_member(:live_pre_roll_configuration, Shapes::ShapeRef.new(shape: LivePreRollConfiguration, location_name: "LivePreRollConfiguration"))
    GetPlaybackConfigurationResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    GetPlaybackConfigurationResponse.add_member(:playback_configuration_arn, Shapes::ShapeRef.new(shape: __string, location_name: "PlaybackConfigurationArn"))
    GetPlaybackConfigurationResponse.add_member(:playback_endpoint_prefix, Shapes::ShapeRef.new(shape: __string, location_name: "PlaybackEndpointPrefix"))
    GetPlaybackConfigurationResponse.add_member(:session_initialization_endpoint_prefix, Shapes::ShapeRef.new(shape: __string, location_name: "SessionInitializationEndpointPrefix"))
    GetPlaybackConfigurationResponse.add_member(:slate_ad_url, Shapes::ShapeRef.new(shape: __string, location_name: "SlateAdUrl"))
    GetPlaybackConfigurationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    GetPlaybackConfigurationResponse.add_member(:transcode_profile_name, Shapes::ShapeRef.new(shape: __string, location_name: "TranscodeProfileName"))
    GetPlaybackConfigurationResponse.add_member(:video_content_source_url, Shapes::ShapeRef.new(shape: __string, location_name: "VideoContentSourceUrl"))
    GetPlaybackConfigurationResponse.struct_class = Types::GetPlaybackConfigurationResponse

    HlsConfiguration.add_member(:manifest_endpoint_prefix, Shapes::ShapeRef.new(shape: __string, location_name: "ManifestEndpointPrefix"))
    HlsConfiguration.struct_class = Types::HlsConfiguration

    ListPlaybackConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __integerMin1Max100, location: "querystring", location_name: "MaxResults"))
    ListPlaybackConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "NextToken"))
    ListPlaybackConfigurationsRequest.struct_class = Types::ListPlaybackConfigurationsRequest

    ListPlaybackConfigurationsResponse.add_member(:items, Shapes::ShapeRef.new(shape: __listOfPlaybackConfigurations, location_name: "Items"))
    ListPlaybackConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ListPlaybackConfigurationsResponse.struct_class = Types::ListPlaybackConfigurationsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    LivePreRollConfiguration.add_member(:ad_decision_server_url, Shapes::ShapeRef.new(shape: __string, location_name: "AdDecisionServerUrl"))
    LivePreRollConfiguration.add_member(:max_duration_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "MaxDurationSeconds"))
    LivePreRollConfiguration.struct_class = Types::LivePreRollConfiguration

    PlaybackConfiguration.add_member(:ad_decision_server_url, Shapes::ShapeRef.new(shape: __string, location_name: "AdDecisionServerUrl"))
    PlaybackConfiguration.add_member(:cdn_configuration, Shapes::ShapeRef.new(shape: CdnConfiguration, location_name: "CdnConfiguration"))
    PlaybackConfiguration.add_member(:personalization_threshold_seconds, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "PersonalizationThresholdSeconds"))
    PlaybackConfiguration.add_member(:dash_configuration, Shapes::ShapeRef.new(shape: DashConfiguration, location_name: "DashConfiguration"))
    PlaybackConfiguration.add_member(:hls_configuration, Shapes::ShapeRef.new(shape: HlsConfiguration, location_name: "HlsConfiguration"))
    PlaybackConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    PlaybackConfiguration.add_member(:playback_configuration_arn, Shapes::ShapeRef.new(shape: __string, location_name: "PlaybackConfigurationArn"))
    PlaybackConfiguration.add_member(:playback_endpoint_prefix, Shapes::ShapeRef.new(shape: __string, location_name: "PlaybackEndpointPrefix"))
    PlaybackConfiguration.add_member(:session_initialization_endpoint_prefix, Shapes::ShapeRef.new(shape: __string, location_name: "SessionInitializationEndpointPrefix"))
    PlaybackConfiguration.add_member(:slate_ad_url, Shapes::ShapeRef.new(shape: __string, location_name: "SlateAdUrl"))
    PlaybackConfiguration.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    PlaybackConfiguration.add_member(:transcode_profile_name, Shapes::ShapeRef.new(shape: __string, location_name: "TranscodeProfileName"))
    PlaybackConfiguration.add_member(:video_content_source_url, Shapes::ShapeRef.new(shape: __string, location_name: "VideoContentSourceUrl"))
    PlaybackConfiguration.struct_class = Types::PlaybackConfiguration

    PutPlaybackConfigurationRequest.add_member(:ad_decision_server_url, Shapes::ShapeRef.new(shape: __string, location_name: "AdDecisionServerUrl"))
    PutPlaybackConfigurationRequest.add_member(:avail_suppression, Shapes::ShapeRef.new(shape: AvailSuppression, location_name: "AvailSuppression"))
    PutPlaybackConfigurationRequest.add_member(:bumper, Shapes::ShapeRef.new(shape: Bumper, location_name: "Bumper"))
    PutPlaybackConfigurationRequest.add_member(:cdn_configuration, Shapes::ShapeRef.new(shape: CdnConfiguration, location_name: "CdnConfiguration"))
    PutPlaybackConfigurationRequest.add_member(:personalization_threshold_seconds, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "PersonalizationThresholdSeconds"))
    PutPlaybackConfigurationRequest.add_member(:dash_configuration, Shapes::ShapeRef.new(shape: DashConfigurationForPut, location_name: "DashConfiguration"))
    PutPlaybackConfigurationRequest.add_member(:live_pre_roll_configuration, Shapes::ShapeRef.new(shape: LivePreRollConfiguration, location_name: "LivePreRollConfiguration"))
    PutPlaybackConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    PutPlaybackConfigurationRequest.add_member(:slate_ad_url, Shapes::ShapeRef.new(shape: __string, location_name: "SlateAdUrl"))
    PutPlaybackConfigurationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    PutPlaybackConfigurationRequest.add_member(:transcode_profile_name, Shapes::ShapeRef.new(shape: __string, location_name: "TranscodeProfileName"))
    PutPlaybackConfigurationRequest.add_member(:video_content_source_url, Shapes::ShapeRef.new(shape: __string, location_name: "VideoContentSourceUrl"))
    PutPlaybackConfigurationRequest.struct_class = Types::PutPlaybackConfigurationRequest

    PutPlaybackConfigurationResponse.add_member(:ad_decision_server_url, Shapes::ShapeRef.new(shape: __string, location_name: "AdDecisionServerUrl"))
    PutPlaybackConfigurationResponse.add_member(:avail_suppression, Shapes::ShapeRef.new(shape: AvailSuppression, location_name: "AvailSuppression"))
    PutPlaybackConfigurationResponse.add_member(:bumper, Shapes::ShapeRef.new(shape: Bumper, location_name: "Bumper"))
    PutPlaybackConfigurationResponse.add_member(:cdn_configuration, Shapes::ShapeRef.new(shape: CdnConfiguration, location_name: "CdnConfiguration"))
    PutPlaybackConfigurationResponse.add_member(:dash_configuration, Shapes::ShapeRef.new(shape: DashConfiguration, location_name: "DashConfiguration"))
    PutPlaybackConfigurationResponse.add_member(:hls_configuration, Shapes::ShapeRef.new(shape: HlsConfiguration, location_name: "HlsConfiguration"))
    PutPlaybackConfigurationResponse.add_member(:live_pre_roll_configuration, Shapes::ShapeRef.new(shape: LivePreRollConfiguration, location_name: "LivePreRollConfiguration"))
    PutPlaybackConfigurationResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    PutPlaybackConfigurationResponse.add_member(:playback_configuration_arn, Shapes::ShapeRef.new(shape: __string, location_name: "PlaybackConfigurationArn"))
    PutPlaybackConfigurationResponse.add_member(:playback_endpoint_prefix, Shapes::ShapeRef.new(shape: __string, location_name: "PlaybackEndpointPrefix"))
    PutPlaybackConfigurationResponse.add_member(:session_initialization_endpoint_prefix, Shapes::ShapeRef.new(shape: __string, location_name: "SessionInitializationEndpointPrefix"))
    PutPlaybackConfigurationResponse.add_member(:slate_ad_url, Shapes::ShapeRef.new(shape: __string, location_name: "SlateAdUrl"))
    PutPlaybackConfigurationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    PutPlaybackConfigurationResponse.add_member(:transcode_profile_name, Shapes::ShapeRef.new(shape: __string, location_name: "TranscodeProfileName"))
    PutPlaybackConfigurationResponse.add_member(:video_content_source_url, Shapes::ShapeRef.new(shape: __string, location_name: "VideoContentSourceUrl"))
    PutPlaybackConfigurationResponse.struct_class = Types::PutPlaybackConfigurationResponse

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagsModel.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, required: true, location_name: "tags"))
    TagsModel.struct_class = Types::TagsModel

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    __listOfPlaybackConfigurations.member = Shapes::ShapeRef.new(shape: PlaybackConfiguration)

    __listOf__string.member = Shapes::ShapeRef.new(shape: __string)

    __mapOf__string.key = Shapes::ShapeRef.new(shape: __string)
    __mapOf__string.value = Shapes::ShapeRef.new(shape: __string)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-04-23"

      api.metadata = {
        "apiVersion" => "2018-04-23",
        "endpointPrefix" => "api.mediatailor",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "MediaTailor",
        "serviceFullName" => "AWS MediaTailor",
        "serviceId" => "MediaTailor",
        "signatureVersion" => "v4",
        "signingName" => "mediatailor",
        "uid" => "mediatailor-2018-04-23",
      }

      api.add_operation(:delete_playback_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePlaybackConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/playbackConfiguration/{Name}"
        o.input = Shapes::ShapeRef.new(shape: DeletePlaybackConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePlaybackConfigurationResponse)
      end)

      api.add_operation(:get_playback_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPlaybackConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/playbackConfiguration/{Name}"
        o.input = Shapes::ShapeRef.new(shape: GetPlaybackConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPlaybackConfigurationResponse)
      end)

      api.add_operation(:list_playback_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPlaybackConfigurations"
        o.http_method = "GET"
        o.http_request_uri = "/playbackConfigurations"
        o.input = Shapes::ShapeRef.new(shape: ListPlaybackConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPlaybackConfigurationsResponse)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:put_playback_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutPlaybackConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/playbackConfiguration"
        o.input = Shapes::ShapeRef.new(shape: PutPlaybackConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutPlaybackConfigurationResponse)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)
    end

  end
end
