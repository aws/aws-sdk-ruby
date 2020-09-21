# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTSiteWise
  module Types

    # Contains an access policy that defines an identity's access to an AWS
    # IoT SiteWise Monitor resource.
    #
    # @!attribute [rw] id
    #   The ID of the access policy.
    #   @return [String]
    #
    # @!attribute [rw] identity
    #   The identity (an AWS SSO user, an AWS SSO group, or an IAM user).
    #   @return [Types::Identity]
    #
    # @!attribute [rw] resource
    #   The AWS IoT SiteWise Monitor resource (a portal or project).
    #   @return [Types::Resource]
    #
    # @!attribute [rw] permission
    #   The permissions for the access policy. Note that a project
    #   `ADMINISTRATOR` is also known as a project owner.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date the access policy was created, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_date
    #   The date the access policy was last updated, in Unix epoch time.
    #   @return [Time]
    #
    class AccessPolicySummary < Struct.new(
      :id,
      :identity,
      :resource,
      :permission,
      :creation_date,
      :last_update_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains aggregated asset property values (for example, average,
    # minimum, and maximum).
    #
    # @!attribute [rw] timestamp
    #   The date the aggregating computations occurred, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] quality
    #   The quality of the aggregated data.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the aggregates.
    #   @return [Types::Aggregates]
    #
    class AggregatedValue < Struct.new(
      :timestamp,
      :quality,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the (pre-calculated) aggregate values for an asset property.
    #
    # @!attribute [rw] average
    #   The average (mean) value of the time series over a time interval
    #   window.
    #   @return [Float]
    #
    # @!attribute [rw] count
    #   The count of data points in the time series over a time interval
    #   window.
    #   @return [Float]
    #
    # @!attribute [rw] maximum
    #   The maximum value of the time series over a time interval window.
    #   @return [Float]
    #
    # @!attribute [rw] minimum
    #   The minimum value of the time series over a time interval window.
    #   @return [Float]
    #
    # @!attribute [rw] sum
    #   The sum of the time series over a time interval window.
    #   @return [Float]
    #
    # @!attribute [rw] standard_deviation
    #   The standard deviation of the time series over a time interval
    #   window.
    #   @return [Float]
    #
    class Aggregates < Struct.new(
      :average,
      :count,
      :maximum,
      :minimum,
      :sum,
      :standard_deviation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains error details for the requested associate project asset
    # action.
    #
    # @!attribute [rw] asset_id
    #   The ID of the asset.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    class AssetErrorDetails < Struct.new(
      :asset_id,
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an asset hierarchy that contains a hierarchy's name and ID.
    #
    # @!attribute [rw] id
    #   The ID of the hierarchy. This ID is a `hierarchyId`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The hierarchy name provided in the [CreateAssetModel][1] or
    #   [UpdateAssetModel][2] API operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModel.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html
    #   @return [String]
    #
    class AssetHierarchy < Struct.new(
      :id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an asset hierarchy that contains a hierarchy's name, ID,
    # and child asset model ID that specifies the type of asset that can be
    # in this hierarchy.
    #
    # @note When making an API call, you may pass AssetModelHierarchy
    #   data as a hash:
    #
    #       {
    #         id: "ID",
    #         name: "Name", # required
    #         child_asset_model_id: "ID", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the asset model hierarchy. This ID is a `hierarchyId`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the asset model hierarchy that you specify by using the
    #   [CreateAssetModel][1] or [UpdateAssetModel][2] API operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModel.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html
    #   @return [String]
    #
    # @!attribute [rw] child_asset_model_id
    #   The ID of the asset model. All assets in this hierarchy must be
    #   instances of the `childAssetModelId` asset model.
    #   @return [String]
    #
    class AssetModelHierarchy < Struct.new(
      :id,
      :name,
      :child_asset_model_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an asset model hierarchy used in asset model creation. An
    # asset model hierarchy determines the kind (or type) of asset that can
    # belong to a hierarchy.
    #
    # @note When making an API call, you may pass AssetModelHierarchyDefinition
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         child_asset_model_id: "ID", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the asset model hierarchy definition (as specified in
    #   the [CreateAssetModel][1] or [UpdateAssetModel][2] API operation).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModel.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html
    #   @return [String]
    #
    # @!attribute [rw] child_asset_model_id
    #   The ID of an asset model for this hierarchy.
    #   @return [String]
    #
    class AssetModelHierarchyDefinition < Struct.new(
      :name,
      :child_asset_model_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an asset model property.
    #
    # @note When making an API call, you may pass AssetModelProperty
    #   data as a hash:
    #
    #       {
    #         id: "ID",
    #         name: "Name", # required
    #         data_type: "STRING", # required, accepts STRING, INTEGER, DOUBLE, BOOLEAN
    #         unit: "PropertyUnit",
    #         type: { # required
    #           attribute: {
    #             default_value: "DefaultValue",
    #           },
    #           measurement: {
    #           },
    #           transform: {
    #             expression: "Expression", # required
    #             variables: [ # required
    #               {
    #                 name: "VariableName", # required
    #                 value: { # required
    #                   property_id: "Macro", # required
    #                   hierarchy_id: "Macro",
    #                 },
    #               },
    #             ],
    #           },
    #           metric: {
    #             expression: "Expression", # required
    #             variables: [ # required
    #               {
    #                 name: "VariableName", # required
    #                 value: { # required
    #                   property_id: "Macro", # required
    #                   hierarchy_id: "Macro",
    #                 },
    #               },
    #             ],
    #             window: { # required
    #               tumbling: {
    #                 interval: "Interval", # required
    #               },
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the asset model property.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the asset model property.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The data type of the asset model property.
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The unit of the asset model property, such as `Newtons` or `RPM`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The property type (see `PropertyType`).
    #   @return [Types::PropertyType]
    #
    class AssetModelProperty < Struct.new(
      :id,
      :name,
      :data_type,
      :unit,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an asset model property definition. This property definition
    # is applied to all assets created from the asset model.
    #
    # @note When making an API call, you may pass AssetModelPropertyDefinition
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         data_type: "STRING", # required, accepts STRING, INTEGER, DOUBLE, BOOLEAN
    #         unit: "PropertyUnit",
    #         type: { # required
    #           attribute: {
    #             default_value: "DefaultValue",
    #           },
    #           measurement: {
    #           },
    #           transform: {
    #             expression: "Expression", # required
    #             variables: [ # required
    #               {
    #                 name: "VariableName", # required
    #                 value: { # required
    #                   property_id: "Macro", # required
    #                   hierarchy_id: "Macro",
    #                 },
    #               },
    #             ],
    #           },
    #           metric: {
    #             expression: "Expression", # required
    #             variables: [ # required
    #               {
    #                 name: "VariableName", # required
    #                 value: { # required
    #                   property_id: "Macro", # required
    #                   hierarchy_id: "Macro",
    #                 },
    #               },
    #             ],
    #             window: { # required
    #               tumbling: {
    #                 interval: "Interval", # required
    #               },
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the property definition.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The data type of the property definition.
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The unit of the property definition, such as `Newtons` or `RPM`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The property definition type (see `PropertyType`). You can only
    #   specify one type in a property definition.
    #   @return [Types::PropertyType]
    #
    class AssetModelPropertyDefinition < Struct.new(
      :name,
      :data_type,
      :unit,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains current status information for an asset model. For more
    # information, see [Asset and model states][1] in the *AWS IoT SiteWise
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-and-model-states.html
    #
    # @!attribute [rw] state
    #   The current state of the asset model.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   Contains associated error information, if any.
    #   @return [Types::ErrorDetails]
    #
    class AssetModelStatus < Struct.new(
      :state,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a summary of an asset model.
    #
    # @!attribute [rw] id
    #   The ID of the asset model (used with AWS IoT SiteWise APIs).
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The [ARN][1] of the asset model, which has the following format.
    #
    #   `arn:$\{Partition\}:iotsitewise:$\{Region\}:$\{Account\}:asset-model/$\{AssetModelId\}`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the asset model.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The asset model description.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date the asset model was created, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_date
    #   The date the asset model was last updated, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the asset model.
    #   @return [Types::AssetModelStatus]
    #
    class AssetModelSummary < Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :creation_date,
      :last_update_date,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains asset property information.
    #
    # @!attribute [rw] id
    #   The ID of the asset property.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the property.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The property alias that identifies the property, such as an OPC-UA
    #   server data stream path (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). For more information,
    #   see [Mapping industrial data streams to asset properties][1] in the
    #   *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html
    #   @return [String]
    #
    # @!attribute [rw] notification
    #   The asset property's notification topic and state. For more
    #   information, see [UpdateAssetProperty][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html
    #   @return [Types::PropertyNotification]
    #
    # @!attribute [rw] data_type
    #   The data type of the asset property.
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The unit (such as `Newtons` or `RPM`) of the asset property.
    #   @return [String]
    #
    class AssetProperty < Struct.new(
      :id,
      :name,
      :alias,
      :notification,
      :data_type,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains asset property value information.
    #
    # @note When making an API call, you may pass AssetPropertyValue
    #   data as a hash:
    #
    #       {
    #         value: { # required
    #           string_value: "PropertyValueStringValue",
    #           integer_value: 1,
    #           double_value: 1.0,
    #           boolean_value: false,
    #         },
    #         timestamp: { # required
    #           time_in_seconds: 1, # required
    #           offset_in_nanos: 1,
    #         },
    #         quality: "GOOD", # accepts GOOD, BAD, UNCERTAIN
    #       }
    #
    # @!attribute [rw] value
    #   The value of the asset property (see `Variant`).
    #   @return [Types::Variant]
    #
    # @!attribute [rw] timestamp
    #   The timestamp of the asset property value.
    #   @return [Types::TimeInNanos]
    #
    # @!attribute [rw] quality
    #   The quality of the asset property value.
    #   @return [String]
    #
    class AssetPropertyValue < Struct.new(
      :value,
      :timestamp,
      :quality)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the current status of an asset. For more
    # information, see [Asset and model states][1] in the *AWS IoT SiteWise
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-and-model-states.html
    #
    # @!attribute [rw] state
    #   The current status of the asset.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   Contains associated error information, if any.
    #   @return [Types::ErrorDetails]
    #
    class AssetStatus < Struct.new(
      :state,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a summary of an asset.
    #
    # @!attribute [rw] id
    #   The ID of the asset.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The [ARN][1] of the asset, which has the following format.
    #
    #   `arn:$\{Partition\}:iotsitewise:$\{Region\}:$\{Account\}:asset/$\{AssetId\}`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the asset.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_id
    #   The ID of the asset model used to create this asset.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date the asset was created, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_date
    #   The date the asset was last updated, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the asset.
    #   @return [Types::AssetStatus]
    #
    # @!attribute [rw] hierarchies
    #   A list of asset hierarchies that each contain a `hierarchyId`. A
    #   hierarchy specifies allowed parent/child asset relationships.
    #   @return [Array<Types::AssetHierarchy>]
    #
    class AssetSummary < Struct.new(
      :id,
      :arn,
      :name,
      :asset_model_id,
      :creation_date,
      :last_update_date,
      :status,
      :hierarchies)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateAssetsRequest
    #   data as a hash:
    #
    #       {
    #         asset_id: "ID", # required
    #         hierarchy_id: "ID", # required
    #         child_asset_id: "ID", # required
    #         client_token: "ClientToken",
    #       }
    #
    # @!attribute [rw] asset_id
    #   The ID of the parent asset.
    #   @return [String]
    #
    # @!attribute [rw] hierarchy_id
    #   The ID of a hierarchy in the parent asset's model. Hierarchies
    #   allow different groupings of assets to be formed that all come from
    #   the same asset model. For more information, see [Asset
    #   hierarchies][1] in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html
    #   @return [String]
    #
    # @!attribute [rw] child_asset_id
    #   The ID of the child asset to be associated.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique case-sensitive identifier that you can provide to ensure
    #   the idempotency of the request. Don't reuse this client token if a
    #   new idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class AssociateAssetsRequest < Struct.new(
      :asset_id,
      :hierarchy_id,
      :child_asset_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a summary of an associated asset.
    #
    # @!attribute [rw] id
    #   The ID of the asset.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The [ARN][1] of the asset, which has the following format.
    #
    #   `arn:$\{Partition\}:iotsitewise:$\{Region\}:$\{Account\}:asset/$\{AssetId\}`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the asset.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_id
    #   The ID of the asset model used to create the asset.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date the asset was created, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_date
    #   The date the asset was last updated, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the asset.
    #   @return [Types::AssetStatus]
    #
    # @!attribute [rw] hierarchies
    #   A list of asset hierarchies that each contain a `hierarchyId`. A
    #   hierarchy specifies allowed parent/child asset relationships.
    #   @return [Array<Types::AssetHierarchy>]
    #
    class AssociatedAssetsSummary < Struct.new(
      :id,
      :arn,
      :name,
      :asset_model_id,
      :creation_date,
      :last_update_date,
      :status,
      :hierarchies)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an asset attribute property. For more information, see
    # [Attributes][1] in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html#attributes
    #
    # @note When making an API call, you may pass Attribute
    #   data as a hash:
    #
    #       {
    #         default_value: "DefaultValue",
    #       }
    #
    # @!attribute [rw] default_value
    #   The default value of the asset model property attribute. All assets
    #   that you create from the asset model contain this attribute value.
    #   You can update an attribute's value after you create an asset. For
    #   more information, see [Updating attribute values][1] in the *AWS IoT
    #   SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-attribute-values.html
    #   @return [String]
    #
    class Attribute < Struct.new(
      :default_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchAssociateProjectAssetsRequest
    #   data as a hash:
    #
    #       {
    #         project_id: "ID", # required
    #         asset_ids: ["ID"], # required
    #         client_token: "ClientToken",
    #       }
    #
    # @!attribute [rw] project_id
    #   The ID of the project to which to associate the assets.
    #   @return [String]
    #
    # @!attribute [rw] asset_ids
    #   The IDs of the assets to be associated to the project.
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   A unique case-sensitive identifier that you can provide to ensure
    #   the idempotency of the request. Don't reuse this client token if a
    #   new idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class BatchAssociateProjectAssetsRequest < Struct.new(
      :project_id,
      :asset_ids,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   A list of associated error information, if any.
    #   @return [Array<Types::AssetErrorDetails>]
    #
    class BatchAssociateProjectAssetsResponse < Struct.new(
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDisassociateProjectAssetsRequest
    #   data as a hash:
    #
    #       {
    #         project_id: "ID", # required
    #         asset_ids: ["ID"], # required
    #         client_token: "ClientToken",
    #       }
    #
    # @!attribute [rw] project_id
    #   The ID of the project from which to disassociate the assets.
    #   @return [String]
    #
    # @!attribute [rw] asset_ids
    #   The IDs of the assets to be disassociated from the project.
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   A unique case-sensitive identifier that you can provide to ensure
    #   the idempotency of the request. Don't reuse this client token if a
    #   new idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class BatchDisassociateProjectAssetsRequest < Struct.new(
      :project_id,
      :asset_ids,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   A list of associated error information, if any.
    #   @return [Array<Types::AssetErrorDetails>]
    #
    class BatchDisassociateProjectAssetsResponse < Struct.new(
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains error information from updating a batch of asset property
    # values.
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The associated error message.
    #   @return [String]
    #
    # @!attribute [rw] timestamps
    #   A list of timestamps for each error, if any.
    #   @return [Array<Types::TimeInNanos>]
    #
    class BatchPutAssetPropertyError < Struct.new(
      :error_code,
      :error_message,
      :timestamps)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains error information for asset property value entries that are
    # associated with the [BatchPutAssetPropertyValue][1] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchPutAssetPropertyValue.html
    #
    # @!attribute [rw] entry_id
    #   The ID of the failed entry.
    #   @return [String]
    #
    # @!attribute [rw] errors
    #   The list of update property value errors.
    #   @return [Array<Types::BatchPutAssetPropertyError>]
    #
    class BatchPutAssetPropertyErrorEntry < Struct.new(
      :entry_id,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchPutAssetPropertyValueRequest
    #   data as a hash:
    #
    #       {
    #         entries: [ # required
    #           {
    #             entry_id: "EntryId", # required
    #             asset_id: "ID",
    #             property_id: "ID",
    #             property_alias: "AssetPropertyAlias",
    #             property_values: [ # required
    #               {
    #                 value: { # required
    #                   string_value: "PropertyValueStringValue",
    #                   integer_value: 1,
    #                   double_value: 1.0,
    #                   boolean_value: false,
    #                 },
    #                 timestamp: { # required
    #                   time_in_seconds: 1, # required
    #                   offset_in_nanos: 1,
    #                 },
    #                 quality: "GOOD", # accepts GOOD, BAD, UNCERTAIN
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] entries
    #   The list of asset property value entries for the batch put request.
    #   You can specify up to 10 entries per request.
    #   @return [Array<Types::PutAssetPropertyValueEntry>]
    #
    class BatchPutAssetPropertyValueRequest < Struct.new(
      :entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] error_entries
    #   A list of the errors (if any) associated with the batch put request.
    #   Each error entry contains the `entryId` of the entry that failed.
    #   @return [Array<Types::BatchPutAssetPropertyErrorEntry>]
    #
    class BatchPutAssetPropertyValueResponse < Struct.new(
      :error_entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your request has conflicting operations. This can occur if you're
    # trying to perform more than one operation on the same resource at the
    # same time.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource that conflicts with this operation.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource that conflicts with this operation.
    #   @return [String]
    #
    class ConflictingOperationException < Struct.new(
      :message,
      :resource_id,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAccessPolicyRequest
    #   data as a hash:
    #
    #       {
    #         access_policy_identity: { # required
    #           user: {
    #             id: "IdentityId", # required
    #           },
    #           group: {
    #             id: "IdentityId", # required
    #           },
    #           iam_user: {
    #             arn: "ARN", # required
    #           },
    #         },
    #         access_policy_resource: { # required
    #           portal: {
    #             id: "ID", # required
    #           },
    #           project: {
    #             id: "ID", # required
    #           },
    #         },
    #         access_policy_permission: "ADMINISTRATOR", # required, accepts ADMINISTRATOR, VIEWER
    #         client_token: "ClientToken",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] access_policy_identity
    #   The identity for this access policy. Choose an AWS SSO user, an AWS
    #   SSO group, or an IAM user.
    #   @return [Types::Identity]
    #
    # @!attribute [rw] access_policy_resource
    #   The AWS IoT SiteWise Monitor resource for this access policy. Choose
    #   either a portal or a project.
    #   @return [Types::Resource]
    #
    # @!attribute [rw] access_policy_permission
    #   The permission level for this access policy. Note that a project
    #   `ADMINISTRATOR` is also known as a project owner.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique case-sensitive identifier that you can provide to ensure
    #   the idempotency of the request. Don't reuse this client token if a
    #   new idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs that contain metadata for the access
    #   policy. For more information, see [Tagging your AWS IoT SiteWise
    #   resources][1] in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html
    #   @return [Hash<String,String>]
    #
    class CreateAccessPolicyRequest < Struct.new(
      :access_policy_identity,
      :access_policy_resource,
      :access_policy_permission,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_policy_id
    #   The ID of the access policy.
    #   @return [String]
    #
    # @!attribute [rw] access_policy_arn
    #   The [ARN][1] of the access policy, which has the following format.
    #
    #   `arn:$\{Partition\}:iotsitewise:$\{Region\}:$\{Account\}:access-policy/$\{AccessPolicyId\}`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    class CreateAccessPolicyResponse < Struct.new(
      :access_policy_id,
      :access_policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAssetModelRequest
    #   data as a hash:
    #
    #       {
    #         asset_model_name: "Name", # required
    #         asset_model_description: "Description",
    #         asset_model_properties: [
    #           {
    #             name: "Name", # required
    #             data_type: "STRING", # required, accepts STRING, INTEGER, DOUBLE, BOOLEAN
    #             unit: "PropertyUnit",
    #             type: { # required
    #               attribute: {
    #                 default_value: "DefaultValue",
    #               },
    #               measurement: {
    #               },
    #               transform: {
    #                 expression: "Expression", # required
    #                 variables: [ # required
    #                   {
    #                     name: "VariableName", # required
    #                     value: { # required
    #                       property_id: "Macro", # required
    #                       hierarchy_id: "Macro",
    #                     },
    #                   },
    #                 ],
    #               },
    #               metric: {
    #                 expression: "Expression", # required
    #                 variables: [ # required
    #                   {
    #                     name: "VariableName", # required
    #                     value: { # required
    #                       property_id: "Macro", # required
    #                       hierarchy_id: "Macro",
    #                     },
    #                   },
    #                 ],
    #                 window: { # required
    #                   tumbling: {
    #                     interval: "Interval", # required
    #                   },
    #                 },
    #               },
    #             },
    #           },
    #         ],
    #         asset_model_hierarchies: [
    #           {
    #             name: "Name", # required
    #             child_asset_model_id: "ID", # required
    #           },
    #         ],
    #         client_token: "ClientToken",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] asset_model_name
    #   A unique, friendly name for the asset model.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_description
    #   A description for the asset model.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_properties
    #   The property definitions of the asset model. For more information,
    #   see [Asset properties][1] in the *AWS IoT SiteWise User Guide*.
    #
    #   You can specify up to 200 properties per asset model. For more
    #   information, see [Quotas][2] in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html
    #   @return [Array<Types::AssetModelPropertyDefinition>]
    #
    # @!attribute [rw] asset_model_hierarchies
    #   The hierarchy definitions of the asset model. Each hierarchy
    #   specifies an asset model whose assets can be children of any other
    #   assets created from this asset model. For more information, see
    #   [Asset hierarchies][1] in the *AWS IoT SiteWise User Guide*.
    #
    #   You can specify up to 10 hierarchies per asset model. For more
    #   information, see [Quotas][2] in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html
    #   @return [Array<Types::AssetModelHierarchyDefinition>]
    #
    # @!attribute [rw] client_token
    #   A unique case-sensitive identifier that you can provide to ensure
    #   the idempotency of the request. Don't reuse this client token if a
    #   new idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs that contain metadata for the asset model.
    #   For more information, see [Tagging your AWS IoT SiteWise
    #   resources][1] in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html
    #   @return [Hash<String,String>]
    #
    class CreateAssetModelRequest < Struct.new(
      :asset_model_name,
      :asset_model_description,
      :asset_model_properties,
      :asset_model_hierarchies,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_model_id
    #   The ID of the asset model. You can use this ID when you call other
    #   AWS IoT SiteWise APIs.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_arn
    #   The [ARN][1] of the asset model, which has the following format.
    #
    #   `arn:$\{Partition\}:iotsitewise:$\{Region\}:$\{Account\}:asset-model/$\{AssetModelId\}`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] asset_model_status
    #   The status of the asset model, which contains a state (`CREATING`
    #   after successfully calling this operation) and any error message.
    #   @return [Types::AssetModelStatus]
    #
    class CreateAssetModelResponse < Struct.new(
      :asset_model_id,
      :asset_model_arn,
      :asset_model_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAssetRequest
    #   data as a hash:
    #
    #       {
    #         asset_name: "Name", # required
    #         asset_model_id: "ID", # required
    #         client_token: "ClientToken",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] asset_name
    #   A unique, friendly name for the asset.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_id
    #   The ID of the asset model from which to create the asset.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique case-sensitive identifier that you can provide to ensure
    #   the idempotency of the request. Don't reuse this client token if a
    #   new idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs that contain metadata for the asset. For
    #   more information, see [Tagging your AWS IoT SiteWise resources][1]
    #   in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html
    #   @return [Hash<String,String>]
    #
    class CreateAssetRequest < Struct.new(
      :asset_name,
      :asset_model_id,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_id
    #   The ID of the asset. This ID uniquely identifies the asset within
    #   AWS IoT SiteWise and can be used with other AWS IoT SiteWise APIs.
    #   @return [String]
    #
    # @!attribute [rw] asset_arn
    #   The [ARN][1] of the asset, which has the following format.
    #
    #   `arn:$\{Partition\}:iotsitewise:$\{Region\}:$\{Account\}:asset/$\{AssetId\}`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] asset_status
    #   The status of the asset, which contains a state (`CREATING` after
    #   successfully calling this operation) and any error message.
    #   @return [Types::AssetStatus]
    #
    class CreateAssetResponse < Struct.new(
      :asset_id,
      :asset_arn,
      :asset_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDashboardRequest
    #   data as a hash:
    #
    #       {
    #         project_id: "ID", # required
    #         dashboard_name: "Name", # required
    #         dashboard_description: "Description",
    #         dashboard_definition: "DashboardDefinition", # required
    #         client_token: "ClientToken",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] project_id
    #   The ID of the project in which to create the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_name
    #   A friendly name for the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_description
    #   A description for the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_definition
    #   The dashboard definition specified in a JSON literal. For detailed
    #   information, see [Creating dashboards (CLI)][1] in the *AWS IoT
    #   SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique case-sensitive identifier that you can provide to ensure
    #   the idempotency of the request. Don't reuse this client token if a
    #   new idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs that contain metadata for the dashboard.
    #   For more information, see [Tagging your AWS IoT SiteWise
    #   resources][1] in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html
    #   @return [Hash<String,String>]
    #
    class CreateDashboardRequest < Struct.new(
      :project_id,
      :dashboard_name,
      :dashboard_description,
      :dashboard_definition,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dashboard_id
    #   The ID of the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_arn
    #   The [ARN][1] of the dashboard, which has the following format.
    #
    #   `arn:$\{Partition\}:iotsitewise:$\{Region\}:$\{Account\}:dashboard/$\{DashboardId\}`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    class CreateDashboardResponse < Struct.new(
      :dashboard_id,
      :dashboard_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateGatewayRequest
    #   data as a hash:
    #
    #       {
    #         gateway_name: "Name", # required
    #         gateway_platform: { # required
    #           greengrass: { # required
    #             group_arn: "ARN", # required
    #           },
    #         },
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] gateway_name
    #   A unique, friendly name for the gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_platform
    #   The gateway's platform. You can only specify one platform in a
    #   gateway.
    #   @return [Types::GatewayPlatform]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs that contain metadata for the gateway. For
    #   more information, see [Tagging your AWS IoT SiteWise resources][1]
    #   in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html
    #   @return [Hash<String,String>]
    #
    class CreateGatewayRequest < Struct.new(
      :gateway_name,
      :gateway_platform,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_id
    #   The ID of the gateway device. You can use this ID when you call
    #   other AWS IoT SiteWise APIs.
    #   @return [String]
    #
    # @!attribute [rw] gateway_arn
    #   The [ARN][1] of the gateway, which has the following format.
    #
    #   `arn:$\{Partition\}:iotsitewise:$\{Region\}:$\{Account\}:gateway/$\{GatewayId\}`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    class CreateGatewayResponse < Struct.new(
      :gateway_id,
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreatePortalRequest
    #   data as a hash:
    #
    #       {
    #         portal_name: "Name", # required
    #         portal_description: "Description",
    #         portal_contact_email: "Email", # required
    #         client_token: "ClientToken",
    #         portal_logo_image_file: {
    #           data: "data", # required
    #           type: "PNG", # required, accepts PNG
    #         },
    #         role_arn: "ARN", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         portal_auth_mode: "IAM", # accepts IAM, SSO
    #       }
    #
    # @!attribute [rw] portal_name
    #   A friendly name for the portal.
    #   @return [String]
    #
    # @!attribute [rw] portal_description
    #   A description for the portal.
    #   @return [String]
    #
    # @!attribute [rw] portal_contact_email
    #   The AWS administrator's contact email address.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique case-sensitive identifier that you can provide to ensure
    #   the idempotency of the request. Don't reuse this client token if a
    #   new idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] portal_logo_image_file
    #   A logo image to display in the portal. Upload a square,
    #   high-resolution image. The image is displayed on a dark background.
    #   @return [Types::ImageFile]
    #
    # @!attribute [rw] role_arn
    #   The [ARN][1] of a service role that allows the portal's users to
    #   access your AWS IoT SiteWise resources on your behalf. For more
    #   information, see [Using service roles for AWS IoT SiteWise
    #   Monitor][2] in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs that contain metadata for the portal. For
    #   more information, see [Tagging your AWS IoT SiteWise resources][1]
    #   in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] portal_auth_mode
    #   The service to use to authenticate users to the portal. Choose from
    #   the following options:
    #
    #   * `SSO` – The portal uses AWS Single Sign-On to authenticate users
    #     and manage user permissions. Before you can create a portal that
    #     uses AWS SSO, you must enable AWS SSO. For more information, see
    #     [Enabling AWS SSO][1] in the *AWS IoT SiteWise User Guide*. This
    #     option is only available in AWS Regions other than the China
    #     Regions.
    #
    #   * `IAM` – The portal uses AWS Identity and Access Management (IAM)
    #     to authenticate users and manage user permissions. IAM users must
    #     have the `iotsitewise:CreatePresignedPortalUrl` permission to sign
    #     in to the portal. This option is only available in the China
    #     Regions.
    #
    #   You can't change this value after you create a portal.
    #
    #   Default: `SSO`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-get-started.html#mon-gs-sso
    #   @return [String]
    #
    class CreatePortalRequest < Struct.new(
      :portal_name,
      :portal_description,
      :portal_contact_email,
      :client_token,
      :portal_logo_image_file,
      :role_arn,
      :tags,
      :portal_auth_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] portal_id
    #   The ID of the created portal.
    #   @return [String]
    #
    # @!attribute [rw] portal_arn
    #   The [ARN][1] of the portal, which has the following format.
    #
    #   `arn:$\{Partition\}:iotsitewise:$\{Region\}:$\{Account\}:portal/$\{PortalId\}`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] portal_start_url
    #   The URL for the AWS IoT SiteWise Monitor portal. You can use this
    #   URL to access portals that use AWS SSO for authentication. For
    #   portals that use IAM for authentication, you must use the
    #   [CreatePresignedPortalUrl][1] operation to create a URL that you can
    #   use to access the portal.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWS IoT SiteWise API ReferenceAPI_CreatePresignedPortalUrl.html
    #   @return [String]
    #
    # @!attribute [rw] portal_status
    #   The status of the portal, which contains a state (`CREATING` after
    #   successfully calling this operation) and any error message.
    #   @return [Types::PortalStatus]
    #
    # @!attribute [rw] sso_application_id
    #   The associated AWS SSO application ID, if the portal uses AWS SSO.
    #   @return [String]
    #
    class CreatePortalResponse < Struct.new(
      :portal_id,
      :portal_arn,
      :portal_start_url,
      :portal_status,
      :sso_application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreatePresignedPortalUrlRequest
    #   data as a hash:
    #
    #       {
    #         portal_id: "ID", # required
    #         session_duration_seconds: 1,
    #       }
    #
    # @!attribute [rw] portal_id
    #   The ID of the portal to access.
    #   @return [String]
    #
    # @!attribute [rw] session_duration_seconds
    #   The duration (in seconds) for which the session at the URL is valid.
    #
    #   Default: 900 seconds (15 minutes)
    #   @return [Integer]
    #
    class CreatePresignedPortalUrlRequest < Struct.new(
      :portal_id,
      :session_duration_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] presigned_portal_url
    #   The pre-signed URL to the portal. The URL contains the portal ID and
    #   a session token that lets you access the portal. The URL has the
    #   following format.
    #
    #   `https://<portal-id>.app.iotsitewise.aws/auth?token=<encrypted-token>`
    #   @return [String]
    #
    class CreatePresignedPortalUrlResponse < Struct.new(
      :presigned_portal_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateProjectRequest
    #   data as a hash:
    #
    #       {
    #         portal_id: "ID", # required
    #         project_name: "Name", # required
    #         project_description: "Description",
    #         client_token: "ClientToken",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] portal_id
    #   The ID of the portal in which to create the project.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   A friendly name for the project.
    #   @return [String]
    #
    # @!attribute [rw] project_description
    #   A description for the project.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique case-sensitive identifier that you can provide to ensure
    #   the idempotency of the request. Don't reuse this client token if a
    #   new idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs that contain metadata for the project. For
    #   more information, see [Tagging your AWS IoT SiteWise resources][1]
    #   in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html
    #   @return [Hash<String,String>]
    #
    class CreateProjectRequest < Struct.new(
      :portal_id,
      :project_name,
      :project_description,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_id
    #   The ID of the project.
    #   @return [String]
    #
    # @!attribute [rw] project_arn
    #   The [ARN][1] of the project, which has the following format.
    #
    #   `arn:$\{Partition\}:iotsitewise:$\{Region\}:$\{Account\}:project/$\{ProjectId\}`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    class CreateProjectResponse < Struct.new(
      :project_id,
      :project_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a dashboard summary.
    #
    # @!attribute [rw] id
    #   The ID of the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the dashboard
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The dashboard's description.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date the dashboard was created, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_date
    #   The date the dashboard was last updated, in Unix epoch time.
    #   @return [Time]
    #
    class DashboardSummary < Struct.new(
      :id,
      :name,
      :description,
      :creation_date,
      :last_update_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAccessPolicyRequest
    #   data as a hash:
    #
    #       {
    #         access_policy_id: "ID", # required
    #         client_token: "ClientToken",
    #       }
    #
    # @!attribute [rw] access_policy_id
    #   The ID of the access policy to be deleted.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique case-sensitive identifier that you can provide to ensure
    #   the idempotency of the request. Don't reuse this client token if a
    #   new idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class DeleteAccessPolicyRequest < Struct.new(
      :access_policy_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteAccessPolicyResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteAssetModelRequest
    #   data as a hash:
    #
    #       {
    #         asset_model_id: "ID", # required
    #         client_token: "ClientToken",
    #       }
    #
    # @!attribute [rw] asset_model_id
    #   The ID of the asset model to delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique case-sensitive identifier that you can provide to ensure
    #   the idempotency of the request. Don't reuse this client token if a
    #   new idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class DeleteAssetModelRequest < Struct.new(
      :asset_model_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_model_status
    #   The status of the asset model, which contains a state (`DELETING`
    #   after successfully calling this operation) and any error message.
    #   @return [Types::AssetModelStatus]
    #
    class DeleteAssetModelResponse < Struct.new(
      :asset_model_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAssetRequest
    #   data as a hash:
    #
    #       {
    #         asset_id: "ID", # required
    #         client_token: "ClientToken",
    #       }
    #
    # @!attribute [rw] asset_id
    #   The ID of the asset to delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique case-sensitive identifier that you can provide to ensure
    #   the idempotency of the request. Don't reuse this client token if a
    #   new idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class DeleteAssetRequest < Struct.new(
      :asset_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_status
    #   The status of the asset, which contains a state (`DELETING` after
    #   successfully calling this operation) and any error message.
    #   @return [Types::AssetStatus]
    #
    class DeleteAssetResponse < Struct.new(
      :asset_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDashboardRequest
    #   data as a hash:
    #
    #       {
    #         dashboard_id: "ID", # required
    #         client_token: "ClientToken",
    #       }
    #
    # @!attribute [rw] dashboard_id
    #   The ID of the dashboard to delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique case-sensitive identifier that you can provide to ensure
    #   the idempotency of the request. Don't reuse this client token if a
    #   new idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class DeleteDashboardRequest < Struct.new(
      :dashboard_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteDashboardResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteGatewayRequest
    #   data as a hash:
    #
    #       {
    #         gateway_id: "ID", # required
    #       }
    #
    # @!attribute [rw] gateway_id
    #   The ID of the gateway to delete.
    #   @return [String]
    #
    class DeleteGatewayRequest < Struct.new(
      :gateway_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeletePortalRequest
    #   data as a hash:
    #
    #       {
    #         portal_id: "ID", # required
    #         client_token: "ClientToken",
    #       }
    #
    # @!attribute [rw] portal_id
    #   The ID of the portal to delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique case-sensitive identifier that you can provide to ensure
    #   the idempotency of the request. Don't reuse this client token if a
    #   new idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class DeletePortalRequest < Struct.new(
      :portal_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] portal_status
    #   The status of the portal, which contains a state (`DELETING` after
    #   successfully calling this operation) and any error message.
    #   @return [Types::PortalStatus]
    #
    class DeletePortalResponse < Struct.new(
      :portal_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteProjectRequest
    #   data as a hash:
    #
    #       {
    #         project_id: "ID", # required
    #         client_token: "ClientToken",
    #       }
    #
    # @!attribute [rw] project_id
    #   The ID of the project.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique case-sensitive identifier that you can provide to ensure
    #   the idempotency of the request. Don't reuse this client token if a
    #   new idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class DeleteProjectRequest < Struct.new(
      :project_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteProjectResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeAccessPolicyRequest
    #   data as a hash:
    #
    #       {
    #         access_policy_id: "ID", # required
    #       }
    #
    # @!attribute [rw] access_policy_id
    #   The ID of the access policy.
    #   @return [String]
    #
    class DescribeAccessPolicyRequest < Struct.new(
      :access_policy_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_policy_id
    #   The ID of the access policy.
    #   @return [String]
    #
    # @!attribute [rw] access_policy_arn
    #   The [ARN][1] of the access policy, which has the following format.
    #
    #   `arn:$\{Partition\}:iotsitewise:$\{Region\}:$\{Account\}:access-policy/$\{AccessPolicyId\}`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] access_policy_identity
    #   The identity (AWS SSO user, AWS SSO group, or IAM user) to which
    #   this access policy applies.
    #   @return [Types::Identity]
    #
    # @!attribute [rw] access_policy_resource
    #   The AWS IoT SiteWise Monitor resource (portal or project) to which
    #   this access policy provides access.
    #   @return [Types::Resource]
    #
    # @!attribute [rw] access_policy_permission
    #   The access policy permission. Note that a project `ADMINISTRATOR` is
    #   also known as a project owner.
    #   @return [String]
    #
    # @!attribute [rw] access_policy_creation_date
    #   The date the access policy was created, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] access_policy_last_update_date
    #   The date the access policy was last updated, in Unix epoch time.
    #   @return [Time]
    #
    class DescribeAccessPolicyResponse < Struct.new(
      :access_policy_id,
      :access_policy_arn,
      :access_policy_identity,
      :access_policy_resource,
      :access_policy_permission,
      :access_policy_creation_date,
      :access_policy_last_update_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAssetModelRequest
    #   data as a hash:
    #
    #       {
    #         asset_model_id: "ID", # required
    #       }
    #
    # @!attribute [rw] asset_model_id
    #   The ID of the asset model.
    #   @return [String]
    #
    class DescribeAssetModelRequest < Struct.new(
      :asset_model_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_model_id
    #   The ID of the asset model.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_arn
    #   The [ARN][1] of the asset model, which has the following format.
    #
    #   `arn:$\{Partition\}:iotsitewise:$\{Region\}:$\{Account\}:asset-model/$\{AssetModelId\}`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] asset_model_name
    #   The name of the asset model.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_description
    #   The asset model's description.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_properties
    #   The list of asset properties for the asset model.
    #   @return [Array<Types::AssetModelProperty>]
    #
    # @!attribute [rw] asset_model_hierarchies
    #   A list of asset model hierarchies that each contain a
    #   `childAssetModelId` and a `hierarchyId` (named `id`). A hierarchy
    #   specifies allowed parent/child asset relationships for an asset
    #   model.
    #   @return [Array<Types::AssetModelHierarchy>]
    #
    # @!attribute [rw] asset_model_creation_date
    #   The date the asset model was created, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] asset_model_last_update_date
    #   The date the asset model was last updated, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] asset_model_status
    #   The current status of the asset model, which contains a state and
    #   any error message.
    #   @return [Types::AssetModelStatus]
    #
    class DescribeAssetModelResponse < Struct.new(
      :asset_model_id,
      :asset_model_arn,
      :asset_model_name,
      :asset_model_description,
      :asset_model_properties,
      :asset_model_hierarchies,
      :asset_model_creation_date,
      :asset_model_last_update_date,
      :asset_model_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAssetPropertyRequest
    #   data as a hash:
    #
    #       {
    #         asset_id: "ID", # required
    #         property_id: "ID", # required
    #       }
    #
    # @!attribute [rw] asset_id
    #   The ID of the asset.
    #   @return [String]
    #
    # @!attribute [rw] property_id
    #   The ID of the asset property.
    #   @return [String]
    #
    class DescribeAssetPropertyRequest < Struct.new(
      :asset_id,
      :property_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_id
    #   The ID of the asset.
    #   @return [String]
    #
    # @!attribute [rw] asset_name
    #   The name of the asset.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_id
    #   The ID of the asset model.
    #   @return [String]
    #
    # @!attribute [rw] asset_property
    #   The asset property's definition, alias, and notification state.
    #   @return [Types::Property]
    #
    class DescribeAssetPropertyResponse < Struct.new(
      :asset_id,
      :asset_name,
      :asset_model_id,
      :asset_property)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAssetRequest
    #   data as a hash:
    #
    #       {
    #         asset_id: "ID", # required
    #       }
    #
    # @!attribute [rw] asset_id
    #   The ID of the asset.
    #   @return [String]
    #
    class DescribeAssetRequest < Struct.new(
      :asset_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_id
    #   The ID of the asset.
    #   @return [String]
    #
    # @!attribute [rw] asset_arn
    #   The [ARN][1] of the asset, which has the following format.
    #
    #   `arn:$\{Partition\}:iotsitewise:$\{Region\}:$\{Account\}:asset/$\{AssetId\}`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] asset_name
    #   The name of the asset.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_id
    #   The ID of the asset model that was used to create the asset.
    #   @return [String]
    #
    # @!attribute [rw] asset_properties
    #   The list of asset properties for the asset.
    #   @return [Array<Types::AssetProperty>]
    #
    # @!attribute [rw] asset_hierarchies
    #   A list of asset hierarchies that each contain a `hierarchyId`. A
    #   hierarchy specifies allowed parent/child asset relationships.
    #   @return [Array<Types::AssetHierarchy>]
    #
    # @!attribute [rw] asset_creation_date
    #   The date the asset was created, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] asset_last_update_date
    #   The date the asset was last updated, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] asset_status
    #   The current status of the asset, which contains a state and any
    #   error message.
    #   @return [Types::AssetStatus]
    #
    class DescribeAssetResponse < Struct.new(
      :asset_id,
      :asset_arn,
      :asset_name,
      :asset_model_id,
      :asset_properties,
      :asset_hierarchies,
      :asset_creation_date,
      :asset_last_update_date,
      :asset_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDashboardRequest
    #   data as a hash:
    #
    #       {
    #         dashboard_id: "ID", # required
    #       }
    #
    # @!attribute [rw] dashboard_id
    #   The ID of the dashboard.
    #   @return [String]
    #
    class DescribeDashboardRequest < Struct.new(
      :dashboard_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dashboard_id
    #   The ID of the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_arn
    #   The [ARN][1] of the dashboard, which has the following format.
    #
    #   `arn:$\{Partition\}:iotsitewise:$\{Region\}:$\{Account\}:dashboard/$\{DashboardId\}`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] dashboard_name
    #   The name of the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] project_id
    #   The ID of the project that the dashboard is in.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_description
    #   The dashboard's description.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_definition
    #   The dashboard's definition JSON literal. For detailed information,
    #   see [Creating dashboards (CLI)][1] in the *AWS IoT SiteWise User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html
    #   @return [String]
    #
    # @!attribute [rw] dashboard_creation_date
    #   The date the dashboard was created, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] dashboard_last_update_date
    #   The date the dashboard was last updated, in Unix epoch time.
    #   @return [Time]
    #
    class DescribeDashboardResponse < Struct.new(
      :dashboard_id,
      :dashboard_arn,
      :dashboard_name,
      :project_id,
      :dashboard_description,
      :dashboard_definition,
      :dashboard_creation_date,
      :dashboard_last_update_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeGatewayCapabilityConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         gateway_id: "ID", # required
    #         capability_namespace: "CapabilityNamespace", # required
    #       }
    #
    # @!attribute [rw] gateway_id
    #   The ID of the gateway that defines the capability configuration.
    #   @return [String]
    #
    # @!attribute [rw] capability_namespace
    #   The namespace of the capability configuration. For example, if you
    #   configure OPC-UA sources from the AWS IoT SiteWise console, your
    #   OPC-UA capability configuration has the namespace
    #   `iotsitewise:opcuacollector:version`, where `version` is a number
    #   such as `1`.
    #   @return [String]
    #
    class DescribeGatewayCapabilityConfigurationRequest < Struct.new(
      :gateway_id,
      :capability_namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_id
    #   The ID of the gateway that defines the capability configuration.
    #   @return [String]
    #
    # @!attribute [rw] capability_namespace
    #   The namespace of the gateway capability.
    #   @return [String]
    #
    # @!attribute [rw] capability_configuration
    #   The JSON document that defines the gateway capability's
    #   configuration. For more information, see [Configuring data sources
    #   (CLI)][1] in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/configure-sources.html#configure-source-cli
    #   @return [String]
    #
    # @!attribute [rw] capability_sync_status
    #   The synchronization status of the capability configuration. The sync
    #   status can be one of the following:
    #
    #   * `IN_SYNC` – The gateway is running the capability configuration.
    #
    #   * `OUT_OF_SYNC` – The gateway hasn't received the capability
    #     configuration.
    #
    #   * `SYNC_FAILED` – The gateway rejected the capability configuration.
    #   @return [String]
    #
    class DescribeGatewayCapabilityConfigurationResponse < Struct.new(
      :gateway_id,
      :capability_namespace,
      :capability_configuration,
      :capability_sync_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeGatewayRequest
    #   data as a hash:
    #
    #       {
    #         gateway_id: "ID", # required
    #       }
    #
    # @!attribute [rw] gateway_id
    #   The ID of the gateway device.
    #   @return [String]
    #
    class DescribeGatewayRequest < Struct.new(
      :gateway_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_id
    #   The ID of the gateway device.
    #   @return [String]
    #
    # @!attribute [rw] gateway_name
    #   The name of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_arn
    #   The [ARN][1] of the gateway, which has the following format.
    #
    #   `arn:$\{Partition\}:iotsitewise:$\{Region\}:$\{Account\}:gateway/$\{GatewayId\}`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] gateway_platform
    #   The gateway's platform.
    #   @return [Types::GatewayPlatform]
    #
    # @!attribute [rw] gateway_capability_summaries
    #   A list of gateway capability summaries that each contain a namespace
    #   and status. Each gateway capability defines data sources for the
    #   gateway. To retrieve a capability configuration's definition, use
    #   [DescribeGatewayCapabilityConfiguration][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeGatewayCapabilityConfiguration.html
    #   @return [Array<Types::GatewayCapabilitySummary>]
    #
    # @!attribute [rw] creation_date
    #   The date the gateway was created, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_date
    #   The date the gateway was last updated, in Unix epoch time.
    #   @return [Time]
    #
    class DescribeGatewayResponse < Struct.new(
      :gateway_id,
      :gateway_name,
      :gateway_arn,
      :gateway_platform,
      :gateway_capability_summaries,
      :creation_date,
      :last_update_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    class DescribeLoggingOptionsRequest < Aws::EmptyStructure; end

    # @!attribute [rw] logging_options
    #   The current logging options.
    #   @return [Types::LoggingOptions]
    #
    class DescribeLoggingOptionsResponse < Struct.new(
      :logging_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribePortalRequest
    #   data as a hash:
    #
    #       {
    #         portal_id: "ID", # required
    #       }
    #
    # @!attribute [rw] portal_id
    #   The ID of the portal.
    #   @return [String]
    #
    class DescribePortalRequest < Struct.new(
      :portal_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] portal_id
    #   The ID of the portal.
    #   @return [String]
    #
    # @!attribute [rw] portal_arn
    #   The [ARN][1] of the portal, which has the following format.
    #
    #   `arn:$\{Partition\}:iotsitewise:$\{Region\}:$\{Account\}:portal/$\{PortalId\}`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] portal_name
    #   The name of the portal.
    #   @return [String]
    #
    # @!attribute [rw] portal_description
    #   The portal's description.
    #   @return [String]
    #
    # @!attribute [rw] portal_client_id
    #   The AWS SSO application generated client ID (used with AWS SSO
    #   APIs). AWS IoT SiteWise includes `portalClientId` for only portals
    #   that use AWS SSO to authenticate users.
    #   @return [String]
    #
    # @!attribute [rw] portal_start_url
    #   The URL for the AWS IoT SiteWise Monitor portal. You can use this
    #   URL to access portals that use AWS SSO for authentication. For
    #   portals that use IAM for authentication, you must use the
    #   [CreatePresignedPortalUrl][1] operation to create a URL that you can
    #   use to access the portal.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWS IoT SiteWise API ReferenceAPI_CreatePresignedPortalUrl.html
    #   @return [String]
    #
    # @!attribute [rw] portal_contact_email
    #   The AWS administrator's contact email address.
    #   @return [String]
    #
    # @!attribute [rw] portal_status
    #   The current status of the portal, which contains a state and any
    #   error message.
    #   @return [Types::PortalStatus]
    #
    # @!attribute [rw] portal_creation_date
    #   The date the portal was created, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] portal_last_update_date
    #   The date the portal was last updated, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] portal_logo_image_location
    #   The portal's logo image, which is available at a URL.
    #   @return [Types::ImageLocation]
    #
    # @!attribute [rw] role_arn
    #   The [ARN][1] of the service role that allows the portal's users to
    #   access your AWS IoT SiteWise resources on your behalf. For more
    #   information, see [Using service roles for AWS IoT SiteWise
    #   Monitor][2] in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html
    #   @return [String]
    #
    # @!attribute [rw] portal_auth_mode
    #   The service to use to authenticate users to the portal.
    #   @return [String]
    #
    class DescribePortalResponse < Struct.new(
      :portal_id,
      :portal_arn,
      :portal_name,
      :portal_description,
      :portal_client_id,
      :portal_start_url,
      :portal_contact_email,
      :portal_status,
      :portal_creation_date,
      :portal_last_update_date,
      :portal_logo_image_location,
      :role_arn,
      :portal_auth_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeProjectRequest
    #   data as a hash:
    #
    #       {
    #         project_id: "ID", # required
    #       }
    #
    # @!attribute [rw] project_id
    #   The ID of the project.
    #   @return [String]
    #
    class DescribeProjectRequest < Struct.new(
      :project_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_id
    #   The ID of the project.
    #   @return [String]
    #
    # @!attribute [rw] project_arn
    #   The [ARN][1] of the project, which has the following format.
    #
    #   `arn:$\{Partition\}:iotsitewise:$\{Region\}:$\{Account\}:project/$\{ProjectId\}`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the project.
    #   @return [String]
    #
    # @!attribute [rw] portal_id
    #   The ID of the portal that the project is in.
    #   @return [String]
    #
    # @!attribute [rw] project_description
    #   The project's description.
    #   @return [String]
    #
    # @!attribute [rw] project_creation_date
    #   The date the project was created, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] project_last_update_date
    #   The date the project was last updated, in Unix epoch time.
    #   @return [Time]
    #
    class DescribeProjectResponse < Struct.new(
      :project_id,
      :project_arn,
      :project_name,
      :portal_id,
      :project_description,
      :project_creation_date,
      :project_last_update_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateAssetsRequest
    #   data as a hash:
    #
    #       {
    #         asset_id: "ID", # required
    #         hierarchy_id: "ID", # required
    #         child_asset_id: "ID", # required
    #         client_token: "ClientToken",
    #       }
    #
    # @!attribute [rw] asset_id
    #   The ID of the parent asset from which to disassociate the child
    #   asset.
    #   @return [String]
    #
    # @!attribute [rw] hierarchy_id
    #   The ID of a hierarchy in the parent asset's model. Hierarchies
    #   allow different groupings of assets to be formed that all come from
    #   the same asset model. You can use the hierarchy ID to identify the
    #   correct asset to disassociate. For more information, see [Asset
    #   hierarchies][1] in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html
    #   @return [String]
    #
    # @!attribute [rw] child_asset_id
    #   The ID of the child asset to disassociate.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique case-sensitive identifier that you can provide to ensure
    #   the idempotency of the request. Don't reuse this client token if a
    #   new idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class DisassociateAssetsRequest < Struct.new(
      :asset_id,
      :hierarchy_id,
      :child_asset_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the details of an AWS IoT SiteWise error.
    #
    # @!attribute [rw] code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    class ErrorDetails < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains expression variable information.
    #
    # @note When making an API call, you may pass ExpressionVariable
    #   data as a hash:
    #
    #       {
    #         name: "VariableName", # required
    #         value: { # required
    #           property_id: "Macro", # required
    #           hierarchy_id: "Macro",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The friendly name of the variable to be used in the expression.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The variable that identifies an asset property from which to use
    #   values.
    #   @return [Types::VariableValue]
    #
    class ExpressionVariable < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a summary of a gateway capability configuration.
    #
    # @!attribute [rw] capability_namespace
    #   The namespace of the capability configuration. For example, if you
    #   configure OPC-UA sources from the AWS IoT SiteWise console, your
    #   OPC-UA capability configuration has the namespace
    #   `iotsitewise:opcuacollector:version`, where `version` is a number
    #   such as `1`.
    #   @return [String]
    #
    # @!attribute [rw] capability_sync_status
    #   The synchronization status of the capability configuration. The sync
    #   status can be one of the following:
    #
    #   * `IN_SYNC` – The gateway is running the capability configuration.
    #
    #   * `OUT_OF_SYNC` – The gateway hasn't received the capability
    #     configuration.
    #
    #   * `SYNC_FAILED` – The gateway rejected the capability configuration.
    #   @return [String]
    #
    class GatewayCapabilitySummary < Struct.new(
      :capability_namespace,
      :capability_sync_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a gateway's platform information.
    #
    # @note When making an API call, you may pass GatewayPlatform
    #   data as a hash:
    #
    #       {
    #         greengrass: { # required
    #           group_arn: "ARN", # required
    #         },
    #       }
    #
    # @!attribute [rw] greengrass
    #   A gateway that runs on AWS IoT Greengrass.
    #   @return [Types::Greengrass]
    #
    class GatewayPlatform < Struct.new(
      :greengrass)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a summary of a gateway.
    #
    # @!attribute [rw] gateway_id
    #   The ID of the gateway device.
    #   @return [String]
    #
    # @!attribute [rw] gateway_name
    #   The name of the asset.
    #   @return [String]
    #
    # @!attribute [rw] gateway_capability_summaries
    #   A list of gateway capability summaries that each contain a namespace
    #   and status. Each gateway capability defines data sources for the
    #   gateway. To retrieve a capability configuration's definition, use
    #   [DescribeGatewayCapabilityConfiguration][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeGatewayCapabilityConfiguration.html
    #   @return [Array<Types::GatewayCapabilitySummary>]
    #
    # @!attribute [rw] creation_date
    #   The date the gateway was created, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_date
    #   The date the gateway was last updated, in Unix epoch time.
    #   @return [Time]
    #
    class GatewaySummary < Struct.new(
      :gateway_id,
      :gateway_name,
      :gateway_capability_summaries,
      :creation_date,
      :last_update_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAssetPropertyAggregatesRequest
    #   data as a hash:
    #
    #       {
    #         asset_id: "ID",
    #         property_id: "ID",
    #         property_alias: "AssetPropertyAlias",
    #         aggregate_types: ["AVERAGE"], # required, accepts AVERAGE, COUNT, MAXIMUM, MINIMUM, SUM, STANDARD_DEVIATION
    #         resolution: "Resolution", # required
    #         qualities: ["GOOD"], # accepts GOOD, BAD, UNCERTAIN
    #         start_date: Time.now, # required
    #         end_date: Time.now, # required
    #         time_ordering: "ASCENDING", # accepts ASCENDING, DESCENDING
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] asset_id
    #   The ID of the asset.
    #   @return [String]
    #
    # @!attribute [rw] property_id
    #   The ID of the asset property.
    #   @return [String]
    #
    # @!attribute [rw] property_alias
    #   The property alias that identifies the property, such as an OPC-UA
    #   server data stream path (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). For more information,
    #   see [Mapping industrial data streams to asset properties][1] in the
    #   *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html
    #   @return [String]
    #
    # @!attribute [rw] aggregate_types
    #   The data aggregating function.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resolution
    #   The time interval over which to aggregate data.
    #   @return [String]
    #
    # @!attribute [rw] qualities
    #   The quality by which to filter asset data.
    #   @return [Array<String>]
    #
    # @!attribute [rw] start_date
    #   The exclusive start of the range from which to query historical
    #   data, expressed in seconds in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] end_date
    #   The inclusive end of the range from which to query historical data,
    #   expressed in seconds in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] time_ordering
    #   The chronological sorting order of the requested information.
    #
    #   Default: `ASCENDING`
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per paginated request.
    #
    #   Default: 100
    #   @return [Integer]
    #
    class GetAssetPropertyAggregatesRequest < Struct.new(
      :asset_id,
      :property_id,
      :property_alias,
      :aggregate_types,
      :resolution,
      :qualities,
      :start_date,
      :end_date,
      :time_ordering,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aggregated_values
    #   The requested aggregated values.
    #   @return [Array<Types::AggregatedValue>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    class GetAssetPropertyAggregatesResponse < Struct.new(
      :aggregated_values,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAssetPropertyValueHistoryRequest
    #   data as a hash:
    #
    #       {
    #         asset_id: "ID",
    #         property_id: "ID",
    #         property_alias: "AssetPropertyAlias",
    #         start_date: Time.now,
    #         end_date: Time.now,
    #         qualities: ["GOOD"], # accepts GOOD, BAD, UNCERTAIN
    #         time_ordering: "ASCENDING", # accepts ASCENDING, DESCENDING
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] asset_id
    #   The ID of the asset.
    #   @return [String]
    #
    # @!attribute [rw] property_id
    #   The ID of the asset property.
    #   @return [String]
    #
    # @!attribute [rw] property_alias
    #   The property alias that identifies the property, such as an OPC-UA
    #   server data stream path (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). For more information,
    #   see [Mapping industrial data streams to asset properties][1] in the
    #   *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The exclusive start of the range from which to query historical
    #   data, expressed in seconds in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] end_date
    #   The inclusive end of the range from which to query historical data,
    #   expressed in seconds in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] qualities
    #   The quality by which to filter asset data.
    #   @return [Array<String>]
    #
    # @!attribute [rw] time_ordering
    #   The chronological sorting order of the requested information.
    #
    #   Default: `ASCENDING`
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per paginated request.
    #
    #   Default: 100
    #   @return [Integer]
    #
    class GetAssetPropertyValueHistoryRequest < Struct.new(
      :asset_id,
      :property_id,
      :property_alias,
      :start_date,
      :end_date,
      :qualities,
      :time_ordering,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_property_value_history
    #   The asset property's value history.
    #   @return [Array<Types::AssetPropertyValue>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    class GetAssetPropertyValueHistoryResponse < Struct.new(
      :asset_property_value_history,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAssetPropertyValueRequest
    #   data as a hash:
    #
    #       {
    #         asset_id: "ID",
    #         property_id: "ID",
    #         property_alias: "AssetPropertyAlias",
    #       }
    #
    # @!attribute [rw] asset_id
    #   The ID of the asset.
    #   @return [String]
    #
    # @!attribute [rw] property_id
    #   The ID of the asset property.
    #   @return [String]
    #
    # @!attribute [rw] property_alias
    #   The property alias that identifies the property, such as an OPC-UA
    #   server data stream path (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). For more information,
    #   see [Mapping industrial data streams to asset properties][1] in the
    #   *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html
    #   @return [String]
    #
    class GetAssetPropertyValueRequest < Struct.new(
      :asset_id,
      :property_id,
      :property_alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] property_value
    #   The current asset property value.
    #   @return [Types::AssetPropertyValue]
    #
    class GetAssetPropertyValueResponse < Struct.new(
      :property_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details for a gateway that runs on AWS IoT Greengrass. To
    # create a gateway that runs on AWS IoT Greengrass, you must add the IoT
    # SiteWise connector to a Greengrass group and deploy it. Your
    # Greengrass group must also have permissions to upload data to AWS IoT
    # SiteWise. For more information, see [Ingesting data using a
    # gateway][1] in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/gateway-connector.html
    #
    # @note When making an API call, you may pass Greengrass
    #   data as a hash:
    #
    #       {
    #         group_arn: "ARN", # required
    #       }
    #
    # @!attribute [rw] group_arn
    #   The [ARN][1] of the Greengrass group. For more information about how
    #   to find a group's ARN, see [ListGroups][2] and [GetGroup][3] in the
    #   *AWS IoT Greengrass API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://docs.aws.amazon.com/greengrass/latest/apireference/listgroups-get.html
    #   [3]: https://docs.aws.amazon.com/greengrass/latest/apireference/getgroup-get.html
    #   @return [String]
    #
    class Greengrass < Struct.new(
      :group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information for a group identity in an access policy.
    #
    # @note When making an API call, you may pass GroupIdentity
    #   data as a hash:
    #
    #       {
    #         id: "IdentityId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The AWS SSO ID of the group.
    #   @return [String]
    #
    class GroupIdentity < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an AWS Identity and Access Management (IAM)
    # user.
    #
    # @note When making an API call, you may pass IAMUserIdentity
    #   data as a hash:
    #
    #       {
    #         arn: "ARN", # required
    #       }
    #
    # @!attribute [rw] arn
    #   The ARN of the IAM user. IAM users must have the
    #   `iotsitewise:CreatePresignedPortalUrl` permission to sign in to the
    #   portal. For more information, see [IAM ARNs][1] in the *IAM User
    #   Guide*.
    #
    #   <note markdown="1"> If you delete the IAM user, access policies that contain this
    #   identity include an empty `arn`. You can delete the access policy
    #   for the IAM user that no longer exists.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html
    #   @return [String]
    #
    class IAMUserIdentity < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an identity that can access an AWS IoT SiteWise Monitor
    # resource.
    #
    # <note markdown="1"> Currently, you can't use AWS APIs to retrieve AWS SSO identity IDs.
    # You can find the AWS SSO identity IDs in the URL of user and group
    # pages in the [AWS SSO console][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://console.aws.amazon.com/singlesignon
    #
    # @note When making an API call, you may pass Identity
    #   data as a hash:
    #
    #       {
    #         user: {
    #           id: "IdentityId", # required
    #         },
    #         group: {
    #           id: "IdentityId", # required
    #         },
    #         iam_user: {
    #           arn: "ARN", # required
    #         },
    #       }
    #
    # @!attribute [rw] user
    #   An AWS SSO user identity.
    #   @return [Types::UserIdentity]
    #
    # @!attribute [rw] group
    #   An AWS SSO group identity.
    #   @return [Types::GroupIdentity]
    #
    # @!attribute [rw] iam_user
    #   An IAM user identity.
    #   @return [Types::IAMUserIdentity]
    #
    class Identity < Struct.new(
      :user,
      :group,
      :iam_user)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an image that is one of the following:
    #
    # * An image file. Choose this option to upload a new image.
    #
    # * The ID of an existing image. Choose this option to keep an existing
    #   image.
    #
    # @note When making an API call, you may pass Image
    #   data as a hash:
    #
    #       {
    #         id: "ID",
    #         file: {
    #           data: "data", # required
    #           type: "PNG", # required, accepts PNG
    #         },
    #       }
    #
    # @!attribute [rw] id
    #   The ID of an existing image. Specify this parameter to keep an
    #   existing image.
    #   @return [String]
    #
    # @!attribute [rw] file
    #   Contains an image file.
    #   @return [Types::ImageFile]
    #
    class Image < Struct.new(
      :id,
      :file)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an image file.
    #
    # @note When making an API call, you may pass ImageFile
    #   data as a hash:
    #
    #       {
    #         data: "data", # required
    #         type: "PNG", # required, accepts PNG
    #       }
    #
    # @!attribute [rw] data
    #   The image file contents, represented as a base64-encoded string. The
    #   file size must be less than 1 MB.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The file type of the image.
    #   @return [String]
    #
    class ImageFile < Struct.new(
      :data,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an image that is uploaded to AWS IoT SiteWise and available
    # at a URL.
    #
    # @!attribute [rw] id
    #   The ID of the image.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL where the image is available. The URL is valid for 15
    #   minutes so that you can view and download the image
    #   @return [String]
    #
    class ImageLocation < Struct.new(
      :id,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # AWS IoT SiteWise can't process your request right now. Try again
    # later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class InternalFailureException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request isn't valid. This can occur if your request contains
    # malformed JSON or unsupported characters. Check your request and try
    # again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class InvalidRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You've reached the limit for a resource. For example, this can occur
    # if you're trying to associate more than the allowed number of child
    # assets or attempting to create more than the allowed number of
    # properties for an asset model.
    #
    # For more information, see [Quotas][1] in the *AWS IoT SiteWise User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAccessPoliciesRequest
    #   data as a hash:
    #
    #       {
    #         identity_type: "USER", # accepts USER, GROUP, IAM
    #         identity_id: "IdentityId",
    #         resource_type: "PORTAL", # accepts PORTAL, PROJECT
    #         resource_id: "ID",
    #         iam_arn: "ARN",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] identity_type
    #   The type of identity (AWS SSO user, AWS SSO group, or IAM user).
    #   This parameter is required if you specify `identityId`.
    #   @return [String]
    #
    # @!attribute [rw] identity_id
    #   The ID of the identity. This parameter is required if you specify
    #   `USER` or `GROUP` for `identityType`.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource (portal or project). This parameter is required
    #   if you specify `resourceId`.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource. This parameter is required if you specify
    #   `resourceType`.
    #   @return [String]
    #
    # @!attribute [rw] iam_arn
    #   The ARN of the IAM user. For more information, see [IAM ARNs][1] in
    #   the *IAM User Guide*. This parameter is required if you specify
    #   `IAM` for `identityType`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per paginated request.
    #
    #   Default: 50
    #   @return [Integer]
    #
    class ListAccessPoliciesRequest < Struct.new(
      :identity_type,
      :identity_id,
      :resource_type,
      :resource_id,
      :iam_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_policy_summaries
    #   A list that summarizes each access policy.
    #   @return [Array<Types::AccessPolicySummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    class ListAccessPoliciesResponse < Struct.new(
      :access_policy_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAssetModelsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per paginated request.
    #
    #   Default: 50
    #   @return [Integer]
    #
    class ListAssetModelsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_model_summaries
    #   A list that summarizes each asset model.
    #   @return [Array<Types::AssetModelSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    class ListAssetModelsResponse < Struct.new(
      :asset_model_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAssetsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         asset_model_id: "ID",
    #         filter: "ALL", # accepts ALL, TOP_LEVEL
    #       }
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per paginated request.
    #
    #   Default: 50
    #   @return [Integer]
    #
    # @!attribute [rw] asset_model_id
    #   The ID of the asset model by which to filter the list of assets.
    #   This parameter is required if you choose `ALL` for `filter`.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   The filter for the requested list of assets. Choose one of the
    #   following options:
    #
    #   * `ALL` – The list includes all assets for a given asset model ID.
    #     The `assetModelId` parameter is required if you filter by `ALL`.
    #
    #   * `TOP_LEVEL` – The list includes only top-level assets in the asset
    #     hierarchy tree.
    #
    #   Default: `ALL`
    #   @return [String]
    #
    class ListAssetsRequest < Struct.new(
      :next_token,
      :max_results,
      :asset_model_id,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_summaries
    #   A list that summarizes each asset.
    #   @return [Array<Types::AssetSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    class ListAssetsResponse < Struct.new(
      :asset_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAssociatedAssetsRequest
    #   data as a hash:
    #
    #       {
    #         asset_id: "ID", # required
    #         hierarchy_id: "ID",
    #         traversal_direction: "PARENT", # accepts PARENT, CHILD
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] asset_id
    #   The ID of the asset to query.
    #   @return [String]
    #
    # @!attribute [rw] hierarchy_id
    #   The ID of the hierarchy by which child assets are associated to the
    #   asset. To find a hierarchy ID, use the [DescribeAsset][1] or
    #   [DescribeAssetModel][2] operations. This parameter is required if
    #   you choose `CHILD` for `traversalDirection`.
    #
    #   For more information, see [Asset hierarchies][3] in the *AWS IoT
    #   SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAsset.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAssetModel.html
    #   [3]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html
    #   @return [String]
    #
    # @!attribute [rw] traversal_direction
    #   The direction to list associated assets. Choose one of the following
    #   options:
    #
    #   * `CHILD` – The list includes all child assets associated to the
    #     asset. The `hierarchyId` parameter is required if you choose
    #     `CHILD`.
    #
    #   * `PARENT` – The list includes the asset's parent asset.
    #
    #   Default: `CHILD`
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per paginated request.
    #
    #   Default: 50
    #   @return [Integer]
    #
    class ListAssociatedAssetsRequest < Struct.new(
      :asset_id,
      :hierarchy_id,
      :traversal_direction,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_summaries
    #   A list that summarizes the associated assets.
    #   @return [Array<Types::AssociatedAssetsSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    class ListAssociatedAssetsResponse < Struct.new(
      :asset_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDashboardsRequest
    #   data as a hash:
    #
    #       {
    #         project_id: "ID", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] project_id
    #   The ID of the project.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per paginated request.
    #
    #   Default: 50
    #   @return [Integer]
    #
    class ListDashboardsRequest < Struct.new(
      :project_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dashboard_summaries
    #   A list that summarizes each dashboard in the project.
    #   @return [Array<Types::DashboardSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    class ListDashboardsResponse < Struct.new(
      :dashboard_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListGatewaysRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per paginated request.
    #
    #   Default: 50
    #   @return [Integer]
    #
    class ListGatewaysRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_summaries
    #   A list that summarizes each gateway.
    #   @return [Array<Types::GatewaySummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    class ListGatewaysResponse < Struct.new(
      :gateway_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPortalsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per paginated request.
    #
    #   Default: 50
    #   @return [Integer]
    #
    class ListPortalsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] portal_summaries
    #   A list that summarizes each portal.
    #   @return [Array<Types::PortalSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    class ListPortalsResponse < Struct.new(
      :portal_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListProjectAssetsRequest
    #   data as a hash:
    #
    #       {
    #         project_id: "ID", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] project_id
    #   The ID of the project.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per paginated request.
    #
    #   Default: 50
    #   @return [Integer]
    #
    class ListProjectAssetsRequest < Struct.new(
      :project_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_ids
    #   A list that contains the IDs of each asset associated with the
    #   project.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    class ListProjectAssetsResponse < Struct.new(
      :asset_ids,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListProjectsRequest
    #   data as a hash:
    #
    #       {
    #         portal_id: "ID", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] portal_id
    #   The ID of the portal.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per paginated request.
    #
    #   Default: 50
    #   @return [Integer]
    #
    class ListProjectsRequest < Struct.new(
      :portal_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_summaries
    #   A list that summarizes each project in the portal.
    #   @return [Array<Types::ProjectSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    class ListProjectsResponse < Struct.new(
      :project_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The [ARN][1] of the resource.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of key-value pairs that contain metadata for the resource.
    #   For more information, see [Tagging your AWS IoT SiteWise
    #   resources][1] in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html
    #   @return [Hash<String,String>]
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains logging options.
    #
    # @note When making an API call, you may pass LoggingOptions
    #   data as a hash:
    #
    #       {
    #         level: "ERROR", # required, accepts ERROR, INFO, OFF
    #       }
    #
    # @!attribute [rw] level
    #   The AWS IoT SiteWise logging verbosity level.
    #   @return [String]
    #
    class LoggingOptions < Struct.new(
      :level)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an asset measurement property. This structure is empty. For
    # more information, see [Measurements][1] in the *AWS IoT SiteWise User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html#measurements
    #
    # @api private
    #
    class Measurement < Aws::EmptyStructure; end

    # Contains an asset metric property. With metrics, you can calculate
    # aggregate functions, such as an average, maximum, or minimum, as
    # specified through an expression. A metric maps several values to a
    # single value (such as a sum).
    #
    # The maximum number of dependent/cascading variables used in any one
    # metric calculation is 10. Therefore, a *root* metric can have up to 10
    # cascading metrics in its computational dependency tree. Additionally,
    # a metric can only have a data type of `DOUBLE` and consume properties
    # with data types of `INTEGER` or `DOUBLE`.
    #
    # For more information, see [Metrics][1] in the *AWS IoT SiteWise User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html#metrics
    #
    # @note When making an API call, you may pass Metric
    #   data as a hash:
    #
    #       {
    #         expression: "Expression", # required
    #         variables: [ # required
    #           {
    #             name: "VariableName", # required
    #             value: { # required
    #               property_id: "Macro", # required
    #               hierarchy_id: "Macro",
    #             },
    #           },
    #         ],
    #         window: { # required
    #           tumbling: {
    #             interval: "Interval", # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] expression
    #   The mathematical expression that defines the metric aggregation
    #   function. You can specify up to 10 variables per expression. You can
    #   specify up to 10 functions per expression.
    #
    #   For more information, see [Quotas][1] in the *AWS IoT SiteWise User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html
    #   @return [String]
    #
    # @!attribute [rw] variables
    #   The list of variables used in the expression.
    #   @return [Array<Types::ExpressionVariable>]
    #
    # @!attribute [rw] window
    #   The window (time interval) over which AWS IoT SiteWise computes the
    #   metric's aggregation expression. AWS IoT SiteWise computes one data
    #   point per `window`.
    #   @return [Types::MetricWindow]
    #
    class Metric < Struct.new(
      :expression,
      :variables,
      :window)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a time interval window used for data aggregate computations
    # (for example, average, sum, count, and so on).
    #
    # @note When making an API call, you may pass MetricWindow
    #   data as a hash:
    #
    #       {
    #         tumbling: {
    #           interval: "Interval", # required
    #         },
    #       }
    #
    # @!attribute [rw] tumbling
    #   The tumbling time interval window.
    #   @return [Types::TumblingWindow]
    #
    class MetricWindow < Struct.new(
      :tumbling)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains AWS IoT SiteWise Monitor error details.
    #
    # @!attribute [rw] code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    class MonitorErrorDetails < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies an AWS IoT SiteWise Monitor portal.
    #
    # @note When making an API call, you may pass PortalResource
    #   data as a hash:
    #
    #       {
    #         id: "ID", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the portal.
    #   @return [String]
    #
    class PortalResource < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the current status of a portal.
    #
    # @!attribute [rw] state
    #   The current state of the portal.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   Contains associated error information, if any.
    #   @return [Types::MonitorErrorDetails]
    #
    class PortalStatus < Struct.new(
      :state,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a portal summary.
    #
    # @!attribute [rw] id
    #   The ID of the portal.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the portal.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The portal's description.
    #   @return [String]
    #
    # @!attribute [rw] start_url
    #   The URL for the AWS IoT SiteWise Monitor portal. You can use this
    #   URL to access portals that use AWS SSO for authentication. For
    #   portals that use IAM for authentication, you must use the
    #   [CreatePresignedPortalUrl][1] operation to create a URL that you can
    #   use to access the portal.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWS IoT SiteWise API ReferenceAPI_CreatePresignedPortalUrl.html
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date the portal was created, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_date
    #   The date the portal was last updated, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] role_arn
    #   The [ARN][1] of the service role that allows the portal's users to
    #   access your AWS IoT SiteWise resources on your behalf. For more
    #   information, see [Using service roles for AWS IoT SiteWise
    #   Monitor][2] in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Contains information about the current status of a portal.
    #   @return [Types::PortalStatus]
    #
    class PortalSummary < Struct.new(
      :id,
      :name,
      :description,
      :start_url,
      :creation_date,
      :last_update_date,
      :role_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies a specific AWS IoT SiteWise Monitor project.
    #
    # @note When making an API call, you may pass ProjectResource
    #   data as a hash:
    #
    #       {
    #         id: "ID", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the project.
    #   @return [String]
    #
    class ProjectResource < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains project summary information.
    #
    # @!attribute [rw] id
    #   The ID of the project.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the project.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The project's description.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date the project was created, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_date
    #   The date the project was last updated, in Unix epoch time.
    #   @return [Time]
    #
    class ProjectSummary < Struct.new(
      :id,
      :name,
      :description,
      :creation_date,
      :last_update_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains asset property information.
    #
    # @!attribute [rw] id
    #   The ID of the asset property.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the property.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The property alias that identifies the property, such as an OPC-UA
    #   server data stream path (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). For more information,
    #   see [Mapping industrial data streams to asset properties][1] in the
    #   *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html
    #   @return [String]
    #
    # @!attribute [rw] notification
    #   The asset property's notification topic and state. For more
    #   information, see [UpdateAssetProperty][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html
    #   @return [Types::PropertyNotification]
    #
    # @!attribute [rw] data_type
    #   The property data type.
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The unit (such as `Newtons` or `RPM`) of the asset property.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The property type (see `PropertyType`). A property contains one
    #   type.
    #   @return [Types::PropertyType]
    #
    class Property < Struct.new(
      :id,
      :name,
      :alias,
      :notification,
      :data_type,
      :unit,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains asset property value notification information. When the
    # notification state is enabled, AWS IoT SiteWise publishes property
    # value updates to a unique MQTT topic. For more information, see
    # [Interacting with other services][1] in the *AWS IoT SiteWise User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/interact-with-other-services.html
    #
    # @!attribute [rw] topic
    #   The MQTT topic to which AWS IoT SiteWise publishes property value
    #   update notifications.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current notification state.
    #   @return [String]
    #
    class PropertyNotification < Struct.new(
      :topic,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a property type, which can be one of `attribute`,
    # `measurement`, `metric`, or `transform`.
    #
    # @note When making an API call, you may pass PropertyType
    #   data as a hash:
    #
    #       {
    #         attribute: {
    #           default_value: "DefaultValue",
    #         },
    #         measurement: {
    #         },
    #         transform: {
    #           expression: "Expression", # required
    #           variables: [ # required
    #             {
    #               name: "VariableName", # required
    #               value: { # required
    #                 property_id: "Macro", # required
    #                 hierarchy_id: "Macro",
    #               },
    #             },
    #           ],
    #         },
    #         metric: {
    #           expression: "Expression", # required
    #           variables: [ # required
    #             {
    #               name: "VariableName", # required
    #               value: { # required
    #                 property_id: "Macro", # required
    #                 hierarchy_id: "Macro",
    #               },
    #             },
    #           ],
    #           window: { # required
    #             tumbling: {
    #               interval: "Interval", # required
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] attribute
    #   Specifies an asset attribute property. An attribute generally
    #   contains static information, such as the serial number of an
    #   [IIoT][1] wind turbine.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Internet_of_things#Industrial_applications
    #   @return [Types::Attribute]
    #
    # @!attribute [rw] measurement
    #   Specifies an asset measurement property. A measurement represents a
    #   device's raw sensor data stream, such as timestamped temperature
    #   values or timestamped power values.
    #   @return [Types::Measurement]
    #
    # @!attribute [rw] transform
    #   Specifies an asset transform property. A transform contains a
    #   mathematical expression that maps a property's data points from one
    #   form to another, such as a unit conversion from Celsius to
    #   Fahrenheit.
    #   @return [Types::Transform]
    #
    # @!attribute [rw] metric
    #   Specifies an asset metric property. A metric contains a mathematical
    #   expression that uses aggregate functions to process all input data
    #   points over a time interval and output a single data point, such as
    #   to calculate the average hourly temperature.
    #   @return [Types::Metric]
    #
    class PropertyType < Struct.new(
      :attribute,
      :measurement,
      :transform,
      :metric)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a list of value updates for an asset property in the list of
    # asset entries consumed by the [BatchPutAssetPropertyValue][1] API
    # operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchPutAssetPropertyValue.html
    #
    # @note When making an API call, you may pass PutAssetPropertyValueEntry
    #   data as a hash:
    #
    #       {
    #         entry_id: "EntryId", # required
    #         asset_id: "ID",
    #         property_id: "ID",
    #         property_alias: "AssetPropertyAlias",
    #         property_values: [ # required
    #           {
    #             value: { # required
    #               string_value: "PropertyValueStringValue",
    #               integer_value: 1,
    #               double_value: 1.0,
    #               boolean_value: false,
    #             },
    #             timestamp: { # required
    #               time_in_seconds: 1, # required
    #               offset_in_nanos: 1,
    #             },
    #             quality: "GOOD", # accepts GOOD, BAD, UNCERTAIN
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] entry_id
    #   The user specified ID for the entry. You can use this ID to identify
    #   which entries failed.
    #   @return [String]
    #
    # @!attribute [rw] asset_id
    #   The ID of the asset to update.
    #   @return [String]
    #
    # @!attribute [rw] property_id
    #   The ID of the asset property for this entry.
    #   @return [String]
    #
    # @!attribute [rw] property_alias
    #   The property alias that identifies the property, such as an OPC-UA
    #   server data stream path (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). For more information,
    #   see [Mapping industrial data streams to asset properties][1] in the
    #   *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html
    #   @return [String]
    #
    # @!attribute [rw] property_values
    #   The list of property values to upload. You can specify up to 10
    #   `propertyValues` array elements.
    #   @return [Array<Types::AssetPropertyValue>]
    #
    class PutAssetPropertyValueEntry < Struct.new(
      :entry_id,
      :asset_id,
      :property_id,
      :property_alias,
      :property_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutLoggingOptionsRequest
    #   data as a hash:
    #
    #       {
    #         logging_options: { # required
    #           level: "ERROR", # required, accepts ERROR, INFO, OFF
    #         },
    #       }
    #
    # @!attribute [rw] logging_options
    #   The logging options to set.
    #   @return [Types::LoggingOptions]
    #
    class PutLoggingOptionsRequest < Struct.new(
      :logging_options)
      SENSITIVE = []
      include Aws::Structure
    end

    class PutLoggingOptionsResponse < Aws::EmptyStructure; end

    # Contains an AWS IoT SiteWise Monitor resource ID for a portal or
    # project.
    #
    # @note When making an API call, you may pass Resource
    #   data as a hash:
    #
    #       {
    #         portal: {
    #           id: "ID", # required
    #         },
    #         project: {
    #           id: "ID", # required
    #         },
    #       }
    #
    # @!attribute [rw] portal
    #   A portal resource.
    #   @return [Types::PortalResource]
    #
    # @!attribute [rw] project
    #   A project resource.
    #   @return [Types::ProjectResource]
    #
    class Resource < Struct.new(
      :portal,
      :project)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource that already exists.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource that already exists.
    #   @return [String]
    #
    class ResourceAlreadyExistsException < Struct.new(
      :message,
      :resource_id,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested resource can't be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested service is unavailable.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The [ARN][1] of the resource to tag.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs that contain metadata for the resource.
    #   For more information, see [Tagging your AWS IoT SiteWise
    #   resources][1] in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html
    #   @return [Hash<String,String>]
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    class TagResourceResponse < Aws::EmptyStructure; end

    # Your request exceeded a rate limit. For example, you might have
    # exceeded the number of AWS IoT SiteWise assets that can be created per
    # second, the allowed number of messages per second, and so on.
    #
    # For more information, see [Quotas][1] in the *AWS IoT SiteWise User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a timestamp with optional nanosecond granularity.
    #
    # @note When making an API call, you may pass TimeInNanos
    #   data as a hash:
    #
    #       {
    #         time_in_seconds: 1, # required
    #         offset_in_nanos: 1,
    #       }
    #
    # @!attribute [rw] time_in_seconds
    #   The timestamp date, in seconds, in the Unix epoch format. Fractional
    #   nanosecond data is provided by `offsetInNanos`.
    #   @return [Integer]
    #
    # @!attribute [rw] offset_in_nanos
    #   The nanosecond offset from `timeInSeconds`.
    #   @return [Integer]
    #
    class TimeInNanos < Struct.new(
      :time_in_seconds,
      :offset_in_nanos)
      SENSITIVE = []
      include Aws::Structure
    end

    # You've reached the limit for the number of tags allowed for a
    # resource. For more information, see [Tag naming limits and
    # requirements][1] in the *AWS General Reference*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html#tag-conventions
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the resource with too many tags.
    #   @return [String]
    #
    class TooManyTagsException < Struct.new(
      :message,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an asset transform property. A transform is a one-to-one
    # mapping of a property's data points from one form to another. For
    # example, you can use a transform to convert a Celsius data stream to
    # Fahrenheit by applying the transformation expression to each data
    # point of the Celsius stream. A transform can only have a data type of
    # `DOUBLE` and consume properties with data types of `INTEGER` or
    # `DOUBLE`.
    #
    # For more information, see [Transforms][1] in the *AWS IoT SiteWise
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html#transforms
    #
    # @note When making an API call, you may pass Transform
    #   data as a hash:
    #
    #       {
    #         expression: "Expression", # required
    #         variables: [ # required
    #           {
    #             name: "VariableName", # required
    #             value: { # required
    #               property_id: "Macro", # required
    #               hierarchy_id: "Macro",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] expression
    #   The mathematical expression that defines the transformation
    #   function. You can specify up to 10 variables per expression. You can
    #   specify up to 10 functions per expression.
    #
    #   For more information, see [Quotas][1] in the *AWS IoT SiteWise User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html
    #   @return [String]
    #
    # @!attribute [rw] variables
    #   The list of variables used in the expression.
    #   @return [Array<Types::ExpressionVariable>]
    #
    class Transform < Struct.new(
      :expression,
      :variables)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a tumbling window, which is a repeating fixed-sized,
    # non-overlapping, and contiguous time interval. This window is used in
    # metric and aggregation computations.
    #
    # @note When making an API call, you may pass TumblingWindow
    #   data as a hash:
    #
    #       {
    #         interval: "Interval", # required
    #       }
    #
    # @!attribute [rw] interval
    #   The time interval for the tumbling window. Note that `w` represents
    #   weeks, `d` represents days, `h` represents hours, and `m` represents
    #   minutes. AWS IoT SiteWise computes the `1w` interval the end of
    #   Sunday at midnight each week (UTC), the `1d` interval at the end of
    #   each day at midnight (UTC), the `1h` interval at the end of each
    #   hour, and so on.
    #
    #   When AWS IoT SiteWise aggregates data points for metric
    #   computations, the start of each interval is exclusive and the end of
    #   each interval is inclusive. AWS IoT SiteWise places the computed
    #   data point at the end of the interval.
    #   @return [String]
    #
    class TumblingWindow < Struct.new(
      :interval)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The [ARN][1] of the resource to untag.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of keys for tags to remove from the resource.
    #   @return [Array<String>]
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateAccessPolicyRequest
    #   data as a hash:
    #
    #       {
    #         access_policy_id: "ID", # required
    #         access_policy_identity: { # required
    #           user: {
    #             id: "IdentityId", # required
    #           },
    #           group: {
    #             id: "IdentityId", # required
    #           },
    #           iam_user: {
    #             arn: "ARN", # required
    #           },
    #         },
    #         access_policy_resource: { # required
    #           portal: {
    #             id: "ID", # required
    #           },
    #           project: {
    #             id: "ID", # required
    #           },
    #         },
    #         access_policy_permission: "ADMINISTRATOR", # required, accepts ADMINISTRATOR, VIEWER
    #         client_token: "ClientToken",
    #       }
    #
    # @!attribute [rw] access_policy_id
    #   The ID of the access policy.
    #   @return [String]
    #
    # @!attribute [rw] access_policy_identity
    #   The identity for this access policy. Choose an AWS SSO user, an AWS
    #   SSO group, or an IAM user.
    #   @return [Types::Identity]
    #
    # @!attribute [rw] access_policy_resource
    #   The AWS IoT SiteWise Monitor resource for this access policy. Choose
    #   either a portal or a project.
    #   @return [Types::Resource]
    #
    # @!attribute [rw] access_policy_permission
    #   The permission level for this access policy. Note that a project
    #   `ADMINISTRATOR` is also known as a project owner.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique case-sensitive identifier that you can provide to ensure
    #   the idempotency of the request. Don't reuse this client token if a
    #   new idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class UpdateAccessPolicyRequest < Struct.new(
      :access_policy_id,
      :access_policy_identity,
      :access_policy_resource,
      :access_policy_permission,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    class UpdateAccessPolicyResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateAssetModelRequest
    #   data as a hash:
    #
    #       {
    #         asset_model_id: "ID", # required
    #         asset_model_name: "Name", # required
    #         asset_model_description: "Description",
    #         asset_model_properties: [
    #           {
    #             id: "ID",
    #             name: "Name", # required
    #             data_type: "STRING", # required, accepts STRING, INTEGER, DOUBLE, BOOLEAN
    #             unit: "PropertyUnit",
    #             type: { # required
    #               attribute: {
    #                 default_value: "DefaultValue",
    #               },
    #               measurement: {
    #               },
    #               transform: {
    #                 expression: "Expression", # required
    #                 variables: [ # required
    #                   {
    #                     name: "VariableName", # required
    #                     value: { # required
    #                       property_id: "Macro", # required
    #                       hierarchy_id: "Macro",
    #                     },
    #                   },
    #                 ],
    #               },
    #               metric: {
    #                 expression: "Expression", # required
    #                 variables: [ # required
    #                   {
    #                     name: "VariableName", # required
    #                     value: { # required
    #                       property_id: "Macro", # required
    #                       hierarchy_id: "Macro",
    #                     },
    #                   },
    #                 ],
    #                 window: { # required
    #                   tumbling: {
    #                     interval: "Interval", # required
    #                   },
    #                 },
    #               },
    #             },
    #           },
    #         ],
    #         asset_model_hierarchies: [
    #           {
    #             id: "ID",
    #             name: "Name", # required
    #             child_asset_model_id: "ID", # required
    #           },
    #         ],
    #         client_token: "ClientToken",
    #       }
    #
    # @!attribute [rw] asset_model_id
    #   The ID of the asset model to update.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_name
    #   A unique, friendly name for the asset model.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_description
    #   A description for the asset model.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_properties
    #   The updated property definitions of the asset model. For more
    #   information, see [Asset properties][1] in the *AWS IoT SiteWise User
    #   Guide*.
    #
    #   You can specify up to 200 properties per asset model. For more
    #   information, see [Quotas][2] in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html
    #   @return [Array<Types::AssetModelProperty>]
    #
    # @!attribute [rw] asset_model_hierarchies
    #   The updated hierarchy definitions of the asset model. Each hierarchy
    #   specifies an asset model whose assets can be children of any other
    #   assets created from this asset model. For more information, see
    #   [Asset hierarchies][1] in the *AWS IoT SiteWise User Guide*.
    #
    #   You can specify up to 10 hierarchies per asset model. For more
    #   information, see [Quotas][2] in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html
    #   @return [Array<Types::AssetModelHierarchy>]
    #
    # @!attribute [rw] client_token
    #   A unique case-sensitive identifier that you can provide to ensure
    #   the idempotency of the request. Don't reuse this client token if a
    #   new idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class UpdateAssetModelRequest < Struct.new(
      :asset_model_id,
      :asset_model_name,
      :asset_model_description,
      :asset_model_properties,
      :asset_model_hierarchies,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_model_status
    #   The status of the asset model, which contains a state (`UPDATING`
    #   after successfully calling this operation) and any error message.
    #   @return [Types::AssetModelStatus]
    #
    class UpdateAssetModelResponse < Struct.new(
      :asset_model_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateAssetPropertyRequest
    #   data as a hash:
    #
    #       {
    #         asset_id: "ID", # required
    #         property_id: "ID", # required
    #         property_alias: "PropertyAlias",
    #         property_notification_state: "ENABLED", # accepts ENABLED, DISABLED
    #         client_token: "ClientToken",
    #       }
    #
    # @!attribute [rw] asset_id
    #   The ID of the asset to be updated.
    #   @return [String]
    #
    # @!attribute [rw] property_id
    #   The ID of the asset property to be updated.
    #   @return [String]
    #
    # @!attribute [rw] property_alias
    #   The property alias that identifies the property, such as an OPC-UA
    #   server data stream path (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). For more information,
    #   see [Mapping industrial data streams to asset properties][1] in the
    #   *AWS IoT SiteWise User Guide*.
    #
    #   If you omit this parameter, the alias is removed from the property.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html
    #   @return [String]
    #
    # @!attribute [rw] property_notification_state
    #   The MQTT notification state (enabled or disabled) for this asset
    #   property. When the notification state is enabled, AWS IoT SiteWise
    #   publishes property value updates to a unique MQTT topic. For more
    #   information, see [Interacting with other services][1] in the *AWS
    #   IoT SiteWise User Guide*.
    #
    #   If you omit this parameter, the notification state is set to
    #   `DISABLED`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/interact-with-other-services.html
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique case-sensitive identifier that you can provide to ensure
    #   the idempotency of the request. Don't reuse this client token if a
    #   new idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class UpdateAssetPropertyRequest < Struct.new(
      :asset_id,
      :property_id,
      :property_alias,
      :property_notification_state,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateAssetRequest
    #   data as a hash:
    #
    #       {
    #         asset_id: "ID", # required
    #         asset_name: "Name", # required
    #         client_token: "ClientToken",
    #       }
    #
    # @!attribute [rw] asset_id
    #   The ID of the asset to update.
    #   @return [String]
    #
    # @!attribute [rw] asset_name
    #   A unique, friendly name for the asset.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique case-sensitive identifier that you can provide to ensure
    #   the idempotency of the request. Don't reuse this client token if a
    #   new idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class UpdateAssetRequest < Struct.new(
      :asset_id,
      :asset_name,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_status
    #   The status of the asset, which contains a state (`UPDATING` after
    #   successfully calling this operation) and any error message.
    #   @return [Types::AssetStatus]
    #
    class UpdateAssetResponse < Struct.new(
      :asset_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateDashboardRequest
    #   data as a hash:
    #
    #       {
    #         dashboard_id: "ID", # required
    #         dashboard_name: "Name", # required
    #         dashboard_description: "Description",
    #         dashboard_definition: "DashboardDefinition", # required
    #         client_token: "ClientToken",
    #       }
    #
    # @!attribute [rw] dashboard_id
    #   The ID of the dashboard to update.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_name
    #   A new friendly name for the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_description
    #   A new description for the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_definition
    #   The new dashboard definition, as specified in a JSON literal. For
    #   detailed information, see [Creating dashboards (CLI)][1] in the *AWS
    #   IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique case-sensitive identifier that you can provide to ensure
    #   the idempotency of the request. Don't reuse this client token if a
    #   new idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class UpdateDashboardRequest < Struct.new(
      :dashboard_id,
      :dashboard_name,
      :dashboard_description,
      :dashboard_definition,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    class UpdateDashboardResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateGatewayCapabilityConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         gateway_id: "ID", # required
    #         capability_namespace: "CapabilityNamespace", # required
    #         capability_configuration: "CapabilityConfiguration", # required
    #       }
    #
    # @!attribute [rw] gateway_id
    #   The ID of the gateway to be updated.
    #   @return [String]
    #
    # @!attribute [rw] capability_namespace
    #   The namespace of the gateway capability configuration to be updated.
    #   For example, if you configure OPC-UA sources from the AWS IoT
    #   SiteWise console, your OPC-UA capability configuration has the
    #   namespace `iotsitewise:opcuacollector:version`, where `version` is a
    #   number such as `1`.
    #   @return [String]
    #
    # @!attribute [rw] capability_configuration
    #   The JSON document that defines the configuration for the gateway
    #   capability. For more information, see [Configuring data sources
    #   (CLI)][1] in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/configure-sources.html#configure-source-cli
    #   @return [String]
    #
    class UpdateGatewayCapabilityConfigurationRequest < Struct.new(
      :gateway_id,
      :capability_namespace,
      :capability_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] capability_namespace
    #   The namespace of the gateway capability.
    #   @return [String]
    #
    # @!attribute [rw] capability_sync_status
    #   The synchronization status of the capability configuration. The sync
    #   status can be one of the following:
    #
    #   * `IN_SYNC` – The gateway is running the capability configuration.
    #
    #   * `OUT_OF_SYNC` – The gateway hasn't received the capability
    #     configuration.
    #
    #   * `SYNC_FAILED` – The gateway rejected the capability configuration.
    #
    #   After you update a capability configuration, its sync status is
    #   `OUT_OF_SYNC` until the gateway receives and applies or rejects the
    #   updated configuration.
    #   @return [String]
    #
    class UpdateGatewayCapabilityConfigurationResponse < Struct.new(
      :capability_namespace,
      :capability_sync_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateGatewayRequest
    #   data as a hash:
    #
    #       {
    #         gateway_id: "ID", # required
    #         gateway_name: "Name", # required
    #       }
    #
    # @!attribute [rw] gateway_id
    #   The ID of the gateway to update.
    #   @return [String]
    #
    # @!attribute [rw] gateway_name
    #   A unique, friendly name for the gateway.
    #   @return [String]
    #
    class UpdateGatewayRequest < Struct.new(
      :gateway_id,
      :gateway_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdatePortalRequest
    #   data as a hash:
    #
    #       {
    #         portal_id: "ID", # required
    #         portal_name: "Name", # required
    #         portal_description: "Description",
    #         portal_contact_email: "Email", # required
    #         portal_logo_image: {
    #           id: "ID",
    #           file: {
    #             data: "data", # required
    #             type: "PNG", # required, accepts PNG
    #           },
    #         },
    #         role_arn: "ARN", # required
    #         client_token: "ClientToken",
    #       }
    #
    # @!attribute [rw] portal_id
    #   The ID of the portal to update.
    #   @return [String]
    #
    # @!attribute [rw] portal_name
    #   A new friendly name for the portal.
    #   @return [String]
    #
    # @!attribute [rw] portal_description
    #   A new description for the portal.
    #   @return [String]
    #
    # @!attribute [rw] portal_contact_email
    #   The AWS administrator's contact email address.
    #   @return [String]
    #
    # @!attribute [rw] portal_logo_image
    #   Contains an image that is one of the following:
    #
    #   * An image file. Choose this option to upload a new image.
    #
    #   * The ID of an existing image. Choose this option to keep an
    #     existing image.
    #   @return [Types::Image]
    #
    # @!attribute [rw] role_arn
    #   The [ARN][1] of a service role that allows the portal's users to
    #   access your AWS IoT SiteWise resources on your behalf. For more
    #   information, see [Using service roles for AWS IoT SiteWise
    #   Monitor][2] in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique case-sensitive identifier that you can provide to ensure
    #   the idempotency of the request. Don't reuse this client token if a
    #   new idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class UpdatePortalRequest < Struct.new(
      :portal_id,
      :portal_name,
      :portal_description,
      :portal_contact_email,
      :portal_logo_image,
      :role_arn,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] portal_status
    #   The status of the portal, which contains a state (`UPDATING` after
    #   successfully calling this operation) and any error message.
    #   @return [Types::PortalStatus]
    #
    class UpdatePortalResponse < Struct.new(
      :portal_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateProjectRequest
    #   data as a hash:
    #
    #       {
    #         project_id: "ID", # required
    #         project_name: "Name", # required
    #         project_description: "Description",
    #         client_token: "ClientToken",
    #       }
    #
    # @!attribute [rw] project_id
    #   The ID of the project to update.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   A new friendly name for the project.
    #   @return [String]
    #
    # @!attribute [rw] project_description
    #   A new description for the project.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique case-sensitive identifier that you can provide to ensure
    #   the idempotency of the request. Don't reuse this client token if a
    #   new idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class UpdateProjectRequest < Struct.new(
      :project_id,
      :project_name,
      :project_description,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    class UpdateProjectResponse < Aws::EmptyStructure; end

    # Contains information for a user identity in an access policy.
    #
    # @note When making an API call, you may pass UserIdentity
    #   data as a hash:
    #
    #       {
    #         id: "IdentityId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The AWS SSO ID of the user.
    #   @return [String]
    #
    class UserIdentity < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies a property value used in an expression.
    #
    # @note When making an API call, you may pass VariableValue
    #   data as a hash:
    #
    #       {
    #         property_id: "Macro", # required
    #         hierarchy_id: "Macro",
    #       }
    #
    # @!attribute [rw] property_id
    #   The ID of the property to use as the variable. You can use the
    #   property `name` if it's from the same asset model.
    #   @return [String]
    #
    # @!attribute [rw] hierarchy_id
    #   The ID of the hierarchy to query for the property ID. You can use
    #   the hierarchy's name instead of the hierarchy's ID.
    #
    #   You use a hierarchy ID instead of a model ID because you can have
    #   several hierarchies using the same model and therefore the same
    #   `propertyId`. For example, you might have separately grouped assets
    #   that come from the same asset model. For more information, see
    #   [Asset hierarchies][1] in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html
    #   @return [String]
    #
    class VariableValue < Struct.new(
      :property_id,
      :hierarchy_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an asset property value (of a single type only).
    #
    # @note When making an API call, you may pass Variant
    #   data as a hash:
    #
    #       {
    #         string_value: "PropertyValueStringValue",
    #         integer_value: 1,
    #         double_value: 1.0,
    #         boolean_value: false,
    #       }
    #
    # @!attribute [rw] string_value
    #   Asset property data of type string (sequence of characters).
    #   @return [String]
    #
    # @!attribute [rw] integer_value
    #   Asset property data of type integer (whole number).
    #   @return [Integer]
    #
    # @!attribute [rw] double_value
    #   Asset property data of type double (floating point number).
    #   @return [Float]
    #
    # @!attribute [rw] boolean_value
    #   Asset property data of type Boolean (true or false).
    #   @return [Boolean]
    #
    class Variant < Struct.new(
      :string_value,
      :integer_value,
      :double_value,
      :boolean_value)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
