# frozen_string_literal: true

# This is generated code!

module Aws::ServiceCatalogAppRegistry
  # This module contains the types returned by client operations.
  module Types

    # <p>
    #       Includes all 
    #       of the AppRegistry settings.
    #     </p>
    # @!attribute tag_query_configuration
    #   <p>
    #         Includes the definition 
    #         of a <code>tagQuery</code>.
    #       </p>
    #   @return [Types::TagQueryConfiguration]
    class AppRegistryConfiguration < Struct.new(
      nil,
      :tag_query_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a Amazon Web Services Service Catalog AppRegistry application that is the top-level node in a hierarchy of related
    #        cloud resource abstractions.</p>
    # @!attribute id
    #   <p>The identifier of the application.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon resource name (ARN) that specifies the application across services.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the application. The name must be unique in the region in which you are creating the application.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the application.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The ISO-8601 formatted timestamp of the moment when the application was created.</p>
    #   @return [Time]
    # @!attribute last_update_time
    #   <p> The ISO-8601 formatted timestamp of the moment when the application was last updated.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>Key-value pairs you can use to associate with the application.</p>
    #   @return [Hash<String, String>]
    # @!attribute application_tag
    #   <p>
    #         A key-value pair that identifies an associated resource.
    #       </p>
    #   @return [Hash<String, String>]
    class Application < Struct.new(
      nil,
      :id,
      :arn,
      :name,
      :description,
      :creation_time,
      :last_update_time,
      :tags,
      :application_tag,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary of a Amazon Web Services Service Catalog AppRegistry application.</p>
    # @!attribute id
    #   <p>The identifier of the application.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon resource name (ARN) that specifies the application across services.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the application. The name must be unique in the region in which you are creating the application.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the application.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The ISO-8601 formatted timestamp of the moment when the application was created.</p>
    #   @return [Time]
    # @!attribute last_update_time
    #   <p> The ISO-8601 formatted timestamp of the moment when the application was last updated.</p>
    #   @return [Time]
    class ApplicationSummary < Struct.new(
      nil,
      :id,
      :arn,
      :name,
      :description,
      :creation_time,
      :last_update_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The result of the application tag that's applied to a resource.
    #     </p>
    # @!attribute application_tag_status
    #   <p>
    #         The application tag is in the process of being applied to a resource, was successfully applied to a resource, or failed to apply to a resource.
    #       </p>
    #   @return [String]
    # @!attribute error_message
    #   <p>
    #         The message returned if the call fails.
    #       </p>
    #   @return [String]
    # @!attribute resources
    #   <p>
    #         The resources associated with an application
    #       </p>
    #   @return [Array<Types::ResourcesListItem>]
    # @!attribute next_token
    #   <p>
    #         A unique pagination token for each page of results. Make the call again with the returned token to retrieve the next page of results.
    #       </p>
    #   @return [String]
    class ApplicationTagResult < Struct.new(
      nil,
      :application_tag_status,
      :error_message,
      :resources,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application
    #   <p>
    #          The name, ID, or ARN 
    #          of the application.
    #        </p>
    #   @return [String]
    # @!attribute attribute_group
    #   <p>
    #          The name, ID, or ARN 
    #          of the attribute group 
    #          that holds the attributes 
    #          to describe the application.
    #        </p>
    #   @return [String]
    class AssociateAttributeGroupRequest < Struct.new(
      nil,
      :application,
      :attribute_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_arn
    #   <p>The Amazon resource name (ARN) of the application that was augmented with attributes.</p>
    #   @return [String]
    # @!attribute attribute_group_arn
    #   <p>The Amazon resource name (ARN) of the attribute group that contains the application's new attributes.</p>
    #   @return [String]
    class AssociateAttributeGroupResponse < Struct.new(
      nil,
      :application_arn,
      :attribute_group_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application
    #   <p>
    #          The name, ID, or ARN 
    #          of the application.
    #        </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource of which the application will be associated.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>The name or ID of the resource of which the application will be associated.</p>
    #   @return [String]
    # @!attribute options
    #   <p>
    #         Determines whether an application tag is applied or skipped.
    #       </p>
    #   @return [Array<String>]
    class AssociateResourceRequest < Struct.new(
      nil,
      :application,
      :resource_type,
      :resource,
      :options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_arn
    #   <p>The Amazon resource name (ARN) of the application that was augmented with attributes.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon resource name (ARN) that specifies the resource.</p>
    #   @return [String]
    # @!attribute options
    #   <p>
    #         Determines whether an application tag is applied or skipped.
    #       </p>
    #   @return [Array<String>]
    class AssociateResourceResponse < Struct.new(
      nil,
      :application_arn,
      :resource_arn,
      :options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a Amazon Web Services Service Catalog AppRegistry attribute group that is rich metadata which describes an application and its components.</p>
    # @!attribute id
    #   <p>The globally unique attribute group identifier of the attribute group.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon resource name (ARN) that specifies the attribute group across services.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the attribute group.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the attribute group that the user provides.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The ISO-8601 formatted timestamp of the moment the attribute group was created.</p>
    #   @return [Time]
    # @!attribute last_update_time
    #   <p>The ISO-8601 formatted timestamp of the moment the attribute group was last updated. This time is the same as the creationTime for a newly created attribute group.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>Key-value pairs you can use to associate with the attribute group.</p>
    #   @return [Hash<String, String>]
    class AttributeGroup < Struct.new(
      nil,
      :id,
      :arn,
      :name,
      :description,
      :creation_time,
      :last_update_time,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The details related to a specific AttributeGroup.
    #     </p>
    # @!attribute id
    #   <p>The unique identifier of the attribute group.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon resource name (ARN) that specifies the attribute group.</p>
    #   @return [String]
    # @!attribute name
    #   <important>
    #               <p>
    #           This field is no longer supported.
    #           We recommend
    #           you don't use the field when using <code>ListAttributeGroupsForApplication</code>.
    #         </p>
    #            </important>
    #            <p>
    #         The name of the attribute group.
    #       </p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The service principal that created the attribute group.</p>
    #   @return [String]
    class AttributeGroupDetails < Struct.new(
      nil,
      :id,
      :arn,
      :name,
      :created_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary of a Amazon Web Services Service Catalog AppRegistry attribute group.</p>
    # @!attribute id
    #   <p>The globally unique attribute group identifier of the attribute group.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon resource name (ARN) that specifies the attribute group across services.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the attribute group.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the attribute group that the user provides.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The ISO-8601 formatted timestamp of the moment the attribute group was created.</p>
    #   @return [Time]
    # @!attribute last_update_time
    #   <p>The ISO-8601 formatted timestamp of the moment the attribute group was last updated. This time is the same as the creationTime for a newly created attribute group.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The service principal that created the attribute group.</p>
    #   @return [String]
    class AttributeGroupSummary < Struct.new(
      nil,
      :id,
      :arn,
      :name,
      :description,
      :creation_time,
      :last_update_time,
      :created_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>There was a conflict when processing the request (for example, a resource with the given
    #       name already exists within the account).</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the application. The name must be unique in the region in which you are creating the application.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the application.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Key-value pairs you can use to associate with the application.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique identifier that you provide to ensure idempotency. If you retry a request that
    #         completed successfully using the same client token and the same parameters, the retry succeeds
    #         without performing any further actions. If you retry a successful request using the same
    #         client token, but one or more of the parameters are different, the retry fails.</p>
    #   @return [String]
    class CreateApplicationRequest < Struct.new(
      nil,
      :name,
      :description,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application
    #   <p>Information about the application.</p>
    #   @return [Types::Application]
    class CreateApplicationResponse < Struct.new(
      nil,
      :application,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the attribute group.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the attribute group that the user provides.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>A JSON string in the form of nested key-value pairs that represent the attributes in the group and describes an application and its components.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Key-value pairs you can use to associate with the attribute group.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique identifier that you provide to ensure idempotency. If you retry a request that
    #         completed successfully using the same client token and the same parameters, the retry succeeds
    #         without performing any further actions. If you retry a successful request using the same
    #         client token, but one or more of the parameters are different, the retry fails.</p>
    #   @return [String]
    class CreateAttributeGroupRequest < Struct.new(
      nil,
      :name,
      :description,
      :attributes,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attribute_group
    #   <p>Information about the attribute group.</p>
    #   @return [Types::AttributeGroup]
    class CreateAttributeGroupResponse < Struct.new(
      nil,
      :attribute_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application
    #   <p>
    #          The name, ID, or ARN 
    #          of the application.
    #        </p>
    #   @return [String]
    class DeleteApplicationRequest < Struct.new(
      nil,
      :application,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application
    #   <p>Information about the deleted application.</p>
    #   @return [Types::ApplicationSummary]
    class DeleteApplicationResponse < Struct.new(
      nil,
      :application,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attribute_group
    #   <p>
    #          The name, ID, or ARN 
    #          of the attribute group 
    #          that holds the attributes 
    #          to describe the application.
    #        </p>
    #   @return [String]
    class DeleteAttributeGroupRequest < Struct.new(
      nil,
      :attribute_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attribute_group
    #   <p>Information about the deleted attribute group.</p>
    #   @return [Types::AttributeGroupSummary]
    class DeleteAttributeGroupResponse < Struct.new(
      nil,
      :attribute_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application
    #   <p>
    #          The name, ID, or ARN 
    #          of the application.
    #        </p>
    #   @return [String]
    # @!attribute attribute_group
    #   <p>
    #          The name, ID, or ARN 
    #          of the attribute group 
    #          that holds the attributes 
    #          to describe the application.
    #        </p>
    #   @return [String]
    class DisassociateAttributeGroupRequest < Struct.new(
      nil,
      :application,
      :attribute_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_arn
    #   <p>The Amazon resource name (ARN) that specifies the application.</p>
    #   @return [String]
    # @!attribute attribute_group_arn
    #   <p>The Amazon resource name (ARN) that specifies the attribute group.</p>
    #   @return [String]
    class DisassociateAttributeGroupResponse < Struct.new(
      nil,
      :application_arn,
      :attribute_group_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application
    #   <p>The name or ID of the application.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that is being disassociated.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>The name or ID of the resource.</p>
    #   @return [String]
    class DisassociateResourceRequest < Struct.new(
      nil,
      :application,
      :resource_type,
      :resource,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_arn
    #   <p>The Amazon resource name (ARN) that specifies the application.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon resource name (ARN) that specifies the resource.</p>
    #   @return [String]
    class DisassociateResourceResponse < Struct.new(
      nil,
      :application_arn,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application
    #   <p>
    #          The name, ID, or ARN 
    #          of the application.
    #        </p>
    #   @return [String]
    class GetApplicationRequest < Struct.new(
      nil,
      :application,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the application.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon resource name (ARN) that specifies the application across services.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the application. The name must be unique in the region in which you are creating the application.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the application.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The ISO-8601 formatted timestamp of the moment when the application was created.</p>
    #   @return [Time]
    # @!attribute last_update_time
    #   <p>The ISO-8601 formatted timestamp of the moment when the application was last updated.</p>
    #   @return [Time]
    # @!attribute associated_resource_count
    #   <p>The number of top-level resources that were registered as part of this application.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>Key-value pairs associated with the application.</p>
    #   @return [Hash<String, String>]
    # @!attribute integrations
    #   <p>
    #          The information 
    #          about the integration 
    #          of the application 
    #          with other services, 
    #          such as
    #           Resource Groups.
    #        </p>
    #   @return [Types::Integrations]
    # @!attribute application_tag
    #   <p>
    #         A key-value pair that identifies an associated resource.
    #       </p>
    #   @return [Hash<String, String>]
    class GetApplicationResponse < Struct.new(
      nil,
      :id,
      :arn,
      :name,
      :description,
      :creation_time,
      :last_update_time,
      :associated_resource_count,
      :tags,
      :integrations,
      :application_tag,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:associated_resource_count] = 0 unless options.key?(:associated_resource_count)
        super
      end
    end

    # @!attribute application
    #   <p>
    #          The name, ID, or ARN 
    #          of the application.
    #        </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource associated with the application.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>The name or ID of the resource associated with the application.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>
    #         A unique pagination token for each page of results. 
    #         Make the call again with the returned token to retrieve the next page of results.
    #       </p>
    #   @return [String]
    # @!attribute resource_tag_status
    #   <p>
    #         States whether an application tag is applied, not applied, in the process of being applied, or skipped.
    #       </p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>
    #         The maximum number of results to return. If the parameter is omitted, it defaults to 25. The value is optional.
    #       </p>
    #   @return [Integer]
    class GetAssociatedResourceRequest < Struct.new(
      nil,
      :application,
      :resource_type,
      :resource,
      :next_token,
      :resource_tag_status,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource
    #   <p>The resource associated with the application.</p>
    #   @return [Types::Resource]
    # @!attribute options
    #   <p>
    #         Determines whether an application tag is applied or skipped.
    #       </p>
    #   @return [Array<String>]
    # @!attribute application_tag_result
    #   <p>
    #         The result of the application that's tag applied to a resource.
    #       </p>
    #   @return [Types::ApplicationTagResult]
    class GetAssociatedResourceResponse < Struct.new(
      nil,
      :resource,
      :options,
      :application_tag_result,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attribute_group
    #   <p>
    #          The name, ID, or ARN 
    #          of the attribute group 
    #          that holds the attributes 
    #          to describe the application.
    #        </p>
    #   @return [String]
    class GetAttributeGroupRequest < Struct.new(
      nil,
      :attribute_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the attribute group.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon resource name (ARN) that specifies the attribute group across services.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the attribute group.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the attribute group that the user provides.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>A JSON string in the form of nested key-value pairs that represent the attributes in the group and describes an application and its components.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The ISO-8601 formatted timestamp of the moment the attribute group was created.</p>
    #   @return [Time]
    # @!attribute last_update_time
    #   <p>The ISO-8601 formatted timestamp of the moment the attribute group was last updated. This time is the same as the creationTime for a newly created attribute group.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>Key-value pairs associated with the attribute group.</p>
    #   @return [Hash<String, String>]
    # @!attribute created_by
    #   <p>The service principal that created the attribute group.</p>
    #   @return [String]
    class GetAttributeGroupResponse < Struct.new(
      nil,
      :id,
      :arn,
      :name,
      :description,
      :attributes,
      :creation_time,
      :last_update_time,
      :tags,
      :created_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration
    #   <p>
    #         Retrieves <code>TagKey</code> configuration 
    #         from an account.
    #       </p>
    #   @return [Types::AppRegistryConfiguration]
    class GetConfigurationResponse < Struct.new(
      nil,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The information about the service integration.</p>
    # @!attribute resource_group
    #   <p> The information about the resource group integration.</p>
    #   @return [Types::ResourceGroup]
    # @!attribute application_tag_resource_group
    #   <p>The information about the resource group integration.</p>
    #   @return [Types::ResourceGroup]
    class Integrations < Struct.new(
      nil,
      :resource_group,
      :application_tag_resource_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service is experiencing internal problems.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to get the next page of results after a previous API call. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The upper bound of the number of results to return (cannot exceed 25). If this parameter is omitted, it defaults to 25. This value is optional.</p>
    #   @return [Integer]
    class ListApplicationsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute applications
    #   <p>This list of applications.</p>
    #   @return [Array<Types::ApplicationSummary>]
    # @!attribute next_token
    #   <p>The token to use to get the next page of results after a previous API call. </p>
    #   @return [String]
    class ListApplicationsResponse < Struct.new(
      nil,
      :applications,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application
    #   <p>The name or ID of the application.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to use to get the next page of results after a previous API call. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The upper bound of the number of results to return (cannot exceed 25). If this parameter is omitted, it defaults to 25. This value is optional.</p>
    #   @return [Integer]
    class ListAssociatedAttributeGroupsRequest < Struct.new(
      nil,
      :application,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attribute_groups
    #   <p>A list of attribute group IDs.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token to use to get the next page of results after a previous API call. </p>
    #   @return [String]
    class ListAssociatedAttributeGroupsResponse < Struct.new(
      nil,
      :attribute_groups,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application
    #   <p>
    #          The name, ID, or ARN 
    #          of the application.
    #        </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to use to get the next page of results after a previous API call. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The upper bound of the number of results to return (cannot exceed 25). If this parameter is omitted, it defaults to 25. This value is optional.</p>
    #   @return [Integer]
    class ListAssociatedResourcesRequest < Struct.new(
      nil,
      :application,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resources
    #   <p>Information about the resources.</p>
    #   @return [Array<Types::ResourceInfo>]
    # @!attribute next_token
    #   <p>The token to use to get the next page of results after a previous API call. </p>
    #   @return [String]
    class ListAssociatedResourcesResponse < Struct.new(
      nil,
      :resources,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application
    #   <p>The name or ID of the application.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>This token retrieves the next page of results after a previous API call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The upper bound of the number of results to return. The value cannot exceed 25. If you omit this parameter, it defaults to 25. This value is optional.</p>
    #   @return [Integer]
    class ListAttributeGroupsForApplicationRequest < Struct.new(
      nil,
      :application,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attribute_groups_details
    #   <p> The details related to a specific attribute group. </p>
    #   @return [Array<Types::AttributeGroupDetails>]
    # @!attribute next_token
    #   <p>The token to use to get the next page of results after a previous API call.</p>
    #   @return [String]
    class ListAttributeGroupsForApplicationResponse < Struct.new(
      nil,
      :attribute_groups_details,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to get the next page of results after a previous API call. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The upper bound of the number of results to return (cannot exceed 25). If this parameter is omitted, it defaults to 25. This value is optional.</p>
    #   @return [Integer]
    class ListAttributeGroupsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attribute_groups
    #   <p>This list of attribute groups.</p>
    #   @return [Array<Types::AttributeGroupSummary>]
    # @!attribute next_token
    #   <p>The token to use to get the next page of results after a previous API call. </p>
    #   @return [String]
    class ListAttributeGroupsResponse < Struct.new(
      nil,
      :attribute_groups,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon resource name (ARN) that specifies the resource.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags on the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration
    #   <p>
    #         Associates a <code>TagKey</code> configuration 
    #         to an account.
    #       </p>
    #   @return [Types::AppRegistryConfiguration]
    class PutConfigurationRequest < Struct.new(
      nil,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The information about the resource.</p>
    # @!attribute name
    #   <p>The name of the resource.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon resource name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute association_time
    #   <p>The time the resource was associated with the application.</p>
    #   @return [Time]
    # @!attribute integrations
    #   <p>The service integration information about the resource.
    #        </p>
    #   @return [Types::ResourceIntegrations]
    class Resource < Struct.new(
      nil,
      :name,
      :arn,
      :association_time,
      :integrations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The details
    #       related
    #       to the
    #       resource.
    #     </p>
    # @!attribute tag_value
    #   <p>The value of the tag.</p>
    #   @return [String]
    class ResourceDetails < Struct.new(
      nil,
      :tag_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The information about the resource group integration.</p>
    # @!attribute state
    #   <p>The state of the propagation process for the resource group. The states includes:</p>
    #            <p>
    #               <code>CREATING </code>if the resource group is in the process of being created.</p>
    #            <p>
    #               <code>CREATE_COMPLETE</code> if the resource group was created successfully.</p>
    #            <p>
    #               <code>CREATE_FAILED</code> if the resource group failed to be created.</p>
    #            <p>
    #               <code>UPDATING</code> if the resource group is in the process of being updated.</p>
    #            <p>
    #               <code>UPDATE_COMPLETE</code> if the resource group updated successfully.</p>
    #            <p>
    #               <code>UPDATE_FAILED</code> if the resource group could not update successfully.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon resource name (ARN) of the resource group.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message that generates when the propagation process for the resource group fails.</p>
    #   @return [String]
    class ResourceGroup < Struct.new(
      nil,
      :state,
      :arn,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The information about the resource.</p>
    # @!attribute name
    #   <p>The name of the resource.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon resource name (ARN) that specifies the resource across services.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>
    #         Provides information 
    #         about the Service Catalog App Registry resource type.
    #       </p>
    #   @return [String]
    # @!attribute resource_details
    #   <p>
    #         The details related
    #         to
    #         the resource.
    #       </p>
    #   @return [Types::ResourceDetails]
    # @!attribute options
    #   <p>
    #         Determines whether an application tag is applied or skipped.
    #       </p>
    #   @return [Array<String>]
    class ResourceInfo < Struct.new(
      nil,
      :name,
      :arn,
      :resource_type,
      :resource_details,
      :options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service integration information about the resource.</p>
    # @!attribute resource_group
    #   <p>The information about the integration of Resource Groups.</p>
    #   @return [Types::ResourceGroup]
    class ResourceIntegrations < Struct.new(
      nil,
      :resource_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource does not exist.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The resource in a list of resources.
    #     </p>
    # @!attribute resource_arn
    #   <p>
    #         The Amazon resource name (ARN) of the resource.
    #       </p>
    #   @return [String]
    # @!attribute error_message
    #   <p>
    #         The message returned if the call fails.
    #       </p>
    #   @return [String]
    # @!attribute status
    #   <p>
    #         The status of the list item.
    #       </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>
    #         Provides information about the AppRegistry resource type.
    #       </p>
    #   @return [String]
    class ResourcesListItem < Struct.new(
      nil,
      :resource_arn,
      :error_message,
      :status,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The maximum number 
    #       of resources per account 
    #       has been reached.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_type
    #   <p>The type of resource of which the application will be associated.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>An entity you can work with and specify with a name or ID. Examples include an Amazon EC2 instance, an Amazon Web Services CloudFormation stack, or an Amazon S3 bucket.</p>
    #   @return [String]
    class SyncResourceRequest < Struct.new(
      nil,
      :resource_type,
      :resource,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_arn
    #   <p>The Amazon resource name (ARN) that specifies the application.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon resource name (ARN) that specifies the resource.</p>
    #   @return [String]
    # @!attribute action_taken
    #   <p>The results of the output if an application is associated with an ARN value, which could be <code>syncStarted</code> or None.</p>
    #   @return [String]
    class SyncResourceResponse < Struct.new(
      nil,
      :application_arn,
      :resource_arn,
      :action_taken,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The
    #       definition
    #       of <code>tagQuery</code>. 
    #       Specifies which resources are associated with an
    #       application.
    #     </p>
    # @!attribute tag_key
    #   <p>
    #         Condition 
    #         in the IAM policy 
    #         that associates resources 
    #         to an application.
    #       </p>
    #   @return [String]
    class TagQueryConfiguration < Struct.new(
      nil,
      :tag_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon resource name (ARN) that specifies the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The new or modified tags for the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The maximum number 
    #       of API requests 
    #       has been exceeded.
    #     </p>
    # @!attribute message
    #   <p>A message associated with the Throttling exception.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The originating service code.</p>
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      :service_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon resource name (ARN) that specifies the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of the tag keys to remove from the specified resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application
    #   <p>
    #          The name, ID, or ARN 
    #          of the application 
    #          that will be updated.
    #        </p>
    #   @return [String]
    # @!attribute name
    #   <p>Deprecated: The new name of the application. The name must be unique in the region in which you are
    #          updating the application. Please do not use this field as we have stopped supporting name updates.</p>
    #   @deprecated
    #     Name update for application is deprecated.
    #   @return [String]
    # @!attribute description
    #   <p>The new description of the application.</p>
    #   @return [String]
    class UpdateApplicationRequest < Struct.new(
      nil,
      :application,
      :name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application
    #   <p>The updated information of the application.</p>
    #   @return [Types::Application]
    class UpdateApplicationResponse < Struct.new(
      nil,
      :application,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attribute_group
    #   <p>
    #          The name, ID, or ARN 
    #          of the attribute group 
    #          that holds the attributes 
    #          to describe the application.
    #        </p>
    #   @return [String]
    # @!attribute name
    #   <p>Deprecated: The new name of the attribute group. The name must be unique in the region in which you are
    #          updating the attribute group. Please do not use this field as we have stopped supporting name updates.</p>
    #   @deprecated
    #     Name update for attribute group is deprecated.
    #   @return [String]
    # @!attribute description
    #   <p>The description of the attribute group that the user provides.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>A JSON string in the form of nested key-value pairs that represent the attributes in the group and describes an application and its components.</p>
    #   @return [String]
    class UpdateAttributeGroupRequest < Struct.new(
      nil,
      :attribute_group,
      :name,
      :description,
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attribute_group
    #   <p>The updated information of the attribute group.</p>
    #   @return [Types::AttributeGroup]
    class UpdateAttributeGroupResponse < Struct.new(
      nil,
      :attribute_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request has invalid or missing parameters.</p>
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
