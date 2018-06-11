# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MediaTailor
  module Types

    # The configuration for using a content delivery network (CDN), like
    # Amazon CloudFront, for content and ad segment management.
    #
    # @note When making an API call, you may pass CdnConfiguration
    #   data as a hash:
    #
    #       {
    #         ad_segment_url_prefix: "__string",
    #         content_segment_url_prefix: "__string",
    #       }
    #
    # @!attribute [rw] ad_segment_url_prefix
    #   A non-default content delivery network (CDN) to serve ad segments.
    #   By default, AWS Elemental MediaTailor uses Amazon CloudFront with
    #   default cache settings as its CDN for ad segments. To set up an
    #   alternate CDN, create a rule in your CDN for the following origin:
    #   ads.mediatailor.&lt;region>.amazonaws.com. Then specify the rule's
    #   name in this AdSegmentUrlPrefix. When AWS Elemental MediaTailor
    #   serves a manifest, it reports your CDN as the source for ad
    #   segments.
    #   @return [String]
    #
    # @!attribute [rw] content_segment_url_prefix
    #   A content delivery network (CDN) to cache content segments, so that
    #   content requests don’t always have to go to the origin server.
    #   First, create a rule in your CDN for the content segment origin
    #   server. Then specify the rule's name in this
    #   ContentSegmentUrlPrefix. When AWS Elemental MediaTailor serves a
    #   manifest, it reports your CDN as the source for content segments.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/CdnConfiguration AWS API Documentation
    #
    class CdnConfiguration < Struct.new(
      :ad_segment_url_prefix,
      :content_segment_url_prefix)
      include Aws::Structure
    end

    # The configuration for HLS content.
    #
    # @!attribute [rw] manifest_endpoint_prefix
    #   The URL that is used to initiate a playback session for devices that
    #   support Apple HLS. The session uses server-side reporting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/HlsConfiguration AWS API Documentation
    #
    class HlsConfiguration < Struct.new(
      :manifest_endpoint_prefix)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeletePlaybackConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         name: "__string", # required
    #       }
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DeletePlaybackConfigurationRequest AWS API Documentation
    #
    class DeletePlaybackConfigurationRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPlaybackConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         name: "__string", # required
    #       }
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/GetPlaybackConfigurationRequest AWS API Documentation
    #
    class GetPlaybackConfigurationRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] ad_decision_server_url
    #   The URL for the ad decision server (ADS). This includes the
    #   specification of static parameters and placeholders for dynamic
    #   parameters. AWS Elemental MediaTailor substitutes player-specific
    #   and session-specific parameters as needed when calling the ADS.
    #   Alternately, for testing, you can provide a static VAST URL. The
    #   maximum length is 25000 characters.
    #   @return [String]
    #
    # @!attribute [rw] cdn_configuration
    #   The configuration for using a content delivery network (CDN), like
    #   Amazon CloudFront, for content and ad segment management.
    #   @return [Types::CdnConfiguration]
    #
    # @!attribute [rw] hls_configuration
    #   The configuration for HLS content.
    #   @return [Types::HlsConfiguration]
    #
    # @!attribute [rw] name
    #   The identifier for the configuration.
    #   @return [String]
    #
    # @!attribute [rw] playback_endpoint_prefix
    #   The URL that the player accesses to get a manifest from AWS
    #   Elemental MediaTailor. This session will use server-side reporting.
    #   @return [String]
    #
    # @!attribute [rw] session_initialization_endpoint_prefix
    #   The URL that the player uses to initialize a session that uses
    #   client-side reporting.
    #   @return [String]
    #
    # @!attribute [rw] slate_ad_url
    #   URL for a high-quality video asset to transcode and use to fill in
    #   time that's not used by ads. AWS Elemental MediaTailor shows the
    #   slate to fill in gaps in media content. Configuring the slate is
    #   optional for non-VPAID configurations. For VPAID, the slate is
    #   required because AWS Elemental MediaTailor provides it in the slots
    #   designated for dynamic ad content. The slate must be a high-quality
    #   asset that contains both audio and video.
    #   @return [String]
    #
    # @!attribute [rw] video_content_source_url
    #   The URL prefix for the master playlist for the stream, minus the
    #   asset ID. The maximum length is 512 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/GetPlaybackConfigurationResponse AWS API Documentation
    #
    class GetPlaybackConfigurationResponse < Struct.new(
      :ad_decision_server_url,
      :cdn_configuration,
      :hls_configuration,
      :name,
      :playback_endpoint_prefix,
      :session_initialization_endpoint_prefix,
      :slate_ad_url,
      :video_content_source_url)
      include Aws::Structure
    end

    # @!attribute [rw] ad_decision_server_url
    #   @return [String]
    #
    # @!attribute [rw] cdn_configuration
    #   The configuration for using a content delivery network (CDN), like
    #   Amazon CloudFront, for content and ad segment management.
    #   @return [Types::CdnConfiguration]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] slate_ad_url
    #   @return [String]
    #
    # @!attribute [rw] video_content_source_url
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/PlaybackConfiguration AWS API Documentation
    #
    class PlaybackConfiguration < Struct.new(
      :ad_decision_server_url,
      :cdn_configuration,
      :name,
      :slate_ad_url,
      :video_content_source_url)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPlaybackConfigurationsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ListPlaybackConfigurationsRequest AWS API Documentation
    #
    class ListPlaybackConfigurationsRequest < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Array of playback configurations. This may be all of the available
    #   configurations or a subset, depending on the settings you provide
    #   and on the total number of configurations stored.
    #   @return [Array<Types::PlaybackConfiguration>]
    #
    # @!attribute [rw] next_token
    #   Pagination token returned by the GET list request when results
    #   overrun the meximum allowed. Use the token to fetch the next page of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ListPlaybackConfigurationsResponse AWS API Documentation
    #
    class ListPlaybackConfigurationsResponse < Struct.new(
      :items,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutPlaybackConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         ad_decision_server_url: "__string",
    #         cdn_configuration: {
    #           ad_segment_url_prefix: "__string",
    #           content_segment_url_prefix: "__string",
    #         },
    #         name: "__string",
    #         slate_ad_url: "__string",
    #         video_content_source_url: "__string",
    #       }
    #
    # @!attribute [rw] ad_decision_server_url
    #   The URL for the ad decision server (ADS). This includes the
    #   specification of static parameters and placeholders for dynamic
    #   parameters. AWS Elemental MediaTailor substitutes player-specific
    #   and session-specific parameters as needed when calling the ADS.
    #   Alternately, for testing you can provide a static VAST URL. The
    #   maximum length is 25000 characters.
    #   @return [String]
    #
    # @!attribute [rw] cdn_configuration
    #   The configuration for using a content delivery network (CDN), like
    #   Amazon CloudFront, for content and ad segment management.
    #   @return [Types::CdnConfiguration]
    #
    # @!attribute [rw] name
    #   The identifier for the configuration.
    #   @return [String]
    #
    # @!attribute [rw] slate_ad_url
    #   The URL for a high-quality video asset to transcode and use to fill
    #   in time that's not used by ads. AWS Elemental MediaTailor shows the
    #   slate to fill in gaps in media content. Configuring the slate is
    #   optional for non-VPAID configurations. For VPAID, the slate is
    #   required because AWS Elemental MediaTailor provides it in the slots
    #   that are designated for dynamic ad content. The slate must be a
    #   high-quality asset that contains both audio and video.
    #   @return [String]
    #
    # @!attribute [rw] video_content_source_url
    #   The URL prefix for the master playlist for the stream, minus the
    #   asset ID. The maximum length is 512 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/PutPlaybackConfigurationRequest AWS API Documentation
    #
    class PutPlaybackConfigurationRequest < Struct.new(
      :ad_decision_server_url,
      :cdn_configuration,
      :name,
      :slate_ad_url,
      :video_content_source_url)
      include Aws::Structure
    end

    # @!attribute [rw] ad_decision_server_url
    #   @return [String]
    #
    # @!attribute [rw] cdn_configuration
    #   The configuration for using a content delivery network (CDN), like
    #   Amazon CloudFront, for content and ad segment management.
    #   @return [Types::CdnConfiguration]
    #
    # @!attribute [rw] hls_configuration
    #   The configuration for HLS content.
    #   @return [Types::HlsConfiguration]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] playback_endpoint_prefix
    #   @return [String]
    #
    # @!attribute [rw] session_initialization_endpoint_prefix
    #   @return [String]
    #
    # @!attribute [rw] slate_ad_url
    #   @return [String]
    #
    # @!attribute [rw] video_content_source_url
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/PutPlaybackConfigurationResponse AWS API Documentation
    #
    class PutPlaybackConfigurationResponse < Struct.new(
      :ad_decision_server_url,
      :cdn_configuration,
      :hls_configuration,
      :name,
      :playback_endpoint_prefix,
      :session_initialization_endpoint_prefix,
      :slate_ad_url,
      :video_content_source_url)
      include Aws::Structure
    end

  end
end
