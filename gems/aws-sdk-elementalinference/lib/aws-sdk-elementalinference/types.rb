# frozen_string_literal: true

# This is generated code!

module Aws::ElementalInference
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The width and height of the output video. Used in SubtitlingConfig to determine subtitle layout. </p>
    # @!attribute width
    #   <p>The width component of the aspect ratio (for example, 16 in a 16:9 ratio).</p>
    #   @return [Integer]
    # @!attribute height
    #   <p>The height component of the aspect ratio (for example, 9 in a 16:9 ratio).</p>
    #   @return [Integer]
    class AspectRatio < Struct.new(
      nil,
      :width,
      :height,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the feed.</p>
    #   @return [String]
    # @!attribute associated_resource_name
    #   <p>An identifier for the resource. This name must not resemble an ARN.</p> <p>The resource is the source media that the feed will process. The name you assign should help you to later identify the source media that belongs to the feed. In this way, you will know which source media to push to the feed (using PutMedia). </p>
    #   @return [String]
    # @!attribute outputs
    #   <p>An array of one or more outputs that you want to add to this feed now, to supplement any outputs that you specified when you created or updated the feed. </p>
    #   @return [Array<Types::CreateOutput>]
    # @!attribute dry_run
    #   <p>Set to true if you want to do a dry run of the associate action.</p> <p>Elemental Inference will validate that the real request would succeed without actually making any changes. A dry run catches errors such as missing IAM permissions, quota limits exceeded, conflicting outputs, and so on. If the dry run fails, the action returns a 4xx error code. After you've fixed the errors, resubmit the request. </p>
    #   @return [Boolean]
    class AssociateFeedRequest < Struct.new(
      nil,
      :id,
      :associated_resource_name,
      :outputs,
      :dry_run,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the feed.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the feed.</p>
    #   @return [String]
    class AssociateFeedResponse < Struct.new(
      nil,
      :arn,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A type of OutputConfig, used when the output in a feed is for the clip feature.</p>
    # @!attribute callback_metadata
    #   <p>A string that you want Elemental Inference to always include in the event clipping metadata for this output. The string might identify the sports event in the source media, for example. </p>
    #   @return [String]
    # @!attribute data_source_configuration
    #   <p>The data source to map onto this clipping output. This parameter is optional. When you include this parameter, Elemental Inference reads the event data for the fixture that you specify, and includes that data in the event clipping metadata for this output. </p> <p>If you omit this parameter, Elemental Inference doesn't map a data source onto this output. </p>
    #   @return [Types::DataSourceConfiguration]
    class ClippingConfig < Struct.new(
      nil,
      :callback_metadata,
      :data_source_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about one competitor in a fixture. It is used in the FixtureSummary that is in the SearchFixtures response. </p>
    # @!attribute name
    #   <p>The name of the competitor, as provided by the data source.</p>
    #   @return [String]
    # @!attribute is_home
    #   <p>Specifies whether this competitor is the home side in the fixture. If true, this competitor is the home side. If false, this competitor is the away side. </p>
    #   @return [Boolean]
    class Competitor < Struct.new(
      nil,
      :name,
      :is_home,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request could not be completed due to a conflict.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output configuration settings for the contextual metadata feature. Use this structure when the feed output generates metadata that describes the media content. </p>
    # @!attribute summary_generation
    #   <p>Specifies whether Elemental Inference generates a descriptive summary of the media content for this output, along with the objects and actions that it detects. This setting is independent of <code>extendedAnalysis</code>. </p> <p>Valid values:</p> <ul> <li> <p>ENABLED (default) – Elemental Inference populates the summary, objects, and actions fields, along with the IAB taxonomy and GARM suitability classifications. </p> </li> <li> <p>DISABLED – Elemental Inference doesn't populate the summary, objects, and actions fields. </p> </li> </ul>
    #   @return [String]
    # @!attribute extended_analysis
    #   <p>Specifies whether Elemental Inference generates extended analysis of the media content for this output. Extended analysis identifies the people, environments, brands, and on-screen text in the media content. This setting is independent of <code>summaryGeneration</code>. </p> <p>Valid values:</p> <ul> <li> <p>ENABLED (default) – Elemental Inference populates the people, environments, brands, and on-screen text fields. </p> </li> <li> <p>DISABLED – Elemental Inference doesn't populate the people, environments, brands, and on-screen text fields. </p> </li> </ul>
    #   @return [String]
    class ContextualMetadataConfig < Struct.new(
      nil,
      :summary_generation,
      :extended_analysis,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A user-friendly name for this dictionary.</p>
    #   @return [String]
    # @!attribute language
    #   <p>The language of the dictionary entries. Specify the language using an ISO 639-2/T three-letter code. Supported values: eng, fra, ita, deu, spa, por. </p>
    #   @return [String]
    # @!attribute entries
    #   <p>The dictionary entries payload. Contains the custom words and phrases for the dictionary. Maximum size is 40,960 characters. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>Optional tags to associate with the dictionary.</p>
    #   @return [Hash<String, String>]
    class CreateDictionaryRequest < Struct.new(
      nil,
      :name,
      :language,
      :entries,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name that you specified in the request.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the dictionary.</p>
    #   @return [String]
    # @!attribute id
    #   <p>A unique ID that Elemental Inference assigns to the dictionary.</p>
    #   @return [String]
    # @!attribute language
    #   <p>The language of the dictionary.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the dictionary. After creation succeeds, the status will be AVAILABLE. </p>
    #   @return [String]
    # @!attribute references
    #   <p>A list of feed IDs that reference this dictionary.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>Any tags that you included when you created the dictionary.</p>
    #   @return [Hash<String, String>]
    class CreateDictionaryResponse < Struct.new(
      nil,
      :name,
      :arn,
      :id,
      :language,
      :status,
      :references,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A user-friendly name for this feed.</p>
    #   @return [String]
    # @!attribute access_role_arn
    #   <p>The ARN of an IAM role that Elemental Inference assumes to access resources in your account on your behalf. For example, the smart crop feature uses this role to read graphics-compositing templates from your Amazon S3 bucket. You specify one access role for each feed. </p>
    #   @return [String]
    # @!attribute outputs
    #   <p>An array of outputs for this feed. Each output represents a specific Elemental Inference feature. For example, there is one output type for the smart crop feature. You must specify at least one output, but you can later add outputs using AssociateFeed, or add, modify, and delete outputs using UpdateFeed. </p>
    #   @return [Array<Types::CreateOutput>]
    # @!attribute tags
    #   <p>Optional tags. You can also add tags later, using TagResource.</p>
    #   @return [Hash<String, String>]
    class CreateFeedRequest < Struct.new(
      nil,
      :name,
      :access_role_arn,
      :outputs,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>A unique ARN that Elemental Inference assigns to the feed.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name that you specified in the request.</p>
    #   @return [String]
    # @!attribute id
    #   <p>A unique ID that Elemental Inference assigns to the feed.</p>
    #   @return [String]
    # @!attribute data_endpoints
    #   <p>An array of endpoints for the feed. Typically, there is only one endpoint. The feed receives source media at this endpoint (when the calling application calls PutMedia) and returns the resulting metadata to this endpoint (when the calling application calls GetMetadata). </p>
    #   @return [Array<String>]
    # @!attribute outputs
    #   <p>Repeats the outputs that you specified in the request.</p>
    #   @return [Array<Types::GetOutput>]
    # @!attribute access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that you specified in the request. This property is absent if you didn't specify an IAM role. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the feed. After creation of the feed has succeeded, the status will be AVAILABLE. </p>
    #   @return [String]
    # @!attribute association
    #   <p>The association for this feed. When you create the feed, this property is empty. You must associate a resource with the feed using AssociateFeed or UpdateFeed. </p>
    #   @return [Types::FeedAssociation]
    # @!attribute tags
    #   <p>Any tags that you included when you created the feed.</p>
    #   @return [Hash<String, String>]
    class CreateFeedResponse < Struct.new(
      nil,
      :arn,
      :name,
      :id,
      :data_endpoints,
      :outputs,
      :access_role_arn,
      :status,
      :association,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configuration information about one output in a feed. It is used in the AssociateFeed and the CreateFeed actions. </p>
    # @!attribute name
    #   <p>A name for the output.</p>
    #   @return [String]
    # @!attribute output_config
    #   <p>A typed property for an output in a feed. It identifies the action for Elemental Inference to perform. It also provides a repository for the results of that action. For example, CroppingConfig output will contain the metadata for the crop feature. </p>
    #   @return [Types::OutputConfig]
    # @!attribute status
    #   <p>The status to assign to the output.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the output.</p>
    #   @return [String]
    class CreateOutput < Struct.new(
      nil,
      :name,
      :output_config,
      :status,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A type of OutputConfig, used when the output in a feed is for the crop feature.</p>
    # @!attribute template_groups
    #   <p>An array of template groups for the crop output. Each template group provides the graphics-compositing templates that Elemental Inference applies to the cropped video. You can specify from 1 to 4 template groups. </p>
    #   @return [Array<Types::TemplateGroup>]
    class CroppingConfig < Struct.new(
      nil,
      :template_groups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the data source configuration for a clipping output. It identifies the fixture whose event data Elemental Inference maps onto the clipping metadata. It is used in the dataSourceConfiguration property of a ClippingConfig. </p>
    # @!attribute fixture_id
    #   <p>The ID of the fixture whose event data you want Elemental Inference to map onto this clipping output. The fixture should be the sports event in the source media that the feed is processing. </p> <p>To obtain this ID, use the SearchFixtures operation to find the fixture, then use the fixtureId from the matching FixtureSummary. </p>
    #   @return [String]
    class DataSourceConfiguration < Struct.new(
      nil,
      :fixture_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the dictionary to delete.</p>
    #   @return [String]
    class DeleteDictionaryRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the deleted dictionary.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the deleted dictionary.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the dictionary after deletion.</p>
    #   @return [String]
    class DeleteDictionaryResponse < Struct.new(
      nil,
      :arn,
      :id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the feed whose policy you want to delete.</p>
    #   @return [String]
    class DeleteFeedPolicyRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the feed.</p>
    #   @return [String]
    class DeleteFeedRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the deleted feed.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the deleted feed.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the feed. When deletion of the feed has succeeded, the status will be DELETED. </p>
    #   @return [String]
    class DeleteFeedResponse < Struct.new(
      nil,
      :arn,
      :id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a dictionary. Used in the ListDictionaries response. </p>
    # @!attribute arn
    #   <p>The ARN of the dictionary.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the dictionary.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the dictionary.</p>
    #   @return [String]
    # @!attribute language
    #   <p>The language of the dictionary.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the dictionary.</p>
    #   @return [String]
    class DictionarySummary < Struct.new(
      nil,
      :arn,
      :id,
      :name,
      :language,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the feed where you want to release the resource.</p>
    #   @return [String]
    # @!attribute associated_resource_name
    #   <p>The name of the resource currently associated with the feed.</p>
    #   @return [String]
    # @!attribute dry_run
    #   <p>Set to true if you want to do a dry run of the disassociate action.</p> <p>Elemental Inference will validate that the real request would succeed without actually making any changes. A dry run catches errors such as missing IAM permissions. If the dry run fails, the action returns a 4xx error code. </p>
    #   @return [Boolean]
    class DisassociateFeedRequest < Struct.new(
      nil,
      :id,
      :associated_resource_name,
      :dry_run,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the feed.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the feed.</p>
    #   @return [String]
    class DisassociateFeedResponse < Struct.new(
      nil,
      :arn,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the dictionary whose entries you want to export.</p>
    #   @return [String]
    class ExportDictionaryEntriesRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entries
    #   <p>The dictionary entries payload.</p>
    #   @return [String]
    class ExportDictionaryEntriesResponse < Struct.new(
      nil,
      :entries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the resource that is associated with a feed. It is used in the FeedSummary that is used in the response of a ListFeeds action. </p>
    # @!attribute associated_resource_name
    #   <p>The name of the associated resource.</p>
    #   @return [String]
    class FeedAssociation < Struct.new(
      nil,
      :associated_resource_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configuration information about a feed. It is used in the ListFeeds response. </p>
    # @!attribute arn
    #   <p>The ARN of the feed.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the feed.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the feed</p>
    #   @return [String]
    # @!attribute association
    #   <p>The resource, if any, associated with the feed.</p>
    #   @return [Types::FeedAssociation]
    # @!attribute status
    #   <p>The status of the feed.</p>
    #   @return [String]
    class FeedSummary < Struct.new(
      nil,
      :arn,
      :id,
      :name,
      :association,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about one fixture. It is used in the SearchFixtures response.</p> <p>Elemental Inference relays the information in this structure from the data source, so that you can identify the fixture that matches your source media. </p>
    # @!attribute fixture_id
    #   <p>The ID of the fixture. Specify this ID in the clipping output of a feed, to identify the fixture whose event data you want Elemental Inference to map onto the clipping metadata. </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the fixture, as provided by the data source. For example, the names of the two competing teams. </p>
    #   @return [String]
    # @!attribute fixture_group
    #   <p>The group that the fixture belongs to, such as the competition, league, or tournament. The data source doesn't provide this information for every fixture. </p>
    #   @return [String]
    # @!attribute scheduled_start
    #   <p>The scheduled start time of the fixture, as provided by the data source. The actual start time might differ. </p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the fixture in its lifecycle, as provided by the data source. For example, Scheduled or Completed. </p>
    #   @return [String]
    # @!attribute competitors
    #   <p>An array of the competitors (the teams or individuals) in the fixture.</p>
    #   @return [Array<Types::Competitor>]
    class FixtureSummary < Struct.new(
      nil,
      :fixture_id,
      :name,
      :fixture_group,
      :scheduled_start,
      :status,
      :competitors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request timed out before the service returned a response. This is a temporary condition. Retry the request. If the problem persists, contact AWS Support. </p>
    # @!attribute message
    #   @return [String]
    class GatewayTimedOutException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the dictionary to retrieve.</p>
    #   @return [String]
    class GetDictionaryRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the dictionary.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the dictionary.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the dictionary.</p>
    #   @return [String]
    # @!attribute language
    #   <p>The language of the dictionary.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the dictionary.</p>
    #   @return [String]
    # @!attribute references
    #   <p>A list of feed IDs that reference this dictionary.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The tags associated with the dictionary.</p>
    #   @return [Hash<String, String>]
    class GetDictionaryResponse < Struct.new(
      nil,
      :name,
      :arn,
      :id,
      :language,
      :status,
      :references,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the feed whose policy you want to retrieve.</p>
    #   @return [String]
    class GetFeedPolicyRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The resource-based policy document attached to the feed.</p>
    #   @return [String]
    class GetFeedPolicyResponse < Struct.new(
      nil,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the feed to query.</p>
    #   @return [String]
    class GetFeedRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the feed.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the feed.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the feed.</p>
    #   @return [String]
    # @!attribute data_endpoints
    #   <p>The dataEndpoints of the feed.</p>
    #   @return [Array<String>]
    # @!attribute outputs
    #   <p>An array of the outputs in the feed.</p>
    #   @return [Array<Types::GetOutput>]
    # @!attribute access_role_arn
    #   <p>The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that Elemental Inference assumes. Elemental Inference uses this role to access resources in your account on your behalf. This property is absent if the feed doesn't have an IAM role. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the feed.</p>
    #   @return [String]
    # @!attribute association
    #   <p>Information about the resource that is associated with the feed. It's possible that there is no associated resource. This is not an error. </p>
    #   @return [Types::FeedAssociation]
    # @!attribute tags
    #   <p>A list of the tags, if any, for the feed.</p>
    #   @return [Hash<String, String>]
    class GetFeedResponse < Struct.new(
      nil,
      :arn,
      :name,
      :id,
      :data_endpoints,
      :outputs,
      :access_role_arn,
      :status,
      :association,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fixture_id
    #   <p>The ID of the fixture to retrieve, as returned by SearchFixtures.</p>
    #   @return [String]
    class GetFixtureRequest < Struct.new(
      nil,
      :fixture_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fixture_id
    #   <p>The ID that you specified in the request.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the fixture, as provided by the data source. For example, the names of the two competing teams. </p>
    #   @return [String]
    # @!attribute fixture_group
    #   <p>The group that the fixture belongs to, such as the competition, league, or tournament. The data source doesn't provide this information for every fixture. </p>
    #   @return [String]
    # @!attribute scheduled_start
    #   <p>The scheduled start time of the fixture, as provided by the data source. The actual start time might differ. </p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the fixture in its lifecycle, as provided by the data source. For example, Scheduled or Completed. </p>
    #   @return [String]
    # @!attribute competitors
    #   <p>An array of the competitors (the teams or individuals) in the fixture.</p>
    #   @return [Array<Types::Competitor>]
    class GetFixtureResponse < Struct.new(
      nil,
      :fixture_id,
      :name,
      :fixture_group,
      :scheduled_start,
      :status,
      :competitors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configuration information about one output in a feed. It is used in the GetFeed response. </p>
    # @!attribute name
    #   <p>The name of the output.</p>
    #   @return [String]
    # @!attribute output_config
    #   <p>A typed property for an output in a feed. It identifies the action for Elemental Inference to perform. It also provides a repository for the results of that action. For example, CroppingConfig output will contain the metadata for the crop feature. </p>
    #   @return [Types::OutputConfig]
    # @!attribute status
    #   <p>The status of the output.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the output.</p>
    #   @return [String]
    # @!attribute from_association
    #   <p>True means that the output was originally created in the feed using AssociateFeed. False means it was created using CreateFeed or UpdateFeed. </p> <p>You will need this value if you use UpdateFeed to modify the list of outputs in the feed.</p>
    #   @return [Boolean]
    class GetOutput < Struct.new(
      nil,
      :name,
      :output_config,
      :status,
      :description,
      :from_association,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An internal server error occurred. This is a temporary condition and the request can be retried. If the problem persists, contact AWS Support. </p>
    # @!attribute message
    #   @return [String]
    class InternalServerErrorException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return per API request. Valid range: 1 to 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that identifies the next batch of results to return.</p>
    #   @return [String]
    class ListDictionariesRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dictionaries
    #   <p>A list of DictionarySummary objects.</p>
    #   @return [Array<Types::DictionarySummary>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next batch of results.</p>
    #   @return [String]
    class ListDictionariesResponse < Struct.new(
      nil,
      :dictionaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return per API request.</p> <p>For example, you submit a list request with MaxResults set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a NextToken value that you can use to fetch the next batch of results.) </p> <p>The service might return fewer results than the MaxResults value. If MaxResults is not included in the request, the service defaults to pagination with a maximum of 10 results per page. </p> <p>Valid Range: Minimum value of 1. Maximum value of 1000.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that identifies the batch of results that you want to see.</p> <p>For example, you submit a ListFeeds request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a NextToken value. To see the next batch of results, you can submit the ListFeeds request a second time and specify the NextToken value. </p>
    #   @return [String]
    class ListFeedsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute feeds
    #   <p>A list of FeedSummary objects.</p>
    #   @return [Array<Types::FeedSummary>]
    # @!attribute next_token
    #   <p>The token that identifies the batch of results that you want to see. For example, you submit a list request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a NextToken value. To see the next batch of results, you can submit the list request a second time and specify the NextToken value. </p>
    #   @return [String]
    class ListFeedsResponse < Struct.new(
      nil,
      :feeds,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource whose tags you want to query.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A list of the tags that belong to this resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains one typed output. It is used in the CreateOutput, GetOutput, and Update Output structures.</p>
    # @!attribute cropping
    #   <p>The output config type that applies to the cropping feature.</p>
    #   @return [Types::CroppingConfig]
    # @!attribute clipping
    #   <p>The output config type that applies to the clipping feature.</p>
    #   @return [Types::ClippingConfig]
    # @!attribute subtitling
    #   <p>The output config type that applies to the smart subtitling feature.</p>
    #   @return [Types::SubtitlingConfig]
    # @!attribute contextual_metadata
    #   <p>The output config type that applies to the contextual metadata feature.</p>
    #   @return [Types::ContextualMetadataConfig]
    class OutputConfig < Struct.new(
      :cropping,
      :clipping,
      :subtitling,
      :contextual_metadata,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Cropping < OutputConfig; end
      class Clipping < OutputConfig; end
      class Subtitling < OutputConfig; end
      class ContextualMetadata < OutputConfig; end
      class Unknown < OutputConfig; end
    end

    # @!attribute id
    #   <p>The ID of the feed to attach the policy to.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The resource-based policy document to attach to the feed.</p>
    #   @return [String]
    class PutFeedPolicyRequest < Struct.new(
      nil,
      :id,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PutFeedPolicyResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource specified in the action doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter for a fixture search. It is used in the filters array of a SearchFixtures request. </p>
    # @!attribute name
    #   <p>The dimension of the fixture to filter on. Valid values: COMPETITOR.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array of values to match in the dimension that you specified in name. You can specify up to 10 values. A fixture appears in the results if it matches at least one of these values. </p>
    #   @return [Array<String>]
    class SearchFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sport
    #   <p>The sport to search for fixtures. Valid values: basketball (search for basketball fixtures), american-football (search for american-football fixtures). </p>
    #   @return [String]
    # @!attribute start_date
    #   <p>The first day of the search window, in UTC. The search includes fixtures that are scheduled on this day. </p> <p>Specify the date in ISO 8601 format, as <code>YYYY-MM-DD</code>. For example, 2026-03-14. </p>
    #   @return [String]
    # @!attribute end_date
    #   <p>The last day of the search window, in UTC. The search includes fixtures that are scheduled on this day. Specify the date in ISO 8601 format, as <code>YYYY-MM-DD</code>. </p> <p>If you omit this parameter, Elemental Inference searches only the day that you specified in startDate. The window from startDate through endDate must not exceed seven days. </p>
    #   @return [String]
    # @!attribute filters
    #   <p>An array of filters that narrow the results. Each filter applies to one dimension of a fixture, such as the competitor. You can specify up to 10 filters. </p> <p>A fixture must satisfy every filter in the array in order to appear in the results. Within one filter, a fixture must match at least one of the values. </p>
    #   @return [Array<Types::SearchFilter>]
    # @!attribute max_results
    #   <p>The maximum number of fixtures to return for each API request.</p> <p>The service might return fewer fixtures than the maxResults value. When more fixtures match the search, the response also includes a nextToken value that you can use to fetch the next batch of results. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that identifies the batch of results that you want to see.</p> <p>For example, you submit a SearchFixtures request with maxResults set at 5. The service returns the first batch of results (up to 5) and a nextToken value. To see the next batch of results, you submit the SearchFixtures request a second time, with the same search criteria, and specify the nextToken value. </p>
    #   @return [String]
    class SearchFixturesRequest < Struct.new(
      nil,
      :sport,
      :start_date,
      :end_date,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fixtures
    #   <p>An array of FixtureSummary objects, one for each fixture that matches the search. The array is empty if no fixtures match. </p>
    #   @return [Array<Types::FixtureSummary>]
    # @!attribute next_token
    #   <p>The token that identifies the next batch of results. To see the next batch, submit the SearchFixtures request again, with the same search criteria, and specify this value in nextToken. </p> <p>This parameter is absent when there are no more results to return.</p>
    #   @return [String]
    class SearchFixturesResponse < Struct.new(
      nil,
      :fixtures,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was rejected because it would exceed one or more service quotas for your account. Review your service quotas and either delete unused resources or request a quota increase. </p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service is temporarily unable to handle the request. Retry the request. If the problem persists, contact AWS Support. </p>
    # @!attribute message
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A type of OutputConfig, used when the output in a feed is for the smart subtitling feature. Smart subtitling uses automatic speech recognition (ASR) to generate live TTML subtitles from the audio in your source media. </p>
    # @!attribute language
    #   <p>The language of the audio in the source media. Elemental Inference uses this setting to optimize transcription accuracy. Specify the language using an ISO 639-2/T three-letter code, optionally with a region subtag. Supported values: eng, eng-au, eng-gb, eng-us, fra, ita, deu, spa, por. </p>
    #   @return [String]
    # @!attribute aspect_ratio
    #   <p>The aspect ratio of the output video, specified as width and height integer values. Elemental Inference uses the aspect ratio to determine subtitle layout and line lengths. </p>
    #   @return [Types::AspectRatio]
    # @!attribute dictionary
    #   <p>The ID of a custom dictionary to improve transcription accuracy for domain-specific terminology. Use the CreateDictionary operation to create a dictionary. </p>
    #   @return [String]
    # @!attribute profanity_filter
    #   <p>Controls how profanity is handled in the generated subtitles. Valid values: DISABLED (no filtering, default), CENSOR (replace profanity with asterisks), DROP (remove profanity from the transcript). </p>
    #   @return [String]
    class SubtitlingConfig < Struct.new(
      nil,
      :language,
      :aspect_ratio,
      :dictionary,
      :profanity_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource where you want to add tags.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags to add to the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A named set of graphics-compositing templates used by the crop feature, specified in the templateGroups array of a CroppingConfig. </p>
    # @!attribute name
    #   <p>A name for the template group.</p>
    #   @return [String]
    # @!attribute template_uris
    #   <p>An array of Amazon S3 URIs that point to the graphics-compositing templates for this group. You can specify 1 or 2 URIs. Each URI must be in the form <code>s3://bucket-name/key</code>. Elemental Inference reads these templates using the IAM role that you specify in accessRoleArn. </p>
    #   @return [Array<String>]
    class TemplateGroup < Struct.new(
      nil,
      :name,
      :template_uris,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling. Too many requests have been made within a given time period. Reduce the frequency of requests and use exponential backoff when retrying. </p>
    # @!attribute message
    #   @return [String]
    class TooManyRequestException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource where you want to delete one or more tags.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys of the tags to delete.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the dictionary to update.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A new name for the dictionary. If not specified, the name is not changed.</p>
    #   @return [String]
    # @!attribute language
    #   <p>A new language for the dictionary. If not specified, the language is not changed.</p>
    #   @return [String]
    # @!attribute entries
    #   <p>New dictionary entries. If not specified, the entries are not changed.</p>
    #   @return [String]
    class UpdateDictionaryRequest < Struct.new(
      nil,
      :id,
      :name,
      :language,
      :entries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The updated or original name of the dictionary.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the dictionary.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the dictionary.</p>
    #   @return [String]
    # @!attribute language
    #   <p>The updated or original language of the dictionary.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the dictionary.</p>
    #   @return [String]
    # @!attribute references
    #   <p>A list of feed IDs that reference this dictionary.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>Any tags associated with the dictionary.</p>
    #   @return [Hash<String, String>]
    class UpdateDictionaryResponse < Struct.new(
      nil,
      :name,
      :arn,
      :id,
      :language,
      :status,
      :references,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Required. You can specify the existing name (to leave it unchanged) or a new name. </p>
    #   @return [String]
    # @!attribute access_role_arn
    #   <p>The ARN of an IAM role that Elemental Inference assumes to access resources in your account on your behalf. You can specify the existing role (to leave it unchanged) or a new role. You specify one access role for each feed. </p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the feed to update.</p>
    #   @return [String]
    # @!attribute outputs
    #   <p>Required. You can specify the existing array of outputs (to leave outputs unchanged) or you can specify a new array. </p>
    #   @return [Array<Types::UpdateOutput>]
    class UpdateFeedRequest < Struct.new(
      nil,
      :name,
      :access_role_arn,
      :id,
      :outputs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the feed.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The updated or original name of the feed.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the feed.</p>
    #   @return [String]
    # @!attribute data_endpoints
    #   <p>The data endpoints of the feed.</p>
    #   @return [Array<String>]
    # @!attribute outputs
    #   <p>The array of outputs in the feed. You might have left this array unchanged, or you might have changed it. </p>
    #   @return [Array<Types::GetOutput>]
    # @!attribute access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role for the feed, after the update. This property is absent if the feed doesn't have an IAM role. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the feed.</p>
    #   @return [String]
    # @!attribute association
    #   <p>Information about the resource that is associated with the feed, if any.</p>
    #   @return [Types::FeedAssociation]
    # @!attribute tags
    #   <p>The tags associated with the feed.</p>
    #   @return [Hash<String, String>]
    class UpdateFeedResponse < Struct.new(
      nil,
      :arn,
      :name,
      :id,
      :data_endpoints,
      :outputs,
      :access_role_arn,
      :status,
      :association,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configuration information about one output in a feed. It is used in the UpdateFeed action. </p>
    # @!attribute name
    #   <p>The name of the output.</p>
    #   @return [String]
    # @!attribute output_config
    #   <p>A typed property for an output in a feed. It identifies the action for Elemental Inference to perform. It also provides a repository for the results of that action. For example, CroppingConfig output will contain the metadata for the crop feature. </p>
    #   @return [Types::OutputConfig]
    # @!attribute status
    #   <p>The status of the output.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the output.</p>
    #   @return [String]
    # @!attribute from_association
    #   <p>Elemental Inference originally sets this parameter to True if this output was created by AssociateFeed or to False if this output was created by CreateFeed or UpdateFeed. </p> <p>You must not change this value. Therefore, use GetFeed to determine the current value. Then in the UpdateFeed request, if the current value is True, include this parameter with a value of True. If it's False, omit the parameter. </p>
    #   @return [Boolean]
    class UpdateOutput < Struct.new(
      nil,
      :name,
      :output_config,
      :status,
      :description,
      :from_association,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by the service. Check the error message for details about which parameter or field is invalid and correct the request before retrying. </p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
