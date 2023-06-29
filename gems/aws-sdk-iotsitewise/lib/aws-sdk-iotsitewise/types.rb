# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTSiteWise
  module Types

    # Contains an access policy that defines an identity's access to an IoT
    # SiteWise Monitor resource.
    #
    # @!attribute [rw] id
    #   The ID of the access policy.
    #   @return [String]
    #
    # @!attribute [rw] identity
    #   The identity (an IAM Identity Center user, an IAM Identity Center
    #   group, or an IAM user).
    #   @return [Types::Identity]
    #
    # @!attribute [rw] resource
    #   The IoT SiteWise Monitor resource (a portal or project).
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

    # Contains the configuration information of an alarm created in an IoT
    # SiteWise Monitor portal. You can use the alarm to monitor an asset
    # property and get notified when the asset property value is outside a
    # specified range. For more information, see [Monitoring with alarms][1]
    # in the *IoT SiteWise Application Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/appguide/monitor-alarms.html
    #
    # @!attribute [rw] alarm_role_arn
    #   The [ARN][1] of the IAM role that allows the alarm to perform
    #   actions and access Amazon Web Services resources and services, such
    #   as IoT Events.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] notification_lambda_arn
    #   The [ARN][1] of the Lambda function that manages alarm
    #   notifications. For more information, see [Managing alarm
    #   notifications][2] in the *IoT Events Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://docs.aws.amazon.com/iotevents/latest/developerguide/lambda-support.html
    #   @return [String]
    #
    class Alarms < Struct.new(
      :alarm_role_arn,
      :notification_lambda_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a composite model in an asset. This object
    # contains the asset's properties that you define in the composite
    # model.
    #
    # @!attribute [rw] name
    #   The name of the composite model.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the composite model.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the composite model. For alarm composite models, this
    #   type is `AWS/ALARM`.
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   The asset properties that this composite model defines.
    #   @return [Array<Types::AssetProperty>]
    #
    # @!attribute [rw] id
    #   The ID of the asset composite model.
    #   @return [String]
    #
    class AssetCompositeModel < Struct.new(
      :name,
      :description,
      :type,
      :properties,
      :id)
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

    # Contains information about a parent asset and a child asset that are
    # related through an asset hierarchy.
    #
    # @!attribute [rw] parent_asset_id
    #   The ID of the parent asset in this asset relationship.
    #   @return [String]
    #
    # @!attribute [rw] child_asset_id
    #   The ID of the child asset in this asset relationship.
    #   @return [String]
    #
    class AssetHierarchyInfo < Struct.new(
      :parent_asset_id,
      :child_asset_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a composite model in an asset model. This
    # object contains the asset property definitions that you define in the
    # composite model.
    #
    # @!attribute [rw] name
    #   The name of the composite model.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the composite model.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the composite model. For alarm composite models, this
    #   type is `AWS/ALARM`.
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   The asset property definitions for this composite model.
    #   @return [Array<Types::AssetModelProperty>]
    #
    # @!attribute [rw] id
    #   The ID of the asset model composite model.
    #   @return [String]
    #
    class AssetModelCompositeModel < Struct.new(
      :name,
      :description,
      :type,
      :properties,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a composite model definition in an asset model. This
    # composite model definition is applied to all assets created from the
    # asset model.
    #
    # @!attribute [rw] name
    #   The name of the composite model.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the composite model.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the composite model. For alarm composite models, this
    #   type is `AWS/ALARM`.
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   The asset property definitions for this composite model.
    #   @return [Array<Types::AssetModelPropertyDefinition>]
    #
    class AssetModelCompositeModelDefinition < Struct.new(
      :name,
      :description,
      :type,
      :properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an asset hierarchy that contains a hierarchy's name, ID,
    # and child asset model ID that specifies the type of asset that can be
    # in this hierarchy.
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
    # @!attribute [rw] data_type_spec
    #   The data type of the structure for this property. This parameter
    #   exists on properties that have the `STRUCT` data type.
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
      :data_type_spec,
      :unit,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an asset model property definition. This property definition
    # is applied to all assets created from the asset model.
    #
    # @!attribute [rw] name
    #   The name of the property definition.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The data type of the property definition.
    #
    #   If you specify `STRUCT`, you must also specify `dataTypeSpec` to
    #   identify the type of the structure for this property.
    #   @return [String]
    #
    # @!attribute [rw] data_type_spec
    #   The data type of the structure for this property. This parameter is
    #   required on properties that have the `STRUCT` data type.
    #
    #   The options for this parameter depend on the type of the composite
    #   model in which you define this property. Use `AWS/ALARM_STATE` for
    #   alarm state in alarm composite models.
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
      :data_type_spec,
      :unit,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a summary of a property associated with a model.
    #
    # @!attribute [rw] id
    #   The ID of the property.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the property.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The data type of the property.
    #   @return [String]
    #
    # @!attribute [rw] data_type_spec
    #   The data type of the structure for this property. This parameter
    #   exists on properties that have the `STRUCT` data type.
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The unit (such as `Newtons` or `RPM`) of the property.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Contains a property type, which can be one of `attribute`,
    #   `measurement`, `metric`, or `transform`.
    #   @return [Types::PropertyType]
    #
    # @!attribute [rw] asset_model_composite_model_id
    #   The ID of the composite model that contains the asset model
    #   property.
    #   @return [String]
    #
    class AssetModelPropertySummary < Struct.new(
      :id,
      :name,
      :data_type,
      :data_type_spec,
      :unit,
      :type,
      :asset_model_composite_model_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains current status information for an asset model. For more
    # information, see [Asset and model states][1] in the *IoT SiteWise User
    # Guide*.
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
    #   The ID of the asset model (used with IoT SiteWise APIs).
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
    #   The alias that identifies the property, such as an OPC-UA server
    #   data stream path (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). For more information,
    #   see [Mapping industrial data streams to asset properties][1] in the
    #   *IoT SiteWise User Guide*.
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
    # @!attribute [rw] data_type_spec
    #   The data type of the structure for this property. This parameter
    #   exists on properties that have the `STRUCT` data type.
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
      :data_type_spec,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a summary of a property associated with an asset.
    #
    # @!attribute [rw] id
    #   The ID of the property.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The alias that identifies the property, such as an OPC-UA server
    #   data stream path (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). For more information,
    #   see [Mapping industrial data streams to asset properties][1] in the
    #   *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The unit of measure (such as Newtons or RPM) of the asset property.
    #   @return [String]
    #
    # @!attribute [rw] notification
    #   Contains asset property value notification information. When the
    #   notification state is enabled, IoT SiteWise publishes property value
    #   updates to a unique MQTT topic. For more information, see
    #   [Interacting with other services][1] in the *IoT SiteWise User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/interact-with-other-services.html
    #   @return [Types::PropertyNotification]
    #
    # @!attribute [rw] asset_composite_model_id
    #   The ID of the composite model that contains the asset property.
    #   @return [String]
    #
    class AssetPropertySummary < Struct.new(
      :id,
      :alias,
      :unit,
      :notification,
      :asset_composite_model_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains asset property value information.
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

    # Contains information about assets that are related to one another.
    #
    # @!attribute [rw] hierarchy_info
    #   The assets that are related through an asset hierarchy.
    #
    #   This object is present if the `relationshipType` is `HIERARCHY`.
    #   @return [Types::AssetHierarchyInfo]
    #
    # @!attribute [rw] relationship_type
    #   The relationship type of the assets in this relationship. This value
    #   is one of the following:
    #
    #   * `HIERARCHY` – The assets are related through an asset hierarchy.
    #     If you specify this relationship type, this asset relationship
    #     includes the `hierarchyInfo` object.
    #
    #   ^
    #   @return [String]
    #
    class AssetRelationshipSummary < Struct.new(
      :hierarchy_info,
      :relationship_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the current status of an asset. For more
    # information, see [Asset and model states][1] in the *IoT SiteWise User
    # Guide*.
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
    # @!attribute [rw] description
    #   A description for the asset.
    #   @return [String]
    #
    class AssetSummary < Struct.new(
      :id,
      :arn,
      :name,
      :asset_model_id,
      :creation_date,
      :last_update_date,
      :status,
      :hierarchies,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_id
    #   The ID of the parent asset.
    #   @return [String]
    #
    # @!attribute [rw] hierarchy_id
    #   The ID of a hierarchy in the parent asset's model. Hierarchies
    #   allow different groupings of assets to be formed that all come from
    #   the same asset model. For more information, see [Asset
    #   hierarchies][1] in the *IoT SiteWise User Guide*.
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

    # @!attribute [rw] alias
    #   The alias that identifies the time series.
    #   @return [String]
    #
    # @!attribute [rw] asset_id
    #   The ID of the asset in which the asset property was created.
    #   @return [String]
    #
    # @!attribute [rw] property_id
    #   The ID of the asset property.
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
    class AssociateTimeSeriesToAssetPropertyRequest < Struct.new(
      :alias,
      :asset_id,
      :property_id,
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
    # @!attribute [rw] description
    #   A description for the asset.
    #   @return [String]
    #
    class AssociatedAssetsSummary < Struct.new(
      :id,
      :arn,
      :name,
      :asset_model_id,
      :creation_date,
      :last_update_date,
      :status,
      :hierarchies,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an asset attribute property. For more information, see
    # [Attributes][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html#attributes
    #
    # @!attribute [rw] default_value
    #   The default value of the asset model property attribute. All assets
    #   that you create from the asset model contain this attribute value.
    #   You can update an attribute's value after you create an asset. For
    #   more information, see [Updating attribute values][1] in the *IoT
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

    # Contains information for an asset property aggregate entry that is
    # associated with the [BatchGetAssetPropertyAggregates][1] API.
    #
    # To identify an asset property, you must specify one of the following:
    #
    # * The `assetId` and `propertyId` of an asset property.
    #
    # * A `propertyAlias`, which is a data stream alias (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). To define an asset
    #   property's alias, see [UpdateAssetProperty][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyAggregates.html
    # [2]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html
    #
    # @!attribute [rw] entry_id
    #   The ID of the entry.
    #   @return [String]
    #
    # @!attribute [rw] asset_id
    #   The ID of the asset in which the asset property was created.
    #   @return [String]
    #
    # @!attribute [rw] property_id
    #   The ID of the asset property.
    #   @return [String]
    #
    # @!attribute [rw] property_alias
    #   The alias that identifies the property, such as an OPC-UA server
    #   data stream path (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). For more information,
    #   see [Mapping industrial data streams to asset properties][1] in the
    #   *IoT SiteWise User Guide*.
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
    class BatchGetAssetPropertyAggregatesEntry < Struct.new(
      :entry_id,
      :asset_id,
      :property_id,
      :property_alias,
      :aggregate_types,
      :resolution,
      :start_date,
      :end_date,
      :qualities,
      :time_ordering)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains error information for an asset property aggregate entry that
    # is associated with the [BatchGetAssetPropertyAggregates][1] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyAggregates.html
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The associated error message.
    #   @return [String]
    #
    # @!attribute [rw] entry_id
    #   The ID of the entry.
    #   @return [String]
    #
    class BatchGetAssetPropertyAggregatesErrorEntry < Struct.new(
      :error_code,
      :error_message,
      :entry_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the error code and the timestamp for an asset property
    # aggregate entry that is associated with the
    # [BatchGetAssetPropertyAggregates][1] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyAggregates.html
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] error_timestamp
    #   The date the error occurred, in Unix epoch time.
    #   @return [Time]
    #
    class BatchGetAssetPropertyAggregatesErrorInfo < Struct.new(
      :error_code,
      :error_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entries
    #   The list of asset property aggregate entries for the batch get
    #   request. You can specify up to 16 entries per request.
    #   @return [Array<Types::BatchGetAssetPropertyAggregatesEntry>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for each paginated request.
    #   A result set is returned in the two cases, whichever occurs first.
    #
    #   * The size of the result set is equal to 1 MB.
    #
    #   * The number of data points in the result set is equal to the value
    #     of `maxResults`. The maximum value of `maxResults` is 4000.
    #   @return [Integer]
    #
    class BatchGetAssetPropertyAggregatesRequest < Struct.new(
      :entries,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] error_entries
    #   A list of the errors (if any) associated with the batch request.
    #   Each error entry contains the `entryId` of the entry that failed.
    #   @return [Array<Types::BatchGetAssetPropertyAggregatesErrorEntry>]
    #
    # @!attribute [rw] success_entries
    #   A list of entries that were processed successfully by this batch
    #   request. Each success entry contains the `entryId` of the entry that
    #   succeeded and the latest query result.
    #   @return [Array<Types::BatchGetAssetPropertyAggregatesSuccessEntry>]
    #
    # @!attribute [rw] skipped_entries
    #   A list of entries that were not processed by this batch request.
    #   because these entries had been completely processed by previous
    #   paginated requests. Each skipped entry contains the `entryId` of the
    #   entry that skipped.
    #   @return [Array<Types::BatchGetAssetPropertyAggregatesSkippedEntry>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    class BatchGetAssetPropertyAggregatesResponse < Struct.new(
      :error_entries,
      :success_entries,
      :skipped_entries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information for an entry that has been processed by the
    # previous [BatchGetAssetPropertyAggregates][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyAggregates.html
    #
    # @!attribute [rw] entry_id
    #   The ID of the entry.
    #   @return [String]
    #
    # @!attribute [rw] completion_status
    #   The completion status of each entry that is associated with the
    #   [BatchGetAssetPropertyAggregates][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyAggregates.html
    #   @return [String]
    #
    # @!attribute [rw] error_info
    #   The error information, such as the error code and the timestamp.
    #   @return [Types::BatchGetAssetPropertyAggregatesErrorInfo]
    #
    class BatchGetAssetPropertyAggregatesSkippedEntry < Struct.new(
      :entry_id,
      :completion_status,
      :error_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains success information for an entry that is associated with the
    # [BatchGetAssetPropertyAggregates][1] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyAggregates.html
    #
    # @!attribute [rw] entry_id
    #   The ID of the entry.
    #   @return [String]
    #
    # @!attribute [rw] aggregated_values
    #   The requested aggregated asset property values (for example,
    #   average, minimum, and maximum).
    #   @return [Array<Types::AggregatedValue>]
    #
    class BatchGetAssetPropertyAggregatesSuccessEntry < Struct.new(
      :entry_id,
      :aggregated_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information for an asset property value entry that is
    # associated with the [BatchGetAssetPropertyValue][1] API.
    #
    # To identify an asset property, you must specify one of the following:
    #
    # * The `assetId` and `propertyId` of an asset property.
    #
    # * A `propertyAlias`, which is a data stream alias (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). To define an asset
    #   property's alias, see [UpdateAssetProperty][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyValue.html
    # [2]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html
    #
    # @!attribute [rw] entry_id
    #   The ID of the entry.
    #   @return [String]
    #
    # @!attribute [rw] asset_id
    #   The ID of the asset in which the asset property was created.
    #   @return [String]
    #
    # @!attribute [rw] property_id
    #   The ID of the asset property.
    #   @return [String]
    #
    # @!attribute [rw] property_alias
    #   The alias that identifies the property, such as an OPC-UA server
    #   data stream path (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). For more information,
    #   see [Mapping industrial data streams to asset properties][1] in the
    #   *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html
    #   @return [String]
    #
    class BatchGetAssetPropertyValueEntry < Struct.new(
      :entry_id,
      :asset_id,
      :property_id,
      :property_alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains error information for an asset property value entry that is
    # associated with the [BatchGetAssetPropertyValue][1] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyValue.html
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The associated error message.
    #   @return [String]
    #
    # @!attribute [rw] entry_id
    #   The ID of the entry.
    #   @return [String]
    #
    class BatchGetAssetPropertyValueErrorEntry < Struct.new(
      :error_code,
      :error_message,
      :entry_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The error information, such as the error code and the timestamp.
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] error_timestamp
    #   The date the error occurred, in Unix epoch time.
    #   @return [Time]
    #
    class BatchGetAssetPropertyValueErrorInfo < Struct.new(
      :error_code,
      :error_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information for an asset property historical value entry that
    # is associated with the [BatchGetAssetPropertyValueHistory][1] API.
    #
    # To identify an asset property, you must specify one of the following:
    #
    # * The `assetId` and `propertyId` of an asset property.
    #
    # * A `propertyAlias`, which is a data stream alias (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). To define an asset
    #   property's alias, see [UpdateAssetProperty][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyValue.html
    # [2]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html
    #
    # @!attribute [rw] entry_id
    #   The ID of the entry.
    #   @return [String]
    #
    # @!attribute [rw] asset_id
    #   The ID of the asset in which the asset property was created.
    #   @return [String]
    #
    # @!attribute [rw] property_id
    #   The ID of the asset property.
    #   @return [String]
    #
    # @!attribute [rw] property_alias
    #   The alias that identifies the property, such as an OPC-UA server
    #   data stream path (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). For more information,
    #   see [Mapping industrial data streams to asset properties][1] in the
    #   *IoT SiteWise User Guide*.
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
    class BatchGetAssetPropertyValueHistoryEntry < Struct.new(
      :entry_id,
      :asset_id,
      :property_id,
      :property_alias,
      :start_date,
      :end_date,
      :qualities,
      :time_ordering)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of the errors (if any) associated with the batch request. Each
    # error entry contains the `entryId` of the entry that failed.
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The associated error message.
    #   @return [String]
    #
    # @!attribute [rw] entry_id
    #   The ID of the entry.
    #   @return [String]
    #
    class BatchGetAssetPropertyValueHistoryErrorEntry < Struct.new(
      :error_code,
      :error_message,
      :entry_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The error information, such as the error code and the timestamp.
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] error_timestamp
    #   The date the error occurred, in Unix epoch time.
    #   @return [Time]
    #
    class BatchGetAssetPropertyValueHistoryErrorInfo < Struct.new(
      :error_code,
      :error_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entries
    #   The list of asset property historical value entries for the batch
    #   get request. You can specify up to 16 entries per request.
    #   @return [Array<Types::BatchGetAssetPropertyValueHistoryEntry>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for each paginated request.
    #   A result set is returned in the two cases, whichever occurs first.
    #
    #   * The size of the result set is equal to 4 MB.
    #
    #   * The number of data points in the result set is equal to the value
    #     of `maxResults`. The maximum value of `maxResults` is 20000.
    #   @return [Integer]
    #
    class BatchGetAssetPropertyValueHistoryRequest < Struct.new(
      :entries,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] error_entries
    #   A list of the errors (if any) associated with the batch request.
    #   Each error entry contains the `entryId` of the entry that failed.
    #   @return [Array<Types::BatchGetAssetPropertyValueHistoryErrorEntry>]
    #
    # @!attribute [rw] success_entries
    #   A list of entries that were processed successfully by this batch
    #   request. Each success entry contains the `entryId` of the entry that
    #   succeeded and the latest query result.
    #   @return [Array<Types::BatchGetAssetPropertyValueHistorySuccessEntry>]
    #
    # @!attribute [rw] skipped_entries
    #   A list of entries that were not processed by this batch request.
    #   because these entries had been completely processed by previous
    #   paginated requests. Each skipped entry contains the `entryId` of the
    #   entry that skipped.
    #   @return [Array<Types::BatchGetAssetPropertyValueHistorySkippedEntry>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    class BatchGetAssetPropertyValueHistoryResponse < Struct.new(
      :error_entries,
      :success_entries,
      :skipped_entries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information for an entry that has been processed by the
    # previous [BatchGetAssetPropertyValueHistory][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyValue.html
    #
    # @!attribute [rw] entry_id
    #   The ID of the entry.
    #   @return [String]
    #
    # @!attribute [rw] completion_status
    #   The completion status of each entry that is associated with the
    #   [BatchGetAssetPropertyValueHistory][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyValueHistory.html
    #   @return [String]
    #
    # @!attribute [rw] error_info
    #   The error information, such as the error code and the timestamp.
    #   @return [Types::BatchGetAssetPropertyValueHistoryErrorInfo]
    #
    class BatchGetAssetPropertyValueHistorySkippedEntry < Struct.new(
      :entry_id,
      :completion_status,
      :error_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains success information for an entry that is associated with the
    # [BatchGetAssetPropertyValueHistory][1] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyValue.html
    #
    # @!attribute [rw] entry_id
    #   The ID of the entry.
    #   @return [String]
    #
    # @!attribute [rw] asset_property_value_history
    #   The requested historical values for the specified asset property.
    #   @return [Array<Types::AssetPropertyValue>]
    #
    class BatchGetAssetPropertyValueHistorySuccessEntry < Struct.new(
      :entry_id,
      :asset_property_value_history)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entries
    #   The list of asset property value entries for the batch get request.
    #   You can specify up to 128 entries per request.
    #   @return [Array<Types::BatchGetAssetPropertyValueEntry>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results.
    #   @return [String]
    #
    class BatchGetAssetPropertyValueRequest < Struct.new(
      :entries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] error_entries
    #   A list of the errors (if any) associated with the batch request.
    #   Each error entry contains the `entryId` of the entry that failed.
    #   @return [Array<Types::BatchGetAssetPropertyValueErrorEntry>]
    #
    # @!attribute [rw] success_entries
    #   A list of entries that were processed successfully by this batch
    #   request. Each success entry contains the `entryId` of the entry that
    #   succeeded and the latest query result.
    #   @return [Array<Types::BatchGetAssetPropertyValueSuccessEntry>]
    #
    # @!attribute [rw] skipped_entries
    #   A list of entries that were not processed by this batch request.
    #   because these entries had been completely processed by previous
    #   paginated requests. Each skipped entry contains the `entryId` of the
    #   entry that skipped.
    #   @return [Array<Types::BatchGetAssetPropertyValueSkippedEntry>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    class BatchGetAssetPropertyValueResponse < Struct.new(
      :error_entries,
      :success_entries,
      :skipped_entries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information for an entry that has been processed by the
    # previous [BatchGetAssetPropertyValue][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyValue.html
    #
    # @!attribute [rw] entry_id
    #   The ID of the entry.
    #   @return [String]
    #
    # @!attribute [rw] completion_status
    #   The completion status of each entry that is associated with the
    #   [BatchGetAssetPropertyValue][1] request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyValue.html
    #   @return [String]
    #
    # @!attribute [rw] error_info
    #   The error information, such as the error code and the timestamp.
    #   @return [Types::BatchGetAssetPropertyValueErrorInfo]
    #
    class BatchGetAssetPropertyValueSkippedEntry < Struct.new(
      :entry_id,
      :completion_status,
      :error_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains success information for an entry that is associated with the
    # [BatchGetAssetPropertyValue][1] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyValue.html
    #
    # @!attribute [rw] entry_id
    #   The ID of the entry.
    #   @return [String]
    #
    # @!attribute [rw] asset_property_value
    #   Contains asset property value information.
    #   @return [Types::AssetPropertyValue]
    #
    class BatchGetAssetPropertyValueSuccessEntry < Struct.new(
      :entry_id,
      :asset_property_value)
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

    # Contains information about a composite model property on an asset.
    #
    # @!attribute [rw] name
    #   The name of the property.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the composite model that defines this property.
    #   @return [String]
    #
    # @!attribute [rw] asset_property
    #   Contains asset property information.
    #   @return [Types::Property]
    #
    # @!attribute [rw] id
    #   The ID of the composite model that contains the property.
    #   @return [String]
    #
    class CompositeModelProperty < Struct.new(
      :name,
      :type,
      :asset_property,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the details of an IoT SiteWise configuration error.
    #
    # @!attribute [rw] code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    class ConfigurationErrorDetails < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains current status information for the configuration.
    #
    # @!attribute [rw] state
    #   The current state of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   Contains associated error information, if any.
    #   @return [Types::ConfigurationErrorDetails]
    #
    class ConfigurationStatus < Struct.new(
      :state,
      :error)
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

    # @!attribute [rw] access_policy_identity
    #   The identity for this access policy. Choose an IAM Identity Center
    #   user, an IAM Identity Center group, or an IAM user.
    #   @return [Types::Identity]
    #
    # @!attribute [rw] access_policy_resource
    #   The IoT SiteWise Monitor resource for this access policy. Choose
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
    #   policy. For more information, see [Tagging your IoT SiteWise
    #   resources][1] in the *IoT SiteWise User Guide*.
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
    #   see [Asset properties][1] in the *IoT SiteWise User Guide*.
    #
    #   You can specify up to 200 properties per asset model. For more
    #   information, see [Quotas][2] in the *IoT SiteWise User Guide*.
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
    #   [Asset hierarchies][1] in the *IoT SiteWise User Guide*.
    #
    #   You can specify up to 10 hierarchies per asset model. For more
    #   information, see [Quotas][2] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html
    #   @return [Array<Types::AssetModelHierarchyDefinition>]
    #
    # @!attribute [rw] asset_model_composite_models
    #   The composite asset models that are part of this asset model.
    #   Composite asset models are asset models that contain specific
    #   properties. Each composite model has a type that defines the
    #   properties that the composite model supports. Use composite asset
    #   models to define alarms on this asset model.
    #   @return [Array<Types::AssetModelCompositeModelDefinition>]
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
    #   For more information, see [Tagging your IoT SiteWise resources][1]
    #   in the *IoT SiteWise User Guide*.
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
      :asset_model_composite_models,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_model_id
    #   The ID of the asset model. You can use this ID when you call other
    #   IoT SiteWise APIs.
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

    # @!attribute [rw] asset_name
    #   A friendly name for the asset.
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
    #   more information, see [Tagging your IoT SiteWise resources][1] in
    #   the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] asset_description
    #   A description for the asset.
    #   @return [String]
    #
    class CreateAssetRequest < Struct.new(
      :asset_name,
      :asset_model_id,
      :client_token,
      :tags,
      :asset_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_id
    #   The ID of the asset. This ID uniquely identifies the asset within
    #   IoT SiteWise and can be used with other IoT SiteWise APIs.
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

    # @!attribute [rw] job_name
    #   The unique name that helps identify the job request.
    #   @return [String]
    #
    # @!attribute [rw] job_role_arn
    #   The [ARN][1] of the IAM role that allows IoT SiteWise to read Amazon
    #   S3 data.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] files
    #   The files in the specified Amazon S3 bucket that contain your data.
    #   @return [Array<Types::File>]
    #
    # @!attribute [rw] error_report_location
    #   The Amazon S3 destination where errors associated with the job
    #   creation request are saved.
    #   @return [Types::ErrorReportLocation]
    #
    # @!attribute [rw] job_configuration
    #   Contains the configuration information of a job, such as the file
    #   format used to save data in Amazon S3.
    #   @return [Types::JobConfiguration]
    #
    class CreateBulkImportJobRequest < Struct.new(
      :job_name,
      :job_role_arn,
      :files,
      :error_report_location,
      :job_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The ID of the job.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The unique name that helps identify the job request.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The status of the bulk import job can be one of following values.
    #
    #   * `PENDING` – IoT SiteWise is waiting for the current bulk import
    #     job to finish.
    #
    #   * `CANCELLED` – The bulk import job has been canceled.
    #
    #   * `RUNNING` – IoT SiteWise is processing your request to import your
    #     data from Amazon S3.
    #
    #   * `COMPLETED` – IoT SiteWise successfully completed your request to
    #     import data from Amazon S3.
    #
    #   * `FAILED` – IoT SiteWise couldn't process your request to import
    #     data from Amazon S3. You can use logs saved in the specified error
    #     report location in Amazon S3 to troubleshoot issues.
    #
    #   * `COMPLETED_WITH_FAILURES` – IoT SiteWise completed your request to
    #     import data from Amazon S3 with errors. You can use logs saved in
    #     the specified error report location in Amazon S3 to troubleshoot
    #     issues.
    #   @return [String]
    #
    class CreateBulkImportJobResponse < Struct.new(
      :job_id,
      :job_name,
      :job_status)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   information, see [Creating dashboards (CLI)][1] in the *IoT SiteWise
    #   User Guide*.
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
    #   For more information, see [Tagging your IoT SiteWise resources][1]
    #   in the *IoT SiteWise User Guide*.
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
    #   more information, see [Tagging your IoT SiteWise resources][1] in
    #   the *IoT SiteWise User Guide*.
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
    #   other IoT SiteWise APIs.
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

    # @!attribute [rw] portal_name
    #   A friendly name for the portal.
    #   @return [String]
    #
    # @!attribute [rw] portal_description
    #   A description for the portal.
    #   @return [String]
    #
    # @!attribute [rw] portal_contact_email
    #   The Amazon Web Services administrator's contact email address.
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
    #   access your IoT SiteWise resources on your behalf. For more
    #   information, see [Using service roles for IoT SiteWise Monitor][2]
    #   in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs that contain metadata for the portal. For
    #   more information, see [Tagging your IoT SiteWise resources][1] in
    #   the *IoT SiteWise User Guide*.
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
    #   * `SSO` – The portal uses IAM Identity Center (successor to Single
    #     Sign-On) to authenticate users and manage user permissions. Before
    #     you can create a portal that uses IAM Identity Center, you must
    #     enable IAM Identity Center. For more information, see [Enabling
    #     IAM Identity Center][1] in the *IoT SiteWise User Guide*. This
    #     option is only available in Amazon Web Services Regions other than
    #     the China Regions.
    #
    #   * `IAM` – The portal uses Identity and Access Management to
    #     authenticate users and manage user permissions.
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
    # @!attribute [rw] notification_sender_email
    #   The email address that sends alarm notifications.
    #
    #   If you use the [IoT Events managed Lambda function][1] to manage
    #   your emails, you must [verify the sender email address in Amazon
    #   SES][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iotevents/latest/developerguide/lambda-support.html
    #   [2]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-email-addresses.html
    #   @return [String]
    #
    # @!attribute [rw] alarms
    #   Contains the configuration information of an alarm created in an IoT
    #   SiteWise Monitor portal. You can use the alarm to monitor an asset
    #   property and get notified when the asset property value is outside a
    #   specified range. For more information, see [Monitoring with
    #   alarms][1] in the *IoT SiteWise Application Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/appguide/monitor-alarms.html
    #   @return [Types::Alarms]
    #
    class CreatePortalRequest < Struct.new(
      :portal_name,
      :portal_description,
      :portal_contact_email,
      :client_token,
      :portal_logo_image_file,
      :role_arn,
      :tags,
      :portal_auth_mode,
      :notification_sender_email,
      :alarms)
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
    #   The URL for the IoT SiteWise Monitor portal. You can use this URL to
    #   access portals that use IAM Identity Center for authentication. For
    #   portals that use IAM for authentication, you must use the IoT
    #   SiteWise console to get a URL that you can use to access the portal.
    #   @return [String]
    #
    # @!attribute [rw] portal_status
    #   The status of the portal, which contains a state (`CREATING` after
    #   successfully calling this operation) and any error message.
    #   @return [Types::PortalStatus]
    #
    # @!attribute [rw] sso_application_id
    #   The associated IAM Identity Center application ID, if the portal
    #   uses IAM Identity Center.
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
    #   more information, see [Tagging your IoT SiteWise resources][1] in
    #   the *IoT SiteWise User Guide*.
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

    # A .csv file.
    #
    # @!attribute [rw] column_names
    #   The column names specified in the .csv file.
    #   @return [Array<String>]
    #
    class Csv < Struct.new(
      :column_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a customer managed Amazon S3 bucket.
    #
    # @!attribute [rw] s3_resource_arn
    #   The [ARN][1] of the Amazon S3 object. For more information about how
    #   to find the ARN for an Amazon S3 object, see [Amazon S3
    #   resources][2] in the *Amazon Simple Storage Service User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The [ARN][1] of the Identity and Access Management role that allows
    #   IoT SiteWise to send data to Amazon S3.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    class CustomerManagedS3Storage < Struct.new(
      :s3_resource_arn,
      :role_arn)
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

    # @!attribute [rw] gateway_id
    #   The ID of the gateway to delete.
    #   @return [String]
    #
    class DeleteGatewayRequest < Struct.new(
      :gateway_id)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] alias
    #   The alias that identifies the time series.
    #   @return [String]
    #
    # @!attribute [rw] asset_id
    #   The ID of the asset in which the asset property was created.
    #   @return [String]
    #
    # @!attribute [rw] property_id
    #   The ID of the asset property.
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
    class DeleteTimeSeriesRequest < Struct.new(
      :alias,
      :asset_id,
      :property_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   The identity (IAM Identity Center user, IAM Identity Center group,
    #   or IAM user) to which this access policy applies.
    #   @return [Types::Identity]
    #
    # @!attribute [rw] access_policy_resource
    #   The IoT SiteWise Monitor resource (portal or project) to which this
    #   access policy provides access.
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

    # @!attribute [rw] asset_model_id
    #   The ID of the asset model.
    #   @return [String]
    #
    # @!attribute [rw] exclude_properties
    #   Whether or not to exclude asset model properties from the response.
    #   @return [Boolean]
    #
    class DescribeAssetModelRequest < Struct.new(
      :asset_model_id,
      :exclude_properties)
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
    #
    #   This object doesn't include properties that you define in composite
    #   models. You can find composite model properties in the
    #   `assetModelCompositeModels` object.
    #   @return [Array<Types::AssetModelProperty>]
    #
    # @!attribute [rw] asset_model_hierarchies
    #   A list of asset model hierarchies that each contain a
    #   `childAssetModelId` and a `hierarchyId` (named `id`). A hierarchy
    #   specifies allowed parent/child asset relationships for an asset
    #   model.
    #   @return [Array<Types::AssetModelHierarchy>]
    #
    # @!attribute [rw] asset_model_composite_models
    #   The list of composite asset models for the asset model.
    #   @return [Array<Types::AssetModelCompositeModel>]
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
      :asset_model_composite_models,
      :asset_model_creation_date,
      :asset_model_last_update_date,
      :asset_model_status)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #
    #   This response includes this object for normal asset properties. If
    #   you describe an asset property in a composite model, this response
    #   includes the asset property information in `compositeModel`.
    #   @return [Types::Property]
    #
    # @!attribute [rw] composite_model
    #   The composite asset model that declares this asset property, if this
    #   asset property exists in a composite model.
    #   @return [Types::CompositeModelProperty]
    #
    class DescribeAssetPropertyResponse < Struct.new(
      :asset_id,
      :asset_name,
      :asset_model_id,
      :asset_property,
      :composite_model)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_id
    #   The ID of the asset.
    #   @return [String]
    #
    # @!attribute [rw] exclude_properties
    #   Whether or not to exclude asset properties from the response.
    #   @return [Boolean]
    #
    class DescribeAssetRequest < Struct.new(
      :asset_id,
      :exclude_properties)
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
    #
    #   This object doesn't include properties that you define in composite
    #   models. You can find composite model properties in the
    #   `assetCompositeModels` object.
    #   @return [Array<Types::AssetProperty>]
    #
    # @!attribute [rw] asset_hierarchies
    #   A list of asset hierarchies that each contain a `hierarchyId`. A
    #   hierarchy specifies allowed parent/child asset relationships.
    #   @return [Array<Types::AssetHierarchy>]
    #
    # @!attribute [rw] asset_composite_models
    #   The composite models for the asset.
    #   @return [Array<Types::AssetCompositeModel>]
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
    # @!attribute [rw] asset_description
    #   A description for the asset.
    #   @return [String]
    #
    class DescribeAssetResponse < Struct.new(
      :asset_id,
      :asset_arn,
      :asset_name,
      :asset_model_id,
      :asset_properties,
      :asset_hierarchies,
      :asset_composite_models,
      :asset_creation_date,
      :asset_last_update_date,
      :asset_status,
      :asset_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The ID of the job.
    #   @return [String]
    #
    class DescribeBulkImportJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The ID of the job.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The unique name that helps identify the job request.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The status of the bulk import job can be one of following values.
    #
    #   * `PENDING` – IoT SiteWise is waiting for the current bulk import
    #     job to finish.
    #
    #   * `CANCELLED` – The bulk import job has been canceled.
    #
    #   * `RUNNING` – IoT SiteWise is processing your request to import your
    #     data from Amazon S3.
    #
    #   * `COMPLETED` – IoT SiteWise successfully completed your request to
    #     import data from Amazon S3.
    #
    #   * `FAILED` – IoT SiteWise couldn't process your request to import
    #     data from Amazon S3. You can use logs saved in the specified error
    #     report location in Amazon S3 to troubleshoot issues.
    #
    #   * `COMPLETED_WITH_FAILURES` – IoT SiteWise completed your request to
    #     import data from Amazon S3 with errors. You can use logs saved in
    #     the specified error report location in Amazon S3 to troubleshoot
    #     issues.
    #   @return [String]
    #
    # @!attribute [rw] job_role_arn
    #   The [ARN][1] of the IAM role that allows IoT SiteWise to read Amazon
    #   S3 data.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] files
    #   The files in the specified Amazon S3 bucket that contain your data.
    #   @return [Array<Types::File>]
    #
    # @!attribute [rw] error_report_location
    #   The Amazon S3 destination where errors associated with the job
    #   creation request are saved.
    #   @return [Types::ErrorReportLocation]
    #
    # @!attribute [rw] job_configuration
    #   Contains the configuration information of a job, such as the file
    #   format used to save data in Amazon S3.
    #   @return [Types::JobConfiguration]
    #
    # @!attribute [rw] job_creation_date
    #   The date the job was created, in Unix epoch TIME.
    #   @return [Time]
    #
    # @!attribute [rw] job_last_update_date
    #   The date the job was last updated, in Unix epoch time.
    #   @return [Time]
    #
    class DescribeBulkImportJobResponse < Struct.new(
      :job_id,
      :job_name,
      :job_status,
      :job_role_arn,
      :files,
      :error_report_location,
      :job_configuration,
      :job_creation_date,
      :job_last_update_date)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   see [Creating dashboards (CLI)][1] in the *IoT SiteWise User Guide*.
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

    # @api private
    #
    class DescribeDefaultEncryptionConfigurationRequest < Aws::EmptyStructure; end

    # @!attribute [rw] encryption_type
    #   The type of encryption used for the encryption configuration.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The key ARN of the customer managed key used for KMS encryption if
    #   you use `KMS_BASED_ENCRYPTION`.
    #   @return [String]
    #
    # @!attribute [rw] configuration_status
    #   The status of the account configuration. This contains the
    #   `ConfigurationState`. If there's an error, it also contains the
    #   `ErrorDetails`.
    #   @return [Types::ConfigurationStatus]
    #
    class DescribeDefaultEncryptionConfigurationResponse < Struct.new(
      :encryption_type,
      :kms_key_arn,
      :configuration_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_id
    #   The ID of the gateway that defines the capability configuration.
    #   @return [String]
    #
    # @!attribute [rw] capability_namespace
    #   The namespace of the capability configuration. For example, if you
    #   configure OPC-UA sources from the IoT SiteWise console, your OPC-UA
    #   capability configuration has the namespace
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
    #   (CLI)][1] in the *IoT SiteWise User Guide*.
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
    #   The IAM Identity Center application generated client ID (used with
    #   IAM Identity Center APIs). IoT SiteWise includes `portalClientId`
    #   for only portals that use IAM Identity Center to authenticate users.
    #   @return [String]
    #
    # @!attribute [rw] portal_start_url
    #   The URL for the IoT SiteWise Monitor portal. You can use this URL to
    #   access portals that use IAM Identity Center for authentication. For
    #   portals that use IAM for authentication, you must use the IoT
    #   SiteWise console to get a URL that you can use to access the portal.
    #   @return [String]
    #
    # @!attribute [rw] portal_contact_email
    #   The Amazon Web Services administrator's contact email address.
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
    #   access your IoT SiteWise resources on your behalf. For more
    #   information, see [Using service roles for IoT SiteWise Monitor][2]
    #   in the *IoT SiteWise User Guide*.
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
    # @!attribute [rw] notification_sender_email
    #   The email address that sends alarm notifications.
    #   @return [String]
    #
    # @!attribute [rw] alarms
    #   Contains the configuration information of an alarm created in an IoT
    #   SiteWise Monitor portal.
    #   @return [Types::Alarms]
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
      :portal_auth_mode,
      :notification_sender_email,
      :alarms)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @api private
    #
    class DescribeStorageConfigurationRequest < Aws::EmptyStructure; end

    # @!attribute [rw] storage_type
    #   The storage tier that you specified for your data. The `storageType`
    #   parameter can be one of the following values:
    #
    #   * `SITEWISE_DEFAULT_STORAGE` – IoT SiteWise saves your data into the
    #     hot tier. The hot tier is a service-managed database.
    #
    #   * `MULTI_LAYER_STORAGE` – IoT SiteWise saves your data in both the
    #     cold tier and the hot tier. The cold tier is a customer-managed
    #     Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] multi_layer_storage
    #   Contains information about the storage destination.
    #   @return [Types::MultiLayerStorage]
    #
    # @!attribute [rw] disassociated_data_storage
    #   Contains the storage configuration for time series (data streams)
    #   that aren't associated with asset properties. The
    #   `disassociatedDataStorage` can be one of the following values:
    #
    #   * `ENABLED` – IoT SiteWise accepts time series that aren't
    #     associated with asset properties.
    #
    #     After the `disassociatedDataStorage` is enabled, you can't
    #     disable it.
    #
    #   * `DISABLED` – IoT SiteWise doesn't accept time series (data
    #     streams) that aren't associated with asset properties.
    #
    #   For more information, see [Data streams][1] in the *IoT SiteWise
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/data-streams.html
    #   @return [String]
    #
    # @!attribute [rw] retention_period
    #   How many days your data is kept in the hot tier. By default, your
    #   data is kept indefinitely in the hot tier.
    #   @return [Types::RetentionPeriod]
    #
    # @!attribute [rw] configuration_status
    #   Contains current status information for the configuration.
    #   @return [Types::ConfigurationStatus]
    #
    # @!attribute [rw] last_update_date
    #   The date the storage configuration was last updated, in Unix epoch
    #   time.
    #   @return [Time]
    #
    class DescribeStorageConfigurationResponse < Struct.new(
      :storage_type,
      :multi_layer_storage,
      :disassociated_data_storage,
      :retention_period,
      :configuration_status,
      :last_update_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alias
    #   The alias that identifies the time series.
    #   @return [String]
    #
    # @!attribute [rw] asset_id
    #   The ID of the asset in which the asset property was created.
    #   @return [String]
    #
    # @!attribute [rw] property_id
    #   The ID of the asset property.
    #   @return [String]
    #
    class DescribeTimeSeriesRequest < Struct.new(
      :alias,
      :asset_id,
      :property_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_id
    #   The ID of the asset in which the asset property was created.
    #   @return [String]
    #
    # @!attribute [rw] property_id
    #   The ID of the asset property.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The alias that identifies the time series.
    #   @return [String]
    #
    # @!attribute [rw] time_series_id
    #   The ID of the time series.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The data type of the time series.
    #
    #   If you specify `STRUCT`, you must also specify `dataTypeSpec` to
    #   identify the type of the structure for this time series.
    #   @return [String]
    #
    # @!attribute [rw] data_type_spec
    #   The data type of the structure for this time series. This parameter
    #   is required for time series that have the `STRUCT` data type.
    #
    #   The options for this parameter depend on the type of the composite
    #   model in which you created the asset property that is associated
    #   with your time series. Use `AWS/ALARM_STATE` for alarm state in
    #   alarm composite models.
    #   @return [String]
    #
    # @!attribute [rw] time_series_creation_date
    #   The date that the time series was created, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] time_series_last_update_date
    #   The date that the time series was last updated, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] time_series_arn
    #   The [ARN][1] of the time series, which has the following format.
    #
    #   `arn:$\{Partition\}:iotsitewise:$\{Region\}:$\{Account\}:time-series/$\{TimeSeriesId\}`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    class DescribeTimeSeriesResponse < Struct.new(
      :asset_id,
      :property_id,
      :alias,
      :time_series_id,
      :data_type,
      :data_type_spec,
      :time_series_creation_date,
      :time_series_last_update_date,
      :time_series_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains detailed error information.
    #
    # @!attribute [rw] code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    class DetailedError < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   hierarchies][1] in the *IoT SiteWise User Guide*.
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

    # @!attribute [rw] alias
    #   The alias that identifies the time series.
    #   @return [String]
    #
    # @!attribute [rw] asset_id
    #   The ID of the asset in which the asset property was created.
    #   @return [String]
    #
    # @!attribute [rw] property_id
    #   The ID of the asset property.
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
    class DisassociateTimeSeriesFromAssetPropertyRequest < Struct.new(
      :alias,
      :asset_id,
      :property_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the details of an IoT SiteWise error.
    #
    # @!attribute [rw] code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   A list of detailed errors.
    #   @return [Array<Types::DetailedError>]
    #
    class ErrorDetails < Struct.new(
      :code,
      :message,
      :details)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 destination where errors associated with the job
    # creation request are saved.
    #
    # @!attribute [rw] bucket
    #   The name of the Amazon S3 bucket to which errors associated with the
    #   bulk import job are sent.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   Amazon S3 uses the prefix as a folder name to organize data in the
    #   bucket. Each Amazon S3 object has a key that is its unique
    #   identifier in the bucket. Each object in a bucket has exactly one
    #   key. The prefix must end with a forward slash (/). For more
    #   information, see [Organizing objects using prefixes][1] in the
    #   *Amazon Simple Storage Service User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-prefixes.html
    #   @return [String]
    #
    class ErrorReportLocation < Struct.new(
      :bucket,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains expression variable information.
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

    # The file in Amazon S3 where your data is saved.
    #
    # @!attribute [rw] bucket
    #   The name of the Amazon S3 bucket from which data is imported.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The key of the Amazon S3 object that contains your data. Each object
    #   has a key that is a unique identifier. Each object has exactly one
    #   key.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The version ID to identify a specific version of the Amazon S3
    #   object that contains your data.
    #   @return [String]
    #
    class File < Struct.new(
      :bucket,
      :key,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The file format of the data.
    #
    # @!attribute [rw] csv
    #   The .csv file format.
    #   @return [Types::Csv]
    #
    class FileFormat < Struct.new(
      :csv)
      SENSITIVE = []
      include Aws::Structure
    end

    # The forwarding configuration for a given property.
    #
    # @!attribute [rw] state
    #   The forwarding state for the given property.
    #   @return [String]
    #
    class ForwardingConfig < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a summary of a gateway capability configuration.
    #
    # @!attribute [rw] capability_namespace
    #   The namespace of the capability configuration. For example, if you
    #   configure OPC-UA sources from the IoT SiteWise console, your OPC-UA
    #   capability configuration has the namespace
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
    # @!attribute [rw] greengrass
    #   A gateway that runs on IoT Greengrass.
    #   @return [Types::Greengrass]
    #
    # @!attribute [rw] greengrass_v2
    #   A gateway that runs on IoT Greengrass V2.
    #   @return [Types::GreengrassV2]
    #
    class GatewayPlatform < Struct.new(
      :greengrass,
      :greengrass_v2)
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
    # @!attribute [rw] gateway_platform
    #   Contains a gateway's platform information.
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
    class GatewaySummary < Struct.new(
      :gateway_id,
      :gateway_name,
      :gateway_platform,
      :gateway_capability_summaries,
      :creation_date,
      :last_update_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_id
    #   The ID of the asset.
    #   @return [String]
    #
    # @!attribute [rw] property_id
    #   The ID of the asset property.
    #   @return [String]
    #
    # @!attribute [rw] property_alias
    #   The alias that identifies the property, such as an OPC-UA server
    #   data stream path (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). For more information,
    #   see [Mapping industrial data streams to asset properties][1] in the
    #   *IoT SiteWise User Guide*.
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
    #   The maximum number of results to return for each paginated request.
    #   A result set is returned in the two cases, whichever occurs first.
    #
    #   * The size of the result set is equal to 1 MB.
    #
    #   * The number of data points in the result set is equal to the value
    #     of `maxResults`. The maximum value of `maxResults` is 250.
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

    # @!attribute [rw] asset_id
    #   The ID of the asset.
    #   @return [String]
    #
    # @!attribute [rw] property_id
    #   The ID of the asset property.
    #   @return [String]
    #
    # @!attribute [rw] property_alias
    #   The alias that identifies the property, such as an OPC-UA server
    #   data stream path (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). For more information,
    #   see [Mapping industrial data streams to asset properties][1] in the
    #   *IoT SiteWise User Guide*.
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
    #   The maximum number of results to return for each paginated request.
    #   A result set is returned in the two cases, whichever occurs first.
    #
    #   * The size of the result set is equal to 4 MB.
    #
    #   * The number of data points in the result set is equal to the value
    #     of `maxResults`. The maximum value of `maxResults` is 20000.
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

    # @!attribute [rw] asset_id
    #   The ID of the asset.
    #   @return [String]
    #
    # @!attribute [rw] property_id
    #   The ID of the asset property.
    #   @return [String]
    #
    # @!attribute [rw] property_alias
    #   The alias that identifies the property, such as an OPC-UA server
    #   data stream path (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). For more information,
    #   see [Mapping industrial data streams to asset properties][1] in the
    #   *IoT SiteWise User Guide*.
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

    # @!attribute [rw] asset_id
    #   The ID of the asset.
    #   @return [String]
    #
    # @!attribute [rw] property_id
    #   The ID of the asset property.
    #   @return [String]
    #
    # @!attribute [rw] property_alias
    #   The alias that identifies the property, such as an OPC-UA server
    #   data stream path (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). For more information,
    #   see [Mapping industrial data streams to asset properties][1] in the
    #   *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html
    #   @return [String]
    #
    # @!attribute [rw] start_time_in_seconds
    #   The exclusive start of the range from which to interpolate data,
    #   expressed in seconds in Unix epoch time.
    #   @return [Integer]
    #
    # @!attribute [rw] start_time_offset_in_nanos
    #   The nanosecond offset converted from `startTimeInSeconds`.
    #   @return [Integer]
    #
    # @!attribute [rw] end_time_in_seconds
    #   The inclusive end of the range from which to interpolate data,
    #   expressed in seconds in Unix epoch time.
    #   @return [Integer]
    #
    # @!attribute [rw] end_time_offset_in_nanos
    #   The nanosecond offset converted from `endTimeInSeconds`.
    #   @return [Integer]
    #
    # @!attribute [rw] quality
    #   The quality of the asset property value. You can use this parameter
    #   as a filter to choose only the asset property values that have a
    #   specific quality.
    #   @return [String]
    #
    # @!attribute [rw] interval_in_seconds
    #   The time interval in seconds over which to interpolate data. Each
    #   interval starts when the previous one ends.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for each paginated request.
    #   If not specified, the default value is 10.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   The interpolation type.
    #
    #   Valid values: `LINEAR_INTERPOLATION | LOCF_INTERPOLATION`
    #
    #   * `LINEAR_INTERPOLATION` – Estimates missing data using [linear
    #     interpolation][1].
    #
    #     For example, you can use this operation to return the interpolated
    #     temperature values for a wind turbine every 24 hours over a
    #     duration of 7 days. If the interpolation starts July 1, 2021, at 9
    #     AM, IoT SiteWise returns the first interpolated value on July 2,
    #     2021, at 9 AM, the second interpolated value on July 3, 2021, at 9
    #     AM, and so on.
    #
    #   * `LOCF_INTERPOLATION` – Estimates missing data using last
    #     observation carried forward interpolation
    #
    #     If no data point is found for an interval, IoT SiteWise returns
    #     the last observed data point for the previous interval and carries
    #     forward this interpolated value until a new data point is found.
    #
    #     For example, you can get the state of an on-off valve every 24
    #     hours over a duration of 7 days. If the interpolation starts July
    #     1, 2021, at 9 AM, IoT SiteWise returns the last observed data
    #     point between July 1, 2021, at 9 AM and July 2, 2021, at 9 AM as
    #     the first interpolated value. If a data point isn't found after 9
    #     AM on July 2, 2021, IoT SiteWise uses the same interpolated value
    #     for the rest of the days.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Linear_interpolation
    #   @return [String]
    #
    # @!attribute [rw] interval_window_in_seconds
    #   The query interval for the window, in seconds. IoT SiteWise computes
    #   each interpolated value by using data points from the timestamp of
    #   each interval, minus the window to the timestamp of each interval
    #   plus the window. If not specified, the window ranges between the
    #   start time minus the interval and the end time plus the interval.
    #
    #   <note markdown="1"> * If you specify a value for the `intervalWindowInSeconds`
    #     parameter, the value for the `type` parameter must be
    #     `LINEAR_INTERPOLATION`.
    #
    #   * If a data point isn't found during the specified query window,
    #     IoT SiteWise won't return an interpolated value for the interval.
    #     This indicates that there's a gap in the ingested data points.
    #
    #    </note>
    #
    #   For example, you can get the interpolated temperature values for a
    #   wind turbine every 24 hours over a duration of 7 days. If the
    #   interpolation starts on July 1, 2021, at 9 AM with a window of 2
    #   hours, IoT SiteWise uses the data points from 7 AM (9 AM minus 2
    #   hours) to 11 AM (9 AM plus 2 hours) on July 2, 2021 to compute the
    #   first interpolated value. Next, IoT SiteWise uses the data points
    #   from 7 AM (9 AM minus 2 hours) to 11 AM (9 AM plus 2 hours) on July
    #   3, 2021 to compute the second interpolated value, and so on.
    #   @return [Integer]
    #
    class GetInterpolatedAssetPropertyValuesRequest < Struct.new(
      :asset_id,
      :property_id,
      :property_alias,
      :start_time_in_seconds,
      :start_time_offset_in_nanos,
      :end_time_in_seconds,
      :end_time_offset_in_nanos,
      :quality,
      :interval_in_seconds,
      :next_token,
      :max_results,
      :type,
      :interval_window_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] interpolated_asset_property_values
    #   The requested interpolated values.
    #   @return [Array<Types::InterpolatedAssetPropertyValue>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    class GetInterpolatedAssetPropertyValuesResponse < Struct.new(
      :interpolated_asset_property_values,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details for a gateway that runs on IoT Greengrass. To create
    # a gateway that runs on IoT Greengrass, you must add the IoT SiteWise
    # connector to a Greengrass group and deploy it. Your Greengrass group
    # must also have permissions to upload data to IoT SiteWise. For more
    # information, see [Ingesting data using a gateway][1] in the *IoT
    # SiteWise User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/gateway-connector.html
    #
    # @!attribute [rw] group_arn
    #   The [ARN][1] of the Greengrass group. For more information about how
    #   to find a group's ARN, see [ListGroups][2] and [GetGroup][3] in the
    #   *IoT Greengrass API Reference*.
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

    # Contains details for a gateway that runs on IoT Greengrass V2. To
    # create a gateway that runs on IoT Greengrass V2, you must deploy the
    # IoT SiteWise Edge component to your gateway device. Your [Greengrass
    # device role][1] must use the `AWSIoTSiteWiseEdgeAccess` policy. For
    # more information, see [Using IoT SiteWise at the edge][2] in the *IoT
    # SiteWise User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/greengrass/v2/developerguide/device-service-role.html
    # [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/sw-gateways.html
    #
    # @!attribute [rw] core_device_thing_name
    #   The name of the IoT thing for your IoT Greengrass V2 core device.
    #   @return [String]
    #
    class GreengrassV2 < Struct.new(
      :core_device_thing_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information for a group identity in an access policy.
    #
    # @!attribute [rw] id
    #   The IAM Identity Center ID of the group.
    #   @return [String]
    #
    class GroupIdentity < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an Identity and Access Management role. For
    # more information, see [IAM roles][1] in the *IAM User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html
    #
    # @!attribute [rw] arn
    #   The ARN of the IAM role. For more information, see [IAM ARNs][1] in
    #   the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html
    #   @return [String]
    #
    class IAMRoleIdentity < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an Identity and Access Management user.
    #
    # @!attribute [rw] arn
    #   The ARN of the IAM user. For more information, see [IAM ARNs][1] in
    #   the *IAM User Guide*.
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

    # Contains an identity that can access an IoT SiteWise Monitor resource.
    #
    # <note markdown="1"> Currently, you can't use Amazon Web Services APIs to retrieve IAM
    # Identity Center identity IDs. You can find the IAM Identity Center
    # identity IDs in the URL of user and group pages in the [IAM Identity
    # Center console][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://console.aws.amazon.com/singlesignon
    #
    # @!attribute [rw] user
    #   An IAM Identity Center user identity.
    #   @return [Types::UserIdentity]
    #
    # @!attribute [rw] group
    #   An IAM Identity Center group identity.
    #   @return [Types::GroupIdentity]
    #
    # @!attribute [rw] iam_user
    #   An IAM user identity.
    #   @return [Types::IAMUserIdentity]
    #
    # @!attribute [rw] iam_role
    #   An IAM role identity.
    #   @return [Types::IAMRoleIdentity]
    #
    class Identity < Struct.new(
      :user,
      :group,
      :iam_user,
      :iam_role)
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

    # Contains an image that is uploaded to IoT SiteWise and available at a
    # URL.
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

    # IoT SiteWise can't process your request right now. Try again later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class InternalFailureException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an interpolated asset property value.
    #
    # @!attribute [rw] timestamp
    #   Contains a timestamp with optional nanosecond granularity.
    #   @return [Types::TimeInNanos]
    #
    # @!attribute [rw] value
    #   Contains an asset property value (of a single type only).
    #   @return [Types::Variant]
    #
    class InterpolatedAssetPropertyValue < Struct.new(
      :timestamp,
      :value)
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

    # Contains the configuration information of a job, such as the file
    # format used to save data in Amazon S3.
    #
    # @!attribute [rw] file_format
    #   The file format of the data in Amazon S3.
    #   @return [Types::FileFormat]
    #
    class JobConfiguration < Struct.new(
      :file_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a job summary information.
    #
    # @!attribute [rw] id
    #   The ID of the job.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The unique name that helps identify the job request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the bulk import job can be one of following values.
    #
    #   * `PENDING` – IoT SiteWise is waiting for the current bulk import
    #     job to finish.
    #
    #   * `CANCELLED` – The bulk import job has been canceled.
    #
    #   * `RUNNING` – IoT SiteWise is processing your request to import your
    #     data from Amazon S3.
    #
    #   * `COMPLETED` – IoT SiteWise successfully completed your request to
    #     import data from Amazon S3.
    #
    #   * `FAILED` – IoT SiteWise couldn't process your request to import
    #     data from Amazon S3. You can use logs saved in the specified error
    #     report location in Amazon S3 to troubleshoot issues.
    #
    #   * `COMPLETED_WITH_FAILURES` – IoT SiteWise completed your request to
    #     import data from Amazon S3 with errors. You can use logs saved in
    #     the specified error report location in Amazon S3 to troubleshoot
    #     issues.
    #   @return [String]
    #
    class JobSummary < Struct.new(
      :id,
      :name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # You've reached the limit for a resource. For example, this can occur
    # if you're trying to associate more than the allowed number of child
    # assets or attempting to create more than the allowed number of
    # properties for an asset model.
    #
    # For more information, see [Quotas][1] in the *IoT SiteWise User
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

    # @!attribute [rw] identity_type
    #   The type of identity (IAM Identity Center user, IAM Identity Center
    #   group, or IAM user). This parameter is required if you specify
    #   `identityId`.
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
    #   The maximum number of results to return for each paginated request.
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

    # @!attribute [rw] asset_model_id
    #   The ID of the asset model.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for each paginated request.
    #   If not specified, the default value is 50.
    #   @return [Integer]
    #
    # @!attribute [rw] filter
    #   Filters the requested list of asset model properties. You can choose
    #   one of the following options:
    #
    #   * `ALL` – The list includes all asset model properties for a given
    #     asset model ID.
    #
    #   * `BASE` – The list includes only base asset model properties for a
    #     given asset model ID.
    #
    #   Default: `BASE`
    #   @return [String]
    #
    class ListAssetModelPropertiesRequest < Struct.new(
      :asset_model_id,
      :next_token,
      :max_results,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_model_property_summaries
    #   A list that summarizes the properties associated with the specified
    #   asset model.
    #   @return [Array<Types::AssetModelPropertySummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    class ListAssetModelPropertiesResponse < Struct.new(
      :asset_model_property_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for each paginated request.
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

    # @!attribute [rw] asset_id
    #   The ID of the asset.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for each paginated request.
    #   If not specified, the default value is 50.
    #   @return [Integer]
    #
    # @!attribute [rw] filter
    #   Filters the requested list of asset properties. You can choose one
    #   of the following options:
    #
    #   * `ALL` – The list includes all asset properties for a given asset
    #     model ID.
    #
    #   * `BASE` – The list includes only base asset properties for a given
    #     asset model ID.
    #
    #   Default: `BASE`
    #   @return [String]
    #
    class ListAssetPropertiesRequest < Struct.new(
      :asset_id,
      :next_token,
      :max_results,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_property_summaries
    #   A list that summarizes the properties associated with the specified
    #   asset.
    #   @return [Array<Types::AssetPropertySummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    class ListAssetPropertiesResponse < Struct.new(
      :asset_property_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_id
    #   The ID of the asset.
    #   @return [String]
    #
    # @!attribute [rw] traversal_type
    #   The type of traversal to use to identify asset relationships. Choose
    #   the following option:
    #
    #   * `PATH_TO_ROOT` – Identify the asset's parent assets up to the
    #     root asset. The asset that you specify in `assetId` is the first
    #     result in the list of `assetRelationshipSummaries`, and the root
    #     asset is the last result.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for each paginated request.
    #   @return [Integer]
    #
    class ListAssetRelationshipsRequest < Struct.new(
      :asset_id,
      :traversal_type,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_relationship_summaries
    #   A list that summarizes each asset relationship.
    #   @return [Array<Types::AssetRelationshipSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    class ListAssetRelationshipsResponse < Struct.new(
      :asset_relationship_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for each paginated request.
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
    #   For more information, see [Asset hierarchies][3] in the *IoT
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
    #   The maximum number of results to return for each paginated request.
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

    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for each paginated request.
    #   @return [Integer]
    #
    # @!attribute [rw] filter
    #   You can use a filter to select the bulk import jobs that you want to
    #   retrieve.
    #   @return [String]
    #
    class ListBulkImportJobsRequest < Struct.new(
      :next_token,
      :max_results,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_summaries
    #   One or more job summaries to list.
    #   @return [Array<Types::JobSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    class ListBulkImportJobsResponse < Struct.new(
      :job_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_id
    #   The ID of the project.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for each paginated request.
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

    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for each paginated request.
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

    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for each paginated request.
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

    # @!attribute [rw] project_id
    #   The ID of the project.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for each paginated request.
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

    # @!attribute [rw] portal_id
    #   The ID of the portal.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for each paginated request.
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
    #   For more information, see [Tagging your IoT SiteWise resources][1]
    #   in the *IoT SiteWise User Guide*.
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

    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for each paginated request.
    #   @return [Integer]
    #
    # @!attribute [rw] asset_id
    #   The ID of the asset in which the asset property was created.
    #   @return [String]
    #
    # @!attribute [rw] alias_prefix
    #   The alias prefix of the time series.
    #   @return [String]
    #
    # @!attribute [rw] time_series_type
    #   The type of the time series. The time series type can be one of the
    #   following values:
    #
    #   * `ASSOCIATED` – The time series is associated with an asset
    #     property.
    #
    #   * `DISASSOCIATED` – The time series isn't associated with any asset
    #     property.
    #   @return [String]
    #
    class ListTimeSeriesRequest < Struct.new(
      :next_token,
      :max_results,
      :asset_id,
      :alias_prefix,
      :time_series_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] time_series_summaries
    #   One or more time series summaries to list.
    #   @return [Array<Types::TimeSeriesSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    class ListTimeSeriesResponse < Struct.new(
      :time_series_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains logging options.
    #
    # @!attribute [rw] level
    #   The IoT SiteWise logging verbosity level.
    #   @return [String]
    #
    class LoggingOptions < Struct.new(
      :level)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an asset measurement property. For more information, see
    # [Measurements][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html#measurements
    #
    # @!attribute [rw] processing_config
    #   The processing configuration for the given measurement property. You
    #   can configure measurements to be kept at the edge or forwarded to
    #   the Amazon Web Services Cloud. By default, measurements are
    #   forwarded to the cloud.
    #   @return [Types::MeasurementProcessingConfig]
    #
    class Measurement < Struct.new(
      :processing_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The processing configuration for the given measurement property. You
    # can configure measurements to be kept at the edge or forwarded to the
    # Amazon Web Services Cloud. By default, measurements are forwarded to
    # the cloud.
    #
    # @!attribute [rw] forwarding_config
    #   The forwarding configuration for the given measurement property.
    #   @return [Types::ForwardingConfig]
    #
    class MeasurementProcessingConfig < Struct.new(
      :forwarding_config)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # For more information, see [Metrics][1] in the *IoT SiteWise User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html#metrics
    #
    # @!attribute [rw] expression
    #   The mathematical expression that defines the metric aggregation
    #   function. You can specify up to 10 variables per expression. You can
    #   specify up to 10 functions per expression.
    #
    #   For more information, see [Quotas][1] in the *IoT SiteWise User
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
    #   The window (time interval) over which IoT SiteWise computes the
    #   metric's aggregation expression. IoT SiteWise computes one data
    #   point per `window`.
    #   @return [Types::MetricWindow]
    #
    # @!attribute [rw] processing_config
    #   The processing configuration for the given metric property. You can
    #   configure metrics to be computed at the edge or in the Amazon Web
    #   Services Cloud. By default, metrics are forwarded to the cloud.
    #   @return [Types::MetricProcessingConfig]
    #
    class Metric < Struct.new(
      :expression,
      :variables,
      :window,
      :processing_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The processing configuration for the given metric property. You can
    # configure metrics to be computed at the edge or in the Amazon Web
    # Services Cloud. By default, metrics are forwarded to the cloud.
    #
    # @!attribute [rw] compute_location
    #   The compute location for the given metric property.
    #   @return [String]
    #
    class MetricProcessingConfig < Struct.new(
      :compute_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a time interval window used for data aggregate computations
    # (for example, average, sum, count, and so on).
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

    # Contains IoT SiteWise Monitor error details.
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

    # Contains information about the storage destination.
    #
    # @!attribute [rw] customer_managed_s3_storage
    #   Contains information about a customer managed Amazon S3 bucket.
    #   @return [Types::CustomerManagedS3Storage]
    #
    class MultiLayerStorage < Struct.new(
      :customer_managed_s3_storage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies an IoT SiteWise Monitor portal.
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
    #   The URL for the IoT SiteWise Monitor portal. You can use this URL to
    #   access portals that use IAM Identity Center for authentication. For
    #   portals that use IAM for authentication, you must use the IoT
    #   SiteWise console to get a URL that you can use to access the portal.
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
    #   access your IoT SiteWise resources on your behalf. For more
    #   information, see [Using service roles for IoT SiteWise Monitor][2]
    #   in the *IoT SiteWise User Guide*.
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

    # Identifies a specific IoT SiteWise Monitor project.
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
    #   The alias that identifies the property, such as an OPC-UA server
    #   data stream path (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). For more information,
    #   see [Mapping industrial data streams to asset properties][1] in the
    #   *IoT SiteWise User Guide*.
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
    # notification state is enabled, IoT SiteWise publishes property value
    # updates to a unique MQTT topic. For more information, see [Interacting
    # with other services][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/interact-with-other-services.html
    #
    # @!attribute [rw] topic
    #   The MQTT topic to which IoT SiteWise publishes property value update
    #   notifications.
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
    #   The alias that identifies the property, such as an OPC-UA server
    #   data stream path (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). For more information,
    #   see [Mapping industrial data streams to asset properties][1] in the
    #   *IoT SiteWise User Guide*.
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

    # @!attribute [rw] encryption_type
    #   The type of encryption used for the encryption configuration.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The Key ID of the customer managed key used for KMS encryption. This
    #   is required if you use `KMS_BASED_ENCRYPTION`.
    #   @return [String]
    #
    class PutDefaultEncryptionConfigurationRequest < Struct.new(
      :encryption_type,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] encryption_type
    #   The type of encryption used for the encryption configuration.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Key ARN of the KMS key used for KMS encryption if you use
    #   `KMS_BASED_ENCRYPTION`.
    #   @return [String]
    #
    # @!attribute [rw] configuration_status
    #   The status of the account configuration. This contains the
    #   `ConfigurationState`. If there is an error, it also contains the
    #   `ErrorDetails`.
    #   @return [Types::ConfigurationStatus]
    #
    class PutDefaultEncryptionConfigurationResponse < Struct.new(
      :encryption_type,
      :kms_key_arn,
      :configuration_status)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] storage_type
    #   The storage tier that you specified for your data. The `storageType`
    #   parameter can be one of the following values:
    #
    #   * `SITEWISE_DEFAULT_STORAGE` – IoT SiteWise saves your data into the
    #     hot tier. The hot tier is a service-managed database.
    #
    #   * `MULTI_LAYER_STORAGE` – IoT SiteWise saves your data in both the
    #     cold tier and the hot tier. The cold tier is a customer-managed
    #     Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] multi_layer_storage
    #   Identifies a storage destination. If you specified
    #   `MULTI_LAYER_STORAGE` for the storage type, you must specify a
    #   `MultiLayerStorage` object.
    #   @return [Types::MultiLayerStorage]
    #
    # @!attribute [rw] disassociated_data_storage
    #   Contains the storage configuration for time series (data streams)
    #   that aren't associated with asset properties. The
    #   `disassociatedDataStorage` can be one of the following values:
    #
    #   * `ENABLED` – IoT SiteWise accepts time series that aren't
    #     associated with asset properties.
    #
    #     After the `disassociatedDataStorage` is enabled, you can't
    #     disable it.
    #
    #   * `DISABLED` – IoT SiteWise doesn't accept time series (data
    #     streams) that aren't associated with asset properties.
    #
    #   For more information, see [Data streams][1] in the *IoT SiteWise
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/data-streams.html
    #   @return [String]
    #
    # @!attribute [rw] retention_period
    #   How many days your data is kept in the hot tier. By default, your
    #   data is kept indefinitely in the hot tier.
    #   @return [Types::RetentionPeriod]
    #
    class PutStorageConfigurationRequest < Struct.new(
      :storage_type,
      :multi_layer_storage,
      :disassociated_data_storage,
      :retention_period)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] storage_type
    #   The storage tier that you specified for your data. The `storageType`
    #   parameter can be one of the following values:
    #
    #   * `SITEWISE_DEFAULT_STORAGE` – IoT SiteWise saves your data into the
    #     hot tier. The hot tier is a service-managed database.
    #
    #   * `MULTI_LAYER_STORAGE` – IoT SiteWise saves your data in both the
    #     cold tier and the hot tier. The cold tier is a customer-managed
    #     Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] multi_layer_storage
    #   Contains information about the storage destination.
    #   @return [Types::MultiLayerStorage]
    #
    # @!attribute [rw] disassociated_data_storage
    #   Contains the storage configuration for time series (data streams)
    #   that aren't associated with asset properties. The
    #   `disassociatedDataStorage` can be one of the following values:
    #
    #   * `ENABLED` – IoT SiteWise accepts time series that aren't
    #     associated with asset properties.
    #
    #     After the `disassociatedDataStorage` is enabled, you can't
    #     disable it.
    #
    #   * `DISABLED` – IoT SiteWise doesn't accept time series (data
    #     streams) that aren't associated with asset properties.
    #
    #   For more information, see [Data streams][1] in the *IoT SiteWise
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/data-streams.html
    #   @return [String]
    #
    # @!attribute [rw] retention_period
    #   How many days your data is kept in the hot tier. By default, your
    #   data is kept indefinitely in the hot tier.
    #   @return [Types::RetentionPeriod]
    #
    # @!attribute [rw] configuration_status
    #   Contains current status information for the configuration.
    #   @return [Types::ConfigurationStatus]
    #
    class PutStorageConfigurationResponse < Struct.new(
      :storage_type,
      :multi_layer_storage,
      :disassociated_data_storage,
      :retention_period,
      :configuration_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an IoT SiteWise Monitor resource ID for a portal or project.
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

    # How many days your data is kept in the hot tier. By default, your data
    # is kept indefinitely in the hot tier.
    #
    # @!attribute [rw] number_of_days
    #   The number of days that your data is kept.
    #
    #   <note markdown="1"> If you specified a value for this parameter, the `unlimited`
    #   parameter must be `false`.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] unlimited
    #   If true, your data is kept indefinitely.
    #
    #   <note markdown="1"> If configured to `true`, you must not specify a value for the
    #   `numberOfDays` parameter.
    #
    #    </note>
    #   @return [Boolean]
    #
    class RetentionPeriod < Struct.new(
      :number_of_days,
      :unlimited)
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
    #   For more information, see [Tagging your IoT SiteWise resources][1]
    #   in the *IoT SiteWise User Guide*.
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
    # exceeded the number of IoT SiteWise assets that can be created per
    # second, the allowed number of messages per second, and so on.
    #
    # For more information, see [Quotas][1] in the *IoT SiteWise User
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

    # Contains a summary of a time series (data stream).
    #
    # @!attribute [rw] asset_id
    #   The ID of the asset in which the asset property was created.
    #   @return [String]
    #
    # @!attribute [rw] property_id
    #   The ID of the asset property.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The alias that identifies the time series.
    #   @return [String]
    #
    # @!attribute [rw] time_series_id
    #   The ID of the time series.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The data type of the time series.
    #
    #   If you specify `STRUCT`, you must also specify `dataTypeSpec` to
    #   identify the type of the structure for this time series.
    #   @return [String]
    #
    # @!attribute [rw] data_type_spec
    #   The data type of the structure for this time series. This parameter
    #   is required for time series that have the `STRUCT` data type.
    #
    #   The options for this parameter depend on the type of the composite
    #   model in which you created the asset property that is associated
    #   with your time series. Use `AWS/ALARM_STATE` for alarm state in
    #   alarm composite models.
    #   @return [String]
    #
    # @!attribute [rw] time_series_creation_date
    #   The date that the time series was created, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] time_series_last_update_date
    #   The date that the time series was last updated, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] time_series_arn
    #   The [ARN][1] of the time series, which has the following format.
    #
    #   `arn:$\{Partition\}:iotsitewise:$\{Region\}:$\{Account\}:time-series/$\{TimeSeriesId\}`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    class TimeSeriesSummary < Struct.new(
      :asset_id,
      :property_id,
      :alias,
      :time_series_id,
      :data_type,
      :data_type_spec,
      :time_series_creation_date,
      :time_series_last_update_date,
      :time_series_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # You've reached the limit for the number of tags allowed for a
    # resource. For more information, see [Tag naming limits and
    # requirements][1] in the *Amazon Web Services General Reference*.
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
    # For more information, see [Transforms][1] in the *IoT SiteWise User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html#transforms
    #
    # @!attribute [rw] expression
    #   The mathematical expression that defines the transformation
    #   function. You can specify up to 10 variables per expression. You can
    #   specify up to 10 functions per expression.
    #
    #   For more information, see [Quotas][1] in the *IoT SiteWise User
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
    # @!attribute [rw] processing_config
    #   The processing configuration for the given transform property. You
    #   can configure transforms to be kept at the edge or forwarded to the
    #   Amazon Web Services Cloud. You can also configure transforms to be
    #   computed at the edge or in the cloud.
    #   @return [Types::TransformProcessingConfig]
    #
    class Transform < Struct.new(
      :expression,
      :variables,
      :processing_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The processing configuration for the given transform property. You can
    # configure transforms to be kept at the edge or forwarded to the Amazon
    # Web Services Cloud. You can also configure transforms to be computed
    # at the edge or in the cloud.
    #
    # @!attribute [rw] compute_location
    #   The compute location for the given transform property.
    #   @return [String]
    #
    # @!attribute [rw] forwarding_config
    #   The forwarding configuration for a given property.
    #   @return [Types::ForwardingConfig]
    #
    class TransformProcessingConfig < Struct.new(
      :compute_location,
      :forwarding_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a tumbling window, which is a repeating fixed-sized,
    # non-overlapping, and contiguous time window. You can use this window
    # in metrics to aggregate data from properties and other assets.
    #
    # You can use `m`, `h`, `d`, and `w` when you specify an interval or
    # offset. Note that `m` represents minutes, `h` represents hours, `d`
    # represents days, and `w` represents weeks. You can also use `s` to
    # represent seconds in `offset`.
    #
    # The `interval` and `offset` parameters support the [ISO 8601
    # format][1]. For example, `PT5S` represents 5 seconds, `PT5M`
    # represents 5 minutes, and `PT5H` represents 5 hours.
    #
    #
    #
    # [1]: https://en.wikipedia.org/wiki/ISO_8601
    #
    # @!attribute [rw] interval
    #   The time interval for the tumbling window. The interval time must be
    #   between 1 minute and 1 week.
    #
    #   IoT SiteWise computes the `1w` interval the end of Sunday at
    #   midnight each week (UTC), the `1d` interval at the end of each day
    #   at midnight (UTC), the `1h` interval at the end of each hour, and so
    #   on.
    #
    #   When IoT SiteWise aggregates data points for metric computations,
    #   the start of each interval is exclusive and the end of each interval
    #   is inclusive. IoT SiteWise places the computed data point at the end
    #   of the interval.
    #   @return [String]
    #
    # @!attribute [rw] offset
    #   The offset for the tumbling window. The `offset` parameter accepts
    #   the following:
    #
    #   * The offset time.
    #
    #     For example, if you specify `18h` for `offset` and `1d` for
    #     `interval`, IoT SiteWise aggregates data in one of the following
    #     ways:
    #
    #     * If you create the metric before or at 6 PM (UTC), you get the
    #       first aggregation result at 6 PM (UTC) on the day when you
    #       create the metric.
    #
    #     * If you create the metric after 6 PM (UTC), you get the first
    #       aggregation result at 6 PM (UTC) the next day.
    #
    #   * The ISO 8601 format.
    #
    #     For example, if you specify `PT18H` for `offset` and `1d` for
    #     `interval`, IoT SiteWise aggregates data in one of the following
    #     ways:
    #
    #     * If you create the metric before or at 6 PM (UTC), you get the
    #       first aggregation result at 6 PM (UTC) on the day when you
    #       create the metric.
    #
    #     * If you create the metric after 6 PM (UTC), you get the first
    #       aggregation result at 6 PM (UTC) the next day.
    #
    #   * The 24-hour clock.
    #
    #     For example, if you specify `00:03:00` for `offset`, `5m` for
    #     `interval`, and you create the metric at 2 PM (UTC), you get the
    #     first aggregation result at 2:03 PM (UTC). You get the second
    #     aggregation result at 2:08 PM (UTC).
    #
    #   * The offset time zone.
    #
    #     For example, if you specify `2021-07-23T18:00-08` for `offset` and
    #     `1d` for `interval`, IoT SiteWise aggregates data in one of the
    #     following ways:
    #
    #     * If you create the metric before or at 6 PM (PST), you get the
    #       first aggregation result at 6 PM (PST) on the day when you
    #       create the metric.
    #
    #     * If you create the metric after 6 PM (PST), you get the first
    #       aggregation result at 6 PM (PST) the next day.
    #   @return [String]
    #
    class TumblingWindow < Struct.new(
      :interval,
      :offset)
      SENSITIVE = []
      include Aws::Structure
    end

    # You are not authorized.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class UnauthorizedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] access_policy_id
    #   The ID of the access policy.
    #   @return [String]
    #
    # @!attribute [rw] access_policy_identity
    #   The identity for this access policy. Choose an IAM Identity Center
    #   user, an IAM Identity Center group, or an IAM user.
    #   @return [Types::Identity]
    #
    # @!attribute [rw] access_policy_resource
    #   The IoT SiteWise Monitor resource for this access policy. Choose
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
    #   information, see [Asset properties][1] in the *IoT SiteWise User
    #   Guide*.
    #
    #   You can specify up to 200 properties per asset model. For more
    #   information, see [Quotas][2] in the *IoT SiteWise User Guide*.
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
    #   [Asset hierarchies][1] in the *IoT SiteWise User Guide*.
    #
    #   You can specify up to 10 hierarchies per asset model. For more
    #   information, see [Quotas][2] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html
    #   @return [Array<Types::AssetModelHierarchy>]
    #
    # @!attribute [rw] asset_model_composite_models
    #   The composite asset models that are part of this asset model.
    #   Composite asset models are asset models that contain specific
    #   properties. Each composite model has a type that defines the
    #   properties that the composite model supports. Use composite asset
    #   models to define alarms on this asset model.
    #   @return [Array<Types::AssetModelCompositeModel>]
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
      :asset_model_composite_models,
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

    # @!attribute [rw] asset_id
    #   The ID of the asset to be updated.
    #   @return [String]
    #
    # @!attribute [rw] property_id
    #   The ID of the asset property to be updated.
    #   @return [String]
    #
    # @!attribute [rw] property_alias
    #   The alias that identifies the property, such as an OPC-UA server
    #   data stream path (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). For more information,
    #   see [Mapping industrial data streams to asset properties][1] in the
    #   *IoT SiteWise User Guide*.
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
    #   property. When the notification state is enabled, IoT SiteWise
    #   publishes property value updates to a unique MQTT topic. For more
    #   information, see [Interacting with other services][1] in the *IoT
    #   SiteWise User Guide*.
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
    # @!attribute [rw] property_unit
    #   The unit of measure (such as Newtons or RPM) of the asset property.
    #   If you don't specify a value for this parameter, the service uses
    #   the value of the `assetModelProperty` in the asset model.
    #   @return [String]
    #
    class UpdateAssetPropertyRequest < Struct.new(
      :asset_id,
      :property_id,
      :property_alias,
      :property_notification_state,
      :client_token,
      :property_unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_id
    #   The ID of the asset to update.
    #   @return [String]
    #
    # @!attribute [rw] asset_name
    #   A friendly name for the asset.
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
    # @!attribute [rw] asset_description
    #   A description for the asset.
    #   @return [String]
    #
    class UpdateAssetRequest < Struct.new(
      :asset_id,
      :asset_name,
      :client_token,
      :asset_description)
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
    #   detailed information, see [Creating dashboards (CLI)][1] in the *IoT
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

    # @!attribute [rw] gateway_id
    #   The ID of the gateway to be updated.
    #   @return [String]
    #
    # @!attribute [rw] capability_namespace
    #   The namespace of the gateway capability configuration to be updated.
    #   For example, if you configure OPC-UA sources from the IoT SiteWise
    #   console, your OPC-UA capability configuration has the namespace
    #   `iotsitewise:opcuacollector:version`, where `version` is a number
    #   such as `1`.
    #   @return [String]
    #
    # @!attribute [rw] capability_configuration
    #   The JSON document that defines the configuration for the gateway
    #   capability. For more information, see [Configuring data sources
    #   (CLI)][1] in the *IoT SiteWise User Guide*.
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
    #   The Amazon Web Services administrator's contact email address.
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
    #   access your IoT SiteWise resources on your behalf. For more
    #   information, see [Using service roles for IoT SiteWise Monitor][2]
    #   in the *IoT SiteWise User Guide*.
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
    # @!attribute [rw] notification_sender_email
    #   The email address that sends alarm notifications.
    #   @return [String]
    #
    # @!attribute [rw] alarms
    #   Contains the configuration information of an alarm created in an IoT
    #   SiteWise Monitor portal. You can use the alarm to monitor an asset
    #   property and get notified when the asset property value is outside a
    #   specified range. For more information, see [Monitoring with
    #   alarms][1] in the *IoT SiteWise Application Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/appguide/monitor-alarms.html
    #   @return [Types::Alarms]
    #
    class UpdatePortalRequest < Struct.new(
      :portal_id,
      :portal_name,
      :portal_description,
      :portal_contact_email,
      :portal_logo_image,
      :role_arn,
      :client_token,
      :notification_sender_email,
      :alarms)
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
    # @!attribute [rw] id
    #   The IAM Identity Center ID of the user.
    #   @return [String]
    #
    class UserIdentity < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies a property value used in an expression.
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
    #   [Asset hierarchies][1] in the *IoT SiteWise User Guide*.
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
