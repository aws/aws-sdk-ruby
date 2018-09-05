# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DynamoDB
  module Types

    # Represents an attribute for describing the key schema for the table
    # and indexes.
    #
    # @note When making an API call, you may pass AttributeDefinition
    #   data as a hash:
    #
    #       {
    #         attribute_name: "KeySchemaAttributeName", # required
    #         attribute_type: "S", # required, accepts S, N, B
    #       }
    #
    # @!attribute [rw] attribute_name
    #   A name for the attribute.
    #   @return [String]
    #
    # @!attribute [rw] attribute_type
    #   The data type for the attribute, where:
    #
    #   * `S` - the attribute is of type String
    #
    #   * `N` - the attribute is of type Number
    #
    #   * `B` - the attribute is of type Binary
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/AttributeDefinition AWS API Documentation
    #
    class AttributeDefinition < Struct.new(
      :attribute_name,
      :attribute_type)
      include Aws::Structure
    end

    # Represents the data for an attribute.
    #
    # Each attribute value is described as a name-value pair. The name is
    # the data type, and the value is the data itself.
    #
    # For more information, see [Data Types][1] in the *Amazon DynamoDB
    # Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html#HowItWorks.DataTypes
    #
    # @note When making an API call, you may pass AttributeValue
    #   data as a hash:
    #
    #       {
    #         s: "StringAttributeValue",
    #         n: "NumberAttributeValue",
    #         b: "data",
    #         ss: ["StringAttributeValue"],
    #         ns: ["NumberAttributeValue"],
    #         bs: ["data"],
    #         m: {
    #           "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         },
    #         l: ["value"], # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         null: false,
    #         bool: false,
    #       }
    #
    # @!attribute [rw] s
    #   An attribute of type String. For example:
    #
    #   `"S": "Hello"`
    #   @return [String]
    #
    # @!attribute [rw] n
    #   An attribute of type Number. For example:
    #
    #   `"N": "123.45"`
    #
    #   Numbers are sent across the network to DynamoDB as strings, to
    #   maximize compatibility across languages and libraries. However,
    #   DynamoDB treats them as number type attributes for mathematical
    #   operations.
    #   @return [String]
    #
    # @!attribute [rw] b
    #   An attribute of type Binary. For example:
    #
    #   `"B": "dGhpcyB0ZXh0IGlzIGJhc2U2NC1lbmNvZGVk"`
    #   @return [String]
    #
    # @!attribute [rw] ss
    #   An attribute of type String Set. For example:
    #
    #   `"SS": ["Giraffe", "Hippo" ,"Zebra"]`
    #   @return [Array<String>]
    #
    # @!attribute [rw] ns
    #   An attribute of type Number Set. For example:
    #
    #   `"NS": ["42.2", "-19", "7.5", "3.14"]`
    #
    #   Numbers are sent across the network to DynamoDB as strings, to
    #   maximize compatibility across languages and libraries. However,
    #   DynamoDB treats them as number type attributes for mathematical
    #   operations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] bs
    #   An attribute of type Binary Set. For example:
    #
    #   `"BS": ["U3Vubnk=", "UmFpbnk=", "U25vd3k="]`
    #   @return [Array<String>]
    #
    # @!attribute [rw] m
    #   An attribute of type Map. For example:
    #
    #   `"M": \{"Name": \{"S": "Joe"\}, "Age": \{"N": "35"\}\}`
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @!attribute [rw] l
    #   An attribute of type List. For example:
    #
    #   `"L": ["Cookies", "Coffee", 3.14159]`
    #   @return [Array<Types::AttributeValue>]
    #
    # @!attribute [rw] null
    #   An attribute of type Null. For example:
    #
    #   `"NULL": true`
    #   @return [Boolean]
    #
    # @!attribute [rw] bool
    #   An attribute of type Boolean. For example:
    #
    #   `"BOOL": true`
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/AttributeValue AWS API Documentation
    #
    class AttributeValue < Struct.new(
      :s,
      :n,
      :b,
      :ss,
      :ns,
      :bs,
      :m,
      :l,
      :null,
      :bool)
      include Aws::Structure
    end

    # For the `UpdateItem` operation, represents the attributes to be
    # modified, the action to perform on each, and the new value for each.
    #
    # <note markdown="1"> You cannot use `UpdateItem` to update any primary key attributes.
    # Instead, you will need to delete the item, and then use `PutItem` to
    # create a new item with new attributes.
    #
    #  </note>
    #
    # Attribute values cannot be null; string and binary type attributes
    # must have lengths greater than zero; and set type attributes must not
    # be empty. Requests with empty values will be rejected with a
    # `ValidationException` exception.
    #
    # @note When making an API call, you may pass AttributeValueUpdate
    #   data as a hash:
    #
    #       {
    #         value: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         action: "ADD", # accepts ADD, PUT, DELETE
    #       }
    #
    # @!attribute [rw] value
    #   Represents the data for an attribute.
    #
    #   Each attribute value is described as a name-value pair. The name is
    #   the data type, and the value is the data itself.
    #
    #   For more information, see [Data Types][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html#HowItWorks.DataTypes
    #   @return [Types::AttributeValue]
    #
    # @!attribute [rw] action
    #   Specifies how to perform the update. Valid values are `PUT`
    #   (default), `DELETE`, and `ADD`. The behavior depends on whether the
    #   specified primary key already exists in the table.
    #
    #   **If an item with the specified *Key* is found in the table:**
    #
    #   * `PUT` - Adds the specified attribute to the item. If the attribute
    #     already exists, it is replaced by the new value.
    #
    #   * `DELETE` - If no value is specified, the attribute and its value
    #     are removed from the item. The data type of the specified value
    #     must match the existing value's data type.
    #
    #     If a *set* of values is specified, then those values are
    #     subtracted from the old set. For example, if the attribute value
    #     was the set `[a,b,c]` and the `DELETE` action specified `[a,c]`,
    #     then the final attribute value would be `[b]`. Specifying an empty
    #     set is an error.
    #
    #   * `ADD` - If the attribute does not already exist, then the
    #     attribute and its values are added to the item. If the attribute
    #     does exist, then the behavior of `ADD` depends on the data type of
    #     the attribute:
    #
    #     * If the existing attribute is a number, and if `Value` is also a
    #       number, then the `Value` is mathematically added to the existing
    #       attribute. If `Value` is a negative number, then it is
    #       subtracted from the existing attribute.
    #
    #       <note markdown="1"> If you use `ADD` to increment or decrement a number value for an
    #       item that doesn't exist before the update, DynamoDB uses 0 as
    #       the initial value.
    #
    #        In addition, if you use `ADD` to update an existing item, and
    #       intend to increment or decrement an attribute value which does
    #       not yet exist, DynamoDB uses `0` as the initial value. For
    #       example, suppose that the item you want to update does not yet
    #       have an attribute named *itemcount*, but you decide to `ADD` the
    #       number `3` to this attribute anyway, even though it currently
    #       does not exist. DynamoDB will create the *itemcount* attribute,
    #       set its initial value to `0`, and finally add `3` to it. The
    #       result will be a new *itemcount* attribute in the item, with a
    #       value of `3`.
    #
    #        </note>
    #
    #     * If the existing data type is a set, and if the `Value` is also a
    #       set, then the `Value` is added to the existing set. (This is a
    #       *set* operation, not mathematical addition.) For example, if the
    #       attribute value was the set `[1,2]`, and the `ADD` action
    #       specified `[3]`, then the final attribute value would be
    #       `[1,2,3]`. An error occurs if an Add action is specified for a
    #       set attribute and the attribute type specified does not match
    #       the existing set type.
    #
    #       Both sets must have the same primitive data type. For example,
    #       if the existing data type is a set of strings, the `Value` must
    #       also be a set of strings. The same holds true for number sets
    #       and binary sets.
    #
    #     This action is only valid for an existing attribute whose data
    #     type is number or is a set. Do not use `ADD` for any other data
    #     types.
    #
    #   **If no item with the specified *Key* is found:**
    #
    #   * `PUT` - DynamoDB creates a new item with the specified primary
    #     key, and then adds the attribute.
    #
    #   * `DELETE` - Nothing happens; there is no attribute to delete.
    #
    #   * `ADD` - DynamoDB creates an item with the supplied primary key and
    #     number (or set of numbers) for the attribute value. The only data
    #     types allowed are number and number set; no other data types can
    #     be specified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/AttributeValueUpdate AWS API Documentation
    #
    class AttributeValueUpdate < Struct.new(
      :value,
      :action)
      include Aws::Structure
    end

    # Represents the properties of the scaling policy.
    #
    # @!attribute [rw] policy_name
    #   The name of the scaling policy.
    #   @return [String]
    #
    # @!attribute [rw] target_tracking_scaling_policy_configuration
    #   Represents a target tracking scaling policy configuration.
    #   @return [Types::AutoScalingTargetTrackingScalingPolicyConfigurationDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/AutoScalingPolicyDescription AWS API Documentation
    #
    class AutoScalingPolicyDescription < Struct.new(
      :policy_name,
      :target_tracking_scaling_policy_configuration)
      include Aws::Structure
    end

    # Represents the autoscaling policy to be modified.
    #
    # @note When making an API call, you may pass AutoScalingPolicyUpdate
    #   data as a hash:
    #
    #       {
    #         policy_name: "AutoScalingPolicyName",
    #         target_tracking_scaling_policy_configuration: { # required
    #           disable_scale_in: false,
    #           scale_in_cooldown: 1,
    #           scale_out_cooldown: 1,
    #           target_value: 1.0, # required
    #         },
    #       }
    #
    # @!attribute [rw] policy_name
    #   The name of the scaling policy.
    #   @return [String]
    #
    # @!attribute [rw] target_tracking_scaling_policy_configuration
    #   Represents a target tracking scaling policy configuration.
    #   @return [Types::AutoScalingTargetTrackingScalingPolicyConfigurationUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/AutoScalingPolicyUpdate AWS API Documentation
    #
    class AutoScalingPolicyUpdate < Struct.new(
      :policy_name,
      :target_tracking_scaling_policy_configuration)
      include Aws::Structure
    end

    # Represents the autoscaling settings for a global table or global
    # secondary index.
    #
    # @!attribute [rw] minimum_units
    #   The minimum capacity units that a global table or global secondary
    #   index should be scaled down to.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_units
    #   The maximum capacity units that a global table or global secondary
    #   index should be scaled up to.
    #   @return [Integer]
    #
    # @!attribute [rw] auto_scaling_disabled
    #   Disabled autoscaling for this global table or global secondary
    #   index.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_scaling_role_arn
    #   Role ARN used for configuring autoScaling policy.
    #   @return [String]
    #
    # @!attribute [rw] scaling_policies
    #   Information about the scaling policies.
    #   @return [Array<Types::AutoScalingPolicyDescription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/AutoScalingSettingsDescription AWS API Documentation
    #
    class AutoScalingSettingsDescription < Struct.new(
      :minimum_units,
      :maximum_units,
      :auto_scaling_disabled,
      :auto_scaling_role_arn,
      :scaling_policies)
      include Aws::Structure
    end

    # Represents the autoscaling settings to be modified for a global table
    # or global secondary index.
    #
    # @note When making an API call, you may pass AutoScalingSettingsUpdate
    #   data as a hash:
    #
    #       {
    #         minimum_units: 1,
    #         maximum_units: 1,
    #         auto_scaling_disabled: false,
    #         auto_scaling_role_arn: "AutoScalingRoleArn",
    #         scaling_policy_update: {
    #           policy_name: "AutoScalingPolicyName",
    #           target_tracking_scaling_policy_configuration: { # required
    #             disable_scale_in: false,
    #             scale_in_cooldown: 1,
    #             scale_out_cooldown: 1,
    #             target_value: 1.0, # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] minimum_units
    #   The minimum capacity units that a global table or global secondary
    #   index should be scaled down to.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_units
    #   The maximum capacity units that a global table or global secondary
    #   index should be scaled up to.
    #   @return [Integer]
    #
    # @!attribute [rw] auto_scaling_disabled
    #   Disabled autoscaling for this global table or global secondary
    #   index.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_scaling_role_arn
    #   Role ARN used for configuring autoscaling policy.
    #   @return [String]
    #
    # @!attribute [rw] scaling_policy_update
    #   The scaling policy to apply for scaling target global table or
    #   global secondary index capacity units.
    #   @return [Types::AutoScalingPolicyUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/AutoScalingSettingsUpdate AWS API Documentation
    #
    class AutoScalingSettingsUpdate < Struct.new(
      :minimum_units,
      :maximum_units,
      :auto_scaling_disabled,
      :auto_scaling_role_arn,
      :scaling_policy_update)
      include Aws::Structure
    end

    # Represents the properties of a target tracking scaling policy.
    #
    # @!attribute [rw] disable_scale_in
    #   Indicates whether scale in by the target tracking policy is
    #   disabled. If the value is true, scale in is disabled and the target
    #   tracking policy won't remove capacity from the scalable resource.
    #   Otherwise, scale in is enabled and the target tracking policy can
    #   remove capacity from the scalable resource. The default value is
    #   false.
    #   @return [Boolean]
    #
    # @!attribute [rw] scale_in_cooldown
    #   The amount of time, in seconds, after a scale in activity completes
    #   before another scale in activity can start. The cooldown period is
    #   used to block subsequent scale in requests until it has expired. You
    #   should scale in conservatively to protect your application's
    #   availability. However, if another alarm triggers a scale out policy
    #   during the cooldown period after a scale-in, application autoscaling
    #   scales out your scalable target immediately.
    #   @return [Integer]
    #
    # @!attribute [rw] scale_out_cooldown
    #   The amount of time, in seconds, after a scale out activity completes
    #   before another scale out activity can start. While the cooldown
    #   period is in effect, the capacity that has been added by the
    #   previous scale out event that initiated the cooldown is calculated
    #   as part of the desired capacity for the next scale out. You should
    #   continuously (but not excessively) scale out.
    #   @return [Integer]
    #
    # @!attribute [rw] target_value
    #   The target value for the metric. The range is 8.515920e-109 to
    #   1.174271e+108 (Base 10) or 2e-360 to 2e360 (Base 2).
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/AutoScalingTargetTrackingScalingPolicyConfigurationDescription AWS API Documentation
    #
    class AutoScalingTargetTrackingScalingPolicyConfigurationDescription < Struct.new(
      :disable_scale_in,
      :scale_in_cooldown,
      :scale_out_cooldown,
      :target_value)
      include Aws::Structure
    end

    # Represents the settings of a target tracking scaling policy that will
    # be modified.
    #
    # @note When making an API call, you may pass AutoScalingTargetTrackingScalingPolicyConfigurationUpdate
    #   data as a hash:
    #
    #       {
    #         disable_scale_in: false,
    #         scale_in_cooldown: 1,
    #         scale_out_cooldown: 1,
    #         target_value: 1.0, # required
    #       }
    #
    # @!attribute [rw] disable_scale_in
    #   Indicates whether scale in by the target tracking policy is
    #   disabled. If the value is true, scale in is disabled and the target
    #   tracking policy won't remove capacity from the scalable resource.
    #   Otherwise, scale in is enabled and the target tracking policy can
    #   remove capacity from the scalable resource. The default value is
    #   false.
    #   @return [Boolean]
    #
    # @!attribute [rw] scale_in_cooldown
    #   The amount of time, in seconds, after a scale in activity completes
    #   before another scale in activity can start. The cooldown period is
    #   used to block subsequent scale in requests until it has expired. You
    #   should scale in conservatively to protect your application's
    #   availability. However, if another alarm triggers a scale out policy
    #   during the cooldown period after a scale-in, application autoscaling
    #   scales out your scalable target immediately.
    #   @return [Integer]
    #
    # @!attribute [rw] scale_out_cooldown
    #   The amount of time, in seconds, after a scale out activity completes
    #   before another scale out activity can start. While the cooldown
    #   period is in effect, the capacity that has been added by the
    #   previous scale out event that initiated the cooldown is calculated
    #   as part of the desired capacity for the next scale out. You should
    #   continuously (but not excessively) scale out.
    #   @return [Integer]
    #
    # @!attribute [rw] target_value
    #   The target value for the metric. The range is 8.515920e-109 to
    #   1.174271e+108 (Base 10) or 2e-360 to 2e360 (Base 2).
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/AutoScalingTargetTrackingScalingPolicyConfigurationUpdate AWS API Documentation
    #
    class AutoScalingTargetTrackingScalingPolicyConfigurationUpdate < Struct.new(
      :disable_scale_in,
      :scale_in_cooldown,
      :scale_out_cooldown,
      :target_value)
      include Aws::Structure
    end

    # Contains the description of the backup created for the table.
    #
    # @!attribute [rw] backup_details
    #   Contains the details of the backup created for the table.
    #   @return [Types::BackupDetails]
    #
    # @!attribute [rw] source_table_details
    #   Contains the details of the table when the backup was created.
    #   @return [Types::SourceTableDetails]
    #
    # @!attribute [rw] source_table_feature_details
    #   Contains the details of the features enabled on the table when the
    #   backup was created. For example, LSIs, GSIs, streams, TTL.
    #   @return [Types::SourceTableFeatureDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/BackupDescription AWS API Documentation
    #
    class BackupDescription < Struct.new(
      :backup_details,
      :source_table_details,
      :source_table_feature_details)
      include Aws::Structure
    end

    # Contains the details of the backup created for the table.
    #
    # @!attribute [rw] backup_arn
    #   ARN associated with the backup.
    #   @return [String]
    #
    # @!attribute [rw] backup_name
    #   Name of the requested backup.
    #   @return [String]
    #
    # @!attribute [rw] backup_size_bytes
    #   Size of the backup in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] backup_status
    #   Backup can be in one of the following states: CREATING, ACTIVE,
    #   DELETED.
    #   @return [String]
    #
    # @!attribute [rw] backup_type
    #   BackupType:
    #
    #   * `USER` - On-demand backup created by you.
    #
    #   * `SYSTEM` - On-demand backup automatically created by DynamoDB.
    #   @return [String]
    #
    # @!attribute [rw] backup_creation_date_time
    #   Time at which the backup was created. This is the request time of
    #   the backup.
    #   @return [Time]
    #
    # @!attribute [rw] backup_expiry_date_time
    #   Time at which the automatic on-demand backup created by DynamoDB
    #   will expire. This `SYSTEM` on-demand backup expires automatically 35
    #   days after its creation.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/BackupDetails AWS API Documentation
    #
    class BackupDetails < Struct.new(
      :backup_arn,
      :backup_name,
      :backup_size_bytes,
      :backup_status,
      :backup_type,
      :backup_creation_date_time,
      :backup_expiry_date_time)
      include Aws::Structure
    end

    # Contains details for the backup.
    #
    # @!attribute [rw] table_name
    #   Name of the table.
    #   @return [String]
    #
    # @!attribute [rw] table_id
    #   Unique identifier for the table.
    #   @return [String]
    #
    # @!attribute [rw] table_arn
    #   ARN associated with the table.
    #   @return [String]
    #
    # @!attribute [rw] backup_arn
    #   ARN associated with the backup.
    #   @return [String]
    #
    # @!attribute [rw] backup_name
    #   Name of the specified backup.
    #   @return [String]
    #
    # @!attribute [rw] backup_creation_date_time
    #   Time at which the backup was created.
    #   @return [Time]
    #
    # @!attribute [rw] backup_expiry_date_time
    #   Time at which the automatic on-demand backup created by DynamoDB
    #   will expire. This `SYSTEM` on-demand backup expires automatically 35
    #   days after its creation.
    #   @return [Time]
    #
    # @!attribute [rw] backup_status
    #   Backup can be in one of the following states: CREATING, ACTIVE,
    #   DELETED.
    #   @return [String]
    #
    # @!attribute [rw] backup_type
    #   BackupType:
    #
    #   * `USER` - On-demand backup created by you.
    #
    #   * `SYSTEM` - On-demand backup automatically created by DynamoDB.
    #   @return [String]
    #
    # @!attribute [rw] backup_size_bytes
    #   Size of the backup in bytes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/BackupSummary AWS API Documentation
    #
    class BackupSummary < Struct.new(
      :table_name,
      :table_id,
      :table_arn,
      :backup_arn,
      :backup_name,
      :backup_creation_date_time,
      :backup_expiry_date_time,
      :backup_status,
      :backup_type,
      :backup_size_bytes)
      include Aws::Structure
    end

    # Represents the input of a `BatchGetItem` operation.
    #
    # @note When making an API call, you may pass BatchGetItemInput
    #   data as a hash:
    #
    #       {
    #         request_items: { # required
    #           "TableName" => {
    #             keys: [ # required
    #               {
    #                 "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #               },
    #             ],
    #             attributes_to_get: ["AttributeName"],
    #             consistent_read: false,
    #             projection_expression: "ProjectionExpression",
    #             expression_attribute_names: {
    #               "ExpressionAttributeNameVariable" => "AttributeName",
    #             },
    #           },
    #         },
    #         return_consumed_capacity: "INDEXES", # accepts INDEXES, TOTAL, NONE
    #       }
    #
    # @!attribute [rw] request_items
    #   A map of one or more table names and, for each table, a map that
    #   describes one or more items to retrieve from that table. Each table
    #   name can be used only once per `BatchGetItem` request.
    #
    #   Each element in the map of items to retrieve consists of the
    #   following:
    #
    #   * `ConsistentRead` - If `true`, a strongly consistent read is used;
    #     if `false` (the default), an eventually consistent read is used.
    #
    #   * `ExpressionAttributeNames` - One or more substitution tokens for
    #     attribute names in the `ProjectionExpression` parameter. The
    #     following are some use cases for using
    #     `ExpressionAttributeNames`\:
    #
    #     * To access an attribute whose name conflicts with a DynamoDB
    #       reserved word.
    #
    #     * To create a placeholder for repeating occurrences of an
    #       attribute name in an expression.
    #
    #     * To prevent special characters in an attribute name from being
    #       misinterpreted in an expression.
    #
    #     Use the **#** character in an expression to dereference an
    #     attribute name. For example, consider the following attribute
    #     name:
    #
    #     * `Percentile`
    #
    #     ^
    #
    #     The name of this attribute conflicts with a reserved word, so it
    #     cannot be used directly in an expression. (For the complete list
    #     of reserved words, see [Reserved Words][1] in the *Amazon DynamoDB
    #     Developer Guide*). To work around this, you could specify the
    #     following for `ExpressionAttributeNames`\:
    #
    #     * `\{"#P":"Percentile"\}`
    #
    #     ^
    #
    #     You could then use this substitution in an expression, as in this
    #     example:
    #
    #     * `#P = :val`
    #
    #     ^
    #
    #     <note markdown="1"> Tokens that begin with the **\:** character are *expression
    #     attribute values*, which are placeholders for the actual value at
    #     runtime.
    #
    #      </note>
    #
    #     For more information on expression attribute names, see [Accessing
    #     Item Attributes][2] in the *Amazon DynamoDB Developer Guide*.
    #
    #   * `Keys` - An array of primary key attribute values that define
    #     specific items in the table. For each primary key, you must
    #     provide *all* of the key attributes. For example, with a simple
    #     primary key, you only need to provide the partition key value. For
    #     a composite key, you must provide *both* the partition key value
    #     and the sort key value.
    #
    #   * `ProjectionExpression` - A string that identifies one or more
    #     attributes to retrieve from the table. These attributes can
    #     include scalars, sets, or elements of a JSON document. The
    #     attributes in the expression must be separated by commas.
    #
    #     If no attribute names are specified, then all attributes will be
    #     returned. If any of the requested attributes are not found, they
    #     will not appear in the result.
    #
    #     For more information, see [Accessing Item Attributes][2] in the
    #     *Amazon DynamoDB Developer Guide*.
    #
    #   * `AttributesToGet` - This is a legacy parameter. Use
    #     `ProjectionExpression` instead. For more information, see
    #     [AttributesToGet][3] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
    #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    #   [3]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html
    #   @return [Hash<String,Types::KeysAndAttributes>]
    #
    # @!attribute [rw] return_consumed_capacity
    #   Determines the level of detail about provisioned throughput
    #   consumption that is returned in the response:
    #
    #   * `INDEXES` - The response includes the aggregate `ConsumedCapacity`
    #     for the operation, together with `ConsumedCapacity` for each table
    #     and secondary index that was accessed.
    #
    #     Note that some operations, such as `GetItem` and `BatchGetItem`,
    #     do not access any indexes at all. In these cases, specifying
    #     `INDEXES` will only return `ConsumedCapacity` information for
    #     table(s).
    #
    #   * `TOTAL` - The response includes only the aggregate
    #     `ConsumedCapacity` for the operation.
    #
    #   * `NONE` - No `ConsumedCapacity` details are included in the
    #     response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/BatchGetItemInput AWS API Documentation
    #
    class BatchGetItemInput < Struct.new(
      :request_items,
      :return_consumed_capacity)
      include Aws::Structure
    end

    # Represents the output of a `BatchGetItem` operation.
    #
    # @!attribute [rw] responses
    #   A map of table name to a list of items. Each object in `Responses`
    #   consists of a table name, along with a map of attribute data
    #   consisting of the data type and attribute value.
    #   @return [Hash<String,Array<Hash<String,Types::AttributeValue>>>]
    #
    # @!attribute [rw] unprocessed_keys
    #   A map of tables and their respective keys that were not processed
    #   with the current response. The `UnprocessedKeys` value is in the
    #   same form as `RequestItems`, so the value can be provided directly
    #   to a subsequent `BatchGetItem` operation. For more information, see
    #   `RequestItems` in the Request Parameters section.
    #
    #   Each element consists of:
    #
    #   * `Keys` - An array of primary key attribute values that define
    #     specific items in the table.
    #
    #   * `ProjectionExpression` - One or more attributes to be retrieved
    #     from the table or index. By default, all attributes are returned.
    #     If a requested attribute is not found, it does not appear in the
    #     result.
    #
    #   * `ConsistentRead` - The consistency of a read operation. If set to
    #     `true`, then a strongly consistent read is used; otherwise, an
    #     eventually consistent read is used.
    #
    #   If there are no unprocessed keys remaining, the response contains an
    #   empty `UnprocessedKeys` map.
    #   @return [Hash<String,Types::KeysAndAttributes>]
    #
    # @!attribute [rw] consumed_capacity
    #   The read capacity units consumed by the entire `BatchGetItem`
    #   operation.
    #
    #   Each element consists of:
    #
    #   * `TableName` - The table that consumed the provisioned throughput.
    #
    #   * `CapacityUnits` - The total number of capacity units consumed.
    #   @return [Array<Types::ConsumedCapacity>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/BatchGetItemOutput AWS API Documentation
    #
    class BatchGetItemOutput < Struct.new(
      :responses,
      :unprocessed_keys,
      :consumed_capacity)
      include Aws::Structure
    end

    # Represents the input of a `BatchWriteItem` operation.
    #
    # @note When making an API call, you may pass BatchWriteItemInput
    #   data as a hash:
    #
    #       {
    #         request_items: { # required
    #           "TableName" => [
    #             {
    #               put_request: {
    #                 item: { # required
    #                   "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #                 },
    #               },
    #               delete_request: {
    #                 key: { # required
    #                   "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #                 },
    #               },
    #             },
    #           ],
    #         },
    #         return_consumed_capacity: "INDEXES", # accepts INDEXES, TOTAL, NONE
    #         return_item_collection_metrics: "SIZE", # accepts SIZE, NONE
    #       }
    #
    # @!attribute [rw] request_items
    #   A map of one or more table names and, for each table, a list of
    #   operations to be performed (`DeleteRequest` or `PutRequest`). Each
    #   element in the map consists of the following:
    #
    #   * `DeleteRequest` - Perform a `DeleteItem` operation on the
    #     specified item. The item to be deleted is identified by a `Key`
    #     subelement:
    #
    #     * `Key` - A map of primary key attribute values that uniquely
    #       identify the item. Each entry in this map consists of an
    #       attribute name and an attribute value. For each primary key, you
    #       must provide *all* of the key attributes. For example, with a
    #       simple primary key, you only need to provide a value for the
    #       partition key. For a composite primary key, you must provide
    #       values for *both* the partition key and the sort key.
    #
    #     ^
    #
    #   * `PutRequest` - Perform a `PutItem` operation on the specified
    #     item. The item to be put is identified by an `Item` subelement:
    #
    #     * `Item` - A map of attributes and their values. Each entry in
    #       this map consists of an attribute name and an attribute value.
    #       Attribute values must not be null; string and binary type
    #       attributes must have lengths greater than zero; and set type
    #       attributes must not be empty. Requests that contain empty values
    #       will be rejected with a `ValidationException` exception.
    #
    #       If you specify any attributes that are part of an index key,
    #       then the data types for those attributes must match those of the
    #       schema in the table's attribute definition.
    #   @return [Hash<String,Array<Types::WriteRequest>>]
    #
    # @!attribute [rw] return_consumed_capacity
    #   Determines the level of detail about provisioned throughput
    #   consumption that is returned in the response:
    #
    #   * `INDEXES` - The response includes the aggregate `ConsumedCapacity`
    #     for the operation, together with `ConsumedCapacity` for each table
    #     and secondary index that was accessed.
    #
    #     Note that some operations, such as `GetItem` and `BatchGetItem`,
    #     do not access any indexes at all. In these cases, specifying
    #     `INDEXES` will only return `ConsumedCapacity` information for
    #     table(s).
    #
    #   * `TOTAL` - The response includes only the aggregate
    #     `ConsumedCapacity` for the operation.
    #
    #   * `NONE` - No `ConsumedCapacity` details are included in the
    #     response.
    #   @return [String]
    #
    # @!attribute [rw] return_item_collection_metrics
    #   Determines whether item collection metrics are returned. If set to
    #   `SIZE`, the response includes statistics about item collections, if
    #   any, that were modified during the operation are returned in the
    #   response. If set to `NONE` (the default), no statistics are
    #   returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/BatchWriteItemInput AWS API Documentation
    #
    class BatchWriteItemInput < Struct.new(
      :request_items,
      :return_consumed_capacity,
      :return_item_collection_metrics)
      include Aws::Structure
    end

    # Represents the output of a `BatchWriteItem` operation.
    #
    # @!attribute [rw] unprocessed_items
    #   A map of tables and requests against those tables that were not
    #   processed. The `UnprocessedItems` value is in the same form as
    #   `RequestItems`, so you can provide this value directly to a
    #   subsequent `BatchGetItem` operation. For more information, see
    #   `RequestItems` in the Request Parameters section.
    #
    #   Each `UnprocessedItems` entry consists of a table name and, for that
    #   table, a list of operations to perform (`DeleteRequest` or
    #   `PutRequest`).
    #
    #   * `DeleteRequest` - Perform a `DeleteItem` operation on the
    #     specified item. The item to be deleted is identified by a `Key`
    #     subelement:
    #
    #     * `Key` - A map of primary key attribute values that uniquely
    #       identify the item. Each entry in this map consists of an
    #       attribute name and an attribute value.
    #
    #     ^
    #
    #   * `PutRequest` - Perform a `PutItem` operation on the specified
    #     item. The item to be put is identified by an `Item` subelement:
    #
    #     * `Item` - A map of attributes and their values. Each entry in
    #       this map consists of an attribute name and an attribute value.
    #       Attribute values must not be null; string and binary type
    #       attributes must have lengths greater than zero; and set type
    #       attributes must not be empty. Requests that contain empty values
    #       will be rejected with a `ValidationException` exception.
    #
    #       If you specify any attributes that are part of an index key,
    #       then the data types for those attributes must match those of the
    #       schema in the table's attribute definition.
    #
    #   If there are no unprocessed items remaining, the response contains
    #   an empty `UnprocessedItems` map.
    #   @return [Hash<String,Array<Types::WriteRequest>>]
    #
    # @!attribute [rw] item_collection_metrics
    #   A list of tables that were processed by `BatchWriteItem` and, for
    #   each table, information about any item collections that were
    #   affected by individual `DeleteItem` or `PutItem` operations.
    #
    #   Each entry consists of the following subelements:
    #
    #   * `ItemCollectionKey` - The partition key value of the item
    #     collection. This is the same as the partition key value of the
    #     item.
    #
    #   * `SizeEstimateRangeGB` - An estimate of item collection size,
    #     expressed in GB. This is a two-element array containing a lower
    #     bound and an upper bound for the estimate. The estimate includes
    #     the size of all the items in the table, plus the size of all
    #     attributes projected into all of the local secondary indexes on
    #     the table. Use this estimate to measure whether a local secondary
    #     index is approaching its size limit.
    #
    #     The estimate is subject to change over time; therefore, do not
    #     rely on the precision or accuracy of the estimate.
    #   @return [Hash<String,Array<Types::ItemCollectionMetrics>>]
    #
    # @!attribute [rw] consumed_capacity
    #   The capacity units consumed by the entire `BatchWriteItem`
    #   operation.
    #
    #   Each element consists of:
    #
    #   * `TableName` - The table that consumed the provisioned throughput.
    #
    #   * `CapacityUnits` - The total number of capacity units consumed.
    #   @return [Array<Types::ConsumedCapacity>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/BatchWriteItemOutput AWS API Documentation
    #
    class BatchWriteItemOutput < Struct.new(
      :unprocessed_items,
      :item_collection_metrics,
      :consumed_capacity)
      include Aws::Structure
    end

    # Represents the amount of provisioned throughput capacity consumed on a
    # table or an index.
    #
    # @!attribute [rw] capacity_units
    #   The total number of capacity units consumed on a table or an index.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/Capacity AWS API Documentation
    #
    class Capacity < Struct.new(
      :capacity_units)
      include Aws::Structure
    end

    # Represents the selection criteria for a `Query` or `Scan` operation:
    #
    # * For a `Query` operation, `Condition` is used for specifying the
    #   `KeyConditions` to use when querying a table or an index. For
    #   `KeyConditions`, only the following comparison operators are
    #   supported:
    #
    #   `EQ | LE | LT | GE | GT | BEGINS_WITH | BETWEEN`
    #
    #   `Condition` is also used in a `QueryFilter`, which evaluates the
    #   query results and returns only the desired values.
    #
    # * For a `Scan` operation, `Condition` is used in a `ScanFilter`, which
    #   evaluates the scan results and returns only the desired values.
    #
    # @note When making an API call, you may pass Condition
    #   data as a hash:
    #
    #       {
    #         attribute_value_list: ["value"], # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         comparison_operator: "EQ", # required, accepts EQ, NE, IN, LE, LT, GE, GT, BETWEEN, NOT_NULL, NULL, CONTAINS, NOT_CONTAINS, BEGINS_WITH
    #       }
    #
    # @!attribute [rw] attribute_value_list
    #   One or more values to evaluate against the supplied attribute. The
    #   number of values in the list depends on the `ComparisonOperator`
    #   being used.
    #
    #   For type Number, value comparisons are numeric.
    #
    #   String value comparisons for greater than, equals, or less than are
    #   based on ASCII character code values. For example, `a` is greater
    #   than `A`, and `a` is greater than `B`. For a list of code values,
    #   see
    #   [http://en.wikipedia.org/wiki/ASCII#ASCII\_printable\_characters][1].
    #
    #   For Binary, DynamoDB treats each byte of the binary data as unsigned
    #   when it compares binary values.
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters
    #   @return [Array<Types::AttributeValue>]
    #
    # @!attribute [rw] comparison_operator
    #   A comparator for evaluating attributes. For example, equals, greater
    #   than, less than, etc.
    #
    #   The following comparison operators are available:
    #
    #   `EQ | NE | LE | LT | GE | GT | NOT_NULL | NULL | CONTAINS |
    #   NOT_CONTAINS | BEGINS_WITH | IN | BETWEEN`
    #
    #   The following are descriptions of each comparison operator.
    #
    #   * `EQ`\: Equal. `EQ` is supported for all data types, including
    #     lists and maps.
    #
    #     `AttributeValueList` can contain only one `AttributeValue` element
    #     of type String, Number, Binary, String Set, Number Set, or Binary
    #     Set. If an item contains an `AttributeValue` element of a
    #     different type than the one provided in the request, the value
    #     does not match. For example, `\{"S":"6"\}` does not equal
    #     `\{"N":"6"\}`. Also, `\{"N":"6"\}` does not equal `\{"NS":["6",
    #     "2", "1"]\}`.
    #
    #
    #
    #   * `NE`\: Not equal. `NE` is supported for all data types, including
    #     lists and maps.
    #
    #     `AttributeValueList` can contain only one `AttributeValue` of type
    #     String, Number, Binary, String Set, Number Set, or Binary Set. If
    #     an item contains an `AttributeValue` of a different type than the
    #     one provided in the request, the value does not match. For
    #     example, `\{"S":"6"\}` does not equal `\{"N":"6"\}`. Also,
    #     `\{"N":"6"\}` does not equal `\{"NS":["6", "2", "1"]\}`.
    #
    #
    #
    #   * `LE`\: Less than or equal.
    #
    #     `AttributeValueList` can contain only one `AttributeValue` element
    #     of type String, Number, or Binary (not a set type). If an item
    #     contains an `AttributeValue` element of a different type than the
    #     one provided in the request, the value does not match. For
    #     example, `\{"S":"6"\}` does not equal `\{"N":"6"\}`. Also,
    #     `\{"N":"6"\}` does not compare to `\{"NS":["6", "2", "1"]\}`.
    #
    #
    #
    #   * `LT`\: Less than.
    #
    #     `AttributeValueList` can contain only one `AttributeValue` of type
    #     String, Number, or Binary (not a set type). If an item contains an
    #     `AttributeValue` element of a different type than the one provided
    #     in the request, the value does not match. For example,
    #     `\{"S":"6"\}` does not equal `\{"N":"6"\}`. Also, `\{"N":"6"\}`
    #     does not compare to `\{"NS":["6", "2", "1"]\}`.
    #
    #
    #
    #   * `GE`\: Greater than or equal.
    #
    #     `AttributeValueList` can contain only one `AttributeValue` element
    #     of type String, Number, or Binary (not a set type). If an item
    #     contains an `AttributeValue` element of a different type than the
    #     one provided in the request, the value does not match. For
    #     example, `\{"S":"6"\}` does not equal `\{"N":"6"\}`. Also,
    #     `\{"N":"6"\}` does not compare to `\{"NS":["6", "2", "1"]\}`.
    #
    #
    #
    #   * `GT`\: Greater than.
    #
    #     `AttributeValueList` can contain only one `AttributeValue` element
    #     of type String, Number, or Binary (not a set type). If an item
    #     contains an `AttributeValue` element of a different type than the
    #     one provided in the request, the value does not match. For
    #     example, `\{"S":"6"\}` does not equal `\{"N":"6"\}`. Also,
    #     `\{"N":"6"\}` does not compare to `\{"NS":["6", "2", "1"]\}`.
    #
    #
    #
    #   * `NOT_NULL`\: The attribute exists. `NOT_NULL` is supported for all
    #     data types, including lists and maps.
    #
    #     <note markdown="1"> This operator tests for the existence of an attribute, not its
    #     data type. If the data type of attribute "`a`" is null, and you
    #     evaluate it using `NOT_NULL`, the result is a Boolean `true`. This
    #     result is because the attribute "`a`" exists; its data type is
    #     not relevant to the `NOT_NULL` comparison operator.
    #
    #      </note>
    #
    #   * `NULL`\: The attribute does not exist. `NULL` is supported for all
    #     data types, including lists and maps.
    #
    #     <note markdown="1"> This operator tests for the nonexistence of an attribute, not its
    #     data type. If the data type of attribute "`a`" is null, and you
    #     evaluate it using `NULL`, the result is a Boolean `false`. This is
    #     because the attribute "`a`" exists; its data type is not
    #     relevant to the `NULL` comparison operator.
    #
    #      </note>
    #
    #   * `CONTAINS`\: Checks for a subsequence, or value in a set.
    #
    #     `AttributeValueList` can contain only one `AttributeValue` element
    #     of type String, Number, or Binary (not a set type). If the target
    #     attribute of the comparison is of type String, then the operator
    #     checks for a substring match. If the target attribute of the
    #     comparison is of type Binary, then the operator looks for a
    #     subsequence of the target that matches the input. If the target
    #     attribute of the comparison is a set ("`SS`", "`NS`", or
    #     "`BS`"), then the operator evaluates to true if it finds an
    #     exact match with any member of the set.
    #
    #     CONTAINS is supported for lists: When evaluating "`a CONTAINS
    #     b`", "`a`" can be a list; however, "`b`" cannot be a set, a
    #     map, or a list.
    #
    #   * `NOT_CONTAINS`\: Checks for absence of a subsequence, or absence
    #     of a value in a set.
    #
    #     `AttributeValueList` can contain only one `AttributeValue` element
    #     of type String, Number, or Binary (not a set type). If the target
    #     attribute of the comparison is a String, then the operator checks
    #     for the absence of a substring match. If the target attribute of
    #     the comparison is Binary, then the operator checks for the absence
    #     of a subsequence of the target that matches the input. If the
    #     target attribute of the comparison is a set ("`SS`", "`NS`",
    #     or "`BS`"), then the operator evaluates to true if it *does not*
    #     find an exact match with any member of the set.
    #
    #     NOT\_CONTAINS is supported for lists: When evaluating "`a NOT
    #     CONTAINS b`", "`a`" can be a list; however, "`b`" cannot be a
    #     set, a map, or a list.
    #
    #   * `BEGINS_WITH`\: Checks for a prefix.
    #
    #     `AttributeValueList` can contain only one `AttributeValue` of type
    #     String or Binary (not a Number or a set type). The target
    #     attribute of the comparison must be of type String or Binary (not
    #     a Number or a set type).
    #
    #
    #
    #   * `IN`\: Checks for matching elements in a list.
    #
    #     `AttributeValueList` can contain one or more `AttributeValue`
    #     elements of type String, Number, or Binary. These attributes are
    #     compared against an existing attribute of an item. If any elements
    #     of the input are equal to the item attribute, the expression
    #     evaluates to true.
    #
    #   * `BETWEEN`\: Greater than or equal to the first value, and less
    #     than or equal to the second value.
    #
    #     `AttributeValueList` must contain two `AttributeValue` elements of
    #     the same type, either String, Number, or Binary (not a set type).
    #     A target attribute matches if the target value is greater than, or
    #     equal to, the first element and less than, or equal to, the second
    #     element. If an item contains an `AttributeValue` element of a
    #     different type than the one provided in the request, the value
    #     does not match. For example, `\{"S":"6"\}` does not compare to
    #     `\{"N":"6"\}`. Also, `\{"N":"6"\}` does not compare to
    #     `\{"NS":["6", "2", "1"]\}`
    #
    #   For usage examples of `AttributeValueList` and `ComparisonOperator`,
    #   see [Legacy Conditional Parameters][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/Condition AWS API Documentation
    #
    class Condition < Struct.new(
      :attribute_value_list,
      :comparison_operator)
      include Aws::Structure
    end

    # The capacity units consumed by an operation. The data returned
    # includes the total provisioned throughput consumed, along with
    # statistics for the table and any indexes involved in the operation.
    # `ConsumedCapacity` is only returned if the request asked for it. For
    # more information, see [Provisioned Throughput][1] in the *Amazon
    # DynamoDB Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html
    #
    # @!attribute [rw] table_name
    #   The name of the table that was affected by the operation.
    #   @return [String]
    #
    # @!attribute [rw] capacity_units
    #   The total number of capacity units consumed by the operation.
    #   @return [Float]
    #
    # @!attribute [rw] table
    #   The amount of throughput consumed on the table affected by the
    #   operation.
    #   @return [Types::Capacity]
    #
    # @!attribute [rw] local_secondary_indexes
    #   The amount of throughput consumed on each local index affected by
    #   the operation.
    #   @return [Hash<String,Types::Capacity>]
    #
    # @!attribute [rw] global_secondary_indexes
    #   The amount of throughput consumed on each global index affected by
    #   the operation.
    #   @return [Hash<String,Types::Capacity>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ConsumedCapacity AWS API Documentation
    #
    class ConsumedCapacity < Struct.new(
      :table_name,
      :capacity_units,
      :table,
      :local_secondary_indexes,
      :global_secondary_indexes)
      include Aws::Structure
    end

    # Represents the continuous backups and point in time recovery settings
    # on the table.
    #
    # @!attribute [rw] continuous_backups_status
    #   `ContinuousBackupsStatus` can be one of the following states:
    #   ENABLED, DISABLED
    #   @return [String]
    #
    # @!attribute [rw] point_in_time_recovery_description
    #   The description of the point in time recovery settings applied to
    #   the table.
    #   @return [Types::PointInTimeRecoveryDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ContinuousBackupsDescription AWS API Documentation
    #
    class ContinuousBackupsDescription < Struct.new(
      :continuous_backups_status,
      :point_in_time_recovery_description)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateBackupInput
    #   data as a hash:
    #
    #       {
    #         table_name: "TableName", # required
    #         backup_name: "BackupName", # required
    #       }
    #
    # @!attribute [rw] table_name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] backup_name
    #   Specified name for the backup.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/CreateBackupInput AWS API Documentation
    #
    class CreateBackupInput < Struct.new(
      :table_name,
      :backup_name)
      include Aws::Structure
    end

    # @!attribute [rw] backup_details
    #   Contains the details of the backup created for the table.
    #   @return [Types::BackupDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/CreateBackupOutput AWS API Documentation
    #
    class CreateBackupOutput < Struct.new(
      :backup_details)
      include Aws::Structure
    end

    # Represents a new global secondary index to be added to an existing
    # table.
    #
    # @note When making an API call, you may pass CreateGlobalSecondaryIndexAction
    #   data as a hash:
    #
    #       {
    #         index_name: "IndexName", # required
    #         key_schema: [ # required
    #           {
    #             attribute_name: "KeySchemaAttributeName", # required
    #             key_type: "HASH", # required, accepts HASH, RANGE
    #           },
    #         ],
    #         projection: { # required
    #           projection_type: "ALL", # accepts ALL, KEYS_ONLY, INCLUDE
    #           non_key_attributes: ["NonKeyAttributeName"],
    #         },
    #         provisioned_throughput: { # required
    #           read_capacity_units: 1, # required
    #           write_capacity_units: 1, # required
    #         },
    #       }
    #
    # @!attribute [rw] index_name
    #   The name of the global secondary index to be created.
    #   @return [String]
    #
    # @!attribute [rw] key_schema
    #   The key schema for the global secondary index.
    #   @return [Array<Types::KeySchemaElement>]
    #
    # @!attribute [rw] projection
    #   Represents attributes that are copied (projected) from the table
    #   into an index. These are in addition to the primary key attributes
    #   and index key attributes, which are automatically projected.
    #   @return [Types::Projection]
    #
    # @!attribute [rw] provisioned_throughput
    #   Represents the provisioned throughput settings for the specified
    #   global secondary index.
    #
    #   For current minimum and maximum provisioned throughput values, see
    #   [Limits][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html
    #   @return [Types::ProvisionedThroughput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/CreateGlobalSecondaryIndexAction AWS API Documentation
    #
    class CreateGlobalSecondaryIndexAction < Struct.new(
      :index_name,
      :key_schema,
      :projection,
      :provisioned_throughput)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateGlobalTableInput
    #   data as a hash:
    #
    #       {
    #         global_table_name: "TableName", # required
    #         replication_group: [ # required
    #           {
    #             region_name: "RegionName",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] global_table_name
    #   The global table name.
    #   @return [String]
    #
    # @!attribute [rw] replication_group
    #   The regions where the global table needs to be created.
    #   @return [Array<Types::Replica>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/CreateGlobalTableInput AWS API Documentation
    #
    class CreateGlobalTableInput < Struct.new(
      :global_table_name,
      :replication_group)
      include Aws::Structure
    end

    # @!attribute [rw] global_table_description
    #   Contains the details of the global table.
    #   @return [Types::GlobalTableDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/CreateGlobalTableOutput AWS API Documentation
    #
    class CreateGlobalTableOutput < Struct.new(
      :global_table_description)
      include Aws::Structure
    end

    # Represents a replica to be added.
    #
    # @note When making an API call, you may pass CreateReplicaAction
    #   data as a hash:
    #
    #       {
    #         region_name: "RegionName", # required
    #       }
    #
    # @!attribute [rw] region_name
    #   The region of the replica to be added.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/CreateReplicaAction AWS API Documentation
    #
    class CreateReplicaAction < Struct.new(
      :region_name)
      include Aws::Structure
    end

    # Represents the input of a `CreateTable` operation.
    #
    # @note When making an API call, you may pass CreateTableInput
    #   data as a hash:
    #
    #       {
    #         attribute_definitions: [ # required
    #           {
    #             attribute_name: "KeySchemaAttributeName", # required
    #             attribute_type: "S", # required, accepts S, N, B
    #           },
    #         ],
    #         table_name: "TableName", # required
    #         key_schema: [ # required
    #           {
    #             attribute_name: "KeySchemaAttributeName", # required
    #             key_type: "HASH", # required, accepts HASH, RANGE
    #           },
    #         ],
    #         local_secondary_indexes: [
    #           {
    #             index_name: "IndexName", # required
    #             key_schema: [ # required
    #               {
    #                 attribute_name: "KeySchemaAttributeName", # required
    #                 key_type: "HASH", # required, accepts HASH, RANGE
    #               },
    #             ],
    #             projection: { # required
    #               projection_type: "ALL", # accepts ALL, KEYS_ONLY, INCLUDE
    #               non_key_attributes: ["NonKeyAttributeName"],
    #             },
    #           },
    #         ],
    #         global_secondary_indexes: [
    #           {
    #             index_name: "IndexName", # required
    #             key_schema: [ # required
    #               {
    #                 attribute_name: "KeySchemaAttributeName", # required
    #                 key_type: "HASH", # required, accepts HASH, RANGE
    #               },
    #             ],
    #             projection: { # required
    #               projection_type: "ALL", # accepts ALL, KEYS_ONLY, INCLUDE
    #               non_key_attributes: ["NonKeyAttributeName"],
    #             },
    #             provisioned_throughput: { # required
    #               read_capacity_units: 1, # required
    #               write_capacity_units: 1, # required
    #             },
    #           },
    #         ],
    #         provisioned_throughput: { # required
    #           read_capacity_units: 1, # required
    #           write_capacity_units: 1, # required
    #         },
    #         stream_specification: {
    #           stream_enabled: false,
    #           stream_view_type: "NEW_IMAGE", # accepts NEW_IMAGE, OLD_IMAGE, NEW_AND_OLD_IMAGES, KEYS_ONLY
    #         },
    #         sse_specification: {
    #           enabled: false,
    #           sse_type: "AES256", # accepts AES256, KMS
    #           kms_master_key_id: "KMSMasterKeyId",
    #         },
    #       }
    #
    # @!attribute [rw] attribute_definitions
    #   An array of attributes that describe the key schema for the table
    #   and indexes.
    #   @return [Array<Types::AttributeDefinition>]
    #
    # @!attribute [rw] table_name
    #   The name of the table to create.
    #   @return [String]
    #
    # @!attribute [rw] key_schema
    #   Specifies the attributes that make up the primary key for a table or
    #   an index. The attributes in `KeySchema` must also be defined in the
    #   `AttributeDefinitions` array. For more information, see [Data
    #   Model][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #   Each `KeySchemaElement` in the array is composed of:
    #
    #   * `AttributeName` - The name of this key attribute.
    #
    #   * `KeyType` - The role that the key attribute will assume:
    #
    #     * `HASH` - partition key
    #
    #     * `RANGE` - sort key
    #
    #   <note markdown="1"> The partition key of an item is also known as its *hash attribute*.
    #   The term "hash attribute" derives from DynamoDB' usage of an
    #   internal hash function to evenly distribute data items across
    #   partitions, based on their partition key values.
    #
    #    The sort key of an item is also known as its *range attribute*. The
    #   term "range attribute" derives from the way DynamoDB stores items
    #   with the same partition key physically close together, in sorted
    #   order by the sort key value.
    #
    #    </note>
    #
    #   For a simple primary key (partition key), you must provide exactly
    #   one element with a `KeyType` of `HASH`.
    #
    #   For a composite primary key (partition key and sort key), you must
    #   provide exactly two elements, in this order: The first element must
    #   have a `KeyType` of `HASH`, and the second element must have a
    #   `KeyType` of `RANGE`.
    #
    #   For more information, see [Specifying the Primary Key][2] in the
    #   *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataModel.html
    #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#WorkingWithTables.primary.key
    #   @return [Array<Types::KeySchemaElement>]
    #
    # @!attribute [rw] local_secondary_indexes
    #   One or more local secondary indexes (the maximum is five) to be
    #   created on the table. Each index is scoped to a given partition key
    #   value. There is a 10 GB size limit per partition key value;
    #   otherwise, the size of a local secondary index is unconstrained.
    #
    #   Each local secondary index in the array includes the following:
    #
    #   * `IndexName` - The name of the local secondary index. Must be
    #     unique only for this table.
    #
    #
    #
    #   * `KeySchema` - Specifies the key schema for the local secondary
    #     index. The key schema must begin with the same partition key as
    #     the table.
    #
    #   * `Projection` - Specifies attributes that are copied (projected)
    #     from the table into the index. These are in addition to the
    #     primary key attributes and index key attributes, which are
    #     automatically projected. Each attribute specification is composed
    #     of:
    #
    #     * `ProjectionType` - One of the following:
    #
    #       * `KEYS_ONLY` - Only the index and primary keys are projected
    #         into the index.
    #
    #       * `INCLUDE` - Only the specified table attributes are projected
    #         into the index. The list of projected attributes are in
    #         `NonKeyAttributes`.
    #
    #       * `ALL` - All of the table attributes are projected into the
    #         index.
    #
    #     * `NonKeyAttributes` - A list of one or more non-key attribute
    #       names that are projected into the secondary index. The total
    #       count of attributes provided in `NonKeyAttributes`, summed
    #       across all of the secondary indexes, must not exceed 20. If you
    #       project the same attribute into two different indexes, this
    #       counts as two distinct attributes when determining the total.
    #   @return [Array<Types::LocalSecondaryIndex>]
    #
    # @!attribute [rw] global_secondary_indexes
    #   One or more global secondary indexes (the maximum is five) to be
    #   created on the table. Each global secondary index in the array
    #   includes the following:
    #
    #   * `IndexName` - The name of the global secondary index. Must be
    #     unique only for this table.
    #
    #
    #
    #   * `KeySchema` - Specifies the key schema for the global secondary
    #     index.
    #
    #   * `Projection` - Specifies attributes that are copied (projected)
    #     from the table into the index. These are in addition to the
    #     primary key attributes and index key attributes, which are
    #     automatically projected. Each attribute specification is composed
    #     of:
    #
    #     * `ProjectionType` - One of the following:
    #
    #       * `KEYS_ONLY` - Only the index and primary keys are projected
    #         into the index.
    #
    #       * `INCLUDE` - Only the specified table attributes are projected
    #         into the index. The list of projected attributes are in
    #         `NonKeyAttributes`.
    #
    #       * `ALL` - All of the table attributes are projected into the
    #         index.
    #
    #     * `NonKeyAttributes` - A list of one or more non-key attribute
    #       names that are projected into the secondary index. The total
    #       count of attributes provided in `NonKeyAttributes`, summed
    #       across all of the secondary indexes, must not exceed 20. If you
    #       project the same attribute into two different indexes, this
    #       counts as two distinct attributes when determining the total.
    #
    #   * `ProvisionedThroughput` - The provisioned throughput settings for
    #     the global secondary index, consisting of read and write capacity
    #     units.
    #   @return [Array<Types::GlobalSecondaryIndex>]
    #
    # @!attribute [rw] provisioned_throughput
    #   Represents the provisioned throughput settings for a specified table
    #   or index. The settings can be modified using the `UpdateTable`
    #   operation.
    #
    #   For current minimum and maximum provisioned throughput values, see
    #   [Limits][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html
    #   @return [Types::ProvisionedThroughput]
    #
    # @!attribute [rw] stream_specification
    #   The settings for DynamoDB Streams on the table. These settings
    #   consist of:
    #
    #   * `StreamEnabled` - Indicates whether Streams is to be enabled
    #     (true) or disabled (false).
    #
    #   * `StreamViewType` - When an item in the table is modified,
    #     `StreamViewType` determines what information is written to the
    #     table's stream. Valid values for `StreamViewType` are:
    #
    #     * `KEYS_ONLY` - Only the key attributes of the modified item are
    #       written to the stream.
    #
    #     * `NEW_IMAGE` - The entire item, as it appears after it was
    #       modified, is written to the stream.
    #
    #     * `OLD_IMAGE` - The entire item, as it appeared before it was
    #       modified, is written to the stream.
    #
    #     * `NEW_AND_OLD_IMAGES` - Both the new and the old item images of
    #       the item are written to the stream.
    #   @return [Types::StreamSpecification]
    #
    # @!attribute [rw] sse_specification
    #   Represents the settings used to enable server-side encryption.
    #   @return [Types::SSESpecification]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/CreateTableInput AWS API Documentation
    #
    class CreateTableInput < Struct.new(
      :attribute_definitions,
      :table_name,
      :key_schema,
      :local_secondary_indexes,
      :global_secondary_indexes,
      :provisioned_throughput,
      :stream_specification,
      :sse_specification)
      include Aws::Structure
    end

    # Represents the output of a `CreateTable` operation.
    #
    # @!attribute [rw] table_description
    #   Represents the properties of the table.
    #   @return [Types::TableDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/CreateTableOutput AWS API Documentation
    #
    class CreateTableOutput < Struct.new(
      :table_description)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteBackupInput
    #   data as a hash:
    #
    #       {
    #         backup_arn: "BackupArn", # required
    #       }
    #
    # @!attribute [rw] backup_arn
    #   The ARN associated with the backup.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DeleteBackupInput AWS API Documentation
    #
    class DeleteBackupInput < Struct.new(
      :backup_arn)
      include Aws::Structure
    end

    # @!attribute [rw] backup_description
    #   Contains the description of the backup created for the table.
    #   @return [Types::BackupDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DeleteBackupOutput AWS API Documentation
    #
    class DeleteBackupOutput < Struct.new(
      :backup_description)
      include Aws::Structure
    end

    # Represents a global secondary index to be deleted from an existing
    # table.
    #
    # @note When making an API call, you may pass DeleteGlobalSecondaryIndexAction
    #   data as a hash:
    #
    #       {
    #         index_name: "IndexName", # required
    #       }
    #
    # @!attribute [rw] index_name
    #   The name of the global secondary index to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DeleteGlobalSecondaryIndexAction AWS API Documentation
    #
    class DeleteGlobalSecondaryIndexAction < Struct.new(
      :index_name)
      include Aws::Structure
    end

    # Represents the input of a `DeleteItem` operation.
    #
    # @note When making an API call, you may pass DeleteItemInput
    #   data as a hash:
    #
    #       {
    #         table_name: "TableName", # required
    #         key: { # required
    #           "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         },
    #         expected: {
    #           "AttributeName" => {
    #             value: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #             exists: false,
    #             comparison_operator: "EQ", # accepts EQ, NE, IN, LE, LT, GE, GT, BETWEEN, NOT_NULL, NULL, CONTAINS, NOT_CONTAINS, BEGINS_WITH
    #             attribute_value_list: ["value"], # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #           },
    #         },
    #         conditional_operator: "AND", # accepts AND, OR
    #         return_values: "NONE", # accepts NONE, ALL_OLD, UPDATED_OLD, ALL_NEW, UPDATED_NEW
    #         return_consumed_capacity: "INDEXES", # accepts INDEXES, TOTAL, NONE
    #         return_item_collection_metrics: "SIZE", # accepts SIZE, NONE
    #         condition_expression: "ConditionExpression",
    #         expression_attribute_names: {
    #           "ExpressionAttributeNameVariable" => "AttributeName",
    #         },
    #         expression_attribute_values: {
    #           "ExpressionAttributeValueVariable" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         },
    #       }
    #
    # @!attribute [rw] table_name
    #   The name of the table from which to delete the item.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   A map of attribute names to `AttributeValue` objects, representing
    #   the primary key of the item to delete.
    #
    #   For the primary key, you must provide all of the attributes. For
    #   example, with a simple primary key, you only need to provide a value
    #   for the partition key. For a composite primary key, you must provide
    #   values for both the partition key and the sort key.
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @!attribute [rw] expected
    #   This is a legacy parameter. Use `ConditionExpression` instead. For
    #   more information, see [Expected][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html
    #   @return [Hash<String,Types::ExpectedAttributeValue>]
    #
    # @!attribute [rw] conditional_operator
    #   This is a legacy parameter. Use `ConditionExpression` instead. For
    #   more information, see [ConditionalOperator][1] in the *Amazon
    #   DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html
    #   @return [String]
    #
    # @!attribute [rw] return_values
    #   Use `ReturnValues` if you want to get the item attributes as they
    #   appeared before they were deleted. For `DeleteItem`, the valid
    #   values are:
    #
    #   * `NONE` - If `ReturnValues` is not specified, or if its value is
    #     `NONE`, then nothing is returned. (This setting is the default for
    #     `ReturnValues`.)
    #
    #   * `ALL_OLD` - The content of the old item is returned.
    #
    #   <note markdown="1"> The `ReturnValues` parameter is used by several DynamoDB operations;
    #   however, `DeleteItem` does not recognize any values other than
    #   `NONE` or `ALL_OLD`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] return_consumed_capacity
    #   Determines the level of detail about provisioned throughput
    #   consumption that is returned in the response:
    #
    #   * `INDEXES` - The response includes the aggregate `ConsumedCapacity`
    #     for the operation, together with `ConsumedCapacity` for each table
    #     and secondary index that was accessed.
    #
    #     Note that some operations, such as `GetItem` and `BatchGetItem`,
    #     do not access any indexes at all. In these cases, specifying
    #     `INDEXES` will only return `ConsumedCapacity` information for
    #     table(s).
    #
    #   * `TOTAL` - The response includes only the aggregate
    #     `ConsumedCapacity` for the operation.
    #
    #   * `NONE` - No `ConsumedCapacity` details are included in the
    #     response.
    #   @return [String]
    #
    # @!attribute [rw] return_item_collection_metrics
    #   Determines whether item collection metrics are returned. If set to
    #   `SIZE`, the response includes statistics about item collections, if
    #   any, that were modified during the operation are returned in the
    #   response. If set to `NONE` (the default), no statistics are
    #   returned.
    #   @return [String]
    #
    # @!attribute [rw] condition_expression
    #   A condition that must be satisfied in order for a conditional
    #   `DeleteItem` to succeed.
    #
    #   An expression can contain any of the following:
    #
    #   * Functions: `attribute_exists | attribute_not_exists |
    #     attribute_type | contains | begins_with | size`
    #
    #     These function names are case-sensitive.
    #
    #   * Comparison operators: `= | <> | < | > | <= | >= | BETWEEN | IN `
    #
    #   * Logical operators: `AND | OR | NOT`
    #
    #   For more information on condition expressions, see [Specifying
    #   Conditions][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
    #   @return [String]
    #
    # @!attribute [rw] expression_attribute_names
    #   One or more substitution tokens for attribute names in an
    #   expression. The following are some use cases for using
    #   `ExpressionAttributeNames`\:
    #
    #   * To access an attribute whose name conflicts with a DynamoDB
    #     reserved word.
    #
    #   * To create a placeholder for repeating occurrences of an attribute
    #     name in an expression.
    #
    #   * To prevent special characters in an attribute name from being
    #     misinterpreted in an expression.
    #
    #   Use the **#** character in an expression to dereference an attribute
    #   name. For example, consider the following attribute name:
    #
    #   * `Percentile`
    #
    #   ^
    #
    #   The name of this attribute conflicts with a reserved word, so it
    #   cannot be used directly in an expression. (For the complete list of
    #   reserved words, see [Reserved Words][1] in the *Amazon DynamoDB
    #   Developer Guide*). To work around this, you could specify the
    #   following for `ExpressionAttributeNames`\:
    #
    #   * `\{"#P":"Percentile"\}`
    #
    #   ^
    #
    #   You could then use this substitution in an expression, as in this
    #   example:
    #
    #   * `#P = :val`
    #
    #   ^
    #
    #   <note markdown="1"> Tokens that begin with the **\:** character are *expression
    #   attribute values*, which are placeholders for the actual value at
    #   runtime.
    #
    #    </note>
    #
    #   For more information on expression attribute names, see [Accessing
    #   Item Attributes][2] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
    #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] expression_attribute_values
    #   One or more values that can be substituted in an expression.
    #
    #   Use the **\:** (colon) character in an expression to dereference an
    #   attribute value. For example, suppose that you wanted to check
    #   whether the value of the *ProductStatus* attribute was one of the
    #   following:
    #
    #   `Available | Backordered | Discontinued`
    #
    #   You would first need to specify `ExpressionAttributeValues` as
    #   follows:
    #
    #   `\{ ":avail":\{"S":"Available"\}, ":back":\{"S":"Backordered"\},
    #   ":disc":\{"S":"Discontinued"\} \}`
    #
    #   You could then use these values in an expression, such as this:
    #
    #   `ProductStatus IN (:avail, :back, :disc)`
    #
    #   For more information on expression attribute values, see [Specifying
    #   Conditions][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DeleteItemInput AWS API Documentation
    #
    class DeleteItemInput < Struct.new(
      :table_name,
      :key,
      :expected,
      :conditional_operator,
      :return_values,
      :return_consumed_capacity,
      :return_item_collection_metrics,
      :condition_expression,
      :expression_attribute_names,
      :expression_attribute_values)
      include Aws::Structure
    end

    # Represents the output of a `DeleteItem` operation.
    #
    # @!attribute [rw] attributes
    #   A map of attribute names to `AttributeValue` objects, representing
    #   the item as it appeared before the `DeleteItem` operation. This map
    #   appears in the response only if `ReturnValues` was specified as
    #   `ALL_OLD` in the request.
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @!attribute [rw] consumed_capacity
    #   The capacity units consumed by the `DeleteItem` operation. The data
    #   returned includes the total provisioned throughput consumed, along
    #   with statistics for the table and any indexes involved in the
    #   operation. `ConsumedCapacity` is only returned if the
    #   `ReturnConsumedCapacity` parameter was specified. For more
    #   information, see [Provisioned Throughput][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html
    #   @return [Types::ConsumedCapacity]
    #
    # @!attribute [rw] item_collection_metrics
    #   Information about item collections, if any, that were affected by
    #   the `DeleteItem` operation. `ItemCollectionMetrics` is only returned
    #   if the `ReturnItemCollectionMetrics` parameter was specified. If the
    #   table does not have any local secondary indexes, this information is
    #   not returned in the response.
    #
    #   Each `ItemCollectionMetrics` element consists of:
    #
    #   * `ItemCollectionKey` - The partition key value of the item
    #     collection. This is the same as the partition key value of the
    #     item itself.
    #
    #   * `SizeEstimateRangeGB` - An estimate of item collection size, in
    #     gigabytes. This value is a two-element array containing a lower
    #     bound and an upper bound for the estimate. The estimate includes
    #     the size of all the items in the table, plus the size of all
    #     attributes projected into all of the local secondary indexes on
    #     that table. Use this estimate to measure whether a local secondary
    #     index is approaching its size limit.
    #
    #     The estimate is subject to change over time; therefore, do not
    #     rely on the precision or accuracy of the estimate.
    #   @return [Types::ItemCollectionMetrics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DeleteItemOutput AWS API Documentation
    #
    class DeleteItemOutput < Struct.new(
      :attributes,
      :consumed_capacity,
      :item_collection_metrics)
      include Aws::Structure
    end

    # Represents a replica to be removed.
    #
    # @note When making an API call, you may pass DeleteReplicaAction
    #   data as a hash:
    #
    #       {
    #         region_name: "RegionName", # required
    #       }
    #
    # @!attribute [rw] region_name
    #   The region of the replica to be removed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DeleteReplicaAction AWS API Documentation
    #
    class DeleteReplicaAction < Struct.new(
      :region_name)
      include Aws::Structure
    end

    # Represents a request to perform a `DeleteItem` operation on an item.
    #
    # @note When making an API call, you may pass DeleteRequest
    #   data as a hash:
    #
    #       {
    #         key: { # required
    #           "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         },
    #       }
    #
    # @!attribute [rw] key
    #   A map of attribute name to attribute values, representing the
    #   primary key of the item to delete. All of the table's primary key
    #   attributes must be specified, and their data types must match those
    #   of the table's key schema.
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DeleteRequest AWS API Documentation
    #
    class DeleteRequest < Struct.new(
      :key)
      include Aws::Structure
    end

    # Represents the input of a `DeleteTable` operation.
    #
    # @note When making an API call, you may pass DeleteTableInput
    #   data as a hash:
    #
    #       {
    #         table_name: "TableName", # required
    #       }
    #
    # @!attribute [rw] table_name
    #   The name of the table to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DeleteTableInput AWS API Documentation
    #
    class DeleteTableInput < Struct.new(
      :table_name)
      include Aws::Structure
    end

    # Represents the output of a `DeleteTable` operation.
    #
    # @!attribute [rw] table_description
    #   Represents the properties of a table.
    #   @return [Types::TableDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DeleteTableOutput AWS API Documentation
    #
    class DeleteTableOutput < Struct.new(
      :table_description)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeBackupInput
    #   data as a hash:
    #
    #       {
    #         backup_arn: "BackupArn", # required
    #       }
    #
    # @!attribute [rw] backup_arn
    #   The ARN associated with the backup.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeBackupInput AWS API Documentation
    #
    class DescribeBackupInput < Struct.new(
      :backup_arn)
      include Aws::Structure
    end

    # @!attribute [rw] backup_description
    #   Contains the description of the backup created for the table.
    #   @return [Types::BackupDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeBackupOutput AWS API Documentation
    #
    class DescribeBackupOutput < Struct.new(
      :backup_description)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeContinuousBackupsInput
    #   data as a hash:
    #
    #       {
    #         table_name: "TableName", # required
    #       }
    #
    # @!attribute [rw] table_name
    #   Name of the table for which the customer wants to check the
    #   continuous backups and point in time recovery settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeContinuousBackupsInput AWS API Documentation
    #
    class DescribeContinuousBackupsInput < Struct.new(
      :table_name)
      include Aws::Structure
    end

    # @!attribute [rw] continuous_backups_description
    #   Represents the continuous backups and point in time recovery
    #   settings on the table.
    #   @return [Types::ContinuousBackupsDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeContinuousBackupsOutput AWS API Documentation
    #
    class DescribeContinuousBackupsOutput < Struct.new(
      :continuous_backups_description)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeEndpointsRequest AWS API Documentation
    #
    class DescribeEndpointsRequest < Aws::EmptyStructure; end

    # @!attribute [rw] endpoints
    #   @return [Array<Types::Endpoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeEndpointsResponse AWS API Documentation
    #
    class DescribeEndpointsResponse < Struct.new(
      :endpoints)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeGlobalTableInput
    #   data as a hash:
    #
    #       {
    #         global_table_name: "TableName", # required
    #       }
    #
    # @!attribute [rw] global_table_name
    #   The name of the global table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeGlobalTableInput AWS API Documentation
    #
    class DescribeGlobalTableInput < Struct.new(
      :global_table_name)
      include Aws::Structure
    end

    # @!attribute [rw] global_table_description
    #   Contains the details of the global table.
    #   @return [Types::GlobalTableDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeGlobalTableOutput AWS API Documentation
    #
    class DescribeGlobalTableOutput < Struct.new(
      :global_table_description)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeGlobalTableSettingsInput
    #   data as a hash:
    #
    #       {
    #         global_table_name: "TableName", # required
    #       }
    #
    # @!attribute [rw] global_table_name
    #   The name of the global table to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeGlobalTableSettingsInput AWS API Documentation
    #
    class DescribeGlobalTableSettingsInput < Struct.new(
      :global_table_name)
      include Aws::Structure
    end

    # @!attribute [rw] global_table_name
    #   The name of the global table.
    #   @return [String]
    #
    # @!attribute [rw] replica_settings
    #   The region specific settings for the global table.
    #   @return [Array<Types::ReplicaSettingsDescription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeGlobalTableSettingsOutput AWS API Documentation
    #
    class DescribeGlobalTableSettingsOutput < Struct.new(
      :global_table_name,
      :replica_settings)
      include Aws::Structure
    end

    # Represents the input of a `DescribeLimits` operation. Has no content.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeLimitsInput AWS API Documentation
    #
    class DescribeLimitsInput < Aws::EmptyStructure; end

    # Represents the output of a `DescribeLimits` operation.
    #
    # @!attribute [rw] account_max_read_capacity_units
    #   The maximum total read capacity units that your account allows you
    #   to provision across all of your tables in this region.
    #   @return [Integer]
    #
    # @!attribute [rw] account_max_write_capacity_units
    #   The maximum total write capacity units that your account allows you
    #   to provision across all of your tables in this region.
    #   @return [Integer]
    #
    # @!attribute [rw] table_max_read_capacity_units
    #   The maximum read capacity units that your account allows you to
    #   provision for a new table that you are creating in this region,
    #   including the read capacity units provisioned for its global
    #   secondary indexes (GSIs).
    #   @return [Integer]
    #
    # @!attribute [rw] table_max_write_capacity_units
    #   The maximum write capacity units that your account allows you to
    #   provision for a new table that you are creating in this region,
    #   including the write capacity units provisioned for its global
    #   secondary indexes (GSIs).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeLimitsOutput AWS API Documentation
    #
    class DescribeLimitsOutput < Struct.new(
      :account_max_read_capacity_units,
      :account_max_write_capacity_units,
      :table_max_read_capacity_units,
      :table_max_write_capacity_units)
      include Aws::Structure
    end

    # Represents the input of a `DescribeTable` operation.
    #
    # @note When making an API call, you may pass DescribeTableInput
    #   data as a hash:
    #
    #       {
    #         table_name: "TableName", # required
    #       }
    #
    # @!attribute [rw] table_name
    #   The name of the table to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeTableInput AWS API Documentation
    #
    class DescribeTableInput < Struct.new(
      :table_name)
      include Aws::Structure
    end

    # Represents the output of a `DescribeTable` operation.
    #
    # @!attribute [rw] table
    #   The properties of the table.
    #   @return [Types::TableDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeTableOutput AWS API Documentation
    #
    class DescribeTableOutput < Struct.new(
      :table)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeTimeToLiveInput
    #   data as a hash:
    #
    #       {
    #         table_name: "TableName", # required
    #       }
    #
    # @!attribute [rw] table_name
    #   The name of the table to be described.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeTimeToLiveInput AWS API Documentation
    #
    class DescribeTimeToLiveInput < Struct.new(
      :table_name)
      include Aws::Structure
    end

    # @!attribute [rw] time_to_live_description
    #   @return [Types::TimeToLiveDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeTimeToLiveOutput AWS API Documentation
    #
    class DescribeTimeToLiveOutput < Struct.new(
      :time_to_live_description)
      include Aws::Structure
    end

    # @!attribute [rw] address
    #   @return [String]
    #
    # @!attribute [rw] cache_period_in_minutes
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/Endpoint AWS API Documentation
    #
    class Endpoint < Struct.new(
      :address,
      :cache_period_in_minutes)
      include Aws::Structure
    end

    # Represents a condition to be compared with an attribute value. This
    # condition can be used with `DeleteItem`, `PutItem` or `UpdateItem`
    # operations; if the comparison evaluates to true, the operation
    # succeeds; if not, the operation fails. You can use
    # `ExpectedAttributeValue` in one of two different ways:
    #
    # * Use `AttributeValueList` to specify one or more values to compare
    #   against an attribute. Use `ComparisonOperator` to specify how you
    #   want to perform the comparison. If the comparison evaluates to true,
    #   then the conditional operation succeeds.
    #
    # * Use `Value` to specify a value that DynamoDB will compare against an
    #   attribute. If the values match, then `ExpectedAttributeValue`
    #   evaluates to true and the conditional operation succeeds.
    #   Optionally, you can also set `Exists` to false, indicating that you
    #   *do not* expect to find the attribute value in the table. In this
    #   case, the conditional operation succeeds only if the comparison
    #   evaluates to false.
    #
    # `Value` and `Exists` are incompatible with `AttributeValueList` and
    # `ComparisonOperator`. Note that if you use both sets of parameters at
    # once, DynamoDB will return a `ValidationException` exception.
    #
    # @note When making an API call, you may pass ExpectedAttributeValue
    #   data as a hash:
    #
    #       {
    #         value: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         exists: false,
    #         comparison_operator: "EQ", # accepts EQ, NE, IN, LE, LT, GE, GT, BETWEEN, NOT_NULL, NULL, CONTAINS, NOT_CONTAINS, BEGINS_WITH
    #         attribute_value_list: ["value"], # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #       }
    #
    # @!attribute [rw] value
    #   Represents the data for the expected attribute.
    #
    #   Each attribute value is described as a name-value pair. The name is
    #   the data type, and the value is the data itself.
    #
    #   For more information, see [Data Types][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html#HowItWorks.DataTypes
    #   @return [Types::AttributeValue]
    #
    # @!attribute [rw] exists
    #   Causes DynamoDB to evaluate the value before attempting a
    #   conditional operation:
    #
    #   * If `Exists` is `true`, DynamoDB will check to see if that
    #     attribute value already exists in the table. If it is found, then
    #     the operation succeeds. If it is not found, the operation fails
    #     with a `ConditionalCheckFailedException`.
    #
    #   * If `Exists` is `false`, DynamoDB assumes that the attribute value
    #     does not exist in the table. If in fact the value does not exist,
    #     then the assumption is valid and the operation succeeds. If the
    #     value is found, despite the assumption that it does not exist, the
    #     operation fails with a `ConditionalCheckFailedException`.
    #
    #   The default setting for `Exists` is `true`. If you supply a `Value`
    #   all by itself, DynamoDB assumes the attribute exists: You don't
    #   have to set `Exists` to `true`, because it is implied.
    #
    #   DynamoDB returns a `ValidationException` if:
    #
    #   * `Exists` is `true` but there is no `Value` to check. (You expect a
    #     value to exist, but don't specify what that value is.)
    #
    #   * `Exists` is `false` but you also provide a `Value`. (You cannot
    #     expect an attribute to have a value, while also expecting it not
    #     to exist.)
    #   @return [Boolean]
    #
    # @!attribute [rw] comparison_operator
    #   A comparator for evaluating attributes in the `AttributeValueList`.
    #   For example, equals, greater than, less than, etc.
    #
    #   The following comparison operators are available:
    #
    #   `EQ | NE | LE | LT | GE | GT | NOT_NULL | NULL | CONTAINS |
    #   NOT_CONTAINS | BEGINS_WITH | IN | BETWEEN`
    #
    #   The following are descriptions of each comparison operator.
    #
    #   * `EQ`\: Equal. `EQ` is supported for all data types, including
    #     lists and maps.
    #
    #     `AttributeValueList` can contain only one `AttributeValue` element
    #     of type String, Number, Binary, String Set, Number Set, or Binary
    #     Set. If an item contains an `AttributeValue` element of a
    #     different type than the one provided in the request, the value
    #     does not match. For example, `\{"S":"6"\}` does not equal
    #     `\{"N":"6"\}`. Also, `\{"N":"6"\}` does not equal `\{"NS":["6",
    #     "2", "1"]\}`.
    #
    #
    #
    #   * `NE`\: Not equal. `NE` is supported for all data types, including
    #     lists and maps.
    #
    #     `AttributeValueList` can contain only one `AttributeValue` of type
    #     String, Number, Binary, String Set, Number Set, or Binary Set. If
    #     an item contains an `AttributeValue` of a different type than the
    #     one provided in the request, the value does not match. For
    #     example, `\{"S":"6"\}` does not equal `\{"N":"6"\}`. Also,
    #     `\{"N":"6"\}` does not equal `\{"NS":["6", "2", "1"]\}`.
    #
    #
    #
    #   * `LE`\: Less than or equal.
    #
    #     `AttributeValueList` can contain only one `AttributeValue` element
    #     of type String, Number, or Binary (not a set type). If an item
    #     contains an `AttributeValue` element of a different type than the
    #     one provided in the request, the value does not match. For
    #     example, `\{"S":"6"\}` does not equal `\{"N":"6"\}`. Also,
    #     `\{"N":"6"\}` does not compare to `\{"NS":["6", "2", "1"]\}`.
    #
    #
    #
    #   * `LT`\: Less than.
    #
    #     `AttributeValueList` can contain only one `AttributeValue` of type
    #     String, Number, or Binary (not a set type). If an item contains an
    #     `AttributeValue` element of a different type than the one provided
    #     in the request, the value does not match. For example,
    #     `\{"S":"6"\}` does not equal `\{"N":"6"\}`. Also, `\{"N":"6"\}`
    #     does not compare to `\{"NS":["6", "2", "1"]\}`.
    #
    #
    #
    #   * `GE`\: Greater than or equal.
    #
    #     `AttributeValueList` can contain only one `AttributeValue` element
    #     of type String, Number, or Binary (not a set type). If an item
    #     contains an `AttributeValue` element of a different type than the
    #     one provided in the request, the value does not match. For
    #     example, `\{"S":"6"\}` does not equal `\{"N":"6"\}`. Also,
    #     `\{"N":"6"\}` does not compare to `\{"NS":["6", "2", "1"]\}`.
    #
    #
    #
    #   * `GT`\: Greater than.
    #
    #     `AttributeValueList` can contain only one `AttributeValue` element
    #     of type String, Number, or Binary (not a set type). If an item
    #     contains an `AttributeValue` element of a different type than the
    #     one provided in the request, the value does not match. For
    #     example, `\{"S":"6"\}` does not equal `\{"N":"6"\}`. Also,
    #     `\{"N":"6"\}` does not compare to `\{"NS":["6", "2", "1"]\}`.
    #
    #
    #
    #   * `NOT_NULL`\: The attribute exists. `NOT_NULL` is supported for all
    #     data types, including lists and maps.
    #
    #     <note markdown="1"> This operator tests for the existence of an attribute, not its
    #     data type. If the data type of attribute "`a`" is null, and you
    #     evaluate it using `NOT_NULL`, the result is a Boolean `true`. This
    #     result is because the attribute "`a`" exists; its data type is
    #     not relevant to the `NOT_NULL` comparison operator.
    #
    #      </note>
    #
    #   * `NULL`\: The attribute does not exist. `NULL` is supported for all
    #     data types, including lists and maps.
    #
    #     <note markdown="1"> This operator tests for the nonexistence of an attribute, not its
    #     data type. If the data type of attribute "`a`" is null, and you
    #     evaluate it using `NULL`, the result is a Boolean `false`. This is
    #     because the attribute "`a`" exists; its data type is not
    #     relevant to the `NULL` comparison operator.
    #
    #      </note>
    #
    #   * `CONTAINS`\: Checks for a subsequence, or value in a set.
    #
    #     `AttributeValueList` can contain only one `AttributeValue` element
    #     of type String, Number, or Binary (not a set type). If the target
    #     attribute of the comparison is of type String, then the operator
    #     checks for a substring match. If the target attribute of the
    #     comparison is of type Binary, then the operator looks for a
    #     subsequence of the target that matches the input. If the target
    #     attribute of the comparison is a set ("`SS`", "`NS`", or
    #     "`BS`"), then the operator evaluates to true if it finds an
    #     exact match with any member of the set.
    #
    #     CONTAINS is supported for lists: When evaluating "`a CONTAINS
    #     b`", "`a`" can be a list; however, "`b`" cannot be a set, a
    #     map, or a list.
    #
    #   * `NOT_CONTAINS`\: Checks for absence of a subsequence, or absence
    #     of a value in a set.
    #
    #     `AttributeValueList` can contain only one `AttributeValue` element
    #     of type String, Number, or Binary (not a set type). If the target
    #     attribute of the comparison is a String, then the operator checks
    #     for the absence of a substring match. If the target attribute of
    #     the comparison is Binary, then the operator checks for the absence
    #     of a subsequence of the target that matches the input. If the
    #     target attribute of the comparison is a set ("`SS`", "`NS`",
    #     or "`BS`"), then the operator evaluates to true if it *does not*
    #     find an exact match with any member of the set.
    #
    #     NOT\_CONTAINS is supported for lists: When evaluating "`a NOT
    #     CONTAINS b`", "`a`" can be a list; however, "`b`" cannot be a
    #     set, a map, or a list.
    #
    #   * `BEGINS_WITH`\: Checks for a prefix.
    #
    #     `AttributeValueList` can contain only one `AttributeValue` of type
    #     String or Binary (not a Number or a set type). The target
    #     attribute of the comparison must be of type String or Binary (not
    #     a Number or a set type).
    #
    #
    #
    #   * `IN`\: Checks for matching elements in a list.
    #
    #     `AttributeValueList` can contain one or more `AttributeValue`
    #     elements of type String, Number, or Binary. These attributes are
    #     compared against an existing attribute of an item. If any elements
    #     of the input are equal to the item attribute, the expression
    #     evaluates to true.
    #
    #   * `BETWEEN`\: Greater than or equal to the first value, and less
    #     than or equal to the second value.
    #
    #     `AttributeValueList` must contain two `AttributeValue` elements of
    #     the same type, either String, Number, or Binary (not a set type).
    #     A target attribute matches if the target value is greater than, or
    #     equal to, the first element and less than, or equal to, the second
    #     element. If an item contains an `AttributeValue` element of a
    #     different type than the one provided in the request, the value
    #     does not match. For example, `\{"S":"6"\}` does not compare to
    #     `\{"N":"6"\}`. Also, `\{"N":"6"\}` does not compare to
    #     `\{"NS":["6", "2", "1"]\}`
    #   @return [String]
    #
    # @!attribute [rw] attribute_value_list
    #   One or more values to evaluate against the supplied attribute. The
    #   number of values in the list depends on the `ComparisonOperator`
    #   being used.
    #
    #   For type Number, value comparisons are numeric.
    #
    #   String value comparisons for greater than, equals, or less than are
    #   based on ASCII character code values. For example, `a` is greater
    #   than `A`, and `a` is greater than `B`. For a list of code values,
    #   see
    #   [http://en.wikipedia.org/wiki/ASCII#ASCII\_printable\_characters][1].
    #
    #   For Binary, DynamoDB treats each byte of the binary data as unsigned
    #   when it compares binary values.
    #
    #   For information on specifying data types in JSON, see [JSON Data
    #   Format][2] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters
    #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataFormat.html
    #   @return [Array<Types::AttributeValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ExpectedAttributeValue AWS API Documentation
    #
    class ExpectedAttributeValue < Struct.new(
      :value,
      :exists,
      :comparison_operator,
      :attribute_value_list)
      include Aws::Structure
    end

    # Represents the input of a `GetItem` operation.
    #
    # @note When making an API call, you may pass GetItemInput
    #   data as a hash:
    #
    #       {
    #         table_name: "TableName", # required
    #         key: { # required
    #           "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         },
    #         attributes_to_get: ["AttributeName"],
    #         consistent_read: false,
    #         return_consumed_capacity: "INDEXES", # accepts INDEXES, TOTAL, NONE
    #         projection_expression: "ProjectionExpression",
    #         expression_attribute_names: {
    #           "ExpressionAttributeNameVariable" => "AttributeName",
    #         },
    #       }
    #
    # @!attribute [rw] table_name
    #   The name of the table containing the requested item.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   A map of attribute names to `AttributeValue` objects, representing
    #   the primary key of the item to retrieve.
    #
    #   For the primary key, you must provide all of the attributes. For
    #   example, with a simple primary key, you only need to provide a value
    #   for the partition key. For a composite primary key, you must provide
    #   values for both the partition key and the sort key.
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @!attribute [rw] attributes_to_get
    #   This is a legacy parameter. Use `ProjectionExpression` instead. For
    #   more information, see [AttributesToGet][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] consistent_read
    #   Determines the read consistency model: If set to `true`, then the
    #   operation uses strongly consistent reads; otherwise, the operation
    #   uses eventually consistent reads.
    #   @return [Boolean]
    #
    # @!attribute [rw] return_consumed_capacity
    #   Determines the level of detail about provisioned throughput
    #   consumption that is returned in the response:
    #
    #   * `INDEXES` - The response includes the aggregate `ConsumedCapacity`
    #     for the operation, together with `ConsumedCapacity` for each table
    #     and secondary index that was accessed.
    #
    #     Note that some operations, such as `GetItem` and `BatchGetItem`,
    #     do not access any indexes at all. In these cases, specifying
    #     `INDEXES` will only return `ConsumedCapacity` information for
    #     table(s).
    #
    #   * `TOTAL` - The response includes only the aggregate
    #     `ConsumedCapacity` for the operation.
    #
    #   * `NONE` - No `ConsumedCapacity` details are included in the
    #     response.
    #   @return [String]
    #
    # @!attribute [rw] projection_expression
    #   A string that identifies one or more attributes to retrieve from the
    #   table. These attributes can include scalars, sets, or elements of a
    #   JSON document. The attributes in the expression must be separated by
    #   commas.
    #
    #   If no attribute names are specified, then all attributes will be
    #   returned. If any of the requested attributes are not found, they
    #   will not appear in the result.
    #
    #   For more information, see [Accessing Item Attributes][1] in the
    #   *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    #   @return [String]
    #
    # @!attribute [rw] expression_attribute_names
    #   One or more substitution tokens for attribute names in an
    #   expression. The following are some use cases for using
    #   `ExpressionAttributeNames`\:
    #
    #   * To access an attribute whose name conflicts with a DynamoDB
    #     reserved word.
    #
    #   * To create a placeholder for repeating occurrences of an attribute
    #     name in an expression.
    #
    #   * To prevent special characters in an attribute name from being
    #     misinterpreted in an expression.
    #
    #   Use the **#** character in an expression to dereference an attribute
    #   name. For example, consider the following attribute name:
    #
    #   * `Percentile`
    #
    #   ^
    #
    #   The name of this attribute conflicts with a reserved word, so it
    #   cannot be used directly in an expression. (For the complete list of
    #   reserved words, see [Reserved Words][1] in the *Amazon DynamoDB
    #   Developer Guide*). To work around this, you could specify the
    #   following for `ExpressionAttributeNames`\:
    #
    #   * `\{"#P":"Percentile"\}`
    #
    #   ^
    #
    #   You could then use this substitution in an expression, as in this
    #   example:
    #
    #   * `#P = :val`
    #
    #   ^
    #
    #   <note markdown="1"> Tokens that begin with the **\:** character are *expression
    #   attribute values*, which are placeholders for the actual value at
    #   runtime.
    #
    #    </note>
    #
    #   For more information on expression attribute names, see [Accessing
    #   Item Attributes][2] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
    #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/GetItemInput AWS API Documentation
    #
    class GetItemInput < Struct.new(
      :table_name,
      :key,
      :attributes_to_get,
      :consistent_read,
      :return_consumed_capacity,
      :projection_expression,
      :expression_attribute_names)
      include Aws::Structure
    end

    # Represents the output of a `GetItem` operation.
    #
    # @!attribute [rw] item
    #   A map of attribute names to `AttributeValue` objects, as specified
    #   by `ProjectionExpression`.
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @!attribute [rw] consumed_capacity
    #   The capacity units consumed by the `GetItem` operation. The data
    #   returned includes the total provisioned throughput consumed, along
    #   with statistics for the table and any indexes involved in the
    #   operation. `ConsumedCapacity` is only returned if the
    #   `ReturnConsumedCapacity` parameter was specified. For more
    #   information, see [Provisioned Throughput][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html
    #   @return [Types::ConsumedCapacity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/GetItemOutput AWS API Documentation
    #
    class GetItemOutput < Struct.new(
      :item,
      :consumed_capacity)
      include Aws::Structure
    end

    # Represents the properties of a global secondary index.
    #
    # @note When making an API call, you may pass GlobalSecondaryIndex
    #   data as a hash:
    #
    #       {
    #         index_name: "IndexName", # required
    #         key_schema: [ # required
    #           {
    #             attribute_name: "KeySchemaAttributeName", # required
    #             key_type: "HASH", # required, accepts HASH, RANGE
    #           },
    #         ],
    #         projection: { # required
    #           projection_type: "ALL", # accepts ALL, KEYS_ONLY, INCLUDE
    #           non_key_attributes: ["NonKeyAttributeName"],
    #         },
    #         provisioned_throughput: { # required
    #           read_capacity_units: 1, # required
    #           write_capacity_units: 1, # required
    #         },
    #       }
    #
    # @!attribute [rw] index_name
    #   The name of the global secondary index. The name must be unique
    #   among all other indexes on this table.
    #   @return [String]
    #
    # @!attribute [rw] key_schema
    #   The complete key schema for a global secondary index, which consists
    #   of one or more pairs of attribute names and key types:
    #
    #   * `HASH` - partition key
    #
    #   * `RANGE` - sort key
    #
    #   <note markdown="1"> The partition key of an item is also known as its *hash attribute*.
    #   The term "hash attribute" derives from DynamoDB' usage of an
    #   internal hash function to evenly distribute data items across
    #   partitions, based on their partition key values.
    #
    #    The sort key of an item is also known as its *range attribute*. The
    #   term "range attribute" derives from the way DynamoDB stores items
    #   with the same partition key physically close together, in sorted
    #   order by the sort key value.
    #
    #    </note>
    #   @return [Array<Types::KeySchemaElement>]
    #
    # @!attribute [rw] projection
    #   Represents attributes that are copied (projected) from the table
    #   into the global secondary index. These are in addition to the
    #   primary key attributes and index key attributes, which are
    #   automatically projected.
    #   @return [Types::Projection]
    #
    # @!attribute [rw] provisioned_throughput
    #   Represents the provisioned throughput settings for the specified
    #   global secondary index.
    #
    #   For current minimum and maximum provisioned throughput values, see
    #   [Limits][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html
    #   @return [Types::ProvisionedThroughput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/GlobalSecondaryIndex AWS API Documentation
    #
    class GlobalSecondaryIndex < Struct.new(
      :index_name,
      :key_schema,
      :projection,
      :provisioned_throughput)
      include Aws::Structure
    end

    # Represents the properties of a global secondary index.
    #
    # @!attribute [rw] index_name
    #   The name of the global secondary index.
    #   @return [String]
    #
    # @!attribute [rw] key_schema
    #   The complete key schema for a global secondary index, which consists
    #   of one or more pairs of attribute names and key types:
    #
    #   * `HASH` - partition key
    #
    #   * `RANGE` - sort key
    #
    #   <note markdown="1"> The partition key of an item is also known as its *hash attribute*.
    #   The term "hash attribute" derives from DynamoDB' usage of an
    #   internal hash function to evenly distribute data items across
    #   partitions, based on their partition key values.
    #
    #    The sort key of an item is also known as its *range attribute*. The
    #   term "range attribute" derives from the way DynamoDB stores items
    #   with the same partition key physically close together, in sorted
    #   order by the sort key value.
    #
    #    </note>
    #   @return [Array<Types::KeySchemaElement>]
    #
    # @!attribute [rw] projection
    #   Represents attributes that are copied (projected) from the table
    #   into the global secondary index. These are in addition to the
    #   primary key attributes and index key attributes, which are
    #   automatically projected.
    #   @return [Types::Projection]
    #
    # @!attribute [rw] index_status
    #   The current state of the global secondary index:
    #
    #   * `CREATING` - The index is being created.
    #
    #   * `UPDATING` - The index is being updated.
    #
    #   * `DELETING` - The index is being deleted.
    #
    #   * `ACTIVE` - The index is ready for use.
    #   @return [String]
    #
    # @!attribute [rw] backfilling
    #   Indicates whether the index is currently backfilling. *Backfilling*
    #   is the process of reading items from the table and determining
    #   whether they can be added to the index. (Not all items will qualify:
    #   For example, a partition key cannot have any duplicate values.) If
    #   an item can be added to the index, DynamoDB will do so. After all
    #   items have been processed, the backfilling operation is complete and
    #   `Backfilling` is false.
    #
    #   <note markdown="1"> For indexes that were created during a `CreateTable` operation, the
    #   `Backfilling` attribute does not appear in the `DescribeTable`
    #   output.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] provisioned_throughput
    #   Represents the provisioned throughput settings for the specified
    #   global secondary index.
    #
    #   For current minimum and maximum provisioned throughput values, see
    #   [Limits][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html
    #   @return [Types::ProvisionedThroughputDescription]
    #
    # @!attribute [rw] index_size_bytes
    #   The total size of the specified index, in bytes. DynamoDB updates
    #   this value approximately every six hours. Recent changes might not
    #   be reflected in this value.
    #   @return [Integer]
    #
    # @!attribute [rw] item_count
    #   The number of items in the specified index. DynamoDB updates this
    #   value approximately every six hours. Recent changes might not be
    #   reflected in this value.
    #   @return [Integer]
    #
    # @!attribute [rw] index_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the index.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/GlobalSecondaryIndexDescription AWS API Documentation
    #
    class GlobalSecondaryIndexDescription < Struct.new(
      :index_name,
      :key_schema,
      :projection,
      :index_status,
      :backfilling,
      :provisioned_throughput,
      :index_size_bytes,
      :item_count,
      :index_arn)
      include Aws::Structure
    end

    # Represents the properties of a global secondary index for the table
    # when the backup was created.
    #
    # @!attribute [rw] index_name
    #   The name of the global secondary index.
    #   @return [String]
    #
    # @!attribute [rw] key_schema
    #   The complete key schema for a global secondary index, which consists
    #   of one or more pairs of attribute names and key types:
    #
    #   * `HASH` - partition key
    #
    #   * `RANGE` - sort key
    #
    #   <note markdown="1"> The partition key of an item is also known as its *hash attribute*.
    #   The term "hash attribute" derives from DynamoDB' usage of an
    #   internal hash function to evenly distribute data items across
    #   partitions, based on their partition key values.
    #
    #    The sort key of an item is also known as its *range attribute*. The
    #   term "range attribute" derives from the way DynamoDB stores items
    #   with the same partition key physically close together, in sorted
    #   order by the sort key value.
    #
    #    </note>
    #   @return [Array<Types::KeySchemaElement>]
    #
    # @!attribute [rw] projection
    #   Represents attributes that are copied (projected) from the table
    #   into the global secondary index. These are in addition to the
    #   primary key attributes and index key attributes, which are
    #   automatically projected.
    #   @return [Types::Projection]
    #
    # @!attribute [rw] provisioned_throughput
    #   Represents the provisioned throughput settings for the specified
    #   global secondary index.
    #   @return [Types::ProvisionedThroughput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/GlobalSecondaryIndexInfo AWS API Documentation
    #
    class GlobalSecondaryIndexInfo < Struct.new(
      :index_name,
      :key_schema,
      :projection,
      :provisioned_throughput)
      include Aws::Structure
    end

    # Represents one of the following:
    #
    # * A new global secondary index to be added to an existing table.
    #
    # * New provisioned throughput parameters for an existing global
    #   secondary index.
    #
    # * An existing global secondary index to be removed from an existing
    #   table.
    #
    # @note When making an API call, you may pass GlobalSecondaryIndexUpdate
    #   data as a hash:
    #
    #       {
    #         update: {
    #           index_name: "IndexName", # required
    #           provisioned_throughput: { # required
    #             read_capacity_units: 1, # required
    #             write_capacity_units: 1, # required
    #           },
    #         },
    #         create: {
    #           index_name: "IndexName", # required
    #           key_schema: [ # required
    #             {
    #               attribute_name: "KeySchemaAttributeName", # required
    #               key_type: "HASH", # required, accepts HASH, RANGE
    #             },
    #           ],
    #           projection: { # required
    #             projection_type: "ALL", # accepts ALL, KEYS_ONLY, INCLUDE
    #             non_key_attributes: ["NonKeyAttributeName"],
    #           },
    #           provisioned_throughput: { # required
    #             read_capacity_units: 1, # required
    #             write_capacity_units: 1, # required
    #           },
    #         },
    #         delete: {
    #           index_name: "IndexName", # required
    #         },
    #       }
    #
    # @!attribute [rw] update
    #   The name of an existing global secondary index, along with new
    #   provisioned throughput settings to be applied to that index.
    #   @return [Types::UpdateGlobalSecondaryIndexAction]
    #
    # @!attribute [rw] create
    #   The parameters required for creating a global secondary index on an
    #   existing table:
    #
    #   * `IndexName `
    #
    #   * `KeySchema `
    #
    #   * `AttributeDefinitions `
    #
    #   * `Projection `
    #
    #   * `ProvisionedThroughput `
    #   @return [Types::CreateGlobalSecondaryIndexAction]
    #
    # @!attribute [rw] delete
    #   The name of an existing global secondary index to be removed.
    #   @return [Types::DeleteGlobalSecondaryIndexAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/GlobalSecondaryIndexUpdate AWS API Documentation
    #
    class GlobalSecondaryIndexUpdate < Struct.new(
      :update,
      :create,
      :delete)
      include Aws::Structure
    end

    # Represents the properties of a global table.
    #
    # @!attribute [rw] global_table_name
    #   The global table name.
    #   @return [String]
    #
    # @!attribute [rw] replication_group
    #   The regions where the global table has replicas.
    #   @return [Array<Types::Replica>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/GlobalTable AWS API Documentation
    #
    class GlobalTable < Struct.new(
      :global_table_name,
      :replication_group)
      include Aws::Structure
    end

    # Contains details about the global table.
    #
    # @!attribute [rw] replication_group
    #   The regions where the global table has replicas.
    #   @return [Array<Types::ReplicaDescription>]
    #
    # @!attribute [rw] global_table_arn
    #   The unique identifier of the global table.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The creation time of the global table.
    #   @return [Time]
    #
    # @!attribute [rw] global_table_status
    #   The current state of the global table:
    #
    #   * `CREATING` - The global table is being created.
    #
    #   * `UPDATING` - The global table is being updated.
    #
    #   * `DELETING` - The global table is being deleted.
    #
    #   * `ACTIVE` - The global table is ready for use.
    #   @return [String]
    #
    # @!attribute [rw] global_table_name
    #   The global table name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/GlobalTableDescription AWS API Documentation
    #
    class GlobalTableDescription < Struct.new(
      :replication_group,
      :global_table_arn,
      :creation_date_time,
      :global_table_status,
      :global_table_name)
      include Aws::Structure
    end

    # Represents the settings of a global secondary index for a global table
    # that will be modified.
    #
    # @note When making an API call, you may pass GlobalTableGlobalSecondaryIndexSettingsUpdate
    #   data as a hash:
    #
    #       {
    #         index_name: "IndexName", # required
    #         provisioned_write_capacity_units: 1,
    #         provisioned_write_capacity_auto_scaling_settings_update: {
    #           minimum_units: 1,
    #           maximum_units: 1,
    #           auto_scaling_disabled: false,
    #           auto_scaling_role_arn: "AutoScalingRoleArn",
    #           scaling_policy_update: {
    #             policy_name: "AutoScalingPolicyName",
    #             target_tracking_scaling_policy_configuration: { # required
    #               disable_scale_in: false,
    #               scale_in_cooldown: 1,
    #               scale_out_cooldown: 1,
    #               target_value: 1.0, # required
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] index_name
    #   The name of the global secondary index. The name must be unique
    #   among all other indexes on this table.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_write_capacity_units
    #   The maximum number of writes consumed per second before DynamoDB
    #   returns a `ThrottlingException.`
    #   @return [Integer]
    #
    # @!attribute [rw] provisioned_write_capacity_auto_scaling_settings_update
    #   AutoScaling settings for managing a global secondary index's write
    #   capacity units.
    #   @return [Types::AutoScalingSettingsUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/GlobalTableGlobalSecondaryIndexSettingsUpdate AWS API Documentation
    #
    class GlobalTableGlobalSecondaryIndexSettingsUpdate < Struct.new(
      :index_name,
      :provisioned_write_capacity_units,
      :provisioned_write_capacity_auto_scaling_settings_update)
      include Aws::Structure
    end

    # Information about item collections, if any, that were affected by the
    # operation. `ItemCollectionMetrics` is only returned if the request
    # asked for it. If the table does not have any local secondary indexes,
    # this information is not returned in the response.
    #
    # @!attribute [rw] item_collection_key
    #   The partition key value of the item collection. This value is the
    #   same as the partition key value of the item.
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @!attribute [rw] size_estimate_range_gb
    #   An estimate of item collection size, in gigabytes. This value is a
    #   two-element array containing a lower bound and an upper bound for
    #   the estimate. The estimate includes the size of all the items in the
    #   table, plus the size of all attributes projected into all of the
    #   local secondary indexes on that table. Use this estimate to measure
    #   whether a local secondary index is approaching its size limit.
    #
    #   The estimate is subject to change over time; therefore, do not rely
    #   on the precision or accuracy of the estimate.
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ItemCollectionMetrics AWS API Documentation
    #
    class ItemCollectionMetrics < Struct.new(
      :item_collection_key,
      :size_estimate_range_gb)
      include Aws::Structure
    end

    # Represents *a single element* of a key schema. A key schema specifies
    # the attributes that make up the primary key of a table, or the key
    # attributes of an index.
    #
    # A `KeySchemaElement` represents exactly one attribute of the primary
    # key. For example, a simple primary key would be represented by one
    # `KeySchemaElement` (for the partition key). A composite primary key
    # would require one `KeySchemaElement` for the partition key, and
    # another `KeySchemaElement` for the sort key.
    #
    # A `KeySchemaElement` must be a scalar, top-level attribute (not a
    # nested attribute). The data type must be one of String, Number, or
    # Binary. The attribute cannot be nested within a List or a Map.
    #
    # @note When making an API call, you may pass KeySchemaElement
    #   data as a hash:
    #
    #       {
    #         attribute_name: "KeySchemaAttributeName", # required
    #         key_type: "HASH", # required, accepts HASH, RANGE
    #       }
    #
    # @!attribute [rw] attribute_name
    #   The name of a key attribute.
    #   @return [String]
    #
    # @!attribute [rw] key_type
    #   The role that this key attribute will assume:
    #
    #   * `HASH` - partition key
    #
    #   * `RANGE` - sort key
    #
    #   <note markdown="1"> The partition key of an item is also known as its *hash attribute*.
    #   The term "hash attribute" derives from DynamoDB' usage of an
    #   internal hash function to evenly distribute data items across
    #   partitions, based on their partition key values.
    #
    #    The sort key of an item is also known as its *range attribute*. The
    #   term "range attribute" derives from the way DynamoDB stores items
    #   with the same partition key physically close together, in sorted
    #   order by the sort key value.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/KeySchemaElement AWS API Documentation
    #
    class KeySchemaElement < Struct.new(
      :attribute_name,
      :key_type)
      include Aws::Structure
    end

    # Represents a set of primary keys and, for each key, the attributes to
    # retrieve from the table.
    #
    # For each primary key, you must provide *all* of the key attributes.
    # For example, with a simple primary key, you only need to provide the
    # partition key. For a composite primary key, you must provide *both*
    # the partition key and the sort key.
    #
    # @note When making an API call, you may pass KeysAndAttributes
    #   data as a hash:
    #
    #       {
    #         keys: [ # required
    #           {
    #             "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #           },
    #         ],
    #         attributes_to_get: ["AttributeName"],
    #         consistent_read: false,
    #         projection_expression: "ProjectionExpression",
    #         expression_attribute_names: {
    #           "ExpressionAttributeNameVariable" => "AttributeName",
    #         },
    #       }
    #
    # @!attribute [rw] keys
    #   The primary key attribute values that define the items and the
    #   attributes associated with the items.
    #   @return [Array<Hash<String,Types::AttributeValue>>]
    #
    # @!attribute [rw] attributes_to_get
    #   This is a legacy parameter. Use `ProjectionExpression` instead. For
    #   more information, see [Legacy Conditional Parameters][1] in the
    #   *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] consistent_read
    #   The consistency of a read operation. If set to `true`, then a
    #   strongly consistent read is used; otherwise, an eventually
    #   consistent read is used.
    #   @return [Boolean]
    #
    # @!attribute [rw] projection_expression
    #   A string that identifies one or more attributes to retrieve from the
    #   table. These attributes can include scalars, sets, or elements of a
    #   JSON document. The attributes in the `ProjectionExpression` must be
    #   separated by commas.
    #
    #   If no attribute names are specified, then all attributes will be
    #   returned. If any of the requested attributes are not found, they
    #   will not appear in the result.
    #
    #   For more information, see [Accessing Item Attributes][1] in the
    #   *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    #   @return [String]
    #
    # @!attribute [rw] expression_attribute_names
    #   One or more substitution tokens for attribute names in an
    #   expression. The following are some use cases for using
    #   `ExpressionAttributeNames`\:
    #
    #   * To access an attribute whose name conflicts with a DynamoDB
    #     reserved word.
    #
    #   * To create a placeholder for repeating occurrences of an attribute
    #     name in an expression.
    #
    #   * To prevent special characters in an attribute name from being
    #     misinterpreted in an expression.
    #
    #   Use the **#** character in an expression to dereference an attribute
    #   name. For example, consider the following attribute name:
    #
    #   * `Percentile`
    #
    #   ^
    #
    #   The name of this attribute conflicts with a reserved word, so it
    #   cannot be used directly in an expression. (For the complete list of
    #   reserved words, see [Reserved Words][1] in the *Amazon DynamoDB
    #   Developer Guide*). To work around this, you could specify the
    #   following for `ExpressionAttributeNames`\:
    #
    #   * `\{"#P":"Percentile"\}`
    #
    #   ^
    #
    #   You could then use this substitution in an expression, as in this
    #   example:
    #
    #   * `#P = :val`
    #
    #   ^
    #
    #   <note markdown="1"> Tokens that begin with the **\:** character are *expression
    #   attribute values*, which are placeholders for the actual value at
    #   runtime.
    #
    #    </note>
    #
    #   For more information on expression attribute names, see [Accessing
    #   Item Attributes][2] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
    #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/KeysAndAttributes AWS API Documentation
    #
    class KeysAndAttributes < Struct.new(
      :keys,
      :attributes_to_get,
      :consistent_read,
      :projection_expression,
      :expression_attribute_names)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListBackupsInput
    #   data as a hash:
    #
    #       {
    #         table_name: "TableName",
    #         limit: 1,
    #         time_range_lower_bound: Time.now,
    #         time_range_upper_bound: Time.now,
    #         exclusive_start_backup_arn: "BackupArn",
    #         backup_type: "USER", # accepts USER, SYSTEM, ALL
    #       }
    #
    # @!attribute [rw] table_name
    #   The backups from the table specified by `TableName` are listed.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Maximum number of backups to return at once.
    #   @return [Integer]
    #
    # @!attribute [rw] time_range_lower_bound
    #   Only backups created after this time are listed.
    #   `TimeRangeLowerBound` is inclusive.
    #   @return [Time]
    #
    # @!attribute [rw] time_range_upper_bound
    #   Only backups created before this time are listed.
    #   `TimeRangeUpperBound` is exclusive.
    #   @return [Time]
    #
    # @!attribute [rw] exclusive_start_backup_arn
    #   `LastEvaluatedBackupArn` is the ARN of the backup last evaluated
    #   when the current page of results was returned, inclusive of the
    #   current page of results. This value may be specified as the
    #   `ExclusiveStartBackupArn` of a new `ListBackups` operation in order
    #   to fetch the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] backup_type
    #   The backups from the table specified by `BackupType` are listed.
    #
    #   Where `BackupType` can be:
    #
    #   * `USER` - On-demand backup created by you.
    #
    #   * `SYSTEM` - On-demand backup automatically created by DynamoDB.
    #
    #   * `ALL` - All types of on-demand backups (USER and SYSTEM).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ListBackupsInput AWS API Documentation
    #
    class ListBackupsInput < Struct.new(
      :table_name,
      :limit,
      :time_range_lower_bound,
      :time_range_upper_bound,
      :exclusive_start_backup_arn,
      :backup_type)
      include Aws::Structure
    end

    # @!attribute [rw] backup_summaries
    #   List of `BackupSummary` objects.
    #   @return [Array<Types::BackupSummary>]
    #
    # @!attribute [rw] last_evaluated_backup_arn
    #   The ARN of the backup last evaluated when the current page of
    #   results was returned, inclusive of the current page of results. This
    #   value may be specified as the `ExclusiveStartBackupArn` of a new
    #   `ListBackups` operation in order to fetch the next page of results.
    #
    #   If `LastEvaluatedBackupArn` is empty, then the last page of results
    #   has been processed and there are no more results to be retrieved.
    #
    #   If `LastEvaluatedBackupArn` is not empty, this may or may not
    #   indicate there is more data to be returned. All results are
    #   guaranteed to have been returned if and only if no value for
    #   `LastEvaluatedBackupArn` is returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ListBackupsOutput AWS API Documentation
    #
    class ListBackupsOutput < Struct.new(
      :backup_summaries,
      :last_evaluated_backup_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListGlobalTablesInput
    #   data as a hash:
    #
    #       {
    #         exclusive_start_global_table_name: "TableName",
    #         limit: 1,
    #         region_name: "RegionName",
    #       }
    #
    # @!attribute [rw] exclusive_start_global_table_name
    #   The first global table name that this operation will evaluate.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of table names to return.
    #   @return [Integer]
    #
    # @!attribute [rw] region_name
    #   Lists the global tables in a specific region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ListGlobalTablesInput AWS API Documentation
    #
    class ListGlobalTablesInput < Struct.new(
      :exclusive_start_global_table_name,
      :limit,
      :region_name)
      include Aws::Structure
    end

    # @!attribute [rw] global_tables
    #   List of global table names.
    #   @return [Array<Types::GlobalTable>]
    #
    # @!attribute [rw] last_evaluated_global_table_name
    #   Last evaluated global table name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ListGlobalTablesOutput AWS API Documentation
    #
    class ListGlobalTablesOutput < Struct.new(
      :global_tables,
      :last_evaluated_global_table_name)
      include Aws::Structure
    end

    # Represents the input of a `ListTables` operation.
    #
    # @note When making an API call, you may pass ListTablesInput
    #   data as a hash:
    #
    #       {
    #         exclusive_start_table_name: "TableName",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] exclusive_start_table_name
    #   The first table name that this operation will evaluate. Use the
    #   value that was returned for `LastEvaluatedTableName` in a previous
    #   operation, so that you can obtain the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   A maximum number of table names to return. If this parameter is not
    #   specified, the limit is 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ListTablesInput AWS API Documentation
    #
    class ListTablesInput < Struct.new(
      :exclusive_start_table_name,
      :limit)
      include Aws::Structure
    end

    # Represents the output of a `ListTables` operation.
    #
    # @!attribute [rw] table_names
    #   The names of the tables associated with the current account at the
    #   current endpoint. The maximum size of this array is 100.
    #
    #   If `LastEvaluatedTableName` also appears in the output, you can use
    #   this value as the `ExclusiveStartTableName` parameter in a
    #   subsequent `ListTables` request and obtain the next page of results.
    #   @return [Array<String>]
    #
    # @!attribute [rw] last_evaluated_table_name
    #   The name of the last table in the current page of results. Use this
    #   value as the `ExclusiveStartTableName` in a new request to obtain
    #   the next page of results, until all the table names are returned.
    #
    #   If you do not receive a `LastEvaluatedTableName` value in the
    #   response, this means that there are no more table names to be
    #   retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ListTablesOutput AWS API Documentation
    #
    class ListTablesOutput < Struct.new(
      :table_names,
      :last_evaluated_table_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsOfResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArnString", # required
    #         next_token: "NextTokenString",
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon DynamoDB resource with tags to be listed. This value is
    #   an Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An optional string that, if supplied, must be copied from the output
    #   of a previous call to ListTagOfResource. When provided in this
    #   manner, this API fetches the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ListTagsOfResourceInput AWS API Documentation
    #
    class ListTagsOfResourceInput < Struct.new(
      :resource_arn,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags currently associated with the Amazon DynamoDB resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] next_token
    #   If this value is returned, there are additional results to be
    #   displayed. To retrieve them, call ListTagsOfResource again, with
    #   NextToken set to this value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ListTagsOfResourceOutput AWS API Documentation
    #
    class ListTagsOfResourceOutput < Struct.new(
      :tags,
      :next_token)
      include Aws::Structure
    end

    # Represents the properties of a local secondary index.
    #
    # @note When making an API call, you may pass LocalSecondaryIndex
    #   data as a hash:
    #
    #       {
    #         index_name: "IndexName", # required
    #         key_schema: [ # required
    #           {
    #             attribute_name: "KeySchemaAttributeName", # required
    #             key_type: "HASH", # required, accepts HASH, RANGE
    #           },
    #         ],
    #         projection: { # required
    #           projection_type: "ALL", # accepts ALL, KEYS_ONLY, INCLUDE
    #           non_key_attributes: ["NonKeyAttributeName"],
    #         },
    #       }
    #
    # @!attribute [rw] index_name
    #   The name of the local secondary index. The name must be unique among
    #   all other indexes on this table.
    #   @return [String]
    #
    # @!attribute [rw] key_schema
    #   The complete key schema for the local secondary index, consisting of
    #   one or more pairs of attribute names and key types:
    #
    #   * `HASH` - partition key
    #
    #   * `RANGE` - sort key
    #
    #   <note markdown="1"> The partition key of an item is also known as its *hash attribute*.
    #   The term "hash attribute" derives from DynamoDB' usage of an
    #   internal hash function to evenly distribute data items across
    #   partitions, based on their partition key values.
    #
    #    The sort key of an item is also known as its *range attribute*. The
    #   term "range attribute" derives from the way DynamoDB stores items
    #   with the same partition key physically close together, in sorted
    #   order by the sort key value.
    #
    #    </note>
    #   @return [Array<Types::KeySchemaElement>]
    #
    # @!attribute [rw] projection
    #   Represents attributes that are copied (projected) from the table
    #   into the local secondary index. These are in addition to the primary
    #   key attributes and index key attributes, which are automatically
    #   projected.
    #   @return [Types::Projection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/LocalSecondaryIndex AWS API Documentation
    #
    class LocalSecondaryIndex < Struct.new(
      :index_name,
      :key_schema,
      :projection)
      include Aws::Structure
    end

    # Represents the properties of a local secondary index.
    #
    # @!attribute [rw] index_name
    #   Represents the name of the local secondary index.
    #   @return [String]
    #
    # @!attribute [rw] key_schema
    #   The complete key schema for the local secondary index, consisting of
    #   one or more pairs of attribute names and key types:
    #
    #   * `HASH` - partition key
    #
    #   * `RANGE` - sort key
    #
    #   <note markdown="1"> The partition key of an item is also known as its *hash attribute*.
    #   The term "hash attribute" derives from DynamoDB' usage of an
    #   internal hash function to evenly distribute data items across
    #   partitions, based on their partition key values.
    #
    #    The sort key of an item is also known as its *range attribute*. The
    #   term "range attribute" derives from the way DynamoDB stores items
    #   with the same partition key physically close together, in sorted
    #   order by the sort key value.
    #
    #    </note>
    #   @return [Array<Types::KeySchemaElement>]
    #
    # @!attribute [rw] projection
    #   Represents attributes that are copied (projected) from the table
    #   into the global secondary index. These are in addition to the
    #   primary key attributes and index key attributes, which are
    #   automatically projected.
    #   @return [Types::Projection]
    #
    # @!attribute [rw] index_size_bytes
    #   The total size of the specified index, in bytes. DynamoDB updates
    #   this value approximately every six hours. Recent changes might not
    #   be reflected in this value.
    #   @return [Integer]
    #
    # @!attribute [rw] item_count
    #   The number of items in the specified index. DynamoDB updates this
    #   value approximately every six hours. Recent changes might not be
    #   reflected in this value.
    #   @return [Integer]
    #
    # @!attribute [rw] index_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the index.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/LocalSecondaryIndexDescription AWS API Documentation
    #
    class LocalSecondaryIndexDescription < Struct.new(
      :index_name,
      :key_schema,
      :projection,
      :index_size_bytes,
      :item_count,
      :index_arn)
      include Aws::Structure
    end

    # Represents the properties of a local secondary index for the table
    # when the backup was created.
    #
    # @!attribute [rw] index_name
    #   Represents the name of the local secondary index.
    #   @return [String]
    #
    # @!attribute [rw] key_schema
    #   The complete key schema for a local secondary index, which consists
    #   of one or more pairs of attribute names and key types:
    #
    #   * `HASH` - partition key
    #
    #   * `RANGE` - sort key
    #
    #   <note markdown="1"> The partition key of an item is also known as its *hash attribute*.
    #   The term "hash attribute" derives from DynamoDB' usage of an
    #   internal hash function to evenly distribute data items across
    #   partitions, based on their partition key values.
    #
    #    The sort key of an item is also known as its *range attribute*. The
    #   term "range attribute" derives from the way DynamoDB stores items
    #   with the same partition key physically close together, in sorted
    #   order by the sort key value.
    #
    #    </note>
    #   @return [Array<Types::KeySchemaElement>]
    #
    # @!attribute [rw] projection
    #   Represents attributes that are copied (projected) from the table
    #   into the global secondary index. These are in addition to the
    #   primary key attributes and index key attributes, which are
    #   automatically projected.
    #   @return [Types::Projection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/LocalSecondaryIndexInfo AWS API Documentation
    #
    class LocalSecondaryIndexInfo < Struct.new(
      :index_name,
      :key_schema,
      :projection)
      include Aws::Structure
    end

    # The description of the point in time settings applied to the table.
    #
    # @!attribute [rw] point_in_time_recovery_status
    #   The current state of point in time recovery:
    #
    #   * `ENABLING` - Point in time recovery is being enabled.
    #
    #   * `ENABLED` - Point in time recovery is enabled.
    #
    #   * `DISABLED` - Point in time recovery is disabled.
    #   @return [String]
    #
    # @!attribute [rw] earliest_restorable_date_time
    #   Specifies the earliest point in time you can restore your table to.
    #   It You can restore your table to any point in time during the last
    #   35 days.
    #   @return [Time]
    #
    # @!attribute [rw] latest_restorable_date_time
    #   `LatestRestorableDateTime` is typically 5 minutes before the current
    #   time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/PointInTimeRecoveryDescription AWS API Documentation
    #
    class PointInTimeRecoveryDescription < Struct.new(
      :point_in_time_recovery_status,
      :earliest_restorable_date_time,
      :latest_restorable_date_time)
      include Aws::Structure
    end

    # Represents the settings used to enable point in time recovery.
    #
    # @note When making an API call, you may pass PointInTimeRecoverySpecification
    #   data as a hash:
    #
    #       {
    #         point_in_time_recovery_enabled: false, # required
    #       }
    #
    # @!attribute [rw] point_in_time_recovery_enabled
    #   Indicates whether point in time recovery is enabled (true) or
    #   disabled (false) on the table.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/PointInTimeRecoverySpecification AWS API Documentation
    #
    class PointInTimeRecoverySpecification < Struct.new(
      :point_in_time_recovery_enabled)
      include Aws::Structure
    end

    # Represents attributes that are copied (projected) from the table into
    # an index. These are in addition to the primary key attributes and
    # index key attributes, which are automatically projected.
    #
    # @note When making an API call, you may pass Projection
    #   data as a hash:
    #
    #       {
    #         projection_type: "ALL", # accepts ALL, KEYS_ONLY, INCLUDE
    #         non_key_attributes: ["NonKeyAttributeName"],
    #       }
    #
    # @!attribute [rw] projection_type
    #   The set of attributes that are projected into the index:
    #
    #   * `KEYS_ONLY` - Only the index and primary keys are projected into
    #     the index.
    #
    #   * `INCLUDE` - Only the specified table attributes are projected into
    #     the index. The list of projected attributes are in
    #     `NonKeyAttributes`.
    #
    #   * `ALL` - All of the table attributes are projected into the index.
    #   @return [String]
    #
    # @!attribute [rw] non_key_attributes
    #   Represents the non-key attribute names which will be projected into
    #   the index.
    #
    #   For local secondary indexes, the total count of `NonKeyAttributes`
    #   summed across all of the local secondary indexes, must not exceed
    #   20. If you project the same attribute into two different indexes,
    #   this counts as two distinct attributes when determining the total.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/Projection AWS API Documentation
    #
    class Projection < Struct.new(
      :projection_type,
      :non_key_attributes)
      include Aws::Structure
    end

    # Represents the provisioned throughput settings for a specified table
    # or index. The settings can be modified using the `UpdateTable`
    # operation.
    #
    # For current minimum and maximum provisioned throughput values, see
    # [Limits][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html
    #
    # @note When making an API call, you may pass ProvisionedThroughput
    #   data as a hash:
    #
    #       {
    #         read_capacity_units: 1, # required
    #         write_capacity_units: 1, # required
    #       }
    #
    # @!attribute [rw] read_capacity_units
    #   The maximum number of strongly consistent reads consumed per second
    #   before DynamoDB returns a `ThrottlingException`. For more
    #   information, see [Specifying Read and Write Requirements][1] in the
    #   *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput
    #   @return [Integer]
    #
    # @!attribute [rw] write_capacity_units
    #   The maximum number of writes consumed per second before DynamoDB
    #   returns a `ThrottlingException`. For more information, see
    #   [Specifying Read and Write Requirements][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ProvisionedThroughput AWS API Documentation
    #
    class ProvisionedThroughput < Struct.new(
      :read_capacity_units,
      :write_capacity_units)
      include Aws::Structure
    end

    # Represents the provisioned throughput settings for the table,
    # consisting of read and write capacity units, along with data about
    # increases and decreases.
    #
    # @!attribute [rw] last_increase_date_time
    #   The date and time of the last provisioned throughput increase for
    #   this table.
    #   @return [Time]
    #
    # @!attribute [rw] last_decrease_date_time
    #   The date and time of the last provisioned throughput decrease for
    #   this table.
    #   @return [Time]
    #
    # @!attribute [rw] number_of_decreases_today
    #   The number of provisioned throughput decreases for this table during
    #   this UTC calendar day. For current maximums on provisioned
    #   throughput decreases, see [Limits][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html
    #   @return [Integer]
    #
    # @!attribute [rw] read_capacity_units
    #   The maximum number of strongly consistent reads consumed per second
    #   before DynamoDB returns a `ThrottlingException`. Eventually
    #   consistent reads require less effort than strongly consistent reads,
    #   so a setting of 50 `ReadCapacityUnits` per second provides 100
    #   eventually consistent `ReadCapacityUnits` per second.
    #   @return [Integer]
    #
    # @!attribute [rw] write_capacity_units
    #   The maximum number of writes consumed per second before DynamoDB
    #   returns a `ThrottlingException`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ProvisionedThroughputDescription AWS API Documentation
    #
    class ProvisionedThroughputDescription < Struct.new(
      :last_increase_date_time,
      :last_decrease_date_time,
      :number_of_decreases_today,
      :read_capacity_units,
      :write_capacity_units)
      include Aws::Structure
    end

    # Represents the input of a `PutItem` operation.
    #
    # @note When making an API call, you may pass PutItemInput
    #   data as a hash:
    #
    #       {
    #         table_name: "TableName", # required
    #         item: { # required
    #           "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         },
    #         expected: {
    #           "AttributeName" => {
    #             value: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #             exists: false,
    #             comparison_operator: "EQ", # accepts EQ, NE, IN, LE, LT, GE, GT, BETWEEN, NOT_NULL, NULL, CONTAINS, NOT_CONTAINS, BEGINS_WITH
    #             attribute_value_list: ["value"], # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #           },
    #         },
    #         return_values: "NONE", # accepts NONE, ALL_OLD, UPDATED_OLD, ALL_NEW, UPDATED_NEW
    #         return_consumed_capacity: "INDEXES", # accepts INDEXES, TOTAL, NONE
    #         return_item_collection_metrics: "SIZE", # accepts SIZE, NONE
    #         conditional_operator: "AND", # accepts AND, OR
    #         condition_expression: "ConditionExpression",
    #         expression_attribute_names: {
    #           "ExpressionAttributeNameVariable" => "AttributeName",
    #         },
    #         expression_attribute_values: {
    #           "ExpressionAttributeValueVariable" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         },
    #       }
    #
    # @!attribute [rw] table_name
    #   The name of the table to contain the item.
    #   @return [String]
    #
    # @!attribute [rw] item
    #   A map of attribute name/value pairs, one for each attribute. Only
    #   the primary key attributes are required; you can optionally provide
    #   other attribute name-value pairs for the item.
    #
    #   You must provide all of the attributes for the primary key. For
    #   example, with a simple primary key, you only need to provide a value
    #   for the partition key. For a composite primary key, you must provide
    #   both values for both the partition key and the sort key.
    #
    #   If you specify any attributes that are part of an index key, then
    #   the data types for those attributes must match those of the schema
    #   in the table's attribute definition.
    #
    #   For more information about primary keys, see [Primary Key][1] in the
    #   *Amazon DynamoDB Developer Guide*.
    #
    #   Each element in the `Item` map is an `AttributeValue` object.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataModel.html#DataModelPrimaryKey
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @!attribute [rw] expected
    #   This is a legacy parameter. Use `ConditionExpression` instead. For
    #   more information, see [Expected][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html
    #   @return [Hash<String,Types::ExpectedAttributeValue>]
    #
    # @!attribute [rw] return_values
    #   Use `ReturnValues` if you want to get the item attributes as they
    #   appeared before they were updated with the `PutItem` request. For
    #   `PutItem`, the valid values are:
    #
    #   * `NONE` - If `ReturnValues` is not specified, or if its value is
    #     `NONE`, then nothing is returned. (This setting is the default for
    #     `ReturnValues`.)
    #
    #   * `ALL_OLD` - If `PutItem` overwrote an attribute name-value pair,
    #     then the content of the old item is returned.
    #
    #   <note markdown="1"> The `ReturnValues` parameter is used by several DynamoDB operations;
    #   however, `PutItem` does not recognize any values other than `NONE`
    #   or `ALL_OLD`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] return_consumed_capacity
    #   Determines the level of detail about provisioned throughput
    #   consumption that is returned in the response:
    #
    #   * `INDEXES` - The response includes the aggregate `ConsumedCapacity`
    #     for the operation, together with `ConsumedCapacity` for each table
    #     and secondary index that was accessed.
    #
    #     Note that some operations, such as `GetItem` and `BatchGetItem`,
    #     do not access any indexes at all. In these cases, specifying
    #     `INDEXES` will only return `ConsumedCapacity` information for
    #     table(s).
    #
    #   * `TOTAL` - The response includes only the aggregate
    #     `ConsumedCapacity` for the operation.
    #
    #   * `NONE` - No `ConsumedCapacity` details are included in the
    #     response.
    #   @return [String]
    #
    # @!attribute [rw] return_item_collection_metrics
    #   Determines whether item collection metrics are returned. If set to
    #   `SIZE`, the response includes statistics about item collections, if
    #   any, that were modified during the operation are returned in the
    #   response. If set to `NONE` (the default), no statistics are
    #   returned.
    #   @return [String]
    #
    # @!attribute [rw] conditional_operator
    #   This is a legacy parameter. Use `ConditionExpression` instead. For
    #   more information, see [ConditionalOperator][1] in the *Amazon
    #   DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html
    #   @return [String]
    #
    # @!attribute [rw] condition_expression
    #   A condition that must be satisfied in order for a conditional
    #   `PutItem` operation to succeed.
    #
    #   An expression can contain any of the following:
    #
    #   * Functions: `attribute_exists | attribute_not_exists |
    #     attribute_type | contains | begins_with | size`
    #
    #     These function names are case-sensitive.
    #
    #   * Comparison operators: `= | <> | < | > | <= | >= | BETWEEN | IN `
    #
    #   * Logical operators: `AND | OR | NOT`
    #
    #   For more information on condition expressions, see [Specifying
    #   Conditions][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
    #   @return [String]
    #
    # @!attribute [rw] expression_attribute_names
    #   One or more substitution tokens for attribute names in an
    #   expression. The following are some use cases for using
    #   `ExpressionAttributeNames`\:
    #
    #   * To access an attribute whose name conflicts with a DynamoDB
    #     reserved word.
    #
    #   * To create a placeholder for repeating occurrences of an attribute
    #     name in an expression.
    #
    #   * To prevent special characters in an attribute name from being
    #     misinterpreted in an expression.
    #
    #   Use the **#** character in an expression to dereference an attribute
    #   name. For example, consider the following attribute name:
    #
    #   * `Percentile`
    #
    #   ^
    #
    #   The name of this attribute conflicts with a reserved word, so it
    #   cannot be used directly in an expression. (For the complete list of
    #   reserved words, see [Reserved Words][1] in the *Amazon DynamoDB
    #   Developer Guide*). To work around this, you could specify the
    #   following for `ExpressionAttributeNames`\:
    #
    #   * `\{"#P":"Percentile"\}`
    #
    #   ^
    #
    #   You could then use this substitution in an expression, as in this
    #   example:
    #
    #   * `#P = :val`
    #
    #   ^
    #
    #   <note markdown="1"> Tokens that begin with the **\:** character are *expression
    #   attribute values*, which are placeholders for the actual value at
    #   runtime.
    #
    #    </note>
    #
    #   For more information on expression attribute names, see [Accessing
    #   Item Attributes][2] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
    #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] expression_attribute_values
    #   One or more values that can be substituted in an expression.
    #
    #   Use the **\:** (colon) character in an expression to dereference an
    #   attribute value. For example, suppose that you wanted to check
    #   whether the value of the *ProductStatus* attribute was one of the
    #   following:
    #
    #   `Available | Backordered | Discontinued`
    #
    #   You would first need to specify `ExpressionAttributeValues` as
    #   follows:
    #
    #   `\{ ":avail":\{"S":"Available"\}, ":back":\{"S":"Backordered"\},
    #   ":disc":\{"S":"Discontinued"\} \}`
    #
    #   You could then use these values in an expression, such as this:
    #
    #   `ProductStatus IN (:avail, :back, :disc)`
    #
    #   For more information on expression attribute values, see [Specifying
    #   Conditions][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/PutItemInput AWS API Documentation
    #
    class PutItemInput < Struct.new(
      :table_name,
      :item,
      :expected,
      :return_values,
      :return_consumed_capacity,
      :return_item_collection_metrics,
      :conditional_operator,
      :condition_expression,
      :expression_attribute_names,
      :expression_attribute_values)
      include Aws::Structure
    end

    # Represents the output of a `PutItem` operation.
    #
    # @!attribute [rw] attributes
    #   The attribute values as they appeared before the `PutItem`
    #   operation, but only if `ReturnValues` is specified as `ALL_OLD` in
    #   the request. Each element consists of an attribute name and an
    #   attribute value.
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @!attribute [rw] consumed_capacity
    #   The capacity units consumed by the `PutItem` operation. The data
    #   returned includes the total provisioned throughput consumed, along
    #   with statistics for the table and any indexes involved in the
    #   operation. `ConsumedCapacity` is only returned if the
    #   `ReturnConsumedCapacity` parameter was specified. For more
    #   information, see [Provisioned Throughput][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html
    #   @return [Types::ConsumedCapacity]
    #
    # @!attribute [rw] item_collection_metrics
    #   Information about item collections, if any, that were affected by
    #   the `PutItem` operation. `ItemCollectionMetrics` is only returned if
    #   the `ReturnItemCollectionMetrics` parameter was specified. If the
    #   table does not have any local secondary indexes, this information is
    #   not returned in the response.
    #
    #   Each `ItemCollectionMetrics` element consists of:
    #
    #   * `ItemCollectionKey` - The partition key value of the item
    #     collection. This is the same as the partition key value of the
    #     item itself.
    #
    #   * `SizeEstimateRangeGB` - An estimate of item collection size, in
    #     gigabytes. This value is a two-element array containing a lower
    #     bound and an upper bound for the estimate. The estimate includes
    #     the size of all the items in the table, plus the size of all
    #     attributes projected into all of the local secondary indexes on
    #     that table. Use this estimate to measure whether a local secondary
    #     index is approaching its size limit.
    #
    #     The estimate is subject to change over time; therefore, do not
    #     rely on the precision or accuracy of the estimate.
    #   @return [Types::ItemCollectionMetrics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/PutItemOutput AWS API Documentation
    #
    class PutItemOutput < Struct.new(
      :attributes,
      :consumed_capacity,
      :item_collection_metrics)
      include Aws::Structure
    end

    # Represents a request to perform a `PutItem` operation on an item.
    #
    # @note When making an API call, you may pass PutRequest
    #   data as a hash:
    #
    #       {
    #         item: { # required
    #           "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         },
    #       }
    #
    # @!attribute [rw] item
    #   A map of attribute name to attribute values, representing the
    #   primary key of an item to be processed by `PutItem`. All of the
    #   table's primary key attributes must be specified, and their data
    #   types must match those of the table's key schema. If any attributes
    #   are present in the item which are part of an index key schema for
    #   the table, their types must match the index key schema.
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/PutRequest AWS API Documentation
    #
    class PutRequest < Struct.new(
      :item)
      include Aws::Structure
    end

    # Represents the input of a `Query` operation.
    #
    # @note When making an API call, you may pass QueryInput
    #   data as a hash:
    #
    #       {
    #         table_name: "TableName", # required
    #         index_name: "IndexName",
    #         select: "ALL_ATTRIBUTES", # accepts ALL_ATTRIBUTES, ALL_PROJECTED_ATTRIBUTES, SPECIFIC_ATTRIBUTES, COUNT
    #         attributes_to_get: ["AttributeName"],
    #         limit: 1,
    #         consistent_read: false,
    #         key_conditions: {
    #           "AttributeName" => {
    #             attribute_value_list: ["value"], # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #             comparison_operator: "EQ", # required, accepts EQ, NE, IN, LE, LT, GE, GT, BETWEEN, NOT_NULL, NULL, CONTAINS, NOT_CONTAINS, BEGINS_WITH
    #           },
    #         },
    #         query_filter: {
    #           "AttributeName" => {
    #             attribute_value_list: ["value"], # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #             comparison_operator: "EQ", # required, accepts EQ, NE, IN, LE, LT, GE, GT, BETWEEN, NOT_NULL, NULL, CONTAINS, NOT_CONTAINS, BEGINS_WITH
    #           },
    #         },
    #         conditional_operator: "AND", # accepts AND, OR
    #         scan_index_forward: false,
    #         exclusive_start_key: {
    #           "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         },
    #         return_consumed_capacity: "INDEXES", # accepts INDEXES, TOTAL, NONE
    #         projection_expression: "ProjectionExpression",
    #         filter_expression: "ConditionExpression",
    #         key_condition_expression: "KeyExpression",
    #         expression_attribute_names: {
    #           "ExpressionAttributeNameVariable" => "AttributeName",
    #         },
    #         expression_attribute_values: {
    #           "ExpressionAttributeValueVariable" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         },
    #       }
    #
    # @!attribute [rw] table_name
    #   The name of the table containing the requested items.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The name of an index to query. This index can be any local secondary
    #   index or global secondary index on the table. Note that if you use
    #   the `IndexName` parameter, you must also provide `TableName.`
    #   @return [String]
    #
    # @!attribute [rw] select
    #   The attributes to be returned in the result. You can retrieve all
    #   item attributes, specific item attributes, the count of matching
    #   items, or in the case of an index, some or all of the attributes
    #   projected into the index.
    #
    #   * `ALL_ATTRIBUTES` - Returns all of the item attributes from the
    #     specified table or index. If you query a local secondary index,
    #     then for each matching item in the index DynamoDB will fetch the
    #     entire item from the parent table. If the index is configured to
    #     project all item attributes, then all of the data can be obtained
    #     from the local secondary index, and no fetching is required.
    #
    #   * `ALL_PROJECTED_ATTRIBUTES` - Allowed only when querying an index.
    #     Retrieves all attributes that have been projected into the index.
    #     If the index is configured to project all attributes, this return
    #     value is equivalent to specifying `ALL_ATTRIBUTES`.
    #
    #   * `COUNT` - Returns the number of matching items, rather than the
    #     matching items themselves.
    #
    #   * `SPECIFIC_ATTRIBUTES` - Returns only the attributes listed in
    #     `AttributesToGet`. This return value is equivalent to specifying
    #     `AttributesToGet` without specifying any value for `Select`.
    #
    #     If you query or scan a local secondary index and request only
    #     attributes that are projected into that index, the operation will
    #     read only the index and not the table. If any of the requested
    #     attributes are not projected into the local secondary index,
    #     DynamoDB will fetch each of these attributes from the parent
    #     table. This extra fetching incurs additional throughput cost and
    #     latency.
    #
    #     If you query or scan a global secondary index, you can only
    #     request attributes that are projected into the index. Global
    #     secondary index queries cannot fetch attributes from the parent
    #     table.
    #
    #   If neither `Select` nor `AttributesToGet` are specified, DynamoDB
    #   defaults to `ALL_ATTRIBUTES` when accessing a table, and
    #   `ALL_PROJECTED_ATTRIBUTES` when accessing an index. You cannot use
    #   both `Select` and `AttributesToGet` together in a single request,
    #   unless the value for `Select` is `SPECIFIC_ATTRIBUTES`. (This usage
    #   is equivalent to specifying `AttributesToGet` without any value for
    #   `Select`.)
    #
    #   <note markdown="1"> If you use the `ProjectionExpression` parameter, then the value for
    #   `Select` can only be `SPECIFIC_ATTRIBUTES`. Any other value for
    #   `Select` will return an error.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] attributes_to_get
    #   This is a legacy parameter. Use `ProjectionExpression` instead. For
    #   more information, see [AttributesToGet][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   The maximum number of items to evaluate (not necessarily the number
    #   of matching items). If DynamoDB processes the number of items up to
    #   the limit while processing the results, it stops the operation and
    #   returns the matching values up to that point, and a key in
    #   `LastEvaluatedKey` to apply in a subsequent operation, so that you
    #   can pick up where you left off. Also, if the processed data set size
    #   exceeds 1 MB before DynamoDB reaches this limit, it stops the
    #   operation and returns the matching values up to the limit, and a key
    #   in `LastEvaluatedKey` to apply in a subsequent operation to continue
    #   the operation. For more information, see [Query and Scan][1] in the
    #   *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html
    #   @return [Integer]
    #
    # @!attribute [rw] consistent_read
    #   Determines the read consistency model: If set to `true`, then the
    #   operation uses strongly consistent reads; otherwise, the operation
    #   uses eventually consistent reads.
    #
    #   Strongly consistent reads are not supported on global secondary
    #   indexes. If you query a global secondary index with `ConsistentRead`
    #   set to `true`, you will receive a `ValidationException`.
    #   @return [Boolean]
    #
    # @!attribute [rw] key_conditions
    #   This is a legacy parameter. Use `KeyConditionExpression` instead.
    #   For more information, see [KeyConditions][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.KeyConditions.html
    #   @return [Hash<String,Types::Condition>]
    #
    # @!attribute [rw] query_filter
    #   This is a legacy parameter. Use `FilterExpression` instead. For more
    #   information, see [QueryFilter][1] in the *Amazon DynamoDB Developer
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.QueryFilter.html
    #   @return [Hash<String,Types::Condition>]
    #
    # @!attribute [rw] conditional_operator
    #   This is a legacy parameter. Use `FilterExpression` instead. For more
    #   information, see [ConditionalOperator][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html
    #   @return [String]
    #
    # @!attribute [rw] scan_index_forward
    #   Specifies the order for index traversal: If `true` (default), the
    #   traversal is performed in ascending order; if `false`, the traversal
    #   is performed in descending order.
    #
    #   Items with the same partition key value are stored in sorted order
    #   by sort key. If the sort key data type is Number, the results are
    #   stored in numeric order. For type String, the results are stored in
    #   order of UTF-8 bytes. For type Binary, DynamoDB treats each byte of
    #   the binary data as unsigned.
    #
    #   If `ScanIndexForward` is `true`, DynamoDB returns the results in the
    #   order in which they are stored (by sort key value). This is the
    #   default behavior. If `ScanIndexForward` is `false`, DynamoDB reads
    #   the results in reverse order by sort key value, and then returns the
    #   results to the client.
    #   @return [Boolean]
    #
    # @!attribute [rw] exclusive_start_key
    #   The primary key of the first item that this operation will evaluate.
    #   Use the value that was returned for `LastEvaluatedKey` in the
    #   previous operation.
    #
    #   The data type for `ExclusiveStartKey` must be String, Number or
    #   Binary. No set data types are allowed.
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @!attribute [rw] return_consumed_capacity
    #   Determines the level of detail about provisioned throughput
    #   consumption that is returned in the response:
    #
    #   * `INDEXES` - The response includes the aggregate `ConsumedCapacity`
    #     for the operation, together with `ConsumedCapacity` for each table
    #     and secondary index that was accessed.
    #
    #     Note that some operations, such as `GetItem` and `BatchGetItem`,
    #     do not access any indexes at all. In these cases, specifying
    #     `INDEXES` will only return `ConsumedCapacity` information for
    #     table(s).
    #
    #   * `TOTAL` - The response includes only the aggregate
    #     `ConsumedCapacity` for the operation.
    #
    #   * `NONE` - No `ConsumedCapacity` details are included in the
    #     response.
    #   @return [String]
    #
    # @!attribute [rw] projection_expression
    #   A string that identifies one or more attributes to retrieve from the
    #   table. These attributes can include scalars, sets, or elements of a
    #   JSON document. The attributes in the expression must be separated by
    #   commas.
    #
    #   If no attribute names are specified, then all attributes will be
    #   returned. If any of the requested attributes are not found, they
    #   will not appear in the result.
    #
    #   For more information, see [Accessing Item Attributes][1] in the
    #   *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    #   @return [String]
    #
    # @!attribute [rw] filter_expression
    #   A string that contains conditions that DynamoDB applies after the
    #   `Query` operation, but before the data is returned to you. Items
    #   that do not satisfy the `FilterExpression` criteria are not
    #   returned.
    #
    #   A `FilterExpression` does not allow key attributes. You cannot
    #   define a filter expression based on a partition key or a sort key.
    #
    #   <note markdown="1"> A `FilterExpression` is applied after the items have already been
    #   read; the process of filtering does not consume any additional read
    #   capacity units.
    #
    #    </note>
    #
    #   For more information, see [Filter Expressions][1] in the *Amazon
    #   DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#FilteringResults
    #   @return [String]
    #
    # @!attribute [rw] key_condition_expression
    #   The condition that specifies the key value(s) for items to be
    #   retrieved by the `Query` action.
    #
    #   The condition must perform an equality test on a single partition
    #   key value.
    #
    #   The condition can optionally perform one of several comparison tests
    #   on a single sort key value. This allows `Query` to retrieve one item
    #   with a given partition key value and sort key value, or several
    #   items that have the same partition key value but different sort key
    #   values.
    #
    #   The partition key equality test is required, and must be specified
    #   in the following format:
    #
    #   `partitionKeyName` *=* `:partitionkeyval`
    #
    #   If you also want to provide a condition for the sort key, it must be
    #   combined using `AND` with the condition for the sort key. Following
    #   is an example, using the **=** comparison operator for the sort key:
    #
    #   `partitionKeyName` `=` `:partitionkeyval` `AND` `sortKeyName` `=`
    #   `:sortkeyval`
    #
    #   Valid comparisons for the sort key condition are as follows:
    #
    #   * `sortKeyName` `=` `:sortkeyval` - true if the sort key value is
    #     equal to `:sortkeyval`.
    #
    #   * `sortKeyName` `<` `:sortkeyval` - true if the sort key value is
    #     less than `:sortkeyval`.
    #
    #   * `sortKeyName` `<=` `:sortkeyval` - true if the sort key value is
    #     less than or equal to `:sortkeyval`.
    #
    #   * `sortKeyName` `>` `:sortkeyval` - true if the sort key value is
    #     greater than `:sortkeyval`.
    #
    #   * `sortKeyName` `>= ` `:sortkeyval` - true if the sort key value is
    #     greater than or equal to `:sortkeyval`.
    #
    #   * `sortKeyName` `BETWEEN` `:sortkeyval1` `AND` `:sortkeyval2` - true
    #     if the sort key value is greater than or equal to `:sortkeyval1`,
    #     and less than or equal to `:sortkeyval2`.
    #
    #   * `begins_with (` `sortKeyName`, `:sortkeyval` `)` - true if the
    #     sort key value begins with a particular operand. (You cannot use
    #     this function with a sort key that is of type Number.) Note that
    #     the function name `begins_with` is case-sensitive.
    #
    #   Use the `ExpressionAttributeValues` parameter to replace tokens such
    #   as `:partitionval` and `:sortval` with actual values at runtime.
    #
    #   You can optionally use the `ExpressionAttributeNames` parameter to
    #   replace the names of the partition key and sort key with placeholder
    #   tokens. This option might be necessary if an attribute name
    #   conflicts with a DynamoDB reserved word. For example, the following
    #   `KeyConditionExpression` parameter causes an error because *Size* is
    #   a reserved word:
    #
    #   * `Size = :myval`
    #
    #   ^
    #
    #   To work around this, define a placeholder (such a `#S`) to represent
    #   the attribute name *Size*. `KeyConditionExpression` then is as
    #   follows:
    #
    #   * `#S = :myval`
    #
    #   ^
    #
    #   For a list of reserved words, see [Reserved Words][1] in the *Amazon
    #   DynamoDB Developer Guide*.
    #
    #   For more information on `ExpressionAttributeNames` and
    #   `ExpressionAttributeValues`, see [Using Placeholders for Attribute
    #   Names and Values][2] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
    #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ExpressionPlaceholders.html
    #   @return [String]
    #
    # @!attribute [rw] expression_attribute_names
    #   One or more substitution tokens for attribute names in an
    #   expression. The following are some use cases for using
    #   `ExpressionAttributeNames`\:
    #
    #   * To access an attribute whose name conflicts with a DynamoDB
    #     reserved word.
    #
    #   * To create a placeholder for repeating occurrences of an attribute
    #     name in an expression.
    #
    #   * To prevent special characters in an attribute name from being
    #     misinterpreted in an expression.
    #
    #   Use the **#** character in an expression to dereference an attribute
    #   name. For example, consider the following attribute name:
    #
    #   * `Percentile`
    #
    #   ^
    #
    #   The name of this attribute conflicts with a reserved word, so it
    #   cannot be used directly in an expression. (For the complete list of
    #   reserved words, see [Reserved Words][1] in the *Amazon DynamoDB
    #   Developer Guide*). To work around this, you could specify the
    #   following for `ExpressionAttributeNames`\:
    #
    #   * `\{"#P":"Percentile"\}`
    #
    #   ^
    #
    #   You could then use this substitution in an expression, as in this
    #   example:
    #
    #   * `#P = :val`
    #
    #   ^
    #
    #   <note markdown="1"> Tokens that begin with the **\:** character are *expression
    #   attribute values*, which are placeholders for the actual value at
    #   runtime.
    #
    #    </note>
    #
    #   For more information on expression attribute names, see [Accessing
    #   Item Attributes][2] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
    #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] expression_attribute_values
    #   One or more values that can be substituted in an expression.
    #
    #   Use the **\:** (colon) character in an expression to dereference an
    #   attribute value. For example, suppose that you wanted to check
    #   whether the value of the *ProductStatus* attribute was one of the
    #   following:
    #
    #   `Available | Backordered | Discontinued`
    #
    #   You would first need to specify `ExpressionAttributeValues` as
    #   follows:
    #
    #   `\{ ":avail":\{"S":"Available"\}, ":back":\{"S":"Backordered"\},
    #   ":disc":\{"S":"Discontinued"\} \}`
    #
    #   You could then use these values in an expression, such as this:
    #
    #   `ProductStatus IN (:avail, :back, :disc)`
    #
    #   For more information on expression attribute values, see [Specifying
    #   Conditions][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/QueryInput AWS API Documentation
    #
    class QueryInput < Struct.new(
      :table_name,
      :index_name,
      :select,
      :attributes_to_get,
      :limit,
      :consistent_read,
      :key_conditions,
      :query_filter,
      :conditional_operator,
      :scan_index_forward,
      :exclusive_start_key,
      :return_consumed_capacity,
      :projection_expression,
      :filter_expression,
      :key_condition_expression,
      :expression_attribute_names,
      :expression_attribute_values)
      include Aws::Structure
    end

    # Represents the output of a `Query` operation.
    #
    # @!attribute [rw] items
    #   An array of item attributes that match the query criteria. Each
    #   element in this array consists of an attribute name and the value
    #   for that attribute.
    #   @return [Array<Hash<String,Types::AttributeValue>>]
    #
    # @!attribute [rw] count
    #   The number of items in the response.
    #
    #   If you used a `QueryFilter` in the request, then `Count` is the
    #   number of items returned after the filter was applied, and
    #   `ScannedCount` is the number of matching items before the filter was
    #   applied.
    #
    #   If you did not use a filter in the request, then `Count` and
    #   `ScannedCount` are the same.
    #   @return [Integer]
    #
    # @!attribute [rw] scanned_count
    #   The number of items evaluated, before any `QueryFilter` is applied.
    #   A high `ScannedCount` value with few, or no, `Count` results
    #   indicates an inefficient `Query` operation. For more information,
    #   see [Count and ScannedCount][1] in the *Amazon DynamoDB Developer
    #   Guide*.
    #
    #   If you did not use a filter in the request, then `ScannedCount` is
    #   the same as `Count`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#Count
    #   @return [Integer]
    #
    # @!attribute [rw] last_evaluated_key
    #   The primary key of the item where the operation stopped, inclusive
    #   of the previous result set. Use this value to start a new operation,
    #   excluding this value in the new request.
    #
    #   If `LastEvaluatedKey` is empty, then the "last page" of results
    #   has been processed and there is no more data to be retrieved.
    #
    #   If `LastEvaluatedKey` is not empty, it does not necessarily mean
    #   that there is more data in the result set. The only way to know when
    #   you have reached the end of the result set is when
    #   `LastEvaluatedKey` is empty.
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @!attribute [rw] consumed_capacity
    #   The capacity units consumed by the `Query` operation. The data
    #   returned includes the total provisioned throughput consumed, along
    #   with statistics for the table and any indexes involved in the
    #   operation. `ConsumedCapacity` is only returned if the
    #   `ReturnConsumedCapacity` parameter was specified For more
    #   information, see [Provisioned Throughput][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html
    #   @return [Types::ConsumedCapacity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/QueryOutput AWS API Documentation
    #
    class QueryOutput < Struct.new(
      :items,
      :count,
      :scanned_count,
      :last_evaluated_key,
      :consumed_capacity)
      include Aws::Structure
    end

    # Represents the properties of a replica.
    #
    # @note When making an API call, you may pass Replica
    #   data as a hash:
    #
    #       {
    #         region_name: "RegionName",
    #       }
    #
    # @!attribute [rw] region_name
    #   The region where the replica needs to be created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/Replica AWS API Documentation
    #
    class Replica < Struct.new(
      :region_name)
      include Aws::Structure
    end

    # Contains the details of the replica.
    #
    # @!attribute [rw] region_name
    #   The name of the region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ReplicaDescription AWS API Documentation
    #
    class ReplicaDescription < Struct.new(
      :region_name)
      include Aws::Structure
    end

    # Represents the properties of a global secondary index.
    #
    # @!attribute [rw] index_name
    #   The name of the global secondary index. The name must be unique
    #   among all other indexes on this table.
    #   @return [String]
    #
    # @!attribute [rw] index_status
    #   The current status of the global secondary index:
    #
    #   * `CREATING` - The global secondary index is being created.
    #
    #   * `UPDATING` - The global secondary index is being updated.
    #
    #   * `DELETING` - The global secondary index is being deleted.
    #
    #   * `ACTIVE` - The global secondary index is ready for use.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_read_capacity_units
    #   The maximum number of strongly consistent reads consumed per second
    #   before DynamoDB returns a `ThrottlingException`.
    #   @return [Integer]
    #
    # @!attribute [rw] provisioned_read_capacity_auto_scaling_settings
    #   Autoscaling settings for a global secondary index replica's read
    #   capacity units.
    #   @return [Types::AutoScalingSettingsDescription]
    #
    # @!attribute [rw] provisioned_write_capacity_units
    #   The maximum number of writes consumed per second before DynamoDB
    #   returns a `ThrottlingException`.
    #   @return [Integer]
    #
    # @!attribute [rw] provisioned_write_capacity_auto_scaling_settings
    #   AutoScaling settings for a global secondary index replica's write
    #   capacity units.
    #   @return [Types::AutoScalingSettingsDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ReplicaGlobalSecondaryIndexSettingsDescription AWS API Documentation
    #
    class ReplicaGlobalSecondaryIndexSettingsDescription < Struct.new(
      :index_name,
      :index_status,
      :provisioned_read_capacity_units,
      :provisioned_read_capacity_auto_scaling_settings,
      :provisioned_write_capacity_units,
      :provisioned_write_capacity_auto_scaling_settings)
      include Aws::Structure
    end

    # Represents the settings of a global secondary index for a global table
    # that will be modified.
    #
    # @note When making an API call, you may pass ReplicaGlobalSecondaryIndexSettingsUpdate
    #   data as a hash:
    #
    #       {
    #         index_name: "IndexName", # required
    #         provisioned_read_capacity_units: 1,
    #         provisioned_read_capacity_auto_scaling_settings_update: {
    #           minimum_units: 1,
    #           maximum_units: 1,
    #           auto_scaling_disabled: false,
    #           auto_scaling_role_arn: "AutoScalingRoleArn",
    #           scaling_policy_update: {
    #             policy_name: "AutoScalingPolicyName",
    #             target_tracking_scaling_policy_configuration: { # required
    #               disable_scale_in: false,
    #               scale_in_cooldown: 1,
    #               scale_out_cooldown: 1,
    #               target_value: 1.0, # required
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] index_name
    #   The name of the global secondary index. The name must be unique
    #   among all other indexes on this table.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_read_capacity_units
    #   The maximum number of strongly consistent reads consumed per second
    #   before DynamoDB returns a `ThrottlingException`.
    #   @return [Integer]
    #
    # @!attribute [rw] provisioned_read_capacity_auto_scaling_settings_update
    #   Autoscaling settings for managing a global secondary index
    #   replica's read capacity units.
    #   @return [Types::AutoScalingSettingsUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ReplicaGlobalSecondaryIndexSettingsUpdate AWS API Documentation
    #
    class ReplicaGlobalSecondaryIndexSettingsUpdate < Struct.new(
      :index_name,
      :provisioned_read_capacity_units,
      :provisioned_read_capacity_auto_scaling_settings_update)
      include Aws::Structure
    end

    # Represents the properties of a replica.
    #
    # @!attribute [rw] region_name
    #   The region name of the replica.
    #   @return [String]
    #
    # @!attribute [rw] replica_status
    #   The current state of the region:
    #
    #   * `CREATING` - The region is being created.
    #
    #   * `UPDATING` - The region is being updated.
    #
    #   * `DELETING` - The region is being deleted.
    #
    #   * `ACTIVE` - The region is ready for use.
    #   @return [String]
    #
    # @!attribute [rw] replica_provisioned_read_capacity_units
    #   The maximum number of strongly consistent reads consumed per second
    #   before DynamoDB returns a `ThrottlingException`. For more
    #   information, see [Specifying Read and Write Requirements][1] in the
    #   *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput
    #   @return [Integer]
    #
    # @!attribute [rw] replica_provisioned_read_capacity_auto_scaling_settings
    #   Autoscaling settings for a global table replica's read capacity
    #   units.
    #   @return [Types::AutoScalingSettingsDescription]
    #
    # @!attribute [rw] replica_provisioned_write_capacity_units
    #   The maximum number of writes consumed per second before DynamoDB
    #   returns a `ThrottlingException`. For more information, see
    #   [Specifying Read and Write Requirements][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput
    #   @return [Integer]
    #
    # @!attribute [rw] replica_provisioned_write_capacity_auto_scaling_settings
    #   AutoScaling settings for a global table replica's write capacity
    #   units.
    #   @return [Types::AutoScalingSettingsDescription]
    #
    # @!attribute [rw] replica_global_secondary_index_settings
    #   Replica global secondary index settings for the global table.
    #   @return [Array<Types::ReplicaGlobalSecondaryIndexSettingsDescription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ReplicaSettingsDescription AWS API Documentation
    #
    class ReplicaSettingsDescription < Struct.new(
      :region_name,
      :replica_status,
      :replica_provisioned_read_capacity_units,
      :replica_provisioned_read_capacity_auto_scaling_settings,
      :replica_provisioned_write_capacity_units,
      :replica_provisioned_write_capacity_auto_scaling_settings,
      :replica_global_secondary_index_settings)
      include Aws::Structure
    end

    # Represents the settings for a global table in a region that will be
    # modified.
    #
    # @note When making an API call, you may pass ReplicaSettingsUpdate
    #   data as a hash:
    #
    #       {
    #         region_name: "RegionName", # required
    #         replica_provisioned_read_capacity_units: 1,
    #         replica_provisioned_read_capacity_auto_scaling_settings_update: {
    #           minimum_units: 1,
    #           maximum_units: 1,
    #           auto_scaling_disabled: false,
    #           auto_scaling_role_arn: "AutoScalingRoleArn",
    #           scaling_policy_update: {
    #             policy_name: "AutoScalingPolicyName",
    #             target_tracking_scaling_policy_configuration: { # required
    #               disable_scale_in: false,
    #               scale_in_cooldown: 1,
    #               scale_out_cooldown: 1,
    #               target_value: 1.0, # required
    #             },
    #           },
    #         },
    #         replica_global_secondary_index_settings_update: [
    #           {
    #             index_name: "IndexName", # required
    #             provisioned_read_capacity_units: 1,
    #             provisioned_read_capacity_auto_scaling_settings_update: {
    #               minimum_units: 1,
    #               maximum_units: 1,
    #               auto_scaling_disabled: false,
    #               auto_scaling_role_arn: "AutoScalingRoleArn",
    #               scaling_policy_update: {
    #                 policy_name: "AutoScalingPolicyName",
    #                 target_tracking_scaling_policy_configuration: { # required
    #                   disable_scale_in: false,
    #                   scale_in_cooldown: 1,
    #                   scale_out_cooldown: 1,
    #                   target_value: 1.0, # required
    #                 },
    #               },
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] region_name
    #   The region of the replica to be added.
    #   @return [String]
    #
    # @!attribute [rw] replica_provisioned_read_capacity_units
    #   The maximum number of strongly consistent reads consumed per second
    #   before DynamoDB returns a `ThrottlingException`. For more
    #   information, see [Specifying Read and Write Requirements][1] in the
    #   *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput
    #   @return [Integer]
    #
    # @!attribute [rw] replica_provisioned_read_capacity_auto_scaling_settings_update
    #   Autoscaling settings for managing a global table replica's read
    #   capacity units.
    #   @return [Types::AutoScalingSettingsUpdate]
    #
    # @!attribute [rw] replica_global_secondary_index_settings_update
    #   Represents the settings of a global secondary index for a global
    #   table that will be modified.
    #   @return [Array<Types::ReplicaGlobalSecondaryIndexSettingsUpdate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ReplicaSettingsUpdate AWS API Documentation
    #
    class ReplicaSettingsUpdate < Struct.new(
      :region_name,
      :replica_provisioned_read_capacity_units,
      :replica_provisioned_read_capacity_auto_scaling_settings_update,
      :replica_global_secondary_index_settings_update)
      include Aws::Structure
    end

    # Represents one of the following:
    #
    # * A new replica to be added to an existing global table.
    #
    # * New parameters for an existing replica.
    #
    # * An existing replica to be removed from an existing global table.
    #
    # @note When making an API call, you may pass ReplicaUpdate
    #   data as a hash:
    #
    #       {
    #         create: {
    #           region_name: "RegionName", # required
    #         },
    #         delete: {
    #           region_name: "RegionName", # required
    #         },
    #       }
    #
    # @!attribute [rw] create
    #   The parameters required for creating a replica on an existing global
    #   table.
    #   @return [Types::CreateReplicaAction]
    #
    # @!attribute [rw] delete
    #   The name of the existing replica to be removed.
    #   @return [Types::DeleteReplicaAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ReplicaUpdate AWS API Documentation
    #
    class ReplicaUpdate < Struct.new(
      :create,
      :delete)
      include Aws::Structure
    end

    # Contains details for the restore.
    #
    # @!attribute [rw] source_backup_arn
    #   ARN of the backup from which the table was restored.
    #   @return [String]
    #
    # @!attribute [rw] source_table_arn
    #   ARN of the source table of the backup that is being restored.
    #   @return [String]
    #
    # @!attribute [rw] restore_date_time
    #   Point in time or source backup time.
    #   @return [Time]
    #
    # @!attribute [rw] restore_in_progress
    #   Indicates if a restore is in progress or not.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/RestoreSummary AWS API Documentation
    #
    class RestoreSummary < Struct.new(
      :source_backup_arn,
      :source_table_arn,
      :restore_date_time,
      :restore_in_progress)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RestoreTableFromBackupInput
    #   data as a hash:
    #
    #       {
    #         target_table_name: "TableName", # required
    #         backup_arn: "BackupArn", # required
    #       }
    #
    # @!attribute [rw] target_table_name
    #   The name of the new table to which the backup must be restored.
    #   @return [String]
    #
    # @!attribute [rw] backup_arn
    #   The ARN associated with the backup.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/RestoreTableFromBackupInput AWS API Documentation
    #
    class RestoreTableFromBackupInput < Struct.new(
      :target_table_name,
      :backup_arn)
      include Aws::Structure
    end

    # @!attribute [rw] table_description
    #   The description of the table created from an existing backup.
    #   @return [Types::TableDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/RestoreTableFromBackupOutput AWS API Documentation
    #
    class RestoreTableFromBackupOutput < Struct.new(
      :table_description)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RestoreTableToPointInTimeInput
    #   data as a hash:
    #
    #       {
    #         source_table_name: "TableName", # required
    #         target_table_name: "TableName", # required
    #         use_latest_restorable_time: false,
    #         restore_date_time: Time.now,
    #       }
    #
    # @!attribute [rw] source_table_name
    #   Name of the source table that is being restored.
    #   @return [String]
    #
    # @!attribute [rw] target_table_name
    #   The name of the new table to which it must be restored to.
    #   @return [String]
    #
    # @!attribute [rw] use_latest_restorable_time
    #   Restore the table to the latest possible time.
    #   `LatestRestorableDateTime` is typically 5 minutes before the current
    #   time.
    #   @return [Boolean]
    #
    # @!attribute [rw] restore_date_time
    #   Time in the past to restore the table to.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/RestoreTableToPointInTimeInput AWS API Documentation
    #
    class RestoreTableToPointInTimeInput < Struct.new(
      :source_table_name,
      :target_table_name,
      :use_latest_restorable_time,
      :restore_date_time)
      include Aws::Structure
    end

    # @!attribute [rw] table_description
    #   Represents the properties of a table.
    #   @return [Types::TableDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/RestoreTableToPointInTimeOutput AWS API Documentation
    #
    class RestoreTableToPointInTimeOutput < Struct.new(
      :table_description)
      include Aws::Structure
    end

    # The description of the server-side encryption status on the specified
    # table.
    #
    # @!attribute [rw] status
    #   The current state of server-side encryption:
    #
    #   * `ENABLING` - Server-side encryption is being enabled.
    #
    #   * `ENABLED` - Server-side encryption is enabled.
    #
    #   * `DISABLING` - Server-side encryption is being disabled.
    #
    #   * `DISABLED` - Server-side encryption is disabled.
    #
    #   * `UPDATING` - Server-side encryption is being updated.
    #   @return [String]
    #
    # @!attribute [rw] sse_type
    #   Server-side encryption type:
    #
    #   * `AES256` - Server-side encryption which uses the AES256 algorithm.
    #
    #   * `KMS` - Server-side encryption which uses AWS Key Management
    #     Service.
    #   @return [String]
    #
    # @!attribute [rw] kms_master_key_arn
    #   The KMS master key ARN used for the KMS encryption.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/SSEDescription AWS API Documentation
    #
    class SSEDescription < Struct.new(
      :status,
      :sse_type,
      :kms_master_key_arn)
      include Aws::Structure
    end

    # Represents the settings used to enable server-side encryption.
    #
    # @note When making an API call, you may pass SSESpecification
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #         sse_type: "AES256", # accepts AES256, KMS
    #         kms_master_key_id: "KMSMasterKeyId",
    #       }
    #
    # @!attribute [rw] enabled
    #   Indicates whether server-side encryption is enabled (true) or
    #   disabled (false) on the table.
    #   @return [Boolean]
    #
    # @!attribute [rw] sse_type
    #   Server-side encryption type:
    #
    #   * `AES256` - Server-side encryption which uses the AES256 algorithm.
    #
    #   * `KMS` - Server-side encryption which uses AWS Key Management
    #     Service. (default)
    #   @return [String]
    #
    # @!attribute [rw] kms_master_key_id
    #   The KMS Master Key (CMK) which should be used for the KMS
    #   encryption. To specify a CMK, use its key ID, Amazon Resource Name
    #   (ARN), alias name, or alias ARN. Note that you should only provide
    #   this parameter if the key is different from the default DynamoDB KMS
    #   Master Key alias/aws/dynamodb.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/SSESpecification AWS API Documentation
    #
    class SSESpecification < Struct.new(
      :enabled,
      :sse_type,
      :kms_master_key_id)
      include Aws::Structure
    end

    # Represents the input of a `Scan` operation.
    #
    # @note When making an API call, you may pass ScanInput
    #   data as a hash:
    #
    #       {
    #         table_name: "TableName", # required
    #         index_name: "IndexName",
    #         attributes_to_get: ["AttributeName"],
    #         limit: 1,
    #         select: "ALL_ATTRIBUTES", # accepts ALL_ATTRIBUTES, ALL_PROJECTED_ATTRIBUTES, SPECIFIC_ATTRIBUTES, COUNT
    #         scan_filter: {
    #           "AttributeName" => {
    #             attribute_value_list: ["value"], # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #             comparison_operator: "EQ", # required, accepts EQ, NE, IN, LE, LT, GE, GT, BETWEEN, NOT_NULL, NULL, CONTAINS, NOT_CONTAINS, BEGINS_WITH
    #           },
    #         },
    #         conditional_operator: "AND", # accepts AND, OR
    #         exclusive_start_key: {
    #           "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         },
    #         return_consumed_capacity: "INDEXES", # accepts INDEXES, TOTAL, NONE
    #         total_segments: 1,
    #         segment: 1,
    #         projection_expression: "ProjectionExpression",
    #         filter_expression: "ConditionExpression",
    #         expression_attribute_names: {
    #           "ExpressionAttributeNameVariable" => "AttributeName",
    #         },
    #         expression_attribute_values: {
    #           "ExpressionAttributeValueVariable" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         },
    #         consistent_read: false,
    #       }
    #
    # @!attribute [rw] table_name
    #   The name of the table containing the requested items; or, if you
    #   provide `IndexName`, the name of the table to which that index
    #   belongs.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The name of a secondary index to scan. This index can be any local
    #   secondary index or global secondary index. Note that if you use the
    #   `IndexName` parameter, you must also provide `TableName`.
    #   @return [String]
    #
    # @!attribute [rw] attributes_to_get
    #   This is a legacy parameter. Use `ProjectionExpression` instead. For
    #   more information, see [AttributesToGet][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   The maximum number of items to evaluate (not necessarily the number
    #   of matching items). If DynamoDB processes the number of items up to
    #   the limit while processing the results, it stops the operation and
    #   returns the matching values up to that point, and a key in
    #   `LastEvaluatedKey` to apply in a subsequent operation, so that you
    #   can pick up where you left off. Also, if the processed data set size
    #   exceeds 1 MB before DynamoDB reaches this limit, it stops the
    #   operation and returns the matching values up to the limit, and a key
    #   in `LastEvaluatedKey` to apply in a subsequent operation to continue
    #   the operation. For more information, see [Query and Scan][1] in the
    #   *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html
    #   @return [Integer]
    #
    # @!attribute [rw] select
    #   The attributes to be returned in the result. You can retrieve all
    #   item attributes, specific item attributes, the count of matching
    #   items, or in the case of an index, some or all of the attributes
    #   projected into the index.
    #
    #   * `ALL_ATTRIBUTES` - Returns all of the item attributes from the
    #     specified table or index. If you query a local secondary index,
    #     then for each matching item in the index DynamoDB will fetch the
    #     entire item from the parent table. If the index is configured to
    #     project all item attributes, then all of the data can be obtained
    #     from the local secondary index, and no fetching is required.
    #
    #   * `ALL_PROJECTED_ATTRIBUTES` - Allowed only when querying an index.
    #     Retrieves all attributes that have been projected into the index.
    #     If the index is configured to project all attributes, this return
    #     value is equivalent to specifying `ALL_ATTRIBUTES`.
    #
    #   * `COUNT` - Returns the number of matching items, rather than the
    #     matching items themselves.
    #
    #   * `SPECIFIC_ATTRIBUTES` - Returns only the attributes listed in
    #     `AttributesToGet`. This return value is equivalent to specifying
    #     `AttributesToGet` without specifying any value for `Select`.
    #
    #     If you query or scan a local secondary index and request only
    #     attributes that are projected into that index, the operation will
    #     read only the index and not the table. If any of the requested
    #     attributes are not projected into the local secondary index,
    #     DynamoDB will fetch each of these attributes from the parent
    #     table. This extra fetching incurs additional throughput cost and
    #     latency.
    #
    #     If you query or scan a global secondary index, you can only
    #     request attributes that are projected into the index. Global
    #     secondary index queries cannot fetch attributes from the parent
    #     table.
    #
    #   If neither `Select` nor `AttributesToGet` are specified, DynamoDB
    #   defaults to `ALL_ATTRIBUTES` when accessing a table, and
    #   `ALL_PROJECTED_ATTRIBUTES` when accessing an index. You cannot use
    #   both `Select` and `AttributesToGet` together in a single request,
    #   unless the value for `Select` is `SPECIFIC_ATTRIBUTES`. (This usage
    #   is equivalent to specifying `AttributesToGet` without any value for
    #   `Select`.)
    #
    #   <note markdown="1"> If you use the `ProjectionExpression` parameter, then the value for
    #   `Select` can only be `SPECIFIC_ATTRIBUTES`. Any other value for
    #   `Select` will return an error.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] scan_filter
    #   This is a legacy parameter. Use `FilterExpression` instead. For more
    #   information, see [ScanFilter][1] in the *Amazon DynamoDB Developer
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ScanFilter.html
    #   @return [Hash<String,Types::Condition>]
    #
    # @!attribute [rw] conditional_operator
    #   This is a legacy parameter. Use `FilterExpression` instead. For more
    #   information, see [ConditionalOperator][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html
    #   @return [String]
    #
    # @!attribute [rw] exclusive_start_key
    #   The primary key of the first item that this operation will evaluate.
    #   Use the value that was returned for `LastEvaluatedKey` in the
    #   previous operation.
    #
    #   The data type for `ExclusiveStartKey` must be String, Number or
    #   Binary. No set data types are allowed.
    #
    #   In a parallel scan, a `Scan` request that includes
    #   `ExclusiveStartKey` must specify the same segment whose previous
    #   `Scan` returned the corresponding value of `LastEvaluatedKey`.
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @!attribute [rw] return_consumed_capacity
    #   Determines the level of detail about provisioned throughput
    #   consumption that is returned in the response:
    #
    #   * `INDEXES` - The response includes the aggregate `ConsumedCapacity`
    #     for the operation, together with `ConsumedCapacity` for each table
    #     and secondary index that was accessed.
    #
    #     Note that some operations, such as `GetItem` and `BatchGetItem`,
    #     do not access any indexes at all. In these cases, specifying
    #     `INDEXES` will only return `ConsumedCapacity` information for
    #     table(s).
    #
    #   * `TOTAL` - The response includes only the aggregate
    #     `ConsumedCapacity` for the operation.
    #
    #   * `NONE` - No `ConsumedCapacity` details are included in the
    #     response.
    #   @return [String]
    #
    # @!attribute [rw] total_segments
    #   For a parallel `Scan` request, `TotalSegments` represents the total
    #   number of segments into which the `Scan` operation will be divided.
    #   The value of `TotalSegments` corresponds to the number of
    #   application workers that will perform the parallel scan. For
    #   example, if you want to use four application threads to scan a table
    #   or an index, specify a `TotalSegments` value of 4.
    #
    #   The value for `TotalSegments` must be greater than or equal to 1,
    #   and less than or equal to 1000000. If you specify a `TotalSegments`
    #   value of 1, the `Scan` operation will be sequential rather than
    #   parallel.
    #
    #   If you specify `TotalSegments`, you must also specify `Segment`.
    #   @return [Integer]
    #
    # @!attribute [rw] segment
    #   For a parallel `Scan` request, `Segment` identifies an individual
    #   segment to be scanned by an application worker.
    #
    #   Segment IDs are zero-based, so the first segment is always 0. For
    #   example, if you want to use four application threads to scan a table
    #   or an index, then the first thread specifies a `Segment` value of 0,
    #   the second thread specifies 1, and so on.
    #
    #   The value of `LastEvaluatedKey` returned from a parallel `Scan`
    #   request must be used as `ExclusiveStartKey` with the same segment ID
    #   in a subsequent `Scan` operation.
    #
    #   The value for `Segment` must be greater than or equal to 0, and less
    #   than the value provided for `TotalSegments`.
    #
    #   If you provide `Segment`, you must also provide `TotalSegments`.
    #   @return [Integer]
    #
    # @!attribute [rw] projection_expression
    #   A string that identifies one or more attributes to retrieve from the
    #   specified table or index. These attributes can include scalars,
    #   sets, or elements of a JSON document. The attributes in the
    #   expression must be separated by commas.
    #
    #   If no attribute names are specified, then all attributes will be
    #   returned. If any of the requested attributes are not found, they
    #   will not appear in the result.
    #
    #   For more information, see [Accessing Item Attributes][1] in the
    #   *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    #   @return [String]
    #
    # @!attribute [rw] filter_expression
    #   A string that contains conditions that DynamoDB applies after the
    #   `Scan` operation, but before the data is returned to you. Items that
    #   do not satisfy the `FilterExpression` criteria are not returned.
    #
    #   <note markdown="1"> A `FilterExpression` is applied after the items have already been
    #   read; the process of filtering does not consume any additional read
    #   capacity units.
    #
    #    </note>
    #
    #   For more information, see [Filter Expressions][1] in the *Amazon
    #   DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#FilteringResults
    #   @return [String]
    #
    # @!attribute [rw] expression_attribute_names
    #   One or more substitution tokens for attribute names in an
    #   expression. The following are some use cases for using
    #   `ExpressionAttributeNames`\:
    #
    #   * To access an attribute whose name conflicts with a DynamoDB
    #     reserved word.
    #
    #   * To create a placeholder for repeating occurrences of an attribute
    #     name in an expression.
    #
    #   * To prevent special characters in an attribute name from being
    #     misinterpreted in an expression.
    #
    #   Use the **#** character in an expression to dereference an attribute
    #   name. For example, consider the following attribute name:
    #
    #   * `Percentile`
    #
    #   ^
    #
    #   The name of this attribute conflicts with a reserved word, so it
    #   cannot be used directly in an expression. (For the complete list of
    #   reserved words, see [Reserved Words][1] in the *Amazon DynamoDB
    #   Developer Guide*). To work around this, you could specify the
    #   following for `ExpressionAttributeNames`\:
    #
    #   * `\{"#P":"Percentile"\}`
    #
    #   ^
    #
    #   You could then use this substitution in an expression, as in this
    #   example:
    #
    #   * `#P = :val`
    #
    #   ^
    #
    #   <note markdown="1"> Tokens that begin with the **\:** character are *expression
    #   attribute values*, which are placeholders for the actual value at
    #   runtime.
    #
    #    </note>
    #
    #   For more information on expression attribute names, see [Accessing
    #   Item Attributes][2] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
    #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] expression_attribute_values
    #   One or more values that can be substituted in an expression.
    #
    #   Use the **\:** (colon) character in an expression to dereference an
    #   attribute value. For example, suppose that you wanted to check
    #   whether the value of the *ProductStatus* attribute was one of the
    #   following:
    #
    #   `Available | Backordered | Discontinued`
    #
    #   You would first need to specify `ExpressionAttributeValues` as
    #   follows:
    #
    #   `\{ ":avail":\{"S":"Available"\}, ":back":\{"S":"Backordered"\},
    #   ":disc":\{"S":"Discontinued"\} \}`
    #
    #   You could then use these values in an expression, such as this:
    #
    #   `ProductStatus IN (:avail, :back, :disc)`
    #
    #   For more information on expression attribute values, see [Specifying
    #   Conditions][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @!attribute [rw] consistent_read
    #   A Boolean value that determines the read consistency model during
    #   the scan:
    #
    #   * If `ConsistentRead` is `false`, then the data returned from `Scan`
    #     might not contain the results from other recently completed write
    #     operations (PutItem, UpdateItem or DeleteItem).
    #
    #   * If `ConsistentRead` is `true`, then all of the write operations
    #     that completed before the `Scan` began are guaranteed to be
    #     contained in the `Scan` response.
    #
    #   The default setting for `ConsistentRead` is `false`.
    #
    #   The `ConsistentRead` parameter is not supported on global secondary
    #   indexes. If you scan a global secondary index with `ConsistentRead`
    #   set to true, you will receive a `ValidationException`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ScanInput AWS API Documentation
    #
    class ScanInput < Struct.new(
      :table_name,
      :index_name,
      :attributes_to_get,
      :limit,
      :select,
      :scan_filter,
      :conditional_operator,
      :exclusive_start_key,
      :return_consumed_capacity,
      :total_segments,
      :segment,
      :projection_expression,
      :filter_expression,
      :expression_attribute_names,
      :expression_attribute_values,
      :consistent_read)
      include Aws::Structure
    end

    # Represents the output of a `Scan` operation.
    #
    # @!attribute [rw] items
    #   An array of item attributes that match the scan criteria. Each
    #   element in this array consists of an attribute name and the value
    #   for that attribute.
    #   @return [Array<Hash<String,Types::AttributeValue>>]
    #
    # @!attribute [rw] count
    #   The number of items in the response.
    #
    #   If you set `ScanFilter` in the request, then `Count` is the number
    #   of items returned after the filter was applied, and `ScannedCount`
    #   is the number of matching items before the filter was applied.
    #
    #   If you did not use a filter in the request, then `Count` is the same
    #   as `ScannedCount`.
    #   @return [Integer]
    #
    # @!attribute [rw] scanned_count
    #   The number of items evaluated, before any `ScanFilter` is applied. A
    #   high `ScannedCount` value with few, or no, `Count` results indicates
    #   an inefficient `Scan` operation. For more information, see [Count
    #   and ScannedCount][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #   If you did not use a filter in the request, then `ScannedCount` is
    #   the same as `Count`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#Count
    #   @return [Integer]
    #
    # @!attribute [rw] last_evaluated_key
    #   The primary key of the item where the operation stopped, inclusive
    #   of the previous result set. Use this value to start a new operation,
    #   excluding this value in the new request.
    #
    #   If `LastEvaluatedKey` is empty, then the "last page" of results
    #   has been processed and there is no more data to be retrieved.
    #
    #   If `LastEvaluatedKey` is not empty, it does not necessarily mean
    #   that there is more data in the result set. The only way to know when
    #   you have reached the end of the result set is when
    #   `LastEvaluatedKey` is empty.
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @!attribute [rw] consumed_capacity
    #   The capacity units consumed by the `Scan` operation. The data
    #   returned includes the total provisioned throughput consumed, along
    #   with statistics for the table and any indexes involved in the
    #   operation. `ConsumedCapacity` is only returned if the
    #   `ReturnConsumedCapacity` parameter was specified. For more
    #   information, see [Provisioned Throughput][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html
    #   @return [Types::ConsumedCapacity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ScanOutput AWS API Documentation
    #
    class ScanOutput < Struct.new(
      :items,
      :count,
      :scanned_count,
      :last_evaluated_key,
      :consumed_capacity)
      include Aws::Structure
    end

    # Contains the details of the table when the backup was created.
    #
    # @!attribute [rw] table_name
    #   The name of the table for which the backup was created.
    #   @return [String]
    #
    # @!attribute [rw] table_id
    #   Unique identifier for the table for which the backup was created.
    #   @return [String]
    #
    # @!attribute [rw] table_arn
    #   ARN of the table for which backup was created.
    #   @return [String]
    #
    # @!attribute [rw] table_size_bytes
    #   Size of the table in bytes. Please note this is an approximate
    #   value.
    #   @return [Integer]
    #
    # @!attribute [rw] key_schema
    #   Schema of the table.
    #   @return [Array<Types::KeySchemaElement>]
    #
    # @!attribute [rw] table_creation_date_time
    #   Time when the source table was created.
    #   @return [Time]
    #
    # @!attribute [rw] provisioned_throughput
    #   Read IOPs and Write IOPS on the table when the backup was created.
    #   @return [Types::ProvisionedThroughput]
    #
    # @!attribute [rw] item_count
    #   Number of items in the table. Please note this is an approximate
    #   value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/SourceTableDetails AWS API Documentation
    #
    class SourceTableDetails < Struct.new(
      :table_name,
      :table_id,
      :table_arn,
      :table_size_bytes,
      :key_schema,
      :table_creation_date_time,
      :provisioned_throughput,
      :item_count)
      include Aws::Structure
    end

    # Contains the details of the features enabled on the table when the
    # backup was created. For example, LSIs, GSIs, streams, TTL.
    #
    # @!attribute [rw] local_secondary_indexes
    #   Represents the LSI properties for the table when the backup was
    #   created. It includes the IndexName, KeySchema and Projection for the
    #   LSIs on the table at the time of backup.
    #   @return [Array<Types::LocalSecondaryIndexInfo>]
    #
    # @!attribute [rw] global_secondary_indexes
    #   Represents the GSI properties for the table when the backup was
    #   created. It includes the IndexName, KeySchema, Projection and
    #   ProvisionedThroughput for the GSIs on the table at the time of
    #   backup.
    #   @return [Array<Types::GlobalSecondaryIndexInfo>]
    #
    # @!attribute [rw] stream_description
    #   Stream settings on the table when the backup was created.
    #   @return [Types::StreamSpecification]
    #
    # @!attribute [rw] time_to_live_description
    #   Time to Live settings on the table when the backup was created.
    #   @return [Types::TimeToLiveDescription]
    #
    # @!attribute [rw] sse_description
    #   The description of the server-side encryption status on the table
    #   when the backup was created.
    #   @return [Types::SSEDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/SourceTableFeatureDetails AWS API Documentation
    #
    class SourceTableFeatureDetails < Struct.new(
      :local_secondary_indexes,
      :global_secondary_indexes,
      :stream_description,
      :time_to_live_description,
      :sse_description)
      include Aws::Structure
    end

    # Represents the DynamoDB Streams configuration for a table in DynamoDB.
    #
    # @note When making an API call, you may pass StreamSpecification
    #   data as a hash:
    #
    #       {
    #         stream_enabled: false,
    #         stream_view_type: "NEW_IMAGE", # accepts NEW_IMAGE, OLD_IMAGE, NEW_AND_OLD_IMAGES, KEYS_ONLY
    #       }
    #
    # @!attribute [rw] stream_enabled
    #   Indicates whether DynamoDB Streams is enabled (true) or disabled
    #   (false) on the table.
    #   @return [Boolean]
    #
    # @!attribute [rw] stream_view_type
    #   When an item in the table is modified, `StreamViewType` determines
    #   what information is written to the stream for this table. Valid
    #   values for `StreamViewType` are:
    #
    #   * `KEYS_ONLY` - Only the key attributes of the modified item are
    #     written to the stream.
    #
    #   * `NEW_IMAGE` - The entire item, as it appears after it was
    #     modified, is written to the stream.
    #
    #   * `OLD_IMAGE` - The entire item, as it appeared before it was
    #     modified, is written to the stream.
    #
    #   * `NEW_AND_OLD_IMAGES` - Both the new and the old item images of the
    #     item are written to the stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/StreamSpecification AWS API Documentation
    #
    class StreamSpecification < Struct.new(
      :stream_enabled,
      :stream_view_type)
      include Aws::Structure
    end

    # Represents the properties of a table.
    #
    # @!attribute [rw] attribute_definitions
    #   An array of `AttributeDefinition` objects. Each of these objects
    #   describes one attribute in the table and index key schema.
    #
    #   Each `AttributeDefinition` object in this array is composed of:
    #
    #   * `AttributeName` - The name of the attribute.
    #
    #   * `AttributeType` - The data type for the attribute.
    #   @return [Array<Types::AttributeDefinition>]
    #
    # @!attribute [rw] table_name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] key_schema
    #   The primary key structure for the table. Each `KeySchemaElement`
    #   consists of:
    #
    #   * `AttributeName` - The name of the attribute.
    #
    #   * `KeyType` - The role of the attribute:
    #
    #     * `HASH` - partition key
    #
    #     * `RANGE` - sort key
    #
    #     <note markdown="1"> The partition key of an item is also known as its *hash
    #     attribute*. The term "hash attribute" derives from DynamoDB'
    #     usage of an internal hash function to evenly distribute data items
    #     across partitions, based on their partition key values.
    #
    #      The sort key of an item is also known as its *range attribute*.
    #     The term "range attribute" derives from the way DynamoDB stores
    #     items with the same partition key physically close together, in
    #     sorted order by the sort key value.
    #
    #      </note>
    #
    #   For more information about primary keys, see [Primary Key][1] in the
    #   *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataModel.html#DataModelPrimaryKey
    #   @return [Array<Types::KeySchemaElement>]
    #
    # @!attribute [rw] table_status
    #   The current state of the table:
    #
    #   * `CREATING` - The table is being created.
    #
    #   * `UPDATING` - The table is being updated.
    #
    #   * `DELETING` - The table is being deleted.
    #
    #   * `ACTIVE` - The table is ready for use.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time when the table was created, in [UNIX epoch
    #   time][1] format.
    #
    #
    #
    #   [1]: http://www.epochconverter.com/
    #   @return [Time]
    #
    # @!attribute [rw] provisioned_throughput
    #   The provisioned throughput settings for the table, consisting of
    #   read and write capacity units, along with data about increases and
    #   decreases.
    #   @return [Types::ProvisionedThroughputDescription]
    #
    # @!attribute [rw] table_size_bytes
    #   The total size of the specified table, in bytes. DynamoDB updates
    #   this value approximately every six hours. Recent changes might not
    #   be reflected in this value.
    #   @return [Integer]
    #
    # @!attribute [rw] item_count
    #   The number of items in the specified table. DynamoDB updates this
    #   value approximately every six hours. Recent changes might not be
    #   reflected in this value.
    #   @return [Integer]
    #
    # @!attribute [rw] table_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the table.
    #   @return [String]
    #
    # @!attribute [rw] table_id
    #   Unique identifier for the table for which the backup was created.
    #   @return [String]
    #
    # @!attribute [rw] local_secondary_indexes
    #   Represents one or more local secondary indexes on the table. Each
    #   index is scoped to a given partition key value. Tables with one or
    #   more local secondary indexes are subject to an item collection size
    #   limit, where the amount of data within a given item collection
    #   cannot exceed 10 GB. Each element is composed of:
    #
    #   * `IndexName` - The name of the local secondary index.
    #
    #   * `KeySchema` - Specifies the complete index key schema. The
    #     attribute names in the key schema must be between 1 and 255
    #     characters (inclusive). The key schema must begin with the same
    #     partition key as the table.
    #
    #   * `Projection` - Specifies attributes that are copied (projected)
    #     from the table into the index. These are in addition to the
    #     primary key attributes and index key attributes, which are
    #     automatically projected. Each attribute specification is composed
    #     of:
    #
    #     * `ProjectionType` - One of the following:
    #
    #       * `KEYS_ONLY` - Only the index and primary keys are projected
    #         into the index.
    #
    #       * `INCLUDE` - Only the specified table attributes are projected
    #         into the index. The list of projected attributes are in
    #         `NonKeyAttributes`.
    #
    #       * `ALL` - All of the table attributes are projected into the
    #         index.
    #
    #     * `NonKeyAttributes` - A list of one or more non-key attribute
    #       names that are projected into the secondary index. The total
    #       count of attributes provided in `NonKeyAttributes`, summed
    #       across all of the secondary indexes, must not exceed 20. If you
    #       project the same attribute into two different indexes, this
    #       counts as two distinct attributes when determining the total.
    #
    #   * `IndexSizeBytes` - Represents the total size of the index, in
    #     bytes. DynamoDB updates this value approximately every six hours.
    #     Recent changes might not be reflected in this value.
    #
    #   * `ItemCount` - Represents the number of items in the index.
    #     DynamoDB updates this value approximately every six hours. Recent
    #     changes might not be reflected in this value.
    #
    #   If the table is in the `DELETING` state, no information about
    #   indexes will be returned.
    #   @return [Array<Types::LocalSecondaryIndexDescription>]
    #
    # @!attribute [rw] global_secondary_indexes
    #   The global secondary indexes, if any, on the table. Each index is
    #   scoped to a given partition key value. Each element is composed of:
    #
    #   * `Backfilling` - If true, then the index is currently in the
    #     backfilling phase. Backfilling occurs only when a new global
    #     secondary index is added to the table; it is the process by which
    #     DynamoDB populates the new index with data from the table. (This
    #     attribute does not appear for indexes that were created during a
    #     `CreateTable` operation.)
    #
    #   * `IndexName` - The name of the global secondary index.
    #
    #   * `IndexSizeBytes` - The total size of the global secondary index,
    #     in bytes. DynamoDB updates this value approximately every six
    #     hours. Recent changes might not be reflected in this value.
    #
    #   * `IndexStatus` - The current status of the global secondary index:
    #
    #     * `CREATING` - The index is being created.
    #
    #     * `UPDATING` - The index is being updated.
    #
    #     * `DELETING` - The index is being deleted.
    #
    #     * `ACTIVE` - The index is ready for use.
    #
    #   * `ItemCount` - The number of items in the global secondary index.
    #     DynamoDB updates this value approximately every six hours. Recent
    #     changes might not be reflected in this value.
    #
    #   * `KeySchema` - Specifies the complete index key schema. The
    #     attribute names in the key schema must be between 1 and 255
    #     characters (inclusive). The key schema must begin with the same
    #     partition key as the table.
    #
    #   * `Projection` - Specifies attributes that are copied (projected)
    #     from the table into the index. These are in addition to the
    #     primary key attributes and index key attributes, which are
    #     automatically projected. Each attribute specification is composed
    #     of:
    #
    #     * `ProjectionType` - One of the following:
    #
    #       * `KEYS_ONLY` - Only the index and primary keys are projected
    #         into the index.
    #
    #       * `INCLUDE` - Only the specified table attributes are projected
    #         into the index. The list of projected attributes are in
    #         `NonKeyAttributes`.
    #
    #       * `ALL` - All of the table attributes are projected into the
    #         index.
    #
    #     * `NonKeyAttributes` - A list of one or more non-key attribute
    #       names that are projected into the secondary index. The total
    #       count of attributes provided in `NonKeyAttributes`, summed
    #       across all of the secondary indexes, must not exceed 20. If you
    #       project the same attribute into two different indexes, this
    #       counts as two distinct attributes when determining the total.
    #
    #   * `ProvisionedThroughput` - The provisioned throughput settings for
    #     the global secondary index, consisting of read and write capacity
    #     units, along with data about increases and decreases.
    #
    #   If the table is in the `DELETING` state, no information about
    #   indexes will be returned.
    #   @return [Array<Types::GlobalSecondaryIndexDescription>]
    #
    # @!attribute [rw] stream_specification
    #   The current DynamoDB Streams configuration for the table.
    #   @return [Types::StreamSpecification]
    #
    # @!attribute [rw] latest_stream_label
    #   A timestamp, in ISO 8601 format, for this stream.
    #
    #   Note that `LatestStreamLabel` is not a unique identifier for the
    #   stream, because it is possible that a stream from another table
    #   might have the same timestamp. However, the combination of the
    #   following three elements is guaranteed to be unique:
    #
    #   * the AWS customer ID.
    #
    #   * the table name.
    #
    #   * the `StreamLabel`.
    #   @return [String]
    #
    # @!attribute [rw] latest_stream_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the latest
    #   stream for this table.
    #   @return [String]
    #
    # @!attribute [rw] restore_summary
    #   Contains details for the restore.
    #   @return [Types::RestoreSummary]
    #
    # @!attribute [rw] sse_description
    #   The description of the server-side encryption status on the
    #   specified table.
    #   @return [Types::SSEDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/TableDescription AWS API Documentation
    #
    class TableDescription < Struct.new(
      :attribute_definitions,
      :table_name,
      :key_schema,
      :table_status,
      :creation_date_time,
      :provisioned_throughput,
      :table_size_bytes,
      :item_count,
      :table_arn,
      :table_id,
      :local_secondary_indexes,
      :global_secondary_indexes,
      :stream_specification,
      :latest_stream_label,
      :latest_stream_arn,
      :restore_summary,
      :sse_description)
      include Aws::Structure
    end

    # Describes a tag. A tag is a key-value pair. You can add up to 50 tags
    # to a single DynamoDB table.
    #
    # AWS-assigned tag names and values are automatically assigned the aws:
    # prefix, which the user cannot assign. AWS-assigned tag names do not
    # count towards the tag limit of 50. User-assigned tag names have the
    # prefix user: in the Cost Allocation Report. You cannot backdate the
    # application of a tag.
    #
    # For an overview on tagging DynamoDB resources, see [Tagging for
    # DynamoDB][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKeyString", # required
    #         value: "TagValueString", # required
    #       }
    #
    # @!attribute [rw] key
    #   The key of the tag.Tag keys are case sensitive. Each DynamoDB table
    #   can only have up to one tag with the same key. If you try to add an
    #   existing tag (same key), the existing tag value will be updated to
    #   the new value.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the tag. Tag values are case-sensitive and can be null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArnString", # required
    #         tags: [ # required
    #           {
    #             key: "TagKeyString", # required
    #             value: "TagValueString", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   Identifies the Amazon DynamoDB resource to which tags should be
    #   added. This value is an Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the Amazon DynamoDB resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      include Aws::Structure
    end

    # The description of the Time to Live (TTL) status on the specified
    # table.
    #
    # @!attribute [rw] time_to_live_status
    #   The Time to Live status for the table.
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The name of the Time to Live attribute for items in the table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/TimeToLiveDescription AWS API Documentation
    #
    class TimeToLiveDescription < Struct.new(
      :time_to_live_status,
      :attribute_name)
      include Aws::Structure
    end

    # Represents the settings used to enable or disable Time to Live for the
    # specified table.
    #
    # @note When making an API call, you may pass TimeToLiveSpecification
    #   data as a hash:
    #
    #       {
    #         enabled: false, # required
    #         attribute_name: "TimeToLiveAttributeName", # required
    #       }
    #
    # @!attribute [rw] enabled
    #   Indicates whether Time To Live is to be enabled (true) or disabled
    #   (false) on the table.
    #   @return [Boolean]
    #
    # @!attribute [rw] attribute_name
    #   The name of the Time to Live attribute used to store the expiration
    #   time for items in the table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/TimeToLiveSpecification AWS API Documentation
    #
    class TimeToLiveSpecification < Struct.new(
      :enabled,
      :attribute_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArnString", # required
    #         tag_keys: ["TagKeyString"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon DyanamoDB resource the tags will be removed from. This
    #   value is an Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of tag keys. Existing tags of the resource whose keys are
    #   members of this list will be removed from the Amazon DynamoDB
    #   resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateContinuousBackupsInput
    #   data as a hash:
    #
    #       {
    #         table_name: "TableName", # required
    #         point_in_time_recovery_specification: { # required
    #           point_in_time_recovery_enabled: false, # required
    #         },
    #       }
    #
    # @!attribute [rw] table_name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] point_in_time_recovery_specification
    #   Represents the settings used to enable point in time recovery.
    #   @return [Types::PointInTimeRecoverySpecification]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UpdateContinuousBackupsInput AWS API Documentation
    #
    class UpdateContinuousBackupsInput < Struct.new(
      :table_name,
      :point_in_time_recovery_specification)
      include Aws::Structure
    end

    # @!attribute [rw] continuous_backups_description
    #   Represents the continuous backups and point in time recovery
    #   settings on the table.
    #   @return [Types::ContinuousBackupsDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UpdateContinuousBackupsOutput AWS API Documentation
    #
    class UpdateContinuousBackupsOutput < Struct.new(
      :continuous_backups_description)
      include Aws::Structure
    end

    # Represents the new provisioned throughput settings to be applied to a
    # global secondary index.
    #
    # @note When making an API call, you may pass UpdateGlobalSecondaryIndexAction
    #   data as a hash:
    #
    #       {
    #         index_name: "IndexName", # required
    #         provisioned_throughput: { # required
    #           read_capacity_units: 1, # required
    #           write_capacity_units: 1, # required
    #         },
    #       }
    #
    # @!attribute [rw] index_name
    #   The name of the global secondary index to be updated.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_throughput
    #   Represents the provisioned throughput settings for the specified
    #   global secondary index.
    #
    #   For current minimum and maximum provisioned throughput values, see
    #   [Limits][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html
    #   @return [Types::ProvisionedThroughput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UpdateGlobalSecondaryIndexAction AWS API Documentation
    #
    class UpdateGlobalSecondaryIndexAction < Struct.new(
      :index_name,
      :provisioned_throughput)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateGlobalTableInput
    #   data as a hash:
    #
    #       {
    #         global_table_name: "TableName", # required
    #         replica_updates: [ # required
    #           {
    #             create: {
    #               region_name: "RegionName", # required
    #             },
    #             delete: {
    #               region_name: "RegionName", # required
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] global_table_name
    #   The global table name.
    #   @return [String]
    #
    # @!attribute [rw] replica_updates
    #   A list of regions that should be added or removed from the global
    #   table.
    #   @return [Array<Types::ReplicaUpdate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UpdateGlobalTableInput AWS API Documentation
    #
    class UpdateGlobalTableInput < Struct.new(
      :global_table_name,
      :replica_updates)
      include Aws::Structure
    end

    # @!attribute [rw] global_table_description
    #   Contains the details of the global table.
    #   @return [Types::GlobalTableDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UpdateGlobalTableOutput AWS API Documentation
    #
    class UpdateGlobalTableOutput < Struct.new(
      :global_table_description)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateGlobalTableSettingsInput
    #   data as a hash:
    #
    #       {
    #         global_table_name: "TableName", # required
    #         global_table_provisioned_write_capacity_units: 1,
    #         global_table_provisioned_write_capacity_auto_scaling_settings_update: {
    #           minimum_units: 1,
    #           maximum_units: 1,
    #           auto_scaling_disabled: false,
    #           auto_scaling_role_arn: "AutoScalingRoleArn",
    #           scaling_policy_update: {
    #             policy_name: "AutoScalingPolicyName",
    #             target_tracking_scaling_policy_configuration: { # required
    #               disable_scale_in: false,
    #               scale_in_cooldown: 1,
    #               scale_out_cooldown: 1,
    #               target_value: 1.0, # required
    #             },
    #           },
    #         },
    #         global_table_global_secondary_index_settings_update: [
    #           {
    #             index_name: "IndexName", # required
    #             provisioned_write_capacity_units: 1,
    #             provisioned_write_capacity_auto_scaling_settings_update: {
    #               minimum_units: 1,
    #               maximum_units: 1,
    #               auto_scaling_disabled: false,
    #               auto_scaling_role_arn: "AutoScalingRoleArn",
    #               scaling_policy_update: {
    #                 policy_name: "AutoScalingPolicyName",
    #                 target_tracking_scaling_policy_configuration: { # required
    #                   disable_scale_in: false,
    #                   scale_in_cooldown: 1,
    #                   scale_out_cooldown: 1,
    #                   target_value: 1.0, # required
    #                 },
    #               },
    #             },
    #           },
    #         ],
    #         replica_settings_update: [
    #           {
    #             region_name: "RegionName", # required
    #             replica_provisioned_read_capacity_units: 1,
    #             replica_provisioned_read_capacity_auto_scaling_settings_update: {
    #               minimum_units: 1,
    #               maximum_units: 1,
    #               auto_scaling_disabled: false,
    #               auto_scaling_role_arn: "AutoScalingRoleArn",
    #               scaling_policy_update: {
    #                 policy_name: "AutoScalingPolicyName",
    #                 target_tracking_scaling_policy_configuration: { # required
    #                   disable_scale_in: false,
    #                   scale_in_cooldown: 1,
    #                   scale_out_cooldown: 1,
    #                   target_value: 1.0, # required
    #                 },
    #               },
    #             },
    #             replica_global_secondary_index_settings_update: [
    #               {
    #                 index_name: "IndexName", # required
    #                 provisioned_read_capacity_units: 1,
    #                 provisioned_read_capacity_auto_scaling_settings_update: {
    #                   minimum_units: 1,
    #                   maximum_units: 1,
    #                   auto_scaling_disabled: false,
    #                   auto_scaling_role_arn: "AutoScalingRoleArn",
    #                   scaling_policy_update: {
    #                     policy_name: "AutoScalingPolicyName",
    #                     target_tracking_scaling_policy_configuration: { # required
    #                       disable_scale_in: false,
    #                       scale_in_cooldown: 1,
    #                       scale_out_cooldown: 1,
    #                       target_value: 1.0, # required
    #                     },
    #                   },
    #                 },
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] global_table_name
    #   The name of the global table
    #   @return [String]
    #
    # @!attribute [rw] global_table_provisioned_write_capacity_units
    #   The maximum number of writes consumed per second before DynamoDB
    #   returns a `ThrottlingException.`
    #   @return [Integer]
    #
    # @!attribute [rw] global_table_provisioned_write_capacity_auto_scaling_settings_update
    #   AutoScaling settings for managing provisioned write capacity for the
    #   global table.
    #   @return [Types::AutoScalingSettingsUpdate]
    #
    # @!attribute [rw] global_table_global_secondary_index_settings_update
    #   Represents the settings of a global secondary index for a global
    #   table that will be modified.
    #   @return [Array<Types::GlobalTableGlobalSecondaryIndexSettingsUpdate>]
    #
    # @!attribute [rw] replica_settings_update
    #   Represents the settings for a global table in a region that will be
    #   modified.
    #   @return [Array<Types::ReplicaSettingsUpdate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UpdateGlobalTableSettingsInput AWS API Documentation
    #
    class UpdateGlobalTableSettingsInput < Struct.new(
      :global_table_name,
      :global_table_provisioned_write_capacity_units,
      :global_table_provisioned_write_capacity_auto_scaling_settings_update,
      :global_table_global_secondary_index_settings_update,
      :replica_settings_update)
      include Aws::Structure
    end

    # @!attribute [rw] global_table_name
    #   The name of the global table.
    #   @return [String]
    #
    # @!attribute [rw] replica_settings
    #   The region specific settings for the global table.
    #   @return [Array<Types::ReplicaSettingsDescription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UpdateGlobalTableSettingsOutput AWS API Documentation
    #
    class UpdateGlobalTableSettingsOutput < Struct.new(
      :global_table_name,
      :replica_settings)
      include Aws::Structure
    end

    # Represents the input of an `UpdateItem` operation.
    #
    # @note When making an API call, you may pass UpdateItemInput
    #   data as a hash:
    #
    #       {
    #         table_name: "TableName", # required
    #         key: { # required
    #           "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         },
    #         attribute_updates: {
    #           "AttributeName" => {
    #             value: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #             action: "ADD", # accepts ADD, PUT, DELETE
    #           },
    #         },
    #         expected: {
    #           "AttributeName" => {
    #             value: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #             exists: false,
    #             comparison_operator: "EQ", # accepts EQ, NE, IN, LE, LT, GE, GT, BETWEEN, NOT_NULL, NULL, CONTAINS, NOT_CONTAINS, BEGINS_WITH
    #             attribute_value_list: ["value"], # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #           },
    #         },
    #         conditional_operator: "AND", # accepts AND, OR
    #         return_values: "NONE", # accepts NONE, ALL_OLD, UPDATED_OLD, ALL_NEW, UPDATED_NEW
    #         return_consumed_capacity: "INDEXES", # accepts INDEXES, TOTAL, NONE
    #         return_item_collection_metrics: "SIZE", # accepts SIZE, NONE
    #         update_expression: "UpdateExpression",
    #         condition_expression: "ConditionExpression",
    #         expression_attribute_names: {
    #           "ExpressionAttributeNameVariable" => "AttributeName",
    #         },
    #         expression_attribute_values: {
    #           "ExpressionAttributeValueVariable" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         },
    #       }
    #
    # @!attribute [rw] table_name
    #   The name of the table containing the item to update.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The primary key of the item to be updated. Each element consists of
    #   an attribute name and a value for that attribute.
    #
    #   For the primary key, you must provide all of the attributes. For
    #   example, with a simple primary key, you only need to provide a value
    #   for the partition key. For a composite primary key, you must provide
    #   values for both the partition key and the sort key.
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @!attribute [rw] attribute_updates
    #   This is a legacy parameter. Use `UpdateExpression` instead. For more
    #   information, see [AttributeUpdates][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributeUpdates.html
    #   @return [Hash<String,Types::AttributeValueUpdate>]
    #
    # @!attribute [rw] expected
    #   This is a legacy parameter. Use `ConditionExpression` instead. For
    #   more information, see [Expected][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html
    #   @return [Hash<String,Types::ExpectedAttributeValue>]
    #
    # @!attribute [rw] conditional_operator
    #   This is a legacy parameter. Use `ConditionExpression` instead. For
    #   more information, see [ConditionalOperator][1] in the *Amazon
    #   DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html
    #   @return [String]
    #
    # @!attribute [rw] return_values
    #   Use `ReturnValues` if you want to get the item attributes as they
    #   appear before or after they are updated. For `UpdateItem`, the valid
    #   values are:
    #
    #   * `NONE` - If `ReturnValues` is not specified, or if its value is
    #     `NONE`, then nothing is returned. (This setting is the default for
    #     `ReturnValues`.)
    #
    #   * `ALL_OLD` - Returns all of the attributes of the item, as they
    #     appeared before the UpdateItem operation.
    #
    #   * `UPDATED_OLD` - Returns only the updated attributes, as they
    #     appeared before the UpdateItem operation.
    #
    #   * `ALL_NEW` - Returns all of the attributes of the item, as they
    #     appear after the UpdateItem operation.
    #
    #   * `UPDATED_NEW` - Returns only the updated attributes, as they
    #     appear after the UpdateItem operation.
    #
    #   There is no additional cost associated with requesting a return
    #   value aside from the small network and processing overhead of
    #   receiving a larger response. No read capacity units are consumed.
    #
    #   The values returned are strongly consistent.
    #   @return [String]
    #
    # @!attribute [rw] return_consumed_capacity
    #   Determines the level of detail about provisioned throughput
    #   consumption that is returned in the response:
    #
    #   * `INDEXES` - The response includes the aggregate `ConsumedCapacity`
    #     for the operation, together with `ConsumedCapacity` for each table
    #     and secondary index that was accessed.
    #
    #     Note that some operations, such as `GetItem` and `BatchGetItem`,
    #     do not access any indexes at all. In these cases, specifying
    #     `INDEXES` will only return `ConsumedCapacity` information for
    #     table(s).
    #
    #   * `TOTAL` - The response includes only the aggregate
    #     `ConsumedCapacity` for the operation.
    #
    #   * `NONE` - No `ConsumedCapacity` details are included in the
    #     response.
    #   @return [String]
    #
    # @!attribute [rw] return_item_collection_metrics
    #   Determines whether item collection metrics are returned. If set to
    #   `SIZE`, the response includes statistics about item collections, if
    #   any, that were modified during the operation are returned in the
    #   response. If set to `NONE` (the default), no statistics are
    #   returned.
    #   @return [String]
    #
    # @!attribute [rw] update_expression
    #   An expression that defines one or more attributes to be updated, the
    #   action to be performed on them, and new value(s) for them.
    #
    #   The following action values are available for `UpdateExpression`.
    #
    #   * `SET` - Adds one or more attributes and values to an item. If any
    #     of these attribute already exist, they are replaced by the new
    #     values. You can also use `SET` to add or subtract from an
    #     attribute that is of type Number. For example: `SET myNum = myNum
    #     + :val`
    #
    #     `SET` supports the following functions:
    #
    #     * `if_not_exists (path, operand)` - if the item does not contain
    #       an attribute at the specified path, then `if_not_exists`
    #       evaluates to operand; otherwise, it evaluates to path. You can
    #       use this function to avoid overwriting an attribute that may
    #       already be present in the item.
    #
    #     * `list_append (operand, operand)` - evaluates to a list with a
    #       new element added to it. You can append the new element to the
    #       start or the end of the list by reversing the order of the
    #       operands.
    #
    #     These function names are case-sensitive.
    #
    #   * `REMOVE` - Removes one or more attributes from an item.
    #
    #   * `ADD` - Adds the specified value to the item, if the attribute
    #     does not already exist. If the attribute does exist, then the
    #     behavior of `ADD` depends on the data type of the attribute:
    #
    #     * If the existing attribute is a number, and if `Value` is also a
    #       number, then `Value` is mathematically added to the existing
    #       attribute. If `Value` is a negative number, then it is
    #       subtracted from the existing attribute.
    #
    #       <note markdown="1"> If you use `ADD` to increment or decrement a number value for an
    #       item that doesn't exist before the update, DynamoDB uses `0` as
    #       the initial value.
    #
    #        Similarly, if you use `ADD` for an existing item to increment or
    #       decrement an attribute value that doesn't exist before the
    #       update, DynamoDB uses `0` as the initial value. For example,
    #       suppose that the item you want to update doesn't have an
    #       attribute named *itemcount*, but you decide to `ADD` the number
    #       `3` to this attribute anyway. DynamoDB will create the
    #       *itemcount* attribute, set its initial value to `0`, and finally
    #       add `3` to it. The result will be a new *itemcount* attribute in
    #       the item, with a value of `3`.
    #
    #        </note>
    #
    #     * If the existing data type is a set and if `Value` is also a set,
    #       then `Value` is added to the existing set. For example, if the
    #       attribute value is the set `[1,2]`, and the `ADD` action
    #       specified `[3]`, then the final attribute value is `[1,2,3]`. An
    #       error occurs if an `ADD` action is specified for a set attribute
    #       and the attribute type specified does not match the existing set
    #       type.
    #
    #       Both sets must have the same primitive data type. For example,
    #       if the existing data type is a set of strings, the `Value` must
    #       also be a set of strings.
    #
    #     The `ADD` action only supports Number and set data types. In
    #     addition, `ADD` can only be used on top-level attributes, not
    #     nested attributes.
    #
    #   * `DELETE` - Deletes an element from a set.
    #
    #     If a set of values is specified, then those values are subtracted
    #     from the old set. For example, if the attribute value was the set
    #     `[a,b,c]` and the `DELETE` action specifies `[a,c]`, then the
    #     final attribute value is `[b]`. Specifying an empty set is an
    #     error.
    #
    #     The `DELETE` action only supports set data types. In addition,
    #     `DELETE` can only be used on top-level attributes, not nested
    #     attributes.
    #
    #   You can have many actions in a single expression, such as the
    #   following: `SET a=:value1, b=:value2 DELETE :value3, :value4,
    #   :value5`
    #
    #   For more information on update expressions, see [Modifying Items and
    #   Attributes][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.Modifying.html
    #   @return [String]
    #
    # @!attribute [rw] condition_expression
    #   A condition that must be satisfied in order for a conditional update
    #   to succeed.
    #
    #   An expression can contain any of the following:
    #
    #   * Functions: `attribute_exists | attribute_not_exists |
    #     attribute_type | contains | begins_with | size`
    #
    #     These function names are case-sensitive.
    #
    #   * Comparison operators: `= | <> | < | > | <= | >= | BETWEEN | IN `
    #
    #   * Logical operators: `AND | OR | NOT`
    #
    #   For more information on condition expressions, see [Specifying
    #   Conditions][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
    #   @return [String]
    #
    # @!attribute [rw] expression_attribute_names
    #   One or more substitution tokens for attribute names in an
    #   expression. The following are some use cases for using
    #   `ExpressionAttributeNames`\:
    #
    #   * To access an attribute whose name conflicts with a DynamoDB
    #     reserved word.
    #
    #   * To create a placeholder for repeating occurrences of an attribute
    #     name in an expression.
    #
    #   * To prevent special characters in an attribute name from being
    #     misinterpreted in an expression.
    #
    #   Use the **#** character in an expression to dereference an attribute
    #   name. For example, consider the following attribute name:
    #
    #   * `Percentile`
    #
    #   ^
    #
    #   The name of this attribute conflicts with a reserved word, so it
    #   cannot be used directly in an expression. (For the complete list of
    #   reserved words, see [Reserved Words][1] in the *Amazon DynamoDB
    #   Developer Guide*). To work around this, you could specify the
    #   following for `ExpressionAttributeNames`\:
    #
    #   * `\{"#P":"Percentile"\}`
    #
    #   ^
    #
    #   You could then use this substitution in an expression, as in this
    #   example:
    #
    #   * `#P = :val`
    #
    #   ^
    #
    #   <note markdown="1"> Tokens that begin with the **\:** character are *expression
    #   attribute values*, which are placeholders for the actual value at
    #   runtime.
    #
    #    </note>
    #
    #   For more information on expression attribute names, see [Accessing
    #   Item Attributes][2] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
    #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] expression_attribute_values
    #   One or more values that can be substituted in an expression.
    #
    #   Use the **\:** (colon) character in an expression to dereference an
    #   attribute value. For example, suppose that you wanted to check
    #   whether the value of the *ProductStatus* attribute was one of the
    #   following:
    #
    #   `Available | Backordered | Discontinued`
    #
    #   You would first need to specify `ExpressionAttributeValues` as
    #   follows:
    #
    #   `\{ ":avail":\{"S":"Available"\}, ":back":\{"S":"Backordered"\},
    #   ":disc":\{"S":"Discontinued"\} \}`
    #
    #   You could then use these values in an expression, such as this:
    #
    #   `ProductStatus IN (:avail, :back, :disc)`
    #
    #   For more information on expression attribute values, see [Specifying
    #   Conditions][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UpdateItemInput AWS API Documentation
    #
    class UpdateItemInput < Struct.new(
      :table_name,
      :key,
      :attribute_updates,
      :expected,
      :conditional_operator,
      :return_values,
      :return_consumed_capacity,
      :return_item_collection_metrics,
      :update_expression,
      :condition_expression,
      :expression_attribute_names,
      :expression_attribute_values)
      include Aws::Structure
    end

    # Represents the output of an `UpdateItem` operation.
    #
    # @!attribute [rw] attributes
    #   A map of attribute values as they appear before or after the
    #   `UpdateItem` operation, as determined by the `ReturnValues`
    #   parameter.
    #
    #   The `Attributes` map is only present if `ReturnValues` was specified
    #   as something other than `NONE` in the request. Each element
    #   represents one attribute.
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @!attribute [rw] consumed_capacity
    #   The capacity units consumed by the `UpdateItem` operation. The data
    #   returned includes the total provisioned throughput consumed, along
    #   with statistics for the table and any indexes involved in the
    #   operation. `ConsumedCapacity` is only returned if the
    #   `ReturnConsumedCapacity` parameter was specified. For more
    #   information, see [Provisioned Throughput][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html
    #   @return [Types::ConsumedCapacity]
    #
    # @!attribute [rw] item_collection_metrics
    #   Information about item collections, if any, that were affected by
    #   the `UpdateItem` operation. `ItemCollectionMetrics` is only returned
    #   if the `ReturnItemCollectionMetrics` parameter was specified. If the
    #   table does not have any local secondary indexes, this information is
    #   not returned in the response.
    #
    #   Each `ItemCollectionMetrics` element consists of:
    #
    #   * `ItemCollectionKey` - The partition key value of the item
    #     collection. This is the same as the partition key value of the
    #     item itself.
    #
    #   * `SizeEstimateRangeGB` - An estimate of item collection size, in
    #     gigabytes. This value is a two-element array containing a lower
    #     bound and an upper bound for the estimate. The estimate includes
    #     the size of all the items in the table, plus the size of all
    #     attributes projected into all of the local secondary indexes on
    #     that table. Use this estimate to measure whether a local secondary
    #     index is approaching its size limit.
    #
    #     The estimate is subject to change over time; therefore, do not
    #     rely on the precision or accuracy of the estimate.
    #   @return [Types::ItemCollectionMetrics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UpdateItemOutput AWS API Documentation
    #
    class UpdateItemOutput < Struct.new(
      :attributes,
      :consumed_capacity,
      :item_collection_metrics)
      include Aws::Structure
    end

    # Represents the input of an `UpdateTable` operation.
    #
    # @note When making an API call, you may pass UpdateTableInput
    #   data as a hash:
    #
    #       {
    #         attribute_definitions: [
    #           {
    #             attribute_name: "KeySchemaAttributeName", # required
    #             attribute_type: "S", # required, accepts S, N, B
    #           },
    #         ],
    #         table_name: "TableName", # required
    #         provisioned_throughput: {
    #           read_capacity_units: 1, # required
    #           write_capacity_units: 1, # required
    #         },
    #         global_secondary_index_updates: [
    #           {
    #             update: {
    #               index_name: "IndexName", # required
    #               provisioned_throughput: { # required
    #                 read_capacity_units: 1, # required
    #                 write_capacity_units: 1, # required
    #               },
    #             },
    #             create: {
    #               index_name: "IndexName", # required
    #               key_schema: [ # required
    #                 {
    #                   attribute_name: "KeySchemaAttributeName", # required
    #                   key_type: "HASH", # required, accepts HASH, RANGE
    #                 },
    #               ],
    #               projection: { # required
    #                 projection_type: "ALL", # accepts ALL, KEYS_ONLY, INCLUDE
    #                 non_key_attributes: ["NonKeyAttributeName"],
    #               },
    #               provisioned_throughput: { # required
    #                 read_capacity_units: 1, # required
    #                 write_capacity_units: 1, # required
    #               },
    #             },
    #             delete: {
    #               index_name: "IndexName", # required
    #             },
    #           },
    #         ],
    #         stream_specification: {
    #           stream_enabled: false,
    #           stream_view_type: "NEW_IMAGE", # accepts NEW_IMAGE, OLD_IMAGE, NEW_AND_OLD_IMAGES, KEYS_ONLY
    #         },
    #         sse_specification: {
    #           enabled: false,
    #           sse_type: "AES256", # accepts AES256, KMS
    #           kms_master_key_id: "KMSMasterKeyId",
    #         },
    #       }
    #
    # @!attribute [rw] attribute_definitions
    #   An array of attributes that describe the key schema for the table
    #   and indexes. If you are adding a new global secondary index to the
    #   table, `AttributeDefinitions` must include the key element(s) of the
    #   new index.
    #   @return [Array<Types::AttributeDefinition>]
    #
    # @!attribute [rw] table_name
    #   The name of the table to be updated.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_throughput
    #   The new provisioned throughput settings for the specified table or
    #   index.
    #   @return [Types::ProvisionedThroughput]
    #
    # @!attribute [rw] global_secondary_index_updates
    #   An array of one or more global secondary indexes for the table. For
    #   each index in the array, you can request one action:
    #
    #   * `Create` - add a new global secondary index to the table.
    #
    #   * `Update` - modify the provisioned throughput settings of an
    #     existing global secondary index.
    #
    #   * `Delete` - remove a global secondary index from the table.
    #
    #   For more information, see [Managing Global Secondary Indexes][1] in
    #   the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GSI.OnlineOps.html
    #   @return [Array<Types::GlobalSecondaryIndexUpdate>]
    #
    # @!attribute [rw] stream_specification
    #   Represents the DynamoDB Streams configuration for the table.
    #
    #   <note markdown="1"> You will receive a `ResourceInUseException` if you attempt to enable
    #   a stream on a table that already has a stream, or if you attempt to
    #   disable a stream on a table which does not have a stream.
    #
    #    </note>
    #   @return [Types::StreamSpecification]
    #
    # @!attribute [rw] sse_specification
    #   The new server-side encryption settings for the specified table.
    #   @return [Types::SSESpecification]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UpdateTableInput AWS API Documentation
    #
    class UpdateTableInput < Struct.new(
      :attribute_definitions,
      :table_name,
      :provisioned_throughput,
      :global_secondary_index_updates,
      :stream_specification,
      :sse_specification)
      include Aws::Structure
    end

    # Represents the output of an `UpdateTable` operation.
    #
    # @!attribute [rw] table_description
    #   Represents the properties of the table.
    #   @return [Types::TableDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UpdateTableOutput AWS API Documentation
    #
    class UpdateTableOutput < Struct.new(
      :table_description)
      include Aws::Structure
    end

    # Represents the input of an `UpdateTimeToLive` operation.
    #
    # @note When making an API call, you may pass UpdateTimeToLiveInput
    #   data as a hash:
    #
    #       {
    #         table_name: "TableName", # required
    #         time_to_live_specification: { # required
    #           enabled: false, # required
    #           attribute_name: "TimeToLiveAttributeName", # required
    #         },
    #       }
    #
    # @!attribute [rw] table_name
    #   The name of the table to be configured.
    #   @return [String]
    #
    # @!attribute [rw] time_to_live_specification
    #   Represents the settings used to enable or disable Time to Live for
    #   the specified table.
    #   @return [Types::TimeToLiveSpecification]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UpdateTimeToLiveInput AWS API Documentation
    #
    class UpdateTimeToLiveInput < Struct.new(
      :table_name,
      :time_to_live_specification)
      include Aws::Structure
    end

    # @!attribute [rw] time_to_live_specification
    #   Represents the output of an `UpdateTimeToLive` operation.
    #   @return [Types::TimeToLiveSpecification]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UpdateTimeToLiveOutput AWS API Documentation
    #
    class UpdateTimeToLiveOutput < Struct.new(
      :time_to_live_specification)
      include Aws::Structure
    end

    # Represents an operation to perform - either `DeleteItem` or `PutItem`.
    # You can only request one of these operations, not both, in a single
    # `WriteRequest`. If you do need to perform both of these operations,
    # you will need to provide two separate `WriteRequest` objects.
    #
    # @note When making an API call, you may pass WriteRequest
    #   data as a hash:
    #
    #       {
    #         put_request: {
    #           item: { # required
    #             "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #           },
    #         },
    #         delete_request: {
    #           key: { # required
    #             "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] put_request
    #   A request to perform a `PutItem` operation.
    #   @return [Types::PutRequest]
    #
    # @!attribute [rw] delete_request
    #   A request to perform a `DeleteItem` operation.
    #   @return [Types::DeleteRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/WriteRequest AWS API Documentation
    #
    class WriteRequest < Struct.new(
      :put_request,
      :delete_request)
      include Aws::Structure
    end

  end
end
