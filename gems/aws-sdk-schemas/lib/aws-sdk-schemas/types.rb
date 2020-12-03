# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Schemas
  module Types

    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] creation_date
    #   The time and date that the code binding was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified
    #   The date and time that code bindings were modified.
    #   @return [Time]
    #
    # @!attribute [rw] schema_version
    #   The version number of the schema.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of code binding generation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/CodeBindingOutput AWS API Documentation
    #
    class CodeBindingOutput < Struct.new(
      :creation_date,
      :last_modified,
      :schema_version,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A description for the discoverer.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   The ARN of the event bus.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/CreateDiscovererInput AWS API Documentation
    #
    class CreateDiscovererInput < Struct.new(
      :description,
      :source_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDiscovererRequest
    #   data as a hash:
    #
    #       {
    #         description: "__stringMin0Max256",
    #         source_arn: "__stringMin20Max1600", # required
    #         tags: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs associated with a resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/CreateDiscovererRequest AWS API Documentation
    #
    class CreateDiscovererRequest < Struct.new(
      :description,
      :source_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] discoverer_arn
    #   @return [String]
    #
    # @!attribute [rw] discoverer_id
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   @return [String]
    #
    # @!attribute [rw] state
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs associated with a resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/CreateDiscovererResponse AWS API Documentation
    #
    class CreateDiscovererResponse < Struct.new(
      :description,
      :discoverer_arn,
      :discoverer_id,
      :source_arn,
      :state,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A description of the registry to be created.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to associate with the registry.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/CreateRegistryInput AWS API Documentation
    #
    class CreateRegistryInput < Struct.new(
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRegistryRequest
    #   data as a hash:
    #
    #       {
    #         description: "__stringMin0Max256",
    #         registry_name: "__string", # required
    #         tags: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] registry_name
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs associated with a resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/CreateRegistryRequest AWS API Documentation
    #
    class CreateRegistryRequest < Struct.new(
      :description,
      :registry_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] registry_arn
    #   @return [String]
    #
    # @!attribute [rw] registry_name
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs associated with a resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/CreateRegistryResponse AWS API Documentation
    #
    class CreateRegistryResponse < Struct.new(
      :description,
      :registry_arn,
      :registry_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content
    #   The source of the schema definition.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the schema.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags associated with the schema.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The type of schema.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/CreateSchemaInput AWS API Documentation
    #
    class CreateSchemaInput < Struct.new(
      :content,
      :description,
      :tags,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSchemaRequest
    #   data as a hash:
    #
    #       {
    #         content: "__stringMin1Max100000", # required
    #         description: "__stringMin0Max256",
    #         registry_name: "__string", # required
    #         schema_name: "__string", # required
    #         tags: {
    #           "__string" => "__string",
    #         },
    #         type: "OpenApi3", # required, accepts OpenApi3
    #       }
    #
    # @!attribute [rw] content
    #   @return [String]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] registry_name
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs associated with a resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/CreateSchemaRequest AWS API Documentation
    #
    class CreateSchemaRequest < Struct.new(
      :content,
      :description,
      :registry_name,
      :schema_name,
      :tags,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] last_modified
    #   @return [Time]
    #
    # @!attribute [rw] schema_arn
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   @return [String]
    #
    # @!attribute [rw] schema_version
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs associated with a resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] version_created_date
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/CreateSchemaResponse AWS API Documentation
    #
    class CreateSchemaResponse < Struct.new(
      :description,
      :last_modified,
      :schema_arn,
      :schema_name,
      :schema_version,
      :tags,
      :type,
      :version_created_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDiscovererRequest
    #   data as a hash:
    #
    #       {
    #         discoverer_id: "__string", # required
    #       }
    #
    # @!attribute [rw] discoverer_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/DeleteDiscovererRequest AWS API Documentation
    #
    class DeleteDiscovererRequest < Struct.new(
      :discoverer_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteRegistryRequest
    #   data as a hash:
    #
    #       {
    #         registry_name: "__string", # required
    #       }
    #
    # @!attribute [rw] registry_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/DeleteRegistryRequest AWS API Documentation
    #
    class DeleteRegistryRequest < Struct.new(
      :registry_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteResourcePolicyRequest
    #   data as a hash:
    #
    #       {
    #         registry_name: "__string",
    #       }
    #
    # @!attribute [rw] registry_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/DeleteResourcePolicyRequest AWS API Documentation
    #
    class DeleteResourcePolicyRequest < Struct.new(
      :registry_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteSchemaRequest
    #   data as a hash:
    #
    #       {
    #         registry_name: "__string", # required
    #         schema_name: "__string", # required
    #       }
    #
    # @!attribute [rw] registry_name
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/DeleteSchemaRequest AWS API Documentation
    #
    class DeleteSchemaRequest < Struct.new(
      :registry_name,
      :schema_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteSchemaVersionRequest
    #   data as a hash:
    #
    #       {
    #         registry_name: "__string", # required
    #         schema_name: "__string", # required
    #         schema_version: "__string", # required
    #       }
    #
    # @!attribute [rw] registry_name
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   @return [String]
    #
    # @!attribute [rw] schema_version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/DeleteSchemaVersionRequest AWS API Documentation
    #
    class DeleteSchemaVersionRequest < Struct.new(
      :registry_name,
      :schema_name,
      :schema_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeCodeBindingRequest
    #   data as a hash:
    #
    #       {
    #         language: "__string", # required
    #         registry_name: "__string", # required
    #         schema_name: "__string", # required
    #         schema_version: "__string",
    #       }
    #
    # @!attribute [rw] language
    #   @return [String]
    #
    # @!attribute [rw] registry_name
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   @return [String]
    #
    # @!attribute [rw] schema_version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/DescribeCodeBindingRequest AWS API Documentation
    #
    class DescribeCodeBindingRequest < Struct.new(
      :language,
      :registry_name,
      :schema_name,
      :schema_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] creation_date
    #   @return [Time]
    #
    # @!attribute [rw] last_modified
    #   @return [Time]
    #
    # @!attribute [rw] schema_version
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/DescribeCodeBindingResponse AWS API Documentation
    #
    class DescribeCodeBindingResponse < Struct.new(
      :creation_date,
      :last_modified,
      :schema_version,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDiscovererRequest
    #   data as a hash:
    #
    #       {
    #         discoverer_id: "__string", # required
    #       }
    #
    # @!attribute [rw] discoverer_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/DescribeDiscovererRequest AWS API Documentation
    #
    class DescribeDiscovererRequest < Struct.new(
      :discoverer_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] discoverer_arn
    #   @return [String]
    #
    # @!attribute [rw] discoverer_id
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   @return [String]
    #
    # @!attribute [rw] state
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs associated with a resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/DescribeDiscovererResponse AWS API Documentation
    #
    class DescribeDiscovererResponse < Struct.new(
      :description,
      :discoverer_arn,
      :discoverer_id,
      :source_arn,
      :state,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeRegistryRequest
    #   data as a hash:
    #
    #       {
    #         registry_name: "__string", # required
    #       }
    #
    # @!attribute [rw] registry_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/DescribeRegistryRequest AWS API Documentation
    #
    class DescribeRegistryRequest < Struct.new(
      :registry_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] registry_arn
    #   @return [String]
    #
    # @!attribute [rw] registry_name
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs associated with a resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/DescribeRegistryResponse AWS API Documentation
    #
    class DescribeRegistryResponse < Struct.new(
      :description,
      :registry_arn,
      :registry_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content
    #   The source of the schema definition.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the schema.
    #   @return [String]
    #
    # @!attribute [rw] last_modified
    #   The date and time that schema was modified.
    #   @return [Time]
    #
    # @!attribute [rw] schema_arn
    #   The ARN of the schema.
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   The name of the schema.
    #   @return [String]
    #
    # @!attribute [rw] schema_version
    #   The version number of the schema
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The type of the schema.
    #   @return [String]
    #
    # @!attribute [rw] version_created_date
    #   The date the schema version was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/DescribeSchemaOutput AWS API Documentation
    #
    class DescribeSchemaOutput < Struct.new(
      :content,
      :description,
      :last_modified,
      :schema_arn,
      :schema_name,
      :schema_version,
      :tags,
      :type,
      :version_created_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeSchemaRequest
    #   data as a hash:
    #
    #       {
    #         registry_name: "__string", # required
    #         schema_name: "__string", # required
    #         schema_version: "__string",
    #       }
    #
    # @!attribute [rw] registry_name
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   @return [String]
    #
    # @!attribute [rw] schema_version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/DescribeSchemaRequest AWS API Documentation
    #
    class DescribeSchemaRequest < Struct.new(
      :registry_name,
      :schema_name,
      :schema_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content
    #   @return [String]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] last_modified
    #   @return [Time]
    #
    # @!attribute [rw] schema_arn
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   @return [String]
    #
    # @!attribute [rw] schema_version
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs associated with a resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] version_created_date
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/DescribeSchemaResponse AWS API Documentation
    #
    class DescribeSchemaResponse < Struct.new(
      :content,
      :description,
      :last_modified,
      :schema_arn,
      :schema_name,
      :schema_version,
      :tags,
      :type,
      :version_created_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description of the discoverer.
    #   @return [String]
    #
    # @!attribute [rw] discoverer_arn
    #   The ARN of the discoverer.
    #   @return [String]
    #
    # @!attribute [rw] discoverer_id
    #   The ID of the discoverer.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   The ARN of the event bus.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the discoverer.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/DiscovererOutput AWS API Documentation
    #
    class DiscovererOutput < Struct.new(
      :description,
      :discoverer_arn,
      :discoverer_id,
      :source_arn,
      :state,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] discoverer_id
    #   The ID of the discoverer.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the discoverer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/DiscovererStateOutput AWS API Documentation
    #
    class DiscovererStateOutput < Struct.new(
      :discoverer_id,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] discoverer_arn
    #   The ARN of the discoverer.
    #   @return [String]
    #
    # @!attribute [rw] discoverer_id
    #   The ID of the discoverer.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   The ARN of the event bus.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the discoverer.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/DiscovererSummary AWS API Documentation
    #
    class DiscovererSummary < Struct.new(
      :discoverer_arn,
      :discoverer_id,
      :source_arn,
      :state,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message string of the error output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/ErrorOutput AWS API Documentation
    #
    class ErrorOutput < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/ForbiddenException AWS API Documentation
    #
    class ForbiddenException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCodeBindingSourceRequest
    #   data as a hash:
    #
    #       {
    #         language: "__string", # required
    #         registry_name: "__string", # required
    #         schema_name: "__string", # required
    #         schema_version: "__string",
    #       }
    #
    # @!attribute [rw] language
    #   @return [String]
    #
    # @!attribute [rw] registry_name
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   @return [String]
    #
    # @!attribute [rw] schema_version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/GetCodeBindingSourceRequest AWS API Documentation
    #
    class GetCodeBindingSourceRequest < Struct.new(
      :language,
      :registry_name,
      :schema_name,
      :schema_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] body
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/GetCodeBindingSourceResponse AWS API Documentation
    #
    class GetCodeBindingSourceResponse < Struct.new(
      :body)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] events
    #   An array of strings where each string is a JSON event. These are the
    #   events that were used to generate the schema. The array includes a
    #   single type of event and has a maximum size of 10 events.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   The type of event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/GetDiscoveredSchemaInput AWS API Documentation
    #
    class GetDiscoveredSchemaInput < Struct.new(
      :events,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content
    #   The source of the schema definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/GetDiscoveredSchemaOutput AWS API Documentation
    #
    class GetDiscoveredSchemaOutput < Struct.new(
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDiscoveredSchemaRequest
    #   data as a hash:
    #
    #       {
    #         events: ["GetDiscoveredSchemaVersionItemInput"], # required
    #         type: "OpenApi3", # required, accepts OpenApi3
    #       }
    #
    # @!attribute [rw] events
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/GetDiscoveredSchemaRequest AWS API Documentation
    #
    class GetDiscoveredSchemaRequest < Struct.new(
      :events,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/GetDiscoveredSchemaResponse AWS API Documentation
    #
    class GetDiscoveredSchemaResponse < Struct.new(
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the policy.
    #
    # @!attribute [rw] policy
    #   The resource-based policy.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The revision ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/GetResourcePolicyOutput AWS API Documentation
    #
    class GetResourcePolicyOutput < Struct.new(
      :policy,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetResourcePolicyRequest
    #   data as a hash:
    #
    #       {
    #         registry_name: "__string",
    #       }
    #
    # @!attribute [rw] registry_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/GetResourcePolicyRequest AWS API Documentation
    #
    class GetResourcePolicyRequest < Struct.new(
      :registry_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/GetResourcePolicyResponse AWS API Documentation
    #
    class GetResourcePolicyResponse < Struct.new(
      :policy,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/GoneException AWS API Documentation
    #
    class GoneException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/InternalServerErrorException AWS API Documentation
    #
    class InternalServerErrorException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] discoverers
    #   An array of DiscovererSummary information.
    #   @return [Array<Types::DiscovererSummary>]
    #
    # @!attribute [rw] next_token
    #   The token that specifies the next page of results to return. To
    #   request the first page, leave NextToken empty. The token will expire
    #   in 24 hours, and cannot be shared with other accounts.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/ListDiscoverersOutput AWS API Documentation
    #
    class ListDiscoverersOutput < Struct.new(
      :discoverers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDiscoverersRequest
    #   data as a hash:
    #
    #       {
    #         discoverer_id_prefix: "__string",
    #         limit: 1,
    #         next_token: "__string",
    #         source_arn_prefix: "__string",
    #       }
    #
    # @!attribute [rw] discoverer_id_prefix
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] source_arn_prefix
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/ListDiscoverersRequest AWS API Documentation
    #
    class ListDiscoverersRequest < Struct.new(
      :discoverer_id_prefix,
      :limit,
      :next_token,
      :source_arn_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] discoverers
    #   @return [Array<Types::DiscovererSummary>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/ListDiscoverersResponse AWS API Documentation
    #
    class ListDiscoverersResponse < Struct.new(
      :discoverers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # List the registries.
    #
    # @!attribute [rw] next_token
    #   The token that specifies the next page of results to return. To
    #   request the first page, leave NextToken empty. The token will expire
    #   in 24 hours, and cannot be shared with other accounts.
    #   @return [String]
    #
    # @!attribute [rw] registries
    #   An array of registry summaries.
    #   @return [Array<Types::RegistrySummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/ListRegistriesOutput AWS API Documentation
    #
    class ListRegistriesOutput < Struct.new(
      :next_token,
      :registries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRegistriesRequest
    #   data as a hash:
    #
    #       {
    #         limit: 1,
    #         next_token: "__string",
    #         registry_name_prefix: "__string",
    #         scope: "__string",
    #       }
    #
    # @!attribute [rw] limit
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] registry_name_prefix
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/ListRegistriesRequest AWS API Documentation
    #
    class ListRegistriesRequest < Struct.new(
      :limit,
      :next_token,
      :registry_name_prefix,
      :scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] registries
    #   @return [Array<Types::RegistrySummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/ListRegistriesResponse AWS API Documentation
    #
    class ListRegistriesResponse < Struct.new(
      :next_token,
      :registries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token that specifies the next page of results to return. To
    #   request the first page, leave NextToken empty. The token will expire
    #   in 24 hours, and cannot be shared with other accounts.
    #   @return [String]
    #
    # @!attribute [rw] schema_versions
    #   An array of schema version summaries.
    #   @return [Array<Types::SchemaVersionSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/ListSchemaVersionsOutput AWS API Documentation
    #
    class ListSchemaVersionsOutput < Struct.new(
      :next_token,
      :schema_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSchemaVersionsRequest
    #   data as a hash:
    #
    #       {
    #         limit: 1,
    #         next_token: "__string",
    #         registry_name: "__string", # required
    #         schema_name: "__string", # required
    #       }
    #
    # @!attribute [rw] limit
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] registry_name
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/ListSchemaVersionsRequest AWS API Documentation
    #
    class ListSchemaVersionsRequest < Struct.new(
      :limit,
      :next_token,
      :registry_name,
      :schema_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] schema_versions
    #   @return [Array<Types::SchemaVersionSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/ListSchemaVersionsResponse AWS API Documentation
    #
    class ListSchemaVersionsResponse < Struct.new(
      :next_token,
      :schema_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token that specifies the next page of results to return. To
    #   request the first page, leave NextToken empty. The token will expire
    #   in 24 hours, and cannot be shared with other accounts.
    #   @return [String]
    #
    # @!attribute [rw] schemas
    #   An array of schema summaries.
    #   @return [Array<Types::SchemaSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/ListSchemasOutput AWS API Documentation
    #
    class ListSchemasOutput < Struct.new(
      :next_token,
      :schemas)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSchemasRequest
    #   data as a hash:
    #
    #       {
    #         limit: 1,
    #         next_token: "__string",
    #         registry_name: "__string", # required
    #         schema_name_prefix: "__string",
    #       }
    #
    # @!attribute [rw] limit
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] registry_name
    #   @return [String]
    #
    # @!attribute [rw] schema_name_prefix
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/ListSchemasRequest AWS API Documentation
    #
    class ListSchemasRequest < Struct.new(
      :limit,
      :next_token,
      :registry_name,
      :schema_name_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] schemas
    #   @return [Array<Types::SchemaSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/ListSchemasResponse AWS API Documentation
    #
    class ListSchemasResponse < Struct.new(
      :next_token,
      :schemas)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Key-value pairs associated with a resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Key-value pairs associated with a resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] role_arn
    #   @return [String]
    #
    # @!attribute [rw] timeout
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/LockServiceLinkedRoleInput AWS API Documentation
    #
    class LockServiceLinkedRoleInput < Struct.new(
      :role_arn,
      :timeout)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] can_be_deleted
    #   @return [Boolean]
    #
    # @!attribute [rw] reason_of_failure
    #   @return [String]
    #
    # @!attribute [rw] related_resources
    #   @return [Array<Types::DiscovererSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/LockServiceLinkedRoleOutput AWS API Documentation
    #
    class LockServiceLinkedRoleOutput < Struct.new(
      :can_be_deleted,
      :reason_of_failure,
      :related_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] role_arn
    #   @return [String]
    #
    # @!attribute [rw] timeout
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/LockServiceLinkedRoleRequest AWS API Documentation
    #
    class LockServiceLinkedRoleRequest < Struct.new(
      :role_arn,
      :timeout)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] can_be_deleted
    #   @return [Boolean]
    #
    # @!attribute [rw] reason_of_failure
    #   @return [String]
    #
    # @!attribute [rw] related_resources
    #   @return [Array<Types::DiscovererSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/LockServiceLinkedRoleResponse AWS API Documentation
    #
    class LockServiceLinkedRoleResponse < Struct.new(
      :can_be_deleted,
      :reason_of_failure,
      :related_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/PreconditionFailedException AWS API Documentation
    #
    class PreconditionFailedException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutCodeBindingRequest
    #   data as a hash:
    #
    #       {
    #         language: "__string", # required
    #         registry_name: "__string", # required
    #         schema_name: "__string", # required
    #         schema_version: "__string",
    #       }
    #
    # @!attribute [rw] language
    #   @return [String]
    #
    # @!attribute [rw] registry_name
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   @return [String]
    #
    # @!attribute [rw] schema_version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/PutCodeBindingRequest AWS API Documentation
    #
    class PutCodeBindingRequest < Struct.new(
      :language,
      :registry_name,
      :schema_name,
      :schema_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] creation_date
    #   @return [Time]
    #
    # @!attribute [rw] last_modified
    #   @return [Time]
    #
    # @!attribute [rw] schema_version
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/PutCodeBindingResponse AWS API Documentation
    #
    class PutCodeBindingResponse < Struct.new(
      :creation_date,
      :last_modified,
      :schema_version,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Only update the policy if the revision ID matches the ID that's
    # specified. Use this option to avoid modifying a policy that has
    # changed since you last read it.
    #
    # @!attribute [rw] policy
    #   The resource-based policy.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The revision ID of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/PutResourcePolicyInput AWS API Documentation
    #
    class PutResourcePolicyInput < Struct.new(
      :policy,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource-based policy.
    #
    # @!attribute [rw] policy
    #   The resource-based policy.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The revision ID of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/PutResourcePolicyOutput AWS API Documentation
    #
    class PutResourcePolicyOutput < Struct.new(
      :policy,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutResourcePolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy: "__string", # required
    #         registry_name: "__string",
    #         revision_id: "__string",
    #       }
    #
    # @!attribute [rw] policy
    #   @return [String]
    #
    # @!attribute [rw] registry_name
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/PutResourcePolicyRequest AWS API Documentation
    #
    class PutResourcePolicyRequest < Struct.new(
      :policy,
      :registry_name,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/PutResourcePolicyResponse AWS API Documentation
    #
    class PutResourcePolicyResponse < Struct.new(
      :policy,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description of the registry.
    #   @return [String]
    #
    # @!attribute [rw] registry_arn
    #   The ARN of the registry.
    #   @return [String]
    #
    # @!attribute [rw] registry_name
    #   The name of the registry.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags associated with the registry.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/RegistryOutput AWS API Documentation
    #
    class RegistryOutput < Struct.new(
      :description,
      :registry_arn,
      :registry_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_arn
    #   The ARN of the registry.
    #   @return [String]
    #
    # @!attribute [rw] registry_name
    #   The name of the registry.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags associated with the registry.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/RegistrySummary AWS API Documentation
    #
    class RegistrySummary < Struct.new(
      :registry_arn,
      :registry_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description of the schema.
    #   @return [String]
    #
    # @!attribute [rw] last_modified
    #   The date and time that schema was modified.
    #   @return [Time]
    #
    # @!attribute [rw] schema_arn
    #   The ARN of the schema.
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   The name of the schema.
    #   @return [String]
    #
    # @!attribute [rw] schema_version
    #   The version number of the schema
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs associated with a resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The type of the schema.
    #   @return [String]
    #
    # @!attribute [rw] version_created_date
    #   The date the schema version was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/SchemaOutput AWS API Documentation
    #
    class SchemaOutput < Struct.new(
      :description,
      :last_modified,
      :schema_arn,
      :schema_name,
      :schema_version,
      :tags,
      :type,
      :version_created_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of schema details.
    #
    # @!attribute [rw] last_modified
    #   The date and time that schema was modified.
    #   @return [Time]
    #
    # @!attribute [rw] schema_arn
    #   The ARN of the schema.
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   The name of the schema.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags associated with the schema.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] version_count
    #   The number of versions available for the schema.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/SchemaSummary AWS API Documentation
    #
    class SchemaSummary < Struct.new(
      :last_modified,
      :schema_arn,
      :schema_name,
      :tags,
      :version_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_arn
    #   The ARN of the schema version.
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   The name of the schema.
    #   @return [String]
    #
    # @!attribute [rw] schema_version
    #   The version number of the schema.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/SchemaVersionSummary AWS API Documentation
    #
    class SchemaVersionSummary < Struct.new(
      :schema_arn,
      :schema_name,
      :schema_version,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_name
    #   The name of the registry.
    #   @return [String]
    #
    # @!attribute [rw] schema_arn
    #   The ARN of the schema.
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   The name of the schema.
    #   @return [String]
    #
    # @!attribute [rw] schema_versions
    #   An array of schema version summaries.
    #   @return [Array<Types::SearchSchemaVersionSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/SearchSchemaSummary AWS API Documentation
    #
    class SearchSchemaSummary < Struct.new(
      :registry_name,
      :schema_arn,
      :schema_name,
      :schema_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_date
    #   The date the schema version was created.
    #   @return [Time]
    #
    # @!attribute [rw] schema_version
    #   The version number of the schema
    #   @return [String]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/SearchSchemaVersionSummary AWS API Documentation
    #
    class SearchSchemaVersionSummary < Struct.new(
      :created_date,
      :schema_version,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token that specifies the next page of results to return. To
    #   request the first page, leave NextToken empty. The token will expire
    #   in 24 hours, and cannot be shared with other accounts.
    #   @return [String]
    #
    # @!attribute [rw] schemas
    #   An array of SearchSchemaSummary information.
    #   @return [Array<Types::SearchSchemaSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/SearchSchemasOutput AWS API Documentation
    #
    class SearchSchemasOutput < Struct.new(
      :next_token,
      :schemas)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchSchemasRequest
    #   data as a hash:
    #
    #       {
    #         keywords: "__string", # required
    #         limit: 1,
    #         next_token: "__string",
    #         registry_name: "__string", # required
    #       }
    #
    # @!attribute [rw] keywords
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] registry_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/SearchSchemasRequest AWS API Documentation
    #
    class SearchSchemasRequest < Struct.new(
      :keywords,
      :limit,
      :next_token,
      :registry_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] schemas
    #   @return [Array<Types::SearchSchemaSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/SearchSchemasResponse AWS API Documentation
    #
    class SearchSchemasResponse < Struct.new(
      :next_token,
      :schemas)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartDiscovererRequest
    #   data as a hash:
    #
    #       {
    #         discoverer_id: "__string", # required
    #       }
    #
    # @!attribute [rw] discoverer_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/StartDiscovererRequest AWS API Documentation
    #
    class StartDiscovererRequest < Struct.new(
      :discoverer_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] discoverer_id
    #   @return [String]
    #
    # @!attribute [rw] state
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/StartDiscovererResponse AWS API Documentation
    #
    class StartDiscovererResponse < Struct.new(
      :discoverer_id,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopDiscovererRequest
    #   data as a hash:
    #
    #       {
    #         discoverer_id: "__string", # required
    #       }
    #
    # @!attribute [rw] discoverer_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/StopDiscovererRequest AWS API Documentation
    #
    class StopDiscovererRequest < Struct.new(
      :discoverer_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] discoverer_id
    #   @return [String]
    #
    # @!attribute [rw] state
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/StopDiscovererResponse AWS API Documentation
    #
    class StopDiscovererResponse < Struct.new(
      :discoverer_id,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #         tags: { # required
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs associated with a resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/UnauthorizedException AWS API Documentation
    #
    class UnauthorizedException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] role_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/UnlockServiceLinkedRoleInput AWS API Documentation
    #
    class UnlockServiceLinkedRoleInput < Struct.new(
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] role_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/UnlockServiceLinkedRoleRequest AWS API Documentation
    #
    class UnlockServiceLinkedRoleRequest < Struct.new(
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/UnlockServiceLinkedRoleResponse AWS API Documentation
    #
    class UnlockServiceLinkedRoleResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #         tag_keys: ["__string"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description of the discoverer to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/UpdateDiscovererInput AWS API Documentation
    #
    class UpdateDiscovererInput < Struct.new(
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateDiscovererRequest
    #   data as a hash:
    #
    #       {
    #         description: "__stringMin0Max256",
    #         discoverer_id: "__string", # required
    #       }
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] discoverer_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/UpdateDiscovererRequest AWS API Documentation
    #
    class UpdateDiscovererRequest < Struct.new(
      :description,
      :discoverer_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] discoverer_arn
    #   @return [String]
    #
    # @!attribute [rw] discoverer_id
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   @return [String]
    #
    # @!attribute [rw] state
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs associated with a resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/UpdateDiscovererResponse AWS API Documentation
    #
    class UpdateDiscovererResponse < Struct.new(
      :description,
      :discoverer_arn,
      :discoverer_id,
      :source_arn,
      :state,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description of the registry to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/UpdateRegistryInput AWS API Documentation
    #
    class UpdateRegistryInput < Struct.new(
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateRegistryRequest
    #   data as a hash:
    #
    #       {
    #         description: "__stringMin0Max256",
    #         registry_name: "__string", # required
    #       }
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] registry_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/UpdateRegistryRequest AWS API Documentation
    #
    class UpdateRegistryRequest < Struct.new(
      :description,
      :registry_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] registry_arn
    #   @return [String]
    #
    # @!attribute [rw] registry_name
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs associated with a resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/UpdateRegistryResponse AWS API Documentation
    #
    class UpdateRegistryResponse < Struct.new(
      :description,
      :registry_arn,
      :registry_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token_id
    #   The ID of the client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The source of the schema definition.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the schema.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The schema type for the events schema.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/UpdateSchemaInput AWS API Documentation
    #
    class UpdateSchemaInput < Struct.new(
      :client_token_id,
      :content,
      :description,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateSchemaRequest
    #   data as a hash:
    #
    #       {
    #         client_token_id: "__stringMin0Max36",
    #         content: "__stringMin1Max100000",
    #         description: "__stringMin0Max256",
    #         registry_name: "__string", # required
    #         schema_name: "__string", # required
    #         type: "OpenApi3", # accepts OpenApi3
    #       }
    #
    # @!attribute [rw] client_token_id
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   @return [String]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] registry_name
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   @return [String]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/UpdateSchemaRequest AWS API Documentation
    #
    class UpdateSchemaRequest < Struct.new(
      :client_token_id,
      :content,
      :description,
      :registry_name,
      :schema_name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] last_modified
    #   @return [Time]
    #
    # @!attribute [rw] schema_arn
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   @return [String]
    #
    # @!attribute [rw] schema_version
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs associated with a resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] version_created_date
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/UpdateSchemaResponse AWS API Documentation
    #
    class UpdateSchemaResponse < Struct.new(
      :description,
      :last_modified,
      :schema_arn,
      :schema_name,
      :schema_version,
      :tags,
      :type,
      :version_created_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content
    #   The content of the schema.
    #   @return [String]
    #
    # @!attribute [rw] schema_arn
    #   The ARN of the schema to export.
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   The name of the schema to export.
    #   @return [String]
    #
    # @!attribute [rw] schema_version
    #   The version of the schema to export.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of schema to export.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/ExportSchemaOutput AWS API Documentation
    #
    class ExportSchemaOutput < Struct.new(
      :content,
      :schema_arn,
      :schema_name,
      :schema_version,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ExportSchemaRequest
    #   data as a hash:
    #
    #       {
    #         registry_name: "__string", # required
    #         schema_name: "__string", # required
    #         schema_version: "__string",
    #         type: "__string", # required
    #       }
    #
    # @!attribute [rw] registry_name
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   @return [String]
    #
    # @!attribute [rw] schema_version
    #   @return [String]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/ExportSchemaRequest AWS API Documentation
    #
    class ExportSchemaRequest < Struct.new(
      :registry_name,
      :schema_name,
      :schema_version,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content
    #   @return [String]
    #
    # @!attribute [rw] schema_arn
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   @return [String]
    #
    # @!attribute [rw] schema_version
    #   @return [String]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/ExportSchemaResponse AWS API Documentation
    #
    class ExportSchemaResponse < Struct.new(
      :content,
      :schema_arn,
      :schema_name,
      :schema_version,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
