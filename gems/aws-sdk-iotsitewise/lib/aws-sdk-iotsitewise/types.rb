# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTSiteWise
  module Types

    # Access is denied.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class AccessDeniedException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # Contains a definition for an action.
    #
    # @!attribute [rw] action_definition_id
    #   The ID of the action definition.
    #   @return [String]
    #
    # @!attribute [rw] action_name
    #   The name of the action definition.
    #   @return [String]
    #
    # @!attribute [rw] action_type
    #   The type of the action definition.
    #   @return [String]
    #
    class ActionDefinition < Struct.new(
      :action_definition_id,
      :action_name,
      :action_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The JSON payload of the action.
    #
    # @!attribute [rw] string_value
    #   The payload of the action in a JSON string.
    #   @return [String]
    #
    class ActionPayload < Struct.new(
      :string_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the summary of the actions.
    #
    # @!attribute [rw] action_id
    #   The ID of the action.
    #   @return [String]
    #
    # @!attribute [rw] action_definition_id
    #   The ID of the action definition.
    #   @return [String]
    #
    # @!attribute [rw] target_resource
    #   The resource the action will be taken on.
    #   @return [Types::TargetResource]
    #
    class ActionSummary < Struct.new(
      :action_id,
      :action_definition_id,
      :target_resource)
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
    # @!attribute [rw] external_id
    #   The external ID of the asset composite model. For more information,
    #   see [Using external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids
    #   @return [String]
    #
    class AssetCompositeModel < Struct.new(
      :name,
      :description,
      :type,
      :properties,
      :id,
      :external_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents one level between a composite model and the root of the
    # asset.
    #
    # @!attribute [rw] id
    #   The ID of the path segment.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the path segment.
    #   @return [String]
    #
    class AssetCompositeModelPathSegment < Struct.new(
      :id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a summary of the composite model for a specific asset.
    #
    # @!attribute [rw] id
    #   The ID of the composite model that this summary describes.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   An external ID to assign to the asset model.
    #
    #   If the composite model is a derived composite model, or one nested
    #   inside a component model, you can only set the external ID using
    #   `UpdateAssetModelCompositeModel` and specifying the derived ID of
    #   the model or property from the created model it's a part of.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the composite model that this summary describes.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of asset model.
    #
    #   * **ASSET\_MODEL** – (default) An asset model that you can use to
    #     create assets. Can't be included as a component in another asset
    #     model.
    #
    #   * **COMPONENT\_MODEL** – A reusable component that you can include
    #     in the composite models of other asset models. You can't create
    #     assets directly from this type of asset model.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the composite model that this summary describes.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path that includes all the components of the asset model for the
    #   asset.
    #   @return [Array<Types::AssetCompositeModelPathSegment>]
    #
    class AssetCompositeModelSummary < Struct.new(
      :id,
      :external_id,
      :name,
      :type,
      :description,
      :path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains error details for the requested associate project asset
    # action.
    #
    # @!attribute [rw] asset_id
    #   The ID of the asset, in UUID format.
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
    # @!attribute [rw] external_id
    #   The external ID of the hierarchy, if it has one. When you update an
    #   asset hierarchy, you may assign an external ID if it doesn't
    #   already have one. You can't change the external ID of an asset
    #   hierarchy that already has one. For more information, see [Using
    #   external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids
    #   @return [String]
    #
    class AssetHierarchy < Struct.new(
      :id,
      :name,
      :external_id)
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
    # @!attribute [rw] external_id
    #   The external ID of the asset model composite model. For more
    #   information, see [Using external IDs][1] in the *IoT SiteWise User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids
    #   @return [String]
    #
    class AssetModelCompositeModel < Struct.new(
      :name,
      :description,
      :type,
      :properties,
      :id,
      :external_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a composite model definition in an asset model. This
    # composite model definition is applied to all assets created from the
    # asset model.
    #
    # @!attribute [rw] id
    #   The ID to assign to the composite model, if desired. IoT SiteWise
    #   automatically generates a unique ID for you, so this parameter is
    #   never required. However, if you prefer to supply your own ID
    #   instead, you can specify it here in UUID format. If you specify your
    #   own ID, it must be globally unique.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   An external ID to assign to the composite model. The external ID
    #   must be unique among composite models within this asset model. For
    #   more information, see [Using external IDs][1] in the *IoT SiteWise
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids
    #   @return [String]
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
      :id,
      :external_id,
      :name,
      :description,
      :type,
      :properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents one level between a composite model and the root of the
    # asset model.
    #
    # @!attribute [rw] id
    #   The ID of the path segment.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the path segment.
    #   @return [String]
    #
    class AssetModelCompositeModelPathSegment < Struct.new(
      :id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a summary of the composite model.
    #
    # @!attribute [rw] id
    #   The ID of the composite model that this summary describes..
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The external ID of a composite model on this asset model. For more
    #   information, see [Using external IDs][1] in the *IoT SiteWise User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the composite model that this summary describes..
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The composite model type. Valid values are `AWS/ALARM`, `CUSTOM`, or
    #   ` AWS/L4E_ANOMALY`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the composite model that this summary describes..
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path that includes all the pieces that make up the composite
    #   model.
    #   @return [Array<Types::AssetModelCompositeModelPathSegment>]
    #
    class AssetModelCompositeModelSummary < Struct.new(
      :id,
      :external_id,
      :name,
      :type,
      :description,
      :path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an asset hierarchy that contains a hierarchy's name, ID,
    # and child asset model ID that specifies the type of asset that can be
    # in this hierarchy.
    #
    # @!attribute [rw] id
    #   The ID of the asset model hierarchy. This ID is a `hierarchyId`.
    #
    #   * If you are callling [UpdateAssetModel][1] to create a *new*
    #     hierarchy: You can specify its ID here, if desired. IoT SiteWise
    #     automatically generates a unique ID for you, so this parameter is
    #     never required. However, if you prefer to supply your own ID
    #     instead, you can specify it here in UUID format. If you specify
    #     your own ID, it must be globally unique.
    #
    #   * If you are calling UpdateAssetModel to modify an *existing*
    #     hierarchy: This can be either the actual ID in UUID format, or
    #     else `externalId:` followed by the external ID, if it has one. For
    #     more information, see [Referencing objects with external IDs][2]
    #     in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The external ID (if any) provided in the [CreateAssetModel][1] or
    #   [UpdateAssetModel][2] operation. You can assign an external ID by
    #   specifying this value as part of a call to [UpdateAssetModel][2].
    #   However, you can't change the external ID if one is already
    #   assigned. For more information, see [Using external IDs][3] in the
    #   *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModel.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html
    #   [3]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids
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
    #   The ID of the asset model, in UUID format. All assets in this
    #   hierarchy must be instances of the `childAssetModelId` asset model.
    #   IoT SiteWise will always return the actual asset model ID for this
    #   value. However, when you are specifying this value as part of a call
    #   to [UpdateAssetModel][1], you may provide either the asset model ID
    #   or else `externalId:` followed by the asset model's external ID.
    #   For more information, see [Using external IDs][2] in the *IoT
    #   SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids
    #   @return [String]
    #
    class AssetModelHierarchy < Struct.new(
      :id,
      :external_id,
      :name,
      :child_asset_model_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an asset model hierarchy used in asset model creation. An
    # asset model hierarchy determines the kind (or type) of asset that can
    # belong to a hierarchy.
    #
    # @!attribute [rw] id
    #   The ID to assign to the asset model hierarchy, if desired. IoT
    #   SiteWise automatically generates a unique ID for you, so this
    #   parameter is never required. However, if you prefer to supply your
    #   own ID instead, you can specify it here in UUID format. If you
    #   specify your own ID, it must be globally unique.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   An external ID to assign to the asset model hierarchy. The external
    #   ID must be unique among asset model hierarchies within this asset
    #   model. For more information, see [Using external IDs][1] in the *IoT
    #   SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids
    #   @return [String]
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
    #   The ID of an asset model for this hierarchy. This can be either the
    #   actual ID in UUID format, or else `externalId:` followed by the
    #   external ID, if it has one. For more information, see [Referencing
    #   objects with external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #   @return [String]
    #
    class AssetModelHierarchyDefinition < Struct.new(
      :id,
      :external_id,
      :name,
      :child_asset_model_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an asset model property.
    #
    # @!attribute [rw] id
    #   The ID of the asset model property.
    #
    #   * If you are callling [UpdateAssetModel][1] to create a *new*
    #     property: You can specify its ID here, if desired. IoT SiteWise
    #     automatically generates a unique ID for you, so this parameter is
    #     never required. However, if you prefer to supply your own ID
    #     instead, you can specify it here in UUID format. If you specify
    #     your own ID, it must be globally unique.
    #
    #   * If you are calling UpdateAssetModel to modify an *existing*
    #     property: This can be either the actual ID in UUID format, or else
    #     `externalId:` followed by the external ID, if it has one. For more
    #     information, see [Referencing objects with external IDs][2] in the
    #     *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The external ID (if any) provided in the [CreateAssetModel][1] or
    #   [UpdateAssetModel][2] operation. You can assign an external ID by
    #   specifying this value as part of a call to [UpdateAssetModel][2].
    #   However, you can't change the external ID if one is already
    #   assigned. For more information, see [Using external IDs][3] in the
    #   *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModel.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html
    #   [3]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the asset model property.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The data type of the asset model property.
    #
    #   If you specify `STRUCT`, you must also specify `dataTypeSpec` to
    #   identify the type of the structure for this property.
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
    # @!attribute [rw] path
    #   The structured path to the property from the root of the asset
    #   model.
    #   @return [Array<Types::AssetModelPropertyPathSegment>]
    #
    class AssetModelProperty < Struct.new(
      :id,
      :external_id,
      :name,
      :data_type,
      :data_type_spec,
      :unit,
      :type,
      :path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an asset model property definition. This property definition
    # is applied to all assets created from the asset model.
    #
    # @!attribute [rw] id
    #   The ID to assign to the asset model property, if desired. IoT
    #   SiteWise automatically generates a unique ID for you, so this
    #   parameter is never required. However, if you prefer to supply your
    #   own ID instead, you can specify it here in UUID format. If you
    #   specify your own ID, it must be globally unique.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   An external ID to assign to the property definition. The external ID
    #   must be unique among property definitions within this asset model.
    #   For more information, see [Using external IDs][1] in the *IoT
    #   SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids
    #   @return [String]
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
      :id,
      :external_id,
      :name,
      :data_type,
      :data_type_spec,
      :unit,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents one level between a property and the root of the asset
    # model.
    #
    # @!attribute [rw] id
    #   The ID of the path segment.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the path segment.
    #   @return [String]
    #
    class AssetModelPropertyPathSegment < Struct.new(
      :id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a summary of a property associated with a model.
    #
    # @!attribute [rw] id
    #   The ID of the property.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The external ID of the property. For more information, see [Using
    #   external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids
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
    # @!attribute [rw] path
    #   The structured path to the property from the root of the asset
    #   model.
    #   @return [Array<Types::AssetModelPropertyPathSegment>]
    #
    class AssetModelPropertySummary < Struct.new(
      :id,
      :external_id,
      :name,
      :data_type,
      :data_type_spec,
      :unit,
      :type,
      :asset_model_composite_model_id,
      :path)
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
    #   The ID of the asset model (used with IoT SiteWise API operations).
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The external ID of the asset model. For more information, see [Using
    #   external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The [ARN][1] of the asset model, which has the following format.
    #
    #   `arn:${Partition}:iotsitewise:${Region}:${Account}:asset-model/${AssetModelId}`
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
    # @!attribute [rw] asset_model_type
    #   The type of asset model.
    #
    #   * **ASSET\_MODEL** – (default) An asset model that you can use to
    #     create assets. Can't be included as a component in another asset
    #     model.
    #
    #   * **COMPONENT\_MODEL** – A reusable component that you can include
    #     in the composite models of other asset models. You can't create
    #     assets directly from this type of asset model.
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
    # @!attribute [rw] version
    #   The version number of the asset model.
    #   @return [String]
    #
    class AssetModelSummary < Struct.new(
      :id,
      :external_id,
      :arn,
      :name,
      :asset_model_type,
      :description,
      :creation_date,
      :last_update_date,
      :status,
      :version)
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
    # @!attribute [rw] path
    #   The structured path to the property from the root of the asset.
    #   @return [Array<Types::AssetPropertyPathSegment>]
    #
    # @!attribute [rw] external_id
    #   The external ID of the asset property. For more information, see
    #   [Using external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids
    #   @return [String]
    #
    class AssetProperty < Struct.new(
      :id,
      :name,
      :alias,
      :notification,
      :data_type,
      :data_type_spec,
      :unit,
      :path,
      :external_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents one level between a property and the root of the asset.
    #
    # @!attribute [rw] id
    #   The ID of the path segment.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the path segment.
    #   @return [String]
    #
    class AssetPropertyPathSegment < Struct.new(
      :id,
      :name)
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
    # @!attribute [rw] path
    #   The structured path to the property from the root of the asset.
    #   @return [Array<Types::AssetPropertyPathSegment>]
    #
    # @!attribute [rw] external_id
    #   The external ID of the property. For more information, see [Using
    #   external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids
    #   @return [String]
    #
    class AssetPropertySummary < Struct.new(
      :id,
      :alias,
      :unit,
      :notification,
      :asset_composite_model_id,
      :path,
      :external_id)
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
    #   The ID of the asset, in UUID format.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The [ARN][1] of the asset, which has the following format.
    #
    #   `arn:${Partition}:iotsitewise:${Region}:${Account}:asset/${AssetId}`
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
    # @!attribute [rw] external_id
    #   The external ID of the asset. For more information, see [Using
    #   external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids
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
      :description,
      :external_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_id
    #   The ID of the parent asset. This can be either the actual ID in UUID
    #   format, or else `externalId:` followed by the external ID, if it has
    #   one. For more information, see [Referencing objects with external
    #   IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #   @return [String]
    #
    # @!attribute [rw] hierarchy_id
    #   The ID of a hierarchy in the parent asset's model. (This can be
    #   either the actual ID in UUID format, or else `externalId:` followed
    #   by the external ID, if it has one. For more information, see
    #   [Referencing objects with external IDs][1] in the *IoT SiteWise User
    #   Guide*.) Hierarchies allow different groupings of assets to be
    #   formed that all come from the same asset model. For more
    #   information, see [Asset hierarchies][2] in the *IoT SiteWise User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html
    #   @return [String]
    #
    # @!attribute [rw] child_asset_id
    #   The ID of the child asset to be associated. This can be either the
    #   actual ID in UUID format, or else `externalId:` followed by the
    #   external ID, if it has one. For more information, see [Referencing
    #   objects with external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
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
    #   The ID of the asset in which the asset property was created. This
    #   can be either the actual ID in UUID format, or else `externalId:`
    #   followed by the external ID, if it has one. For more information,
    #   see [Referencing objects with external IDs][1] in the *IoT SiteWise
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #   @return [String]
    #
    # @!attribute [rw] property_id
    #   The ID of the asset property. This can be either the actual ID in
    #   UUID format, or else `externalId:` followed by the external ID, if
    #   it has one. For more information, see [Referencing objects with
    #   external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
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
    #   The ID of the asset, in UUID format.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The [ARN][1] of the asset, which has the following format.
    #
    #   `arn:${Partition}:iotsitewise:${Region}:${Account}:asset/${AssetId}`
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
    # @!attribute [rw] external_id
    #   The external ID of the asset. For more information, see [Using
    #   external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids
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
      :description,
      :external_id)
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
    #   The ID of the asset property, in UUID format.
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
    #   The ID of the asset property, in UUID format.
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
    #   The ID of the asset property, in UUID format.
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

    # @!attribute [rw] enable_partial_entry_processing
    #   This setting enables partial ingestion at entry-level. If set to
    #   `true`, we ingest all TQVs not resulting in an error. If set to
    #   `false`, an invalid TQV fails ingestion of the entire entry that
    #   contains it.
    #   @return [Boolean]
    #
    # @!attribute [rw] entries
    #   The list of asset property value entries for the batch put request.
    #   You can specify up to 10 entries per request.
    #   @return [Array<Types::PutAssetPropertyValueEntry>]
    #
    class BatchPutAssetPropertyValueRequest < Struct.new(
      :enable_partial_entry_processing,
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

    # Contains text content to which the SiteWise Assistant refers to, and
    # generate the final response. It also contains information about the
    # source.
    #
    # @!attribute [rw] reference
    #   Contains information about the data source.
    #   @return [Types::Reference]
    #
    # @!attribute [rw] content
    #   Contains the cited text from the data source.
    #   @return [Types::Content]
    #
    class Citation < Struct.new(
      :reference,
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

    # A description of the column in the query results.
    #
    # @!attribute [rw] name
    #   The name of the column description.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the column description.
    #   @return [Types::ColumnType]
    #
    class ColumnInfo < Struct.new(
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data type of the column.
    #
    # @!attribute [rw] scalar_type
    #   The allowed data types that the column has as it's value.
    #   @return [String]
    #
    class ColumnType < Struct.new(
      :scalar_type)
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
    # @!attribute [rw] external_id
    #   The external ID of the composite model that contains the property.
    #   For more information, see [Using external IDs][1] in the *IoT
    #   SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids
    #   @return [String]
    #
    class CompositeModelProperty < Struct.new(
      :name,
      :type,
      :asset_property,
      :id,
      :external_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for the composition relationship established by using
    # `composedAssetModelId` in [ `CreateAssetModelCompositeModel` ][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModelCompositeModel.html
    #
    # @!attribute [rw] composition_relationship
    #   An array detailing the composition relationship for this composite
    #   model.
    #   @return [Array<Types::CompositionRelationshipItem>]
    #
    class CompositionDetails < Struct.new(
      :composition_relationship)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a composite model that composed an asset model of type
    # `COMPONENT_MODEL`.
    #
    # @!attribute [rw] id
    #   The ID of the component.
    #   @return [String]
    #
    class CompositionRelationshipItem < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a summary of the components of the composite model.
    #
    # @!attribute [rw] asset_model_id
    #   The ID of the asset model, in UUID format.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_composite_model_id
    #   The ID of a composite model on this asset model.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_composite_model_type
    #   The composite model type. Valid values are `AWS/ALARM`, `CUSTOM`, or
    #   ` AWS/L4E_ANOMALY`.
    #   @return [String]
    #
    class CompositionRelationshipSummary < Struct.new(
      :asset_model_id,
      :asset_model_composite_model_id,
      :asset_model_composite_model_type)
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
      :resource_arn,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the cited text from the data source.
    #
    # @!attribute [rw] text
    #   The cited text from the data source.
    #   @return [String]
    #
    class Content < Struct.new(
      :text)
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
    #   `arn:${Partition}:iotsitewise:${Region}:${Account}:access-policy/${AccessPolicyId}`
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

    # @!attribute [rw] asset_model_id
    #   The ID of the asset model this composite model is a part of.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_composite_model_external_id
    #   An external ID to assign to the composite model.
    #
    #   If the composite model is a derived composite model, or one nested
    #   inside a component model, you can only set the external ID using
    #   `UpdateAssetModelCompositeModel` and specifying the derived ID of
    #   the model or property from the created model it's a part of.
    #   @return [String]
    #
    # @!attribute [rw] parent_asset_model_composite_model_id
    #   The ID of the parent composite model in this asset model
    #   relationship.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_composite_model_id
    #   The ID of the composite model. IoT SiteWise automatically generates
    #   a unique ID for you, so this parameter is never required. However,
    #   if you prefer to supply your own ID instead, you can specify it here
    #   in UUID format. If you specify your own ID, it must be globally
    #   unique.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_composite_model_description
    #   A description for the composite model.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_composite_model_name
    #   A unique name for the composite model.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_composite_model_type
    #   The composite model type. Valid values are `AWS/ALARM`, `CUSTOM`, or
    #   ` AWS/L4E_ANOMALY`.
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
    # @!attribute [rw] composed_asset_model_id
    #   The ID of a component model which is reused to create this composite
    #   model.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_composite_model_properties
    #   The property definitions of the composite model. For more
    #   information, see [ Inline custom composite models][1] in the *IoT
    #   SiteWise User Guide*.
    #
    #   You can specify up to 200 properties per composite model. For more
    #   information, see [Quotas][2] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/custom-composite-models.html#inline-composite-models
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html
    #   @return [Array<Types::AssetModelPropertyDefinition>]
    #
    # @!attribute [rw] if_match
    #   The expected current entity tag (ETag) for the asset model’s latest
    #   or active version (specified using `matchForVersionType`). The
    #   create request is rejected if the tag does not match the latest or
    #   active version's current entity tag. See [Optimistic locking for
    #   asset model writes][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/opt-locking-for-model.html
    #   @return [String]
    #
    # @!attribute [rw] if_none_match
    #   Accepts ***** to reject the create request if an active version
    #   (specified using `matchForVersionType` as `ACTIVE`) already exists
    #   for the asset model.
    #   @return [String]
    #
    # @!attribute [rw] match_for_version_type
    #   Specifies the asset model version type (`LATEST` or `ACTIVE`) used
    #   in conjunction with `If-Match` or `If-None-Match` headers to
    #   determine the target ETag for the create operation.
    #   @return [String]
    #
    class CreateAssetModelCompositeModelRequest < Struct.new(
      :asset_model_id,
      :asset_model_composite_model_external_id,
      :parent_asset_model_composite_model_id,
      :asset_model_composite_model_id,
      :asset_model_composite_model_description,
      :asset_model_composite_model_name,
      :asset_model_composite_model_type,
      :client_token,
      :composed_asset_model_id,
      :asset_model_composite_model_properties,
      :if_match,
      :if_none_match,
      :match_for_version_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_model_composite_model_id
    #   The ID of the composed asset model. You can use this ID when you
    #   call other IoT SiteWise APIs.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_composite_model_path
    #   The path to the composite model listing the parent composite models.
    #   @return [Array<Types::AssetModelCompositeModelPathSegment>]
    #
    # @!attribute [rw] asset_model_status
    #   Contains current status information for an asset model. For more
    #   information, see [Asset and model states][1] in the *IoT SiteWise
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-and-model-states.html
    #   @return [Types::AssetModelStatus]
    #
    class CreateAssetModelCompositeModelResponse < Struct.new(
      :asset_model_composite_model_id,
      :asset_model_composite_model_path,
      :asset_model_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_model_name
    #   A unique name for the asset model.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_type
    #   The type of asset model.
    #
    #   * **ASSET\_MODEL** – (default) An asset model that you can use to
    #     create assets. Can't be included as a component in another asset
    #     model.
    #
    #   * **COMPONENT\_MODEL** – A reusable component that you can include
    #     in the composite models of other asset models. You can't create
    #     assets directly from this type of asset model.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_id
    #   The ID to assign to the asset model, if desired. IoT SiteWise
    #   automatically generates a unique ID for you, so this parameter is
    #   never required. However, if you prefer to supply your own ID
    #   instead, you can specify it here in UUID format. If you specify your
    #   own ID, it must be globally unique.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_external_id
    #   An external ID to assign to the asset model. The external ID must be
    #   unique within your Amazon Web Services account. For more
    #   information, see [Using external IDs][1] in the *IoT SiteWise User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids
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
    #   The composite models that are part of this asset model. It groups
    #   properties (such as attributes, measurements, transforms, and
    #   metrics) and child composite models that model parts of your
    #   industrial equipment. Each composite model has a type that defines
    #   the properties that the composite model supports. Use composite
    #   models to define alarms on this asset model.
    #
    #   <note markdown="1"> When creating custom composite models, you need to use
    #   [CreateAssetModelCompositeModel][1]. For more information, see
    #   [Creating custom composite models (Components)][2] in the *IoT
    #   SiteWise User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModelCompositeModel.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-custom-composite-models.html
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
      :asset_model_type,
      :asset_model_id,
      :asset_model_external_id,
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
    #   The ID of the asset model, in UUID format. You can use this ID when
    #   you call other IoT SiteWise API operations.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_arn
    #   The [ARN][1] of the asset model, which has the following format.
    #
    #   `arn:${Partition}:iotsitewise:${Region}:${Account}:asset-model/${AssetModelId}`
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
    #   The ID of the asset model from which to create the asset. This can
    #   be either the actual ID in UUID format, or else `externalId:`
    #   followed by the external ID, if it has one. For more information,
    #   see [Referencing objects with external IDs][1] in the *IoT SiteWise
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
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
    # @!attribute [rw] asset_id
    #   The ID to assign to the asset, if desired. IoT SiteWise
    #   automatically generates a unique ID for you, so this parameter is
    #   never required. However, if you prefer to supply your own ID
    #   instead, you can specify it here in UUID format. If you specify your
    #   own ID, it must be globally unique.
    #   @return [String]
    #
    # @!attribute [rw] asset_external_id
    #   An external ID to assign to the asset. The external ID must be
    #   unique within your Amazon Web Services account. For more
    #   information, see [Using external IDs][1] in the *IoT SiteWise User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids
    #   @return [String]
    #
    class CreateAssetRequest < Struct.new(
      :asset_name,
      :asset_model_id,
      :client_token,
      :tags,
      :asset_description,
      :asset_id,
      :asset_external_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_id
    #   The ID of the asset, in UUID format. This ID uniquely identifies the
    #   asset within IoT SiteWise and can be used with other IoT SiteWise
    #   API operations.
    #   @return [String]
    #
    # @!attribute [rw] asset_arn
    #   The [ARN][1] of the asset, which has the following format.
    #
    #   `arn:${Partition}:iotsitewise:${Region}:${Account}:asset/${AssetId}`
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
    # @!attribute [rw] adaptive_ingestion
    #   If set to true, ingest new data into IoT SiteWise storage.
    #   Measurements with notifications, metrics and transforms are
    #   computed. If set to false, historical data is ingested into IoT
    #   SiteWise as is.
    #   @return [Boolean]
    #
    # @!attribute [rw] delete_files_after_import
    #   If set to true, your data files is deleted from S3, after ingestion
    #   into IoT SiteWise storage.
    #   @return [Boolean]
    #
    class CreateBulkImportJobRequest < Struct.new(
      :job_name,
      :job_role_arn,
      :files,
      :error_report_location,
      :job_configuration,
      :adaptive_ingestion,
      :delete_files_after_import)
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
    #   The status of the bulk import job can be one of following values:
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
    #   The dashboard definition specified in a JSON literal.
    #
    #   * IoT SiteWise Monitor (Classic) see [Create dashboards (CLI)][1]
    #
    #   * IoT SiteWise Monitor (AI-aware) see [Create dashboards (CLI)][2]
    #
    #   in the *IoT SiteWise User Guide*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-ai-dashboard-cli.html
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
    #   `arn:${Partition}:iotsitewise:${Region}:${Account}:dashboard/${DashboardId}`
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

    # @!attribute [rw] dataset_id
    #   The ID of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_name
    #   The name of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_description
    #   A description about the dataset, and its functionality.
    #   @return [String]
    #
    # @!attribute [rw] dataset_source
    #   The data source for the dataset.
    #   @return [Types::DatasetSource]
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
    class CreateDatasetRequest < Struct.new(
      :dataset_id,
      :dataset_name,
      :dataset_description,
      :dataset_source,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_id
    #   The ID of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   The [ARN][1] of the dataset. The format is
    #   `arn:${Partition}:iotsitewise:${Region}:${Account}:dataset/${DatasetId}`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html
    #   @return [String]
    #
    # @!attribute [rw] dataset_status
    #   The status of the dataset. This contains the state and any error
    #   messages. State is `CREATING` after a successfull call to this API,
    #   and any associated error message. The state is `ACTIVE` when ready
    #   to use.
    #   @return [Types::DatasetStatus]
    #
    class CreateDatasetResponse < Struct.new(
      :dataset_id,
      :dataset_arn,
      :dataset_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_name
    #   A unique name for the gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_platform
    #   The gateway's platform. You can only specify one platform in a
    #   gateway.
    #   @return [Types::GatewayPlatform]
    #
    # @!attribute [rw] gateway_version
    #   The version of the gateway to create. Specify `3` to create an
    #   MQTT-enabled, V3 gateway and `2` To create a Classic streams, V2
    #   gateway. If the version isn't specified, a Classic streams, V2
    #   gateway is created by default.
    #
    #   We recommend creating an MQTT-enabled, V3 gateway for self-hosted
    #   gateways. SiteWise Edge gateways on Siemens Industrial Edge should
    #   use gateway version `2`. For more information on gateway versions,
    #   see [ Self-host a SiteWise Edge gateway with IoT Greengrass V2][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/gw-self-host-gg2.html
    #   @return [String]
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
      :gateway_version,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_id
    #   The ID of the gateway device. You can use this ID when you call
    #   other IoT SiteWise API operations.
    #   @return [String]
    #
    # @!attribute [rw] gateway_arn
    #   The [ARN][1] of the gateway, which has the following format.
    #
    #   `arn:${Partition}:iotsitewise:${Region}:${Account}:gateway/${GatewayId}`
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
    #   * `SSO` – The portal uses IAM Identity Center to authenticate users
    #     and manage user permissions. Before you can create a portal that
    #     uses IAM Identity Center, you must enable IAM Identity Center. For
    #     more information, see [Enabling IAM Identity Center][1] in the
    #     *IoT SiteWise User Guide*. This option is only available in Amazon
    #     Web Services Regions other than the China Regions.
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
    # @!attribute [rw] portal_type
    #   Define the type of portal. The value for IoT SiteWise Monitor
    #   (Classic) is `SITEWISE_PORTAL_V1`. The value for IoT SiteWise
    #   Monitor (AI-aware) is `SITEWISE_PORTAL_V2`.
    #   @return [String]
    #
    # @!attribute [rw] portal_type_configuration
    #   The configuration entry associated with the specific portal type.
    #   The value for IoT SiteWise Monitor (Classic) is
    #   `SITEWISE_PORTAL_V1`. The value for IoT SiteWise Monitor (AI-aware)
    #   is `SITEWISE_PORTAL_V2`.
    #   @return [Hash<String,Types::PortalTypeEntry>]
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
      :alarms,
      :portal_type,
      :portal_type_configuration)
      SENSITIVE = [:portal_contact_email, :notification_sender_email]
      include Aws::Structure
    end

    # @!attribute [rw] portal_id
    #   The ID of the created portal.
    #   @return [String]
    #
    # @!attribute [rw] portal_arn
    #   The [ARN][1] of the portal, which has the following format.
    #
    #   `arn:${Partition}:iotsitewise:${Region}:${Account}:portal/${PortalId}`
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
    #   `arn:${Partition}:iotsitewise:${Region}:${Account}:project/${ProjectId}`
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

    # A .CSV file.
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

    # Contains information about the dataset use and it's source.
    #
    # @!attribute [rw] dataset_arn
    #   The [ARN][1] of the dataset. The format is
    #   `arn:${Partition}:iotsitewise:${Region}:${Account}:dataset/${DatasetId}`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The data source for the dataset.
    #   @return [Types::Source]
    #
    class DataSetReference < Struct.new(
      :dataset_arn,
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data source for the dataset.
    #
    # @!attribute [rw] source_type
    #   The type of data source for the dataset.
    #   @return [String]
    #
    # @!attribute [rw] source_format
    #   The format of the dataset source associated with the dataset.
    #   @return [String]
    #
    # @!attribute [rw] source_detail
    #   The details of the dataset source associated with the dataset.
    #   @return [Types::SourceDetail]
    #
    class DatasetSource < Struct.new(
      :source_type,
      :source_format,
      :source_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of the dataset. This contains the state and any error
    # messages. The state is `ACTIVE` when ready to use.
    #
    # @!attribute [rw] state
    #   The current status of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   Contains the details of an IoT SiteWise error.
    #   @return [Types::ErrorDetails]
    #
    class DatasetStatus < Struct.new(
      :state,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary details for the dataset.
    #
    # @!attribute [rw] id
    #   The ID of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The [ARN][1] of the dataset. The format is
    #   `arn:${Partition}:iotsitewise:${Region}:${Account}:dataset/${DatasetId}`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description about the dataset, and its functionality.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The dataset creation date, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_date
    #   The date the dataset was last updated, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the dataset. This contains the state and any error
    #   messages. The state is `ACTIVE` when ready to use.
    #   @return [Types::DatasetStatus]
    #
    class DatasetSummary < Struct.new(
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

    # Represents a single data point in a query result.
    #
    # @!attribute [rw] scalar_value
    #   Indicates if the data point is a scalar value such as integer,
    #   string, double, or Boolean.
    #   @return [String]
    #
    # @!attribute [rw] array_value
    #   Indicates if the data point is an array.
    #   @return [Array<Types::Datum>]
    #
    # @!attribute [rw] row_value
    #   Indicates if the data point is a row.
    #   @return [Types::Row]
    #
    # @!attribute [rw] null_value
    #   Indicates if the data point is null.
    #   @return [Boolean]
    #
    class Datum < Struct.new(
      :scalar_value,
      :array_value,
      :row_value,
      :null_value)
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
    #   The ID of the asset model, in UUID format.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_composite_model_id
    #   The ID of a composite model on this asset model.
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
    # @!attribute [rw] if_match
    #   The expected current entity tag (ETag) for the asset model’s latest
    #   or active version (specified using `matchForVersionType`). The
    #   delete request is rejected if the tag does not match the latest or
    #   active version's current entity tag. See [Optimistic locking for
    #   asset model writes][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/opt-locking-for-model.html
    #   @return [String]
    #
    # @!attribute [rw] if_none_match
    #   Accepts ***** to reject the delete request if an active version
    #   (specified using `matchForVersionType` as `ACTIVE`) already exists
    #   for the asset model.
    #   @return [String]
    #
    # @!attribute [rw] match_for_version_type
    #   Specifies the asset model version type (`LATEST` or `ACTIVE`) used
    #   in conjunction with `If-Match` or `If-None-Match` headers to
    #   determine the target ETag for the delete operation.
    #   @return [String]
    #
    class DeleteAssetModelCompositeModelRequest < Struct.new(
      :asset_model_id,
      :asset_model_composite_model_id,
      :client_token,
      :if_match,
      :if_none_match,
      :match_for_version_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_model_status
    #   Contains current status information for an asset model. For more
    #   information, see [Asset and model states][1] in the *IoT SiteWise
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-and-model-states.html
    #   @return [Types::AssetModelStatus]
    #
    class DeleteAssetModelCompositeModelResponse < Struct.new(
      :asset_model_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_model_id
    #   The ID of the asset model to delete. This can be either the actual
    #   ID in UUID format, or else `externalId:` followed by the external
    #   ID, if it has one. For more information, see [Referencing objects
    #   with external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
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
    # @!attribute [rw] if_match
    #   The expected current entity tag (ETag) for the asset model’s latest
    #   or active version (specified using `matchForVersionType`). The
    #   delete request is rejected if the tag does not match the latest or
    #   active version's current entity tag. See [Optimistic locking for
    #   asset model writes][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/opt-locking-for-model.html
    #   @return [String]
    #
    # @!attribute [rw] if_none_match
    #   Accepts ***** to reject the delete request if an active version
    #   (specified using `matchForVersionType` as `ACTIVE`) already exists
    #   for the asset model.
    #   @return [String]
    #
    # @!attribute [rw] match_for_version_type
    #   Specifies the asset model version type (`LATEST` or `ACTIVE`) used
    #   in conjunction with `If-Match` or `If-None-Match` headers to
    #   determine the target ETag for the delete operation.
    #   @return [String]
    #
    class DeleteAssetModelRequest < Struct.new(
      :asset_model_id,
      :client_token,
      :if_match,
      :if_none_match,
      :match_for_version_type)
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
    #   The ID of the asset to delete. This can be either the actual ID in
    #   UUID format, or else `externalId:` followed by the external ID, if
    #   it has one. For more information, see [Referencing objects with
    #   external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
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

    # @!attribute [rw] dataset_id
    #   The ID of the dataset.
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
    class DeleteDatasetRequest < Struct.new(
      :dataset_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_status
    #   The status of the dataset. This contains the state and any error
    #   messages. State is `DELETING` after a successfull call to this API,
    #   and any associated error message.
    #   @return [Types::DatasetStatus]
    #
    class DeleteDatasetResponse < Struct.new(
      :dataset_status)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   The ID of the asset in which the asset property was created. This
    #   can be either the actual ID in UUID format, or else `externalId:`
    #   followed by the external ID, if it has one. For more information,
    #   see [Referencing objects with external IDs][1] in the *IoT SiteWise
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #   @return [String]
    #
    # @!attribute [rw] property_id
    #   The ID of the asset property. This can be either the actual ID in
    #   UUID format, or else `externalId:` followed by the external ID, if
    #   it has one. For more information, see [Referencing objects with
    #   external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
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
    #   `arn:${Partition}:iotsitewise:${Region}:${Account}:access-policy/${AccessPolicyId}`
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

    # @!attribute [rw] action_id
    #   The ID of the action.
    #   @return [String]
    #
    class DescribeActionRequest < Struct.new(
      :action_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action_id
    #   The ID of the action.
    #   @return [String]
    #
    # @!attribute [rw] target_resource
    #   The resource the action will be taken on.
    #   @return [Types::TargetResource]
    #
    # @!attribute [rw] action_definition_id
    #   The ID of the action definition.
    #   @return [String]
    #
    # @!attribute [rw] action_payload
    #   The JSON payload of the action.
    #   @return [Types::ActionPayload]
    #
    # @!attribute [rw] execution_time
    #   The time the action was executed.
    #   @return [Time]
    #
    class DescribeActionResponse < Struct.new(
      :action_id,
      :target_resource,
      :action_definition_id,
      :action_payload,
      :execution_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_id
    #   The ID of the asset. This can be either the actual ID in UUID
    #   format, or else `externalId:` followed by the external ID, if it has
    #   one. For more information, see [Referencing objects with external
    #   IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #   @return [String]
    #
    # @!attribute [rw] asset_composite_model_id
    #   The ID of a composite model on this asset. This can be either the
    #   actual ID in UUID format, or else `externalId:` followed by the
    #   external ID, if it has one. For more information, see [Referencing
    #   objects with external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #   @return [String]
    #
    class DescribeAssetCompositeModelRequest < Struct.new(
      :asset_id,
      :asset_composite_model_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_id
    #   The ID of the asset, in UUID format. This ID uniquely identifies the
    #   asset within IoT SiteWise and can be used with other IoT SiteWise
    #   APIs.
    #   @return [String]
    #
    # @!attribute [rw] asset_composite_model_id
    #   The ID of a composite model on this asset.
    #   @return [String]
    #
    # @!attribute [rw] asset_composite_model_external_id
    #   An external ID to assign to the asset model.
    #
    #   If the composite model is a component-based composite model, or one
    #   nested inside a component model, you can only set the external ID
    #   using `UpdateAssetModelCompositeModel` and specifying the derived ID
    #   of the model or property from the created model it's a part of.
    #   @return [String]
    #
    # @!attribute [rw] asset_composite_model_path
    #   The path to the composite model listing the parent composite models.
    #   @return [Array<Types::AssetCompositeModelPathSegment>]
    #
    # @!attribute [rw] asset_composite_model_name
    #   The unique, friendly name for the composite model.
    #   @return [String]
    #
    # @!attribute [rw] asset_composite_model_description
    #   A description for the composite model.
    #   @return [String]
    #
    # @!attribute [rw] asset_composite_model_type
    #   The composite model type. Valid values are `AWS/ALARM`, `CUSTOM`, or
    #   ` AWS/L4E_ANOMALY`.
    #   @return [String]
    #
    # @!attribute [rw] asset_composite_model_properties
    #   The property definitions of the composite model that was used to
    #   create the asset.
    #   @return [Array<Types::AssetProperty>]
    #
    # @!attribute [rw] asset_composite_model_summaries
    #   The list of composite model summaries.
    #   @return [Array<Types::AssetCompositeModelSummary>]
    #
    # @!attribute [rw] action_definitions
    #   The available actions for a composite model on this asset.
    #   @return [Array<Types::ActionDefinition>]
    #
    class DescribeAssetCompositeModelResponse < Struct.new(
      :asset_id,
      :asset_composite_model_id,
      :asset_composite_model_external_id,
      :asset_composite_model_path,
      :asset_composite_model_name,
      :asset_composite_model_description,
      :asset_composite_model_type,
      :asset_composite_model_properties,
      :asset_composite_model_summaries,
      :action_definitions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_model_id
    #   The ID of the asset model. This can be either the actual ID in UUID
    #   format, or else `externalId:` followed by the external ID, if it has
    #   one. For more information, see [Referencing objects with external
    #   IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #   @return [String]
    #
    # @!attribute [rw] asset_model_composite_model_id
    #   The ID of a composite model on this asset model. This can be either
    #   the actual ID in UUID format, or else `externalId:` followed by the
    #   external ID, if it has one. For more information, see [Referencing
    #   objects with external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #   @return [String]
    #
    # @!attribute [rw] asset_model_version
    #   The version alias that specifies the latest or active version of the
    #   asset model. The details are returned in the response. The default
    #   value is `LATEST`. See [ Asset model versions][1] in the *IoT
    #   SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/model-active-version.html
    #   @return [String]
    #
    class DescribeAssetModelCompositeModelRequest < Struct.new(
      :asset_model_id,
      :asset_model_composite_model_id,
      :asset_model_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_model_id
    #   The ID of the asset model, in UUID format.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_composite_model_id
    #   The ID of a composite model on this asset model.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_composite_model_external_id
    #   The external ID of a composite model on this asset model.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_composite_model_path
    #   The path to the composite model listing the parent composite models.
    #   @return [Array<Types::AssetModelCompositeModelPathSegment>]
    #
    # @!attribute [rw] asset_model_composite_model_name
    #   The unique, friendly name for the composite model.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_composite_model_description
    #   The description for the composite model.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_composite_model_type
    #   The composite model type. Valid values are `AWS/ALARM`, `CUSTOM`, or
    #   ` AWS/L4E_ANOMALY`.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_composite_model_properties
    #   The property definitions of the composite model.
    #   @return [Array<Types::AssetModelProperty>]
    #
    # @!attribute [rw] composition_details
    #   Metadata for the composition relationship established by using
    #   `composedAssetModelId` in [ `CreateAssetModelCompositeModel` ][1].
    #   For instance, an array detailing the path of the composition
    #   relationship for this composite model.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModelCompositeModel.html
    #   @return [Types::CompositionDetails]
    #
    # @!attribute [rw] asset_model_composite_model_summaries
    #   The list of composite model summaries for the composite model.
    #   @return [Array<Types::AssetModelCompositeModelSummary>]
    #
    # @!attribute [rw] action_definitions
    #   The available actions for a composite model on this asset model.
    #   @return [Array<Types::ActionDefinition>]
    #
    class DescribeAssetModelCompositeModelResponse < Struct.new(
      :asset_model_id,
      :asset_model_composite_model_id,
      :asset_model_composite_model_external_id,
      :asset_model_composite_model_path,
      :asset_model_composite_model_name,
      :asset_model_composite_model_description,
      :asset_model_composite_model_type,
      :asset_model_composite_model_properties,
      :composition_details,
      :asset_model_composite_model_summaries,
      :action_definitions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_model_id
    #   The ID of the asset model. This can be either the actual ID in UUID
    #   format, or else `externalId:` followed by the external ID, if it has
    #   one. For more information, see [Referencing objects with external
    #   IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #   @return [String]
    #
    # @!attribute [rw] exclude_properties
    #   Whether or not to exclude asset model properties from the response.
    #   @return [Boolean]
    #
    # @!attribute [rw] asset_model_version
    #   The version alias that specifies the latest or active version of the
    #   asset model. The details are returned in the response. The default
    #   value is `LATEST`. See [ Asset model versions][1] in the *IoT
    #   SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/model-active-version.html
    #   @return [String]
    #
    class DescribeAssetModelRequest < Struct.new(
      :asset_model_id,
      :exclude_properties,
      :asset_model_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_model_id
    #   The ID of the asset model, in UUID format.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_external_id
    #   The external ID of the asset model, if any.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_arn
    #   The [ARN][1] of the asset model, which has the following format.
    #
    #   `arn:${Partition}:iotsitewise:${Region}:${Account}:asset-model/${AssetModelId}`
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
    # @!attribute [rw] asset_model_type
    #   The type of asset model.
    #
    #   * **ASSET\_MODEL** – (default) An asset model that you can use to
    #     create assets. Can't be included as a component in another asset
    #     model.
    #
    #   * **COMPONENT\_MODEL** – A reusable component that you can include
    #     in the composite models of other asset models. You can't create
    #     assets directly from this type of asset model.
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
    #   The list of built-in composite models for the asset model, such as
    #   those with those of type `AWS/ALARMS`.
    #   @return [Array<Types::AssetModelCompositeModel>]
    #
    # @!attribute [rw] asset_model_composite_model_summaries
    #   The list of the immediate child custom composite model summaries for
    #   the asset model.
    #   @return [Array<Types::AssetModelCompositeModelSummary>]
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
    # @!attribute [rw] asset_model_version
    #   The version of the asset model. See [ Asset model versions][1] in
    #   the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/model-active-version.html
    #   @return [String]
    #
    # @!attribute [rw] e_tag
    #   The entity tag (ETag) is a hash of the retrieved version of the
    #   asset model. It's used to make concurrent updates safely to the
    #   resource. See [Optimistic locking for asset model writes][1] in the
    #   *IoT SiteWise User Guide*.
    #
    #   See [ Optimistic locking for asset model writes][1] in the *IoT
    #   SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/opt-locking-for-model.html
    #   @return [String]
    #
    class DescribeAssetModelResponse < Struct.new(
      :asset_model_id,
      :asset_model_external_id,
      :asset_model_arn,
      :asset_model_name,
      :asset_model_type,
      :asset_model_description,
      :asset_model_properties,
      :asset_model_hierarchies,
      :asset_model_composite_models,
      :asset_model_composite_model_summaries,
      :asset_model_creation_date,
      :asset_model_last_update_date,
      :asset_model_status,
      :asset_model_version,
      :e_tag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_id
    #   The ID of the asset. This can be either the actual ID in UUID
    #   format, or else `externalId:` followed by the external ID, if it has
    #   one. For more information, see [Referencing objects with external
    #   IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #   @return [String]
    #
    # @!attribute [rw] property_id
    #   The ID of the asset property. This can be either the actual ID in
    #   UUID format, or else `externalId:` followed by the external ID, if
    #   it has one. For more information, see [Referencing objects with
    #   external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #   @return [String]
    #
    class DescribeAssetPropertyRequest < Struct.new(
      :asset_id,
      :property_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_id
    #   The ID of the asset, in UUID format.
    #   @return [String]
    #
    # @!attribute [rw] asset_name
    #   The name of the asset.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_id
    #   The ID of the asset model, in UUID format.
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
    #   The composite model that declares this asset property, if this asset
    #   property exists in a composite model.
    #   @return [Types::CompositeModelProperty]
    #
    # @!attribute [rw] asset_external_id
    #   The external ID of the asset. For more information, see [Using
    #   external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids
    #   @return [String]
    #
    class DescribeAssetPropertyResponse < Struct.new(
      :asset_id,
      :asset_name,
      :asset_model_id,
      :asset_property,
      :composite_model,
      :asset_external_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_id
    #   The ID of the asset. This can be either the actual ID in UUID
    #   format, or else `externalId:` followed by the external ID, if it has
    #   one. For more information, see [Referencing objects with external
    #   IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
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
    #   The ID of the asset, in UUID format.
    #   @return [String]
    #
    # @!attribute [rw] asset_arn
    #   The [ARN][1] of the asset, which has the following format.
    #
    #   `arn:${Partition}:iotsitewise:${Region}:${Account}:asset/${AssetId}`
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
    # @!attribute [rw] asset_composite_model_summaries
    #   The list of the immediate child custom composite model summaries for
    #   the asset.
    #   @return [Array<Types::AssetCompositeModelSummary>]
    #
    # @!attribute [rw] asset_external_id
    #   The external ID of the asset, if any.
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
      :asset_description,
      :asset_composite_model_summaries,
      :asset_external_id)
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
    #   The status of the bulk import job can be one of following values:
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
    # @!attribute [rw] adaptive_ingestion
    #   If set to true, ingest new data into IoT SiteWise storage.
    #   Measurements with notifications, metrics and transforms are
    #   computed. If set to false, historical data is ingested into IoT
    #   SiteWise as is.
    #   @return [Boolean]
    #
    # @!attribute [rw] delete_files_after_import
    #   If set to true, your data files is deleted from S3, after ingestion
    #   into IoT SiteWise storage.
    #   @return [Boolean]
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
      :job_last_update_date,
      :adaptive_ingestion,
      :delete_files_after_import)
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
    #   `arn:${Partition}:iotsitewise:${Region}:${Account}:dashboard/${DashboardId}`
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

    # @!attribute [rw] dataset_id
    #   The ID of the dataset.
    #   @return [String]
    #
    class DescribeDatasetRequest < Struct.new(
      :dataset_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_id
    #   The ID of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   The [ARN][1] of the dataset. The format is
    #   `arn:${Partition}:iotsitewise:${Region}:${Account}:dataset/${DatasetId}`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html
    #   @return [String]
    #
    # @!attribute [rw] dataset_name
    #   The name of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_description
    #   A description about the dataset, and its functionality.
    #   @return [String]
    #
    # @!attribute [rw] dataset_source
    #   The data source for the dataset.
    #   @return [Types::DatasetSource]
    #
    # @!attribute [rw] dataset_status
    #   The status of the dataset. This contains the state and any error
    #   messages. State is `CREATING` after a successfull call to this API,
    #   and any associated error message. The state is `ACTIVE` when ready
    #   to use.
    #   @return [Types::DatasetStatus]
    #
    # @!attribute [rw] dataset_creation_date
    #   The dataset creation date, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] dataset_last_update_date
    #   The date the dataset was last updated, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] dataset_version
    #   The version of the dataset.
    #   @return [String]
    #
    class DescribeDatasetResponse < Struct.new(
      :dataset_id,
      :dataset_arn,
      :dataset_name,
      :dataset_description,
      :dataset_source,
      :dataset_status,
      :dataset_creation_date,
      :dataset_last_update_date,
      :dataset_version)
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
    #   * `NOT_APPLICABLE` – Synchronization is not required for this
    #     capability configuration. This is most common when integrating
    #     partner data sources, because the data integration is handled
    #     externally by the partner.
    #
    #   * `OUT_OF_SYNC` – The gateway hasn't received the capability
    #     configuration.
    #
    #   * `SYNC_FAILED` – The gateway rejected the capability configuration.
    #
    #   * `UNKNOWN` – The synchronization status is currently unknown due to
    #     an undetermined or temporary error.
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
    #   `arn:${Partition}:iotsitewise:${Region}:${Account}:gateway/${GatewayId}`
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
    # @!attribute [rw] gateway_version
    #   The version of the gateway. A value of `3` indicates an
    #   MQTT-enabled, V3 gateway, while `2` indicates a Classic streams, V2
    #   gateway.
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
    class DescribeGatewayResponse < Struct.new(
      :gateway_id,
      :gateway_name,
      :gateway_arn,
      :gateway_platform,
      :gateway_version,
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
    #   `arn:${Partition}:iotsitewise:${Region}:${Account}:portal/${PortalId}`
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
    #   IAM Identity Center API operations). IoT SiteWise includes
    #   `portalClientId` for only portals that use IAM Identity Center to
    #   authenticate users.
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
    # @!attribute [rw] portal_type
    #   Define the type of portal. The value for IoT SiteWise Monitor
    #   (Classic) is `SITEWISE_PORTAL_V1`. The value for IoT SiteWise
    #   Monitor (AI-aware) is `SITEWISE_PORTAL_V2`.
    #   @return [String]
    #
    # @!attribute [rw] portal_type_configuration
    #   The configuration entry associated with the specific portal type.
    #   The value for IoT SiteWise Monitor (Classic) is
    #   `SITEWISE_PORTAL_V1`. The value for IoT SiteWise Monitor (AI-aware)
    #   is `SITEWISE_PORTAL_V2`.
    #   @return [Hash<String,Types::PortalTypeEntry>]
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
      :alarms,
      :portal_type,
      :portal_type_configuration)
      SENSITIVE = [:portal_contact_email, :notification_sender_email]
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
    #   `arn:${Partition}:iotsitewise:${Region}:${Account}:project/${ProjectId}`
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
    #   The number of days your data is kept in the hot tier. By default,
    #   your data is kept indefinitely in the hot tier.
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
    # @!attribute [rw] warm_tier
    #   A service managed storage tier optimized for analytical queries. It
    #   stores periodically uploaded, buffered and historical data ingested
    #   with the CreaeBulkImportJob API.
    #   @return [String]
    #
    # @!attribute [rw] warm_tier_retention_period
    #   Set this period to specify how long your data is stored in the warm
    #   tier before it is deleted. You can set this only if cold tier is
    #   enabled.
    #   @return [Types::WarmTierRetentionPeriod]
    #
    # @!attribute [rw] disallow_ingest_null_na_n
    #   Describes the configuration for ingesting NULL and NaN data. By
    #   default the feature is allowed. The feature is disallowed if the
    #   value is `true`.
    #   @return [Boolean]
    #
    class DescribeStorageConfigurationResponse < Struct.new(
      :storage_type,
      :multi_layer_storage,
      :disassociated_data_storage,
      :retention_period,
      :configuration_status,
      :last_update_date,
      :warm_tier,
      :warm_tier_retention_period,
      :disallow_ingest_null_na_n)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alias
    #   The alias that identifies the time series.
    #   @return [String]
    #
    # @!attribute [rw] asset_id
    #   The ID of the asset in which the asset property was created. This
    #   can be either the actual ID in UUID format, or else `externalId:`
    #   followed by the external ID, if it has one. For more information,
    #   see [Referencing objects with external IDs][1] in the *IoT SiteWise
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #   @return [String]
    #
    # @!attribute [rw] property_id
    #   The ID of the asset property. This can be either the actual ID in
    #   UUID format, or else `externalId:` followed by the external ID, if
    #   it has one. For more information, see [Referencing objects with
    #   external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
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
    #   The ID of the asset property, in UUID format.
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
    #   `arn:${Partition}:iotsitewise:${Region}:${Account}:time-series/${TimeSeriesId}`
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
    #   asset. This can be either the actual ID in UUID format, or else
    #   `externalId:` followed by the external ID, if it has one. For more
    #   information, see [Referencing objects with external IDs][1] in the
    #   *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #   @return [String]
    #
    # @!attribute [rw] hierarchy_id
    #   The ID of a hierarchy in the parent asset's model. (This can be
    #   either the actual ID in UUID format, or else `externalId:` followed
    #   by the external ID, if it has one. For more information, see
    #   [Referencing objects with external IDs][1] in the *IoT SiteWise User
    #   Guide*.) Hierarchies allow different groupings of assets to be
    #   formed that all come from the same asset model. You can use the
    #   hierarchy ID to identify the correct asset to disassociate. For more
    #   information, see [Asset hierarchies][2] in the *IoT SiteWise User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html
    #   @return [String]
    #
    # @!attribute [rw] child_asset_id
    #   The ID of the child asset to disassociate. This can be either the
    #   actual ID in UUID format, or else `externalId:` followed by the
    #   external ID, if it has one. For more information, see [Referencing
    #   objects with external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
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
    #   The ID of the asset in which the asset property was created. This
    #   can be either the actual ID in UUID format, or else `externalId:`
    #   followed by the external ID, if it has one. For more information,
    #   see [Referencing objects with external IDs][1] in the *IoT SiteWise
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #   @return [String]
    #
    # @!attribute [rw] property_id
    #   The ID of the asset property. This can be either the actual ID in
    #   UUID format, or else `externalId:` followed by the external ID, if
    #   it has one. For more information, see [Referencing objects with
    #   external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
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

    # @!attribute [rw] target_resource
    #   The resource the action will be taken on.
    #   @return [Types::TargetResource]
    #
    # @!attribute [rw] action_definition_id
    #   The ID of the action definition.
    #   @return [String]
    #
    # @!attribute [rw] action_payload
    #   The JSON payload of the action.
    #   @return [Types::ActionPayload]
    #
    # @!attribute [rw] client_token
    #   A unique case-sensitive identifier that you can provide to ensure
    #   the idempotency of the request. Don't reuse this client token if a
    #   new idempotent request is required.
    #   @return [String]
    #
    class ExecuteActionRequest < Struct.new(
      :target_resource,
      :action_definition_id,
      :action_payload,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action_id
    #   The ID of the action.
    #   @return [String]
    #
    class ExecuteActionResponse < Struct.new(
      :action_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_statement
    #   The IoT SiteWise query statement.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time. The default is
    #   25.
    #   @return [Integer]
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
    class ExecuteQueryRequest < Struct.new(
      :query_statement,
      :next_token,
      :max_results,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] columns
    #   Represents a single column in the query results.
    #   @return [Array<Types::ColumnInfo>]
    #
    # @!attribute [rw] rows
    #   Represents a single row in the query results.
    #   @return [Array<Types::Row>]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results.
    #   @return [String]
    #
    class ExecuteQueryResponse < Struct.new(
      :columns,
      :rows,
      :next_token)
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

    # The file format of the data in S3.
    #
    # @!attribute [rw] csv
    #   The file is in .CSV format.
    #   @return [Types::Csv]
    #
    # @!attribute [rw] parquet
    #   The file is in parquet format.
    #   @return [Types::Parquet]
    #
    class FileFormat < Struct.new(
      :csv,
      :parquet)
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
    #   * `NOT_APPLICABLE` – Synchronization is not required for this
    #     capability configuration. This is most common when integrating
    #     partner data sources, because the data integration is handled
    #     externally by the partner.
    #
    #   * `OUT_OF_SYNC` – The gateway hasn't received the capability
    #     configuration.
    #
    #   * `SYNC_FAILED` – The gateway rejected the capability configuration.
    #
    #   * `UNKNOWN` – The synchronization status is currently unknown due to
    #     an undetermined or temporary error.
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
    # @!attribute [rw] siemens_ie
    #   A SiteWise Edge gateway that runs on a Siemens Industrial Edge
    #   Device.
    #   @return [Types::SiemensIE]
    #
    class GatewayPlatform < Struct.new(
      :greengrass,
      :greengrass_v2,
      :siemens_ie)
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
    #   The name of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_platform
    #   Contains a gateway's platform information.
    #   @return [Types::GatewayPlatform]
    #
    # @!attribute [rw] gateway_version
    #   The version of the gateway. A value of `3` indicates an
    #   MQTT-enabled, V3 gateway, while `2` indicates a Classic streams, V2
    #   gateway.
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
      :gateway_platform,
      :gateway_version,
      :gateway_capability_summaries,
      :creation_date,
      :last_update_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_id
    #   The ID of the asset, in UUID format.
    #   @return [String]
    #
    # @!attribute [rw] property_id
    #   The ID of the asset property, in UUID format.
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
    #     of `maxResults`. The maximum value of `maxResults` is 2500.
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
    #   The ID of the asset, in UUID format.
    #   @return [String]
    #
    # @!attribute [rw] property_id
    #   The ID of the asset property, in UUID format.
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
    #   The ID of the asset, in UUID format.
    #   @return [String]
    #
    # @!attribute [rw] property_id
    #   The ID of the asset property, in UUID format.
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
    #   The ID of the asset, in UUID format.
    #   @return [String]
    #
    # @!attribute [rw] property_id
    #   The ID of the asset property, in UUID format.
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
    #   *IoT Greengrass V1 API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://docs.aws.amazon.com/greengrass/v1/apireference/listgroups-get.html
    #   [3]: https://docs.aws.amazon.com/greengrass/v1/apireference/getgroup-get.html
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
    # @!attribute [rw] core_device_operating_system
    #   The operating system of the core device in IoT Greengrass V2.
    #   @return [String]
    #
    class GreengrassV2 < Struct.new(
      :core_device_thing_name,
      :core_device_operating_system)
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
    # <note markdown="1"> Currently, you can't use Amazon Web Services API operations to
    # retrieve IAM Identity Center identity IDs. You can find the IAM
    # Identity Center identity IDs in the URL of user and group pages in the
    # [IAM Identity Center console][1].
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
      :message,
      :event_type)
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
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # This contains the SiteWise Assistant's response and the corresponding
    # citation.
    #
    # @!attribute [rw] message
    #   The text message of the SiteWise Assistant's response.
    #   @return [String]
    #
    # @!attribute [rw] citations
    #   A list of citations, and related information for the SiteWise
    #   Assistant's response.
    #   @return [Array<Types::Citation>]
    #
    class InvocationOutput < Struct.new(
      :message,
      :citations,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] conversation_id
    #   The ID assigned to a conversation. IoT SiteWise automatically
    #   generates a unique ID for you, and this parameter is never required.
    #   However, if you prefer to have your own ID, you must specify it here
    #   in UUID format. If you specify your own ID, it must be globally
    #   unique.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A text message sent to the SiteWise Assistant by the user.
    #   @return [String]
    #
    # @!attribute [rw] enable_trace
    #   Specifies if to turn trace on or not. It is used to track the
    #   SiteWise Assistant's reasoning, and data access process.
    #   @return [Boolean]
    #
    class InvokeAssistantRequest < Struct.new(
      :conversation_id,
      :message,
      :enable_trace)
      SENSITIVE = [:message]
      include Aws::Structure
    end

    # @!attribute [rw] body
    #   Contains the response, citation, and trace from the SiteWise
    #   Assistant.
    #   @return [Types::ResponseStream]
    #
    # @!attribute [rw] conversation_id
    #   The ID of the conversation, in UUID format. This ID uniquely
    #   identifies the conversation within IoT SiteWise.
    #   @return [String]
    #
    class InvokeAssistantResponse < Struct.new(
      :body,
      :conversation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the configuration information of a job, such as the file
    # format used to save data in Amazon S3.
    #
    # @!attribute [rw] file_format
    #   The file format of the data in S3.
    #   @return [Types::FileFormat]
    #
    class JobConfiguration < Struct.new(
      :file_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the job summary information.
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
    #   The status of the bulk import job can be one of following values:
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

    # The source details for the Kendra dataset source.
    #
    # @!attribute [rw] knowledge_base_arn
    #   The `knowledgeBaseArn` details for the Kendra dataset source.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The `roleARN` details for the Kendra dataset source.
    #   @return [String]
    #
    class KendraSourceDetail < Struct.new(
      :knowledge_base_arn,
      :role_arn)
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
      :message,
      :event_type)
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

    # @!attribute [rw] target_resource_type
    #   The type of resource.
    #   @return [String]
    #
    # @!attribute [rw] target_resource_id
    #   The ID of the target resource.
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
    class ListActionsRequest < Struct.new(
      :target_resource_type,
      :target_resource_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action_summaries
    #   A list that summarizes the actions associated with the specified
    #   asset.
    #   @return [Array<Types::ActionSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    class ListActionsResponse < Struct.new(
      :action_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_model_id
    #   The ID of the asset model. This can be either the actual ID in UUID
    #   format, or else `externalId:` followed by the external ID, if it has
    #   one. For more information, see [Referencing objects with external
    #   IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
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
    # @!attribute [rw] asset_model_version
    #   The version alias that specifies the latest or active version of the
    #   asset model. The details are returned in the response. The default
    #   value is `LATEST`. See [ Asset model versions][1] in the *IoT
    #   SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/model-active-version.html
    #   @return [String]
    #
    class ListAssetModelCompositeModelsRequest < Struct.new(
      :asset_model_id,
      :next_token,
      :max_results,
      :asset_model_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_model_composite_model_summaries
    #   A list that summarizes each composite model.
    #   @return [Array<Types::AssetModelCompositeModelSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    class ListAssetModelCompositeModelsResponse < Struct.new(
      :asset_model_composite_model_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_model_id
    #   The ID of the asset model. This can be either the actual ID in UUID
    #   format, or else `externalId:` followed by the external ID, if it has
    #   one. For more information, see [Referencing objects with external
    #   IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
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
    # @!attribute [rw] asset_model_version
    #   The version alias that specifies the latest or active version of the
    #   asset model. The details are returned in the response. The default
    #   value is `LATEST`. See [ Asset model versions][1] in the *IoT
    #   SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/model-active-version.html
    #   @return [String]
    #
    class ListAssetModelPropertiesRequest < Struct.new(
      :asset_model_id,
      :next_token,
      :max_results,
      :filter,
      :asset_model_version)
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

    # @!attribute [rw] asset_model_types
    #   The type of asset model. If you don't provide an `assetModelTypes`,
    #   all types of asset models are returned.
    #
    #   * **ASSET\_MODEL** – An asset model that you can use to create
    #     assets. Can't be included as a component in another asset model.
    #
    #   * **COMPONENT\_MODEL** – A reusable component that you can include
    #     in the composite models of other asset models. You can't create
    #     assets directly from this type of asset model.
    #   @return [Array<String>]
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
    # @!attribute [rw] asset_model_version
    #   The version alias that specifies the latest or active version of the
    #   asset model. The details are returned in the response. The default
    #   value is `LATEST`. See [ Asset model versions][1] in the *IoT
    #   SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/model-active-version.html
    #   @return [String]
    #
    class ListAssetModelsRequest < Struct.new(
      :asset_model_types,
      :next_token,
      :max_results,
      :asset_model_version)
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
    #   The ID of the asset. This can be either the actual ID in UUID
    #   format, or else `externalId:` followed by the external ID, if it has
    #   one. For more information, see [Referencing objects with external
    #   IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
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
    #   The ID of the asset. This can be either the actual ID in UUID
    #   format, or else `externalId:` followed by the external ID, if it has
    #   one. For more information, see [Referencing objects with external
    #   IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
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
    #   This parameter is required if you choose `ALL` for `filter`. This
    #   can be either the actual ID in UUID format, or else `externalId:`
    #   followed by the external ID, if it has one. For more information,
    #   see [Referencing objects with external IDs][1] in the *IoT SiteWise
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
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
    #   The ID of the asset to query. This can be either the actual ID in
    #   UUID format, or else `externalId:` followed by the external ID, if
    #   it has one. For more information, see [Referencing objects with
    #   external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #   @return [String]
    #
    # @!attribute [rw] hierarchy_id
    #   (Optional) If you don't provide a `hierarchyId`, all the immediate
    #   assets in the `traversalDirection` will be returned.
    #
    #   The ID of the hierarchy by which child assets are associated to the
    #   asset. (This can be either the actual ID in UUID format, or else
    #   `externalId:` followed by the external ID, if it has one. For more
    #   information, see [Referencing objects with external IDs][1] in the
    #   *IoT SiteWise User Guide*.)
    #
    #   For more information, see [Asset hierarchies][2] in the *IoT
    #   SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html
    #   @return [String]
    #
    # @!attribute [rw] traversal_direction
    #   The direction to list associated assets. Choose one of the following
    #   options:
    #
    #   * `CHILD` – The list includes all child assets associated to the
    #     asset.
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

    # @!attribute [rw] asset_model_id
    #   The ID of the asset model. This can be either the actual ID in UUID
    #   format, or else `externalId:` followed by the external ID, if it has
    #   one. For more information, see [Referencing objects with external
    #   IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
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
    class ListCompositionRelationshipsRequest < Struct.new(
      :asset_model_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] composition_relationship_summaries
    #   A list that summarizes each composition relationship.
    #   @return [Array<Types::CompositionRelationshipSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    class ListCompositionRelationshipsResponse < Struct.new(
      :composition_relationship_summaries,
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

    # @!attribute [rw] source_type
    #   The type of data source for the dataset.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for each paginated request.
    #   @return [Integer]
    #
    class ListDatasetsRequest < Struct.new(
      :source_type,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_summaries
    #   A list that summarizes the dataset response.
    #   @return [Array<Types::DatasetSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    class ListDatasetsResponse < Struct.new(
      :dataset_summaries,
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
    #   The ID of the asset in which the asset property was created. This
    #   can be either the actual ID in UUID format, or else `externalId:`
    #   followed by the external ID, if it has one. For more information,
    #   see [Referencing objects with external IDs][1] in the *IoT SiteWise
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
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

    # Contains location information about the cited text and where it's
    # stored.
    #
    # @!attribute [rw] uri
    #   The URI of the location.
    #   @return [String]
    #
    class Location < Struct.new(
      :uri)
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

    # A parquet file.
    #
    # @api private
    #
    class Parquet < Aws::EmptyStructure; end

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
    # @!attribute [rw] portal_type
    #   Define the type of portal. The value for IoT SiteWise Monitor
    #   (Classic) is `SITEWISE_PORTAL_V1`. The value for IoT SiteWise
    #   Monitor (AI-aware) is `SITEWISE_PORTAL_V2`.
    #   @return [String]
    #
    class PortalSummary < Struct.new(
      :id,
      :name,
      :description,
      :start_url,
      :creation_date,
      :last_update_date,
      :role_arn,
      :status,
      :portal_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration entry associated with the specific portal type. The
    # `portalTypeConfiguration` is a map of the `portalTypeKey` to the
    # `PortalTypeEntry`.
    #
    # @!attribute [rw] portal_tools
    #   The array of tools associated with the specified portal type. The
    #   possible values are `ASSISTANT` and `DASHBOARD`.
    #   @return [Array<String>]
    #
    class PortalTypeEntry < Struct.new(
      :portal_tools)
      SENSITIVE = []
      include Aws::Structure
    end

    # The precondition in one or more of the request-header fields evaluated
    # to `FALSE`.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource on which precondition failed with this
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource on which precondition failed with this
    #   operation.
    #   @return [String]
    #
    class PreconditionFailedException < Struct.new(
      :message,
      :resource_id,
      :resource_arn)
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
    # @!attribute [rw] path
    #   The structured path to the property from the root of the asset.
    #   @return [Array<Types::AssetPropertyPathSegment>]
    #
    # @!attribute [rw] external_id
    #   The external ID of the asset property. For more information, see
    #   [Using external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids
    #   @return [String]
    #
    class Property < Struct.new(
      :id,
      :name,
      :alias,
      :notification,
      :data_type,
      :unit,
      :type,
      :path,
      :external_id)
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

    # The value type of null asset property data with BAD and UNCERTAIN
    # qualities.
    #
    # @!attribute [rw] value_type
    #   The type of null asset property data.
    #   @return [String]
    #
    class PropertyValueNullValue < Struct.new(
      :value_type)
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
    #   The number of days your data is kept in the hot tier. By default,
    #   your data is kept indefinitely in the hot tier.
    #   @return [Types::RetentionPeriod]
    #
    # @!attribute [rw] warm_tier
    #   A service managed storage tier optimized for analytical queries. It
    #   stores periodically uploaded, buffered and historical data ingested
    #   with the CreaeBulkImportJob API.
    #   @return [String]
    #
    # @!attribute [rw] warm_tier_retention_period
    #   Set this period to specify how long your data is stored in the warm
    #   tier before it is deleted. You can set this only if cold tier is
    #   enabled.
    #   @return [Types::WarmTierRetentionPeriod]
    #
    # @!attribute [rw] disallow_ingest_null_na_n
    #   Describes the configuration for ingesting NULL and NaN data. By
    #   default the feature is allowed. The feature is disallowed if the
    #   value is `true`.
    #   @return [Boolean]
    #
    class PutStorageConfigurationRequest < Struct.new(
      :storage_type,
      :multi_layer_storage,
      :disassociated_data_storage,
      :retention_period,
      :warm_tier,
      :warm_tier_retention_period,
      :disallow_ingest_null_na_n)
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
    #   The number of days your data is kept in the hot tier. By default,
    #   your data is kept indefinitely in the hot tier.
    #   @return [Types::RetentionPeriod]
    #
    # @!attribute [rw] configuration_status
    #   Contains current status information for the configuration.
    #   @return [Types::ConfigurationStatus]
    #
    # @!attribute [rw] warm_tier
    #   A service managed storage tier optimized for analytical queries. It
    #   stores periodically uploaded, buffered and historical data ingested
    #   with the CreaeBulkImportJob API.
    #   @return [String]
    #
    # @!attribute [rw] warm_tier_retention_period
    #   Set this period to specify how long your data is stored in the warm
    #   tier before it is deleted. You can set this only if cold tier is
    #   enabled.
    #   @return [Types::WarmTierRetentionPeriod]
    #
    # @!attribute [rw] disallow_ingest_null_na_n
    #   Describes the configuration for ingesting NULL and NaN data. By
    #   default the feature is allowed. The feature is disallowed if the
    #   value is `true`.
    #   @return [Boolean]
    #
    class PutStorageConfigurationResponse < Struct.new(
      :storage_type,
      :multi_layer_storage,
      :disassociated_data_storage,
      :retention_period,
      :configuration_status,
      :warm_tier,
      :warm_tier_retention_period,
      :disallow_ingest_null_na_n)
      SENSITIVE = []
      include Aws::Structure
    end

    # The query timed out.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class QueryTimeoutException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the reference information.
    #
    # @!attribute [rw] dataset
    #   Contains the dataset reference information.
    #   @return [Types::DataSetReference]
    #
    class Reference < Struct.new(
      :dataset)
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
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of days your data is kept in the hot tier. By default, your
    # data is kept indefinitely in the hot tier.
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

    # Represents a single row in the query results.
    #
    # @!attribute [rw] data
    #   List of data points in a single row of the result set.
    #   @return [Array<Types::Datum>]
    #
    class Row < Struct.new(
      :data)
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

    # Contains details for a SiteWise Edge gateway that runs on a Siemens
    # Industrial Edge Device.
    #
    # @!attribute [rw] iot_core_thing_name
    #   The name of the IoT Thing for your SiteWise Edge gateway.
    #   @return [String]
    #
    class SiemensIE < Struct.new(
      :iot_core_thing_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data source for the dataset.
    #
    # @!attribute [rw] arn
    #   Contains the ARN of the dataset. If the source is Kendra, it's the
    #   ARN of the Kendra index.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   Contains the location information where the cited text is originally
    #   stored. For example, if the data source is Kendra, and the text
    #   synchronized is from an S3 bucket, then the location refers to an S3
    #   object.
    #   @return [Types::Location]
    #
    class Source < Struct.new(
      :arn,
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the dataset source associated with the dataset.
    #
    # @!attribute [rw] kendra
    #   Contains details about the Kendra dataset source.
    #   @return [Types::KendraSourceDetail]
    #
    class SourceDetail < Struct.new(
      :kendra)
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

    # The resource the action will be taken on.
    #
    # @!attribute [rw] asset_id
    #   The ID of the asset, in UUID format.
    #   @return [String]
    #
    class TargetResource < Struct.new(
      :asset_id)
      SENSITIVE = []
      include Aws::Structure
    end

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
      :message,
      :event_type)
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
    #   The ID of the asset property, in UUID format.
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
    #   `arn:${Partition}:iotsitewise:${Region}:${Account}:time-series/${TimeSeriesId}`
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

    # Contains tracing information of the SiteWise Assistant's reasoning
    # and data access.
    #
    # @!attribute [rw] text
    #   The cited text from the data source.
    #   @return [String]
    #
    class Trace < Struct.new(
      :text,
      :event_type)
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
    #   The ID of the asset model, in UUID format.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_composite_model_id
    #   The ID of a composite model on this asset model.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_composite_model_external_id
    #   An external ID to assign to the asset model. You can only set the
    #   external ID of the asset model if it wasn't set when it was
    #   created, or you're setting it to the exact same thing as when it
    #   was created.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_composite_model_description
    #   A description for the composite model.
    #   @return [String]
    #
    # @!attribute [rw] asset_model_composite_model_name
    #   A unique name for the composite model.
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
    # @!attribute [rw] asset_model_composite_model_properties
    #   The property definitions of the composite model. For more
    #   information, see [ Inline custom composite models][1] in the *IoT
    #   SiteWise User Guide*.
    #
    #   You can specify up to 200 properties per composite model. For more
    #   information, see [Quotas][2] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/custom-composite-models.html#inline-composite-models
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html
    #   @return [Array<Types::AssetModelProperty>]
    #
    # @!attribute [rw] if_match
    #   The expected current entity tag (ETag) for the asset model’s latest
    #   or active version (specified using `matchForVersionType`). The
    #   update request is rejected if the tag does not match the latest or
    #   active version's current entity tag. See [Optimistic locking for
    #   asset model writes][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/opt-locking-for-model.html
    #   @return [String]
    #
    # @!attribute [rw] if_none_match
    #   Accepts ***** to reject the update request if an active version
    #   (specified using `matchForVersionType` as `ACTIVE`) already exists
    #   for the asset model.
    #   @return [String]
    #
    # @!attribute [rw] match_for_version_type
    #   Specifies the asset model version type (`LATEST` or `ACTIVE`) used
    #   in conjunction with `If-Match` or `If-None-Match` headers to
    #   determine the target ETag for the update operation.
    #   @return [String]
    #
    class UpdateAssetModelCompositeModelRequest < Struct.new(
      :asset_model_id,
      :asset_model_composite_model_id,
      :asset_model_composite_model_external_id,
      :asset_model_composite_model_description,
      :asset_model_composite_model_name,
      :client_token,
      :asset_model_composite_model_properties,
      :if_match,
      :if_none_match,
      :match_for_version_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_model_composite_model_path
    #   The path to the composite model listing the parent composite models.
    #   @return [Array<Types::AssetModelCompositeModelPathSegment>]
    #
    # @!attribute [rw] asset_model_status
    #   Contains current status information for an asset model. For more
    #   information, see [Asset and model states][1] in the *IoT SiteWise
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-and-model-states.html
    #   @return [Types::AssetModelStatus]
    #
    class UpdateAssetModelCompositeModelResponse < Struct.new(
      :asset_model_composite_model_path,
      :asset_model_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_model_id
    #   The ID of the asset model to update. This can be either the actual
    #   ID in UUID format, or else `externalId:` followed by the external
    #   ID, if it has one. For more information, see [Referencing objects
    #   with external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #   @return [String]
    #
    # @!attribute [rw] asset_model_external_id
    #   An external ID to assign to the asset model. The asset model must
    #   not already have an external ID. The external ID must be unique
    #   within your Amazon Web Services account. For more information, see
    #   [Using external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids
    #   @return [String]
    #
    # @!attribute [rw] asset_model_name
    #   A unique name for the asset model.
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
    #   The composite models that are part of this asset model. It groups
    #   properties (such as attributes, measurements, transforms, and
    #   metrics) and child composite models that model parts of your
    #   industrial equipment. Each composite model has a type that defines
    #   the properties that the composite model supports. Use composite
    #   models to define alarms on this asset model.
    #
    #   <note markdown="1"> When creating custom composite models, you need to use
    #   [CreateAssetModelCompositeModel][1]. For more information, see
    #   [Creating custom composite models (Components)][2] in the *IoT
    #   SiteWise User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModelCompositeModel.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-custom-composite-models.html
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
    # @!attribute [rw] if_match
    #   The expected current entity tag (ETag) for the asset model’s latest
    #   or active version (specified using `matchForVersionType`). The
    #   update request is rejected if the tag does not match the latest or
    #   active version's current entity tag. See [Optimistic locking for
    #   asset model writes][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/opt-locking-for-model.html
    #   @return [String]
    #
    # @!attribute [rw] if_none_match
    #   Accepts ***** to reject the update request if an active version
    #   (specified using `matchForVersionType` as `ACTIVE`) already exists
    #   for the asset model.
    #   @return [String]
    #
    # @!attribute [rw] match_for_version_type
    #   Specifies the asset model version type (`LATEST` or `ACTIVE`) used
    #   in conjunction with `If-Match` or `If-None-Match` headers to
    #   determine the target ETag for the update operation.
    #   @return [String]
    #
    class UpdateAssetModelRequest < Struct.new(
      :asset_model_id,
      :asset_model_external_id,
      :asset_model_name,
      :asset_model_description,
      :asset_model_properties,
      :asset_model_hierarchies,
      :asset_model_composite_models,
      :client_token,
      :if_match,
      :if_none_match,
      :match_for_version_type)
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
    #   The ID of the asset to be updated. This can be either the actual ID
    #   in UUID format, or else `externalId:` followed by the external ID,
    #   if it has one. For more information, see [Referencing objects with
    #   external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #   @return [String]
    #
    # @!attribute [rw] property_id
    #   The ID of the asset property to be updated. This can be either the
    #   actual ID in UUID format, or else `externalId:` followed by the
    #   external ID, if it has one. For more information, see [Referencing
    #   objects with external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
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
    #   The ID of the asset to update. This can be either the actual ID in
    #   UUID format, or else `externalId:` followed by the external ID, if
    #   it has one. For more information, see [Referencing objects with
    #   external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
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
    # @!attribute [rw] asset_external_id
    #   An external ID to assign to the asset. The asset must not already
    #   have an external ID. The external ID must be unique within your
    #   Amazon Web Services account. For more information, see [Using
    #   external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids
    #   @return [String]
    #
    class UpdateAssetRequest < Struct.new(
      :asset_id,
      :asset_name,
      :client_token,
      :asset_description,
      :asset_external_id)
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
    #   The new dashboard definition, as specified in a JSON literal.
    #
    #   * IoT SiteWise Monitor (Classic) see [Create dashboards (CLI)][1]
    #
    #   * IoT SiteWise Monitor (AI-aware) see [Create dashboards (CLI)][2]
    #
    #   in the *IoT SiteWise User Guide*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-ai-dashboard-cli.html
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

    # @!attribute [rw] dataset_id
    #   The ID of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_name
    #   The name of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_description
    #   A description about the dataset, and its functionality.
    #   @return [String]
    #
    # @!attribute [rw] dataset_source
    #   The data source for the dataset.
    #   @return [Types::DatasetSource]
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
    class UpdateDatasetRequest < Struct.new(
      :dataset_id,
      :dataset_name,
      :dataset_description,
      :dataset_source,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_id
    #   The ID of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   The [ARN][1] of the dataset. The format is
    #   `arn:${Partition}:iotsitewise:${Region}:${Account}:dataset/${DatasetId}`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html
    #   @return [String]
    #
    # @!attribute [rw] dataset_status
    #   The status of the dataset. This contains the state and any error
    #   messages. State is `UPDATING` after a successfull call to this API,
    #   and any associated error message. The state is `ACTIVE` when ready
    #   to use.
    #   @return [Types::DatasetStatus]
    #
    class UpdateDatasetResponse < Struct.new(
      :dataset_id,
      :dataset_arn,
      :dataset_status)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   * `NOT_APPLICABLE` – Synchronization is not required for this
    #     capability configuration. This is most common when integrating
    #     partner data sources, because the data integration is handled
    #     externally by the partner.
    #
    #   * `OUT_OF_SYNC` – The gateway hasn't received the capability
    #     configuration.
    #
    #   * `SYNC_FAILED` – The gateway rejected the capability configuration.
    #
    #   * `UNKNOWN` – The synchronization status is currently unknown due to
    #     an undetermined or temporary error.
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
    #   A unique name for the gateway.
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
    # @!attribute [rw] portal_type
    #   Define the type of portal. The value for IoT SiteWise Monitor
    #   (Classic) is `SITEWISE_PORTAL_V1`. The value for IoT SiteWise
    #   Monitor (AI-aware) is `SITEWISE_PORTAL_V2`.
    #   @return [String]
    #
    # @!attribute [rw] portal_type_configuration
    #   The configuration entry associated with the specific portal type.
    #   The value for IoT SiteWise Monitor (Classic) is
    #   `SITEWISE_PORTAL_V1`. The value for IoT SiteWise Monitor (AI-aware)
    #   is `SITEWISE_PORTAL_V2`.
    #   @return [Hash<String,Types::PortalTypeEntry>]
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
      :alarms,
      :portal_type,
      :portal_type_configuration)
      SENSITIVE = [:portal_contact_email, :notification_sender_email]
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

    # The validation failed for this query.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies a property value used in an expression.
    #
    # @!attribute [rw] property_id
    #   The ID of the property to use as the variable. You can use the
    #   property `name` if it's from the same asset model. If the property
    #   has an external ID, you can specify `externalId:` followed by the
    #   external ID. For more information, see [Using external IDs][1] in
    #   the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids
    #   @return [String]
    #
    # @!attribute [rw] hierarchy_id
    #   The ID of the hierarchy to query for the property ID. You can use
    #   the hierarchy's name instead of the hierarchy's ID. If the
    #   hierarchy has an external ID, you can specify `externalId:` followed
    #   by the external ID. For more information, see [Using external
    #   IDs][1] in the *IoT SiteWise User Guide*.
    #
    #   You use a hierarchy ID instead of a model ID because you can have
    #   several hierarchies using the same model and therefore the same
    #   `propertyId`. For example, you might have separately grouped assets
    #   that come from the same asset model. For more information, see
    #   [Asset hierarchies][2] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html
    #   @return [String]
    #
    # @!attribute [rw] property_path
    #   The path of the property.
    #   @return [Array<Types::AssetModelPropertyPathSegment>]
    #
    class VariableValue < Struct.new(
      :property_id,
      :hierarchy_id,
      :property_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an asset property value (of a single type only).
    #
    # @!attribute [rw] string_value
    #   Asset property data of type string (sequence of characters). The
    #   allowed pattern: "^$\|\[^\\u0000-\\u001F\\u007F\]+". The max
    #   length is 1024.
    #   @return [String]
    #
    # @!attribute [rw] integer_value
    #   Asset property data of type integer (whole number).
    #   @return [Integer]
    #
    # @!attribute [rw] double_value
    #   Asset property data of type double (floating point number). The min
    #   value is -10^10. The max value is 10^10. Double.NaN is allowed.
    #   @return [Float]
    #
    # @!attribute [rw] boolean_value
    #   Asset property data of type Boolean (true or false).
    #   @return [Boolean]
    #
    # @!attribute [rw] null_value
    #   The type of null asset property data with BAD and UNCERTAIN
    #   qualities.
    #   @return [Types::PropertyValueNullValue]
    #
    class Variant < Struct.new(
      :string_value,
      :integer_value,
      :double_value,
      :boolean_value,
      :null_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Set this period to specify how long your data is stored in the warm
    # tier before it is deleted. You can set this only if cold tier is
    # enabled.
    #
    # @!attribute [rw] number_of_days
    #   The number of days the data is stored in the warm tier.
    #   @return [Integer]
    #
    # @!attribute [rw] unlimited
    #   If set to true, the data is stored indefinitely in the warm tier.
    #   @return [Boolean]
    #
    class WarmTierRetentionPeriod < Struct.new(
      :number_of_days,
      :unlimited)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response, citation, and trace from the SiteWise
    # Assistant.
    #
    # EventStream is an Enumerator of Events.
    #  #event_types #=> Array, returns all modeled event types in the stream
    #
    class ResponseStream < Enumerator

      def event_types
        [
          :trace,
          :output,
          :access_denied_exception,
          :conflicting_operation_exception,
          :internal_failure_exception,
          :invalid_request_exception,
          :limit_exceeded_exception,
          :resource_not_found_exception,
          :throttling_exception
        ]
      end

    end

  end
end

