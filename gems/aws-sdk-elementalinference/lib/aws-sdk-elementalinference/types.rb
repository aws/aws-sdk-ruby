# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ElementalInference
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The width and height of the output video. Used in SubtitlingConfig to
    # determine subtitle layout.
    #
    # @!attribute [rw] width
    #   The width component of the aspect ratio (for example, 16 in a 16:9
    #   ratio).
    #   @return [Integer]
    #
    # @!attribute [rw] height
    #   The height component of the aspect ratio (for example, 9 in a 16:9
    #   ratio).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/AspectRatio AWS API Documentation
    #
    class AspectRatio < Struct.new(
      :width,
      :height)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the feed.
    #   @return [String]
    #
    # @!attribute [rw] associated_resource_name
    #   An identifier for the resource. This name must not resemble an ARN.
    #
    #   The resource is the source media that the feed will process. The
    #   name you assign should help you to later identify the source media
    #   that belongs to the feed. In this way, you will know which source
    #   media to push to the feed (using PutMedia).
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   An array of one or more outputs that you want to add to this feed
    #   now, to supplement any outputs that you specified when you created
    #   or updated the feed.
    #   @return [Array<Types::CreateOutput>]
    #
    # @!attribute [rw] dry_run
    #   Set to true if you want to do a dry run of the associate action.
    #
    #   Elemental Inference will validate that the real request would
    #   succeed without actually making any changes. A dry run catches
    #   errors such as missing IAM permissions, quota limits exceeded,
    #   conflicting outputs, and so on. If the dry run fails, the action
    #   returns a 4xx error code. After you've fixed the errors, resubmit
    #   the request.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/AssociateFeedRequest AWS API Documentation
    #
    class AssociateFeedRequest < Struct.new(
      :id,
      :associated_resource_name,
      :outputs,
      :dry_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the feed.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the feed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/AssociateFeedResponse AWS API Documentation
    #
    class AssociateFeedResponse < Struct.new(
      :arn,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A type of OutputConfig, used when the output in a feed is for the clip
    # feature.
    #
    # @!attribute [rw] callback_metadata
    #   A string that you want Elemental Inference to always include in the
    #   event clipping metadata for this output. The string might identify
    #   the sports event in the source media, for example.
    #   @return [String]
    #
    # @!attribute [rw] data_source_configuration
    #   The data source to map onto this clipping output. This parameter is
    #   optional. When you include this parameter, Elemental Inference reads
    #   the event data for the fixture that you specify, and includes that
    #   data in the event clipping metadata for this output.
    #
    #   If you omit this parameter, Elemental Inference doesn't map a data
    #   source onto this output.
    #   @return [Types::DataSourceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ClippingConfig AWS API Documentation
    #
    class ClippingConfig < Struct.new(
      :callback_metadata,
      :data_source_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about one competitor in a fixture. It is used in
    # the FixtureSummary that is in the SearchFixtures response.
    #
    # @!attribute [rw] name
    #   The name of the competitor, as provided by the data source.
    #   @return [String]
    #
    # @!attribute [rw] is_home
    #   Specifies whether this competitor is the home side in the fixture.
    #   If true, this competitor is the home side. If false, this competitor
    #   is the away side.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/Competitor AWS API Documentation
    #
    class Competitor < Struct.new(
      :name,
      :is_home)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be completed due to a conflict.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A user-friendly name for this dictionary.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The language of the dictionary entries. Specify the language using
    #   an ISO 639-2/T three-letter code. Supported values: eng, fra, ita,
    #   deu, spa, por.
    #   @return [String]
    #
    # @!attribute [rw] entries
    #   The dictionary entries payload. Contains the custom words and
    #   phrases for the dictionary. Maximum size is 40,960 characters.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Optional tags to associate with the dictionary.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/CreateDictionaryRequest AWS API Documentation
    #
    class CreateDictionaryRequest < Struct.new(
      :name,
      :language,
      :entries,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name that you specified in the request.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the dictionary.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique ID that Elemental Inference assigns to the dictionary.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The language of the dictionary.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the dictionary. After creation succeeds, the
    #   status will be AVAILABLE.
    #   @return [String]
    #
    # @!attribute [rw] references
    #   A list of feed IDs that reference this dictionary.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Any tags that you included when you created the dictionary.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/CreateDictionaryResponse AWS API Documentation
    #
    class CreateDictionaryResponse < Struct.new(
      :name,
      :arn,
      :id,
      :language,
      :status,
      :references,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A user-friendly name for this feed.
    #   @return [String]
    #
    # @!attribute [rw] access_role_arn
    #   The ARN of an IAM role that Elemental Inference assumes to access
    #   resources in your account on your behalf. For example, the smart
    #   crop feature uses this role to read graphics-compositing templates
    #   from your Amazon S3 bucket. You specify one access role for each
    #   feed.
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   An array of outputs for this feed. Each output represents a specific
    #   Elemental Inference feature. For example, there is one output type
    #   for the smart crop feature. You must specify at least one output,
    #   but you can later add outputs using AssociateFeed, or add, modify,
    #   and delete outputs using UpdateFeed.
    #   @return [Array<Types::CreateOutput>]
    #
    # @!attribute [rw] tags
    #   Optional tags. You can also add tags later, using TagResource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/CreateFeedRequest AWS API Documentation
    #
    class CreateFeedRequest < Struct.new(
      :name,
      :access_role_arn,
      :outputs,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   A unique ARN that Elemental Inference assigns to the feed.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name that you specified in the request.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique ID that Elemental Inference assigns to the feed.
    #   @return [String]
    #
    # @!attribute [rw] data_endpoints
    #   An array of endpoints for the feed. Typically, there is only one
    #   endpoint. The feed receives source media at this endpoint (when the
    #   calling application calls PutMedia) and returns the resulting
    #   metadata to this endpoint (when the calling application calls
    #   GetMetadata).
    #   @return [Array<String>]
    #
    # @!attribute [rw] outputs
    #   Repeats the outputs that you specified in the request.
    #   @return [Array<Types::GetOutput>]
    #
    # @!attribute [rw] status
    #   The current status of the feed. After creation of the feed has
    #   succeeded, the status will be AVAILABLE.
    #   @return [String]
    #
    # @!attribute [rw] association
    #   The association for this feed. When you create the feed, this
    #   property is empty. You must associate a resource with the feed using
    #   AssociateFeed or UpdateFeed.
    #   @return [Types::FeedAssociation]
    #
    # @!attribute [rw] tags
    #   Any tags that you included when you created the feed.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/CreateFeedResponse AWS API Documentation
    #
    class CreateFeedResponse < Struct.new(
      :arn,
      :name,
      :id,
      :data_endpoints,
      :outputs,
      :status,
      :association,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configuration information about one output in a feed. It is
    # used in the AssociateFeed and the CreateFeed actions.
    #
    # @!attribute [rw] name
    #   A name for the output.
    #   @return [String]
    #
    # @!attribute [rw] output_config
    #   A typed property for an output in a feed. It identifies the action
    #   for Elemental Inference to perform. It also provides a repository
    #   for the results of that action. For example, CroppingConfig output
    #   will contain the metadata for the crop feature.
    #   @return [Types::OutputConfig]
    #
    # @!attribute [rw] status
    #   The status to assign to the output.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/CreateOutput AWS API Documentation
    #
    class CreateOutput < Struct.new(
      :name,
      :output_config,
      :status,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # A type of OutputConfig, used when the output in a feed is for the crop
    # feature.
    #
    # @!attribute [rw] template_groups
    #   An array of template groups for the crop output. Each template group
    #   provides the graphics-compositing templates that Elemental Inference
    #   applies to the cropped video. You can specify from 1 to 4 template
    #   groups.
    #   @return [Array<Types::TemplateGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/CroppingConfig AWS API Documentation
    #
    class CroppingConfig < Struct.new(
      :template_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the data source configuration for a clipping output. It
    # identifies the fixture whose event data Elemental Inference maps onto
    # the clipping metadata. It is used in the dataSourceConfiguration
    # property of a ClippingConfig.
    #
    # @!attribute [rw] fixture_id
    #   The ID of the fixture whose event data you want Elemental Inference
    #   to map onto this clipping output. The fixture should be the sports
    #   event in the source media that the feed is processing.
    #
    #   To obtain this ID, use the SearchFixtures operation to find the
    #   fixture, then use the fixtureId from the matching FixtureSummary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DataSourceConfiguration AWS API Documentation
    #
    class DataSourceConfiguration < Struct.new(
      :fixture_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the dictionary to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DeleteDictionaryRequest AWS API Documentation
    #
    class DeleteDictionaryRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the deleted dictionary.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the deleted dictionary.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the dictionary after deletion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DeleteDictionaryResponse AWS API Documentation
    #
    class DeleteDictionaryResponse < Struct.new(
      :arn,
      :id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the feed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DeleteFeedRequest AWS API Documentation
    #
    class DeleteFeedRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the deleted feed.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the deleted feed.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the feed. When deletion of the feed has
    #   succeeded, the status will be DELETED.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DeleteFeedResponse AWS API Documentation
    #
    class DeleteFeedResponse < Struct.new(
      :arn,
      :id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a dictionary. Used in the
    # ListDictionaries response.
    #
    # @!attribute [rw] arn
    #   The ARN of the dictionary.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the dictionary.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the dictionary.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The language of the dictionary.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the dictionary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DictionarySummary AWS API Documentation
    #
    class DictionarySummary < Struct.new(
      :arn,
      :id,
      :name,
      :language,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the feed where you want to release the resource.
    #   @return [String]
    #
    # @!attribute [rw] associated_resource_name
    #   The name of the resource currently associated with the feed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Set to true if you want to do a dry run of the disassociate action.
    #
    #   Elemental Inference will validate that the real request would
    #   succeed without actually making any changes. A dry run catches
    #   errors such as missing IAM permissions. If the dry run fails, the
    #   action returns a 4xx error code.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DisassociateFeedRequest AWS API Documentation
    #
    class DisassociateFeedRequest < Struct.new(
      :id,
      :associated_resource_name,
      :dry_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the feed.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the feed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DisassociateFeedResponse AWS API Documentation
    #
    class DisassociateFeedResponse < Struct.new(
      :arn,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the dictionary whose entries you want to export.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ExportDictionaryEntriesRequest AWS API Documentation
    #
    class ExportDictionaryEntriesRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entries
    #   The dictionary entries payload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ExportDictionaryEntriesResponse AWS API Documentation
    #
    class ExportDictionaryEntriesResponse < Struct.new(
      :entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the resource that is associated with a
    # feed. It is used in the FeedSummary that is used in the response of a
    # ListFeeds action.
    #
    # @!attribute [rw] associated_resource_name
    #   The name of the associated resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/FeedAssociation AWS API Documentation
    #
    class FeedAssociation < Struct.new(
      :associated_resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configuration information about a feed. It is used in the
    # ListFeeds response.
    #
    # @!attribute [rw] arn
    #   The ARN of the feed.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the feed.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the feed
    #   @return [String]
    #
    # @!attribute [rw] association
    #   The resource, if any, associated with the feed.
    #   @return [Types::FeedAssociation]
    #
    # @!attribute [rw] status
    #   The status of the feed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/FeedSummary AWS API Documentation
    #
    class FeedSummary < Struct.new(
      :arn,
      :id,
      :name,
      :association,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about one fixture. It is used in the
    # SearchFixtures response.
    #
    # Elemental Inference relays the information in this structure from the
    # data source, so that you can identify the fixture that matches your
    # source media.
    #
    # @!attribute [rw] fixture_id
    #   The ID of the fixture. Specify this ID in the clipping output of a
    #   feed, to identify the fixture whose event data you want Elemental
    #   Inference to map onto the clipping metadata.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the fixture, as provided by the data source. For
    #   example, the names of the two competing teams.
    #   @return [String]
    #
    # @!attribute [rw] fixture_group
    #   The group that the fixture belongs to, such as the competition,
    #   league, or tournament. The data source doesn't provide this
    #   information for every fixture.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_start
    #   The scheduled start time of the fixture, as provided by the data
    #   source. The actual start time might differ.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the fixture in its lifecycle, as provided by the data
    #   source. For example, Scheduled or Completed.
    #   @return [String]
    #
    # @!attribute [rw] competitors
    #   An array of the competitors (the teams or individuals) in the
    #   fixture.
    #   @return [Array<Types::Competitor>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/FixtureSummary AWS API Documentation
    #
    class FixtureSummary < Struct.new(
      :fixture_id,
      :name,
      :fixture_group,
      :scheduled_start,
      :status,
      :competitors)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request timed out before the service returned a response. This is
    # a temporary condition. Retry the request. If the problem persists,
    # contact AWS Support.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/GatewayTimedOutException AWS API Documentation
    #
    class GatewayTimedOutException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the dictionary to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/GetDictionaryRequest AWS API Documentation
    #
    class GetDictionaryRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the dictionary.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the dictionary.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the dictionary.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The language of the dictionary.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the dictionary.
    #   @return [String]
    #
    # @!attribute [rw] references
    #   A list of feed IDs that reference this dictionary.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags associated with the dictionary.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/GetDictionaryResponse AWS API Documentation
    #
    class GetDictionaryResponse < Struct.new(
      :name,
      :arn,
      :id,
      :language,
      :status,
      :references,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the feed to query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/GetFeedRequest AWS API Documentation
    #
    class GetFeedRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the feed.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the feed.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the feed.
    #   @return [String]
    #
    # @!attribute [rw] data_endpoints
    #   The dataEndpoints of the feed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] outputs
    #   An array of the outputs in the feed.
    #   @return [Array<Types::GetOutput>]
    #
    # @!attribute [rw] status
    #   The status of the feed.
    #   @return [String]
    #
    # @!attribute [rw] association
    #   Information about the resource that is associated with the feed.
    #   It's possible that there is no associated resource. This is not an
    #   error.
    #   @return [Types::FeedAssociation]
    #
    # @!attribute [rw] tags
    #   A list of the tags, if any, for the feed.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/GetFeedResponse AWS API Documentation
    #
    class GetFeedResponse < Struct.new(
      :arn,
      :name,
      :id,
      :data_endpoints,
      :outputs,
      :status,
      :association,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configuration information about one output in a feed. It is
    # used in the GetFeed response.
    #
    # @!attribute [rw] name
    #   The name of the output.
    #   @return [String]
    #
    # @!attribute [rw] output_config
    #   A typed property for an output in a feed. It identifies the action
    #   for Elemental Inference to perform. It also provides a repository
    #   for the results of that action. For example, CroppingConfig output
    #   will contain the metadata for the crop feature.
    #   @return [Types::OutputConfig]
    #
    # @!attribute [rw] status
    #   The status of the output.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the output.
    #   @return [String]
    #
    # @!attribute [rw] from_association
    #   True means that the output was originally created in the feed using
    #   AssociateFeed. False means it was created using CreateFeed or
    #   UpdateFeed.
    #
    #   You will need this value if you use UpdateFeed to modify the list of
    #   outputs in the feed.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/GetOutput AWS API Documentation
    #
    class GetOutput < Struct.new(
      :name,
      :output_config,
      :status,
      :description,
      :from_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal server error occurred. This is a temporary condition and
    # the request can be retried. If the problem persists, contact AWS
    # Support.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/InternalServerErrorException AWS API Documentation
    #
    class InternalServerErrorException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return per API request. Valid
    #   range: 1 to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that identifies the next batch of results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ListDictionariesRequest AWS API Documentation
    #
    class ListDictionariesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dictionaries
    #   A list of DictionarySummary objects.
    #   @return [Array<Types::DictionarySummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next batch of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ListDictionariesResponse AWS API Documentation
    #
    class ListDictionariesResponse < Struct.new(
      :dictionaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return per API request.
    #
    #   For example, you submit a list request with MaxResults set at 5.
    #   Although 20 items match your request, the service returns no more
    #   than the first 5 items. (The service also returns a NextToken value
    #   that you can use to fetch the next batch of results.)
    #
    #   The service might return fewer results than the MaxResults value. If
    #   MaxResults is not included in the request, the service defaults to
    #   pagination with a maximum of 10 results per page.
    #
    #   Valid Range: Minimum value of 1. Maximum value of 1000.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that identifies the batch of results that you want to see.
    #
    #   For example, you submit a ListFeeds request with MaxResults set at
    #   5. The service returns the first batch of results (up to 5) and a
    #   NextToken value. To see the next batch of results, you can submit
    #   the ListFeeds request a second time and specify the NextToken value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ListFeedsRequest AWS API Documentation
    #
    class ListFeedsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] feeds
    #   A list of FeedSummary objects.
    #   @return [Array<Types::FeedSummary>]
    #
    # @!attribute [rw] next_token
    #   The token that identifies the batch of results that you want to see.
    #   For example, you submit a list request with MaxResults set at 5. The
    #   service returns the first batch of results (up to 5) and a NextToken
    #   value. To see the next batch of results, you can submit the list
    #   request a second time and specify the NextToken value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ListFeedsResponse AWS API Documentation
    #
    class ListFeedsResponse < Struct.new(
      :feeds,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource whose tags you want to query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of the tags that belong to this resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains one typed output. It is used in the CreateOutput, GetOutput,
    # and Update Output structures.
    #
    # @note OutputConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @note OutputConfig is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of OutputConfig corresponding to the set member.
    #
    # @!attribute [rw] cropping
    #   The output config type that applies to the cropping feature.
    #   @return [Types::CroppingConfig]
    #
    # @!attribute [rw] clipping
    #   The output config type that applies to the clipping feature.
    #   @return [Types::ClippingConfig]
    #
    # @!attribute [rw] subtitling
    #   The output config type that applies to the smart subtitling feature.
    #   @return [Types::SubtitlingConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/OutputConfig AWS API Documentation
    #
    class OutputConfig < Struct.new(
      :cropping,
      :clipping,
      :subtitling,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Cropping < OutputConfig; end
      class Clipping < OutputConfig; end
      class Subtitling < OutputConfig; end
      class Unknown < OutputConfig; end
    end

    # The resource specified in the action doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter for a fixture search. It is used in the filters array of a
    # SearchFixtures request.
    #
    # @!attribute [rw] name
    #   The dimension of the fixture to filter on. Valid values: COMPETITOR.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   An array of values to match in the dimension that you specified in
    #   name. You can specify up to 10 values. A fixture appears in the
    #   results if it matches at least one of these values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/SearchFilter AWS API Documentation
    #
    class SearchFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sport
    #   The sport to search for fixtures. Valid values: basketball (search
    #   for basketball fixtures), american-football (search for
    #   american-football fixtures).
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The first day of the search window, in UTC. The search includes
    #   fixtures that are scheduled on this day.
    #
    #   Specify the date in ISO 8601 format, as `YYYY-MM-DD`. For example,
    #   2026-03-14.
    #   @return [String]
    #
    # @!attribute [rw] end_date
    #   The last day of the search window, in UTC. The search includes
    #   fixtures that are scheduled on this day. Specify the date in ISO
    #   8601 format, as `YYYY-MM-DD`.
    #
    #   If you omit this parameter, Elemental Inference searches only the
    #   day that you specified in startDate. The window from startDate
    #   through endDate must not exceed seven days.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   An array of filters that narrow the results. Each filter applies to
    #   one dimension of a fixture, such as the competitor. You can specify
    #   up to 10 filters.
    #
    #   A fixture must satisfy every filter in the array in order to appear
    #   in the results. Within one filter, a fixture must match at least one
    #   of the values.
    #   @return [Array<Types::SearchFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of fixtures to return for each API request.
    #
    #   The service might return fewer fixtures than the maxResults value.
    #   When more fixtures match the search, the response also includes a
    #   nextToken value that you can use to fetch the next batch of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that identifies the batch of results that you want to see.
    #
    #   For example, you submit a SearchFixtures request with maxResults set
    #   at 5. The service returns the first batch of results (up to 5) and a
    #   nextToken value. To see the next batch of results, you submit the
    #   SearchFixtures request a second time, with the same search criteria,
    #   and specify the nextToken value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/SearchFixturesRequest AWS API Documentation
    #
    class SearchFixturesRequest < Struct.new(
      :sport,
      :start_date,
      :end_date,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fixtures
    #   An array of FixtureSummary objects, one for each fixture that
    #   matches the search. The array is empty if no fixtures match.
    #   @return [Array<Types::FixtureSummary>]
    #
    # @!attribute [rw] next_token
    #   The token that identifies the next batch of results. To see the next
    #   batch, submit the SearchFixtures request again, with the same search
    #   criteria, and specify this value in nextToken.
    #
    #   This parameter is absent when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/SearchFixturesResponse AWS API Documentation
    #
    class SearchFixturesResponse < Struct.new(
      :fixtures,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because it would exceed one or more service
    # quotas for your account. Review your service quotas and either delete
    # unused resources or request a quota increase.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service is temporarily unable to handle the request. Retry the
    # request. If the problem persists, contact AWS Support.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A type of OutputConfig, used when the output in a feed is for the
    # smart subtitling feature. smart subtitling uses automatic speech
    # recognition (ASR) to generate live TTML subtitles from the audio in
    # your source media.
    #
    # @!attribute [rw] language
    #   The language of the audio in the source media. Elemental Inference
    #   uses this setting to optimize transcription accuracy. Specify the
    #   language using an ISO 639-2/T three-letter code, optionally with a
    #   region subtag. Supported values: eng, eng-au, eng-gb, eng-us, fra,
    #   ita, deu, spa, por.
    #   @return [String]
    #
    # @!attribute [rw] aspect_ratio
    #   The aspect ratio of the output video, specified as width and height
    #   integer values. Elemental Inference uses the aspect ratio to
    #   determine subtitle layout and line lengths.
    #   @return [Types::AspectRatio]
    #
    # @!attribute [rw] dictionary
    #   The ID of a custom dictionary to improve transcription accuracy for
    #   domain-specific terminology. Use the CreateDictionary operation to
    #   create a dictionary.
    #   @return [String]
    #
    # @!attribute [rw] profanity_filter
    #   Controls how profanity is handled in the generated subtitles. Valid
    #   values: DISABLED (no filtering, default), CENSOR (replace profanity
    #   with asterisks), DROP (remove profanity from the transcript).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/SubtitlingConfig AWS API Documentation
    #
    class SubtitlingConfig < Struct.new(
      :language,
      :aspect_ratio,
      :dictionary,
      :profanity_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource where you want to add tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to add to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A named set of graphics-compositing templates used by the crop
    # feature, specified in the templateGroups array of a CroppingConfig.
    #
    # @!attribute [rw] name
    #   A name for the template group.
    #   @return [String]
    #
    # @!attribute [rw] template_uris
    #   An array of Amazon S3 URIs that point to the graphics-compositing
    #   templates for this group. You can specify 1 or 2 URIs. Each URI must
    #   be in the form `s3://bucket-name/key`. Elemental Inference reads
    #   these templates using the IAM role that you specify in
    #   accessRoleArn.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/TemplateGroup AWS API Documentation
    #
    class TemplateGroup < Struct.new(
      :name,
      :template_uris)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling. Too many requests
    # have been made within a given time period. Reduce the frequency of
    # requests and use exponential backoff when retrying.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/TooManyRequestException AWS API Documentation
    #
    class TooManyRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource where you want to delete one or more tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the dictionary to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A new name for the dictionary. If not specified, the name is not
    #   changed.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   A new language for the dictionary. If not specified, the language is
    #   not changed.
    #   @return [String]
    #
    # @!attribute [rw] entries
    #   New dictionary entries. If not specified, the entries are not
    #   changed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/UpdateDictionaryRequest AWS API Documentation
    #
    class UpdateDictionaryRequest < Struct.new(
      :id,
      :name,
      :language,
      :entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The updated or original name of the dictionary.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the dictionary.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the dictionary.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The updated or original language of the dictionary.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the dictionary.
    #   @return [String]
    #
    # @!attribute [rw] references
    #   A list of feed IDs that reference this dictionary.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Any tags associated with the dictionary.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/UpdateDictionaryResponse AWS API Documentation
    #
    class UpdateDictionaryResponse < Struct.new(
      :name,
      :arn,
      :id,
      :language,
      :status,
      :references,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Required. You can specify the existing name (to leave it unchanged)
    #   or a new name.
    #   @return [String]
    #
    # @!attribute [rw] access_role_arn
    #   The ARN of an IAM role that Elemental Inference assumes to access
    #   resources in your account on your behalf. You can specify the
    #   existing role (to leave it unchanged) or a new role. You specify one
    #   access role for each feed.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the feed to update.
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   Required. You can specify the existing array of outputs (to leave
    #   outputs unchanged) or you can specify a new array.
    #   @return [Array<Types::UpdateOutput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/UpdateFeedRequest AWS API Documentation
    #
    class UpdateFeedRequest < Struct.new(
      :name,
      :access_role_arn,
      :id,
      :outputs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the feed.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated or original name of the feed.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the feed.
    #   @return [String]
    #
    # @!attribute [rw] data_endpoints
    #   The data endpoints of the feed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] outputs
    #   The array of outputs in the feed. You might have left this array
    #   unchanged, or you might have changed it.
    #   @return [Array<Types::GetOutput>]
    #
    # @!attribute [rw] status
    #   The status of the feed.
    #   @return [String]
    #
    # @!attribute [rw] association
    #   Information about the resource that is associated with the feed, if
    #   any.
    #   @return [Types::FeedAssociation]
    #
    # @!attribute [rw] tags
    #   The tags associated with the feed.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/UpdateFeedResponse AWS API Documentation
    #
    class UpdateFeedResponse < Struct.new(
      :arn,
      :name,
      :id,
      :data_endpoints,
      :outputs,
      :status,
      :association,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configuration information about one output in a feed. It is
    # used in the UpdateFeed action.
    #
    # @!attribute [rw] name
    #   The name of the output.
    #   @return [String]
    #
    # @!attribute [rw] output_config
    #   A typed property for an output in a feed. It identifies the action
    #   for Elemental Inference to perform. It also provides a repository
    #   for the results of that action. For example, CroppingConfig output
    #   will contain the metadata for the crop feature.
    #   @return [Types::OutputConfig]
    #
    # @!attribute [rw] status
    #   The status of the output.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the output.
    #   @return [String]
    #
    # @!attribute [rw] from_association
    #   Elemental Inference originally sets this parameter to True if this
    #   output was created by AssociateFeed or to False if this output was
    #   created by CreateFeed or UpdateFeed.
    #
    #   You must not change this value. Therefore, use GetFeed to determine
    #   the current value. Then in the UpdateFeed request, if the current
    #   value is True, include this parameter with a value of True. If it's
    #   False, omit the parameter.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/UpdateOutput AWS API Documentation
    #
    class UpdateOutput < Struct.new(
      :name,
      :output_config,
      :status,
      :description,
      :from_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by the service.
    # Check the error message for details about which parameter or field is
    # invalid and correct the request before retrying.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

