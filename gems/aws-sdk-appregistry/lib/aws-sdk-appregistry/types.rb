# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AppRegistry
  module Types

    # Represents a Service Catalog AppRegistry application that is the
    # top-level node in a hierarchy of related cloud resource abstractions.
    #
    # @!attribute [rw] id
    #   The identifier of the application.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon resource name (ARN) that specifies the application across
    #   services.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the application. The name must be unique in the region
    #   in which you are creating the application.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the application.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The ISO-8601 formatted timestamp of the moment when the application
    #   was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The ISO-8601 formatted timestamp of the moment when the application
    #   was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   Key-value pairs you can use to associate with the application.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/Application AWS API Documentation
    #
    class Application < Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :creation_time,
      :last_update_time,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of a Service Catalog AppRegistry application.
    #
    # @!attribute [rw] id
    #   The identifier of the application.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon resource name (ARN) that specifies the application across
    #   services.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the application. The name must be unique in the region
    #   in which you are creating the application.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the application.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The ISO-8601 formatted timestamp of the moment when the application
    #   was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The ISO-8601 formatted timestamp of the moment when the application
    #   was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/ApplicationSummary AWS API Documentation
    #
    class ApplicationSummary < Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :creation_time,
      :last_update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateAttributeGroupRequest
    #   data as a hash:
    #
    #       {
    #         application: "ApplicationSpecifier", # required
    #         attribute_group: "AttributeGroupSpecifier", # required
    #       }
    #
    # @!attribute [rw] application
    #   The name or ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] attribute_group
    #   The name or ID of the attribute group that holds the attributes to
    #   describe the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/AssociateAttributeGroupRequest AWS API Documentation
    #
    class AssociateAttributeGroupRequest < Struct.new(
      :application,
      :attribute_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   The Amazon resource name (ARN) of the application that was augmented
    #   with attributes.
    #   @return [String]
    #
    # @!attribute [rw] attribute_group_arn
    #   The Amazon resource name (ARN) of the attribute group that contains
    #   the application's new attributes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/AssociateAttributeGroupResponse AWS API Documentation
    #
    class AssociateAttributeGroupResponse < Struct.new(
      :application_arn,
      :attribute_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateResourceRequest
    #   data as a hash:
    #
    #       {
    #         application: "ApplicationSpecifier", # required
    #         resource_type: "CFN_STACK", # required, accepts CFN_STACK
    #         resource: "ResourceSpecifier", # required
    #       }
    #
    # @!attribute [rw] application
    #   The name or ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource of which the application will be associated.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The name or ID of the resource of which the application will be
    #   associated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/AssociateResourceRequest AWS API Documentation
    #
    class AssociateResourceRequest < Struct.new(
      :application,
      :resource_type,
      :resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   The Amazon resource name (ARN) of the application that was augmented
    #   with attributes.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon resource name (ARN) that specifies the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/AssociateResourceResponse AWS API Documentation
    #
    class AssociateResourceResponse < Struct.new(
      :application_arn,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a Service Catalog AppRegistry attribute group that is rich
    # metadata which describes an application and its components.
    #
    # @!attribute [rw] id
    #   The globally unique attribute group identifier of the attribute
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon resource name (ARN) that specifies the attribute group
    #   across services.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the attribute group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the attribute group that the user provides.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The ISO-8601 formatted timestamp of the moment the attribute group
    #   was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The ISO-8601 formatted timestamp of the moment the attribute group
    #   was last updated. This time is the same as the creationTime for a
    #   newly created attribute group.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   Key-value pairs you can use to associate with the attribute group.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/AttributeGroup AWS API Documentation
    #
    class AttributeGroup < Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :creation_time,
      :last_update_time,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of a Service Catalog AppRegistry attribute group.
    #
    # @!attribute [rw] id
    #   The globally unique attribute group identifier of the attribute
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon resource name (ARN) that specifies the attribute group
    #   across services.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the attribute group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the attribute group that the user provides.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The ISO-8601 formatted timestamp of the moment the attribute group
    #   was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The ISO-8601 formatted timestamp of the moment the attribute group
    #   was last updated. This time is the same as the creationTime for a
    #   newly created attribute group.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/AttributeGroupSummary AWS API Documentation
    #
    class AttributeGroupSummary < Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :creation_time,
      :last_update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # There was a conflict when processing the request (for example, a
    # resource with the given name already exists within the account).
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateApplicationRequest
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         description: "Description",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         client_token: "ClientToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the application. The name must be unique in the region
    #   in which you are creating the application.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the application.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs you can use to associate with the application.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   A unique identifier that you provide to ensure idempotency. If you
    #   retry a request that completed successfully using the same client
    #   token and the same parameters, the retry succeeds without performing
    #   any further actions. If you retry a successful request using the
    #   same client token, but one or more of the parameters are different,
    #   the retry fails.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/CreateApplicationRequest AWS API Documentation
    #
    class CreateApplicationRequest < Struct.new(
      :name,
      :description,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application
    #   Information about the application.
    #   @return [Types::Application]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/CreateApplicationResponse AWS API Documentation
    #
    class CreateApplicationResponse < Struct.new(
      :application)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAttributeGroupRequest
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         description: "Description",
    #         attributes: "Attributes", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         client_token: "ClientToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the attribute group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the attribute group that the user provides.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   A JSON string in the form of nested key-value pairs that represent
    #   the attributes in the group and describes an application and its
    #   components.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs you can use to associate with the attribute group.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   A unique identifier that you provide to ensure idempotency. If you
    #   retry a request that completed successfully using the same client
    #   token and the same parameters, the retry succeeds without performing
    #   any further actions. If you retry a successful request using the
    #   same client token, but one or more of the parameters are different,
    #   the retry fails.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/CreateAttributeGroupRequest AWS API Documentation
    #
    class CreateAttributeGroupRequest < Struct.new(
      :name,
      :description,
      :attributes,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attribute_group
    #   Information about the attribute group.
    #   @return [Types::AttributeGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/CreateAttributeGroupResponse AWS API Documentation
    #
    class CreateAttributeGroupResponse < Struct.new(
      :attribute_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteApplicationRequest
    #   data as a hash:
    #
    #       {
    #         application: "ApplicationSpecifier", # required
    #       }
    #
    # @!attribute [rw] application
    #   The name or ID of the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/DeleteApplicationRequest AWS API Documentation
    #
    class DeleteApplicationRequest < Struct.new(
      :application)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application
    #   Information about the deleted application.
    #   @return [Types::ApplicationSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/DeleteApplicationResponse AWS API Documentation
    #
    class DeleteApplicationResponse < Struct.new(
      :application)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAttributeGroupRequest
    #   data as a hash:
    #
    #       {
    #         attribute_group: "AttributeGroupSpecifier", # required
    #       }
    #
    # @!attribute [rw] attribute_group
    #   The name or ID of the attribute group that holds the attributes to
    #   describe the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/DeleteAttributeGroupRequest AWS API Documentation
    #
    class DeleteAttributeGroupRequest < Struct.new(
      :attribute_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attribute_group
    #   Information about the deleted attribute group.
    #   @return [Types::AttributeGroupSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/DeleteAttributeGroupResponse AWS API Documentation
    #
    class DeleteAttributeGroupResponse < Struct.new(
      :attribute_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateAttributeGroupRequest
    #   data as a hash:
    #
    #       {
    #         application: "ApplicationSpecifier", # required
    #         attribute_group: "AttributeGroupSpecifier", # required
    #       }
    #
    # @!attribute [rw] application
    #   The name or ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] attribute_group
    #   The name or ID of the attribute group that holds the attributes to
    #   describe the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/DisassociateAttributeGroupRequest AWS API Documentation
    #
    class DisassociateAttributeGroupRequest < Struct.new(
      :application,
      :attribute_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   The Amazon resource name (ARN) that specifies the application.
    #   @return [String]
    #
    # @!attribute [rw] attribute_group_arn
    #   The Amazon resource name (ARN) that specifies the attribute group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/DisassociateAttributeGroupResponse AWS API Documentation
    #
    class DisassociateAttributeGroupResponse < Struct.new(
      :application_arn,
      :attribute_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateResourceRequest
    #   data as a hash:
    #
    #       {
    #         application: "ApplicationSpecifier", # required
    #         resource_type: "CFN_STACK", # required, accepts CFN_STACK
    #         resource: "ResourceSpecifier", # required
    #       }
    #
    # @!attribute [rw] application
    #   The name or ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that is being disassociated.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The name or ID of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/DisassociateResourceRequest AWS API Documentation
    #
    class DisassociateResourceRequest < Struct.new(
      :application,
      :resource_type,
      :resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   The Amazon resource name (ARN) that specifies the application.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon resource name (ARN) that specifies the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/DisassociateResourceResponse AWS API Documentation
    #
    class DisassociateResourceResponse < Struct.new(
      :application_arn,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetApplicationRequest
    #   data as a hash:
    #
    #       {
    #         application: "ApplicationSpecifier", # required
    #       }
    #
    # @!attribute [rw] application
    #   The name or ID of the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/GetApplicationRequest AWS API Documentation
    #
    class GetApplicationRequest < Struct.new(
      :application)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the application.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon resource name (ARN) that specifies the application across
    #   services.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the application. The name must be unique in the region
    #   in which you are creating the application.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the application.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The ISO-8601 formatted timestamp of the moment when the application
    #   was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The ISO-8601 formatted timestamp of the moment when the application
    #   was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] associated_resource_count
    #   The number of top-level resources that were registered as part of
    #   this application.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   Key-value pairs associated with the application.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/GetApplicationResponse AWS API Documentation
    #
    class GetApplicationResponse < Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :creation_time,
      :last_update_time,
      :associated_resource_count,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAttributeGroupRequest
    #   data as a hash:
    #
    #       {
    #         attribute_group: "AttributeGroupSpecifier", # required
    #       }
    #
    # @!attribute [rw] attribute_group
    #   The name or ID of the attribute group that holds the attributes to
    #   describe the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/GetAttributeGroupRequest AWS API Documentation
    #
    class GetAttributeGroupRequest < Struct.new(
      :attribute_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the attribute group.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon resource name (ARN) that specifies the attribute group
    #   across services.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the attribute group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the attribute group that the user provides.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   A JSON string in the form of nested key-value pairs that represent
    #   the attributes in the group and describes an application and its
    #   components.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The ISO-8601 formatted timestamp of the moment the attribute group
    #   was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The ISO-8601 formatted timestamp of the moment the attribute group
    #   was last updated. This time is the same as the creationTime for a
    #   newly created attribute group.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   Key-value pairs associated with the attribute group.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/GetAttributeGroupResponse AWS API Documentation
    #
    class GetAttributeGroupResponse < Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :attributes,
      :creation_time,
      :last_update_time,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service is experiencing internal problems.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListApplicationsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The token to use to get the next page of results after a previous
    #   API call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The upper bound of the number of results to return (cannot exceed
    #   25). If this parameter is omitted, it defaults to 25. This value is
    #   optional.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/ListApplicationsRequest AWS API Documentation
    #
    class ListApplicationsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] applications
    #   This list of applications.
    #   @return [Array<Types::ApplicationSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to get the next page of results after a previous
    #   API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/ListApplicationsResponse AWS API Documentation
    #
    class ListApplicationsResponse < Struct.new(
      :applications,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAssociatedAttributeGroupsRequest
    #   data as a hash:
    #
    #       {
    #         application: "ApplicationSpecifier", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] application
    #   The name or ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to use to get the next page of results after a previous
    #   API call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The upper bound of the number of results to return (cannot exceed
    #   25). If this parameter is omitted, it defaults to 25. This value is
    #   optional.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/ListAssociatedAttributeGroupsRequest AWS API Documentation
    #
    class ListAssociatedAttributeGroupsRequest < Struct.new(
      :application,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attribute_groups
    #   A list of attribute group IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token to use to get the next page of results after a previous
    #   API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/ListAssociatedAttributeGroupsResponse AWS API Documentation
    #
    class ListAssociatedAttributeGroupsResponse < Struct.new(
      :attribute_groups,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAssociatedResourcesRequest
    #   data as a hash:
    #
    #       {
    #         application: "ApplicationSpecifier", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] application
    #   The name or ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to use to get the next page of results after a previous
    #   API call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The upper bound of the number of results to return (cannot exceed
    #   25). If this parameter is omitted, it defaults to 25. This value is
    #   optional.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/ListAssociatedResourcesRequest AWS API Documentation
    #
    class ListAssociatedResourcesRequest < Struct.new(
      :application,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resources
    #   Information about the resources.
    #   @return [Array<Types::ResourceInfo>]
    #
    # @!attribute [rw] next_token
    #   The token to use to get the next page of results after a previous
    #   API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/ListAssociatedResourcesResponse AWS API Documentation
    #
    class ListAssociatedResourcesResponse < Struct.new(
      :resources,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAttributeGroupsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The token to use to get the next page of results after a previous
    #   API call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The upper bound of the number of results to return (cannot exceed
    #   25). If this parameter is omitted, it defaults to 25. This value is
    #   optional.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/ListAttributeGroupsRequest AWS API Documentation
    #
    class ListAttributeGroupsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attribute_groups
    #   This list of attribute groups.
    #   @return [Array<Types::AttributeGroupSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to get the next page of results after a previous
    #   API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/ListAttributeGroupsResponse AWS API Documentation
    #
    class ListAttributeGroupsResponse < Struct.new(
      :attribute_groups,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the resource.
    #
    # @!attribute [rw] name
    #   The name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon resource name (ARN) that specifies the resource across
    #   services.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/ResourceInfo AWS API Documentation
    #
    class ResourceInfo < Struct.new(
      :name,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum number of resources per account has been reached.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateApplicationRequest
    #   data as a hash:
    #
    #       {
    #         application: "ApplicationSpecifier", # required
    #         name: "Name",
    #         description: "Description",
    #       }
    #
    # @!attribute [rw] application
    #   The name or ID of the application that will be updated.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The new name of the application. The name must be unique in the
    #   region in which you are updating the application.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description of the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/UpdateApplicationRequest AWS API Documentation
    #
    class UpdateApplicationRequest < Struct.new(
      :application,
      :name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application
    #   The updated information of the application.
    #   @return [Types::Application]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/UpdateApplicationResponse AWS API Documentation
    #
    class UpdateApplicationResponse < Struct.new(
      :application)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateAttributeGroupRequest
    #   data as a hash:
    #
    #       {
    #         attribute_group: "AttributeGroupSpecifier", # required
    #         name: "Name",
    #         description: "Description",
    #         attributes: "Attributes",
    #       }
    #
    # @!attribute [rw] attribute_group
    #   The name or ID of the attribute group that holds the attributes to
    #   describe the application.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The new name of the attribute group. The name must be unique in the
    #   region in which you are updating the attribute group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the attribute group that the user provides.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   A JSON string in the form of nested key-value pairs that represent
    #   the attributes in the group and describes an application and its
    #   components.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/UpdateAttributeGroupRequest AWS API Documentation
    #
    class UpdateAttributeGroupRequest < Struct.new(
      :attribute_group,
      :name,
      :description,
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attribute_group
    #   The updated information of the attribute group.
    #   @return [Types::AttributeGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/UpdateAttributeGroupResponse AWS API Documentation
    #
    class UpdateAttributeGroupResponse < Struct.new(
      :attribute_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request has invalid or missing parameters.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
