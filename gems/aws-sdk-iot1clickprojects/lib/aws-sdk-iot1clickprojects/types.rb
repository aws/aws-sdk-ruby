# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoT1ClickProjects
  module Types

    # @note When making an API call, you may pass AssociateDeviceWithPlacementRequest
    #   data as a hash:
    #
    #       {
    #         project_name: "ProjectName", # required
    #         placement_name: "PlacementName", # required
    #         device_id: "DeviceId", # required
    #         device_template_name: "DeviceTemplateName", # required
    #       }
    #
    # @!attribute [rw] project_name
    #   The name of the project containing the placement in which to
    #   associate the device.
    #   @return [String]
    #
    # @!attribute [rw] placement_name
    #   The name of the placement in which to associate the device.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The ID of the physical device to be associated with the given
    #   placement in the project. Note that a mandatory 4 character prefix
    #   is required for all `deviceId` values.
    #   @return [String]
    #
    # @!attribute [rw] device_template_name
    #   The device template name to associate with the device ID.
    #   @return [String]
    #
    class AssociateDeviceWithPlacementRequest < Struct.new(
      :project_name,
      :placement_name,
      :device_id,
      :device_template_name)
      include Aws::Structure
    end

    class AssociateDeviceWithPlacementResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CreatePlacementRequest
    #   data as a hash:
    #
    #       {
    #         placement_name: "PlacementName", # required
    #         project_name: "ProjectName", # required
    #         attributes: {
    #           "AttributeName" => "AttributeValue",
    #         },
    #       }
    #
    # @!attribute [rw] placement_name
    #   The name of the placement to be created.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the project in which to create the placement.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   Optional user-defined key/value pairs providing contextual data
    #   (such as location or function) for the placement.
    #   @return [Hash<String,String>]
    #
    class CreatePlacementRequest < Struct.new(
      :placement_name,
      :project_name,
      :attributes)
      include Aws::Structure
    end

    class CreatePlacementResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CreateProjectRequest
    #   data as a hash:
    #
    #       {
    #         project_name: "ProjectName", # required
    #         description: "Description",
    #         placement_template: {
    #           default_attributes: {
    #             "AttributeName" => "AttributeDefaultValue",
    #           },
    #           device_templates: {
    #             "DeviceTemplateName" => {
    #               device_type: "DeviceType",
    #               callback_overrides: {
    #                 "DeviceCallbackKey" => "DeviceCallbackValue",
    #               },
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] project_name
    #   The name of the project to create.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description for the project.
    #   @return [String]
    #
    # @!attribute [rw] placement_template
    #   The schema defining the placement to be created. A placement
    #   template defines placement default attributes and device templates.
    #   You cannot add or remove device templates after the project has been
    #   created. However, you can update `callbackOverrides` for the device
    #   templates using the `UpdateProject` API.
    #   @return [Types::PlacementTemplate]
    #
    class CreateProjectRequest < Struct.new(
      :project_name,
      :description,
      :placement_template)
      include Aws::Structure
    end

    class CreateProjectResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeletePlacementRequest
    #   data as a hash:
    #
    #       {
    #         placement_name: "PlacementName", # required
    #         project_name: "ProjectName", # required
    #       }
    #
    # @!attribute [rw] placement_name
    #   The name of the empty placement to delete.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The project containing the empty placement to delete.
    #   @return [String]
    #
    class DeletePlacementRequest < Struct.new(
      :placement_name,
      :project_name)
      include Aws::Structure
    end

    class DeletePlacementResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteProjectRequest
    #   data as a hash:
    #
    #       {
    #         project_name: "ProjectName", # required
    #       }
    #
    # @!attribute [rw] project_name
    #   The name of the empty project to delete.
    #   @return [String]
    #
    class DeleteProjectRequest < Struct.new(
      :project_name)
      include Aws::Structure
    end

    class DeleteProjectResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribePlacementRequest
    #   data as a hash:
    #
    #       {
    #         placement_name: "PlacementName", # required
    #         project_name: "ProjectName", # required
    #       }
    #
    # @!attribute [rw] placement_name
    #   The name of the placement within a project.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The project containing the placement to be described.
    #   @return [String]
    #
    class DescribePlacementRequest < Struct.new(
      :placement_name,
      :project_name)
      include Aws::Structure
    end

    # @!attribute [rw] placement
    #   An object describing the placement.
    #   @return [Types::PlacementDescription]
    #
    class DescribePlacementResponse < Struct.new(
      :placement)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeProjectRequest
    #   data as a hash:
    #
    #       {
    #         project_name: "ProjectName", # required
    #       }
    #
    # @!attribute [rw] project_name
    #   The name of the project to be described.
    #   @return [String]
    #
    class DescribeProjectRequest < Struct.new(
      :project_name)
      include Aws::Structure
    end

    # @!attribute [rw] project
    #   An object describing the project.
    #   @return [Types::ProjectDescription]
    #
    class DescribeProjectResponse < Struct.new(
      :project)
      include Aws::Structure
    end

    # An object representing a device for a placement template (see
    # PlacementTemplate).
    #
    # @note When making an API call, you may pass DeviceTemplate
    #   data as a hash:
    #
    #       {
    #         device_type: "DeviceType",
    #         callback_overrides: {
    #           "DeviceCallbackKey" => "DeviceCallbackValue",
    #         },
    #       }
    #
    # @!attribute [rw] device_type
    #   The device type, which currently must be `"button"`.
    #   @return [String]
    #
    # @!attribute [rw] callback_overrides
    #   An optional Lambda function to invoke instead of the default Lambda
    #   function provided by the placement template.
    #   @return [Hash<String,String>]
    #
    class DeviceTemplate < Struct.new(
      :device_type,
      :callback_overrides)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateDeviceFromPlacementRequest
    #   data as a hash:
    #
    #       {
    #         project_name: "ProjectName", # required
    #         placement_name: "PlacementName", # required
    #         device_template_name: "DeviceTemplateName", # required
    #       }
    #
    # @!attribute [rw] project_name
    #   The name of the project that contains the placement.
    #   @return [String]
    #
    # @!attribute [rw] placement_name
    #   The name of the placement that the device should be removed from.
    #   @return [String]
    #
    # @!attribute [rw] device_template_name
    #   The device ID that should be removed from the placement.
    #   @return [String]
    #
    class DisassociateDeviceFromPlacementRequest < Struct.new(
      :project_name,
      :placement_name,
      :device_template_name)
      include Aws::Structure
    end

    class DisassociateDeviceFromPlacementResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass GetDevicesInPlacementRequest
    #   data as a hash:
    #
    #       {
    #         project_name: "ProjectName", # required
    #         placement_name: "PlacementName", # required
    #       }
    #
    # @!attribute [rw] project_name
    #   The name of the project containing the placement.
    #   @return [String]
    #
    # @!attribute [rw] placement_name
    #   The name of the placement to get the devices from.
    #   @return [String]
    #
    class GetDevicesInPlacementRequest < Struct.new(
      :project_name,
      :placement_name)
      include Aws::Structure
    end

    # @!attribute [rw] devices
    #   An object containing the devices (zero or more) within the
    #   placement.
    #   @return [Hash<String,String>]
    #
    class GetDevicesInPlacementResponse < Struct.new(
      :devices)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPlacementsRequest
    #   data as a hash:
    #
    #       {
    #         project_name: "ProjectName", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] project_name
    #   The project containing the placements to be listed.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per request. If not set, a
    #   default value of 100 is used.
    #   @return [Integer]
    #
    class ListPlacementsRequest < Struct.new(
      :project_name,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] placements
    #   An object listing the requested placements.
    #   @return [Array<Types::PlacementSummary>]
    #
    # @!attribute [rw] next_token
    #   The token used to retrieve the next set of results - will be
    #   effectively empty if there are no further results.
    #   @return [String]
    #
    class ListPlacementsResponse < Struct.new(
      :placements,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListProjectsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per request. If not set, a
    #   default value of 100 is used.
    #   @return [Integer]
    #
    class ListProjectsRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] projects
    #   An object containing the list of projects.
    #   @return [Array<Types::ProjectSummary>]
    #
    # @!attribute [rw] next_token
    #   The token used to retrieve the next set of results - will be
    #   effectively empty if there are no further results.
    #   @return [String]
    #
    class ListProjectsResponse < Struct.new(
      :projects,
      :next_token)
      include Aws::Structure
    end

    # An object describing a project's placement.
    #
    # @!attribute [rw] project_name
    #   The name of the project containing the placement.
    #   @return [String]
    #
    # @!attribute [rw] placement_name
    #   The name of the placement.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The user-defined attributes associated with the placement.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] created_date
    #   The date when the placement was initially created, in UNIX epoch
    #   time format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_date
    #   The date when the placement was last updated, in UNIX epoch time
    #   format. If the placement was not updated, then `createdDate` and
    #   `updatedDate` are the same.
    #   @return [Time]
    #
    class PlacementDescription < Struct.new(
      :project_name,
      :placement_name,
      :attributes,
      :created_date,
      :updated_date)
      include Aws::Structure
    end

    # An object providing summary information for a particular placement.
    #
    # @!attribute [rw] project_name
    #   The name of the project containing the placement.
    #   @return [String]
    #
    # @!attribute [rw] placement_name
    #   The name of the placement being summarized.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date when the placement was originally created, in UNIX epoch
    #   time format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_date
    #   The date when the placement was last updated, in UNIX epoch time
    #   format. If the placement was not updated, then `createdDate` and
    #   `updatedDate` are the same.
    #   @return [Time]
    #
    class PlacementSummary < Struct.new(
      :project_name,
      :placement_name,
      :created_date,
      :updated_date)
      include Aws::Structure
    end

    # An object defining the template for a placement.
    #
    # @note When making an API call, you may pass PlacementTemplate
    #   data as a hash:
    #
    #       {
    #         default_attributes: {
    #           "AttributeName" => "AttributeDefaultValue",
    #         },
    #         device_templates: {
    #           "DeviceTemplateName" => {
    #             device_type: "DeviceType",
    #             callback_overrides: {
    #               "DeviceCallbackKey" => "DeviceCallbackValue",
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] default_attributes
    #   The default attributes (key/value pairs) to be applied to all
    #   placements using this template.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] device_templates
    #   An object specifying the DeviceTemplate for all placements using
    #   this (PlacementTemplate) template.
    #   @return [Hash<String,Types::DeviceTemplate>]
    #
    class PlacementTemplate < Struct.new(
      :default_attributes,
      :device_templates)
      include Aws::Structure
    end

    # An object providing detailed information for a particular project
    # associated with an AWS account and region.
    #
    # @!attribute [rw] project_name
    #   The name of the project for which to obtain information from.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the project.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date when the project was originally created, in UNIX epoch time
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_date
    #   The date when the project was last updated, in UNIX epoch time
    #   format. If the project was not updated, then `createdDate` and
    #   `updatedDate` are the same.
    #   @return [Time]
    #
    # @!attribute [rw] placement_template
    #   An object describing the project's placement specifications.
    #   @return [Types::PlacementTemplate]
    #
    class ProjectDescription < Struct.new(
      :project_name,
      :description,
      :created_date,
      :updated_date,
      :placement_template)
      include Aws::Structure
    end

    # An object providing summary information for a particular project for
    # an associated AWS account and region.
    #
    # @!attribute [rw] project_name
    #   The name of the project being summarized.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date when the project was originally created, in UNIX epoch time
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_date
    #   The date when the project was last updated, in UNIX epoch time
    #   format. If the project was not updated, then `createdDate` and
    #   `updatedDate` are the same.
    #   @return [Time]
    #
    class ProjectSummary < Struct.new(
      :project_name,
      :created_date,
      :updated_date)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdatePlacementRequest
    #   data as a hash:
    #
    #       {
    #         placement_name: "PlacementName", # required
    #         project_name: "ProjectName", # required
    #         attributes: {
    #           "AttributeName" => "AttributeValue",
    #         },
    #       }
    #
    # @!attribute [rw] placement_name
    #   The name of the placement to update.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the project containing the placement to be updated.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The user-defined object of attributes used to update the placement.
    #   The maximum number of key/value pairs is 50.
    #   @return [Hash<String,String>]
    #
    class UpdatePlacementRequest < Struct.new(
      :placement_name,
      :project_name,
      :attributes)
      include Aws::Structure
    end

    class UpdatePlacementResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateProjectRequest
    #   data as a hash:
    #
    #       {
    #         project_name: "ProjectName", # required
    #         description: "Description",
    #         placement_template: {
    #           default_attributes: {
    #             "AttributeName" => "AttributeDefaultValue",
    #           },
    #           device_templates: {
    #             "DeviceTemplateName" => {
    #               device_type: "DeviceType",
    #               callback_overrides: {
    #                 "DeviceCallbackKey" => "DeviceCallbackValue",
    #               },
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] project_name
    #   The name of the project to be updated.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional user-defined description for the project.
    #   @return [String]
    #
    # @!attribute [rw] placement_template
    #   An object defining the project update. Once a project has been
    #   created, you cannot add device template names to the project.
    #   However, for a given `placementTemplate`, you can update the
    #   associated `callbackOverrides` for the device definition using this
    #   API.
    #   @return [Types::PlacementTemplate]
    #
    class UpdateProjectRequest < Struct.new(
      :project_name,
      :description,
      :placement_template)
      include Aws::Structure
    end

    class UpdateProjectResponse < Aws::EmptyStructure; end

  end
end
