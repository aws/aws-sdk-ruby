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

    CdnConfiguration = Shapes::StructureShape.new(name: 'CdnConfiguration')
    DeletePlaybackConfigurationRequest = Shapes::StructureShape.new(name: 'DeletePlaybackConfigurationRequest')
    GetPlaybackConfigurationRequest = Shapes::StructureShape.new(name: 'GetPlaybackConfigurationRequest')
    GetPlaybackConfigurationResponse = Shapes::StructureShape.new(name: 'GetPlaybackConfigurationResponse')
    HlsConfiguration = Shapes::StructureShape.new(name: 'HlsConfiguration')
    ListPlaybackConfigurationsRequest = Shapes::StructureShape.new(name: 'ListPlaybackConfigurationsRequest')
    ListPlaybackConfigurationsResponse = Shapes::StructureShape.new(name: 'ListPlaybackConfigurationsResponse')
    PlaybackConfiguration = Shapes::StructureShape.new(name: 'PlaybackConfiguration')
    PutPlaybackConfigurationRequest = Shapes::StructureShape.new(name: 'PutPlaybackConfigurationRequest')
    PutPlaybackConfigurationResponse = Shapes::StructureShape.new(name: 'PutPlaybackConfigurationResponse')
    __boolean = Shapes::BooleanShape.new(name: '__boolean')
    __double = Shapes::FloatShape.new(name: '__double')
    __integer = Shapes::IntegerShape.new(name: '__integer')
    __integerMin1Max100 = Shapes::IntegerShape.new(name: '__integerMin1Max100')
    __listOfPlaybackConfigurations = Shapes::ListShape.new(name: '__listOfPlaybackConfigurations')
    __long = Shapes::IntegerShape.new(name: '__long')
    __string = Shapes::StringShape.new(name: '__string')

    CdnConfiguration.add_member(:ad_segment_url_prefix, Shapes::ShapeRef.new(shape: __string, location_name: "AdSegmentUrlPrefix"))
    CdnConfiguration.add_member(:content_segment_url_prefix, Shapes::ShapeRef.new(shape: __string, location_name: "ContentSegmentUrlPrefix"))
    CdnConfiguration.struct_class = Types::CdnConfiguration

    DeletePlaybackConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "Name"))
    DeletePlaybackConfigurationRequest.struct_class = Types::DeletePlaybackConfigurationRequest

    GetPlaybackConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "Name"))
    GetPlaybackConfigurationRequest.struct_class = Types::GetPlaybackConfigurationRequest

    GetPlaybackConfigurationResponse.add_member(:ad_decision_server_url, Shapes::ShapeRef.new(shape: __string, location_name: "AdDecisionServerUrl"))
    GetPlaybackConfigurationResponse.add_member(:cdn_configuration, Shapes::ShapeRef.new(shape: CdnConfiguration, location_name: "CdnConfiguration"))
    GetPlaybackConfigurationResponse.add_member(:hls_configuration, Shapes::ShapeRef.new(shape: HlsConfiguration, location_name: "HlsConfiguration"))
    GetPlaybackConfigurationResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    GetPlaybackConfigurationResponse.add_member(:playback_endpoint_prefix, Shapes::ShapeRef.new(shape: __string, location_name: "PlaybackEndpointPrefix"))
    GetPlaybackConfigurationResponse.add_member(:session_initialization_endpoint_prefix, Shapes::ShapeRef.new(shape: __string, location_name: "SessionInitializationEndpointPrefix"))
    GetPlaybackConfigurationResponse.add_member(:slate_ad_url, Shapes::ShapeRef.new(shape: __string, location_name: "SlateAdUrl"))
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

    PlaybackConfiguration.add_member(:ad_decision_server_url, Shapes::ShapeRef.new(shape: __string, location_name: "AdDecisionServerUrl"))
    PlaybackConfiguration.add_member(:cdn_configuration, Shapes::ShapeRef.new(shape: CdnConfiguration, location_name: "CdnConfiguration"))
    PlaybackConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    PlaybackConfiguration.add_member(:slate_ad_url, Shapes::ShapeRef.new(shape: __string, location_name: "SlateAdUrl"))
    PlaybackConfiguration.add_member(:video_content_source_url, Shapes::ShapeRef.new(shape: __string, location_name: "VideoContentSourceUrl"))
    PlaybackConfiguration.struct_class = Types::PlaybackConfiguration

    PutPlaybackConfigurationRequest.add_member(:ad_decision_server_url, Shapes::ShapeRef.new(shape: __string, location_name: "AdDecisionServerUrl"))
    PutPlaybackConfigurationRequest.add_member(:cdn_configuration, Shapes::ShapeRef.new(shape: CdnConfiguration, location_name: "CdnConfiguration"))
    PutPlaybackConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    PutPlaybackConfigurationRequest.add_member(:slate_ad_url, Shapes::ShapeRef.new(shape: __string, location_name: "SlateAdUrl"))
    PutPlaybackConfigurationRequest.add_member(:video_content_source_url, Shapes::ShapeRef.new(shape: __string, location_name: "VideoContentSourceUrl"))
    PutPlaybackConfigurationRequest.struct_class = Types::PutPlaybackConfigurationRequest

    PutPlaybackConfigurationResponse.add_member(:ad_decision_server_url, Shapes::ShapeRef.new(shape: __string, location_name: "AdDecisionServerUrl"))
    PutPlaybackConfigurationResponse.add_member(:cdn_configuration, Shapes::ShapeRef.new(shape: CdnConfiguration, location_name: "CdnConfiguration"))
    PutPlaybackConfigurationResponse.add_member(:hls_configuration, Shapes::ShapeRef.new(shape: HlsConfiguration, location_name: "HlsConfiguration"))
    PutPlaybackConfigurationResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    PutPlaybackConfigurationResponse.add_member(:playback_endpoint_prefix, Shapes::ShapeRef.new(shape: __string, location_name: "PlaybackEndpointPrefix"))
    PutPlaybackConfigurationResponse.add_member(:session_initialization_endpoint_prefix, Shapes::ShapeRef.new(shape: __string, location_name: "SessionInitializationEndpointPrefix"))
    PutPlaybackConfigurationResponse.add_member(:slate_ad_url, Shapes::ShapeRef.new(shape: __string, location_name: "SlateAdUrl"))
    PutPlaybackConfigurationResponse.add_member(:video_content_source_url, Shapes::ShapeRef.new(shape: __string, location_name: "VideoContentSourceUrl"))
    PutPlaybackConfigurationResponse.struct_class = Types::PutPlaybackConfigurationResponse

    __listOfPlaybackConfigurations.member = Shapes::ShapeRef.new(shape: PlaybackConfiguration)


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
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
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

      api.add_operation(:put_playback_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutPlaybackConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/playbackConfiguration"
        o.input = Shapes::ShapeRef.new(shape: PutPlaybackConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutPlaybackConfigurationResponse)
      end)
    end

  end
end
